@interface SBSDebugActiveWidgetInfo
- (BOOL)isEqual:(id)a3;
- (SBSDebugActiveWidgetInfo)initWithBSXPCCoder:(id)a3;
- (SBSDebugActiveWidgetInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SBSDebugActiveWidgetInfo

- (id)copyWithZone:(_NSZone *)a3
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

- (void)encodeWithCoder:(id)a3
{
  liveWidgetCount = self->_liveWidgetCount;
  v5 = a3;
  [v5 encodeInteger:liveWidgetCount forKey:@"liveWidgetCount"];
  [v5 encodeInteger:self->_staticWidgetCount forKey:@"staticWidgetCount"];
  [v5 encodeInteger:self->_fakeWidgetCount forKey:@"fakeWidgetCount"];
}

- (SBSDebugActiveWidgetInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SBSDebugActiveWidgetInfo;
  v5 = [(SBSDebugActiveWidgetInfo *)&v7 init];
  if (v5)
  {
    v5->_liveWidgetCount = [v4 decodeIntegerForKey:@"liveWidgetCount"];
    v5->_staticWidgetCount = [v4 decodeIntegerForKey:@"staticWidgetCount"];
    v5->_fakeWidgetCount = [v4 decodeIntegerForKey:@"fakeWidgetCount"];
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  liveWidgetCount = self->_liveWidgetCount;
  v5 = a3;
  [v5 encodeUInt64:liveWidgetCount forKey:@"liveWidgetCount"];
  [v5 encodeUInt64:self->_staticWidgetCount forKey:@"staticWidgetCount"];
  [v5 encodeUInt64:self->_fakeWidgetCount forKey:@"fakeWidgetCount"];
}

- (SBSDebugActiveWidgetInfo)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SBSDebugActiveWidgetInfo;
  v5 = [(SBSDebugActiveWidgetInfo *)&v7 init];
  if (v5)
  {
    v5->_liveWidgetCount = [v4 decodeUInt64ForKey:@"liveWidgetCount"];
    v5->_staticWidgetCount = [v4 decodeUInt64ForKey:@"staticWidgetCount"];
    v5->_fakeWidgetCount = [v4 decodeUInt64ForKey:@"fakeWidgetCount"];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      v8 = self->_liveWidgetCount == v7->_liveWidgetCount && self->_staticWidgetCount == v7->_staticWidgetCount && self->_fakeWidgetCount == v7->_fakeWidgetCount;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBSDebugActiveWidgetInfo *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [MEMORY[0x1E698E680] builderWithObject:self];
  v5 = [v4 appendUnsignedInteger:-[SBSDebugActiveWidgetInfo liveWidgetCount](self withName:{"liveWidgetCount"), @"liveWidgetCount"}];
  v6 = [v4 appendUnsignedInteger:-[SBSDebugActiveWidgetInfo staticWidgetCount](self withName:{"staticWidgetCount"), @"staticWidgetCount"}];
  v7 = [v4 appendUnsignedInteger:-[SBSDebugActiveWidgetInfo fakeWidgetCount](self withName:{"fakeWidgetCount"), @"fakeWidgetCount"}];

  return v4;
}

- (id)succinctDescription
{
  v2 = [(SBSDebugActiveWidgetInfo *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

@end