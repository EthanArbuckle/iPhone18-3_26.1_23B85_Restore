@interface SXComponentInsertionLayoutProcessor
- (SXComponentInsertionLayoutProcessor)initWithComponentInsertionManager:(id)manager;
- (void)processLayoutTask:(id)task layoutBlueprint:(id)blueprint DOMObjectProvider:(id)provider;
@end

@implementation SXComponentInsertionLayoutProcessor

- (SXComponentInsertionLayoutProcessor)initWithComponentInsertionManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = SXComponentInsertionLayoutProcessor;
  v6 = [(SXComponentInsertionLayoutProcessor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_componentInsertionManager, manager);
  }

  return v7;
}

- (void)processLayoutTask:(id)task layoutBlueprint:(id)blueprint DOMObjectProvider:(id)provider
{
  taskCopy = task;
  blueprintCopy = blueprint;
  providerCopy = provider;
  if (blueprintCopy)
  {
    if ([blueprintCopy isComplete])
    {
      layoutOptions = [(SXComponentInsertionLayoutProcessor *)self layoutOptions];
      options = [taskCopy options];
      v12 = [layoutOptions isEqual:options];

      if ((v12 & 1) == 0)
      {
        componentInsertionManager = [(SXComponentInsertionLayoutProcessor *)self componentInsertionManager];
        v14 = [componentInsertionManager insertComponentsForBlueprint:blueprintCopy DOMObjectProvider:providerCopy];

        [providerCopy setDOM:v14];
        options2 = [taskCopy options];
        [(SXComponentInsertionLayoutProcessor *)self setLayoutOptions:options2];
      }
    }
  }
}

@end