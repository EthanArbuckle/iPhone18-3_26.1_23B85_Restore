@interface _MFFormatFlowedWriter
+ (id)newWithPlainTextDocument:(id)a3 encoding:(unsigned int)a4;
- (id)outputString;
- (id)quotedString;
- (unint64_t)_findLineBreakInRange:(_NSRange)a3 maxCharWidthCount:(unint64_t)a4 endIsURL:(BOOL)a5;
- (void)dealloc;
@end

@implementation _MFFormatFlowedWriter

+ (id)newWithPlainTextDocument:(id)a3 encoding:(unsigned int)a4
{
  v6 = a3;
  v7 = [objc_allocWithZone(a1) init];
  v8 = *(v7 + 8);
  *(v7 + 8) = v6;

  *(v7 + 16) = a4;
  return v7;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = _MFFormatFlowedWriter;
  [(_MFFormatFlowedWriter *)&v2 dealloc];
}

- (unint64_t)_findLineBreakInRange:(_NSRange)a3 maxCharWidthCount:(unint64_t)a4 endIsURL:(BOOL)a5
{
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (a3.location != 0x7FFFFFFFFFFFFFFFLL && a3.length != 0)
  {
    v8 = a5;
    length = a3.length;
    location = a3.location;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    *buffer = 0u;
    v36 = 0u;
    lineString = self->_lineString;
    theString = lineString;
    v46 = a3;
    CharactersPtr = CFStringGetCharactersPtr(lineString);
    if (CharactersPtr)
    {
      CStringPtr = 0;
    }

    else
    {
      CStringPtr = CFStringGetCStringPtr(lineString, 0x600u);
    }

    v34 = self;
    v47 = 0;
    v48 = 0;
    v45 = CStringPtr;
    if (a4)
    {
      v14 = 0;
      v15 = 0;
      do
      {
        if ((v14 & 0x8000000000000000) != 0 || (v16 = v46.length, v46.length <= v14))
        {
          v18 = 0;
        }

        else
        {
          if (CharactersPtr)
          {
            v17 = CharactersPtr[v46.location + v14];
          }

          else if (v45)
          {
            v17 = v45[v46.location + v14];
          }

          else
          {
            if (v48 <= v14 || (v20 = v47, v47 > v14))
            {
              v21 = v14 - 4;
              if (v14 < 4)
              {
                v21 = 0;
              }

              if (v21 + 64 < v46.length)
              {
                v16 = v21 + 64;
              }

              v47 = v21;
              v48 = v16;
              v49.length = v16 - v21;
              v49.location = v46.location + v21;
              CFStringGetCharacters(theString, v49, buffer);
              v20 = v47;
            }

            v17 = buffer[v14 - v20];
          }

          v18 = v17;
          if ((v17 & 0xFC00) == 0xD800 && v14 < length - 1)
          {
            v23 = v14 + 1;
            v24 = v46.length;
            if (v46.length <= (v14 + 1))
            {
              v25 = 0;
            }

            else if (CharactersPtr)
            {
              v25 = CharactersPtr[v46.location + v23];
            }

            else if (v45)
            {
              v25 = v45[v46.location + v23];
            }

            else
            {
              if (v48 <= v23 || (v28 = v47, v47 > v23))
              {
                v29 = v14 - 3;
                if (v14 < 3)
                {
                  v29 = 0;
                }

                if (v29 + 64 < v46.length)
                {
                  v24 = v29 + 64;
                }

                v47 = v29;
                v48 = v24;
                v50.length = v24 - v29;
                v50.location = v46.location + v29;
                CFStringGetCharacters(theString, v50, buffer);
                v28 = v47;
              }

              v25 = buffer[v23 - v28];
            }

            v26 = v25 & 0xFC00;
            v27 = (v18 << 10) + v25 - 56613888;
            if (v26 == 56320)
            {
              v18 = v27;
              ++v14;
            }
          }
        }

        if (((u_getIntPropertyValue(v18, UCHAR_EAST_ASIAN_WIDTH) - 3) & 0xFFFFFFFD) != 0)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        v15 += v19;
        ++v14;
      }

      while (v14 < length && v15 < a4);
    }

    else
    {
      v15 = 0;
      v14 = 0;
    }

    if (v8 && v15 <= a4)
    {
      return location + length;
    }

    else
    {
      v30 = v34;
      v31 = [(NSMutableString *)v34->_lineString length]- location;
      v32 = [(NSMutableString *)v30->_lineString length];
      if (location + v14 + 1 < v32)
      {
        v33 = location + v14 + 1;
      }

      else
      {
        v33 = v32;
      }

      return [(NSMutableString *)v30->_lineString mf_lineBreakBeforeIndex:v33 withinRange:location, v31];
    }
  }

  return result;
}

