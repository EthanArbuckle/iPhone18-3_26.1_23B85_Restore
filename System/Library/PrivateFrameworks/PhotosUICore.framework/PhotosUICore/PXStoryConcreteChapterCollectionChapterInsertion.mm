@interface PXStoryConcreteChapterCollectionChapterInsertion
- (PXStoryConcreteChapterCollectionChapterInsertion)init;
- (PXStoryConcreteChapterCollectionChapterInsertion)initWithFirstAsset:(id)a3 chapterConfiguration:(id)a4;
@end

@implementation PXStoryConcreteChapterCollectionChapterInsertion

- (PXStoryConcreteChapterCollectionChapterInsertion)initWithFirstAsset:(id)a3 chapterConfiguration:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = PXStoryConcreteChapterCollectionChapterInsertion;
  v9 = [(PXStoryConcreteChapterCollectionChapterInsertion *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_firstAsset, a3);
    v11 = [v8 copy];
    chapterConfiguration = v10->_chapterConfiguration;
    v10->_chapterConfiguration = v11;
  }

  return v10;
}

- (PXStoryConcreteChapterCollectionChapterInsertion)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryChapterCollectionEdit.m" lineNumber:47 description:{@"%s is not available as initializer", "-[PXStoryConcreteChapterCollectionChapterInsertion init]"}];

  abort();
}

@end