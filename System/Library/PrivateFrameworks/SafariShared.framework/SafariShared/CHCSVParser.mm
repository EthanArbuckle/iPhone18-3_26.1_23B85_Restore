@interface CHCSVParser
- (BOOL)_parseComment;
- (BOOL)_parseDelimiter;
- (BOOL)_parseEscapedField;
- (BOOL)_parseField;
- (BOOL)_parseNewline;
- (BOOL)_parseRecord;
- (BOOL)_parseUnescapedField;
- (CHCSVParser)initWithContentsOfCSVFile:(id)file;
- (CHCSVParser)initWithContentsOfCSVFile:(id)file delimiter:(unsigned __int16)delimiter;
- (CHCSVParser)initWithContentsOfDelimitedURL:(id)l delimiter:(unsigned __int16)delimiter;
- (CHCSVParser)initWithDelimitedString:(id)string delimiter:(unsigned __int16)delimiter;
- (CHCSVParser)initWithInputStream:(id)stream usedEncoding:(unint64_t *)encoding delimiter:(unsigned __int16)delimiter;
- (unsigned)_peekCharacter;
- (unsigned)_peekPeekCharacter;
- (void)_beginComment;
- (void)_beginDocument;
- (void)_beginField;
- (void)_beginRecord;
- (void)_endComment;
- (void)_endDocument;
- (void)_endField;
- (void)_endRecord;
- (void)_error;
- (void)_loadMoreIfNecessary;
- (void)_parseFieldWhitespace;
- (void)_sniffEncoding;
- (void)dealloc;
- (void)parse;
- (void)setRecognizesBackslashesAsEscapes:(BOOL)escapes;
- (void)setRecognizesComments:(BOOL)comments;
- (void)setRecognizesLeadingEqualSign:(BOOL)sign;
@end

@implementation CHCSVParser

- (CHCSVParser)initWithDelimitedString:(id)string delimiter:(unsigned __int16)delimiter
{
  delimiterCopy = delimiter;
  v6 = MEMORY[0x1E695DF48];
  v7 = [string dataUsingEncoding:4];
  v8 = [v6 inputStreamWithData:v7];

  v9 = [(CHCSVParser *)self initWithInputStream:v8 usedEncoding:0 delimiter:delimiterCopy];
  return v9;
}

- (CHCSVParser)initWithContentsOfDelimitedURL:(id)l delimiter:(unsigned __int16)delimiter
{
  delimiterCopy = delimiter;
  v6 = [MEMORY[0x1E695DF48] inputStreamWithURL:l];
  v7 = [(CHCSVParser *)self initWithInputStream:v6 usedEncoding:0 delimiter:delimiterCopy];

  return v7;
}

