@interface TIKeyboardIntermediateText
+ (TIKeyboardIntermediateText)intermediateTextWithInputString:(id)a3 displayString:(id)a4;
+ (TIKeyboardIntermediateText)intermediateTextWithInputString:(id)a3 displayString:(id)a4 lastInputString:(id)a5;
+ (TIKeyboardIntermediateText)intermediateTextWithInputString:(id)a3 displayString:(id)a4 selectionLocation:(unint64_t)a5 lastInputString:(id)a6;
+ (TIKeyboardIntermediateText)intermediateTextWithInputString:(id)a3 displayString:(id)a4 selectionLocation:(unint64_t)a5 searchString:(id)a6 candidateOffset:(int64_t)a7 liveConversionSegments:(id)a8 highlightSegmentIndex:(int64_t)a9 lastInputString:(id)a10;
+ (TIKeyboardIntermediateText)intermediateTextWithInputString:(id)a3 displayString:(id)a4 selectionLocation:(unint64_t)a5 searchString:(id)a6 lastInputString:(id)a7;
- (BOOL)isEqual:(id)a3;
- (TIKeyboardIntermediateText)initWithCoder:(id)a3;
- (TIKeyboardIntermediateText)initWithInputString:(id)a3 displayString:(id)a4 selectionLocation:(unint64_t)a5 searchString:(id)a6 candidateOffset:(unint64_t)a7 liveConversionSegments:(id)a8 highlightSegmentIndex:(int64_t)a9 lastInputString:(id)a10;
- (_NSRange)selectedRange;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TIKeyboardIntermediateText

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(TIKeyboardIntermediateText *)self displayString];
  v6 = [(TIKeyboardIntermediateText *)self inputString];
  v7 = [(TIKeyboardIntermediateText *)self lastInputString];
  v8 = [v3 stringWithFormat:@"<%@: %p %@ (%@) %@>", v4, self, v5, v6, v7];;

  return v8;
}

- (_NSRange)selectedRange
{
  v2 = [(NSString *)self->_displayString length]- self->_selectionOffset;
  v3 = 0;
  result.length = v3;
  result.location = v2;
  return result;
}

- (unint64_t)hash
{
  v3 = [(TIKeyboardIntermediateText *)self inputString];
  v4 = [v3 hash];

  v5 = [(TIKeyboardIntermediateText *)self lastInputString];
  v6 = [v5 hash] + 257 * v4;

  v7 = [(TIKeyboardIntermediateText *)self displayString];
  v8 = [v7 hash] + 257 * v6;

  v9 = [(TIKeyboardIntermediateText *)self searchString];
  v10 = [v9 hash] + 257 * v8;

  v11 = 257 * ([(TIKeyboardIntermediateText *)self selectedRange]+ 257 * v10);
  v12 = 257 * (v11 + [(TIKeyboardIntermediateText *)self candidateOffset]);
  v13 = [(TIKeyboardIntermediateText *)self liveConversionSegments];
  v14 = v12 + [v13 hash];

  return 257 * v14 + [(TIKeyboardIntermediateText *)self highlightSegmentIndex];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(TIKeyboardIntermediateText *)self inputString];
    v7 = [v5 inputString];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(TIKeyboardIntermediateText *)self inputString];
      v10 = [v5 inputString];
      v11 = [v9 isEqualToString:v10];

      if (!v11)
      {
        goto LABEL_24;
      }
    }

    v13 = [(TIKeyboardIntermediateText *)self lastInputString];
    v14 = [v5 lastInputString];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(TIKeyboardIntermediateText *)self lastInputString];
      v17 = [v5 lastInputString];
      v18 = [v16 isEqualToString:v17];

      if (!v18)
      {
        goto LABEL_24;
      }
    }

    v19 = [(TIKeyboardIntermediateText *)self displayString];
    v20 = [v5 displayString];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(TIKeyboardIntermediateText *)self displayString];
      v23 = [v5 displayString];
      v24 = [v22 isEqualToString:v23];

      if (!v24)
      {
        goto LABEL_24;
      }
    }

    v25 = [(TIKeyboardIntermediateText *)self searchString];
    v26 = [v5 searchString];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(TIKeyboardIntermediateText *)self searchString];
      v29 = [v5 searchString];
      v30 = [v28 isEqualToString:v29];

      if (!v30)
      {
        goto LABEL_24;
      }
    }

    v31 = [(TIKeyboardIntermediateText *)self selectedRange];
    v33 = v32;
    v12 = 0;
    if (v31 != [v5 selectedRange] || v33 != v34)
    {
      goto LABEL_25;
    }

    v35 = [(TIKeyboardIntermediateText *)self candidateOffset];
    if (v35 != [v5 candidateOffset])
    {
      goto LABEL_24;
    }

    v36 = [(TIKeyboardIntermediateText *)self liveConversionSegments];
    v37 = [v5 liveConversionSegments];
    v38 = v37;
    if (v36 == v37)
    {
    }

    else
    {
      v39 = [(TIKeyboardIntermediateText *)self liveConversionSegments];
      v40 = [v5 liveConversionSegments];
      v41 = [v39 isEqual:v40];

      if (!v41)
      {
LABEL_24:
        v12 = 0;
LABEL_25:

        goto LABEL_26;
      }
    }

    v43 = [(TIKeyboardIntermediateText *)self highlightSegmentIndex];
    v12 = v43 == [v5 highlightSegmentIndex];
    goto LABEL_25;
  }

  v12 = 0;
