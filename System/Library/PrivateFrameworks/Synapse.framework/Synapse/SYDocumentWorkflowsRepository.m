@interface SYDocumentWorkflowsRepository
- (SYDocumentWorkflowsRepository)init;
@end

@implementation SYDocumentWorkflowsRepository

- (SYDocumentWorkflowsRepository)init
{
  v6.receiver = self;
  v6.super_class = SYDocumentWorkflowsRepository;
  v2 = [(SYDocumentWorkflowsRepository *)&v6 init];
  if (v2)
  {
    [SYDocumentWorkflowsCoreDataStore removePersistentStoreWithError:0];
    v3 = objc_alloc_init(SYDocumentWorkflowsDisabledDataStore);
    persistentStore = v2->_persistentStore;
    v2->_persistentStore = v3;
  }

  return v2;
}

@end