@interface NSAttributedString(NSAttributedStringUIFoundationAdditions)
+ (_NSAttributedStringAsyncReadReply)readFromData:()NSAttributedStringUIFoundationAdditions options:completionHandler:;
+ (_NSAttributedStringAsyncReadReply)readFromURL:()NSAttributedStringUIFoundationAdditions options:completionHandler:;
+ (uint64_t)_documentTypeForFileType:()NSAttributedStringUIFoundationAdditions;
+ (uint64_t)_isAttributedStringAgent;
+ (uint64_t)allowedSecureCodingClasses;
+ (uint64_t)fontStyleAttributeNames;
- (CFIndex)lineBreakByHyphenatingBeforeIndex:()NSAttributedStringUIFoundationAdditions withinRange:;
- (__CFString)stringByStrippingAttachmentCharactersAndConvertingWritingDirectionToBidiControlCharactersFromRange:()NSAttributedStringUIFoundationAdditions;
- (char)itemNumberInTextList:()NSAttributedStringUIFoundationAdditions atIndex:;
- (id)_initWithHTMLData:()NSAttributedStringUIFoundationAdditions options:documentAttributes:error:;
- (id)dataFromRange:()NSAttributedStringUIFoundationAdditions documentAttributes:error:;
- (id)fileWrapperFromRange:()NSAttributedStringUIFoundationAdditions documentAttributes:error:;
- (id)fontAttributesInRange:()NSAttributedStringUIFoundationAdditions;
- (id)initWithData:()NSAttributedStringUIFoundationAdditions options:documentAttributes:error:;
- (id)initWithURL:()NSAttributedStringUIFoundationAdditions options:documentAttributes:error:;
- (id)rulerAttributesInRange:()NSAttributedStringUIFoundationAdditions;
- (uint64_t)RTFDFileWrapperFromRange:()NSAttributedStringUIFoundationAdditions documentAttributes:;
- (uint64_t)RTFDFromRange:()NSAttributedStringUIFoundationAdditions documentAttributes:;
- (uint64_t)RTFFromRange:()NSAttributedStringUIFoundationAdditions documentAttributes:;
- (uint64_t)_atStartOfTextTable:()NSAttributedStringUIFoundationAdditions atIndex:;
- (uint64_t)_atStartOfTextTableRow:()NSAttributedStringUIFoundationAdditions atIndex:;
- (uint64_t)_documentFromRange:()NSAttributedStringUIFoundationAdditions document:documentAttributes:subresources:;
- (uint64_t)_htmlDocumentFragmentString:()NSAttributedStringUIFoundationAdditions documentAttributes:subresources:;
- (uint64_t)_lineBreakBeforeIndex:()NSAttributedStringUIFoundationAdditions withinRange:lineBreakStrategy:;
- (uint64_t)_rangeOfTextTableRow:()NSAttributedStringUIFoundationAdditions atIndex:completeRow:;
- (uint64_t)containsAttachments;
- (uint64_t)containsAttachmentsInRange:()NSAttributedStringUIFoundationAdditions;
- (uint64_t)doubleClickAtIndex:()NSAttributedStringUIFoundationAdditions;
- (uint64_t)initWithHTML:()NSAttributedStringUIFoundationAdditions baseURL:documentAttributes:;
- (uint64_t)initWithHTML:()NSAttributedStringUIFoundationAdditions options:documentAttributes:;
- (uint64_t)initWithPath:()NSAttributedStringUIFoundationAdditions documentAttributes:;
- (uint64_t)initWithRTF:()NSAttributedStringUIFoundationAdditions documentAttributes:;
- (uint64_t)initWithRTFD:()NSAttributedStringUIFoundationAdditions documentAttributes:;
- (uint64_t)prefersRTFDInRange:()NSAttributedStringUIFoundationAdditions;
- (uint64_t)rangeOfTextBlock:()NSAttributedStringUIFoundationAdditions atIndex:;
- (uint64_t)rangeOfTextList:()NSAttributedStringUIFoundationAdditions atIndex:;
- (uint64_t)rangeOfTextTable:()NSAttributedStringUIFoundationAdditions atIndex:;
- (unint64_t)doubleClickAtIndex:()NSAttributedStringUIFoundationAdditions inRange:;
- (unint64_t)nextWordFromIndex:()NSAttributedStringUIFoundationAdditions forward:;
- (void)_atEndOfTextTable:()NSAttributedStringUIFoundationAdditions atIndex:;
- (void)_atEndOfTextTableRow:()NSAttributedStringUIFoundationAdditions atIndex:;
- (void)_initWithRTFSelector:()NSAttributedStringUIFoundationAdditions argument:documentAttributes:;
@end

@implementation NSAttributedString(NSAttributedStringUIFoundationAdditions)

+ (uint64_t)_isAttributedStringAgent
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__NSAttributedString_NSAttributedStringUIFoundationAdditions___isAttributedStringAgent__block_invoke;
  block[3] = &unk_1E72657B8;
  block[4] = a1;
  if (_isAttributedStringAgent_onceToken != -1)
  {
    dispatch_once(&_isAttributedStringAgent_onceToken, block);
  }

  return _isAttributedStringAgent_isInAgent;
}

+ (uint64_t)allowedSecureCodingClasses
{
  if (allowedSecureCodingClasses_onceToken != -1)
  {
    +[NSAttributedString(NSAttributedStringUIFoundationAdditions) allowedSecureCodingClasses];
  }

  return allowedSecureCodingClasses_allowedClasses;
}

- (uint64_t)doubleClickAtIndex:()NSAttributedStringUIFoundationAdditions
{
  v5 = [a1 length];

  return [a1 doubleClickAtIndex:a3 inRange:{0, v5}];
}

- (unint64_t)doubleClickAtIndex:()NSAttributedStringUIFoundationAdditions inRange:
{
  v70 = *MEMORY[0x1E69E9840];
  v9 = [a1 string];
  v10 = [a1 length];
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = [(__CFString *)v9 characterAtIndex:a3];
  v13 = v12;
  if (v12 > 132)
  {
    if ((v12 - 8232) >= 2 && v12 != 133)
    {
      goto LABEL_16;
    }

LABEL_12:
    if (a3 && v12 == 10 && [(__CFString *)v9 characterAtIndex:a3 - 1]== 13)
    {
      --a3;
    }

    return a3;
  }

  if (v12 == 10 || v12 == 12)
  {
    goto LABEL_12;
  }

  if (v12 == 13)
  {
    if (a3 + 1 >= [(__CFString *)v9 length]|| [(__CFString *)v9 characterAtIndex:a3 + 1]!= 10)
    {
      if (a3 + 1 < v11)
      {
        [(__CFString *)v9 characterAtIndex:a3 + 1];
      }

      return a3;
    }

    v13 = 13;
    v14 = 1;
    goto LABEL_25;
  }

LABEL_16:
  if ((v12 & 0xFC00) == 0xD800 && a3 + 1 < v11)
  {
    v15 = [(__CFString *)v9 characterAtIndex:?];
    v14 = (v15 & 0xFC00) != 56320;
    if ((v15 & 0xFC00) == 0xDC00)
    {
      v13 = v15 + (v13 << 10) - 56613888;
    }
  }

  else
  {
    v14 = 1;
  }

  if (a3)
  {
    if ((v13 & 0xFC00) == 0xDC00)
    {
      v16 = [(__CFString *)v9 characterAtIndex:a3 - 1];
      if ((v16 & 0xFC00) == 0xD800)
      {
        v13 = (v13 & 0xDFFF) + (v16 << 10) - 56613888;
      }
    }
  }

LABEL_25:
  if (CFUniCharIsMemberOf())
  {
    v17 = (v13 & 0xFFFF0000) != 0 && v14;
    v18 = a3 - v17;
    do
    {
      if (!v18)
      {
        v25 = 0;
        goto LABEL_45;
      }

      v19 = v18--;
      v20 = [(__CFString *)v9 characterAtIndex:v18];
      v21 = v20;
      if (v18)
      {
        if ((v20 & 0xFC00) == 0xDC00)
        {
          v22 = v19 - 2;
          v23 = [(__CFString *)v9 characterAtIndex:v22];
          if ((v23 & 0xFC00) == 0xD800)
          {
            v18 = v22;
            v21 = v21 - 56613888 + (v23 << 10);
          }
        }
      }
    }

    while ((CFUniCharIsMemberOf() & 1) != 0);
    v24 = 1;
    if (HIWORD(v21))
    {
      v24 = 2;
    }

    v25 = v24 + v18;
LABEL_45:
    v31 = 1;
    if (!v14)
    {
      v31 = 2;
    }

    for (i = v31 + a3; i < v11; i += v36)
    {
      v33 = [(__CFString *)v9 characterAtIndex:i];
      if ((v33 & 0xFC00) == 0xD800 && i + 1 < v11)
      {
        v35 = [(__CFString *)v9 characterAtIndex:?];
        if ((v35 & 0xFC00) != 0xDC00)
        {
          return v25;
        }

        v33 = (v33 << 10) - 56613888 + v35;
      }

      if (!CFUniCharIsMemberOf())
      {
        break;
      }

      v36 = HIWORD(v33) ? 2 : 1;
    }

    return v25;
  }

  v27 = [a1 attribute:NSLanguageAttributeName atIndex:a3 - (v11 == a3) effectiveRange:0];
  CharactersPtr = CFStringGetCharactersPtr(v9);
  if (CharactersPtr)
  {
    v29 = 0;
    v30 = &CharactersPtr[a4];
    goto LABEL_116;
  }

  if (a5 < 0x100)
  {
    goto LABEL_113;
  }

  v37 = a4 + a5;
  v66 = v14;
  v67 = a4 + a5;
  v68 = v27;
  if (a3 > a4)
  {
    if (a3 - a4 >= 0x100)
    {
      v38 = 256;
    }

    else
    {
      v38 = a3 - a4;
    }

    v39 = a3 - v38;
LABEL_66:
    v71.location = v39;
    v71.length = v38;
    CFStringGetCharacters(v9, v71, buffer);
    v40 = &buffer[v38];
    do
    {
      v41 = v40 - 1;
      if (buffer > v40 - 1)
      {
        goto LABEL_76;
      }

      v42 = *v41;
      if ((v42 & 0xFC00) == 0xDC00)
      {
        if (buffer >= v41)
        {
          if (v39 != a4)
          {
            ++v39;
          }

LABEL_76:
          if (v39 - a4 >= 0x100)
          {
            v38 = 256;
          }

          else
          {
            v38 = v39 - a4;
          }

          v56 = v39 == a4;
          v39 -= v38;
          if (v56)
          {
            v14 = v66;
            v37 = a4 + a5;
            v27 = v68;
            goto LABEL_85;
          }

          goto LABEL_66;
        }

        v44 = *(v40 - 2);
        v43 = v40 - 2;
        v45 = v42 - 56613888 + (v44 << 10);
        if ((v44 & 0xFC00) == 0xD800)
        {
          v41 = v43;
          v42 = v45;
        }
      }

      IsMemberOf = CFUniCharIsMemberOf();
      v40 = v41;
    }

    while (!IsMemberOf);
    v47 = 1;
    if (HIWORD(v42))
    {
      v47 = 2;
    }

    a4 = v39 + v41 - buffer + v47;
    v37 = v67;
    v27 = v68;
    a5 = v67 - a4;
    v14 = v66;
  }

LABEL_85:
  v48 = 1;
  if (!v14)
  {
    v48 = 2;
  }

  v49 = v48 + a3;
  if (v48 + a3 >= v37)
  {
    goto LABEL_112;
  }

  while (2)
  {
    if (v37 - v49 >= 0x100)
    {
      v50 = 256;
    }

    else
    {
      v50 = v37 - v49;
    }

    v51 = buffer;
    v72.location = v49;
    v72.length = v50;
    CFStringGetCharacters(v9, v72, buffer);
    v65 = v50;
    v52 = &buffer[v50];
    while (1)
    {
      if (v51 >= v52)
      {
        v37 = v67;
        v58 = v65;
        goto LABEL_106;
      }

      v53 = v51 + 1;
      v54 = *v51;
      if ((v54 & 0xFC00) == 0xD800)
      {
        break;
      }

      ++v51;
LABEL_102:
      if (CFUniCharIsMemberOf())
      {
        v59 = 0x7FFFFFFFFFFFFFFFLL;
        if (HIWORD(v54))
        {
          v59 = 0x7FFFFFFFFFFFFFFELL;
        }

        a5 = v49 - a4 + &v51[v59] - buffer;
        goto LABEL_111;
      }
    }

    if (v53 < v52)
    {
      v55 = *v53;
      v56 = (v55 & 0xFC00) == 56320;
      v57 = (v54 << 10) - 56613888 + v55;
      if (v56)
      {
        v51 += 2;
      }

      else
      {
        ++v51;
      }

      if (v56)
      {
        v54 = v57;
      }

      goto LABEL_102;
    }

    v37 = v67;
    v58 = (__PAIR128__(v65, v65 + v49) - v67) >> 64;
LABEL_106:
    v49 += v58;
    if (v49 < v37)
    {
      continue;
    }

    break;
  }

LABEL_111:
  v27 = v68;
LABEL_112:
  if (a5 >= 0x100)
  {
    v30 = NSZoneMalloc([a1 zone], 2 * a5);
    v29 = 1;
  }

  else
  {
LABEL_113:
    v29 = 0;
    v30 = buffer;
  }

  v73.location = a4;
  v73.length = a5;
  CFStringGetCharacters(v9, v73, v30);
LABEL_116:
  if (a5 == 1)
  {
    v60 = a4;
    goto LABEL_132;
  }

  v68 = v27;
  if (a3 <= a4)
  {
    v61 = 0;
    goto LABEL_125;
  }

  v61 = _NSCopyBreakIterator(v27, v30, a5, 1u);
  if (!v61)
  {
LABEL_125:
    v64 = 0;
    goto LABEL_126;
  }

  v62 = ubrk_preceding();
  if (v62 == -1)
  {
    v63 = 0;
  }

  else
  {
    v63 = v62;
  }

  v64 = v63;
LABEL_126:
  v60 = v64 + a4;
  if (a5 - v64 < 2)
  {
    if (v61)
    {
LABEL_131:
      _NSDisposeBreakIterator(v61, v68, 1);
    }
  }

  else if (v61 || (v61 = _NSCopyBreakIterator(v68, v30, a5, 1u)) != 0)
  {
    ubrk_following();
    goto LABEL_131;
  }

LABEL_132:
  if (v29)
  {
    NSZoneFree([a1 zone], v30);
  }

  return v60;
}

