@interface TIDocumentState
+ (TIDocumentState)documentStateWithContextBefore:(id)a3 markedText:(id)a4 selectedRange:(_NSRange)a5 contextAfter:(id)a6;
+ (TIDocumentState)documentStateWithContextBefore:(id)a3 selectedText:(id)a4 contextAfter:(id)a5;
+ (id)_selectedTextByDeletingInteriorSentences:(id)a3 outTruncatedRange:(_NSRange *)a4;
+ (id)_string:(id)a3 byTrimmingWordsAfterIndex:(unint64_t)a4;
+ (id)_string:(id)a3 byTrimmingWordsBeforeIndex:(unint64_t)a4;
+ (id)documentStateForTestingWithContextBefore:(id)a3 selectedText:(id)a4 contextAfter:(id)a5;
+ (id)documentStateForTestingWithContextBefore:(id)a3 selectedText:(id)a4 contextAfter:(id)a5 markedText:(id)a6 selectedRangeInMarkedText:(_NSRange)a7;
+ (id)documentStateForTestingWithText:(id)a3 selectedRange:(_NSRange)a4;
+ (id)unboundedDocumentStateForTestingWithContextBefore:(id)a3 selectedText:(id)a4 contextAfter:(id)a5;
- (BOOL)deletingBackwardsWillRemoveText;
- (BOOL)documentIsEmpty;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualIgnoringMarkedText:(id)a3;
- (NSString)string;
- (TIDocumentState)initWithCoder:(id)a3;
- (TIDocumentState)initWithContextBefore:(id)a3 markedText:(id)a4 selectedText:(id)a5 contextAfter:(id)a6 selectedRangeInMarkedText:(_NSRange)a7;
- (TIDocumentState)initWithText:(id)a3 selectedRange:(_NSRange)a4;
- (TIDocumentState)initWithUnboundedContextBefore:(id)a3 markedText:(id)a4 selectedText:(id)a5 unboundedContextAfter:(id)a6 selectedRangeInMarkedText:(_NSRange)a7;
- (TIDocumentState)initWithUnboundedContextBefore:(id)a3 markedText:(id)a4 selectedText:(id)a5 unboundedContextAfter:(id)a6 selectedRangeInMarkedText:(_NSRange)a7 truncatedRangeInSelectedText:(_NSRange)a8;
- (_NSRange)selectedRangeInMarkedText;
- (_NSRange)truncatedRangeInSelectedText;
- (id)description;
- (id)documentStateAfterCollapsingSelection;
- (id)documentStateAfterCursorAdjustment:(int64_t)a3;
- (id)documentStateAfterDeletingBackward;
- (id)documentStateAfterDeletingForward;
- (id)documentStateAfterInsertingText:(id)a3;
- (id)documentStateAfterInsertingTextAfterSelection:(id)a3;
- (id)documentStateAfterReplacingText:(id)a3 withText:(id)a4;
- (id)documentStateAfterSettingMarkedText:(id)a3 selectedRange:(_NSRange)a4;
- (id)documentStateAfterUnmarkingText;
- (id)inputStemWithTerminatorPredicate:(id)a3;
- (id)inputStringWithTerminatorPredicate:(id)a3;
- (id)wordPrefixOfString:(id)a3 withTerminatorPredicate:(id)a4 reverse:(BOOL)a5;
- (unint64_t)hash;
- (unint64_t)inputIndexWithTerminatorPredicate:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TIDocumentState

- (_NSRange)selectedRangeInMarkedText
{
  length = self->_selectedRangeInMarkedText.length;
  location = self->_selectedRangeInMarkedText.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)truncatedRangeInSelectedText
{
  length = self->_truncatedRangeInSelectedText.length;
  location = self->_truncatedRangeInSelectedText.location;
  result.length = length;
  result.location = location;
  return result;
}

- (NSString)string
{
  v3 = [(TIDocumentState *)self contextBeforeInput];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_1EF56D550;
  }

  v6 = v5;

  v7 = [(TIDocumentState *)self selectedText];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &stru_1EF56D550;
  }

  v10 = v9;

  v11 = [(TIDocumentState *)self contextAfterInput];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &stru_1EF56D550;
  }

  v14 = v13;

  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", v6, v10, v14];

  return v15;
}

