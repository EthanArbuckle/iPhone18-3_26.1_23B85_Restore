@interface PXStoryConcreteChapterCollectionChapterModification
- (PXStoryConcreteChapterCollectionChapterModification)init;
- (PXStoryConcreteChapterCollectionChapterModification)initWithEditedChapterIdentifier:(id)a3 chapterChangeRequest:(id)a4;
@end

@implementation PXStoryConcreteChapterCollectionChapterModification

- (PXStoryConcreteChapterCollectionChapterModification)initWithEditedChapterIdentifier:(id)a3 chapterChangeRequest:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = PXStoryConcreteChapterCollectionChapterModification;
  v9 = [(PXStoryConcreteChapterCollectionChapterModification *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_editedChapterIdentifier, a3);
    v11 = [v8 copy];
    chapterChangeRequest = v10->_chapterChangeRequest;
    v10->_chapterChangeRequest = v11;
  }

  return v10;
}

- (PXStoryConcreteChapterCollectionChapterModification)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryChapterCollectionEdit.m" lineNumber:17 description:{@"%s is not available as initializer", "-[PXStoryConcreteChapterCollectionChapterModification init]"}];

  abort();
}

@end