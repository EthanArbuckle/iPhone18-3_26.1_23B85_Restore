@interface _UISceneWindowingControlHostComponent
- (unint64_t)preferredWindowingControlStyleType;
@end

@implementation _UISceneWindowingControlHostComponent

- (unint64_t)preferredWindowingControlStyleType
{
  if (self)
  {
    v2 = [(FBSSceneComponent *)self scene];
    v3 = [v2 clientSettings];
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 preferredWindowingControlStyleType];

  return v4;
}

@end