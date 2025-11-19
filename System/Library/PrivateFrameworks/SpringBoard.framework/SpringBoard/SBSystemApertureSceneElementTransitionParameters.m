@interface SBSystemApertureSceneElementTransitionParameters
- (CGSize)sceneSize;
@end

@implementation SBSystemApertureSceneElementTransitionParameters

- (CGSize)sceneSize
{
  width = self->_sceneSize.width;
  height = self->_sceneSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end