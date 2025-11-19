@interface PFStoryConcreteAutoEditDecisionList
- (BOOL)isEqualToAutoEditDecisionList:(id)a3;
- (NSString)diagnosticDescription;
- (PFStoryConcreteAutoEditDecisionList)initWithSongAssetIdentifier:(id)a3 clips:(id)a4;
- (id)clipAtIndex:(int64_t)a3;
- (int64_t)numberOfClips;
@end

@implementation PFStoryConcreteAutoEditDecisionList

- (BOOL)isEqualToAutoEditDecisionList:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    goto LABEL_11;
  }

  v5 = [(PFStoryConcreteAutoEditDecisionList *)self songAssetIdentifier];
  v6 = [(PFStoryConcreteAutoEditDecisionList *)v4 songAssetIdentifier];
  v7 = [v5 isEqual:v6];

  if (!v7 || (v8 = [(PFStoryConcreteAutoEditDecisionList *)self numberOfClips], v8 != [(PFStoryConcreteAutoEditDecisionList *)v4 numberOfClips]))
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
    v12 = [(PFStoryConcreteAutoEditDecisionList *)v4 clipAtIndex:v10];
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

- (id)clipAtIndex:(int64_t)a3
{
  v4 = [(PFStoryConcreteAutoEditDecisionList *)self clips];
  v5 = [v4 objectAtIndexedSubscript:a3];

  return v5;
}

- (int64_t)numberOfClips
{
  v2 = [(PFStoryConcreteAutoEditDecisionList *)self clips];
  v3 = [v2 count];

  return v3;
}

- (PFStoryConcreteAutoEditDecisionList)initWithSongAssetIdentifier:(id)a3 clips:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = PFStoryConcreteAutoEditDecisionList;
  v8 = [(PFStoryConcreteAutoEditDecisionList *)&v13 init];
  songAssetIdentifier = v8->_songAssetIdentifier;
  v8->_songAssetIdentifier = v6;
  v10 = v6;

  clips = v8->_clips;
  v8->_clips = v7;

  return v8;
}

@end