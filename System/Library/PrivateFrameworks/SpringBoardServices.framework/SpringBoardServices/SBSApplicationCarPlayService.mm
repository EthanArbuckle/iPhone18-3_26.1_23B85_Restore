@interface SBSApplicationCarPlayService
- (void)fetchApplicationIconInformationForBundleIdentifier:(id)identifier inVehicle:(id)vehicle withCompletion:(id)completion;
- (void)fetchIconStateForVehicleId:(id)id withCompletion:(id)completion;
@end

@implementation SBSApplicationCarPlayService

- (void)fetchIconStateForVehicleId:(id)id withCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__SBSApplicationCarPlayService_fetchIconStateForVehicleId_withCompletion___block_invoke;
    block[3] = &unk_1E735F148;
    v7 = completionCopy;
    dispatch_async(v5, block);
  }
}

- (void)fetchApplicationIconInformationForBundleIdentifier:(id)identifier inVehicle:(id)vehicle withCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v6 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __108__SBSApplicationCarPlayService_fetchApplicationIconInformationForBundleIdentifier_inVehicle_withCompletion___block_invoke;
    block[3] = &unk_1E735F148;
    v8 = completionCopy;
    dispatch_async(v6, block);
  }
}

void __108__SBSApplicationCarPlayService_fetchApplicationIconInformationForBundleIdentifier_inVehicle_withCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_new();
  (*(v1 + 16))(v1, v2);
}

@end