@interface TIDocumentState
+ (TIDocumentState)documentStateWithContextBefore:(id)before markedText:(id)text selectedRange:(_NSRange)range contextAfter:(id)after;
+ (TIDocumentState)documentStateWithContextBefore:(id)before selectedText:(id)text contextAfter:(id)after;
+ (id)_selectedTextByDeletingInteriorSentences:(id)sentences outTruncatedRange:(_NSRange *)range;
+ (id)_string:(id)_string byTrimmingWordsAfterIndex:(unint64_t)index;
+ (id)_string:(id)_string byTrimmingWordsBeforeIndex:(unint64_t)index;
+ (id)documentStateForTestingWithContextBefore:(id)before selectedText:(id)text contextAfter:(id)after;
+ (id)documentStateForTestingWithContextBefore:(id)before selectedText:(id)text contextAfter:(id)after markedText:(id)markedText selectedRangeInMarkedText:(_NSRange)inMarkedText;
+ (id)documentStateForTestingWithText:(id)text selectedRange:(_NSRange)range;
+ (id)unboundedDocumentStateForTestingWithContextBefore:(id)before selectedText:(id)text contextAfter:(id)after;
- (BOOL)deletingBackwardsWillRemoveText;
- (BOOL)documentIsEmpty;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualIgnoringMarkedText:(id)text;
- (NSString)string;
- (TIDocumentState)initWithCoder:(id)coder;
- (TIDocumentState)initWithContextBefore:(id)before markedText:(id)text selectedText:(id)selectedText contextAfter:(id)after selectedRangeInMarkedText:(_NSRange)markedText;
- (TIDocumentState)initWithText:(id)text selectedRange:(_NSRange)range;
- (TIDocumentState)initWithUnboundedContextBefore:(id)before markedText:(id)text selectedText:(id)selectedText unboundedContextAfter:(id)after selectedRangeInMarkedText:(_NSRange)markedText;
- (TIDocumentState)initWithUnboundedContextBefore:(id)before markedText:(id)text selectedText:(id)selectedText unboundedContextAfter:(id)after selectedRangeInMarkedText:(_NSRange)markedText truncatedRangeInSelectedText:(_NSRange)inSelectedText;
- (_NSRange)selectedRangeInMarkedText;
- (_NSRange)truncatedRangeInSelectedText;
- (id)description;
- (id)documentStateAfterCollapsingSelection;
- (id)documentStateAfterCursorAdjustment:(int64_t)adjustment;
- (id)documentStateAfterDeletingBackward;
- (id)documentStateAfterDeletingForward;
- (id)documentStateAfterInsertingText:(id)text;
- (id)documentStateAfterInsertingTextAfterSelection:(id)selection;
- (id)documentStateAfterReplacingText:(id)text withText:(id)withText;
- (id)documentStateAfterSettingMarkedText:(id)text selectedRange:(_NSRange)range;
- (id)documentStateAfterUnmarkingText;
- (id)inputStemWithTerminatorPredicate:(id)predicate;
- (id)inputStringWithTerminatorPredicate:(id)predicate;
- (id)wordPrefixOfString:(id)string withTerminatorPredicate:(id)predicate reverse:(BOOL)reverse;
- (unint64_t)hash;
- (unint64_t)inputIndexWithTerminatorPredicate:(id)predicate;
- (void)encodeWithCoder:(id)coder;
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
  contextBeforeInput = [(TIDocumentState *)self contextBeforeInput];
  v4 = contextBeforeInput;
  if (contextBeforeInput)
  {
    v5 = contextBeforeInput;
  }

  else
  {
    v5 = &stru_1EF56D550;
  }

  v6 = v5;

  selectedText = [(TIDocumentState *)self selectedText];
  v8 = selectedText;
  if (selectedText)
  {
    v9 = selectedText;
  }

  else
  {
    v9 = &stru_1EF56D550;
  }

  v10 = v9;

  contextAfterInput = [(TIDocumentState *)self contextAfterInput];
  v12 = contextAfterInput;
  if (contextAfterInput)
  {
    v13 = contextAfterInput;
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
  contextBeforeInput = [(TIDocumentState *)self contextBeforeInput];
  if ([contextBeforeInput length])
  {
    v4 = 0;
  }

  else
  {
    selectedText = [(TIDocumentState *)self selectedText];
    if ([selectedText length])
    {
      v4 = 0;
    }

    else
    {
      markedText = [(TIDocumentState *)self markedText];
      if ([markedText length])
      {
        v4 = 0;
      }

      else
      {
        contextAfterInput = [(TIDocumentState *)self contextAfterInput];
        v4 = [contextAfterInput length] == 0;
      }
    }
  }

  return v4;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p", objc_opt_class(), self];
  contextBeforeInput = [(TIDocumentState *)self contextBeforeInput];
  v5 = [contextBeforeInput stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"];
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

  markedText = [(TIDocumentState *)self markedText];

  if (markedText)
  {
    markedText2 = [(TIDocumentState *)self markedText];
    v10 = [markedText2 substringToIndex:{-[TIDocumentState selectedRangeInMarkedText](self, "selectedRangeInMarkedText")}];
    v11 = [v10 stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"];
    [v3 appendFormat:@"{%@", v11];
  }

  selectedText = [(TIDocumentState *)self selectedText];

  if (selectedText)
  {
    if ([(TIDocumentState *)self truncatedRangeInSelectedText]== 0x7FFFFFFFFFFFFFFFLL || ([(TIDocumentState *)self truncatedRangeInSelectedText], !v13))
    {
      selectedText2 = [(TIDocumentState *)self selectedText];
      v15 = [selectedText2 stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"];
      [v3 appendFormat:@"[%@]", v15];
    }

    else
    {
      selectedText2 = [(TIDocumentState *)self selectedText];
      v15 = [selectedText2 substringToIndex:{-[TIDocumentState truncatedRangeInSelectedText](self, "truncatedRangeInSelectedText")}];
      v16 = [v15 stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"];
      [(TIDocumentState *)self truncatedRangeInSelectedText];
      v18 = v17;
      selectedText3 = [(TIDocumentState *)self selectedText];
      v20 = [selectedText3 substringFromIndex:{-[TIDocumentState truncatedRangeInSelectedText](self, "truncatedRangeInSelectedText")}];
      v21 = [v20 stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"];
      [v3 appendFormat:@"[%@{...%lu...}%@]", v16, v18, v21];
    }
  }

  else
  {
    [v3 appendString:@"|"];
  }

  markedText3 = [(TIDocumentState *)self markedText];

  if (markedText3)
  {
    markedText4 = [(TIDocumentState *)self markedText];
    selectedRangeInMarkedText = [(TIDocumentState *)self selectedRangeInMarkedText];
    v26 = [markedText4 substringFromIndex:selectedRangeInMarkedText + v25];
    v27 = [v26 stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"];
    [v3 appendFormat:@"%@}", v27];
  }

  contextAfterInput = [(TIDocumentState *)self contextAfterInput];
  v29 = [contextAfterInput stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"];
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
  contextBeforeInput = [(TIDocumentState *)self contextBeforeInput];
  v4 = [(TIDocumentState *)self hashString:contextBeforeInput intoHashValue:0];

  markedText = [(TIDocumentState *)self markedText];
  v6 = [(TIDocumentState *)self hashString:markedText intoHashValue:v4];

  selectedText = [(TIDocumentState *)self selectedText];
  v8 = [(TIDocumentState *)self hashString:selectedText intoHashValue:v6];

  contextAfterInput = [(TIDocumentState *)self contextAfterInput];
  v10 = [(TIDocumentState *)self hashString:contextAfterInput intoHashValue:v8];

  v11 = 257 * ([(TIDocumentState *)self selectedRangeInMarkedText]+ 257 * v10);
  v12 = 257 * (v11 + [(TIDocumentState *)self truncatedRangeInSelectedText]);
  [(TIDocumentState *)self truncatedRangeInSelectedText];
  return v12 + v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = MEMORY[0x1E696AEC0];
      contextBeforeInput = [(TIDocumentState *)self contextBeforeInput];
      contextBeforeInput2 = [(TIDocumentState *)v5 contextBeforeInput];
      v9 = [v6 _ti_string:contextBeforeInput matchesStringIgnoringNullity:contextBeforeInput2];

      if (v9)
      {
        v10 = MEMORY[0x1E696AEC0];
        selectedText = [(TIDocumentState *)self selectedText];
        selectedText2 = [(TIDocumentState *)v5 selectedText];
        v9 = [v10 _ti_string:selectedText matchesStringIgnoringNullity:selectedText2];

        if (v9)
        {
          v13 = MEMORY[0x1E696AEC0];
          contextAfterInput = [(TIDocumentState *)self contextAfterInput];
          contextAfterInput2 = [(TIDocumentState *)v5 contextAfterInput];
          v9 = [v13 _ti_string:contextAfterInput matchesStringIgnoringNullity:contextAfterInput2];

          if (v9)
          {
            v16 = MEMORY[0x1E696AEC0];
            markedText = [(TIDocumentState *)self markedText];
            markedText2 = [(TIDocumentState *)v5 markedText];
            v9 = [v16 _ti_string:markedText matchesStringIgnoringNullity:markedText2];

            if (v9)
            {
              selectedRangeInMarkedText = [(TIDocumentState *)self selectedRangeInMarkedText];
              v21 = v20;
              LOBYTE(v9) = 0;
              if (selectedRangeInMarkedText == [(TIDocumentState *)v5 selectedRangeInMarkedText]&& v21 == v22)
              {
                truncatedRangeInSelectedText = [(TIDocumentState *)self truncatedRangeInSelectedText];
                v25 = v24;
                LOBYTE(v9) = truncatedRangeInSelectedText == [(TIDocumentState *)v5 truncatedRangeInSelectedText]&& v25 == v26;
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

- (BOOL)isEqualIgnoringMarkedText:(id)text
{
  textCopy = text;
  if (self == textCopy)
  {
    v14 = 1;
  }

  else
  {
    v5 = MEMORY[0x1E696AEC0];
    contextBeforeInput = [(TIDocumentState *)self contextBeforeInput];
    contextBeforeInput2 = [(TIDocumentState *)textCopy contextBeforeInput];
    LODWORD(v5) = [v5 _ti_string:contextBeforeInput matchesStringIgnoringNullity:contextBeforeInput2];

    if (v5 && (v8 = MEMORY[0x1E696AEC0], -[TIDocumentState selectedText](self, "selectedText"), v9 = objc_claimAutoreleasedReturnValue(), -[TIDocumentState selectedText](textCopy, "selectedText"), v10 = objc_claimAutoreleasedReturnValue(), LODWORD(v8) = [v8 _ti_string:v9 matchesStringIgnoringNullity:v10], v10, v9, v8))
    {
      v11 = MEMORY[0x1E696AEC0];
      contextAfterInput = [(TIDocumentState *)self contextAfterInput];
      contextAfterInput2 = [(TIDocumentState *)textCopy contextAfterInput];
      v14 = [v11 _ti_string:contextAfterInput matchesStringIgnoringNullity:contextAfterInput2];
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  contextBeforeInput = self->_contextBeforeInput;
  v12 = coderCopy;
  if (contextBeforeInput)
  {
    [coderCopy encodeObject:contextBeforeInput forKey:@"contextBeforeInput"];
    coderCopy = v12;
  }

  markedText = self->_markedText;
  if (markedText)
  {
    [v12 encodeObject:markedText forKey:@"markedText"];
    coderCopy = v12;
  }

  selectedText = self->_selectedText;
  if (selectedText)
  {
    [v12 encodeObject:selectedText forKey:@"selectedText"];
    coderCopy = v12;
  }

  contextAfterInput = self->_contextAfterInput;
  if (contextAfterInput)
  {
    [v12 encodeObject:contextAfterInput forKey:@"contextAfterInput"];
    coderCopy = v12;
  }

  if (self->_markedText)
  {
    location = self->_selectedRangeInMarkedText.location;
    if (location)
    {
      [v12 encodeInteger:location forKey:@"locationOfSelectionInMarkedText"];
      coderCopy = v12;
    }
  }

  if (self->_selectedText)
  {
    v10 = self->_truncatedRangeInSelectedText.location;
    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [MEMORY[0x1E696B098] valueWithRange:{v10, self->_truncatedRangeInSelectedText.length}];
      [v12 encodeObject:v11 forKey:@"truncatedRangeInSelectedText"];

      coderCopy = v12;
    }
  }
}

- (TIDocumentState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = TIDocumentState;
  v5 = [(TIDocumentState *)&v25 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contextBeforeInput"];
    v7 = [v6 copy];
    contextBeforeInput = v5->_contextBeforeInput;
    v5->_contextBeforeInput = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"markedText"];
    v10 = [v9 copy];
    markedText = v5->_markedText;
    v5->_markedText = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selectedText"];
    v13 = [v12 copy];
    selectedText = v5->_selectedText;
    v5->_selectedText = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contextAfterInput"];
    v16 = [v15 copy];
    contextAfterInput = v5->_contextAfterInput;
    v5->_contextAfterInput = v16;

    if (v5->_markedText)
    {
      v18 = [coderCopy decodeIntegerForKey:@"locationOfSelectionInMarkedText"];
      v19 = [(NSString *)v5->_selectedText length];
    }

    else
    {
      v19 = 0;
      v18 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v5->_selectedRangeInMarkedText.location = v18;
    v5->_selectedRangeInMarkedText.length = v19;
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"truncatedRangeInSelectedText"];
    v21 = v20;
    if (v20)
    {
      rangeValue = [v20 rangeValue];
    }

    else
    {
      v23 = 0;
      rangeValue = 0x7FFFFFFFFFFFFFFFLL;
    }

    v5->_truncatedRangeInSelectedText.location = rangeValue;
    v5->_truncatedRangeInSelectedText.length = v23;
  }

  return v5;
}

- (TIDocumentState)initWithUnboundedContextBefore:(id)before markedText:(id)text selectedText:(id)selectedText unboundedContextAfter:(id)after selectedRangeInMarkedText:(_NSRange)markedText truncatedRangeInSelectedText:(_NSRange)inSelectedText
{
  result = [(TIDocumentState *)self initWithUnboundedContextBefore:before markedText:text selectedText:selectedText unboundedContextAfter:after selectedRangeInMarkedText:markedText.location, markedText.length];
  result->_truncatedRangeInSelectedText = inSelectedText;
  return result;
}

- (TIDocumentState)initWithUnboundedContextBefore:(id)before markedText:(id)text selectedText:(id)selectedText unboundedContextAfter:(id)after selectedRangeInMarkedText:(_NSRange)markedText
{
  length = markedText.length;
  location = markedText.location;
  beforeCopy = before;
  textCopy = text;
  selectedTextCopy = selectedText;
  afterCopy = after;
  v29 = xmmword_186483EA0;
  if ([selectedTextCopy length] >= 0x41)
  {
    v17 = [TIDocumentState _selectedTextByDeletingInteriorSentences:selectedTextCopy outTruncatedRange:&v29];

    selectedTextCopy = v17;
  }

  v28.receiver = self;
  v28.super_class = TIDocumentState;
  v18 = [(TIDocumentState *)&v28 init];
  if (v18)
  {
    v19 = [beforeCopy copy];
    v20 = *(v18 + 1);
    *(v18 + 1) = v19;

    v21 = [textCopy copy];
    v22 = *(v18 + 2);
    *(v18 + 2) = v21;

    v23 = [selectedTextCopy copy];
    v24 = *(v18 + 3);
    *(v18 + 3) = v23;

    v25 = [afterCopy copy];
    v26 = *(v18 + 4);
    *(v18 + 4) = v25;

    *(v18 + 5) = location;
    *(v18 + 6) = length;
    *(v18 + 56) = v29;
  }

  return v18;
}

- (TIDocumentState)initWithContextBefore:(id)before markedText:(id)text selectedText:(id)selectedText contextAfter:(id)after selectedRangeInMarkedText:(_NSRange)markedText
{
  length = markedText.length;
  location = markedText.location;
  textCopy = text;
  selectedTextCopy = selectedText;
  afterCopy = after;
  v16 = [before copy];
  if ([v16 length] >= 0x3E9)
  {
    v17 = +[TIDocumentState _string:byTrimmingWordsBeforeIndex:](TIDocumentState, "_string:byTrimmingWordsBeforeIndex:", v16, [v16 length] - 500);

    v16 = v17;
  }

  v18 = afterCopy;
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
  if ([selectedTextCopy length] >= 0x41)
  {
    v24 = [TIDocumentState _selectedTextByDeletingInteriorSentences:selectedTextCopy outTruncatedRange:&v36];

    selectedTextCopy = v24;
  }

  v35.receiver = self;
  v35.super_class = TIDocumentState;
  v25 = [(TIDocumentState *)&v35 init];
  if (v25)
  {
    v26 = [v16 copy];
    v27 = *(v25 + 1);
    *(v25 + 1) = v26;

    v28 = [textCopy copy];
    v29 = *(v25 + 2);
    *(v25 + 2) = v28;

    v30 = [selectedTextCopy copy];
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

+ (id)_selectedTextByDeletingInteriorSentences:(id)sentences outTruncatedRange:(_NSRange *)range
{
  sentencesCopy = sentences;
  v7 = [sentencesCopy length];
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
    [sentencesCopy enumerateSubstringsInRange:0 options:v7 usingBlock:{516, v26}];
    v8 = v34[5] + v34[4];
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= [sentencesCopy length])
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
    [sentencesCopy enumerateSubstringsInRange:0 options:v7 usingBlock:{772, v25}];
    v9 = v34;
    v10 = v28;
  }

  if (v9[5] + v9[4] <= v10[4])
  {
    v12 = [sentencesCopy substringWithRange:?];
    v14 = [sentencesCopy substringWithRange:{v28[4], v28[5]}];
    v16 = [v12 length];
    if (([v14 length] + v16) < 0x3E9)
    {
      v19 = v34[4];
      --v34[5];
      v20 = [sentencesCopy substringWithRange:v19];

      v21 = [@"  " stringByAppendingString:v14];

      v11 = [v20 stringByAppendingString:v21];
      v12 = v20;
      v14 = v21;
      if (!range)
      {
        goto LABEL_17;
      }

LABEL_16:
      range->location = [v12 length];
      v22 = [sentencesCopy length];
      range->length = v22 - [v11 length];
      goto LABEL_17;
    }

    if ([v12 length] < 0x1F5)
    {
      if ([v14 length] < 0x1F5)
      {
        goto LABEL_25;
      }

      v18 = [self _string:v14 byTrimmingWordsAfterIndex:249];
    }

    else
    {
      v17 = [self _string:v12 byTrimmingWordsAfterIndex:249];

      if ([v14 length] < 0x3E9)
      {
        v12 = v17;
LABEL_25:
        v11 = [v12 stringByAppendingString:v14];
        if (!range)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

      v18 = [self _string:v14 byTrimmingWordsBeforeIndex:{objc_msgSend(v14, "length") - 249}];
      v12 = v17;
    }

    v24 = [@"  " stringByAppendingString:v18];

    v14 = v24;
    goto LABEL_25;
  }

  v11 = [sentencesCopy copy];
  if ([sentencesCopy length] < 0x3E9)
  {
    goto LABEL_18;
  }

  v12 = [self _string:v11 byTrimmingWordsAfterIndex:249];
  v13 = [self _string:v11 byTrimmingWordsBeforeIndex:{objc_msgSend(v11, "length") - 249}];
  v14 = [@"  " stringByAppendingString:v13];

  v15 = [v12 stringByAppendingString:v14];

  v11 = v15;
  if (range)
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

+ (id)_string:(id)_string byTrimmingWordsAfterIndex:(unint64_t)index
{
  v5 = [_string copy];
  if ([v5 length] > index)
  {
    v6 = [v5 substringToIndex:{objc_msgSend(v5, "_indexByTrimmingWordsAfterIndex:", index)}];

    v5 = v6;
  }

  v7 = v5;

  return v5;
}

+ (id)_string:(id)_string byTrimmingWordsBeforeIndex:(unint64_t)index
{
  v5 = [_string copy];
  v6 = v5;
  if (index)
  {
    v7 = [v5 substringFromIndex:{objc_msgSend(v5, "_indexByTrimmingWordsBeforeIndex:", index)}];

    v6 = v7;
  }

  v8 = v6;

  return v6;
}

+ (TIDocumentState)documentStateWithContextBefore:(id)before markedText:(id)text selectedRange:(_NSRange)range contextAfter:(id)after
{
  length = range.length;
  location = range.location;
  textCopy = text;
  afterCopy = after;
  beforeCopy = before;
  if ([textCopy length])
  {
    if (length)
    {
      v13 = [textCopy substringWithRange:{location, length}];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {

    textCopy = 0;
    v13 = 0;
    length = 0;
    location = 0x7FFFFFFFFFFFFFFFLL;
  }

  v14 = [[TIDocumentState alloc] initWithContextBefore:beforeCopy markedText:textCopy selectedText:v13 contextAfter:afterCopy selectedRangeInMarkedText:location, length];

  return v14;
}

+ (TIDocumentState)documentStateWithContextBefore:(id)before selectedText:(id)text contextAfter:(id)after
{
  afterCopy = after;
  textCopy = text;
  beforeCopy = before;
  v10 = [[TIDocumentState alloc] initWithContextBefore:beforeCopy markedText:0 selectedText:textCopy contextAfter:afterCopy selectedRangeInMarkedText:0x7FFFFFFFFFFFFFFFLL, 0];

  return v10;
}

- (TIDocumentState)initWithText:(id)text selectedRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  textCopy = text;
  v8 = textCopy;
  if (location)
  {
    v9 = [textCopy substringToIndex:location];
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
  contextBeforeInput = [(TIDocumentState *)self contextBeforeInput];
  if ([contextBeforeInput length])
  {

    return 1;
  }

  selectedText = [(TIDocumentState *)self selectedText];
  v5 = [selectedText length];

  if (v5)
  {
    return 1;
  }

  markedText = [(TIDocumentState *)self markedText];
  if ([markedText length])
  {
    selectedRangeInMarkedText = [(TIDocumentState *)self selectedRangeInMarkedText];

    if (selectedRangeInMarkedText)
    {
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

- (id)documentStateAfterCursorAdjustment:(int64_t)adjustment
{
  if (adjustment)
  {
    documentStateAfterCollapsingSelection = [(TIDocumentState *)self documentStateAfterCollapsingSelection];
    contextBeforeInput = [documentStateAfterCollapsingSelection contextBeforeInput];
    v6 = contextBeforeInput;
    if (contextBeforeInput)
    {
      v7 = contextBeforeInput;
    }

    else
    {
      v7 = &stru_1EF56D550;
    }

    v8 = v7;

    contextAfterInput = [documentStateAfterCollapsingSelection contextAfterInput];
    v10 = contextAfterInput;
    if (contextAfterInput)
    {
      v11 = contextAfterInput;
    }

    else
    {
      v11 = &stru_1EF56D550;
    }

    v12 = v11;

    if (adjustment < 1)
    {
      v22 = [(__CFString *)v8 _rangeOfCharacterClusterAtIndex:[(__CFString *)v8 length] withClusterOffset:adjustment];
      v24 = [(__CFString *)v8 substringWithRange:v22, v23];
      v17 = [v24 stringByAppendingString:v12];

      v18 = [(__CFString *)v8 substringToIndex:v22];

      v19 = v18;
      v20 = v17;
    }

    else
    {
      v13 = [(__CFString *)v12 _rangeOfCharacterClusterAtIndex:0 withClusterOffset:adjustment];
      v15 = v14;
      v16 = [(__CFString *)v12 substringWithRange:v13, v14];
      v17 = [(__CFString *)v8 stringByAppendingString:v16];

      v18 = [(__CFString *)v12 substringFromIndex:v15];

      v19 = v17;
      v20 = v18;
    }

    selfCopy = [TIDocumentState documentStateWithContextBefore:v19 selectedText:0 contextAfter:v20];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)documentStateAfterReplacingText:(id)text withText:(id)withText
{
  textCopy = text;
  withTextCopy = withText;
  contextBeforeInput = [(TIDocumentState *)self contextBeforeInput];
  if (contextBeforeInput)
  {
    v9 = contextBeforeInput;
  }

  else
  {
    v9 = &stru_1EF56D550;
  }

  selectedText = [(TIDocumentState *)self selectedText];

  if (selectedText)
  {
    selectedText2 = [(TIDocumentState *)self selectedText];
    v12 = [(__CFString *)v9 stringByAppendingString:selectedText2];
    v13 = v12;
    if (v12)
    {
      selectedText3 = v12;
    }

    else
    {
      selectedText3 = [(TIDocumentState *)self selectedText];
    }

    v15 = selectedText3;

    v9 = v15;
  }

  v16 = [textCopy length];
  if (v16)
  {
    v17 = v16;
    if ([(__CFString *)v9 hasSuffix:textCopy])
    {
      v18 = [(__CFString *)v9 length]- v17;
      if (withTextCopy)
      {
        v19 = withTextCopy;
      }

      else
      {
        v19 = &stru_1EF56D550;
      }

      v20 = [(__CFString *)v9 stringByReplacingCharactersInRange:v18 withString:v17, v19];
      goto LABEL_17;
    }
  }

  else if (withTextCopy)
  {
    v20 = [(__CFString *)v9 stringByAppendingString:withTextCopy];
LABEL_17:
    v21 = v20;

    contextAfterInput = [(TIDocumentState *)self contextAfterInput];
    v23 = [TIDocumentState documentStateWithContextBefore:v21 selectedText:0 contextAfter:contextAfterInput];

    v9 = v21;
    goto LABEL_19;
  }

  v23 = 0;
LABEL_19:

  return v23;
}

- (id)documentStateAfterCollapsingSelection
{
  selectedText = [(TIDocumentState *)self selectedText];

  if (selectedText)
  {
    contextBeforeInput = [(TIDocumentState *)self contextBeforeInput];
    selectedText2 = [(TIDocumentState *)self selectedText];
    v6 = [contextBeforeInput stringByAppendingString:selectedText2];
    v7 = v6;
    if (v6)
    {
      selectedText3 = v6;
    }

    else
    {
      selectedText3 = [(TIDocumentState *)self selectedText];
    }

    v10 = selectedText3;

    contextAfterInput = [(TIDocumentState *)self contextAfterInput];
    selfCopy = [TIDocumentState documentStateWithContextBefore:v10 selectedText:0 contextAfter:contextAfterInput];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)documentStateAfterUnmarkingText
{
  markedText = [(TIDocumentState *)self markedText];

  if (!markedText)
  {
    selfCopy = self;
    goto LABEL_20;
  }

  contextBeforeInput = [(TIDocumentState *)self contextBeforeInput];
  selectedRangeInMarkedText = [(TIDocumentState *)self selectedRangeInMarkedText];
  markedText2 = [(TIDocumentState *)self markedText];
  v7 = [markedText2 length];

  if (selectedRangeInMarkedText >= v7)
  {
    markedText3 = [(TIDocumentState *)self markedText];
    v15 = [contextBeforeInput stringByAppendingString:markedText3];
    if (!v15)
    {
      markedText4 = [(TIDocumentState *)self markedText];
      v11 = 0;
      goto LABEL_13;
    }

    v13 = v15;
    v11 = v13;
LABEL_11:
    markedText4 = v13;
LABEL_13:

    contextBeforeInput = markedText4;
    goto LABEL_14;
  }

  if ([(TIDocumentState *)self selectedRangeInMarkedText])
  {
    markedText5 = [(TIDocumentState *)self markedText];
    markedText3 = [markedText5 substringToIndex:{-[TIDocumentState selectedRangeInMarkedText](self, "selectedRangeInMarkedText")}];

    v10 = [contextBeforeInput stringByAppendingString:markedText3];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = markedText3;
    }

    v13 = v12;
    goto LABEL_11;
  }

LABEL_14:
  contextAfterInput = [(TIDocumentState *)self contextAfterInput];
  selectedRangeInMarkedText2 = [(TIDocumentState *)self selectedRangeInMarkedText];
  v20 = selectedRangeInMarkedText2 + v19;
  markedText6 = [(TIDocumentState *)self markedText];
  v22 = [markedText6 length];

  if (v20 < v22)
  {
    markedText7 = [(TIDocumentState *)self markedText];
    v24 = [markedText7 substringFromIndex:v20];

    if (contextAfterInput)
    {
      v25 = [v24 stringByAppendingString:contextAfterInput];

      contextAfterInput = v25;
    }

    else
    {
      contextAfterInput = v24;
    }
  }

  selectedText = [(TIDocumentState *)self selectedText];
  selfCopy = [TIDocumentState documentStateWithContextBefore:contextBeforeInput selectedText:selectedText contextAfter:contextAfterInput];

LABEL_20:

  return selfCopy;
}

- (id)documentStateAfterSettingMarkedText:(id)text selectedRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  textCopy = text;
  markedText = [(TIDocumentState *)self markedText];
  if (markedText)
  {
  }

  else if (![textCopy length])
  {
LABEL_8:
    selfCopy = self;
    goto LABEL_12;
  }

  markedText2 = [(TIDocumentState *)self markedText];
  if (![markedText2 length])
  {
    goto LABEL_10;
  }

  markedText3 = [(TIDocumentState *)self markedText];
  if (([textCopy isEqualToString:markedText3] & 1) == 0)
  {

LABEL_10:
    goto LABEL_11;
  }

  selectedRangeInMarkedText = [(TIDocumentState *)self selectedRangeInMarkedText];
  v13 = v12;

  if (location == selectedRangeInMarkedText && length == v13)
  {
    goto LABEL_8;
  }

LABEL_11:
  contextBeforeInput = [(TIDocumentState *)self contextBeforeInput];
  contextAfterInput = [(TIDocumentState *)self contextAfterInput];
  selfCopy = [TIDocumentState documentStateWithContextBefore:contextBeforeInput markedText:textCopy selectedRange:location contextAfter:length, contextAfterInput];

LABEL_12:

  return selfCopy;
}

- (id)documentStateAfterDeletingForward
{
  markedText = [(TIDocumentState *)self markedText];

  if (markedText)
  {
    documentStateAfterUnmarkingText = [(TIDocumentState *)self documentStateAfterUnmarkingText];
    selfCopy = [documentStateAfterUnmarkingText documentStateAfterDeletingForward];
LABEL_3:

    goto LABEL_4;
  }

  selectedText = [(TIDocumentState *)self selectedText];
  if (selectedText && (v8 = selectedText, -[TIDocumentState selectedText](self, "selectedText"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 length], v9, v8, v10))
  {
    contextBeforeInput = [(TIDocumentState *)self contextBeforeInput];
    contextAfterInput = [(TIDocumentState *)self contextAfterInput];
    selfCopy = [TIDocumentState documentStateWithContextBefore:contextBeforeInput selectedText:0 contextAfter:contextAfterInput];
  }

  else
  {
    contextAfterInput2 = [(TIDocumentState *)self contextAfterInput];
    v14 = [contextAfterInput2 length];

    if (v14)
    {
      contextAfterInput3 = [(TIDocumentState *)self contextAfterInput];
      v16 = [contextAfterInput3 length];

      contextAfterInput4 = [(TIDocumentState *)self contextAfterInput];
      v18 = [contextAfterInput4 rangeOfComposedCharacterSequenceAtIndex:0];
      v20 = v19;

      documentStateAfterUnmarkingText = 0;
      if (v18 != 0x7FFFFFFFFFFFFFFFLL && v20 < v16)
      {
        contextAfterInput5 = [(TIDocumentState *)self contextAfterInput];
        documentStateAfterUnmarkingText = [contextAfterInput5 substringFromIndex:v20];
      }

      contextBeforeInput2 = [(TIDocumentState *)self contextBeforeInput];
      selfCopy = [TIDocumentState documentStateWithContextBefore:contextBeforeInput2 selectedText:0 contextAfter:documentStateAfterUnmarkingText];

      goto LABEL_3;
    }

    selfCopy = self;
  }

LABEL_4:

  return selfCopy;
}

- (id)documentStateAfterDeletingBackward
{
  markedText = [(TIDocumentState *)self markedText];

  if (markedText)
  {
    documentStateAfterUnmarkingText = [(TIDocumentState *)self documentStateAfterUnmarkingText];
    selfCopy = [documentStateAfterUnmarkingText documentStateAfterDeletingBackward];
LABEL_3:

    goto LABEL_4;
  }

  selectedText = [(TIDocumentState *)self selectedText];
  if (selectedText && (v8 = selectedText, -[TIDocumentState selectedText](self, "selectedText"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 length], v9, v8, v10))
  {
    contextBeforeInput = [(TIDocumentState *)self contextBeforeInput];
    contextAfterInput = [(TIDocumentState *)self contextAfterInput];
    selfCopy = [TIDocumentState documentStateWithContextBefore:contextBeforeInput selectedText:0 contextAfter:contextAfterInput];
  }

  else
  {
    contextBeforeInput2 = [(TIDocumentState *)self contextBeforeInput];
    v14 = [contextBeforeInput2 length];

    if (v14)
    {
      contextBeforeInput3 = [(TIDocumentState *)self contextBeforeInput];
      v16 = [contextBeforeInput3 length];

      contextBeforeInput4 = [(TIDocumentState *)self contextBeforeInput];
      v18 = [contextBeforeInput4 _rangeOfBackwardDeletionClusterAtIndex:v16 - 1];
      v20 = v19;

      if (v20 >= v16)
      {
        documentStateAfterUnmarkingText = 0;
      }

      else
      {
        contextBeforeInput5 = [(TIDocumentState *)self contextBeforeInput];
        documentStateAfterUnmarkingText = [contextBeforeInput5 substringToIndex:v18];
      }

      contextAfterInput2 = [(TIDocumentState *)self contextAfterInput];
      selfCopy = [TIDocumentState documentStateWithContextBefore:documentStateAfterUnmarkingText selectedText:0 contextAfter:contextAfterInput2];

      goto LABEL_3;
    }

    selfCopy = self;
  }

LABEL_4:

  return selfCopy;
}

- (id)documentStateAfterInsertingTextAfterSelection:(id)selection
{
  selectionCopy = selection;
  contextAfterInput = [(TIDocumentState *)self contextAfterInput];
  if (contextAfterInput)
  {
    contextAfterInput2 = [(TIDocumentState *)self contextAfterInput];
    v7 = [selectionCopy stringByAppendingString:contextAfterInput2];
  }

  else
  {
    v7 = selectionCopy;
  }

  contextBeforeInput = [(TIDocumentState *)self contextBeforeInput];
  v9 = [TIDocumentState documentStateWithContextBefore:contextBeforeInput selectedText:0 contextAfter:v7];

  return v9;
}

- (id)documentStateAfterInsertingText:(id)text
{
  textCopy = text;
  if ([textCopy length])
  {
    contextBeforeInput = [(TIDocumentState *)self contextBeforeInput];
    v6 = [contextBeforeInput stringByAppendingString:textCopy];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = textCopy;
    }

    v9 = v8;

    contextAfterInput = [(TIDocumentState *)self contextAfterInput];
    selfCopy = [TIDocumentState documentStateWithContextBefore:v9 selectedText:0 contextAfter:contextAfterInput];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (unint64_t)inputIndexWithTerminatorPredicate:(id)predicate
{
  v3 = [(TIDocumentState *)self inputStemWithTerminatorPredicate:predicate];
  v4 = [v3 length];

  return v4;
}

- (id)inputStringWithTerminatorPredicate:(id)predicate
{
  predicateCopy = predicate;
  selectedText = [(TIDocumentState *)self selectedText];

  if (selectedText)
  {
    v6 = 0;
  }

  else
  {
    contextBeforeInput = [(TIDocumentState *)self contextBeforeInput];
    v8 = [(TIDocumentState *)self wordPrefixOfString:contextBeforeInput withTerminatorPredicate:predicateCopy reverse:1];

    contextAfterInput = [(TIDocumentState *)self contextAfterInput];
    v10 = [(TIDocumentState *)self wordPrefixOfString:contextAfterInput withTerminatorPredicate:predicateCopy reverse:0];

    v6 = [v8 stringByAppendingString:v10];
  }

  return v6;
}

- (id)inputStemWithTerminatorPredicate:(id)predicate
{
  predicateCopy = predicate;
  selectedText = [(TIDocumentState *)self selectedText];

  if (selectedText)
  {
    v6 = 0;
  }

  else
  {
    contextBeforeInput = [(TIDocumentState *)self contextBeforeInput];
    v6 = [(TIDocumentState *)self wordPrefixOfString:contextBeforeInput withTerminatorPredicate:predicateCopy reverse:1];
  }

  return v6;
}

- (id)wordPrefixOfString:(id)string withTerminatorPredicate:(id)predicate reverse:(BOOL)reverse
{
  reverseCopy = reverse;
  stringCopy = string;
  predicateCopy = predicate;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3010000000;
  v28 = &unk_18659682B;
  v29 = xmmword_186483EA0;
  if (reverseCopy)
  {
    v9 = 258;
  }

  else
  {
    v9 = 2;
  }

  v10 = [stringCopy length];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __90__TIDocumentState_InputStringSupport__wordPrefixOfString_withTerminatorPredicate_reverse___block_invoke;
  v22 = &unk_1E6F4BC00;
  v11 = predicateCopy;
  v23 = v11;
  v24 = &v25;
  [stringCopy enumerateSubstringsInRange:0 options:v10 usingBlock:{v9, &v19}];
  v12 = stringCopy;
  v13 = v12;
  v14 = v26[4];
  v15 = v12;
  if (v14 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (reverseCopy)
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

+ (id)unboundedDocumentStateForTestingWithContextBefore:(id)before selectedText:(id)text contextAfter:(id)after
{
  afterCopy = after;
  textCopy = text;
  beforeCopy = before;
  v11 = [[self alloc] initWithUnboundedContextBefore:beforeCopy markedText:0 selectedText:textCopy unboundedContextAfter:afterCopy selectedRangeInMarkedText:{0x7FFFFFFFFFFFFFFFLL, 0}];

  return v11;
}

+ (id)documentStateForTestingWithContextBefore:(id)before selectedText:(id)text contextAfter:(id)after markedText:(id)markedText selectedRangeInMarkedText:(_NSRange)inMarkedText
{
  length = inMarkedText.length;
  location = inMarkedText.location;
  markedTextCopy = markedText;
  afterCopy = after;
  textCopy = text;
  beforeCopy = before;
  v17 = [[self alloc] initWithContextBefore:beforeCopy markedText:markedTextCopy selectedText:textCopy contextAfter:afterCopy selectedRangeInMarkedText:{location, length}];

  return v17;
}

+ (id)documentStateForTestingWithContextBefore:(id)before selectedText:(id)text contextAfter:(id)after
{
  afterCopy = after;
  textCopy = text;
  beforeCopy = before;
  v11 = [[self alloc] initWithContextBefore:beforeCopy markedText:0 selectedText:textCopy contextAfter:afterCopy selectedRangeInMarkedText:{0x7FFFFFFFFFFFFFFFLL, 0}];

  return v11;
}

+ (id)documentStateForTestingWithText:(id)text selectedRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  textCopy = text;
  v8 = [[self alloc] initWithText:textCopy selectedRange:{location, length}];

  return v8;
}

@end