- (uint64_t)_lineBreakBeforeIndex:()NSAttributedStringUIFoundationAdditions withinRange:lineBreakStrategy:
{
  v7 = [a1 string];
  v8 = [a1 length];
  if (!v8)
  {
    return 0;
  }

  v9 = 0x7FFFFFFFFFFFFFFFLL;
  if (a4 < a3)
  {
    v10 = v8;
    if (v8 >= a4)
    {
      if (v8 >= a3)
      {
        v11 = a3;
      }

      else
      {
        v11 = v8;
      }

      theString = v7;
      v66 = a4;
      v67 = v8 - a4;
      CharactersPtr = CFStringGetCharactersPtr(v7);
      if (CharactersPtr)
      {
        CStringPtr = 0;
      }

      else
      {
        CStringPtr = CFStringGetCStringPtr(v7, 0x600u);
      }

      v13 = 0;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      *buffer = 0u;
      v56 = 0u;
      v14 = v11 - a4;
      v68 = 0;
      length = 0;
      v15 = v11 - a4;
      v65 = CStringPtr;
      do
      {
        v16 = v15;
        if (v15 < 0 || (v17 = v67, v67 <= v15))
        {
          v18 = 0;
        }

        else if (CharactersPtr)
        {
          v18 = CharactersPtr[v66 + v15];
        }

        else if (v65)
        {
          v18 = v65[v66 + v15];
        }

        else
        {
          if (length <= v15 || v13 > v15)
          {
            v19 = v15 - 4;
            if (v15 < 4)
            {
              v19 = 0;
            }

            if (v19 + 64 < v67)
            {
              v17 = v19 + 64;
            }

            v68 = v19;
            length = v17;
            v70.length = v17 - v19;
            v70.location = v66 + v19;
            CFStringGetCharacters(theString, v70, buffer);
            v13 = v68;
          }

          v18 = buffer[v16 - v13];
        }

        v15 = v16 + 1;
      }

      while (v18 == 32 || ((v18 - 3712) >> 7) > 0x1FEu);
      if (v16 <= v67)
      {
        if (CharactersPtr)
        {
          v27 = 0;
          v14 = 0;
          v28 = &CharactersPtr[v66];
          goto LABEL_115;
        }

        if (v16 <= 64)
        {
          if (v16 > length || v13 >= 1)
          {
            if (v67 >= 64)
            {
              v31.length = 64;
            }

            else
            {
              v31.length = v67;
            }

            v68 = 0;
            length = v31.length;
            v31.location = v66;
            if (v65)
            {
              if (v67)
              {
                v32 = &v65[v66];
                v33 = buffer;
                do
                {
                  v34 = *v32++;
                  *v33++ = v34;
                  --v31.length;
                }

                while (v31.length);
              }
            }

            else
            {
              CFStringGetCharacters(theString, v31, buffer);
            }
          }

          v27 = 0;
          v14 = 0;
          v28 = &buffer[-v68];
          goto LABEL_115;
        }
      }

      v54 = v11;
      if (v14 < 1)
      {
LABEL_60:
        v14 = 0;
        goto LABEL_65;
      }

      while (1)
      {
        v20 = v14--;
        v21 = v67;
        if (v67 >= v20)
        {
          if (CharactersPtr)
          {
            v22 = CharactersPtr[v66 + v14];
          }

          else if (v65)
          {
            v22 = v65[v66 + v14];
          }

          else
          {
            v23 = v68;
            v24 = length >= v20 && v68 < v20;
            if (!v24)
            {
              v25 = v20 - 5;
              if (v20 < 5)
              {
                v25 = 0;
              }

              if (v25 + 64 < v67)
              {
                v21 = v25 + 64;
              }

              v68 = v25;
              length = v21;
              v71.length = v21 - v25;
              v71.location = v66 + v25;
              CFStringGetCharacters(theString, v71, buffer);
              v23 = v68;
            }

            v22 = buffer[v14 - v23];
          }

          if (v22 > 0x84u)
          {
            if (v22 - 8232 < 2 || v22 == 133)
            {
              goto LABEL_63;
            }
          }

          else if (v22 == 13)
          {
            if ([0 length] < 2 || objc_msgSend(0, "characterAtIndex:", 1) != 10)
            {
              goto LABEL_63;
            }
          }

          else if (v22 == 10 || v22 == 12)
          {
LABEL_63:
            v16 -= v14;
            if (v16 == 1)
            {
              return v14 + a4;
            }

LABEL_65:
            v29 = v16 + v14;
            if (v16 + v14 > v67)
            {
LABEL_66:
              v30 = NSZoneMalloc([a1 zone], 2 * v16);
              v28 = v30;
              if (CharactersPtr)
              {
                memmove(v30, &CharactersPtr[v66 + v14], 2 * v16);
                goto LABEL_68;
              }

              if (v14 < v68 || length <= v14)
              {
                v36 = v30;
                v37 = v14;
                v38 = v16;
                if (v29 > v68)
                {
                  v36 = v30;
                  v37 = v14;
                  v38 = v16;
                  if (v29 < length)
                  {
                    v38 = v68 - v14;
                    memmove(&v30[v68 - v14], buffer, 2 * (v29 - v68));
                    v36 = v28;
                    v37 = v14;
                  }
                }
              }

              else
              {
                if (v16 >= length - v14)
                {
                  v35 = length - v14;
                }

                else
                {
                  v35 = v16;
                }

                memmove(v30, &buffer[v14 - v68], 2 * v35);
                v36 = &v28[v35];
                v37 = v35 + v14;
                v38 = v16 - v35;
              }

              if (v38 >= 1)
              {
                v46.location = v66 + v37;
                v11 = v54;
                if (v65)
                {
                  v47 = &v65[v46.location];
                  do
                  {
                    v48 = *v47++;
                    *v36++ = v48;
                    --v38;
                  }

                  while (v38);
                }

                else
                {
                  v46.length = v38;
                  CFStringGetCharacters(theString, v46, v36);
                }

                v27 = v28;
                goto LABEL_115;
              }

LABEL_68:
              v27 = v28;
LABEL_71:
              v11 = v54;
              goto LABEL_115;
            }

            if (CharactersPtr)
            {
              v27 = 0;
              v28 = &CharactersPtr[v66 + v14];
              goto LABEL_71;
            }

            if (v16 > 64)
            {
              goto LABEL_66;
            }

            v24 = v29 <= length;
            v11 = v54;
            if (!v24 || v14 < v68)
            {
              v39 = v14 + 64;
              if (v14 + 64 >= v67)
              {
                v39 = v67;
              }

              v68 = v14;
              length = v39;
              v40.location = v66 + v14;
              v40.length = v39 - v14;
              if (v65)
              {
                if (v40.length)
                {
                  v41 = &v65[v40.location];
                  v42 = v14 - v39;
                  v43 = buffer;
                  do
                  {
                    v44 = *v41++;
                    *v43++ = v44;
                  }

                  while (!__CFADD__(v42++, 1));
                }
              }

              else
              {
                CFStringGetCharacters(theString, v40, buffer);
              }
            }

            v27 = 0;
            v28 = &buffer[v14 - v68];
LABEL_115:
            v49 = [a1 attribute:NSLanguageAttributeName atIndex:v11 - (v10 <= a3) effectiveRange:0];
            v50 = _NSCopyBreakIterator(v49, v28, v16, 0);
            if (!v50 || (v51 = v50, v52 = ubrk_preceding(), _NSDisposeBreakIterator(v51, v49, 0), v52 == -1))
            {
              v9 = 0x7FFFFFFFFFFFFFFFLL;
              if (!v27)
              {
                return v9;
              }
            }

            else
            {
              v9 = v14 + a4 + v52;
              if (!v27)
              {
                return v9;
              }
            }

            NSZoneFree([a1 zone], v27);
            return v9;
          }
        }

        if (v20 <= 1)
        {
          goto LABEL_60;
        }
      }
    }
  }

  return v9;
}

