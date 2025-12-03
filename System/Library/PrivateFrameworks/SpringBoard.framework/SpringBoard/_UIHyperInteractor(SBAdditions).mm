@interface _UIHyperInteractor(SBAdditions)
- (BOOL)sbpip_isRubberBanding;
- (uint64_t)sbpip_isInteractive;
- (void)sbpip_isRubberBanding;
- (void)sbpip_setInteractive:()SBAdditions;
@end

@implementation _UIHyperInteractor(SBAdditions)

- (BOOL)sbpip_isRubberBanding
{
  if ([self _dimensions] != 2)
  {
    [(_UIHyperInteractor(SBAdditions) *)a2 sbpip_isRubberBanding];
  }

  v4 = *[self _translation];
  v5 = *([self _translation] + 8);
  v6 = v4 + *[self _unconstrainedPoint];
  v7 = v5 + *([self _unconstrainedPoint] + 8);
  v8 = *[self _closestPoint];
  return v7 != *([self _closestPoint] + 8) || v6 != v8;
}

- (void)sbpip_setInteractive:()SBAdditions
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  objc_setAssociatedObject(self, &kSBPIPInteractionControllerHyperInteractorIsDirtyAssociationKey, v2, 1);
}

- (uint64_t)sbpip_isInteractive
{
  v1 = objc_getAssociatedObject(self, &kSBPIPInteractionControllerHyperInteractorIsDirtyAssociationKey);
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (void)sbpip_isRubberBanding
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"_UIHyperInteractor_SBAdditions.m" lineNumber:17 description:@"This _UIHyperInteractor category can only handle 2D interactors."];
}

@end