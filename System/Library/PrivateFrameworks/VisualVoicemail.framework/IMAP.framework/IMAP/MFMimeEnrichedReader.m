@interface MFMimeEnrichedReader
+ (__CFCharacterSet)parenSet;
+ (__CFCharacterSet)punctuationSet;
- (id)currentFont;
- (id)description;
- (int)readTokenInto:(id *)a3;
- (void)appendStringToBuffer:(id)a3;
- (void)beginCommand:(id)a3;
- (void)closeUpQuoting;
- (void)convertEnrichedString:(id)a3 intoOutputString:(id)a4;
- (void)convertRichTextString:(id)a3 intoOutputString:(id)a4;
- (void)dealloc;
- (void)endCommand:(id)a3;
- (void)handleNoParameterCommand:(id *)a3;
- (void)mismatchError:(id)a3;
- (void)nowWouldBeAGoodTimeToAppendToTheAttributedString;
- (void)parseParameterString:(id)a3;
- (void)resetStateWithString:(id)a3 outputString:(id)a4;
- (void)setupFontStackEntry:(_CommandStackEntry *)a3;
@end

@implementation MFMimeEnrichedReader

+ (__CFCharacterSet)punctuationSet
{
  result = punctuationSet_puncSet;
  if (!punctuationSet_puncSet)
  {
    result = CFCharacterSetCreateWithCharactersInString(0, @" <>\n");
    punctuationSet_puncSet = result;
  }

  return result;
}

+ (__CFCharacterSet)parenSet
{
  result = parenSet_parenSet;
  if (!parenSet_parenSet)
  {
    result = CFCharacterSetCreateWithCharactersInString(0, @"<>");
    parenSet_parenSet = result;
  }

  return result;
}

- (void)mismatchError:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = vm_imap_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_2720B1000, v4, OS_LOG_TYPE_DEFAULT, "Ignoring unmatched </%@> command", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  prependHTML = self->_prependHTML;
  if (prependHTML)
  {
    CFRelease(prependHTML);
  }

  postpendHTML = self->_postpendHTML;
  if (postpendHTML)
  {
    CFRelease(postpendHTML);
  }

  if (self->_commandStack)
  {
      ;
    }

    CFRelease(self->_commandStack);
  }

  v5.receiver = self;
  v5.super_class = MFMimeEnrichedReader;
  [(MFMimeEnrichedReader *)&v5 dealloc];
}

- (void)appendStringToBuffer:(id)a3
{
  v4 = a3;
  v5 = v4;
  if ((*(self + 211) & 0x40) != 0)
  {
    v7 = v4;
    if ([v4 hasPrefix:@"\n"])
    {
      v6 = [v7 substringFromIndex:1];

      v5 = v6;
    }

    else
    {
      v5 = v7;
    }
  }

  v8 = v5;
  [(NSMutableString *)self->_outputBuffer appendString:v5];
  *(self + 211) &= ~0x40u;
}

- (void)resetStateWithString:(id)a3 outputString:(id)a4
{
  theString = a3;
  v6 = a4;
  objc_storeStrong(&self->_outputString, a4);
  v7 = theString;
  if (theString)
  {
    Length = CFStringGetLength(theString);
    v7 = theString;
  }

  else
  {
    Length = 0;
  }

  self->_inputLength = Length;
  self->_inputBuffer.theString = v7;
  self->_inputBuffer.rangeToBuffer.location = 0;
  self->_inputBuffer.rangeToBuffer.length = Length;
  CharactersPtr = CFStringGetCharactersPtr(v7);
  CStringPtr = 0;
  self->_inputBuffer.directUniCharBuffer = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(theString, 0x600u);
  }

  self->_inputBuffer.directCStringBuffer = CStringPtr;
  self->_inputBuffer.bufferedRangeEnd = 0;
  self->_currentIndex = 0;
  self->_inputBuffer.bufferedRangeStart = 0;
  *(self + 211) &= ~0x80u;
  if (self->_commandStack)
  {
      ;
    }

    CFRelease(self->_commandStack);
  }

  self->_commandStack = CFArrayCreateMutable(0, 0, 0);
  v11 = objc_opt_new();
  outputBuffer = self->_outputBuffer;
  self->_outputBuffer = v11;
}