- (CFIndex)lineBreakByHyphenatingBeforeIndex:()NSAttributedStringUIFoundationAdditions withinRange:
{
  v9 = [a1 length];
  if (!v9)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v9 <= a3 ? v9 - 1 : a3;
  v11 = [a1 attribute:NSLanguageAttributeName atIndex:v10 effectiveRange:0];
  if (!v11 || (v12 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v11]) == 0)
  {
    if (lineBreakByHyphenatingBeforeIndex_withinRange__onceToken != -1)
    {
      [NSAttributedString(NSAttributedStringUIFoundationAdditions) lineBreakByHyphenatingBeforeIndex:withinRange:];
    }

    v12 = lineBreakByHyphenatingBeforeIndex_withinRange__defaultLocale;
    if (!lineBreakByHyphenatingBeforeIndex_withinRange__defaultLocale)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  v13 = [a1 string];
  v15.location = a4;
  v15.length = a5;
  result = CFStringGetHyphenationLocationBeforeIndex(v13, a3, v15, 0, v12, 0);
  if (result == -1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (unint64_t)nextWordFromIndex:()NSAttributedStringUIFoundationAdditions forward:
{
  v51 = *MEMORY[0x1E69E9840];
  v7 = [a1 string];
  v8 = [a1 length];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = v8 - a3;
  v48 = [a1 attribute:NSLanguageAttributeName atIndex:a3 - (v8 == a3) effectiveRange:0];
  theString = v7;
  if (a4)
  {
    if (v9 <= a3 + 1)
    {
      return v9;
    }

    if (v10 >= 0x100)
    {
      v11 = 256;
    }

    else
    {
      v11 = v10;
    }

    v52.location = a3;
    v52.length = v11;
    CFStringGetCharacters(v7, v52, buffer);
    v12 = a3;
    while (1)
    {
      v13 = v12 - a3;
      v14 = buffer[v12 - a3] & 0xFC00;
      if (v14 == 56320)
      {
        if (a3 > 0 || v13)
        {
          [(__CFString *)v7 characterAtIndex:v12 - 1];
        }
      }

      else if (v14 == 55296 && v12 + 1 < v9)
      {
        ++v13;
        [(__CFString *)v7 characterAtIndex:?];
      }

      if (CFUniCharIsMemberOf())
      {
        do
        {
          if (++v13 >= v11)
          {
            a3 += v11;
            if (v9 <= a3)
            {
              return v9;
            }

            if (v9 - a3 >= 0x100)
            {
              v11 = 256;
            }

            else
            {
              v11 = v9 - a3;
            }

            v53.location = a3;
            v53.length = v11;
            CFStringGetCharacters(v7, v53, buffer);
            v13 = 0;
          }

          if ((buffer[v13] & 0xFC00) == 0xD800)
          {
            if (v13 + a3 + 2 >= v9)
            {
              return v9;
            }

            if (([(__CFString *)v7 characterAtIndex:v13 + a3 + 1]& 0xFC00) == 0xDC00)
            {
              ++v13;
            }
          }
        }

        while ((CFUniCharIsMemberOf() & 1) != 0);
      }

      v12 = v13 + a3;
      if (a3 + v11 >= v9)
      {
        v46 = 0;
        v20 = buffer;
        v21 = v48;
      }

      else
      {
        if (v12 + 256 < v9)
        {
          while (1)
          {
            v16 = v13 + 1;
            if (v13 + 1 < v11)
            {
              do
              {
                if ((buffer[v16] & 0xFC00) != 0xD800 || a3 + 1 + v16 >= v9)
                {
                  v13 = v16;
                }

                else
                {
                  v18 = [(__CFString *)theString characterAtIndex:?];
                  if ((v18 & 0xFC00) == 0xDC00)
                  {
                    v13 += 2;
                  }

                  else
                  {
                    v13 = v16;
                  }
                }

                IsMemberOf = CFUniCharIsMemberOf();
                if (IsMemberOf)
                {
                  break;
                }

                v16 = v13 + 1;
              }

              while (v13 + 1 < v11);
              v7 = theString;
              if (IsMemberOf)
              {
                break;
              }
            }

            a3 += v11;
            if (v9 == a3)
            {
              v11 = v9 - v12;
              goto LABEL_52;
            }

            if (v9 - a3 >= 0x100)
            {
              v11 = 256;
            }

            else
            {
              v11 = v9 - a3;
            }

            v54.location = a3;
            v54.length = v11;
            CFStringGetCharacters(v7, v54, buffer);
            v13 = 0;
          }

          v11 = a3 - v12 + v13;
LABEL_52:
          a3 = v12;
        }

        v46 = v11 > 256;
        v21 = v48;
        if (v11 < 257)
        {
          v20 = buffer;
        }

        else
        {
          v20 = NSZoneMalloc(0, 2 * v11);
        }

        v55.location = a3;
        v55.length = v11;
        CFStringGetCharacters(v7, v55, v20);
      }

      v22 = _NSCopyBreakIterator(v21, v20, v11, 1u);
      if (!v22)
      {
        goto LABEL_73;
      }

      v23 = ubrk_following();
      _NSDisposeBreakIterator(v22, v21, 1);
      if (v23 == -1)
      {
        goto LABEL_72;
      }

      v12 = a3 + v23;
      if (v9 == v12)
      {
        return v9;
      }

      v24 = v20[v23 - 1];
      if (v12 >= 2 && (v24 & 0xFC00) == 0xDC00)
      {
        if (v23 < 2)
        {
          [(__CFString *)theString characterAtIndex:v12 - 2];
        }
      }

      else if (v24 == 95)
      {
        goto LABEL_72;
      }

      if (CFUniCharIsMemberOf())
      {
        if (v9 - v12 >= 0x100)
        {
          v11 = 256;
        }

        else
        {
          v11 = v9 - v12;
        }

        v7 = theString;
        v56.location = v12;
        v56.length = v11;
        CFStringGetCharacters(theString, v56, buffer);
        LOBYTE(v22) = 1;
        a3 = v12;
        goto LABEL_73;
      }

LABEL_72:
      LOBYTE(v22) = 0;
      v7 = theString;
LABEL_73:
      if (v46)
      {
        NSZoneFree(0, v20);
      }

      if ((v22 & 1) == 0)
      {
        return v12;
      }
    }
  }

  if (a3 < 2)
  {
    return 0;
  }

  if (a3 >= 0x100)
  {
    v26 = 256;
  }

  else
  {
    v26 = a3;
  }

  v27 = a3 - v26;
  v57.location = a3 - v26;
  v57.length = v26;
  CFStringGetCharacters(v7, v57, buffer);
  while (1)
  {
    v28 = a3 + ~v27;
    v29 = buffer[v28];
    if ((v29 & 0xFC00) == 0xD800)
    {
      if (!v27 && v28 < 2)
      {
        return 0;
      }

      v29 = [(__CFString *)v7 characterAtIndex:--v28];
    }

    if ((v29 & 0xFC00) == 0xDC00 && (buffer[v28 - 1] & 0xFC00) == 0xD800)
    {
      if (!((v28 - 1) | v27))
      {
        return 0;
      }

      --v28;
    }

    if (CFUniCharIsMemberOf())
    {
      while (1)
      {
        while (1)
        {
          if (v28)
          {
            v30 = v28;
          }

          else
          {
            if (v27 < 2)
            {
              return 0;
            }

            v26 = v27 >= 0x100 ? 256 : v27;
            v27 -= v26;
            v58.location = v27;
            v58.length = v26;
            CFStringGetCharacters(v7, v58, buffer);
            v30 = v26;
          }

          v28 = v30 - 1;
          v31 = buffer[v30 - 1];
          if ((v31 & 0xFC00) == 0xDC00)
          {
            break;
          }

LABEL_106:
          if ((CFUniCharIsMemberOf() & 1) == 0)
          {
            v28 -= (v31 & 0xFFFF0000) != 0;
            goto LABEL_116;
          }
        }

        if (v30 != 1)
        {
          v32 = v30 - 2;
          v33 = buffer[v32];
          if ((v33 & 0xFC00) == 0xD800)
          {
            if (!(v32 | v27))
            {
              return 0;
            }

            v31 = v31 - 56613888 + (v33 << 10);
            v28 = v32;
          }

          goto LABEL_106;
        }

        if (v27 < 2)
        {
          return 0;
        }

        if (v27 < 0x100)
        {
          v26 = v27 + 1;
        }

        else
        {
          v26 = 256;
        }

        if (v27 >= 0x100)
        {
          v27 -= 255;
        }

        else
        {
          v27 = 0;
        }

        v59.location = v27;
        v59.length = v26;
        CFStringGetCharacters(v7, v59, buffer);
        v28 = v26;
      }
    }

LABEL_116:
    a3 = v28 + v27;
    if (v27 < 1)
    {
      v47 = 0;
      v36 = buffer;
      goto LABEL_147;
    }

    if (a3 + 2 > v9)
    {
      v34 = 1;
    }

    else
    {
      v34 = 2;
    }

    v26 = v34 + a3;
    if (v34 + a3 >= 0x101)
    {
      if (!v28)
      {
        goto LABEL_133;
      }

      while (1)
      {
        if ((buffer[v28 - 1] & 0xFC00) == 0xDC00)
        {
          if (v28 == 1)
          {
            ++v27;
            goto LABEL_133;
          }

          if ((buffer[v28 - 2] & 0xFC00) == 0xD800)
          {
            v28 -= 2;
          }

          else
          {
            --v28;
          }
        }

        else
        {
          --v28;
        }

        v35 = CFUniCharIsMemberOf();
        if ((v35 & 1) != 0 || !v28)
        {
          if (v35)
          {
            v27 += v28 + 1;
LABEL_143:
            v26 = a3 - v27 + v34;
            v47 = v26 > 256;
            if (v26 < 257)
            {
              v36 = buffer;
            }

            else
            {
              v36 = NSZoneMalloc(0, 2 * v26);
            }

            v62.location = v27;
            v62.length = a3 - v27 + v34;
            CFStringGetCharacters(v7, v62, v36);
            goto LABEL_147;
          }

LABEL_133:
          if (v27 < 1)
          {
            goto LABEL_143;
          }

          if (v27 >= 0x100)
          {
            v28 = 256;
          }

          else
          {
            v28 = v27;
          }

          v27 -= v28;
          v60.location = v27;
          v60.length = v28;
          CFStringGetCharacters(v7, v60, buffer);
        }
      }
    }

    if ((v28 & 0x8000000000000000) == 0)
    {
      v37 = &buffer[v28];
      do
      {
        v37[v27] = *v37;
        --v37;
      }

      while (v37 >= buffer);
    }

    v36 = buffer;
    v61.location = 0;
    v61.length = v27;
    CFStringGetCharacters(v7, v61, buffer);
    v47 = 0;
    v27 = 0;
LABEL_147:
    v38 = _NSCopyBreakIterator(v48, v36, v26, 1u);
    if (!v38)
    {
      break;
    }

    v39 = v38;
    v40 = ubrk_preceding();
    _NSDisposeBreakIterator(v39, v48, 1);
    if (v40 == -1)
    {
      break;
    }

    a3 = v27 + v40;
    if (!a3)
    {
      break;
    }

    v41 = v36[v40];
    if ((v41 & 0xFC00) == 0xD800)
    {
      if (a3 + 1 >= v9)
      {
        goto LABEL_172;
      }

      v42 = v36[v40 + 1];
      v43 = (v42 & 0xFC00) == 56320;
      v44 = (v41 << 10) - 56613888 + v42;
      if (v43)
      {
        v41 = v44;
      }
    }

    else if ((v41 & 0xFC00) == 0xDC00)
    {
      --a3;
      goto LABEL_172;
    }

    if ((CFUniCharIsMemberOf() & 1) == 0)
    {
      if (v41 == 95 || !CFUniCharIsMemberOf())
      {
        if (!CFUniCharIsMemberOf())
        {
          break;
        }

        v45 = a3 - 1 >= v27 ? v36[v40 - 1] : [(__CFString *)theString characterAtIndex:?];
        if (v45 != 46)
        {
          break;
        }

        goto LABEL_172;
      }

      if (v41 == 46 && a3 + 1 < v9)
      {
        if (([(__CFString *)theString characterAtIndex:?]& 0xFC00) == 0xD800 && a3 + 2 < v9)
        {
          [(__CFString *)theString characterAtIndex:?];
        }

        if (CFUniCharIsMemberOf())
        {
          break;
        }
      }
    }

LABEL_172:
    if (v40)
    {
      v7 = theString;
      if (v47)
      {
        if (a3 >= 0x100)
        {
          v26 = 256;
        }

        else
        {
          v26 = a3;
        }

        if (a3 >= 0x100)
        {
          v27 = a3 - 256;
        }

        else
        {
          v27 = 0;
        }

        v63.location = v27;
        v63.length = v26;
        CFStringGetCharacters(theString, v63, buffer);
        goto LABEL_185;
      }
    }

    else
    {
      if (v27 >= 256)
      {
        v26 = 256;
      }

      else
      {
        v26 = v27;
      }

      v27 -= v26;
      v7 = theString;
      v64.location = v27;
      v64.length = v26;
      CFStringGetCharacters(theString, v64, buffer);
      if (v47)
      {
LABEL_185:
        NSZoneFree(0, v36);
      }
    }
  }

  if (v47)
  {
    NSZoneFree(0, v36);
  }

  return a3;
}

- (uint64_t)containsAttachmentsInRange:()NSAttributedStringUIFoundationAdditions
{
  if (containsAttachmentsInRange__onceToken != -1)
  {
    [NSAttributedString(NSAttributedStringUIFoundationAdditions) containsAttachmentsInRange:];
  }

  if (containsAttachmentsInRange__checksImageGlyphs == 1)
  {

    return [a1 prefersRTFDInRange:{a3, a4}];
  }

  else
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __90__NSAttributedString_NSAttributedStringUIFoundationAdditions__containsAttachmentsInRange___block_invoke_2;
    v9[3] = &unk_1E7266970;
    v9[4] = &v10;
    [a1 enumerateAttribute:@"NSAttachment" inRange:a3 options:a4 usingBlock:{0, v9}];
    v8 = *(v11 + 24);
    _Block_object_dispose(&v10, 8);
    return v8;
  }
}

- (uint64_t)containsAttachments
{
  v2 = [a1 length];

  return [a1 containsAttachmentsInRange:{0, v2}];
}

+ (uint64_t)_documentTypeForFileType:()NSAttributedStringUIFoundationAdditions
{
  if (NSAttributedStringFileTypeToDocumentTypeDictionary_onceToken != -1)
  {
    +[NSAttributedString(NSAttributedStringUIFoundationAdditions) _documentTypeForFileType:];
  }

  v4 = NSAttributedStringFileTypeToDocumentTypeDictionary___fileTypeToDocTypeDict;

  return [v4 objectForKey:a3];
}

- (__CFString)stringByStrippingAttachmentCharactersAndConvertingWritingDirectionToBidiControlCharactersFromRange:()NSAttributedStringUIFoundationAdditions
{
  v7 = [a1 string];
  v48 = a1;
  v8 = [a1 length];
  v9 = _NSAttachmentCharacterSet();
  v10 = a3 + a4;
  v52 = a3 + a4;
  if (!a4)
  {
    return &stru_1F01AD578;
  }

  v42 = v8;
  v43 = a4;
  v44 = v9;
  v11 = 0;
  v53 = 0;
  v54 = 0;
  v46 = a3;
  v47 = v7;
  if (a3 < v10)
  {
    v12 = 0;
    v45 = a3 + a4;
    while (1)
    {
      v50 = 0;
      v51 = 0;
      v13 = [v48 attribute:@"NSParagraphStyle" atIndex:a3 effectiveRange:0];
      if (v13)
      {
        v14 = [v13 baseWritingDirection];
      }

      else
      {
        v14 = -1;
      }

      v49 = 0;
      [(__CFString *)v7 getParagraphStart:&v51 end:&v52 contentsEnd:&v50 forRange:a3, 0];
      v15 = v51;
      if (v51 < a3)
      {
        v51 = a3;
        v15 = a3;
      }

      if (v50 <= a3)
      {
        v16 = a3;
      }

      else
      {
        v16 = v50;
      }

      if (v16 >= v10)
      {
        v17 = v10;
      }

      else
      {
        v17 = v16;
      }

      if (v50 < a3 || v16 > v10)
      {
        v50 = v17;
      }

      if (v52 > v10)
      {
        v52 = v10;
      }

      if (v14 != -1 && v17 > v15)
      {
        v18 = _NSStringImputedBaseWritingDirectionAtIndex(v7, v15, v15, v17 - v15);
        if (v18 != -1 && v18 != v14)
        {
          if (v14 == 1)
          {
            v20 = 8207;
          }

          else
          {
            v20 = 8206;
          }

          v49 = v20;
          if (!v12)
          {
            v12 = [MEMORY[0x1E696AD60] stringWithString:{-[__CFString substringWithRange:](v7, "substringWithRange:", v46, v51 - v46)}];
          }

          [v12 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithCharacters:length:", &v49, 1)}];
        }
      }

      v21 = v50;
      v22 = v51;
      if (v51 < v50)
      {
        break;
      }

      if (v12)
      {
        v49 = 8236;
LABEL_67:
        if (v52 > v21)
        {
          [v12 appendString:{-[__CFString substringWithRange:](v7, "substringWithRange:")}];
        }

        v11 = v12;
        goto LABEL_71;
      }

      v11 = 0;
LABEL_71:
      a3 = v52;
      v12 = v11;
      v10 = v45;
      if (v52 >= v45)
      {
        goto LABEL_72;
      }
    }

    v23 = 0;
    v24 = 0;
    do
    {
      while (1)
      {
        v25 = [v48 attribute:@"NSWritingDirection" atIndex:v22 longestEffectiveRange:&v53 inRange:{v22, v21 - v22}];
        v26 = [v25 count];
        v27 = v26;
        v28 = 0;
        if (v24 >= v26)
        {
          v29 = v26;
        }

        else
        {
          v29 = v24;
        }

        if (v29)
        {
          while ([objc_msgSend(v25 objectAtIndex:{v28), "isEqual:", objc_msgSend(v23, "objectAtIndex:", v28)}])
          {
            if (v29 == ++v28)
            {
              v28 = v29;
              break;
            }
          }

          v7 = v47;
        }

        if (v24 | v27)
        {
          v30 = v12 == 0;
        }

        else
        {
          v30 = 0;
        }

        if (v30)
        {
          v12 = [MEMORY[0x1E696AD60] stringWithString:{-[__CFString substringWithRange:](v7, "substringWithRange:", v46, v22 - v46)}];
        }

        v49 = 8236;
        v31 = v24 > v28;
        v32 = v24 - v28;
        if (v31)
        {
          do
          {
            [v12 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithCharacters:length:", &v49, 1)}];
            --v32;
          }

          while (v32);
        }

        if (v28 < v27)
        {
          do
          {
            v49 = 8234;
            v33 = [objc_msgSend(v25 objectAtIndex:{v28), "unsignedIntegerValue"}];
            if (v33)
            {
              ++v49;
            }

            if ((v33 & 2) != 0)
            {
              v49 += 3;
            }

            [v12 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithCharacters:length:", &v49, 1)}];
            ++v28;
          }

          while (v27 != v28);
        }

        if (v12)
        {
          break;
        }

        v11 = 0;
        v22 += v54;
        v21 = v50;
        v23 = v25;
        v24 = v27;
        if (v22 >= v50)
        {
          goto LABEL_71;
        }
      }

      [v12 appendString:{-[__CFString substringWithRange:](v7, "substringWithRange:", v53, v54)}];
      v22 += v54;
      v21 = v50;
      v23 = v25;
      v24 = v27;
    }

    while (v22 < v50);
    v49 = 8236;
    if (v27)
    {
      do
      {
        [v12 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithCharacters:length:", &v49, 1)}];
        --v27;
      }

      while (v27);
      v21 = v50;
    }

    goto LABEL_67;
  }

LABEL_72:
  if ([(__CFString *)v7 rangeOfCharacterFromSet:v44 options:0 range:v46, v43]== 0x7FFFFFFFFFFFFFFFLL || !v34)
  {
    if (!v11)
    {
      if (v46 || v43 != v42)
      {
        return [(__CFString *)v47 substringWithRange:v46, v43];
      }

      else
      {
        return v47;
      }
    }
  }

  else
  {
    if (!v11)
    {
      v35 = MEMORY[0x1E696AD60];
      if (v46 || v43 != v42)
      {
        v36 = [(__CFString *)v47 substringWithRange:v46, v43];
      }

      else
      {
        v36 = v47;
      }

      v11 = [v35 stringWithString:v36];
    }

    v37 = [v11 rangeOfCharacterFromSet:v44];
    if (v37 != 0x7FFFFFFFFFFFFFFFLL && v38)
    {
      v39 = v37;
      do
      {
        [v11 replaceCharactersInRange:v39 withString:{v38, &stru_1F01AD578}];
        v40 = [v11 rangeOfCharacterFromSet:v44];
        if (v40 == 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        v39 = v40;
      }

      while (v38);
    }
  }

  return v11;
}

- (id)dataFromRange:()NSAttributedStringUIFoundationAdditions documentAttributes:error:
{
  v32 = 0;
  v11 = [a5 objectForKey:@"DocumentType"];
  if (a3 || (v12 = a1, a4 != [a1 length]))
  {
    v12 = [a1 attributedSubstringFromRange:{a3, a4}];
  }

  v31 = 0;
  if (!v11)
  {
    v13 = [a5 objectForKey:@"UTI"];
    if (v13)
    {
      v11 = [MEMORY[0x1E696AAB0] _documentTypeForFileType:v13];
    }

    else
    {
      v11 = 0;
    }
  }

  if (![@"NSPlainText" isEqual:v11])
  {
    if ([@"NSRTF" isEqual:v11])
    {
      v18 = [[NSRTFWriter alloc] initWithAttributedString:v12];
      if (v18)
      {
        v24 = v18;
        if (a5)
        {
          [NSRTFWriter setDocumentAttributes:v18];
        }

        v25 = [a5 objectForKey:@"TextScaling"];
        v26 = [a5 objectForKey:@"SourceTextScaling"];
        if (v26 && v25)
        {
          -[NSRTFWriter _setTextScalingConversionSource:](v24, [v26 integerValue]);
          -[NSRTFWriter _setTextScalingConversionTarget:](v24, [v25 integerValue]);
        }

        v27 = [(NSRTFWriter *)v24 RTF];
        goto LABEL_48;
      }

LABEL_50:
      v19 = 0;
      goto LABEL_51;
    }

    if ([@"NSRTFD" isEqual:v11])
    {
      v18 = [[NSRTFWriter alloc] initWithAttributedString:v12];
      if (!v18)
      {
        goto LABEL_50;
      }

      v24 = v18;
      if (a5)
      {
        [NSRTFWriter setDocumentAttributes:v18];
      }

      v28 = [a5 objectForKey:@"TextScaling"];
      v29 = [a5 objectForKey:@"SourceTextScaling"];
      if (v29 && v28)
      {
        -[NSRTFWriter _setTextScalingConversionSource:](v24, [v29 integerValue]);
        -[NSRTFWriter _setTextScalingConversionTarget:](v24, [v28 integerValue]);
      }

      v27 = [(NSRTFWriter *)v24 RTFD];
    }

    else if ([@"NSHTML" isEqual:v11])
    {
      v18 = [[NSHTMLWriter alloc] initWithAttributedString:v12];
      if (!v18)
      {
        goto LABEL_50;
      }

      v24 = v18;
      if (a5)
      {
        [(NSHTMLWriter *)v18 setDocumentAttributes:a5];
      }

      v27 = [(NSHTMLWriter *)v24 HTMLData];
    }

    else
    {
      if (![@"NSWebArchive" isEqual:v11])
      {
        if (!a6)
        {
          return 0;
        }

        v18 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:66062 userInfo:0];
        v19 = 0;
        v31 = v18;
        goto LABEL_52;
      }

      v18 = [[NSHTMLWriter alloc] initWithAttributedString:v12];
      if (!v18)
      {
        goto LABEL_50;
      }

      v24 = v18;
      if (a5)
      {
        [(NSHTMLWriter *)v18 setDocumentAttributes:a5];
      }

      v27 = [(NSHTMLWriter *)v24 webArchiveData];
    }

LABEL_48:
    v19 = v27;
    v32 = v19;

    v18 = 0;
    if (!a6)
    {
      return v19;
    }

    goto LABEL_52;
  }

  v14 = [objc_msgSend(a5 objectForKey:{@"CharacterEncoding", "unsignedIntegerValue"}];
  if (!v14)
  {
    v14 = [MEMORY[0x1E696AEC0] defaultCStringEncoding];
  }

  v15 = CFStringConvertNSStringEncodingToEncoding(v14);
  if (v15 != 1586 && (v15 & 0xFFF) != 0x100 || (v16 = [a1 stringByStrippingAttachmentCharactersAndConvertingWritingDirectionToBidiControlCharactersFromRange:{a3, a4}]) == 0)
  {
    v16 = [v12 string];
  }

  if (a6)
  {
    v17 = &v31;
  }

  else
  {
    v17 = 0;
  }

  [v16 getExternalRepresentation:&v32 extendedAttributes:0 forWritingToURLOrPath:0 usingEncoding:v14 error:v17];
  v18 = v31;
  v19 = v32;
  if (!a6 || v32 || v31)
  {
LABEL_51:
    if (!a6)
    {
      return v19;
    }

    goto LABEL_52;
  }

  v20 = MEMORY[0x1E696ABC0];
  v21 = *MEMORY[0x1E696A250];
  v22 = MEMORY[0x1E695DF20];
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
  v18 = [v20 errorWithDomain:v21 code:517 userInfo:{objc_msgSend(v22, "dictionaryWithObjectsAndKeys:", v23, *MEMORY[0x1E696A8F8], 0)}];
  v31 = v18;
  v19 = v32;
LABEL_52:
  if (!v19)
  {
    if (v18)
    {
      v19 = 0;
    }

    else
    {
      v18 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:512 userInfo:0];
      v19 = v32;
    }

    *a6 = v18;
  }

  return v19;
}

- (id)fileWrapperFromRange:()NSAttributedStringUIFoundationAdditions documentAttributes:error:
{
  v11 = [a5 objectForKey:@"DocumentType"];
  if (a3 || (v12 = a1, a4 != [a1 length]))
  {
    v12 = [a1 attributedSubstringFromRange:{a3, a4}];
  }

  v37 = 0;
  if (!v11)
  {
    v13 = [a5 objectForKey:@"UTI"];
    if (v13)
    {
      v11 = [MEMORY[0x1E696AAB0] _documentTypeForFileType:v13];
    }

    else
    {
      v11 = 0;
    }
  }

  if ([@"NSPlainText" isEqual:v11])
  {
    v35 = 0;
    v36 = 0;
    v14 = [objc_msgSend(a5 objectForKey:{@"CharacterEncoding", "unsignedIntegerValue"}];
    if (!v14)
    {
      v14 = [MEMORY[0x1E696AEC0] defaultCStringEncoding];
    }

    v15 = CFStringConvertNSStringEncodingToEncoding(v14);
    if (v15 != 1586 && (v15 & 0xFFF) != 0x100 || (v16 = [a1 stringByStrippingAttachmentCharactersAndConvertingWritingDirectionToBidiControlCharactersFromRange:{a3, a4}]) == 0)
    {
      v16 = [v12 string];
    }

    if (a6)
    {
      v17 = &v37;
    }

    else
    {
      v17 = 0;
    }

    v18 = 0;
    if ([v16 getExternalRepresentation:&v36 extendedAttributes:&v35 forWritingToURLOrPath:0 usingEncoding:v14 error:v17])
    {
      v19 = objc_alloc(MEMORY[0x1E696AC38]);
      v20 = [v19 initRegularFileWithContents:v36];
      v18 = v20;
      if (v35)
      {
        v21 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{objc_msgSend(v20, "fileAttributes")}];
        [v21 setObject:v35 forKey:*MEMORY[0x1E696A310]];
        [v18 setFileAttributes:v21];
      }
    }

    if (a6 && !v18 && !v37)
    {
      v22 = MEMORY[0x1E696ABC0];
      v23 = *MEMORY[0x1E696A250];
      v24 = MEMORY[0x1E695DF20];
      v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
      v37 = [v22 errorWithDomain:v23 code:517 userInfo:{objc_msgSend(v24, "dictionaryWithObjectsAndKeys:", v25, *MEMORY[0x1E696A8F8], 0)}];
    }

    goto LABEL_45;
  }

  if ([@"NSRTFD" isEqual:v11])
  {
    v26 = [[NSRTFWriter alloc] initWithAttributedString:v12];
    if (v26)
    {
      v27 = v26;
      if (a5)
      {
        [NSRTFWriter setDocumentAttributes:v26];
      }

      v28 = [a5 objectForKey:@"TextScaling"];
      v29 = [a5 objectForKey:@"SourceTextScaling"];
      if (v29 && v28)
      {
        -[NSRTFWriter _setTextScalingConversionSource:](v27, [v29 integerValue]);
        -[NSRTFWriter _setTextScalingConversionTarget:](v27, [v28 integerValue]);
      }

      v30 = [(NSRTFWriter *)v27 RTFDFileWrapper];
LABEL_38:
      v18 = v30;

      goto LABEL_45;
    }

    goto LABEL_39;
  }

  if ([@"NSHTML" isEqual:v11])
  {
    v31 = [[NSHTMLWriter alloc] initWithAttributedString:v12];
    if (v31)
    {
      v27 = v31;
      if (a5)
      {
        [(NSHTMLWriter *)v31 setDocumentAttributes:a5];
      }

      v30 = [(NSHTMLWriter *)v27 HTMLFileWrapper];
      goto LABEL_38;
    }

LABEL_39:
    v18 = 0;
    goto LABEL_45;
  }

  if (a6)
  {
    v32 = &v37;
  }

  else
  {
    v32 = 0;
  }

  v18 = [a1 dataFromRange:a3 documentAttributes:a4 error:{a5, v32}];
  if (v18)
  {
    v18 = [objc_alloc(MEMORY[0x1E696AC38]) initRegularFileWithContents:v18];
  }

LABEL_45:
  if (a6 && !v18)
  {
    v33 = v37;
    if (!v37)
    {
      v33 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:512 userInfo:0];
    }

    *a6 = v33;
  }

  return v18;
}

- (uint64_t)RTFFromRange:()NSAttributedStringUIFoundationAdditions documentAttributes:
{
  v8 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:a5];
  [v8 setObject:@"NSRTF" forKey:@"DocumentType"];

  return [a1 dataFromRange:a3 documentAttributes:a4 error:{v8, 0}];
}

- (uint64_t)RTFDFromRange:()NSAttributedStringUIFoundationAdditions documentAttributes:
{
  v8 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:a5];
  [v8 setObject:@"NSRTFD" forKey:@"DocumentType"];

  return [a1 dataFromRange:a3 documentAttributes:a4 error:{v8, 0}];
}

- (uint64_t)RTFDFileWrapperFromRange:()NSAttributedStringUIFoundationAdditions documentAttributes:
{
  v8 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:a5];
  [v8 setObject:@"NSRTFD" forKey:@"DocumentType"];

  return [a1 fileWrapperFromRange:a3 documentAttributes:a4 error:{v8, 0}];
}

- (uint64_t)_htmlDocumentFragmentString:()NSAttributedStringUIFoundationAdditions documentAttributes:subresources:
{
  v10 = a1;
  if (a3 || a4 != [a1 length])
  {
    v10 = [v10 attributedSubstringFromRange:{a3, a4}];
  }

  v11 = [[NSHTMLWriter alloc] initWithAttributedString:v10];
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  if (a5)
  {
    [(NSHTMLWriter *)v11 setDocumentAttributes:a5];
  }

  v13 = [(NSHTMLWriter *)v12 documentFragmentString];
  if (a6)
  {
    *a6 = [(NSHTMLWriter *)v12 subresources];
  }

  return v13;
}

- (uint64_t)_documentFromRange:()NSAttributedStringUIFoundationAdditions document:documentAttributes:subresources:
{
  v12 = a1;
  if (a3 || a4 != [a1 length])
  {
    v12 = [v12 attributedSubstringFromRange:{a3, a4}];
  }

  v13 = [[NSHTMLWriter alloc] initWithAttributedString:v12];
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  if (a6)
  {
    [(NSHTMLWriter *)v13 setDocumentAttributes:a6];
  }

  v15 = [(NSHTMLWriter *)v14 documentFragmentForDocument:a5];
  if (a7)
  {
    *a7 = [(NSHTMLWriter *)v14 subresources];
  }

  return v15;
}

- (id)initWithData:()NSAttributedStringUIFoundationAdditions options:documentAttributes:error:
{
  v17.receiver = a1;
  v17.super_class = NSAttributedString_0;
  v10 = objc_msgSendSuper2(&v17, sel_init);
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 init];
    }

    else
    {
      v11 = 0;
    }

    v12 = _NSReadAttributedStringFromURLOrData(v11, 0, a3, a4, a5, a6);
    v13 = v12;
    if (!v12)
    {
      goto LABEL_9;
    }

    if (v12 != v10)
    {
      v14 = objc_opt_class();
      if (v14 != objc_opt_class())
      {
        v15 = [v10 initWithAttributedString:v13];
        v10 = v13;
        v13 = v15;
      }

LABEL_9:

      return v13;
    }
  }

  return v10;
}

