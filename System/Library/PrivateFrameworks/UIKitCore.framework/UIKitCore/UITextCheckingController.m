@interface UITextCheckingController
- (BOOL)continuousSpellCheckingEnabled;
- (BOOL)foundApostropheAfterRange:(_NSRange)a3;
- (BOOL)performFinalGrammarCheckingWithAutocorrection:(BOOL)a3;
- (UITextCheckingController)initWithClient:(id)a3;
- (_NSRange)nsRangeForTextRange:(id)a3;
- (_NSRange)selectedRange;
- (_NSRange)terminatedSentenceRangeInTextRange:(id)a3;
- (id)annotatedStringWithValidAnnotationsForAnnotatedString:(id)a3;
- (id)annotatedSubstringForRange:(id)a3;
- (id)textChecker;
- (id)validAnnotations;
- (void)_addCorrectionUnderlinesForCandidates:(id)a3 ranges:(id)a4 inSentenceRange:(id)a5;
- (void)_addGrammarAttributesForRange:(_NSRange)a3 details:(id)a4 inAnnotatedString:(id)a5;
- (void)_handleGrammarCheckingResults:(id)a3 sequenceNumber:(int64_t)a4 forSentenceRange:(id)a5 autocorrectionCount:(unint64_t *)a6;
- (void)_pauseTimer:(id)a3;
- (void)checkGrammarForSentenceInRange:(id)a3 onPause:(BOOL)a4;
- (void)checkSpellingForSelectionChangeFromRange:(_NSRange)a3;
- (void)checkSpellingForWordInRange:(id)a3;
- (void)dealloc;
- (void)didChangeSelectionFromRange:(id)a3;
- (void)feedbackForGrammarMarkersFromWordsInRange:(id)a3 replacementText:(id)a4;
- (void)invalidate;
- (void)invalidateTimers;
- (void)preheatTextChecker;
- (void)removeGrammarAnnotationFromWordAtPosition:(id)a3;
- (void)removeGrammarMarkersFromWordsInRange:(id)a3;
- (void)removeSpellingMarkersFromWordInRange:(id)a3;
- (void)willReplaceTextInRange:(id)a3 withText:(id)a4;
@end

@implementation UITextCheckingController

- (void)dealloc
{
  [(UITextCheckingController *)self invalidate];
  v3.receiver = self;
  v3.super_class = UITextCheckingController;
  [(UITextCheckingController *)&v3 dealloc];
}

- (void)invalidate
{
  [(UITextCheckingController *)self invalidateTimers];
  client = self->_client;
  self->_client = 0;

  textChecker = self->_textChecker;
  self->_textChecker = 0;
}

- (void)invalidateTimers
{
  pauseTimer = self->_pauseTimer;
  if (pauseTimer)
  {
    [(NSTimer *)pauseTimer invalidate];
    v4 = self->_pauseTimer;
    self->_pauseTimer = 0;
  }
}

- (UITextCheckingController)initWithClient:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v15.receiver = self;
    v15.super_class = UITextCheckingController;
    v6 = [(UITextCheckingController *)&v15 init];
    self = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_client, a3);
      v7 = [MEMORY[0x1E695DF00] distantPast];
      [v7 timeIntervalSinceReferenceDate];
      self->_lastPauseTimer = v8;

      self->_selectedRangeFromPreviousUnchecked = xmmword_18A678470;
      self->_previousCheckedSentenceRange = xmmword_18A678470;
      self->_previousCheckedSelectedRange.length = 0;
      self->_prechangeCheckingSequenceNumber = 0;
      self->_previousCheckedSelectedRange.location = 0x7FFFFFFFFFFFFFFFLL;
      *&self->_tccClientFlags = *&self->_tccClientFlags & 0xFE | objc_opt_respondsToSelector() & 1;
      if (objc_opt_respondsToSelector())
      {
        v9 = 2;
      }

      else
      {
        v9 = 0;
      }

      *&self->_tccClientFlags = *&self->_tccClientFlags & 0xFD | v9;
      if (objc_opt_respondsToSelector())
      {
        v10 = 4;
      }

      else
      {
        v10 = 0;
      }

      *&self->_tccClientFlags = *&self->_tccClientFlags & 0xFB | v10;
      if (objc_opt_respondsToSelector())
      {
        v11 = 8;
      }

      else
      {
        v11 = 0;
      }

      *&self->_tccClientFlags = *&self->_tccClientFlags & 0xF7 | v11;
      if (objc_opt_respondsToSelector())
      {
        v12 = 16;
      }

      else
      {
        v12 = 0;
      }

      *&self->_tccClientFlags = *&self->_tccClientFlags & 0xEF | v12;
      if (objc_opt_respondsToSelector())
      {
        v13 = 32;
      }

      else
      {
        v13 = 0;
      }

      *&self->_tccClientFlags = *&self->_tccClientFlags & 0xDF | v13;
    }
  }

  return self;
}

- (BOOL)continuousSpellCheckingEnabled
{
  client = self->_client;
  if (client && (*&self->_tccClientFlags & 0x20) != 0)
  {
    return [(UITextCheckingClient *)client continuousSpellCheckingEnabled];
  }

  else
  {
    return 0;
  }
}

- (id)validAnnotations
{
  if (qword_1ED49ADC8 != -1)
  {
    dispatch_once(&qword_1ED49ADC8, &__block_literal_global_378_1);
  }

  v3 = qword_1ED49ADC0;

  return v3;
}

