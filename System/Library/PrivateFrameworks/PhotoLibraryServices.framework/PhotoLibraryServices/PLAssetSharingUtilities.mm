@interface PLAssetSharingUtilities
+ (CGImage)_thumbnailForAssetURL:(id)l library:(id)library useAspect:(BOOL)aspect;
+ (double)_durationForVideoAssetURL:(id)l library:(id)library;
+ (double)_durationForVideoFilePath:(id)path;
+ (id)_objectBuilderFromVideoFilePath:(id)path metadata:(id)metadata;
+ (id)_playerItemForVideoAssetURL:(id)l library:(id)library;
+ (id)assetForVideoURL:(id)l metadata:(id)metadata library:(id)library outAudioMix:(id *)mix outVideoComposition:(id *)composition;
+ (id)exportSessionForVideoFilePath:(id)path metadata:(id)metadata exportPreset:(id)preset;
+ (id)exportSessionForVideoURL:(id)l library:(id)library fallbackFilePath:(id)path exportPreset:(id)preset;
+ (id)filePathForVideoURL:(id)l library:(id)library outMetadata:(id *)metadata;
+ (id)playerItemForVideoFilePath:(id)path metadata:(id)metadata;
+ (id)playerItemForVideoURL:(id)l fallbackFilePath:(id)path library:(id)library;
+ (int64_t)_estimatedOutputFileLengthForDuration:(double)duration exportPreset:(id)preset exportProperties:(id)properties;
+ (int64_t)estimatedOutputFileLengthForVideoFilePath:(id)path metadata:(id)metadata exportPreset:(id)preset exportProperties:(id)properties;
+ (int64_t)estimatedOutputFileLengthForVideoURL:(id)l library:(id)library fallbackFilePath:(id)path exportPreset:(id)preset exportProperties:(id)properties;
@end

@implementation PLAssetSharingUtilities

+ (id)assetForVideoURL:(id)l metadata:(id)metadata library:(id)library outAudioMix:(id *)mix outVideoComposition:(id *)composition
{
  lCopy = l;
  metadataCopy = metadata;
  libraryCopy = library;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__34750;
  v42 = __Block_byref_object_dispose__34751;
  v43 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__34750;
  v36 = __Block_byref_object_dispose__34751;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__34750;
  v30 = __Block_byref_object_dispose__34751;
  v31 = 0;
  if (([lCopy isFileURL] & 1) == 0)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __93__PLAssetSharingUtilities_assetForVideoURL_metadata_library_outAudioMix_outVideoComposition___block_invoke;
    v20[3] = &unk_1E756F910;
    v21 = libraryCopy;
    v22 = lCopy;
    v23 = &v38;
    v24 = &v32;
    v25 = &v26;
    [v21 performBlockAndWait:v20 completionHandler:0];
  }

  if (!v39[5] && [lCopy isFileURL])
  {
    path = [lCopy path];
    v16 = [self _objectBuilderFromVideoFilePath:path metadata:metadataCopy];

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __93__PLAssetSharingUtilities_assetForVideoURL_metadata_library_outAudioMix_outVideoComposition___block_invoke_3;
    v19[3] = &unk_1E756B4B0;
    v19[4] = &v38;
    v19[5] = &v32;
    v19[6] = &v26;
    [v16 requestAVAssetWithResultHandler:v19];
  }

  if (mix)
  {
    *mix = v33[5];
  }

  if (composition)
  {
    *composition = v27[5];
  }

  v17 = v39[5];
  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v38, 8);

  return v17;
}

void __93__PLAssetSharingUtilities_assetForVideoURL_metadata_library_outAudioMix_outVideoComposition___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) photoFromAssetURL:*(a1 + 40)];
  if (v2)
  {
    v3 = [PLSlalomUtilities videoAVObjectBuilderForManagedAsset:v2 applyVideoAdjustments:1];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __93__PLAssetSharingUtilities_assetForVideoURL_metadata_library_outAudioMix_outVideoComposition___block_invoke_2;
    v4[3] = &unk_1E756B4B0;
    v5 = *(a1 + 48);
    v6 = *(a1 + 64);
    [v3 requestAVAssetWithResultHandler:v4];
  }
}

