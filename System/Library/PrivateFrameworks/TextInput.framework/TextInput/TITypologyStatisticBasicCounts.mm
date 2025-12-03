@interface TITypologyStatisticBasicCounts
- (TITypologyStatisticBasicCounts)init;
- (id)aggregateReport;
- (id)structuredReport;
- (void)handleTouch:(id)touch;
- (void)updateTextWithAcceptedCandidate:(id)candidate;
- (void)visitRecordHitTest:(id)test;
- (void)visitRecordKeyboardInput:(id)input;
- (void)visitRecordSkipHitTest:(id)test;
- (void)visitRecordSync:(id)sync;
- (void)visitRecordTextAccepted:(id)accepted;
@end

@implementation TITypologyStatisticBasicCounts

- (TITypologyStatisticBasicCounts)init
{
  v12.receiver = self;
  v12.super_class = TITypologyStatisticBasicCounts;
  v2 = [(TITypologyStatisticBasicCounts *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
    recentText = v2->_recentText;
    v2->_recentText = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    recentAutocorrectionLocations = v2->_recentAutocorrectionLocations;
    v2->_recentAutocorrectionLocations = v5;

    v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
    recentTextAfterBackspace = v2->_recentTextAfterBackspace;
    v2->_recentTextAfterBackspace = v7;

    v9 = objc_alloc_init(MEMORY[0x1E696AD60]);
    recentTextBeforeBackspace = v2->_recentTextBeforeBackspace;
    v2->_recentTextBeforeBackspace = v9;
  }

  return v2;
}

- (id)aggregateReport
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  characterCount = [(TITypologyStatisticBasicCounts *)self characterCount];
  if (characterCount >= 1)
  {
    *&v5 = characterCount;
    v6 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
    [dictionary setObject:v6 forKey:@"characterCount"];
  }

  touchCount = [(TITypologyStatisticBasicCounts *)self touchCount];
  v8 = [(TITypologyStatisticBasicCounts *)self predictiveSelectionCount]+ touchCount;
  if (v8 >= 1)
  {
    *&v9 = v8;
    v10 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
    [dictionary setObject:v10 forKey:@"keysTappedCount"];
  }

  falseBackspaceCount = [(TITypologyStatisticBasicCounts *)self falseBackspaceCount];
  if (falseBackspaceCount >= 1)
  {
    *&v12 = falseBackspaceCount;
    v13 = [MEMORY[0x1E696AD98] numberWithFloat:v12];
    [dictionary setObject:v13 forKey:@"falseBackspaceTotalCount"];
  }

  falseBackspaceIntoAutocorrectionCount = [(TITypologyStatisticBasicCounts *)self falseBackspaceIntoAutocorrectionCount];
  if (falseBackspaceIntoAutocorrectionCount >= 1)
  {
    *&v15 = falseBackspaceIntoAutocorrectionCount;
    v16 = [MEMORY[0x1E696AD98] numberWithFloat:v15];
    [dictionary setObject:v16 forKey:@"falseBackspaceIntoAutocorrection"];
  }

  return dictionary;
}

- (void)visitRecordTextAccepted:(id)accepted
{
  candidate = [accepted candidate];
  if ([candidate isAutocorrection])
  {
    ++self->_autocorrectionCount;
  }

  [(TITypologyStatisticBasicCounts *)self updateTextWithAcceptedCandidate:candidate];
}

- (void)visitRecordSkipHitTest:(id)test
{
  touchEvent = [test touchEvent];
  [(TITypologyStatisticBasicCounts *)self handleTouch:touchEvent];
}

- (void)visitRecordHitTest:(id)test
{
  touchEvent = [test touchEvent];
  [(TITypologyStatisticBasicCounts *)self handleTouch:touchEvent];
}