- (CHCSVParser)initWithInputStream:(id)stream usedEncoding:(unint64_t *)encoding delimiter:(unsigned __int16)delimiter
{
  delimiterCopy = delimiter;
  streamCopy = stream;
  if (streamCopy)
  {
    if (delimiterCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [CHCSVParser initWithInputStream:usedEncoding:delimiter:];
    if (delimiterCopy)
    {
      goto LABEL_3;
    }
  }

  [CHCSVParser initWithInputStream:usedEncoding:delimiter:];
LABEL_3:
  newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v11 = [newlineCharacterSet characterIsMember:delimiterCopy];

  if (v11)
  {
    [CHCSVParser initWithInputStream:usedEncoding:delimiter:];
  }

  if (delimiterCopy == 34)
  {
    [CHCSVParser initWithInputStream:usedEncoding:delimiter:];
  }

  v26.receiver = self;
  v26.super_class = CHCSVParser;
  v12 = [(CHCSVParser *)&v26 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_stream, stream);
    [(NSInputStream *)v13->_stream open];
    v14 = objc_alloc_init(MEMORY[0x1E695DF88]);
    stringBuffer = v13->_stringBuffer;
    v13->_stringBuffer = v14;

    v16 = objc_alloc_init(MEMORY[0x1E696AD60]);
    string = v13->_string;
    v13->_string = v16;

    v13->_delimiter = delimiterCopy;
    v13->_nextIndex = 0;
    *&v13->_recognizesBackslashesAsEscapes = 0;
    v13->_sanitizesFields = 0;
    v18 = objc_alloc_init(MEMORY[0x1E696AD60]);
    sanitizedField = v13->_sanitizedField;
    v13->_sanitizedField = v18;

    v13->_trimsWhitespace = 0;
    v13->_recognizesLeadingEqualSign = 0;
    newlineCharacterSet2 = [MEMORY[0x1E696AB08] newlineCharacterSet];
    v21 = [newlineCharacterSet2 mutableCopy];

    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%c%C", 34, v13->_delimiter];
    [v21 addCharactersInString:v22];
    invertedSet = [v21 invertedSet];
    validFieldCharacters = v13->_validFieldCharacters;
    v13->_validFieldCharacters = invertedSet;

    if (encoding)
    {
      if (*encoding)
      {
        v13->_streamEncoding = *encoding;
      }

      else
      {
        [(CHCSVParser *)v13 _sniffEncoding];
        *encoding = v13->_streamEncoding;
      }
    }

    else
    {
      [(CHCSVParser *)v13 _sniffEncoding];
    }
  }

  return v13;
}

- (void)dealloc
{
  [(NSInputStream *)self->_stream close];
  v3.receiver = self;
  v3.super_class = CHCSVParser;
  [(CHCSVParser *)&v3 dealloc];
}

- (void)setRecognizesBackslashesAsEscapes:(BOOL)escapes
{
  self->_recognizesBackslashesAsEscapes = escapes;
  if (self->_delimiter == 92 && escapes)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Cannot recognize backslashes as escapes when using '\\' as the delimiter"];
  }
}

- (void)setRecognizesComments:(BOOL)comments
{
  self->_recognizesComments = comments;
  if (self->_delimiter == 35 && comments)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Cannot recognize comments when using '#' as the delimiter"];
  }
}

- (void)setRecognizesLeadingEqualSign:(BOOL)sign
{
  self->_recognizesLeadingEqualSign = sign;
  if (self->_delimiter == 61 && sign)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Cannot recognize leading equal sign when using '=' as the delimiter"];
  }
}

- (void)_sniffEncoding
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(NSInputStream *)self->_stream read:&v12 maxLength:512];
  if ((v3 - 1) > 0x1FF)
  {
    v7 = 4;
  }

  else
  {
    v4 = v3;
    [(NSMutableData *)self->_stringBuffer appendBytes:&v12 length:v3];
    [(CHCSVParser *)self setTotalBytesRead:[(CHCSVParser *)self totalBytesRead]+ v4];
    v6 = v4 >= 4 && v12 == 0 && v13 == 0;
    if (v6 && v14 == 254 && v15 == 255)
    {
      v7 = 2550137088;
LABEL_26:
      v8 = 4;
LABEL_27:
      [(NSMutableData *)self->_stringBuffer replaceBytesInRange:0 withBytes:v8 length:0, 0];
      goto LABEL_28;
    }

    if (v4 >= 4 && v12 == 255 && v13 == 254 && !v14 && !v15)
    {
      v7 = 2617245952;
      goto LABEL_26;
    }

    if (v4 >= 4 && v12 == 27 && v13 == 36 && v14 == 41 && v15 == 67)
    {
      v7 = CFStringConvertEncodingToNSStringEncoding(0x840u);
      goto LABEL_26;
    }

    if (v4 >= 2 && v12 == 254 && v13 == 255)
    {
      v7 = 2415919360;
LABEL_37:
      v8 = 2;
      goto LABEL_27;
    }

    if (v4 >= 2 && v12 == 255 && v13 == 254)
    {
      v7 = 2483028224;
      goto LABEL_37;
    }

    if (v4 >= 3 && v12 == 239 && v13 == 187 && v14 == 191)
    {
      v7 = 4;
      v8 = 3;
      goto LABEL_27;
    }

    v9 = -4;
    v7 = 4;
    while (1)
    {
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:&v12 length:v4 encoding:4];
      if (v10)
      {
        break;
      }

      --v4;
      if (__CFADD__(v9++, 1))
      {
        NSLog(&cfstr_UnableToDeterm.isa);
        v7 = 30;
        break;
      }
    }
  }

