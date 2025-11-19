@interface NSMutableAttributedString(NSMutableAttributedStringKitAdditions)
- (uint64_t)_changeIntAttribute:()NSMutableAttributedStringKitAdditions by:range:;
- (uint64_t)convertBidiControlCharactersToWritingDirection;
- (uint64_t)convertWritingDirectionToBidiControlCharacters;
- (uint64_t)fixAttributesInRange:()NSMutableAttributedStringKitAdditions;
- (uint64_t)fixFontAttributeInRange:()NSMutableAttributedStringKitAdditions;
- (unint64_t)_fixGlyphInfo:()NSMutableAttributedStringKitAdditions inRange:;
- (unint64_t)convertBidiControlCharactersToWritingDirectionForParagraphAtIndex:()NSMutableAttributedStringKitAdditions;
- (unint64_t)convertWritingDirectionToBidiControlCharactersForParagraphAtIndex:()NSMutableAttributedStringKitAdditions;
- (unint64_t)fixGlyphInfoAttributeInRange:()NSMutableAttributedStringKitAdditions;
- (unint64_t)fixParagraphStyleAttributeInRange:()NSMutableAttributedStringKitAdditions;
- (void)fixAttachmentAttributeInRange:()NSMutableAttributedStringKitAdditions;
- (void)setAlignment:()NSMutableAttributedStringKitAdditions range:;
- (void)setBaseWritingDirection:()NSMutableAttributedStringKitAdditions range:;
@end

@implementation NSMutableAttributedString(NSMutableAttributedStringKitAdditions)

- (uint64_t)convertWritingDirectionToBidiControlCharacters
{
  [a1 beginEditing];
  if ([a1 length])
  {
    v2 = 0;
    do
    {
      v3 = [a1 convertWritingDirectionToBidiControlCharactersForParagraphAtIndex:v2];
      v2 = v3 + v4;
    }

    while (v3 + v4 < [a1 length]);
  }

  return [a1 endEditing];
}

- (uint64_t)fixAttributesInRange:()NSMutableAttributedStringKitAdditions
{
  v7 = [a1 _attributeFixingInProgress];
  if ((v7 & 1) == 0)
  {
    [a1 _setAttributeFixingInProgress:1];
  }

  [a1 beginEditing];
  [a1 fixGlyphInfoAttributeInRange:{a3, a4}];
  [a1 fixFontAttributeInRange:{a3, a4}];
  [a1 fixParagraphStyleAttributeInRange:{a3, a4}];
  [a1 fixAttachmentAttributeInRange:{a3, a4}];
  [objc_msgSend(a1 "_intentResolver")];
  result = [a1 endEditing];
  if ((v7 & 1) == 0)
  {
    return [a1 _setAttributeFixingInProgress:0];
  }

  return result;
}