- (void)visitRecordKeyboardInput:(id)input
{
  inputCopy = input;
  input = [inputCopy input];
  touchEvent = [input touchEvent];
  [(TITypologyStatisticBasicCounts *)self handleTouch:touchEvent];

  input2 = [inputCopy input];
  acceptedCandidate = [input2 acceptedCandidate];

  input3 = [inputCopy input];
  isSynthesizedByAcceptingCandidate = [input3 isSynthesizedByAcceptingCandidate];

  if (isSynthesizedByAcceptingCandidate)
  {
    v10 = &OBJC_IVAR___TITypologyStatisticBasicCounts__predictiveSelectionCount;
  }

  else
  {
    if (![acceptedCandidate isAutocorrection])
    {
      goto LABEL_6;
    }

    v10 = &OBJC_IVAR___TITypologyStatisticBasicCounts__autocorrectionCount;
  }

  ++*(&self->super.super.super.isa + *v10);
LABEL_6:
  [(TITypologyStatisticBasicCounts *)self updateTextWithAcceptedCandidate:acceptedCandidate];
  input4 = [inputCopy input];
  isBackspace = [input4 isBackspace];

  if (isBackspace)
  {
    ++self->_backspaceCount;
  }

  output = [inputCopy output];
  deletionCount = [output deletionCount];

  if (!deletionCount)
  {
    goto LABEL_26;
  }

  recentText = [(TITypologyStatisticBasicCounts *)self recentText];
  if ([recentText hasSuffix:@" "])
  {

LABEL_12:
    recentTextBeforeBackspace = [(TITypologyStatisticBasicCounts *)self recentTextBeforeBackspace];
    recentText2 = [(TITypologyStatisticBasicCounts *)self recentText];
    [recentTextBeforeBackspace setString:recentText2];
    goto LABEL_13;
  }

  recentText3 = [(TITypologyStatisticBasicCounts *)self recentText];
  v17 = [recentText3 hasSuffix:@"."];

  if (v17)
  {
    goto LABEL_12;
  }

  recentTextBeforeBackspace2 = [(TITypologyStatisticBasicCounts *)self recentTextBeforeBackspace];
  v90 = [recentTextBeforeBackspace2 length];

  if (v90)
  {
    goto LABEL_14;
  }

  recentTextBeforeBackspace = [(TITypologyStatisticBasicCounts *)self recentTextBeforeBackspace];
  recentText2 = [(TITypologyStatisticBasicCounts *)self recentText];
  [recentTextBeforeBackspace appendString:recentText2];
LABEL_13:

LABEL_14:
  output2 = [inputCopy output];
  v21 = 0;
  if ([output2 deletionCount])
  {
    v22 = 0;
    while (1)
    {
      recentText4 = [(TITypologyStatisticBasicCounts *)self recentText];
      v24 = [recentText4 length];

      if (!v24)
      {
        break;
      }

      recentText5 = [(TITypologyStatisticBasicCounts *)self recentText];
      recentText6 = [(TITypologyStatisticBasicCounts *)self recentText];
      v27 = [recentText5 _rangeOfBackwardDeletionClusterAtIndex:{objc_msgSend(recentText6, "length") - 1}];
      v29 = v28;

      recentText7 = [(TITypologyStatisticBasicCounts *)self recentText];
      [recentText7 deleteCharactersInRange:{v27, v29}];

      v21 += v29;
      ++v22;
      output2 = [inputCopy output];
      if (v22 >= [output2 deletionCount])
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
LABEL_18:
  }

  output3 = [inputCopy output];
  deletionCount2 = [output3 deletionCount];

  if (v21 <= deletionCount2)
  {
    v33 = deletionCount2;
  }

  else
  {
    v33 = v21;
  }

  self->_characterCount -= v33;
  recentAutocorrectionLocations = [(TITypologyStatisticBasicCounts *)self recentAutocorrectionLocations];
  if ([recentAutocorrectionLocations count])
  {
    while (1)
    {
      characterCount = self->_characterCount;
      recentAutocorrectionLocations2 = [(TITypologyStatisticBasicCounts *)self recentAutocorrectionLocations];
      lastObject = [recentAutocorrectionLocations2 lastObject];
      integerValue = [lastObject integerValue];

      if (characterCount >= integerValue)
      {
        break;
      }

      ++self->_backspaceIntoAutocorrectionCount;
      [(TITypologyStatisticBasicCounts *)self setBackspacedIntoAutocorrection:1];
      recentAutocorrectionLocations3 = [(TITypologyStatisticBasicCounts *)self recentAutocorrectionLocations];
      [recentAutocorrectionLocations3 removeLastObject];

      recentAutocorrectionLocations = [(TITypologyStatisticBasicCounts *)self recentAutocorrectionLocations];
      if (![recentAutocorrectionLocations count])
      {
        goto LABEL_25;
      }
    }
  }

  else
  {
LABEL_25:
  }

LABEL_26:
  output4 = [inputCopy output];
  insertionText = [output4 insertionText];

  if (insertionText)
  {
    output5 = [inputCopy output];
    insertionText2 = [output5 insertionText];
    self->_characterCount += [insertionText2 length];

    recentText8 = [(TITypologyStatisticBasicCounts *)self recentText];
    output6 = [inputCopy output];
    insertionText3 = [output6 insertionText];
    [recentText8 appendString:insertionText3];
  }

  output7 = [inputCopy output];
  insertionText4 = [output7 insertionText];
  _isSpace = [insertionText4 _isSpace];

  if (_isSpace)
  {
    recentTextBeforeBackspace3 = [(TITypologyStatisticBasicCounts *)self recentTextBeforeBackspace];
    v51 = [recentTextBeforeBackspace3 length];

    if (v51)
    {
      recentTextAfterBackspace = [(TITypologyStatisticBasicCounts *)self recentTextAfterBackspace];
      recentText9 = [(TITypologyStatisticBasicCounts *)self recentText];
      [recentTextAfterBackspace appendString:recentText9];

      recentTextAfterBackspace2 = [(TITypologyStatisticBasicCounts *)self recentTextAfterBackspace];
      v55 = [recentTextAfterBackspace2 length];

      recentTextBeforeBackspace4 = [(TITypologyStatisticBasicCounts *)self recentTextBeforeBackspace];
      v57 = [recentTextBeforeBackspace4 length];

      if (v55 >= v57)
      {
        v58 = v57;
      }

      else
      {
        v58 = v55;
      }

      recentTextBeforeBackspace5 = [(TITypologyStatisticBasicCounts *)self recentTextBeforeBackspace];
      if ([recentTextBeforeBackspace5 length] > 0x64)
      {
        goto LABEL_51;
      }

      recentTextAfterBackspace3 = [(TITypologyStatisticBasicCounts *)self recentTextAfterBackspace];
      v61 = [recentTextAfterBackspace3 length];

      if (v61 <= 0x64)
      {
        v62 = 0;
        if (v58)
        {
          while (1)
          {
            recentTextBeforeBackspace6 = [(TITypologyStatisticBasicCounts *)self recentTextBeforeBackspace];
            v64 = [recentTextBeforeBackspace6 characterAtIndex:v62];
            recentTextAfterBackspace4 = [(TITypologyStatisticBasicCounts *)self recentTextAfterBackspace];
            v66 = [recentTextAfterBackspace4 characterAtIndex:v62];

            if (v64 != v66)
            {
              break;
            }

            if (v58 == ++v62)
            {
              v62 = v58;
              break;
            }
          }
        }

        recentTextAfterBackspace5 = [(TITypologyStatisticBasicCounts *)self recentTextAfterBackspace];
        recentTextAfterBackspace6 = [(TITypologyStatisticBasicCounts *)self recentTextAfterBackspace];
        v69 = [recentTextAfterBackspace6 substringFromIndex:v62];
        [recentTextAfterBackspace5 setString:v69];

        recentTextBeforeBackspace7 = [(TITypologyStatisticBasicCounts *)self recentTextBeforeBackspace];
        recentTextBeforeBackspace8 = [(TITypologyStatisticBasicCounts *)self recentTextBeforeBackspace];
        v72 = [recentTextBeforeBackspace8 substringFromIndex:v62];
        [recentTextBeforeBackspace7 setString:v72];

        recentTextBeforeBackspace9 = [(TITypologyStatisticBasicCounts *)self recentTextBeforeBackspace];
        whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
        v75 = [recentTextBeforeBackspace9 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

        recentTextAfterBackspace7 = [(TITypologyStatisticBasicCounts *)self recentTextAfterBackspace];
        whitespaceCharacterSet2 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
        v78 = [recentTextAfterBackspace7 stringByTrimmingCharactersInSet:whitespaceCharacterSet2];

        recentTextBeforeBackspace5 = [(TITypologyStatisticBasicCounts *)self recentTextBeforeBackspace];
        if ([recentTextBeforeBackspace5 length] > 0x18)
        {
          goto LABEL_51;
        }

        recentTextAfterBackspace8 = [(TITypologyStatisticBasicCounts *)self recentTextAfterBackspace];
        v80 = [recentTextAfterBackspace8 length];

        if (v80 > 0x18)
        {
          goto LABEL_52;
        }

        recentTextBeforeBackspace10 = [(TITypologyStatisticBasicCounts *)self recentTextBeforeBackspace];
        recentTextAfterBackspace9 = [(TITypologyStatisticBasicCounts *)self recentTextAfterBackspace];
        v83 = [recentTextBeforeBackspace10 _editDistanceFrom:recentTextAfterBackspace9];

        recentTextAfterBackspace10 = [(TITypologyStatisticBasicCounts *)self recentTextAfterBackspace];
        v85 = [recentTextAfterBackspace10 length];

        recentTextBeforeBackspace11 = [(TITypologyStatisticBasicCounts *)self recentTextBeforeBackspace];
        v87 = [recentTextBeforeBackspace11 length];

        v88 = v85 >= v87 ? v87 : v85;
        if (v83 < v88 >> 1)
        {
          goto LABEL_52;
        }

        if ([(TITypologyStatisticBasicCounts *)self backspacedIntoAutocorrection])
        {
          ++self->_falseBackspaceIntoAutocorrectionCount;
LABEL_50:
          recentTextBeforeBackspace5 = [(TITypologyStatisticBasicCounts *)self recentTextBeforeBackspace];
          self->_falseBackspaceCount += [recentTextBeforeBackspace5 length];
LABEL_51:

          goto LABEL_52;
        }

        if (self->_backspaceCount >= 1)
        {
          goto LABEL_50;
        }
      }

LABEL_52:
      recentTextBeforeBackspace12 = [(TITypologyStatisticBasicCounts *)self recentTextBeforeBackspace];
      [recentTextBeforeBackspace12 setString:&stru_1EF56D550];

      recentTextAfterBackspace11 = [(TITypologyStatisticBasicCounts *)self recentTextAfterBackspace];
      [recentTextAfterBackspace11 setString:&stru_1EF56D550];

      [(TITypologyStatisticBasicCounts *)self setBackspacedIntoAutocorrection:0];
    }
  }
}

- (void)visitRecordSync:(id)sync
{
  syncCopy = sync;
  keyboardState = [syncCopy keyboardState];
  documentState = [keyboardState documentState];
  contextBeforeInput = [documentState contextBeforeInput];

  keyboardState2 = [syncCopy keyboardState];

  documentState2 = [keyboardState2 documentState];
  selectedText = [documentState2 selectedText];

  if ([selectedText length] || !-[__CFString length](contextBeforeInput, "length") || ((-[TITypologyStatisticBasicCounts recentText](self, "recentText"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "length"), v13, v15 = -[__CFString length](contextBeforeInput, "length"), v14 >= v15) ? (v16 = v15) : (v16 = v14), (-[TITypologyStatisticBasicCounts recentText](self, "recentText"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "length"), v17, !v16) || (-[TITypologyStatisticBasicCounts recentText](self, "recentText"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "substringWithRange:", v18 - v16, v16), v20 = objc_claimAutoreleasedReturnValue(), v21 = -[__CFString hasSuffix:](contextBeforeInput, "hasSuffix:", v20), v20, v19, (v21 & 1) == 0)))
  {
    recentText = [(TITypologyStatisticBasicCounts *)self recentText];
    if (contextBeforeInput)
    {
      v11 = contextBeforeInput;
    }

    else
    {
      v11 = &stru_1EF56D550;
    }

    [recentText setString:v11];

    recentAutocorrectionLocations = [(TITypologyStatisticBasicCounts *)self recentAutocorrectionLocations];
    [recentAutocorrectionLocations removeAllObjects];
  }
}

- (void)updateTextWithAcceptedCandidate:(id)candidate
{
  candidateCopy = candidate;
  candidate = [candidateCopy candidate];
  if (candidate)
  {
    v5 = candidate;
    candidate2 = [candidateCopy candidate];
    input = [candidateCopy input];
    v8 = [candidate2 isEqualToString:input];

    if ((v8 & 1) == 0)
    {
      candidate3 = [candidateCopy candidate];
      v10 = [candidate3 length];
      input2 = [candidateCopy input];
      v12 = v10 - [input2 length];

      self->_characterCount += v12;
      self->_predictedCharacterCount += v12 & ~(v12 >> 63);
      recentAutocorrectionLocations = [(TITypologyStatisticBasicCounts *)self recentAutocorrectionLocations];
      v14 = [MEMORY[0x1E696AD98] numberWithInteger:self->_characterCount];
      [recentAutocorrectionLocations addObject:v14];

      input3 = [candidateCopy input];
      v16 = [input3 length];

      recentText = [(TITypologyStatisticBasicCounts *)self recentText];
      if (v16)
      {
        input4 = [candidateCopy input];
        v19 = [recentText hasSuffix:input4];

        recentText2 = [(TITypologyStatisticBasicCounts *)self recentText];
        recentText = recentText2;
        if (v19)
        {
          v21 = [recentText2 length];
          input5 = [candidateCopy input];
          v23 = v21 - [input5 length];
          input6 = [candidateCopy input];
          v25 = [input6 length];

          recentText = [(TITypologyStatisticBasicCounts *)self recentText];
          candidate4 = [candidateCopy candidate];
          [recentText replaceCharactersInRange:v23 withString:{v25, candidate4}];
        }

        else
        {
          candidate4 = [candidateCopy candidate];
          [recentText setString:candidate4];
        }
      }

      else
      {
        candidate4 = [candidateCopy candidate];
        [recentText appendString:candidate4];
      }
    }
  }
}

- (void)handleTouch:(id)touch
{
  touchCopy = touch;
  if (touchCopy)
  {
    v6 = touchCopy;
    v5 = [touchCopy stage] == 2;
    touchCopy = v6;
    if (v5)
    {
      ++self->_touchCount;
    }
  }
}

- (id)structuredReport
{
  v15[9] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{-[TITypologyStatisticBasicCounts touchCount](self, "touchCount", @"Touch Count"}];
  v15[0] = v3;
  v14[1] = @"Character Count";
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[TITypologyStatisticBasicCounts characterCount](self, "characterCount")}];
  v15[1] = v4;
  v14[2] = @"Predicted Character Count";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[TITypologyStatisticBasicCounts predictedCharacterCount](self, "predictedCharacterCount")}];
  v15[2] = v5;
  v14[3] = @"Backspace Count";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[TITypologyStatisticBasicCounts backspaceCount](self, "backspaceCount")}];
  v15[3] = v6;
  v14[4] = @"Autocorrections";
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[TITypologyStatisticBasicCounts autocorrectionCount](self, "autocorrectionCount")}];
  v15[4] = v7;
  v14[5] = @"Rejected Candidates";
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[TITypologyStatisticBasicCounts rejectedCandidateCount](self, "rejectedCandidateCount")}];
  v15[5] = v8;
  v14[6] = @"Backspace Into Autocorrection";
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[TITypologyStatisticBasicCounts backspaceIntoAutocorrectionCount](self, "backspaceIntoAutocorrectionCount")}];
  v15[6] = v9;
  v14[7] = @"False Backspace Total Count";
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:{-[TITypologyStatisticBasicCounts falseBackspaceCount](self, "falseBackspaceCount")}];
  v15[7] = v10;
  v14[8] = @"False Backspace Into Autocorrection";
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:{-[TITypologyStatisticBasicCounts falseBackspaceIntoAutocorrectionCount](self, "falseBackspaceIntoAutocorrectionCount")}];
  v15[8] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:9];

  return v12;
}

@end