LABEL_28:
  self->_streamEncoding = v7;
}

- (void)_loadMoreIfNecessary
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableString *)self->_string length];
  v4 = v3 / 3;
  if (v3 / 3 <= 0xA)
  {
    v4 = 10;
  }

  if (v4 + self->_nextIndex >= v3 && [(NSInputStream *)self->_stream hasBytesAvailable])
  {
    v5 = [(NSInputStream *)self->_stream read:v10 maxLength:512];
    if (v5 >= 1)
    {
      v6 = v5;
      [(NSMutableData *)self->_stringBuffer appendBytes:v10 length:v5];
      [(CHCSVParser *)self setTotalBytesRead:[(CHCSVParser *)self totalBytesRead]+ v6];
    }
  }

  if ([(NSMutableData *)self->_stringBuffer length])
  {
    v7 = [(NSMutableData *)self->_stringBuffer length];
    if (v7)
    {
      while (1)
      {
        v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:-[NSMutableData bytes](self->_stringBuffer length:"bytes") encoding:{v7, self->_streamEncoding}];
        if (v8)
        {
          break;
        }

        if (!--v7)
        {
          goto LABEL_13;
        }
      }

      v9 = v8;
      [(NSMutableString *)self->_string appendString:v8];
    }

LABEL_13:
    [(NSMutableData *)self->_stringBuffer replaceBytesInRange:0 withBytes:v7 length:0, 0];
  }
}

- (unsigned)_peekCharacter
{
  [(CHCSVParser *)self _loadMoreIfNecessary];
  nextIndex = self->_nextIndex;
  if (nextIndex >= [(NSMutableString *)self->_string length])
  {
    return 0;
  }

  string = self->_string;
  v5 = self->_nextIndex;

  return [(NSMutableString *)string characterAtIndex:v5];
}

- (unsigned)_peekPeekCharacter
{
  [(CHCSVParser *)self _loadMoreIfNecessary];
  v3 = self->_nextIndex + 1;
  if (v3 >= [(NSMutableString *)self->_string length])
  {
    return 0;
  }

  string = self->_string;

  return [(NSMutableString *)string characterAtIndex:v3];
}

- (void)parse
{
  v3 = objc_autoreleasePoolPush();
  [(CHCSVParser *)self _beginDocument];
  self->_currentRecord = 0;
    ;
  }

  if (self->_error)
  {
    [(CHCSVParser *)self _error];
  }

  else
  {
    [(CHCSVParser *)self _endDocument];
  }

  objc_autoreleasePoolPop(v3);
}

- (BOOL)_parseRecord
{
  for (i = self; [(CHCSVParser *)self _peekCharacter]== 35 && i->_recognizesComments; self = i)
  {
    [(CHCSVParser *)i _parseComment];
  }

  if ([(CHCSVParser *)i _peekCharacter])
  {
    v3 = objc_autoreleasePoolPush();
    [(CHCSVParser *)i _beginRecord];
      ;
    }

    [(CHCSVParser *)i _endRecord];
    objc_autoreleasePoolPop(v3);
  }

  _parseNewline = [(CHCSVParser *)i _parseNewline];
  if (_parseNewline)
  {
    if (i->_error)
    {
      LOBYTE(_parseNewline) = 0;
    }

    else
    {
      LOBYTE(_parseNewline) = [(CHCSVParser *)i _peekCharacter]!= 0;
    }
  }

  return _parseNewline;
}