- (uint64_t)fixFontAttributeInRange:()NSMutableAttributedStringKitAdditions
{
  v7 = MEMORY[0x193AD3F60](0);
  *theSet = 0u;
  v219 = 0u;
  v8 = [a1 string];
  v216 = 0;
  v217 = 0;
  [a1 _isStringDrawingTextStorage];
  v212 = a1;
  v205 = [a1 _shouldSetOriginalFontAttribute];
  if (fixFontAttributeInRange__onceToken != -1)
  {
    [NSMutableAttributedString(NSMutableAttributedStringKitAdditions) fixFontAttributeInRange:];
  }

  v231 = 0;
  v229 = 0u;
  v230 = 0u;
  v227 = 0u;
  *theString = 0u;
  v225 = 0u;
  v226 = 0u;
  v223 = 0u;
  v224 = 0u;
  v221 = 0u;
  v222 = 0u;
  *buffer = 0u;
  if (a4)
  {
    if (!a3)
    {
      goto LABEL_7;
    }

    v9 = [(__CFString *)v8 characterAtIndex:a3];
    if ((v9 & 0xF800 | 0x400) != 0xDC00)
    {
      LOBYTE(v193) = fixFontAttributeInRange__nonBaseSetBMP;
      if (fixFontAttributeInRange__nonBaseSetBMP)
      {
        v193 = (*(fixFontAttributeInRange__nonBaseSetBMP + (v9 >> 3)) >> (v9 & 7)) & 1;
      }

      if (v9 - 4448 >= 0x9A && (v193 & 1) == 0 && (v9 & 0xFFF0) != 0xF870 && v9 != 8205 && (v9 & 0xFFF0) != 0xF860 && (!fixFontAttributeInRange__combiningDataBMP || !*(fixFontAttributeInRange__combiningDataBMP + (v9 >> 8)) || *(fixFontAttributeInRange__combiningDataBMP + (*(fixFontAttributeInRange__combiningDataBMP + (v9 >> 8)) << 8) - 256 + v9 + 256) != 9))
      {
        goto LABEL_7;
      }
    }

    v10.location = [(__CFString *)v8 rangeOfComposedCharacterSequenceAtIndex:a3];
    if (a3 != v10.location)
    {
      location = v10.location;
      length = v10.length;
      v243.location = a3;
      v243.length = a4;
      v13 = NSUnionRange(v10, v243);
      a3 = v13.location;
      a4 = v13.length;
      v199 = location + length - v13.location;
    }

    else
    {
LABEL_7:
      v199 = 0;
    }

    if (a4 + a3 < [(__CFString *)v8 length])
    {
      v14 = [(__CFString *)v8 characterAtIndex:a4 + a3];
      v15 = a4 + a3 - 1;
      if (([(__CFString *)v8 characterAtIndex:v15]& 0xFC00) == 0xD800)
      {
        goto LABEL_12;
      }

      LOBYTE(v192) = fixFontAttributeInRange__nonBaseSetBMP;
      if (fixFontAttributeInRange__nonBaseSetBMP)
      {
        v192 = (*(fixFontAttributeInRange__nonBaseSetBMP + (v14 >> 3)) >> (v14 & 7)) & 1;
      }

      if ((v192 & 1) != 0 || v14 - 4448 < 0x9A || (v14 & 0xFFF0) == 0xF870 || v14 == 8205 || (v14 & 0xFFF0) == 0xF860 || fixFontAttributeInRange__combiningDataBMP && *(fixFontAttributeInRange__combiningDataBMP + (v14 >> 8)) && *(fixFontAttributeInRange__combiningDataBMP + (*(fixFontAttributeInRange__combiningDataBMP + (v14 >> 8)) << 8) - 256 + v14 + 256) == 9)
      {
LABEL_12:
        v236.location = [(__CFString *)v8 rangeOfComposedCharacterSequenceAtIndex:v15];
        v244.location = a3;
        v244.length = a4;
        v16 = NSUnionRange(v236, v244);
        a3 = v16.location;
        a4 = v16.length;
      }
    }
  }

  else
  {
    v199 = 0;
  }

  theString[0] = v8;
  *(&v229 + 1) = a3;
  *&v230 = a4;
  theString[1] = CFStringGetCharactersPtr(v8);
  if (theString[1])
  {
    CStringPtr = 0;
  }

  else
  {
    CStringPtr = CFStringGetCStringPtr(v8, 0x600u);
  }

  *(&v230 + 1) = 0;
  v231 = 0;
  *&v229 = CStringPtr;
  if (!a4)
  {
    v190 = 0;
    v188 = 0;
    goto LABEL_555;
  }

  v203 = 0;
  v204 = v8;
  v197 = v7;
  range1 = 0;
  v18 = 0;
  v19 = 0;
  v208 = 0;
  v209 = 0;
  v213 = 0;
  v20 = 0;
  v210 = 0;
  v21 = 0;
  v202 = 0;
  v201 = a3 - 1;
  v200 = a3 - 2;
  v195 = a4 + a3;
  v196 = *MEMORY[0x1E696A518];
  v194 = -a3;
  v206 = a4;
  v211 = a3;
  do
  {
    if (v18 == v19)
    {
      v22 = [v212 attribute:@"NSFont" atIndex:v18 + a3 longestEffectiveRange:&v216 inRange:{a3, a4}];
      v23 = v22;
      if (v22 && ([v22 _isDefaultFace] & 1) == 0 && (v24 = objc_msgSend(v23, "coveredCharacterSet")) != 0)
      {
        v25 = v24;
        CFCharacterSetInitInlineBuffer();
        v26 = v25;
      }

      else
      {
        v26 = 0;
      }

      v27 = v216;
      v28 = v217;
      v209 = v26;
      if (v20)
      {
        if (v23)
        {
          [v23 pointSize];
          v30 = v29;
          [v20 pointSize];
          if (v30 != v31 || (v32 = [v23 traits], v32 != objc_msgSend(v20, "traits")) || (CTFontGetWeight(), v34 = v33, CTFontGetWeight(), vabdd_f64(v34, v35) >= 0.00000011920929) || (memset(&v235, 0, sizeof(v235)), CTFontGetMatrix(&v235, v23), memset(&v234, 0, sizeof(v234)), CTFontGetMatrix(&v234, v20), t1 = v235, t2 = v234, !CGAffineTransformEqualToTransform(&t1, &t2)))
          {
            [v212 addAttribute:@"NSFont" value:v20 range:{v210, v21}];
            if (v205)
            {
              v36 = v213;
              if (!v213)
              {
                if (NSDefaultFont_onceToken != -1)
                {
                  [NSMutableAttributedString(NSMutableAttributedStringKitAdditions) fixFontAttributeInRange:];
                }

                v36 = NSDefaultFont__defaultFont;
              }

              [v212 addAttribute:@"NSOriginalFont" value:v36 range:{v210, v21}];
            }

            v20 = 0;
          }
        }
      }

      v214 = v27 - a3 + v28;

      v208 = 0;
      v213 = v23;
    }

    else
    {
      v214 = v19;
    }

    v37 = v18 + 1;
    v215 = v21;
    if (v18 < 0 || (v38 = v230, v230 <= v18))
    {
      v40 = 0;
      v41 = 0;
      v207 = 0;
LABEL_44:
      v42 = [_CTGetVisibleFormatterCharacterSet() longCharacterIsMember:v40];
      v43 = v40 & 0xFFFFFFFE;
      if ((v40 & 0xFFFFFFFE) != 0xFE0E && (v42 & 1) == 0)
      {
        if (WORD1(v40))
        {
          BitmapPtrForPlane = CFUniCharGetBitmapPtrForPlane();
          if (!BitmapPtrForPlane)
          {
            goto LABEL_58;
          }
        }

        else
        {
          BitmapPtrForPlane = fixFontAttributeInRange__controlFormatBMP;
          if (!fixFontAttributeInRange__controlFormatBMP)
          {
            goto LABEL_58;
          }
        }

        v45 = v40 >> 3;
        v46 = 1 << (v40 & 7);
        if ((v46 & *(BitmapPtrForPlane + v45)) != 0)
        {
          if (WORD1(v40))
          {
            v47 = CFUniCharGetBitmapPtrForPlane();
            if (!v47)
            {
              goto LABEL_75;
            }
          }

          else
          {
            v47 = fixFontAttributeInRange__graphemeBMP;
            if (!fixFontAttributeInRange__graphemeBMP)
            {
              goto LABEL_75;
            }
          }

          if ((v46 & *(v47 + v45)) != 0)
          {
            goto LABEL_58;
          }

LABEL_75:
          a4 = v206;
          a3 = v211;
LABEL_429:
          v21 = v215;
          goto LABEL_430;
        }
      }

LABEL_58:
      if (v40 >> 4 != 4064 && (v40 - 917760) > 0xEF)
      {
        if (v40 == 8419)
        {
          v48 = [(__CFString *)v204 rangeOfComposedCharacterSequenceAtIndex:v201 + v37];
          if (v49 == 2)
          {
            v50 = v48;
            if (v48 != v201 + v37)
            {
              v51 = v48 - v211;
              if ((v48 - v211) >= 0)
              {
                v52 = v230;
                if (v230 > v51)
                {
                  if (theString[1])
                  {
                    v53 = *(&theString[1]->isa + *(&v229 + 1) + v51);
                  }

                  else if (v229)
                  {
                    v53 = *(v229 + *(&v229 + 1) + v51);
                  }

                  else
                  {
                    if (v231 <= v51 || (v81 = *(&v230 + 1), *(&v230 + 1) > v51))
                    {
                      v82 = v51 - 4;
                      if (v51 < 4)
                      {
                        v82 = 0;
                      }

                      if (v82 + 64 < v230)
                      {
                        v52 = v82 + 64;
                      }

                      *(&v230 + 1) = v82;
                      v231 = v52;
                      v239.length = v52 - v82;
                      v239.location = *(&v229 + 1) + v82;
                      CFStringGetCharacters(theString[0], v239, buffer);
                      v81 = *(&v230 + 1);
                    }

                    v53 = buffer[v51 - v81];
                  }

                  if (v53 == 35 || v53 == 42 || (v53 - 48) <= 9u)
                  {
                    a4 = v206;
                    if (v51 < v216 || (v83 = v213, v51 - v216 >= v217))
                    {
                      v83 = [v212 attribute:@"NSFont" atIndex:v51 effectiveRange:0];
                    }

                    if (([v83 _hasColorGlyphs] & 1) == 0)
                    {
                      v84 = CTFontCreateEmojiFontForFont();
                      if (v20)
                      {
                        v85 = NSIntersectsRange() ? v50 - v210 : v215;
                        if (v85)
                        {
                          [v212 addAttribute:@"NSFont" value:v20 range:{v210, v85}];
                          if (v205)
                          {
                            v86 = v213;
                            if (!v213)
                            {
                              if (NSDefaultFont_onceToken != -1)
                              {
                                [NSMutableAttributedString(NSMutableAttributedStringKitAdditions) fixFontAttributeInRange:];
                              }

                              v86 = NSDefaultFont__defaultFont;
                            }

                            [v212 addAttribute:@"NSOriginalFont" value:v86 range:{v210, v85}];
                          }
                        }
                      }

                      v203 = [v84 coveredCharacterSet];
                      v202 = 0;
                      v37 = v51 + 2;
                      v210 = v50;
                      v21 = 2;
                      v20 = v84;
                      goto LABEL_312;
                    }

                    goto LABEL_379;
                  }
                }
              }
            }
          }
        }

        a3 = v211;
        v21 = v215;
        if (!v209)
        {
          goto LABEL_211;
        }

        v87 = (theSet[1] & 4) >> 2;
        if (HIDWORD(theSet[1]) <= v40 && v219 > v40)
        {
          if (WORD1(v40) || (theSet[1] & 2) != 0)
          {
            if (CFCharacterSetIsLongCharacterMember(theSet[0], v40))
            {
              goto LABEL_180;
            }

            goto LABEL_211;
          }

          if (!*(&v219 + 1))
          {
            if (((((theSet[1] & 1) == 0) ^ ((theSet[1] & 4) >> 2)) & 1) == 0)
            {
              goto LABEL_211;
            }

            goto LABEL_180;
          }

          if ((theSet[1] & 1) == 0)
          {
            if ((((*(*(&v219 + 1) + (v40 >> 3)) >> (v40 & 7)) & 1) == 0) == ((theSet[1] & 4) == 0))
            {
              goto LABEL_211;
            }

LABEL_180:
            if (v20)
            {
              v88 = v18 == v19;
            }

            else
            {
              v88 = 1;
            }

            if (v88 && v37 - 1 >= v199)
            {
LABEL_186:
              if (v20)
              {
                [v212 addAttribute:@"NSFont" value:v20 range:{v210, v215}];
                a4 = v206;
                if (!v205)
                {
                  goto LABEL_438;
                }

                v89 = v213;
                if (v213)
                {
                  goto LABEL_413;
                }

                if (NSDefaultFont_onceToken == -1)
                {
                  goto LABEL_412;
                }

                goto LABEL_544;
              }

LABEL_508:
              a4 = v206;
              goto LABEL_541;
            }

            v90 = v40;
            if (WORD1(v40))
            {
              v91 = CFUniCharGetBitmapPtrForPlane();
              v92 = 0;
              if (v91)
              {
                goto LABEL_193;
              }

              goto LABEL_195;
            }

LABEL_192:
            v91 = fixFontAttributeInRange__nonBaseSetBMP;
            v92 = 1;
            if (fixFontAttributeInRange__nonBaseSetBMP)
            {
LABEL_193:
              v93 = (*(v91 + (v90 >> 3)) >> (v90 & 7)) & 1;
              goto LABEL_196;
            }

LABEL_195:
            LOBYTE(v93) = 0;
LABEL_196:
            v94 = v207;
            if (v40 == 8205)
            {
              v94 = 1;
            }

            if ((v40 - 127995) >= 5 && (v94 & 1) == 0 && v41 != 63600 && (v40 - 4448) >= 0x9A && (v93 & 1) == 0)
            {
              if (v92)
              {
                v95 = fixFontAttributeInRange__graphemeBMP;
                if (!fixFontAttributeInRange__graphemeBMP)
                {
                  goto LABEL_186;
                }
              }

              else
              {
                v95 = CFUniCharGetBitmapPtrForPlane();
                if (!v95)
                {
                  goto LABEL_186;
                }
              }

              if (((*(v95 + (v90 >> 3)) >> (v90 & 7)) & 1) == 0)
              {
                goto LABEL_186;
              }
            }

LABEL_225:
            v102 = v43 == 8208;
            if (v43 == 8208)
            {
              v100 = 45;
            }

            else
            {
              v100 = v40;
            }

            if (v209)
            {
              a4 = v206;
              v103 = v213;
              if (!v102)
              {
                goto LABEL_238;
              }

              v104 = (theSet[1] & 4) >> 2;
              if (HIDWORD(theSet[1]) > 0x2D || v219 < 0x2E)
              {
                goto LABEL_310;
              }

              if ((theSet[1] & 2) != 0)
              {
                v100 = 45;
                if (!CFCharacterSetIsLongCharacterMember(theSet[0], 0x2Du))
                {
LABEL_238:
                  if (v20)
                  {
                    v107 = v210 + v215 - 1;
                    if (v107 < 0 || (v108 = v230, v230 <= v107))
                    {
                      v109 = 0;
                    }

                    else if (theString[1])
                    {
                      v109 = *(&theString[1]->isa + *(&v229 + 1) + v107);
                    }

                    else if (v229)
                    {
                      v109 = *(v229 + *(&v229 + 1) + v107);
                    }

                    else
                    {
                      if (v231 <= v107 || (v129 = *(&v230 + 1), *(&v230 + 1) > v107))
                      {
                        v130 = v210 + v215 - 5;
                        if (v107 < 4)
                        {
                          v130 = 0;
                        }

                        if (v130 + 64 < v230)
                        {
                          v108 = v130 + 64;
                        }

                        *(&v230 + 1) = v130;
                        v231 = v108;
                        v240.length = v108 - v130;
                        v240.location = *(&v229 + 1) + v130;
                        CFStringGetCharacters(theString[0], v240, buffer);
                        v129 = *(&v230 + 1);
                      }

                      v109 = buffer[v107 - v129];
                    }

                    if (!(((v109 & 0xFFF0) == 65024) | v202 & 1) && CFCharacterSetIsLongCharacterMember(v203, v100))
                    {
                      v202 = 0;
                      v110 = 1;
                      if (HIWORD(v100))
                      {
                        v110 = 2;
                      }

                      v21 = v110 + v215;
                      goto LABEL_312;
                    }

                    [v212 addAttribute:@"NSFont" value:v20 range:{v210, v215}];
                    if (v205)
                    {
                      v111 = v103;
                      if (!v103)
                      {
                        if (NSDefaultFont_onceToken != -1)
                        {
                          [NSMutableAttributedString(NSMutableAttributedStringKitAdditions) fixFontAttributeInRange:];
                        }

                        v111 = NSDefaultFont__defaultFont;
                      }

                      [v212 addAttribute:@"NSOriginalFont" value:v111 range:{v210, v215}];
                    }
                  }

                  v112 = HIWORD(v100);
                  if (HIWORD(v100))
                  {
                    v113 = -2;
                  }

                  else
                  {
                    v113 = -1;
                  }

                  v114 = v211 + v37 + v113;
                  if (v112)
                  {
                    v21 = 2;
                  }

                  else
                  {
                    v21 = 1;
                  }

                  if (!v103)
                  {
                    if (NSDefaultFont_onceToken != -1)
                    {
                      [NSMutableAttributedString(NSMutableAttributedStringKitAdditions) fixFontAttributeInRange:];
                    }

                    if (CFCharacterSetIsLongCharacterMember([NSDefaultFont__defaultFont coveredCharacterSet], v100))
                    {
                      a3 = v211;
                      if (v205)
                      {
                        if (NSDefaultFont_onceToken != -1)
                        {
                          [NSMutableAttributedString(NSMutableAttributedStringKitAdditions) fixFontAttributeInRange:];
                        }

                        [v212 addAttribute:@"NSOriginalFont" value:NSDefaultFont__defaultFont range:{v114, v21}];
                      }

                      if (NSDefaultFont_onceToken != -1)
                      {
                        [NSMutableAttributedString(NSMutableAttributedStringKitAdditions) fixFontAttributeInRange:];
                      }

                      v20 = NSDefaultFont__defaultFont;
                      if ([NSDefaultFont__defaultFont _isDefaultFace])
                      {
                        v213 = 0;
LABEL_538:
                        v202 = 1;
                        goto LABEL_540;
                      }

                      v203 = [v20 coveredCharacterSet];
                      v202 = 0;
                      v213 = 0;
                      goto LABEL_540;
                    }
                  }

                  if (v112)
                  {
                    v115 = CFUniCharGetBitmapPtrForPlane();
                    if (!v115)
                    {
                      goto LABEL_267;
                    }
                  }

                  else
                  {
                    v115 = fixFontAttributeInRange__graphemeBMP;
                    if (!fixFontAttributeInRange__graphemeBMP)
                    {
                      goto LABEL_267;
                    }
                  }

                  if ((*(v115 + (v100 >> 3)) >> (v100 & 7)))
                  {
                    goto LABEL_287;
                  }

LABEL_267:
                  if (v112)
                  {
                    v116 = CFUniCharGetBitmapPtrForPlane();
                    if (v116)
                    {
                      goto LABEL_269;
                    }
                  }

                  else
                  {
                    v116 = fixFontAttributeInRange__nonBaseSetBMP;
                    if (fixFontAttributeInRange__nonBaseSetBMP)
                    {
LABEL_269:
                      v117 = (*(v116 + (v100 >> 3)) >> (v100 & 7)) & 1;
LABEL_283:
                      if (v100 - 4448 >= 0x9A && (v117 & 1) == 0 && (v100 & 0x1FFFE0 | 0x10) != 0xF870 && v100 - 127995 >= 5 && v100 != 8205)
                      {
                        goto LABEL_492;
                      }

LABEL_287:
                      v118 = [(__CFString *)v204 rangeOfComposedCharacterSequenceAtIndex:v114];
                      v210 = v118;
                      v120 = v118 - v211;
                      if ((v118 - v211) >= 0)
                      {
                        v121 = v230;
                        if (v120 + v119 <= v230)
                        {
                          v122 = v119;
                          if (theString[1])
                          {
                            v123 = theString[1] + *(&v229 + 1) + v120;
                            goto LABEL_484;
                          }

                          if (v119 <= 64)
                          {
                            if (v120 + v119 > v231 || v120 < *(&v230 + 1))
                            {
                              if (v120 + 64 < v230)
                              {
                                v121 = v120 + 64;
                              }

                              *(&v230 + 1) = v118 - v211;
                              v231 = v121;
                              v124.length = v121 - v120;
                              if (v229)
                              {
                                if (v124.length)
                                {
                                  v125 = (v229 + v194 + v118 + *(&v229 + 1));
                                  v126 = buffer;
                                  do
                                  {
                                    v127 = *v125++;
                                    *v126++ = v127;
                                    --v124.length;
                                  }

                                  while (v124.length);
                                }
                              }

                              else
                              {
                                v124.location = *(&v229 + 1) + v120;
                                CFStringGetCharacters(theString[0], v124, buffer);
                              }
                            }

                            v123 = &buffer[v120 - *(&v230 + 1)];
LABEL_484:
                            v169 = v103;
                            if (!v103)
                            {
                              if (NSDefaultFont_onceToken != -1)
                              {
                                [NSMutableAttributedString(NSMutableAttributedStringKitAdditions) fixFontAttributeInRange:];
                              }

                              v169 = NSDefaultFont__defaultFont;
                            }

                            v170 = [v169 bestMatchingFontForCharacters:v123 length:v122 attributes:objc_msgSend(v212 actualCoveredLength:{"attributesAtIndex:effectiveRange:", v210, 0), 0}];
                            if (v170)
                            {
                              v20 = v170;
                              v202 = [v170 _isDefaultFace];
                              if ((v202 & 1) == 0)
                              {
                                v203 = [v20 coveredCharacterSet];
                              }

                              a3 = v211;
                              v21 = v122;
                              v37 = v122 - v211 + v210;
                              goto LABEL_541;
                            }
                          }
                        }
                      }

LABEL_492:
                      if (fixFontAttributeInRange__useDecoTypeFontForUrdu == 1)
                      {
                        a3 = v211;
                        if (CTFontIsSystemUIFont() && MEMORY[0x193AD3A90]([v212 attribute:v196 atIndex:v114 effectiveRange:0]))
                        {
                          NextUrduSequenceFromString = range1.location;
                          if (range1.location + range1.length <= v114)
                          {
                            NextUrduSequenceFromString = GetNextUrduSequenceFromString(v204, v114, v195 - v114);
                            range1.length = v172;
                          }

                          range1.location = NextUrduSequenceFromString;
                          if (v114 >= NextUrduSequenceFromString && v114 - NextUrduSequenceFromString < range1.length)
                          {
                            v173 = v103;
                            v174 = v103;
                            CopyForKnownUrduSequences = v208;
                            if (!v174)
                            {
                              if (NSDefaultFont_onceToken != -1)
                              {
                                [NSMutableAttributedString(NSMutableAttributedStringKitAdditions) fixFontAttributeInRange:];
                              }

                              v173 = NSDefaultFont__defaultFont;
                            }

                            if (v208 || (CopyForKnownUrduSequences = CTFontCreateCopyForKnownUrduSequences()) != 0)
                            {
                              v245.length = v214 - (v37 + v113);
                              v245.location = v211 + v37 + v113;
                              v176 = NSIntersectionRange(range1, v245);
                              v208 = CopyForKnownUrduSequences;
                              [v212 addAttribute:@"NSFont" value:CopyForKnownUrduSequences range:{v176.location, v176.length}];
                              if (v205)
                              {
                                [v212 addAttribute:@"NSOriginalFont" value:v173 range:{v176.location, v176.length}];
                              }

                              v20 = 0;
                              v37 = v176.location + v176.length;
                              v210 = v114;
                              goto LABEL_508;
                            }

                            v208 = 0;
                            range1 = 0x7FFFFFFFFFFFFFFFuLL;
                            a4 = v206;
                            v103 = v213;
                          }
                        }
                      }

                      else
                      {
                        a3 = v211;
                      }

                      v177 = v114 - a3;
                      if ((v114 - a3) >= 0 && v177 + v21 <= v230)
                      {
                        if (theString[1])
                        {
                          v178 = theString[1] + *(&v229 + 1) + v177;
                        }

                        else
                        {
                          if (v177 + v21 > v231 || v177 < *(&v230 + 1))
                          {
                            v179 = v177 + 64;
                            if (v177 + 64 >= v230)
                            {
                              v179 = v230;
                            }

                            *(&v230 + 1) = v114 - a3;
                            v231 = v179;
                            v180.location = *(&v229 + 1) + v177;
                            v180.length = v179 - v177;
                            if (v229)
                            {
                              if (v180.length)
                              {
                                v181 = (v229 + v180.location);
                                v182 = v113 + v37 - v179;
                                v183 = buffer;
                                do
                                {
                                  v184 = *v181++;
                                  *v183++ = v184;
                                }

                                while (!__CFADD__(v182++, 1));
                              }
                            }

                            else
                            {
                              CFStringGetCharacters(theString[0], v180, buffer);
                            }
                          }

                          v178 = &buffer[v177 - *(&v230 + 1)];
                        }

                        v186 = v103;
                        if (!v103)
                        {
                          if (NSDefaultFont_onceToken != -1)
                          {
                            [NSMutableAttributedString(NSMutableAttributedStringKitAdditions) fixFontAttributeInRange:];
                          }

                          v186 = NSDefaultFont__defaultFont;
                        }

                        v20 = [v186 bestMatchingFontForCharacters:v178 length:v21 attributes:objc_msgSend(v212 actualCoveredLength:{"attributesAtIndex:effectiveRange:", v114, 0), 0}];
                        if (!v20)
                        {
                          v187 = v103;
                          if (!v103)
                          {
                            if (NSDefaultFont_onceToken != -1)
                            {
                              [NSMutableAttributedString(NSMutableAttributedStringKitAdditions) fixFontAttributeInRange:];
                            }

                            v187 = NSDefaultFont__defaultFont;
                          }

                          v20 = [v187 lastResortFont];
                        }

                        if (([v20 _isDefaultFace] & 1) == 0)
                        {
                          v203 = [v20 coveredCharacterSet];
                          v202 = 0;
                          goto LABEL_540;
                        }

                        goto LABEL_538;
                      }

                      v20 = 0;
LABEL_540:
                      v210 = v211 + v37 + v113;
                      goto LABEL_541;
                    }
                  }

                  LOBYTE(v117) = 0;
                  goto LABEL_283;
                }
              }

              else if (*(&v219 + 1))
              {
                if ((theSet[1] & 1) == 0)
                {
                  v105 = (theSet[1] & 4) == 0;
                  v106 = *(*(&v219 + 1) + 5);
                  goto LABEL_453;
                }

                v128 = **(&v219 + 1);
                if (**(&v219 + 1))
                {
                  LOBYTE(v104) = (theSet[1] & 4) == 0;
                  if (v128 != 255)
                  {
                    v105 = (theSet[1] & 4) == 0;
                    v106 = *(*(&v219 + 1) + 32 * v128 + 229);
LABEL_453:
                    if (((((v106 & 0x20) == 0) ^ v105) & 1) == 0)
                    {
                      goto LABEL_454;
                    }

                    goto LABEL_311;
                  }

LABEL_310:
                  if ((v104 & 1) == 0)
                  {
LABEL_454:
                    v100 = 45;
                    goto LABEL_238;
                  }

                  goto LABEL_311;
                }

                if ((theSet[1] & 4) == 0)
                {
                  goto LABEL_454;
                }
              }

              else if (((((theSet[1] & 1) == 0) ^ ((theSet[1] & 4) >> 2)) & 1) == 0)
              {
                goto LABEL_454;
              }

LABEL_311:
              if (!v20)
              {
LABEL_312:
                a3 = v211;
                goto LABEL_541;
              }

              [v212 addAttribute:@"NSFont" value:v20 range:{v210, v215}];
              a3 = v211;
              if (!v205)
              {
                goto LABEL_438;
              }

              v89 = v213;
              if (!v213)
              {
                if (NSDefaultFont_onceToken == -1)
                {
                  goto LABEL_412;
                }

                goto LABEL_544;
              }

              goto LABEL_413;
            }

LABEL_237:
            a4 = v206;
            v103 = v213;
            goto LABEL_238;
          }

          v96 = v40 >> 8;
          v97 = *(*(&v219 + 1) + v96);
          if (!*(*(&v219 + 1) + v96))
          {
            if ((theSet[1] & 4) == 0)
            {
              goto LABEL_211;
            }

            goto LABEL_180;
          }

          LOBYTE(v87) = (theSet[1] & 4) == 0;
          if (v97 != 255)
          {
            if ((((*(*(&v219 + 1) + 32 * v97 + (v40 >> 3) + 224) >> (v40 & 7)) & 1) == 0) == ((theSet[1] & 4) == 0))
            {
              goto LABEL_211;
            }

            goto LABEL_180;
          }
        }

        if (v87)
        {
          goto LABEL_180;
        }

LABEL_211:
        if (v40 != 65533)
        {
          goto LABEL_225;
        }

        v98 = [objc_msgSend(v212 attribute:NSGlyphInfoAttributeName atIndex:v201 + v37 effectiveRange:{0), "_baseString"}];
        if (!v98)
        {
          v100 = 65533;
          goto LABEL_237;
        }

        v99 = v98;
        v100 = 65533;
        if ([v98 length] != 1 || objc_msgSend(v99, "characterAtIndex:", 0) != 65533)
        {
          goto LABEL_237;
        }

        if (v20)
        {
          v101 = v18 == v19;
        }

        else
        {
          v101 = 1;
        }

        v90 = 65533;
        if (v101)
        {
          a3 = v211;
          if (v37 - 1 >= v199)
          {
            goto LABEL_186;
          }
        }

        else
        {
          a3 = v211;
        }

        goto LABEL_192;
      }

      a3 = v211;
      v54 = v37 + v211;
      v55 = -2;
      if (WORD1(v40))
      {
        v56 = 2;
      }

      else
      {
        v55 = -1;
        v56 = 1;
      }

      v57 = v54 + v55;
      v58 = [(__CFString *)v204 rangeOfComposedCharacterSequenceAtIndex:v54 + v55];
      a4 = v206;
      if (v58 < v57)
      {
        v60 = v58;
        v61 = v58 - v211;
        if ((v58 - v211) >= 0)
        {
          v21 = v59;
          v62 = v230;
          if (v61 + v59 <= v230)
          {
            if (theString[1])
            {
              v63 = theString[1] + *(&v229 + 1) + v61;
              v64 = v213;
            }

            else
            {
              if (v59 > 64)
              {
                goto LABEL_464;
              }

              v64 = v213;
              if (v61 + v59 > v231 || v61 < *(&v230 + 1))
              {
                if (v61 + 64 < v230)
                {
                  v62 = v61 + 64;
                }

                *(&v230 + 1) = v58 - v211;
                v231 = v62;
                v70.length = v62 - v61;
                if (v229)
                {
                  if (v70.length)
                  {
                    v71 = (v229 + v194 + v58 + *(&v229 + 1));
                    v72 = buffer;
                    do
                    {
                      v73 = *v71++;
                      *v72++ = v73;
                      --v70.length;
                    }

                    while (v70.length);
                  }
                }

                else
                {
                  v70.location = *(&v229 + 1) + v61;
                  CFStringGetCharacters(theString[0], v70, buffer);
                }
              }

              v63 = &buffer[v61 - *(&v230 + 1)];
            }

            v163 = v64;
            if (!v64)
            {
              if (NSDefaultFont_onceToken != -1)
              {
                [NSMutableAttributedString(NSMutableAttributedStringKitAdditions) fixFontAttributeInRange:];
              }

              v163 = NSDefaultFont__defaultFont;
            }

            v164 = [v163 bestMatchingFontForCharacters:v63 length:v21 attributes:objc_msgSend(v212 actualCoveredLength:{"attributesAtIndex:effectiveRange:", v60, 0), 0}];
            a3 = v211;
            if (v164)
            {
              v165 = v164;
              if ([v164 isEqual:v213])
              {
                goto LABEL_463;
              }

              if (v20)
              {
                v167 = (NSIntersectsRange() & (v60 > v210)) != 0 ? v60 - v210 : v215;
                if (v167)
                {
                  [v212 addAttribute:@"NSFont" value:v20 range:{v210, v167}];
                  if (v205)
                  {
                    v168 = v213;
                    if (!v213)
                    {
                      if (NSDefaultFont_onceToken != -1)
                      {
                        [NSMutableAttributedString(NSMutableAttributedStringKitAdditions) fixFontAttributeInRange:];
                      }

                      v168 = NSDefaultFont__defaultFont;
                    }

                    [v212 addAttribute:@"NSOriginalFont" value:v168 range:{v210, v167}];
                  }
                }
              }

              v202 = [v165 _isDefaultFace];
              if ((v202 & 1) == 0)
              {
                v203 = [v165 coveredCharacterSet];
              }

              v37 = v21 - v211 + v60;
              v210 = v60;
              v20 = v165;
              goto LABEL_508;
            }
          }
        }
      }

LABEL_464:
      if (v20)
      {
        v166 = v56;
      }

      else
      {
        v166 = 0;
      }

      v21 = v166 + v215;
      goto LABEL_541;
    }

    if (theString[1])
    {
      v39 = *(&theString[1]->isa + *(&v229 + 1) + v18);
    }

    else if (v229)
    {
      v39 = *(v229 + *(&v229 + 1) + v18);
    }

    else
    {
      if (v231 <= v18 || (v65 = *(&v230 + 1), *(&v230 + 1) > v18))
      {
        v66 = v18 - 4;
        if (v18 < 4)
        {
          v66 = 0;
        }

        if (v66 + 64 < v230)
        {
          v38 = v66 + 64;
        }

        *(&v230 + 1) = v66;
        v231 = v38;
        v237.length = v38 - v66;
        v237.location = *(&v229 + 1) + v66;
        CFStringGetCharacters(theString[0], v237, buffer);
        v65 = *(&v230 + 1);
      }

      v39 = buffer[v18 - v65];
    }

    v40 = v39;
    if (v39 >> 10 == 54 && (v67 = v230, v230 > v37))
    {
      if (theString[1])
      {
        v68 = *(&theString[1]->isa + *(&v229 + 1) + v37);
      }

      else if (v229)
      {
        v68 = *(v229 + *(&v229 + 1) + v37);
      }

      else
      {
        if (v231 <= v37 || (v74 = *(&v230 + 1), *(&v230 + 1) > v37))
        {
          v75 = v18 - 3;
          if (v37 < 4)
          {
            v75 = 0;
          }

          if (v75 + 64 < v230)
          {
            v67 = v75 + 64;
          }

          *(&v230 + 1) = v75;
          v231 = v67;
          v238.length = v67 - v75;
          v238.location = *(&v229 + 1) + v75;
          CFStringGetCharacters(theString[0], v238, buffer);
          v74 = *(&v230 + 1);
        }

        v68 = buffer[v37 - v74];
      }

      v76 = v68 >> 10;
      v77 = (v40 << 10) + v68 - 56613888;
      if (v76 == 55)
      {
        v69 = v18 + 2;
      }

      else
      {
        v69 = v18 + 1;
      }

      if (v76 == 55)
      {
        v40 = v77;
      }

      else
      {
        v40 = v40;
      }
    }

    else
    {
      v69 = v18 + 1;
    }

    v41 = v40 & 0x1FFFF0;
    v207 = (v40 & 0x1FFFF0) == 63584;
    if ((v40 & 0x1FFFF0) != 0xF860)
    {
      goto LABEL_424;
    }

    if (a4 >= v69 + __NSTranscodingHintLength[(v40 - 63584)])
    {
      v37 = v69 + __NSTranscodingHintLength[(v40 - 63584)];
    }

    else
    {
      v37 = a4;
    }

    if (!v209)
    {
      goto LABEL_380;
    }

    LOBYTE(v78) = (theSet[1] & 4) == 0;
    if (HIDWORD(theSet[1]) > v40 || v219 <= v40)
    {
      v78 = (theSet[1] & 4) >> 2;
LABEL_125:
      if (v78)
      {
        goto LABEL_332;
      }

      goto LABEL_380;
    }

    if (WORD1(v40) || (theSet[1] & 2) != 0)
    {
      if (CFCharacterSetIsLongCharacterMember(theSet[0], v40))
      {
        goto LABEL_332;
      }
    }

    else if (*(&v219 + 1))
    {
      if ((theSet[1] & 1) == 0)
      {
        if ((((*(*(&v219 + 1) + (v40 >> 3)) >> (v40 & 7)) & 1) == 0) != ((theSet[1] & 4) == 0))
        {
          goto LABEL_332;
        }

        goto LABEL_380;
      }

      v80 = *(*(&v219 + 1) + 248);
      if (!*(*(&v219 + 1) + 248))
      {
        if ((theSet[1] & 4) == 0)
        {
          goto LABEL_380;
        }

LABEL_332:
        v131 = v69;
        if (v69 >= v37)
        {
LABEL_376:
          if (v131 == v37)
          {
LABEL_377:
            if (!v20)
            {
              a4 = v206;
LABEL_379:
              a3 = v211;
LABEL_463:
              v21 = v215;
              goto LABEL_541;
            }

            v21 = v215;
            [v212 addAttribute:@"NSFont" value:v20 range:{v210, v215}];
            a4 = v206;
            a3 = v211;
            if (!v205)
            {
              goto LABEL_438;
            }

            v89 = v213;
            if (!v213)
            {
              if (NSDefaultFont_onceToken == -1)
              {
LABEL_412:
                v89 = NSDefaultFont__defaultFont;
                goto LABEL_413;
              }

LABEL_544:
              [NSMutableAttributedString(NSMutableAttributedStringKitAdditions) fixFontAttributeInRange:];
              goto LABEL_412;
            }

LABEL_413:
            [v212 addAttribute:@"NSOriginalFont" value:v89 range:{v210, v21}];
            goto LABEL_438;
          }

          goto LABEL_380;
        }

        v132 = -v69;
        v133 = v69 + 64;
        v131 = v69;
        while (2)
        {
          if (v131 >= 4)
          {
            v134 = 4;
          }

          else
          {
            v134 = v131;
          }

          if (v131 < 0 || (v135 = v230, v230 <= v131))
          {
            v137 = 0;
          }

          else
          {
            if (theString[1])
            {
              v136 = theString[1] + *(&v229 + 1);
              goto LABEL_341;
            }

            if (v229)
            {
              v137 = *(v229 + *(&v229 + 1) + v131);
            }

            else
            {
              if (v231 <= v131 || (v141 = *(&v230 + 1), *(&v230 + 1) > v131))
              {
                v142 = -v134;
                v143 = v134 + v132;
                v144 = v133 - v134;
                v145 = v131 + v142;
                v146 = v145 + 64;
                if (v145 + 64 >= v230)
                {
                  v146 = v230;
                }

                *(&v230 + 1) = v145;
                v231 = v146;
                if (v230 >= v144)
                {
                  v135 = v144;
                }

                v241.location = v145 + *(&v229 + 1);
                v241.length = v135 + v143;
                CFStringGetCharacters(theString[0], v241, buffer);
                v141 = *(&v230 + 1);
              }

              v136 = &buffer[-v141];
LABEL_341:
              v137 = v136[v131];
            }
          }

          LOBYTE(v138) = (theSet[1] & 4) == 0;
          if (HIDWORD(theSet[1]) <= v137 && v219 > v137)
          {
            if ((theSet[1] & 2) != 0)
            {
              if (!CFCharacterSetIsLongCharacterMember(theSet[0], v137))
              {
                goto LABEL_376;
              }
            }

            else if (*(&v219 + 1))
            {
              if (theSet[1])
              {
                v140 = *(*(&v219 + 1) + (v137 >> 8));
                if (*(*(&v219 + 1) + (v137 >> 8)))
                {
                  if (v140 == 255)
                  {
                    goto LABEL_348;
                  }

                  if ((((*(*(&v219 + 1) + 32 * v140 + (v137 >> 3) + 224) >> (v137 & 7)) & 1) == 0) == ((theSet[1] & 4) == 0))
                  {
                    goto LABEL_376;
                  }
                }

                else if ((theSet[1] & 4) == 0)
                {
                  goto LABEL_376;
                }
              }

              else if ((((*(*(&v219 + 1) + (v137 >> 3)) >> (v137 & 7)) & 1) == 0) == ((theSet[1] & 4) == 0))
              {
                goto LABEL_376;
              }
            }

            else if (((((theSet[1] & 1) == 0) ^ ((theSet[1] & 4) >> 2)) & 1) == 0)
            {
              goto LABEL_376;
            }
          }

          else
          {
            v138 = (theSet[1] & 4) >> 2;
LABEL_348:
            if ((v138 & 1) == 0)
            {
              goto LABEL_376;
            }
          }

          ++v131;
          --v132;
          ++v133;
          if (v37 == v131)
          {
            goto LABEL_377;
          }

          continue;
        }
      }

      if (v80 == 255)
      {
        goto LABEL_125;
      }

      if ((((*(*(&v219 + 1) + 32 * v80 + ((v40 >> 3) & 0xDLL) + 224) >> (v40 & 7)) & 1) == 0) != ((theSet[1] & 4) == 0))
      {
        goto LABEL_332;
      }
    }

    else if ((((theSet[1] & 1) == 0) ^ ((theSet[1] & 4) >> 2)))
    {
      goto LABEL_332;
    }

LABEL_380:
    if ((v20 == 0) | v202 & 1)
    {
      a4 = v206;
      a3 = v211;
      goto LABEL_424;
    }

    a3 = v211;
    if (!CFCharacterSetIsLongCharacterMember(v203, v40))
    {
      a4 = v206;
      goto LABEL_424;
    }

    if (v69 >= v37)
    {
      v149 = v69;
      goto LABEL_421;
    }

    v147 = -v69;
    v148 = v69 + 64;
    v149 = v69;
    while (1)
    {
      v150 = v149 >= 4 ? 4 : v149;
      if (v149 < 0 || (v151 = v230, v230 <= v149))
      {
        v153 = 0;
      }

      else
      {
        if (theString[1])
        {
          v152 = theString[1] + *(&v229 + 1);
LABEL_392:
          v153 = v152[v149];
          goto LABEL_394;
        }

        if (!v229)
        {
          if (v231 <= v149 || (v154 = *(&v230 + 1), *(&v230 + 1) > v149))
          {
            v155 = -v150;
            v156 = v150 + v147;
            v157 = v148 - v150;
            v158 = v149 + v155;
            v159 = v158 + 64;
            if (v158 + 64 >= v230)
            {
              v159 = v230;
            }

            *(&v230 + 1) = v158;
            v231 = v159;
            if (v230 >= v157)
            {
              v151 = v157;
            }

            v242.location = v158 + *(&v229 + 1);
            v242.length = v151 + v156;
            CFStringGetCharacters(theString[0], v242, buffer);
            v154 = *(&v230 + 1);
          }

          v152 = &buffer[-v154];
          goto LABEL_392;
        }

        v153 = *(v229 + *(&v229 + 1) + v149);
      }

LABEL_394:
      if (!CFCharacterSetIsLongCharacterMember(v203, v153))
      {
        break;
      }

      ++v149;
      --v147;
      ++v148;
      if (v37 == v149)
      {
        a4 = v206;
        a3 = v211;
        goto LABEL_423;
      }
    }

    [v212 addAttribute:@"NSFont" value:v20 range:{v210, v215}];
    if (v205)
    {
      v160 = v213;
      a3 = v211;
      if (!v213)
      {
        if (NSDefaultFont_onceToken != -1)
        {
          [NSMutableAttributedString(NSMutableAttributedStringKitAdditions) fixFontAttributeInRange:];
        }

        v160 = NSDefaultFont__defaultFont;
      }

      [v212 addAttribute:@"NSOriginalFont" value:v160 range:{v210, v215}];
      v20 = 0;
    }

    else
    {
      v20 = 0;
      a3 = v211;
    }

LABEL_421:
    v88 = v149 == v37;
    a4 = v206;
    if (v88)
    {
LABEL_423:
      v202 = 0;
      v21 = a3 - v210 + v37;
      goto LABEL_541;
    }

LABEL_424:
    if ((v40 - 8232) < 2)
    {
      v37 = v69;
      goto LABEL_429;
    }

    v21 = v215;
    if (v40 != 160 && v40 != 65532)
    {
      v37 = v69;
      goto LABEL_44;
    }

    v37 = v69;
LABEL_430:
    if (v20)
    {
      [v212 addAttribute:@"NSFont" value:v20 range:{v210, v21}];
      if (v205)
      {
        v161 = v213;
        if (!v213)
        {
          if (NSDefaultFont_onceToken != -1)
          {
            [NSMutableAttributedString(NSMutableAttributedStringKitAdditions) fixFontAttributeInRange:];
          }

          v161 = NSDefaultFont__defaultFont;
        }

        [v212 addAttribute:@"NSOriginalFont" value:v161 range:{v210, v21}];
      }
    }

    if (v213)
    {
LABEL_438:
      v20 = 0;
    }

    else
    {
      if (NSDefaultFont_onceToken != -1)
      {
        [NSMutableAttributedString(NSMutableAttributedStringKitAdditions) fixFontAttributeInRange:];
      }

      v20 = NSDefaultFont__defaultFont;
      v202 = [NSDefaultFont__defaultFont _isDefaultFace];
      if ((v202 & 1) == 0)
      {
        v203 = [v20 coveredCharacterSet];
      }

      v162 = v201 + v37;
      if (v40 >= 0x10000)
      {
        v21 = 2;
      }

      else
      {
        v21 = 1;
      }

      if (v40 >= 0x10000)
      {
        v162 = v200 + v37;
      }

      v210 = v162;
      v213 = 0;
    }

LABEL_541:
    v18 = v37;
    v19 = v214;
  }

  while (v37 < a4);
  v7 = v197;
  if (v20)
  {
    [v212 addAttribute:@"NSFont" value:v20 range:{v210, v21}];
    v188 = v208;
    if (v205)
    {
      v189 = v213;
      if (!v213)
      {
        if (NSDefaultFont_onceToken != -1)
        {
          [NSMutableAttributedString(NSMutableAttributedStringKitAdditions) fixFontAttributeInRange:];
        }

        v189 = NSDefaultFont__defaultFont;
      }

      [v212 addAttribute:@"NSOriginalFont" value:v189 range:{v210, v21}];
    }
  }

  else
  {
    v188 = v208;
  }

  v190 = v213;
LABEL_555:

  return MEMORY[0x193AD3F50](v7);
}