void __44__UITextCheckingController_validAnnotations__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{*off_1E70EC8B8, @"NSDominantLanguageAttributeName", @"NSDominantScriptAttributeName", @"NSGrammarCorrections", *off_1E70EC928, *off_1E70EC930, @"NSGrammarUserDescription", @"NSGrammarConfidenceScore", @"NSGrammarIssueType", @"NSGrammarLanguage", @"NSGrammarTargetPair", @"NSGrammarAutocorrected", *off_1E70EC948, *off_1E70EC980, *off_1E70EC9A8, *off_1E70EC9B8, *off_1E70EC9F0, *off_1E70EC9F8, *off_1E70ECA00, *off_1E70ECA10, *off_1E70ECA20, *off_1E70ECA28, *off_1E70ECAB0, 0}];
  v1 = qword_1ED49ADC0;
  qword_1ED49ADC0 = v0;
}

- (id)textChecker
{
  textChecker = self->_textChecker;
  if (!textChecker)
  {
    v4 = [[UITextChecker alloc] _initWithAsynchronousLoading:1];
    v5 = self->_textChecker;
    self->_textChecker = v4;

    textChecker = self->_textChecker;
  }

  if ([(UITextChecker *)textChecker _doneLoading])
  {
    v6 = self->_textChecker;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)preheatTextChecker
{
  if (!self->_textChecker)
  {
    v4 = [[UITextChecker alloc] _initWithAsynchronousLoading:1];
    textChecker = self->_textChecker;
    self->_textChecker = v4;
  }
}

- (_NSRange)nsRangeForTextRange:(id)a3
{
  v3 = 0;
  v4 = 0x7FFFFFFFFFFFFFFFLL;
  if (a3)
  {
    client = self->_client;
    if (client)
    {
      v7 = a3;
      v8 = [(UITextCheckingClient *)client beginningOfDocument];
      v9 = [v7 start];
      v4 = [(UITextCheckingClient *)client offsetFromPosition:v8 toPosition:v9];

      v10 = self->_client;
      v11 = [v7 start];
      v12 = [v7 end];

      v3 = [(UITextCheckingClient *)v10 offsetFromPosition:v11 toPosition:v12];
    }
  }

  v13 = v4;
  v14 = v3;
  result.length = v14;
  result.location = v13;
  return result;
}

- (_NSRange)selectedRange
{
  client = self->_client;
  if (client)
  {
    v4 = [(UITextCheckingClient *)client selectedTextRange];
    v5 = [(UITextCheckingController *)self nsRangeForTextRange:v4];
    v7 = v6;

    v8 = v5;
    v9 = v7;
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
    v9 = 0;
  }

  result.length = v9;
  result.location = v8;
  return result;
}

- (id)annotatedStringWithValidAnnotationsForAnnotatedString:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 length])
  {
    v6 = [(UITextCheckingController *)self validAnnotations];
    v7 = [MEMORY[0x1E695DF70] array];
    v8 = [v5 length];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __82__UITextCheckingController_annotatedStringWithValidAnnotationsForAnnotatedString___block_invoke;
    v23[3] = &unk_1E7126770;
    v9 = v6;
    v24 = v9;
    v10 = v7;
    v25 = v10;
    [v5 enumerateAttributesInRange:0 options:v8 usingBlock:{0x100000, v23}];
    if ([v10 count])
    {
      v11 = [v5 mutableCopy];
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v12 = v10;
      v13 = [v12 countByEnumeratingWithState:&v19 objects:v26 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v20;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v20 != v15)
            {
              objc_enumerationMutation(v12);
            }

            [v11 removeAttribute:*(*(&v19 + 1) + 8 * i) range:{0, objc_msgSend(v11, "length", v19)}];
          }

          v14 = [v12 countByEnumeratingWithState:&v19 objects:v26 count:16];
        }

        while (v14);
      }
    }

    else
    {
      v11 = v5;
    }

    v17 = v11;
  }

  else
  {
    v17 = v5;
  }

  return v17;
}

