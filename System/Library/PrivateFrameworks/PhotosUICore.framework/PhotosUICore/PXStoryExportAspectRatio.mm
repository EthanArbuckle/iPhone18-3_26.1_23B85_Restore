@interface PXStoryExportAspectRatio
+ (id)defaultAspectRatioWithFullSizePlayerAspect:(id)aspect orientation:(id)orientation;
+ (id)pickableAspectRatiosForOrientation:(id)orientation fullSizePlayerAspect:(id)aspect;
+ (id)standardAspectRatioForSize:(CGSize)size;
+ (void)setDefaultAspectRatio:(id)ratio;
- (BOOL)isEqual:(id)equal;
- (CGSize)sizeWithMinDimension:(double)dimension;
- (CGSize)sizeWithMinDimension:(double)dimension orientation:(id)orientation;
- (NSString)localizedTitle;
- (PXStoryExportAspectRatio)initWithAspectType:(int64_t)type;
- (PXStoryExportAspectRatio)initWithAspectType:(int64_t)type ratio:(double)ratio;
- (id)_userDefaultIdentifier;
- (id)adjustedForOrientation:(id)orientation;
@end

@implementation PXStoryExportAspectRatio

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      type = [(PXStoryExportAspectRatio *)self type];
      type2 = [(PXStoryExportAspectRatio *)v5 type];

      v8 = type == type2;
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
  type = [(PXStoryExportAspectRatio *)self type];
  if (type <= 1)
  {
    if (type)
    {
      if (type != 1)
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
    switch(type)
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
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryExportAspectRatio.m" lineNumber:214 description:@"Code which should be unreachable has been reached"];

        abort();
    }
  }

  v8 = MEMORY[0x1E696AEC0];
  v9 = PXLocalizedStringFromTable(@"PHOTOS_MEMORIES_EXPORT_ASPECT_RATIO_OPTION_%td_%td", @"PhotosUICore");
  v5 = [v8 localizedStringWithFormat:v9, v7, v6];

LABEL_13:

  return v5;
}

- (id)adjustedForOrientation:(id)orientation
{
  orientationCopy = orientation;
  orientation = [(PXStoryExportAspectRatio *)self orientation];
  v7 = [orientation isEqual:orientationCopy];

  if (v7)
  {
    selfCopy = self;
  }

  else
  {
    type = [(PXStoryExportAspectRatio *)self type];
    if (type >= 4)
    {
      if (type != 4)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryExportAspectRatio.m" lineNumber:183 description:@"Code which should be unreachable has been reached"];

        abort();
      }

      selfCopy = -[PXStoryExportAspectRatio initWithAspectType:]([PXStoryExportAspectRatio alloc], "initWithAspectType:", [orientationCopy type] != 0);
    }

    else
    {
      [(PXStoryExportAspectRatio *)self sizeWithMinDimension:orientationCopy orientation:1080.0];
      selfCopy = [objc_opt_class() standardAspectRatioForSize:{v10, v11}];
    }
  }

  v12 = selfCopy;

  return v12;
}

- (CGSize)sizeWithMinDimension:(double)dimension
{
  orientation = [(PXStoryExportAspectRatio *)self orientation];
  [(PXStoryExportAspectRatio *)self sizeWithMinDimension:orientation orientation:dimension];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)sizeWithMinDimension:(double)dimension orientation:(id)orientation
{
  orientationCopy = orientation;
  [(PXStoryExportAspectRatio *)self ratio];
  [orientationCopy type];

  PXSizeRound();
}

- (PXStoryExportAspectRatio)initWithAspectType:(int64_t)type ratio:(double)ratio
{
  v8.receiver = self;
  v8.super_class = PXStoryExportAspectRatio;
  v6 = [(PXStoryExportAspectRatio *)&v8 init];
  if (v6)
  {
    v6->_type = type;
    v6->_ratio = ratio;
    PXFloatApproximatelyEqualToFloat();
  }

  return 0;
}

- (PXStoryExportAspectRatio)initWithAspectType:(int64_t)type
{
  if (type >= 5)
  {
    v14 = v4;
    v15 = v3;
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryExportAspectRatio.m" lineNumber:110 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v9 = dbl_1A53821B8[type];

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

+ (id)pickableAspectRatiosForOrientation:(id)orientation fullSizePlayerAspect:(id)aspect
{
  orientationCopy = orientation;
  aspectCopy = aspect;
  [self standardAspects];
  objc_claimAutoreleasedReturnValue();
  orientationCopy;
  PXFilter();
}

uint64_t __84__PXStoryExportAspectRatio_pickableAspectRatiosForOrientation_fullSizePlayerAspect___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 orientation];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

+ (id)standardAspectRatioForSize:(CGSize)size
{
  v7 = *MEMORY[0x1E69E9840];
  memset(v5, 0, sizeof(v5));
  standardAspects = [self standardAspects];
  if ([standardAspects countByEnumeratingWithState:v5 objects:v6 count:16])
  {
    [**(&v5[0] + 1) ratio];
    PXFloatApproximatelyEqualToFloat();
  }

  return 0;
}

- (id)_userDefaultIdentifier
{
  type = [(PXStoryExportAspectRatio *)self type];
  if (type > 5)
  {
    return 0;
  }

  else
  {
    return off_1E773D218[type];
  }
}

+ (id)defaultAspectRatioWithFullSizePlayerAspect:(id)aspect orientation:(id)orientation
{
  aspectCopy = aspect;
  orientationCopy = orientation;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v8 = [standardUserDefaults stringForKey:@"StoryExportAspectRatio"];

  if (v8)
  {
    [objc_opt_class() standardAspects];
    objc_claimAutoreleasedReturnValue();
    v8;
    PXFind();
  }

  v9 = [[PXStoryExportAspectRatio alloc] initWithAspectType:0];
  v10 = [(PXStoryExportAspectRatio *)v9 adjustedForOrientation:orientationCopy];

  return v10;
}

uint64_t __96__PXStoryExportAspectRatio_UserDefault__defaultAspectRatioWithFullSizePlayerAspect_orientation___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 _userDefaultIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

+ (void)setDefaultAspectRatio:(id)ratio
{
  v3 = MEMORY[0x1E695E000];
  ratioCopy = ratio;
  standardUserDefaults = [v3 standardUserDefaults];
  _userDefaultIdentifier = [ratioCopy _userDefaultIdentifier];

  [standardUserDefaults setObject:_userDefaultIdentifier forKey:@"StoryExportAspectRatio"];
}

@end