- (void)nowWouldBeAGoodTimeToAppendToTheAttributedString
{
  if (*(self + 212))
  {
    [self->_outputString appendString:self->_outputBuffer];
    outputBuffer = self->_outputBuffer;

    [(NSMutableString *)outputBuffer setString:&stru_288159858];
    return;
  }

  if (![(NSMutableString *)self->_outputBuffer length])
  {
    return;
  }

  if (!self->_prependHTML)
  {
    self->_prependHTML = CFStringCreateMutable(0, 0);
  }

  if (!self->_postpendHTML)
  {
    self->_postpendHTML = CFStringCreateMutable(0, 0);
  }

  Count = CFArrayGetCount(self->_commandStack);
  if (Count < 1)
  {
    v5 = 0;
  }

  else
  {
    v4 = Count;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    for (i = 0; i != v4; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(self->_commandStack, i);
      if ([**ValueAtIndex isEqualToString:@"underline"])
      {
        if (v6)
        {
          ++v6;
        }

        else
        {
          CFStringAppendCString(self->_prependHTML, "<U>", 0x8000100u);
          CFStringInsert(self->_postpendHTML, 0, @"</U>");
          v6 = 1;
        }
      }

      else if ([**ValueAtIndex isEqualToString:@"excerpt"])
      {
        ++v5;
      }

      else if ([**ValueAtIndex isEqualToString:@"superscript"])
      {
        ++v7;
      }

      else
      {
        v7 -= [**ValueAtIndex isEqualToString:@"subscript"];
      }
    }

    if (v7 <= 0)
    {
      if ((v7 & 0x80000000) == 0)
      {
        goto LABEL_27;
      }

      v10 = @"</SUB>";
      v11 = "<SUB>";
    }

    else
    {
      v10 = @"</SUP>";
      v11 = "<SUP>";
    }

    CFStringAppendCString(self->_prependHTML, v11, 0x8000100u);
    CFStringInsert(self->_postpendHTML, 0, v10);
  }

LABEL_27:
  v13 = [(MFMimeEnrichedReader *)self currentFont];
  v14 = _currentAttributeOfType(self, 2);
  v15 = _currentAttributeOfType(self, 3);
  if (v13 | v14)
  {
    CFStringAppendCString(self->_prependHTML, "<SPAN style=", 0x8000100u);
    if (v13)
    {
      CFStringAppend(self->_prependHTML, v13);
      CFStringAppendCString(self->_prependHTML, "; ", 0x8000100u);
    }

    if (v14)
    {
      CFStringAppendFormat(self->_prependHTML, 0, @"color: %s; ", [v14 UTF8String]);
    }

    if (v15)
    {
      CFStringAppendFormat(self->_prependHTML, 0, @"font-size: %dpt; ", [v15 intValue]);
    }

    CFStringAppendCString(self->_prependHTML, ">", 0x8000100u);
    CFStringAppendCString(self->_postpendHTML, "</SPAN>", 0x8000100u);
  }

  v39 = v15;
  v40 = v13;
  v16 = v5 - self->_lastQuoteLevel;
  if (v16 < 1)
  {
    if (v16 < 0)
    {
      v17 = 0;
      do
      {
        CFStringInsert(self->_prependHTML, 0, @"</BLOCKQUOTE>");
        --v17;
      }

      while (v17 > v16);
    }
  }

  else
  {
    do
    {
      CFStringInsert(self->_prependHTML, 0, @"<BLOCKQUOTE type=cite>");
      --v16;
    }

    while (v16);
  }

  self->_lastQuoteLevel = v5;
  if (CFStringGetLength(self->_prependHTML))
  {
    [self->_outputString appendString:self->_prependHTML];
  }

  outputString = self->_outputString;
  v19 = [(NSMutableString *)self->_outputBuffer length];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  *buffer = 0u;
  v43 = 0u;
  v20 = self->_outputBuffer;
  v50 = v20;
  v53 = 0;
  v54 = v19;
  CharactersPtr = CFStringGetCharactersPtr(v20);
  CStringPtr = 0;
  v51 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v20, 0x600u);
  }

  v52 = CStringPtr;
  v55 = 0;
  v56 = 0;
  if (v19)
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 64;
    while (1)
    {
      if (v25 >= 4)
      {
        v27 = 4;
      }

      else
      {
        v27 = v25;
      }

      if (v25 < 0 || (v28 = v54, v54 <= v25))
      {
        chars = 0;
        goto LABEL_56;
      }

      if (v51)
      {
        break;
      }

      if (!v52)
      {
        if (v56 <= v25 || (v33 = v55, v55 > v25))
        {
          v34 = -v27;
          v35 = v27 + v23;
          v36 = v26 - v27;
          v37 = v25 + v34;
          v38 = v37 + 64;
          if (v37 + 64 >= v54)
          {
            v38 = v54;
          }

          v55 = v37;
          v56 = v38;
          if (v54 >= v36)
          {
            v28 = v36;
          }

          v58.location = v37 + v53;
          v58.length = v28 + v35;
          CFStringGetCharacters(v50, v58, buffer);
          v33 = v55;
        }

        v29 = &buffer[-v33];
        goto LABEL_54;
      }

      v30 = v52[v53 + v25];
LABEL_59:
      chars = v30;
      if (v30 > 0x25u)
      {
        switch(v30)
        {
          case '&':
            v31 = outputString;
            v32 = @"&amp;";
            goto LABEL_73;
          case '>':
            v31 = outputString;
            v32 = @"&gt;";
            goto LABEL_73;
          case '<':
            v31 = outputString;
            v32 = @"&lt;";
LABEL_73:
            CFStringAppend(v31, v32);
            goto LABEL_74;
        }
      }

      else
      {
        switch(v30)
        {
          case 9u:
            v31 = outputString;
            v32 = @"&nbsp;&nbsp;&nbsp;&nbsp;";
            goto LABEL_73;
          case 0xAu:
            v31 = outputString;
            v32 = @"<br/>";
            goto LABEL_73;
          case 0x20u:
            if ((v24 & 1) == 0)
            {
              v24 = 1;
              CFStringAppendCharacters(outputString, &chars, 1);
              goto LABEL_75;
            }

            v31 = outputString;
            v32 = @"&nbsp;";
            goto LABEL_73;
        }
      }

LABEL_56:
      CFStringAppendCharacters(outputString, &chars, 1);
LABEL_74:
      v24 = 0;
LABEL_75:
      ++v25;
      --v23;
      ++v26;
      if (v19 == v25)
      {
        goto LABEL_86;
      }
    }

    v29 = &v51[v53];
