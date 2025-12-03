@interface PRTurkishSuffix
+ (id)standardTurkishNounSuffixes;
+ (id)standardTurkishSuffixes;
+ (id)standardTurkishVerbSuffixes;
+ (void)enumerateSuffixMatchesForBuffer:(char *)buffer length:(unint64_t)length options:(unint64_t)options usingBlock:(id)block;
+ (void)enumerateSuffixMatchesForWord:(id)word options:(unint64_t)options usingBlock:(id)block;
- (PRTurkishSuffix)initWithPattern:(id)pattern name:(id)name type:(int)type postponesApostrophe:(BOOL)apostrophe;
- (unint64_t)matchingIndexInBuffer:(char *)buffer length:(unint64_t)length followedByLetter:(unsigned __int8)letter matchWithNameOnly:(BOOL *)only;
- (void)_fillPatternBuffer;
- (void)dealloc;
@end

@implementation PRTurkishSuffix

- (void)_fillPatternBuffer
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [(NSString *)self->_pattern length];
  usedBufLen = 0;
  self->_patternBufferLength = 0;
  v13.location = 0;
  v13.length = v3;
  if (v3 == CFStringGetBytes(self->_pattern, v13, 0x504u, 0x5Fu, 0, buffer, 16, &usedBufLen))
  {
    v4 = usedBufLen;
    if (usedBufLen)
    {
      v5 = 0;
      do
      {
        patternBufferLength = self->_patternBufferLength;
        if (patternBufferLength > 0xF)
        {
          break;
        }

        v7 = buffer[v5];
        if (v7 == 40 && v5 + 2 < v4 && buffer[v5 + 2] == 41)
        {
          self->_isOptional[patternBufferLength] = 1;
          LOBYTE(v7) = buffer[v5 + 1];
          patternBufferLength = self->_patternBufferLength;
          v8 = 3;
        }

        else
        {
          v8 = 1;
        }

        self->_patternBufferLength = patternBufferLength + 1;
        self->_patternBuffer[patternBufferLength] = v7;
        v5 += v8;
      }

      while (v5 < v4);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (PRTurkishSuffix)initWithPattern:(id)pattern name:(id)name type:(int)type postponesApostrophe:(BOOL)apostrophe
{
  v12.receiver = self;
  v12.super_class = PRTurkishSuffix;
  v10 = [(PRTurkishSuffix *)&v12 init];
  if (v10)
  {
    v10->_pattern = [pattern copy];
    v10->_name = [name copy];
    v10->_suffixType = type;
    v10->_postponesApostrophe = apostrophe;
    [(PRTurkishSuffix *)v10 _fillPatternBuffer];
  }

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PRTurkishSuffix;
  [(PRTurkishSuffix *)&v3 dealloc];
}

- (unint64_t)matchingIndexInBuffer:(char *)buffer length:(unint64_t)length followedByLetter:(unsigned __int8)letter matchWithNameOnly:(BOOL *)only
{
  patternBufferLength = self->_patternBufferLength;
  v79 = 0;
  v78 = 0;
  if (!length)
  {
    v64 = 0;
    v70 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_235;
  }

  letterCopy = letter;
  lengthCopy4 = length;
  v64 = 0;
  v76 = 0;
  v71 = 0;
  v75 = 0;
  v9 = buffer - 2;
  patternBuffer = self->_patternBuffer;
  v72 = 0;
  isOptional = self->_isOptional;
  v69 = buffer - 1;
  v70 = 0x7FFFFFFFFFFFFFFFLL;
  lengthCopy2 = length;
  bufferCopy = buffer;
  v67 = buffer - 2;
  letterCopy2 = letter;
  do
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
LABEL_3:
          if (!patternBufferLength)
          {
            goto LABEL_235;
          }

          v11 = lengthCopy2 - 1;
          if (lengthCopy2 == 1)
          {
            v12 = 0;
          }

          else
          {
            v12 = v9[lengthCopy2];
          }

          v13 = letterCopy;
          if (lengthCopy2 < lengthCopy4)
          {
            v13 = buffer[lengthCopy2];
          }

          v14 = buffer[v11];
          if (v14 - 65 < 0x1A || v14 - 192 < 0x17)
          {
            if (v14 - 138 > 0x15 || ((1 << (v14 + 118)) & 0x200015) == 0)
            {
              if (v14 == 73)
              {
                v17 = 253;
                goto LABEL_30;
              }

LABEL_22:
              v17 = v14 + 32;
              goto LABEL_30;
            }

LABEL_27:
            if (v14 == 159)
            {
              v17 = 255;
            }

            else
            {
              v17 = v14 + 16;
            }

            goto LABEL_30;
          }

          if (buffer[v11] <= 0xD7u)
          {
            v18 = v14 - 138 > 0x15 || ((1 << (v14 + 118)) & 0x200015) == 0;
            v17 = buffer[v11];
            if (!v18)
            {
              goto LABEL_27;
            }
          }

          else
          {
            if (v14 - 216 < 5)
            {
              goto LABEL_22;
            }

            if (v14 == 221)
            {
              v17 = 105;
            }

            else
            {
              v17 = buffer[v11];
              if (v14 == 222)
              {
                goto LABEL_22;
              }
            }
          }

LABEL_30:
          v19 = patternBuffer[--patternBufferLength];
          if (v19 == v17)
          {
            goto LABEL_31;
          }

          if (v19 == 65)
          {
            break;
          }

          if ((v19 - 67) <= 1)
          {
            v21 = 1;
            if (v12 <= 0xF7 && (v12 - 97) >= 0x1A && (v12 - 223) >= 0x18)
            {
              if ((v12 + 102) > 4u)
              {
                v21 = 0;
              }

              else
              {
                v21 = v12 ^ 1;
              }
            }

            if ((v12 - 65) < 0x1A || (v12 - 192) < 0x17)
            {
              if ((v12 - 138) > 0x15 || ((1 << (v12 + 118)) & 0x200015) == 0)
              {
                if (v12 == 73)
                {
                  LOBYTE(v12) = -3;
                  goto LABEL_112;
                }

                goto LABEL_99;
              }
            }

            else
            {
              if (v12 > 215)
              {
                if ((v12 - 216) >= 5)
                {
                  if (v12 == 221)
                  {
                    LOBYTE(v12) = 105;
                    goto LABEL_112;
                  }

                  if (v12 != 222)
                  {
LABEL_105:
                    if (v12 == 231)
                    {
                      v27 = 1;
                      goto LABEL_116;
                    }

LABEL_112:
                    v28 = 0;
                    do
                    {
                      v29 = v28;
                      if (v28 == 7)
                      {
                        break;
                      }

                      v30 = byte_1D2BFADD0[++v28];
                    }

                    while (v30 != v12);
                    v27 = v29 < 7;
LABEL_116:
                    v31 = v21 & v27 ^ 1;
                    if (v19 != 67 || v17 != 99 || ((v21 & v27 ^ 1) & 1) == 0)
                    {
                      v32 = v27 | v21 ^ 1;
                      v33 = v19 == 67 && v17 == 231;
                      v34 = v33;
                      if ((v34 & v32 & 1) == 0)
                      {
                        v35 = v17 == 100 ? v31 : 0;
                        if (v19 != 68 || (v35 & 1) == 0)
                        {
                          v36 = v19 == 68 && v17 == 116;
                          v37 = v36;
                          if ((v37 & v32 & 1) == 0)
                          {
                            goto LABEL_138;
                          }
                        }
                      }
                    }

                    goto LABEL_31;
                  }
                }

LABEL_99:
                LOBYTE(v12) = v12 + 32;
                goto LABEL_105;
              }

              if ((v12 - 138) > 0x15 || ((1 << (v12 + 118)) & 0x200015) == 0)
              {
                goto LABEL_105;
              }
            }

            if (v12 == 159)
            {
              LOBYTE(v12) = -1;
            }

            else
            {
              LOBYTE(v12) = v12 + 16;
            }

            goto LABEL_105;
          }

          if (v19 == 75)
          {
            v23 = patternBufferLength;
            isTurkishVowel = _isTurkishVowel(v12, 0, 0, 0);
            v25 = _isTurkishVowel(v13, 0, 0, 0);
            if (v17 == 107 || !isTurkishVowel)
            {
              buffer = bufferCopy;
              patternBufferLength = v23;
              v9 = v67;
              if (v17 == 107)
              {
                goto LABEL_31;
              }

              goto LABEL_138;
            }

            v26 = v17 == 240 && v25;
            buffer = bufferCopy;
            patternBufferLength = v23;
            v9 = v67;
            if (!v26)
            {
              goto LABEL_138;
            }
          }

          else if (v19 != 73 || (v17 - 252) >= 2 && v17 != 105 && v17 != 117)
          {
            goto LABEL_138;
          }

LABEL_31:
          if (lengthCopy2 != 1)
          {
            if (isOptional[patternBufferLength])
            {
              if (!patternBufferLength)
              {
                v20 = v9[lengthCopy2];
                if (v20 > 0xF7 || v20 - 97 < 0x1A || v20 - 223 < 0x18 || v20 - 154 <= 4 && ((1 << (v20 + 102)) & 0x15) != 0)
                {
                  if (_isTurkishVowel(v20, 0, 0, 0))
                  {
                    if (v19 == 73)
                    {
                      goto LABEL_235;
                    }
                  }

                  else if ((v19 - 110) <= 0xB && ((1 << (v19 - 110)) & 0x821) != 0)
                  {
                    goto LABEL_235;
                  }
                }
              }
            }
          }

          if (_isTurkishVowel(v14, &v79, &v79 + 1, &v78))
          {
            buffer = bufferCopy;
            if (v76 & 1 | ((v75 & 1) == 0))
            {
              LOBYTE(v72) = v78;
            }

            else
            {
              if (v79 != (BYTE4(v72) & 1))
              {
                goto LABEL_235;
              }

              v22 = (v72 & 1) != v78;
              LOBYTE(v72) = v78;
              if (v71 & v22)
              {
                goto LABEL_235;
              }
            }

            v76 = 0;
            v71 = HIBYTE(v79);
            v75 = 1;
            if ((v19 - 65) >= 0x1A)
            {
              if ((v19 - 192) < 0x17 || (v76 = 0, v75 = 1, (v19 - 216) < 7) || (v19 - 138) <= 0x15 && ((1 << (v19 + 118)) & 0x200015) != 0)
              {
                BYTE4(v72) = v79;
                if (patternBufferLength)
                {
                  goto LABEL_67;
                }
              }

              else
              {
                v75 = 1;
                BYTE4(v72) = v79;
                v76 = 1;
                if (patternBufferLength)
                {
                  goto LABEL_67;
                }
              }

              goto LABEL_152;
            }

            BYTE4(v72) = v79;
          }

          else
          {
            buffer = bufferCopy;
          }

          if (!patternBufferLength)
          {
            goto LABEL_152;
          }

LABEL_67:
          --lengthCopy2;
          if (!v11)
          {
            goto LABEL_235;
          }
        }

        if ((v17 & 0xFB) == 0x61)
        {
          goto LABEL_31;
        }

LABEL_138:
        if (!isOptional[patternBufferLength])
        {
          goto LABEL_235;
        }

        if (patternBufferLength)
        {
          goto LABEL_219;
        }

        if (v14 <= 0xF7 && v14 - 97 >= 0x1A && v14 - 223 >= 0x18 && (v14 - 154 > 4 || ((1 << (v14 + 102)) & 0x15) == 0))
        {
LABEL_151:
          v11 = lengthCopy2;
          goto LABEL_152;
        }

        if (_isTurkishVowel(v14, 0, 0, 0))
        {
          buffer = bufferCopy;
          if ((v19 - 110) > 0xB)
          {
            goto LABEL_151;
          }

          v11 = lengthCopy2;
          if (((1 << (v19 - 110)) & 0x821) != 0)
          {
            goto LABEL_235;
          }
        }

        else
        {
          v11 = lengthCopy2;
          buffer = bufferCopy;
          if (v19 == 73)
          {
            goto LABEL_235;
          }
        }

LABEL_152:
        v38 = v11;
        do
        {
          v39 = v38;
          if (!v38)
          {
            break;
          }

          v40 = buffer[v38 - 1];
          v41 = v40 <= 0xF7 && v40 - 97 >= 0x1A;
          if (!v41 || v40 - 223 < 0x18)
          {
            break;
          }

          --v38;
          v43 = v40 - 154;
          v44 = v43 > 4;
          v45 = (1 << v43) & 0x15;
        }

        while (v44 || v45 == 0);
        lengthCopy2 = v11;
        if (!(v76 & 1 | ((v75 & 1) == 0)))
        {
          break;
        }

LABEL_211:
        if (!v11)
        {
          v70 = 0;
          goto LABEL_219;
        }

        if (v69[v11] == 39)
        {
          if ([(PRTurkishSuffix *)self postponesApostrophe])
          {
            buffer = bufferCopy;
            if (!v39)
            {
              goto LABEL_215;
            }
          }

          else
          {
            buffer = bufferCopy;
            v58 = *bufferCopy;
            if (v58 <= 0xF7 && v58 - 97 >= 0x1A && v58 - 223 >= 0x18 && ((v59 = v58 - 154, v59 > 4) || ((1 << v59) & 0x15) == 0) || (v60 = bufferCopy[1], v60 <= 0xF7) && v60 - 97 >= 0x1A && v60 - 223 >= 0x18 && ((v61 = v60 - 154, v61 > 4) || ((1 << v61) & 0x15) == 0))
            {
LABEL_215:
              v55 = v11 - 1;
              goto LABEL_216;
            }
          }
        }

        v70 = v11;
        if (!lengthCopy2)
        {
          goto LABEL_235;
        }
      }

      v47 = 0;
      v48 = 0;
      v49 = v69;
      do
      {
        if (v11 == v47)
        {
          lengthCopy2 = -1;
LABEL_210:
          letterCopy = letterCopy2;
          lengthCopy4 = length;
          v9 = v67;
          goto LABEL_211;
        }

        v50 = v49[v11];
        if (v50 == 97 && v11 - 3 == v47)
        {
          if (*buffer == 105 && buffer[1] == 80 && buffer[3] == 100)
          {
            v50 = 105;
          }

          else
          {
            v50 = 97;
          }
        }

        else if (v50 == 101 && v11 - 6 == v47)
        {
          if (*buffer == 105 && buffer[1] == 80 && buffer[2] == 104 && buffer[3] == 111)
          {
            if (buffer[4] == 110)
            {
              v50 = 117;
            }

            else
            {
              v50 = 101;
            }
          }

          else
          {
            v50 = 101;
          }
        }

        v53 = _isTurkishVowel(v50, &v79, &v79 + 1, &v78);
        if (v53 && v79 == (BYTE4(v72) & 1))
        {
          v48 |= v71 ^ 1 | (v78 == (v72 & 1));
        }

        ++v47;
        --v49;
        buffer = bufferCopy;
      }

      while (!v53);
      lengthCopy2 = v11 - v47;
      if ((v39 == 0) | v48 & 1)
      {
        goto LABEL_210;
      }

      v76 = 0;
      letterCopy = letterCopy2;
      lengthCopy4 = length;
      v9 = v67;
      if (only)
      {
        if (v11 >= 2)
        {
          v55 = v11 - 1;
          if (bufferCopy[v11 - 1] != 39)
          {
LABEL_207:
            v76 = 0;
            if (lengthCopy2)
            {
              goto LABEL_3;
            }

            goto LABEL_235;
          }

          v76 = 0;
          v56 = *bufferCopy;
          if (v56 <= 0xF7 && v56 - 97 >= 0x1A && v56 - 223 >= 0x18)
          {
            break;
          }
        }
      }

LABEL_219:
      if (!lengthCopy2)
      {
        goto LABEL_235;
      }
    }

    v57 = v56 - 154;
    if (v57 <= 4 && ((1 << v57) & 0x15) != 0)
    {
      goto LABEL_207;
    }

    v76 = 0;
    v64 = 1;