- (void)_initWithRTFSelector:()NSAttributedStringUIFoundationAdditions argument:documentAttributes:
{
  v19.receiver = a1;
  v19.super_class = NSAttributedString_0;
  v8 = objc_msgSendSuper2(&v19, sel_init);
  v9 = v8;
  if (v8)
  {
    v10 = -[NSRTFReader performSelector:withObject:](+[NSRTFReader allocWithZone:](NSRTFReader, "allocWithZone:", [v8 zone]), "performSelector:withObject:", a3, a4);
    if (v10)
    {
      v11 = v10;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v9 init];
        [v11 setMutableAttributedString:v9];
      }

      v12 = [v11 attributedString];
      if (v12)
      {
        v13 = v12;
        if (v12 != v9)
        {
          v14 = objc_opt_class();
          if (v14 == objc_opt_class())
          {

            v15 = v13;
          }

          else
          {
            v15 = [v9 initWithAttributedString:v13];
          }

          v9 = v15;
        }

        if (a5)
        {
          v16 = [v11 documentAttributes];
          if (v16)
          {
            v17 = [v16 mutableCopy];
          }

          else
          {
            v17 = [MEMORY[0x1E695DF90] dictionary];
          }

          *a5 = v17;
        }

        goto LABEL_18;
      }
    }

    v11 = v9;
    v9 = 0;
