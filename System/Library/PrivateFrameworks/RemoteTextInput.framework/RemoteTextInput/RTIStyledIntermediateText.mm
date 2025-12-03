@interface RTIStyledIntermediateText
+ (id)_attributedStringAllowedClasses;
+ (id)intermediateTextWithInputString:(id)string displayString:(id)displayString;
+ (id)intermediateTextWithInputString:(id)string displayString:(id)displayString selectionLocation:(unint64_t)location;
+ (id)intermediateTextWithInputString:(id)string displayString:(id)displayString selectionLocation:(unint64_t)location searchString:(id)searchString;
- (BOOL)isEqual:(id)equal;
- (RTIStyledIntermediateText)initWithCoder:(id)coder;
- (RTIStyledIntermediateText)initWithInputString:(id)string displayString:(id)displayString selectionLocation:(unint64_t)location searchString:(id)searchString;
- (_NSRange)selectedRange;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTIStyledIntermediateText

+ (id)intermediateTextWithInputString:(id)string displayString:(id)displayString
{
  displayStringCopy = displayString;
  stringCopy = string;
  v7 = [objc_alloc(objc_opt_class()) initWithInputString:stringCopy displayString:displayStringCopy selectionLocation:0x7FFFFFFFFFFFFFFFLL searchString:0];

  return v7;
}

+ (id)intermediateTextWithInputString:(id)string displayString:(id)displayString selectionLocation:(unint64_t)location
{
  displayStringCopy = displayString;
  stringCopy = string;
  v9 = [objc_alloc(objc_opt_class()) initWithInputString:stringCopy displayString:displayStringCopy selectionLocation:location searchString:0];

  return v9;
}

+ (id)intermediateTextWithInputString:(id)string displayString:(id)displayString selectionLocation:(unint64_t)location searchString:(id)searchString
{
  searchStringCopy = searchString;
  displayStringCopy = displayString;
  stringCopy = string;
  v12 = [objc_alloc(objc_opt_class()) initWithInputString:stringCopy displayString:displayStringCopy selectionLocation:location searchString:searchStringCopy];

  return v12;
}

- (RTIStyledIntermediateText)initWithInputString:(id)string displayString:(id)displayString selectionLocation:(unint64_t)location searchString:(id)searchString
{
  v26[6] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  displayStringCopy = displayString;
  searchStringCopy = searchString;
  v25.receiver = self;
  v25.super_class = RTIStyledIntermediateText;
  v13 = [(RTIStyledIntermediateText *)&v25 init];
  if (v13)
  {
    v14 = [stringCopy copy];
    inputString = v13->_inputString;
    v13->_inputString = v14;

    v26[0] = @"NSUnderline";
    v26[1] = @"NSUnderlineColor";
    v26[2] = @"NSMarkedClauseSegment";
    v26[3] = @"NSColor";
    v26[4] = @"NSBackgroundColor";
    v26[5] = @"NSTextAnimation";
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:6];
    v17 = [RTIUtilities _codableAttributedString:displayStringCopy validAttributes:v16];
    displayString = v13->_displayString;
    v13->_displayString = v17;

    v19 = [(NSAttributedString *)v13->_displayString length];
    v20 = v19 - location;
    if (v19 < location)
    {
      v20 = 0;
    }

    v13->_selectionOffset = v20;
    v21 = [searchStringCopy copy];
    searchString = v13->_searchString;
    v13->_searchString = v21;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v5)
  {
    v6 = [(NSString *)self->_inputString copyWithZone:zone];
    v7 = v5[2];
    v5[2] = v6;

    v8 = [(NSAttributedString *)self->_displayString copyWithZone:zone];
    v9 = v5[3];
    v5[3] = v8;

    v5[1] = self->_selectionOffset;
    v10 = [(NSString *)self->_searchString copyWithZone:zone];
    v11 = v5[4];
    v5[4] = v10;

    v5[5] = self->_cursorVisibility;
  }

  return v5;
}

+ (id)_attributedStringAllowedClasses
{
  if (_attributedStringAllowedClasses_onceToken != -1)
  {
    +[RTIStyledIntermediateText _attributedStringAllowedClasses];
  }

  v3 = _attributedStringAllowedClasses_allowedClasses;

  return v3;
}

