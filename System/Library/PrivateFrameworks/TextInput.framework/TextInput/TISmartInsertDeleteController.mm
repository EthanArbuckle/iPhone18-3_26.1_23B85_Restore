@interface TISmartInsertDeleteController
- (TISmartInsertDeleteController)initWithTextInputTraits:(id)a3;
- (unint64_t)_numberOfCharactersInSet:(id)a3 atBeginningOfString:(id)a4;
- (unint64_t)_numberOfCharactersInSet:(id)a3 atEndOfString:(id)a4;
- (void)smartDeleteForDocumentState:(id)a3 outBeforeLength:(unint64_t *)a4 outAfterLength:(unint64_t *)a5;
- (void)smartInsertForDocumentState:(id)a3 stringToInsert:(id)a4 outBeforeString:(id *)a5 outAfterString:(id *)a6;
@end

@implementation TISmartInsertDeleteController

- (void)smartInsertForDocumentState:(id)a3 stringToInsert:(id)a4 outBeforeString:(id *)a5 outAfterString:(id *)a6
{
  v66 = a3;
  v10 = a4;
  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  if ([(TISmartInsertDeleteController *)self isEnabled])
  {
    v11 = [(TISmartInsertDeleteController *)self textInputTraits];
    if (![v11 smartInsertDeleteEnabled])
    {
LABEL_91:

      goto LABEL_92;
    }

    v12 = [(TISmartInsertDeleteController *)self textInputTraits];
    v13 = [v12 smartInsertDeleteType];

    if (v13 != 1 && v66 && v10)
    {
      v11 = v10;
      v14 = _getPreSmartSet();
      v15 = _getPostSmartSet();
      v63 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
      v65 = [MEMORY[0x1E696AB08] newlineCharacterSet];
      v16 = [v11 length];
      v17 = [v66 contextBeforeInput];
      v18 = [v17 length];

      v19 = [v66 contextAfterInput];
      v64 = [v19 length];

      v61 = v18;
      if (v18)
      {
        v20 = [v66 contextBeforeInput];
        v21 = [v20 _lastLongCharacter];

        if ([v14 characterIsMember:v21])
        {
          v22 = [v66 contextBeforeInput];
          v60 = [(TISmartInsertDeleteController *)self _numberOfCharactersInSet:v65 atEndOfString:v22];

          v55 = 0;
          v59 = 1;
        }

        else
        {
          v59 = 0;
          v60 = 0;
          v55 = 1;
          if ((v21 & 0xFF00) != 0xE00 && (v21 - 4096) >= 0xA0u)
          {
            v60 = 0;
            v59 = 0;
            v55 = v21 >> 7 == 47;
          }
        }
      }

      else
      {
        v55 = 0;
        v60 = 0;
        v59 = 0;
      }

      v58 = v14;
      if (v64)
      {
        v23 = [v66 contextAfterInput];
        v24 = [v23 _firstLongCharacter];

        if ([v15 characterIsMember:v24])
        {
          v25 = [v66 contextAfterInput];
          v26 = [(TISmartInsertDeleteController *)self _numberOfCharactersInSet:v65 atBeginningOfString:v25];

          v27 = 0;
          v28 = 1;
        }

        else
        {
          v28 = 0;
          v26 = 0;
          v27 = 1;
          if ((v24 & 0xFF00) != 0xE00 && (v24 - 4096) >= 0xA0u)
          {
            v26 = 0;
            v28 = 0;
            v27 = v24 >> 7 == 47;
          }
        }
      }

      else
      {
        v27 = 0;
        v26 = 0;
        v28 = 0;
      }

      v57 = v26;
      v62 = v15;
      if (v16)
      {
        v54 = v28;
        v29 = v27;
        v30 = [v11 characterAtIndex:0];
        v31 = [v11 characterAtIndex:v16 - 1];
        v32 = [v63 characterIsMember:v30];
        v33 = [v63 characterIsMember:v31];
        v56 = [v65 characterIsMember:v30];
        LODWORD(v16) = [v65 characterIsMember:v31];
        v34 = 0;
        if ((v30 & 0xFF00) != 0xE00 && (v30 - 4096) >= 0xA0u)
        {
          v34 = v30 >> 7 != 47;
        }

        v35 = 0;
        v27 = v29;
        v28 = v54;
        if ((v31 & 0xFF00) != 0xE00 && (v31 - 4096) >= 0xA0u)
        {
          v35 = v31 >> 7 != 47;
        }
      }

      else
      {
        v33 = 0;
        v56 = 0;
        v32 = 0;
        v34 = 1;
        v35 = 1;
      }

      if (((v59 | v32) & 1) == 0 && v61)
      {
        if (v55)
        {
          if (!a5)
          {
            v34 = 0;
          }

          if (!v34)
          {
            goto LABEL_41;
          }
        }

        else if (!a5)
        {
          goto LABEL_41;
        }

        *a5 = @" ";
      }

LABEL_41:
      v36 = v28 | v33;
      v37 = v58;
      v38 = v62;
      if ((v36 & 1) != 0 || !v64)
      {
        goto LABEL_51;
      }

      if (v27)
      {
        if (a6)
        {
          v39 = v35;
        }

        else
        {
          v39 = 0;
        }

        if (!v39)
        {
LABEL_51:
          if (TIGetFlexibleSmartWhitespaceEnabledValue_onceToken != -1)
          {
            dispatch_once(&TIGetFlexibleSmartWhitespaceEnabledValue_onceToken, &__block_literal_global_43);
          }

          v40 = +[TIPreferencesController sharedPreferencesController];
          v41 = [v40 valueForPreferenceKey:@"FlexibleSmartWhitespaceEnabled"];

          LOBYTE(v40) = [v41 BOOLValue];
          if ((v40 & 1) == 0)
          {
            v46 = v56;
            if (v60 != 1)
            {
              v46 = 1;
            }

            if (((v46 | v16) & 1) != 0 || v57 != 1)
            {
              goto LABEL_90;
            }

            if (a5)
            {
              *a5 = @"\n";
            }

            goto LABEL_88;
          }

          v42 = [v66 contextBeforeInput];
          v43 = [v42 length];

          v44 = [v66 contextAfterInput];
          v45 = [v44 length];

          if ((v56 & 1) != 0 || v60 != 1 || v43 == 1 || !v57)
          {
            if (v64)
            {
              v47 = 1;
            }

            else
            {
              v47 = v61 == 0;
            }

            v48 = !v47;
            if (v60 != 1 || v43 == 1)
            {
              v48 = 0;
            }

            if (!a5 || (v48 & ~v16 & (v56 ^ 1)) == 0 || *a5)
            {
              goto LABEL_81;
            }
          }

          else if (!a5)
          {
            goto LABEL_81;
          }

          *a5 = @"\n";
LABEL_81:
          if (v60)
          {
            v50 = v16;
          }

          else
          {
            v50 = 1;
          }

          v37 = v58;
          if ((v50 & 1) != 0 || v57 != 1 || v45 == 1)
          {
            if (v64)
            {
              v51 = v57 == v45;
            }

            else
            {
              v51 = 1;
            }

            v38 = v62;
            v53 = v51 || v61 != 0;
            if (!a6 || ((v16 | v56 | v53) & 1) != 0 || *a6)
            {
              goto LABEL_90;
            }

            goto LABEL_89;
          }

          v38 = v62;
LABEL_88:
          if (!a6)
          {
LABEL_90:

            goto LABEL_91;
          }

LABEL_89:
          *a6 = @"\n";
          goto LABEL_90;
        }
      }

      else if (!a6)
      {
        goto LABEL_51;
      }

      *a6 = @" ";
      goto LABEL_51;
    }
  }

LABEL_92:
}

