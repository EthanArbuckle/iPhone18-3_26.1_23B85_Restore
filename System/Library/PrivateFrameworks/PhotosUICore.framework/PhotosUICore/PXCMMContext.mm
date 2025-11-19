@interface PXCMMContext
+ (id)new;
- (PXCMMActionManager)actionManager;
- (PXCMMContext)init;
- (PXCMMContext)initWithAssetsDataSourceManager:(id)a3 mediaProvider:(id)a4 activityType:(unint64_t)a5;
- (id)createSession;
@end

@implementation PXCMMContext

- (PXCMMActionManager)actionManager
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXCMMContext.m" lineNumber:39 description:{@"Method %s is a responsibility of subclass %@", "-[PXCMMContext actionManager]", v6}];

  abort();
}

- (id)createSession
{
  v2 = [[PXCMMSession alloc] initWithContext:self];

  return v2;
}

- (PXCMMContext)initWithAssetsDataSourceManager:(id)a3 mediaProvider:(id)a4 activityType:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = PXCMMContext;
  v11 = [(PXCMMContext *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_dataSourceManager, a3);
    objc_storeStrong(&v12->_mediaProvider, a4);
    v12->_activityType = a5;
  }

  return v12;
}

- (PXCMMContext)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXCMMContext.m" lineNumber:16 description:{@"%s is not available as initializer", "-[PXCMMContext init]"}];

  abort();
}

+ (id)new
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"PXCMMContext.m" lineNumber:20 description:{@"%s is not available as initializer", "+[PXCMMContext new]"}];

  abort();
}

@end