LABEL_54:
    v30 = v29[v25];
    goto LABEL_59;
  }

LABEL_86:
  if (CFStringGetLength(self->_postpendHTML))
  {
    [self->_outputString appendString:self->_postpendHTML];
  }

  CFStringReplaceAll(self->_prependHTML, &stru_288159858);
  CFStringReplaceAll(self->_postpendHTML, &stru_288159858);
  CFStringReplaceAll(self->_outputBuffer, &stru_288159858);
}

- (void)closeUpQuoting
{
  if (self->_lastQuoteLevel >= 1)
  {
    v10 = v5;
    v11 = v4;
    v12 = v3;
    v13 = v2;
    v14 = v6;
    v15 = v7;
    v9 = 0;
    do
    {
      [self->_outputString appendString:{@"</BLOCKQUOTE>", v10, v11, v12, v13, v14, v15}];
      ++v9;
    }

    while (v9 < self->_lastQuoteLevel);
  }
}

- (void)handleNoParameterCommand:(id *)a3
{
  if ([a3->var0 isEqualToString:@"param"])
  {
    v5 = [objc_opt_class() parenSet];
    v6 = _copyNextToken(self, v5);
    if (v6)
    {
      [(MFMimeEnrichedReader *)self parseParameterString:v6];
    }

    MEMORY[0x2821F96F8]();
  }

  else
  {
    if ([a3->var0 isEqualToString:@"comment"])
    {
      *(self + 211) |= 0x80u;
      return;
    }

    if ([a3->var0 isEqualToString:@"lt"])
    {
      outputBuffer = self->_outputBuffer;
      v8 = @"&lt;";
    }

    else if ([a3->var0 isEqualToString:@"np"])
    {
      outputBuffer = self->_outputBuffer;
      v8 = @"\f";
    }

    else
    {
      if (![a3->var0 isEqualToString:@"nl"])
      {
        return;
      }

      outputBuffer = self->_outputBuffer;
      v8 = @"\n";
    }

    [(NSMutableString *)outputBuffer appendString:v8];
  }
}