void __82__UITextCheckingController_annotatedStringWithValidAnnotationsForAnnotatedString___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if (([*(a1 + 32) containsObject:v8] & 1) == 0 && (objc_msgSend(*(a1 + 40), "containsObject:", v8) & 1) == 0)
        {
          [*(a1 + 40) addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (id)annotatedSubstringForRange:(id)a3
{
  v3 = 0;
  if (a3 && self->_client)
  {
    v5 = a3;
    v6 = [v5 start];
    v7 = [v5 end];

    v8 = [(UITextCheckingClient *)self->_client endOfDocument];
    v9 = v8;
    v3 = 0;
    if (v6 && v7 && v8)
    {
      if ([(UITextCheckingClient *)self->_client comparePosition:v6 toPosition:v8]== -1)
      {
        if ([(UITextCheckingClient *)self->_client comparePosition:v7 toPosition:v9]== 1)
        {
          v10 = v9;

          v7 = v10;
        }

        v11 = [(UITextCheckingClient *)self->_client textRangeFromPosition:v6 toPosition:v7];
        if (v11)
        {
          v12 = [(UITextCheckingClient *)self->_client annotatedSubstringForRange:v11];
        }

        else
        {
          v12 = 0;
        }

        v3 = [(UITextCheckingController *)self annotatedStringWithValidAnnotationsForAnnotatedString:v12];
      }

      else
      {
        v3 = 0;
      }
    }
  }

  return v3;
}

- (void)checkSpellingForWordInRange:(id)a3
{
  v14 = a3;
  v4 = [(UITextCheckingController *)self textChecker];
  if (v14)
  {
    client = self->_client;
    if (client && v4 != 0)
    {
      v7 = [(UITextCheckingClient *)client textInRange:v14];
      v8 = [v7 length];
      v9 = +[UITextChecker keyboardLanguages];
      v10 = [v4 rangeOfMisspelledWordInString:v7 range:0 startingAt:v8 wrap:0 languages:{0, v9}];

      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [(UITextCheckingClient *)self->_client removeAnnotation:*off_1E70ECA00 forRange:v14];
      }

      else
      {
        v11 = [(UITextCheckingController *)self annotatedSubstringForRange:v14];
        v12 = v11;
        if (v11 && [v11 length])
        {
          v13 = [v12 mutableCopy];
          [v13 addAttribute:*off_1E70ECA00 value:&unk_1EFE338C8 range:{0, objc_msgSend(v13, "length")}];
          [(UITextCheckingClient *)self->_client replaceRange:v14 withAnnotatedString:v13 relativeReplacementRange:0x7FFFFFFFFFFFFFFFLL, 0];
        }
      }
    }
  }
}

- (void)_addGrammarAttributesForRange:(_NSRange)a3 details:(id)a4 inAnnotatedString:(id)a5
{
  location = a3.location;
  v49 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a5;
  v33 = [v7 length];
  v8 = +[UITextChecker keyboardLanguages];
  v36 = [v8 firstObject];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v10)
  {
    v11 = v10;
    v43 = 0;
    v39 = 0;
    v12 = 0;
    v13 = *v45;
    v31 = *off_1E70EC9F8;
    v32 = *off_1E70ECA00;
    v42 = *v45;
    v35 = v9;
    while (1)
    {
      v14 = 0;
      v37 = v11;
      do
      {
        if (*v45 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v44 + 1) + 8 * v14);
        if (objc_opt_respondsToSelector())
        {
          v16 = [v15 objectForKey:@"NSGrammarCorrections"];
          if (v16)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v17 = v16;
              v16 = 0;
              goto LABEL_52;
            }

            if ([v16 count])
            {
              v17 = [v15 objectForKey:@"NSGrammarUserDescription"];
              if (v17)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {

                  v17 = 0;
                }
              }

              v18 = [v15 objectForKey:{@"NSGrammarIssueType", v31}];
              if (v18)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {

                  v18 = 0;
                }
              }

              v41 = v18;
              v19 = [v15 objectForKey:@"NSGrammarTargetPair"];
              if (v19)
              {
                v20 = v19;
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v40 = v20;
LABEL_22:
                  v21 = [v15 objectForKey:@"NSGrammarConfidenceScore"];
                  if (v21)
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {

                      v21 = 0;
                    }
                  }

                  v22 = [v15 objectForKey:@"NSGrammarRange"];

                  if (v22)
                  {
                    v23 = v43;
                    if (objc_opt_respondsToSelector())
                    {
                      v24 = [v22 rangeValue];
                      if (v33 < v24 + location)
                      {
                        v43 = 0;
                        v39 = 0x7FFFFFFFFFFFFFFFLL;
                        goto LABEL_51;
                      }

                      v39 = v24 + location;
                      if (v24 + location + v25 <= v33)
                      {
                        v23 = v25;
                      }

                      else
                      {
                        v23 = v33 - (v24 + location);
                      }

                      if (!v23)
                      {
LABEL_50:
                        v43 = 0;
                        goto LABEL_51;
                      }

LABEL_31:
                      v38 = v22;
                      v26 = [off_1E70ECBA0 alloc];
                      [v7 string];
                      v28 = v27 = v7;
                      [v28 substringWithRange:{v39, v23}];
                      v29 = v43 = v23;
                      v30 = [v26 initWithPrimaryString:v29 alternativeStrings:v16];

                      v7 = v27;
                      [v27 addAttribute:@"NSGrammarCorrections" value:v16 range:{v39, v43}];
                      if (v17)
                      {
                        [v27 addAttribute:@"NSGrammarUserDescription" value:v17 range:{v39, v43}];
                      }

                      if (v41)
                      {
                        [v27 addAttribute:@"NSGrammarIssueType" value:v41 range:{v39, v43}];
                      }

                      v11 = v37;
                      v22 = v38;
                      if (v40)
                      {
                        [v7 addAttribute:@"NSGrammarTargetPair" value:v40 range:{v39, v43}];
                      }

                      if (v21)
                      {
                        [v7 addAttribute:@"NSGrammarConfidenceScore" value:v21 range:{v39, v43}];
                      }

                      if (v36)
                      {
                        [v7 addAttribute:@"NSGrammarLanguage" value:v36 range:{v39, v43}];
                      }

                      if (qword_1ED49AE20 != -1)
                      {
                        dispatch_once(&qword_1ED49AE20, &__block_literal_global_535_1);
                      }

                      if (byte_1ED49AD63 == 1)
                      {
                        [v7 addAttribute:v32 value:&unk_1EFE338E0 range:{v39, v43}];
                        v22 = v38;
                        [v7 addAttribute:v31 value:v30 range:{v39, v43}];
                      }

                      v9 = v35;
LABEL_51:

                      v12 = v22;
LABEL_52:

                      v13 = v42;
                      goto LABEL_53;
                    }
                  }

                  else
                  {
                    v23 = v43;
                  }

                  if (!v23)
                  {
                    goto LABEL_50;
                  }

                  goto LABEL_31;
                }
              }

              v40 = 0;
              goto LABEL_22;
            }
          }

LABEL_53:
        }

        ++v14;
      }

      while (v11 != v14);
      v11 = [v9 countByEnumeratingWithState:&v44 objects:v48 count:16];
      if (!v11)
      {
        goto LABEL_58;
      }
    }
  }

  v12 = 0;
LABEL_58:
}

