@interface PFMetadataMovie
+ (AudioStreamBasicDescription)audioStreamBasicDescriptionForAsset:(SEL)a3;
+ (BOOL)parseISO6709String:(id)a3 outLatitude:(double *)a4 outLongitude:(double *)a5;
+ (id)exifTimezoneOffsetFromDateString:(id)a3 offsetInSeconds:(int64_t *)a4;
+ (void)_enumerateTracksOfType:(id)a3 onAsset:(id)a4 withBlock:(id)a5;
+ (void)firstAudioTrackForAsset:(id)a3 resultBlock:(id)a4;
+ (void)firstVideoTrackForAsset:(id)a3 resultBlock:(id)a4;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)duration;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)stillImageDisplayTime;
- (AudioStreamBasicDescription)_audioStreamBasicDescription;
- (BOOL)_computeIsProRes;
- (BOOL)_configureWithAVAsset:(id)a3;
- (BOOL)_configureWithAVProxyData:(id)a3;
- (BOOL)_configureWithAVURL:(id)a3;
- (BOOL)_convertToAVAssetProxyIfPossible;
- (BOOL)configureWithMetadataPlist:(id)a3;
- (BOOL)hasSpatialAudio;
- (BOOL)hasVitality;
- (BOOL)isActionCam;
- (BOOL)isAutoLivePhoto;
- (BOOL)isCinematicVideo;
- (BOOL)isDecodable;
- (BOOL)isEqual:(id)a3;
- (BOOL)isFrontAndRearComposition;
- (BOOL)isHDR;
- (BOOL)isPlayable;
- (BOOL)isProRes;
- (BOOL)isSloMo;
- (BOOL)isSpatialMedia;
- (BOOL)isSpatialOverCapture;
- (BOOL)isTimelapse;
- (BOOL)livePhotoVitalityLimitingAllowed;
- (BOOL)verifyShouldLoadTrackMetadata:(const char *)a3;
- (PFMetadataMovie)initWithAVAsset:(id)a3 options:(unsigned __int16)a4 timeZoneLookup:(id)a5;
- (PFMetadataMovie)initWithAVAsset:(id)a3 options:(unsigned __int16)a4 timeZoneLookup:(id)a5 preloadValues:(BOOL)a6;
- (PFMetadataMovie)initWithAVProxyData:(id)a3 timeZoneLookup:(id)a4;
- (PFMetadataMovie)initWithAVURL:(id)a3 options:(unsigned __int16)a4 timeZoneLookup:(id)a5;
- (id)_apacProfileLevelDescriptionForFormatDescription:(opaqueCMFormatDescription *)a3 audioStreamBasicDescription:(AudioStreamBasicDescription *)a4;
- (id)_cachedValueForKey:(id)a3 usingBlock:(id)a4;
- (id)_computeApacAudioTrackInfo;
- (id)_computeFirstTrackOfType:(id)a3;
- (id)_computeHEVCProfileInfo;
- (id)_computeStillImageDisplayTimeDictionary;
- (id)_contextForKeys:(id)a3 collectionKeys:(id)a4;
- (id)_exifTimezoneOffsetFromDateString:(id)a3 offsetInSeconds:(int64_t *)a4;
- (id)_firstAudioTrack;
- (id)_firstVideoTrack;
- (id)_makeDateTimePropertiesForAsset:(id)a3;
- (id)_makeGPSProperties;
- (id)_makeGeometryProperties;
- (id)apacAudioTrackBedChannelCount;
- (id)apacAudioTrackChannelCount;
- (id)apacAudioTrackCodecProfileLevelDescription;
- (id)apacAudioTrackHoaChannelCount;
- (id)artworkContentDescription;
- (id)audioBitsPerChannel;
- (id)audioBytesPerFrame;
- (id)audioBytesPerPacket;
- (id)audioChannelsPerFrame;
- (id)audioDataRate;
- (id)audioFramesPerPacket;
- (id)audioSampleRate;
- (id)audioTrackFormat;
- (id)audioTrackFormatFlags;
- (id)author;
- (id)cameraMake;
- (id)cameraModel;
- (id)captionAbstract;
- (id)captureMode;
- (id)cinematicVideoIntent;
- (id)collectionKeysToLoad;
- (id)colorPrimaries;
- (id)copyWithZone:(_NSZone *)a3;
- (id)firstVideoTrackCodecString;
- (id)firstVideoTrackFormatDebugDescription;
- (id)focalLengthIn35mm;
- (id)gpsHPositioningError;
- (id)hevcProfileInfo;
- (id)imageDirection;
- (id)keysToLoad;
- (id)keywords;
- (id)lensModel;
- (id)livePhotoMinimumClientVersion;
- (id)livePhotoPairingIdentifier;
- (id)livePhotoVitalityScore;
- (id)livePhotoVitalityTransitionScore;
- (id)montageString;
- (id)nominalFrameRate;
- (id)originatingAssetIdentifier;
- (id)outOfBandHints;
- (id)outOfBandHintsBase64String;
- (id)playbackVariation;
- (id)plistForEncoding;
- (id)ptpMediaMetadata;
- (id)renderOriginatingAssetIdentifier;
- (id)software;
- (id)spatialMediaTrack;
- (id)spatialOverCaptureIdentifier;
- (id)stillImageDisplayTimeDictionary;
- (id)title;
- (id)transferFunction;
- (id)videoCodecName;
- (id)videoDataRate;
- (id)videoDynamicRange;
- (int64_t)_audioVideoProxyPropertyListForAsset:(id)a3 propertyList:(id *)a4 error:(id *)a5;
- (int64_t)_spatialVideoRecommendationForImmersiveModeForAssetVideoTrack:(id)a3;
- (int64_t)spatialVideoRecommendationForImmersiveMode;
- (opaqueCMFormatDescription)_computeFirstFormatDescriptionOfType:(id)a3;
- (opaqueCMFormatDescription)_firstVideoTrackFormatDescription;
- (signed)smartStyleVideoCastValue;
- (unsigned)firstVideoTrackCodec;
- (void)_cacheAllTrackProperties;
- (void)_cacheCommonMetadataProperties;
- (void)_cacheComputedTrackMetadataProperties;
- (void)_cacheIndirectTrackMetadataProperties;
- (void)_checkHFRMetadataKeyShouldPlayAtFullFrameRate:(BOOL *)a3 containsHFRPlaybackKey:(BOOL *)a4;
- (void)_computeChannelCountsForApacAudioTrackInfo:(id)a3 maxChannelCount:(unint64_t)a4 audioChannelLayout:(const AudioChannelLayout *)a5;
- (void)_computeFirstVideoTrackCodecAndName;
- (void)_loadMetadataForAsset:(id)a3 withKeys:(id)a4 collectionKeys:(id)a5;
- (void)_loadMetadataForAsset:(id)a3 withKeys:(id)a4 collectionKeys:(id)a5 completionHandler:(id)a6;
- (void)_verifyAllValuesLoadedForAsset:(id)a3;
- (void)_verifyTrackValuesLoadedForAsset:(id)a3;
- (void)loadMetadataWithCompletionHandler:(id)a3;
@end

@implementation PFMetadataMovie

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PFMetadataMovie;
  if ([(PFMetadata *)&v12 isEqual:v4])
  {
    v5 = v4;
    asset = self->_asset;
    if (v5[22])
    {
      v7 = asset == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v10 = (asset != 0) ^ (v5[22] == 0);
    }

    else
    {
      v8 = [(AVAsset *)asset propertyListForProxy];
      v9 = [v5[22] propertyListForProxy];
      v10 = [v8 isEqualToDictionary:v9];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = PFMetadataMovie;
  v4 = [(PFMetadata *)&v6 copyWithZone:a3];
  objc_storeStrong(v4 + 22, self->_asset);
  objc_storeStrong(v4 + 23, self->_cached_values);
  return v4;
}

- (id)ptpMediaMetadata
{
  v28[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:&unk_1F2AAB410 forKeyedSubscript:*MEMORY[0x1E696DE78]];
  v4 = MEMORY[0x1E696AD98];
  [(PFMetadata *)self orientedPixelSize];
  v5 = [v4 numberWithDouble:?];
  [v3 setObject:v5 forKeyedSubscript:*MEMORY[0x1E696DED8]];

  v6 = MEMORY[0x1E696AD98];
  [(PFMetadata *)self orientedPixelSize];
  v8 = [v6 numberWithDouble:v7];
  [v3 setObject:v8 forKeyedSubscript:*MEMORY[0x1E696DD58]];

  v9 = [(PFMetadataMovie *)self cameraMake];
  if (v9)
  {
  }

  else
  {
    v10 = [(PFMetadataMovie *)self cameraModel];

    if (!v10)
    {
      goto LABEL_5;
    }
  }

  v11 = [MEMORY[0x1E695DF90] dictionary];
  v12 = [(PFMetadataMovie *)self cameraMake];
  [v11 setObject:v12 forKeyedSubscript:*MEMORY[0x1E696DF48]];

  v13 = [(PFMetadataMovie *)self cameraModel];
  [v11 setObject:v13 forKeyedSubscript:*MEMORY[0x1E696DF50]];

  [v3 setObject:v11 forKeyedSubscript:*MEMORY[0x1E696DF28]];
LABEL_5:
  v14 = [(PFMetadata *)self gpsLocation];
  [v14 coordinate];
  if (v15 != 0.0)
  {
    v16 = [(PFMetadata *)self gpsLocation];
    [v16 coordinate];
    v18 = v17;

    if (v18 == 0.0)
    {
      goto LABEL_9;
    }

    v27[0] = *MEMORY[0x1E696DC18];
    v19 = MEMORY[0x1E696AD98];
    v14 = [(PFMetadata *)self gpsLocation];
    [v14 coordinate];
    v20 = [v19 numberWithDouble:?];
    v28[0] = v20;
    v27[1] = *MEMORY[0x1E696DC28];
    v21 = MEMORY[0x1E696AD98];
    v22 = [(PFMetadata *)self gpsLocation];
    [v22 coordinate];
    v24 = [v21 numberWithDouble:v23];
    v28[1] = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];
    [v3 setObject:v25 forKeyedSubscript:*MEMORY[0x1E696DBF0]];
  }

LABEL_9:

  return v3;
}

- (id)plistForEncoding
{
  v10.receiver = self;
  v10.super_class = PFMetadataMovie;
  v3 = [(PFMetadata *)&v10 plistForEncoding];
  v4 = [v3 mutableCopy];

  asset = self->_asset;
  if (asset)
  {
    v6 = [(AVAsset *)asset propertyListForProxy];
    [v4 setObject:v6 forKeyedSubscript:PFMetadataPlistAsset];

    v7 = [(NSMutableDictionary *)self->_cached_values objectForKeyedSubscript:PFMetadataPlistIdentifyingTagClass];
    [v4 setObject:v7 forKeyedSubscript:PFMetadataPlistIdentifyingTagClass];

    v8 = [(NSMutableDictionary *)self->_cached_values objectForKeyedSubscript:PFMetadataPlistOriginalAssetDateProperties];
    [v4 setObject:v8 forKeyedSubscript:PFMetadataPlistOriginalAssetDateProperties];
  }

  return v4;
}

- (void)_checkHFRMetadataKeyShouldPlayAtFullFrameRate:(BOOL *)a3 containsHFRPlaybackKey:(BOOL *)a4
{
  v7 = [(PFMetadata *)self typeVerifier];
  v8 = +[PFMetadataIdentifier quicktimeMetadataFullFrameRatePlaybackIntent];
  v9 = [(AVAsset *)self->_asset metadata];
  v11 = [v7 valueForAVMetadataIdentifier:v8 fromAVMetadataItems:v9];

  v10 = v11;
  if (v11)
  {
    *a3 = [v11 BOOLValue];
    v10 = v11;
    *a4 = 1;
  }
}

- (id)_computeFirstTrackOfType:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__4621;
  v13 = __Block_byref_object_dispose__4622;
  v14 = 0;
  asset = self->_asset;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__PFMetadataMovie__computeFirstTrackOfType___block_invoke;
  v8[3] = &unk_1E7B65170;
  v8[4] = &v9;
  [PFMetadataMovie _enumerateTracksOfType:v4 onAsset:asset withBlock:v8];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (opaqueCMFormatDescription)_computeFirstFormatDescriptionOfType:(id)a3
{
  v3 = [(PFMetadataMovie *)self _computeFirstTrackOfType:a3];
  v4 = [v3 formatDescriptions];
  v5 = [v4 firstObject];

  return v5;
}

- (void)_verifyTrackValuesLoadedForAsset:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v20 = a3;
  [v20 tracks];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v29 = 0u;
  v18 = [obj countByEnumeratingWithState:&v26 objects:v39 count:16];
  if (v18)
  {
    v17 = *v27;
    do
    {
      v3 = 0;
      do
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = v3;
        v4 = *(*(&v26 + 1) + 8 * v3);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v5 = [&unk_1F2AABD20 objectForKeyedSubscript:@"tracks"];
        v6 = [v5 countByEnumeratingWithState:&v22 objects:v38 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v23;
          do
          {
            v9 = 0;
            do
            {
              if (*v23 != v8)
              {
                objc_enumerationMutation(v5);
              }

              v10 = *(*(&v22 + 1) + 8 * v9);
              v21 = 0;
              v11 = [v4 statusOfValueForKey:v10 error:&v21];
              v12 = v21;
              if (v11 != 2)
              {
                v13 = metadataLog;
                if (os_log_type_enabled(metadataLog, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138413058;
                  v14 = @"no error";
                  if (v12)
                  {
                    v14 = v12;
                  }

                  v31 = v10;
                  v32 = 2048;
                  v33 = v20;
                  v34 = 2048;
                  v35 = v4;
                  v36 = 2112;
                  v37 = v14;
                  _os_log_debug_impl(&dword_1B35C1000, v13, OS_LOG_TYPE_DEBUG, "Value for key '%@' for asset '%p', track '%p' is not loaded: %@", buf, 0x2Au);
                }
              }

              ++v9;
            }

            while (v7 != v9);
            v15 = [v5 countByEnumeratingWithState:&v22 objects:v38 count:16];
            v7 = v15;
          }

          while (v15);
        }

        v3 = v19 + 1;
      }

      while (v19 + 1 != v18);
      v18 = [obj countByEnumeratingWithState:&v26 objects:v39 count:16];
    }

    while (v18);
  }
}