LABEL_18:
  }

  return v9;
}

- (uint64_t)initWithRTF:()NSAttributedStringUIFoundationAdditions documentAttributes:
{
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"NSRTF", @"DocumentType", 0}];

  return [a1 initWithData:a3 options:v7 documentAttributes:a4 error:0];
}

- (uint64_t)initWithRTFD:()NSAttributedStringUIFoundationAdditions documentAttributes:
{
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"NSRTFD", @"DocumentType", 0}];

  return [a1 initWithData:a3 options:v7 documentAttributes:a4 error:0];
}

- (id)initWithURL:()NSAttributedStringUIFoundationAdditions options:documentAttributes:error:
{
  v19.receiver = a1;
  v19.super_class = NSAttributedString_0;
  v10 = objc_msgSendSuper2(&v19, sel_init);
  if (v10)
  {
    v11 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:a4];
    v12 = v11;
    if (a3 && ![v11 objectForKey:@"BaseURL"])
    {
      [v12 setObject:a3 forKey:@"BaseURL"];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v10 init];
    }

    else
    {
      v13 = 0;
    }

    v14 = _NSReadAttributedStringFromURLOrData(v13, a3, 0, v12, a5, a6);
    v15 = v14;
    if (!v14)
    {
      goto LABEL_12;
    }

    if (v14 != v10)
    {
      v16 = objc_opt_class();
      if (v16 != objc_opt_class())
      {
        v17 = [v10 initWithAttributedString:v15];
        v10 = v15;
        v15 = v17;
      }

LABEL_12:

      return v15;
    }
  }

  return v10;
}

