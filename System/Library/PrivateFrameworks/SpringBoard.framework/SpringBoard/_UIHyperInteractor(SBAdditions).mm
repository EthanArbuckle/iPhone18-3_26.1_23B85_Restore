@interface _UIHyperInteractor(SBAdditions)
- (BOOL)sbpip_isRubberBanding;
- (uint64_t)sbpip_isInteractive;
- (void)sbpip_isRubberBanding;
- (void)sbpip_setInteractive:()SBAdditions;
@end

@implementation _UIHyperInteractor(SBAdditions)

- (BOOL)sbpip_isRubberBanding
{
  if ([a1 _dimensions] != 2)
  {
    [(_UIHyperInteractor(SBAdditions) *)a2 sbpip_isRubberBanding];
  }

  v4 = *[a1 _translation];
  v5 = *([a1 _translation] + 8);
  v6 = v4 + *[a1 _unconstrainedPoint];
  v7 = v5 + *([a1 _unconstrainedPoint] + 8);
  v8 = *[a1 _closestPoint];
  return v7 != *([a1 _closestPoint] + 8) || v6 != v8;
}

- (void)sbpip_setInteractive:()SBAdditions
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  objc_setAssociatedObject(a1, &kSBPIPInteractionControllerHyperInteractorIsDirtyAssociationKey, v2, 1);
}

- (uint64_t)sbpip_isInteractive
{
  v1 = objc_getAssociatedObject(a1, &kSBPIPInteractionControllerHyperInteractorIsDirtyAssociationKey);
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)sbpip_isRubberBanding
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_UIHyperInteractor_SBAdditions.m" lineNumber:17 description:@"This _UIHyperInteractor category can only handle 2D interactors."];
}

@end