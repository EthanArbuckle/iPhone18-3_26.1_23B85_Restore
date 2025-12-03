@interface TISmartInsertDeleteController
- (TISmartInsertDeleteController)initWithTextInputTraits:(id)traits;
- (unint64_t)_numberOfCharactersInSet:(id)set atBeginningOfString:(id)string;
- (unint64_t)_numberOfCharactersInSet:(id)set atEndOfString:(id)string;
- (void)smartDeleteForDocumentState:(id)state outBeforeLength:(unint64_t *)length outAfterLength:(unint64_t *)afterLength;
- (void)smartInsertForDocumentState:(id)state stringToInsert:(id)insert outBeforeString:(id *)string outAfterString:(id *)afterString;
@end

@implementation TISmartInsertDeleteController

- (void)smartInsertForDocumentState:(id)state stringToInsert:(id)insert outBeforeString:(id *)string outAfterString:(id *)afterString
{
  stateCopy = state;
  insertCopy = insert;
  if (string)
  {
    *string = 0;
  }

  if (afterString)
  {
    *afterString = 0;
  }

  if ([(TISmartInsertDeleteController *)self isEnabled])
  {
    textInputTraits = [(TISmartInsertDeleteController *)self textInputTraits];
    if (![textInputTraits smartInsertDeleteEnabled])
    {
LABEL_91:

      goto LABEL_92;
    }

    textInputTraits2 = [(TISmartInsertDeleteController *)self textInputTraits];
    smartInsertDeleteType = [textInputTraits2 smartInsertDeleteType];

    if (smartInsertDeleteType != 1 && stateCopy && insertCopy)
    {
      textInputTraits = insertCopy;
      v14 = _getPreSmartSet();
      v15 = _getPostSmartSet();
      whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
      newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
      v16 = [textInputTraits length];
      contextBeforeInput = [stateCopy contextBeforeInput];
      v18 = [contextBeforeInput length];

      contextAfterInput = [stateCopy contextAfterInput];
      v64 = [contextAfterInput length];

      v61 = v18;
      if (v18)
      {
        contextBeforeInput2 = [stateCopy contextBeforeInput];
        _lastLongCharacter = [contextBeforeInput2 _lastLongCharacter];

        if ([v14 characterIsMember:_lastLongCharacter])
        {
          contextBeforeInput3 = [stateCopy contextBeforeInput];
          v60 = [(TISmartInsertDeleteController *)self _numberOfCharactersInSet:newlineCharacterSet atEndOfString:contextBeforeInput3];

          v55 = 0;
          v59 = 1;
        }

        else
        {
          v59 = 0;
          v60 = 0;
          v55 = 1;
          if ((_lastLongCharacter & 0xFF00) != 0xE00 && (_lastLongCharacter - 4096) >= 0xA0u)
          {
            v60 = 0;
            v59 = 0;
            v55 = _lastLongCharacter >> 7 == 47;
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
        contextAfterInput2 = [stateCopy contextAfterInput];
        _firstLongCharacter = [contextAfterInput2 _firstLongCharacter];

        if ([v15 characterIsMember:_firstLongCharacter])
        {
          contextAfterInput3 = [stateCopy contextAfterInput];
          v26 = [(TISmartInsertDeleteController *)self _numberOfCharactersInSet:newlineCharacterSet atBeginningOfString:contextAfterInput3];

          v27 = 0;
          v28 = 1;
        }

        else
        {
          v28 = 0;
          v26 = 0;
          v27 = 1;
          if ((_firstLongCharacter & 0xFF00) != 0xE00 && (_firstLongCharacter - 4096) >= 0xA0u)
          {
            v26 = 0;
            v28 = 0;
            v27 = _firstLongCharacter >> 7 == 47;
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
        v30 = [textInputTraits characterAtIndex:0];
        v31 = [textInputTraits characterAtIndex:v16 - 1];
        v32 = [whitespaceAndNewlineCharacterSet characterIsMember:v30];
        v33 = [whitespaceAndNewlineCharacterSet characterIsMember:v31];
        v56 = [newlineCharacterSet characterIsMember:v30];
        LODWORD(v16) = [newlineCharacterSet characterIsMember:v31];
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
          if (!string)
          {
            v34 = 0;
          }

          if (!v34)
          {
            goto LABEL_41;
          }
        }

        else if (!string)
        {
          goto LABEL_41;
        }

        *string = @" ";
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
        if (afterString)
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

            if (string)
            {
              *string = @"\n";
            }

            goto LABEL_88;
          }

          contextBeforeInput4 = [stateCopy contextBeforeInput];
          v43 = [contextBeforeInput4 length];

          contextAfterInput4 = [stateCopy contextAfterInput];
          v45 = [contextAfterInput4 length];

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

            if (!string || (v48 & ~v16 & (v56 ^ 1)) == 0 || *string)
            {
              goto LABEL_81;
            }
          }

          else if (!string)
          {
            goto LABEL_81;
          }

          *string = @"\n";
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
            if (!afterString || ((v16 | v56 | v53) & 1) != 0 || *afterString)
            {
              goto LABEL_90;
            }

            goto LABEL_89;
          }

          v38 = v62;
LABEL_88:
          if (!afterString)
          {
LABEL_90:

            goto LABEL_91;
          }

LABEL_89:
          *afterString = @"\n";
          goto LABEL_90;
        }
      }

      else if (!afterString)
      {
        goto LABEL_51;
      }

      *afterString = @" ";
      goto LABEL_51;
    }
  }

LABEL_92:
}

