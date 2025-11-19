@interface NSMutableAttributedString(TVMLKitAdditions)
- (void)tv_addLanguageAwareness:()TVMLKitAdditions;
@end

@implementation NSMutableAttributedString(TVMLKitAdditions)

- (void)tv_addLanguageAwareness:()TVMLKitAdditions
{
  v83[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v50 = a1;
  v5 = [a1 string];
  v6 = [(__CFString *)v5 length];
  if (v6)
  {
    v7 = v6;
    v49 = v4;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    *buffer = 0u;
    v60 = 0u;
    v75 = v5;
    v78 = 0;
    v79 = v6;
    CharactersPtr = CFStringGetCharactersPtr(v5);
    CStringPtr = 0;
    v76 = CharactersPtr;
    if (!CharactersPtr)
    {
      CStringPtr = CFStringGetCStringPtr(v5, 0x600u);
    }

    v53 = 0;
    v54 = 0uLL;
    v10 = 0;
    v11 = 0;
    range2 = 0;
    v51 = 0;
    v47 = 0;
    v56 = 0;
    v80 = 0;
    v81 = 0;
    v77 = CStringPtr;
    v44 = v7 - 1;
    v45 = v5;
    v48 = *MEMORY[0x277D74200];
    v12 = -1;
    v46 = *MEMORY[0x277D74118];
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    v14 = 0x7FFFFFFFFFFFFFFFLL;
    v52 = v7;
    while (1)
    {
      v55 = v13;
      v15 = v11;
      v58 = 0;
      CharacterAtIndex = AMPCFStringGetCharacterAtIndex(buffer, v11, &v58);
      v17 = v58;
      v11 += v58;
      v18 = (CharacterAtIndex - 8206) < 2 || CharacterAtIndex == 0;
      if (v18 || CharacterAtIndex == 65532)
      {
        v30 = 0;
        LODWORD(v31) = 1;
        v32 = 1;
        v33 = 1;
      }

      else
      {
        v26 = CharacterAtIndex;
        v27 = MEMORY[0x26D6AFDC0]();
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v31 = 1;
        v32 = 1;
        v33 = 1;
        switch(v27)
        {
          case 0:
            goto LABEL_91;
          case 1:
          case 13:
            v28 = 0;
            v29 = 0;
            v31 = 2;
            goto LABEL_91;
          case 2:
          case 5:
            v28 = 0;
            v29 = 0;
            v31 = 3;
            goto LABEL_91;
          case 3:
            v28 = 0;
            v29 = 0;
            v31 = 5;
            goto LABEL_91;
          case 4:
            v28 = 0;
            v29 = 0;
            v31 = 6;
            goto LABEL_91;
          case 6:
            v28 = 0;
            v29 = 0;
            v31 = 4;
            goto LABEL_91;
          case 7:
            if (v26 == 8232)
            {
              goto LABEL_87;
            }

            goto LABEL_79;
          case 8:
            break;
          case 9:
            v30 = 0;
            LODWORD(v31) = 1;
            if (v26 > 132)
            {
              if (v26 != 133)
              {
                if (v26 == 8232)
                {
LABEL_87:
                  v32 = 1;
                  [v50 replaceCharactersInRange:v15 withString:{1, @"\n", v44}];
                  LODWORD(v31) = 1;
                  v33 = 1;
                  goto LABEL_88;
                }

                if (v26 != 8233)
                {
                  goto LABEL_132;
                }
              }
            }

            else if ((v26 - 10) >= 4)
            {
              goto LABEL_132;
            }

LABEL_79:
            LODWORD(v31) = 1;
            if (v26 != 13 || v11 > v44)
            {
              v32 = 1;
LABEL_88:
              v30 = 1;
              break;
            }

            v40 = AMPCFStringGetCharacterAtIndex(buffer, v11, 0);
            LODWORD(v31) = 1;
            if (v40 == 10)
            {
              ++v11;
            }

            v32 = 1;
            if (v40 == 10)
            {
              ++v17;
            }

            v33 = 1;
            v30 = 1;
            break;
          case 10:
          case 18:
            v28 = 0;
            v29 = 0;
            v31 = 13;
            goto LABEL_91;
          case 11:
          case 12:
          case 14:
          case 15:
          case 16:
            v28 = 0;
            v29 = 0;
            v31 = 7;
            goto LABEL_91;
          case 17:
            v28 = 0;
            v29 = 0;
            v31 = 14;
            goto LABEL_91;
          case 19:
          case 20:
          case 21:
            v29 = v47 == 0;
            v28 = 1;
            v31 = 8;
            ++v47;
            goto LABEL_91;
          case 22:
            if (v47)
            {
              v29 = --v47 == 0;
            }

            else
            {
              v47 = 0;
              v29 = 0;
            }

            v28 = 1;
            v31 = 9;
            goto LABEL_91;
          default:
            v31 = 0;
            v28 = 0;
            v29 = 0;
LABEL_91:
            v10 += v17;
            if (v47 || v29)
            {
              v33 = 0;
              v30 = 0;
              v56 |= v12 != -1;
LABEL_101:
              LODWORD(v31) = v28;
LABEL_102:
              v32 = v28;
              break;
            }

            if (v31 > 4)
            {
              if (v31 <= 6)
              {
                if (v14 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  v47 = 0;
                  v33 = 0;
                  v30 = 0;
                  v14 = 0x7FFFFFFFFFFFFFFFLL;
                  v43 = v13;
                  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v43 = v15;
                  }

                  v55 = v43;
                }

                else
                {
LABEL_129:
                  v47 = 0;
                  v33 = 0;
                  v30 = 0;
                }

                goto LABEL_101;
              }

              if (v31 == 7)
              {
                goto LABEL_118;
              }

              if (v31 != 13)
              {
                if (v31 != 14)
                {
                  goto LABEL_129;
                }

LABEL_118:
                v47 = 0;
                v33 = 0;
                v30 = 0;
                LODWORD(v31) = 1;
                v32 = 1;
                break;
              }

              v47 = 0;
              v33 = 0;
              v30 = 0;
              goto LABEL_131;
            }

            if (v31 <= 1)
            {
              if (!v31)
              {
                goto LABEL_118;
              }

              if (v12 == -1)
              {
                v41 = 0;
              }

              else
              {
                v41 = v12;
              }

              v42 = v31 == 1;
              v47 = 0;
              LODWORD(v31) = 1;
              if (v42)
              {
                v32 = 1;
              }

              else
              {
                v32 = v28;
              }

              v33 = 0;
              v30 = 0;
              if (v42)
              {
                v12 = v41;
              }
            }

            else
            {
              if (v31 == 2)
              {
                v47 = 0;
                v33 = 0;
                v30 = 0;
                if (v12 == -1)
                {
                  v12 = 1;
                }

LABEL_131:
                LODWORD(v31) = 1;
LABEL_132:
                v32 = 1;
                break;
              }

              if (v31 != 3)
              {
                v47 = 0;
                v33 = 0;
                v30 = 0;
                if (v14 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  LODWORD(v31) = 1;
                }

                else
                {
                  LODWORD(v31) = v28;
                }

                goto LABEL_102;
              }

              if (v14 != 0x7FFFFFFFFFFFFFFFLL)
              {
                goto LABEL_129;
              }

              v14 = v13;
              if (v13 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v47 = 0;
                v33 = 0;
                v30 = 0;
                LODWORD(v31) = 1;
                goto LABEL_102;
              }

              v47 = 0;
              v33 = 0;
              v30 = 0;
              v55 = 0x7FFFFFFFFFFFFFFFLL;
              LODWORD(v31) = v28;
              v32 = v28;
              v14 = v15;
            }

            break;
        }
      }

      range2 += v17;
      if (v11 == v52)
      {
        v30 = 1;
        v14 = 0x7FFFFFFFFFFFFFFFLL;
        v13 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        if (v32)
        {
          v14 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v13 = v55;
        if (v31)
        {
          v13 = 0x7FFFFFFFFFFFFFFFLL;
        }

        if (!v33)
        {
          goto LABEL_58;
        }
      }

      if (v12 == 1)
      {
        ++*(&v54 + 1);
      }

      else if (!v12)
      {
        *&v54 = v54 + 1;
      }

      if (((v10 != 0) & v56) == 1)
      {
        v20 = [MEMORY[0x277CCABB0] numberWithInteger:v12];
        v83[0] = v20;
        v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:1];
        [v50 addAttribute:v48 value:v21 range:{v53, v10}];
      }

      if (v30)
      {
        break;
      }

      v56 = 0;
      v10 = 0;
      v12 = -1;
LABEL_57:
      v53 = v11;
LABEL_58:
      if (v11 == v52)
      {
        v4 = v49;
        v5 = v45;
        goto LABEL_134;
      }
    }

    if (*(&v54 + 1) && *(&v54 + 1) / (*(&v54 + 1) + v54) >= 0.4)
    {
      v22 = v49;
      v23 = v51;
      if (defaultParagraphStyle_sOnceForRightToLeft != -1)
      {
        [NSMutableAttributedString(TVMLKitAdditions) tv_addLanguageAwareness:];
      }

      v24 = 1;
      v25 = &defaultParagraphStyle_defaultRTLParagraphStyleAttribute;
    }

    else
    {
      v22 = v49;
      v23 = v51;
      if (v54 == 0)
      {
        if (defaultParagraphStyle_sOnceForNatural != -1)
        {
          [NSMutableAttributedString(TVMLKitAdditions) tv_addLanguageAwareness:];
        }

        v24 = -1;
        v25 = &defaultParagraphStyle_defaultNaturalParagraphStyleAttribute;
      }

      else
      {
        if (defaultParagraphStyle_sOnceForLeftToRight != -1)
        {
          [NSMutableAttributedString(TVMLKitAdditions) tv_addLanguageAwareness:];
        }

        v24 = 0;
        v25 = &defaultParagraphStyle_defaultLTRParagraphStyleAttribute;
      }
    }

    v34 = *v25;
    if (v22)
    {
      v35 = [v22 tv_paragraphStyleWithBaseWritingDirection:v24];
      v36 = 1;
LABEL_54:

      if (v36)
      {
        [v50 addAttribute:v46 value:v35 range:{v23, range2}];
      }

      v56 = 0;
      range2 = 0;
      v54 = 0uLL;
      v10 = 0;
      v12 = -1;
      v51 = v11;
      goto LABEL_57;
    }

    v82.location = 0;
    v82.length = 0;
    v37 = [v50 attribute:v46 atIndex:v23 effectiveRange:&v82];
    if (v37)
    {
      v84.location = v23;
      v84.length = range2;
      v38 = NSIntersectionRange(v82, v84);
      if (v38.location == v23 && v38.length == range2 && [v37 baseWritingDirection] == v24)
      {
        v35 = v37;
        v36 = 0;
LABEL_53:

        goto LABEL_54;
      }

      v39 = [v37 tv_paragraphStyleWithBaseWritingDirection:{v24, v44}];
    }

    else
    {
      v39 = v34;
    }

    v35 = v39;
    v36 = 1;
    goto LABEL_53;
  }

LABEL_134:
}

@end