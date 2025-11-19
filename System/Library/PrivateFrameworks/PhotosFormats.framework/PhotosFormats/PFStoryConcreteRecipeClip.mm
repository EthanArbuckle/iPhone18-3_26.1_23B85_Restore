@interface PFStoryConcreteRecipeClip
- (BOOL)isEqualToClip:(id)a3;
- (NSString)diagnosticDescription;
- (PFStoryConcreteRecipeClip)initWithAssetIdentifier:(id)a3 playbackStyle:(int64_t)a4 minimumDuration:(id *)a5 idealDuration:(id *)a6 maximumDuration:(id *)a7 videoCueOffset:(id *)a8 motionStyle:(int64_t)a9 transition:(int64_t)a10;
@end

@implementation PFStoryConcreteRecipeClip

- (BOOL)isEqualToClip:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    v5 = [(PFStoryConcreteRecipeClip *)self assetIdentifier];
    v6 = [(PFStoryConcreteRecipeClip *)v4 assetIdentifier];
    v7 = [v5 isEqual:v6];

    if (!v7)
    {
      goto LABEL_23;
    }

    v8 = [(PFStoryConcreteRecipeClip *)self playbackStyle];
    if (v8 != [(PFStoryConcreteRecipeClip *)v4 playbackStyle])
    {
      goto LABEL_23;
    }

    [(PFStoryConcreteRecipeClip *)self minimumDuration];
    if (v4)
    {
      [(PFStoryConcreteRecipeClip *)v4 minimumDuration];
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
    if (v4)
    {
      [(PFStoryConcreteRecipeClip *)v4 idealDuration];
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
    if (v4)
    {
      [(PFStoryConcreteRecipeClip *)v4 maximumDuration];
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
    if (v4)
    {
      [(PFStoryConcreteRecipeClip *)v4 videoCueOffset];
    }

    else
    {
      memset(&v13, 0, sizeof(v13));
    }

    if (CMTimeCompare(&time1, &v13) || (v10 = [(PFStoryConcreteRecipeClip *)self motionStyle], v10 != [(PFStoryConcreteRecipeClip *)v4 motionStyle]))
    {
LABEL_23:
      v9 = 0;
    }

    else
    {
      v11 = [(PFStoryConcreteRecipeClip *)self transition];
      v9 = v11 == [(PFStoryConcreteRecipeClip *)v4 transition];
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

- (PFStoryConcreteRecipeClip)initWithAssetIdentifier:(id)a3 playbackStyle:(int64_t)a4 minimumDuration:(id *)a5 idealDuration:(id *)a6 maximumDuration:(id *)a7 videoCueOffset:(id *)a8 motionStyle:(int64_t)a9 transition:(int64_t)a10
{
  v16 = a3;
  v24.receiver = self;
  v24.super_class = PFStoryConcreteRecipeClip;
  v17 = [(PFStoryConcreteRecipeClip *)&v24 init];
  v18 = *(v17 + 1);
  *(v17 + 1) = v16;

  *(v17 + 2) = a4;
  v19 = *&a5->var0;
  *(v17 + 5) = a5->var3;
  *(v17 + 24) = v19;
  v20 = *&a6->var0;
  *(v17 + 8) = a6->var3;
  *(v17 + 3) = v20;
  v21 = *&a7->var0;
  *(v17 + 11) = a7->var3;
  *(v17 + 72) = v21;
  var3 = a8->var3;
  *(v17 + 6) = *&a8->var0;
  *(v17 + 14) = var3;
  *(v17 + 15) = a9;
  *(v17 + 16) = a10;
  return v17;
}

@end