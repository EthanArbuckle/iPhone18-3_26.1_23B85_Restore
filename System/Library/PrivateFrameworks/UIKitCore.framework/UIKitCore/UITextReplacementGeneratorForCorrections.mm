@interface UITextReplacementGeneratorForCorrections
+ (id)generatorForTextInput:(id)input range:(id)range options:(unint64_t)options;
+ (id)rangeForTextReplacement:(id)replacement textInput:(id)input;
- (BOOL)isStringMisspelled:(id)misspelled;
- (BOOL)isStringToReplaceMisspelled;
- (UITextReplacementGeneratorForCorrections)init;
- (id)addReplacementRevertingAutocorrectionToReplacements:(id)replacements;
- (id)replacements;
- (void)addAutocorrectionGuessesToReplacements:(id)replacements;
- (void)addPreviouslySuggestedAutocorrectionToReplacements:(id)replacements;
- (void)addSpellingGuessesForString:(id)string ToReplacements:(id)replacements;
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

+ (id)generatorForTextInput:(id)input range:(id)range options:(unint64_t)options
{
  optionsCopy = options;
  inputCopy = input;
  rangeCopy = range;
  v9 = +[UIKeyboardImpl activeInstance];
  if (![v9 autocorrectSpellingEnabled] || !rangeCopy)
  {
    v15 = 0;
    goto LABEL_41;
  }

  isEmpty = [rangeCopy isEmpty];
  if (isEmpty)
  {
    v11 = [objc_opt_class() rangeForTextReplacement:rangeCopy textInput:inputCopy];
    if (v11)
    {
      v12 = [rangeCopy end];
      v13 = [v11 end];
      v14 = [inputCopy comparePosition:v12 toPosition:v13];

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
    v11 = rangeCopy;
  }

  v16 = [inputCopy textInRange:v11];
  if ([v16 length])
  {
    v17 = [v9 autocorrectionRecordForWord:v16];
    isAutocorrection = [v17 isAutocorrection];
    v19 = [UITextChecker grammarAutocorrectionForWord:v16];
    v41 = v19;
    if (v19)
    {
      v20 = v19;

      isAutocorrection = 1;
      v17 = v20;
    }

    v21 = isEmpty ^ 1;
    if (!v17)
    {
      v21 = 1;
    }

    v40 = isAutocorrection;
    if (v21)
    {
      goto LABEL_30;
    }

    v22 = [v11 end];
    if ([inputCopy baseWritingDirectionForPosition:v22 inDirection:0] == 1)
    {
      v23 = 2;
    }

    else
    {
      v23 = 3;
    }

    candidate = [v17 candidate];
    v25 = [inputCopy positionFromPosition:v22 inDirection:v23 offset:{objc_msgSend(candidate, "length")}];

    v26 = v25;
    tokenizer = [inputCopy tokenizer];
    v39 = v26;
    if ([tokenizer isPosition:v26 atBoundary:1 inDirection:1])
    {
      v28 = [inputCopy textRangeFromPosition:v26 toPosition:v22];

      v29 = v28;
      if (v29)
      {
        v30 = [inputCopy textInRange:v29];
        if (v30)
        {
          candidate2 = [v17 candidate];
          v37 = [candidate2 isEqual:v30];

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
        [(UITextReplacementGeneratorForCorrections *)v15 setForceHistoryReplacement:(optionsCopy & 4) == 0];
        if ((optionsCopy & 2) != 0)
        {
          v35 = v40 & (optionsCopy >> 5);
        }

        else
        {
          v35 = 1;
        }

        [(UITextReplacementGeneratorForCorrections *)v15 setForceAutocorrectionGuesses:v35];
        [(UITextReplacementGeneratorForCorrections *)v15 setForceSpellingGuesses:(optionsCopy & 1) == 0];
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
  rangeCopy = v11;
LABEL_40:

LABEL_41:

  return v15;
}

+ (id)rangeForTextReplacement:(id)replacement textInput:(id)input
{
  replacementCopy = replacement;
  inputCopy = input;
  if ([replacementCopy isEmpty])
  {
    tokenizer = [inputCopy tokenizer];
    start = [replacementCopy start];
    v9 = [tokenizer rangeEnclosingPosition:start withGranularity:1 inDirection:1];

    if (v9)
    {
      start2 = [v9 start];
      start3 = [v9 start];
      v12 = [inputCopy comparePosition:start2 toPosition:start3];

      if (v12 == -1 || ([v9 end], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(inputCopy, "comparePosition:toPosition:", start2, v13), v13, v14 == 1))
      {

        v9 = 0;
      }

      replacementCopy = v9;
    }

    else
    {
      replacementCopy = 0;
    }
  }

  return replacementCopy;
}

- (BOOL)isStringMisspelled:(id)misspelled
{
  misspelledCopy = misspelled;
  textChecker = [(UITextReplacementGeneratorForCorrections *)self textChecker];

  if (textChecker)
  {
    v6 = +[UITextChecker keyboardLanguages];
    v7 = [misspelledCopy length];
    textChecker2 = [(UITextReplacementGeneratorForCorrections *)self textChecker];
    [textChecker2 rangeOfMisspelledWordInString:misspelledCopy range:0 startingAt:v7 wrap:0 languages:{0, v6}];
    v10 = v9;

    if (v10)
    {
      LOBYTE(v10) = v10 == [misspelledCopy length];
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
  selfCopy = self;
  stringToReplace = [(UITextReplacementGenerator *)self stringToReplace];
  LOBYTE(selfCopy) = [(UITextReplacementGeneratorForCorrections *)selfCopy isStringMisspelled:stringToReplace];

  return selfCopy;
}

- (id)addReplacementRevertingAutocorrectionToReplacements:(id)replacements
{
  replacementsCopy = replacements;
  autocorrectionRecord = [(UITextReplacementGeneratorForCorrections *)self autocorrectionRecord];

  if (autocorrectionRecord)
  {
    autocorrectionRecord2 = [(UITextReplacementGeneratorForCorrections *)self autocorrectionRecord];
    input = [autocorrectionRecord2 input];

    stringToReplace = [(UITextReplacementGenerator *)self stringToReplace];
    autocorrectionRecord3 = [(UITextReplacementGeneratorForCorrections *)self autocorrectionRecord];
    candidate = [autocorrectionRecord3 candidate];
    v11 = [stringToReplace isEqualToString:candidate];

    if (v11 && [(UITextReplacementGenerator *)self shouldAllowString:input intoReplacements:replacementsCopy])
    {
      v12 = [(UITextReplacementGenerator *)self replacementWithText:input];
      autocorrectionRecord4 = [(UITextReplacementGeneratorForCorrections *)self autocorrectionRecord];
      [v12 setUsageTrackingMask:{objc_msgSend(autocorrectionRecord4, "usageTrackingMask")}];

      [replacementsCopy addObject:v12];
      v14 = input;
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

- (void)addPreviouslySuggestedAutocorrectionToReplacements:(id)replacements
{
  replacementsCopy = replacements;
  autocorrectionRecord = [(UITextReplacementGeneratorForCorrections *)self autocorrectionRecord];

  if (autocorrectionRecord)
  {
    stringToReplace = [(UITextReplacementGenerator *)self stringToReplace];
    autocorrectionRecord2 = [(UITextReplacementGeneratorForCorrections *)self autocorrectionRecord];
    input = [autocorrectionRecord2 input];
    v8 = [stringToReplace isEqualToString:input];

    if (v8)
    {
      autocorrectionRecord3 = [(UITextReplacementGeneratorForCorrections *)self autocorrectionRecord];
      candidate = [autocorrectionRecord3 candidate];
      v11 = [(UITextReplacementGenerator *)self shouldAllowString:candidate intoReplacements:replacementsCopy];

      if (v11)
      {
        autocorrectionRecord4 = [(UITextReplacementGeneratorForCorrections *)self autocorrectionRecord];
        candidate2 = [autocorrectionRecord4 candidate];
        v14 = [(UITextReplacementGenerator *)self replacementWithText:candidate2];
        [replacementsCopy addObject:v14];
      }
    }
  }
}

- (void)addAutocorrectionGuessesToReplacements:(id)replacements
{
  v30 = *MEMORY[0x1E69E9840];
  replacementsCopy = replacements;
  v5 = [replacementsCopy count];
  if (v5 < [(UITextReplacementGeneratorForCorrections *)self maxCountAfterAutocorrectionGuesses])
  {
    v6 = +[UIKeyboardImpl sharedInstance];
    stringToReplace = [(UITextReplacementGenerator *)self stringToReplace];
    v23 = v6;
    v8 = [v6 generateAutocorrectionReplacements:stringToReplace];

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
        candidate = [v13 candidate];
        v15 = [(UITextReplacementGenerator *)self shouldAllowString:candidate intoReplacements:replacementsCopy];

        if (v15)
        {
          stringToReplace2 = [(UITextReplacementGenerator *)self stringToReplace];
          candidate2 = [v13 candidate];
          v18 = [stringToReplace2 _editDistanceFrom:candidate2];
          maxEditDistance = [(UITextReplacementGeneratorForCorrections *)self maxEditDistance];

          if (v18 <= maxEditDistance)
          {
            candidate3 = [v13 candidate];
            v21 = [(UITextReplacementGenerator *)self replacementWithText:candidate3];
            [replacementsCopy addObject:v21];

            v22 = [replacementsCopy count];
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

- (void)addSpellingGuessesForString:(id)string ToReplacements:(id)replacements
{
  v50 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  replacementsCopy = replacements;
  textChecker = [(UITextReplacementGeneratorForCorrections *)self textChecker];

  if (textChecker)
  {
    v9 = [replacementsCopy count];
    if (v9 < [(UITextReplacementGeneratorForCorrections *)self maxCountAfterSpellingGuesses])
    {
      v10 = [stringCopy length];
      v11 = +[UIKeyboardInputModeController sharedInputModeController];
      currentInputMode = [v11 currentInputMode];
      languageWithRegion = [currentInputMode languageWithRegion];

      textChecker2 = [(UITextReplacementGeneratorForCorrections *)self textChecker];
      v38 = languageWithRegion;
      v39 = stringCopy;
      v15 = [textChecker2 grammarGuessesForRange:0 inString:v10 language:{stringCopy, languageWithRegion}];

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
          if ([(UITextReplacementGenerator *)self shouldAllowString:v21 intoReplacements:replacementsCopy])
          {
            v22 = [(UITextReplacementGenerator *)self replacementWithText:v21];
            [replacementsCopy addObject:v22];

            v23 = [replacementsCopy count];
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

      textChecker3 = [(UITextReplacementGeneratorForCorrections *)self textChecker];
      v25 = [textChecker3 guessesForWordRange:0 inString:v10 language:{v39, v38}];

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
          v32 = [replacementsCopy count];
          if (v32 >= [(UITextReplacementGeneratorForCorrections *)self maxCountAfterSpellingGuesses])
          {
            break;
          }

          if ([(UITextReplacementGenerator *)self shouldAllowString:v31 intoReplacements:replacementsCopy])
          {
            stringToReplace = [(UITextReplacementGenerator *)self stringToReplace];
            v34 = [stringToReplace _editDistanceFrom:v31];
            maxEditDistance = [(UITextReplacementGeneratorForCorrections *)self maxEditDistance];

            if (v34 <= maxEditDistance)
            {
              v36 = [(UITextReplacementGenerator *)self replacementWithText:v31];
              [replacementsCopy addObject:v36];
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

      stringCopy = v39;
    }
  }
}

- (id)replacements
{
  v55 = *MEMORY[0x1E69E9840];
  stringToReplace = [(UITextReplacementGenerator *)self stringToReplace];
  v4 = [stringToReplace length];

  if (!v4)
  {
    goto LABEL_7;
  }

  replacementRange = [(UITextReplacementGenerator *)self replacementRange];

  if (!replacementRange)
  {
    goto LABEL_46;
  }

  v6 = +[UIKeyboardImpl activeInstance];
  autocorrectSpellingEnabled = [v6 autocorrectSpellingEnabled];

  if (!autocorrectSpellingEnabled)
  {
LABEL_7:
    replacementRange = 0;
    goto LABEL_46;
  }

  replacementRange = objc_alloc_init(MEMORY[0x1E695DF70]);
  stringToReplace2 = [(UITextReplacementGenerator *)self stringToReplace];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v10 = [stringToReplace2 rangeOfCharacterFromSet:whitespaceAndNewlineCharacterSet options:2];

  if (v10 == 0x7FFFFFFFFFFFFFFFLL && [(UITextReplacementGeneratorForCorrections *)self isStringMisspelled:stringToReplace2])
  {
    v11 = 1;
    goto LABEL_35;
  }

  if ([(UITextReplacementGeneratorForCorrections *)self forceSpellingGuesses])
  {
    v12 = +[UIKeyboardImpl activeInstance];
    generateAutocorrectionListForSelectedText = [v12 generateAutocorrectionListForSelectedText];

    autocorrection = [generateAutocorrectionListForSelectedText autocorrection];
    candidate = [autocorrection candidate];

    if ([candidate _containsEmoji])
    {
      v16 = +[UIKeyboardEmojiPreferences sharedInstance];
      v17 = +[UIKeyboardInputModeController sharedInputModeController];
      currentInputMode = [v17 currentInputMode];
      primaryLanguage = [currentInputMode primaryLanguage];
      v20 = [v16 typingNameForEmoji:candidate language:primaryLanguage];

      if ([v20 length])
      {
        v21 = [(UITextReplacementGenerator *)self replacementWithText:v20];
        [replacementRange addObject:v21];
      }

      goto LABEL_14;
    }

    emojiList = [generateAutocorrectionListForSelectedText emojiList];
    v23 = [emojiList count];

    if (v23)
    {
      v20 = candidate;
LABEL_14:
      v44 = v20;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      predictions = [generateAutocorrectionListForSelectedText predictions];
      v25 = [predictions countByEnumeratingWithState:&v49 objects:v54 count:16];
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
            objc_enumerationMutation(predictions);
          }

          candidate2 = [*(*(&v49 + 1) + 8 * v28) candidate];
          v30 = [(UITextReplacementGenerator *)self replacementWithText:candidate2];
          [replacementRange addObject:v30];

          if ([replacementRange count] > 1)
          {
            break;
          }

          if (v26 == ++v28)
          {
            v26 = [predictions countByEnumeratingWithState:&v49 objects:v54 count:16];
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
      emojiList2 = [generateAutocorrectionListForSelectedText emojiList];
      v32 = [emojiList2 countByEnumeratingWithState:&v45 objects:v53 count:16];
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
            objc_enumerationMutation(emojiList2);
          }

          candidate3 = [*(*(&v45 + 1) + 8 * v35) candidate];
          v37 = [(UITextReplacementGenerator *)self replacementWithText:candidate3];
          [replacementRange addObject:v37];

          if ([replacementRange count] > 2)
          {
            break;
          }

          if (v33 == ++v35)
          {
            v33 = [emojiList2 countByEnumeratingWithState:&v45 objects:v53 count:16];
            if (v33)
            {
              goto LABEL_24;
            }

            break;
          }
        }
      }

      v38 = replacementRange;
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
    v39 = [(UITextReplacementGeneratorForCorrections *)self addReplacementRevertingAutocorrectionToReplacements:replacementRange];
    if (v39)
    {
      v40 = v39;

      v41 = [(UITextReplacementGeneratorForCorrections *)self isStringMisspelled:v40];
      stringToReplace2 = v40;
      if (v41)
      {
LABEL_37:
        [(UITextReplacementGeneratorForCorrections *)self addAutocorrectionGuessesToReplacements:replacementRange];
LABEL_42:
        [(UITextReplacementGeneratorForCorrections *)self addSpellingGuessesForString:stringToReplace2 ToReplacements:replacementRange];
        if (!self->_showRevertingAutocorrectionInPredictionView)
        {
          [(UITextReplacementGenerator *)self addPlaceholderForEmptyReplacements:replacementRange];
        }

        goto LABEL_44;
      }
    }

    else
    {
      [(UITextReplacementGeneratorForCorrections *)self addPreviouslySuggestedAutocorrectionToReplacements:replacementRange];
      if (v11)
      {
        goto LABEL_37;
      }
    }

LABEL_39:
    if ([(UITextReplacementGeneratorForCorrections *)self forceAutocorrectionGuesses])
    {
      [(UITextReplacementGeneratorForCorrections *)self addAutocorrectionGuessesToReplacements:replacementRange];
    }

    if (![(UITextReplacementGeneratorForCorrections *)self forceSpellingGuesses])
    {
      goto LABEL_44;
    }

    goto LABEL_42;
  }

LABEL_44:
  v42 = replacementRange;
LABEL_45:

LABEL_46:

  return replacementRange;
}

@end