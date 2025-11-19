@interface SFUJsonScanner
- (BOOL)parseConstantString:(const char *)a3;
- (SFUJsonScanner)initWithString:(id)a3;
- (id)parseArrayWithMaxDepth:(int)a3;
- (id)parseDictionaryWithMaxDepth:(int)a3;
- (id)parseFalse;
- (id)parseHexCharacter;
- (id)parseNull;
- (id)parseNumber;
- (id)parseObjectWithMaxDepth:(int)a3;
- (id)parseString;
- (id)parseTrue;
- (unsigned)nextCharacter;
- (void)appendCharactersInRange:(_NSRange)a3 toString:(id)a4;
- (void)dealloc;
- (void)skipWhitespace;
@end

@implementation SFUJsonScanner

- (SFUJsonScanner)initWithString:(id)a3
{
  v8.receiver = self;
  v8.super_class = SFUJsonScanner;
  v4 = [(SFUJsonScanner *)&v8 init];
  if (v4)
  {
    v4->mString = a3;
    v5 = [a3 length];
    v4->mLength = v5;
    v6 = malloc_type_malloc(2 * v5, 0x1000040BDFB0063uLL);
    v4->mCharacters = v6;
    [a3 getCharacters:v6];
    v4->mWhitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v4->mDecimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  }

  return v4;
}

- (void)dealloc
{
  free(self->mCharacters);

  v3.receiver = self;
  v3.super_class = SFUJsonScanner;
  [(SFUJsonScanner *)&v3 dealloc];
}

- (unsigned)nextCharacter
{
  mOffset = self->mOffset;
  if (mOffset >= self->mLength)
  {
    return 0;
  }

  mCharacters = self->mCharacters;
  self->mOffset = mOffset + 1;
  return mCharacters[mOffset];
}

- (void)skipWhitespace
{
  mOffset = self->mOffset;
  if (mOffset < self->mLength)
  {
    v9 = v3;
    v10 = v2;
    v11 = v4;
    v12 = v5;
    do
    {
      if (![(NSCharacterSet *)self->mWhitespaceCharacterSet characterIsMember:self->mCharacters[mOffset], v9, v10, v11, v12])
      {
        break;
      }

      mLength = self->mLength;
      mOffset = self->mOffset + 1;
      self->mOffset = mOffset;
    }

    while (mOffset < mLength);
  }
}

- (id)parseHexCharacter
{
  v3 = 0;
  v4 = 4;
  while (1)
  {
    v5 = [(SFUJsonScanner *)self nextCharacter];
    v6 = v5 - 48;
    if ((v5 - 48) >= 0xA)
    {
      break;
    }

LABEL_7:
    v3 = (16 * v3) | v6;
    if (!--v4)
    {
      v8 = v3;
      return [MEMORY[0x277CCACA8] stringWithCharacters:&v8 length:1];
    }
  }

  if ((v5 - 97) <= 5)
  {
    v6 = v5 - 87;
    goto LABEL_7;
  }

  if ((v5 - 65) <= 5)
  {
    v6 = v5 - 55;
    goto LABEL_7;
  }

  return 0;
}

- (void)appendCharactersInRange:(_NSRange)a3 toString:(id)a4
{
  if (a3.length)
  {
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharactersNoCopy:&self->mCharacters[a3.location] length:a3.length freeWhenDone:0];
    [a4 appendString:v5];
  }
}

