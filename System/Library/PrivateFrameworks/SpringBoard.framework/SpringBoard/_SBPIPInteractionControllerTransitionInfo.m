@interface _SBPIPInteractionControllerTransitionInfo
- (SBWindowScene)targetWindowScene;
@end

@implementation _SBPIPInteractionControllerTransitionInfo

- (SBWindowScene)targetWindowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_targetWindowScene);

  return WeakRetained;
}

@end