@interface ICSTokenizer
- (BOOL)consumeChar:(char)char;
- (BOOL)consumeEOL;
- (BOOL)consumeEscaped:(const char *)escaped;
- (ICSTokenizer)initWithCompressedData:(id)data;
- (ICSTokenizer)initWithData:(id)data;
- (id)currentToken;
- (id)nextToken;
- (void)consumeParamName;
- (void)consumeParamValue;
- (void)consumePropName;
- (void)consumePropValue;
- (void)consumeWhiteSpace;
@end

@implementation ICSTokenizer

- (ICSTokenizer)initWithData:(id)data
{
  v15.receiver = self;
  v15.super_class = ICSTokenizer;
  dataCopy = data;
  v4 = [(ICSTokenizer *)&v15 init];
  v5 = [ICSPushbackStream alloc];
  v6 = [ICSUnfoldingStream alloc];
  v7 = [ICSInputData alloc];
  v8 = [(ICSInputData *)v7 initWithData:dataCopy, v15.receiver, v15.super_class];

  v9 = [(ICSUnfoldingStream *)v6 initWithInputStream:v8];
  v10 = [(ICSPushbackStream *)v5 initWithInputStream:v9];
  data = v4->_data;
  v4->_data = v10;

  v12 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:512];
  token = v4->_token;
  v4->_token = v12;

  return v4;
}

- (ICSTokenizer)initWithCompressedData:(id)data
{
  v16.receiver = self;
  v16.super_class = ICSTokenizer;
  dataCopy = data;
  v4 = [(ICSTokenizer *)&v16 init];
  v5 = [ICSPushbackStream alloc];
  v6 = [ICSUnfoldingStream alloc];
  v7 = [ICSCompressedInputStream alloc];
  v8 = [(ICSCompressedInputStream *)v7 initWithData:dataCopy, v16.receiver, v16.super_class];

  v9 = [(ICSUnfoldingStream *)v6 initWithInputStream:v8];
  v10 = [(ICSPushbackStream *)v5 initWithInputStream:v9];
  data = v4->_data;
  v4->_data = v10;

  v12 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:512];
  token = v4->_token;
  v4->_token = v12;

  if (v4->_data)
  {
    v14 = v4;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)consumeChar:(char)char
{
  charCopy = char;
  read = [(ICSPushbackStream *)self->_data read];
  if (![(ICSPushbackStream *)self->_data eos])
  {
    if (read == charCopy)
    {
      return 1;
    }

    [(ICSPushbackStream *)self->_data pushBack:read];
  }

  return 0;
}

- (BOOL)consumeEOL
{
  peek = [(ICSPushbackStream *)self->_data peek];
  if (peek == 13 || peek == 10)
  {
    [(ICSPushbackStream *)self->_data read];
    read = [(ICSPushbackStream *)self->_data read];
    if (read != 10 && read != 13)
    {
      v9 = read;
      if (![(ICSPushbackStream *)self->_data eos])
      {
        [(ICSPushbackStream *)self->_data pushBack:v9];
      }
    }
  }

  return peek == 13 || peek == 10;
}

- (void)consumeWhiteSpace
{
    ;
  }
}

- (void)consumePropName
{
  [(ICSTokenizer *)self consumeWhiteSpace];
  [(NSMutableData *)self->_token setLength:0];
  if ([(ICSPushbackStream *)self->_data eos])
  {
    self->_tokenType = 5;
  }

  else if ([(ICSPushbackStream *)self->_data eos])
  {
LABEL_20:
    *&self->_tokenType = 0x500000004;
    [(NSMutableData *)self->_token setLength:0];
  }

  else
  {
    v3 = MEMORY[0x277D85DE0];
    while (1)
    {
      read = [(ICSPushbackStream *)self->_data read];
      v5 = read;
      v10 = read;
      if (read == 58)
      {
        break;
      }

      if (read == 59)
      {
        v9 = 2;
        goto LABEL_23;
      }

      if ((read & 0x80000000) != 0)
      {
        v6 = __maskrune(read, 0x100uLL);
      }

      else
      {
        v6 = *(v3 + 4 * read + 60) & 0x100;
      }

      if (v5 != 45 && v6 == 0 && (v5 - 48) >= 0xA)
      {
        [ICSLogger logAtLevel:3 forTokenizer:self message:@"Invalid char %c for PropertyName. Parsed token:(%@)", v10, self->_token];
      }

      else
      {
        [(NSMutableData *)self->_token appendBytes:&v10 length:1];
      }

      if ([(ICSPushbackStream *)self->_data eos])
      {
        goto LABEL_20;
      }
    }

    v9 = 1;
LABEL_23:
    self->_tokenType = 0;
    self->_expectedNextTokenType = v9;
    [(ICSPushbackStream *)self->_data pushBack:read];
  }
}

