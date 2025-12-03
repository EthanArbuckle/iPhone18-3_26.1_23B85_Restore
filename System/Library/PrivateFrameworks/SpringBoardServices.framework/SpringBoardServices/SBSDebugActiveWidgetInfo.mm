@interface SBSDebugActiveWidgetInfo
- (BOOL)isEqual:(id)equal;
- (SBSDebugActiveWidgetInfo)initWithBSXPCCoder:(id)coder;
- (SBSDebugActiveWidgetInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SBSDebugActiveWidgetInfo

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4;
  if (v4)
  {
    v4[1] = self->_liveWidgetCount;
    v4[2] = self->_staticWidgetCount;
    v4[3] = self->_fakeWidgetCount;
    v6 = v4;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  liveWidgetCount = self->_liveWidgetCount;
  coderCopy = coder;
  [coderCopy encodeInteger:liveWidgetCount forKey:@"liveWidgetCount"];
  [coderCopy encodeInteger:self->_staticWidgetCount forKey:@"staticWidgetCount"];
  [coderCopy encodeInteger:self->_fakeWidgetCount forKey:@"fakeWidgetCount"];
}

- (SBSDebugActiveWidgetInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = SBSDebugActiveWidgetInfo;
  v5 = [(SBSDebugActiveWidgetInfo *)&v7 init];
  if (v5)
  {
    v5->_liveWidgetCount = [coderCopy decodeIntegerForKey:@"liveWidgetCount"];
    v5->_staticWidgetCount = [coderCopy decodeIntegerForKey:@"staticWidgetCount"];
    v5->_fakeWidgetCount = [coderCopy decodeIntegerForKey:@"fakeWidgetCount"];
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  liveWidgetCount = self->_liveWidgetCount;
  coderCopy = coder;
  [coderCopy encodeUInt64:liveWidgetCount forKey:@"liveWidgetCount"];
  [coderCopy encodeUInt64:self->_staticWidgetCount forKey:@"staticWidgetCount"];
  [coderCopy encodeUInt64:self->_fakeWidgetCount forKey:@"fakeWidgetCount"];
}

- (SBSDebugActiveWidgetInfo)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = SBSDebugActiveWidgetInfo;
  v5 = [(SBSDebugActiveWidgetInfo *)&v7 init];
  if (v5)
  {
    v5->_liveWidgetCount = [coderCopy decodeUInt64ForKey:@"liveWidgetCount"];
    v5->_staticWidgetCount = [coderCopy decodeUInt64ForKey:@"staticWidgetCount"];
    v5->_fakeWidgetCount = [coderCopy decodeUInt64ForKey:@"fakeWidgetCount"];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      v8 = self->_liveWidgetCount == v7->_liveWidgetCount && self->_staticWidgetCount == v7->_staticWidgetCount && self->_fakeWidgetCount == v7->_fakeWidgetCount;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBSDebugActiveWidgetInfo *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = [MEMORY[0x1E698E680] builderWithObject:self];
  v5 = [v4 appendUnsignedInteger:-[SBSDebugActiveWidgetInfo liveWidgetCount](self withName:{"liveWidgetCount"), @"liveWidgetCount"}];
  v6 = [v4 appendUnsignedInteger:-[SBSDebugActiveWidgetInfo staticWidgetCount](self withName:{"staticWidgetCount"), @"staticWidgetCount"}];
  v7 = [v4 appendUnsignedInteger:-[SBSDebugActiveWidgetInfo fakeWidgetCount](self withName:{"fakeWidgetCount"), @"fakeWidgetCount"}];

  return v4;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBSDebugActiveWidgetInfo *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

@end