- (void)_verifyAllValuesLoadedForAsset:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [&unk_1F2AAB908 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        v10 = v7;
        if (*v18 != v8)
        {
          objc_enumerationMutation(&unk_1F2AAB908);
        }

        v11 = *(*(&v17 + 1) + 8 * v9);
        v16 = v7;
        v12 = [v4 statusOfValueForKey:v11 error:&v16];
        v7 = v16;

        if (v12 != 2)
        {
          v13 = metadataLog;
          if (os_log_type_enabled(metadataLog, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v14 = @"no error";
            if (v7)
            {
              v14 = v7;
            }

            v22 = v11;
            v23 = 2112;
            v24 = v14;
            _os_log_debug_impl(&dword_1B35C1000, v13, OS_LOG_TYPE_DEBUG, "Value for key '%@' not loaded: %@", buf, 0x16u);
          }
        }

        ++v9;
      }

      while (v6 != v9);
      v15 = [&unk_1F2AAB908 countByEnumeratingWithState:&v17 objects:v25 count:16];
      v6 = v15;
    }

    while (v15);
  }

  if ([&unk_1F2AAB908 containsObject:@"tracks"])
  {
    [(PFMetadataMovie *)self _verifyTrackValuesLoadedForAsset:v4];
  }
}

- (id)outOfBandHints
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __33__PFMetadataMovie_outOfBandHints__block_invoke;
  v4[3] = &unk_1E7B650F8;
  v4[4] = self;
  v2 = [(PFMetadataMovie *)self _cachedValueForKey:@"outOfBandHints" usingBlock:v4];

  return v2;
}

id __33__PFMetadataMovie_outOfBandHints__block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = *MEMORY[0x1E6987608];
  v4 = *(*(a1 + 32) + 176);
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __33__PFMetadataMovie_outOfBandHints__block_invoke_2;
  v33[3] = &unk_1E7B65210;
  v5 = v2;
  v6 = *(a1 + 32);
  v27 = v5;
  v34 = v5;
  v35 = v6;
  [PFMetadataMovie _enumerateTracksOfType:v3 onAsset:v4 withBlock:v33];
  v7 = MEMORY[0x1E6987FE0];
  v8 = +[PFMetadataIdentifier quicktimeMetadataSpatialAggressorsSeen];
  v9 = [v7 keyForIdentifier:v8];

  v10 = MEMORY[0x1E6987FE0];
  v11 = +[PFMetadataIdentifier quicktimeMetadataSpatialFormatVersion];
  v12 = [v10 keyForIdentifier:v11];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = [*(*(a1 + 32) + 176) metadata];
  v13 = [obj countByEnumeratingWithState:&v29 objects:v36 count:16];
  if (!v13)
  {
    goto LABEL_16;
  }

  v14 = v13;
  v15 = *v30;
  v16 = *MEMORY[0x1E6987850];
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v30 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v29 + 1) + 8 * i);
      v19 = [v18 keySpace];
      if ([v19 isEqual:v16])
      {
        v20 = [v18 key];
        v21 = [v20 isEqual:v9];

        if (!v21)
        {
          goto LABEL_10;
        }

        v19 = [v18 value];
        [v27 setObject:v19 forKeyedSubscript:v9];
      }

LABEL_10:
      v22 = [v18 keySpace];
      if ([v22 isEqual:v16])
      {
        v23 = [v18 key];
        v24 = [v23 isEqual:v12];

        if (!v24)
        {
          continue;
        }

        v22 = [v18 value];
        [v27 setObject:v22 forKeyedSubscript:v12];
      }
    }

    v14 = [obj countByEnumeratingWithState:&v29 objects:v36 count:16];
  }

  while (v14);
LABEL_16:

  if ([v27 count])
  {
    v25 = v27;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

void __33__PFMetadataMovie_outOfBandHints__block_invoke_2(uint64_t a1, void *a2, const opaqueCMFormatDescription *a3)
{
  v15 = a2;
  v5 = *MEMORY[0x1E6960068];
  v6 = CMFormatDescriptionGetExtension(a3, *MEMORY[0x1E6960068]);
  if (v6)
  {
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
  }

  v7 = *MEMORY[0x1E6962740];
  v8 = CMFormatDescriptionGetExtension(a3, *MEMORY[0x1E6962740]);
  if (v8)
  {
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];
  }

  v9 = *MEMORY[0x1E69627A0];
  v10 = CMFormatDescriptionGetExtension(a3, *MEMORY[0x1E69627A0]);
  if (v10)
  {
    [*(a1 + 32) setObject:v10 forKeyedSubscript:v9];
  }

  v11 = *MEMORY[0x1E69627B0];
  v12 = CMFormatDescriptionGetExtension(a3, *MEMORY[0x1E69627B0]);
  if (v12)
  {
    [*(a1 + 32) setObject:v12 forKeyedSubscript:v11];
  }

  v13 = [*(a1 + 40) _spatialVideoRecommendationForImmersiveModeForAssetVideoTrack:v15];
  if (v13 != 2)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:v13];
    [*(a1 + 32) setObject:v14 forKeyedSubscript:PFMetadataRecommendedForImmersiveModeKey];
  }
}

- (int64_t)_audioVideoProxyPropertyListForAsset:(id)a3 propertyList:(id *)a4 error:(id *)a5
{
  v61[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = self->_stateHandler;
  v10 = [v8 propertyListForProxy];
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    if (!a4)
    {
      goto LABEL_21;
    }

LABEL_20:
    v36 = v10;
    *a4 = v10;
    goto LABEL_21;
  }

  if ([(PFMetadata *)self allowExportForProxy])
  {
    v54 = 0;
    v55 = &v54;
    v56 = 0x2020000000;
    v57 = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__PFMetadataMovie__audioVideoProxyPropertyListForAsset_propertyList_error___block_invoke;
    block[3] = &unk_1E7B66D20;
    v13 = v9;
    v53 = v13;
    v14 = dispatch_block_create(0, block);
    [(PFMetadataStateHandler *)v13 addBreadcrumb:@"%s: Calling +determineCompatibilityOfExportPreset:", "[PFMetadataMovie _audioVideoProxyPropertyListForAsset:propertyList:error:]"];
    v15 = MEMORY[0x1E6987E60];
    v16 = *MEMORY[0x1E6987338];
    v17 = *MEMORY[0x1E69874C0];
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __75__PFMetadataMovie__audioVideoProxyPropertyListForAsset_propertyList_error___block_invoke_2;
    v49[3] = &unk_1E7B651E8;
    v51 = &v54;
    v42 = v16;
    v44 = v14;
    v50 = v44;
    v40 = v17;
    [v15 determineCompatibilityOfExportPreset:v16 withAsset:v8 outputFileType:v17 completionHandler:v49];
    dispatch_block_wait(v44, 0xFFFFFFFFFFFFFFFFLL);
    [(PFMetadataStateHandler *)v13 addBreadcrumb:@"%s: Completed +determineCompatibilityOfExportPreset:", "[PFMetadataMovie _audioVideoProxyPropertyListForAsset:propertyList:error:]"];
    if (*(v55 + 24) == 1)
    {
      v45 = MEMORY[0x1E695DFF8];
      v18 = NSTemporaryDirectory();
      v19 = [MEMORY[0x1E696AFB0] UUID];
      v20 = [v19 UUIDString];
      v21 = [v20 stringByAppendingPathExtension:@"mov"];
      v22 = [v18 stringByAppendingPathComponent:v21];
      v46 = [v45 fileURLWithPath:v22];

      if (v46)
      {
        v23 = [objc_alloc(MEMORY[0x1E6987E60]) initWithAsset:v8 presetName:v42];
        [v23 setOutputFileType:v40];
        [v23 setOutputURL:v46];
        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 3221225472;
        v47[2] = __75__PFMetadataMovie__audioVideoProxyPropertyListForAsset_propertyList_error___block_invoke_3;
        v47[3] = &unk_1E7B66D20;
        v24 = v13;
        v48 = v24;
        v25 = dispatch_block_create(0, v47);

        [(PFMetadataStateHandler *)v24 addBreadcrumb:@"%s: Calling -exportAsynchronouslyWithCompletionHandler: for AVAssetExportSession: %p", "[PFMetadataMovie _audioVideoProxyPropertyListForAsset:propertyList:error:]", v23];
        [v23 exportAsynchronouslyWithCompletionHandler:v25];
        dispatch_block_wait(v25, 0xFFFFFFFFFFFFFFFFLL);
        [(PFMetadataStateHandler *)v24 addBreadcrumb:@"%s: Completed -exportAsynchronouslyWithCompletionHandler:", "[PFMetadataMovie _audioVideoProxyPropertyListForAsset:propertyList:error:]"];
        if ([v23 status] == 3)
        {
          v26 = [MEMORY[0x1E6988168] URLAssetWithURL:v46 options:0];

          if (v26)
          {
            v10 = [v26 propertyListForProxy];
            v12 = 1;
          }

          else
          {
            v10 = 0;
            v12 = 0;
          }

          v35 = [MEMORY[0x1E696AC08] defaultManager];
          [v35 removeItemAtURL:v46 error:0];

          v11 = 0;
          v8 = v26;
        }

        else
        {
          v11 = [v23 error];
          v10 = 0;
          v12 = 3;
        }

        v34 = v48;
      }

      else
      {
        v39 = MEMORY[0x1E696ABC0];
        v60 = *MEMORY[0x1E696A578];
        v29 = MEMORY[0x1E696AEC0];
        v23 = NSTemporaryDirectory();
        v43 = [MEMORY[0x1E696AFB0] UUID];
        v41 = [(PFMetadataStateHandler *)v43 UUIDString];
        v30 = [v41 stringByAppendingPathExtension:@"mov"];
        v31 = [v23 stringByAppendingPathComponent:v30];
        v32 = [v29 stringWithFormat:@"Failed to create a URL for path '%@'", v31];
        v61[0] = v32;
        v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:&v60 count:1];
        v11 = [v39 errorWithDomain:@"com.apple.PhotosFormats" code:3 userInfo:v33];

        v10 = 0;
        v12 = 3;
        v34 = v43;
        v25 = v44;
      }
    }

    else
    {
      v27 = MEMORY[0x1E696ABC0];
      v58 = *MEMORY[0x1E696A578];
      v59 = @"Asset, is not compatible with the AVAssetExportPresetPassthrough export preset";
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
      v12 = 3;
      v11 = [v27 errorWithDomain:@"com.apple.PhotosFormats" code:3 userInfo:v28];
      v10 = 0;
      v25 = v44;
    }

    _Block_object_dispose(&v54, 8);
    if (a4)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v11 = 0;
    v10 = 0;
    v12 = 2;
    if (a4)
    {
      goto LABEL_20;
    }
  }

LABEL_21:
  if (a5)
  {
    v37 = v11;
    *a5 = v11;
  }

  return v12;
}

- (id)_exifTimezoneOffsetFromDateString:(id)a3 offsetInSeconds:(int64_t *)a4
{
  v5 = a3;
  if (_exifTimezoneOffsetFromDateString_offsetInSeconds__onceToken != -1)
  {
    dispatch_once(&_exifTimezoneOffsetFromDateString_offsetInSeconds__onceToken, &__block_literal_global_287);
  }

  v6 = [_exifTimezoneOffsetFromDateString_offsetInSeconds__timeZoneSuffixRegex firstMatchInString:v5 options:0 range:{0, objc_msgSend(v5, "length")}];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 rangeAtIndex:1];
    v10 = [v5 substringWithRange:{v8, v9}];
    v11 = [v7 rangeAtIndex:2];
    v13 = [v5 substringWithRange:{v11, v12}];
    v14 = [v7 rangeAtIndex:3];
    v16 = [v5 substringWithRange:{v14, v15}];
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@:%@", v10, v13, v16];
    if (a4)
    {
      v18 = [v10 isEqualToString:@"-"];
      v19 = [v13 intValue];
      v20 = 3600 * v19 + 60 * [v16 intValue];
      if (v18)
      {
        v20 = -v20;
      }

      *a4 = v20;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

uint64_t __69__PFMetadataMovie__exifTimezoneOffsetFromDateString_offsetInSeconds___block_invoke()
{
  _exifTimezoneOffsetFromDateString_offsetInSeconds__timeZoneSuffixRegex = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"(-|\\+)(\\d\\d)(\\d\\d)$" options:0 error:0];

  return MEMORY[0x1EEE66BB8]();
}

- (AudioStreamBasicDescription)_audioStreamBasicDescription
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__PFMetadataMovie__audioStreamBasicDescription__block_invoke;
  v6[3] = &unk_1E7B650F8;
  v6[4] = self;
  v4 = [(PFMetadataMovie *)self _cachedValueForKey:@"audioStreamBasicDescription" usingBlock:v6];
  *&retstr->mSampleRate = 0u;
  *&retstr->mBytesPerPacket = 0u;
  *&retstr->mBitsPerChannel = 0;
  [v4 getValue:retstr];

  return result;
}

id __47__PFMetadataMovie__audioStreamBasicDescription__block_invoke(uint64_t a1)
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  [PFMetadataMovie audioStreamBasicDescriptionForAsset:*(*(a1 + 32) + 176), 0, 0, 0, 0, 0];
  v1 = [MEMORY[0x1E696B098] valueWithBytes:v3 objCType:"{AudioStreamBasicDescription=dIIIIIIII}"];

  return v1;
}

- (opaqueCMFormatDescription)_firstVideoTrackFormatDescription
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__PFMetadataMovie__firstVideoTrackFormatDescription__block_invoke;
  v3[3] = &unk_1E7B650F8;
  v3[4] = self;
  return [(PFMetadataMovie *)self _cachedValueForKey:@"firstVideoTrackFormatDescription" usingBlock:v3];
}

id __52__PFMetadataMovie__firstVideoTrackFormatDescription__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _firstVideoTrack];
  v2 = [v1 formatDescriptions];
  v3 = [v2 firstObject];

  return v3;
}

- (id)_firstAudioTrack
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __35__PFMetadataMovie__firstAudioTrack__block_invoke;
  v4[3] = &unk_1E7B650F8;
  v4[4] = self;
  v2 = [(PFMetadataMovie *)self _cachedValueForKey:@"firstAudioTrack" usingBlock:v4];

  return v2;
}

- (id)_firstVideoTrack
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __35__PFMetadataMovie__firstVideoTrack__block_invoke;
  v4[3] = &unk_1E7B650F8;
  v4[4] = self;
  v2 = [(PFMetadataMovie *)self _cachedValueForKey:@"firstVideoTrack" usingBlock:v4];

  return v2;
}

