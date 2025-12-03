@interface MFIMAPParseContext
- (BOOL)getNumber:(unint64_t *)number;
- (BOOL)literalWithResponseConsumer:(id)consumer section:(id)section;
- (BOOL)match:(const char *)match;
- (BOOL)match:(const char *)match upToSpecial:(const char *)special;
- (BOOL)parseSpace;
- (MFIMAPParseContext)initWithConnection:(id)connection response:(id)response start:(const char *)start end:(const char *)end;
- (const)nextSeparator;
- (id)copyAString;
- (id)copyAtom;
- (id)copyDateTime;
- (id)copyLiteral;
- (id)copyLiteralString;
- (id)copyMessageSet;
- (id)copyNilOrString;
- (id)copyNumber;
- (id)copyQuotedString;
- (id)copyStringFrom:(const char *)from to:(const char *)to withCaseOption:(int)option;
- (unsigned)lookAhead;
- (void)dealloc;
- (void)emitError:(id)error;
- (void)emitWarning:(id)warning;
- (void)logReadChars;
- (void)setEnd:(const char *)end;
- (void)setStart:(const char *)start;
@end

@implementation MFIMAPParseContext

- (MFIMAPParseContext)initWithConnection:(id)connection response:(id)response start:(const char *)start end:(const char *)end
{
  connectionCopy = connection;
  responseCopy = response;
  v16.receiver = self;
  v16.super_class = MFIMAPParseContext;
  v13 = [(MFIMAPParseContext *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_connection, connection);
    objc_storeStrong(&v14->_response, response);
    v14->_originalStart = start;
    v14->_originalEnd = end;
    v14->_start = start;
    v14->_end = end;
  }

  return v14;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFIMAPParseContext;
  [(MFIMAPParseContext *)&v2 dealloc];
}

- (void)setStart:(const char *)start
{
  if (self->_originalStart > start)
  {
    [MFIMAPParseContext setStart:];
  }

  self->_start = start;
}

- (void)setEnd:(const char *)end
{
  if (self->_originalEnd < end)
  {
    [MFIMAPParseContext setEnd:];
  }

  self->_end = end;
}

- (void)emitWarning:(id)warning
{
  v19 = *MEMORY[0x277D85DE8];
  warningCopy = warning;
  v5 = getLogger_3();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    response = self->_response;
    v7 = [(MFIMAPParseContext *)self copyStringFrom:self->_start to:self->_end withCaseOption:0];
    v9 = 136316162;
    v10 = "";
    v11 = 2080;
    v12 = "";
    v13 = 2112;
    v14 = response;
    v15 = 2112;
    v16 = warningCopy;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_2720B1000, v5, OS_LOG_TYPE_DEFAULT, "#W %s%s*** Warning while parsing %@: %@. Remaining text: <%@>", &v9, 0x34u);
  }

  _hadWarningOrError = 1;
  v8 = *MEMORY[0x277D85DE8];
}

- (void)emitError:(id)error
{
  errorCopy = error;
  v5 = +[MFActivityMonitor currentMonitor];
  error = [v5 error];

  if (!error)
  {
    error = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1033 localizedDescription:&stru_288159858];
    v7 = +[MFActivityMonitor currentMonitor];
    [v7 setError:error];

    v8 = MEMORY[0x277CCACA8];
    response = self->_response;
    v10 = [(MFIMAPParseContext *)self copyStringFrom:self->_start to:self->_end withCaseOption:0];
    v11 = [v8 stringWithFormat:@"Error while parsing IMAP response %@: %@. Remaining text: <%@>", response, errorCopy, v10];

    v12 = getLogger_3();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(MFIMAPParseContext *)v11 emitError:v12];
    }
  }

  self->_invalid = 1;
  self->_end = self->_start;
  _hadWarningOrError = 1;
}

- (void)logReadChars
{
  end = self->_end;
  if (end > self->_lastLoggedChar)
  {
    [(MFConnection *)self->_connection logReadChars:self->_start length:end - self->_start];
    self->_lastLoggedChar = self->_end;
  }
}