- (BOOL)documentIsEmpty
{
  v3 = [(TIDocumentState *)self contextBeforeInput];
  if ([v3 length])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(TIDocumentState *)self selectedText];
    if ([v5 length])
    {
      v4 = 0;
    }

    else
    {
      v6 = [(TIDocumentState *)self markedText];
      if ([v6 length])
      {
        v4 = 0;
      }

      else
      {
        v7 = [(TIDocumentState *)self contextAfterInput];
        v4 = [v7 length] == 0;
      }
    }
  }

  return v4;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p", objc_opt_class(), self];
  v4 = [(TIDocumentState *)self contextBeforeInput];
  v5 = [v4 stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_1EF56D550;
  }

  [v3 appendFormat:@"; text = %@", v7];

  v8 = [(TIDocumentState *)self markedText];

  if (v8)
  {
    v9 = [(TIDocumentState *)self markedText];
    v10 = [v9 substringToIndex:{-[TIDocumentState selectedRangeInMarkedText](self, "selectedRangeInMarkedText")}];
    v11 = [v10 stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"];
    [v3 appendFormat:@"{%@", v11];
  }

  v12 = [(TIDocumentState *)self selectedText];

  if (v12)
  {
    if ([(TIDocumentState *)self truncatedRangeInSelectedText]== 0x7FFFFFFFFFFFFFFFLL || ([(TIDocumentState *)self truncatedRangeInSelectedText], !v13))
    {
      v14 = [(TIDocumentState *)self selectedText];
      v15 = [v14 stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"];
      [v3 appendFormat:@"[%@]", v15];
    }

    else
    {
      v14 = [(TIDocumentState *)self selectedText];
      v15 = [v14 substringToIndex:{-[TIDocumentState truncatedRangeInSelectedText](self, "truncatedRangeInSelectedText")}];
      v16 = [v15 stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"];
      [(TIDocumentState *)self truncatedRangeInSelectedText];
      v18 = v17;
      v19 = [(TIDocumentState *)self selectedText];
      v20 = [v19 substringFromIndex:{-[TIDocumentState truncatedRangeInSelectedText](self, "truncatedRangeInSelectedText")}];
      v21 = [v20 stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"];
      [v3 appendFormat:@"[%@{...%lu...}%@]", v16, v18, v21];
    }
  }

  else
  {
    [v3 appendString:@"|"];
  }

  v22 = [(TIDocumentState *)self markedText];

  if (v22)
  {
    v23 = [(TIDocumentState *)self markedText];
    v24 = [(TIDocumentState *)self selectedRangeInMarkedText];
    v26 = [v23 substringFromIndex:v24 + v25];
    v27 = [v26 stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"];
    [v3 appendFormat:@"%@}", v27];
  }

  v28 = [(TIDocumentState *)self contextAfterInput];
  v29 = [v28 stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"];
  v30 = v29;
  if (v29)
  {
    v31 = v29;
  }

  else
  {
    v31 = &stru_1EF56D550;
  }

  [v3 appendFormat:@"%@", v31];

  [v3 appendString:@">"];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(TIDocumentState *)self contextBeforeInput];
  v4 = [(TIDocumentState *)self hashString:v3 intoHashValue:0];

  v5 = [(TIDocumentState *)self markedText];
  v6 = [(TIDocumentState *)self hashString:v5 intoHashValue:v4];

  v7 = [(TIDocumentState *)self selectedText];
  v8 = [(TIDocumentState *)self hashString:v7 intoHashValue:v6];

  v9 = [(TIDocumentState *)self contextAfterInput];
  v10 = [(TIDocumentState *)self hashString:v9 intoHashValue:v8];

  v11 = 257 * ([(TIDocumentState *)self selectedRangeInMarkedText]+ 257 * v10);
  v12 = 257 * (v11 + [(TIDocumentState *)self truncatedRangeInSelectedText]);
  [(TIDocumentState *)self truncatedRangeInSelectedText];
  return v12 + v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = MEMORY[0x1E696AEC0];
      v7 = [(TIDocumentState *)self contextBeforeInput];
      v8 = [(TIDocumentState *)v5 contextBeforeInput];
      v9 = [v6 _ti_string:v7 matchesStringIgnoringNullity:v8];

      if (v9)
      {
        v10 = MEMORY[0x1E696AEC0];
        v11 = [(TIDocumentState *)self selectedText];
        v12 = [(TIDocumentState *)v5 selectedText];
        v9 = [v10 _ti_string:v11 matchesStringIgnoringNullity:v12];

        if (v9)
        {
          v13 = MEMORY[0x1E696AEC0];
          v14 = [(TIDocumentState *)self contextAfterInput];
          v15 = [(TIDocumentState *)v5 contextAfterInput];
          v9 = [v13 _ti_string:v14 matchesStringIgnoringNullity:v15];

          if (v9)
          {
            v16 = MEMORY[0x1E696AEC0];
            v17 = [(TIDocumentState *)self markedText];
            v18 = [(TIDocumentState *)v5 markedText];
            v9 = [v16 _ti_string:v17 matchesStringIgnoringNullity:v18];

            if (v9)
            {
              v19 = [(TIDocumentState *)self selectedRangeInMarkedText];
              v21 = v20;
              LOBYTE(v9) = 0;
              if (v19 == [(TIDocumentState *)v5 selectedRangeInMarkedText]&& v21 == v22)
              {
                v23 = [(TIDocumentState *)self truncatedRangeInSelectedText];
                v25 = v24;
                LOBYTE(v9) = v23 == [(TIDocumentState *)v5 truncatedRangeInSelectedText]&& v25 == v26;
              }
            }
          }
        }
      }
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  return v9;
}

- (BOOL)isEqualIgnoringMarkedText:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v14 = 1;
  }

  else
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [(TIDocumentState *)self contextBeforeInput];
    v7 = [(TIDocumentState *)v4 contextBeforeInput];
    LODWORD(v5) = [v5 _ti_string:v6 matchesStringIgnoringNullity:v7];

    if (v5 && (v8 = MEMORY[0x1E696AEC0], -[TIDocumentState selectedText](self, "selectedText"), v9 = objc_claimAutoreleasedReturnValue(), -[TIDocumentState selectedText](v4, "selectedText"), v10 = objc_claimAutoreleasedReturnValue(), LODWORD(v8) = [v8 _ti_string:v9 matchesStringIgnoringNullity:v10], v10, v9, v8))
    {
      v11 = MEMORY[0x1E696AEC0];
      v12 = [(TIDocumentState *)self contextAfterInput];
      v13 = [(TIDocumentState *)v4 contextAfterInput];
      v14 = [v11 _ti_string:v12 matchesStringIgnoringNullity:v13];
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  contextBeforeInput = self->_contextBeforeInput;
  v12 = v4;
  if (contextBeforeInput)
  {
    [v4 encodeObject:contextBeforeInput forKey:@"contextBeforeInput"];
    v4 = v12;
  }

  markedText = self->_markedText;
  if (markedText)
  {
    [v12 encodeObject:markedText forKey:@"markedText"];
    v4 = v12;
  }

  selectedText = self->_selectedText;
  if (selectedText)
  {
    [v12 encodeObject:selectedText forKey:@"selectedText"];
    v4 = v12;
  }

  contextAfterInput = self->_contextAfterInput;
  if (contextAfterInput)
  {
    [v12 encodeObject:contextAfterInput forKey:@"contextAfterInput"];
    v4 = v12;
  }

  if (self->_markedText)
  {
    location = self->_selectedRangeInMarkedText.location;
    if (location)
    {
      [v12 encodeInteger:location forKey:@"locationOfSelectionInMarkedText"];
      v4 = v12;
    }
  }

  if (self->_selectedText)
  {
    v10 = self->_truncatedRangeInSelectedText.location;
    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [MEMORY[0x1E696B098] valueWithRange:{v10, self->_truncatedRangeInSelectedText.length}];
      [v12 encodeObject:v11 forKey:@"truncatedRangeInSelectedText"];

      v4 = v12;
    }
  }
}

- (TIDocumentState)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = TIDocumentState;
  v5 = [(TIDocumentState *)&v25 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contextBeforeInput"];
    v7 = [v6 copy];
    contextBeforeInput = v5->_contextBeforeInput;
    v5->_contextBeforeInput = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"markedText"];
    v10 = [v9 copy];
    markedText = v5->_markedText;
    v5->_markedText = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"selectedText"];
    v13 = [v12 copy];
    selectedText = v5->_selectedText;
    v5->_selectedText = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contextAfterInput"];
    v16 = [v15 copy];
    contextAfterInput = v5->_contextAfterInput;
    v5->_contextAfterInput = v16;

    if (v5->_markedText)
    {
      v18 = [v4 decodeIntegerForKey:@"locationOfSelectionInMarkedText"];
      v19 = [(NSString *)v5->_selectedText length];
    }

    else
    {
      v19 = 0;
      v18 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v5->_selectedRangeInMarkedText.location = v18;
    v5->_selectedRangeInMarkedText.length = v19;
    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"truncatedRangeInSelectedText"];
    v21 = v20;
    if (v20)
    {
      v22 = [v20 rangeValue];
    }

    else
    {
      v23 = 0;
      v22 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v5->_truncatedRangeInSelectedText.location = v22;
    v5->_truncatedRangeInSelectedText.length = v23;
  }

  return v5;
}

