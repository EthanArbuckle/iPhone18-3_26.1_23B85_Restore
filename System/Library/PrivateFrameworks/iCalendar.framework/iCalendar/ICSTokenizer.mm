@interface ICSTokenizer
- (BOOL)consumeChar:(char)a3;
- (BOOL)consumeEOL;
- (BOOL)consumeEscaped:(const char *)a3;
- (ICSTokenizer)initWithCompressedData:(id)a3;
- (ICSTokenizer)initWithData:(id)a3;
- (id)currentToken;
- (id)nextToken;
- (void)consumeParamName;
- (void)consumeParamValue;
- (void)consumePropName;
- (void)consumePropValue;
- (void)consumeWhiteSpace;
@end

@implementation ICSTokenizer

- (ICSTokenizer)initWithData:(id)a3
{
  v15.receiver = self;
  v15.super_class = ICSTokenizer;
  v3 = a3;
  v4 = [(ICSTokenizer *)&v15 init];
  v5 = [ICSPushbackStream alloc];
  v6 = [ICSUnfoldingStream alloc];
  v7 = [ICSInputData alloc];
  v8 = [(ICSInputData *)v7 initWithData:v3, v15.receiver, v15.super_class];

  v9 = [(ICSUnfoldingStream *)v6 initWithInputStream:v8];
  v10 = [(ICSPushbackStream *)v5 initWithInputStream:v9];
  data = v4->_data;
  v4->_data = v10;

  v12 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:512];
  token = v4->_token;
  v4->_token = v12;

  return v4;
}

- (ICSTokenizer)initWithCompressedData:(id)a3
{
  v16.receiver = self;
  v16.super_class = ICSTokenizer;
  v3 = a3;
  v4 = [(ICSTokenizer *)&v16 init];
  v5 = [ICSPushbackStream alloc];
  v6 = [ICSUnfoldingStream alloc];
  v7 = [ICSCompressedInputStream alloc];
  v8 = [(ICSCompressedInputStream *)v7 initWithData:v3, v16.receiver, v16.super_class];

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

- (BOOL)consumeChar:(char)a3
{
  v3 = a3;
  v5 = [(ICSPushbackStream *)self->_data read];
  if (![(ICSPushbackStream *)self->_data eos])
  {
    if (v5 == v3)
    {
      return 1;
    }

    [(ICSPushbackStream *)self->_data pushBack:v5];
  }

  return 0;
}

- (BOOL)consumeEOL
{
  v3 = [(ICSPushbackStream *)self->_data peek];
  if (v3 == 13 || v3 == 10)
  {
    [(ICSPushbackStream *)self->_data read];
    v5 = [(ICSPushbackStream *)self->_data read];
    if (v5 != 10 && v5 != 13)
    {
      v9 = v5;
      if (![(ICSPushbackStream *)self->_data eos])
      {
        [(ICSPushbackStream *)self->_data pushBack:v9];
      }
    }
  }

  return v3 == 13 || v3 == 10;
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
      v4 = [(ICSPushbackStream *)self->_data read];
      v5 = v4;
      v10 = v4;
      if (v4 == 58)
      {
        break;
      }

      if (v4 == 59)
      {
        v9 = 2;
        goto LABEL_23;
      }

      if ((v4 & 0x80000000) != 0)
      {
        v6 = __maskrune(v4, 0x100uLL);
      }

      else
      {
        v6 = *(v3 + 4 * v4 + 60) & 0x100;
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
    [(ICSPushbackStream *)self->_data pushBack:v4];
  }
}

- (void)consumeParamName
{
  [(NSMutableData *)self->_token setLength:0];
  v3 = [(ICSPushbackStream *)self->_data read];
  if ([(ICSPushbackStream *)self->_data eos]|| v3 != 59)
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
      v5 = [(ICSPushbackStream *)self->_data read];
      v10 = v5;
      if (v5 == 61)
      {
        break;
      }

      v6 = v5;
      if ((v5 & 0x80000000) != 0)
      {
        v7 = __maskrune(v5, 0x100uLL);
      }

      else
      {
        v7 = *(v4 + 4 * v5 + 60) & 0x100;
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

- (BOOL)consumeEscaped:(const char *)a3
{
  v5 = [(ICSPushbackStream *)self->_data peek];
  if (*a3 == v5)
  {
    v6 = v5;
    [(ICSPushbackStream *)self->_data read];
    v7 = [(ICSPushbackStream *)self->_data eos];
    data = self->_data;
    if (!v7)
    {
      v9 = [(ICSPushbackStream *)data read];
      if (*(a3 + 1) == v9)
      {
        return 1;
      }

      [(ICSPushbackStream *)self->_data pushBack:v9];
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

  v20 = 0;
  v3 = 0;
  if (![(ICSPushbackStream *)self->_data eos])
  {
    v4 = [(ICSPushbackStream *)self->_data read];
    v20 = v4;
    if (v4 == 34)
    {
      v3 = 1;
    }

    else
    {
      [(ICSPushbackStream *)self->_data pushBack:v4];
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
    v20 = [(ICSPushbackStream *)self->_data peek];
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

  if ((v20 & 0xFE) != 0x3A)
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

    if ((v3 & (v20 == 34)) == 1)
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
      if (v20 <= 0x21u && ((1 << v20) & 0x300000200) != 0 || v20 < -7 || v20 - 35 < 0x5C)
      {
LABEL_46:
        [(NSMutableData *)self->_token appendBytes:&v20 length:1];
        v9 = 0;
LABEL_47:
        [(ICSPushbackStream *)self->_data read];
        goto LABEL_33;
      }
    }

    else if (v20 <= 0x21u && ((1 << v20) & 0x300000200) != 0 || v20 < -7 || v20 - 60 < 0x43 || v20 - 35 < 9 || v20 - 45 < 0xD)
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

  if (v20 == 58)
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
      v5 = [(ICSPushbackStream *)self->_data peek];
      if ([(ICSTokenizer *)self consumeEOL])
      {
        break;
      }

      if (v5 == 9 || v5 == 32 || (v4 = v5, v4 < -7) || (v5 - 33) < 0x5Eu)
      {
        [(NSMutableData *)self->_token appendBytes:&v5 length:1];
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