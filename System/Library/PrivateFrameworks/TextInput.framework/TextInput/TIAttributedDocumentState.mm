@interface TIAttributedDocumentState
+ (id)_attributedString:(id)string byTrimmingWordsAfterIndex:(unint64_t)index;
+ (id)_attributedString:(id)string byTrimmingWordsBeforeIndex:(unint64_t)index;
+ (id)_selectedTextByDeletingInteriorSentences:(id)sentences outTruncatedRange:(_NSRange *)range;
+ (id)attributedDocumentStateForTestingWithContextBefore:(id)before selectedText:(id)text contextAfter:(id)after;
+ (id)attributedDocumentStateForTestingWithContextBefore:(id)before selectedText:(id)text contextAfter:(id)after markedText:(id)markedText selectedRangeInMarkedText:(_NSRange)inMarkedText;
+ (id)attributedDocumentStateForTestingWithPlainContextBefore:(id)before selectedText:(id)text contextAfter:(id)after;
+ (id)attributedDocumentStateForTestingWithPlainContextBefore:(id)before selectedText:(id)text contextAfter:(id)after markedText:(id)markedText selectedRangeInMarkedText:(_NSRange)inMarkedText;
+ (id)attributedDocumentStateForTestingWithPlainText:(id)text selectedRange:(_NSRange)range;
+ (id)attributedDocumentStateForTestingWithText:(id)text selectedRange:(_NSRange)range;
+ (id)attributedDocumentStateWithContextBefore:(id)before markedText:(id)text selectedRange:(_NSRange)range contextAfter:(id)after;
+ (id)attributedDocumentStateWithContextBefore:(id)before selectedText:(id)text contextAfter:(id)after;
+ (id)attributedDocumentStateWithDocumentState:(id)state;
+ (id)unboundedAttributedDocumentStateForTestingWithContextBefore:(id)before selectedText:(id)text contextAfter:(id)after;
+ (id)unboundedAttributedDocumentStateForTestingWithPlainContextBefore:(id)before selectedText:(id)text contextAfter:(id)after;
- (BOOL)documentIsEmpty;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualIgnoringMarkedText:(id)text;
- (BOOL)isTextEqualIgnoringMarkedText:(id)text;
- (NSAttributedString)attributedString;
- (NSString)string;
- (TIAttributedDocumentState)documentStateWithAttributeIterator:(id)iterator;
- (TIAttributedDocumentState)initWithCoder:(id)coder;
- (TIAttributedDocumentState)initWithContextBefore:(id)before markedText:(id)text selectedText:(id)selectedText contextAfter:(id)after selectedRangeInMarkedText:(_NSRange)markedText;
- (TIAttributedDocumentState)initWithText:(id)text selectedRange:(_NSRange)range;
- (TIAttributedDocumentState)initWithUnboundedContextBefore:(id)before markedText:(id)text selectedText:(id)selectedText unboundedContextAfter:(id)after selectedRangeInMarkedText:(_NSRange)markedText;
- (TIAttributedDocumentState)initWithUnboundedContextBefore:(id)before markedText:(id)text selectedText:(id)selectedText unboundedContextAfter:(id)after selectedRangeInMarkedText:(_NSRange)markedText truncatedRangeInSelectedText:(_NSRange)inSelectedText;
- (_NSRange)selectedRangeInMarkedText;
- (_NSRange)truncatedRangeInSelectedText;
- (id)description;
- (id)documentState;
- (id)documentStateAfterCollapsingSelection;
- (id)documentStateAfterCursorAdjustment:(int64_t)adjustment;
- (id)documentStateAfterDeletingBackward;
- (id)documentStateAfterDeletingForward;
- (id)documentStateAfterInsertingText:(id)text;
- (id)documentStateAfterInsertingTextAfterSelection:(id)selection;
- (id)documentStateAfterReplacingText:(id)text withText:(id)withText;
- (id)documentStateAfterSettingMarkedText:(id)text selectedRange:(_NSRange)range;
- (id)documentStateAfterUnmarkingText;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TIAttributedDocumentState

- (_NSRange)truncatedRangeInSelectedText
{
  length = self->_truncatedRangeInSelectedText.length;
  location = self->_truncatedRangeInSelectedText.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)selectedRangeInMarkedText
{
  length = self->_selectedRangeInMarkedText.length;
  location = self->_selectedRangeInMarkedText.location;
  result.length = length;
  result.location = location;
  return result;
}

- (NSAttributedString)attributedString
{
  contextBeforeInput = [(TIAttributedDocumentState *)self contextBeforeInput];
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

  selectedText = [(TIAttributedDocumentState *)self selectedText];
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

  [(TIAttributedDocumentState *)self contextAfterInput];
  v11 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:&stru_1EF56D550];
  contextBeforeInput2 = [(TIAttributedDocumentState *)self contextBeforeInput];

  if (contextBeforeInput2)
  {
    contextBeforeInput3 = [(TIAttributedDocumentState *)self contextBeforeInput];
    [v11 appendAttributedString:contextBeforeInput3];
  }

  selectedText2 = [(TIAttributedDocumentState *)self selectedText];

  if (selectedText2)
  {
    selectedText3 = [(TIAttributedDocumentState *)self selectedText];
    [v11 appendAttributedString:selectedText3];
  }

  contextAfterInput = [(TIAttributedDocumentState *)self contextAfterInput];

  if (contextAfterInput)
  {
    contextAfterInput2 = [(TIAttributedDocumentState *)self contextAfterInput];
    [v11 appendAttributedString:contextAfterInput2];
  }

  return v11;
}

