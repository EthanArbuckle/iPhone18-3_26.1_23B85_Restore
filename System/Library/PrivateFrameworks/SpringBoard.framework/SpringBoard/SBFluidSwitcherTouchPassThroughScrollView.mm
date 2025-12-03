@interface SBFluidSwitcherTouchPassThroughScrollView
+ (BOOL)superclassRespondsToSetVelocityScaleFactor;
+ (BOOL)superclassRespondsToVelocityScaleFactor;
- (double)velocityScaleFactor;
- (void)setVelocityScaleFactor:(double)factor;
@end

@implementation SBFluidSwitcherTouchPassThroughScrollView

- (double)velocityScaleFactor
{
  if (![objc_opt_class() superclassRespondsToVelocityScaleFactor])
  {
    return 0.001;
  }

  v4.receiver = self;
  v4.super_class = SBFluidSwitcherTouchPassThroughScrollView;
  [(SBFluidSwitcherTouchPassThroughScrollView *)&v4 _velocityScaleFactor];
  return result;
}

+ (BOOL)superclassRespondsToVelocityScaleFactor
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__SBFluidSwitcherTouchPassThroughScrollView_superclassRespondsToVelocityScaleFactor__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (superclassRespondsToVelocityScaleFactor_once != -1)
  {
    dispatch_once(&superclassRespondsToVelocityScaleFactor_once, block);
  }

  return superclassRespondsToVelocityScaleFactor_superclassRespondsToVelocityScaleFactor;
}

+ (BOOL)superclassRespondsToSetVelocityScaleFactor
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__SBFluidSwitcherTouchPassThroughScrollView_superclassRespondsToSetVelocityScaleFactor__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (superclassRespondsToSetVelocityScaleFactor_once != -1)
  {
    dispatch_once(&superclassRespondsToSetVelocityScaleFactor_once, block);
  }

  return superclassRespondsToSetVelocityScaleFactor_superclassRespondsToSetVelocityScaleFactor;
}

uint64_t __84__SBFluidSwitcherTouchPassThroughScrollView_superclassRespondsToVelocityScaleFactor__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "superclass")];
  superclassRespondsToVelocityScaleFactor_superclassRespondsToVelocityScaleFactor = result;
  return result;
}

uint64_t __87__SBFluidSwitcherTouchPassThroughScrollView_superclassRespondsToSetVelocityScaleFactor__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "superclass")];
  superclassRespondsToSetVelocityScaleFactor_superclassRespondsToSetVelocityScaleFactor = result;
  return result;
}

- (void)setVelocityScaleFactor:(double)factor
{
  if ([objc_opt_class() superclassRespondsToSetVelocityScaleFactor])
  {
    v5.receiver = self;
    v5.super_class = SBFluidSwitcherTouchPassThroughScrollView;
    [(SBFluidSwitcherTouchPassThroughScrollView *)&v5 _setVelocityScaleFactor:factor];
  }
}

@end