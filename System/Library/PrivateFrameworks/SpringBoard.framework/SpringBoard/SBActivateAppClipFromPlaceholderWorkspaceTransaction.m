@interface SBActivateAppClipFromPlaceholderWorkspaceTransaction
- (void)_begin;
- (void)transactionDidComplete:(id)a3;
@end

@implementation SBActivateAppClipFromPlaceholderWorkspaceTransaction

- (void)_begin
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBActivateAppClipFromPlaceholderWorkspaceTransaction.m" lineNumber:38 description:@"Expected non-nil applicationSceneEntity"];
}

void __62__SBActivateAppClipFromPlaceholderWorkspaceTransaction__begin__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setInterfaceOrientation:v3];
  v5 = [SBAnimationUtilities animationSettingsForRotationFromInterfaceOrientation:*(a1 + 40) toInterfaceOrientation:*(a1 + 32)];
  [v4 setAnimationSettings:v5];
}

- (void)transactionDidComplete:(id)a3
{
  rotateScenesTransaction = self->_rotateScenesTransaction;
  if (rotateScenesTransaction == a3)
  {
    v8 = v3;
    v9 = v4;
    self->_rotateScenesTransaction = 0;

    v7.receiver = self;
    v7.super_class = SBActivateAppClipFromPlaceholderWorkspaceTransaction;
    [(SBAppToAppWorkspaceTransaction *)&v7 _begin];
    [(SBActivateAppClipFromPlaceholderWorkspaceTransaction *)self satisfyMilestone:@"kActivateAppClipFromPlaceholderWaitingForRotation"];
  }
}

@end