- (id)_apacProfileLevelDescriptionForFormatDescription:(opaqueCMFormatDescription *)a3 audioStreamBasicDescription:(AudioStreamBasicDescription *)a4
{
  v22 = *MEMORY[0x1E69E9840];
  sizeOut = 0;
  MagicCookie = CMAudioFormatDescriptionGetMagicCookie(a3, &sizeOut);
  v17 = 0;
  v18 = 0;
  v6 = *&a4->mBytesPerPacket;
  inSpecifier[0] = *&a4->mSampleRate;
  inSpecifier[1] = v6;
  v15 = *&a4->mBitsPerChannel;
  v16 = MagicCookie;
  LODWORD(v17) = sizeOut;
  LODWORD(v18) = 1836069990;
  ioPropertyDataSize = 0;
  v12 = 0;
  Property = AudioFormatGetProperty(0x63706166u, 0x40u, inSpecifier, &ioPropertyDataSize, &v12);
  if (Property)
  {
    v8 = Property;
    v9 = metadataLog;
    if (os_log_type_enabled(metadataLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v21 = v8;
      _os_log_error_impl(&dword_1B35C1000, v9, OS_LOG_TYPE_ERROR, "Unable to get audio format property for APAC profile/level description: %d", buf, 8u);
    }

    v10 = 0;
  }

  else
  {
    v10 = v12;
  }

  return v10;
}

- (id)_contextForKeys:(id)a3 collectionKeys:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 componentsJoinedByString:{@", "}];
  if ([v6 count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = v5;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [v6 objectForKeyedSubscript:*(*(&v19 + 1) + 8 * i)];
          v14 = v13;
          if (v13)
          {
            v15 = [v13 componentsJoinedByString:{@", "}];
            v16 = [v7 stringByAppendingString:v15];

            v7 = v16;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    v5 = v18;
  }

  return v7;
}

- (id)_cachedValueForKey:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_cached_values objectForKeyedSubscript:v6];
  if (!v8)
  {
    v9 = v7[2](v7);
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [MEMORY[0x1E695DFB0] null];
    }

    v8 = v11;

    [(NSMutableDictionary *)self->_cached_values setObject:v8 forKeyedSubscript:v6];
  }

  v12 = [MEMORY[0x1E695DFB0] null];
  if ([v8 isEqual:v12])
  {
    v13 = 0;
  }

  else
  {
    v13 = v8;
  }

  v14 = v13;

  return v13;
}

- (id)_makeGeometryProperties
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__PFMetadataMovie__makeGeometryProperties__block_invoke;
  v4[3] = &unk_1E7B650F8;
  v4[4] = self;
  v2 = [(PFMetadataMovie *)self _cachedValueForKey:@"geometryProperties" usingBlock:v4];

  return v2;
}

id __42__PFMetadataMovie__makeGeometryProperties__block_invoke(uint64_t a1)
{
  v20[3] = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) _firstVideoTrack];
  [v1 naturalSize];
  v3 = v2;
  v5 = v4;
  if (v1)
  {
    [v1 preferredTransform];
    v7 = v15;
    v6 = v16;
    v9 = v17;
    v8 = v18;
  }

  else
  {
    v8 = 0.0;
    v6 = 0.0;
    v9 = 0.0;
    v7 = 0.0;
  }

  v22.size.width = v5 * v9 + v7 * v3;
  v22.size.height = v5 * v8 + v6 * v3;
  v22.origin.x = 0.0;
  v22.origin.y = 0.0;
  v23 = CGRectStandardize(v22);
  height = v23.size.height;
  v19[0] = *MEMORY[0x1E696DED8];
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:{v23.size.width, v23.origin.y}];
  v20[0] = v11;
  v19[1] = *MEMORY[0x1E696DEC8];
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:height];
  v19[2] = *MEMORY[0x1E696DE78];
  v20[1] = v12;
  v20[2] = &unk_1F2AAB3F8;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];

  return v13;
}

- (id)_makeDateTimePropertiesForAsset:(id)a3
{
  v4 = a3;
  v5 = PFMetadataPlistOriginalAssetDateProperties;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__PFMetadataMovie__makeDateTimePropertiesForAsset___block_invoke;
  v9[3] = &unk_1E7B65198;
  v10 = v4;
  v11 = self;
  v6 = v4;
  v7 = [(PFMetadataMovie *)self _cachedValueForKey:v5 usingBlock:v9];

  return v7;
}

id __51__PFMetadataMovie__makeDateTimePropertiesForAsset___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = [MEMORY[0x1E695DF90] dictionary];
    v3 = [MEMORY[0x1E695DF90] dictionary];
    v4 = *MEMORY[0x1E696D9B0];
    [v2 setObject:v3 forKeyedSubscript:*MEMORY[0x1E696D9B0]];

    *v26 = 0;
    v5 = [*(a1 + 40) typeVerifier];
    v6 = *MEMORY[0x1E6987638];
    v7 = [*(*(a1 + 40) + 176) metadata];
    v8 = [v5 valueForAVMetadataIdentifier:v6 fromAVMetadataItems:v7];

    v9 = [MEMORY[0x1E696AB08] controlCharacterSet];
    v10 = [v8 componentsSeparatedByCharactersInSet:v9];
    v11 = [v10 componentsJoinedByString:&stru_1F2A8EB68];

    if (!v11)
    {
      goto LABEL_10;
    }

    v12 = PFGMTTimeZone();
    v13 = PFDateFromStringTimeZoneFormat(v11, v12, @"yyyy-MM-dd'T'HH:mm:ssZZZZZ");

    if (v13)
    {
      v14 = [PFMetadataMovie exifTimezoneOffsetFromDateString:v8 offsetInSeconds:v26];
      if (v14)
      {
        v15 = v14;
        v16 = [v2 objectForKeyedSubscript:v4];
        [v16 setObject:v15 forKeyedSubscript:*MEMORY[0x1E696DAA0]];

        v17 = *v26;
LABEL_14:

        v21 = [v13 dateByAddingTimeInterval:v17];
        v22 = PFGMTTimeZone();
        v23 = PFStringFromDateTimeZoneFormat(v21, v22, 0);

        v24 = [v2 objectForKeyedSubscript:v4];
        [v24 setObject:v23 forKeyedSubscript:*MEMORY[0x1E696D998]];

        goto LABEL_15;
      }

LABEL_13:
      v15 = [MEMORY[0x1E695DFE8] localTimeZone];
      v17 = [v15 secondsFromGMTForDate:v13];
      goto LABEL_14;
    }

    v19 = PFDateFromString(v8);
    if (!v19)
    {
LABEL_10:
      v20 = [*(a1 + 32) creationDate];
      v13 = [v20 dateValue];

      if (v13)
      {
        goto LABEL_13;
      }

      v19 = [*(a1 + 40) fileCreationDate];
      if (!v19)
      {
LABEL_15:

        goto LABEL_16;
      }
    }

    v13 = v19;
    goto LABEL_13;
  }

  v18 = metadataLog;
  if (os_log_type_enabled(metadataLog, OS_LOG_TYPE_ERROR))
  {
    *v26 = 136315138;
    *&v26[4] = "[PFMetadataMovie _makeDateTimePropertiesForAsset:]_block_invoke";
    _os_log_error_impl(&dword_1B35C1000, v18, OS_LOG_TYPE_ERROR, "asset should not be nil %s", v26, 0xCu);
  }

  v2 = 0;
LABEL_16:

  return v2;
}

- (id)_makeGPSProperties
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__PFMetadataMovie__makeGPSProperties__block_invoke;
  v4[3] = &unk_1E7B650F8;
  v4[4] = self;
  v2 = [(PFMetadataMovie *)self _cachedValueForKey:@"gpsProperties" usingBlock:v4];

  return v2;
}

id __37__PFMetadataMovie__makeGPSProperties__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
  v3 = [*(a1 + 32) typeVerifier];
  v4 = *MEMORY[0x1E6987648];
  v5 = [*(*(a1 + 32) + 176) metadata];
  v6 = [v3 valueForAVMetadataIdentifier:v4 fromAVMetadataItems:v5];

  if (v6)
  {
    v10 = 0.0;
    v11 = 0.0;
    if ([PFMetadataMovie parseISO6709String:v6 outLatitude:&v11 outLongitude:&v10])
    {
      v7 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
      if (v7 && *MEMORY[0x1E696DC18])
      {
        [v2 setObject:v7 forKeyedSubscript:?];
      }

      v8 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
      if (v8 && *MEMORY[0x1E696DC28])
      {
        [v2 setObject:v8 forKeyedSubscript:?];
      }
    }
  }

  return v2;
}

- (void)_computeChannelCountsForApacAudioTrackInfo:(id)a3 maxChannelCount:(unint64_t)a4 audioChannelLayout:(const AudioChannelLayout *)a5
{
  v20 = a3;
  if ([objc_opt_class() _channelLayoutUsesChannelDescriptions:a5])
  {
    mNumberChannelDescriptions = a5->mNumberChannelDescriptions;
    if (mNumberChannelDescriptions)
    {
      v8 = 0;
      mChannelLayoutTag_low = 0;
      mChannelDescriptions = a5->mChannelDescriptions;
      do
      {
        mChannelLabel = mChannelDescriptions->mChannelLabel;
        ++mChannelDescriptions;
        v12 = (mChannelLabel & 0xFFFF0000) != 0x10000;
        v13 = mChannelLabel & 0xFFFE0000;
        if ((mChannelLabel & 0xFFFF0000) == 0x10000)
        {
          ++v8;
        }

        v14 = v13 == 0x20000 && v12;
        mChannelLayoutTag_low += v14;
        --mNumberChannelDescriptions;
      }

      while (mNumberChannelDescriptions);
    }

    else
    {
      mChannelLayoutTag_low = 0;
      v8 = 0;
    }

    v15 = a4 - v8 - mChannelLayoutTag_low;
  }

  else
  {
    v15 = 0;
    if ([objc_opt_class() _channelLayoutUsesHOA:a5])
    {
      mChannelLayoutTag_low = LOWORD(a5->mChannelLayoutTag);
    }

    else
    {
      mChannelLayoutTag_low = 0;
    }
  }

  if (a4)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    [v20 setObject:v16 forKeyedSubscript:@"channelCount"];
  }

  if (mChannelLayoutTag_low)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:mChannelLayoutTag_low];
    [v20 setObject:v17 forKeyedSubscript:@"hoaChannelCount"];
  }

  v18 = v20;
  if (v15)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v15];
    [v20 setObject:v19 forKeyedSubscript:@"bedChannelCount"];

    v18 = v20;
  }
}

- (id)_computeApacAudioTrackInfo
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__PFMetadataMovie__computeApacAudioTrackInfo__block_invoke;
  v4[3] = &unk_1E7B650F8;
  v4[4] = self;
  v2 = [(PFMetadataMovie *)self _cachedValueForKey:@"apacAudioTrackInfo" usingBlock:v4];

  return v2;
}

id __45__PFMetadataMovie__computeApacAudioTrackInfo__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v12[3] = 0;
  v3 = *MEMORY[0x1E69875A0];
  v4 = *(a1 + 32);
  v5 = *(v4 + 176);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__PFMetadataMovie__computeApacAudioTrackInfo__block_invoke_2;
  v9[3] = &unk_1E7B651C0;
  v9[4] = v4;
  v11 = v12;
  v6 = v2;
  v10 = v6;
  [PFMetadataMovie _enumerateTracksOfType:v3 onAsset:v5 withBlock:v9];
  v7 = [v6 copy];

  _Block_object_dispose(v12, 8);

  return v7;
}

void __45__PFMetadataMovie__computeApacAudioTrackInfo__block_invoke_2(uint64_t a1, void *a2, const opaqueCMFormatDescription *a3, uint64_t a4, _BYTE *a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v9 = a2;
  if (a4 == 1634754915 || a4 == 1902211171 || a4 == 1667330147)
  {
    RichestDecodableFormat = CMAudioFormatDescriptionGetRichestDecodableFormat(a3);
    if (RichestDecodableFormat)
    {
      v11 = RichestDecodableFormat;
      *(*(*(a1 + 48) + 8) + 24) = RichestDecodableFormat->mASBD.mChannelsPerFrame;
      [*(a1 + 32) _computeChannelCountsForApacAudioTrackInfo:*(a1 + 40) maxChannelCount:*(*(*(a1 + 48) + 8) + 24) audioChannelLayout:{CMAudioFormatDescriptionGetChannelLayout(a3, 0)}];
      v12 = *(a1 + 32);
      v13 = *&v11->mASBD.mSampleRate;
      v14 = *&v11->mASBD.mBytesPerPacket;
      v21 = *&v11->mASBD.mBitsPerChannel;
      *v20 = v13;
      *&v20[16] = v14;
      v15 = [v12 _apacProfileLevelDescriptionForFormatDescription:a3 audioStreamBasicDescription:v20];
      [*(a1 + 40) setObject:v15 forKeyedSubscript:@"codecProfileLevelDescription"];

      *a5 = 1;
    }

    else
    {
      v16 = metadataLog;
      if (os_log_type_enabled(metadataLog, OS_LOG_TYPE_ERROR))
      {
        v17 = v16;
        v18 = [PFMediaUtilities stringFromFourCharCode:a4];
        v19 = *(*(a1 + 32) + 176);
        *v20 = 138543618;
        *&v20[4] = v18;
        *&v20[12] = 2112;
        *&v20[14] = v19;
        _os_log_error_impl(&dword_1B35C1000, v17, OS_LOG_TYPE_ERROR, "Unable to get format list item for track with codec %{public}@ in asset %@", v20, 0x16u);
      }
    }
  }
}

- (id)_computeHEVCProfileInfo
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [PFMediaUtilities hevcProfileInformationForVideoTrackFormatDescription:[(PFMetadataMovie *)self _firstVideoTrackFormatDescription]];
  if (!v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    asset = self->_asset;
    v6 = 138412290;
    v7 = asset;
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Unable to get profile/tier/level for %@", &v6, 0xCu);
  }

  return v3;
}

- (int64_t)_spatialVideoRecommendationForImmersiveModeForAssetVideoTrack:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"spatialVideoRecommendationForImmersiveMode.%d", objc_msgSend(v4, "trackID")];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81__PFMetadataMovie__spatialVideoRecommendationForImmersiveModeForAssetVideoTrack___block_invoke;
  v10[3] = &unk_1E7B65198;
  v10[4] = self;
  v11 = v4;
  v6 = v4;
  v7 = [(PFMetadataMovie *)self _cachedValueForKey:v5 usingBlock:v10];
  v8 = [v7 integerValue];

  return v8;
}

id __81__PFMetadataMovie__spatialVideoRecommendationForImmersiveModeForAssetVideoTrack___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isSpatialMedia])
  {
    v2 = [PFMediaUtilities metadataForFormat:*MEMORY[0x1E6987700] forAssetTrack:*(a1 + 40)];
    v3 = [*(a1 + 32) typeVerifier];
    v4 = +[PFMetadataIdentifier quicktimeMetadataSpatialVideoRecommendedForImmersiveMode];
    v5 = [v3 valueForAVMetadataIdentifier:v4 fromAVMetadataItems:v2];

    v6 = MEMORY[0x1E696AD98];
    if (v5)
    {
      v7 = [v5 BOOLValue];
    }

    else
    {
      v7 = 2;
    }

    v8 = [v6 numberWithInteger:v7];
  }

  else
  {
    v8 = MEMORY[0x1E695E110];
  }

  return v8;
}

