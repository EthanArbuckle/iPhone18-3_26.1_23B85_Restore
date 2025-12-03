@interface _UISceneWindowingControlHostComponent
- (unint64_t)preferredWindowingControlStyleType;
@end

@implementation _UISceneWindowingControlHostComponent

- (unint64_t)preferredWindowingControlStyleType
{
  if (self)
  {
    scene = [(FBSSceneComponent *)self scene];
    clientSettings = [scene clientSettings];
  }

  else
  {
    clientSettings = 0;
  }

  preferredWindowingControlStyleType = [clientSettings preferredWindowingControlStyleType];

  return preferredWindowingControlStyleType;
}

@end