LABEL_216:
    v70 = v55;
  }

  while (lengthCopy2);
LABEL_235:
  if (only)
  {
    *only = v64 & 1;
  }

  return v70;
}

+ (id)standardTurkishNounSuffixes
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = standardTurkishNounSuffixes_standardTurkishNounSuffixes;
  if (!standardTurkishNounSuffixes_standardTurkishNounSuffixes)
  {
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"(y)Im", @"sIn", @"DIr", @"(y)Iz", @"sInIz", @"DIrlAr", @"(y)DIm", @"(y)DIn", @"(y)DI", @"(y)DIk", @"(y)DInIz", @"(y)DIlAr", @"(y)sAm", @"(y)sAn", @"(y)sA", @"(y)sAk", @"(y)sAnIz", @"(y)sAlAr", @"(y)DIysAm", @"(y)DIysAn", @"(y)DIysA", @"(y)DIysAk", @"(y)DIysAnIz", @"(y)DIysAlAr", @"(y)DImsA", @"(y)DInsA", @"(y)DIysA", @"(y)DIksA", @"(y)DInIzsA", @"(y)DIysAlAr", @"(y)mIşIm", @"(y)mIşsIn", @"(y)mIş", @"(y)mIşIz", @"(y)mIşsInIz", @"(y)mIşlAr", @"(y)mIşsAm", @"(y)mIşsAn", @"(y)mIşsA", @"(y)mIşsAk", @"(y)mIşsAnIz", @"(y)mIşsAlAr", @"(y)A", @"DA", @"DAn", @"(y)I", @"(n)In", @"lAr", @"(s)I(n)", @"(I)m", @"(I)mIz", @"(I)n", @"(I)nIz", @"lArI(n)", @"sIz", @"(y)lA", @"lI", @"lIK", @"CI", @"ki(n)", @"Daş"}];
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"I-am", @"you-are", @"it-is", @"we-are", @"you-are", @"they-are", @"I-was", @"you-were", @"it-was", @"we-were", @"you-were", @"they-were", @"if-I-am", @"if-you-are", @"if-it-is", @"if-we-are", @"if-you-are", @"if-they-are", @"if-I-was", @"if-you-were", @"if-it-was", @"if-we-were", @"if-you-were", @"if-they-were", @"if-I-was", @"if-you-were", @"if-it-was", @"if-we-were", @"if-you-were", @"if-they-were", @"apparently-I-am", @"apparently-you-are", @"apparently-it-is", @"apparently-we-are", @"apparently-you-are", @"apparently-they-are", @"if-apparently-I-am", @"if-apparently-you-are", @"if-apparently-it-is", @"if-apparently-we-are", @"if-apparently-you-are", @"if-apparently-they-are", @"to", @"at", @"from", @"acc.", @"of", @"pl.", @"its", @"my", @"our", @"your", @"your", @"their", @"-less", @"with", @"having", @"-ness", @"-er", @"which-is", @"fellow"}];
    v10 = 0u;
    v11 = 0u;
    v12 = 1;
    memset(v9, 0, sizeof(v9));
    HIBYTE(v10) = 1;
    BYTE8(v11) = 1;
    BYTE10(v11) = 1;
    BYTE14(v11) = 1;
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    for (i = 0; i != 72; ++i)
    {
      v6 = -[PRTurkishSuffix initWithPattern:name:type:postponesApostrophe:]([PRTurkishSuffix alloc], "initWithPattern:name:type:postponesApostrophe:", [v3 objectAtIndex:i], objc_msgSend(v4, "objectAtIndex:", i), byte_1D2BFADE0[i], *(v9 + i) != 0);
      [v2 addObject:v6];
    }

    standardTurkishNounSuffixes_standardTurkishNounSuffixes = v2;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v2;
}