- (void)_addCorrectionUnderlinesForCandidates:(id)a3 ranges:(id)a4 inSentenceRange:(id)a5
{
  v37 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[UIKeyboardImpl activeInstance];
  v11 = [v10 _textChoicesAssistant];

  if (self->_client && v11 && +[UITextSelectionDisplayInteraction isTextAccelerationUIEnabled])
  {
    v34 = v11;
    if (+[UIKeyboard usesInputSystemUI])
    {
      v33 = [MEMORY[0x1E695DF90] dictionary];
    }

    else
    {
      v33 = 0;
    }

    v32 = v8;
    if ([v37 count])
    {
      v12 = 0;
      v35 = v9;
      do
      {
        if (v12 >= [v8 count])
        {
          break;
        }

        v13 = [v8 objectAtIndex:v12];
        v14 = [v13 rangeValue];
        v16 = v15;

        client = self->_client;
        v18 = [v9 start];
        v19 = [(UITextCheckingClient *)client positionFromPosition:v18 offset:v14];

        if (v19)
        {
          v20 = [(UITextCheckingClient *)self->_client positionFromPosition:v19 offset:v16];
          if (v20)
          {
            v21 = [(UITextCheckingClient *)self->_client textRangeFromPosition:v19 toPosition:v20];
            if (v21)
            {
              v22 = v21;
              v23 = [v37 objectAtIndex:v12];
              if (objc_opt_respondsToSelector())
              {
                [v23 setConfidence:2];
              }

              v24 = objc_alloc(MEMORY[0x1E69D9588]);
              v36 = [v24 initWithAutocorrection:v23 alternateCorrections:MEMORY[0x1E695E0F0]];
              v25 = [MEMORY[0x1E69D9570] listWithCorrections:?];
              v26 = [v23 input];
              [v34 adjustRangesAfterPosition:v19 byOffset:{v16 - objc_msgSend(v26, "length")}];

              [v34 addUnderlineForCandidate:v23 range:v22];
              [v34 addList:v25 forCandidate:v23];
              if (v33)
              {
                v27 = [v23 candidate];
                v28 = [v23 input];
                [v33 setObject:v27 forKey:v28];
              }

              v8 = v32;
            }

            v9 = v35;
          }
        }

        else
        {
          v20 = 0;
        }

        ++v12;
      }

      while (v12 < [v37 count]);
    }

    if ([v37 count])
    {
      v29 = [v37 copy];
      v30 = _recentGrammarCandidates;
      _recentGrammarCandidates = v29;
    }

    v11 = v34;
    if (v33 && [v33 count])
    {
      v31 = +[UIKeyboardImpl activeInstance];
      [v31 handleGrammarCorrectionEntries:v33];

      v8 = v32;
    }
  }
}

- (void)_handleGrammarCheckingResults:(id)a3 sequenceNumber:(int64_t)a4 forSentenceRange:(id)a5 autocorrectionCount:(unint64_t *)a6
{
  v82 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v58 = [MEMORY[0x1E695DF70] array];
  v57 = [MEMORY[0x1E695DF70] array];
  v59 = [(UITextCheckingController *)self textChecker];
  if (self->_prechangeCheckingSequenceNumber <= a4)
  {
    v12 = [(UITextCheckingController *)self annotatedSubstringForRange:v11];
    v13 = v12;
    if (v12 && [v12 length])
    {
      v69 = self;
      v53 = v11;
      v51 = v13;
      v70 = [v13 mutableCopy];
      v14 = +[UIKeyboardImpl activeInstance];
      v62 = [v14 autocorrectionPreferenceForTraits];
      v50 = v14;
      v15 = [v14 smartPunctuationController];
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      v79 = 0u;
      v54 = v10;
      v16 = v10;
      v17 = [v16 countByEnumeratingWithState:&v76 objects:v81 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v77;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v77 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v76 + 1) + 8 * i);
            if ([v21 resultType] == 4)
            {
              v22 = [v21 range];
              v24 = v23;
              v25 = [v21 grammarDetails];
              v26 = _detailsByApplyingSmartQuotes(v25, v15);
              [(UITextCheckingController *)v69 _addGrammarAttributesForRange:v22 details:v24 inAnnotatedString:v26, v70];
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v76 objects:v81 count:16];
        }

        while (v18);
      }

      v52 = a6;

      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v27 = v16;
      v28 = [v27 countByEnumeratingWithState:&v72 objects:v80 count:16];
      if (v28)
      {
        v29 = v28;
        length = 0;
        v64 = 0;
        v65 = 0;
        v67 = 0;
        v68 = 0;
        v71 = *v73;
        v56 = *off_1E70ECA00;
        v55 = *off_1E70EC9F8;
        range1 = 0x7FFFFFFFFFFFFFFFLL;
        range1_8 = v27;
        v30 = v62;
        do
        {
          for (j = 0; j != v29; ++j)
          {
            if (*v73 != v71)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v72 + 1) + 8 * j);
            v33 = [v32 range];
            v35 = v34;
            v36 = [v32 replacementString];
            v37 = _stringByApplyingSmartQuotes(v36, v15);

            v38 = [v37 length];
            if (v30)
            {
              v39 = v38;
              v40 = [v32 resultType] != 512 || v37 == 0;
              if (!v40 && ((v68 & 0x8000000000000000) == 0 || v33 >= -v68))
              {
                ++v67;
                v41 = v33 + v68;
                if (v41 >= v64 + v65)
                {
                  if (v41 + v35 <= [v70 length])
                  {
                    [v59 recordResponse:4 toGrammarDetailInAnnotatedString:v70 range:{v41, v35}];
                    v42 = [v70 string];
                    v66 = [v42 substringWithRange:{v41, v35}];

                    [v70 replaceCharactersInRange:v41 withString:{v35, v37}];
                    v44.location = [v32 range];
                    v43 = v44;
                    v44.length = length;
                    if (length)
                    {
                      v44.location = range1;
                      v45 = NSUnionRange(v44, v43);
                      range1 = v45.location;
                      length = v45.length;
                    }

                    else
                    {
                      range1 = v44.location;
                      length = v43.length;
                    }

                    v46 = v68;
                    v27 = range1_8;
                    v47 = v66;
                    if (v39)
                    {
                      if (v66)
                      {
                        [v70 addAttribute:@"NSGrammarAutocorrected" value:v66 range:{v41, v39}];
                      }

                      [v70 removeAttribute:v56 range:{v41, v39}];
                      [v70 removeAttribute:@"NSGrammarUserDescription" range:{v41, v39}];
                      [v70 removeAttribute:v55 range:{v41, v39}];
                      v48 = [MEMORY[0x1E696B098] valueWithRange:{v41, v39}];
                      [v58 addObject:v48];

                      v49 = [objc_alloc(MEMORY[0x1E69D95F0]) initWithCandidate:v37 forInput:v66];
                      [v57 addObject:v49];

                      v47 = v66;
                      v46 = v68;
                    }

                    v68 = v46 - v35 + v39;

                    v64 = v41;
                    v65 = v39;
                    v30 = v62;
                  }

                  else
                  {
                    v27 = range1_8;
                    v30 = v62;
                  }
                }
              }
            }
          }

          v29 = [v27 countByEnumeratingWithState:&v72 objects:v80 count:16];
        }

        while (v29);
      }

      else
      {
        length = 0;
        v67 = 0;
        range1 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v11 = v53;
      [(UITextCheckingClient *)v69->_client replaceRange:v53 withAnnotatedString:v70 relativeReplacementRange:range1, length];
      v13 = v51;
      if (v52)
      {
        *v52 = v67;
      }

      [(UITextCheckingController *)v69 _addCorrectionUnderlinesForCandidates:v57 ranges:v58 inSentenceRange:v53];

      v10 = v54;
    }

    else if (a6)
    {
      *a6 = 0;
    }
  }

  else if (a6)
  {
    *a6 = 0;
  }
}

