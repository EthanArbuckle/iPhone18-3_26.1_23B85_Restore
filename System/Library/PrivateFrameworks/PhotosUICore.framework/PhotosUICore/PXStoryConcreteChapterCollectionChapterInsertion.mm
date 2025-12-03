@interface PXStoryConcreteChapterCollectionChapterInsertion
- (PXStoryConcreteChapterCollectionChapterInsertion)init;
- (PXStoryConcreteChapterCollectionChapterInsertion)initWithFirstAsset:(id)asset chapterConfiguration:(id)configuration;
@end

@implementation PXStoryConcreteChapterCollectionChapterInsertion

- (PXStoryConcreteChapterCollectionChapterInsertion)initWithFirstAsset:(id)asset chapterConfiguration:(id)configuration
{
  assetCopy = asset;
  configurationCopy = configuration;
  v14.receiver = self;
  v14.super_class = PXStoryConcreteChapterCollectionChapterInsertion;
  v9 = [(PXStoryConcreteChapterCollectionChapterInsertion *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_firstAsset, asset);
    v11 = [configurationCopy copy];
    chapterConfiguration = v10->_chapterConfiguration;
    v10->_chapterConfiguration = v11;
  }

  return v10;
}

- (PXStoryConcreteChapterCollectionChapterInsertion)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryChapterCollectionEdit.m" lineNumber:47 description:{@"%s is not available as initializer", "-[PXStoryConcreteChapterCollectionChapterInsertion init]"}];

  abort();
}

@end