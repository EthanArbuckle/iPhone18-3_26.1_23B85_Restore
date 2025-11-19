@interface PUPhotoPickerResizeTaskDescriptor
+ (id)defaultActualSizeDescriptor;
+ (id)defaultLargeDescriptor;
+ (id)defaultMediumDescriptor;
+ (id)defaultSmallDescriptor;
+ (id)orderedDefaultDescriptors;
- (BOOL)appliesToAsset:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CGSize)targetSize;
- (PUPhotoPickerResizeTaskDescriptor)initWithLocalizedDescription:(id)a3 targetSize:(CGSize)a4;
- (id)formattedSizeForAssets:(id)a3;
- (id)localizedDescriptionForAssets:(id)a3;
- (unint64_t)estimatedSizeForAssets:(id)a3;
@end

@implementation PUPhotoPickerResizeTaskDescriptor

- (CGSize)targetSize
{
  width = self->_targetSize.width;
  height = self->_targetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    v6 = (objc_opt_isKindOfClass() & 1) != 0 && (self->_targetSize.width == v4->_targetSize.width ? (v5 = self->_targetSize.height == v4->_targetSize.height) : (v5 = 0), v5) && [(NSString *)self->_localizedDescription isEqualToString:v4->_localizedDescription];
  }

  return v6;
}

- (BOOL)appliesToAsset:(id)a3
{
  v4 = a3;
  v5 = [[PUPhotoPickerScaledFileSizeEstimator alloc] initWithAsset:v4];

  LOBYTE(self) = [(PUPhotoPickerScaledFileSizeEstimator *)v5 wouldResizeAssetUsingResizeDescriptor:self];
  return self;
}

- (unint64_t)estimatedSizeForAssets:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696AB50] set];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v25 + 1) + 8 * i) localIdentifier];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v8);
  }

  if (([(NSCountedSet *)self->_cachedAssetsIdentifiersForEstimation isEqualToSet:v5]& 1) == 0)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = v6;
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      v16 = *v22;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v22 != v16)
          {
            objc_enumerationMutation(v12);
          }

          v18 = [[PUPhotoPickerScaledFileSizeEstimator alloc] initWithAsset:*(*(&v21 + 1) + 8 * j)];
          v15 += [(PUPhotoPickerScaledFileSizeEstimator *)v18 estimatedSizeForResizeDescriptor:self];
        }

        v14 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v14);
    }

    else
    {
      v15 = 0;
    }

    self->_cachedSizeEstimate = v15;
    objc_storeStrong(&self->_cachedAssetsIdentifiersForEstimation, v5);
  }

  cachedSizeEstimate = self->_cachedSizeEstimate;

  return cachedSizeEstimate;
}

- (id)formattedSizeForAssets:(id)a3
{
  v3 = [(PUPhotoPickerResizeTaskDescriptor *)self estimatedSizeForAssets:a3];
  v4 = MEMORY[0x1E696AAF0];

  return [v4 stringFromByteCount:v3 countStyle:0];
}

- (id)localizedDescriptionForAssets:(id)a3
{
  v3 = [(PUPhotoPickerResizeTaskDescriptor *)self formattedSizeForAssets:a3];
  v4 = PULocalizedString(@"SIZE_PICKER_SIZE_(BYTES)");
  v5 = PUStringWithValidatedFormat();

  return v5;
}

- (PUPhotoPickerResizeTaskDescriptor)initWithLocalizedDescription:(id)a3 targetSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v12.receiver = self;
  v12.super_class = PUPhotoPickerResizeTaskDescriptor;
  v8 = [(PUPhotoPickerResizeTaskDescriptor *)&v12 init];
  if (v8)
  {
    v9 = [v7 copy];
    localizedDescription = v8->_localizedDescription;
    v8->_localizedDescription = v9;

    v8->_targetSize.width = width;
    v8->_targetSize.height = height;
  }

  return v8;
}

+ (id)orderedDefaultDescriptors
{
  if (orderedDefaultDescriptors_onceToken != -1)
  {
    dispatch_once(&orderedDefaultDescriptors_onceToken, &__block_literal_global_62317);
  }

  v3 = orderedDefaultDescriptors_orderedDefaultDescriptors;

  return v3;
}

void __62__PUPhotoPickerResizeTaskDescriptor_orderedDefaultDescriptors__block_invoke()
{
  v6[4] = *MEMORY[0x1E69E9840];
  v0 = +[PUPhotoPickerResizeTaskDescriptor defaultActualSizeDescriptor];
  v1 = +[PUPhotoPickerResizeTaskDescriptor defaultLargeDescriptor];
  v2 = +[PUPhotoPickerResizeTaskDescriptor defaultMediumDescriptor];
  v3 = +[PUPhotoPickerResizeTaskDescriptor defaultSmallDescriptor];
  v6[0] = v0;
  v6[1] = v1;
  v6[2] = v2;
  v6[3] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:4];
  v5 = orderedDefaultDescriptors_orderedDefaultDescriptors;
  orderedDefaultDescriptors_orderedDefaultDescriptors = v4;
}

+ (id)defaultActualSizeDescriptor
{
  v2 = [a1 alloc];
  v3 = PULocalizedString(@"SIZE_PICKER_SIZE_ACTUAL");
  v4 = [v2 initWithLocalizedDescription:v3 targetSize:{*MEMORY[0x1E6978E30], *(MEMORY[0x1E6978E30] + 8)}];

  return v4;
}

+ (id)defaultSmallDescriptor
{
  v2 = [a1 alloc];
  v3 = PULocalizedString(@"SIZE_PICKER_SIZE_SMALL");
  v4 = [v2 initWithLocalizedDescription:v3 targetSize:{320.0, 240.0}];

  return v4;
}

+ (id)defaultMediumDescriptor
{
  v2 = [a1 alloc];
  v3 = PULocalizedString(@"SIZE_PICKER_SIZE_MEDIUM");
  v4 = [v2 initWithLocalizedDescription:v3 targetSize:{640.0, 480.0}];

  return v4;
}

+ (id)defaultLargeDescriptor
{
  v2 = [a1 alloc];
  v3 = PULocalizedString(@"SIZE_PICKER_SIZE_LARGE");
  v4 = [v2 initWithLocalizedDescription:v3 targetSize:{1280.0, 960.0}];

  return v4;
}

@end