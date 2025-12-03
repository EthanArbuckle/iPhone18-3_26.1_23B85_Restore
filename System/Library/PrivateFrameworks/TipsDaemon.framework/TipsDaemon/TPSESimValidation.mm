@interface TPSESimValidation
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSESimValidation

- (void)validateWithCompletion:(id)completion
{
  v4 = MEMORY[0x277CF96D8];
  completionCopy = completion;
  sharedManager = [v4 sharedManager];
  v7 = sharedManager;
  if (sharedManager)
  {
    (*(completionCopy + 2))(completionCopy, ([sharedManager getSupportedFlowTypes] == 0) ^ -[TPSTargetingValidation BOOLValue](self, "BOOLValue"), 0);
    v8 = completionCopy;
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:2 userInfo:0];
    targeting = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(targeting, OS_LOG_TYPE_DEBUG))
    {
      [(TPSESimValidation *)self validateWithCompletion:targeting];
    }

    (*(completionCopy + 2))(completionCopy, 0, v8);
  }
}

- (void)validateWithCompletion:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 name];
  v5 = 138412290;
  v6 = v3;
  _os_log_debug_impl(&dword_232D6F000, a2, OS_LOG_TYPE_DEBUG, "%@ - error initializing cellular plan manager", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end