LABEL_26:

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  inputString = self->_inputString;
  v13 = v4;
  if (inputString)
  {
    [v4 encodeObject:inputString forKey:@"inputString"];
    v4 = v13;
  }

  lastInputString = self->_lastInputString;
  if (lastInputString)
  {
    [v13 encodeObject:lastInputString forKey:@"lastInputString"];
    v4 = v13;
  }

  displayString = self->_displayString;
  if (displayString)
  {
    [v13 encodeObject:displayString forKey:@"displayString"];
    v4 = v13;
  }

  selectionOffset = self->_selectionOffset;
  if (selectionOffset)
  {
    [v13 encodeInteger:selectionOffset forKey:@"selectionOffset"];
    v4 = v13;
  }

  searchString = self->_searchString;
  if (searchString)
  {
    [v13 encodeObject:searchString forKey:@"searchString"];
    v4 = v13;
  }

  candidateOffset = self->_candidateOffset;
  if (candidateOffset)
  {
    [v13 encodeInteger:candidateOffset forKey:@"candidateOffset"];
    v4 = v13;
  }

  liveConversionSegments = self->_liveConversionSegments;
  if (liveConversionSegments)
  {
    [v13 encodeObject:liveConversionSegments forKey:@"liveConversionSegments"];
    v4 = v13;
  }

  highlightSegmentIndex = self->_highlightSegmentIndex;
  if (highlightSegmentIndex)
  {
    [v13 encodeInteger:highlightSegmentIndex forKey:@"highlightSegmentIndex"];
    v4 = v13;
  }
}

- (TIKeyboardIntermediateText)initWithCoder:(id)a3
{
  v26[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = TIKeyboardIntermediateText;
  v5 = [(TIKeyboardIntermediateText *)&v25 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inputString"];
    v7 = [v6 copy];
    inputString = v5->_inputString;
    v5->_inputString = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastInputString"];
    v10 = [v9 copy];
    lastInputString = v5->_lastInputString;
    v5->_lastInputString = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayString"];
    v13 = [v12 copy];
    displayString = v5->_displayString;
    v5->_displayString = v13;

    v5->_selectionOffset = [v4 decodeIntegerForKey:@"selectionOffset"];
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"searchString"];
    v16 = [v15 copy];
    searchString = v5->_searchString;
    v5->_searchString = v16;

    v5->_candidateOffset = [v4 decodeIntegerForKey:@"candidateOffset"];
    v18 = MEMORY[0x1E695DFD8];
    v26[0] = objc_opt_class();
    v26[1] = objc_opt_class();
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
    v20 = [v18 setWithArray:v19];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"liveConversionSegments"];
    v22 = [v21 copy];
    liveConversionSegments = v5->_liveConversionSegments;
    v5->_liveConversionSegments = v22;

    v5->_highlightSegmentIndex = [v4 decodeIntegerForKey:@"highlightSegmentIndex"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v5)
  {
    v6 = [(NSString *)self->_inputString copyWithZone:a3];
    v7 = v5[2];
    v5[2] = v6;

    v8 = [(NSString *)self->_lastInputString copyWithZone:a3];
    v9 = v5[3];
    v5[3] = v8;

    v10 = [(NSString *)self->_displayString copyWithZone:a3];
    v11 = v5[4];
    v5[4] = v10;

    v5[1] = self->_selectionOffset;
    v12 = [(NSString *)self->_searchString copyWithZone:a3];
    v13 = v5[8];
    v5[8] = v12;

    v5[5] = self->_candidateOffset;
    v14 = [(NSArray *)self->_liveConversionSegments copyWithZone:a3];
    v15 = v5[6];
    v5[6] = v14;

    v5[7] = self->_highlightSegmentIndex;
  }

  return v5;
}