- (unint64_t)fixParagraphStyleAttributeInRange:()NSMutableAttributedStringKitAdditions
{
  if (a3)
  {
    v7 = a3 - 1;
  }

  else
  {
    v7 = 0;
  }

  result = [a1 length];
  if (result > a3 + a4)
  {
    v9 = a3 + a4 + 1;
  }

  else
  {
    v9 = result;
  }

  if (v7 < v9)
  {
    v10 = 0;
    v17 = 0;
    v18 = 0;
    while (1)
    {
      result = [a1 attribute:@"NSParagraphStyle" atIndex:v7 effectiveRange:&v17];
      v7 = v18 + v17;
      if (v18 + v17 >= v9)
      {
        return result;
      }

      v11 = result;
      if (!v10)
      {
        v10 = [a1 string];
      }

      result = [v10 characterAtIndex:v7 - 1];
      if (result <= 12)
      {
        break;
      }

      if (result != 8233)
      {
        if (result != 13)
        {
          goto LABEL_22;
        }

        result = [v10 length];
        if (v7 < result)
        {
          result = [v10 characterAtIndex:v7];
          if (result == 10)
          {
            goto LABEL_22;
          }
        }
      }

LABEL_31:
      if (v7 >= v9)
      {
        return result;
      }
    }

    if (result == 10 || result == 12)
    {
      goto LABEL_31;
    }

LABEL_22:
    v16 = 0;
    [v10 getParagraphStart:0 end:&v16 contentsEnd:0 forRange:{v7, 0}];
    v13 = v16;
    if (v16)
    {
      --v16;
    }

    else
    {
      v13 = 1;
    }

    v14 = 0;
    v15 = 0;
    result = [a1 attribute:@"NSParagraphStyle" atIndex:v7 longestEffectiveRange:&v14 inRange:{v7, v13 - v7}];
    if (result != v11 || v15 + v14 < v13)
    {
      if (v11)
      {
        result = [a1 addAttribute:@"NSParagraphStyle" value:v11 range:{v7, v13 - v7}];
      }

      else
      {
        result = [a1 removeAttribute:@"NSParagraphStyle" range:{v7, v13 - v7}];
      }
    }

    v7 = v16 + 1;
    goto LABEL_31;
  }

  return result;
}

