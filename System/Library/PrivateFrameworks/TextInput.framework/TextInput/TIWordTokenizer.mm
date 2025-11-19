@interface TIWordTokenizer
- (TIWordTokenizer)init;
- (_NSRange)advanceToNextToken;
- (_NSRange)rangeOfCurrentToken;
- (id)allTokensForString:(id)a3;
- (void)setString:(id)a3 withSearchRange:(_NSRange)a4;
@end

@implementation TIWordTokenizer

- (TIWordTokenizer)init
{
  v6.receiver = self;
  v6.super_class = TIWordTokenizer;
  v2 = [(TIWordTokenizer *)&v6 init];
  v3 = v2;
  if (v2)
  {
    m_string = v2->m_string;
    v2->m_string = 0;

    v3->m_tokenRange = xmmword_186483EA0;
  }

  return v3;
}

- (_NSRange)advanceToNextToken
{
  if (!self->m_string || (location = self->m_searchRange.location, location == 0x7FFFFFFFFFFFFFFFLL))
  {
    v4 = 0;
    self->m_tokenRange = xmmword_186483EA0;
    v5 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_78;
  }

  length = self->m_searchRange.length;
  m_bufferOffset = self->m_bufferOffset;
  v8 = location - m_bufferOffset;
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (location - m_bufferOffset >= location - m_bufferOffset + length)
  {
    v4 = 0;
    v17 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_71;
  }

  Predefined = 0;
  v45 = location - m_bufferOffset + length;
  v9 = 0;
  theSet = 0;
  v10 = m_bufferOffset - location;
  v11 = v8 + 64;
  v12 = 2 * location - 2 * m_bufferOffset;
  v13 = &self->m_inlineBuffer + v12;
  v14 = 0x7FFFFFFFFFFFFFFFLL;
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  v16 = v8;
  do
  {
    v17 = v15;
    v18 = v8 + v9;
    if (v16 >= 4)
    {
      v19 = 4;
    }

    else
    {
      v19 = v16;
    }

    if (v18 < 0 || (v20 = self->m_inlineBuffer.rangeToBuffer.length, v20 <= v18))
    {
      v23 = 0;
LABEL_15:
      v24 = wordRangeInRange_simpleTokenCategories[v23];
      if (v24 == 50)
      {
        goto LABEL_34;
      }

      if (v24 == 49)
      {
        goto LABEL_56;
      }

      if (v24 != 48)
      {
        goto LABEL_38;
      }

      goto LABEL_23;
    }

    directUniCharBuffer = self->m_inlineBuffer.directUniCharBuffer;
    if (directUniCharBuffer)
    {
      v22 = &directUniCharBuffer[self->m_inlineBuffer.rangeToBuffer.location] + v12;
LABEL_13:
      v23 = *&v22[2 * v9];
      goto LABEL_21;
    }

    directCStringBuffer = self->m_inlineBuffer.directCStringBuffer;
    if (!directCStringBuffer)
    {
      if (self->m_inlineBuffer.bufferedRangeEnd <= v18 || (bufferedRangeStart = self->m_inlineBuffer.bufferedRangeStart, bufferedRangeStart > v18))
      {
        v29 = v19 + v10;
        v30 = v11 - v19;
        v47 = v12;
        v49 = length;
        v31 = -v19;
        v32 = v9 + v8 - v19;
        v33 = v32 + 64;
        if (v32 + 64 >= v20)
        {
          v33 = self->m_inlineBuffer.rangeToBuffer.length;
        }

        self->m_inlineBuffer.bufferedRangeStart = v32;
        self->m_inlineBuffer.bufferedRangeEnd = v33;
        v34 = v8 + v9 + v31;
        if (v20 >= v30)
        {
          v20 = v30;
        }

        v52.location = v34 + self->m_inlineBuffer.rangeToBuffer.location;
        v52.length = v20 + v29;
        v35 = v13;
        CFStringGetCharacters(self->m_inlineBuffer.theString, v52, self->m_inlineBuffer.buffer);
        v13 = v35;
        v12 = v47;
        length = v49;
        v5 = 0x7FFFFFFFFFFFFFFFLL;
        bufferedRangeStart = self->m_inlineBuffer.bufferedRangeStart;
      }

      v22 = &v13[-2 * bufferedRangeStart];
      goto LABEL_13;
    }

    v23 = directCStringBuffer[self->m_inlineBuffer.rangeToBuffer.location + v8 + v9];
LABEL_21:
    if (v23 < 0x100u)
    {
      goto LABEL_15;
    }

    if ((v23 >> 3) <= 0x404u)
    {
      if ((v23 & 0x3FFE) == 0x2018 || v23 == 8228 || v23 == 8231)
      {
LABEL_34:
        if (v14 != 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_67:
          v4 = v14 - v17;
          goto LABEL_71;
        }

        if (v17 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v14 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v8 + v9;
        }

LABEL_38:
        v15 = v17;
        goto LABEL_59;
      }

      if ((v23 - 1024) < 0x82u || (v23 - 1162) < 0x76u)
      {
        goto LABEL_56;
      }

      if ((v23 - 1155) < 7u)
      {
        goto LABEL_38;
      }

      v48 = v12;
      v50 = length;
      v43 = v13;
      if (!theSet)
      {
        theSet = CFCharacterSetGetPredefined(kCFCharacterSetAlphaNumeric);
      }

      if (!Predefined)
      {
        Predefined = CFCharacterSetGetPredefined(kCFCharacterSetNonBase);
      }

      if (CFCharacterSetIsCharacterMember(theSet, v23))
      {
        v5 = 0x7FFFFFFFFFFFFFFFLL;
        v12 = v48;
        length = v50;
        v13 = v43;
LABEL_56:
        v14 = 0x7FFFFFFFFFFFFFFFLL;
        if (v17 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v15 = v8 + v9;
        }

        else
        {
          v15 = v17;
        }

        goto LABEL_59;
      }

      IsCharacterMember = CFCharacterSetIsCharacterMember(Predefined, v23);
      v5 = 0x7FFFFFFFFFFFFFFFLL;
      v12 = v48;
      length = v50;
      v13 = v43;
      if (IsCharacterMember)
      {
        goto LABEL_38;
      }
    }

LABEL_23:
    if (v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_67;
    }

    v15 = 0x7FFFFFFFFFFFFFFFLL;
    v14 = 0x7FFFFFFFFFFFFFFFLL;
    if (v17 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 = v18 - v17;
      goto LABEL_71;
    }

LABEL_59:
    ++v16;
    ++v9;
    --v10;
    ++v11;
  }

  while (length != v9);
  v17 = 0x7FFFFFFFFFFFFFFFLL;
  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 = 0;
      goto LABEL_71;
    }

    v4 = v45 - v15;
  }

  else
  {
    v4 = v14 - v15;
  }

  v17 = v15;