- (id)parseString
{
  if ([(SFUJsonScanner *)self nextCharacter]!= 34)
  {
    return 0;
  }

  mOffset = self->mOffset;
  v4 = [MEMORY[0x277CCAB68] string];
  while (2)
  {
    v5 = 0;
    while (1)
    {
      v6 = [(SFUJsonScanner *)self nextCharacter];
      if (v6 == 34)
      {
        [(SFUJsonScanner *)self appendCharactersInRange:mOffset toString:v5, v4];
        return v4;
      }

      v7 = v6;
      if (v6 == 92)
      {
        break;
      }

      result = 0;
      if (v7 >= 0x20)
      {
        ++v5;
        if (v7 - 127 >= 0x21)
        {
          continue;
        }
      }

      return result;
    }

    [(SFUJsonScanner *)self appendCharactersInRange:mOffset toString:v5, v4];
    v9 = [(SFUJsonScanner *)self nextCharacter];
    result = 0;
    if (v9 <= 101)
    {
      if (v9 > 91)
      {
        if (v9 == 92)
        {
          v10 = @"\\"";
        }

        else
        {
          if (v9 != 98)
          {
            return result;
          }

          v10 = @"\b";
        }
      }

      else
      {
        v10 = @"";
        if (v9 != 34)
        {
          if (v9 != 47)
          {
            return result;
          }

          v10 = @"/";
        }
      }

      goto LABEL_30;
    }

    if (v9 <= 113)
    {
      if (v9 == 102)
      {
        v10 = @"\f";
      }

      else
      {
        if (v9 != 110)
        {
          return result;
        }

        v10 = @"\n";
      }

      goto LABEL_30;
    }

    switch(v9)
    {
      case 'r':
        v10 = @"\r";
        goto LABEL_30;
      case 't':
        v10 = @"\t";
LABEL_30:
        [v4 appendString:v10];
        mOffset = self->mOffset;
        continue;
      case 'u':
        result = [(SFUJsonScanner *)self parseHexCharacter];
        v10 = result;
        if (result)
        {
          goto LABEL_30;
        }

        break;
    }

    return result;
  }
}

