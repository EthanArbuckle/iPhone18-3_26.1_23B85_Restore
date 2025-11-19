@interface PLAnalysisCoordinatorStep
- (PLAnalysisCoordinatorStep)initWithLibraryServicesManager:(id)a3 parentTaskID:(id)a4;
@end

@implementation PLAnalysisCoordinatorStep

- (PLAnalysisCoordinatorStep)initWithLibraryServicesManager:(id)a3 parentTaskID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PLAnalysisCoordinatorStep;
  v9 = [(PLAnalysisCoordinatorStep *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_libraryServicesManager, a3);
    objc_storeStrong(&v10->_parentTaskID, a4);
  }

  return v10;
}

@end