- (NSString)string
{
  contextBeforeInput = [(TIAttributedDocumentState *)self contextBeforeInput];
  string = [contextBeforeInput string];
  v5 = string;
  if (string)
  {
    v6 = string;
  }

  else
  {
    v6 = &stru_1EF56D550;
  }

  v7 = v6;

  selectedText = [(TIAttributedDocumentState *)self selectedText];
  string2 = [selectedText string];
  v10 = string2;
  if (string2)
  {
    v11 = string2;
  }

  else
  {
    v11 = &stru_1EF56D550;
  }

  v12 = v11;

  contextAfterInput = [(TIAttributedDocumentState *)self contextAfterInput];
  string3 = [contextAfterInput string];
  v15 = string3;
  if (string3)
  {
    v16 = string3;
  }

  else
  {
    v16 = &stru_1EF56D550;
  }

  v17 = v16;

  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", v7, v12, v17];

  return v18;
}

- (BOOL)documentIsEmpty
{
  contextBeforeInput = [(TIAttributedDocumentState *)self contextBeforeInput];
  if ([contextBeforeInput length])
  {
    v4 = 0;
  }

  else
  {
    selectedText = [(TIAttributedDocumentState *)self selectedText];
    if ([selectedText length])
    {
      v4 = 0;
    }

    else
    {
      markedText = [(TIAttributedDocumentState *)self markedText];
      if ([markedText length])
      {
        v4 = 0;
      }

      else
      {
        contextAfterInput = [(TIAttributedDocumentState *)self contextAfterInput];
        v4 = [contextAfterInput length] == 0;
      }
    }
  }

  return v4;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p", objc_opt_class(), self];
  contextBeforeInput = [(TIAttributedDocumentState *)self contextBeforeInput];
  v5 = __40__TIAttributedDocumentState_description__block_invoke(contextBeforeInput);
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

  markedText = [(TIAttributedDocumentState *)self markedText];

  if (markedText)
  {
    markedText2 = [(TIAttributedDocumentState *)self markedText];
    v10 = [markedText2 _ti_attributedSubstringToIndex:{-[TIAttributedDocumentState selectedRangeInMarkedText](self, "selectedRangeInMarkedText")}];
    v11 = __40__TIAttributedDocumentState_description__block_invoke(v10);
    [v3 appendFormat:@"{%@", v11];
  }

  selectedText = [(TIAttributedDocumentState *)self selectedText];

  if (selectedText)
  {
    if ([(TIAttributedDocumentState *)self truncatedRangeInSelectedText]== 0x7FFFFFFFFFFFFFFFLL || ([(TIAttributedDocumentState *)self truncatedRangeInSelectedText], !v13))
    {
      selectedText2 = [(TIAttributedDocumentState *)self selectedText];
      v15 = __40__TIAttributedDocumentState_description__block_invoke(selectedText2);
      [v3 appendFormat:@"[%@]", v15];
    }

    else
    {
      selectedText2 = [(TIAttributedDocumentState *)self selectedText];
      v15 = [selectedText2 _ti_attributedSubstringToIndex:{-[TIAttributedDocumentState truncatedRangeInSelectedText](self, "truncatedRangeInSelectedText")}];
      v16 = __40__TIAttributedDocumentState_description__block_invoke(v15);
      [(TIAttributedDocumentState *)self truncatedRangeInSelectedText];
      v18 = v17;
      selectedText3 = [(TIAttributedDocumentState *)self selectedText];
      v20 = [selectedText3 _ti_attributedSubstringFromIndex:{-[TIAttributedDocumentState truncatedRangeInSelectedText](self, "truncatedRangeInSelectedText")}];
      v21 = __40__TIAttributedDocumentState_description__block_invoke(v20);
      [v3 appendFormat:@"[%@{...%lu...}%@]", v16, v18, v21];
    }
  }

  else
  {
    [v3 appendString:@"|"];
  }

  markedText3 = [(TIAttributedDocumentState *)self markedText];

  if (markedText3)
  {
    markedText4 = [(TIAttributedDocumentState *)self markedText];
    selectedRangeInMarkedText = [(TIAttributedDocumentState *)self selectedRangeInMarkedText];
    v26 = [markedText4 _ti_attributedSubstringFromIndex:selectedRangeInMarkedText + v25];
    v27 = __40__TIAttributedDocumentState_description__block_invoke(v26);
    [v3 appendFormat:@"%@}", v27];
  }

  contextAfterInput = [(TIAttributedDocumentState *)self contextAfterInput];
  v29 = __40__TIAttributedDocumentState_description__block_invoke(contextAfterInput);
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

id __40__TIAttributedDocumentState_description__block_invoke(void *a1)
{
  v1 = a1;
  v2 = [v1 _ti_stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n" options:0 range:{0, objc_msgSend(v1, "length")}];

  return v2;
}

- (unint64_t)hash
{
  contextBeforeInput = [(TIAttributedDocumentState *)self contextBeforeInput];
  v4 = [(TIAttributedDocumentState *)self hashString:contextBeforeInput intoHashValue:0];

  markedText = [(TIAttributedDocumentState *)self markedText];
  v6 = [(TIAttributedDocumentState *)self hashString:markedText intoHashValue:v4];

  selectedText = [(TIAttributedDocumentState *)self selectedText];
  v8 = [(TIAttributedDocumentState *)self hashString:selectedText intoHashValue:v6];

  contextAfterInput = [(TIAttributedDocumentState *)self contextAfterInput];
  v10 = [(TIAttributedDocumentState *)self hashString:contextAfterInput intoHashValue:v8];

  v11 = 257 * ([(TIAttributedDocumentState *)self selectedRangeInMarkedText]+ 257 * v10);
  v12 = 257 * (v11 + [(TIAttributedDocumentState *)self truncatedRangeInSelectedText]);
  [(TIAttributedDocumentState *)self truncatedRangeInSelectedText];
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
      v6 = MEMORY[0x1E696AAB0];
      contextBeforeInput = [(TIAttributedDocumentState *)self contextBeforeInput];
      contextBeforeInput2 = [(TIAttributedDocumentState *)v5 contextBeforeInput];
      v9 = [v6 _ti_attributedString:contextBeforeInput matchesAttributedStringIgnoringNullity:contextBeforeInput2];

      if (v9)
      {
        v10 = MEMORY[0x1E696AAB0];
        selectedText = [(TIAttributedDocumentState *)self selectedText];
        selectedText2 = [(TIAttributedDocumentState *)v5 selectedText];
        v9 = [v10 _ti_attributedString:selectedText matchesAttributedStringIgnoringNullity:selectedText2];

        if (v9)
        {
          v13 = MEMORY[0x1E696AAB0];
          contextAfterInput = [(TIAttributedDocumentState *)self contextAfterInput];
          contextAfterInput2 = [(TIAttributedDocumentState *)v5 contextAfterInput];
          v9 = [v13 _ti_attributedString:contextAfterInput matchesAttributedStringIgnoringNullity:contextAfterInput2];

          if (v9)
          {
            v16 = MEMORY[0x1E696AAB0];
            markedText = [(TIAttributedDocumentState *)self markedText];
            markedText2 = [(TIAttributedDocumentState *)v5 markedText];
            v9 = [v16 _ti_attributedString:markedText matchesAttributedStringIgnoringNullity:markedText2];

            if (v9)
            {
              selectedRangeInMarkedText = [(TIAttributedDocumentState *)self selectedRangeInMarkedText];
              v21 = v20;
              LOBYTE(v9) = 0;
              if (selectedRangeInMarkedText == [(TIAttributedDocumentState *)v5 selectedRangeInMarkedText]&& v21 == v22)
              {
                truncatedRangeInSelectedText = [(TIAttributedDocumentState *)self truncatedRangeInSelectedText];
                v25 = v24;
                LOBYTE(v9) = truncatedRangeInSelectedText == [(TIAttributedDocumentState *)v5 truncatedRangeInSelectedText]&& v25 == v26;
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

- (id)documentState
{
  v3 = [TIDocumentState alloc];
  string = [(NSAttributedString *)self->_contextBeforeInput string];
  string2 = [(NSAttributedString *)self->_markedText string];
  string3 = [(NSAttributedString *)self->_selectedText string];
  string4 = [(NSAttributedString *)self->_contextAfterInput string];
  v8 = [(TIDocumentState *)v3 initWithUnboundedContextBefore:string markedText:string2 selectedText:string3 unboundedContextAfter:string4 selectedRangeInMarkedText:self->_selectedRangeInMarkedText.location truncatedRangeInSelectedText:self->_selectedRangeInMarkedText.length, self->_truncatedRangeInSelectedText.location, self->_truncatedRangeInSelectedText.length];

  return v8;
}

- (BOOL)isTextEqualIgnoringMarkedText:(id)text
{
  if (self == text)
  {
    return 1;
  }

  textCopy = text;
  documentState = [(TIAttributedDocumentState *)self documentState];
  documentState2 = [textCopy documentState];

  LOBYTE(textCopy) = [documentState isEqualIgnoringMarkedText:documentState2];
  return textCopy;
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
    v5 = MEMORY[0x1E696AAB0];
    contextBeforeInput = [(TIAttributedDocumentState *)self contextBeforeInput];
    contextBeforeInput2 = [(TIAttributedDocumentState *)textCopy contextBeforeInput];
    LODWORD(v5) = [v5 _ti_attributedString:contextBeforeInput matchesAttributedStringIgnoringNullity:contextBeforeInput2];

    if (v5 && (v8 = MEMORY[0x1E696AAB0], -[TIAttributedDocumentState selectedText](self, "selectedText"), v9 = objc_claimAutoreleasedReturnValue(), -[TIAttributedDocumentState selectedText](textCopy, "selectedText"), v10 = objc_claimAutoreleasedReturnValue(), LODWORD(v8) = [v8 _ti_attributedString:v9 matchesAttributedStringIgnoringNullity:v10], v10, v9, v8))
    {
      v11 = MEMORY[0x1E696AAB0];
      contextAfterInput = [(TIAttributedDocumentState *)self contextAfterInput];
      contextAfterInput2 = [(TIAttributedDocumentState *)textCopy contextAfterInput];
      v14 = [v11 _ti_attributedString:contextAfterInput matchesAttributedStringIgnoringNullity:contextAfterInput2];
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

- (TIAttributedDocumentState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = TIAttributedDocumentState;
  v5 = [(TIAttributedDocumentState *)&v25 init];
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
      v19 = [(NSAttributedString *)v5->_selectedText length];
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

- (TIAttributedDocumentState)initWithUnboundedContextBefore:(id)before markedText:(id)text selectedText:(id)selectedText unboundedContextAfter:(id)after selectedRangeInMarkedText:(_NSRange)markedText truncatedRangeInSelectedText:(_NSRange)inSelectedText
{
  result = [(TIAttributedDocumentState *)self initWithUnboundedContextBefore:before markedText:text selectedText:selectedText unboundedContextAfter:after selectedRangeInMarkedText:markedText.location, markedText.length];
  result->_truncatedRangeInSelectedText = inSelectedText;
  return result;
}

- (TIAttributedDocumentState)initWithUnboundedContextBefore:(id)before markedText:(id)text selectedText:(id)selectedText unboundedContextAfter:(id)after selectedRangeInMarkedText:(_NSRange)markedText
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
    v17 = [TIAttributedDocumentState _selectedTextByDeletingInteriorSentences:selectedTextCopy outTruncatedRange:&v29];

    selectedTextCopy = v17;
  }

  v28.receiver = self;
  v28.super_class = TIAttributedDocumentState;
  v18 = [(TIAttributedDocumentState *)&v28 init];
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

- (TIAttributedDocumentState)initWithContextBefore:(id)before markedText:(id)text selectedText:(id)selectedText contextAfter:(id)after selectedRangeInMarkedText:(_NSRange)markedText
{
  length = markedText.length;
  location = markedText.location;
  textCopy = text;
  selectedTextCopy = selectedText;
  afterCopy = after;
  v16 = [before copy];
  if ([v16 length] >= 0x3E9)
  {
    v17 = +[TIAttributedDocumentState _attributedString:byTrimmingWordsBeforeIndex:](TIAttributedDocumentState, "_attributedString:byTrimmingWordsBeforeIndex:", v16, [v16 length] - 500);

    v16 = v17;
  }

  v18 = afterCopy;
  v19 = [v18 length];
  *&v37 = v19;
  if (v19)
  {
    string = [v18 string];
    [string getLineStart:0 end:0 contentsEnd:&v37 forRange:{0, 0}];

    v21 = v37;
  }

  else
  {
    v21 = 0;
  }

  if (v21 >= v19)
  {
    v22 = [v18 copy];
  }

  else
  {
    v22 = [v18 _ti_attributedSubstringToIndex:?];
  }

  v23 = v22;

  if ([v23 length] >= 0x3E9)
  {
    v24 = [TIAttributedDocumentState _attributedString:v23 byTrimmingWordsAfterIndex:500];

    v23 = v24;
  }

  v37 = xmmword_186483EA0;
  if ([selectedTextCopy length] >= 0x41)
  {
    v25 = [TIAttributedDocumentState _selectedTextByDeletingInteriorSentences:selectedTextCopy outTruncatedRange:&v37];

    selectedTextCopy = v25;
  }

  v36.receiver = self;
  v36.super_class = TIAttributedDocumentState;
  v26 = [(TIAttributedDocumentState *)&v36 init];
  if (v26)
  {
    v27 = [v16 copy];
    v28 = *(v26 + 1);
    *(v26 + 1) = v27;

    v29 = [textCopy copy];
    v30 = *(v26 + 2);
    *(v26 + 2) = v29;

    v31 = [selectedTextCopy copy];
    v32 = *(v26 + 3);
    *(v26 + 3) = v31;

    v33 = [v23 copy];
    v34 = *(v26 + 4);
    *(v26 + 4) = v33;

    *(v26 + 5) = location;
    *(v26 + 6) = length;
    *(v26 + 56) = v37;
  }

  return v26;
}

+ (id)_selectedTextByDeletingInteriorSentences:(id)sentences outTruncatedRange:(_NSRange *)range
{
  sentencesCopy = sentences;
  v6 = [TIDocumentState alloc];
  string = [sentencesCopy string];
  v8 = [(TIDocumentState *)v6 initWithContextBefore:0 markedText:0 selectedText:string contextAfter:0 selectedRangeInMarkedText:0x7FFFFFFFFFFFFFFFLL, 0];

  v9 = sentencesCopy;
  truncatedRangeInSelectedText = [(TIDocumentState *)v8 truncatedRangeInSelectedText];
  v12 = v9;
  if (truncatedRangeInSelectedText != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = truncatedRangeInSelectedText;
    v14 = v11;
    v12 = [v9 mutableCopy];
    [v12 replaceCharactersInRange:v13 withString:{v14 + 2, @"  "}];
  }

  if (range)
  {
    range->location = [(TIDocumentState *)v8 truncatedRangeInSelectedText];
    range->length = v15;
  }

  return v12;
}

+ (id)_attributedString:(id)string byTrimmingWordsAfterIndex:(unint64_t)index
{
  v5 = [string copy];
  if ([v5 length] > index)
  {
    string = [v5 string];
    v7 = [string _indexByTrimmingWordsAfterIndex:index];

    v8 = [v5 _ti_attributedSubstringToIndex:v7];

    v5 = v8;
  }

  v9 = v5;

  return v5;
}

+ (id)_attributedString:(id)string byTrimmingWordsBeforeIndex:(unint64_t)index
{
  v5 = [string copy];
  v6 = v5;
  if (index)
  {
    string = [v5 string];
    v8 = [string _indexByTrimmingWordsBeforeIndex:index];

    v9 = [v6 _ti_attributedSubstringFromIndex:v8];

    v6 = v9;
  }

  v10 = v6;

  return v6;
}

+ (id)attributedDocumentStateWithContextBefore:(id)before markedText:(id)text selectedRange:(_NSRange)range contextAfter:(id)after
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
      v13 = [textCopy attributedSubstringFromRange:{location, length}];
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

  v14 = [[TIAttributedDocumentState alloc] initWithContextBefore:beforeCopy markedText:textCopy selectedText:v13 contextAfter:afterCopy selectedRangeInMarkedText:location, length];

  return v14;
}

+ (id)attributedDocumentStateWithContextBefore:(id)before selectedText:(id)text contextAfter:(id)after
{
  afterCopy = after;
  textCopy = text;
  beforeCopy = before;
  v10 = [[TIAttributedDocumentState alloc] initWithContextBefore:beforeCopy markedText:0 selectedText:textCopy contextAfter:afterCopy selectedRangeInMarkedText:0x7FFFFFFFFFFFFFFFLL, 0];

  return v10;
}

+ (id)attributedDocumentStateWithDocumentState:(id)state
{
  stateCopy = state;
  v18 = [TIAttributedDocumentState alloc];
  contextBeforeInput = [stateCopy contextBeforeInput];
  v17 = _tiAttributedStringForString(contextBeforeInput);
  markedText = [stateCopy markedText];
  v4 = _tiAttributedStringForString(markedText);
  selectedText = [stateCopy selectedText];
  v6 = _tiAttributedStringForString(selectedText);
  contextAfterInput = [stateCopy contextAfterInput];
  v8 = _tiAttributedStringForString(contextAfterInput);
  selectedRangeInMarkedText = [stateCopy selectedRangeInMarkedText];
  v11 = v10;
  truncatedRangeInSelectedText = [stateCopy truncatedRangeInSelectedText];
  v14 = v13;

  v15 = [(TIAttributedDocumentState *)v18 initWithUnboundedContextBefore:v17 markedText:v4 selectedText:v6 unboundedContextAfter:v8 selectedRangeInMarkedText:selectedRangeInMarkedText truncatedRangeInSelectedText:v11, truncatedRangeInSelectedText, v14];

  return v15;
}

- (TIAttributedDocumentState)initWithText:(id)text selectedRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  textCopy = text;
  v8 = textCopy;
  if (location)
  {
    v9 = [textCopy _ti_attributedSubstringToIndex:location];
    if (length)
    {
LABEL_3:
      v10 = [v8 attributedSubstringFromRange:{location, length}];
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
    v12 = [v8 _ti_attributedSubstringFromIndex:v11];
  }

  v13 = [(TIAttributedDocumentState *)self initWithContextBefore:v9 markedText:0 selectedText:v10 contextAfter:v12 selectedRangeInMarkedText:0x7FFFFFFFFFFFFFFFLL, 0];

  return v13;
}

- (id)documentStateAfterCursorAdjustment:(int64_t)adjustment
{
  if (adjustment)
  {
    documentStateAfterCollapsingSelection = [(TIAttributedDocumentState *)self documentStateAfterCollapsingSelection];
    contextBeforeInput = [documentStateAfterCollapsingSelection contextBeforeInput];
    v6 = contextBeforeInput;
    if (contextBeforeInput)
    {
      v7 = contextBeforeInput;
    }

    else
    {
      v7 = _tiAttributedStringForString(&stru_1EF56D550);
    }

    v9 = v7;

    contextAfterInput = [documentStateAfterCollapsingSelection contextAfterInput];
    v11 = contextAfterInput;
    if (contextAfterInput)
    {
      v12 = contextAfterInput;
    }

    else
    {
      v12 = _tiAttributedStringForString(&stru_1EF56D550);
    }

    v13 = v12;

    if (adjustment < 1)
    {
      string = [v9 string];
      v24 = [string _rangeOfCharacterClusterAtIndex:objc_msgSend(v9 withClusterOffset:{"length"), adjustment}];
      v26 = v25;

      v27 = [v9 attributedSubstringFromRange:{v24, v26}];
      v19 = [v27 _ti_attributedStringByAppendingAttributedString:v13];

      v20 = [v9 _ti_attributedSubstringToIndex:v24];
      v21 = v20;
      v22 = v19;
    }

    else
    {
      string2 = [v13 string];
      v15 = [string2 _rangeOfCharacterClusterAtIndex:0 withClusterOffset:adjustment];
      v17 = v16;

      v18 = [v13 attributedSubstringFromRange:{v15, v17}];
      v19 = [v9 _ti_attributedStringByAppendingAttributedString:v18];

      v20 = [v13 _ti_attributedSubstringFromIndex:v17];
      v21 = v19;
      v22 = v20;
    }

    selfCopy = [TIAttributedDocumentState attributedDocumentStateWithContextBefore:v21 selectedText:0 contextAfter:v22];
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
  contextBeforeInput = [(TIAttributedDocumentState *)self contextBeforeInput];
  if (!contextBeforeInput)
  {
    contextBeforeInput = _tiAttributedStringForString(&stru_1EF56D550);
  }

  selectedText = [(TIAttributedDocumentState *)self selectedText];

  if (selectedText)
  {
    selectedText2 = [(TIAttributedDocumentState *)self selectedText];
    v11 = [contextBeforeInput _ti_attributedStringByAppendingAttributedString:selectedText2];
    v12 = v11;
    if (v11)
    {
      selectedText3 = v11;
    }

    else
    {
      selectedText3 = [(TIAttributedDocumentState *)self selectedText];
    }

    v14 = selectedText3;

    contextBeforeInput = v14;
  }

  v15 = [textCopy length];
  if (v15)
  {
    v16 = v15;
    string = [contextBeforeInput string];
    string2 = [textCopy string];
    v19 = [string hasSuffix:string2];

    if (v19)
    {
      v20 = [contextBeforeInput length] - v16;
      v21 = withTextCopy;
      if (!withTextCopy)
      {
        v21 = _tiAttributedStringForString(&stru_1EF56D550);
      }

      v22 = [contextBeforeInput _ti_stringByReplacingCharactersInRange:v20 withString:{v16, v21}];

      contextBeforeInput = v21;
      if (withTextCopy)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if (withTextCopy)
  {
    v22 = [contextBeforeInput _ti_attributedStringByAppendingAttributedString:withTextCopy];
LABEL_16:

LABEL_17:
    contextAfterInput = [(TIAttributedDocumentState *)self contextAfterInput];
    v24 = [TIAttributedDocumentState attributedDocumentStateWithContextBefore:v22 selectedText:0 contextAfter:contextAfterInput];

    contextBeforeInput = v22;
    goto LABEL_19;
  }

  v24 = 0;
LABEL_19:

  return v24;
}

- (id)documentStateAfterCollapsingSelection
{
  selectedText = [(TIAttributedDocumentState *)self selectedText];

  if (selectedText)
  {
    contextBeforeInput = [(TIAttributedDocumentState *)self contextBeforeInput];
    selectedText2 = [(TIAttributedDocumentState *)self selectedText];
    v6 = [contextBeforeInput _ti_attributedStringByAppendingAttributedString:selectedText2];
    v7 = v6;
    if (v6)
    {
      selectedText3 = v6;
    }

    else
    {
      selectedText3 = [(TIAttributedDocumentState *)self selectedText];
    }

    v10 = selectedText3;

    contextAfterInput = [(TIAttributedDocumentState *)self contextAfterInput];
    selfCopy = [TIAttributedDocumentState attributedDocumentStateWithContextBefore:v10 selectedText:0 contextAfter:contextAfterInput];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)documentStateAfterUnmarkingText
{
  markedText = [(TIAttributedDocumentState *)self markedText];

  if (!markedText)
  {
    selfCopy = self;
    goto LABEL_20;
  }

  contextBeforeInput = [(TIAttributedDocumentState *)self contextBeforeInput];
  selectedRangeInMarkedText = [(TIAttributedDocumentState *)self selectedRangeInMarkedText];
  markedText2 = [(TIAttributedDocumentState *)self markedText];
  v7 = [markedText2 length];

  if (selectedRangeInMarkedText >= v7)
  {
    markedText3 = [(TIAttributedDocumentState *)self markedText];
    v15 = [contextBeforeInput _ti_attributedStringByAppendingAttributedString:markedText3];
    if (!v15)
    {
      markedText4 = [(TIAttributedDocumentState *)self markedText];
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

  if ([(TIAttributedDocumentState *)self selectedRangeInMarkedText])
  {
    markedText5 = [(TIAttributedDocumentState *)self markedText];
    markedText3 = [markedText5 _ti_attributedSubstringToIndex:{-[TIAttributedDocumentState selectedRangeInMarkedText](self, "selectedRangeInMarkedText")}];

    v10 = [contextBeforeInput _ti_attributedStringByAppendingAttributedString:markedText3];
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
  contextAfterInput = [(TIAttributedDocumentState *)self contextAfterInput];
  selectedRangeInMarkedText2 = [(TIAttributedDocumentState *)self selectedRangeInMarkedText];
  v20 = selectedRangeInMarkedText2 + v19;
  markedText6 = [(TIAttributedDocumentState *)self markedText];
  v22 = [markedText6 length];

  if (v20 < v22)
  {
    markedText7 = [(TIAttributedDocumentState *)self markedText];
    v24 = [markedText7 _ti_attributedSubstringFromIndex:v20];

    if (contextAfterInput)
    {
      v25 = [v24 _ti_attributedStringByAppendingAttributedString:contextAfterInput];

      contextAfterInput = v25;
    }

    else
    {
      contextAfterInput = v24;
    }
  }

  selectedText = [(TIAttributedDocumentState *)self selectedText];
  selfCopy = [TIAttributedDocumentState attributedDocumentStateWithContextBefore:contextBeforeInput selectedText:selectedText contextAfter:contextAfterInput];

LABEL_20:

  return selfCopy;
}

- (id)documentStateAfterSettingMarkedText:(id)text selectedRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  textCopy = text;
  markedText = [(TIAttributedDocumentState *)self markedText];
  if (markedText)
  {
  }

  else if (![textCopy length])
  {
LABEL_8:
    selfCopy = self;
    goto LABEL_12;
  }

  markedText2 = [(TIAttributedDocumentState *)self markedText];
  if (![markedText2 length])
  {
    goto LABEL_10;
  }

  markedText3 = [(TIAttributedDocumentState *)self markedText];
  if (([textCopy isEqualToAttributedString:markedText3] & 1) == 0)
  {

LABEL_10:
    goto LABEL_11;
  }

  selectedRangeInMarkedText = [(TIAttributedDocumentState *)self selectedRangeInMarkedText];
  v13 = v12;

  if (location == selectedRangeInMarkedText && length == v13)
  {
    goto LABEL_8;
  }

LABEL_11:
  contextBeforeInput = [(TIAttributedDocumentState *)self contextBeforeInput];
  contextAfterInput = [(TIAttributedDocumentState *)self contextAfterInput];
  selfCopy = [TIAttributedDocumentState attributedDocumentStateWithContextBefore:contextBeforeInput markedText:textCopy selectedRange:location contextAfter:length, contextAfterInput];

LABEL_12:

  return selfCopy;
}

- (id)documentStateAfterDeletingForward
{
  markedText = [(TIAttributedDocumentState *)self markedText];

  if (markedText)
  {
    documentStateAfterUnmarkingText = [(TIAttributedDocumentState *)self documentStateAfterUnmarkingText];
    selfCopy = [documentStateAfterUnmarkingText documentStateAfterDeletingForward];
LABEL_3:

    goto LABEL_4;
  }

  selectedText = [(TIAttributedDocumentState *)self selectedText];
  if (selectedText && (v8 = selectedText, -[TIAttributedDocumentState selectedText](self, "selectedText"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 length], v9, v8, v10))
  {
    contextBeforeInput = [(TIAttributedDocumentState *)self contextBeforeInput];
    contextAfterInput = [(TIAttributedDocumentState *)self contextAfterInput];
    selfCopy = [TIAttributedDocumentState attributedDocumentStateWithContextBefore:contextBeforeInput selectedText:0 contextAfter:contextAfterInput];
  }

  else
  {
    contextAfterInput2 = [(TIAttributedDocumentState *)self contextAfterInput];
    v14 = [contextAfterInput2 length];

    if (v14)
    {
      contextAfterInput3 = [(TIAttributedDocumentState *)self contextAfterInput];
      v16 = [contextAfterInput3 length];

      contextAfterInput4 = [(TIAttributedDocumentState *)self contextAfterInput];
      string = [contextAfterInput4 string];
      v19 = [string rangeOfComposedCharacterSequenceAtIndex:0];
      v21 = v20;

      documentStateAfterUnmarkingText = 0;
      if (v19 != 0x7FFFFFFFFFFFFFFFLL && v21 < v16)
      {
        contextAfterInput5 = [(TIAttributedDocumentState *)self contextAfterInput];
        documentStateAfterUnmarkingText = [contextAfterInput5 _ti_attributedSubstringFromIndex:v21];
      }

      contextBeforeInput2 = [(TIAttributedDocumentState *)self contextBeforeInput];
      selfCopy = [TIAttributedDocumentState attributedDocumentStateWithContextBefore:contextBeforeInput2 selectedText:0 contextAfter:documentStateAfterUnmarkingText];

      goto LABEL_3;
    }

    selfCopy = self;
  }

LABEL_4:

  return selfCopy;
}

- (id)documentStateAfterDeletingBackward
{
  markedText = [(TIAttributedDocumentState *)self markedText];

  if (markedText)
  {
    documentStateAfterUnmarkingText = [(TIAttributedDocumentState *)self documentStateAfterUnmarkingText];
    selfCopy = [documentStateAfterUnmarkingText documentStateAfterDeletingBackward];
LABEL_3:

    goto LABEL_4;
  }

  selectedText = [(TIAttributedDocumentState *)self selectedText];
  if (selectedText && (v8 = selectedText, -[TIAttributedDocumentState selectedText](self, "selectedText"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 length], v9, v8, v10))
  {
    contextBeforeInput = [(TIAttributedDocumentState *)self contextBeforeInput];
    contextAfterInput = [(TIAttributedDocumentState *)self contextAfterInput];
    selfCopy = [TIAttributedDocumentState attributedDocumentStateWithContextBefore:contextBeforeInput selectedText:0 contextAfter:contextAfterInput];
  }

  else
  {
    contextBeforeInput2 = [(TIAttributedDocumentState *)self contextBeforeInput];
    v14 = [contextBeforeInput2 length];

    if (v14)
    {
      contextBeforeInput3 = [(TIAttributedDocumentState *)self contextBeforeInput];
      v16 = [contextBeforeInput3 length];

      contextBeforeInput4 = [(TIAttributedDocumentState *)self contextBeforeInput];
      string = [contextBeforeInput4 string];
      v19 = [string _rangeOfBackwardDeletionClusterAtIndex:v16 - 1];
      v21 = v20;

      if (v21 >= v16)
      {
        documentStateAfterUnmarkingText = 0;
      }

      else
      {
        contextBeforeInput5 = [(TIAttributedDocumentState *)self contextBeforeInput];
        documentStateAfterUnmarkingText = [contextBeforeInput5 _ti_attributedSubstringToIndex:v19];
      }

      contextAfterInput2 = [(TIAttributedDocumentState *)self contextAfterInput];
      selfCopy = [TIAttributedDocumentState attributedDocumentStateWithContextBefore:documentStateAfterUnmarkingText selectedText:0 contextAfter:contextAfterInput2];

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
  if ([selectionCopy length])
  {
    contextAfterInput = [(TIAttributedDocumentState *)self contextAfterInput];
    if (contextAfterInput)
    {
      v6 = contextAfterInput;
      v7 = [selectionCopy _ti_attributedStringByAppendingAttributedString:contextAfterInput];
    }

    else
    {
      v7 = selectionCopy;
    }

    contextBeforeInput = [(TIAttributedDocumentState *)self contextBeforeInput];
    selfCopy = [TIAttributedDocumentState attributedDocumentStateWithContextBefore:contextBeforeInput selectedText:0 contextAfter:v7];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)documentStateAfterInsertingText:(id)text
{
  textCopy = text;
  if ([textCopy length])
  {
    contextBeforeInput = [(TIAttributedDocumentState *)self contextBeforeInput];
    if (contextBeforeInput)
    {
      v6 = contextBeforeInput;
      v7 = [contextBeforeInput _ti_attributedStringByAppendingAttributedString:textCopy];
    }

    else
    {
      v7 = textCopy;
    }

    contextAfterInput = [(TIAttributedDocumentState *)self contextAfterInput];
    selfCopy = [TIAttributedDocumentState attributedDocumentStateWithContextBefore:v7 selectedText:0 contextAfter:contextAfterInput];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (TIAttributedDocumentState)documentStateWithAttributeIterator:(id)iterator
{
  iteratorCopy = iterator;
  v19 = [TIAttributedDocumentState alloc];
  contextBeforeInput = [(TIAttributedDocumentState *)self contextBeforeInput];
  v5 = [contextBeforeInput _ti_attributedStringWithIterator:iteratorCopy];
  markedText = [(TIAttributedDocumentState *)self markedText];
  v7 = [markedText _ti_attributedStringWithIterator:iteratorCopy];
  selectedText = [(TIAttributedDocumentState *)self selectedText];
  v9 = [selectedText _ti_attributedStringWithIterator:iteratorCopy];
  contextAfterInput = [(TIAttributedDocumentState *)self contextAfterInput];
  v11 = [contextAfterInput _ti_attributedStringWithIterator:iteratorCopy];

  selectedRangeInMarkedText = [(TIAttributedDocumentState *)self selectedRangeInMarkedText];
  v14 = v13;
  truncatedRangeInSelectedText = [(TIAttributedDocumentState *)self truncatedRangeInSelectedText];
  v17 = [(TIAttributedDocumentState *)v19 initWithUnboundedContextBefore:v5 markedText:v7 selectedText:v9 unboundedContextAfter:v11 selectedRangeInMarkedText:selectedRangeInMarkedText truncatedRangeInSelectedText:v14, truncatedRangeInSelectedText, v16];

  return v17;
}

+ (id)unboundedAttributedDocumentStateForTestingWithPlainContextBefore:(id)before selectedText:(id)text contextAfter:(id)after
{
  afterCopy = after;
  textCopy = text;
  v10 = _tiAttributedStringForString(before);
  v11 = _tiAttributedStringForString(textCopy);

  v12 = _tiAttributedStringForString(afterCopy);

  v13 = [self unboundedAttributedDocumentStateForTestingWithContextBefore:v10 selectedText:v11 contextAfter:v12];

  return v13;
}

+ (id)attributedDocumentStateForTestingWithPlainContextBefore:(id)before selectedText:(id)text contextAfter:(id)after markedText:(id)markedText selectedRangeInMarkedText:(_NSRange)inMarkedText
{
  length = inMarkedText.length;
  location = inMarkedText.location;
  markedTextCopy = markedText;
  afterCopy = after;
  textCopy = text;
  v16 = _tiAttributedStringForString(before);
  v17 = _tiAttributedStringForString(textCopy);

  v18 = _tiAttributedStringForString(afterCopy);

  v19 = _tiAttributedStringForString(markedTextCopy);

  v20 = [self attributedDocumentStateForTestingWithContextBefore:v16 selectedText:v17 contextAfter:v18 markedText:v19 selectedRangeInMarkedText:{location, length}];

  return v20;
}

+ (id)attributedDocumentStateForTestingWithPlainContextBefore:(id)before selectedText:(id)text contextAfter:(id)after
{
  afterCopy = after;
  textCopy = text;
  v10 = _tiAttributedStringForString(before);
  v11 = _tiAttributedStringForString(textCopy);

  v12 = _tiAttributedStringForString(afterCopy);

  v13 = [self attributedDocumentStateForTestingWithContextBefore:v10 selectedText:v11 contextAfter:v12];

  return v13;
}

+ (id)attributedDocumentStateForTestingWithPlainText:(id)text selectedRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v7 = _tiAttributedStringForString(text);
  v8 = [self attributedDocumentStateForTestingWithText:v7 selectedRange:{location, length}];

  return v8;
}

+ (id)unboundedAttributedDocumentStateForTestingWithContextBefore:(id)before selectedText:(id)text contextAfter:(id)after
{
  afterCopy = after;
  textCopy = text;
  beforeCopy = before;
  v11 = [[self alloc] initWithUnboundedContextBefore:beforeCopy markedText:0 selectedText:textCopy unboundedContextAfter:afterCopy selectedRangeInMarkedText:{0x7FFFFFFFFFFFFFFFLL, 0}];

  return v11;
}

+ (id)attributedDocumentStateForTestingWithContextBefore:(id)before selectedText:(id)text contextAfter:(id)after markedText:(id)markedText selectedRangeInMarkedText:(_NSRange)inMarkedText
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

+ (id)attributedDocumentStateForTestingWithContextBefore:(id)before selectedText:(id)text contextAfter:(id)after
{
  afterCopy = after;
  textCopy = text;
  beforeCopy = before;
  v11 = [[self alloc] initWithContextBefore:beforeCopy markedText:0 selectedText:textCopy contextAfter:afterCopy selectedRangeInMarkedText:{0x7FFFFFFFFFFFFFFFLL, 0}];

  return v11;
}

+ (id)attributedDocumentStateForTestingWithText:(id)text selectedRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  textCopy = text;
  v8 = [[self alloc] initWithText:textCopy selectedRange:{location, length}];

  return v8;
}

@end