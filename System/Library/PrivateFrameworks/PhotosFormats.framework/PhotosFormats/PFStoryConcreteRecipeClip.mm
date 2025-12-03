@interface PFStoryConcreteRecipeClip
- (BOOL)isEqualToClip:(id)clip;
- (NSString)diagnosticDescription;
- (PFStoryConcreteRecipeClip)initWithAssetIdentifier:(id)identifier playbackStyle:(int64_t)style minimumDuration:(id *)duration idealDuration:(id *)idealDuration maximumDuration:(id *)maximumDuration videoCueOffset:(id *)offset motionStyle:(int64_t)motionStyle transition:(int64_t)self0;
@end

@implementation PFStoryConcreteRecipeClip

- (BOOL)isEqualToClip:(id)clip
{
  clipCopy = clip;
  if (self == clipCopy)
  {
    v9 = 1;
  }

  else
  {
    assetIdentifier = [(PFStoryConcreteRecipeClip *)self assetIdentifier];
    assetIdentifier2 = [(PFStoryConcreteRecipeClip *)clipCopy assetIdentifier];
    v7 = [assetIdentifier isEqual:assetIdentifier2];

    if (!v7)
    {
      goto LABEL_23;
    }

    playbackStyle = [(PFStoryConcreteRecipeClip *)self playbackStyle];
    if (playbackStyle != [(PFStoryConcreteRecipeClip *)clipCopy playbackStyle])
    {
      goto LABEL_23;
    }

    [(PFStoryConcreteRecipeClip *)self minimumDuration];
    if (clipCopy)
    {
      [(PFStoryConcreteRecipeClip *)clipCopy minimumDuration];
    }

    else
    {
      memset(&v13, 0, sizeof(v13));
    }

    if (CMTimeCompare(&time1, &v13))
    {
      goto LABEL_23;
    }

    [(PFStoryConcreteRecipeClip *)self idealDuration];
    if (clipCopy)
    {
      [(PFStoryConcreteRecipeClip *)clipCopy idealDuration];
    }

    else
    {
      memset(&v13, 0, sizeof(v13));
    }

    if (CMTimeCompare(&time1, &v13))
    {
      goto LABEL_23;
    }

    [(PFStoryConcreteRecipeClip *)self maximumDuration];
    if (clipCopy)
    {
      [(PFStoryConcreteRecipeClip *)clipCopy maximumDuration];
    }

    else
    {
      memset(&v13, 0, sizeof(v13));
    }

    if (CMTimeCompare(&time1, &v13))
    {
      goto LABEL_23;
    }

    [(PFStoryConcreteRecipeClip *)self videoCueOffset];
    if (clipCopy)
    {
      [(PFStoryConcreteRecipeClip *)clipCopy videoCueOffset];
    }

    else
    {
      memset(&v13, 0, sizeof(v13));
    }

    if (CMTimeCompare(&time1, &v13) || (v10 = [(PFStoryConcreteRecipeClip *)self motionStyle], v10 != [(PFStoryConcreteRecipeClip *)clipCopy motionStyle]))
    {
LABEL_23:
      v9 = 0;
    }

    else
    {
      transition = [(PFStoryConcreteRecipeClip *)self transition];
      v9 = transition == [(PFStoryConcreteRecipeClip *)clipCopy transition];
    }
  }

  return v9;
}

- (NSString)diagnosticDescription
{
  v3 = objc_alloc_init(PFStoryRecipeArchiver);
  v4 = [(PFStoryRecipeArchiver *)v3 archivedJSONObjectWithClip:self];
  v5 = [v4 description];

  return v5;
}

- (PFStoryConcreteRecipeClip)initWithAssetIdentifier:(id)identifier playbackStyle:(int64_t)style minimumDuration:(id *)duration idealDuration:(id *)idealDuration maximumDuration:(id *)maximumDuration videoCueOffset:(id *)offset motionStyle:(int64_t)motionStyle transition:(int64_t)self0
{
  identifierCopy = identifier;
  v24.receiver = self;
  v24.super_class = PFStoryConcreteRecipeClip;
  v17 = [(PFStoryConcreteRecipeClip *)&v24 init];
  v18 = *(v17 + 1);
  *(v17 + 1) = identifierCopy;

  *(v17 + 2) = style;
  v19 = *&duration->var0;
  *(v17 + 5) = duration->var3;
  *(v17 + 24) = v19;
  v20 = *&idealDuration->var0;
  *(v17 + 8) = idealDuration->var3;
  *(v17 + 3) = v20;
  v21 = *&maximumDuration->var0;
  *(v17 + 11) = maximumDuration->var3;
  *(v17 + 72) = v21;
  var3 = offset->var3;
  *(v17 + 6) = *&offset->var0;
  *(v17 + 14) = var3;
  *(v17 + 15) = motionStyle;
  *(v17 + 16) = transition;
  return v17;
}

@end