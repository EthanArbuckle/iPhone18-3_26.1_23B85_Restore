@interface PXDebugStringValue
- (PXDebugStringValue)initWithLabel:(id)a3 BOOLValue:(BOOL)a4 positiveValue:(BOOL)a5 positiveHighlighted:(BOOL)a6 negativeHighlighted:(BOOL)a7;
- (PXDebugStringValue)initWithLabel:(id)a3 doubleValue:(double)a4;
- (PXDebugStringValue)initWithLabel:(id)a3 highlightedScore:(double)a4;
- (PXDebugStringValue)initWithLabel:(id)a3 integerValue:(int64_t)a4;
- (PXDebugStringValue)initWithLabel:(id)a3 string:(id)a4 highlightStyle:(unint64_t)a5;
@end

@implementation PXDebugStringValue

- (PXDebugStringValue)initWithLabel:(id)a3 highlightedScore:(double)a4
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = round(a4 * 100.0);
  v8 = a3;
  v9 = [v6 stringWithFormat:@"%2.1f%%", *&v7];
  v10 = 3;
  if (a4 >= 0.0)
  {
    v10 = 0;
  }

  if (a4 > 0.0)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  v12 = [(PXDebugStringValue *)self initWithLabel:v8 string:v9 highlightStyle:v11];

  return v12;
}

- (PXDebugStringValue)initWithLabel:(id)a3 doubleValue:(double)a4
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = a3;
  v8 = [v6 stringWithFormat:@"%0.3f", *&a4];
  v9 = [(PXDebugStringValue *)self initWithLabel:v7 string:v8 highlightStyle:0];

  return v9;
}

- (PXDebugStringValue)initWithLabel:(id)a3 integerValue:(int64_t)a4
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = a3;
  v8 = [v6 stringWithFormat:@"%d", a4];
  v9 = [(PXDebugStringValue *)self initWithLabel:v7 string:v8 highlightStyle:0];

  return v9;
}

- (PXDebugStringValue)initWithLabel:(id)a3 BOOLValue:(BOOL)a4 positiveValue:(BOOL)a5 positiveHighlighted:(BOOL)a6 negativeHighlighted:(BOOL)a7
{
  v7 = @"NO";
  if (a4)
  {
    v7 = @"YES";
  }

  if (a4 != a5)
  {
    v8 = a7;
  }

  else
  {
    v8 = a6;
  }

  v9 = 3;
  if (a4 == a5)
  {
    v9 = 1;
  }

  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return [(PXDebugStringValue *)self initWithLabel:a3 string:v7 highlightStyle:v10, a6];
}

- (PXDebugStringValue)initWithLabel:(id)a3 string:(id)a4 highlightStyle:(unint64_t)a5
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8)
  {
    PXAssertGetLog();
  }

  if (!v9)
  {
    PXAssertGetLog();
  }

  v15.receiver = self;
  v15.super_class = PXDebugStringValue;
  v11 = [(PXDebugValue *)&v15 initWithLabel:v8];
  if (v11)
  {
    v12 = [v10 copy];
    string = v11->_string;
    v11->_string = v12;

    v11->_highlightStyle = a5;
  }

  return v11;
}

@end