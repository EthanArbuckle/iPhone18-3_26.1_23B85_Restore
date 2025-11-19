@interface PLKLegibilityContentDescriptor
+ (id)contentDescriptorForColor:(id)a3;
+ (id)defaultContentDescriptor;
- (BOOL)isEqual:(id)a3;
- (PLKLegibilityContentDescriptor)init;
- (PLKLegibilityContentDescriptor)initWithContentColor:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)filtersForContextType:(int64_t)a3 options:(int64_t)a4;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)configureCALayer:(id)a3 forContentRenderedWithContextType:(int64_t)a4 options:(int64_t)a5;
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

+ (id)contentDescriptorForColor:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithContentColor:v4];

  return v5;
}

- (PLKLegibilityContentDescriptor)initWithContentColor:(id)a3
{
  v5 = a3;
  v6 = [(PLKLegibilityContentDescriptor *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentColor, a3);
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendObject:self->_compositingFilter];
  v5 = [v3 appendObject:self->_contentColor];
  v6 = [v3 hash];

  return v6;
}

- (id)filtersForContextType:(int64_t)a3 options:(int64_t)a4
{
  v6 = objc_opt_new();
  if (a3 == 4)
  {
    v7 = [(PLKLegibilityContentDescriptor *)self contentColor];

    if (v7)
    {
      v8 = MEMORY[0x277CD9EA0];
      v9 = [(PLKLegibilityContentDescriptor *)self contentColor];
      v10 = [v8 plk_multiplyColor:v9];

      [v6 addObject:v10];
    }
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v13 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      v8 = [(PLKLegibilityContentDescriptor *)self compositingFilter];
      v9 = [(PLKLegibilityContentDescriptor *)v7 compositingFilter];
      v10 = BSEqualObjects();

      if (v10)
      {
        v11 = [(PLKLegibilityContentDescriptor *)v7 contentColor];
        v12 = [(PLKLegibilityContentDescriptor *)self contentColor];
        v13 = [v11 isEqual:v12];
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

- (void)configureCALayer:(id)a3 forContentRenderedWithContextType:(int64_t)a4 options:(int64_t)a5
{
  v8 = a3;
  v9 = [(PLKLegibilityContentDescriptor *)self allowsGroupBlending];
  v10 = [(PLKLegibilityContentDescriptor *)self allowsGroupOpacity];
  v11 = [(PLKLegibilityContentDescriptor *)self filtersForContextType:a4 options:a5];
  v12 = [(PLKLegibilityContentDescriptor *)self compositingFilter];
  v13 = v8;
  if (v13)
  {
    [v13 setFilters:v11];
    [v13 setCompositingFilter:v12];
    [v13 setAllowsGroupBlending:v9];
    [v13 setAllowsGroupOpacity:v10];
  }
}

- (id)succinctDescription
{
  v2 = [(PLKLegibilityContentDescriptor *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(PLKLegibilityContentDescriptor *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v5 = [v4 appendObject:self->_contentColor withName:@"_contentColor" skipIfNil:1];
  v6 = [v4 appendObject:self->_compositingFilter withName:@"compositingFilter" skipIfNil:1];
  v7 = [v4 appendBool:-[PLKLegibilityContentDescriptor allowsGroupBlending](self withName:{"allowsGroupBlending"), @"allowsGroupBlending"}];
  v8 = [v4 appendBool:-[PLKLegibilityContentDescriptor allowsGroupOpacity](self withName:{"allowsGroupOpacity"), @"allowsGroupOpacity"}];

  return v4;
}

@end