- (BOOL)_parseNewline
{
  if (self->_cancelled)
  {
    return 0;
  }

  _peekCharacter = [(CHCSVParser *)self _peekCharacter];
  _peekPeekCharacter = [(CHCSVParser *)self _peekPeekCharacter];
  if (_peekCharacter == 13 && _peekPeekCharacter == 10)
  {
    [(CHCSVParser *)self _advance];
LABEL_7:
    [(CHCSVParser *)self _advance];
    return 1;
  }

  newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v7 = [newlineCharacterSet characterIsMember:_peekCharacter];

  if (v7)
  {
    goto LABEL_7;
  }

  return 0;
}

- (BOOL)_parseComment
{
  [(CHCSVParser *)self _advance];
  newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
  [(CHCSVParser *)self _beginComment];
  while (1)
  {
    _peekCharacter = [(CHCSVParser *)self _peekCharacter];
    if (_peekCharacter == 92 && self->_recognizesBackslashesAsEscapes)
    {
      while (1)
      {
        [(CHCSVParser *)self _advance];
      }
    }

    v5 = [newlineCharacterSet characterIsMember:_peekCharacter];
    if (!_peekCharacter || (v5 & 1) != 0)
    {
      break;
    }

    [(CHCSVParser *)self _advance];
  }

  [(CHCSVParser *)self _endComment];
  _parseNewline = [(CHCSVParser *)self _parseNewline];

  return _parseNewline;
}

- (void)_parseFieldWhitespace
{
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  while ([(CHCSVParser *)self _peekCharacter])
  {
    if (![whitespaceCharacterSet characterIsMember:{-[CHCSVParser _peekCharacter](self, "_peekCharacter")}] || -[CHCSVParser _peekCharacter](self, "_peekCharacter") == self->_delimiter)
    {
      break;
    }

    if (!self->_trimsWhitespace)
    {
      [(NSMutableString *)self->_sanitizedField appendFormat:@"%C", [(CHCSVParser *)self _peekCharacter]];
    }

    [(CHCSVParser *)self _advance];
  }
}

