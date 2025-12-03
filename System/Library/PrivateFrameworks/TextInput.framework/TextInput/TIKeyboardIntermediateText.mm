@interface TIKeyboardIntermediateText
+ (TIKeyboardIntermediateText)intermediateTextWithInputString:(id)string displayString:(id)displayString;
+ (TIKeyboardIntermediateText)intermediateTextWithInputString:(id)string displayString:(id)displayString lastInputString:(id)inputString;
+ (TIKeyboardIntermediateText)intermediateTextWithInputString:(id)string displayString:(id)displayString selectionLocation:(unint64_t)location lastInputString:(id)inputString;
+ (TIKeyboardIntermediateText)intermediateTextWithInputString:(id)string displayString:(id)displayString selectionLocation:(unint64_t)location searchString:(id)searchString candidateOffset:(int64_t)offset liveConversionSegments:(id)segments highlightSegmentIndex:(int64_t)index lastInputString:(id)self0;
+ (TIKeyboardIntermediateText)intermediateTextWithInputString:(id)string displayString:(id)displayString selectionLocation:(unint64_t)location searchString:(id)searchString lastInputString:(id)inputString;
- (BOOL)isEqual:(id)equal;
- (TIKeyboardIntermediateText)initWithCoder:(id)coder;
- (TIKeyboardIntermediateText)initWithInputString:(id)string displayString:(id)displayString selectionLocation:(unint64_t)location searchString:(id)searchString candidateOffset:(unint64_t)offset liveConversionSegments:(id)segments highlightSegmentIndex:(int64_t)index lastInputString:(id)self0;
- (_NSRange)selectedRange;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TIKeyboardIntermediateText

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  displayString = [(TIKeyboardIntermediateText *)self displayString];
  inputString = [(TIKeyboardIntermediateText *)self inputString];
  lastInputString = [(TIKeyboardIntermediateText *)self lastInputString];
  v8 = [v3 stringWithFormat:@"<%@: %p %@ (%@) %@>", v4, self, displayString, inputString, lastInputString];;

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
  inputString = [(TIKeyboardIntermediateText *)self inputString];
  v4 = [inputString hash];

  lastInputString = [(TIKeyboardIntermediateText *)self lastInputString];
  v6 = [lastInputString hash] + 257 * v4;

  displayString = [(TIKeyboardIntermediateText *)self displayString];
  v8 = [displayString hash] + 257 * v6;

  searchString = [(TIKeyboardIntermediateText *)self searchString];
  v10 = [searchString hash] + 257 * v8;

  v11 = 257 * ([(TIKeyboardIntermediateText *)self selectedRange]+ 257 * v10);
  v12 = 257 * (v11 + [(TIKeyboardIntermediateText *)self candidateOffset]);
  liveConversionSegments = [(TIKeyboardIntermediateText *)self liveConversionSegments];
  v14 = v12 + [liveConversionSegments hash];

  return 257 * v14 + [(TIKeyboardIntermediateText *)self highlightSegmentIndex];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    inputString = [(TIKeyboardIntermediateText *)self inputString];
    inputString2 = [v5 inputString];
    v8 = inputString2;
    if (inputString == inputString2)
    {
    }

    else
    {
      inputString3 = [(TIKeyboardIntermediateText *)self inputString];
      inputString4 = [v5 inputString];
      v11 = [inputString3 isEqualToString:inputString4];

      if (!v11)
      {
        goto LABEL_24;
      }
    }

    lastInputString = [(TIKeyboardIntermediateText *)self lastInputString];
    lastInputString2 = [v5 lastInputString];
    v15 = lastInputString2;
    if (lastInputString == lastInputString2)
    {
    }

    else
    {
      lastInputString3 = [(TIKeyboardIntermediateText *)self lastInputString];
      lastInputString4 = [v5 lastInputString];
      v18 = [lastInputString3 isEqualToString:lastInputString4];

      if (!v18)
      {
        goto LABEL_24;
      }
    }

    displayString = [(TIKeyboardIntermediateText *)self displayString];
    displayString2 = [v5 displayString];
    v21 = displayString2;
    if (displayString == displayString2)
    {
    }

    else
    {
      displayString3 = [(TIKeyboardIntermediateText *)self displayString];
      displayString4 = [v5 displayString];
      v24 = [displayString3 isEqualToString:displayString4];

      if (!v24)
      {
        goto LABEL_24;
      }
    }

    searchString = [(TIKeyboardIntermediateText *)self searchString];
    searchString2 = [v5 searchString];
    v27 = searchString2;
    if (searchString == searchString2)
    {
    }

    else
    {
      searchString3 = [(TIKeyboardIntermediateText *)self searchString];
      searchString4 = [v5 searchString];
      v30 = [searchString3 isEqualToString:searchString4];

      if (!v30)
      {
        goto LABEL_24;
      }
    }

    selectedRange = [(TIKeyboardIntermediateText *)self selectedRange];
    v33 = v32;
    v12 = 0;
    if (selectedRange != [v5 selectedRange] || v33 != v34)
    {
      goto LABEL_25;
    }

    candidateOffset = [(TIKeyboardIntermediateText *)self candidateOffset];
    if (candidateOffset != [v5 candidateOffset])
    {
      goto LABEL_24;
    }

    liveConversionSegments = [(TIKeyboardIntermediateText *)self liveConversionSegments];
    liveConversionSegments2 = [v5 liveConversionSegments];
    v38 = liveConversionSegments2;
    if (liveConversionSegments == liveConversionSegments2)
    {
    }

    else
    {
      liveConversionSegments3 = [(TIKeyboardIntermediateText *)self liveConversionSegments];
      liveConversionSegments4 = [v5 liveConversionSegments];
      v41 = [liveConversionSegments3 isEqual:liveConversionSegments4];

      if (!v41)
      {
LABEL_24:
        v12 = 0;
LABEL_25:

        goto LABEL_26;
      }
    }

    highlightSegmentIndex = [(TIKeyboardIntermediateText *)self highlightSegmentIndex];
    v12 = highlightSegmentIndex == [v5 highlightSegmentIndex];
    goto LABEL_25;
  }

  v12 = 0;