void __93__PLAssetSharingUtilities_assetForVideoURL_metadata_library_outAudioMix_outVideoComposition___block_invoke_3(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1[4] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v17 = v7;

  v12 = *(a1[5] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;
  v14 = v8;

  v15 = *(a1[6] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v9;
}

void __93__PLAssetSharingUtilities_assetForVideoURL_metadata_library_outAudioMix_outVideoComposition___block_invoke_2(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1[4] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v17 = v7;

  v12 = *(a1[5] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;
  v14 = v8;

  v15 = *(a1[6] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v9;
}

+ (id)playerItemForVideoFilePath:(id)path metadata:(id)metadata
{
  pathCopy = path;
  metadataCopy = metadata;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__34750;
  v18 = __Block_byref_object_dispose__34751;
  v19 = 0;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v9 = [defaultManager fileExistsAtPath:pathCopy];

  if (v9)
  {
    v10 = [self _objectBuilderFromVideoFilePath:pathCopy metadata:metadataCopy];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __63__PLAssetSharingUtilities_playerItemForVideoFilePath_metadata___block_invoke;
    v13[3] = &unk_1E756B488;
    v13[4] = &v14;
    [v10 requestPlayerItemWithResultHandler:v13];
  }

  v11 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v11;
}

+ (id)_playerItemForVideoAssetURL:(id)l library:(id)library
{
  lCopy = l;
  libraryCopy = library;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__34750;
  v19 = __Block_byref_object_dispose__34751;
  v20 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__PLAssetSharingUtilities__playerItemForVideoAssetURL_library___block_invoke;
  v11[3] = &unk_1E7578820;
  v7 = libraryCopy;
  v12 = v7;
  v8 = lCopy;
  v13 = v8;
  v14 = &v15;
  [v7 performBlockAndWait:v11 completionHandler:0];
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __63__PLAssetSharingUtilities__playerItemForVideoAssetURL_library___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) photoFromAssetURL:*(a1 + 40)];
  if ([v2 isVideo])
  {
    v3 = [PLSlalomUtilities videoAVObjectBuilderForManagedAsset:v2 applyVideoAdjustments:1];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __63__PLAssetSharingUtilities__playerItemForVideoAssetURL_library___block_invoke_2;
    v4[3] = &unk_1E756B488;
    v4[4] = *(a1 + 48);
    [v3 requestPlayerItemWithResultHandler:v4];
  }
}

+ (id)playerItemForVideoURL:(id)l fallbackFilePath:(id)path library:(id)library
{
  lCopy = l;
  pathCopy = path;
  libraryCopy = library;
  if (([lCopy isFileURL] & 1) != 0 || (!libraryCopy ? (+[PLPhotoLibrary assetsLibraryPhotoLibrary](PLPhotoLibrary, "assetsLibraryPhotoLibrary"), v11 = objc_claimAutoreleasedReturnValue()) : (v11 = libraryCopy), v12 = v11, objc_msgSend(self, "_playerItemForVideoAssetURL:library:", lCopy, v11), v13 = objc_claimAutoreleasedReturnValue(), v12, !v13))
  {
    if (![lCopy isFileURL] || (objc_msgSend(lCopy, "path"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(self, "playerItemForVideoFilePath:metadata:", v14, 0), v13 = objc_claimAutoreleasedReturnValue(), v14, !v13))
    {
      v13 = [self playerItemForVideoFilePath:pathCopy metadata:0];
    }
  }

  return v13;
}

+ (id)exportSessionForVideoFilePath:(id)path metadata:(id)metadata exportPreset:(id)preset
{
  pathCopy = path;
  metadataCopy = metadata;
  presetCopy = preset;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__34750;
  v21 = __Block_byref_object_dispose__34751;
  v22 = 0;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v12 = [defaultManager fileExistsAtPath:pathCopy];

  if (v12)
  {
    v13 = [self _objectBuilderFromVideoFilePath:pathCopy metadata:metadataCopy];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __79__PLAssetSharingUtilities_exportSessionForVideoFilePath_metadata_exportPreset___block_invoke;
    v16[3] = &unk_1E75778F0;
    v16[4] = &v17;
    [v13 requestExportSessionWithExportPreset:presetCopy resultHandler:v16];
  }

  v14 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v14;
}

+ (id)exportSessionForVideoURL:(id)l library:(id)library fallbackFilePath:(id)path exportPreset:(id)preset
{
  lCopy = l;
  libraryCopy = library;
  pathCopy = path;
  presetCopy = preset;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__34750;
  v31 = __Block_byref_object_dispose__34751;
  v32 = 0;
  if (([lCopy isFileURL] & 1) == 0)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __90__PLAssetSharingUtilities_exportSessionForVideoURL_library_fallbackFilePath_exportPreset___block_invoke;
    v22[3] = &unk_1E75778C0;
    v23 = libraryCopy;
    v24 = lCopy;
    v25 = presetCopy;
    v26 = &v27;
    [v23 performBlockAndWait:v22 completionHandler:0];
  }

  if (!v28[5] && [lCopy isFileURL])
  {
    path = [lCopy path];
    v15 = [self exportSessionForVideoFilePath:path metadata:0 exportPreset:presetCopy];
    v16 = v28[5];
    v28[5] = v15;
  }

  v17 = v28[5];
  if (!v17)
  {
    v18 = [self exportSessionForVideoFilePath:pathCopy metadata:0 exportPreset:presetCopy];
    v19 = v28[5];
    v28[5] = v18;

    v17 = v28[5];
  }

  v20 = v17;
  _Block_object_dispose(&v27, 8);

  return v20;
}

void __90__PLAssetSharingUtilities_exportSessionForVideoURL_library_fallbackFilePath_exportPreset___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) photoFromAssetURL:*(a1 + 40)];
  if (v2)
  {
    v3 = [PLSlalomUtilities videoAVObjectBuilderForManagedAsset:v2 applyVideoAdjustments:1];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __90__PLAssetSharingUtilities_exportSessionForVideoURL_library_fallbackFilePath_exportPreset___block_invoke_2;
    v5[3] = &unk_1E75778F0;
    v4 = *(a1 + 48);
    v5[4] = *(a1 + 56);
    [v3 requestExportSessionWithExportPreset:v4 resultHandler:v5];
  }
}