- (TIDocumentState)initWithUnboundedContextBefore:(id)a3 markedText:(id)a4 selectedText:(id)a5 unboundedContextAfter:(id)a6 selectedRangeInMarkedText:(_NSRange)a7 truncatedRangeInSelectedText:(_NSRange)a8
{
  result = [(TIDocumentState *)self initWithUnboundedContextBefore:a3 markedText:a4 selectedText:a5 unboundedContextAfter:a6 selectedRangeInMarkedText:a7.location, a7.length];
  result->_truncatedRangeInSelectedText = a8;
  return result;
}

- (TIDocumentState)initWithUnboundedContextBefore:(id)a3 markedText:(id)a4 selectedText:(id)a5 unboundedContextAfter:(id)a6 selectedRangeInMarkedText:(_NSRange)a7
{
  length = a7.length;
  location = a7.location;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v29 = xmmword_186483EA0;
  if ([v15 length] >= 0x41)
  {
    v17 = [TIDocumentState _selectedTextByDeletingInteriorSentences:v15 outTruncatedRange:&v29];

    v15 = v17;
  }

  v28.receiver = self;
  v28.super_class = TIDocumentState;
  v18 = [(TIDocumentState *)&v28 init];
  if (v18)
  {
    v19 = [v13 copy];
    v20 = *(v18 + 1);
    *(v18 + 1) = v19;

    v21 = [v14 copy];
    v22 = *(v18 + 2);
    *(v18 + 2) = v21;

    v23 = [v15 copy];
    v24 = *(v18 + 3);
    *(v18 + 3) = v23;

    v25 = [v16 copy];
    v26 = *(v18 + 4);
    *(v18 + 4) = v25;

    *(v18 + 5) = location;
    *(v18 + 6) = length;
    *(v18 + 56) = v29;
  }

  return v18;
}

