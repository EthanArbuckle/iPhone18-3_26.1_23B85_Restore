@interface TITypologyStatisticBasicCounts
- (TITypologyStatisticBasicCounts)init;
- (id)aggregateReport;
- (id)structuredReport;
- (void)handleTouch:(id)a3;
- (void)updateTextWithAcceptedCandidate:(id)a3;
- (void)visitRecordHitTest:(id)a3;
- (void)visitRecordKeyboardInput:(id)a3;
- (void)visitRecordSkipHitTest:(id)a3;
- (void)visitRecordSync:(id)a3;
- (void)visitRecordTextAccepted:(id)a3;
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(TITypologyStatisticBasicCounts *)self characterCount];
  if (v4 >= 1)
  {
    *&v5 = v4;
    v6 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
    [v3 setObject:v6 forKey:@"characterCount"];
  }

  v7 = [(TITypologyStatisticBasicCounts *)self touchCount];
  v8 = [(TITypologyStatisticBasicCounts *)self predictiveSelectionCount]+ v7;
  if (v8 >= 1)
  {
    *&v9 = v8;
    v10 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
    [v3 setObject:v10 forKey:@"keysTappedCount"];
  }

  v11 = [(TITypologyStatisticBasicCounts *)self falseBackspaceCount];
  if (v11 >= 1)
  {
    *&v12 = v11;
    v13 = [MEMORY[0x1E696AD98] numberWithFloat:v12];
    [v3 setObject:v13 forKey:@"falseBackspaceTotalCount"];
  }

  v14 = [(TITypologyStatisticBasicCounts *)self falseBackspaceIntoAutocorrectionCount];
  if (v14 >= 1)
  {
    *&v15 = v14;
    v16 = [MEMORY[0x1E696AD98] numberWithFloat:v15];
    [v3 setObject:v16 forKey:@"falseBackspaceIntoAutocorrection"];
  }

  return v3;
}

- (void)visitRecordTextAccepted:(id)a3
{
  v4 = [a3 candidate];
  if ([v4 isAutocorrection])
  {
    ++self->_autocorrectionCount;
  }

  [(TITypologyStatisticBasicCounts *)self updateTextWithAcceptedCandidate:v4];
}

- (void)visitRecordSkipHitTest:(id)a3
{
  v4 = [a3 touchEvent];
  [(TITypologyStatisticBasicCounts *)self handleTouch:v4];
}

- (void)visitRecordHitTest:(id)a3
{
  v4 = [a3 touchEvent];
  [(TITypologyStatisticBasicCounts *)self handleTouch:v4];
}

