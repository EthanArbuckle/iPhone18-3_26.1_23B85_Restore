@interface SBSAdaptiveTimeLayoutContext
- (BOOL)isEqual:(id)a3;
- (SBSAdaptiveTimeLayoutContext)initWithBSXPCCoder:(id)a3;
- (SBSAdaptiveTimeLayoutContext)initWithCoder:(id)a3;
- (SBSAdaptiveTimeLayoutContext)initWithXPCDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation SBSAdaptiveTimeLayoutContext

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [v4 isMemberOfClass:objc_opt_class()] && self->_orientation == *(v4 + 2) && self->_hasSidebarContents == v4[8];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = objc_alloc_init(SBSAdaptiveTimeLayoutContext);
  *(result + 2) = self->_orientation;
  *(result + 8) = self->_hasSidebarContents;
  return result;
}

- (SBSAdaptiveTimeLayoutContext)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SBSAdaptiveTimeLayoutContext;
  v5 = [(SBSAdaptiveTimeLayoutContext *)&v7 init];
  if (v5)
  {
    v5->_orientation = [v4 decodeIntegerForKey:@"orientation"];
    v5->_hasSidebarContents = [v4 decodeBoolForKey:@"hasSidebarContents"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  orientation = self->_orientation;
  v5 = a3;
  [v5 encodeInteger:orientation forKey:@"orientation"];
  [v5 encodeBool:self->_hasSidebarContents forKey:@"hasSidebarContents"];
}

- (SBSAdaptiveTimeLayoutContext)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SBSAdaptiveTimeLayoutContext;
  v5 = [(SBSAdaptiveTimeLayoutContext *)&v7 init];
  if (v5)
  {
    v5->_orientation = [v4 decodeInt64ForKey:@"orientation"];
    v5->_hasSidebarContents = [v4 decodeBoolForKey:@"hasSidebarContents"];
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  orientation = self->_orientation;
  v5 = a3;
  [v5 encodeInt64:orientation forKey:@"orientation"];
  [v5 encodeBool:self->_hasSidebarContents forKey:@"hasSidebarContents"];
}

- (SBSAdaptiveTimeLayoutContext)initWithXPCDictionary:(id)a3
{
  v4 = [MEMORY[0x1E698E7A8] coderWithMessage:a3];
  v5 = [(SBSAdaptiveTimeLayoutContext *)self initWithBSXPCCoder:v4];

  return v5;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  v4 = [MEMORY[0x1E698E7A8] coderWithMessage:a3];
  [(SBSAdaptiveTimeLayoutContext *)self encodeWithBSXPCCoder:v4];
}

@end