- (TIKeyboardIntermediateText)initWithInputString:(id)a3 displayString:(id)a4 selectionLocation:(unint64_t)a5 searchString:(id)a6 candidateOffset:(unint64_t)a7 liveConversionSegments:(id)a8 highlightSegmentIndex:(int64_t)a9 lastInputString:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a6;
  v19 = a8;
  v20 = a10;
  v35.receiver = self;
  v35.super_class = TIKeyboardIntermediateText;
  v21 = [(TIKeyboardIntermediateText *)&v35 init];
  if (v21)
  {
    v22 = [v16 copy];
    inputString = v21->_inputString;
    v21->_inputString = v22;

    v24 = [v20 copy];
    lastInputString = v21->_lastInputString;
    v21->_lastInputString = v24;

    v26 = [v17 copy];
    displayString = v21->_displayString;
    v21->_displayString = v26;

    v28 = [(NSString *)v21->_displayString length];
    v29 = v28 - a5;
    if (v28 < a5)
    {
      v29 = 0;
    }

    v21->_selectionOffset = v29;
    v30 = [v18 copy];
    searchString = v21->_searchString;
    v21->_searchString = v30;

    v21->_candidateOffset = a7;
    v32 = [v19 copy];
    liveConversionSegments = v21->_liveConversionSegments;
    v21->_liveConversionSegments = v32;

    v21->_highlightSegmentIndex = a9;
  }

  return v21;
}

+ (TIKeyboardIntermediateText)intermediateTextWithInputString:(id)a3 displayString:(id)a4 selectionLocation:(unint64_t)a5 searchString:(id)a6 candidateOffset:(int64_t)a7 liveConversionSegments:(id)a8 highlightSegmentIndex:(int64_t)a9 lastInputString:(id)a10
{
  v16 = a10;
  v17 = a8;
  v18 = a6;
  v19 = a4;
  v20 = a3;
  v21 = [objc_alloc(objc_opt_class()) initWithInputString:v20 displayString:v19 selectionLocation:a5 searchString:v18 candidateOffset:a7 liveConversionSegments:v17 highlightSegmentIndex:a9 lastInputString:v16];

  return v21;
}

+ (TIKeyboardIntermediateText)intermediateTextWithInputString:(id)a3 displayString:(id)a4 selectionLocation:(unint64_t)a5 searchString:(id)a6 lastInputString:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = [objc_alloc(objc_opt_class()) initWithInputString:v14 displayString:v13 selectionLocation:a5 searchString:v12 candidateOffset:0x7FFFFFFFFFFFFFFFLL liveConversionSegments:0 highlightSegmentIndex:0x7FFFFFFFFFFFFFFFLL lastInputString:v11];

  return v15;
}

+ (TIKeyboardIntermediateText)intermediateTextWithInputString:(id)a3 displayString:(id)a4 selectionLocation:(unint64_t)a5 lastInputString:(id)a6
{
  v9 = a6;
  v10 = a4;
  v11 = a3;
  v12 = [objc_alloc(objc_opt_class()) initWithInputString:v11 displayString:v10 selectionLocation:a5 searchString:0 candidateOffset:0x7FFFFFFFFFFFFFFFLL liveConversionSegments:0 highlightSegmentIndex:0x7FFFFFFFFFFFFFFFLL lastInputString:v9];

  return v12;
}

+ (TIKeyboardIntermediateText)intermediateTextWithInputString:(id)a3 displayString:(id)a4 lastInputString:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [objc_alloc(objc_opt_class()) initWithInputString:v9 displayString:v8 selectionLocation:0x7FFFFFFFFFFFFFFFLL searchString:0 candidateOffset:0x7FFFFFFFFFFFFFFFLL liveConversionSegments:0 highlightSegmentIndex:0x7FFFFFFFFFFFFFFFLL lastInputString:v7];

  return v10;
}

+ (TIKeyboardIntermediateText)intermediateTextWithInputString:(id)a3 displayString:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) initWithInputString:v6 displayString:v5 selectionLocation:0x7FFFFFFFFFFFFFFFLL searchString:0 candidateOffset:0x7FFFFFFFFFFFFFFFLL liveConversionSegments:0 highlightSegmentIndex:0x7FFFFFFFFFFFFFFFLL lastInputString:0];

  return v7;
}

@end