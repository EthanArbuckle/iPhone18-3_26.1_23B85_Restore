@interface RBSProcessInfoPlistResult
- (RBSProcessInfoPlistResult)initWithRBSXPCCoder:(id)coder;
- (void)encodeWithRBSXPCCoder:(id)coder;
@end

@implementation RBSProcessInfoPlistResult

- (void)encodeWithRBSXPCCoder:(id)coder
{
  value = self->_value;
  coderCopy = coder;
  v5 = RBSXPCPackObject(value);
  [coderCopy encodeXPCObject:v5 forKey:@"_value"];
}

- (RBSProcessInfoPlistResult)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = RBSProcessInfoPlistResult;
  v5 = [(RBSProcessInfoPlistResult *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeXPCObjectOfType:MEMORY[0x1E69E9E80] forKey:@"_value"];
    v7 = RBSXPCUnpackObject(v6);
    value = v5->_value;
    v5->_value = v7;
  }

  return v5;
}

@end