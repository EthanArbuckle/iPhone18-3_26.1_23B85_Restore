@interface UIWindowScene(UVAdditions)
- (double)displayScale;
- (double)previewMaximumSize;
- (id)displayName;
@end

@implementation UIWindowScene(UVAdditions)

- (double)previewMaximumSize
{
  _FBSScene = [self _FBSScene];
  settings = [_FBSScene settings];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [settings previewMaximumSize];
    v4 = v3;
  }

  else
  {
    displayConfiguration = [settings displayConfiguration];
    [displayConfiguration bounds];
    v4 = v6;
  }

  return v4;
}

- (id)displayName
{
  _FBSScene = [self _FBSScene];
  settings = [_FBSScene settings];
  displayConfiguration = [settings displayConfiguration];
  name = [displayConfiguration name];

  return name;
}

- (double)displayScale
{
  _FBSScene = [self _FBSScene];
  settings = [_FBSScene settings];
  displayConfiguration = [settings displayConfiguration];
  [displayConfiguration pointScale];
  v5 = v4;

  return v5;
}

@end