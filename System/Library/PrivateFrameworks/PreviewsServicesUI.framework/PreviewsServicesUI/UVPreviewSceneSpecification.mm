@interface UVPreviewSceneSpecification
- (id)newTransitionContextOfAppropriateClass;
@end

@implementation UVPreviewSceneSpecification

- (id)newTransitionContextOfAppropriateClass
{
  v2 = [(UIApplicationSceneSpecification *)self transitionContextClass];

  return MEMORY[0x2821F94E8](v2);
}

@end