- (TIDocumentState)initWithContextBefore:(id)a3 markedText:(id)a4 selectedText:(id)a5 contextAfter:(id)a6 selectedRangeInMarkedText:(_NSRange)a7
{
  length = a7.length;
  location = a7.location;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [a3 copy];
  if ([v16 length] >= 0x3E9)
  {
    v17 = +[TIDocumentState _string:byTrimmingWordsBeforeIndex:](TIDocumentState, "_string:byTrimmingWordsBeforeIndex:", v16, [v16 length] - 500);

    v16 = v17;
  }

  v18 = v15;
  v19 = [v18 length];
  *&v36 = v19;
  if (v19)
  {
    [v18 getLineStart:0 end:0 contentsEnd:&v36 forRange:{0, 0}];
    v20 = v36;
  }

  else
  {
    v20 = 0;
  }

  if (v20 >= v19)
  {
    v21 = [v18 copy];
  }

  else
  {
    v21 = [v18 substringToIndex:?];
  }

  v22 = v21;

  if ([v22 length] >= 0x3E9)
  {
    v23 = [TIDocumentState _string:v22 byTrimmingWordsAfterIndex:500];

    v22 = v23;
  }

  v36 = xmmword_186483EA0;
  if ([v14 length] >= 0x41)
  {
    v24 = [TIDocumentState _selectedTextByDeletingInteriorSentences:v14 outTruncatedRange:&v36];

    v14 = v24;
  }

  v35.receiver = self;
  v35.super_class = TIDocumentState;
  v25 = [(TIDocumentState *)&v35 init];
  if (v25)
  {
    v26 = [v16 copy];
    v27 = *(v25 + 1);
    *(v25 + 1) = v26;

    v28 = [v13 copy];
    v29 = *(v25 + 2);
    *(v25 + 2) = v28;

    v30 = [v14 copy];
    v31 = *(v25 + 3);
    *(v25 + 3) = v30;

    v32 = [v22 copy];
    v33 = *(v25 + 4);
    *(v25 + 4) = v32;

    *(v25 + 5) = location;
    *(v25 + 6) = length;
    *(v25 + 56) = v36;
  }

  return v25;
}

+ (id)_selectedTextByDeletingInteriorSentences:(id)a3 outTruncatedRange:(_NSRange *)a4
{
  v6 = a3;
  v7 = [v6 length];
  v33 = 0;
  v34 = &v33;
  v35 = 0x3010000000;
  v37 = 0;
  v38 = 0;
  v36 = &unk_18659682B;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3010000000;
  v30 = &unk_18659682B;
  v31 = v7;
  v32 = 0;
  if (v7)
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __78__TIDocumentState__selectedTextByDeletingInteriorSentences_outTruncatedRange___block_invoke;
    v26[3] = &unk_1E6F4BBD8;
    v26[4] = &v33;
    [v6 enumerateSubstringsInRange:0 options:v7 usingBlock:{516, v26}];
    v8 = v34[5] + v34[4];
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= [v6 length])
  {
    v10 = v28;
    v9 = v34;
    *(v28 + 2) = *(v34 + 2);
  }

  else
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __78__TIDocumentState__selectedTextByDeletingInteriorSentences_outTruncatedRange___block_invoke_2;
    v25[3] = &unk_1E6F4BBD8;
    v25[4] = &v27;
    [v6 enumerateSubstringsInRange:0 options:v7 usingBlock:{772, v25}];
    v9 = v34;
    v10 = v28;
  }

  if (v9[5] + v9[4] <= v10[4])
  {
    v12 = [v6 substringWithRange:?];
    v14 = [v6 substringWithRange:{v28[4], v28[5]}];
    v16 = [v12 length];
    if (([v14 length] + v16) < 0x3E9)
    {
      v19 = v34[4];
      --v34[5];
      v20 = [v6 substringWithRange:v19];

      v21 = [@"  " stringByAppendingString:v14];

      v11 = [v20 stringByAppendingString:v21];
      v12 = v20;
      v14 = v21;
      if (!a4)
      {
        goto LABEL_17;
      }

LABEL_16:
      a4->location = [v12 length];
      v22 = [v6 length];
      a4->length = v22 - [v11 length];
      goto LABEL_17;
    }

    if ([v12 length] < 0x1F5)
    {
      if ([v14 length] < 0x1F5)
      {
        goto LABEL_25;
      }

      v18 = [a1 _string:v14 byTrimmingWordsAfterIndex:249];
    }

    else
    {
      v17 = [a1 _string:v12 byTrimmingWordsAfterIndex:249];

      if ([v14 length] < 0x3E9)
      {
        v12 = v17;
LABEL_25:
        v11 = [v12 stringByAppendingString:v14];
        if (!a4)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

      v18 = [a1 _string:v14 byTrimmingWordsBeforeIndex:{objc_msgSend(v14, "length") - 249}];
      v12 = v17;
    }

    v24 = [@"  " stringByAppendingString:v18];

    v14 = v24;
    goto LABEL_25;
  }

  v11 = [v6 copy];
  if ([v6 length] < 0x3E9)
  {
    goto LABEL_18;
  }

  v12 = [a1 _string:v11 byTrimmingWordsAfterIndex:249];
  v13 = [a1 _string:v11 byTrimmingWordsBeforeIndex:{objc_msgSend(v11, "length") - 249}];
  v14 = [@"  " stringByAppendingString:v13];

  v15 = [v12 stringByAppendingString:v14];

  v11 = v15;
  if (a4)
  {
    goto LABEL_16;
  }

LABEL_17:

LABEL_18:
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  return v11;
}

