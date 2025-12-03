@interface SBSHomeScreenConfigurationService
+ (void)beginConfigurationSessionWithInvalidationHandler:(id)handler completion:(id)completion;
@end

@implementation SBSHomeScreenConfigurationService

+ (void)beginConfigurationSessionWithInvalidationHandler:(id)handler completion:(id)completion
{
  completionCopy = completion;
  handlerCopy = handler;
  v7 = [[SBSHomeScreenConfigurationServiceProxy alloc] initWithInvalidationHandler:handlerCopy];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __97__SBSHomeScreenConfigurationService_beginConfigurationSessionWithInvalidationHandler_completion___block_invoke;
  v10[3] = &unk_1E735F5A8;
  v11 = v7;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = v7;
  [v9 beginConfigurationSessionWithCompletion:v10];
}

@end