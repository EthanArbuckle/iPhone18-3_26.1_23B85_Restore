@interface UITextReplacementGeneratorForCorrections
+ (id)generatorForTextInput:(id)a3 range:(id)a4 options:(unint64_t)a5;
+ (id)rangeForTextReplacement:(id)a3 textInput:(id)a4;
- (BOOL)isStringMisspelled:(id)a3;
- (BOOL)isStringToReplaceMisspelled;
- (UITextReplacementGeneratorForCorrections)init;
- (id)addReplacementRevertingAutocorrectionToReplacements:(id)a3;
- (id)replacements;
- (void)addAutocorrectionGuessesToReplacements:(id)a3;
- (void)addPreviouslySuggestedAutocorrectionToReplacements:(id)a3;
- (void)addSpellingGuessesForString:(id)a3 ToReplacements:(id)a4;
@end

@implementation UITextReplacementGeneratorForCorrections

- (UITextReplacementGeneratorForCorrections)init
{
  v3.receiver = self;
  v3.super_class = UITextReplacementGeneratorForCorrections;
  result = [(UITextReplacementGeneratorForCorrections *)&v3 init];
  if (result)
  {
    result->_maxEditDistance = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

+ (id)generatorForTextInput:(id)a3 range:(id)a4 options:(unint64_t)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = +[UIKeyboardImpl activeInstance];
  if (![v9 autocorrectSpellingEnabled] || !v8)
  {
    v15 = 0;
    goto LABEL_41;
  }

  v10 = [v8 isEmpty];
  if (v10)
  {
    v11 = [objc_opt_class() rangeForTextReplacement:v8 textInput:v7];
    if (v11)
    {
      v12 = [v8 end];
      v13 = [v11 end];
      v14 = [v7 comparePosition:v12 toPosition:v13];

      if (v14 == -1)
      {
        v15 = 0;
        v16 = v11;
        goto LABEL_40;
      }
    }
  }

  else
  {
    v11 = v8;
  }

  v16 = [v7 textInRange:v11];
  if ([v16 length])
  {
    v17 = [v9 autocorrectionRecordForWord:v16];
    v18 = [v17 isAutocorrection];
    v19 = [UITextChecker grammarAutocorrectionForWord:v16];
    v41 = v19;
    if (v19)
    {
      v20 = v19;

      v18 = 1;
      v17 = v20;
    }

    v21 = v10 ^ 1;
    if (!v17)
    {
      v21 = 1;
    }

    v40 = v18;
    if (v21)
    {
      goto LABEL_30;
    }

    v22 = [v11 end];
    if ([v7 baseWritingDirectionForPosition:v22 inDirection:0] == 1)
    {
      v23 = 2;
    }

    else
    {
      v23 = 3;
    }

    v24 = [v17 candidate];
    v25 = [v7 positionFromPosition:v22 inDirection:v23 offset:{objc_msgSend(v24, "length")}];

    v26 = v25;
    v27 = [v7 tokenizer];
    v39 = v26;
    if ([v27 isPosition:v26 atBoundary:1 inDirection:1])
    {
      v28 = [v7 textRangeFromPosition:v26 toPosition:v22];

      v29 = v28;
      if (v29)
      {
        v30 = [v7 textInRange:v29];
        if (v30)
        {
          v38 = [v17 candidate];
          v37 = [v38 isEqual:v30];

          if (v37)
          {
            v29 = v29;

            v30 = v30;
            v16 = v30;
            v11 = v29;
            goto LABEL_28;
          }
        }

LABEL_26:
        if ([v17 isToucanInlineCompletionCandidate])
        {
          v31 = 0;
          goto LABEL_29;
        }

LABEL_28:
        v31 = 1;
LABEL_29:

        if (!v31)
        {
          v15 = 0;
LABEL_38:

          goto LABEL_39;
        }

LABEL_30:
        v32 = UIKeyboardGetCurrentInputMode();
        v33 = UIKeyboardCheckSpellingForInputMode(v32);

        v15 = objc_alloc_init(UITextReplacementGeneratorForCorrections);
        [(UITextReplacementGenerator *)v15 setReplacementRange:v11];
        [(UITextReplacementGenerator *)v15 setStringToReplace:v16];
        [(UITextReplacementGeneratorForCorrections *)v15 setAutocorrectionRecord:v17];
        [(UITextReplacementGeneratorForCorrections *)v15 setMaxEditDistance:2];
        [(UITextReplacementGeneratorForCorrections *)v15 setMaxCountAfterAutocorrectionGuesses:1];
        if (v33)
        {
          v34 = 3;
        }

        else
        {
          v34 = 0;
        }

        [(UITextReplacementGeneratorForCorrections *)v15 setMaxCountAfterSpellingGuesses:v34];
        [(UITextReplacementGeneratorForCorrections *)v15 setForceHistoryReplacement:(v5 & 4) == 0];
        if ((v5 & 2) != 0)
        {
          v35 = v40 & (v5 >> 5);
        }

        else
        {
          v35 = 1;
        }

        [(UITextReplacementGeneratorForCorrections *)v15 setForceAutocorrectionGuesses:v35];
        [(UITextReplacementGeneratorForCorrections *)v15 setForceSpellingGuesses:(v5 & 1) == 0];
        goto LABEL_38;
      }
    }

    else
    {

      v29 = 0;
    }

    v30 = 0;
    goto LABEL_26;
  }

  v15 = 0;
LABEL_39:
  v8 = v11;
LABEL_40:

LABEL_41:

  return v15;
}

+ (id)rangeForTextReplacement:(id)a3 textInput:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isEmpty])
  {
    v7 = [v6 tokenizer];
    v8 = [v5 start];
    v9 = [v7 rangeEnclosingPosition:v8 withGranularity:1 inDirection:1];

    if (v9)
    {
      v10 = [v9 start];
      v11 = [v9 start];
      v12 = [v6 comparePosition:v10 toPosition:v11];

      if (v12 == -1 || ([v9 end], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v6, "comparePosition:toPosition:", v10, v13), v13, v14 == 1))
      {

        v9 = 0;
      }

      v5 = v9;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isStringMisspelled:(id)a3
{
  v4 = a3;
  v5 = [(UITextReplacementGeneratorForCorrections *)self textChecker];

  if (v5)
  {
    v6 = +[UITextChecker keyboardLanguages];
    v7 = [v4 length];
    v8 = [(UITextReplacementGeneratorForCorrections *)self textChecker];
    [v8 rangeOfMisspelledWordInString:v4 range:0 startingAt:v7 wrap:0 languages:{0, v6}];
    v10 = v9;

    if (v10)
    {
      LOBYTE(v10) = v10 == [v4 length];
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (BOOL)isStringToReplaceMisspelled
{
  v2 = self;
  v3 = [(UITextReplacementGenerator *)self stringToReplace];
  LOBYTE(v2) = [(UITextReplacementGeneratorForCorrections *)v2 isStringMisspelled:v3];

  return v2;
}

- (id)addReplacementRevertingAutocorrectionToReplacements:(id)a3
{
  v4 = a3;
  v5 = [(UITextReplacementGeneratorForCorrections *)self autocorrectionRecord];

  if (v5)
  {
    v6 = [(UITextReplacementGeneratorForCorrections *)self autocorrectionRecord];
    v7 = [v6 input];

    v8 = [(UITextReplacementGenerator *)self stringToReplace];
    v9 = [(UITextReplacementGeneratorForCorrections *)self autocorrectionRecord];
    v10 = [v9 candidate];
    v11 = [v8 isEqualToString:v10];

    if (v11 && [(UITextReplacementGenerator *)self shouldAllowString:v7 intoReplacements:v4])
    {
      v12 = [(UITextReplacementGenerator *)self replacementWithText:v7];
      v13 = [(UITextReplacementGeneratorForCorrections *)self autocorrectionRecord];
      [v12 setUsageTrackingMask:{objc_msgSend(v13, "usageTrackingMask")}];

      [v4 addObject:v12];
      v14 = v7;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)addPreviouslySuggestedAutocorrectionToReplacements:(id)a3
{
  v15 = a3;
  v4 = [(UITextReplacementGeneratorForCorrections *)self autocorrectionRecord];

  if (v4)
  {
    v5 = [(UITextReplacementGenerator *)self stringToReplace];
    v6 = [(UITextReplacementGeneratorForCorrections *)self autocorrectionRecord];
    v7 = [v6 input];
    v8 = [v5 isEqualToString:v7];

    if (v8)
    {
      v9 = [(UITextReplacementGeneratorForCorrections *)self autocorrectionRecord];
      v10 = [v9 candidate];
      v11 = [(UITextReplacementGenerator *)self shouldAllowString:v10 intoReplacements:v15];

      if (v11)
      {
        v12 = [(UITextReplacementGeneratorForCorrections *)self autocorrectionRecord];
        v13 = [v12 candidate];
        v14 = [(UITextReplacementGenerator *)self replacementWithText:v13];
        [v15 addObject:v14];
      }
    }
  }
}

- (void)addAutocorrectionGuessesToReplacements:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 count];
  if (v5 < [(UITextReplacementGeneratorForCorrections *)self maxCountAfterAutocorrectionGuesses])
  {
    v6 = +[UIKeyboardImpl sharedInstance];
    v7 = [(UITextReplacementGenerator *)self stringToReplace];
    v23 = v6;
    v8 = [v6 generateAutocorrectionReplacements:v7];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = v8;
    v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v26;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v25 + 1) + 8 * v12);
        v14 = [v13 candidate];
        v15 = [(UITextReplacementGenerator *)self shouldAllowString:v14 intoReplacements:v4];

        if (v15)
        {
          v16 = [(UITextReplacementGenerator *)self stringToReplace];
          v17 = [v13 candidate];
          v18 = [v16 _editDistanceFrom:v17];
          v19 = [(UITextReplacementGeneratorForCorrections *)self maxEditDistance];

          if (v18 <= v19)
          {
            v20 = [v13 candidate];
            v21 = [(UITextReplacementGenerator *)self replacementWithText:v20];
            [v4 addObject:v21];

            v22 = [v4 count];
            if (v22 >= [(UITextReplacementGeneratorForCorrections *)self maxCountAfterAutocorrectionGuesses])
            {
              break;
            }
          }
        }

        if (v10 == ++v12)
        {
          v10 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v10)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }
}

- (void)addSpellingGuessesForString:(id)a3 ToReplacements:(id)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(UITextReplacementGeneratorForCorrections *)self textChecker];

  if (v8)
  {
    v9 = [v7 count];
    if (v9 < [(UITextReplacementGeneratorForCorrections *)self maxCountAfterSpellingGuesses])
    {
      v10 = [v6 length];
      v11 = +[UIKeyboardInputModeController sharedInputModeController];
      v12 = [v11 currentInputMode];
      v13 = [v12 languageWithRegion];

      v14 = [(UITextReplacementGeneratorForCorrections *)self textChecker];
      v38 = v13;
      v39 = v6;
      v15 = [v14 grammarGuessesForRange:0 inString:v10 language:{v6, v13}];

      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v16 = v15;
      v17 = [v16 countByEnumeratingWithState:&v44 objects:v49 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v45;
LABEL_5:
        v20 = 0;
        while (1)
        {
          if (*v45 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v44 + 1) + 8 * v20);
          if ([(UITextReplacementGenerator *)self shouldAllowString:v21 intoReplacements:v7])
          {
            v22 = [(UITextReplacementGenerator *)self replacementWithText:v21];
            [v7 addObject:v22];

            v23 = [v7 count];
            if (v23 >= [(UITextReplacementGeneratorForCorrections *)self maxCountAfterSpellingGuesses])
            {
              break;
            }
          }

          if (v18 == ++v20)
          {
            v18 = [v16 countByEnumeratingWithState:&v44 objects:v49 count:16];
            if (v18)
            {
              goto LABEL_5;
            }

            break;
          }
        }
      }

      v37 = v16;

      v24 = [(UITextReplacementGeneratorForCorrections *)self textChecker];
      v25 = [v24 guessesForWordRange:0 inString:v10 language:{v39, v38}];

      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v26 = v25;
      v27 = [v26 countByEnumeratingWithState:&v40 objects:v48 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v41;
LABEL_14:
        v30 = 0;
        while (1)
        {
          if (*v41 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v40 + 1) + 8 * v30);
          v32 = [v7 count];
          if (v32 >= [(UITextReplacementGeneratorForCorrections *)self maxCountAfterSpellingGuesses])
          {
            break;
          }

          if ([(UITextReplacementGenerator *)self shouldAllowString:v31 intoReplacements:v7])
          {
            v33 = [(UITextReplacementGenerator *)self stringToReplace];
            v34 = [v33 _editDistanceFrom:v31];
            v35 = [(UITextReplacementGeneratorForCorrections *)self maxEditDistance];

            if (v34 <= v35)
            {
              v36 = [(UITextReplacementGenerator *)self replacementWithText:v31];
              [v7 addObject:v36];
            }
          }

          if (v28 == ++v30)
          {
            v28 = [v26 countByEnumeratingWithState:&v40 objects:v48 count:16];
            if (v28)
            {
              goto LABEL_14;
            }

            break;
          }
        }
      }

      v6 = v39;
    }
  }
}