- (void)fixAttachmentAttributeInRange:()NSMutableAttributedStringKitAdditions
{
  v6 = a1;
  v7 = [a1 string];
  v59 = a3 + a4;
  theString = v7;
  v74 = a3;
  v75 = a4;
  CharactersPtr = CFStringGetCharactersPtr(v7);
  if (CharactersPtr)
  {
    CStringPtr = 0;
  }

  else
  {
    CStringPtr = CFStringGetCStringPtr(v7, 0x600u);
  }

  v76 = 0;
  v77 = 0;
  v73 = CStringPtr;
  if (a3 < v59)
  {
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    *buffer = 0u;
    v64 = 0u;
    v54 = -a3;
    v53 = 64 - a3;
    v51 = &buffer[-a3];
    v52 = 0x7FFFFFFFFFFFFFFFLL * a3;
    v9 = a3;
    v55 = a3;
    v56 = a4;
    v57 = v6;
    v58 = v7;
    do
    {
      v61 = 0;
      v62 = 0;
      v10 = [v6 attributesAtIndex:v9 effectiveRange:{&v61, v51, v52 * 2, v53}];
      v11 = @"CTAdaptiveImageProvider";
      if (![v10 objectForKeyedSubscript:@"CTAdaptiveImageProvider"])
      {
        if ([v10 objectForKeyedSubscript:@"NSAttachment"])
        {
          v11 = @"NSAttachment";
        }

        else
        {
          v11 = 0;
        }
      }

      v12 = [v10 objectForKeyedSubscript:@"NSTextParagraphAnchoredAttachment"];
      if (!v12)
      {
        goto LABEL_65;
      }

      v13 = v62 + v61;
      if (!v9)
      {
LABEL_30:
        v19 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_31;
      }

      v14 = v12;
      v15 = v9 - 1;
      if (v9 <= a3)
      {
        v18 = [(__CFString *)v7 characterAtIndex:v9 - 1];
      }

      else
      {
        v16 = v15 - a3;
        if ((v15 - a3) < 0 || (v17 = v75, v75 <= v16))
        {
LABEL_26:
          if ([v6 attribute:@"NSTextParagraphAnchoredAttachment" atIndex:v9 - 1 effectiveRange:0] == v14)
          {
            goto LABEL_30;
          }

          goto LABEL_27;
        }

        if (CharactersPtr)
        {
          v18 = CharactersPtr[v74 + v16];
        }

        else if (v73)
        {
          v18 = v73[v74 + v16];
        }

        else
        {
          if (v77 <= v16 || (v49 = v76, v76 > v16))
          {
            v50 = v16 - 4;
            if (v16 < 4)
            {
              v50 = 0;
            }

            if (v50 + 64 < v75)
            {
              v17 = v50 + 64;
            }

            v76 = v50;
            v77 = v17;
            v80.length = v17 - v50;
            v80.location = v74 + v50;
            CFStringGetCharacters(theString, v80, buffer);
            v49 = v76;
          }

          v18 = buffer[v16 - v49];
        }
      }

      if (v18 > 0xCu)
      {
        if (v18 != 8233 && (v18 != 13 || v9 < [(__CFString *)v7 length]&& [(__CFString *)v7 characterAtIndex:v9]== 10))
        {
          goto LABEL_26;
        }
      }

      else if (v18 != 10 && v18 != 12)
      {
        goto LABEL_26;
      }

      if ([v6 attribute:@"NSTextParagraphAnchoredAttachment" atIndex:v9 - 1 effectiveRange:0] != v14)
      {
        goto LABEL_30;
      }

LABEL_27:
      v19 = v9;
      v20 = v13 - v9;
      if (v13 != v9)
      {
        v21 = v9;
LABEL_64:
        [v6 removeAttribute:@"NSTextParagraphAnchoredAttachment" range:{v21, v20}];
        goto LABEL_65;
      }

LABEL_31:
      v22 = v9 - a3;
      if ((v9 - a3) < 0)
      {
        goto LABEL_57;
      }

      v23 = v75;
      if (v75 <= v22)
      {
        goto LABEL_57;
      }

      if (CharactersPtr)
      {
        v24 = CharactersPtr[v74 + v22];
      }

      else if (v73)
      {
        v24 = v73[v74 + v22];
      }

      else
      {
        if (v77 <= v22 || (v25 = v76, v76 > v22))
        {
          v26 = v22 - 4;
          if (v22 < 4)
          {
            v26 = 0;
          }

          if (v26 + 64 < v75)
          {
            v23 = v26 + 64;
          }

          v76 = v26;
          v77 = v23;
          v78.length = v23 - v26;
          v78.location = v74 + v26;
          CFStringGetCharacters(theString, v78, buffer);
          v25 = v76;
        }

        v24 = buffer[v22 - v25];
      }

      if (v24 > 0xCu)
      {
        if (v24 != 8233 && (v24 != 13 || v9 + 1 < [(__CFString *)v58 length]&& [(__CFString *)v58 characterAtIndex:v9 + 1]== 10))
        {
          goto LABEL_57;
        }
      }

      else
      {
        v27 = v24 == 10 || v24 == 12;
        if (!v27)
        {
LABEL_57:
          v60 = 0;
          v7 = v58;
          [(__CFString *)v58 getParagraphStart:0 end:&v60 contentsEnd:0 forRange:v9, v13 - v9];
          if (v13 >= v60)
          {
            v20 = v13 - v60;
          }

          else
          {
            v20 = 0;
          }

          if (v60 >= v13)
          {
            v21 = v19;
          }

          else
          {
            v21 = v60;
          }

          goto LABEL_63;
        }
      }

      v48 = 1;
      if (v24 == 13)
      {
        v48 = 2;
      }

      v21 = v48 + v9;
      v20 = v13 - (v48 + v9);
      v7 = v58;
      if (v13 <= v48 + v9)
      {
        goto LABEL_65;
      }

LABEL_63:
      if (v20)
      {
        goto LABEL_64;
      }

LABEL_65:
      if (v11)
      {
        v28 = a3 - v9;
        if (a3 == v9)
        {
          v29 = 0;
        }

        else
        {
          v29 = a3;
        }

        if (a3 == v9)
        {
          v30 = v59;
        }

        else
        {
          v30 = a4;
        }

        [v6 attribute:v11 atIndex:v9 longestEffectiveRange:&v61 inRange:{v29, v30}];
        if (!CharactersPtr && v62 == 1)
        {
          if ([(__CFString *)v7 characterAtIndex:v9]!= 65532)
          {
            v32 = v61;
            v31 = v62;
LABEL_76:
            a3 = v55;
            a4 = v56;
            v6 = v57;
            v7 = v58;
            if (v31)
            {
              [v57 removeAttribute:v11 range:{v32, v31}];
            }
          }

          goto LABEL_105;
        }

        if (v9 < v62 + v61)
        {
          v33 = 0;
          v31 = 0;
          v32 = 0;
          v34 = v54 + v9;
          v35 = v53 + v9;
          v36 = v54 + v9;
          while (1)
          {
            if (v36 >= 4)
            {
              v37 = 4;
            }

            else
            {
              v37 = v36;
            }

            v38 = v34 + v33;
            if ((v34 + v33) < 0 || (v39 = v75, v75 <= v38))
            {
LABEL_93:
              v27 = v31++ == 0;
              if (v27)
              {
                v32 = v9 + v33;
              }

              goto LABEL_95;
            }

            if (CharactersPtr)
            {
              break;
            }

            if (!v73)
            {
              if (v77 <= v38 || (v42 = v76, v76 > v38))
              {
                v43 = v54 - v37;
                v44 = v37 + v28;
                v45 = v35 - v37;
                v46 = v9 + v33 + v43;
                v47 = v46 + 64;
                if (v46 + 64 >= v75)
                {
                  v47 = v75;
                }

                v76 = v46;
                v77 = v47;
                if (v75 >= v45)
                {
                  v39 = v45;
                }

                v79.location = v46 + v74;
                v79.length = v39 + v44;
                CFStringGetCharacters(theString, v79, buffer);
                v42 = v76;
              }

              v40 = &v51[v9 - v42];
              goto LABEL_87;
            }

            v41 = v73[v74 + v34 + v33];
LABEL_90:
            if (v41 != 65532)
            {
              goto LABEL_93;
            }

            if (v31 >= 2)
            {
              [v57 removeAttribute:v11 range:{v32, v31}];
              v31 = 0;
            }

LABEL_95:
            ++v33;
            ++v36;
            --v28;
            ++v35;
            if (v9 + v33 >= v62 + v61)
            {
              goto LABEL_76;
            }
          }

          v40 = &CharactersPtr[v74 + v9 + v52];
LABEL_87:
          v41 = *(v40 + 2 * v33);
          goto LABEL_90;
        }
      }

LABEL_105:
      v9 = v62 + v61;
    }

    while (v62 + v61 < v59);
  }
}