+ (id)standardTurkishVerbSuffixes
{
  v2 = standardTurkishVerbSuffixes_standardTurkishVerbSuffixes;
  if (!standardTurkishVerbSuffixes_standardTurkishVerbSuffixes)
  {
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"(I)n", @"(I)ş", @"DIr", @"t", @"Il", @"mA", @"(y)Abil", @"(y)AmA", @"mAyAbil", @"mIyAbil", @"(y)AmIyAbil", @"(y)AmAyAbil", @"(y)Iver", @"mAyIver", @"(y)IvermA", @"(y)An", @"(y)AcAK", @"(I)r", @"mIş", @"DIK", @"mAK", @"mAklIK", @"mA", @"(y)Iş", @"mAzlIK", @"mAmAzlIK", @"(y)IcI", @"lA", @"lAn", @"lAş", @"lAt", @"(I)yorum", @"(I)yorsun", @"(I)yor", @"(I)yoruz", @"(I)yorsunuz", @"(I)yorlar", @"(I)yordum", @"(I)yordun", @"(I)yordu", @"(I)yorduk", @"(I)yordunuz", @"(I)yordular", @"(I)yorlardı", @"(I)yorsam", @"(I)yorsan", @"(I)yorsa", @"(I)yorsak", @"(I)yorsanız", @"(I)yorsalar", @"(I)yorlarsa", @"(I)yorduysam", @"(I)yorduysan", @"(I)yorduysa", @"(I)yorduysak", @"(I)yorduysanız", @"(I)yorduysalar", @"(I)yorlardıysa", @"(I)yormuşum", @"(I)yormuşsun", @"(I)yormuş"}];
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"refl.", @"recip.", @"caus.", @"caus.", @"pass.", @"neg.", @"pot.", @"impot.", @"negpot.", @"negpot.", @"negimpot.", @"negimpot.", @"quick", @"negquick", @"quickneg", @"prespart.", @"futpart.", @"aorpart.", @"pastpart.", @"pastpart.", @"inf.", @"verbal", @"verbal", @"verbal", @"negverbal", @"negverbal", @"nominalizer", @"verbalizer", @"verbalizer", @"verbalizer", @"verbalizer", @"1spres", @"2spres", @"3spres", @"1ppres", @"2ppres", @"3ppres", @"1spast", @"2spast", @"3spast", @"1ppast", @"2ppast", @"3ppast", @"3ppast", @"1sprescond", @"2sprescond", @"3sprescond", @"1pprescond", @"2pprescond", @"3pprescond", @"3pprescond", @"1spastcond", @"2spastcond", @"3spastcond", @"1ppastcond", @"2ppastcond", @"3ppastcond", @"3ppastcond", @"1sinf", @"2sinf", @"3sinf"}];
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    for (i = 0; i != 241; ++i)
    {
      v6 = -[PRTurkishSuffix initWithPattern:name:type:postponesApostrophe:]([PRTurkishSuffix alloc], "initWithPattern:name:type:postponesApostrophe:", [v3 objectAtIndex:i], objc_msgSend(v4, "objectAtIndex:", i), byte_1D2BFAE28[i], 0);
      [v2 addObject:v6];
    }

    standardTurkishVerbSuffixes_standardTurkishVerbSuffixes = v2;
  }

  return v2;
}

