@interface UIWindowSceneProminentPlacement
+ (UIWindowSceneProminentPlacement)prominentPlacement;
+ (id)_largeProminentPlacement;
- (BOOL)isEqual:(id)a3;
- (id)_createConfigurationWithError:(id *)a3;
- (id)_init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
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
  v2 = [[a1 alloc] _init];

  return v2;
}

+ (id)_largeProminentPlacement
{
  v2 = [a1 prominentPlacement];
  [v2 _setPrefersLargeSize:1];

  return v2;
}

- (id)_createConfigurationWithError:(id *)a3
{
  v4 = objc_alloc_init(MEMORY[0x1E69DEC40]);
  [v4 setPrefersLargeSize:{-[UIWindowSceneProminentPlacement _prefersLargeSize](self, "_prefersLargeSize")}];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = UIWindowSceneProminentPlacement;
  v4 = [(UIWindowScenePlacement *)&v6 copyWithZone:a3];
  [v4 _setPrefersLargeSize:{-[UIWindowSceneProminentPlacement _prefersLargeSize](self, "_prefersLargeSize")}];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = UIWindowSceneProminentPlacement;
  if ([(UIWindowScenePlacement *)&v8 isEqual:v4])
  {
    v5 = [(UIWindowSceneProminentPlacement *)self _prefersLargeSize];
    v6 = v5 ^ [v4 _prefersLargeSize] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v5.receiver = self;
  v5.super_class = UIWindowSceneProminentPlacement;
  v3 = [(UIWindowScenePlacement *)&v5 descriptionBuilderWithMultilinePrefix:a3];

  return v3;
}

@end