+ (id)_objectBuilderFromVideoFilePath:(id)path metadata:(id)metadata
{
  metadataCopy = metadata;
  if (path)
  {
    path = [MEMORY[0x1E695DFF8] fileURLWithPath:path isDirectory:0];
  }

  v6 = [MEMORY[0x1E6988168] assetWithURL:path];
  v7 = [objc_alloc(MEMORY[0x1E69C0910]) initWithPropertyListDictionary:metadataCopy];
  v8 = [objc_alloc(MEMORY[0x1E69C08F8]) initWithVideoAsset:v6 videoAdjustments:v7];

  return v8;
}

+ (int64_t)_estimatedOutputFileLengthForDuration:(double)duration exportPreset:(id)preset exportProperties:(id)properties
{
  if (duration <= 0.0)
  {
    return 0;
  }

  v7 = MEMORY[0x1E69C0890];
  propertiesCopy = properties;
  presetCopy = preset;
  memset(&v13, 0, sizeof(v13));
  CMTimeMakeWithSeconds(&v13, duration, [v7 preferredTimeScale]);
  v12 = v13;
  v10 = [MEMORY[0x1E6987E60] estimatedOutputFileLengthForPreset:presetCopy duration:&v12 properties:propertiesCopy];

  return v10;
}

+ (double)_durationForVideoFilePath:(id)path
{
  pathCopy = path;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [defaultManager fileExistsAtPath:pathCopy];

  Seconds = 0.0;
  if (v5)
  {
    v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathCopy isDirectory:0];
    v8 = [MEMORY[0x1E6988168] assetWithURL:v7];
    v9 = v8;
    if (v8)
    {
      [v8 duration];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    Seconds = CMTimeGetSeconds(&time);
  }

  return Seconds;
}

+ (double)_durationForVideoAssetURL:(id)l library:(id)library
{
  lCopy = l;
  libraryCopy = library;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__PLAssetSharingUtilities__durationForVideoAssetURL_library___block_invoke;
  v11[3] = &unk_1E7578820;
  v7 = libraryCopy;
  v12 = v7;
  v8 = lCopy;
  v13 = v8;
  v14 = &v15;
  [v7 performBlockAndWait:v11 completionHandler:0];
  v9 = v16[3];

  _Block_object_dispose(&v15, 8);
  return v9;
}

void __61__PLAssetSharingUtilities__durationForVideoAssetURL_library___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) photoFromAssetURL:*(a1 + 40)];
  if ([v3 isVideo])
  {
    [PLSlalomUtilities durationForManagedAsset:v3 applyVideoAdjustments:1];
    *(*(*(a1 + 48) + 8) + 24) = v2;
  }
}

+ (int64_t)estimatedOutputFileLengthForVideoFilePath:(id)path metadata:(id)metadata exportPreset:(id)preset exportProperties:(id)properties
{
  metadataCopy = metadata;
  presetCopy = preset;
  propertiesCopy = properties;
  [self _durationForVideoFilePath:path];
  v14 = v13;
  if (v13 > 0.0)
  {
    v15 = [objc_alloc(MEMORY[0x1E69C0910]) initWithPropertyListDictionary:metadataCopy];
    [PLSlalomUtilities durationForBaseDuration:v15 videoAdjustments:v14];
    v14 = v16;
  }

  v17 = [self _estimatedOutputFileLengthForDuration:presetCopy exportPreset:propertiesCopy exportProperties:v14];

  return v17;
}