- (unint64_t)_fixGlyphInfo:()NSMutableAttributedStringKitAdditions inRange:
{
  result = [objc_msgSend(a3 "_baseString")];
  if (result <= a5)
  {
    v10 = result;
    v13 = 0;
    v14 = 0;
    result = [a1 attribute:@"NSFont" atIndex:a4 longestEffectiveRange:&v13 inRange:{a4, a5}];
    if (v13 == a4 && v14 == a5)
    {
      result = [a3 _glyphForFont:result baseString:{objc_msgSend(objc_msgSend(a1, "string"), "substringWithRange:", a4, v10)}];
      if (result)
      {
        v12 = v10;
      }

      else
      {
        v12 = 0;
      }

      a4 += v12;
      a5 -= v12;
    }
  }

  if (a5)
  {
    return [a1 removeAttribute:NSGlyphInfoAttributeName range:{a4, a5}];
  }

  return result;
}

- (unint64_t)fixGlyphInfoAttributeInRange:()NSMutableAttributedStringKitAdditions
{
  v12 = 0;
  v13 = 0;
  v7 = a3 + a4;
  if (a3)
  {
    v8 = [a1 attribute:NSGlyphInfoAttributeName atIndex:a3 - 1 longestEffectiveRange:&v12 inRange:{0, a3}];
    if (v8)
    {
      [a1 _fixGlyphInfo:v8 inRange:{v12, v13}];
    }
  }

  if (a3 >= v7)
  {
    v9 = a3;
  }

  else
  {
    v9 = a3;
    do
    {
      v10 = [a1 attribute:NSGlyphInfoAttributeName atIndex:v9 longestEffectiveRange:&v12 inRange:{a3, a4}];
      if (v10)
      {
        [a1 _fixGlyphInfo:v10 inRange:{v12, v13}];
      }

      v9 = v13 + v12;
    }

    while (v13 + v12 < v7);
  }

  result = [a1 length];
  if (v9 < result)
  {
    result = [a1 attribute:NSGlyphInfoAttributeName atIndex:v9 longestEffectiveRange:&v12 inRange:{v9, objc_msgSend(a1, "length") - v9}];
    if (result)
    {
      return [a1 _fixGlyphInfo:result inRange:{v12, v13}];
    }
  }

  return result;
}

