@interface TIAttributedDocumentState
+ (id)_attributedString:(id)a3 byTrimmingWordsAfterIndex:(unint64_t)a4;
+ (id)_attributedString:(id)a3 byTrimmingWordsBeforeIndex:(unint64_t)a4;
+ (id)_selectedTextByDeletingInteriorSentences:(id)a3 outTruncatedRange:(_NSRange *)a4;
+ (id)attributedDocumentStateForTestingWithContextBefore:(id)a3 selectedText:(id)a4 contextAfter:(id)a5;
+ (id)attributedDocumentStateForTestingWithContextBefore:(id)a3 selectedText:(id)a4 contextAfter:(id)a5 markedText:(id)a6 selectedRangeInMarkedText:(_NSRange)a7;
+ (id)attributedDocumentStateForTestingWithPlainContextBefore:(id)a3 selectedText:(id)a4 contextAfter:(id)a5;
+ (id)attributedDocumentStateForTestingWithPlainContextBefore:(id)a3 selectedText:(id)a4 contextAfter:(id)a5 markedText:(id)a6 selectedRangeInMarkedText:(_NSRange)a7;
+ (id)attributedDocumentStateForTestingWithPlainText:(id)a3 selectedRange:(_NSRange)a4;
+ (id)attributedDocumentStateForTestingWithText:(id)a3 selectedRange:(_NSRange)a4;
+ (id)attributedDocumentStateWithContextBefore:(id)a3 markedText:(id)a4 selectedRange:(_NSRange)a5 contextAfter:(id)a6;
+ (id)attributedDocumentStateWithContextBefore:(id)a3 selectedText:(id)a4 contextAfter:(id)a5;
+ (id)attributedDocumentStateWithDocumentState:(id)a3;
+ (id)unboundedAttributedDocumentStateForTestingWithContextBefore:(id)a3 selectedText:(id)a4 contextAfter:(id)a5;
+ (id)unboundedAttributedDocumentStateForTestingWithPlainContextBefore:(id)a3 selectedText:(id)a4 contextAfter:(id)a5;
- (BOOL)documentIsEmpty;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualIgnoringMarkedText:(id)a3;
- (BOOL)isTextEqualIgnoringMarkedText:(id)a3;
- (NSAttributedString)attributedString;
- (NSString)string;
- (TIAttributedDocumentState)documentStateWithAttributeIterator:(id)a3;
- (TIAttributedDocumentState)initWithCoder:(id)a3;
- (TIAttributedDocumentState)initWithContextBefore:(id)a3 markedText:(id)a4 selectedText:(id)a5 contextAfter:(id)a6 selectedRangeInMarkedText:(_NSRange)a7;
- (TIAttributedDocumentState)initWithText:(id)a3 selectedRange:(_NSRange)a4;
- (TIAttributedDocumentState)initWithUnboundedContextBefore:(id)a3 markedText:(id)a4 selectedText:(id)a5 unboundedContextAfter:(id)a6 selectedRangeInMarkedText:(_NSRange)a7;
- (TIAttributedDocumentState)initWithUnboundedContextBefore:(id)a3 markedText:(id)a4 selectedText:(id)a5 unboundedContextAfter:(id)a6 selectedRangeInMarkedText:(_NSRange)a7 truncatedRangeInSelectedText:(_NSRange)a8;
- (_NSRange)selectedRangeInMarkedText;
- (_NSRange)truncatedRangeInSelectedText;
- (id)description;
- (id)documentState;
- (id)documentStateAfterCollapsingSelection;
- (id)documentStateAfterCursorAdjustment:(int64_t)a3;
- (id)documentStateAfterDeletingBackward;
- (id)documentStateAfterDeletingForward;
- (id)documentStateAfterInsertingText:(id)a3;
- (id)documentStateAfterInsertingTextAfterSelection:(id)a3;
- (id)documentStateAfterReplacingText:(id)a3 withText:(id)a4;
- (id)documentStateAfterSettingMarkedText:(id)a3 selectedRange:(_NSRange)a4;
- (id)documentStateAfterUnmarkingText;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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
  v3 = [(TIAttributedDocumentState *)self contextBeforeInput];
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

  v7 = [(TIAttributedDocumentState *)self selectedText];
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

  [(TIAttributedDocumentState *)self contextAfterInput];
  v11 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:&stru_1EF56D550];
  v12 = [(TIAttributedDocumentState *)self contextBeforeInput];

  if (v12)
  {
    v13 = [(TIAttributedDocumentState *)self contextBeforeInput];
    [v11 appendAttributedString:v13];
  }

  v14 = [(TIAttributedDocumentState *)self selectedText];

  if (v14)
  {
    v15 = [(TIAttributedDocumentState *)self selectedText];
    [v11 appendAttributedString:v15];
  }

  v16 = [(TIAttributedDocumentState *)self contextAfterInput];

  if (v16)
  {
    v17 = [(TIAttributedDocumentState *)self contextAfterInput];
    [v11 appendAttributedString:v17];
  }

  return v11;
}

