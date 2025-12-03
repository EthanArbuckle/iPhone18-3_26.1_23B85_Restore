@interface NSMutableAttributedString(TFCoreAdditions)
- (void)tf_addLanguageAwareness:()TFCoreAdditions;
@end

@implementation NSMutableAttributedString(TFCoreAdditions)

- (void)tf_addLanguageAwareness:()TFCoreAdditions
{
  v98[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  selfCopy = self;
  string = [self string];
  v6 = [(__CFString *)string length];
  if (v6)
  {
    v7 = v6;
    v56 = v4;
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    *buffer = 0u;
    v74 = 0u;
    v89 = string;
    v92 = 0;
    v93 = v6;
    CharactersPtr = CFStringGetCharactersPtr(string);
    CStringPtr = 0;
    v90 = CharactersPtr;
    if (!CharactersPtr)
    {
      CStringPtr = CFStringGetCStringPtr(string, 0x600u);
    }

    v69 = 0;
    v64 = 0;
    v65 = 0;
    v61 = 0;
    v10 = 0;
    v66 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v57 = 0;
    v58 = 0;
    v53 = v7 - 1;
    v54 = string;
    v94 = 0;
    v95 = 0;
    v91 = CStringPtr;
    v59 = *MEMORY[0x277D74200];
    v55 = *MEMORY[0x277D74118];
    v14 = -1;
    v67 = 0x7FFFFFFFFFFFFFFFLL;
    v15 = 0x7FFFFFFFFFFFFFFFLL;
    v62 = v7;
    v63 = 0x7FFFFFFFFFFFFFFFLL;
    v16 = v7;
    while (1)
    {
      v70 = v14;
      v68 = v13;
      v17 = v11;
      v72 = 0;
      CharacterAtIndex = TFAMPCFStringGetCharacterAtIndex(buffer, v11, &v72);
      v19 = CharacterAtIndex;
      v20 = v72;
      v11 += v72;
      v21 = (CharacterAtIndex - 8206) < 2 || CharacterAtIndex == 0;
      v22 = v21 || CharacterAtIndex == 65532;
      v71 = v10;
      if (v22)
      {
        v33 = 0;
        LODWORD(v34) = 1;
        v35 = 1;
        v36 = 1;
      }

      else
      {
        v30 = MEMORY[0x26D6BC5B0](CharacterAtIndex);
        v31 = 0;
        v32 = 0;
        v33 = 0;
        v34 = 1;
        v35 = 1;
        v36 = 1;
        switch(v30)
        {
          case 0:
            goto LABEL_91;
          case 1:
          case 13:
            v31 = 0;
            v32 = 0;
            v34 = 2;
            goto LABEL_91;
          case 2:
          case 5:
            v31 = 0;
            v32 = 0;
            v34 = 3;
            goto LABEL_91;
          case 3:
            v31 = 0;
            v32 = 0;
            v34 = 5;
            goto LABEL_91;
          case 4:
            v31 = 0;
            v32 = 0;
            v34 = 6;
            goto LABEL_91;
          case 6:
            v31 = 0;
            v32 = 0;
            v34 = 4;
            goto LABEL_91;
          case 7:
            LODWORD(v34) = 1;
            if (v19 == 13 && v11 <= v53)
            {
              v48 = TFAMPCFStringGetCharacterAtIndex(buffer, v11, 0);
              LODWORD(v34) = 1;
              if (v48 == 10)
              {
                ++v11;
              }

              v35 = 1;
              if (v48 == 10)
              {
                ++v20;
              }

              v36 = 1;
              v33 = 1;
            }

            else
            {
              v33 = 1;
            }

            break;
          case 8:
          case 9:
            break;
          case 10:
          case 18:
            v31 = 0;
            v32 = 0;
            v34 = 13;
            goto LABEL_91;
          case 11:
          case 12:
          case 14:
          case 15:
          case 16:
            v31 = 0;
            v32 = 0;
            v34 = 7;
            goto LABEL_91;
          case 17:
            v31 = 0;
            v32 = 0;
            v34 = 14;
            goto LABEL_91;
          case 19:
          case 20:
          case 21:
            v32 = v57 == 0;
            v31 = 1;
            v34 = 8;
            ++v57;
            goto LABEL_91;
          case 22:
            if (v57)
            {
              v32 = --v57 == 0;
            }

            else
            {
              v57 = 0;
              v32 = 0;
            }

            v31 = 1;
            v34 = 9;
            goto LABEL_91;
          default:
            v34 = 0;
            v31 = 0;
            v32 = 0;
LABEL_91:
            v71 += v20;
            if (v57 || v32)
            {
              v36 = 0;
              v33 = 0;
              v66 |= v70 != -1;
LABEL_100:
              LODWORD(v34) = v31;
              v35 = v31;
              break;
            }

            v36 = 0;
            v57 = 0;
            if (v34 > 4)
            {
              if (v34 <= 6)
              {
                if (v34 == 5)
                {
                  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v57 = 0;
                    v36 = 0;
                    v33 = 0;
                    v69 += v20;
                    v51 = v67;
                    v15 = 0x7FFFFFFFFFFFFFFFLL;
                    if (v67 == 0x7FFFFFFFFFFFFFFFLL)
                    {
                      v51 = v17;
                    }

                    v67 = v51;
                    goto LABEL_100;
                  }
                }

                else if (v15 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  v57 = 0;
                  v36 = 0;
                  v33 = 0;
                  v49 = v67;
                  v15 = 0x7FFFFFFFFFFFFFFFLL;
                  if (v67 == 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v50 = 0;
                  }

                  else
                  {
                    v50 = v20;
                  }

                  v69 += v50;
                  if (v67 == 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v49 = v17;
                  }

                  v67 = v49;
                  goto LABEL_100;
                }

                goto LABEL_123;
              }

              if (v34 != 7 && v34 != 13 && v34 != 14)
              {
                LODWORD(v34) = v31;
                v35 = v31;
                v33 = 0;
                break;
              }

LABEL_109:
              v57 = 0;
              v36 = 0;
              v33 = 0;
LABEL_110:
              LODWORD(v34) = 1;
              v35 = 1;
              break;
            }

            if (v34 <= 1)
            {
              if (!v34)
              {
                goto LABEL_109;
              }

              if ((v70 + 1) < 2)
              {
                v57 = 0;
                v36 = 0;
                v33 = 0;
                v70 = 0;
                goto LABEL_110;
              }

              v57 = 0;
              v36 = 0;
              v33 = 0;
              LODWORD(v34) = 1;
              v66 = 1;
              v35 = 1;
              goto LABEL_133;
            }

            if (v34 == 2)
            {
              v36 = 0;
              LODWORD(v34) = 1;
              if (v70 != -1 && v70 != 1)
              {
                v57 = 0;
                v36 = 0;
                v33 = 0;
                v70 = 0;
                v66 = 1;
                goto LABEL_110;
              }

              v57 = 0;
              v35 = 1;
              v33 = 0;
LABEL_133:
              v70 = 1;
              break;
            }

            if (v34 != 3)
            {
              if (v15 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v57 = 0;
                v36 = 0;
                v33 = 0;
                LODWORD(v34) = 1;
                v35 = v31;
                v15 = 0x7FFFFFFFFFFFFFFFLL;
                break;
              }

LABEL_123:
              v57 = 0;
              v36 = 0;
              v33 = 0;
              v64 += v20;
              goto LABEL_100;
            }

            if (v15 != 0x7FFFFFFFFFFFFFFFLL)
            {
              LODWORD(v34) = v31;
              v17 = v15;
              goto LABEL_131;
            }

            if (v67 == 0x7FFFFFFFFFFFFFFFLL)
            {
              LODWORD(v34) = v31;
LABEL_131:
              v52 = v64;
              goto LABEL_136;
            }

            LODWORD(v34) = 1;
            v52 = v69;
            v17 = v67;
LABEL_136:
            v57 = 0;
            v36 = 0;
            v33 = 0;
            v64 = v52 + v20;
            v63 = v52 + v20 + v17 - 1;
            v35 = v31;
            v15 = v17;
            break;
        }
      }

      if (v11 == v16)
      {
        break;
      }

      v24 = v69;
      if ((v34 & (v67 != 0x7FFFFFFFFFFFFFFFLL)) != 0)
      {
        v24 = 0;
      }

      v69 = v24;
      if (v34)
      {
        goto LABEL_21;
      }

LABEL_22:
      if (v35 && v15 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if ((v19 & 0x1FFFFE) != 0x200E)
        {
          if (v63 < v64 + v15 - 1)
          {
            v25 = v63 - v15 + 1;
          }

          else
          {
            v25 = v64;
          }

          v26 = [MEMORY[0x277CCABB0] numberWithInteger:{0, v53}];
          v98[0] = v26;
          v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v98 count:1];
          [selfCopy addAttribute:v59 value:v27 range:{v15, v25}];

          v16 = v62;
        }

        v63 = 0x7FFFFFFFFFFFFFFFLL;
        v64 = 0;
        v15 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v14 = v70;
      v13 = v20 + v68;
      if (v36)
      {
        if (v70 == 1)
        {
          v28 = v65 + 1;
          v29 = v71;
        }

        else
        {
          v28 = v65;
          v29 = v71;
          if (!v70)
          {
            ++v12;
          }
        }

        if (((v29 != 0) & v66) == 1)
        {
          v37 = [MEMORY[0x277CCABB0] numberWithInteger:v70];
          v97 = v37;
          v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v97 count:1];
          [selfCopy addAttribute:v59 value:v38 range:{v61, v29}];

          v16 = v62;
        }

        if (v33)
        {
          if (v28 && v28 / (v28 + v12) >= 0.4)
          {
            if (defaultParagraphStyle_sOnceForRightToLeft != -1)
            {
              [NSMutableAttributedString(TFCoreAdditions) tf_addLanguageAwareness:];
            }

            v39 = 1;
            v40 = &defaultParagraphStyle_defaultRTLParagraphStyleAttribute;
          }

          else if (v12 | v28)
          {
            if (defaultParagraphStyle_sOnceForLeftToRight != -1)
            {
              [NSMutableAttributedString(TFCoreAdditions) tf_addLanguageAwareness:];
            }

            v39 = 0;
            v40 = &defaultParagraphStyle_defaultLTRParagraphStyleAttribute;
          }

          else
          {
            if (defaultParagraphStyle_sOnceForNatural != -1)
            {
              [NSMutableAttributedString(TFCoreAdditions) tf_addLanguageAwareness:];
            }

            v39 = -1;
            v40 = &defaultParagraphStyle_defaultNaturalParagraphStyleAttribute;
          }

          v41 = *v40;
          if (v56)
          {
            v42 = [v56 tf_paragraphStyleWithBaseWritingDirection:v39];
            v43 = 1;
LABEL_65:

            if (v43)
            {
              [selfCopy addAttribute:v55 value:v42 range:{v58, v13}];
            }

            v13 = 0;
            v12 = 0;
            v65 = 0;
            v66 = 0;
            v10 = 0;
            v14 = -1;
            v58 = v11;
            v61 = v11;
            v16 = v62;
            goto LABEL_68;
          }

          v44 = v13;
          v96.location = 0;
          v96.length = 0;
          v45 = [selfCopy attribute:v55 atIndex:v58 effectiveRange:&v96];
          if (v45)
          {
            v99.location = v58;
            v99.length = v44;
            v46 = NSIntersectionRange(v96, v99);
            if (v46.location == v58 && v46.length == v44 && [v45 baseWritingDirection] == v39)
            {
              v42 = v45;
              v43 = 0;
LABEL_64:

              v13 = v44;
              goto LABEL_65;
            }

            v47 = [v45 tf_paragraphStyleWithBaseWritingDirection:{v39, v53}];
          }

          else
          {
            v47 = v41;
          }

          v42 = v47;
          v43 = 1;
          goto LABEL_64;
        }

        v65 = v28;
        v66 = 0;
        v10 = 0;
        v14 = -1;
        v61 = v11;
      }

      else
      {
        v10 = v71;
      }

LABEL_68:
      if (v11 == v16)
      {
        v4 = v56;
        string = v54;
        goto LABEL_137;
      }
    }

    v23 = v69;
    if (v67 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v23 = 0;
    }

    v69 = v23;
    v33 = 1;
    v36 = 1;
    v35 = 1;
LABEL_21:
    v67 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_22;
  }

LABEL_137:
}

@end