LABEL_26:

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  inputString = self->_inputString;
  v13 = coderCopy;
  if (inputString)
  {
    [coderCopy encodeObject:inputString forKey:@"inputString"];
    coderCopy = v13;
  }

  lastInputString = self->_lastInputString;
  if (lastInputString)
  {
    [v13 encodeObject:lastInputString forKey:@"lastInputString"];
    coderCopy = v13;
  }

  displayString = self->_displayString;
  if (displayString)
  {
    [v13 encodeObject:displayString forKey:@"displayString"];
    coderCopy = v13;
  }

  selectionOffset = self->_selectionOffset;
  if (selectionOffset)
  {
    [v13 encodeInteger:selectionOffset forKey:@"selectionOffset"];
    coderCopy = v13;
  }

  searchString = self->_searchString;
  if (searchString)
  {
    [v13 encodeObject:searchString forKey:@"searchString"];
    coderCopy = v13;
  }

  candidateOffset = self->_candidateOffset;
  if (candidateOffset)
  {
    [v13 encodeInteger:candidateOffset forKey:@"candidateOffset"];
    coderCopy = v13;
  }

  liveConversionSegments = self->_liveConversionSegments;
  if (liveConversionSegments)
  {
    [v13 encodeObject:liveConversionSegments forKey:@"liveConversionSegments"];
    coderCopy = v13;
  }

  highlightSegmentIndex = self->_highlightSegmentIndex;
  if (highlightSegmentIndex)
  {
    [v13 encodeInteger:highlightSegmentIndex forKey:@"highlightSegmentIndex"];
    coderCopy = v13;
  }
}

- (TIKeyboardIntermediateText)initWithCoder:(id)coder
{
  v26[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = TIKeyboardIntermediateText;
  v5 = [(TIKeyboardIntermediateText *)&v25 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inputString"];
    v7 = [v6 copy];
    inputString = v5->_inputString;
    v5->_inputString = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastInputString"];
    v10 = [v9 copy];
    lastInputString = v5->_lastInputString;
    v5->_lastInputString = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayString"];
    v13 = [v12 copy];
    displayString = v5->_displayString;
    v5->_displayString = v13;

    v5->_selectionOffset = [coderCopy decodeIntegerForKey:@"selectionOffset"];
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"searchString"];
    v16 = [v15 copy];
    searchString = v5->_searchString;
    v5->_searchString = v16;

    v5->_candidateOffset = [coderCopy decodeIntegerForKey:@"candidateOffset"];
    v18 = MEMORY[0x1E695DFD8];
    v26[0] = objc_opt_class();
    v26[1] = objc_opt_class();
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
    v20 = [v18 setWithArray:v19];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"liveConversionSegments"];
    v22 = [v21 copy];
    liveConversionSegments = v5->_liveConversionSegments;
    v5->_liveConversionSegments = v22;

    v5->_highlightSegmentIndex = [coderCopy decodeIntegerForKey:@"highlightSegmentIndex"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v5)
  {
    v6 = [(NSString *)self->_inputString copyWithZone:zone];
    v7 = v5[2];
    v5[2] = v6;

    v8 = [(NSString *)self->_lastInputString copyWithZone:zone];
    v9 = v5[3];
    v5[3] = v8;

    v10 = [(NSString *)self->_displayString copyWithZone:zone];
    v11 = v5[4];
    v5[4] = v10;

    v5[1] = self->_selectionOffset;
    v12 = [(NSString *)self->_searchString copyWithZone:zone];
    v13 = v5[8];
    v5[8] = v12;

    v5[5] = self->_candidateOffset;
    v14 = [(NSArray *)self->_liveConversionSegments copyWithZone:zone];
    v15 = v5[6];
    v5[6] = v14;

    v5[7] = self->_highlightSegmentIndex;
  }

  return v5;
}