- (uint64_t)initWithPath:()NSAttributedStringUIFoundationAdditions documentAttributes:
{
  v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:?];

  return [a1 initWithURL:v6 options:0 documentAttributes:a4 error:0];
}

- (uint64_t)initWithHTML:()NSAttributedStringUIFoundationAdditions options:documentAttributes:
{
  v8 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:a4];
  [v8 setObject:@"NSHTML" forKey:@"DocumentType"];

  return [a1 initWithData:a3 options:v8 documentAttributes:a5 error:0];
}

- (uint64_t)initWithHTML:()NSAttributedStringUIFoundationAdditions baseURL:documentAttributes:
{
  if (a4)
  {
    a4 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{a4, @"BaseURL", 0}];
  }

  return [a1 initWithHTML:a3 options:a4 documentAttributes:a5];
}

+ (_NSAttributedStringAsyncReadReply)readFromURL:()NSAttributedStringUIFoundationAdditions options:completionHandler:
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __101__NSAttributedString_NSAttributedStringUIFoundationAdditions__readFromURL_options_completionHandler___block_invoke;
  v6[3] = &unk_1E7266998;
  v6[4] = a1;
  v6[5] = a5;
  return _NSReadAttributedStringFromURLOrDataAsync(a3, 0, a4, v6);
}

+ (_NSAttributedStringAsyncReadReply)readFromData:()NSAttributedStringUIFoundationAdditions options:completionHandler:
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __102__NSAttributedString_NSAttributedStringUIFoundationAdditions__readFromData_options_completionHandler___block_invoke;
  v6[3] = &unk_1E7266998;
  v6[4] = a1;
  v6[5] = a5;
  return _NSReadAttributedStringFromURLOrDataAsync(0, a3, a4, v6);
}

- (id)_initWithHTMLData:()NSAttributedStringUIFoundationAdditions options:documentAttributes:error:
{
  v14.receiver = a1;
  v14.super_class = NSAttributedString_0;
  v10 = objc_msgSendSuper2(&v14, sel_init);
  if (v10)
  {
    v13 = 0;
    if (_NSReadAttributedStringFromHTMLData(a3, a4, 0, &v13, a5, a6))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v10 init];
        [v10 setAttributedString:v13];
      }

      else
      {
        v11 = objc_opt_class();
        if (v11 == objc_opt_class())
        {

          return v13;
        }

        v10 = [v10 initWithAttributedString:v13];
      }
    }

    else
    {

      return 0;
    }
  }

  return v10;
}

+ (uint64_t)fontStyleAttributeNames
{
  v1[19] = *MEMORY[0x1E69E9840];
  v1[0] = @"NSFont";
  v1[1] = @"NSColor";
  v1[2] = @"NSUnderline";
  v1[3] = @"NSSuperScript";
  v1[4] = @"NSBackgroundColor";
  v1[5] = @"NSLigature";
  v1[6] = @"NSBaselineOffset";
  v1[7] = @"NSKern";
  v1[8] = @"NSStrokeWidth";
  v1[9] = @"NSStrokeColor";
  v1[10] = @"NSUnderlineColor";
  v1[11] = @"NSStrikethrough";
  v1[12] = @"NSStrikethroughColor";
  v1[13] = @"NSShadow";
  v1[14] = @"NSObliqueness";
  v1[15] = @"NSExpansion";
  v1[16] = NSTypographyFeatureAttributeName;
  v1[17] = @"NSTextHighlightStyle";
  v1[18] = @"NSTextHighlightColorScheme";
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v1 count:19];
}

- (id)fontAttributesInRange:()NSAttributedStringUIFoundationAdditions
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [a1 attributesAtIndex:a3 effectiveRange:0];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [objc_opt_class() fontStyleAttributeNames];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v3 objectForKey:v10];
        if (v11)
        {
          v12 = v11;
          if (!v7)
          {
            v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
          }

          [v7 setObject:v12 forKeyedSubscript:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    return v7;
  }

  else
  {
    return MEMORY[0x1E695E0F8];
  }
}

- (id)rulerAttributesInRange:()NSAttributedStringUIFoundationAdditions
{
  v3 = [objc_msgSend(a1 attributesAtIndex:a3 effectiveRange:{0), "objectForKey:", @"NSParagraphStyle"}];
  if (v3)
  {
    return [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v3, @"NSParagraphStyle", 0}];
  }

  return +[NSAttributeDictionary emptyAttributeDictionary];
}

- (uint64_t)rangeOfTextBlock:()NSAttributedStringUIFoundationAdditions atIndex:
{
  v35 = 0;
  v36 = 0;
  v6 = [a1 attribute:@"NSParagraphStyle" atIndex:a4 effectiveRange:&v35];
  if (!v6)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = v6;
  v8 = [v6 textBlocks];
  v9 = [v8 indexOfObjectIdenticalTo:a3];
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  if (v8)
  {
    v11 = v9 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = v9;
    v10 = v35;
    v34 = v36 + v35;
    v33 = [a1 length];
    if (v10)
    {
      v13 = v7;
      do
      {
        v14 = [a1 attribute:@"NSParagraphStyle" atIndex:v10 - 1 effectiveRange:&v35];
        if (v14 != v13)
        {
          v15 = v14;
          if (!v14)
          {
            break;
          }

          v16 = [v14 textBlocks];
          if (!v16)
          {
            break;
          }

          v17 = v16;
          if ([v16 count] <= v12)
          {
            break;
          }

          v18 = 1;
          do
          {
            v19 = [v8 objectAtIndex:v18 - 1];
            v20 = [v17 objectAtIndex:v18 - 1];
            v21 = v19 == v20;
          }

          while (v19 == v20 && v18++ <= v12);
          v13 = v15;
          if (!v21)
          {
            break;
          }
        }

        v10 = v35;
      }

      while (v35);
    }

    for (i = v34; i < v33; i = v36 + v35)
    {
      v24 = v7;
      v25 = [a1 attribute:@"NSParagraphStyle" atIndex:i effectiveRange:&v35];
      v7 = v25;
      if (v25 != v24)
      {
        if (!v25)
        {
          break;
        }

        v26 = [v25 textBlocks];
        if (!v26)
        {
          break;
        }

        v27 = v26;
        if ([v26 count] <= v12)
        {
          break;
        }

        v28 = 1;
        do
        {
          v29 = [v8 objectAtIndex:v28 - 1];
          v30 = [v27 objectAtIndex:v28 - 1];
        }

        while (v29 == v30 && v28++ <= v12);
        if (v29 != v30)
        {
          break;
        }
      }
    }
  }

  return v10;
}