- (id)copyAtom
{
  start = self->_start;
  end = self->_end;
  if (start >= end)
  {
    return 0;
  }

  v5 = self->_start;
  while ((*v5 & 0x80000000) == 0 && ((*(mf_isIMAPAtom_atomicMask + ((*v5 >> 3) & 0x1C)) >> *v5) & 1) != 0)
  {
    if (++v5 == end)
    {
      v5 = self->_end;
      break;
    }
  }

  if (v5 <= start)
  {
    return 0;
  }

  result = [MFIMAPParseContext copyStringFrom:"copyStringFrom:to:withCaseOption:" to:? withCaseOption:?];
  self->_start = v5;
  return result;
}

- (BOOL)getNumber:(unint64_t *)number
{
  lookAhead = [(MFIMAPParseContext *)self lookAhead];
  v6 = lookAhead - 48;
  if (lookAhead - 48 <= 9)
  {
    v7 = 0;
    v8 = lookAhead;
    do
    {
      v7 = v8 + 10 * v7 - 48;
      ++self->_start;
      lookAhead2 = [(MFIMAPParseContext *)self lookAhead];
      v8 = lookAhead2;
    }

    while (lookAhead2 - 48 < 0xA);
    *number = v7;
  }

  return v6 < 0xA;
}

- (id)copyNumber
{
  v5 = 0;
  v2 = [(MFIMAPParseContext *)self getNumber:&v5];
  result = 0;
  if (v2)
  {
    v4 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    return [v4 initWithUnsignedLongLong:v5];
  }

  return result;
}

- (BOOL)match:(const char *)match
{
  v5 = strlen(match);
  start = self->_start;
  v7 = (self->_end - start);
  v9 = !strncasecmp(start, match, v5) && v7 >= v5;
  if (v9)
  {
    self->_start = &start[v5];
  }

  return v9;
}

- (BOOL)match:(const char *)match upToSpecial:(const char *)special
{
  if (!special || &self->_start[strlen(match)] != special)
  {
    return 0;
  }

  return [(MFIMAPParseContext *)self match:match];
}

- (id)copyLiteral
{
  v3 = objc_alloc_init(MEMORY[0x277D24EE8]);
  v4 = objc_alloc_init(MFIMAPResponseConsumer);
  [(MFIMAPResponseConsumer *)v4 addConsumer:v3 forSection:0];
  v5 = [(MFIMAPParseContext *)self literalWithResponseConsumer:v4 section:0];
  data = 0;
  if (v5)
  {
    [(MFIMAPResponseConsumer *)v4 done];
    data = [v3 data];
  }

  return data;
}