- (BOOL)_parseField
{
  if (self->_cancelled)
  {
    return 0;
  }

  [(CHCSVParser *)self _beginField];
  [(CHCSVParser *)self _parseFieldWhitespace];
  if ([(CHCSVParser *)self _peekCharacter]!= 34)
  {
    if (!self->_recognizesLeadingEqualSign || [(CHCSVParser *)self _peekCharacter]!= 61 || [(CHCSVParser *)self _peekPeekCharacter]!= 34)
    {
      _parseUnescapedField = [(CHCSVParser *)self _parseUnescapedField];
      v5 = _parseUnescapedField;
      if (self->_trimsWhitespace)
      {
        sanitizedField = self->_sanitizedField;
        whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
        v8 = [(NSMutableString *)sanitizedField stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

        [(NSMutableString *)self->_sanitizedField setString:v8];
        if (v5)
        {
          goto LABEL_5;
        }
      }

      else if (_parseUnescapedField)
      {
        goto LABEL_5;
      }

      return 0;
    }

    [(CHCSVParser *)self _advance];
  }

  if ([(CHCSVParser *)self _parseEscapedField])
  {
LABEL_5:
    [(CHCSVParser *)self _parseFieldWhitespace];
    [(CHCSVParser *)self _endField];
    return 1;
  }

  return 0;
}

- (BOOL)_parseEscapedField
{
  [(CHCSVParser *)self _advance];
  newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
  _peekCharacter = [(CHCSVParser *)self _peekCharacter];
  if (_peekCharacter)
  {
    v5 = 0;
    while (1)
    {
      v6 = _peekCharacter;
      if (v5)
      {
        goto LABEL_10;
      }

      if (_peekCharacter != 92 || !self->_recognizesBackslashesAsEscapes)
      {
        break;
      }

      [(CHCSVParser *)self _advance];
      v5 = 1;
LABEL_12:
      _peekCharacter = [(CHCSVParser *)self _peekCharacter];
      if (!_peekCharacter)
      {
        goto LABEL_17;
      }
    }

    if (-[NSCharacterSet characterIsMember:](self->_validFieldCharacters, "characterIsMember:", _peekCharacter) || ([newlineCharacterSet characterIsMember:v6] & 1) != 0 || v6 == self->_delimiter)
    {
LABEL_10:
      [(NSMutableString *)self->_sanitizedField appendFormat:@"%C", v6];
    }

    else
    {
      if (v6 != 34 || [(CHCSVParser *)self _peekPeekCharacter]!= 34)
      {
        goto LABEL_17;
      }

      [(NSMutableString *)self->_sanitizedField appendFormat:@"%C", 34];
      [(CHCSVParser *)self _advance];
    }

    [(CHCSVParser *)self _advance];
    v5 = 0;
    goto LABEL_12;
  }

LABEL_17:
  _peekCharacter2 = [(CHCSVParser *)self _peekCharacter];
  if (_peekCharacter2 == 34)
  {
    [(CHCSVParser *)self _advance];
  }

  return _peekCharacter2 == 34;
}

- (BOOL)_parseUnescapedField
{
  newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
  _peekCharacter = [(CHCSVParser *)self _peekCharacter];
  if (_peekCharacter)
  {
    v5 = 0;
    while (1)
    {
      v6 = _peekCharacter;
      if (v5)
      {
        goto LABEL_9;
      }

      if (_peekCharacter != 92 || !self->_recognizesBackslashesAsEscapes)
      {
        break;
      }

      [(CHCSVParser *)self _advance];
      v5 = 1;
LABEL_10:
      _peekCharacter = [(CHCSVParser *)self _peekCharacter];
      if (!_peekCharacter)
      {
        goto LABEL_11;
      }
    }

    if (([newlineCharacterSet characterIsMember:_peekCharacter] & 1) != 0 || v6 == self->_delimiter)
    {
      goto LABEL_11;
    }

LABEL_9:
    [(NSMutableString *)self->_sanitizedField appendFormat:@"%C", v6];
    [(CHCSVParser *)self _advance];
    v5 = 0;
    goto LABEL_10;
  }

LABEL_11:

  return 1;
}

- (BOOL)_parseDelimiter
{
  v15[1] = *MEMORY[0x1E69E9840];
  _peekCharacter = [(CHCSVParser *)self _peekCharacter];
  v4 = _peekCharacter;
  delimiter = self->_delimiter;
  if (_peekCharacter == delimiter)
  {
    [(CHCSVParser *)self _advance];
  }

  else if (_peekCharacter)
  {
    newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
    v7 = [newlineCharacterSet characterIsMember:v4];

    if ((v7 & 1) == 0)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected delimiter. Expected '%C' (0x%X), but got '%C' (0x%X)", self->_delimiter, self->_delimiter, -[CHCSVParser _peekCharacter](self, "_peekCharacter"), -[CHCSVParser _peekCharacter](self, "_peekCharacter")];
      v9 = objc_alloc(MEMORY[0x1E696ABC0]);
      v14 = *MEMORY[0x1E696A578];
      v15[0] = v8;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      v11 = [v9 initWithDomain:@"com.davedelong.csv" code:1 userInfo:v10];
      error = self->_error;
      self->_error = v11;
    }
  }

  return v4 == delimiter;
}

- (void)_beginDocument
{
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_delegate;

    [(CHCSVParserDelegate *)delegate parserDidBeginDocument:self];
  }
}

- (void)_endDocument
{
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_delegate;

    [(CHCSVParserDelegate *)delegate parserDidEndDocument:self];
  }
}