- (uint64_t)rangeOfTextTable:()NSAttributedStringUIFoundationAdditions atIndex:
{
  v5 = a1;
  v45 = 0;
  v46 = 0;
  v6 = [a1 attribute:@"NSParagraphStyle" atIndex:a4 effectiveRange:&v45];
  if (!v6)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = v6;
  v8 = [v6 textBlocks];
  v9 = [v8 count];
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  if (v9)
  {
    v11 = v9;
    v12 = 1;
    do
    {
      v13 = v12 - 1;
      v14 = [v8 objectAtIndex:v12 - 1];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v14 table] != a3)
        {
          v13 = 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      else
      {
        v13 = 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v12 >= v11)
      {
        break;
      }

      ++v12;
    }

    while (v13 == 0x7FFFFFFFFFFFFFFFLL);
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    if (v8 && v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = v45;
      v15 = v46 + v45;
      v43 = v5;
      v44 = [v5 length];
      v42 = v7;
      if (v10)
      {
        v16 = v7;
        do
        {
          v17 = [v5 attribute:@"NSParagraphStyle" atIndex:v10 - 1 effectiveRange:{&v45, v42}];
          if (v17 != v16)
          {
            v18 = v17;
            if (!v17)
            {
              break;
            }

            v19 = [v17 textBlocks];
            if (!v19)
            {
              break;
            }

            v20 = v19;
            if ([v19 count] <= v13)
            {
              break;
            }

            if (v13)
            {
              v21 = 1;
              do
              {
                v22 = [v8 objectAtIndex:v21 - 1];
                v23 = v22 == [v20 objectAtIndex:v21 - 1];
              }

              while (v23 && v21++ < v13);
              v5 = v43;
            }

            else
            {
              v23 = 1;
            }

            v25 = [v20 objectAtIndex:v13];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              break;
            }

            v26 = [v25 table];
            v27 = !v23;
            if (v26 != a3)
            {
              v27 = 1;
            }

            v16 = v18;
            if (v27)
            {
              break;
            }
          }

          v10 = v45;
        }

        while (v45);
      }

      if (v15 < v44)
      {
        v28 = v42;
        do
        {
          v29 = v28;
          v30 = [v5 attribute:@"NSParagraphStyle" atIndex:v15 effectiveRange:{&v45, v42}];
          v28 = v30;
          if (v30 != v29)
          {
            if (!v30)
            {
              break;
            }

            v31 = [v30 textBlocks];
            if (!v31)
            {
              break;
            }

            v32 = v31;
            if ([v31 count] <= v13)
            {
              break;
            }

            if (v13)
            {
              v33 = 1;
              do
              {
                v34 = [v8 objectAtIndex:v33 - 1];
                v35 = [v32 objectAtIndex:v33 - 1];
                v36 = v34 == v35;
              }

              while (v34 == v35 && v33++ < v13);
              v5 = v43;
            }

            else
            {
              v36 = 1;
            }

            v38 = [v32 objectAtIndex:v13];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              break;
            }

            v39 = [v38 table];
            v40 = !v36;
            if (v39 != a3)
            {
              v40 = 1;
            }

            if (v40)
            {
              break;
            }
          }

          v15 = v46 + v45;
        }

        while (v46 + v45 < v44);
      }
    }
  }

  return v10;
}

- (uint64_t)_atStartOfTextTable:()NSAttributedStringUIFoundationAdditions atIndex:
{
  v25[0] = 0;
  v25[1] = 0;
  v7 = [a1 attribute:@"NSParagraphStyle" atIndex:a4 effectiveRange:v25];
  if (v7)
  {
    v8 = v25[0] == a4;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    return 0;
  }

  v10 = v7;
  v11 = [v7 textBlocks];
  result = [v11 count];
  if (result)
  {
    v12 = result;
    v13 = 1;
    do
    {
      v14 = v13 - 1;
      v15 = [v11 objectAtIndex:v13 - 1];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v15 table] != a3)
        {
          v14 = 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      else
      {
        v14 = 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v13 >= v12)
      {
        break;
      }

      ++v13;
    }

    while (v14 == 0x7FFFFFFFFFFFFFFFLL);
    result = 0;
    if (v11)
    {
      if (v14 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v25[0])
        {
          v16 = [a1 attribute:@"NSParagraphStyle" atIndex:v25[0] - 1 effectiveRange:v25];
          if (v16 == v10)
          {
            v22 = 1;
            return !v22;
          }

          if (v16)
          {
            v17 = [v16 textBlocks];
            if (v17)
            {
              v18 = v17;
              if ([v17 count] > v14)
              {
                if (v14)
                {
                  v19 = 1;
                  do
                  {
                    v20 = [v11 objectAtIndex:v19 - 1];
                    v21 = [v18 objectAtIndex:v19 - 1];
                    v22 = v20 == v21;
                  }

                  while (v20 == v21 && v19++ < v14);
                }

                else
                {
                  v22 = 1;
                }

                v24 = [v18 objectAtIndex:v14];
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) != 0 && [v24 table] == a3)
                {
                  return !v22;
                }
              }
            }
          }
        }

        v22 = 0;
        return !v22;
      }
    }
  }

  return result;
}

- (void)_atEndOfTextTable:()NSAttributedStringUIFoundationAdditions atIndex:
{
  v24 = 0;
  v25 = 0;
  result = [a1 attribute:@"NSParagraphStyle" atIndex:a4 effectiveRange:&v24];
  if (result)
  {
    if (a4 + 1 != v25 + v24)
    {
      return 0;
    }

    v8 = result;
    v9 = [result textBlocks];
    result = [v9 count];
    if (result)
    {
      v10 = result;
      v11 = 1;
      do
      {
        v12 = v11 - 1;
        v13 = [v9 objectAtIndex:v11 - 1];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v13 table] != a3)
          {
            v12 = 0x7FFFFFFFFFFFFFFFLL;
          }
        }

        else
        {
          v12 = 0x7FFFFFFFFFFFFFFFLL;
        }

        if (v11 >= v10)
        {
          break;
        }

        ++v11;
      }

      while (v12 == 0x7FFFFFFFFFFFFFFFLL);
      result = 0;
      if (v9)
      {
        if (v12 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v14 = v25 + v24;
          if (v14 < [a1 length])
          {
            v15 = [a1 attribute:@"NSParagraphStyle" atIndex:v14 effectiveRange:&v24];
            if (v15 == v8)
            {
              v21 = 1;
              return !v21;
            }

            if (v15)
            {
              v16 = [v15 textBlocks];
              if (v16)
              {
                v17 = v16;
                if ([v16 count] > v12)
                {
                  if (v12)
                  {
                    v18 = 1;
                    do
                    {
                      v19 = [v9 objectAtIndex:v18 - 1];
                      v20 = [v17 objectAtIndex:v18 - 1];
                      v21 = v19 == v20;
                    }

                    while (v19 == v20 && v18++ < v12);
                  }

                  else
                  {
                    v21 = 1;
                  }

                  v23 = [v17 objectAtIndex:v12];
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) != 0 && [v23 table] == a3)
                  {
                    return !v21;
                  }
                }
              }
            }
          }

          v21 = 0;
          return !v21;
        }
      }
    }
  }

  return result;
}

- (uint64_t)_rangeOfTextTableRow:()NSAttributedStringUIFoundationAdditions atIndex:completeRow:
{
  v7 = a1;
  v43 = 0;
  v44 = 0;
  v8 = [a1 attribute:? atIndex:? effectiveRange:?];
  v9 = [a3 numberOfColumns];
  if (!v8)
  {
    v13 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_15:
    v17 = 1;
    if (!a5)
    {
      return v13;
    }

    goto LABEL_16;
  }

  v10 = v9;
  v39 = v8;
  v11 = [v8 textBlocks];
  v12 = [v11 count];
  v13 = 0x7FFFFFFFFFFFFFFFLL;
  if (!v12)
  {
    goto LABEL_15;
  }

  v14 = v12;
  v35 = v10;
  v36 = a5;
  v42 = 0;
  v15 = 0;
  v16 = 1;
  v17 = 1;
  do
  {
    v18 = v16 - 1;
    v19 = [v11 objectAtIndex:v16 - 1];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v19 table] == a3)
    {
      v42 = [v19 startingRow];
      v15 = [v19 columnSpan];
      v17 &= [v19 rowSpan] < 2;
    }

    else
    {
      v18 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v16 >= v14)
    {
      break;
    }

    ++v16;
  }

  while (v18 == 0x7FFFFFFFFFFFFFFFLL);
  v13 = 0x7FFFFFFFFFFFFFFFLL;
  if (!v11 || v18 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_44;
  }

  v41 = v15;
  v13 = v43;
  v38 = [v7 length];
  [v11 objectAtIndex:v18];
  v37 = v7;
  v21 = [v11 objectAtIndex:v18];
  v22 = v44 + v43;
  if (v44 + v43 >= v38)
  {
LABEL_42:
    v15 = v41;
    goto LABEL_43;
  }

  v23 = v21;
  v24 = v39;
  while (1)
  {
    v25 = v24;
    v24 = [v7 attribute:@"NSParagraphStyle" atIndex:v22 effectiveRange:&v43];
    v41 = v15;
    if (v24 == v25)
    {
      v34 = v23;
      goto LABEL_40;
    }

    if (!v24)
    {
      goto LABEL_43;
    }

    v40 = v24;
    v26 = [v24 textBlocks];
    if (!v26)
    {
      goto LABEL_43;
    }

    v27 = v26;
    if ([v26 count] <= v18)
    {
      goto LABEL_43;
    }

    if (v18)
    {
      v28 = 1;
      do
      {
        v29 = [v11 objectAtIndex:v28 - 1];
        v30 = [v27 objectAtIndex:v28 - 1];
      }

      while (v29 == v30 && v28++ < v18);
      v32 = v29 == v30;
      v7 = v37;
      if (!v32)
      {
        v15 = v41;
        goto LABEL_43;
      }
    }

    v33 = [v27 objectAtIndex:v18];
    if (v33 == v23)
    {
      v34 = v23;
      v24 = v40;
      goto LABEL_40;
    }

    v34 = v33;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      break;
    }

    if ([v34 table] != a3 || objc_msgSend(v34, "startingRow") != v42)
    {
      goto LABEL_42;
    }

    v41 += [v34 columnSpan];
    v17 &= [v34 rowSpan] < 2;
    v24 = v40;
LABEL_40:
    v22 = v44 + v43;
    v23 = v34;
    v15 = v41;
    if (v44 + v43 >= v38)
    {
      goto LABEL_43;
    }
  }

  v15 = v41;
