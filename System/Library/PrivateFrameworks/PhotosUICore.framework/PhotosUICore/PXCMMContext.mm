@interface PXCMMContext
+ (id)new;
- (PXCMMActionManager)actionManager;
- (PXCMMContext)init;
- (PXCMMContext)initWithAssetsDataSourceManager:(id)manager mediaProvider:(id)provider activityType:(unint64_t)type;
- (id)createSession;
@end

@implementation PXCMMContext

- (PXCMMActionManager)actionManager
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMContext.m" lineNumber:39 description:{@"Method %s is a responsibility of subclass %@", "-[PXCMMContext actionManager]", v6}];

  abort();
}

- (id)createSession
{
  v2 = [[PXCMMSession alloc] initWithContext:self];

  return v2;
}

- (PXCMMContext)initWithAssetsDataSourceManager:(id)manager mediaProvider:(id)provider activityType:(unint64_t)type
{
  managerCopy = manager;
  providerCopy = provider;
  v14.receiver = self;
  v14.super_class = PXCMMContext;
  v11 = [(PXCMMContext *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_dataSourceManager, manager);
    objc_storeStrong(&v12->_mediaProvider, provider);
    v12->_activityType = type;
  }

  return v12;
}

- (PXCMMContext)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMContext.m" lineNumber:16 description:{@"%s is not available as initializer", "-[PXCMMContext init]"}];

  abort();
}

+ (id)new
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMContext.m" lineNumber:20 description:{@"%s is not available as initializer", "+[PXCMMContext new]"}];

  abort();
}

@end