- (void)visitRecordKeyboardInput:(id)a3
{
  v93 = a3;
  v4 = [v93 input];
  v5 = [v4 touchEvent];
  [(TITypologyStatisticBasicCounts *)self handleTouch:v5];

  v6 = [v93 input];
  v7 = [v6 acceptedCandidate];

  v8 = [v93 input];
  v9 = [v8 isSynthesizedByAcceptingCandidate];

  if (v9)
  {
    v10 = &OBJC_IVAR___TITypologyStatisticBasicCounts__predictiveSelectionCount;
  }

  else
  {
    if (![v7 isAutocorrection])
    {
      goto LABEL_6;
    }

    v10 = &OBJC_IVAR___TITypologyStatisticBasicCounts__autocorrectionCount;
  }

  ++*(&self->super.super.super.isa + *v10);
LABEL_6:
  [(TITypologyStatisticBasicCounts *)self updateTextWithAcceptedCandidate:v7];
  v11 = [v93 input];
  v12 = [v11 isBackspace];

  if (v12)
  {
    ++self->_backspaceCount;
  }

  v13 = [v93 output];
  v14 = [v13 deletionCount];

  if (!v14)
  {
    goto LABEL_26;
  }

  v15 = [(TITypologyStatisticBasicCounts *)self recentText];
  if ([v15 hasSuffix:@" "])
  {

LABEL_12:
    v18 = [(TITypologyStatisticBasicCounts *)self recentTextBeforeBackspace];
    v19 = [(TITypologyStatisticBasicCounts *)self recentText];
    [v18 setString:v19];
    goto LABEL_13;
  }

  v16 = [(TITypologyStatisticBasicCounts *)self recentText];
  v17 = [v16 hasSuffix:@"."];

  if (v17)
  {
    goto LABEL_12;
  }

  v89 = [(TITypologyStatisticBasicCounts *)self recentTextBeforeBackspace];
  v90 = [v89 length];

  if (v90)
  {
    goto LABEL_14;
  }

  v18 = [(TITypologyStatisticBasicCounts *)self recentTextBeforeBackspace];
  v19 = [(TITypologyStatisticBasicCounts *)self recentText];
  [v18 appendString:v19];
LABEL_13:

LABEL_14:
  v20 = [v93 output];
  v21 = 0;
  if ([v20 deletionCount])
  {
    v22 = 0;
    while (1)
    {
      v23 = [(TITypologyStatisticBasicCounts *)self recentText];
      v24 = [v23 length];

      if (!v24)
      {
        break;
      }

      v25 = [(TITypologyStatisticBasicCounts *)self recentText];
      v26 = [(TITypologyStatisticBasicCounts *)self recentText];
      v27 = [v25 _rangeOfBackwardDeletionClusterAtIndex:{objc_msgSend(v26, "length") - 1}];
      v29 = v28;

      v30 = [(TITypologyStatisticBasicCounts *)self recentText];
      [v30 deleteCharactersInRange:{v27, v29}];

      v21 += v29;
      ++v22;
      v20 = [v93 output];
      if (v22 >= [v20 deletionCount])
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
LABEL_18:
  }

  v31 = [v93 output];
  v32 = [v31 deletionCount];

  if (v21 <= v32)
  {
    v33 = v32;
  }

  else
  {
    v33 = v21;
  }

  self->_characterCount -= v33;
  v34 = [(TITypologyStatisticBasicCounts *)self recentAutocorrectionLocations];
  if ([v34 count])
  {
    while (1)
    {
      characterCount = self->_characterCount;
      v36 = [(TITypologyStatisticBasicCounts *)self recentAutocorrectionLocations];
      v37 = [v36 lastObject];
      v38 = [v37 integerValue];

      if (characterCount >= v38)
      {
        break;
      }

      ++self->_backspaceIntoAutocorrectionCount;
      [(TITypologyStatisticBasicCounts *)self setBackspacedIntoAutocorrection:1];
      v39 = [(TITypologyStatisticBasicCounts *)self recentAutocorrectionLocations];
      [v39 removeLastObject];

      v34 = [(TITypologyStatisticBasicCounts *)self recentAutocorrectionLocations];
      if (![v34 count])
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
  v40 = [v93 output];
  v41 = [v40 insertionText];

  if (v41)
  {
    v42 = [v93 output];
    v43 = [v42 insertionText];
    self->_characterCount += [v43 length];

    v44 = [(TITypologyStatisticBasicCounts *)self recentText];
    v45 = [v93 output];
    v46 = [v45 insertionText];
    [v44 appendString:v46];
  }

  v47 = [v93 output];
  v48 = [v47 insertionText];
  v49 = [v48 _isSpace];

  if (v49)
  {
    v50 = [(TITypologyStatisticBasicCounts *)self recentTextBeforeBackspace];
    v51 = [v50 length];

    if (v51)
    {
      v52 = [(TITypologyStatisticBasicCounts *)self recentTextAfterBackspace];
      v53 = [(TITypologyStatisticBasicCounts *)self recentText];
      [v52 appendString:v53];

      v54 = [(TITypologyStatisticBasicCounts *)self recentTextAfterBackspace];
      v55 = [v54 length];

      v56 = [(TITypologyStatisticBasicCounts *)self recentTextBeforeBackspace];
      v57 = [v56 length];

      if (v55 >= v57)
      {
        v58 = v57;
      }

      else
      {
        v58 = v55;
      }

      v59 = [(TITypologyStatisticBasicCounts *)self recentTextBeforeBackspace];
      if ([v59 length] > 0x64)
      {
        goto LABEL_51;
      }

      v60 = [(TITypologyStatisticBasicCounts *)self recentTextAfterBackspace];
      v61 = [v60 length];

      if (v61 <= 0x64)
      {
        v62 = 0;
        if (v58)
        {
          while (1)
          {
            v63 = [(TITypologyStatisticBasicCounts *)self recentTextBeforeBackspace];
            v64 = [v63 characterAtIndex:v62];
            v65 = [(TITypologyStatisticBasicCounts *)self recentTextAfterBackspace];
            v66 = [v65 characterAtIndex:v62];

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

        v67 = [(TITypologyStatisticBasicCounts *)self recentTextAfterBackspace];
        v68 = [(TITypologyStatisticBasicCounts *)self recentTextAfterBackspace];
        v69 = [v68 substringFromIndex:v62];
        [v67 setString:v69];

        v70 = [(TITypologyStatisticBasicCounts *)self recentTextBeforeBackspace];
        v71 = [(TITypologyStatisticBasicCounts *)self recentTextBeforeBackspace];
        v72 = [v71 substringFromIndex:v62];
        [v70 setString:v72];

        v73 = [(TITypologyStatisticBasicCounts *)self recentTextBeforeBackspace];
        v74 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
        v75 = [v73 stringByTrimmingCharactersInSet:v74];

        v76 = [(TITypologyStatisticBasicCounts *)self recentTextAfterBackspace];
        v77 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
        v78 = [v76 stringByTrimmingCharactersInSet:v77];

        v59 = [(TITypologyStatisticBasicCounts *)self recentTextBeforeBackspace];
        if ([v59 length] > 0x18)
        {
          goto LABEL_51;
        }

        v79 = [(TITypologyStatisticBasicCounts *)self recentTextAfterBackspace];
        v80 = [v79 length];

        if (v80 > 0x18)
        {
          goto LABEL_52;
        }

        v81 = [(TITypologyStatisticBasicCounts *)self recentTextBeforeBackspace];
        v82 = [(TITypologyStatisticBasicCounts *)self recentTextAfterBackspace];
        v83 = [v81 _editDistanceFrom:v82];

        v84 = [(TITypologyStatisticBasicCounts *)self recentTextAfterBackspace];
        v85 = [v84 length];

        v86 = [(TITypologyStatisticBasicCounts *)self recentTextBeforeBackspace];
        v87 = [v86 length];

        v88 = v85 >= v87 ? v87 : v85;
        if (v83 < v88 >> 1)
        {
          goto LABEL_52;
        }

        if ([(TITypologyStatisticBasicCounts *)self backspacedIntoAutocorrection])
        {
          ++self->_falseBackspaceIntoAutocorrectionCount;
LABEL_50:
          v59 = [(TITypologyStatisticBasicCounts *)self recentTextBeforeBackspace];
          self->_falseBackspaceCount += [v59 length];
LABEL_51:

          goto LABEL_52;
        }

        if (self->_backspaceCount >= 1)
        {
          goto LABEL_50;
        }
      }

LABEL_52:
      v91 = [(TITypologyStatisticBasicCounts *)self recentTextBeforeBackspace];
      [v91 setString:&stru_1EF56D550];

      v92 = [(TITypologyStatisticBasicCounts *)self recentTextAfterBackspace];
      [v92 setString:&stru_1EF56D550];

      [(TITypologyStatisticBasicCounts *)self setBackspacedIntoAutocorrection:0];
    }
  }
}

- (void)visitRecordSync:(id)a3
{
  v4 = a3;
  v5 = [v4 keyboardState];
  v6 = [v5 documentState];
  v22 = [v6 contextBeforeInput];

  v7 = [v4 keyboardState];

  v8 = [v7 documentState];
  v9 = [v8 selectedText];

  if ([v9 length] || !-[__CFString length](v22, "length") || ((-[TITypologyStatisticBasicCounts recentText](self, "recentText"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "length"), v13, v15 = -[__CFString length](v22, "length"), v14 >= v15) ? (v16 = v15) : (v16 = v14), (-[TITypologyStatisticBasicCounts recentText](self, "recentText"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "length"), v17, !v16) || (-[TITypologyStatisticBasicCounts recentText](self, "recentText"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "substringWithRange:", v18 - v16, v16), v20 = objc_claimAutoreleasedReturnValue(), v21 = -[__CFString hasSuffix:](v22, "hasSuffix:", v20), v20, v19, (v21 & 1) == 0)))
  {
    v10 = [(TITypologyStatisticBasicCounts *)self recentText];
    if (v22)
    {
      v11 = v22;
    }

    else
    {
      v11 = &stru_1EF56D550;
    }

    [v10 setString:v11];

    v12 = [(TITypologyStatisticBasicCounts *)self recentAutocorrectionLocations];
    [v12 removeAllObjects];
  }
}

- (void)updateTextWithAcceptedCandidate:(id)a3
{
  v27 = a3;
  v4 = [v27 candidate];
  if (v4)
  {
    v5 = v4;
    v6 = [v27 candidate];
    v7 = [v27 input];
    v8 = [v6 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      v9 = [v27 candidate];
      v10 = [v9 length];
      v11 = [v27 input];
      v12 = v10 - [v11 length];

      self->_characterCount += v12;
      self->_predictedCharacterCount += v12 & ~(v12 >> 63);
      v13 = [(TITypologyStatisticBasicCounts *)self recentAutocorrectionLocations];
      v14 = [MEMORY[0x1E696AD98] numberWithInteger:self->_characterCount];
      [v13 addObject:v14];

      v15 = [v27 input];
      v16 = [v15 length];

      v17 = [(TITypologyStatisticBasicCounts *)self recentText];
      if (v16)
      {
        v18 = [v27 input];
        v19 = [v17 hasSuffix:v18];

        v20 = [(TITypologyStatisticBasicCounts *)self recentText];
        v17 = v20;
        if (v19)
        {
          v21 = [v20 length];
          v22 = [v27 input];
          v23 = v21 - [v22 length];
          v24 = [v27 input];
          v25 = [v24 length];

          v17 = [(TITypologyStatisticBasicCounts *)self recentText];
          v26 = [v27 candidate];
          [v17 replaceCharactersInRange:v23 withString:{v25, v26}];
        }

        else
        {
          v26 = [v27 candidate];
          [v17 setString:v26];
        }
      }

      else
      {
        v26 = [v27 candidate];
        [v17 appendString:v26];
      }
    }
  }
}

- (void)handleTouch:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    v5 = [v4 stage] == 2;
    v4 = v6;
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