@interface PEAutoEnhanceAction
- (void)applyToLoadResult:(id)result completion:(id)completion;
@end

@implementation PEAutoEnhanceAction

- (void)applyToLoadResult:(id)result completion:(id)completion
{
  completionCopy = completion;
  compositionController = [result compositionController];
  enabled = [(PEAutoEnhanceAction *)self enabled];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__PEAutoEnhanceAction_applyToLoadResult_completion___block_invoke;
  v10[3] = &unk_279A31028;
  v11 = completionCopy;
  v9 = completionCopy;
  [PEAutoEnhanceActionHelper applyAutoEnhance:compositionController replacesAffectedAdjustments:1 useCompositionIntensity:0 enabled:enabled completion:v10];
}

@end