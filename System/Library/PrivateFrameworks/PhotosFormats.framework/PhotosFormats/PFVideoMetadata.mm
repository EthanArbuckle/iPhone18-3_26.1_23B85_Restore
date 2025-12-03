@interface PFVideoMetadata
+ (BOOL)hasValidMetadataForLoopingVideoAsset:(id)asset;
+ (BOOL)readMetadataType:(unsigned __int8)type fromAVAsset:(id)asset value:(id *)value error:(id *)error;
+ (BOOL)readMetadataType:(unsigned __int8)type fromFileURL:(id)l value:(id *)value error:(id *)error;
+ (BOOL)videoAssetIsDecodable:(id)decodable;
+ (BOOL)videoAssetIsHighDynamicRange:(id)range;
+ (BOOL)videoAssetIsPlayable:(id)playable;
+ (BOOL)videoAssetIsSpatial:(id)spatial;
+ (BOOL)videoTrackFormatDescriptionContainsPortraitData:(opaqueCMFormatDescription *)data;
+ (BOOL)videoTrackFormatDescriptionIsProResLOG:(opaqueCMFormatDescription *)g;
+ (BOOL)videoTrackIsSpatial:(id)spatial;
+ (id)arrayByRemovingMetadataItemOfType:(unsigned __int8)type fromArray:(id)array error:(id *)error;
+ (id)firstVideoTrackFormatDebugDescriptionForAsset:(id)asset;
+ (id)metadataItemValueFromAsset:(id)asset withKey:(id)key keySpace:(id)space;
+ (unsigned)videoCodecFourCharCodeNumberForAVAsset:(id)asset;
+ (void)loadMetadataForAsset:(id)asset completion:(id)completion;
- (BOOL)isDecodable;
- (BOOL)isHDR;
- (BOOL)isPlayable;
- (BOOL)isSpatial;
- (NSDictionary)outOfBandHints;
- (NSString)firstVideoTrackFormatDebugDescription;
@end

@implementation PFVideoMetadata

- (NSDictionary)outOfBandHints
{
  v3 = objc_opt_class();
  asset = self->_asset;

  return [v3 outOfBandHintsForVideoAsset:asset];
}

- (NSString)firstVideoTrackFormatDebugDescription
{
  v3 = objc_opt_class();
  asset = self->_asset;

  return [v3 firstVideoTrackFormatDebugDescriptionForAsset:asset];
}

- (BOOL)isDecodable
{
  v3 = objc_opt_class();
  asset = self->_asset;

  return [v3 videoAssetIsDecodable:asset];
}

- (BOOL)isPlayable
{
  v3 = objc_opt_class();
  asset = self->_asset;

  return [v3 videoAssetIsPlayable:asset];
}

- (BOOL)isHDR
{
  v3 = objc_opt_class();
  asset = self->_asset;

  return [v3 videoAssetIsHighDynamicRange:asset];
}

- (BOOL)isSpatial
{
  v3 = objc_opt_class();
  asset = self->_asset;

  return [v3 videoAssetIsSpatial:asset];
}

+ (unsigned)videoCodecFourCharCodeNumberForAVAsset:(id)asset
{
  assetCopy = asset;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__PFVideoMetadata_videoCodecFourCharCodeNumberForAVAsset___block_invoke;
  v6[3] = &unk_1E7B65170;
  v6[4] = &v7;
  [PFMediaUtilities enumerateVideoTrackFormatDescriptionsInAsset:assetCopy withBlock:v6];
  v4 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __58__PFVideoMetadata_videoCodecFourCharCodeNumberForAVAsset___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, int a4, _BYTE *a5)
{
  *(*(*(result + 32) + 8) + 24) = a4;
  *a5 = 1;
  return result;
}