- (void)setupFontStackEntry:(_CommandStackEntry *)a3
{
  if (!a3)
  {
    [MFMimeEnrichedReader setupFontStackEntry:];
  }

  if ([*a3->var0 isEqualToString:@"bold"])
  {
    v5 = @"font-weight: bold";
LABEL_6:
    var1 = a3->var1;
    a3->var1 = v5;
    goto LABEL_19;
  }

  if ([*a3->var0 isEqualToString:@"italic"])
  {
    v5 = @"font-style: italic";
    goto LABEL_6;
  }

  v7 = _currentAttributeOfType(self, 3);
  v16 = v7;
  if (v7)
  {
    [v7 floatValue];
    v9 = v8;
  }

  else
  {
    v9 = 12.0;
  }

  v10 = 2.0;
  if ([*a3->var0 isEqualToString:@"bigger"])
  {
    goto LABEL_17;
  }

  v10 = 1.0;
  if ([*a3->var0 isEqualToString:@"x-tad-bigger"])
  {
    goto LABEL_17;
  }

  if ([*a3->var0 isEqualToString:@"smaller"])
  {
    v10 = -2.0;
    v11 = 8.0;
  }

  else
  {
    if (![*a3->var0 isEqualToString:@"x-tad-smaller"])
    {
      goto LABEL_18;
    }

    v10 = -1.0;
    v11 = 7.0;
  }

  if (v9 >= v11)
  {
LABEL_17:
    v12 = objc_alloc(MEMORY[0x277CCABB0]);
    *&v13 = v9 + v10;
    v14 = [v12 initWithFloat:v13];
    v15 = a3->var1;
    a3->var1 = v14;
  }

LABEL_18:
  var1 = v16;
LABEL_19:
}