- (BOOL)literalWithResponseConsumer:(id)consumer section:(id)section
{
  v39 = *MEMORY[0x277D85DE8];
  consumerCopy = consumer;
  sectionCopy = section;
  v8 = getLogger_3();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    *&buf[4] = "";
    v33 = 2080;
    v34 = "";
    v35 = 2112;
    v36 = consumerCopy;
    v37 = 2112;
    v38 = sectionCopy;
    _os_log_impl(&dword_2720B1000, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sliteralWithResponseConsumer %@ %@", buf, 0x2Au);
  }

  if (![(MFIMAPParseContext *)self match:"{"])
  {
    v12 = 0;
    goto LABEL_40;
  }

  v31 = +[MFActivityMonitor currentMonitor];
  *buf = 0;
  expectedLength = [v31 expectedLength];
  literalChunkSize = [(MFIMAPConnection *)self->_connection literalChunkSize];
  if ([(MFIMAPParseContext *)self getNumber:buf])
  {
    if (![(MFIMAPParseContext *)self match:"}"])
    {
      v11 = @"Expected right curly brace";
      goto LABEL_11;
    }

    if (![(MFIMAPParseContext *)self match:""])
    {
      v11 = @"Expected end-of-line";
LABEL_11:
      [(MFIMAPParseContext *)self emitWarning:v11];
    }
  }

  else
  {
    [(MFIMAPParseContext *)self emitError:@"Expected number in literal"];
  }

  v13 = *buf;
  if (!*buf)
  {
    v14 = 0;
    goto LABEL_34;
  }

  v14 = 0;
  v15 = literalChunkSize;
  if (expectedLength)
  {
    v16 = *buf;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;
  v18 = 1;
  v19 = *buf;
  while (1)
  {
    v20 = v14;
    v21 = v19 >= v15 ? v15 : v19;
    v14 = [(MFIMAPConnection *)self->_connection _readDataOfLength:v21];

    if (!v14)
    {
      break;
    }

    v22 = [v14 length];
    v23 = v19 == v22;
    v24 = v19 > v22;
    v19 -= v22;
    if (!v24)
    {
      if (!v23)
      {
        [(MFIMAPParseContext *)self emitWarning:@"Ignoring extra bytes read during literal"];
      }

      v19 = 0;
    }

    [consumerCopy appendData:v14 forSection:sectionCopy];
    connection = self->_connection;
    if (v18)
    {
      [(MFIMAPConnection *)connection notifyDelegateOfBodyLoadStart:v14 section:sectionCopy];
      if (!expectedLength)
      {
        goto LABEL_30;
      }

LABEL_29:
      [v31 setPercentDone:((v13 - v19) / v17)];
      goto LABEL_30;
    }

    [(MFIMAPConnection *)connection notifyDelegateOfBodyLoadAppendage:v14 section:sectionCopy];
    if (expectedLength)
    {
      goto LABEL_29;
    }

LABEL_30:
    v18 = 0;
    if (!v19)
    {
      goto LABEL_34;
    }
  }

  [(MFIMAPParseContext *)self emitError:@"Read failure"];
  [consumerCopy done];
LABEL_34:
  if (!self->_invalid)
  {
    v26 = [(MFIMAPConnection *)self->_connection _readDataOfLength:-1];

    if (v26)
    {
      bytes = [v26 bytes];
      self->_originalStart = bytes;
      self->_start = bytes;
      v28 = &bytes[[v26 length]];
      self->_originalEnd = v28;
      self->_end = v28;
      v12 = 1;
      v14 = v26;
      goto LABEL_39;
    }

    [(MFIMAPParseContext *)self emitError:@"Read failure"];
    v14 = 0;
  }

  v12 = 0;
LABEL_39:
  [(MFIMAPConnection *)self->_connection notifyDelegateOfBodyLoadCompletion:v14 section:sectionCopy];

LABEL_40:
  v29 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)copyLiteralString
{
  copyLiteral = [(MFIMAPParseContext *)self copyLiteral];
  v4 = copyLiteral;
  if (copyLiteral)
  {
    v5 = -[MFIMAPParseContext copyStringFrom:to:withCaseOption:](self, "copyStringFrom:to:withCaseOption:", [copyLiteral bytes], objc_msgSend(copyLiteral, "bytes") + objc_msgSend(copyLiteral, "length"), 0);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)copyQuotedString
{
  if ([(MFIMAPParseContext *)self match:""])
  {
    start = self->_start;
    end = self->_end;
    if (start >= end)
    {
      if (start <= end)
      {
        v8 = self->_start;
      }

      else
      {
        v8 = self->_end;
      }
    }

    else
    {
      v5 = 0;
      v6 = self->_start;
      do
      {
        v7 = *v6;
        if (v7 == 92)
        {
          if (v6 + 1 == end)
          {
            break;
          }

          v6 += 2;
          ++v5;
        }

        else
        {
          if (v7 == 34)
          {
            break;
          }

          ++v6;
        }
      }

      while (v6 < end);
      if (v6 <= end)
      {
        v8 = v6;
      }

      else
      {
        v8 = self->_end;
      }

      if (v5)
      {
        v9 = malloc_type_malloc(v8 - &start[v5], 0x1A043E18uLL);
        v10 = self->_start;
        v11 = v9;
        while (v10 < v8)
        {
          if (*v10 == 92)
          {
            ++v10;
          }

          v12 = *v10++;
          *v11++ = v12;
        }

        v13 = [(MFIMAPParseContext *)self copyStringFrom:v9 to:v11 withCaseOption:0];
        self->_start = v10;
        free(v9);
        goto LABEL_25;
      }
    }

    v13 = [MFIMAPParseContext copyStringFrom:"copyStringFrom:to:withCaseOption:" to:? withCaseOption:?];
    self->_start = v8;
LABEL_25:
    [(MFIMAPParseContext *)self match:""];
    return v13;
  }

  return 0;
}

- (id)copyNilOrString
{
  copyQuotedString = [(MFIMAPParseContext *)self copyQuotedString];
  if (copyQuotedString)
  {
    return copyQuotedString;
  }

  copyQuotedString = [(MFIMAPParseContext *)self copyLiteralString];
  if (copyQuotedString)
  {
    return copyQuotedString;
  }

  copyAtom = [(MFIMAPParseContext *)self copyAtom];
  if (![copyAtom caseInsensitiveCompare:@"NIL"])
  {

    return 0;
  }

  return copyAtom;
}

- (id)copyAString
{
  result = [(MFIMAPParseContext *)self copyAtom];
  if (!result)
  {
    result = [(MFIMAPParseContext *)self copyQuotedString];
    if (!result)
    {

      return [(MFIMAPParseContext *)self copyLiteralString];
    }
  }

  return result;
}

- (id)copyDateTime
{
  copyQuotedString = [(MFIMAPParseContext *)self copyQuotedString];
  if (copyQuotedString)
  {
    pthread_mutex_lock(&copyDateTime___dateFormatterLock);
    v3 = copyDateTime___dateFormatter;
    if (!copyDateTime___dateFormatter)
    {
      v4 = objc_alloc_init(MEMORY[0x277CCA968]);
      v5 = copyDateTime___dateFormatter;
      copyDateTime___dateFormatter = v4;

      v6 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
      [copyDateTime___dateFormatter setLocale:v6];
      [copyDateTime___dateFormatter setDateFormat:@"d-MMM-yyyy H:mm:ss ZZZ"];

      v3 = copyDateTime___dateFormatter;
    }

    v7 = [v3 dateFromString:copyQuotedString];
    pthread_mutex_unlock(&copyDateTime___dateFormatterLock);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyMessageSet
{
  start = [(MFIMAPParseContext *)self start];
  v6 = 0;
  if ([(MFIMAPParseContext *)self getNumber:&v6])
  {
    do
    {
      lookAhead = [(MFIMAPParseContext *)self lookAhead];
      if (lookAhead != 58 && lookAhead != 44)
      {
        break;
      }

      [(MFIMAPParseContext *)self increment];
    }

    while ([(MFIMAPParseContext *)self getNumber:&v6]);
  }

  if ([(MFIMAPParseContext *)self start]<= start)
  {
    return 0;
  }

  else
  {
    return [(MFIMAPParseContext *)self copyStringFrom:start to:[(MFIMAPParseContext *)self start] withCaseOption:0];
  }
}

- (id)copyStringFrom:(const char *)from to:(const char *)to withCaseOption:(int)option
{
  fromCopy = from;
  v8 = CFStringCreateWithBytes(0, from, to - from, 0x600u, 0);
  if (option != 1 || fromCopy >= to)
  {
    return v8;
  }

  v9 = MEMORY[0x277D85DE0];
  while (1)
  {
    v10 = *fromCopy;
    if ((v10 & 0x80000000) != 0)
    {
      break;
    }

    if ((*(v9 + 4 * v10 + 60) & 0x1000) != 0)
    {
      goto LABEL_11;
    }

LABEL_8:
    if (++fromCopy == to)
    {
      return v8;
    }
  }

  if (!__maskrune(v10, 0x1000uLL))
  {
    goto LABEL_8;
  }

LABEL_11:
  Length = CFStringGetLength(v8);
  MutableCopy = CFStringCreateMutableCopy(0, Length, v8);
  CFStringUppercase(MutableCopy, 0);
  if (v8)
  {
    CFRelease(v8);
  }

  return MutableCopy;
}

- (BOOL)parseSpace
{
  lookAhead = [(MFIMAPParseContext *)self lookAhead];
  v4 = lookAhead;
  while (lookAhead == 32)
  {
    ++self->_start;
    lookAhead = [(MFIMAPParseContext *)self lookAhead];
  }

  return v4 == 32;
}

- (unsigned)lookAhead
{
  start = self->_start;
  if (start >= self->_end)
  {
    return 0;
  }

  else
  {
    return *start;
  }
}

- (const)nextSeparator
{
  result = self->_start;
  end = self->_end;
  if (result < end)
  {
    while (*result != 32)
    {
      if (++result == end)
      {
        return end;
      }
    }
  }

  return result;
}

- (void)emitError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  v4 = "";
  v5 = 2080;
  v6 = "";
  v7 = 2112;
  v8 = a1;
  _os_log_error_impl(&dword_2720B1000, a2, OS_LOG_TYPE_ERROR, "#E %s%s%@", &v3, 0x20u);
  v2 = *MEMORY[0x277D85DE8];
}

@end