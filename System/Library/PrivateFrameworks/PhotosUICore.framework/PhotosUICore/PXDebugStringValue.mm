@interface PXDebugStringValue
- (PXDebugStringValue)initWithLabel:(id)label BOOLValue:(BOOL)value positiveValue:(BOOL)positiveValue positiveHighlighted:(BOOL)highlighted negativeHighlighted:(BOOL)negativeHighlighted;
- (PXDebugStringValue)initWithLabel:(id)label doubleValue:(double)value;
- (PXDebugStringValue)initWithLabel:(id)label highlightedScore:(double)score;
- (PXDebugStringValue)initWithLabel:(id)label integerValue:(int64_t)value;
- (PXDebugStringValue)initWithLabel:(id)label string:(id)string highlightStyle:(unint64_t)style;
@end

@implementation PXDebugStringValue

- (PXDebugStringValue)initWithLabel:(id)label highlightedScore:(double)score
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = round(score * 100.0);
  labelCopy = label;
  v9 = [v6 stringWithFormat:@"%2.1f%%", *&v7];
  v10 = 3;
  if (score >= 0.0)
  {
    v10 = 0;
  }

  if (score > 0.0)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  v12 = [(PXDebugStringValue *)self initWithLabel:labelCopy string:v9 highlightStyle:v11];

  return v12;
}

- (PXDebugStringValue)initWithLabel:(id)label doubleValue:(double)value
{
  v6 = MEMORY[0x1E696AEC0];
  labelCopy = label;
  v8 = [v6 stringWithFormat:@"%0.3f", *&value];
  v9 = [(PXDebugStringValue *)self initWithLabel:labelCopy string:v8 highlightStyle:0];

  return v9;
}

- (PXDebugStringValue)initWithLabel:(id)label integerValue:(int64_t)value
{
  v6 = MEMORY[0x1E696AEC0];
  labelCopy = label;
  value = [v6 stringWithFormat:@"%d", value];
  v9 = [(PXDebugStringValue *)self initWithLabel:labelCopy string:value highlightStyle:0];

  return v9;
}

- (PXDebugStringValue)initWithLabel:(id)label BOOLValue:(BOOL)value positiveValue:(BOOL)positiveValue positiveHighlighted:(BOOL)highlighted negativeHighlighted:(BOOL)negativeHighlighted
{
  v7 = @"NO";
  if (value)
  {
    v7 = @"YES";
  }

  if (value != positiveValue)
  {
    highlightedCopy = negativeHighlighted;
  }

  else
  {
    highlightedCopy = highlighted;
  }

  v9 = 3;
  if (value == positiveValue)
  {
    v9 = 1;
  }

  if (highlightedCopy)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return [(PXDebugStringValue *)self initWithLabel:label string:v7 highlightStyle:v10, highlighted];
}

- (PXDebugStringValue)initWithLabel:(id)label string:(id)string highlightStyle:(unint64_t)style
{
  v16 = *MEMORY[0x1E69E9840];
  labelCopy = label;
  stringCopy = string;
  v10 = stringCopy;
  if (!labelCopy)
  {
    PXAssertGetLog();
  }

  if (!stringCopy)
  {
    PXAssertGetLog();
  }

  v15.receiver = self;
  v15.super_class = PXDebugStringValue;
  v11 = [(PXDebugValue *)&v15 initWithLabel:labelCopy];
  if (v11)
  {
    v12 = [v10 copy];
    string = v11->_string;
    v11->_string = v12;

    v11->_highlightStyle = style;
  }

  return v11;
}

@end