- (unint64_t)_numberOfCharactersInSet:(id)a3 atEndOfString:(id)a4
{
  v5 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v6 = a4;
  v7 = [v6 length];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__TISmartInsertDeleteController__numberOfCharactersInSet_atEndOfString___block_invoke;
  v11[3] = &unk_1E6F4D798;
  v12 = v5;
  v13 = &v14;
  v8 = v5;
  [v6 _reverseEnumerateLongCharactersInRange:0 usingBlock:{v7, v11}];

  v9 = v15[3];
  _Block_object_dispose(&v14, 8);
  return v9;
}

uint64_t __72__TISmartInsertDeleteController__numberOfCharactersInSet_atEndOfString___block_invoke(uint64_t a1, unsigned __int16 a2, _BYTE *a3)
{
  result = [*(a1 + 32) characterIsMember:a2];
  if (result)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  else
  {
    *a3 = 1;
  }

  return result;
}

- (unint64_t)_numberOfCharactersInSet:(id)a3 atBeginningOfString:(id)a4
{
  v5 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v6 = a4;
  v7 = [v6 length];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78__TISmartInsertDeleteController__numberOfCharactersInSet_atBeginningOfString___block_invoke;
  v11[3] = &unk_1E6F4D798;
  v12 = v5;
  v13 = &v14;
  v8 = v5;
  [v6 _enumerateLongCharactersInRange:0 usingBlock:{v7, v11}];

  v9 = v15[3];
  _Block_object_dispose(&v14, 8);
  return v9;
}