- (NSString)string
{
  v3 = [(TIAttributedDocumentState *)self contextBeforeInput];
  v4 = [v3 string];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_1EF56D550;
  }

  v7 = v6;

  v8 = [(TIAttributedDocumentState *)self selectedText];
  v9 = [v8 string];
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

  v13 = [(TIAttributedDocumentState *)self contextAfterInput];
  v14 = [v13 string];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
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
  v3 = [(TIAttributedDocumentState *)self contextBeforeInput];
  if ([v3 length])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(TIAttributedDocumentState *)self selectedText];
    if ([v5 length])
    {
      v4 = 0;
    }

    else
    {
      v6 = [(TIAttributedDocumentState *)self markedText];
      if ([v6 length])
      {
        v4 = 0;
      }

      else
      {
        v7 = [(TIAttributedDocumentState *)self contextAfterInput];
        v4 = [v7 length] == 0;
      }
    }
  }

  return v4;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p", objc_opt_class(), self];
  v4 = [(TIAttributedDocumentState *)self contextBeforeInput];
  v5 = __40__TIAttributedDocumentState_description__block_invoke(v4);
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

  v8 = [(TIAttributedDocumentState *)self markedText];

  if (v8)
  {
    v9 = [(TIAttributedDocumentState *)self markedText];
    v10 = [v9 _ti_attributedSubstringToIndex:{-[TIAttributedDocumentState selectedRangeInMarkedText](self, "selectedRangeInMarkedText")}];
    v11 = __40__TIAttributedDocumentState_description__block_invoke(v10);
    [v3 appendFormat:@"{%@", v11];
  }

  v12 = [(TIAttributedDocumentState *)self selectedText];

  if (v12)
  {
    if ([(TIAttributedDocumentState *)self truncatedRangeInSelectedText]== 0x7FFFFFFFFFFFFFFFLL || ([(TIAttributedDocumentState *)self truncatedRangeInSelectedText], !v13))
    {
      v14 = [(TIAttributedDocumentState *)self selectedText];
      v15 = __40__TIAttributedDocumentState_description__block_invoke(v14);
      [v3 appendFormat:@"[%@]", v15];
    }

    else
    {
      v14 = [(TIAttributedDocumentState *)self selectedText];
      v15 = [v14 _ti_attributedSubstringToIndex:{-[TIAttributedDocumentState truncatedRangeInSelectedText](self, "truncatedRangeInSelectedText")}];
      v16 = __40__TIAttributedDocumentState_description__block_invoke(v15);
      [(TIAttributedDocumentState *)self truncatedRangeInSelectedText];
      v18 = v17;
      v19 = [(TIAttributedDocumentState *)self selectedText];
      v20 = [v19 _ti_attributedSubstringFromIndex:{-[TIAttributedDocumentState truncatedRangeInSelectedText](self, "truncatedRangeInSelectedText")}];
      v21 = __40__TIAttributedDocumentState_description__block_invoke(v20);
      [v3 appendFormat:@"[%@{...%lu...}%@]", v16, v18, v21];
    }
  }

  else
  {
    [v3 appendString:@"|"];
  }

  v22 = [(TIAttributedDocumentState *)self markedText];

  if (v22)
  {
    v23 = [(TIAttributedDocumentState *)self markedText];
    v24 = [(TIAttributedDocumentState *)self selectedRangeInMarkedText];
    v26 = [v23 _ti_attributedSubstringFromIndex:v24 + v25];
    v27 = __40__TIAttributedDocumentState_description__block_invoke(v26);
    [v3 appendFormat:@"%@}", v27];
  }

  v28 = [(TIAttributedDocumentState *)self contextAfterInput];
  v29 = __40__TIAttributedDocumentState_description__block_invoke(v28);
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
  v3 = [(TIAttributedDocumentState *)self contextBeforeInput];
  v4 = [(TIAttributedDocumentState *)self hashString:v3 intoHashValue:0];

  v5 = [(TIAttributedDocumentState *)self markedText];
  v6 = [(TIAttributedDocumentState *)self hashString:v5 intoHashValue:v4];

  v7 = [(TIAttributedDocumentState *)self selectedText];
  v8 = [(TIAttributedDocumentState *)self hashString:v7 intoHashValue:v6];

  v9 = [(TIAttributedDocumentState *)self contextAfterInput];
  v10 = [(TIAttributedDocumentState *)self hashString:v9 intoHashValue:v8];

  v11 = 257 * ([(TIAttributedDocumentState *)self selectedRangeInMarkedText]+ 257 * v10);
  v12 = 257 * (v11 + [(TIAttributedDocumentState *)self truncatedRangeInSelectedText]);
  [(TIAttributedDocumentState *)self truncatedRangeInSelectedText];
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
      v6 = MEMORY[0x1E696AAB0];
      v7 = [(TIAttributedDocumentState *)self contextBeforeInput];
      v8 = [(TIAttributedDocumentState *)v5 contextBeforeInput];
      v9 = [v6 _ti_attributedString:v7 matchesAttributedStringIgnoringNullity:v8];

      if (v9)
      {
        v10 = MEMORY[0x1E696AAB0];
        v11 = [(TIAttributedDocumentState *)self selectedText];
        v12 = [(TIAttributedDocumentState *)v5 selectedText];
        v9 = [v10 _ti_attributedString:v11 matchesAttributedStringIgnoringNullity:v12];

        if (v9)
        {
          v13 = MEMORY[0x1E696AAB0];
          v14 = [(TIAttributedDocumentState *)self contextAfterInput];
          v15 = [(TIAttributedDocumentState *)v5 contextAfterInput];
          v9 = [v13 _ti_attributedString:v14 matchesAttributedStringIgnoringNullity:v15];

          if (v9)
          {
            v16 = MEMORY[0x1E696AAB0];
            v17 = [(TIAttributedDocumentState *)self markedText];
            v18 = [(TIAttributedDocumentState *)v5 markedText];
            v9 = [v16 _ti_attributedString:v17 matchesAttributedStringIgnoringNullity:v18];

            if (v9)
            {
              v19 = [(TIAttributedDocumentState *)self selectedRangeInMarkedText];
              v21 = v20;
              LOBYTE(v9) = 0;
              if (v19 == [(TIAttributedDocumentState *)v5 selectedRangeInMarkedText]&& v21 == v22)
              {
                v23 = [(TIAttributedDocumentState *)self truncatedRangeInSelectedText];
                v25 = v24;
                LOBYTE(v9) = v23 == [(TIAttributedDocumentState *)v5 truncatedRangeInSelectedText]&& v25 == v26;
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
  v4 = [(NSAttributedString *)self->_contextBeforeInput string];
  v5 = [(NSAttributedString *)self->_markedText string];
  v6 = [(NSAttributedString *)self->_selectedText string];
  v7 = [(NSAttributedString *)self->_contextAfterInput string];
  v8 = [(TIDocumentState *)v3 initWithUnboundedContextBefore:v4 markedText:v5 selectedText:v6 unboundedContextAfter:v7 selectedRangeInMarkedText:self->_selectedRangeInMarkedText.location truncatedRangeInSelectedText:self->_selectedRangeInMarkedText.length, self->_truncatedRangeInSelectedText.location, self->_truncatedRangeInSelectedText.length];

  return v8;
}

- (BOOL)isTextEqualIgnoringMarkedText:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v4 = a3;
  v5 = [(TIAttributedDocumentState *)self documentState];
  v6 = [v4 documentState];

  LOBYTE(v4) = [v5 isEqualIgnoringMarkedText:v6];
  return v4;
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
    v5 = MEMORY[0x1E696AAB0];
    v6 = [(TIAttributedDocumentState *)self contextBeforeInput];
    v7 = [(TIAttributedDocumentState *)v4 contextBeforeInput];
    LODWORD(v5) = [v5 _ti_attributedString:v6 matchesAttributedStringIgnoringNullity:v7];

    if (v5 && (v8 = MEMORY[0x1E696AAB0], -[TIAttributedDocumentState selectedText](self, "selectedText"), v9 = objc_claimAutoreleasedReturnValue(), -[TIAttributedDocumentState selectedText](v4, "selectedText"), v10 = objc_claimAutoreleasedReturnValue(), LODWORD(v8) = [v8 _ti_attributedString:v9 matchesAttributedStringIgnoringNullity:v10], v10, v9, v8))
    {
      v11 = MEMORY[0x1E696AAB0];
      v12 = [(TIAttributedDocumentState *)self contextAfterInput];
      v13 = [(TIAttributedDocumentState *)v4 contextAfterInput];
      v14 = [v11 _ti_attributedString:v12 matchesAttributedStringIgnoringNullity:v13];
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

- (TIAttributedDocumentState)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = TIAttributedDocumentState;
  v5 = [(TIAttributedDocumentState *)&v25 init];
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
      v19 = [(NSAttributedString *)v5->_selectedText length];
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

- (TIAttributedDocumentState)initWithUnboundedContextBefore:(id)a3 markedText:(id)a4 selectedText:(id)a5 unboundedContextAfter:(id)a6 selectedRangeInMarkedText:(_NSRange)a7 truncatedRangeInSelectedText:(_NSRange)a8
{
  result = [(TIAttributedDocumentState *)self initWithUnboundedContextBefore:a3 markedText:a4 selectedText:a5 unboundedContextAfter:a6 selectedRangeInMarkedText:a7.location, a7.length];
  result->_truncatedRangeInSelectedText = a8;
  return result;
}

- (TIAttributedDocumentState)initWithUnboundedContextBefore:(id)a3 markedText:(id)a4 selectedText:(id)a5 unboundedContextAfter:(id)a6 selectedRangeInMarkedText:(_NSRange)a7
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
    v17 = [TIAttributedDocumentState _selectedTextByDeletingInteriorSentences:v15 outTruncatedRange:&v29];

    v15 = v17;
  }

  v28.receiver = self;
  v28.super_class = TIAttributedDocumentState;
  v18 = [(TIAttributedDocumentState *)&v28 init];
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

- (TIAttributedDocumentState)initWithContextBefore:(id)a3 markedText:(id)a4 selectedText:(id)a5 contextAfter:(id)a6 selectedRangeInMarkedText:(_NSRange)a7
{
  length = a7.length;
  location = a7.location;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [a3 copy];
  if ([v16 length] >= 0x3E9)
  {
    v17 = +[TIAttributedDocumentState _attributedString:byTrimmingWordsBeforeIndex:](TIAttributedDocumentState, "_attributedString:byTrimmingWordsBeforeIndex:", v16, [v16 length] - 500);

    v16 = v17;
  }

  v18 = v15;
  v19 = [v18 length];
  *&v37 = v19;
  if (v19)
  {
    v20 = [v18 string];
    [v20 getLineStart:0 end:0 contentsEnd:&v37 forRange:{0, 0}];

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
  if ([v14 length] >= 0x41)
  {
    v25 = [TIAttributedDocumentState _selectedTextByDeletingInteriorSentences:v14 outTruncatedRange:&v37];

    v14 = v25;
  }

  v36.receiver = self;
  v36.super_class = TIAttributedDocumentState;
  v26 = [(TIAttributedDocumentState *)&v36 init];
  if (v26)
  {
    v27 = [v16 copy];
    v28 = *(v26 + 1);
    *(v26 + 1) = v27;

    v29 = [v13 copy];
    v30 = *(v26 + 2);
    *(v26 + 2) = v29;

    v31 = [v14 copy];
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

+ (id)_selectedTextByDeletingInteriorSentences:(id)a3 outTruncatedRange:(_NSRange *)a4
{
  v5 = a3;
  v6 = [TIDocumentState alloc];
  v7 = [v5 string];
  v8 = [(TIDocumentState *)v6 initWithContextBefore:0 markedText:0 selectedText:v7 contextAfter:0 selectedRangeInMarkedText:0x7FFFFFFFFFFFFFFFLL, 0];

  v9 = v5;
  v10 = [(TIDocumentState *)v8 truncatedRangeInSelectedText];
  v12 = v9;
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = v10;
    v14 = v11;
    v12 = [v9 mutableCopy];
    [v12 replaceCharactersInRange:v13 withString:{v14 + 2, @"  "}];
  }

  if (a4)
  {
    a4->location = [(TIDocumentState *)v8 truncatedRangeInSelectedText];
    a4->length = v15;
  }

  return v12;
}

+ (id)_attributedString:(id)a3 byTrimmingWordsAfterIndex:(unint64_t)a4
{
  v5 = [a3 copy];
  if ([v5 length] > a4)
  {
    v6 = [v5 string];
    v7 = [v6 _indexByTrimmingWordsAfterIndex:a4];

    v8 = [v5 _ti_attributedSubstringToIndex:v7];

    v5 = v8;
  }

  v9 = v5;

  return v5;
}

+ (id)_attributedString:(id)a3 byTrimmingWordsBeforeIndex:(unint64_t)a4
{
  v5 = [a3 copy];
  v6 = v5;
  if (a4)
  {
    v7 = [v5 string];
    v8 = [v7 _indexByTrimmingWordsBeforeIndex:a4];

    v9 = [v6 _ti_attributedSubstringFromIndex:v8];

    v6 = v9;
  }

  v10 = v6;

  return v6;
}

+ (id)attributedDocumentStateWithContextBefore:(id)a3 markedText:(id)a4 selectedRange:(_NSRange)a5 contextAfter:(id)a6
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
      v13 = [v10 attributedSubstringFromRange:{location, length}];
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

  v14 = [[TIAttributedDocumentState alloc] initWithContextBefore:v12 markedText:v10 selectedText:v13 contextAfter:v11 selectedRangeInMarkedText:location, length];

  return v14;
}

+ (id)attributedDocumentStateWithContextBefore:(id)a3 selectedText:(id)a4 contextAfter:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[TIAttributedDocumentState alloc] initWithContextBefore:v9 markedText:0 selectedText:v8 contextAfter:v7 selectedRangeInMarkedText:0x7FFFFFFFFFFFFFFFLL, 0];

  return v10;
}

+ (id)attributedDocumentStateWithDocumentState:(id)a3
{
  v3 = a3;
  v18 = [TIAttributedDocumentState alloc];
  v20 = [v3 contextBeforeInput];
  v17 = _tiAttributedStringForString(v20);
  v19 = [v3 markedText];
  v4 = _tiAttributedStringForString(v19);
  v5 = [v3 selectedText];
  v6 = _tiAttributedStringForString(v5);
  v7 = [v3 contextAfterInput];
  v8 = _tiAttributedStringForString(v7);
  v9 = [v3 selectedRangeInMarkedText];
  v11 = v10;
  v12 = [v3 truncatedRangeInSelectedText];
  v14 = v13;

  v15 = [(TIAttributedDocumentState *)v18 initWithUnboundedContextBefore:v17 markedText:v4 selectedText:v6 unboundedContextAfter:v8 selectedRangeInMarkedText:v9 truncatedRangeInSelectedText:v11, v12, v14];

  return v15;
}

- (TIAttributedDocumentState)initWithText:(id)a3 selectedRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v8 = v7;
  if (location)
  {
    v9 = [v7 _ti_attributedSubstringToIndex:location];
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

- (id)documentStateAfterCursorAdjustment:(int64_t)a3
{
  if (a3)
  {
    v4 = [(TIAttributedDocumentState *)self documentStateAfterCollapsingSelection];
    v5 = [v4 contextBeforeInput];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = _tiAttributedStringForString(&stru_1EF56D550);
    }

    v9 = v7;

    v10 = [v4 contextAfterInput];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = _tiAttributedStringForString(&stru_1EF56D550);
    }

    v13 = v12;

    if (a3 < 1)
    {
      v23 = [v9 string];
      v24 = [v23 _rangeOfCharacterClusterAtIndex:objc_msgSend(v9 withClusterOffset:{"length"), a3}];
      v26 = v25;

      v27 = [v9 attributedSubstringFromRange:{v24, v26}];
      v19 = [v27 _ti_attributedStringByAppendingAttributedString:v13];

      v20 = [v9 _ti_attributedSubstringToIndex:v24];
      v21 = v20;
      v22 = v19;
    }

    else
    {
      v14 = [v13 string];
      v15 = [v14 _rangeOfCharacterClusterAtIndex:0 withClusterOffset:a3];
      v17 = v16;

      v18 = [v13 attributedSubstringFromRange:{v15, v17}];
      v19 = [v9 _ti_attributedStringByAppendingAttributedString:v18];

      v20 = [v13 _ti_attributedSubstringFromIndex:v17];
      v21 = v19;
      v22 = v20;
    }

    v8 = [TIAttributedDocumentState attributedDocumentStateWithContextBefore:v21 selectedText:0 contextAfter:v22];
  }

  else
  {
    v8 = self;
  }

  return v8;
}

- (id)documentStateAfterReplacingText:(id)a3 withText:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TIAttributedDocumentState *)self contextBeforeInput];
  if (!v8)
  {
    v8 = _tiAttributedStringForString(&stru_1EF56D550);
  }

  v9 = [(TIAttributedDocumentState *)self selectedText];

  if (v9)
  {
    v10 = [(TIAttributedDocumentState *)self selectedText];
    v11 = [v8 _ti_attributedStringByAppendingAttributedString:v10];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = [(TIAttributedDocumentState *)self selectedText];
    }

    v14 = v13;

    v8 = v14;
  }

  v15 = [v6 length];
  if (v15)
  {
    v16 = v15;
    v17 = [v8 string];
    v18 = [v6 string];
    v19 = [v17 hasSuffix:v18];

    if (v19)
    {
      v20 = [v8 length] - v16;
      v21 = v7;
      if (!v7)
      {
        v21 = _tiAttributedStringForString(&stru_1EF56D550);
      }

      v22 = [v8 _ti_stringByReplacingCharactersInRange:v20 withString:{v16, v21}];

      v8 = v21;
      if (v7)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if (v7)
  {
    v22 = [v8 _ti_attributedStringByAppendingAttributedString:v7];
LABEL_16:

LABEL_17:
    v23 = [(TIAttributedDocumentState *)self contextAfterInput];
    v24 = [TIAttributedDocumentState attributedDocumentStateWithContextBefore:v22 selectedText:0 contextAfter:v23];

    v8 = v22;
    goto LABEL_19;
  }

  v24 = 0;
LABEL_19:

  return v24;
}

- (id)documentStateAfterCollapsingSelection
{
  v3 = [(TIAttributedDocumentState *)self selectedText];

  if (v3)
  {
    v4 = [(TIAttributedDocumentState *)self contextBeforeInput];
    v5 = [(TIAttributedDocumentState *)self selectedText];
    v6 = [v4 _ti_attributedStringByAppendingAttributedString:v5];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [(TIAttributedDocumentState *)self selectedText];
    }

    v10 = v8;

    v11 = [(TIAttributedDocumentState *)self contextAfterInput];
    v9 = [TIAttributedDocumentState attributedDocumentStateWithContextBefore:v10 selectedText:0 contextAfter:v11];
  }

  else
  {
    v9 = self;
  }

  return v9;
}