- (void)checkGrammarForSentenceInRange:(id)a3 onPause:(BOOL)a4
{
  v4 = a4;
  v30[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(UITextCheckingController *)self textChecker];
  v8 = v7;
  if (v6)
  {
    if (self->_client && v7 != 0)
    {
      v10 = +[UITextChecker keyboardLanguages];
      v11 = [v10 firstObject];

      if ([UITextChecker grammarCheckingEnabledForLanguage:v11])
      {
        v12 = [(UITextCheckingClient *)self->_client textInRange:v6];
        v13 = v12;
        if (v12 && [v12 length])
        {
          v14 = self;
          if (v4)
          {
            v29 = @"IgnoreTermination";
            v15 = [MEMORY[0x1E696AD98] numberWithInteger:2];
            v30[0] = v15;
            v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
          }

          else
          {
            v16 = MEMORY[0x1E695E0F8];
          }

          v17 = [v13 length];
          v25[0] = MEMORY[0x1E69E9820];
          v25[1] = 3221225472;
          v25[2] = __67__UITextCheckingController_checkGrammarForSentenceInRange_onPause___block_invoke;
          v25[3] = &unk_1E71273F0;
          v28 = v4;
          v18 = v14;
          v26 = v18;
          v19 = v6;
          v27 = v19;
          [v8 requestGrammarCheckingOfString:v13 range:0 language:v17 options:v11 completionHandler:{v16, v25}];
          if (!v4)
          {
            if (qword_1ED49AE50 != -1)
            {
              dispatch_once(&qword_1ED49AE50, &__block_literal_global_624_0);
            }

            if (byte_1ED49AD66 == 1)
            {
              v20 = [v13 length];
              v21[0] = MEMORY[0x1E69E9820];
              v21[1] = 3221225472;
              v21[2] = __67__UITextCheckingController_checkGrammarForSentenceInRange_onPause___block_invoke_3;
              v21[3] = &unk_1E7127418;
              v22 = v18;
              v23 = v22;
              v24 = v19;
              [v8 requestProofreadingReviewOfString:v13 range:0 language:v20 options:v11 completionHandler:{MEMORY[0x1E695E0F8], v21}];
            }
          }
        }
      }
    }
  }
}

void __67__UITextCheckingController_checkGrammarForSentenceInRange_onPause___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  Main = CFRunLoopGetMain();
  v7 = *MEMORY[0x1E695E8D0];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__UITextCheckingController_checkGrammarForSentenceInRange_onPause___block_invoke_2;
  block[3] = &unk_1E7101EF0;
  v10 = v5;
  v14 = *(a1 + 48);
  v11 = *(a1 + 32);
  v13 = a2;
  v12 = *(a1 + 40);
  v8 = v5;
  CFRunLoopPerformBlock(Main, v7, block);
}

void __67__UITextCheckingController_checkGrammarForSentenceInRange_onPause___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [v9 resultType];
        if (v10 == 4 || v10 == 512 && (*(a1 + 64) & 1) == 0)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [*(a1 + 40) _handleGrammarCheckingResults:v3 sequenceNumber:*(a1 + 56) forSentenceRange:*(a1 + 48) autocorrectionCount:0];
  objc_autoreleasePoolPop(v2);
}

void __67__UITextCheckingController_checkGrammarForSentenceInRange_onPause___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  Main = CFRunLoopGetMain();
  v5 = *MEMORY[0x1E695E8D0];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__UITextCheckingController_checkGrammarForSentenceInRange_onPause___block_invoke_4;
  v10[3] = &unk_1E70F6B40;
  v11 = v3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v12 = v6;
  v13 = v7;
  v14 = v8;
  v9 = v3;
  CFRunLoopPerformBlock(Main, v5, v10);
}

void __67__UITextCheckingController_checkGrammarForSentenceInRange_onPause___block_invoke_4(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x1E695DF70] array];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if ([v9 resultType] == 4)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  [*(a1 + 40) _handleGrammarCheckingResults:v3 sequenceNumber:*(*(a1 + 48) + 88) forSentenceRange:*(a1 + 56) autocorrectionCount:0];
  objc_autoreleasePoolPop(v2);
}

