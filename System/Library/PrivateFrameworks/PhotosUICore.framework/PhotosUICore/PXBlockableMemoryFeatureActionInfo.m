@interface PXBlockableMemoryFeatureActionInfo
- (PXBlockableMemoryFeatureActionInfo)init;
- (PXBlockableMemoryFeatureActionInfo)initWithActionType:(id)a3 localizedTitle:(id)a4;
@end

@implementation PXBlockableMemoryFeatureActionInfo

- (PXBlockableMemoryFeatureActionInfo)initWithActionType:(id)a3 localizedTitle:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = PXBlockableMemoryFeatureActionInfo;
  v9 = [(PXBlockableMemoryFeatureActionInfo *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_actionType, a3);
    v11 = [v8 copy];
    localizedTitle = v10->_localizedTitle;
    v10->_localizedTitle = v11;
  }

  return v10;
}

- (PXBlockableMemoryFeatureActionInfo)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXBlockableMemoryFeatureActionInfo.m" lineNumber:15 description:{@"%s is not available as initializer", "-[PXBlockableMemoryFeatureActionInfo init]"}];

  abort();
}

@end