LABEL_71:
  self->m_tokenRange.location = v17;
  self->m_tokenRange.length = v4;
  if (v17 == 0x7FFFFFFFFFFFFFFFLL || (v37 = self->m_bufferOffset + v17, self->m_tokenRange.location = v37, v5 = 0x7FFFFFFFFFFFFFFFLL, v37 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v38 = 0;
    v39 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v40 = self->m_searchRange.length + self->m_searchRange.location;
    v39 = v37 + v4;
    v41 = v40 > v37 + v4;
    v38 = v40 - (v37 + v4);
    if (!v41)
    {
      v39 = 0x7FFFFFFFFFFFFFFFLL;
      v38 = 0;
    }

    v5 = v37;
  }

  self->m_searchRange.location = v39;
  self->m_searchRange.length = v38;
LABEL_78:
  v42 = v5;
  result.length = v4;
  result.location = v42;
  return result;
}

- (id)allTokensForString:(id)a3
{
  v4 = a3;
  -[TIWordTokenizer setString:withSearchRange:](self, "setString:withSearchRange:", v4, 0, [v4 length]);
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [(TIWordTokenizer *)self advanceToNextToken];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    for (i = v6; i != 0x7FFFFFFFFFFFFFFFLL; i = [(TIWordTokenizer *)self advanceToNextToken])
    {
      v9 = [v4 substringWithRange:{i, v7}];
      [v5 addObject:v9];
    }
  }

  return v5;
}

- (_NSRange)rangeOfCurrentToken
{
  length = self->m_tokenRange.length;
  location = self->m_tokenRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (void)setString:(id)a3 withSearchRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v17 = a3;
  if (!v17)
  {
    m_string = self->m_string;
    self->m_string = 0;

    v12 = xmmword_186483EA0;
    self->m_tokenRange = xmmword_186483EA0;
LABEL_7:
    self->m_searchRange = v12;
    goto LABEL_8;
  }

  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:v17];
  v8 = self->m_string;
  self->m_string = v7;

  self->m_tokenRange = xmmword_186483EA0;
  if (location >= [v17 length])
  {
    v12 = xmmword_186483EA0;
    goto LABEL_7;
  }

  self->m_searchRange.location = location;
  self->m_searchRange.length = length;
  if (location + length <= [v17 length])
  {
    v10 = self->m_searchRange.location;
  }

  else
  {
    v9 = [v17 length];
    v10 = self->m_searchRange.location;
    self->m_searchRange.length = v9 - v10;
  }

  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = self->m_string;
    v14 = self->m_searchRange.length;
    self->m_inlineBuffer.theString = v13;
    self->m_inlineBuffer.rangeToBuffer.location = v10;
    self->m_inlineBuffer.rangeToBuffer.length = v14;
    CharactersPtr = CFStringGetCharactersPtr(v13);
    self->m_inlineBuffer.directUniCharBuffer = CharactersPtr;
    if (CharactersPtr)
    {
      CStringPtr = 0;
    }

    else
    {
      CStringPtr = CFStringGetCStringPtr(v13, 0x600u);
    }

    self->m_inlineBuffer.directCStringBuffer = CStringPtr;
    self->m_inlineBuffer.bufferedRangeStart = 0;
    self->m_inlineBuffer.bufferedRangeEnd = 0;
    self->m_bufferOffset = self->m_searchRange.location;
  }

LABEL_8:
}

@end