- (void)consumeParamName
{
  [(NSMutableData *)self->_token setLength:0];
  read = [(ICSPushbackStream *)self->_data read];
  if ([(ICSPushbackStream *)self->_data eos]|| read != 59)
  {
    self->_tokenType = 5;
  }

  else if ([(ICSPushbackStream *)self->_data eos])
  {
LABEL_19:
    [ICSLogger logAtLevel:4 forTokenizer:self message:@"Parameter name expected, but found EOF (%@)", self->_token];
    *&self->_tokenType = 0x500000005;
    [(NSMutableData *)self->_token setLength:0];
  }

  else
  {
    v4 = MEMORY[0x277D85DE0];
    while (1)
    {
      read2 = [(ICSPushbackStream *)self->_data read];
      v10 = read2;
      if (read2 == 61)
      {
        break;
      }

      v6 = read2;
      if ((read2 & 0x80000000) != 0)
      {
        v7 = __maskrune(read2, 0x100uLL);
      }

      else
      {
        v7 = *(v4 + 4 * read2 + 60) & 0x100;
      }

      if (v6 != 45 && v7 == 0 && v6 - 48 >= 0xA)
      {
        [ICSLogger logAtLevel:3 forTokenizer:self message:@"Invalid char %c for ParamName. Parsed token:(%@)", v10, self->_token];
      }

      else
      {
        [(NSMutableData *)self->_token appendBytes:&v10 length:1];
      }

      if ([(ICSPushbackStream *)self->_data eos])
      {
        goto LABEL_19;
      }
    }

    *&self->_tokenType = 0x300000002;
    [(ICSPushbackStream *)self->_data pushBack:61];
  }
}

- (BOOL)consumeEscaped:(const char *)escaped
{
  peek = [(ICSPushbackStream *)self->_data peek];
  if (*escaped == peek)
  {
    v6 = peek;
    [(ICSPushbackStream *)self->_data read];
    v7 = [(ICSPushbackStream *)self->_data eos];
    data = self->_data;
    if (!v7)
    {
      read = [(ICSPushbackStream *)data read];
      if (*(escaped + 1) == read)
      {
        return 1;
      }

      [(ICSPushbackStream *)self->_data pushBack:read];
      data = self->_data;
    }

    [(ICSPushbackStream *)data pushBack:v6];
  }

  return 0;
}

