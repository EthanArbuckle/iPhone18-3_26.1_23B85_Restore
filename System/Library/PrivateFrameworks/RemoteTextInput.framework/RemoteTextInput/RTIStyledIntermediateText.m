@interface RTIStyledIntermediateText
+ (id)_attributedStringAllowedClasses;
+ (id)intermediateTextWithInputString:(id)a3 displayString:(id)a4;
+ (id)intermediateTextWithInputString:(id)a3 displayString:(id)a4 selectionLocation:(unint64_t)a5;
+ (id)intermediateTextWithInputString:(id)a3 displayString:(id)a4 selectionLocation:(unint64_t)a5 searchString:(id)a6;
- (BOOL)isEqual:(id)a3;
- (RTIStyledIntermediateText)initWithCoder:(id)a3;
- (RTIStyledIntermediateText)initWithInputString:(id)a3 displayString:(id)a4 selectionLocation:(unint64_t)a5 searchString:(id)a6;
- (_NSRange)selectedRange;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTIStyledIntermediateText

+ (id)intermediateTextWithInputString:(id)a3 displayString:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) initWithInputString:v6 displayString:v5 selectionLocation:0x7FFFFFFFFFFFFFFFLL searchString:0];

  return v7;
}

+ (id)intermediateTextWithInputString:(id)a3 displayString:(id)a4 selectionLocation:(unint64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [objc_alloc(objc_opt_class()) initWithInputString:v8 displayString:v7 selectionLocation:a5 searchString:0];

  return v9;
}

+ (id)intermediateTextWithInputString:(id)a3 displayString:(id)a4 selectionLocation:(unint64_t)a5 searchString:(id)a6
{
  v9 = a6;
  v10 = a4;
  v11 = a3;
  v12 = [objc_alloc(objc_opt_class()) initWithInputString:v11 displayString:v10 selectionLocation:a5 searchString:v9];

  return v12;
}

- (RTIStyledIntermediateText)initWithInputString:(id)a3 displayString:(id)a4 selectionLocation:(unint64_t)a5 searchString:(id)a6
{
  v26[6] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v25.receiver = self;
  v25.super_class = RTIStyledIntermediateText;
  v13 = [(RTIStyledIntermediateText *)&v25 init];
  if (v13)
  {
    v14 = [v10 copy];
    inputString = v13->_inputString;
    v13->_inputString = v14;

    v26[0] = @"NSUnderline";
    v26[1] = @"NSUnderlineColor";
    v26[2] = @"NSMarkedClauseSegment";
    v26[3] = @"NSColor";
    v26[4] = @"NSBackgroundColor";
    v26[5] = @"NSTextAnimation";
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:6];
    v17 = [RTIUtilities _codableAttributedString:v11 validAttributes:v16];
    displayString = v13->_displayString;
    v13->_displayString = v17;

    v19 = [(NSAttributedString *)v13->_displayString length];
    v20 = v19 - a5;
    if (v19 < a5)
    {
      v20 = 0;
    }

    v13->_selectionOffset = v20;
    v21 = [v12 copy];
    searchString = v13->_searchString;
    v13->_searchString = v21;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v5)
  {
    v6 = [(NSString *)self->_inputString copyWithZone:a3];
    v7 = v5[2];
    v5[2] = v6;

    v8 = [(NSAttributedString *)self->_displayString copyWithZone:a3];
    v9 = v5[3];
    v5[3] = v8;

    v5[1] = self->_selectionOffset;
    v10 = [(NSString *)self->_searchString copyWithZone:a3];
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

- (RTIStyledIntermediateText)initWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The decoder must allow keyed coding."];
  }

  v17.receiver = self;
  v17.super_class = RTIStyledIntermediateText;
  v5 = [(RTIStyledIntermediateText *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inputString"];
    v7 = [v6 copy];
    inputString = v5->_inputString;
    v5->_inputString = v7;

    v9 = [objc_opt_class() _attributedStringAllowedClasses];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"styledDisplayString"];
    v11 = [v10 copy];
    displayString = v5->_displayString;
    v5->_displayString = v11;

    v5->_selectionOffset = [v4 decodeIntegerForKey:@"selectionOffset"];
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"searchString"];
    v14 = [v13 copy];
    searchString = v5->_searchString;
    v5->_searchString = v14;

    if ([v4 containsValueForKey:@"cursorVisibility"])
    {
      v5->_cursorVisibility = [v4 decodeIntegerForKey:@"cursorVisibility"];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v10 = a3;
  if (([v10 allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The coder must allow keyed coding."];
  }

  inputString = self->_inputString;
  if (inputString)
  {
    [v10 encodeObject:inputString forKey:@"inputString"];
  }

  displayString = self->_displayString;
  v6 = v10;
  if (displayString)
  {
    [v10 encodeObject:displayString forKey:@"styledDisplayString"];
    v6 = v10;
  }

  selectionOffset = self->_selectionOffset;
  if (selectionOffset)
  {
    [v10 encodeInteger:selectionOffset forKey:@"selectionOffset"];
    v6 = v10;
  }

  searchString = self->_searchString;
  if (searchString)
  {
    [v10 encodeObject:searchString forKey:@"searchString"];
    v6 = v10;
  }

  cursorVisibility = self->_cursorVisibility;
  if (cursorVisibility)
  {
    [v10 encodeInteger:cursorVisibility forKey:@"cursorVisibility"];
    v6 = v10;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(RTIStyledIntermediateText *)self inputString];
    v7 = [v5 inputString];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(RTIStyledIntermediateText *)self inputString];
      v10 = [v5 inputString];
      v11 = [v9 isEqualToString:v10];

      if (!v11)
      {
        goto LABEL_13;
      }
    }

    v13 = [(RTIStyledIntermediateText *)self displayString];
    v14 = [v5 displayString];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(RTIStyledIntermediateText *)self displayString];
      v17 = [v5 displayString];
      v18 = [v16 isEqualToAttributedString:v17];

      if (!v18)
      {
        goto LABEL_13;
      }
    }

    v19 = [(RTIStyledIntermediateText *)self searchString];
    v20 = [v5 searchString];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(RTIStyledIntermediateText *)self searchString];
      v23 = [v5 searchString];
      v24 = [v22 isEqualToString:v23];

      if (!v24)
      {
LABEL_13:
        v12 = 0;
LABEL_14:

        goto LABEL_15;
      }
    }

    v26 = [(RTIStyledIntermediateText *)self selectedRange];
    v28 = v27;
    v12 = 0;
    if (v26 == [v5 selectedRange] && v28 == v29)
    {
      v30 = [(RTIStyledIntermediateText *)self cursorVisibility];
      v12 = v30 == [v5 cursorVisibility];
    }

    goto LABEL_14;
  }

  v12 = 0;
LABEL_15:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(RTIStyledIntermediateText *)self inputString];
  v4 = [v3 hash];

  v5 = [(RTIStyledIntermediateText *)self displayString];
  v6 = [v5 hash] + 257 * v4;

  v7 = [(RTIStyledIntermediateText *)self searchString];
  v8 = [v7 hash] + 257 * v6;

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