- (TIKeyboardIntermediateText)initWithInputString:(id)string displayString:(id)displayString selectionLocation:(unint64_t)location searchString:(id)searchString candidateOffset:(unint64_t)offset liveConversionSegments:(id)segments highlightSegmentIndex:(int64_t)index lastInputString:(id)self0
{
  stringCopy = string;
  displayStringCopy = displayString;
  searchStringCopy = searchString;
  segmentsCopy = segments;
  inputStringCopy = inputString;
  v35.receiver = self;
  v35.super_class = TIKeyboardIntermediateText;
  v21 = [(TIKeyboardIntermediateText *)&v35 init];
  if (v21)
  {
    v22 = [stringCopy copy];
    inputString = v21->_inputString;
    v21->_inputString = v22;

    v24 = [inputStringCopy copy];
    lastInputString = v21->_lastInputString;
    v21->_lastInputString = v24;

    v26 = [displayStringCopy copy];
    displayString = v21->_displayString;
    v21->_displayString = v26;

    v28 = [(NSString *)v21->_displayString length];
    v29 = v28 - location;
    if (v28 < location)
    {
      v29 = 0;
    }

    v21->_selectionOffset = v29;
    v30 = [searchStringCopy copy];
    searchString = v21->_searchString;
    v21->_searchString = v30;

    v21->_candidateOffset = offset;
    v32 = [segmentsCopy copy];
    liveConversionSegments = v21->_liveConversionSegments;
    v21->_liveConversionSegments = v32;

    v21->_highlightSegmentIndex = index;
  }

  return v21;
}

+ (TIKeyboardIntermediateText)intermediateTextWithInputString:(id)string displayString:(id)displayString selectionLocation:(unint64_t)location searchString:(id)searchString candidateOffset:(int64_t)offset liveConversionSegments:(id)segments highlightSegmentIndex:(int64_t)index lastInputString:(id)self0
{
  inputStringCopy = inputString;
  segmentsCopy = segments;
  searchStringCopy = searchString;
  displayStringCopy = displayString;
  stringCopy = string;
  v21 = [objc_alloc(objc_opt_class()) initWithInputString:stringCopy displayString:displayStringCopy selectionLocation:location searchString:searchStringCopy candidateOffset:offset liveConversionSegments:segmentsCopy highlightSegmentIndex:index lastInputString:inputStringCopy];

  return v21;
}

+ (TIKeyboardIntermediateText)intermediateTextWithInputString:(id)string displayString:(id)displayString selectionLocation:(unint64_t)location searchString:(id)searchString lastInputString:(id)inputString
{
  inputStringCopy = inputString;
  searchStringCopy = searchString;
  displayStringCopy = displayString;
  stringCopy = string;
  v15 = [objc_alloc(objc_opt_class()) initWithInputString:stringCopy displayString:displayStringCopy selectionLocation:location searchString:searchStringCopy candidateOffset:0x7FFFFFFFFFFFFFFFLL liveConversionSegments:0 highlightSegmentIndex:0x7FFFFFFFFFFFFFFFLL lastInputString:inputStringCopy];

  return v15;
}

+ (TIKeyboardIntermediateText)intermediateTextWithInputString:(id)string displayString:(id)displayString selectionLocation:(unint64_t)location lastInputString:(id)inputString
{
  inputStringCopy = inputString;
  displayStringCopy = displayString;
  stringCopy = string;
  v12 = [objc_alloc(objc_opt_class()) initWithInputString:stringCopy displayString:displayStringCopy selectionLocation:location searchString:0 candidateOffset:0x7FFFFFFFFFFFFFFFLL liveConversionSegments:0 highlightSegmentIndex:0x7FFFFFFFFFFFFFFFLL lastInputString:inputStringCopy];

  return v12;
}

+ (TIKeyboardIntermediateText)intermediateTextWithInputString:(id)string displayString:(id)displayString lastInputString:(id)inputString
{
  inputStringCopy = inputString;
  displayStringCopy = displayString;
  stringCopy = string;
  v10 = [objc_alloc(objc_opt_class()) initWithInputString:stringCopy displayString:displayStringCopy selectionLocation:0x7FFFFFFFFFFFFFFFLL searchString:0 candidateOffset:0x7FFFFFFFFFFFFFFFLL liveConversionSegments:0 highlightSegmentIndex:0x7FFFFFFFFFFFFFFFLL lastInputString:inputStringCopy];

  return v10;
}

+ (TIKeyboardIntermediateText)intermediateTextWithInputString:(id)string displayString:(id)displayString
{
  displayStringCopy = displayString;
  stringCopy = string;
  v7 = [objc_alloc(objc_opt_class()) initWithInputString:stringCopy displayString:displayStringCopy selectionLocation:0x7FFFFFFFFFFFFFFFLL searchString:0 candidateOffset:0x7FFFFFFFFFFFFFFFLL liveConversionSegments:0 highlightSegmentIndex:0x7FFFFFFFFFFFFFFFLL lastInputString:0];

  return v7;
}

@end