- (unint64_t)_numberOfCharactersInSet:(id)set atEndOfString:(id)string
{
  setCopy = set;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  stringCopy = string;
  v7 = [stringCopy length];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__TISmartInsertDeleteController__numberOfCharactersInSet_atEndOfString___block_invoke;
  v11[3] = &unk_1E6F4D798;
  v12 = setCopy;
  v13 = &v14;
  v8 = setCopy;
  [stringCopy _reverseEnumerateLongCharactersInRange:0 usingBlock:{v7, v11}];

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

- (unint64_t)_numberOfCharactersInSet:(id)set atBeginningOfString:(id)string
{
  setCopy = set;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  stringCopy = string;
  v7 = [stringCopy length];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78__TISmartInsertDeleteController__numberOfCharactersInSet_atBeginningOfString___block_invoke;
  v11[3] = &unk_1E6F4D798;
  v12 = setCopy;
  v13 = &v14;
  v8 = setCopy;
  [stringCopy _enumerateLongCharactersInRange:0 usingBlock:{v7, v11}];

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

- (void)smartDeleteForDocumentState:(id)state outBeforeLength:(unint64_t *)length outAfterLength:(unint64_t *)afterLength
{
  stateCopy = state;
  if (length)
  {
    *length = 0;
  }

  v55 = stateCopy;
  if (afterLength)
  {
    *afterLength = 0;
  }

  if ([(TISmartInsertDeleteController *)self isEnabled])
  {
    textInputTraits = [(TISmartInsertDeleteController *)self textInputTraits];
    if (![textInputTraits smartInsertDeleteEnabled])
    {
LABEL_62:

      goto LABEL_63;
    }

    textInputTraits2 = [(TISmartInsertDeleteController *)self textInputTraits];
    smartInsertDeleteType = [textInputTraits2 smartInsertDeleteType];

    if (v55)
    {
      if (smartInsertDeleteType != 1)
      {
        if (_getRegularWhiteSet_onceToken != -1)
        {
          dispatch_once(&_getRegularWhiteSet_onceToken, &__block_literal_global_12502);
        }

        textInputTraits = _getRegularWhiteSet__regularWhiteSet;
        whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
        newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
        contextBeforeInput = [v55 contextBeforeInput];
        v15 = [contextBeforeInput length];

        contextAfterInput = [v55 contextAfterInput];
        v17 = [contextAfterInput length];

        if (v15)
        {
          contextBeforeInput2 = [v55 contextBeforeInput];
          _lastLongCharacter = [contextBeforeInput2 _lastLongCharacter];

          if ([whitespaceAndNewlineCharacterSet characterIsMember:_lastLongCharacter])
          {
            v53 = [textInputTraits characterIsMember:_lastLongCharacter];
            contextBeforeInput3 = [v55 contextBeforeInput];
            v21 = [contextBeforeInput3 length];

            if ([newlineCharacterSet characterIsMember:_lastLongCharacter])
            {
              v48 = v15;
              v22 = whitespaceAndNewlineCharacterSet;
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
                contextBeforeInput4 = [v55 contextBeforeInput];
                v27 = [contextBeforeInput4 characterAtIndex:v24];

                --v24;
                if (([newlineCharacterSet characterIsMember:v27] & 1) == 0)
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
              whitespaceAndNewlineCharacterSet = v22;
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
            contextAfterInput2 = [v25 contextAfterInput];
            _firstLongCharacter = [contextAfterInput2 _firstLongCharacter];

            v52 = whitespaceAndNewlineCharacterSet;
            if ([whitespaceAndNewlineCharacterSet characterIsMember:_firstLongCharacter])
            {
              v32 = [textInputTraits characterIsMember:_firstLongCharacter];
              contextAfterInput3 = [v55 contextAfterInput];
              v34 = [contextAfterInput3 length];

              if ([newlineCharacterSet characterIsMember:_firstLongCharacter])
              {
                v49 = v15;
                v35 = 1;
                while (v34 != v35)
                {
                  contextAfterInput4 = [v55 contextAfterInput];
                  v37 = [contextAfterInput4 characterAtIndex:v35];

                  ++v35;
                  if (([newlineCharacterSet characterIsMember:v37] & 1) == 0)
                  {
                    LODWORD(v34) = v35 - 1;
                    break;
                  }
                }

                v38 = v54;
                v28 = v51;
                whitespaceAndNewlineCharacterSet = v52;
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
                  if (!length)
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
                  if (!length)
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
                    if (!length)
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
                    if (!length)
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
                  if (!length)
                  {
                    goto LABEL_59;
                  }
                }

LABEL_58:
                *length = v45;
LABEL_59:
                if (afterLength)
                {
                  *afterLength = v43;
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
              v40 = [v34 characterIsMember:_firstLongCharacter];

              LODWORD(v34) = 0;
              v32 = 0;
              v41 = 0;
              v38 = v54;
              v42 = v54 == 2;
              v43 = v40;
            }

            whitespaceAndNewlineCharacterSet = v52;
            v39 = v53;
            v28 = v51;
            goto LABEL_43;
          }

          v29 = _getPreSmartSet();
          v50 = [v29 characterIsMember:_lastLongCharacter];

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

- (TISmartInsertDeleteController)initWithTextInputTraits:(id)traits
{
  traitsCopy = traits;
  v9.receiver = self;
  v9.super_class = TISmartInsertDeleteController;
  v6 = [(TISmartInsertDeleteController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_enabled = 1;
    objc_storeStrong(&v6->_textInputTraits, traits);
  }

  return v7;
}

@end