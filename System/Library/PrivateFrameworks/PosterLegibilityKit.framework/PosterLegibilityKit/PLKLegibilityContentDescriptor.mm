@interface PLKLegibilityContentDescriptor
+ (id)contentDescriptorForColor:(id)color;
+ (id)defaultContentDescriptor;
- (BOOL)isEqual:(id)equal;
- (PLKLegibilityContentDescriptor)init;
- (PLKLegibilityContentDescriptor)initWithContentColor:(id)color;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)filtersForContextType:(int64_t)type options:(int64_t)options;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)configureCALayer:(id)layer forContentRenderedWithContextType:(int64_t)type options:(int64_t)options;
@end

@implementation PLKLegibilityContentDescriptor

- (PLKLegibilityContentDescriptor)init
{
  v6.receiver = self;
  v6.super_class = PLKLegibilityContentDescriptor;
  v2 = [(PLKLegibilityContentDescriptor *)&v6 init];
  v3 = v2;
  if (v2)
  {
    compositingFilter = v2->_compositingFilter;
    v2->_compositingFilter = 0;
  }

  return v3;
}

+ (id)defaultContentDescriptor
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:@"Not implemented" reason:@"Please use PLKLegibilityForegroundContentDescriptor / PLKLegibilityBackgroundContentDescriptor" userInfo:0];
  objc_exception_throw(v2);
}

+ (id)contentDescriptorForColor:(id)color
{
  colorCopy = color;
  v5 = [[self alloc] initWithContentColor:colorCopy];

  return v5;
}

- (PLKLegibilityContentDescriptor)initWithContentColor:(id)color
{
  colorCopy = color;
  v6 = [(PLKLegibilityContentDescriptor *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentColor, color);
  }

  return v7;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendObject:self->_compositingFilter];
  v5 = [builder appendObject:self->_contentColor];
  v6 = [builder hash];

  return v6;
}

- (id)filtersForContextType:(int64_t)type options:(int64_t)options
{
  v6 = objc_opt_new();
  if (type == 4)
  {
    contentColor = [(PLKLegibilityContentDescriptor *)self contentColor];

    if (contentColor)
    {
      v8 = MEMORY[0x277CD9EA0];
      contentColor2 = [(PLKLegibilityContentDescriptor *)self contentColor];
      v10 = [v8 plk_multiplyColor:contentColor2];

      [v6 addObject:v10];
    }
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      compositingFilter = [(PLKLegibilityContentDescriptor *)self compositingFilter];
      compositingFilter2 = [(PLKLegibilityContentDescriptor *)v7 compositingFilter];
      v10 = BSEqualObjects();

      if (v10)
      {
        contentColor = [(PLKLegibilityContentDescriptor *)v7 contentColor];
        contentColor2 = [(PLKLegibilityContentDescriptor *)self contentColor];
        v13 = [contentColor isEqual:contentColor2];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (void)configureCALayer:(id)layer forContentRenderedWithContextType:(int64_t)type options:(int64_t)options
{
  layerCopy = layer;
  allowsGroupBlending = [(PLKLegibilityContentDescriptor *)self allowsGroupBlending];
  allowsGroupOpacity = [(PLKLegibilityContentDescriptor *)self allowsGroupOpacity];
  v11 = [(PLKLegibilityContentDescriptor *)self filtersForContextType:type options:options];
  compositingFilter = [(PLKLegibilityContentDescriptor *)self compositingFilter];
  v13 = layerCopy;
  if (v13)
  {
    [v13 setFilters:v11];
    [v13 setCompositingFilter:compositingFilter];
    [v13 setAllowsGroupBlending:allowsGroupBlending];
    [v13 setAllowsGroupOpacity:allowsGroupOpacity];
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(PLKLegibilityContentDescriptor *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(PLKLegibilityContentDescriptor *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v5 = [v4 appendObject:self->_contentColor withName:@"_contentColor" skipIfNil:1];
  v6 = [v4 appendObject:self->_compositingFilter withName:@"compositingFilter" skipIfNil:1];
  v7 = [v4 appendBool:-[PLKLegibilityContentDescriptor allowsGroupBlending](self withName:{"allowsGroupBlending"), @"allowsGroupBlending"}];
  v8 = [v4 appendBool:-[PLKLegibilityContentDescriptor allowsGroupOpacity](self withName:{"allowsGroupOpacity"), @"allowsGroupOpacity"}];

  return v4;
}

@end