uint64_t __78__TIDocumentState__selectedTextByDeletingInteriorSentences_outTruncatedRange___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v7 = *(*(result + 32) + 8);
  *(v7 + 32) = a5;
  *(v7 + 40) = a6;
  *a7 = 1;
  return result;
}

uint64_t __78__TIDocumentState__selectedTextByDeletingInteriorSentences_outTruncatedRange___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v7 = *(*(result + 32) + 8);
  *(v7 + 32) = a5;
  *(v7 + 40) = a6;
  *a7 = 1;
  return result;
}

+ (id)_string:(id)a3 byTrimmingWordsAfterIndex:(unint64_t)a4
{
  v5 = [a3 copy];
  if ([v5 length] > a4)
  {
    v6 = [v5 substringToIndex:{objc_msgSend(v5, "_indexByTrimmingWordsAfterIndex:", a4)}];

    v5 = v6;
  }

  v7 = v5;

  return v5;
}

+ (id)_string:(id)a3 byTrimmingWordsBeforeIndex:(unint64_t)a4
{
  v5 = [a3 copy];
  v6 = v5;
  if (a4)
  {
    v7 = [v5 substringFromIndex:{objc_msgSend(v5, "_indexByTrimmingWordsBeforeIndex:", a4)}];

    v6 = v7;
  }

  v8 = v6;

  return v6;
}

+ (TIDocumentState)documentStateWithContextBefore:(id)a3 markedText:(id)a4 selectedRange:(_NSRange)a5 contextAfter:(id)a6
{
  length = a5.length;
  location = a5.location;
  v10 = a4;
  v11 = a6;
  v12 = a3;
  if ([v10 length])
  {
    if (length)
    {
      v13 = [v10 substringWithRange:{location, length}];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {

    v10 = 0;
    v13 = 0;
    length = 0;
    location = 0x7FFFFFFFFFFFFFFFLL;
  }

  v14 = [[TIDocumentState alloc] initWithContextBefore:v12 markedText:v10 selectedText:v13 contextAfter:v11 selectedRangeInMarkedText:location, length];

  return v14;
}

+ (TIDocumentState)documentStateWithContextBefore:(id)a3 selectedText:(id)a4 contextAfter:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[TIDocumentState alloc] initWithContextBefore:v9 markedText:0 selectedText:v8 contextAfter:v7 selectedRangeInMarkedText:0x7FFFFFFFFFFFFFFFLL, 0];

  return v10;
}