+ (id)standardTurkishSuffixes
{
  result = standardTurkishSuffixes_standardTurkishSuffixes;
  if (!standardTurkishSuffixes_standardTurkishSuffixes)
  {
    result = [objc_msgSend(self "standardTurkishNounSuffixes")];
    standardTurkishSuffixes_standardTurkishSuffixes = result;
  }

  return result;
}

+ (void)enumerateSuffixMatchesForBuffer:(char *)buffer length:(unint64_t)length options:(unint64_t)options usingBlock:(id)block
{
  v17 = *MEMORY[0x1E69E9840];
  v11 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v12 = 0;
  memset(v16, 0, sizeof(v16));
  do
  {
    v13 = &v15[v12];
    *v13 = xmmword_1D2BF76A0;
    v13[1] = xmmword_1D2BF76A0;
    v12 += 32;
  }

  while (v12 != 256);
  [self _enumerateSuffixMatchesForBuffer:buffer length:length followedByLetter:0 options:options depth:0 matchState:13 suffixStack:NAN suffixRangeStack:v16 usingBlock:{v15, block}];

  v14 = *MEMORY[0x1E69E9840];
}

+ (void)enumerateSuffixMatchesForWord:(id)word options:(unint64_t)options usingBlock:(id)block
{
  v13 = *MEMORY[0x1E69E9840];
  usedBufLen = 0;
  v8 = [word stringByReplacingOccurrencesOfString:@"’" withString:@"'"];
  v9 = [(__CFString *)v8 length];
  v14.length = [(__CFString *)v8 length];
  v14.location = 0;
  if (v9 == CFStringGetBytes(v8, v14, 0x504u, 0x5Fu, 0, buffer, 72, &usedBufLen))
  {
    [self enumerateSuffixMatchesForBuffer:buffer length:usedBufLen options:options usingBlock:block];
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end