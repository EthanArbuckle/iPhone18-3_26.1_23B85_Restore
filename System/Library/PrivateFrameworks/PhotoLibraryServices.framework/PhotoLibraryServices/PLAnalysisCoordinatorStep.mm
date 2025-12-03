@interface PLAnalysisCoordinatorStep
- (PLAnalysisCoordinatorStep)initWithLibraryServicesManager:(id)manager parentTaskID:(id)d;
@end

@implementation PLAnalysisCoordinatorStep

- (PLAnalysisCoordinatorStep)initWithLibraryServicesManager:(id)manager parentTaskID:(id)d
{
  managerCopy = manager;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = PLAnalysisCoordinatorStep;
  v9 = [(PLAnalysisCoordinatorStep *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_libraryServicesManager, manager);
    objc_storeStrong(&v10->_parentTaskID, d);
  }

  return v10;
}

@end