- (TIDocumentState)initWithText:(id)a3 selectedRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v8 = v7;
  if (location)
  {
    v9 = [v7 substringToIndex:location];
    if (length)
    {
LABEL_3:
      v10 = [v8 substringWithRange:{location, length}];
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    if (length)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_6:
  v11 = location + length;
  if (v11 >= [v8 length])
  {
    v12 = 0;
  }

  else
  {
    v12 = [v8 substringFromIndex:v11];
  }

  v13 = [(TIDocumentState *)self initWithContextBefore:v9 markedText:0 selectedText:v10 contextAfter:v12 selectedRangeInMarkedText:0x7FFFFFFFFFFFFFFFLL, 0];

  return v13;
}

- (BOOL)deletingBackwardsWillRemoveText
{
  v3 = [(TIDocumentState *)self contextBeforeInput];
  if ([v3 length])
  {

    return 1;
  }

  v4 = [(TIDocumentState *)self selectedText];
  v5 = [v4 length];

  if (v5)
  {
    return 1;
  }

  v7 = [(TIDocumentState *)self markedText];
  if ([v7 length])
  {
    v8 = [(TIDocumentState *)self selectedRangeInMarkedText];

    if (v8)
    {
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

- (id)documentStateAfterCursorAdjustment:(int64_t)a3
{
  if (a3)
  {
    v4 = [(TIDocumentState *)self documentStateAfterCollapsingSelection];
    v5 = [v4 contextBeforeInput];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = &stru_1EF56D550;
    }

    v8 = v7;

    v9 = [v4 contextAfterInput];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = &stru_1EF56D550;
    }

    v12 = v11;

    if (a3 < 1)
    {
      v22 = [(__CFString *)v8 _rangeOfCharacterClusterAtIndex:[(__CFString *)v8 length] withClusterOffset:a3];
      v24 = [(__CFString *)v8 substringWithRange:v22, v23];
      v17 = [v24 stringByAppendingString:v12];

      v18 = [(__CFString *)v8 substringToIndex:v22];

      v19 = v18;
      v20 = v17;
    }

    else
    {
      v13 = [(__CFString *)v12 _rangeOfCharacterClusterAtIndex:0 withClusterOffset:a3];
      v15 = v14;
      v16 = [(__CFString *)v12 substringWithRange:v13, v14];
      v17 = [(__CFString *)v8 stringByAppendingString:v16];

      v18 = [(__CFString *)v12 substringFromIndex:v15];

      v19 = v17;
      v20 = v18;
    }

    v21 = [TIDocumentState documentStateWithContextBefore:v19 selectedText:0 contextAfter:v20];
  }

  else
  {
    v21 = self;
  }

  return v21;
}

- (id)documentStateAfterReplacingText:(id)a3 withText:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TIDocumentState *)self contextBeforeInput];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = &stru_1EF56D550;
  }

  v10 = [(TIDocumentState *)self selectedText];

  if (v10)
  {
    v11 = [(TIDocumentState *)self selectedText];
    v12 = [(__CFString *)v9 stringByAppendingString:v11];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = [(TIDocumentState *)self selectedText];
    }

    v15 = v14;

    v9 = v15;
  }

  v16 = [v6 length];
  if (v16)
  {
    v17 = v16;
    if ([(__CFString *)v9 hasSuffix:v6])
    {
      v18 = [(__CFString *)v9 length]- v17;
      if (v7)
      {
        v19 = v7;
      }

      else
      {
        v19 = &stru_1EF56D550;
      }

      v20 = [(__CFString *)v9 stringByReplacingCharactersInRange:v18 withString:v17, v19];
      goto LABEL_17;
    }
  }

  else if (v7)
  {
    v20 = [(__CFString *)v9 stringByAppendingString:v7];
LABEL_17:
    v21 = v20;

    v22 = [(TIDocumentState *)self contextAfterInput];
    v23 = [TIDocumentState documentStateWithContextBefore:v21 selectedText:0 contextAfter:v22];

    v9 = v21;
    goto LABEL_19;
  }

  v23 = 0;
LABEL_19:

  return v23;
}

- (id)documentStateAfterCollapsingSelection
{
  v3 = [(TIDocumentState *)self selectedText];

  if (v3)
  {
    v4 = [(TIDocumentState *)self contextBeforeInput];
    v5 = [(TIDocumentState *)self selectedText];
    v6 = [v4 stringByAppendingString:v5];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [(TIDocumentState *)self selectedText];
    }

    v10 = v8;

    v11 = [(TIDocumentState *)self contextAfterInput];
    v9 = [TIDocumentState documentStateWithContextBefore:v10 selectedText:0 contextAfter:v11];
  }

  else
  {
    v9 = self;
  }

  return v9;
}

- (id)documentStateAfterUnmarkingText
{
  v3 = [(TIDocumentState *)self markedText];

  if (!v3)
  {
    v14 = self;
    goto LABEL_20;
  }

  v4 = [(TIDocumentState *)self contextBeforeInput];
  v5 = [(TIDocumentState *)self selectedRangeInMarkedText];
  v6 = [(TIDocumentState *)self markedText];
  v7 = [v6 length];

  if (v5 >= v7)
  {
    v9 = [(TIDocumentState *)self markedText];
    v15 = [v4 stringByAppendingString:v9];
    if (!v15)
    {
      v16 = [(TIDocumentState *)self markedText];
      v11 = 0;
      goto LABEL_13;
    }

    v13 = v15;
    v11 = v13;
LABEL_11:
    v16 = v13;
LABEL_13:

    v4 = v16;
    goto LABEL_14;
  }

  if ([(TIDocumentState *)self selectedRangeInMarkedText])
  {
    v8 = [(TIDocumentState *)self markedText];
    v9 = [v8 substringToIndex:{-[TIDocumentState selectedRangeInMarkedText](self, "selectedRangeInMarkedText")}];

    v10 = [v4 stringByAppendingString:v9];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v9;
    }

    v13 = v12;
    goto LABEL_11;
  }

