@interface SBSAdaptiveTimeLayoutContext
- (BOOL)isEqual:(id)equal;
- (SBSAdaptiveTimeLayoutContext)initWithBSXPCCoder:(id)coder;
- (SBSAdaptiveTimeLayoutContext)initWithCoder:(id)coder;
- (SBSAdaptiveTimeLayoutContext)initWithXPCDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation SBSAdaptiveTimeLayoutContext

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [equalCopy isMemberOfClass:objc_opt_class()] && self->_orientation == *(equalCopy + 2) && self->_hasSidebarContents == equalCopy[8];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = objc_alloc_init(SBSAdaptiveTimeLayoutContext);
  *(result + 2) = self->_orientation;
  *(result + 8) = self->_hasSidebarContents;
  return result;
}

- (SBSAdaptiveTimeLayoutContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = SBSAdaptiveTimeLayoutContext;
  v5 = [(SBSAdaptiveTimeLayoutContext *)&v7 init];
  if (v5)
  {
    v5->_orientation = [coderCopy decodeIntegerForKey:@"orientation"];
    v5->_hasSidebarContents = [coderCopy decodeBoolForKey:@"hasSidebarContents"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  orientation = self->_orientation;
  coderCopy = coder;
  [coderCopy encodeInteger:orientation forKey:@"orientation"];
  [coderCopy encodeBool:self->_hasSidebarContents forKey:@"hasSidebarContents"];
}

- (SBSAdaptiveTimeLayoutContext)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = SBSAdaptiveTimeLayoutContext;
  v5 = [(SBSAdaptiveTimeLayoutContext *)&v7 init];
  if (v5)
  {
    v5->_orientation = [coderCopy decodeInt64ForKey:@"orientation"];
    v5->_hasSidebarContents = [coderCopy decodeBoolForKey:@"hasSidebarContents"];
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  orientation = self->_orientation;
  coderCopy = coder;
  [coderCopy encodeInt64:orientation forKey:@"orientation"];
  [coderCopy encodeBool:self->_hasSidebarContents forKey:@"hasSidebarContents"];
}

- (SBSAdaptiveTimeLayoutContext)initWithXPCDictionary:(id)dictionary
{
  v4 = [MEMORY[0x1E698E7A8] coderWithMessage:dictionary];
  v5 = [(SBSAdaptiveTimeLayoutContext *)self initWithBSXPCCoder:v4];

  return v5;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  v4 = [MEMORY[0x1E698E7A8] coderWithMessage:dictionary];
  [(SBSAdaptiveTimeLayoutContext *)self encodeWithBSXPCCoder:v4];
}

@end