- (void)setAlignment:()NSMutableAttributedStringKitAdditions range:
{
  if (a5)
  {
    v8 = result;
    v9 = a4 + a5;
    v10 = [result zone];
    [v8 beginEditing];
    if (a4 < v9)
    {
      v11 = a4;
      do
      {
        v14 = 0;
        v15 = 0;
        v12 = [v8 attribute:@"NSParagraphStyle" atIndex:v11 longestEffectiveRange:&v14 inRange:{a4, a5}];
        if (!v12)
        {
          v12 = +[NSParagraphStyle defaultParagraphStyle];
        }

        if ([(NSParagraphStyle *)v12 alignment]!= a3)
        {
          v13 = [(NSParagraphStyle *)v12 mutableCopyWithZone:v10];
          [v13 setAlignment:a3];
          [v8 addAttribute:@"NSParagraphStyle" value:v13 range:{v14, v15}];
        }

        v11 = v15 + v14;
      }

      while (v15 + v14 < v9);
    }

    return [v8 endEditing];
  }

  return result;
}

- (void)setBaseWritingDirection:()NSMutableAttributedStringKitAdditions range:
{
  if (a5)
  {
    v8 = result;
    v9 = a4 + a5;
    v10 = [result zone];
    [v8 beginEditing];
    if (a4 < v9)
    {
      v11 = a4;
      do
      {
        v14 = 0;
        v15 = 0;
        v12 = [v8 attribute:@"NSParagraphStyle" atIndex:v11 longestEffectiveRange:&v14 inRange:{a4, a5}];
        if (!v12)
        {
          v12 = +[NSParagraphStyle defaultParagraphStyle];
        }

        if ([(NSParagraphStyle *)v12 baseWritingDirection]!= a3)
        {
          v13 = [(NSParagraphStyle *)v12 mutableCopyWithZone:v10];
          [v13 setBaseWritingDirection:a3];
          [v8 addAttribute:@"NSParagraphStyle" value:v13 range:{v14, v15}];
        }

        v11 = v15 + v14;
      }

      while (v15 + v14 < v9);
    }

    return [v8 endEditing];
  }

  return result;
}