LABEL_14:
  v17 = [(TIDocumentState *)self contextAfterInput];
  v18 = [(TIDocumentState *)self selectedRangeInMarkedText];
  v20 = v18 + v19;
  v21 = [(TIDocumentState *)self markedText];
  v22 = [v21 length];

  if (v20 < v22)
  {
    v23 = [(TIDocumentState *)self markedText];
    v24 = [v23 substringFromIndex:v20];

    if (v17)
    {
      v25 = [v24 stringByAppendingString:v17];

      v17 = v25;
    }

    else
    {
      v17 = v24;
    }
  }

  v26 = [(TIDocumentState *)self selectedText];
  v14 = [TIDocumentState documentStateWithContextBefore:v4 selectedText:v26 contextAfter:v17];

LABEL_20:

  return v14;
}

- (id)documentStateAfterSettingMarkedText:(id)a3 selectedRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v8 = [(TIDocumentState *)self markedText];
  if (v8)
  {
  }

  else if (![v7 length])
  {
LABEL_8:
    v14 = self;
    goto LABEL_12;
  }

  v9 = [(TIDocumentState *)self markedText];
  if (![v9 length])
  {
    goto LABEL_10;
  }

  v10 = [(TIDocumentState *)self markedText];
  if (([v7 isEqualToString:v10] & 1) == 0)
  {

LABEL_10:
    goto LABEL_11;
  }

  v11 = [(TIDocumentState *)self selectedRangeInMarkedText];
  v13 = v12;

  if (location == v11 && length == v13)
  {
    goto LABEL_8;
  }

LABEL_11:
  v15 = [(TIDocumentState *)self contextBeforeInput];
  v16 = [(TIDocumentState *)self contextAfterInput];
  v14 = [TIDocumentState documentStateWithContextBefore:v15 markedText:v7 selectedRange:location contextAfter:length, v16];

LABEL_12:

  return v14;
}

- (id)documentStateAfterDeletingForward
{
  v3 = [(TIDocumentState *)self markedText];

  if (v3)
  {
    v4 = [(TIDocumentState *)self documentStateAfterUnmarkingText];
    v5 = [v4 documentStateAfterDeletingForward];
LABEL_3:

    goto LABEL_4;
  }

  v7 = [(TIDocumentState *)self selectedText];
  if (v7 && (v8 = v7, -[TIDocumentState selectedText](self, "selectedText"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 length], v9, v8, v10))
  {
    v11 = [(TIDocumentState *)self contextBeforeInput];
    v12 = [(TIDocumentState *)self contextAfterInput];
    v5 = [TIDocumentState documentStateWithContextBefore:v11 selectedText:0 contextAfter:v12];
  }

  else
  {
    v13 = [(TIDocumentState *)self contextAfterInput];
    v14 = [v13 length];

    if (v14)
    {
      v15 = [(TIDocumentState *)self contextAfterInput];
      v16 = [v15 length];

      v17 = [(TIDocumentState *)self contextAfterInput];
      v18 = [v17 rangeOfComposedCharacterSequenceAtIndex:0];
      v20 = v19;

      v4 = 0;
      if (v18 != 0x7FFFFFFFFFFFFFFFLL && v20 < v16)
      {
        v21 = [(TIDocumentState *)self contextAfterInput];
        v4 = [v21 substringFromIndex:v20];
      }

      v22 = [(TIDocumentState *)self contextBeforeInput];
      v5 = [TIDocumentState documentStateWithContextBefore:v22 selectedText:0 contextAfter:v4];

      goto LABEL_3;
    }

    v5 = self;
  }

LABEL_4:

  return v5;
}

- (id)documentStateAfterDeletingBackward
{
  v3 = [(TIDocumentState *)self markedText];

  if (v3)
  {
    v4 = [(TIDocumentState *)self documentStateAfterUnmarkingText];
    v5 = [v4 documentStateAfterDeletingBackward];
LABEL_3:

    goto LABEL_4;
  }

  v7 = [(TIDocumentState *)self selectedText];
  if (v7 && (v8 = v7, -[TIDocumentState selectedText](self, "selectedText"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 length], v9, v8, v10))
  {
    v11 = [(TIDocumentState *)self contextBeforeInput];
    v12 = [(TIDocumentState *)self contextAfterInput];
    v5 = [TIDocumentState documentStateWithContextBefore:v11 selectedText:0 contextAfter:v12];
  }

  else
  {
    v13 = [(TIDocumentState *)self contextBeforeInput];
    v14 = [v13 length];

    if (v14)
    {
      v15 = [(TIDocumentState *)self contextBeforeInput];
      v16 = [v15 length];

      v17 = [(TIDocumentState *)self contextBeforeInput];
      v18 = [v17 _rangeOfBackwardDeletionClusterAtIndex:v16 - 1];
      v20 = v19;

      if (v20 >= v16)
      {
        v4 = 0;
      }

      else
      {
        v21 = [(TIDocumentState *)self contextBeforeInput];
        v4 = [v21 substringToIndex:v18];
      }

      v22 = [(TIDocumentState *)self contextAfterInput];
      v5 = [TIDocumentState documentStateWithContextBefore:v4 selectedText:0 contextAfter:v22];

      goto LABEL_3;
    }

    v5 = self;
  }

LABEL_4:

  return v5;
}

