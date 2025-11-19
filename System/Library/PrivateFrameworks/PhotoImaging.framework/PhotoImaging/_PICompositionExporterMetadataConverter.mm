@interface _PICompositionExporterMetadataConverter
- (BOOL)setImageVariation:(id)a3 properties:(id)a4 error:(id *)a5;
- (BOOL)setPhotoFeatureFlags:(id)a3 properties:(id)a4 error:(id *)a5;
- (BOOL)setPhotoProcessingFlags:(id)a3 properties:(id)a4 error:(id *)a5;
- (id)photoFeatureFlags:(id)a3 error:(id *)a4;
- (id)photoProcessingFlagsFromProperties:(id)a3 error:(id *)a4;
- (id)videoMetadataForVariation:(id)a3 error:(id *)a4;
- (void)addSemanticStyleMakeNoteProperties:(id)a3 toImageProperties:(id)a4;
@end

@implementation _PICompositionExporterMetadataConverter

- (void)addSemanticStyleMakeNoteProperties:(id)a3 toImageProperties:(id)a4
{
  if (a3)
  {
    [MEMORY[0x1E69C0728] addMakerApplePropertyWithKey:*MEMORY[0x1E6986850] value:a3 toProperties:a4];
  }
}

- (BOOL)setPhotoFeatureFlags:(id)a3 properties:(id)a4 error:(id *)a5
{
  v21[1] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69C0728];
  v8 = MEMORY[0x1E69C0718];
  v9 = a4;
  v10 = a3;
  v11 = [v8 photosFeatureFlagsMetadataKey];
  v12 = [v7 addMakerApplePropertyWithKey:v11 value:v10 toProperties:v9];

  if (a5 && (v12 & 1) == 0)
  {
    v13 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E69C09C0];
    v20 = *MEMORY[0x1E696A278];
    v15 = MEMORY[0x1E696AEC0];
    v16 = [MEMORY[0x1E69C0718] photosFeatureFlagsMetadataKey];
    v17 = [v15 stringWithFormat:@"Unable to create metadata for key '%@'", v16];
    v21[0] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    *a5 = [v13 errorWithDomain:v14 code:8 userInfo:v18];
  }

  return v12;
}

- (id)photoFeatureFlags:(id)a3 error:(id *)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69C0718];
  v6 = a3;
  v7 = [[v5 alloc] initWithImageProperties:v6 contentType:0 timeZoneLookup:0];

  if (v7)
  {
    a4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v7, "photosAppFeatureFlags")}];
  }

  else if (a4)
  {
    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E69C09C0];
    v15 = *MEMORY[0x1E696A278];
    v10 = MEMORY[0x1E696AEC0];
    v11 = [MEMORY[0x1E69C0718] photosFeatureFlagsMetadataKey];
    v12 = [v10 stringWithFormat:@"Unable to read metadata for key '%@'", v11];
    v16[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    *a4 = [v8 errorWithDomain:v9 code:8 userInfo:v13];

    a4 = 0;
  }

  return a4;
}

- (BOOL)setPhotoProcessingFlags:(id)a3 properties:(id)a4 error:(id *)a5
{
  v21[1] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69C0728];
  v8 = MEMORY[0x1E69C0718];
  v9 = a4;
  v10 = a3;
  v11 = [v8 photoProcessingFlagsMetadataKey];
  v12 = [v7 addMakerApplePropertyWithKey:v11 value:v10 toProperties:v9];

  if (a5 && (v12 & 1) == 0)
  {
    v13 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E69C09C0];
    v20 = *MEMORY[0x1E696A278];
    v15 = MEMORY[0x1E696AEC0];
    v16 = [MEMORY[0x1E69C0718] photoProcessingFlagsMetadataKey];
    v17 = [v15 stringWithFormat:@"Unable to create metadata for key '%@'", v16];
    v21[0] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    *a5 = [v13 errorWithDomain:v14 code:8 userInfo:v18];
  }

  return v12;
}

- (id)photoProcessingFlagsFromProperties:(id)a3 error:(id *)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69C0718];
  v6 = a3;
  v7 = [[v5 alloc] initWithImageProperties:v6 contentType:0 timeZoneLookup:0];

  if (v7)
  {
    a4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v7, "photoProcessingFlags")}];
  }

  else if (a4)
  {
    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E69C09C0];
    v15 = *MEMORY[0x1E696A278];
    v10 = MEMORY[0x1E696AEC0];
    v11 = [MEMORY[0x1E69C0718] photoProcessingFlagsMetadataKey];
    v12 = [v10 stringWithFormat:@"Unable to read metadata for key '%@'", v11];
    v16[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    *a4 = [v8 errorWithDomain:v9 code:8 userInfo:v13];

    a4 = 0;
  }

  return a4;
}

- (BOOL)setImageVariation:(id)a3 properties:(id)a4 error:(id *)a5
{
  v21[1] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69C0728];
  v8 = MEMORY[0x1E69C0718];
  v9 = a4;
  v10 = a3;
  v11 = [v8 playbackVariationMetadataKey];
  v12 = [v7 addMakerApplePropertyWithKey:v11 value:v10 toProperties:v9];

  if (a5 && (v12 & 1) == 0)
  {
    v13 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E69C09C0];
    v20 = *MEMORY[0x1E696A278];
    v15 = MEMORY[0x1E696AEC0];
    v16 = [MEMORY[0x1E69C0718] playbackVariationMetadataKey];
    v17 = [v15 stringWithFormat:@"Unable to create metadata for key '%@'", v16];
    v21[0] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    *a5 = [v13 errorWithDomain:v14 code:8 userInfo:v18];
  }

  return v12;
}

- (id)videoMetadataForVariation:(id)a3 error:(id *)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695DF70];
  v6 = a3;
  v7 = [v5 array];
  v8 = MEMORY[0x1E69C0728];
  v9 = [MEMORY[0x1E69C0718] playbackVariationMetadataIdentifier];
  v10 = [v8 addQuickTimeMetadataItemsWithIdentifier:v9 value:v6 toItems:v7];

  if (a4 && (v10 & 1) == 0)
  {
    v11 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E69C09C0];
    v18 = *MEMORY[0x1E696A278];
    v13 = MEMORY[0x1E696AEC0];
    v14 = [MEMORY[0x1E69C0718] playbackVariationMetadataIdentifier];
    v15 = [v13 stringWithFormat:@"Unable to create metadata for key '%@'", v14];
    v19[0] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    *a4 = [v11 errorWithDomain:v12 code:8 userInfo:v16];
  }

  return v7;
}

@end