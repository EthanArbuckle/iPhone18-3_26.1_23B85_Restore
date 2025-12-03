@interface NSGlyphGenerator
+ (NSGlyphGenerator)sharedGlyphGenerator;
+ (id)defaultGlyphGenerator;
+ (void)initialize;
- (void)generateGlyphsForGlyphStorage:(id)glyphStorage desiredNumberOfCharacters:(NSUInteger)nChars glyphIndex:(NSUInteger *)glyphIndex characterIndex:(NSUInteger *)charIndex;
@end

@implementation NSGlyphGenerator

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
    if (v2)
    {
      v3 = NSClassFromString(v2);
      if (v3)
      {
        __NSGlyphGeneratorConcreteClass = v3;
      }
    }
  }
}

+ (id)defaultGlyphGenerator
{
  v3 = __NSGlyphGeneratorConcreteClass;
  if (__NSGlyphGeneratorConcreteClass)
  {

    return [v3 sharedGlyphGenerator];
  }

  else
  {
    if (defaultGlyphGenerator_onceToken != -1)
    {
      +[NSGlyphGenerator defaultGlyphGenerator];
    }

    return defaultGlyphGenerator_glyphGenerator;
  }
}

NSGlyphGenerator *__41__NSGlyphGenerator_defaultGlyphGenerator__block_invoke()
{
  result = objc_alloc_init(NSGlyphGenerator);
  defaultGlyphGenerator_glyphGenerator = result;
  return result;
}

+ (NSGlyphGenerator)sharedGlyphGenerator
{
  v2 = objc_opt_class();

  return [v2 defaultGlyphGenerator];
}

