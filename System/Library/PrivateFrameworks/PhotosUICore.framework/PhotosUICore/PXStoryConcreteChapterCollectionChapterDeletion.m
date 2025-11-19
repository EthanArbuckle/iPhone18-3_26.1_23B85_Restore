@interface PXStoryConcreteChapterCollectionChapterDeletion
- (PXStoryConcreteChapterCollectionChapterDeletion)init;
- (PXStoryConcreteChapterCollectionChapterDeletion)initWithDeletedChapterIdentifier:(id)a3;
@end

@implementation PXStoryConcreteChapterCollectionChapterDeletion

- (PXStoryConcreteChapterCollectionChapterDeletion)initWithDeletedChapterIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXStoryConcreteChapterCollectionChapterDeletion;
  v6 = [(PXStoryConcreteChapterCollectionChapterDeletion *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_deletedChapterIdentifier, a3);
  }

  return v7;
}

- (PXStoryConcreteChapterCollectionChapterDeletion)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryChapterCollectionEdit.m" lineNumber:77 description:{@"%s is not available as initializer", "-[PXStoryConcreteChapterCollectionChapterDeletion init]"}];

  abort();
}

@end