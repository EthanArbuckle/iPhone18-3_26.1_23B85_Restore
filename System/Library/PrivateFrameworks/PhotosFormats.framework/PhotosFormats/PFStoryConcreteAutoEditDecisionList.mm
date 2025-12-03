@interface PFStoryConcreteAutoEditDecisionList
- (BOOL)isEqualToAutoEditDecisionList:(id)list;
- (NSString)diagnosticDescription;
- (PFStoryConcreteAutoEditDecisionList)initWithSongAssetIdentifier:(id)identifier clips:(id)clips;
- (id)clipAtIndex:(int64_t)index;
- (int64_t)numberOfClips;
@end

@implementation PFStoryConcreteAutoEditDecisionList

- (BOOL)isEqualToAutoEditDecisionList:(id)list
{
  listCopy = list;
  if (listCopy == self)
  {
    goto LABEL_11;
  }

  songAssetIdentifier = [(PFStoryConcreteAutoEditDecisionList *)self songAssetIdentifier];
  songAssetIdentifier2 = [(PFStoryConcreteAutoEditDecisionList *)listCopy songAssetIdentifier];
  v7 = [songAssetIdentifier isEqual:songAssetIdentifier2];

  if (!v7 || (v8 = [(PFStoryConcreteAutoEditDecisionList *)self numberOfClips], v8 != [(PFStoryConcreteAutoEditDecisionList *)listCopy numberOfClips]))
  {
    LOBYTE(v13) = 0;
    goto LABEL_12;
  }

  v9 = v8 - 1;
  if (v8 < 1)
  {
LABEL_11:
    LOBYTE(v13) = 1;
    goto LABEL_12;
  }

  v10 = 0;
  do
  {
    v11 = [(PFStoryConcreteAutoEditDecisionList *)self clipAtIndex:v10];
    v12 = [(PFStoryConcreteAutoEditDecisionList *)listCopy clipAtIndex:v10];
    v13 = [v11 isEqualToClip:v12];

    if (!v13)
    {
      break;
    }
  }

  while (v9 != v10++);
LABEL_12:

  return v13;
}

- (NSString)diagnosticDescription
{
  v3 = objc_alloc_init(PFStoryRecipeArchiver);
  v4 = [(PFStoryRecipeArchiver *)v3 archivedJSONObjectWithAutoEditDecisionList:self];
  v5 = [v4 description];

  return v5;
}

- (id)clipAtIndex:(int64_t)index
{
  clips = [(PFStoryConcreteAutoEditDecisionList *)self clips];
  v5 = [clips objectAtIndexedSubscript:index];

  return v5;
}

- (int64_t)numberOfClips
{
  clips = [(PFStoryConcreteAutoEditDecisionList *)self clips];
  v3 = [clips count];

  return v3;
}

- (PFStoryConcreteAutoEditDecisionList)initWithSongAssetIdentifier:(id)identifier clips:(id)clips
{
  identifierCopy = identifier;
  clipsCopy = clips;
  v13.receiver = self;
  v13.super_class = PFStoryConcreteAutoEditDecisionList;
  v8 = [(PFStoryConcreteAutoEditDecisionList *)&v13 init];
  songAssetIdentifier = v8->_songAssetIdentifier;
  v8->_songAssetIdentifier = identifierCopy;
  v10 = identifierCopy;

  clips = v8->_clips;
  v8->_clips = clipsCopy;

  return v8;
}

@end