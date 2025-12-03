@interface PERotateAction
- (void)applyToLoadResult:(id)result completion:(id)completion;
@end

@implementation PERotateAction

- (void)applyToLoadResult:(id)result completion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  completionCopy = completion;
  v8 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    asset = [resultCopy asset];
    uuid = [asset uuid];
    *buf = 138543362;
    v16 = uuid;
    _os_log_impl(&dword_25E6E9000, v8, OS_LOG_TYPE_DEFAULT, "PERotateAction: applyToLoadResult on asset: %{public}@", buf, 0xCu);
  }

  compositionController = [resultCopy compositionController];
  adjustmentConstants = [compositionController adjustmentConstants];
  pIOrientationAdjustmentKey = [adjustmentConstants PIOrientationAdjustmentKey];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __47__PERotateAction_applyToLoadResult_completion___block_invoke;
  v14[3] = &unk_279A30458;
  v14[4] = self;
  [compositionController modifyAdjustmentWithKey:pIOrientationAdjustmentKey modificationBlock:v14];

  completionCopy[2](completionCopy, 1);
}

void __47__PERotateAction_applyToLoadResult_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 orientation];
  [*(a1 + 32) rotateDirection];
  [v3 setOrientation:NUOrientationConcat()];
}

@end