- (int64_t)spatialVideoRecommendationForImmersiveMode
{
  v3 = [(PFMetadataMovie *)self spatialMediaTrack];
  v4 = [(PFMetadataMovie *)self _spatialVideoRecommendationForImmersiveModeForAssetVideoTrack:v3];

  return v4;
}

- (BOOL)isSpatialMedia
{
  v2 = [(PFMetadataMovie *)self spatialMediaTrack];
  v3 = v2 != 0;

  return v3;
}

- (id)spatialMediaTrack
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__PFMetadataMovie_spatialMediaTrack__block_invoke;
  v4[3] = &unk_1E7B650F8;
  v4[4] = self;
  v2 = [(PFMetadataMovie *)self _cachedValueForKey:@"spatialMediaTrack" usingBlock:v4];

  return v2;
}

id __36__PFMetadataMovie_spatialMediaTrack__block_invoke(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__4621;
  v10 = __Block_byref_object_dispose__4622;
  v11 = 0;
  v1 = *MEMORY[0x1E6987608];
  v2 = *(*(a1 + 32) + 176);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__PFMetadataMovie_spatialMediaTrack__block_invoke_2;
  v5[3] = &unk_1E7B65170;
  v5[4] = &v6;
  [PFMetadataMovie _enumerateTracksOfType:v1 onAsset:v2 withBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __36__PFMetadataMovie_spatialMediaTrack__block_invoke_2(uint64_t a1, void *a2, const opaqueCMFormatDescription *a3, uint64_t a4, _BYTE *a5)
{
  v17 = a2;
  v9 = CMFormatDescriptionGetExtension(a3, *MEMORY[0x1E6962740]);
  v10 = CMFormatDescriptionGetExtension(a3, *MEMORY[0x1E69627A0]);
  v11 = CMFormatDescriptionGetExtension(a3, *MEMORY[0x1E69627B0]);
  v12 = v11;
  if (v11)
  {
    v13 = [v11 isEqual:*MEMORY[0x1E69627E8]];
  }

  else
  {
    v13 = 1;
  }

  if ([v17 hasMediaCharacteristic:*MEMORY[0x1E6987520]])
  {
    v14 = v9 == 0;
  }

  else
  {
    v14 = 1;
  }

  v16 = v14 || v10 == 0 || v13 == 0;
  if (!v16 && [v17 hasMediaCharacteristic:*MEMORY[0x1E6987548]])
  {
    *a5 = 1;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

- (BOOL)_computeIsProRes
{
  v2 = [(PFMetadataMovie *)self firstVideoTrackCodec];
  result = 1;
  if (v2 <= 1634743415)
  {
    if (v2 != 1634742376 && v2 != 1634742888)
    {
      v4 = 13416;
LABEL_9:
      if (v2 != (v4 | 0x61700000))
      {
        return 0;
      }
    }
  }

  else if (((v2 - 1634755432) > 0xB || ((1 << (v2 - 104)) & 0x8C1) == 0) && ((v2 - 1634759272) > 6 || ((1 << (v2 - 104)) & 0x51) == 0))
  {
    v4 = 13432;
    goto LABEL_9;
  }

  return result;
}

- (id)_computeStillImageDisplayTimeDictionary
{
  v42[1] = *MEMORY[0x1E69E9840];
  v3 = self->_asset;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v29 = v3;
    v4 = [(PFMetadata *)self fileURL];

    if (!v4)
    {
      goto LABEL_27;
    }

    v5 = MEMORY[0x1E6988168];
    v6 = [(PFMetadata *)self fileURL];
    v7 = [(PFMetadata *)self noOutOfProcess];
    if (v7)
    {
      v41 = *MEMORY[0x1E6987388];
      v42[0] = MEMORY[0x1E695E118];
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:&v41 count:1];
    }

    else
    {
      v8 = 0;
    }

    v9 = [v5 URLAssetWithURL:v6 options:v8];

    if (v7)
    {
    }

    v3 = v9;
  }

  v10 = MEMORY[0x1E6960C70];
  value = *MEMORY[0x1E6960C70];
  timescale = *(MEMORY[0x1E6960C70] + 8);
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__4621;
  v36 = __Block_byref_object_dispose__4622;
  v37 = 0;
  v11 = *MEMORY[0x1E69875D0];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __58__PFMetadataMovie__computeStillImageDisplayTimeDictionary__block_invoke;
  v31[3] = &unk_1E7B65170;
  v31[4] = &v32;
  [PFMetadataMovie _enumerateTracksOfType:v11 onAsset:v3 withBlock:v31];
  flags = *(v10 + 12);
  epoch = *(v10 + 16);
  v14 = v33[5];
  v29 = v3;
  if (v14)
  {
    v15 = [MEMORY[0x1E6987EA8] assetReaderTrackOutputWithTrack:v14 outputSettings:0];
    v30 = 0;
    v16 = [MEMORY[0x1E6987E78] assetReaderWithAsset:v3 error:&v30];
    v28 = v30;
    if (v16)
    {
      [v16 setPreparesMediaDataForRealTimeConsumption:1];
      [v16 addOutput:v15];
      [v16 startReading];
      v17 = *MEMORY[0x1E69629E0];
      do
      {
        v18 = [v15 copyNextSampleBuffer];
        v19 = v18;
        if (!v18)
        {
          break;
        }

        if (CMSampleBufferGetNumSamples(v18))
        {
          v20 = [objc_alloc(MEMORY[0x1E6988160]) initWithSampleBuffer:v19];
          v21 = MEMORY[0x1E6987FE0];
          v22 = [v20 items];
          v23 = [v21 metadataItemsFromArray:v22 filteredByIdentifier:v17];
          v24 = [v23 firstObject];

          if (v24)
          {
            CMSampleBufferGetOutputPresentationTimeStamp(&time, v19);
            value = time.value;
            flags = time.flags;
            timescale = time.timescale;
            epoch = time.epoch;
          }
        }

        CFRelease(v19);
      }

      while ((flags & 1) == 0);
      [v16 cancelReading];
    }

    if ((flags & 1) == 0)
    {
      v25 = metadataLog;
      if (os_log_type_enabled(metadataLog, OS_LOG_TYPE_ERROR))
      {
        LODWORD(time.value) = 138412290;
        *(&time.value + 4) = v28;
        _os_log_error_impl(&dword_1B35C1000, v25, OS_LOG_TYPE_ERROR, "Invalid still image display time: %@", &time, 0xCu);
      }
    }
  }

  if (flags)
  {
    v26 = *MEMORY[0x1E695E480];
    time.value = value;
    time.timescale = timescale;
    time.flags = flags;
    time.epoch = epoch;
    v4 = CMTimeCopyAsDictionary(&time, v26);
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v32, 8);

LABEL_27:

  return v4;
}

void __58__PFMetadataMovie__computeStillImageDisplayTimeDictionary__block_invoke(uint64_t a1, void *a2, const opaqueCMFormatDescription *a3, uint64_t a4, _BYTE *a5)
{
  v10 = a2;
  v9 = CMMetadataFormatDescriptionGetIdentifiers(a3);
  if ([v9 containsObject:*MEMORY[0x1E69629E0]])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a5 = 1;
  }
}

- (BOOL)isFrontAndRearComposition
{
  v3 = [(PFMetadata *)self typeVerifier];
  v4 = +[PFMetadataIdentifier quicktimeMetadataFrontAndRearComposition];
  v5 = [(AVAsset *)self->_asset metadata];
  v6 = [v3 valueForAVMetadataIdentifier:v4 fromAVMetadataItems:v5];
  v7 = [v6 intValue] != 0;

  return v7;
}

- (signed)smartStyleVideoCastValue
{
  v3 = [(PFMetadata *)self typeVerifier];
  v4 = +[PFMetadataIdentifier quicktimeMetadataSmartStyleCast];
  v5 = [(AVAsset *)self->_asset metadata];
  v6 = [v3 valueForAVMetadataIdentifier:v4 fromAVMetadataItems:v5];
  v7 = [v6 intValue];

  return v7;
}

- (id)hevcProfileInfo
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__PFMetadataMovie_hevcProfileInfo__block_invoke;
  v4[3] = &unk_1E7B650F8;
  v4[4] = self;
  v2 = [(PFMetadataMovie *)self _cachedValueForKey:@"hevcProfileInfo" usingBlock:v4];

  return v2;
}

- (id)outOfBandHintsBase64String
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__PFMetadataMovie_outOfBandHintsBase64String__block_invoke;
  v4[3] = &unk_1E7B650F8;
  v4[4] = self;
  v2 = [(PFMetadataMovie *)self _cachedValueForKey:@"outOfBandHintsBase64String" usingBlock:v4];

  return v2;
}

id __45__PFMetadataMovie_outOfBandHintsBase64String__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) outOfBandHints];
  if (![v1 count])
  {
    v4 = 0;
    goto LABEL_10;
  }

  v9 = 0;
  v2 = [MEMORY[0x1E696AE40] dataWithPropertyList:v1 format:200 options:0 error:&v9];
  v3 = v9;
  if (!v2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v3;
      v5 = MEMORY[0x1E69E9C10];
      v6 = "Plist serialization failure for URL out of band hints: %@";
      v7 = 12;
      goto LABEL_14;
    }

LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  v4 = [v2 base64EncodedStringWithOptions:0];
  if (!v4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v5 = MEMORY[0x1E69E9C10];
      v6 = "Base64 serialization failure for URL out of band hints";
      v7 = 2;
LABEL_14:
      _os_log_error_impl(&dword_1B35C1000, v5, OS_LOG_TYPE_ERROR, v6, buf, v7);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:

LABEL_10:

  return v4;
}

- (id)apacAudioTrackCodecProfileLevelDescription
{
  v2 = [(PFMetadataMovie *)self _computeApacAudioTrackInfo];
  v3 = [v2 objectForKeyedSubscript:@"codecProfileLevelDescription"];

  return v3;
}

- (id)apacAudioTrackBedChannelCount
{
  v2 = [(PFMetadataMovie *)self _computeApacAudioTrackInfo];
  v3 = [v2 objectForKeyedSubscript:@"bedChannelCount"];

  return v3;
}

- (id)apacAudioTrackHoaChannelCount
{
  v2 = [(PFMetadataMovie *)self _computeApacAudioTrackInfo];
  v3 = [v2 objectForKeyedSubscript:@"hoaChannelCount"];

  return v3;
}

- (id)apacAudioTrackChannelCount
{
  v2 = [(PFMetadataMovie *)self _computeApacAudioTrackInfo];
  v3 = [v2 objectForKeyedSubscript:@"channelCount"];

  return v3;
}

- (BOOL)isPlayable
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__PFMetadataMovie_isPlayable__block_invoke;
  v5[3] = &unk_1E7B650F8;
  v5[4] = self;
  v2 = [(PFMetadataMovie *)self _cachedValueForKey:@"isPlayable" usingBlock:v5];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t __29__PFMetadataMovie_isPlayable__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E696AD98];
  v2 = [*(*(a1 + 32) + 176) isPlayable];

  return [v1 numberWithBool:v2];
}

- (BOOL)isDecodable
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__PFMetadataMovie_isDecodable__block_invoke;
  v5[3] = &unk_1E7B650F8;
  v5[4] = self;
  v2 = [(PFMetadataMovie *)self _cachedValueForKey:@"isDecodable" usingBlock:v5];
  v3 = [v2 BOOLValue];

  return v3;
}

id __30__PFMetadataMovie_isDecodable__block_invoke(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  v1 = *MEMORY[0x1E6987608];
  v2 = *(*(a1 + 32) + 176);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__PFMetadataMovie_isDecodable__block_invoke_2;
  v5[3] = &unk_1E7B65170;
  v5[4] = &v6;
  [PFMetadataMovie _enumerateTracksOfType:v1 onAsset:v2 withBlock:v5];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:*(v7 + 24)];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __30__PFMetadataMovie_isDecodable__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = a2;
  if ([v7 isEnabled] && (objc_msgSend(v7, "isDecodable") & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a5 = 1;
  }
}

- (id)transferFunction
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __35__PFMetadataMovie_transferFunction__block_invoke;
  v4[3] = &unk_1E7B650F8;
  v4[4] = self;
  v2 = [(PFMetadataMovie *)self _cachedValueForKey:@"transferFunction" usingBlock:v4];

  return v2;
}

CFPropertyListRef __35__PFMetadataMovie_transferFunction__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _firstVideoTrackFormatDescription];
  v2 = *MEMORY[0x1E6965F30];

  return CMFormatDescriptionGetExtension(v1, v2);
}

- (id)colorPrimaries
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __33__PFMetadataMovie_colorPrimaries__block_invoke;
  v4[3] = &unk_1E7B650F8;
  v4[4] = self;
  v2 = [(PFMetadataMovie *)self _cachedValueForKey:@"colorPrimaries" usingBlock:v4];

  return v2;
}

CFPropertyListRef __33__PFMetadataMovie_colorPrimaries__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _firstVideoTrackFormatDescription];
  v2 = *MEMORY[0x1E6965D88];

  return CMFormatDescriptionGetExtension(v1, v2);
}

- (id)firstVideoTrackFormatDebugDescription
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__PFMetadataMovie_firstVideoTrackFormatDebugDescription__block_invoke;
  v4[3] = &unk_1E7B650F8;
  v4[4] = self;
  v2 = [(PFMetadataMovie *)self _cachedValueForKey:@"firstVideoTrackFormatDebugDescription" usingBlock:v4];

  return v2;
}

id __56__PFMetadataMovie_firstVideoTrackFormatDebugDescription__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _firstVideoTrack];
  v2 = [PFMediaUtilities formatDebugDescriptionForVideoTrack:v1];

  return v2;
}

- (id)captureMode
{
  v3 = +[PFMetadataIdentifier quickTimeMetadataCaptureMode];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __30__PFMetadataMovie_captureMode__block_invoke;
  v6[3] = &unk_1E7B650F8;
  v6[4] = self;
  v4 = [(PFMetadataMovie *)self _cachedValueForKey:v3 usingBlock:v6];

  return v4;
}

id __30__PFMetadataMovie_captureMode__block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x1E6987700];
  v3 = [*(a1 + 32) _firstVideoTrack];
  v4 = [PFMediaUtilities metadataForFormat:v2 forAssetTrack:v3];

  v5 = [*(a1 + 32) typeVerifier];
  v6 = +[PFMetadataIdentifier quickTimeMetadataCaptureMode];
  v7 = [v5 valueForAVMetadataIdentifier:v6 fromAVMetadataItems:v4];

  return v7;
}