- (void)removeGrammarMarkersFromWordsInRange:(id)a3
{
  v4 = a3;
  if (v4 && self->_client)
  {
    if (qword_1ED49AE20 != -1)
    {
      dispatch_once(&qword_1ED49AE20, &__block_literal_global_535_1);
    }

    if (byte_1ED49AD63 == 1)
    {
      v5 = [(UITextCheckingController *)self annotatedSubstringForRange:v4];
      v6 = [v5 length];
      v19 = 0;
      v20 = 0;
      if (v6)
      {
        v7 = v6;
        v8 = 0;
        v9 = *off_1E70ECA00;
        do
        {
          v10 = [v5 attribute:v9 atIndex:v8 longestEffectiveRange:&v19 inRange:{v8, v7 - v8}];
          v11 = v10;
          if (v10 && [v10 integerValue] == 1)
          {
            v12 = [v5 attribute:@"NSGrammarCorrections" atIndex:v19 effectiveRange:0];
            if (v12)
            {
              client = self->_client;
              v14 = [v4 start];
              v15 = [(UITextCheckingClient *)client positionFromPosition:v14 offset:v19];

              if (v15)
              {
                v16 = [(UITextCheckingClient *)self->_client positionFromPosition:v15 offset:v20];
                if (v16)
                {
                  v17 = [(UITextCheckingClient *)self->_client textRangeFromPosition:v15 toPosition:v16];
                  if (v17)
                  {
                    v18 = v17;
                    [(UITextCheckingClient *)self->_client removeAnnotation:v9 forRange:v17];
                    [(UITextCheckingClient *)self->_client removeAnnotation:@"NSGrammarCorrections" forRange:v18];
                    [(UITextCheckingClient *)self->_client removeAnnotation:@"NSGrammarUserDescription" forRange:v18];
                    [(UITextCheckingClient *)self->_client removeAnnotation:@"NSGrammarIssueType" forRange:v18];
                    [(UITextCheckingClient *)self->_client removeAnnotation:@"NSGrammarTargetPair" forRange:v18];
                    [(UITextCheckingClient *)self->_client removeAnnotation:@"NSGrammarLanguage" forRange:v18];
                  }
                }
              }

              else
              {
                v16 = 0;
              }
            }
          }

          v8 = v20 + v19;
        }

        while (v20 + v19 < v7);
      }
    }
  }
}

- (void)removeGrammarAnnotationFromWordAtPosition:(id)a3
{
  v4 = a3;
  if (v4)
  {
    client = self->_client;
    if (client)
    {
      v9 = v4;
      v6 = [(UITextCheckingClient *)client tokenizer];
      v7 = [v6 rangeEnclosingPosition:v9 withGranularity:1 inDirection:0];

      if (v7 || (-[UITextCheckingClient tokenizer](self->_client, "tokenizer"), v8 = objc_claimAutoreleasedReturnValue(), [v8 rangeEnclosingPosition:v9 withGranularity:1 inDirection:1], v7 = objc_claimAutoreleasedReturnValue(), v8, v4 = v9, v7))
      {
        [(UITextCheckingClient *)self->_client removeAnnotation:@"NSGrammarAutocorrected" forRange:v7];
        [(UITextCheckingClient *)self->_client removeAnnotation:@"NSGrammarCorrections" forRange:v7];
        [(UITextCheckingClient *)self->_client removeAnnotation:@"NSGrammarUserDescription" forRange:v7];
        [(UITextCheckingClient *)self->_client removeAnnotation:@"NSGrammarIssueType" forRange:v7];
        [(UITextCheckingClient *)self->_client removeAnnotation:@"NSGrammarTargetPair" forRange:v7];
        [(UITextCheckingClient *)self->_client removeAnnotation:@"NSGrammarLanguage" forRange:v7];

        v4 = v9;
      }
    }
  }
}

- (BOOL)performFinalGrammarCheckingWithAutocorrection:(BOOL)a3
{
  v3 = a3;
  v35[1] = *MEMORY[0x1E69E9840];
  v5 = [(UITextCheckingController *)self textChecker];
  if (v5 && self->_client)
  {
    v6 = +[UITextChecker keyboardLanguages];
    v7 = [v6 firstObject];

    if ([UITextChecker grammarCheckingEnabledForLanguage:v7])
    {
      v8 = [(UITextCheckingClient *)self->_client tokenizer];
      v9 = [(UITextCheckingClient *)self->_client endOfDocument];
      v10 = [v8 rangeEnclosingPosition:v9 withGranularity:2 inDirection:1];

      if (v10)
      {
        v11 = [(UITextCheckingClient *)self->_client textInRange:v10];
        v12 = v11;
        if (v11 && [v11 length])
        {
          v13 = [MEMORY[0x1E695DF70] array];
          v27 = v10;
          if (v3)
          {
            v34 = @"ControlRepeatedAutocorrections";
            v35[0] = MEMORY[0x1E695E110];
            v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
          }

          else
          {
            v14 = MEMORY[0x1E695E0F8];
          }

          v25 = v14;
          v26 = v12;
          v16 = [v5 finalResultsFromCheckingString:v12 range:0 language:objc_msgSend(v12 options:{"length"), v7, v14}];
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v17 = [v16 countByEnumeratingWithState:&v29 objects:v33 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v30;
            do
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v30 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v29 + 1) + 8 * i);
                v22 = [v21 resultType];
                if (v22 != 4 && (v22 != 512 || !v3))
                {
                  continue;
                }

                [v13 addObject:v21];
              }

              v18 = [v16 countByEnumeratingWithState:&v29 objects:v33 count:16];
            }

            while (v18);
          }

          if (v13)
          {
            v10 = v27;
            if ([v13 count])
            {
              v28 = 0;
              [(UITextCheckingController *)self _handleGrammarCheckingResults:v13 sequenceNumber:self->_prechangeCheckingSequenceNumber forSentenceRange:v27 autocorrectionCount:&v28];
              v15 = v28 != 0;
            }

            else
            {
              v15 = 0;
            }
          }

          else
          {
            v15 = 0;
            v10 = v27;
          }

          v12 = v26;
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)removeSpellingMarkersFromWordInRange:(id)a3
{
  if (a3)
  {
    client = self->_client;
    if (client)
    {
      [(UITextCheckingClient *)client removeAnnotation:*off_1E70ECA00 forRange:a3];
    }
  }
}

