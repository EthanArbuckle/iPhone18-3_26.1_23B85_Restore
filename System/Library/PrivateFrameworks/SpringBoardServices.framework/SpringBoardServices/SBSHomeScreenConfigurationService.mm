@interface SBSHomeScreenConfigurationService
+ (void)beginConfigurationSessionWithInvalidationHandler:(id)a3 completion:(id)a4;
@end

@implementation SBSHomeScreenConfigurationService

+ (void)beginConfigurationSessionWithInvalidationHandler:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[SBSHomeScreenConfigurationServiceProxy alloc] initWithInvalidationHandler:v6];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __97__SBSHomeScreenConfigurationService_beginConfigurationSessionWithInvalidationHandler_completion___block_invoke;
  v10[3] = &unk_1E735F5A8;
  v11 = v7;
  v12 = v5;
  v8 = v5;
  v9 = v7;
  [v9 beginConfigurationSessionWithCompletion:v10];
}

@end