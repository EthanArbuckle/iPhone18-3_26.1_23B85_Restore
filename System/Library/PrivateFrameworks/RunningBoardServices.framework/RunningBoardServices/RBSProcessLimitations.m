@interface RBSProcessLimitations
- (NSString)description;
- (RBSProcessLimitations)init;
- (RBSProcessLimitations)initWithRBSXPCCoder:(id)a3;
- (void)encodeWithRBSXPCCoder:(id)a3;
@end

@implementation RBSProcessLimitations

- (RBSProcessLimitations)init
{
  v3.receiver = self;
  v3.super_class = RBSProcessLimitations;
  result = [(RBSProcessLimitations *)&v3 init];
  if (result)
  {
    result->_runTime = -1.0;
  }

  return result;
}

- (NSString)description
{
  if (description_onceToken != -1)
  {
    [RBSProcessLimitations description];
  }

  runTime = self->_runTime;
  if (runTime == -1.0)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@" %fms", (runTime - runTime) * 1000.0];
    if (self->_runTime != -1.0)
    {
      v5 = [description_decomposedIntervalFormatter stringFromTimeInterval:?];
      goto LABEL_8;
    }
  }

  v5 = @"(unlimited)";
LABEL_8:
  v6 = objc_alloc(MEMORY[0x1E696AEC0]);
  v7 = [objc_opt_class() description];
  v8 = v7;
  v9 = &stru_1F01CD8F0;
  if (v4)
  {
    v9 = v4;
  }

  v10 = [v6 initWithFormat:@"<%@| runTime:%@%@>", v7, v5, v9];

  return v10;
}

uint64_t __36__RBSProcessLimitations_description__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB70]);
  v1 = description_decomposedIntervalFormatter;
  description_decomposedIntervalFormatter = v0;

  v2 = description_decomposedIntervalFormatter;

  return [v2 setUnitsStyle:1];
}

- (void)encodeWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  [(RBSProcessLimitations *)self runTime];
  [v4 encodeDouble:@"_runTime" forKey:?];
}

- (RBSProcessLimitations)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = RBSProcessLimitations;
  v5 = [(RBSProcessLimitations *)&v8 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"_runTime"];
    v5->_runTime = v6;
  }

  return v5;
}

@end