- (id)documentStateAfterUnmarkingText
{
  v3 = [(TIAttributedDocumentState *)self markedText];

  if (!v3)
  {
    v14 = self;
    goto LABEL_20;
  }

  v4 = [(TIAttributedDocumentState *)self contextBeforeInput];
  v5 = [(TIAttributedDocumentState *)self selectedRangeInMarkedText];
  v6 = [(TIAttributedDocumentState *)self markedText];
  v7 = [v6 length];

  if (v5 >= v7)
  {
    v9 = [(TIAttributedDocumentState *)self markedText];
    v15 = [v4 _ti_attributedStringByAppendingAttributedString:v9];
    if (!v15)
    {
      v16 = [(TIAttributedDocumentState *)self markedText];
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

  if ([(TIAttributedDocumentState *)self selectedRangeInMarkedText])
  {
    v8 = [(TIAttributedDocumentState *)self markedText];
    v9 = [v8 _ti_attributedSubstringToIndex:{-[TIAttributedDocumentState selectedRangeInMarkedText](self, "selectedRangeInMarkedText")}];

    v10 = [v4 _ti_attributedStringByAppendingAttributedString:v9];
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
  v17 = [(TIAttributedDocumentState *)self contextAfterInput];
  v18 = [(TIAttributedDocumentState *)self selectedRangeInMarkedText];
  v20 = v18 + v19;
  v21 = [(TIAttributedDocumentState *)self markedText];
  v22 = [v21 length];

  if (v20 < v22)
  {
    v23 = [(TIAttributedDocumentState *)self markedText];
    v24 = [v23 _ti_attributedSubstringFromIndex:v20];

    if (v17)
    {
      v25 = [v24 _ti_attributedStringByAppendingAttributedString:v17];

      v17 = v25;
    }

    else
    {
      v17 = v24;
    }
  }

  v26 = [(TIAttributedDocumentState *)self selectedText];
  v14 = [TIAttributedDocumentState attributedDocumentStateWithContextBefore:v4 selectedText:v26 contextAfter:v17];

LABEL_20:

  return v14;
}

- (id)documentStateAfterSettingMarkedText:(id)a3 selectedRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v8 = [(TIAttributedDocumentState *)self markedText];
  if (v8)
  {
  }

  else if (![v7 length])
  {
LABEL_8:
    v14 = self;
    goto LABEL_12;
  }

  v9 = [(TIAttributedDocumentState *)self markedText];
  if (![v9 length])
  {
    goto LABEL_10;
  }

  v10 = [(TIAttributedDocumentState *)self markedText];
  if (([v7 isEqualToAttributedString:v10] & 1) == 0)
  {

LABEL_10:
    goto LABEL_11;
  }

  v11 = [(TIAttributedDocumentState *)self selectedRangeInMarkedText];
  v13 = v12;

  if (location == v11 && length == v13)
  {
    goto LABEL_8;
  }

LABEL_11:
  v15 = [(TIAttributedDocumentState *)self contextBeforeInput];
  v16 = [(TIAttributedDocumentState *)self contextAfterInput];
  v14 = [TIAttributedDocumentState attributedDocumentStateWithContextBefore:v15 markedText:v7 selectedRange:location contextAfter:length, v16];

LABEL_12:

  return v14;
}

- (id)documentStateAfterDeletingForward
{
  v3 = [(TIAttributedDocumentState *)self markedText];

  if (v3)
  {
    v4 = [(TIAttributedDocumentState *)self documentStateAfterUnmarkingText];
    v5 = [v4 documentStateAfterDeletingForward];
LABEL_3:

    goto LABEL_4;
  }

  v7 = [(TIAttributedDocumentState *)self selectedText];
  if (v7 && (v8 = v7, -[TIAttributedDocumentState selectedText](self, "selectedText"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 length], v9, v8, v10))
  {
    v11 = [(TIAttributedDocumentState *)self contextBeforeInput];
    v12 = [(TIAttributedDocumentState *)self contextAfterInput];
    v5 = [TIAttributedDocumentState attributedDocumentStateWithContextBefore:v11 selectedText:0 contextAfter:v12];
  }

  else
  {
    v13 = [(TIAttributedDocumentState *)self contextAfterInput];
    v14 = [v13 length];

    if (v14)
    {
      v15 = [(TIAttributedDocumentState *)self contextAfterInput];
      v16 = [v15 length];

      v17 = [(TIAttributedDocumentState *)self contextAfterInput];
      v18 = [v17 string];
      v19 = [v18 rangeOfComposedCharacterSequenceAtIndex:0];
      v21 = v20;

      v4 = 0;
      if (v19 != 0x7FFFFFFFFFFFFFFFLL && v21 < v16)
      {
        v22 = [(TIAttributedDocumentState *)self contextAfterInput];
        v4 = [v22 _ti_attributedSubstringFromIndex:v21];
      }

      v23 = [(TIAttributedDocumentState *)self contextBeforeInput];
      v5 = [TIAttributedDocumentState attributedDocumentStateWithContextBefore:v23 selectedText:0 contextAfter:v4];

      goto LABEL_3;
    }

    v5 = self;
  }

LABEL_4:

  return v5;
}

- (id)documentStateAfterDeletingBackward
{
  v3 = [(TIAttributedDocumentState *)self markedText];

  if (v3)
  {
    v4 = [(TIAttributedDocumentState *)self documentStateAfterUnmarkingText];
    v5 = [v4 documentStateAfterDeletingBackward];
LABEL_3:

    goto LABEL_4;
  }

  v7 = [(TIAttributedDocumentState *)self selectedText];
  if (v7 && (v8 = v7, -[TIAttributedDocumentState selectedText](self, "selectedText"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 length], v9, v8, v10))
  {
    v11 = [(TIAttributedDocumentState *)self contextBeforeInput];
    v12 = [(TIAttributedDocumentState *)self contextAfterInput];
    v5 = [TIAttributedDocumentState attributedDocumentStateWithContextBefore:v11 selectedText:0 contextAfter:v12];
  }

  else
  {
    v13 = [(TIAttributedDocumentState *)self contextBeforeInput];
    v14 = [v13 length];

    if (v14)
    {
      v15 = [(TIAttributedDocumentState *)self contextBeforeInput];
      v16 = [v15 length];

      v17 = [(TIAttributedDocumentState *)self contextBeforeInput];
      v18 = [v17 string];
      v19 = [v18 _rangeOfBackwardDeletionClusterAtIndex:v16 - 1];
      v21 = v20;

      if (v21 >= v16)
      {
        v4 = 0;
      }

      else
      {
        v22 = [(TIAttributedDocumentState *)self contextBeforeInput];
        v4 = [v22 _ti_attributedSubstringToIndex:v19];
      }

      v23 = [(TIAttributedDocumentState *)self contextAfterInput];
      v5 = [TIAttributedDocumentState attributedDocumentStateWithContextBefore:v4 selectedText:0 contextAfter:v23];

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
  if ([v4 length])
  {
    v5 = [(TIAttributedDocumentState *)self contextAfterInput];
    if (v5)
    {
      v6 = v5;
      v7 = [v4 _ti_attributedStringByAppendingAttributedString:v5];
    }

    else
    {
      v7 = v4;
    }

    v9 = [(TIAttributedDocumentState *)self contextBeforeInput];
    v8 = [TIAttributedDocumentState attributedDocumentStateWithContextBefore:v9 selectedText:0 contextAfter:v7];
  }

  else
  {
    v8 = self;
  }

  return v8;
}

- (id)documentStateAfterInsertingText:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(TIAttributedDocumentState *)self contextBeforeInput];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 _ti_attributedStringByAppendingAttributedString:v4];
    }

    else
    {
      v7 = v4;
    }

    v9 = [(TIAttributedDocumentState *)self contextAfterInput];
    v8 = [TIAttributedDocumentState attributedDocumentStateWithContextBefore:v7 selectedText:0 contextAfter:v9];
  }

  else
  {
    v8 = self;
  }

  return v8;
}