- (void)consumeParamValue
{
  [(NSMutableData *)self->_token setLength:0];
  if (![(ICSTokenizer *)self consumeChar:61])
  {
    self->_tokenType = 5;
    return;
  }

  peek = 0;
  v3 = 0;
  if (![(ICSPushbackStream *)self->_data eos])
  {
    read = [(ICSPushbackStream *)self->_data read];
    peek = read;
    if (read == 34)
    {
      v3 = 1;
    }

    else
    {
      [(ICSPushbackStream *)self->_data pushBack:read];
      v3 = 0;
    }
  }

  if ([(ICSPushbackStream *)self->_data eos])
  {
LABEL_8:
    [ICSLogger logAtLevel:4 forTokenizer:self message:@"Parameter value expected, but found EOF (%@)", self->_token];
    v5 = 5;
    v6 = 28;
    v7 = 24;
    v8 = 5;
    goto LABEL_9;
  }

  v9 = 0;
  while (1)
  {
    peek = [(ICSPushbackStream *)self->_data peek];
    if (![(ICSTokenizer *)self consumeEscaped:"\\""])
    {
      break;
    }

    if (v9)
    {
      goto LABEL_32;
    }

    v19 = 34;
    token = self->_token;
    v11 = &v19;
LABEL_18:
    [(NSMutableData *)token appendBytes:v11 length:1];
LABEL_19:
    v9 = 0;
LABEL_33:
    if ([(ICSPushbackStream *)self->_data eos])
    {
      goto LABEL_8;
    }
  }

  if ([(ICSTokenizer *)self consumeEscaped:"\\\\""])
  {
    if (v9)
    {
      goto LABEL_32;
    }

    v18 = 92;
    token = self->_token;
    v11 = &v18;
    goto LABEL_18;
  }

  if (v3)
  {
    goto LABEL_21;
  }

  if ([(ICSTokenizer *)self consumeEscaped:"\\n"]|| [(ICSTokenizer *)self consumeEscaped:"\\N"])
  {
    if (v9)
    {
      goto LABEL_31;
    }

    v17 = 10;
    v12 = self->_token;
    v13 = &v17;
LABEL_28:
    [(NSMutableData *)v12 appendBytes:v13 length:1];
    v3 = 0;
    goto LABEL_19;
  }

  if ([(ICSTokenizer *)self consumeEscaped:"\\;"])
  {
    if (v9)
    {
      goto LABEL_31;
    }

    v16 = 59;
    v12 = self->_token;
    v13 = &v16;
    goto LABEL_28;
  }

  if ([(ICSTokenizer *)self consumeEscaped:"\\:"])
  {
    if (v9)
    {
      goto LABEL_31;
    }

    v15 = 59;
    v12 = self->_token;
    v13 = &v15;
    goto LABEL_28;
  }

  if ([(ICSTokenizer *)self consumeEscaped:"\\, "])
  {
    if (v9)
    {
      goto LABEL_31;
    }

    v14 = 44;
    v12 = self->_token;
    v13 = &v14;
    goto LABEL_28;
  }

  if ((peek & 0xFE) != 0x3A)
  {
LABEL_21:
    if (v9)
    {
      [(ICSPushbackStream *)self->_data read];
      if ([(ICSTokenizer *)self consumeEOL])
      {
        goto LABEL_65;
      }

      goto LABEL_32;
    }

    if ((v3 & (peek == 34)) == 1)
    {
      [(ICSPushbackStream *)self->_data read];
LABEL_31:
      v3 = 0;
LABEL_32:
      v9 = 1;
      goto LABEL_33;
    }

    if (v3)
    {
      if (peek <= 0x21u && ((1 << peek) & 0x300000200) != 0 || peek < -7 || peek - 35 < 0x5C)
      {
LABEL_46:
        [(NSMutableData *)self->_token appendBytes:&peek length:1];
        v9 = 0;
LABEL_47:
        [(ICSPushbackStream *)self->_data read];
        goto LABEL_33;
      }
    }

    else if (peek <= 0x21u && ((1 << peek) & 0x300000200) != 0 || peek < -7 || peek - 60 < 0x43 || peek - 35 < 9 || peek - 45 < 0xD)
    {
      goto LABEL_46;
    }

    if ([(ICSTokenizer *)self consumeEOL])
    {
LABEL_65:
      [(NSMutableData *)self->_token setLength:0];
      [(NSMutableData *)self->_token appendBytes:"ERROR" length:5];
      v8 = 6;
      v5 = 3;
      v6 = 28;
      v7 = 24;
      goto LABEL_9;
    }

    v9 = 1;
    goto LABEL_47;
  }

  if (peek == 58)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  v8 = 3;
  v6 = 24;
  v7 = 28;
LABEL_9:
  *(&self->super.isa + v7) = v5;
  *(&self->super.isa + v6) = v8;
}

- (void)consumePropValue
{
  [(ICSTokenizer *)self consumeChar:58];
  [(NSMutableData *)self->_token setLength:0];
  if ([(ICSPushbackStream *)self->_data eos])
  {
LABEL_2:
    [ICSLogger logAtLevel:4 forTokenizer:self message:@"Unexpected EOF, returning last token as fallback"];
    v3 = 0x500000001;
  }

  else
  {
    while (1)
    {
      peek = [(ICSPushbackStream *)self->_data peek];
      if ([(ICSTokenizer *)self consumeEOL])
      {
        break;
      }

      if (peek == 9 || peek == 32 || (v4 = peek, v4 < -7) || (peek - 33) < 0x5Eu)
      {
        [(NSMutableData *)self->_token appendBytes:&peek length:1];
      }

      else
      {
        [ICSLogger logAtLevel:3 forTokenizer:self message:@"Invalid char %c for PropertyValue. Parsed token:(%@)", v4, self->_token];
      }

      [(ICSPushbackStream *)self->_data read];
      if ([(ICSPushbackStream *)self->_data eos])
      {
        goto LABEL_2;
      }
    }

    v3 = 1;
  }

  *&self->_tokenType = v3;
}

- (id)nextToken
{
  expectedNextTokenType = self->_expectedNextTokenType;
  if (expectedNextTokenType > 2)
  {
    if ((expectedNextTokenType - 4) < 2)
    {
      [(NSMutableData *)self->_token setLength:0];
      self->_tokenType = 5;
    }

    else if (expectedNextTokenType == 3)
    {
      [(ICSTokenizer *)self consumeParamValue];
    }

    else if (expectedNextTokenType == 6)
    {
      [(NSMutableData *)self->_token setLength:0];
      [(NSMutableData *)self->_token appendBytes:"ERROR" length:5];
      *&self->_tokenType = 1;
    }
  }

  else if (expectedNextTokenType)
  {
    if (expectedNextTokenType == 1)
    {
      [(ICSTokenizer *)self consumePropValue];
    }

    else if (expectedNextTokenType == 2)
    {
      [(ICSTokenizer *)self consumeParamName];
    }
  }

  else
  {
    [(ICSTokenizer *)self consumePropName];
  }

  if (self->_tokenType == 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:self->_token encoding:4];
  }

  return v4;
}

- (id)currentToken
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:self->_token encoding:4];

  return v2;
}

@end