- (void)beginCommand:(id)a3
{
  v13 = a3;
  v4 = 0;
  while ([v13 compare:*(&gCommandSpecTable + v4) options:1])
  {
    v5 = v4 > 0x19F;
    v4 += 16;
    if (v5)
    {
      goto LABEL_26;
    }
  }

  v6 = &gCommandSpecTable + v4;
  v7 = v6[8];
  if ((v7 & 4) == 0)
  {
    if ((v7 & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    [(MFMimeEnrichedReader *)self nowWouldBeAGoodTimeToAppendToTheAttributedString];
    if ((v7 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

  v9 = self->_outputBuffer;
  if (![(NSMutableString *)v9 length])
  {
    v10 = self->_outputString;

    v9 = v10;
  }

  if ([(NSMutableString *)v9 length]&& [(NSMutableString *)v9 characterAtIndex:[(NSMutableString *)v9 length]- 1]!= 10)
  {
    [(NSMutableString *)self->_outputBuffer appendString:@"\n"];
  }

  if ((v7 & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v7 & 1) == 0)
  {
LABEL_9:
    v8 = 0;
    goto LABEL_18;
  }

LABEL_17:
  v8 = malloc_type_malloc(0x10uLL, 0xE00402B90B96AuLL);
  v11 = v8[1];
  *v8 = v6;
  v8[1] = 0;

LABEL_18:
  v12 = (v7 >> 3) & 3;
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      goto LABEL_23;
    }

LABEL_22:
    [(MFMimeEnrichedReader *)self setupFontStackEntry:v8];
    goto LABEL_23;
  }

  if (v12)
  {
    goto LABEL_22;
  }

  [(MFMimeEnrichedReader *)self handleNoParameterCommand:v6];
LABEL_23:
  if (v8)
  {
    CFArrayAppendValue(self->_commandStack, v8);
    if ([**v8 isEqualToString:@"nofill"])
    {
      *(self + 52) = *(self + 52) & 0xC0000000 | (*(self + 52) + 1) & 0x3FFFFFFF;
    }
  }

LABEL_26:
}

- (void)endCommand:(id)a3
{
  v8 = a3;
  v4 = 0;
  while ([v8 compare:*(&gCommandSpecTable + v4) options:1])
  {
    v5 = v4 > 0x19F;
    v4 += 16;
    if (v5)
    {
      goto LABEL_13;
    }
  }

  v6 = *(&gCommandSpecTable + v4 + 8);
  if ((v6 & 2) != 0)
  {
    [(MFMimeEnrichedReader *)self nowWouldBeAGoodTimeToAppendToTheAttributedString];
  }

  if (v6)
  {
    v7 = _peekCommandStackEntry(self);
    if (v7 && ![**v7 compare:v8 options:1])
    {
      _releaseTopStackEntry(self);
    }

    else
    {
      [(MFMimeEnrichedReader *)self mismatchError:v8];
    }
  }

LABEL_13:
}

- (void)parseParameterString:(id)a3
{
  v4 = a3;
  v5 = _peekCommandStackEntry(self);
  if (v5)
  {
    v6 = v5;
    if ((*(*v5 + 8) & 0x18) != 0)
    {
      v7 = (v5 + 8);
      if (!*(v5 + 1))
      {
        if ([**v5 isEqualToString:@"color"])
        {
          [v4 rangeOfString:{@", "}];
          if (v8)
          {
            v21 = 0;
            v20 = 0;
            v9 = [MEMORY[0x277CCAC80] scannerWithString:v4];
            if ([v9 scanHexInt:&v21 + 4] && objc_msgSend(v9, "scanString:intoString:", @",", 0) && objc_msgSend(v9, "scanHexInt:", &v21) && objc_msgSend(v9, "scanString:intoString:", @",", 0) && objc_msgSend(v9, "scanHexInt:", &v20))
            {
              v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"rgba(%d, %d, %d, 1)", (vcvtd_n_f64_u32(HIDWORD(v21), 0x10uLL) * 255.0), (vcvtd_n_f64_u32(v21, 0x10uLL) * 255.0), (vcvtd_n_f64_u32(v20, 0x10uLL) * 255.0)];
            }

            else
            {
              v10 = 0;
            }

            if (!v10)
            {
              goto LABEL_17;
            }
          }

          else
          {
            v10 = v4;
            if (!v10)
            {
              goto LABEL_17;
            }
          }

          objc_storeStrong(v7, v10);
LABEL_17:

          goto LABEL_18;
        }

        if ([**v6 isEqualToString:@"fontfamily"])
        {
          v11 = v4;
          v12 = [@"font-family: " stringByAppendingString:v11];
          v13 = *v7;
          *v7 = v12;
        }

        else if ([**v6 isEqualToString:@"x-fontsize"])
        {
          [v4 floatValue];
          if (v14 >= 0.0)
          {
            v15 = v14;
          }

          else
          {
            v15 = 0.0;
          }

          v16 = objc_alloc(MEMORY[0x277CCABB0]);
          *&v17 = v15;
          v18 = [v16 initWithFloat:v17];
          v19 = *v7;
          *v7 = v18;
        }
      }
    }
  }

LABEL_18:
}

- (id)currentFont
{
  v2 = _currentAttributeOfType(self, 1);
  if (!v2)
  {
    v2 = @"font-face: Helvetica";
  }

  return v2;
}

- (int)readTokenInto:(id *)a3
{
  v5 = [objc_opt_class() punctuationSet];
  v6 = _copyNextToken(self, v5);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if ([(__CFString *)v6 isEqualToString:@"\n"])
  {
    currentIndex = self->_currentIndex;
    if ((*(self + 52) & 0x3FFFFFFF) != 0)
    {
      v52.location = self->_currentIndex;
      v52.length = 0;
      v9 = CFStringCreateWithSubstring(0, self->_inputBuffer.theString, v52);
      v10 = v7;
    }

    else
    {
      v10 = objc_alloc_init(MEMORY[0x277CCAB68]);
      if (currentIndex >= self->_inputLength || currentIndex < 0)
      {
LABEL_33:

        v9 = @" ";
      }

      else
      {
        v17 = 1;
        while (1)
        {
          length = self->_inputBuffer.rangeToBuffer.length;
          if (length <= currentIndex)
          {
            break;
          }

          directUniCharBuffer = self->_inputBuffer.directUniCharBuffer;
          if (directUniCharBuffer)
          {
            v20 = directUniCharBuffer[self->_inputBuffer.rangeToBuffer.location + currentIndex];
          }

          else
          {
            directCStringBuffer = self->_inputBuffer.directCStringBuffer;
            if (directCStringBuffer)
            {
              v20 = directCStringBuffer[self->_inputBuffer.rangeToBuffer.location + currentIndex];
            }

            else
            {
              if (self->_inputBuffer.bufferedRangeEnd <= currentIndex || (bufferedRangeStart = self->_inputBuffer.bufferedRangeStart, bufferedRangeStart > currentIndex))
              {
                v23 = currentIndex - 4;
                if (currentIndex < 4)
                {
                  v23 = 0;
                }

                if (v23 + 64 < length)
                {
                  length = v23 + 64;
                }

                self->_inputBuffer.bufferedRangeStart = v23;
                self->_inputBuffer.bufferedRangeEnd = length;
                v49.length = length - v23;
                v49.location = self->_inputBuffer.rangeToBuffer.location + v23;
                CFStringGetCharacters(self->_inputBuffer.theString, v49, self->_inputBuffer.buffer);
                bufferedRangeStart = self->_inputBuffer.bufferedRangeStart;
              }

              v20 = self->_inputBuffer.buffer[currentIndex - bufferedRangeStart];
            }
          }

          if (v20 != 10)
          {
            break;
          }

          [(MFMimeEnrichedReader *)self appendNewLine:v10];
          ++v17;
          if (++currentIndex >= self->_inputLength)
          {
            goto LABEL_34;
          }
        }

        if (v17 == 1)
        {
          goto LABEL_33;
        }

LABEL_34:
        v9 = v10;

        self->_currentIndex = currentIndex;
      }
    }

    v24 = v9;
    v11 = 2;
    v7 = v9;
    goto LABEL_77;
  }

  if (([(__CFString *)v7 isEqualToString:@"<"]& 1) == 0)
  {
    v16 = v7;
    v11 = 1;
    v9 = v7;
    goto LABEL_77;
  }

  v12 = self->_currentIndex;
  if (v12 < self->_inputLength && (v12 & 0x8000000000000000) == 0)
  {
    v13 = self->_inputBuffer.rangeToBuffer.length;
    if (v13 > v12)
    {
      v14 = self->_inputBuffer.directUniCharBuffer;
      if (v14)
      {
        v15 = v14[self->_inputBuffer.rangeToBuffer.location + v12];
      }

      else
      {
        v25 = self->_inputBuffer.directCStringBuffer;
        if (v25)
        {
          v15 = v25[self->_inputBuffer.rangeToBuffer.location + v12];
        }

        else
        {
          if (self->_inputBuffer.bufferedRangeEnd <= v12 || (v26 = self->_inputBuffer.bufferedRangeStart, v26 > v12))
          {
            v27 = v12 - 4;
            if (v12 < 4)
            {
              v27 = 0;
            }

            if (v27 + 64 < v13)
            {
              v13 = v27 + 64;
            }

            self->_inputBuffer.bufferedRangeStart = v27;
            self->_inputBuffer.bufferedRangeEnd = v13;
            v50.length = v13 - v27;
            v50.location = self->_inputBuffer.rangeToBuffer.location + v27;
            CFStringGetCharacters(self->_inputBuffer.theString, v50, self->_inputBuffer.buffer);
            v26 = self->_inputBuffer.bufferedRangeStart;
          }

          v15 = self->_inputBuffer.buffer[v12 - v26];
        }
      }

      if (v15 == 47)
      {
        ++self->_currentIndex;
        v11 = 4;
        goto LABEL_50;
      }

      if (v15 == 60)
      {
        ++self->_currentIndex;
        v11 = 1;
        v9 = @"<";
        goto LABEL_77;
      }
    }
  }

  v11 = 3;
LABEL_50:
  v28 = self;
  v29 = v28;
  v31 = self->_currentIndex;
  inputLength = self->_inputLength;
  if (v31 >= inputLength)
  {
    v46 = self->_currentIndex;
    goto LABEL_76;
  }

  p_inputBuffer = &v28->_inputBuffer;
  v33 = -v31;
  v34 = v31 + 64;
  do
  {
    if (v31 >= 4)
    {
      v35 = 4;
    }

    else
    {
      v35 = v31;
    }

    if (v31 < 0)
    {
      goto LABEL_64;
    }

    v36 = v29->_inputBuffer.rangeToBuffer.length;
    if (v36 <= v31)
    {
      goto LABEL_64;
    }

    v37 = v29->_inputBuffer.directUniCharBuffer;
    if (v37)
    {
      v38 = &v37[v29->_inputBuffer.rangeToBuffer.location];
    }

    else
    {
      v40 = v29->_inputBuffer.directCStringBuffer;
      if (v40)
      {
        v39 = v40[v29->_inputBuffer.rangeToBuffer.location + v31];
        goto LABEL_62;
      }

      if (v29->_inputBuffer.bufferedRangeEnd <= v31 || (v41 = v29->_inputBuffer.bufferedRangeStart, v41 > v31))
      {
        v42 = v35 + v33;
        v43 = v34 - v35;
        v44 = v31 - v35;
        v45 = v44 + 64;
        if (v44 + 64 >= v36)
        {
          v45 = v29->_inputBuffer.rangeToBuffer.length;
        }

        v29->_inputBuffer.bufferedRangeStart = v44;
        v29->_inputBuffer.bufferedRangeEnd = v45;
        if (v36 >= v43)
        {
          v36 = v43;
        }

        v51.location = v44 + v29->_inputBuffer.rangeToBuffer.location;
        v51.length = v36 + v42;
        CFStringGetCharacters(v29->_inputBuffer.theString, v51, v29->_inputBuffer.buffer);
        v41 = v29->_inputBuffer.bufferedRangeStart;
      }

      v38 = &p_inputBuffer->buffer[-v41];
    }

    v39 = v38[v31];
LABEL_62:
    if (v39 == 62)
    {
      break;
    }

    inputLength = self->_inputLength;
LABEL_64:
    ++v31;
    --v33;
    ++v34;
  }

  while (v31 < inputLength);
  v46 = v31;
  v31 = self->_currentIndex;
LABEL_76:
  v53.length = v46 - v31;
  v53.location = v31;
  v9 = CFStringCreateWithSubstring(0, v29->_inputBuffer.theString, v53);
  self->_currentIndex = v46 + 1;

  v47 = v9;
LABEL_77:
  *a3 = v9;

  return v11;
}

- (void)convertRichTextString:(id)a3 intoOutputString:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(MFMimeEnrichedReader *)self resetStateWithString:v6 outputString:v7];
  v8 = 0;
  v9 = 0;
  while (1)
  {
    v13 = v8;
    v10 = [(MFMimeEnrichedReader *)self readTokenInto:&v13];
    v11 = v13;

    if (v10 == 3)
    {
      [(MFMimeEnrichedReader *)self beginCommand:v11];
      goto LABEL_15;
    }

    if (v10 == 4)
    {
      [(MFMimeEnrichedReader *)self endCommand:v11];
      goto LABEL_15;
    }

    if (!v10)
    {
      break;
    }

    if ((*(self + 211) & 0x80000000) == 0)
    {
      if ([v11 isEqual:@"\n"])
      {
        v9 |= [v8 isEqual:@" "] ^ 1;
      }

      else
      {
        if ((v9 & 1) != 0 && ([v11 isEqual:@" "] & 1) == 0 && (objc_msgSend(v8, "isEqual:", @" ") & 1) == 0)
        {
          [(MFMimeEnrichedReader *)self appendStringToBuffer:@" "];
        }

        [(MFMimeEnrichedReader *)self appendStringToBuffer:v11];
        v9 = 0;
      }
    }

LABEL_15:
    v12 = v11;

    v8 = v12;
  }

  [(MFMimeEnrichedReader *)self nowWouldBeAGoodTimeToAppendToTheAttributedString];
  [(MFMimeEnrichedReader *)self closeUpQuoting];
}

