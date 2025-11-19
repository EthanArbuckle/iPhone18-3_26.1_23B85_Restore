@interface RBSProcessInfoPlistResult
- (RBSProcessInfoPlistResult)initWithRBSXPCCoder:(id)a3;
- (void)encodeWithRBSXPCCoder:(id)a3;
@end

@implementation RBSProcessInfoPlistResult

- (void)encodeWithRBSXPCCoder:(id)a3
{
  value = self->_value;
  v4 = a3;
  v5 = RBSXPCPackObject(value);
  [v4 encodeXPCObject:v5 forKey:@"_value"];
}

- (RBSProcessInfoPlistResult)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = RBSProcessInfoPlistResult;
  v5 = [(RBSProcessInfoPlistResult *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeXPCObjectOfType:MEMORY[0x1E69E9E80] forKey:@"_value"];
    v7 = RBSXPCUnpackObject(v6);
    value = v5->_value;
    v5->_value = v7;
  }

  return v5;
}

@end