- (BOOL)foundApostropheAfterRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  client = self->_client;
  v7 = [(UITextCheckingClient *)client beginningOfDocument];
  v8 = [(UITextCheckingClient *)client positionFromPosition:v7 offset:location + length];

  if (!v8)
  {
    v9 = 0;
LABEL_7:
    v13 = 0;
    goto LABEL_10;
  }

  v9 = [(UITextCheckingClient *)self->_client positionFromPosition:v8 offset:1];
  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = [(UITextCheckingClient *)self->_client textRangeFromPosition:v8 toPosition:v9];
  if (!v10)
  {
    goto LABEL_7;
  }

  v11 = v10;
  v12 = [(UITextCheckingClient *)self->_client textInRange:v10];
  if ([v12 isEqualToString:@"'"])
  {
    v13 = 1;
  }

  else
  {
    v13 = [v12 isEqualToString:@"’"];
  }

LABEL_10:
  return v13;
}

- (_NSRange)terminatedSentenceRangeInTextRange:(id)a3
{
  v3 = [(UITextCheckingClient *)self->_client textInRange:a3];
  v4 = [v3 length];
  v5 = v4;
  if (qword_1ED49ADE8 == -1)
  {
    if (!v4)
    {
LABEL_14:
      v14 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_15;
    }
  }

  else
  {
    dispatch_once(&qword_1ED49ADE8, &__block_literal_global_412_0);
    if (!v5)
    {
      goto LABEL_14;
    }
  }

  v6 = [v3 rangeOfCharacterFromSet:qword_1ED49ADD0 options:4 range:{0, v5}];
  if (!v7 || (v8 = v6 + v7, v9 = v5 > v6 + v7, v10 = v5 - (v6 + v7), !v9) || ([v3 rangeOfCharacterFromSet:qword_1ED49ADD8 options:4 range:{v8, v10}], !v11))
  {
    v5 = 0;
    goto LABEL_14;
  }

  v12 = [v3 rangeOfCharacterFromSet:qword_1ED49ADE0 options:4 range:{v8, v10}];
  if (v13)
  {
    v5 = v12 + v13;
  }

  else
  {
    v5 = 0;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_15:

  v15 = v14;
  v16 = v5;
  result.length = v16;
  result.location = v15;
  return result;
}

void __63__UITextCheckingController_terminatedSentenceRangeInTextRange___block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
  v1 = qword_1ED49ADD0;
  qword_1ED49ADD0 = v0;

  v2 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@".!?։۔।።᙮‼‽⁈⁉。！．？｡"];
  v3 = qword_1ED49ADD8;
  qword_1ED49ADD8 = v2;

  v6 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v4 = [v6 invertedSet];
  v5 = qword_1ED49ADE0;
  qword_1ED49ADE0 = v4;
}

- (void)_pauseTimer:(id)a3
{
  v10 = [a3 userInfo];
  [(UITextCheckingController *)self invalidateTimers];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  self->_lastPauseTimer = v4;
  if (self->_client && [(UITextCheckingController *)self continuousSpellCheckingEnabled]&& v10)
  {
    if (qword_1ED49AE58 != -1)
    {
      dispatch_once(&qword_1ED49AE58, &__block_literal_global_627);
    }

    if (byte_1ED49AD67 == 1)
    {
      v5 = [(UITextCheckingClient *)self->_client tokenizer];
      v6 = [v10 start];
      v7 = [v5 rangeEnclosingPosition:v6 withGranularity:2 inDirection:0];

      if (v7 && [v10 isEqual:v7])
      {
        [(UITextCheckingController *)self removeGrammarMarkersFromWordsInRange:v10];
        [(UITextCheckingController *)self checkGrammarForSentenceInRange:v10 onPause:1];
        v8 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__pauseTimer_ selector:0 userInfo:0 repeats:0.5];
        pauseTimer = self->_pauseTimer;
        self->_pauseTimer = v8;
      }
    }
  }
}

- (void)checkSpellingForSelectionChangeFromRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = self->_previousCheckedSentenceRange.location;
  v7 = self->_previousCheckedSentenceRange.length;
  v9 = a3.location == self->_selectedRangeFromPreviousUnchecked.location && a3.length == self->_selectedRangeFromPreviousUnchecked.length;
  [(UITextCheckingController *)self invalidateTimers];
  self->_selectedRangeFromPreviousUnchecked = xmmword_18A678470;
  self->_previousCheckedSentenceRange = xmmword_18A678470;
  if (!self->_client || ![(UITextCheckingController *)self continuousSpellCheckingEnabled])
  {
    return;
  }

  v53 = v6;
  v10 = [(UITextCheckingController *)self selectedRange];
  v12 = v10;
  v13 = v11;
  if (v10 == self->_previousCheckedSelectedRange.location && v11 == self->_previousCheckedSelectedRange.length)
  {
    v54 = 0;
  }

  else
  {
    add = atomic_fetch_add(&qword_1ED49AE18, 1uLL);
    self->_previousCheckedSelectedRange.length = v11;
    self->_prechangeCheckingSequenceNumber = add + 1;
    self->_previousCheckedSelectedRange.location = v10;
    v54 = v11 == 0;
  }

  if (location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v55 = 0;
  }

  else
  {
    client = self->_client;
    v16 = [(UITextCheckingClient *)client beginningOfDocument];
    v17 = [(UITextCheckingClient *)client positionFromPosition:v16 offset:location];

    v18 = [(UITextCheckingClient *)self->_client tokenizer];
    v55 = [v18 rangeEnclosingPosition:v17 withGranularity:1 inDirection:0];

    if (!v55)
    {
      v19 = [(UITextCheckingClient *)self->_client tokenizer];
      v55 = [v19 rangeEnclosingPosition:v17 withGranularity:1 inDirection:1];

      if (!v55)
      {
        v20 = !v9;
        if (location < 2)
        {
          v20 = 1;
        }

        if (v20)
        {
          v55 = 0;
        }

        else
        {
          v21 = [(UITextCheckingClient *)self->_client positionFromPosition:v17 offset:-1];

          v22 = [(UITextCheckingClient *)self->_client tokenizer];
          v55 = [v22 rangeEnclosingPosition:v21 withGranularity:1 inDirection:1];

          v17 = v21;
        }
      }
    }
  }

  v23 = self->_client;
  v24 = [(UITextCheckingClient *)v23 beginningOfDocument];
  v25 = [(UITextCheckingClient *)v23 positionFromPosition:v24 offset:v12];

  v26 = [(UITextCheckingClient *)self->_client tokenizer];
  v27 = [v26 rangeEnclosingPosition:v25 withGranularity:1 inDirection:0];

  if (!v27)
  {
    v28 = [(UITextCheckingClient *)self->_client tokenizer];
    v27 = [v28 rangeEnclosingPosition:v25 withGranularity:1 inDirection:1];
  }

  v29 = [(UITextCheckingController *)self nsRangeForTextRange:v55];
  v31 = v30;
  if (([v55 isEqual:v27] & 1) != 0 || v12 + v13 >= v29 && v12 <= v29 + v31)
  {
    goto LABEL_29;
  }

  if (v12 == length + location + 1 && !v13 && [(UITextCheckingController *)self foundApostropheAfterRange:location, length])
  {
    self->_selectedRangeFromPreviousUnchecked.location = v12;
    self->_selectedRangeFromPreviousUnchecked.length = 0;
LABEL_29:
    v32 = 1;
    goto LABEL_30;
  }

  [(UITextCheckingController *)self checkSpellingForWordInRange:v55];
  [(UITextCheckingController *)self removeSpellingMarkersFromWordInRange:v27];
  v32 = 0;