LABEL_43:
  v17 &= v15 == v35;
LABEL_44:
  a5 = v36;
  if (v36)
  {
LABEL_16:
    *a5 = v17 & 1;
  }

  return v13;
}

- (uint64_t)_atStartOfTextTableRow:()NSAttributedStringUIFoundationAdditions atIndex:
{
  v27[0] = 0;
  v27[1] = 0;
  v7 = [a1 attribute:@"NSParagraphStyle" atIndex:a4 effectiveRange:v27];
  if (v7)
  {
    v8 = v27[0] == a4;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    return 0;
  }

  v10 = v7;
  v11 = [v7 textBlocks];
  result = [v11 count];
  if (result)
  {
    v12 = result;
    v25 = a1;
    v26 = 0;
    v13 = 1;
    do
    {
      v14 = v13 - 1;
      v15 = [v11 objectAtIndex:{v13 - 1, v25}];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v15 table] == a3)
      {
        v26 = [v15 startingRow];
      }

      else
      {
        v14 = 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v13 >= v12)
      {
        break;
      }

      ++v13;
    }

    while (v14 == 0x7FFFFFFFFFFFFFFFLL);
    result = 0;
    if (v11)
    {
      if (v14 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v27[0])
        {
          v16 = [v25 attribute:@"NSParagraphStyle" atIndex:v27[0] - 1 effectiveRange:v27];
          if (v16 == v10)
          {
            v22 = 1;
            return !v22;
          }

          if (v16)
          {
            v17 = [v16 textBlocks];
            if (v17)
            {
              v18 = v17;
              if ([v17 count] > v14)
              {
                if (v14)
                {
                  v19 = 1;
                  do
                  {
                    v20 = [v11 objectAtIndex:v19 - 1];
                    v21 = [v18 objectAtIndex:v19 - 1];
                    v22 = v20 == v21;
                  }

                  while (v20 == v21 && v19++ < v14);
                }

                else
                {
                  v22 = 1;
                }

                v24 = [v18 objectAtIndex:v14];
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) != 0 && [v24 table] == a3 && objc_msgSend(v24, "startingRow") == v26)
                {
                  return !v22;
                }
              }
            }
          }
        }

        v22 = 0;
        return !v22;
      }
    }
  }

  return result;
}

- (void)_atEndOfTextTableRow:()NSAttributedStringUIFoundationAdditions atIndex:
{
  v26 = 0;
  v27 = 0;
  result = [a1 attribute:@"NSParagraphStyle" atIndex:a4 effectiveRange:&v26];
  if (result)
  {
    if (a4 + 1 != v27 + v26)
    {
      return 0;
    }

    v8 = result;
    v9 = [result textBlocks];
    result = [v9 count];
    if (result)
    {
      v10 = result;
      v24 = @"NSParagraphStyle";
      v25 = 0;
      v11 = 1;
      do
      {
        v12 = v11 - 1;
        v13 = [v9 objectAtIndex:{v11 - 1, v24}];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v13 table] == a3)
        {
          v25 = [v13 startingRow];
        }

        else
        {
          v12 = 0x7FFFFFFFFFFFFFFFLL;
        }

        if (v11 >= v10)
        {
          break;
        }

        ++v11;
      }

      while (v12 == 0x7FFFFFFFFFFFFFFFLL);
      result = 0;
      if (v9)
      {
        if (v12 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v14 = v27 + v26;
          if (v14 < [a1 length])
          {
            v15 = [a1 attribute:v24 atIndex:v14 effectiveRange:&v26];
            if (v15 == v8)
            {
              v21 = 1;
              return !v21;
            }

            if (v15)
            {
              v16 = [v15 textBlocks];
              if (v16)
              {
                v17 = v16;
                if ([v16 count] > v12)
                {
                  if (v12)
                  {
                    v18 = 1;
                    do
                    {
                      v19 = [v9 objectAtIndex:v18 - 1];
                      v20 = [v17 objectAtIndex:v18 - 1];
                      v21 = v19 == v20;
                    }

                    while (v19 == v20 && v18++ < v12);
                  }

                  else
                  {
                    v21 = 1;
                  }

                  v23 = [v17 objectAtIndex:v12];
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) != 0 && [v23 table] == a3 && objc_msgSend(v23, "startingRow") == v25)
                  {
                    return !v21;
                  }
                }
              }
            }
          }

          v21 = 0;
          return !v21;
        }
      }
    }
  }

  return result;
}

- (uint64_t)rangeOfTextList:()NSAttributedStringUIFoundationAdditions atIndex:
{
  v6 = a1;
  v7 = [a1 string];
  if ([v7 length] <= a4)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v41 = 0;
  v42 = 0;
  [v7 getParagraphStart:&v41 end:0 contentsEnd:0 forRange:{a4, 1}];
  v8 = v41 >= a4 ? a4 : v41;
  v9 = [v6 attribute:@"NSParagraphStyle" atIndex:v8 effectiveRange:&v41];
  if (!v9)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v9;
  v11 = [v9 textLists];
  v12 = [v11 indexOfObjectIdenticalTo:a3];
  v13 = 0x7FFFFFFFFFFFFFFFLL;
  if (v11)
  {
    v14 = v12 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    v16 = v12;
    v13 = v41;
    v36 = v42 + v41;
    v37 = v7;
    v38 = [v6 length];
    v39 = v6;
    if (v13)
    {
      v17 = v10;
      do
      {
        v18 = [v6 attribute:@"NSParagraphStyle" atIndex:v13 - 1 effectiveRange:&v41];
        if (v18 == v17)
        {
          v25 = 1;
          v13 = v41;
          if (!v41)
          {
            break;
          }
        }

        else
        {
          v19 = v18;
          if (!v18)
          {
            break;
          }

          v20 = [v18 textLists];
          if (!v20 || (v21 = v20, [v20 count] <= v16))
          {
            v6 = v39;
            break;
          }

          v22 = 1;
          do
          {
            v23 = [v11 objectAtIndex:v22 - 1];
            v24 = [v21 objectAtIndex:v22 - 1];
            v25 = v23 == v24;
          }

          while (v23 == v24 && v22++ <= v16);
          if (v23 == v24)
          {
            v13 = v41;
            v17 = v19;
          }

          v6 = v39;
          if (!v13)
          {
            break;
          }
        }
      }

      while (v25);
    }

    v27 = v36;
    if (v36 < v38)
    {
      do
      {
        v28 = v10;
        v29 = [v6 attribute:@"NSParagraphStyle" atIndex:v27 effectiveRange:&v41];
        v10 = v29;
        if (v29 != v28)
        {
          if (!v29)
          {
            break;
          }

          v30 = [v29 textLists];
          if (!v30)
          {
            break;
          }

          v31 = v30;
          if ([v30 count] <= v16)
          {
            break;
          }

          v32 = 1;
          do
          {
            v33 = [v11 objectAtIndex:v32 - 1];
            v34 = [v31 objectAtIndex:v32 - 1];
          }

          while (v33 == v34 && v32++ <= v16);
          v6 = v39;
          if (v33 != v34)
          {
            break;
          }
        }

        v27 = v42 + v41;
      }

      while (v42 + v41 < v38);
    }

    if (v27 > v13)
    {
      v40 = 0;
      [v37 getParagraphStart:0 end:&v40 contentsEnd:0 forRange:{v27 - 1, 1}];
    }
  }

  return v13;
}

- (char)itemNumberInTextList:()NSAttributedStringUIFoundationAdditions atIndex:
{
  v6 = a1;
  v38 = 0;
  v39 = 0;
  v7 = [a1 string];
  v8 = @"NSParagraphStyle";
  v9 = [v6 attribute:@"NSParagraphStyle" atIndex:a4 effectiveRange:&v38];
  v10 = v9;
  if (!v9)
  {
    return v10;
  }

  v35 = v7;
  v36 = a4;
  v11 = [v9 textLists];
  v12 = [v11 indexOfObjectIdenticalTo:a3];
  if (v11)
  {
    v13 = v12 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    return 0;
  }

  v14 = v12;
  v15 = v38;
  v34 = [v6 length];
  if (!v15)
  {
    goto LABEL_29;
  }

  v37 = v6;
  while (1)
  {
    v16 = v6;
    v17 = v8;
    v18 = [v16 attribute:v8 atIndex:v15 - 1 effectiveRange:{&v38, v34}];
    if (v18 == v10)
    {
      v25 = 1;
      v15 = v38;
      goto LABEL_24;
    }

    v19 = v18;
    if (!v18)
    {
      break;
    }

    v20 = [v18 textLists];
    if (!v20)
    {
      break;
    }

    v21 = v20;
    if ([v20 count] <= v14)
    {
      break;
    }

    v22 = 1;
    do
    {
      v23 = [v11 objectAtIndex:v22 - 1];
      v24 = [v21 objectAtIndex:v22 - 1];
      v25 = v23 == v24;
    }

    while (v23 == v24 && v22++ <= v14);
    if (v23 == v24)
    {
      v15 = v38;
      v10 = v19;
    }

LABEL_24:
    v8 = v17;
    if (!v15)
    {
      goto LABEL_28;
    }

    v6 = v37;
    if (!v25)
    {
      goto LABEL_29;
    }
  }

  v8 = v17;
LABEL_28:
  v6 = v37;
LABEL_29:
  v10 = 0;
  if (v15 <= v36)
  {
    v27 = v34;
    if (v15 < v34)
    {
      v10 = 0;
      v28 = v14 + 1;
      do
      {
        v29 = [v35 paragraphRangeForRange:{v15, 0, v34}];
        v31 = v30;
        if ([objc_msgSend(objc_msgSend(v6 attribute:v8 atIndex:v15 effectiveRange:{&v38), "textLists"), "count"}] == v28)
        {
          v15 = v29 + v31;
          ++v10;
        }

        else
        {
          v15 = v39 + v38;
        }
      }

      while (v15 <= v36 && v15 < v27);
    }
  }

  return v10;
}

- (uint64_t)prefersRTFDInRange:()NSAttributedStringUIFoundationAdditions
{
  if (!a4)
  {
    return 0;
  }

  v12 = 0;
  v13 = 0;
  v7 = [a1 attributesAtIndex:a3 longestEffectiveRange:&v12 inRange:{a3, a4}];
  if (![v7 objectForKeyedSubscript:@"NSAttachment"])
  {
    v9 = a3 + a4;
    while (![v7 objectForKeyedSubscript:@"CTAdaptiveImageProvider"])
    {
      v10 = v13 + v12;
      v11 = v9 - (v13 + v12);
      if (v9 <= v13 + v12)
      {
        return 0;
      }

      v12 = 0;
      v13 = 0;
      v7 = [a1 attributesAtIndex:v10 longestEffectiveRange:&v12 inRange:{v10, v11}];
      if ([v7 objectForKeyedSubscript:@"NSAttachment"])
      {
        return 1;
      }
    }
  }

  return 1;
}

@end