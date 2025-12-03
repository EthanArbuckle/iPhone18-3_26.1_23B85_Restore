@interface _SBFluidSwitcherSystemApertureSuppressionAssertion
- (NSString)description;
- (_SBFluidSwitcherSystemApertureSuppressionAssertion)initWithSceneID:(id)d bundleID:(id)iD invalidationBlock:(id)block;
- (void)dealloc;
- (void)invalidate;
@end

@implementation _SBFluidSwitcherSystemApertureSuppressionAssertion

- (_SBFluidSwitcherSystemApertureSuppressionAssertion)initWithSceneID:(id)d bundleID:(id)iD invalidationBlock:(id)block
{
  dCopy = d;
  iDCopy = iD;
  blockCopy = block;
  v20.receiver = self;
  v20.super_class = _SBFluidSwitcherSystemApertureSuppressionAssertion;
  v11 = [(_SBFluidSwitcherSystemApertureSuppressionAssertion *)&v20 init];
  v12 = v11;
  if (v11)
  {
    v11->_isValid = 1;
    v13 = [dCopy copy];
    sceneID = v12->_sceneID;
    v12->_sceneID = v13;

    v15 = [iDCopy copy];
    bundleID = v12->_bundleID;
    v12->_bundleID = v15;

    v17 = [blockCopy copy];
    invalidationBlock = v12->_invalidationBlock;
    v12->_invalidationBlock = v17;
  }

  return v12;
}

- (void)dealloc
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SBFluidSwitcherGestureManager.m" lineNumber:4676 description:@"Must be invalidated before deallocation"];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = _SBFluidSwitcherSystemApertureSuppressionAssertion;
  v4 = [(_SBFluidSwitcherSystemApertureSuppressionAssertion *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ sceneID: %@ bundleID: %@", v4, self->_sceneID, self->_bundleID];

  return v5;
}

- (void)invalidate
{
  self->_isValid = 0;
  invalidationBlock = self->_invalidationBlock;
  if (invalidationBlock)
  {
    invalidationBlock[2](invalidationBlock, self);
    v4 = self->_invalidationBlock;
    self->_invalidationBlock = 0;
  }
}

@end