- (TIAttributedDocumentState)documentStateWithAttributeIterator:(id)a3
{
  v4 = a3;
  v19 = [TIAttributedDocumentState alloc];
  v20 = [(TIAttributedDocumentState *)self contextBeforeInput];
  v5 = [v20 _ti_attributedStringWithIterator:v4];
  v6 = [(TIAttributedDocumentState *)self markedText];
  v7 = [v6 _ti_attributedStringWithIterator:v4];
  v8 = [(TIAttributedDocumentState *)self selectedText];
  v9 = [v8 _ti_attributedStringWithIterator:v4];
  v10 = [(TIAttributedDocumentState *)self contextAfterInput];
  v11 = [v10 _ti_attributedStringWithIterator:v4];

  v12 = [(TIAttributedDocumentState *)self selectedRangeInMarkedText];
  v14 = v13;
  v15 = [(TIAttributedDocumentState *)self truncatedRangeInSelectedText];
  v17 = [(TIAttributedDocumentState *)v19 initWithUnboundedContextBefore:v5 markedText:v7 selectedText:v9 unboundedContextAfter:v11 selectedRangeInMarkedText:v12 truncatedRangeInSelectedText:v14, v15, v16];

  return v17;
}

+ (id)unboundedAttributedDocumentStateForTestingWithPlainContextBefore:(id)a3 selectedText:(id)a4 contextAfter:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = _tiAttributedStringForString(a3);
  v11 = _tiAttributedStringForString(v9);

  v12 = _tiAttributedStringForString(v8);

  v13 = [a1 unboundedAttributedDocumentStateForTestingWithContextBefore:v10 selectedText:v11 contextAfter:v12];

  return v13;
}

