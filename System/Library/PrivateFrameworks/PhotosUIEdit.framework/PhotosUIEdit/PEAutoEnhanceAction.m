@interface PEAutoEnhanceAction
- (void)applyToLoadResult:(id)a3 completion:(id)a4;
@end

@implementation PEAutoEnhanceAction

- (void)applyToLoadResult:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a3 compositionController];
  v8 = [(PEAutoEnhanceAction *)self enabled];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__PEAutoEnhanceAction_applyToLoadResult_completion___block_invoke;
  v10[3] = &unk_279A31028;
  v11 = v6;
  v9 = v6;
  [PEAutoEnhanceActionHelper applyAutoEnhance:v7 replacesAffectedAdjustments:1 useCompositionIntensity:0 enabled:v8 completion:v10];
}

@end