uint64_t __78__TISmartInsertDeleteController__numberOfCharactersInSet_atBeginningOfString___block_invoke(uint64_t a1, unsigned __int16 a2, _BYTE *a3)
{
  result = [*(a1 + 32) characterIsMember:a2];
  if (result)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  else
  {
    *a3 = 1;
  }

  return result;
}

- (void)smartDeleteForDocumentState:(id)a3 outBeforeLength:(unint64_t *)a4 outAfterLength:(unint64_t *)a5
{
  v8 = a3;
  if (a4)
  {
    *a4 = 0;
  }

  v55 = v8;
  if (a5)
  {
    *a5 = 0;
  }

  if ([(TISmartInsertDeleteController *)self isEnabled])
  {
    v9 = [(TISmartInsertDeleteController *)self textInputTraits];
    if (![v9 smartInsertDeleteEnabled])
    {
LABEL_62:

      goto LABEL_63;
    }

    v10 = [(TISmartInsertDeleteController *)self textInputTraits];
    v11 = [v10 smartInsertDeleteType];

    if (v55)
    {
      if (v11 != 1)
      {
        if (_getRegularWhiteSet_onceToken != -1)
        {
          dispatch_once(&_getRegularWhiteSet_onceToken, &__block_literal_global_12502);
        }

        v9 = _getRegularWhiteSet__regularWhiteSet;
        v12 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
        v13 = [MEMORY[0x1E696AB08] newlineCharacterSet];
        v14 = [v55 contextBeforeInput];
        v15 = [v14 length];

        v16 = [v55 contextAfterInput];
        v17 = [v16 length];

        if (v15)
        {
          v18 = [v55 contextBeforeInput];
          v19 = [v18 _lastLongCharacter];

          if ([v12 characterIsMember:v19])
          {
            v53 = [v9 characterIsMember:v19];
            v20 = [v55 contextBeforeInput];
            v21 = [v20 length];

            if ([v13 characterIsMember:v19])
            {
              v48 = v15;
              v22 = v12;
              v23 = 0;
              v54 = v21;
              v24 = v21 - 2;
              while (1)
              {
                v25 = v55;
                if (v24 == -1)
                {
                  break;
                }

                ++v23;
                v26 = [v55 contextBeforeInput];
                v27 = [v26 characterAtIndex:v24];

                --v24;
                if (([v13 characterIsMember:v27] & 1) == 0)
                {
                  v50 = 0;
                  v28 = 1;
                  v54 = v23;
                  v25 = v55;
                  goto LABEL_34;
                }
              }

              v50 = 0;
              v28 = 1;
LABEL_34:
              v12 = v22;
              v15 = v48;
              if (!v17)
              {
                goto LABEL_35;
              }

              goto LABEL_22;
            }

            v50 = 0;
            v54 = 0;
            v28 = 1;
LABEL_21:
            v25 = v55;
            if (!v17)
            {
LABEL_35:
              v32 = 0;
              LODWORD(v34) = 0;
              v39 = v53;
              v38 = v54;
              goto LABEL_36;
            }

LABEL_22:
            v51 = v28;
            v30 = [v25 contextAfterInput];
            v31 = [v30 _firstLongCharacter];

            v52 = v12;
            if ([v12 characterIsMember:v31])
            {
              v32 = [v9 characterIsMember:v31];
              v33 = [v55 contextAfterInput];
              v34 = [v33 length];

              if ([v13 characterIsMember:v31])
              {
                v49 = v15;
                v35 = 1;
                while (v34 != v35)
                {
                  v36 = [v55 contextAfterInput];
                  v37 = [v36 characterAtIndex:v35];

                  ++v35;
                  if (([v13 characterIsMember:v37] & 1) == 0)
                  {
                    LODWORD(v34) = v35 - 1;
                    break;
                  }
                }

                v38 = v54;
                v28 = v51;
                v12 = v52;
                v15 = v49;
                v39 = v53;
LABEL_36:
                v43 = 0;
                v41 = v17 != 0;
                v42 = v38 == 2;
                if (v38 == 2)
                {
                  v44 = 1;
                }

                else
                {
                  v44 = v39;
                }

                if (!v17 && (v44 & 1) != 0)
                {
LABEL_41:
                  v45 = 1;
                  if (!a4)
                  {
                    goto LABEL_59;
                  }

                  goto LABEL_58;
                }

LABEL_43:
                if (v34 == 2)
                {
                  v46 = 1;
                }

                else
                {
                  v46 = v32;
                }

                if (!v15 && (v46 & 1) != 0)
                {
LABEL_48:
                  v45 = 0;
                  v43 = 1;
                  if (!a4)
                  {
                    goto LABEL_59;
                  }

                  goto LABEL_58;
                }

                if ((v28 & v41) == 1)
                {
                  if ((v39 | v32))
                  {
                    v45 = v39;
                    v43 = v39 ^ 1;
                    if (!a4)
                    {
                      goto LABEL_59;
                    }
                  }

                  else
                  {
                    if (v34 == 1 && v42)
                    {
                      v43 = 0;
                      goto LABEL_41;
                    }

                    if (v38 == 1 && v34 == 2)
                    {
                      goto LABEL_48;
                    }

                    v43 = v34 == 2 && v42;
                    v45 = v43;
                    if (!a4)
                    {
                      goto LABEL_59;
                    }
                  }
                }

                else
                {
                  if (((v50 & v32) | v39 ^ 1))
                  {
                    v45 = 0;
                  }

                  else
                  {
                    v45 = v43;
                  }

                  v43 = v50 & v32;
                  if (!a4)
                  {
                    goto LABEL_59;
                  }
                }

LABEL_58:
                *a4 = v45;
LABEL_59:
                if (a5)
                {
                  *a5 = v43;
                }

                goto LABEL_62;
              }

              LODWORD(v34) = 0;
              v43 = 0;
              v38 = v54;
              v42 = v54 == 2;
              v41 = 1;
            }

            else
            {
              v34 = _getPostSmartSet();
              v40 = [v34 characterIsMember:v31];

              LODWORD(v34) = 0;
              v32 = 0;
              v41 = 0;
              v38 = v54;
              v42 = v54 == 2;
              v43 = v40;
            }

            v12 = v52;
            v39 = v53;
            v28 = v51;
            goto LABEL_43;
          }

          v29 = _getPreSmartSet();
          v50 = [v29 characterIsMember:v19];

          v28 = 0;
          v53 = 0;
        }

        else
        {
          v28 = 0;
          v53 = 0;
          v50 = 0;
        }

        v54 = 0;
        goto LABEL_21;
      }
    }
  }

LABEL_63:
}

- (TISmartInsertDeleteController)initWithTextInputTraits:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TISmartInsertDeleteController;
  v6 = [(TISmartInsertDeleteController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_enabled = 1;
    objc_storeStrong(&v6->_textInputTraits, a3);
  }

  return v7;
}

@end