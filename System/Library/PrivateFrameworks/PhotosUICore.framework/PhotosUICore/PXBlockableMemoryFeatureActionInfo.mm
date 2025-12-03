@interface PXBlockableMemoryFeatureActionInfo
- (PXBlockableMemoryFeatureActionInfo)init;
- (PXBlockableMemoryFeatureActionInfo)initWithActionType:(id)type localizedTitle:(id)title;
@end

@implementation PXBlockableMemoryFeatureActionInfo

- (PXBlockableMemoryFeatureActionInfo)initWithActionType:(id)type localizedTitle:(id)title
{
  typeCopy = type;
  titleCopy = title;
  v14.receiver = self;
  v14.super_class = PXBlockableMemoryFeatureActionInfo;
  v9 = [(PXBlockableMemoryFeatureActionInfo *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_actionType, type);
    v11 = [titleCopy copy];
    localizedTitle = v10->_localizedTitle;
    v10->_localizedTitle = v11;
  }

  return v10;
}

- (PXBlockableMemoryFeatureActionInfo)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXBlockableMemoryFeatureActionInfo.m" lineNumber:15 description:{@"%s is not available as initializer", "-[PXBlockableMemoryFeatureActionInfo init]"}];

  abort();
}

@end