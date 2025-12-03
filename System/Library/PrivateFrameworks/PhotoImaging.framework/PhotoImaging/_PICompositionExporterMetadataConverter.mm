@interface _PICompositionExporterMetadataConverter
- (BOOL)setImageVariation:(id)variation properties:(id)properties error:(id *)error;
- (BOOL)setPhotoFeatureFlags:(id)flags properties:(id)properties error:(id *)error;
- (BOOL)setPhotoProcessingFlags:(id)flags properties:(id)properties error:(id *)error;
- (id)photoFeatureFlags:(id)flags error:(id *)error;
- (id)photoProcessingFlagsFromProperties:(id)properties error:(id *)error;
- (id)videoMetadataForVariation:(id)variation error:(id *)error;
- (void)addSemanticStyleMakeNoteProperties:(id)properties toImageProperties:(id)imageProperties;
@end

@implementation _PICompositionExporterMetadataConverter

- (void)addSemanticStyleMakeNoteProperties:(id)properties toImageProperties:(id)imageProperties
{
  if (properties)
  {
    [MEMORY[0x1E69C0728] addMakerApplePropertyWithKey:*MEMORY[0x1E6986850] value:properties toProperties:imageProperties];
  }
}

- (BOOL)setPhotoFeatureFlags:(id)flags properties:(id)properties error:(id *)error
{
  v21[1] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69C0728];
  v8 = MEMORY[0x1E69C0718];
  propertiesCopy = properties;
  flagsCopy = flags;
  photosFeatureFlagsMetadataKey = [v8 photosFeatureFlagsMetadataKey];
  v12 = [v7 addMakerApplePropertyWithKey:photosFeatureFlagsMetadataKey value:flagsCopy toProperties:propertiesCopy];

  if (error && (v12 & 1) == 0)
  {
    v13 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E69C09C0];
    v20 = *MEMORY[0x1E696A278];
    v15 = MEMORY[0x1E696AEC0];
    photosFeatureFlagsMetadataKey2 = [MEMORY[0x1E69C0718] photosFeatureFlagsMetadataKey];
    v17 = [v15 stringWithFormat:@"Unable to create metadata for key '%@'", photosFeatureFlagsMetadataKey2];
    v21[0] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    *error = [v13 errorWithDomain:v14 code:8 userInfo:v18];
  }

  return v12;
}

- (id)photoFeatureFlags:(id)flags error:(id *)error
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69C0718];
  flagsCopy = flags;
  v7 = [[v5 alloc] initWithImageProperties:flagsCopy contentType:0 timeZoneLookup:0];

  if (v7)
  {
    error = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v7, "photosAppFeatureFlags")}];
  }

  else if (error)
  {
    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E69C09C0];
    v15 = *MEMORY[0x1E696A278];
    v10 = MEMORY[0x1E696AEC0];
    photosFeatureFlagsMetadataKey = [MEMORY[0x1E69C0718] photosFeatureFlagsMetadataKey];
    v12 = [v10 stringWithFormat:@"Unable to read metadata for key '%@'", photosFeatureFlagsMetadataKey];
    v16[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    *error = [v8 errorWithDomain:v9 code:8 userInfo:v13];

    error = 0;
  }

  return error;
}

- (BOOL)setPhotoProcessingFlags:(id)flags properties:(id)properties error:(id *)error
{
  v21[1] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69C0728];
  v8 = MEMORY[0x1E69C0718];
  propertiesCopy = properties;
  flagsCopy = flags;
  photoProcessingFlagsMetadataKey = [v8 photoProcessingFlagsMetadataKey];
  v12 = [v7 addMakerApplePropertyWithKey:photoProcessingFlagsMetadataKey value:flagsCopy toProperties:propertiesCopy];

  if (error && (v12 & 1) == 0)
  {
    v13 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E69C09C0];
    v20 = *MEMORY[0x1E696A278];
    v15 = MEMORY[0x1E696AEC0];
    photoProcessingFlagsMetadataKey2 = [MEMORY[0x1E69C0718] photoProcessingFlagsMetadataKey];
    v17 = [v15 stringWithFormat:@"Unable to create metadata for key '%@'", photoProcessingFlagsMetadataKey2];
    v21[0] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    *error = [v13 errorWithDomain:v14 code:8 userInfo:v18];
  }

  return v12;
}

- (id)photoProcessingFlagsFromProperties:(id)properties error:(id *)error
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69C0718];
  propertiesCopy = properties;
  v7 = [[v5 alloc] initWithImageProperties:propertiesCopy contentType:0 timeZoneLookup:0];

  if (v7)
  {
    error = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v7, "photoProcessingFlags")}];
  }

  else if (error)
  {
    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E69C09C0];
    v15 = *MEMORY[0x1E696A278];
    v10 = MEMORY[0x1E696AEC0];
    photoProcessingFlagsMetadataKey = [MEMORY[0x1E69C0718] photoProcessingFlagsMetadataKey];
    v12 = [v10 stringWithFormat:@"Unable to read metadata for key '%@'", photoProcessingFlagsMetadataKey];
    v16[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    *error = [v8 errorWithDomain:v9 code:8 userInfo:v13];

    error = 0;
  }

  return error;
}

- (BOOL)setImageVariation:(id)variation properties:(id)properties error:(id *)error
{
  v21[1] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69C0728];
  v8 = MEMORY[0x1E69C0718];
  propertiesCopy = properties;
  variationCopy = variation;
  playbackVariationMetadataKey = [v8 playbackVariationMetadataKey];
  v12 = [v7 addMakerApplePropertyWithKey:playbackVariationMetadataKey value:variationCopy toProperties:propertiesCopy];

  if (error && (v12 & 1) == 0)
  {
    v13 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E69C09C0];
    v20 = *MEMORY[0x1E696A278];
    v15 = MEMORY[0x1E696AEC0];
    playbackVariationMetadataKey2 = [MEMORY[0x1E69C0718] playbackVariationMetadataKey];
    v17 = [v15 stringWithFormat:@"Unable to create metadata for key '%@'", playbackVariationMetadataKey2];
    v21[0] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    *error = [v13 errorWithDomain:v14 code:8 userInfo:v18];
  }

  return v12;
}

- (id)videoMetadataForVariation:(id)variation error:(id *)error
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695DF70];
  variationCopy = variation;
  array = [v5 array];
  v8 = MEMORY[0x1E69C0728];
  playbackVariationMetadataIdentifier = [MEMORY[0x1E69C0718] playbackVariationMetadataIdentifier];
  v10 = [v8 addQuickTimeMetadataItemsWithIdentifier:playbackVariationMetadataIdentifier value:variationCopy toItems:array];

  if (error && (v10 & 1) == 0)
  {
    v11 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E69C09C0];
    v18 = *MEMORY[0x1E696A278];
    v13 = MEMORY[0x1E696AEC0];
    playbackVariationMetadataIdentifier2 = [MEMORY[0x1E69C0718] playbackVariationMetadataIdentifier];
    v15 = [v13 stringWithFormat:@"Unable to create metadata for key '%@'", playbackVariationMetadataIdentifier2];
    v19[0] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    *error = [v11 errorWithDomain:v12 code:8 userInfo:v16];
  }

  return array;
}

@end