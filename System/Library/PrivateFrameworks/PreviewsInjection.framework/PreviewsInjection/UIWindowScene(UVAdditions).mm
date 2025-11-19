@interface UIWindowScene(UVAdditions)
- (double)displayScale;
- (double)previewMaximumSize;
- (id)displayName;
@end

@implementation UIWindowScene(UVAdditions)

- (double)previewMaximumSize
{
  v1 = [a1 _FBSScene];
  v2 = [v1 settings];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v2 previewMaximumSize];
    v4 = v3;
  }

  else
  {
    v5 = [v2 displayConfiguration];
    [v5 bounds];
    v4 = v6;
  }

  return v4;
}

- (id)displayName
{
  v1 = [a1 _FBSScene];
  v2 = [v1 settings];
  v3 = [v2 displayConfiguration];
  v4 = [v3 name];

  return v4;
}

- (double)displayScale
{
  v1 = [a1 _FBSScene];
  v2 = [v1 settings];
  v3 = [v2 displayConfiguration];
  [v3 pointScale];
  v5 = v4;

  return v5;
}

@end