- (void)generateGlyphsForGlyphStorage:(id)glyphStorage desiredNumberOfCharacters:(NSUInteger)nChars glyphIndex:(NSUInteger *)glyphIndex characterIndex:(NSUInteger *)charIndex
{
  v6 = (MEMORY[0x1EEE9AC00])(self, a2, glyphStorage, nChars, glyphIndex, charIndex);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v128[2] = *MEMORY[0x1E69E9840];
  range.length = 0;
  v115 = 0;
  attributedString = [v13 attributedString];
  string = [attributedString string];
  v99 = v8;
  v101 = *v8;
  range.location = *v8;
  theString = string;
  Length = CFStringGetLength(string);
  v100 = v10;
  v17 = *v10;
  layoutOptions = [v14 layoutOptions];
  objc_opt_class();
  delegate = 0;
  if (objc_opt_isKindOfClass())
  {
    delegate = [v14 delegate];
  }

  if (objc_opt_respondsToSelector())
  {
    v19 = delegate;
  }

  else
  {
    v19 = 0;
  }

  v20 = Length - v101;
  v21 = v101;
  if (v20 >= v12)
  {
    v20 = v12;
  }

  v102 = v20;
  v104 = v20 + v101;
  if (v101 < v20 + v101)
  {
    v22 = v101;
    v105 = v14;
    v106 = v19;
    while (1)
    {
      while (1)
      {
        v23 = [attributedString attributesAtIndex:v22 longestEffectiveRange:&range.length inRange:{v21, v102}];
        font = [v23 objectForKey:@"NSFont"];
        location = range.length;
        v25 = v115;
        if (range.length < range.location)
        {
          v25 = range.length - range.location + v115;
          range.length = range.location;
          v115 = v25;
          location = range.location;
        }

        if (v25 + location >= v104)
        {
          v25 = v104 - range.location;
          v115 = v104 - range.location;
        }

        if (v25 == 1 && CFStringGetCharacterAtIndex(theString, range.location) == 65532 && [v23 objectForKey:@"NSAttachment"])
        {
          v121[0] = -1;
          v120[0] = 2;
          if (!v19 || (v26 = [v19 layoutManager:v14 shouldGenerateGlyphs:v121 properties:v120 characterIndexes:&range font:font forGlyphRange:{v17, 1}]) == 0)
          {
            [v14 setGlyphs:v121 properties:v120 characterIndexes:&range font:font forGlyphRange:{v17, 1}];
            v26 = 1;
          }

          v17 += v26;
          v22 = ++range.location;
          goto LABEL_208;
        }

        if (!font)
        {
          v30 = v115;
          v31 = range.location;
          *&__pattern8[0] = 1;
          bzero(v121, 0x800uLL);
          memset_pattern8(v120, __pattern8, 0x2000uLL);
          if (v30)
          {
            do
            {
              if (v30 >= 0x400)
              {
                v32 = 1024;
              }

              else
              {
                v32 = v30;
              }

              v33 = (v32 + 1) & 0xFFE;
              v34 = vdupq_n_s64(v32 - 1);
              v35 = v31;
              v36 = v119;
              v37 = xmmword_18E856290;
              do
              {
                v38 = vmovn_s64(vcgeq_u64(v34, v37));
                if (v38.i8[0])
                {
                  *(v36 - 1) = v35;
                }

                if (v38.i8[4])
                {
                  *v36 = v35 + 1;
                }

                v37 = vaddq_s64(v37, vdupq_n_s64(2uLL));
                v36 += 2;
                v35 += 2;
                v33 -= 2;
              }

              while (v33);
              if (!v19 || (v39 = [v19 layoutManager:v14 shouldGenerateGlyphs:v121 properties:v120 characterIndexes:v118 font:0 forGlyphRange:{v17, v32}]) == 0)
              {
                [v14 setGlyphs:v121 properties:v120 characterIndexes:v118 font:0 forGlyphRange:{v17, v32}];
                v39 = v32;
              }

              v17 += v39;
              v31 += v32;
              v30 -= v32;
            }

            while (v30);
            v40 = v115;
            v31 = range.location;
          }

          else
          {
            v40 = 0;
          }

          v22 = v31 + v40;
          goto LABEL_206;
        }

        v27 = [v23 objectForKey:NSGlyphInfoAttributeName];
        if (!v27)
        {
          break;
        }

        v28 = [v27 _glyphForFont:font baseString:{-[__CFString substringWithRange:](theString, "substringWithRange:", range.length, v115)}];
        if (!v28)
        {
          break;
        }

        if (v28 == 0xFFFFFF)
        {
          LOWORD(v28) = -1;
          v29 = 2;
        }

        else
        {
          v29 = 0;
        }

        v121[0] = v28;
        v120[0] = v29;
        if (!v19 || (v89 = [v19 layoutManager:v14 shouldGenerateGlyphs:v121 properties:v120 characterIndexes:&range font:font forGlyphRange:{v17, 1}]) == 0)
        {
          [v14 setGlyphs:v121 properties:v120 characterIndexes:&range font:font forGlyphRange:{v17, 1}];
          v89 = 1;
        }

        v17 += v89;
        v22 = ++range.location;
        v90 = --v115;
        if (!v115)
        {
          goto LABEL_207;
        }

        *&__pattern8[0] = 1;
        bzero(v121, 0x800uLL);
        memset_pattern8(v120, __pattern8, 0x2000uLL);
        do
        {
          if (v90 >= 0x400)
          {
            v91 = 1024;
          }

          else
          {
            v91 = v90;
          }

          v92 = (v91 + 1) & 0xFFE;
          v93 = vdupq_n_s64(v91 - 1);
          v94 = v22;
          v95 = v119;
          v96 = xmmword_18E856290;
          do
          {
            v97 = vmovn_s64(vcgeq_u64(v93, v96));
            if (v97.i8[0])
            {
              *(v95 - 1) = v94;
            }

            if (v97.i8[4])
            {
              *v95 = v94 + 1;
            }

            v96 = vaddq_s64(v96, vdupq_n_s64(2uLL));
            v95 += 2;
            v94 += 2;
            v92 -= 2;
          }

          while (v92);
          if (!v19 || (v98 = [v19 layoutManager:v14 shouldGenerateGlyphs:v121 properties:v120 characterIndexes:v118 font:font forGlyphRange:{v17, v91}]) == 0)
          {
            [v14 setGlyphs:v121 properties:v120 characterIndexes:v118 font:font forGlyphRange:{v17, v91}];
            v98 = v91;
          }

          v17 += v98;
          v22 += v91;
          v90 -= v91;
        }

        while (v90);
        v22 = range.location + v115;
LABEL_206:
        range.location = v22;
LABEL_207:
        v21 = v101;
LABEL_208:
        if (v22 >= v104)
        {
          goto LABEL_211;
        }
      }

      v41 = v115;
      v22 = range.location;
      if (!v115)
      {
        goto LABEL_182;
      }

      do
      {
        if (v41 >= 0x400)
        {
          v42 = 1024;
        }

        else
        {
          v42 = v41;
        }

        v129.location = v22;
        v129.length = v42;
        CFStringGetCharacters(theString, v129, v122);
        v43 = 1023;
        if ((v122[1023] & 0xFC00) != 0xD800)
        {
          v43 = 1024;
        }

        if (v41 <= 0x3FF)
        {
          v44 = v42;
        }

        else
        {
          v44 = v43;
        }

        CTFontGetGlyphsForCharacters(font, v122, v121, v44);
        v45 = range.location;
        _isDefaultFace = [(__CTFont *)font _isDefaultFace];
        if (__NSInsertNominalGlyphs_onceToken != -1)
        {
          [NSGlyphGenerator generateGlyphsForGlyphStorage:desiredNumberOfCharacters:glyphIndex:characterIndex:];
        }

        if ((layoutOptions & 2) != 0)
        {
          *&__pattern8[0] = 0x20002E25CA2423;
          CTFontGetGlyphsForCharacters(font, __pattern8, v123, 4);
          v47 = 0;
          do
          {
            v48 = v123[v47 / 2];
            if (v47 > 5)
            {
              break;
            }

            v47 += 2;
          }

          while (!v48);
        }

        else
        {
          v48 = 0;
        }

        v49 = &v122[v44];
        __memset_chk();
        v50 = (v44 + 1) & 0xFFE;
        v51 = vdupq_n_s64(v44 - 1);
        v52 = v119;
        v53 = xmmword_18E856290;
        do
        {
          v54 = vmovn_s64(vcgeq_u64(v51, v53));
          if (v54.i8[0])
          {
            *(v52 - 1) = v45;
          }

          if (v54.i8[4])
          {
            *v52 = v45 + 1;
          }

          v53 = vaddq_s64(v53, vdupq_n_s64(2uLL));
          v52 += 2;
          v45 += 2;
          v50 -= 2;
        }

        while (v50);
        v108 = v44;
        v55 = 0;
        v110 = 0;
        v56 = v122;
        do
        {
          v109 = v17;
          v57 = 0;
          v112 = &v120[v55];
          while (1)
          {
            v58 = v56 + 1;
            v59 = *v56;
            v60 = v57 + v55;
            v61 = v121[v57 + v55];
            if ((v59 & 0xFC00) != 0xD800 || v58 >= v49)
            {
              ++v56;
            }

            else
            {
              v63 = *v58;
              v64 = (v63 & 0xFC00) == 56320;
              v65 = v63 + (v59 << 10) - 56613888;
              if (v64)
              {
                v59 = v65;
              }

              else
              {
                v59 = *v56;
              }

              if (v64)
              {
                v56 += 2;
              }

              else
              {
                ++v56;
              }
            }

            if (v61 == 0xFFFF)
            {
              v66 = 0;
              v67 = 1;
              goto LABEL_86;
            }

            if (v121[v57 + v55])
            {
              v68 = 0;
            }

            else
            {
              v68 = _isDefaultFace;
            }

            if (v68)
            {
              goto LABEL_84;
            }

            if (_isDefaultFace)
            {
              goto LABEL_99;
            }

            v66 = -1;
            if (v59 < 0x20)
            {
              goto LABEL_85;
            }

            v67 = 2;
            if ((v59 - 127) < 0x21)
            {
              goto LABEL_86;
            }

            if ((v59 - 8232) < 2 || v59 == 173)
            {
              goto LABEL_85;
            }

            v67 = 2;
            if (v59 == 65532)
            {
              goto LABEL_86;
            }

            if (WORD1(v59))
            {
              BitmapPtrForPlane = CFUniCharGetBitmapPtrForPlane();
              if (!BitmapPtrForPlane)
              {
LABEL_150:
                LOBYTE(v74) = 0;
                goto LABEL_151;
              }
            }

            else
            {
              BitmapPtrForPlane = __NSInsertNominalGlyphs_controlFormatBMP;
              if (!__NSInsertNominalGlyphs_controlFormatBMP)
              {
                goto LABEL_150;
              }
            }

            v74 = (*(BitmapPtrForPlane + (v59 >> 3)) >> (v59 & 7)) & 1;
LABEL_151:
            if (v59 >> 4 == 4064 || (v74 & 1) != 0 || (v59 - 917760) <= 0xEF)
            {
              if (v61 < 4)
              {
                goto LABEL_84;
              }

              v82 = [_CTGetVisibleFormatterCharacterSet() longCharacterIsMember:v59];
              if ((layoutOptions & 2) == 0 && (v59 & 0xFFFFFFFE) != 0xFE0E && (v82 & 1) == 0)
              {
                if (WORD1(v59))
                {
                  v83 = CFUniCharGetBitmapPtrForPlane();
                  if (!v83)
                  {
                    goto LABEL_84;
                  }
                }

                else
                {
                  v83 = __NSInsertNominalGlyphs_graphemeBMP;
                  if (!__NSInsertNominalGlyphs_graphemeBMP)
                  {
                    goto LABEL_84;
                  }
                }

                if (((*(v83 + (v59 >> 3)) >> (v59 & 7)) & 1) == 0)
                {
LABEL_84:
                  v66 = -1;
LABEL_85:
                  v67 = 2;
LABEL_86:
                  v121[v60] = v66;
LABEL_87:
                  v120[v60] |= v67;
                  goto LABEL_88;
                }
              }
            }

LABEL_99:
            if (v59 < 0x10000)
            {
              UnicodePropertyDataForPlane = __NSInsertNominalGlyphs_bidiPropertyBMP;
              if (!__NSInsertNominalGlyphs_bidiPropertyBMP)
              {
                goto LABEL_117;
              }
            }

            else
            {
              UnicodePropertyDataForPlane = CFUniCharGetUnicodePropertyDataForPlane();
              if (!UnicodePropertyDataForPlane)
              {
                goto LABEL_117;
              }
            }

            v75 = *(UnicodePropertyDataForPlane + BYTE1(v59));
            if (v75 >= 0x13)
            {
              v75 = *(UnicodePropertyDataForPlane + (v75 << 8) - 4864 + v59 + 256);
            }

            if (v75 == 12)
            {
              if (v48)
              {
                v121[v60] = v48;
              }

              v120[v60] |= 4uLL;
              goto LABEL_147;
            }

LABEL_117:
            if (v59 == 160)
            {
              v76 = v110;
              if (v61 <= 3 && !v110)
              {
                characters = 32;
                glyphs = 0;
                CTFontGetGlyphsForCharacters(font, &characters, &glyphs, 1);
                v76 = glyphs;
              }

              if (v76)
              {
                v69 = 0;
                v110 = v76;
                v121[v60] = v76;
                goto LABEL_91;
              }

              v110 = 0;
            }

            else if (v61 <= 3 && (v59 & 0xFFFFFFFE) == 0x2010)
            {
              characters = 45;
              glyphs = 0;
              CTFontGetGlyphsForCharacters(font, &characters, &glyphs, 1);
              v77 = glyphs;
              v121[v60] = glyphs;
              if (!v77)
              {
                goto LABEL_148;
              }

              goto LABEL_88;
            }

LABEL_147:
            if (!v121[v60])
            {
LABEL_148:
              v67 = 1;
              goto LABEL_87;
            }

LABEL_88:
            if (v59 < 0x10000)
            {
              v69 = 0;
            }

            else
            {
              v120[v60 + 1] = v120[v60];
              v69 = 1;
            }

LABEL_91:
            if ((layoutOptions & 1) != 0 && (v120[v60] & 2) != 0 && (v59 < 0x20 || (v59 - 127) <= 0x20) && (CFUniCharIsMemberOf() & 1) == 0)
            {
              v126 = 94;
              if (v59 < 0x80)
              {
                v70 = &v127;
                v71 = 2;
              }

              else
              {
                v127 = 126;
                v70 = v128;
                v71 = 3;
              }

              v78 = v59 & 0x3F | 0x40;
              if (v59 == 127)
              {
                v78 = 63;
              }

              *v70 = v78;
              if (CTFontGetGlyphsForCharacters(font, &v126, v125, v71))
              {
                break;
              }
            }

            if (_isDefaultFace)
            {
              goto LABEL_142;
            }

            if (WORD1(v59))
            {
              v79 = CFUniCharGetBitmapPtrForPlane();
              if (!v79)
              {
                goto LABEL_137;
              }
            }

            else
            {
              v79 = __NSInsertNominalGlyphs_nonBaseSetBMP;
              if (!__NSInsertNominalGlyphs_nonBaseSetBMP)
              {
                goto LABEL_137;
              }
            }

            if ((*(v79 + (v59 >> 3)) >> (v59 & 7)))
            {
              goto LABEL_140;
            }

LABEL_137:
            if ((v59 - 4448) < 0x9A || (v59 & 0x1FFFF0) == 0xF860 && v56 < v49)
            {
LABEL_140:
              v80 = &v112[v57];
              *v80 |= 8uLL;
              if (v69)
              {
                v80[1] |= 8uLL;
              }
            }

LABEL_142:
            v81 = 1;
            if (v69)
            {
              v81 = 2;
            }

            v57 += v81;
            if (v56 >= v49)
            {
              if (v57)
              {
                if (!v106 || (v88 = [v106 layoutManager:v105 shouldGenerateGlyphs:&v121[v55] properties:v112 characterIndexes:&v118[8 * v55] font:font forGlyphRange:{v109, v57}]) == 0)
                {
                  [v105 setGlyphs:&v121[v55] properties:v112 characterIndexes:&v118[8 * v55] font:font forGlyphRange:{v109, v57}];
                  v88 = v57;
                }

                v17 = v88 + v109;
              }

              else
              {
                v17 = v109;
              }

              goto LABEL_181;
            }
          }

          if (v57)
          {
            v84 = &v121[v55];
            if (!v106 || (v85 = [v106 layoutManager:v105 shouldGenerateGlyphs:&v121[v55] properties:v112 characterIndexes:&v118[8 * v55] font:font forGlyphRange:{v109, v57}], v84 = &v121[v55], !v85))
            {
              [v105 setGlyphs:v84 properties:v112 characterIndexes:&v118[8 * v55] font:font forGlyphRange:{v109, v57}];
              v85 = v57;
            }

            v86 = v85 + v109;
            v55 = v60 + 1;
          }

          else
          {
            v86 = v109;
          }

          memset(__pattern8, 0, sizeof(__pattern8));
          memset_pattern8(v123, &v118[8 * v60], 8 * v71);
          if (!v106 || (v87 = [v106 layoutManager:v105 shouldGenerateGlyphs:v125 properties:__pattern8 characterIndexes:v123 font:font forGlyphRange:{v86, v71}]) == 0)
          {
            [v105 setGlyphs:v125 properties:__pattern8 characterIndexes:v123 font:font forGlyphRange:{v86, v71}];
            v87 = v71;
          }

          v17 = v87 + v86;
        }

        while (v56 < v49);
LABEL_181:
        v22 = range.location + v108;
        range.location += v108;
        v41 = v115 - v108;
        v115 -= v108;
      }

      while (v115);
LABEL_182:
      v14 = v105;
      v21 = v101;
      v19 = v106;
      if (v22 >= v104)
      {
        goto LABEL_211;
      }
    }
  }

  v22 = v101;
LABEL_211:
  *v99 = v22;
  *v100 = v17;
}

@end