- (id)author
{
  v2 = *MEMORY[0x1E6987630];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __25__PFMetadataMovie_author__block_invoke;
  v5[3] = &unk_1E7B650F8;
  v5[4] = self;
  v3 = [(PFMetadataMovie *)self _cachedValueForKey:v2 usingBlock:v5];

  return v3;
}

id __25__PFMetadataMovie_author__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) typeVerifier];
  v3 = *MEMORY[0x1E6987630];
  v4 = [*(*(a1 + 32) + 176) metadata];
  v5 = [v2 valueForAVMetadataIdentifier:v3 fromAVMetadataItems:v4];

  return v5;
}

- (id)montageString
{
  v2 = *MEMORY[0x1E69877D0];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__PFMetadataMovie_montageString__block_invoke;
  v5[3] = &unk_1E7B650F8;
  v5[4] = self;
  v3 = [(PFMetadataMovie *)self _cachedValueForKey:v2 usingBlock:v5];

  return v3;
}

id __32__PFMetadataMovie_montageString__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) typeVerifier];
  v3 = *MEMORY[0x1E69877D0];
  v4 = [*(*(a1 + 32) + 176) metadata];
  v5 = [v2 valueForAVMetadataIdentifier:v3 fromAVMetadataItems:v4];

  return v5;
}

- (BOOL)isActionCam
{
  v3 = +[PFMetadataIdentifier quickTimeMetadataKeyActionVideoStabilizationStrength];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __30__PFMetadataMovie_isActionCam__block_invoke;
  v7[3] = &unk_1E7B650F8;
  v7[4] = self;
  v4 = [(PFMetadataMovie *)self _cachedValueForKey:v3 usingBlock:v7];
  v5 = [v4 BOOLValue];

  return v5;
}

id __30__PFMetadataMovie_isActionCam__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [*(a1 + 32) typeVerifier];
  v4 = +[PFMetadataIdentifier quickTimeMetadataKeyActionVideoStabilizationStrength];
  v5 = [*(*(a1 + 32) + 176) metadata];
  v6 = [v3 valueForAVMetadataIdentifier:v4 fromAVMetadataItems:v5];
  v7 = [v2 numberWithInt:v6 != 0];

  return v7;
}

- (BOOL)isProRes
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__PFMetadataMovie_isProRes__block_invoke;
  v5[3] = &unk_1E7B650F8;
  v5[4] = self;
  v2 = [(PFMetadataMovie *)self _cachedValueForKey:@"isProRes" usingBlock:v5];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t __27__PFMetadataMovie_isProRes__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E696AD98];
  v2 = [*(a1 + 32) _computeIsProRes];

  return [v1 numberWithBool:v2];
}

- (BOOL)isTimelapse
{
  v2 = [(PFMetadataMovie *)self captureMode];
  v3 = [v2 isEqualToString:@"Time-lapse"];

  return v3;
}

- (BOOL)hasSpatialAudio
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__PFMetadataMovie_hasSpatialAudio__block_invoke;
  v5[3] = &unk_1E7B650F8;
  v5[4] = self;
  v2 = [(PFMetadataMovie *)self _cachedValueForKey:@"hasSpatialAudio" usingBlock:v5];
  v3 = [v2 BOOLValue];

  return v3;
}

id __34__PFMetadataMovie_hasSpatialAudio__block_invoke(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v1 = *MEMORY[0x1E69875A0];
  v2 = *(*(a1 + 32) + 176);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__PFMetadataMovie_hasSpatialAudio__block_invoke_2;
  v5[3] = &unk_1E7B65170;
  v5[4] = &v6;
  [PFMetadataMovie _enumerateTracksOfType:v1 onAsset:v2 withBlock:v5];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:*(v7 + 24)];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __34__PFMetadataMovie_hasSpatialAudio__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = FigAudioFormatDescriptionGetCinematicAudioEffectEligibility();
  if (result)
  {
    *a5 = 1;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

- (id)cinematicVideoIntent
{
  v2 = *MEMORY[0x1E6987790];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__PFMetadataMovie_cinematicVideoIntent__block_invoke;
  v5[3] = &unk_1E7B650F8;
  v5[4] = self;
  v3 = [(PFMetadataMovie *)self _cachedValueForKey:v2 usingBlock:v5];

  return v3;
}

id __39__PFMetadataMovie_cinematicVideoIntent__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) typeVerifier];
  v3 = *MEMORY[0x1E6987790];
  v4 = [*(*(a1 + 32) + 176) metadata];
  v5 = [v2 valueForAVMetadataIdentifier:v3 fromAVMetadataItems:v4];

  return v5;
}

- (BOOL)isCinematicVideo
{
  v3 = [(PFMetadataMovie *)self cinematicVideoIntent];
  v4 = v3;
  if (v3 && ![v3 BOOLValue])
  {
    v6 = 0;
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __35__PFMetadataMovie_isCinematicVideo__block_invoke;
    v8[3] = &unk_1E7B650F8;
    v8[4] = self;
    v5 = [(PFMetadataMovie *)self _cachedValueForKey:@"isCinematicVideo" usingBlock:v8];
    v6 = [v5 BOOLValue];
  }

  return v6;
}

id __35__PFMetadataMovie_isCinematicVideo__block_invoke(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v1 = *MEMORY[0x1E69875D0];
  v2 = *(*(a1 + 32) + 176);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__PFMetadataMovie_isCinematicVideo__block_invoke_2;
  v5[3] = &unk_1E7B65170;
  v5[4] = &v6;
  [PFMetadataMovie _enumerateTracksOfType:v1 onAsset:v2 withBlock:v5];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:*(v7 + 24)];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __35__PFMetadataMovie_isCinematicVideo__block_invoke_2(uint64_t a1, int a2, CMMetadataFormatDescriptionRef desc, uint64_t a4, _BYTE *a5)
{
  v13 = CMMetadataFormatDescriptionGetIdentifiers(desc);
  v7 = +[PFMetadataIdentifier quickTimeMetadataCinematicVideoRendering];
  if ([v13 containsObject:v7])
  {
    v8 = +[PFMetadataIdentifier quickTimeMetadataCinematicVideoCinematography];
    v9 = [v13 containsObject:v8];
    v11 = *(a1 + 32);
    v10 = a1 + 32;
    *(*(v11 + 8) + 24) = v9;
  }

  else
  {
    v12 = *(a1 + 32);
    v10 = a1 + 32;
    *(*(v12 + 8) + 24) = 0;
  }

  if (*(*(*v10 + 8) + 24) == 1)
  {
    *a5 = 1;
  }
}

- (BOOL)isSloMo
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __26__PFMetadataMovie_isSloMo__block_invoke;
  v5[3] = &unk_1E7B650F8;
  v5[4] = self;
  v2 = [(PFMetadataMovie *)self _cachedValueForKey:@"isSloMo" usingBlock:v5];
  v3 = [v2 BOOLValue];

  return v3;
}

id __26__PFMetadataMovie_isSloMo__block_invoke(uint64_t a1)
{
  v11 = 0;
  v2 = [*(a1 + 32) nominalFrameRate];
  [v2 doubleValue];
  *&v3 = v3;
  [PFVideoAdjustments defaultSlowMotionRateForNominalFrameRate:v3];
  v5 = v4;

  [*(a1 + 32) _checkHFRMetadataKeyShouldPlayAtFullFrameRate:&v11 + 1 containsHFRPlaybackKey:&v11];
  if (v5 >= 1.0)
  {
    v6 = 1;
  }

  else
  {
    v6 = v11;
  }

  if ((v11 & 0x100) != 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = v11;
  }

  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithInt:v8];

  return v9;
}

- (id)videoDynamicRange
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__PFMetadataMovie_videoDynamicRange__block_invoke;
  v4[3] = &unk_1E7B650F8;
  v4[4] = self;
  v2 = [(PFMetadataMovie *)self _cachedValueForKey:@"videoDynamicRange" usingBlock:v4];

  return v2;
}

id __36__PFMetadataMovie_videoDynamicRange__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _firstVideoTrackFormatDescription];
  if (v1)
  {
    v1 = [MEMORY[0x1E696AD98] numberWithInt:CMVideoFormatDescriptionGetVideoDynamicRange()];
  }

  return v1;
}

- (id)videoCodecName
{
  [(PFMetadataMovie *)self _computeFirstVideoTrackCodecAndName];
  cached_values = self->_cached_values;

  return [(NSMutableDictionary *)cached_values objectForKeyedSubscript:@"videoCodecName"];
}

- (id)firstVideoTrackCodecString
{
  v2 = [(PFMetadataMovie *)self firstVideoTrackCodec];

  return [PFMediaUtilities stringFromFourCharCode:v2];
}

- (unsigned)firstVideoTrackCodec
{
  [(PFMetadataMovie *)self _computeFirstVideoTrackCodecAndName];
  v3 = [(NSMutableDictionary *)self->_cached_values objectForKeyedSubscript:@"firstVideoTrackCodec"];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (void)_computeFirstVideoTrackCodecAndName
{
  v3 = [(PFMetadataMovie *)self _firstVideoTrackFormatDescription];
  MediaType = CMFormatDescriptionGetMediaType(v3);
  if (MediaType)
  {
    v5 = MediaType;
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2020000000;
    v12 = 0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __54__PFMetadataMovie__computeFirstVideoTrackCodecAndName__block_invoke;
    v10[3] = &unk_1E7B65120;
    v10[4] = v11;
    v10[5] = v3;
    v6 = [(PFMetadataMovie *)self _cachedValueForKey:@"firstVideoTrackCodec" usingBlock:v10];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __54__PFMetadataMovie__computeFirstVideoTrackCodecAndName__block_invoke_2;
    v8[3] = &unk_1E7B65148;
    v9 = v5;
    v8[4] = v11;
    v7 = [(PFMetadataMovie *)self _cachedValueForKey:@"videoCodecName" usingBlock:v8];
    _Block_object_dispose(v11, 8);
  }
}

uint64_t __54__PFMetadataMovie__computeFirstVideoTrackCodecAndName__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = CMFormatDescriptionGetMediaSubType(*(a1 + 40));
  v2 = MEMORY[0x1E696AD98];
  v3 = *(*(*(a1 + 32) + 8) + 24);

  return [v2 numberWithUnsignedInt:v3];
}

id __54__PFMetadataMovie__computeFirstVideoTrackCodecAndName__block_invoke_2()
{
  MTCopyStringsForMediaTypeAndSubType();

  return 0;
}

- (id)livePhotoMinimumClientVersion
{
  v3 = +[PFMetadataIdentifier quickTimeMetadataLivePhotoMinimumClientVersion];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__PFMetadataMovie_livePhotoMinimumClientVersion__block_invoke;
  v6[3] = &unk_1E7B650F8;
  v6[4] = self;
  v4 = [(PFMetadataMovie *)self _cachedValueForKey:v3 usingBlock:v6];

  return v4;
}

id __48__PFMetadataMovie_livePhotoMinimumClientVersion__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) typeVerifier];
  v3 = +[PFMetadataIdentifier quickTimeMetadataLivePhotoMinimumClientVersion];
  v4 = [*(*(a1 + 32) + 176) metadata];
  v5 = [v2 valueForAVMetadataIdentifier:v3 fromAVMetadataItems:v4];

  return v5;
}

- (BOOL)livePhotoVitalityLimitingAllowed
{
  v3 = +[PFMetadataIdentifier quickTimeMetadataLivePhotoVitalityLimitingAllowed];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__PFMetadataMovie_livePhotoVitalityLimitingAllowed__block_invoke;
  v7[3] = &unk_1E7B650F8;
  v7[4] = self;
  v4 = [(PFMetadataMovie *)self _cachedValueForKey:v3 usingBlock:v7];
  v5 = [v4 BOOLValue];

  return v5;
}

id __51__PFMetadataMovie_livePhotoVitalityLimitingAllowed__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) typeVerifier];
  v3 = +[PFMetadataIdentifier quickTimeMetadataLivePhotoVitalityLimitingAllowed];
  v4 = [*(*(a1 + 32) + 176) metadata];
  v5 = [v2 valueForAVMetadataIdentifier:v3 fromAVMetadataItems:v4];

  return v5;
}

- (BOOL)hasVitality
{
  v3 = +[PFMetadataIdentifier quickTimeMetadataLivePhotoVitalityDisabled];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __30__PFMetadataMovie_hasVitality__block_invoke;
  v7[3] = &unk_1E7B650F8;
  v7[4] = self;
  v4 = [(PFMetadataMovie *)self _cachedValueForKey:v3 usingBlock:v7];
  v5 = [v4 BOOLValue];

  return v5 ^ 1;
}

id __30__PFMetadataMovie_hasVitality__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) typeVerifier];
  v3 = +[PFMetadataIdentifier quickTimeMetadataLivePhotoVitalityDisabled];
  v4 = [*(*(a1 + 32) + 176) metadata];
  v5 = [v2 valueForAVMetadataIdentifier:v3 fromAVMetadataItems:v4];

  return v5;
}

- (id)livePhotoVitalityTransitionScore
{
  v3 = +[PFMetadataIdentifier quickTimeMetadataVitalityTransitionScore];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__PFMetadataMovie_livePhotoVitalityTransitionScore__block_invoke;
  v6[3] = &unk_1E7B650F8;
  v6[4] = self;
  v4 = [(PFMetadataMovie *)self _cachedValueForKey:v3 usingBlock:v6];

  return v4;
}

id __51__PFMetadataMovie_livePhotoVitalityTransitionScore__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) typeVerifier];
  v3 = +[PFMetadataIdentifier quickTimeMetadataVitalityTransitionScore];
  v4 = [*(*(a1 + 32) + 176) metadata];
  v5 = [v2 valueForAVMetadataIdentifier:v3 fromAVMetadataItems:v4];

  return v5;
}

- (id)livePhotoVitalityScore
{
  v2 = *MEMORY[0x1E69877E0];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__PFMetadataMovie_livePhotoVitalityScore__block_invoke;
  v5[3] = &unk_1E7B650F8;
  v5[4] = self;
  v3 = [(PFMetadataMovie *)self _cachedValueForKey:v2 usingBlock:v5];

  return v3;
}

id __41__PFMetadataMovie_livePhotoVitalityScore__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) typeVerifier];
  v3 = *MEMORY[0x1E69877E0];
  v4 = [*(*(a1 + 32) + 176) metadata];
  v5 = [v2 valueForAVMetadataIdentifier:v3 fromAVMetadataItems:v4];

  return v5;
}

