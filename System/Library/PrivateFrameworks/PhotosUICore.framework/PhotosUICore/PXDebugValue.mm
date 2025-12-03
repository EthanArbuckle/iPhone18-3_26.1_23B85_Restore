@interface PXDebugValue
- (PXDebugValue)initWithLabel:(id)label;
@end

@implementation PXDebugValue

- (PXDebugValue)initWithLabel:(id)label
{
  v10 = *MEMORY[0x1E69E9840];
  labelCopy = label;
  if (!labelCopy)
  {
    PXAssertGetLog();
  }

  v9.receiver = self;
  v9.super_class = PXDebugValue;
  v5 = [(PXDebugValue *)&v9 init];
  if (v5)
  {
    v6 = [labelCopy copy];
    label = v5->_label;
    v5->_label = v6;
  }

  return v5;
}

@end