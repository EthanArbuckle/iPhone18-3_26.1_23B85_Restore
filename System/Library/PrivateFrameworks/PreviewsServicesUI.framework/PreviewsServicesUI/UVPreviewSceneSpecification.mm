@interface UVPreviewSceneSpecification
- (id)newTransitionContextOfAppropriateClass;
@end

@implementation UVPreviewSceneSpecification

- (id)newTransitionContextOfAppropriateClass
{
  transitionContextClass = [(UIApplicationSceneSpecification *)self transitionContextClass];

  return MEMORY[0x2821F94E8](transitionContextClass);
}

@end