- (BOOL)isAutoLivePhoto
{
  v2 = *MEMORY[0x1E6987788];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__PFMetadataMovie_isAutoLivePhoto__block_invoke;
  v6[3] = &unk_1E7B650F8;
  v6[4] = self;
  v3 = [(PFMetadataMovie *)self _cachedValueForKey:v2 usingBlock:v6];
  v4 = [v3 BOOLValue];

  return v4;
}

id __34__PFMetadataMovie_isAutoLivePhoto__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) typeVerifier];
  v3 = *MEMORY[0x1E6987788];
  v4 = [*(*(a1 + 32) + 176) metadata];
  v5 = [v2 valueForAVMetadataIdentifier:v3 fromAVMetadataItems:v4];

  return v5;
}

- (id)playbackVariation
{
  v3 = +[PFMetadataIdentifier quickTimeMetadataVariationIdentifier];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__PFMetadataMovie_playbackVariation__block_invoke;
  v6[3] = &unk_1E7B650F8;
  v6[4] = self;
  v4 = [(PFMetadataMovie *)self _cachedValueForKey:v3 usingBlock:v6];

  return v4;
}

id __36__PFMetadataMovie_playbackVariation__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) typeVerifier];
  v3 = +[PFMetadataIdentifier quickTimeMetadataVariationIdentifier];
  v4 = [*(*(a1 + 32) + 176) metadata];
  v5 = [v2 valueForAVMetadataIdentifier:v3 fromAVMetadataItems:v4];

  return v5;
}

- (id)audioBitsPerChannel
{
  v2 = MEMORY[0x1E696AD98];
  [(PFMetadataMovie *)self _audioStreamBasicDescription];
  v3 = [v2 numberWithUnsignedInt:v5];

  return v3;
}

- (id)audioChannelsPerFrame
{
  v2 = MEMORY[0x1E696AD98];
  [(PFMetadataMovie *)self _audioStreamBasicDescription];
  v3 = [v2 numberWithUnsignedInt:v5];

  return v3;
}

- (id)audioBytesPerFrame
{
  v2 = MEMORY[0x1E696AD98];
  [(PFMetadataMovie *)self _audioStreamBasicDescription];
  v3 = [v2 numberWithUnsignedInt:v5];

  return v3;
}

- (id)audioFramesPerPacket
{
  v2 = MEMORY[0x1E696AD98];
  [(PFMetadataMovie *)self _audioStreamBasicDescription];
  v3 = [v2 numberWithUnsignedInt:v5];

  return v3;
}

- (id)audioBytesPerPacket
{
  v2 = MEMORY[0x1E696AD98];
  [(PFMetadataMovie *)self _audioStreamBasicDescription];
  v3 = [v2 numberWithUnsignedInt:v5];

  return v3;
}

- (id)audioTrackFormatFlags
{
  v2 = MEMORY[0x1E696AD98];
  [(PFMetadataMovie *)self _audioStreamBasicDescription];
  v3 = [v2 numberWithUnsignedInt:v5];

  return v3;
}

- (id)audioTrackFormat
{
  v2 = MEMORY[0x1E696AD98];
  [(PFMetadataMovie *)self _audioStreamBasicDescription];
  v3 = [v2 numberWithUnsignedInt:v5];

  return v3;
}

- (id)audioSampleRate
{
  v2 = MEMORY[0x1E696AD98];
  [(PFMetadataMovie *)self _audioStreamBasicDescription];
  v3 = [v2 numberWithDouble:v5];

  return v3;
}

- (id)audioDataRate
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __32__PFMetadataMovie_audioDataRate__block_invoke;
  v4[3] = &unk_1E7B650F8;
  v4[4] = self;
  v2 = [(PFMetadataMovie *)self _cachedValueForKey:@"audioDataRate" usingBlock:v4];

  return v2;
}

id __32__PFMetadataMovie_audioDataRate__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _firstAudioTrack];
  v2 = MEMORY[0x1E696AD98];
  [v1 estimatedDataRate];
  v3 = [v2 numberWithFloat:?];

  return v3;
}

- (id)videoDataRate
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __32__PFMetadataMovie_videoDataRate__block_invoke;
  v4[3] = &unk_1E7B650F8;
  v4[4] = self;
  v2 = [(PFMetadataMovie *)self _cachedValueForKey:@"videoDataRate" usingBlock:v4];

  return v2;
}

id __32__PFMetadataMovie_videoDataRate__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _firstVideoTrack];
  v2 = MEMORY[0x1E696AD98];
  [v1 estimatedDataRate];
  v3 = [v2 numberWithFloat:?];

  return v3;
}

- (id)nominalFrameRate
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __35__PFMetadataMovie_nominalFrameRate__block_invoke;
  v4[3] = &unk_1E7B650F8;
  v4[4] = self;
  v2 = [(PFMetadataMovie *)self _cachedValueForKey:@"nominalFrameRate" usingBlock:v4];

  return v2;
}

id __35__PFMetadataMovie_nominalFrameRate__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _firstVideoTrack];
  v2 = MEMORY[0x1E696AD98];
  [v1 nominalFrameRate];
  v3 = [v2 numberWithFloat:?];

  return v3;
}

- (id)stillImageDisplayTimeDictionary
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__PFMetadataMovie_stillImageDisplayTimeDictionary__block_invoke;
  v4[3] = &unk_1E7B650F8;
  v4[4] = self;
  v2 = [(PFMetadataMovie *)self _cachedValueForKey:@"stillImageDisplayTimeDictionary" usingBlock:v4];

  return v2;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)stillImageDisplayTime
{
  v5 = [(PFMetadataMovie *)self stillImageDisplayTimeDictionary];
  CMTimeMakeFromDictionary(retstr, v5);

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)duration
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __27__PFMetadataMovie_duration__block_invoke;
  v6[3] = &unk_1E7B650F8;
  v6[4] = self;
  v4 = [(PFMetadataMovie *)self _cachedValueForKey:@"duration" usingBlock:v6];
  CMTimeMakeFromDictionary(retstr, v4);

  return result;
}

CFDictionaryRef __27__PFMetadataMovie_duration__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 176);
  if (v1)
  {
    [v1 duration];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  v2 = CMTimeCopyAsDictionary(&time, *MEMORY[0x1E695E480]);

  return v2;
}

- (id)imageDirection
{
  v2 = *MEMORY[0x1E69877C8];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__PFMetadataMovie_imageDirection__block_invoke;
  v5[3] = &unk_1E7B650F8;
  v5[4] = self;
  v3 = [(PFMetadataMovie *)self _cachedValueForKey:v2 usingBlock:v5];

  return v3;
}

id __33__PFMetadataMovie_imageDirection__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) typeVerifier];
  v3 = *MEMORY[0x1E69877C8];
  v4 = [*(*(a1 + 32) + 176) metadata];
  v5 = [v2 valueForAVMetadataIdentifier:v3 fromAVMetadataItems:v4];

  return v5;
}

- (id)gpsHPositioningError
{
  v2 = *MEMORY[0x1E69877E8];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__PFMetadataMovie_gpsHPositioningError__block_invoke;
  v5[3] = &unk_1E7B650F8;
  v5[4] = self;
  v3 = [(PFMetadataMovie *)self _cachedValueForKey:v2 usingBlock:v5];

  return v3;
}

id __39__PFMetadataMovie_gpsHPositioningError__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) typeVerifier];
  v3 = *MEMORY[0x1E69877E8];
  v4 = [*(*(a1 + 32) + 176) metadata];
  v5 = [v2 valueForAVMetadataIdentifier:v3 fromAVMetadataItems:v4];

  return v5;
}

- (id)keywords
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __27__PFMetadataMovie_keywords__block_invoke;
  v4[3] = &unk_1E7B650F8;
  v4[4] = self;
  v2 = [(PFMetadataMovie *)self _cachedValueForKey:@"keywords" usingBlock:v4];

  return v2;
}

id __27__PFMetadataMovie_keywords__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) typeVerifier];
  v3 = *MEMORY[0x1E69877D8];
  v4 = [*(*(a1 + 32) + 176) metadata];
  v5 = [v2 valueForAVMetadataIdentifier:v3 fromAVMetadataItems:v4];

  v6 = [v5 componentsSeparatedByString:{@", "}];

  return v6;
}

- (id)title
{
  v2 = *MEMORY[0x1E6987668];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __24__PFMetadataMovie_title__block_invoke;
  v5[3] = &unk_1E7B650F8;
  v5[4] = self;
  v3 = [(PFMetadataMovie *)self _cachedValueForKey:v2 usingBlock:v5];

  return v3;
}

id __24__PFMetadataMovie_title__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) typeVerifier];
  v3 = *MEMORY[0x1E6987668];
  v4 = [*(*(a1 + 32) + 176) metadata];
  v5 = [v2 valueForAVMetadataIdentifier:v3 fromAVMetadataItems:v4];

  return v5;
}

- (BOOL)isHDR
{
  v2 = [(PFMetadataMovie *)self videoDynamicRange];
  v3 = [v2 integerValue];

  return v3 > 1;
}

- (BOOL)isSpatialOverCapture
{
  v3 = +[PFMetadataIdentifier quickTimeMetadataContainsSpatialOverCaptureContent];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__PFMetadataMovie_isSpatialOverCapture__block_invoke;
  v7[3] = &unk_1E7B650F8;
  v7[4] = self;
  v4 = [(PFMetadataMovie *)self _cachedValueForKey:v3 usingBlock:v7];
  v5 = [v4 BOOLValue];

  return v5;
}

id __39__PFMetadataMovie_isSpatialOverCapture__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) typeVerifier];
  v3 = +[PFMetadataIdentifier quickTimeMetadataContainsSpatialOverCaptureContent];
  v4 = [*(*(a1 + 32) + 176) metadata];
  v5 = [v2 valueForAVMetadataIdentifier:v3 fromAVMetadataItems:v4];

  return v5;
}

- (id)spatialOverCaptureIdentifier
{
  v3 = +[PFMetadataIdentifier quickTimeMetadataSpatialOverCaptureGroupIdentifier];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__PFMetadataMovie_spatialOverCaptureIdentifier__block_invoke;
  v6[3] = &unk_1E7B650F8;
  v6[4] = self;
  v4 = [(PFMetadataMovie *)self _cachedValueForKey:v3 usingBlock:v6];

  return v4;
}

id __47__PFMetadataMovie_spatialOverCaptureIdentifier__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) typeVerifier];
  v3 = +[PFMetadataIdentifier quickTimeMetadataSpatialOverCaptureGroupIdentifier];
  v4 = [*(*(a1 + 32) + 176) metadata];
  v5 = [v2 valueForAVMetadataIdentifier:v3 fromAVMetadataItems:v4];

  return v5;
}

- (id)artworkContentDescription
{
  v2 = *MEMORY[0x1E6987620];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__PFMetadataMovie_artworkContentDescription__block_invoke;
  v5[3] = &unk_1E7B650F8;
  v5[4] = self;
  v3 = [(PFMetadataMovie *)self _cachedValueForKey:v2 usingBlock:v5];

  return v3;
}

id __44__PFMetadataMovie_artworkContentDescription__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) typeVerifier];
  v3 = *MEMORY[0x1E6987620];
  v4 = [*(*(a1 + 32) + 176) metadata];
  v5 = [v2 valueForAVMetadataIdentifier:v3 fromAVMetadataItems:v4];

  return v5;
}

- (id)captionAbstract
{
  v2 = *MEMORY[0x1E6987640];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__PFMetadataMovie_captionAbstract__block_invoke;
  v5[3] = &unk_1E7B650F8;
  v5[4] = self;
  v3 = [(PFMetadataMovie *)self _cachedValueForKey:v2 usingBlock:v5];

  return v3;
}

id __34__PFMetadataMovie_captionAbstract__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) typeVerifier];
  v3 = *MEMORY[0x1E6987640];
  v4 = [*(*(a1 + 32) + 176) metadata];
  v5 = [v2 valueForAVMetadataIdentifier:v3 fromAVMetadataItems:v4];

  return v5;
}

- (id)renderOriginatingAssetIdentifier
{
  v3 = +[PFMetadataIdentifier quickTimeMetadataRenderOriginatingSignature];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__PFMetadataMovie_renderOriginatingAssetIdentifier__block_invoke;
  v6[3] = &unk_1E7B650F8;
  v6[4] = self;
  v4 = [(PFMetadataMovie *)self _cachedValueForKey:v3 usingBlock:v6];

  return v4;
}

id __51__PFMetadataMovie_renderOriginatingAssetIdentifier__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) typeVerifier];
  v3 = +[PFMetadataIdentifier quickTimeMetadataRenderOriginatingSignature];
  v4 = [*(*(a1 + 32) + 176) metadata];
  v5 = [v2 valueForAVMetadataIdentifier:v3 fromAVMetadataItems:v4];

  return v5;
}

- (id)originatingAssetIdentifier
{
  v3 = +[PFMetadataIdentifier quickTimeMetadataOriginatingSignature];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__PFMetadataMovie_originatingAssetIdentifier__block_invoke;
  v6[3] = &unk_1E7B650F8;
  v6[4] = self;
  v4 = [(PFMetadataMovie *)self _cachedValueForKey:v3 usingBlock:v6];

  return v4;
}

id __45__PFMetadataMovie_originatingAssetIdentifier__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) typeVerifier];
  v3 = +[PFMetadataIdentifier quickTimeMetadataOriginatingSignature];
  v4 = [*(*(a1 + 32) + 176) metadata];
  v5 = [v2 valueForAVMetadataIdentifier:v3 fromAVMetadataItems:v4];

  return v5;
}

- (id)software
{
  v2 = *MEMORY[0x1E6987660];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__PFMetadataMovie_software__block_invoke;
  v5[3] = &unk_1E7B650F8;
  v5[4] = self;
  v3 = [(PFMetadataMovie *)self _cachedValueForKey:v2 usingBlock:v5];

  return v3;
}

id __27__PFMetadataMovie_software__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) typeVerifier];
  v3 = *MEMORY[0x1E6987660];
  v4 = [*(*(a1 + 32) + 176) metadata];
  v5 = [v2 valueForAVMetadataIdentifier:v3 fromAVMetadataItems:v4];

  return v5;
}

- (id)focalLengthIn35mm
{
  v3 = +[PFMetadataIdentifier quicktimeMetadataCameraFocalLength35mmEquivalent];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__PFMetadataMovie_focalLengthIn35mm__block_invoke;
  v6[3] = &unk_1E7B650F8;
  v6[4] = self;
  v4 = [(PFMetadataMovie *)self _cachedValueForKey:v3 usingBlock:v6];

  return v4;
}