+ (id)attributedDocumentStateForTestingWithPlainContextBefore:(id)a3 selectedText:(id)a4 contextAfter:(id)a5 markedText:(id)a6 selectedRangeInMarkedText:(_NSRange)a7
{
  length = a7.length;
  location = a7.location;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = _tiAttributedStringForString(a3);
  v17 = _tiAttributedStringForString(v15);

  v18 = _tiAttributedStringForString(v14);

  v19 = _tiAttributedStringForString(v13);

  v20 = [a1 attributedDocumentStateForTestingWithContextBefore:v16 selectedText:v17 contextAfter:v18 markedText:v19 selectedRangeInMarkedText:{location, length}];

  return v20;
}

+ (id)attributedDocumentStateForTestingWithPlainContextBefore:(id)a3 selectedText:(id)a4 contextAfter:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = _tiAttributedStringForString(a3);
  v11 = _tiAttributedStringForString(v9);

  v12 = _tiAttributedStringForString(v8);

  v13 = [a1 attributedDocumentStateForTestingWithContextBefore:v10 selectedText:v11 contextAfter:v12];

  return v13;
}

+ (id)attributedDocumentStateForTestingWithPlainText:(id)a3 selectedRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = _tiAttributedStringForString(a3);
  v8 = [a1 attributedDocumentStateForTestingWithText:v7 selectedRange:{location, length}];

  return v8;
}

+ (id)unboundedAttributedDocumentStateForTestingWithContextBefore:(id)a3 selectedText:(id)a4 contextAfter:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithUnboundedContextBefore:v10 markedText:0 selectedText:v9 unboundedContextAfter:v8 selectedRangeInMarkedText:{0x7FFFFFFFFFFFFFFFLL, 0}];

  return v11;
}

+ (id)attributedDocumentStateForTestingWithContextBefore:(id)a3 selectedText:(id)a4 contextAfter:(id)a5 markedText:(id)a6 selectedRangeInMarkedText:(_NSRange)a7
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

+ (id)attributedDocumentStateForTestingWithContextBefore:(id)a3 selectedText:(id)a4 contextAfter:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithContextBefore:v10 markedText:0 selectedText:v9 contextAfter:v8 selectedRangeInMarkedText:{0x7FFFFFFFFFFFFFFFLL, 0}];

  return v11;
}

+ (id)attributedDocumentStateForTestingWithText:(id)a3 selectedRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v8 = [[a1 alloc] initWithText:v7 selectedRange:{location, length}];

  return v8;
}

@end