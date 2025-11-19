@interface PXStoryExportAspectRatio
+ (id)defaultAspectRatioWithFullSizePlayerAspect:(id)a3 orientation:(id)a4;
+ (id)pickableAspectRatiosForOrientation:(id)a3 fullSizePlayerAspect:(id)a4;
+ (id)standardAspectRatioForSize:(CGSize)a3;
+ (void)setDefaultAspectRatio:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CGSize)sizeWithMinDimension:(double)a3;
- (CGSize)sizeWithMinDimension:(double)a3 orientation:(id)a4;
- (NSString)localizedTitle;
- (PXStoryExportAspectRatio)initWithAspectType:(int64_t)a3;
- (PXStoryExportAspectRatio)initWithAspectType:(int64_t)a3 ratio:(double)a4;
- (id)_userDefaultIdentifier;
- (id)adjustedForOrientation:(id)a3;
@end

@implementation PXStoryExportAspectRatio

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PXStoryExportAspectRatio *)self type];
      v7 = [(PXStoryExportAspectRatio *)v5 type];

      v8 = v6 == v7;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (NSString)localizedTitle
{
  v4 = [(PXStoryExportAspectRatio *)self type];
  if (v4 <= 1)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_16;
      }

      v6 = 16;
      v7 = 9;
    }

    else
    {
      v6 = 9;
      v7 = 16;
    }
  }

  else
  {
    switch(v4)
    {
      case 2:
        v6 = 3;
        v7 = 4;
        break;
      case 3:
        v6 = 4;
        v7 = 3;
        break;
      case 4:
        v5 = PXLocalizedStringFromTable(@"PHOTOS_MEMORIES_EXPORT_ASPECT_RATIO_OPTION_1_1", @"PhotosUICore");
        goto LABEL_13;
      default:
LABEL_16:
        v11 = [MEMORY[0x1E696AAA8] currentHandler];
        [v11 handleFailureInMethod:a2 object:self file:@"PXStoryExportAspectRatio.m" lineNumber:214 description:@"Code which should be unreachable has been reached"];

        abort();
    }
  }

  v8 = MEMORY[0x1E696AEC0];
  v9 = PXLocalizedStringFromTable(@"PHOTOS_MEMORIES_EXPORT_ASPECT_RATIO_OPTION_%td_%td", @"PhotosUICore");
  v5 = [v8 localizedStringWithFormat:v9, v7, v6];

LABEL_13:

  return v5;
}

- (id)adjustedForOrientation:(id)a3
{
  v5 = a3;
  v6 = [(PXStoryExportAspectRatio *)self orientation];
  v7 = [v6 isEqual:v5];

  if (v7)
  {
    v8 = self;
  }

  else
  {
    v9 = [(PXStoryExportAspectRatio *)self type];
    if (v9 >= 4)
    {
      if (v9 != 4)
      {
        v14 = [MEMORY[0x1E696AAA8] currentHandler];
        [v14 handleFailureInMethod:a2 object:self file:@"PXStoryExportAspectRatio.m" lineNumber:183 description:@"Code which should be unreachable has been reached"];

        abort();
      }

      v8 = -[PXStoryExportAspectRatio initWithAspectType:]([PXStoryExportAspectRatio alloc], "initWithAspectType:", [v5 type] != 0);
    }

    else
    {
      [(PXStoryExportAspectRatio *)self sizeWithMinDimension:v5 orientation:1080.0];
      v8 = [objc_opt_class() standardAspectRatioForSize:{v10, v11}];
    }
  }

  v12 = v8;

  return v12;
}

- (CGSize)sizeWithMinDimension:(double)a3
{
  v5 = [(PXStoryExportAspectRatio *)self orientation];
  [(PXStoryExportAspectRatio *)self sizeWithMinDimension:v5 orientation:a3];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)sizeWithMinDimension:(double)a3 orientation:(id)a4
{
  v5 = a4;
  [(PXStoryExportAspectRatio *)self ratio];
  [v5 type];

  PXSizeRound();
}

- (PXStoryExportAspectRatio)initWithAspectType:(int64_t)a3 ratio:(double)a4
{
  v8.receiver = self;
  v8.super_class = PXStoryExportAspectRatio;
  v6 = [(PXStoryExportAspectRatio *)&v8 init];
  if (v6)
  {
    v6->_type = a3;
    v6->_ratio = a4;
    PXFloatApproximatelyEqualToFloat();
  }

  return 0;
}

- (PXStoryExportAspectRatio)initWithAspectType:(int64_t)a3
{
  if (a3 >= 5)
  {
    v14 = v4;
    v15 = v3;
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXStoryExportAspectRatio.m" lineNumber:110 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v9 = dbl_1A53821B8[a3];

  return [(PXStoryExportAspectRatio *)self initWithAspectType:v9 ratio:?];
}

PXStoryExportAspectRatio *__43__PXStoryExportAspectRatio_standardAspects__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [PXStoryExportAspectRatio alloc];
  v4 = [v2 integerValue];

  v5 = [(PXStoryExportAspectRatio *)v3 initWithAspectType:v4];

  return v5;
}

+ (id)pickableAspectRatiosForOrientation:(id)a3 fullSizePlayerAspect:(id)a4
{
  v6 = a3;
  v7 = a4;
  [a1 standardAspects];
  objc_claimAutoreleasedReturnValue();
  v6;
  PXFilter();
}

uint64_t __84__PXStoryExportAspectRatio_pickableAspectRatiosForOrientation_fullSizePlayerAspect___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 orientation];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

+ (id)standardAspectRatioForSize:(CGSize)a3
{
  v7 = *MEMORY[0x1E69E9840];
  memset(v5, 0, sizeof(v5));
  v3 = [a1 standardAspects];
  if ([v3 countByEnumeratingWithState:v5 objects:v6 count:16])
  {
    [**(&v5[0] + 1) ratio];
    PXFloatApproximatelyEqualToFloat();
  }

  return 0;
}

- (id)_userDefaultIdentifier
{
  v2 = [(PXStoryExportAspectRatio *)self type];
  if (v2 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E773D218[v2];
  }
}

+ (id)defaultAspectRatioWithFullSizePlayerAspect:(id)a3 orientation:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695E000] standardUserDefaults];
  v8 = [v7 stringForKey:@"StoryExportAspectRatio"];

  if (v8)
  {
    [objc_opt_class() standardAspects];
    objc_claimAutoreleasedReturnValue();
    v8;
    PXFind();
  }

  v9 = [[PXStoryExportAspectRatio alloc] initWithAspectType:0];
  v10 = [(PXStoryExportAspectRatio *)v9 adjustedForOrientation:v6];

  return v10;
}

uint64_t __96__PXStoryExportAspectRatio_UserDefault__defaultAspectRatioWithFullSizePlayerAspect_orientation___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 _userDefaultIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

+ (void)setDefaultAspectRatio:(id)a3
{
  v3 = MEMORY[0x1E695E000];
  v4 = a3;
  v6 = [v3 standardUserDefaults];
  v5 = [v4 _userDefaultIdentifier];

  [v6 setObject:v5 forKey:@"StoryExportAspectRatio"];
}

@end