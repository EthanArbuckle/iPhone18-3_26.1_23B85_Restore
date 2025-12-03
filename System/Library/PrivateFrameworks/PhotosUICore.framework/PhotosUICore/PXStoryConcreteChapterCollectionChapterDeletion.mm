@interface PXStoryConcreteChapterCollectionChapterDeletion
- (PXStoryConcreteChapterCollectionChapterDeletion)init;
- (PXStoryConcreteChapterCollectionChapterDeletion)initWithDeletedChapterIdentifier:(id)identifier;
@end

@implementation PXStoryConcreteChapterCollectionChapterDeletion

- (PXStoryConcreteChapterCollectionChapterDeletion)initWithDeletedChapterIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = PXStoryConcreteChapterCollectionChapterDeletion;
  v6 = [(PXStoryConcreteChapterCollectionChapterDeletion *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_deletedChapterIdentifier, identifier);
  }

  return v7;
}

- (PXStoryConcreteChapterCollectionChapterDeletion)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryChapterCollectionEdit.m" lineNumber:77 description:{@"%s is not available as initializer", "-[PXStoryConcreteChapterCollectionChapterDeletion init]"}];

  abort();
}

@end