id __36__PFMetadataMovie_focalLengthIn35mm__block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x1E6987700];
  v3 = [*(a1 + 32) _firstVideoTrack];
  v4 = [PFMediaUtilities metadataForFormat:v2 forAssetTrack:v3];

  v5 = [*(a1 + 32) typeVerifier];
  v6 = +[PFMetadataIdentifier quicktimeMetadataCameraFocalLength35mmEquivalent];
  v7 = [v5 valueForAVMetadataIdentifier:v6 fromAVMetadataItems:v4];

  return v7;
}

- (id)lensModel
{
  v3 = +[PFMetadataIdentifier quicktimeMetadataCameraLensModel];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __28__PFMetadataMovie_lensModel__block_invoke;
  v6[3] = &unk_1E7B650F8;
  v6[4] = self;
  v4 = [(PFMetadataMovie *)self _cachedValueForKey:v3 usingBlock:v6];

  return v4;
}

id __28__PFMetadataMovie_lensModel__block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x1E6987700];
  v3 = [*(a1 + 32) _firstVideoTrack];
  v4 = [PFMediaUtilities metadataForFormat:v2 forAssetTrack:v3];

  v5 = [*(a1 + 32) typeVerifier];
  v6 = +[PFMetadataIdentifier quicktimeMetadataCameraLensModel];
  v7 = [v5 valueForAVMetadataIdentifier:v6 fromAVMetadataItems:v4];

  return v7;
}

- (id)cameraModel
{
  v2 = *MEMORY[0x1E6987658];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__PFMetadataMovie_cameraModel__block_invoke;
  v5[3] = &unk_1E7B650F8;
  v5[4] = self;
  v3 = [(PFMetadataMovie *)self _cachedValueForKey:v2 usingBlock:v5];

  return v3;
}

id __30__PFMetadataMovie_cameraModel__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) typeVerifier];
  v3 = *MEMORY[0x1E6987658];
  v4 = [*(*(a1 + 32) + 176) metadata];
  v5 = [v2 valueForAVMetadataIdentifier:v3 fromAVMetadataItems:v4];

  return v5;
}

- (id)cameraMake
{
  v2 = *MEMORY[0x1E6987650];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__PFMetadataMovie_cameraMake__block_invoke;
  v5[3] = &unk_1E7B650F8;
  v5[4] = self;
  v3 = [(PFMetadataMovie *)self _cachedValueForKey:v2 usingBlock:v5];

  return v3;
}

id __29__PFMetadataMovie_cameraMake__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) typeVerifier];
  v3 = *MEMORY[0x1E6987650];
  v4 = [*(*(a1 + 32) + 176) metadata];
  v5 = [v2 valueForAVMetadataIdentifier:v3 fromAVMetadataItems:v4];

  return v5;
}

- (id)livePhotoPairingIdentifier
{
  v2 = *MEMORY[0x1E6987798];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__PFMetadataMovie_livePhotoPairingIdentifier__block_invoke;
  v5[3] = &unk_1E7B650F8;
  v5[4] = self;
  v3 = [(PFMetadataMovie *)self _cachedValueForKey:v2 usingBlock:v5];

  return v3;
}

id __45__PFMetadataMovie_livePhotoPairingIdentifier__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) typeVerifier];
  v3 = *MEMORY[0x1E6987798];
  v4 = [*(*(a1 + 32) + 176) metadata];
  v5 = [v2 valueForAVMetadataIdentifier:v3 fromAVMetadataItems:v4];

  return v5;
}

- (BOOL)verifyShouldLoadTrackMetadata:(const char *)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [(PFMetadata *)self shouldLoadTrackMetadata];
  v5 = v4;
  if (a3)
  {
    if (!v4)
    {
      v6 = metadataLog;
      if (os_log_type_enabled(metadataLog, OS_LOG_TYPE_DEBUG))
      {
        v8 = 136315138;
        v9 = a3;
        _os_log_debug_impl(&dword_1B35C1000, v6, OS_LOG_TYPE_DEBUG, "%s requires track metadata loaded. Specify the PFMetdataLoadOptionsLoadTrackMetadata at initialization.", &v8, 0xCu);
      }
    }
  }

  return v5;
}

- (id)collectionKeysToLoad
{
  if ([(PFMetadata *)self shouldLoadTrackMetadata])
  {
    v2 = &unk_1F2AABD20;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)keysToLoad
{
  if ([(PFMetadata *)self shouldLoadTrackMetadata])
  {
    v2 = [&unk_1F2AAB908 arrayByAddingObject:@"tracks"];
  }

  else
  {
    v2 = &unk_1F2AAB908;
  }

  return v2;
}

- (void)_cacheIndirectTrackMetadataProperties
{
  [(PFMetadata *)self exifPixelSize];
  [(PFMetadataMovie *)self lensModel];

  [(PFMetadataMovie *)self nominalFrameRate];
  [(PFMetadataMovie *)self videoDataRate];

  [(PFMetadataMovie *)self audioDataRate];
  [(PFMetadataMovie *)self videoDynamicRange];

  [(PFMetadataMovie *)self isProRes];
  [(PFMetadataMovie *)self captureMode];

  [(PFMetadataMovie *)self firstVideoTrackFormatDebugDescription];
  [(PFMetadataMovie *)self _firstVideoTrackFormatDescription];
  [(PFMetadataMovie *)self colorPrimaries];

  [(PFMetadataMovie *)self transferFunction];
  [(PFMetadataMovie *)self hevcProfileInfo];

  [(PFMetadataMovie *)self isSpatialMedia];
  [(PFMetadataMovie *)self isProRes];
  [(PFMetadataMovie *)self outOfBandHintsBase64String];

  [(PFMetadataMovie *)self focalLengthIn35mm];
  v3 = [(PFMetadataMovie *)self _makeGeometryProperties];

  [(PFMetadataMovie *)self isSloMo];
}

- (void)_cacheComputedTrackMetadataProperties
{
  v3 = metadataLog;
  if (os_log_type_enabled(metadataLog, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_1B35C1000, v3, OS_LOG_TYPE_INFO, "Computing all track metadata properties from AVAsset.", v7, 2u);
  }

  v4 = [(PFMetadataMovie *)self _firstVideoTrack];
  v5 = [(PFMetadataMovie *)self _firstAudioTrack];
  [(PFMetadataMovie *)self stillImageDisplayTimeDictionary];

  [(PFMetadataMovie *)self _audioStreamBasicDescription];
  [(PFMetadataMovie *)self _computeFirstVideoTrackCodecAndName];
  [(PFMetadataMovie *)self isCinematicVideo];
  [(PFMetadataMovie *)self hasSpatialAudio];
  [(PFMetadataMovie *)self isDecodable];
  v6 = [(PFMetadataMovie *)self _computeApacAudioTrackInfo];
  [(PFMetadataMovie *)self outOfBandHints];

  [(PFMetadataMovie *)self spatialMediaTrack];
}

- (void)_cacheCommonMetadataProperties
{
  v3 = metadataLog;
  if (os_log_type_enabled(metadataLog, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B35C1000, v3, OS_LOG_TYPE_INFO, "Computing all common metadata properties from AVAsset.", buf, 2u);
  }

  [(PFMetadataMovie *)self livePhotoPairingIdentifier];

  [(PFMetadataMovie *)self cameraMake];
  [(PFMetadataMovie *)self cameraModel];

  [(PFMetadataMovie *)self software];
  [(PFMetadataMovie *)self originatingAssetIdentifier];

  [(PFMetadataMovie *)self renderOriginatingAssetIdentifier];
  [(PFMetadataMovie *)self captionAbstract];

  [(PFMetadataMovie *)self artworkContentDescription];
  [(PFMetadataMovie *)self spatialOverCaptureIdentifier];

  [(PFMetadataMovie *)self isSpatialOverCapture];
  [(PFMetadataMovie *)self title];

  [(PFMetadataMovie *)self keywords];
  [(PFMetadataMovie *)self gpsHPositioningError];

  [(PFMetadataMovie *)self imageDirection];
  [(PFMetadataMovie *)self duration];
  [(PFMetadataMovie *)self playbackVariation];

  [(PFMetadataMovie *)self isAutoLivePhoto];
  [(PFMetadataMovie *)self livePhotoVitalityScore];

  [(PFMetadataMovie *)self livePhotoVitalityTransitionScore];
  [(PFMetadataMovie *)self hasVitality];
  [(PFMetadataMovie *)self livePhotoVitalityLimitingAllowed];
  [(PFMetadataMovie *)self livePhotoMinimumClientVersion];

  [(PFMetadataMovie *)self isActionCam];
  [(PFMetadataMovie *)self montageString];

  [(PFMetadataMovie *)self author];
  [(PFMetadataMovie *)self isPlayable];
  [(PFMetadataMovie *)self smartStyleVideoCastValue];
  [(PFMetadata *)self gpsLocation];

  [(PFMetadata *)self utcCreationDate];
}

- (void)_cacheAllTrackProperties
{
  [(PFMetadataMovie *)self _cacheComputedTrackMetadataProperties];

  [(PFMetadataMovie *)self _cacheIndirectTrackMetadataProperties];
}

- (void)loadMetadataWithCompletionHandler:(id)a3
{
  asset = self->_asset;
  v5 = a3;
  v7 = [(PFMetadataMovie *)self keysToLoad];
  v6 = [(PFMetadataMovie *)self collectionKeysToLoad];
  [(PFMetadataMovie *)self _loadMetadataForAsset:asset withKeys:v7 collectionKeys:v6 completionHandler:v5];
}

- (void)_loadMetadataForAsset:(id)a3 withKeys:(id)a4 collectionKeys:(id)a5 completionHandler:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = self->_stateHandler;
  v14 = a3;
  [(PFMetadataStateHandler *)v13 addBreadcrumb:@"%s: Calling [%p loadValuesAsynchronouslyForKeys:%@]", "[PFMetadataMovie _loadMetadataForAsset:withKeys:collectionKeys:completionHandler:]", v14, v10, v11];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __83__PFMetadataMovie__loadMetadataForAsset_withKeys_collectionKeys_completionHandler___block_invoke;
  v19[3] = &unk_1E7B650D0;
  v20 = v13;
  v21 = self;
  v22 = v10;
  v23 = v11;
  v24 = v12;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  v18 = v13;
  [v14 loadValuesAsynchronouslyForKeys:v17 keysForCollectionKeys:v16 completionHandler:v19];
}

uint64_t __83__PFMetadataMovie__loadMetadataForAsset_withKeys_collectionKeys_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) addBreadcrumb:{@"%s: In completion handler for -[%p loadValuesAsynchronouslyForKeys:%@ keysForCollectionKeys:%@ completionHandler:]", "-[PFMetadataMovie _loadMetadataForAsset:withKeys:collectionKeys:completionHandler:]_block_invoke", *(*(a1 + 40) + 176), *(a1 + 48), *(a1 + 56)}];
  result = *(a1 + 64);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_loadMetadataForAsset:(id)a3 withKeys:(id)a4 collectionKeys:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = dispatch_block_create(0, &__block_literal_global_4808);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__PFMetadataMovie__loadMetadataForAsset_withKeys_collectionKeys___block_invoke_2;
  v13[3] = &unk_1E7B650A8;
  v14 = v11;
  v12 = v11;
  [(PFMetadataMovie *)self _loadMetadataForAsset:v10 withKeys:v9 collectionKeys:v8 completionHandler:v13];

  dispatch_block_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
}