+ (BOOL)videoTrackFormatDescriptionContainsPortraitData:(opaqueCMFormatDescription *)data
{
  if (!data)
  {
    return 0;
  }

  v3 = CMMetadataFormatDescriptionGetIdentifiers(data);
  if ([v3 containsObject:@"mdta/com.apple.quicktime.cinematic-video.rendering"])
  {
    v4 = [v3 containsObject:@"mdta/com.apple.quicktime.cinematic-video.cinematography"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)videoTrackFormatDescriptionIsProResLOG:(opaqueCMFormatDescription *)g
{
  v3 = CMFormatDescriptionGetExtension(g, *MEMORY[0x1E6960078]);
  v4 = v3 != 0;

  return v4;
}

+ (BOOL)videoTrackIsSpatial:(id)spatial
{
  v17[3] = *MEMORY[0x1E69E9840];
  spatialCopy = spatial;
  v4 = *MEMORY[0x1E6987500];
  v17[0] = *MEMORY[0x1E6987520];
  v17[1] = v4;
  v17[2] = *MEMORY[0x1E6987548];
  [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:3];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = 0;
    v8 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v7 += [spatialCopy hasMediaCharacteristic:{*(*(&v12 + 1) + 8 * i), v12}];
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
    v6 = v7;
  }

  v10 = [v5 count] == v6;
  return v10;
}

+ (BOOL)videoAssetIsSpatial:(id)spatial
{
  spatialCopy = spatial;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__PFVideoMetadata_videoAssetIsSpatial___block_invoke;
  v6[3] = &unk_1E7B64B50;
  v6[4] = &v7;
  v6[5] = self;
  [PFMediaUtilities enumerateVideoTrackFormatDescriptionsInAsset:spatialCopy withBlock:v6];
  LOBYTE(self) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return self;
}

uint64_t __39__PFVideoMetadata_videoAssetIsSpatial___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [*(a1 + 40) videoTrackIsSpatial:a2];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

+ (BOOL)videoAssetIsHighDynamicRange:(id)range
{
  rangeCopy = range;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__PFVideoMetadata_videoAssetIsHighDynamicRange___block_invoke;
  v6[3] = &unk_1E7B64B50;
  v6[4] = &v7;
  v6[5] = self;
  [PFMediaUtilities enumerateVideoTrackFormatDescriptionsInAsset:rangeCopy withBlock:v6];
  LOBYTE(self) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return self;
}

uint64_t __48__PFVideoMetadata_videoAssetIsHighDynamicRange___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [*(a1 + 40) videoTrackFormatDescriptionIsHighDynamicRange:?];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

+ (BOOL)videoAssetIsPlayable:(id)playable
{
  playableCopy = playable;
  if ([self videoAssetIsHighDynamicRange:playableCopy] && !+[PFMediaCapabilities currentDeviceIsEligibleForHDRPlayback](PFMediaCapabilities, "currentDeviceIsEligibleForHDRPlayback"))
  {
    isPlayable = 0;
  }

  else
  {
    isPlayable = [playableCopy isPlayable];
  }

  return isPlayable;
}

+ (BOOL)videoAssetIsDecodable:(id)decodable
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  tracks = [decodable tracks];
  v4 = [tracks countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    v7 = *MEMORY[0x1E6987608];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(tracks);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([v9 isEnabled])
        {
          mediaType = [v9 mediaType];
          if ([mediaType isEqualToString:v7])
          {
            isDecodable = [v9 isDecodable];

            if (!isDecodable)
            {
              v12 = 0;
              goto LABEL_14;
            }
          }

          else
          {
          }
        }
      }

      v5 = [tracks countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v12 = 1;
LABEL_14:

  return v12;
}

+ (id)arrayByRemovingMetadataItemOfType:(unsigned __int8)type fromArray:(id)array error:(id *)error
{
  typeCopy = type;
  v31[1] = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v8 = convertTypeToKey(typeCopy, 1);
  if (v8)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = arrayCopy;
    v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v26;
      v13 = *MEMORY[0x1E6987850];
LABEL_4:
      v14 = 0;
      while (1)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v25 + 1) + 8 * v14);
        keySpace = [v15 keySpace];
        v17 = [keySpace isEqual:v13];

        if (v17)
        {
          v18 = [v15 key];
          v19 = [v18 isEqual:v8];

          if (v19)
          {
            break;
          }
        }

        if (v11 == ++v14)
        {
          v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v11)
          {
            goto LABEL_4;
          }

          goto LABEL_11;
        }
      }

      v23 = v15;

      if (!v23)
      {
        goto LABEL_16;
      }

      error = [v9 mutableCopy];
      [error removeObject:v23];
    }

    else
    {
LABEL_11:

LABEL_16:
      error = v9;
    }
  }

  else if (error)
  {
    v20 = MEMORY[0x1E696ABC0];
    v30 = *MEMORY[0x1E696A278];
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Specified type (%d) is invalid for the media type %s", typeCopy, "video"];
    v31[0] = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    *error = [v20 errorWithDomain:@"com.apple.PhotosFormats" code:0 userInfo:v22];

    error = 0;
  }

  return error;
}

+ (BOOL)readMetadataType:(unsigned __int8)type fromAVAsset:(id)asset value:(id *)value error:(id *)error
{
  typeCopy = type;
  v17[1] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v11 = convertTypeToKey(typeCopy, 1);
  if (v11)
  {
    *value = [self quickTimeMetadataItemValueFromAsset:assetCopy withKey:v11];
  }

  else if (error)
  {
    v12 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A278];
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Specified type (%d) is invalid for the media type %s", typeCopy, "video"];
    v17[0] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    *error = [v12 errorWithDomain:@"com.apple.PhotosFormats" code:0 userInfo:v14];
  }

  return v11 != 0;
}

