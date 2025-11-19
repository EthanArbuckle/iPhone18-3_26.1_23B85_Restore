@interface PXDebugValue
- (PXDebugValue)initWithLabel:(id)a3;
@end

@implementation PXDebugValue

- (PXDebugValue)initWithLabel:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    PXAssertGetLog();
  }

  v9.receiver = self;
  v9.super_class = PXDebugValue;
  v5 = [(PXDebugValue *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    label = v5->_label;
    v5->_label = v6;
  }

  return v5;
}

@end