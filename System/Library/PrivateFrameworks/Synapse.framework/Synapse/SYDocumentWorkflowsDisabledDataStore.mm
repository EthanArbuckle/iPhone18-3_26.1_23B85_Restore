@interface SYDocumentWorkflowsDisabledDataStore
+ (id)_disabledRepositoryError;
- (BOOL)saveUserActivity:(id)a3 forRelatedUniqueIdentifier:(id)a4 sourceBundleIdentifier:(id)a5 error:(id *)a6;
- (id)fetchUserActivityWithRelatedUniqueIdentifier:(id)a3 error:(id *)a4;
@end

@implementation SYDocumentWorkflowsDisabledDataStore

+ (id)_disabledRepositoryError
{
  if (_disabledRepositoryError_onceToken != -1)
  {
    +[SYDocumentWorkflowsDisabledDataStore _disabledRepositoryError];
  }

  v3 = _disabledRepositoryError_error;

  return v3;
}

void __64__SYDocumentWorkflowsDisabledDataStore__disabledRepositoryError__block_invoke()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CCA9B8];
  v5 = *MEMORY[0x277CCA450];
  v6[0] = @"Repository is disabled.";
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v2 = [v0 errorWithDomain:@"com.apple.synapse" code:-129 userInfo:v1];
  v3 = _disabledRepositoryError_error;
  _disabledRepositoryError_error = v2;

  v4 = *MEMORY[0x277D85DE8];
}

- (id)fetchUserActivityWithRelatedUniqueIdentifier:(id)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = [objc_opt_class() _disabledRepositoryError];
  }

  return 0;
}

- (BOOL)saveUserActivity:(id)a3 forRelatedUniqueIdentifier:(id)a4 sourceBundleIdentifier:(id)a5 error:(id *)a6
{
  if (a6)
  {
    *a6 = [objc_opt_class() _disabledRepositoryError];
  }

  return 0;
}

@end