+ (BOOL)readMetadataType:(unsigned __int8)type fromFileURL:(id)l value:(id *)value error:(id *)error
{
  typeCopy = type;
  v17[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  v11 = [MEMORY[0x1E6988168] URLAssetWithURL:lCopy options:0];
  if (v11)
  {
    LOBYTE(error) = [self readMetadataType:typeCopy fromAVAsset:v11 value:value error:error];
  }

  else if (error)
  {
    v12 = MEMORY[0x1E696ABC0];
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to access input media through URL %@", lCopy, *MEMORY[0x1E696A278]];
    v17[0] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    *error = [v12 errorWithDomain:@"com.apple.PhotosFormats" code:1 userInfo:v14];

    LOBYTE(error) = 0;
  }

  return error;
}

+ (BOOL)hasValidMetadataForLoopingVideoAsset:(id)asset
{
  assetCopy = asset;
  v14 = 0;
  [PFVideoMetadata readMetadataType:4 fromAVAsset:assetCopy value:&v14 error:0];
  v4 = v14;
  unsignedIntValue = [v4 unsignedIntValue];
  if (unsignedIntValue)
  {
    v6 = unsignedIntValue == 3;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v12 = 0;
  }

  else
  {
    v7 = MEMORY[0x1E6987FE0];
    metadata = [assetCopy metadata];
    v9 = [v7 metadataItemsFromArray:metadata withKey:@"LOOP" keySpace:*MEMORY[0x1E6987858]];

    firstObject = [v9 firstObject];
    dataType = [firstObject dataType];
    v12 = [dataType isEqualToString:*MEMORY[0x1E6960260]];
  }

  return v12;
}

+ (id)firstVideoTrackFormatDebugDescriptionForAsset:(id)asset
{
  v3 = [PFVideoMetadataVideoTrackFormatInfo infoForFirstVideoTrackOfAsset:asset];
  formatDebugDescription = [v3 formatDebugDescription];

  return formatDebugDescription;
}

+ (id)metadataItemValueFromAsset:(id)asset withKey:(id)key keySpace:(id)space
{
  v7 = MEMORY[0x1E6987FE0];
  spaceCopy = space;
  keyCopy = key;
  metadata = [asset metadata];
  v11 = [v7 metadataItemsFromArray:metadata withKey:keyCopy keySpace:spaceCopy];

  firstObject = [v11 firstObject];
  value = [firstObject value];

  return value;
}

+ (void)loadMetadataForAsset:(id)asset completion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  completionCopy = completion;
  v7 = MEMORY[0x1E69E9C10];
  v8 = os_signpost_id_make_with_pointer(MEMORY[0x1E69E9C10], assetCopy);
  v9 = v7;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x1E69E9C10]))
  {
    *buf = 138412290;
    v18 = assetCopy;
    _os_signpost_emit_with_name_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_BEGIN, v8, "com.apple.photos.backend.videometadata", "Load metadata for asset asset %@", buf, 0xCu);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__PFVideoMetadata_loadMetadataForAsset_completion___block_invoke;
  v12[3] = &unk_1E7B64B28;
  v13 = &unk_1F2AAB8D8;
  v14 = assetCopy;
  v15 = completionCopy;
  v16 = v8;
  v10 = completionCopy;
  v11 = assetCopy;
  [v11 loadValuesAsynchronouslyForKeys:&unk_1F2AAB8D8 completionHandler:v12];
}

void __51__PFVideoMetadata_loadMetadataForAsset_completion___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69E9C10];
  v3 = *(a1 + 56);
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x1E69E9C10]))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_END, v3, "com.apple.photos.backend.videometadata", &unk_1B36B501D, buf, 2u);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v18;
    while (2)
    {
      v9 = 0;
      v10 = v7;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v17 + 1) + 8 * v9);
        v12 = *(a1 + 40);
        v16 = v10;
        v13 = [v12 statusOfValueForKey:v11 error:&v16];
        v7 = v16;

        if (v13 != 2)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v15 = *(a1 + 40);
            *buf = 134218754;
            v22 = v13;
            v23 = 2112;
            v24 = v11;
            v25 = 2112;
            v26 = v15;
            v27 = 2112;
            v28 = v7;
            _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "PFVideoMetadata: Unexpected AVKeyValueStatus status %td while loading values for key '%@' of AVAsset %@: %@", buf, 0x2Au);
          }

          (*(*(a1 + 48) + 16))();
          goto LABEL_18;
        }

        ++v9;
        v10 = v7;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v17 objects:v29 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = 0;
  }

  v14 = objc_opt_new();
  objc_storeStrong(v14 + 1, *(a1 + 40));
  (*(*(a1 + 48) + 16))();

LABEL_18:
}

@end