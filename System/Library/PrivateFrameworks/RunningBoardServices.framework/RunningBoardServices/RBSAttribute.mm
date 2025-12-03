@interface RBSAttribute
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (RBSAttribute)init;
- (RBSAttribute)initWithRBSXPCCoder:(id)coder;
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"RBSAttribute.m" lineNumber:17 description:@"-init is not allowed on RBSAttribute"];

  return 0;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  v3 = objc_opt_class();
  return v3 == objc_opt_class();
}

- (RBSAttribute)initWithRBSXPCCoder:(id)coder
{
  selfCopy = self;
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
    selfCopy = [(RBSAttribute *)selfCopy _init];
    v5 = selfCopy;
  }

  return v5;
}

@end