- (id)replacements
{
  v55 = *MEMORY[0x1E69E9840];
  v3 = [(UITextReplacementGenerator *)self stringToReplace];
  v4 = [v3 length];

  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = [(UITextReplacementGenerator *)self replacementRange];

  if (!v5)
  {
    goto LABEL_46;
  }

  v6 = +[UIKeyboardImpl activeInstance];
  v7 = [v6 autocorrectSpellingEnabled];

  if (!v7)
  {
LABEL_7:
    v5 = 0;
    goto LABEL_46;
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = [(UITextReplacementGenerator *)self stringToReplace];
  v9 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v10 = [v8 rangeOfCharacterFromSet:v9 options:2];

  if (v10 == 0x7FFFFFFFFFFFFFFFLL && [(UITextReplacementGeneratorForCorrections *)self isStringMisspelled:v8])
  {
    v11 = 1;
    goto LABEL_35;
  }

  if ([(UITextReplacementGeneratorForCorrections *)self forceSpellingGuesses])
  {
    v12 = +[UIKeyboardImpl activeInstance];
    v13 = [v12 generateAutocorrectionListForSelectedText];

    v14 = [v13 autocorrection];
    v15 = [v14 candidate];

    if ([v15 _containsEmoji])
    {
      v16 = +[UIKeyboardEmojiPreferences sharedInstance];
      v17 = +[UIKeyboardInputModeController sharedInputModeController];
      v18 = [v17 currentInputMode];
      v19 = [v18 primaryLanguage];
      v20 = [v16 typingNameForEmoji:v15 language:v19];

      if ([v20 length])
      {
        v21 = [(UITextReplacementGenerator *)self replacementWithText:v20];
        [v5 addObject:v21];
      }

      goto LABEL_14;
    }

    v22 = [v13 emojiList];
    v23 = [v22 count];

    if (v23)
    {
      v20 = v15;
LABEL_14:
      v44 = v20;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v24 = [v13 predictions];
      v25 = [v24 countByEnumeratingWithState:&v49 objects:v54 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v50;
LABEL_16:
        v28 = 0;
        while (1)
        {
          if (*v50 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = [*(*(&v49 + 1) + 8 * v28) candidate];
          v30 = [(UITextReplacementGenerator *)self replacementWithText:v29];
          [v5 addObject:v30];

          if ([v5 count] > 1)
          {
            break;
          }

          if (v26 == ++v28)
          {
            v26 = [v24 countByEnumeratingWithState:&v49 objects:v54 count:16];
            if (v26)
            {
              goto LABEL_16;
            }

            break;
          }
        }
      }

      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v31 = [v13 emojiList];
      v32 = [v31 countByEnumeratingWithState:&v45 objects:v53 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v46;
LABEL_24:
        v35 = 0;
        while (1)
        {
          if (*v46 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = [*(*(&v45 + 1) + 8 * v35) candidate];
          v37 = [(UITextReplacementGenerator *)self replacementWithText:v36];
          [v5 addObject:v37];

          if ([v5 count] > 2)
          {
            break;
          }

          if (v33 == ++v35)
          {
            v33 = [v31 countByEnumeratingWithState:&v45 objects:v53 count:16];
            if (v33)
            {
              goto LABEL_24;
            }

            break;
          }
        }
      }

      v38 = v5;
      goto LABEL_45;
    }
  }

  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (![(UITextReplacementGeneratorForCorrections *)self forceHistoryReplacement])
    {
      goto LABEL_39;
    }

    v11 = 0;
LABEL_35:
    v39 = [(UITextReplacementGeneratorForCorrections *)self addReplacementRevertingAutocorrectionToReplacements:v5];
    if (v39)
    {
      v40 = v39;

      v41 = [(UITextReplacementGeneratorForCorrections *)self isStringMisspelled:v40];
      v8 = v40;
      if (v41)
      {
LABEL_37:
        [(UITextReplacementGeneratorForCorrections *)self addAutocorrectionGuessesToReplacements:v5];
LABEL_42:
        [(UITextReplacementGeneratorForCorrections *)self addSpellingGuessesForString:v8 ToReplacements:v5];
        if (!self->_showRevertingAutocorrectionInPredictionView)
        {
          [(UITextReplacementGenerator *)self addPlaceholderForEmptyReplacements:v5];
        }

        goto LABEL_44;
      }
    }

    else
    {
      [(UITextReplacementGeneratorForCorrections *)self addPreviouslySuggestedAutocorrectionToReplacements:v5];
      if (v11)
      {
        goto LABEL_37;
      }
    }

LABEL_39:
    if ([(UITextReplacementGeneratorForCorrections *)self forceAutocorrectionGuesses])
    {
      [(UITextReplacementGeneratorForCorrections *)self addAutocorrectionGuessesToReplacements:v5];
    }

    if (![(UITextReplacementGeneratorForCorrections *)self forceSpellingGuesses])
    {
      goto LABEL_44;
    }

    goto LABEL_42;
  }

LABEL_44:
  v42 = v5;
LABEL_45:

LABEL_46:

  return v5;
}

@end