- (uint64_t)_changeIntAttribute:()NSMutableAttributedStringKitAdditions by:range:
{
  result = [a1 zone];
  if (a6)
  {
    v12 = result;
    [a1 beginEditing];
    if (a5 < a5 + a6)
    {
      v13 = a5;
      do
      {
        v16 = 0;
        v17 = 0;
        v14 = [a1 attribute:a3 atIndex:v13 longestEffectiveRange:&v16 inRange:{a5, a6}];
        if (v14)
        {
          v14 = [v14 integerValue];
        }

        if (&v14[a4])
        {
          v15 = [objc_msgSend(MEMORY[0x1E696AD98] allocWithZone:{v12), "initWithInteger:", &v14[a4]}];
          [a1 addAttribute:a3 value:v15 range:{v16, v17}];
        }

        else
        {
          [a1 removeAttribute:a3 range:{v16, v17}];
        }

        v13 = v17 + v16;
      }

      while (v17 + v16 < a5 + a6);
    }

    return [a1 endEditing];
  }

  return result;
}

- (unint64_t)convertBidiControlCharactersToWritingDirectionForParagraphAtIndex:()NSMutableAttributedStringKitAdditions
{
  v5 = [a1 mutableString];
  v6 = [MEMORY[0x1E695DF70] array];
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v7 = _NSBidiEmbeddingAndOverrideCharSet();
  [v5 getParagraphStart:&v19 end:&v17 contentsEnd:&v18 forRange:{a3, 0}];
  v8 = v18;
  v9 = v19;
  if (v18 > v19)
  {
    v10 = [v5 characterAtIndex:v19];
    v9 = v19;
    if ((v10 & 0xFFFE) == 0x200E)
    {
      [a1 setBaseWritingDirection:v10 == 8207 range:{v19, v17 - v19}];
      [v5 deleteCharactersInRange:{v19, 1}];
      v8 = v18 - 1;
      --v17;
      --v18;
      v9 = v19;
    }

    else
    {
      v8 = v18;
    }
  }

  if (v9 < v8)
  {
    do
    {
      v11 = [v5 rangeOfCharacterFromSet:v7 options:0 range:{v9, v8 - v9}];
      if (v11 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = v18;
      }

      else
      {
        v12 = v11;
      }

      if (v12 > v9)
      {
        if ([v6 count])
        {
          [a1 addAttribute:@"NSWritingDirection" value:objc_msgSend(MEMORY[0x1E695DEC8] range:{"arrayWithArray:", v6), v9, v12 - v9}];
        }

        else
        {
          [a1 removeAttribute:@"NSWritingDirection" range:{v9, v12 - v9}];
        }
      }

      v8 = v18;
      if (v12 >= v18)
      {
        break;
      }

      v9 = v12;
      v13 = [v5 characterAtIndex:v12];
      if (v13 <= 8235)
      {
        if (v13 == 8234)
        {
          v14 = MEMORY[0x1E696AD98];
          v15 = 0;
          goto LABEL_26;
        }

        if (v13 == 8235)
        {
          v14 = MEMORY[0x1E696AD98];
          v15 = 1;
          goto LABEL_26;
        }
      }

      else
      {
        switch(v13)
        {
          case 8236:
            if ([v6 count])
            {
              [v6 removeLastObject];
            }

            break;
          case 8237:
            v14 = MEMORY[0x1E696AD98];
            v15 = 2;
            goto LABEL_26;
          case 8238:
            v14 = MEMORY[0x1E696AD98];
            v15 = 3;
LABEL_26:
            [v6 addObject:{objc_msgSend(v14, "numberWithUnsignedInteger:", v15)}];
            break;
        }
      }

      [v5 deleteCharactersInRange:{v12, 1}];
      v8 = v18 - 1;
      --v17;
      v18 = v8;
    }

    while (v12 < v8);
  }

  if (v17 > v8)
  {
    [a1 removeAttribute:@"NSWritingDirection" range:?];
  }

  return v19;
}

