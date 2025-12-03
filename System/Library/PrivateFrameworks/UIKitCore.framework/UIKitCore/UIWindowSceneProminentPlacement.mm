@interface UIWindowSceneProminentPlacement
+ (UIWindowSceneProminentPlacement)prominentPlacement;
+ (id)_largeProminentPlacement;
- (BOOL)isEqual:(id)equal;
- (id)_createConfigurationWithError:(id *)error;
- (id)_init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
@end

@implementation UIWindowSceneProminentPlacement

- (id)_init
{
  v3.receiver = self;
  v3.super_class = UIWindowSceneProminentPlacement;
  result = [(UIWindowScenePlacement *)&v3 _init];
  if (result)
  {
    *(result + 8) = 0;
  }

  return result;
}

+ (UIWindowSceneProminentPlacement)prominentPlacement
{
  _init = [[self alloc] _init];

  return _init;
}

+ (id)_largeProminentPlacement
{
  prominentPlacement = [self prominentPlacement];
  [prominentPlacement _setPrefersLargeSize:1];

  return prominentPlacement;
}

- (id)_createConfigurationWithError:(id *)error
{
  v4 = objc_alloc_init(MEMORY[0x1E69DEC40]);
  [v4 setPrefersLargeSize:{-[UIWindowSceneProminentPlacement _prefersLargeSize](self, "_prefersLargeSize")}];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = UIWindowSceneProminentPlacement;
  v4 = [(UIWindowScenePlacement *)&v6 copyWithZone:zone];
  [v4 _setPrefersLargeSize:{-[UIWindowSceneProminentPlacement _prefersLargeSize](self, "_prefersLargeSize")}];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = UIWindowSceneProminentPlacement;
  if ([(UIWindowScenePlacement *)&v8 isEqual:equalCopy])
  {
    _prefersLargeSize = [(UIWindowSceneProminentPlacement *)self _prefersLargeSize];
    v6 = _prefersLargeSize ^ [equalCopy _prefersLargeSize] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v5.receiver = self;
  v5.super_class = UIWindowSceneProminentPlacement;
  v3 = [(UIWindowScenePlacement *)&v5 descriptionBuilderWithMultilinePrefix:prefix];

  return v3;
}

@end