+ (int64_t)estimatedOutputFileLengthForVideoURL:(id)l library:(id)library fallbackFilePath:(id)path exportPreset:(id)preset exportProperties:(id)properties
{
  lCopy = l;
  libraryCopy = library;
  pathCopy = path;
  presetCopy = preset;
  propertiesCopy = properties;
  v17 = 0.0;
  if (([lCopy isFileURL] & 1) != 0 || (objc_msgSend(self, "_durationForVideoAssetURL:library:", lCopy, libraryCopy), v17 = v18, v18 == 0.0))
  {
    if ([lCopy isFileURL])
    {
      path = [lCopy path];
      [self _durationForVideoFilePath:path];
      v17 = v20;
    }
  }

  if (v17 == 0.0)
  {
    [self _durationForVideoFilePath:pathCopy];
    v17 = v21;
  }

  v22 = [self _estimatedOutputFileLengthForDuration:presetCopy exportPreset:propertiesCopy exportProperties:v17];

  return v22;
}

+ (id)filePathForVideoURL:(id)l library:(id)library outMetadata:(id *)metadata
{
  lCopy = l;
  libraryCopy = library;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__34750;
  v29 = __Block_byref_object_dispose__34751;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__34750;
  v23 = __Block_byref_object_dispose__34751;
  v24 = 0;
  if ([lCopy isFileURL])
  {
    path = [lCopy path];
    v10 = v26[5];
    v26[5] = path;
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __67__PLAssetSharingUtilities_filePathForVideoURL_library_outMetadata___block_invoke;
    v13[3] = &unk_1E756E960;
    v14 = libraryCopy;
    v15 = lCopy;
    v16 = &v25;
    v17 = &v19;
    metadataCopy = metadata;
    [v14 performBlockAndWait:v13 completionHandler:0];

    v10 = v14;
  }

  if (metadata)
  {
    *metadata = v20[5];
  }

  v11 = v26[5];
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);

  return v11;
}

void __67__PLAssetSharingUtilities_filePathForVideoURL_library_outMetadata___block_invoke(uint64_t a1)
{
  v9 = [*(a1 + 32) photoFromAssetURL:*(a1 + 40)];
  if ([v9 isVideo])
  {
    v2 = [v9 pathForOriginalFile];
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    if (*(a1 + 64))
    {
      if ([v9 isDefaultAdjustedSlomo])
      {
        v5 = [PLSlalomUtilities synchronouslyFetchVideoAdjustmentsFromManagedAsset:v9];
        v6 = [v5 propertyListDictionary];
        v7 = *(*(a1 + 56) + 8);
        v8 = *(v7 + 40);
        *(v7 + 40) = v6;
      }
    }
  }
}

+ (CGImage)_thumbnailForAssetURL:(id)l library:(id)library useAspect:(BOOL)aspect
{
  lCopy = l;
  libraryCopy = library;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__34750;
  v23 = __Block_byref_object_dispose__34751;
  v24 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__PLAssetSharingUtilities__thumbnailForAssetURL_library_useAspect___block_invoke;
  v14[3] = &unk_1E7577898;
  v9 = libraryCopy;
  v15 = v9;
  v10 = lCopy;
  aspectCopy = aspect;
  v16 = v10;
  v17 = &v19;
  [v9 performBlockAndWait:v14 completionHandler:0];
  if (v20[5])
  {
    v11 = DCIM_CGImageRefFromPLImage();
    v12 = v11;
    if (v11)
    {
      CFRetain(v11);
      CFAutorelease(v12);
    }
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(&v19, 8);
  return v12;
}

void __67__PLAssetSharingUtilities__thumbnailForAssetURL_library_useAspect___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) photoFromAssetURL:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v14 = v2;
    v4 = [v2 isDeleted];
    v3 = v14;
    if ((v4 & 1) == 0)
    {
      if (![v14 isCloudSharedAsset] || (v5 = objc_msgSend(v14, "cloudSharedPlaceholderKind"), v3 = v14, v5 >= 3))
      {
        v6 = *(a1 + 56);
        v7 = [MEMORY[0x1E69BF248] defaultFormatChooser];
        v8 = v7;
        if (v6)
        {
          [v7 masterThumbnailFormat];
        }

        else
        {
          [v7 indexSheetUnbakedFormat];
        }
        v9 = ;
        v10 = [v9 formatID];

        PLPushPhotoLibraryClient(2);
        v11 = [v14 imageWithFormat:v10];
        v12 = *(*(a1 + 48) + 8);
        v13 = *(v12 + 40);
        *(v12 + 40) = v11;

        PLPopPhotoLibraryClient();
        v3 = v14;
      }
    }
  }
}

@end