- (id)documentStateAfterInsertingTextAfterSelection:(id)a3
{
  v4 = a3;
  v5 = [(TIDocumentState *)self contextAfterInput];
  if (v5)
  {
    v6 = [(TIDocumentState *)self contextAfterInput];
    v7 = [v4 stringByAppendingString:v6];
  }

  else
  {
    v7 = v4;
  }

  v8 = [(TIDocumentState *)self contextBeforeInput];
  v9 = [TIDocumentState documentStateWithContextBefore:v8 selectedText:0 contextAfter:v7];

  return v9;
}

- (id)documentStateAfterInsertingText:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(TIDocumentState *)self contextBeforeInput];
    v6 = [v5 stringByAppendingString:v4];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v4;
    }

    v9 = v8;

    v10 = [(TIDocumentState *)self contextAfterInput];
    v11 = [TIDocumentState documentStateWithContextBefore:v9 selectedText:0 contextAfter:v10];
  }

  else
  {
    v11 = self;
  }

  return v11;
}

- (unint64_t)inputIndexWithTerminatorPredicate:(id)a3
{
  v3 = [(TIDocumentState *)self inputStemWithTerminatorPredicate:a3];
  v4 = [v3 length];

  return v4;
}

- (id)inputStringWithTerminatorPredicate:(id)a3
{
  v4 = a3;
  v5 = [(TIDocumentState *)self selectedText];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = [(TIDocumentState *)self contextBeforeInput];
    v8 = [(TIDocumentState *)self wordPrefixOfString:v7 withTerminatorPredicate:v4 reverse:1];

    v9 = [(TIDocumentState *)self contextAfterInput];
    v10 = [(TIDocumentState *)self wordPrefixOfString:v9 withTerminatorPredicate:v4 reverse:0];

    v6 = [v8 stringByAppendingString:v10];
  }

  return v6;
}

- (id)inputStemWithTerminatorPredicate:(id)a3
{
  v4 = a3;
  v5 = [(TIDocumentState *)self selectedText];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = [(TIDocumentState *)self contextBeforeInput];
    v6 = [(TIDocumentState *)self wordPrefixOfString:v7 withTerminatorPredicate:v4 reverse:1];
  }

  return v6;
}

- (id)wordPrefixOfString:(id)a3 withTerminatorPredicate:(id)a4 reverse:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3010000000;
  v28 = &unk_18659682B;
  v29 = xmmword_186483EA0;
  if (v5)
  {
    v9 = 258;
  }

  else
  {
    v9 = 2;
  }

  v10 = [v7 length];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __90__TIDocumentState_InputStringSupport__wordPrefixOfString_withTerminatorPredicate_reverse___block_invoke;
  v22 = &unk_1E6F4BC00;
  v11 = v8;
  v23 = v11;
  v24 = &v25;
  [v7 enumerateSubstringsInRange:0 options:v10 usingBlock:{v9, &v19}];
  v12 = v7;
  v13 = v12;
  v14 = v26[4];
  v15 = v12;
  if (v14 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v5)
    {
      [(__CFString *)v12 substringFromIndex:v26[5] + v14, v19, v20, v21, v22];
    }

    else
    {
      [(__CFString *)v12 substringToIndex:v19, v20, v21, v22];
    }
    v15 = ;
  }

  v16 = &stru_1EF56D550;
  if (v15)
  {
    v16 = v15;
  }

  v17 = v16;

  _Block_object_dispose(&v25, 8);

  return v17;
}

uint64_t __90__TIDocumentState_InputStringSupport__wordPrefixOfString_withTerminatorPredicate_reverse___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    v12 = *(*(a1 + 40) + 8);
    *(v12 + 32) = a3;
    *(v12 + 40) = a4;
    *a7 = 1;
  }

  return result;
}

+ (id)unboundedDocumentStateForTestingWithContextBefore:(id)a3 selectedText:(id)a4 contextAfter:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithUnboundedContextBefore:v10 markedText:0 selectedText:v9 unboundedContextAfter:v8 selectedRangeInMarkedText:{0x7FFFFFFFFFFFFFFFLL, 0}];

  return v11;
}

+ (id)documentStateForTestingWithContextBefore:(id)a3 selectedText:(id)a4 contextAfter:(id)a5 markedText:(id)a6 selectedRangeInMarkedText:(_NSRange)a7
{
  length = a7.length;
  location = a7.location;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[a1 alloc] initWithContextBefore:v16 markedText:v13 selectedText:v15 contextAfter:v14 selectedRangeInMarkedText:{location, length}];

  return v17;
}

+ (id)documentStateForTestingWithContextBefore:(id)a3 selectedText:(id)a4 contextAfter:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithContextBefore:v10 markedText:0 selectedText:v9 contextAfter:v8 selectedRangeInMarkedText:{0x7FFFFFFFFFFFFFFFLL, 0}];

  return v11;
}

+ (id)documentStateForTestingWithText:(id)a3 selectedRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v8 = [[a1 alloc] initWithText:v7 selectedRange:{location, length}];

  return v8;
}

@end