- (uint64_t)convertBidiControlCharactersToWritingDirection
{
  [a1 beginEditing];
  if ([a1 length])
  {
    v2 = 0;
    do
    {
      v3 = [a1 convertBidiControlCharactersToWritingDirectionForParagraphAtIndex:v2];
      v2 = v3 + v4;
    }

    while (v3 + v4 < [a1 length]);
  }

  return [a1 endEditing];
}

- (unint64_t)convertWritingDirectionToBidiControlCharactersForParagraphAtIndex:()NSMutableAttributedStringKitAdditions
{
  v5 = [a1 mutableString];
  v32 = 0;
  v33 = 0;
  v31 = 0;
  v27 = a1;
  v6 = [objc_msgSend(a1 attribute:@"NSParagraphStyle" atIndex:a3 effectiveRange:{0), "baseWritingDirection"}];
  v29 = 0;
  v30 = 0;
  v28 = 0;
  [(__CFString *)v5 getParagraphStart:&v33 end:&v31 contentsEnd:&v32 forRange:a3, 0];
  v7 = v32;
  v8 = v33;
  v9 = v6 != -1 && v32 > v33;
  if (v9)
  {
    v10 = _NSStringImputedBaseWritingDirectionAtIndex(v5, v33, v33, v32 - v33);
    if (v10 == -1 || v10 == v6)
    {
      v7 = v32;
      v8 = v33;
    }

    else
    {
      if (v6 == 1)
      {
        v12 = 8207;
      }

      else
      {
        v12 = 8206;
      }

      v28 = v12;
      v13 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v28 length:1];
      [(__CFString *)v5 insertString:v13 atIndex:v33];
      v8 = v33 + 1;
      v7 = ++v32;
      ++v33;
      ++v31;
    }
  }

  if (v8 >= v7)
  {
    v28 = 8236;
LABEL_41:
    v24 = v31;
    goto LABEL_42;
  }

  v14 = 0;
  v15 = 0;
  v26 = @"NSWritingDirection";
  do
  {
    v16 = [v27 attribute:v26 atIndex:v8 longestEffectiveRange:&v29 inRange:{v8, v7 - v8, v26}];
    v17 = [v16 count];
    v18 = v17;
    v19 = 0;
    if (v15 >= v17)
    {
      v20 = v17;
    }

    else
    {
      v20 = v15;
    }

    if (v20)
    {
      while ([objc_msgSend(v16 objectAtIndex:{v19), "isEqual:", objc_msgSend(v14, "objectAtIndex:", v19)}])
      {
        if (v20 == ++v19)
        {
          v19 = v20;
          break;
        }
      }
    }

    v28 = 8236;
    v9 = v15 > v19;
    v21 = v15 - v19;
    if (v9)
    {
      do
      {
        -[__CFString insertString:atIndex:](v5, "insertString:atIndex:", [MEMORY[0x1E696AEC0] stringWithCharacters:&v28 length:1], v8++);
        ++v31;
        ++v32;
        --v21;
      }

      while (v21);
    }

    if (v19 >= v18)
    {
      v7 = v32;
    }

    else
    {
      do
      {
        v28 = 8234;
        v22 = [objc_msgSend(v16 objectAtIndex:{v19), "unsignedIntegerValue"}];
        if (v22)
        {
          ++v28;
        }

        if ((v22 & 2) != 0)
        {
          v28 += 3;
        }

        -[__CFString insertString:atIndex:](v5, "insertString:atIndex:", [MEMORY[0x1E696AEC0] stringWithCharacters:&v28 length:1], v8++);
        v7 = v32 + 1;
        ++v31;
        ++v32;
        ++v19;
      }

      while (v18 != v19);
    }

    v8 += v30;
    v14 = v16;
    v15 = v18;
  }

  while (v8 < v7);
  v28 = 8236;
  if (!v18)
  {
    goto LABEL_41;
  }

  do
  {
    v23 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v28 length:1];
    [(__CFString *)v5 insertString:v23 atIndex:v32];
    v24 = ++v31;
    ++v32;
    --v18;
  }

  while (v18);
LABEL_42:
  [v27 removeAttribute:@"NSWritingDirection" range:{v33, v24 - v33}];
  return v33;
}

@end