void __60__RTIStyledIntermediateText__attributedStringAllowedClasses__block_invoke()
{
  v5[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
  v2 = [v0 setWithArray:v1];
  v3 = _attributedStringAllowedClasses_allowedClasses;
  _attributedStringAllowedClasses_allowedClasses = v2;

  v4 = *MEMORY[0x1E69E9840];
}

- (RTIStyledIntermediateText)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The decoder must allow keyed coding."];
  }

  v17.receiver = self;
  v17.super_class = RTIStyledIntermediateText;
  v5 = [(RTIStyledIntermediateText *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inputString"];
    v7 = [v6 copy];
    inputString = v5->_inputString;
    v5->_inputString = v7;

    _attributedStringAllowedClasses = [objc_opt_class() _attributedStringAllowedClasses];
    v10 = [coderCopy decodeObjectOfClasses:_attributedStringAllowedClasses forKey:@"styledDisplayString"];
    v11 = [v10 copy];
    displayString = v5->_displayString;
    v5->_displayString = v11;

    v5->_selectionOffset = [coderCopy decodeIntegerForKey:@"selectionOffset"];
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"searchString"];
    v14 = [v13 copy];
    searchString = v5->_searchString;
    v5->_searchString = v14;

    if ([coderCopy containsValueForKey:@"cursorVisibility"])
    {
      v5->_cursorVisibility = [coderCopy decodeIntegerForKey:@"cursorVisibility"];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The coder must allow keyed coding."];
  }

  inputString = self->_inputString;
  if (inputString)
  {
    [coderCopy encodeObject:inputString forKey:@"inputString"];
  }

  displayString = self->_displayString;
  v6 = coderCopy;
  if (displayString)
  {
    [coderCopy encodeObject:displayString forKey:@"styledDisplayString"];
    v6 = coderCopy;
  }

  selectionOffset = self->_selectionOffset;
  if (selectionOffset)
  {
    [coderCopy encodeInteger:selectionOffset forKey:@"selectionOffset"];
    v6 = coderCopy;
  }

  searchString = self->_searchString;
  if (searchString)
  {
    [coderCopy encodeObject:searchString forKey:@"searchString"];
    v6 = coderCopy;
  }

  cursorVisibility = self->_cursorVisibility;
  if (cursorVisibility)
  {
    [coderCopy encodeInteger:cursorVisibility forKey:@"cursorVisibility"];
    v6 = coderCopy;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    inputString = [(RTIStyledIntermediateText *)self inputString];
    inputString2 = [v5 inputString];
    v8 = inputString2;
    if (inputString == inputString2)
    {
    }

    else
    {
      inputString3 = [(RTIStyledIntermediateText *)self inputString];
      inputString4 = [v5 inputString];
      v11 = [inputString3 isEqualToString:inputString4];

      if (!v11)
      {
        goto LABEL_13;
      }
    }

    displayString = [(RTIStyledIntermediateText *)self displayString];
    displayString2 = [v5 displayString];
    v15 = displayString2;
    if (displayString == displayString2)
    {
    }

    else
    {
      displayString3 = [(RTIStyledIntermediateText *)self displayString];
      displayString4 = [v5 displayString];
      v18 = [displayString3 isEqualToAttributedString:displayString4];

      if (!v18)
      {
        goto LABEL_13;
      }
    }

    searchString = [(RTIStyledIntermediateText *)self searchString];
    searchString2 = [v5 searchString];
    v21 = searchString2;
    if (searchString == searchString2)
    {
    }

    else
    {
      searchString3 = [(RTIStyledIntermediateText *)self searchString];
      searchString4 = [v5 searchString];
      v24 = [searchString3 isEqualToString:searchString4];

      if (!v24)
      {
LABEL_13:
        v12 = 0;
LABEL_14:

        goto LABEL_15;
      }
    }

    selectedRange = [(RTIStyledIntermediateText *)self selectedRange];
    v28 = v27;
    v12 = 0;
    if (selectedRange == [v5 selectedRange] && v28 == v29)
    {
      cursorVisibility = [(RTIStyledIntermediateText *)self cursorVisibility];
      v12 = cursorVisibility == [v5 cursorVisibility];
    }

    goto LABEL_14;
  }

  v12 = 0;
LABEL_15:

  return v12;
}

- (unint64_t)hash
{
  inputString = [(RTIStyledIntermediateText *)self inputString];
  v4 = [inputString hash];

  displayString = [(RTIStyledIntermediateText *)self displayString];
  v6 = [displayString hash] + 257 * v4;

  searchString = [(RTIStyledIntermediateText *)self searchString];
  v8 = [searchString hash] + 257 * v6;

  v9 = [(RTIStyledIntermediateText *)self selectedRange]+ 257 * v8;
  if ([(RTIStyledIntermediateText *)self cursorVisibility])
  {
    return [(RTIStyledIntermediateText *)self cursorVisibility]+ 257 * v9;
  }

  return v9;
}

- (_NSRange)selectedRange
{
  selectionOffset = self->_selectionOffset;
  if (selectionOffset > [(NSAttributedString *)self->_displayString length])
  {
    [RTIStyledIntermediateText selectedRange];
  }

  v4 = [(NSAttributedString *)self->_displayString length]- self->_selectionOffset;
  v5 = 0;
  result.length = v5;
  result.location = v4;
  return result;
}

@end