LABEL_30:
  if (location != 0x7FFFFFFFFFFFFFFFLL)
  {
    v33 = self->_client;
    v34 = [(UITextCheckingClient *)v33 beginningOfDocument];
    v35 = [(UITextCheckingClient *)v33 positionFromPosition:v34 offset:location];

    v36 = [(UITextCheckingClient *)self->_client tokenizer];
    v37 = [v36 rangeEnclosingPosition:v35 withGranularity:2 inDirection:0];

    if (v37 || (-[UITextCheckingClient tokenizer](self->_client, "tokenizer"), v38 = objc_claimAutoreleasedReturnValue(), [v38 rangeEnclosingPosition:v35 withGranularity:2 inDirection:1], v37 = objc_claimAutoreleasedReturnValue(), v38, v37))
    {
      v51 = v32;
      v52 = v35;
      v39 = v7;
      v40 = [(UITextCheckingController *)self nsRangeForTextRange:v37];
      v42 = v41;
      v43 = [(UITextCheckingController *)self terminatedSentenceRangeInTextRange:v37];
      if (v44)
      {
        v45 = v44;
        v46 = v43 + v40;
        if (v12 + v13 < v46 || v12 >= v46 + v44)
        {
          if (v46 != v53 || v44 != v39)
          {
            [(UITextCheckingController *)self removeGrammarMarkersFromWordsInRange:v37];
            [(UITextCheckingController *)self checkGrammarForSentenceInRange:v37 onPause:0];
          }

          self->_previousCheckedSentenceRange.location = v46;
          self->_previousCheckedSentenceRange.length = v45;
          v35 = v52;
          goto LABEL_54;
        }
      }

      else
      {
        v47 = v54;
        if (v42 <= 9)
        {
          v47 = 0;
        }

        if (v47)
        {
          if (qword_1ED49AE58 != -1)
          {
            dispatch_once(&qword_1ED49AE58, &__block_literal_global_627);
          }

          if (byte_1ED49AD67 == 1)
          {
            [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
            v49 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__pauseTimer_ selector:v37 userInfo:0 repeats:{fmax(self->_lastPauseTimer - v48 + 5.0, 1.0)}];
            pauseTimer = self->_pauseTimer;
            self->_pauseTimer = v49;
          }
        }
      }

      v35 = v52;
      if ((v51 & 1) == 0)
      {
        [(UITextCheckingController *)self removeGrammarMarkersFromWordsInRange:v37];
      }
    }

LABEL_54:
  }
}

- (void)didChangeSelectionFromRange:(id)a3
{
  v5 = [(UITextCheckingController *)self nsRangeForTextRange:a3];

  [(UITextCheckingController *)self checkSpellingForSelectionChangeFromRange:v5, v4];
}

- (void)feedbackForGrammarMarkersFromWordsInRange:(id)a3 replacementText:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [(UITextCheckingController *)self textChecker];
  if (v14 && self->_client && v7)
  {
    v8 = [(UITextCheckingController *)self annotatedSubstringForRange:v14];
    v9 = v8;
    if (v8 && [v8 length])
    {
      v10 = [v9 attribute:@"NSGrammarAutocorrected" atIndex:0 effectiveRange:0];
      v11 = v10;
      if (v6 && v10)
      {
        if ([v6 isEqualToString:v10])
        {
          v12 = 5;
        }

        else
        {
          v12 = 3;
        }

        [v7 recordResponse:v12 toGrammarDetailInAnnotatedString:v9 range:{0, objc_msgSend(v9, "length")}];
        v13 = [v14 start];
        [(UITextCheckingController *)self removeGrammarAnnotationFromWordAtPosition:v13];
      }
    }
  }
}

- (void)willReplaceTextInRange:(id)a3 withText:(id)a4
{
  v7 = a3;
  v6 = a4;
  if ([(UITextCheckingController *)self rangeIsSuitableForGrammarAutocorrections:v7])
  {
    [(UITextCheckingController *)self feedbackForGrammarMarkersFromWordsInRange:v7 replacementText:v6];
  }
}

@end