- (void)convertEnrichedString:(id)a3 intoOutputString:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  Current = CFAbsoluteTimeGetCurrent();
  [(MFMimeEnrichedReader *)self resetStateWithString:v6 outputString:v7];
  v9 = 0;
  v10 = 1;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v11 = v9;
        v18 = v9;
        v12 = [(MFMimeEnrichedReader *)self readTokenInto:&v18];
        v9 = v18;

        if (v12 != 3)
        {
          break;
        }

        [(MFMimeEnrichedReader *)self beginCommand:v9];
      }

      if (v12 != 4)
      {
        break;
      }

      [(MFMimeEnrichedReader *)self endCommand:v9];
    }

    if (!v12)
    {
      break;
    }

    if ((*(self + 211) & 0x80000000) == 0)
    {
      if ((v10 & (v12 == 2)) != 1 || (v10 = 0, ([v9 isEqual:@" "] & 1) == 0))
      {
        [(MFMimeEnrichedReader *)self appendStringToBuffer:v9];
        v10 = 0;
      }
    }
  }

  [(MFMimeEnrichedReader *)self nowWouldBeAGoodTimeToAppendToTheAttributedString];
  [(MFMimeEnrichedReader *)self closeUpQuoting];
  v13 = vm_imap_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = CFAbsoluteTimeGetCurrent() - Current;
    inputLength = self->_inputLength;
    v16 = [self->_outputString length];
    *buf = 134218496;
    v20 = v14;
    v21 = 2048;
    v22 = inputLength;
    v23 = 2048;
    v24 = v16;
    _os_log_impl(&dword_2720B1000, v13, OS_LOG_TYPE_DEFAULT, "elapsed time %gs (input length=%ld, output length=%lu)", buf, 0x20u);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@:%p", objc_opt_class(), self];
  commandStack = self->_commandStack;
  if (commandStack)
  {
    Count = CFArrayGetCount(commandStack);
    [v3 appendFormat:@"\n\t_commandStack = %p (%ld entries):", self->_commandStack, Count];
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(self->_commandStack, i);
        v8 = **ValueAtIndex;
        [v3 appendFormat:@"\n\t\t[%@ parameter=%@]", v8, ValueAtIndex[1]];
      }
    }
  }

  if (self->_outputBuffer)
  {
    [v3 appendFormat:@"\n\t_outputBuffer=%@", self->_outputBuffer];
  }

  if (self->_outputString)
  {
    [v3 appendFormat:@"\n\t_outputString=%@", self->_outputString];
  }

  [v3 appendString:@">\n-------------------------------------------------------------------\n"];

  return v3;
}

@end