- (void)_beginRecord
{
  if (!self->_cancelled)
  {
    self->_fieldIndex = 0;
    ++self->_currentRecord;
    if (objc_opt_respondsToSelector())
    {
      delegate = self->_delegate;
      currentRecord = self->_currentRecord;

      [(CHCSVParserDelegate *)delegate parser:self didBeginLine:currentRecord];
    }
  }
}

- (void)_endRecord
{
  if (!self->_cancelled && (objc_opt_respondsToSelector() & 1) != 0)
  {
    delegate = self->_delegate;
    currentRecord = self->_currentRecord;

    [(CHCSVParserDelegate *)delegate parser:self didEndLine:currentRecord];
  }
}

- (void)_beginField
{
  if (!self->_cancelled)
  {
    [(NSMutableString *)self->_sanitizedField setString:&stru_1F3A5E418];
    self->_fieldRange.location = self->_nextIndex;
  }
}

- (void)_endField
{
  if (!self->_cancelled)
  {
    self->_fieldRange.length = self->_nextIndex - self->_fieldRange.location;
    if (self->_sanitizesFields)
    {
      v7 = [(NSMutableString *)self->_sanitizedField copy];
    }

    else
    {
      v7 = [(NSMutableString *)self->_string substringWithRange:?];
      if (self->_trimsWhitespace)
      {
        whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
        v5 = [v7 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

        v7 = v5;
      }
    }

    if (objc_opt_respondsToSelector())
    {
      [(CHCSVParserDelegate *)self->_delegate parser:self didReadField:v7 atIndex:self->_fieldIndex];
    }

    [(NSMutableString *)self->_string replaceCharactersInRange:0 withString:self->_fieldRange.length + self->_fieldRange.location, &stru_1F3A5E418];
    v6 = self->_fieldIndex + 1;
    self->_nextIndex = 0;
    self->_fieldIndex = v6;
  }
}

- (void)_beginComment
{
  if (!self->_cancelled)
  {
    self->_fieldRange.location = self->_nextIndex;
  }
}

- (void)_endComment
{
  if (!self->_cancelled)
  {
    self->_fieldRange.length = self->_nextIndex - self->_fieldRange.location;
    if (objc_opt_respondsToSelector())
    {
      v3 = [(NSMutableString *)self->_string substringWithRange:self->_fieldRange.location, self->_fieldRange.length];
      [(CHCSVParserDelegate *)self->_delegate parser:self didReadComment:v3];
    }

    [(NSMutableString *)self->_string replaceCharactersInRange:0 withString:self->_fieldRange.length + self->_fieldRange.location, &stru_1F3A5E418];
    self->_nextIndex = 0;
  }
}

- (void)_error
{
  if (!self->_cancelled && (objc_opt_respondsToSelector() & 1) != 0)
  {
    delegate = self->_delegate;
    error = self->_error;

    [(CHCSVParserDelegate *)delegate parser:self didFailWithError:error];
  }
}

- (CHCSVParser)initWithContentsOfCSVFile:(id)file
{
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:file];
  v5 = [(CHCSVParser *)self initWithContentsOfCSVURL:v4];

  return v5;
}

- (CHCSVParser)initWithContentsOfCSVFile:(id)file delimiter:(unsigned __int16)delimiter
{
  delimiterCopy = delimiter;
  v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:file];
  v7 = [(CHCSVParser *)self initWithContentsOfDelimitedURL:v6 delimiter:delimiterCopy];

  return v7;
}

- (void)initWithInputStream:usedEncoding:delimiter:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"stream" object:? file:? lineNumber:? description:?];
}

- (void)initWithInputStream:usedEncoding:delimiter:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"delimiter" object:? file:? lineNumber:? description:?];
}

- (void)initWithInputStream:usedEncoding:delimiter:.cold.3()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)initWithInputStream:usedEncoding:delimiter:.cold.4()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end