- (id)outputString
{
  outputString = self->_outputString;
  if (!outputString)
  {
    v4 = [(MFPlainTextDocument *)self->_inputDocument fragmentCount];
    v23 = 0;
    v5 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v6 = self->_outputString;
    self->_outputString = v5;

    if (v4)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        v9 = v8;
        if (!self->_outputString)
        {
          break;
        }

        inputDocument = self->_inputDocument;
        v22 = v8;
        [(MFPlainTextDocument *)inputDocument getString:&v22 quoteLevel:&v23 ofFragmentAtIndex:v7];
        v8 = v22;

        v11 = [v8 length];
        if (v11)
        {
          v12 = v11;
          v13 = 0;
          while (1)
          {
            if (!self->_outputString)
            {
              goto LABEL_21;
            }

            v20 = 0;
            v21 = 0;
            v19 = 0;
            [v8 getLineStart:&v21 end:&v20 contentsEnd:&v19 forRange:{v13, 0}];
            v14 = [v8 rangeOfString:@"-- " options:8 range:{v21, v19 - v21}];
            v15 = v19;
            if (v14 != 0x7FFFFFFFFFFFFFFFLL)
            {
              break;
            }

            do
            {
              v16 = v15;
              if (v15 <= v21)
              {
                break;
              }

              --v15;
            }

            while ([v8 characterAtIndex:v16 - 1] == 32);
            if (v19 == v16)
            {
              goto LABEL_16;
            }

            if (v19 != v20)
            {
              v19 = v16;
LABEL_16:
              [(_MFFormatFlowedWriter *)self _outputQuotedParagraph:v8 range:v21 withQuoteLevel:v16 - v21, v23];
              if (v19 != v20)
              {
                [(NSMutableString *)self->_outputString appendString:@"\n"];
              }

              goto LABEL_18;
            }

            [(_MFFormatFlowedWriter *)self _outputQuotedParagraph:v8 range:v21 withQuoteLevel:v16 + 1 - v21, v23];
            if (v19 - v16 >= 2)
            {
              [(NSMutableString *)self->_outputString appendString:@"\n"];
              [(_MFFormatFlowedWriter *)self _outputQuotedParagraph:v8 range:v16 + 1 withQuoteLevel:~v16 + v19, v23];
            }

LABEL_18:
            v13 = v20;
            if (v20 >= v12)
            {
              goto LABEL_21;
            }
          }

          v16 = v19;
          goto LABEL_16;
        }

LABEL_21:
        ++v7;
      }

      while (v7 != v4);
    }

    outputString = self->_outputString;
  }

  v17 = [(NSMutableString *)outputString copyWithZone:0];

  return v17;
}

- (id)quotedString
{
  quotedString = self->_quotedString;
  if (!quotedString)
  {
    v4 = [(MFPlainTextDocument *)self->_inputDocument fragmentCount];
    v23 = 0;
    v5 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v6 = self->_quotedString;
    self->_quotedString = v5;

    if (v4)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        v9 = v8;
        if (!self->_quotedString)
        {
          break;
        }

        inputDocument = self->_inputDocument;
        v22 = v8;
        [(MFPlainTextDocument *)inputDocument getString:&v22 quoteLevel:&v23 ofFragmentAtIndex:v7];
        v8 = v22;

        v11 = [v8 length];
        if (v11)
        {
          v12 = v11;
          v13 = 0;
          do
          {
            if (!self->_quotedString)
            {
              break;
            }

            v20 = 0;
            v21 = 0;
            v19 = 0;
            [v8 getLineStart:&v21 end:&v20 contentsEnd:&v19 forRange:{v13, 0}];
            if (v23)
            {
              v14 = v23 + 1;
              do
              {
                [(NSMutableString *)self->_quotedString appendString:@">"];
                --v14;
              }

              while (v14 > 1);
              [(NSMutableString *)self->_quotedString appendString:@" "];
            }

            v15 = self->_quotedString;
            v16 = [v8 substringWithRange:{v21, v20 - v21}];
            [(NSMutableString *)v15 appendString:v16];

            v13 = v20;
          }

          while (v20 < v12);
        }

        ++v7;
      }

      while (v7 != v4);
    }

    quotedString = self->_quotedString;
  }

  v17 = [(NSMutableString *)quotedString copyWithZone:0];

  return v17;
}

@end