- (BOOL)_convertToAVAssetProxyIfPossible
{
  v17 = *MEMORY[0x1E69E9840];
  asset = self->_asset;
  v13 = 0;
  v14 = 0;
  v4 = [(PFMetadataMovie *)self _audioVideoProxyPropertyListForAsset:asset propertyList:&v14 error:&v13];
  v5 = v14;
  v6 = v13;
  if ((v4 - 2) >= 2)
  {
    if (v4)
    {
      if (v4 != 1)
      {
LABEL_6:
        v10 = 1;
        goto LABEL_10;
      }

      v7 = [(PFMetadataMovie *)self _makeDateTimePropertiesForAsset:self->_asset];
    }

    v8 = [MEMORY[0x1E6987E28] assetProxyWithPropertyList:v5];
    v9 = self->_asset;
    self->_asset = v8;

    goto LABEL_6;
  }

  v11 = metadataLog;
  if (os_log_type_enabled(metadataLog, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v16 = v6;
    _os_log_debug_impl(&dword_1B35C1000, v11, OS_LOG_TYPE_DEBUG, "Invalid asset proxy to cache. Error: %@", buf, 0xCu);
  }

  v10 = 0;
LABEL_10:

  return v10;
}

- (BOOL)_configureWithAVAsset:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
    cached_values = self->_cached_values;
    self->_cached_values = v6;

    v8 = [[PFMetadataStateHandler alloc] initWithMetadata:self];
    stateHandler = self->_stateHandler;
    self->_stateHandler = v8;

    objc_storeStrong(&self->_asset, a3);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v5 URL];
    }

    else
    {
      v10 = 0;
    }

    if ([v10 isFileURL])
    {
      [(PFMetadata *)self setFileURL:v10];
      v12 = [(AVAsset *)self->_asset identifyingTagClass];
      [(NSMutableDictionary *)self->_cached_values setObject:v12 forKeyedSubscript:PFMetadataPlistIdentifyingTagClass];
    }

    if ([(PFMetadata *)self shouldCreateProxy]&& ![(PFMetadataMovie *)self _convertToAVAssetProxyIfPossible])
    {
      v13 = metadataLog;
      if (os_log_type_enabled(metadataLog, OS_LOG_TYPE_ERROR))
      {
        v18 = v13;
        v19 = [(PFMetadata *)self fileURL];
        v20 = 138412290;
        v21 = v19;
        _os_log_error_impl(&dword_1B35C1000, v18, OS_LOG_TYPE_ERROR, "Failed to create a proxy for AVAsset %@. Computing all properties immediately to avoid holding an open file handle.", &v20, 0xCu);
      }

      [(PFMetadata *)self setOptions:64];
    }

    if ([(PFMetadata *)self shouldLoadValues]&& (asset = self->_asset, [(PFMetadataMovie *)self keysToLoad], v15 = objc_claimAutoreleasedReturnValue(), [(PFMetadataMovie *)self collectionKeysToLoad], v16 = objc_claimAutoreleasedReturnValue(), [(PFMetadataMovie *)self _loadMetadataForAsset:asset withKeys:v15 collectionKeys:v16], v16, v15, ![(AVAsset *)self->_asset isReadable]))
    {
      v11 = 0;
    }

    else
    {
      if ([(PFMetadata *)self doImmediateCompute])
      {
        [(PFMetadataMovie *)self _cacheCommonMetadataProperties];
        [(PFMetadataMovie *)self _cacheAllTrackProperties];
      }

      [(PFMetadata *)self setSourceType:9];
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_configureWithAVProxyData:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 length])
  {
    v14 = 0;
    v6 = [PFMetadata propertyListObjectFromEncodedData:v5 expectedClass:objc_opt_class() options:0 error:&v14];
    v7 = v14;
    if (v6)
    {
      v8 = [MEMORY[0x1E6987E28] assetProxyWithPropertyList:v6];
      if (v8)
      {
        v9 = [(PFMetadataMovie *)self _configureWithAVAsset:v8];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v10 = metadataLog;
      if (os_log_type_enabled(metadataLog, OS_LOG_TYPE_ERROR))
      {
        v12 = v10;
        v13 = [v5 length];
        *buf = 134218498;
        v16 = v5;
        v17 = 2048;
        v18 = v13;
        v19 = 2114;
        v20 = v7;
        _os_log_error_impl(&dword_1B35C1000, v12, OS_LOG_TYPE_ERROR, "failed to deserialize a property list object from plist data: %p, length: %lu, error: %{public}@", buf, 0x20u);
      }

      v9 = 0;
    }

    [(PFMetadata *)self setSourceType:7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_configureWithAVURL:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 path];
    memset(&v14, 0, sizeof(v14));
    v7 = stat([v6 fileSystemRepresentation], &v14);
    st_mode = v14.st_mode;

    v9 = 0;
    if (!v7 && st_mode < 0)
    {
      v10 = MEMORY[0x1E6988168];
      if ([(PFMetadata *)self noOutOfProcess])
      {
        v15 = *MEMORY[0x1E6987388];
        v16[0] = MEMORY[0x1E695E118];
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
        v12 = [v10 URLAssetWithURL:v5 options:v11];
      }

      else
      {
        v12 = [v10 URLAssetWithURL:v5 options:0];
      }

      v9 = [(PFMetadataMovie *)self _configureWithAVAsset:v12];
      [(PFMetadata *)self setSourceType:6];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)configureWithMetadataPlist:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PFMetadataMovie;
  if ([(PFMetadata *)&v13 configureWithMetadataPlist:v4])
  {
    v5 = MEMORY[0x1E6987E28];
    v6 = [v4 objectForKeyedSubscript:PFMetadataPlistAsset];
    v7 = [v5 assetProxyWithPropertyList:v6];

    v8 = [(PFMetadataMovie *)self _configureWithAVAsset:v7];
    if (v8)
    {
      v9 = [v4 objectForKeyedSubscript:PFMetadataPlistIdentifyingTagClass];
      [(NSMutableDictionary *)self->_cached_values setObject:v9 forKeyedSubscript:PFMetadataPlistIdentifyingTagClass];

      v10 = [v4 objectForKeyedSubscript:PFMetadataPlistOriginalAssetDateProperties];
      [(NSMutableDictionary *)self->_cached_values setObject:v10 forKeyedSubscript:PFMetadataPlistOriginalAssetDateProperties];

      v11 = [v4 objectForKeyedSubscript:PFMetadataPlistSourceType];
      -[PFMetadata setSourceType:](self, "setSourceType:", [v11 integerValue]);
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (PFMetadataMovie)initWithAVAsset:(id)a3 options:(unsigned __int16)a4 timeZoneLookup:(id)a5
{
  v6 = a4;
  v8 = a3;
  v12.receiver = self;
  v12.super_class = PFMetadataMovie;
  v9 = [(PFMetadata *)&v12 initWithContentType:0 options:v6 timeZoneLookup:a5];
  v10 = v9;
  if (v9 && ![(PFMetadataMovie *)v9 _configureWithAVAsset:v8])
  {

    v10 = 0;
  }

  return v10;
}

- (PFMetadataMovie)initWithAVAsset:(id)a3 options:(unsigned __int16)a4 timeZoneLookup:(id)a5 preloadValues:(BOOL)a6
{
  v7 = a4;
  v9 = a3;
  v10 = [(PFMetadata *)self initWithContentType:0 options:v7 timeZoneLookup:a5];
  v11 = v10;
  if (v10 && ![(PFMetadataMovie *)v10 _configureWithAVAsset:v9])
  {

    v11 = 0;
  }

  return v11;
}

- (PFMetadataMovie)initWithAVProxyData:(id)a3 timeZoneLookup:(id)a4
{
  v6 = a3;
  v7 = [(PFMetadata *)self initWithContentType:0 options:13 timeZoneLookup:a4];
  v8 = v7;
  if (v7 && ![(PFMetadataMovie *)v7 _configureWithAVProxyData:v6])
  {

    v8 = 0;
  }

  return v8;
}

- (PFMetadataMovie)initWithAVURL:(id)a3 options:(unsigned __int16)a4 timeZoneLookup:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = [(PFMetadata *)self initWithContentType:0 options:v6 timeZoneLookup:a5];
  v10 = v9;
  if (v9 && ![(PFMetadataMovie *)v9 _configureWithAVURL:v8])
  {

    v10 = 0;
  }

  return v10;
}

+ (void)firstAudioTrackForAsset:(id)a3 resultBlock:(id)a4
{
  v5 = a4;
  v6 = *MEMORY[0x1E69875A0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__PFMetadataMovie_firstAudioTrackForAsset_resultBlock___block_invoke;
  v8[3] = &unk_1E7B65238;
  v9 = v5;
  v7 = v5;
  [PFMetadataMovie _enumerateTracksOfType:v6 onAsset:a3 withBlock:v8];
}

uint64_t __55__PFMetadataMovie_firstAudioTrackForAsset_resultBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = (*(*(a1 + 32) + 16))();
  *a5 = 1;
  return result;
}

+ (void)firstVideoTrackForAsset:(id)a3 resultBlock:(id)a4
{
  v5 = a4;
  v6 = *MEMORY[0x1E6987608];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__PFMetadataMovie_firstVideoTrackForAsset_resultBlock___block_invoke;
  v8[3] = &unk_1E7B65238;
  v9 = v5;
  v7 = v5;
  [PFMetadataMovie _enumerateTracksOfType:v6 onAsset:a3 withBlock:v8];
}

uint64_t __55__PFMetadataMovie_firstVideoTrackForAsset_resultBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = (*(*(a1 + 32) + 16))();
  *a5 = 1;
  return result;
}

+ (id)exifTimezoneOffsetFromDateString:(id)a3 offsetInSeconds:(int64_t *)a4
{
  v5 = a3;
  if (exifTimezoneOffsetFromDateString_offsetInSeconds__onceToken[0] != -1)
  {
    dispatch_once(exifTimezoneOffsetFromDateString_offsetInSeconds__onceToken, &__block_literal_global_263);
  }

  v6 = [exifTimezoneOffsetFromDateString_offsetInSeconds__timeZoneSuffixRegex firstMatchInString:v5 options:0 range:{0, objc_msgSend(v5, "length")}];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 rangeAtIndex:1];
    v10 = [v5 substringWithRange:{v8, v9}];
    v11 = [v7 rangeAtIndex:2];
    v13 = [v5 substringWithRange:{v11, v12}];
    v14 = [v7 rangeAtIndex:3];
    v16 = [v5 substringWithRange:{v14, v15}];
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@:%@", v10, v13, v16];
    if (a4)
    {
      v18 = [v10 isEqualToString:@"-"];
      v19 = [v13 intValue];
      v20 = 3600 * v19 + 60 * [v16 intValue];
      if (v18)
      {
        v20 = -v20;
      }

      *a4 = v20;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

uint64_t __68__PFMetadataMovie_exifTimezoneOffsetFromDateString_offsetInSeconds___block_invoke()
{
  exifTimezoneOffsetFromDateString_offsetInSeconds__timeZoneSuffixRegex = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"(-|\\+)(\\d\\d)(\\d\\d)$" options:0 error:0];

  return MEMORY[0x1EEE66BB8]();
}

+ (BOOL)parseISO6709String:(id)a3 outLatitude:(double *)a4 outLongitude:(double *)a5
{
  v7 = a3;
  if ([v7 length] >= 3)
  {
    if (a4)
    {
      *a4 = 0.0;
    }

    if (a5)
    {
      *a5 = 0.0;
    }

    v9 = [MEMORY[0x1E696AE88] scannerWithString:v7];
    v10 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"+-"];
    v63 = 0;
    v11 = [v9 scanCharactersFromSet:v10 intoString:&v63];
    v12 = v63;

    if (!v11 || [v12 length] != 1)
    {
      v8 = 0;
LABEL_47:

      goto LABEL_48;
    }

    v13 = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
    v62 = 0;
    v14 = [v9 scanCharactersFromSet:v13 intoString:&v62];
    v15 = v62;

    if (v14)
    {
      v16 = [v15 length];
      v17 = 0.0;
      v18 = 1.0;
      switch(v16)
      {
        case 2:
LABEL_15:
          v23 = [v15 substringWithRange:{0, 2}];
          [v23 doubleValue];
          v25 = v17 + v24;

          v26 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"+-"];
          v61 = 0;
          v27 = [v9 scanUpToCharactersFromSet:v26 intoString:&v61];
          v28 = v61;

          if (v27 && [v28 length])
          {
            [v28 doubleValue];
            v25 = v25 + v29 * v18;
          }

          if ([v12 isEqualToString:@"-"])
          {
            v30 = -v25;
          }

          else
          {
            v30 = v25;
          }

          v31 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"+-"];
          v60 = 0;
          v32 = [v9 scanCharactersFromSet:v31 intoString:&v60];
          v33 = v60;

          if (!v32 || [v33 length] != 1)
          {
            v8 = 0;
LABEL_45:

            goto LABEL_46;
          }

          v57 = v28;
          v34 = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
          v59 = 0;
          v35 = [v9 scanCharactersFromSet:v34 intoString:&v59];
          v36 = v59;

          if (v35)
          {
            v37 = [v36 length];
            v38 = 0.0;
            v39 = 1.0;
            v55 = v36;
            if (v37 == 3)
            {
              v40 = 0x1E696A000uLL;
LABEL_34:
              v45 = [v36 substringWithRange:{0, 3, v55}];
              [v45 doubleValue];
              v47 = v38 + v46;

              v48 = [*(v40 + 2824) characterSetWithCharactersInString:@"+-C/"];
              v58 = 0;
              v49 = [v9 scanUpToCharactersFromSet:v48 intoString:&v58];
              v50 = v58;

              if (v49 && [v50 length])
              {
                [v50 doubleValue];
                v47 = v47 + v51 * v39;
              }

              v36 = v56;
              v52 = [v33 isEqualToString:@"-"];
              v53 = -v47;
              if (!v52)
              {
                v53 = v47;
              }

              v28 = v57;
              if (a4)
              {
                *a4 = v30;
              }

              if (a5)
              {
                *a5 = v53;
              }

              v8 = 1;
              goto LABEL_44;
            }

            v40 = 0x1E696A000;
            if (v37 == 5)
            {
LABEL_28:
              v39 = v39 / 60.0;
              v43 = [v36 substringWithRange:{3, 2, v55}];
              [v43 doubleValue];
              v38 = v38 + v44 / 60.0;

              v36 = v55;
              goto LABEL_34;
            }

            if (v37 == 7)
            {
              v41 = [v36 substringWithRange:{5, 2}];
              [v41 doubleValue];
              v38 = v42 / 60.0 / 60.0 + 0.0;

              v36 = v55;
              v39 = 0.0166666667;
              goto LABEL_28;
            }
          }

          v8 = 0;
          v28 = v57;
LABEL_44:

          goto LABEL_45;
        case 4:
LABEL_14:
          v18 = v18 / 60.0;
          v21 = [v15 substringWithRange:{2, 2}];
          [v21 doubleValue];
          v17 = v17 + v22 / 60.0;

          goto LABEL_15;
        case 6:
          v19 = [v15 substringWithRange:{4, 2}];
          [v19 doubleValue];
          v17 = v20 / 60.0 / 60.0 + 0.0;

          v18 = 0.0166666667;
          goto LABEL_14;
      }
    }

    v8 = 0;
LABEL_46:

    goto LABEL_47;
  }

  v8 = 0;
LABEL_48:

  return v8;
}

+ (void)_enumerateTracksOfType:(id)a3 onAsset:(id)a4 withBlock:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a5;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [PFMediaUtilities tracksWithMediaType:a3 forAsset:a4];
  v8 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v20 = *v27;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v27 != v20)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v26 + 1) + 8 * v10);
      v25 = 0;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v12 = [v11 formatDescriptions];
      v13 = [v12 countByEnumeratingWithState:&v21 objects:v30 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v22;
LABEL_8:
        v16 = 0;
        while (1)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v21 + 1) + 8 * v16);
          MediaSubType = CMFormatDescriptionGetMediaSubType(v17);
          v7[2](v7, v11, v17, MediaSubType, &v25);
          if (v25)
          {
            break;
          }

          if (v14 == ++v16)
          {
            v14 = [v12 countByEnumeratingWithState:&v21 objects:v30 count:16];
            if (v14)
            {
              goto LABEL_8;
            }

            break;
          }
        }
      }

      if (v25)
      {
        break;
      }

      if (++v10 == v9)
      {
        v9 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

+ (AudioStreamBasicDescription)audioStreamBasicDescriptionForAsset:(SEL)a3
{
  v6 = a4;
  v12 = 0;
  v13 = &v12;
  v14 = 0x4810000000;
  v15 = &unk_1B36BE437;
  v16 = 0u;
  v17 = 0u;
  v18 = 0;
  v7 = *MEMORY[0x1E69875A0];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__PFMetadataMovie_audioStreamBasicDescriptionForAsset___block_invoke;
  v11[3] = &unk_1E7B65170;
  v11[4] = &v12;
  [a2 _enumerateTracksOfType:v7 onAsset:v6 withBlock:v11];
  v8 = v13;
  v9 = *(v13 + 3);
  *&retstr->mSampleRate = *(v13 + 2);
  *&retstr->mBytesPerPacket = v9;
  *&retstr->mBitsPerChannel = v8[8];
  _Block_object_dispose(&v12, 8);

  return result;
}

__n128 __55__PFMetadataMovie_audioStreamBasicDescriptionForAsset___block_invoke(uint64_t a1, int a2, CMAudioFormatDescriptionRef desc, uint64_t a4, _BYTE *a5)
{
  RichestDecodableFormat = CMAudioFormatDescriptionGetRichestDecodableFormat(desc);
  if (RichestDecodableFormat)
  {
    v9 = *(*(a1 + 32) + 8);
    result = *&RichestDecodableFormat->mASBD.mSampleRate;
    v10 = *&RichestDecodableFormat->mASBD.mBytesPerPacket;
    *(v9 + 64) = *&RichestDecodableFormat->mASBD.mBitsPerChannel;
    *(v9 + 32) = result;
    *(v9 + 48) = v10;
    *a5 = 1;
  }

  return result;
}

@end