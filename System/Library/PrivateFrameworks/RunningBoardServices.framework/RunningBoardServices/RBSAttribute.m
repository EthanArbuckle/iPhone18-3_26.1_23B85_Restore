@interface RBSAttribute
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (RBSAttribute)init;
- (RBSAttribute)initWithRBSXPCCoder:(id)a3;
- (id)_init;
@end

@implementation RBSAttribute

- (id)_init
{
  v3.receiver = self;
  v3.super_class = RBSAttribute;
  return [(RBSAttribute *)&v3 init];
}

- (NSString)description
{
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [objc_opt_class() description];
  v4 = [v2 initWithFormat:@"<%@>", v3];

  return v4;
}

- (RBSAttribute)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"RBSAttribute.m" lineNumber:17 description:@"-init is not allowed on RBSAttribute"];

  return 0;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v3 = objc_opt_class();
  return v3 == objc_opt_class();
}

- (RBSAttribute)initWithRBSXPCCoder:(id)a3
{
  v3 = self;
  if ([(RBSAttribute *)self isMemberOfClass:objc_opt_class()])
  {
    v4 = rbs_assertion_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      [RBSAttribute initWithRBSXPCCoder:v4];
    }

    v5 = 0;
  }

  else
  {
    v3 = [(RBSAttribute *)v3 _init];
    v5 = v3;
  }

  return v5;
}

@end