- (id)parseDictionaryWithMaxDepth:(int)a3
{
  v5 = [(SFUJsonScanner *)self nextCharacter];
  result = 0;
  v7 = __OFSUB__(a3, 1);
  v8 = (a3 - 1);
  if (v8 < 0 == v7 && v5 == 123)
  {
    [(SFUJsonScanner *)self skipWhitespace];
    mOffset = self->mOffset;
    if (mOffset < self->mLength && self->mCharacters[mOffset] == 125)
    {
      self->mOffset = mOffset + 1;
      v10 = MEMORY[0x277CBEAC0];

      return [v10 dictionary];
    }

    else
    {
      v11 = [MEMORY[0x277CBEB38] dictionary];
      result = [(SFUJsonScanner *)self parseString];
      if (result)
      {
        v12 = result;
        while (1)
        {
          [(SFUJsonScanner *)self skipWhitespace];
          if ([(SFUJsonScanner *)self nextCharacter]!= 58)
          {
            return 0;
          }

          [(SFUJsonScanner *)self skipWhitespace];
          result = [(SFUJsonScanner *)self parseObjectWithMaxDepth:v8];
          if (!result)
          {
            return result;
          }

          [v11 setObject:result forKey:v12];
          [(SFUJsonScanner *)self skipWhitespace];
          v13 = [(SFUJsonScanner *)self nextCharacter];
          if (v13 != 44)
          {
            break;
          }

          [(SFUJsonScanner *)self skipWhitespace];
          result = [(SFUJsonScanner *)self parseString];
          v12 = result;
          if (!result)
          {
            return result;
          }
        }

        if (v13 == 125)
        {
          return v11;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

- (id)parseArrayWithMaxDepth:(int)a3
{
  v5 = [(SFUJsonScanner *)self nextCharacter];
  result = 0;
  v7 = __OFSUB__(a3, 1);
  v8 = (a3 - 1);
  if (v8 < 0 == v7 && v5 == 91)
  {
    [(SFUJsonScanner *)self skipWhitespace];
    mOffset = self->mOffset;
    if (mOffset < self->mLength && self->mCharacters[mOffset] == 93)
    {
      self->mOffset = mOffset + 1;
      v10 = MEMORY[0x277CBEA60];

      return [v10 array];
    }

    else
    {
      v11 = [MEMORY[0x277CBEB18] array];
      result = [(SFUJsonScanner *)self parseObjectWithMaxDepth:v8];
      if (result)
      {
        v12 = result;
        while (1)
        {
          [v11 addObject:v12];
          [(SFUJsonScanner *)self skipWhitespace];
          v13 = [(SFUJsonScanner *)self nextCharacter];
          if (v13 != 44)
          {
            break;
          }

          [(SFUJsonScanner *)self skipWhitespace];
          result = [(SFUJsonScanner *)self parseObjectWithMaxDepth:v8];
          v12 = result;
          if (!result)
          {
            return result;
          }
        }

        if (v13 == 93)
        {
          return v11;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

- (BOOL)parseConstantString:(const char *)a3
{
  if (!*a3)
  {
    return 1;
  }

  v4 = a3 + 1;
  do
  {
    result = [(SFUJsonScanner *)self nextCharacter]== *(v4 - 1);
    if (!result)
    {
      break;
    }
  }

  while (*v4++);
  return result;
}

- (id)parseNull
{
  if (![(SFUJsonScanner *)self parseConstantString:"null"])
  {
    return 0;
  }

  v2 = MEMORY[0x277CBEB68];

  return [v2 null];
}

- (id)parseTrue
{
  if (![(SFUJsonScanner *)self parseConstantString:"true"])
  {
    return 0;
  }

  v2 = MEMORY[0x277CCABB0];

  return [v2 numberWithBool:1];
}

- (id)parseFalse
{
  if (![(SFUJsonScanner *)self parseConstantString:"false"])
  {
    return 0;
  }

  v2 = MEMORY[0x277CCABB0];

  return [v2 numberWithBool:0];
}

- (id)parseNumber
{
  mOffset = self->mOffset;
  v4 = [(SFUJsonScanner *)self nextCharacter];
  if (v4 == 45)
  {
    v4 = [(SFUJsonScanner *)self nextCharacter];
  }

  if ([(NSCharacterSet *)self->mDecimalDigitCharacterSet characterIsMember:v4])
  {
    do
    {
      v5 = [(SFUJsonScanner *)self nextCharacter];
      if (!v5)
      {
        goto LABEL_17;
      }

      v6 = v5;
    }

    while ([(NSCharacterSet *)self->mDecimalDigitCharacterSet characterIsMember:v5]);
    if (v6 == 46)
    {
      if (![(NSCharacterSet *)self->mDecimalDigitCharacterSet characterIsMember:[(SFUJsonScanner *)self nextCharacter]])
      {
        return 0;
      }

      do
      {
        v7 = [(SFUJsonScanner *)self nextCharacter];
        if (!v7)
        {
          goto LABEL_17;
        }

        v6 = v7;
      }

      while ([(NSCharacterSet *)self->mDecimalDigitCharacterSet characterIsMember:v7]);
    }

    if ((v6 & 0xFFFFFFDF) != 0x45)
    {
LABEL_17:
      --self->mOffset;
      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharactersNoCopy:&self->mCharacters[mOffset] length:self->mOffset - mOffset freeWhenDone:0];
      v12 = [MEMORY[0x277CCA980] decimalNumberWithString:v11 locale:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @".", *MEMORY[0x277CBE6A8])}];

      return v12;
    }

    v8 = [(SFUJsonScanner *)self nextCharacter];
    if (v8 == 45 || (v9 = v8, v8 == 43))
    {
      v9 = [(SFUJsonScanner *)self nextCharacter];
    }

    if ([(NSCharacterSet *)self->mDecimalDigitCharacterSet characterIsMember:v9])
    {
      do
      {
        v10 = [(SFUJsonScanner *)self nextCharacter];
      }

      while (v10 && [(NSCharacterSet *)self->mDecimalDigitCharacterSet characterIsMember:v10]);
      goto LABEL_17;
    }
  }

  return 0;
}

- (id)parseObjectWithMaxDepth:(int)a3
{
  [(SFUJsonScanner *)self skipWhitespace];
  v5 = (a3 - 1);
  if (a3 < 1)
  {
    return 0;
  }

  v6 = self->mCharacters[self->mOffset];
  if (v6 > 0x6D)
  {
    switch(v6)
    {
      case 'n':

        return [(SFUJsonScanner *)self parseNull];
      case 't':

        return [(SFUJsonScanner *)self parseTrue];
      case '{':

        return [(SFUJsonScanner *)self parseDictionaryWithMaxDepth:v5];
      default:
LABEL_22:

        return [(SFUJsonScanner *)self parseNumber];
    }
  }

  else
  {
    switch(v6)
    {
      case '""':

        return [(SFUJsonScanner *)self parseString];
      case '[':

        return [(SFUJsonScanner *)self parseArrayWithMaxDepth:v5];
      case 'f':

        return [(SFUJsonScanner *)self parseFalse];
      default:
        goto LABEL_22;
    }
  }
}

@end