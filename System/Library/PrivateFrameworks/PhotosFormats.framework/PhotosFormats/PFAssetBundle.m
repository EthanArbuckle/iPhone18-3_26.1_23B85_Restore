@interface PFAssetBundle
+ (BOOL)fileName:(id)a3 matchesRegex:(id)a4;
+ (BOOL)isValidDCFFileName:(id)a3;
+ (UTType)contentType;
+ (id)insertAuxiliaryResourceTypeMarker:(id)a3 intoFileName:(id)a4;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)livePhotoImageDisplayTime;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)livePhotoOriginalImageDisplayTime;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)livePhotoOriginalVideoDuration;
- (BOOL)_pathExtension:(id)a3 matchesType:(id)a4 error:(id *)a5;
- (BOOL)_verifyFileSourceExistsAtURL:(id)a3 error:(id *)a4;
- (BOOL)_writeFileAtURL:(id)a3 toDirectory:(id)a4 withUpdatedFilename:(id)a5 updateManifest:(id)a6 bundlePathKey:(id)a7 verifyUTIType:(__CFString *)a8 error:(id *)a9;
- (BOOL)_writeFileAtURL:(id)a3 toDirectory:(id)a4 withUpdatedFilename:(id)a5 writtenFileURL:(id *)a6 error:(id *)a7;
- (BOOL)linkOrCopyURL:(id)a3 toURL:(id)a4 forceCopy:(BOOL)a5 error:(id *)a6;
- (BOOL)spatialOvercaptureResourcesPurgeable;
- (BOOL)writeAllResourceURLsToDirectoryAtURL:(id)a3 updatingManifest:(id)a4 error:(id *)a5;
- (BOOL)writeToBundleAtURL:(id)a3 error:(id *)a4;
- (NSSet)keywordTitles;
- (NSString)livePhotoOriginalPairingIdentifier;
- (NSString)livePhotoPairingIdentifier;
- (NSTimeZone)libraryCreationDateTimeZone;
- (PFAssetBundle)init;
- (PFAssetBundle)initWithAssetBundleAtURL:(id)a3;
- (PFAssetBundle)initWithOriginalPhotoURL:(id)a3 alternatePhotoURL:(id)a4 fullSizePhotoURL:(id)a5 adjustmentBaseFullSizePhotoURL:(id)a6 spatialOvercapturePhotoURL:(id)a7 originalPairedVideoURL:(id)a8 fullSizePairedVideoURL:(id)a9 adjustmentBaseFullSizePairedVideoURL:(id)a10 spatialOvercapturePairedVideoURL:(id)a11 fullSizeVideoURL:(id)a12 adjustmentsURL:(id)a13 originalAdjustmentsURL:(id)a14 adjustmentsSecondaryDataURL:(id)a15 mediaSubtypes:(unint64_t)a16 playbackStyle:(int64_t)a17 playbackVariation:(unint64_t)a18 videoComplementVisibilityState:(unsigned __int16)a19;
- (PFAssetBundle)initWithOriginalVideoURL:(id)a3 fullSizeRenderedVideoURL:(id)a4 adjustmentBaseVideoURL:(id)a5 spatialOvercaptureVideoURL:(id)a6 adjustmentsURL:(id)a7 originalAdjustmentsURL:(id)a8 mediaSubtypes:(unint64_t)a9 playbackStyle:(int64_t)a10 playbackVariation:(unint64_t)a11;
- (PFAssetBundle)initWithPropertyList:(id)a3;
- (id)createAssetBundleWritingErrorWithDescription:(id)a3;
- (id)dcfCompliantFilenameBaseForWritingResourceFiles;
- (id)generateCustomFilenamesByPathKey;
- (id)libraryLocation;
- (id)urlsByPathKey;
- (id)writeDowngradedRepresentationToDirectory:(id)a3 error:(id *)a4;
- (id)writeFolderRepresentationToDirectory:(id)a3 error:(id *)a4;
- (int64_t)mediaType;
- (int64_t)playbackStyle;
- (unint64_t)mediaSubtypes;
- (unint64_t)playbackVariation;
- (unsigned)videoComplementVisibilityState;
- (void)_readLivePhotoVideoMetadataIfNeeded;
- (void)setAccessibilityDescription:(id)a3;
- (void)setAssetDescription:(id)a3;
- (void)setAssetTitle:(id)a3;
- (void)setKeywordTitles:(id)a3;
- (void)setLibraryCreationDate:(id)a3 inTimeZone:(id)a4;
- (void)setLibraryLocation:(id)a3;
- (void)setLivePhotoOriginalImageDisplayTime:(id *)a3;
- (void)setLivePhotoOriginalVideoDuration:(id *)a3;
- (void)setOriginalFilename:(id)a3;
- (void)setSpatialOvercaptureResourcesPurgeable:(BOOL)a3;
@end

@implementation PFAssetBundle

- (void)setLivePhotoOriginalVideoDuration:(id *)a3
{
  v3 = *&a3->var0;
  self->_livePhotoOriginalVideoDuration.epoch = a3->var3;
  *&self->_livePhotoOriginalVideoDuration.value = v3;
}

- (void)setLivePhotoOriginalImageDisplayTime:(id *)a3
{
  v3 = *&a3->var0;
  self->_livePhotoOriginalImageDisplayTime.epoch = a3->var3;
  *&self->_livePhotoOriginalImageDisplayTime.value = v3;
}

- (id)writeFolderRepresentationToDirectory:(id)a3 error:(id *)a4
{
  v82 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PFAssetBundle *)self photoURL];
  v8 = v7;
  v67 = a4;
  v63 = self;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [(PFAssetBundle *)self videoURL];
  }

  v10 = v9;

  v66 = v10;
  v65 = [v10 URLByDeletingLastPathComponent];
  v11 = [v65 URLByDeletingPathExtension];
  v12 = [v11 lastPathComponent];

  v68 = v6;
  v64 = v12;
  v13 = [v6 URLByAppendingPathComponent:v12];
  v14 = [MEMORY[0x1E696AC08] defaultManager];
  v15 = v13;
  v16 = [v15 path];
  v70 = v14;
  LODWORD(v14) = [v14 fileExistsAtPath:v16];

  v69 = v15;
  if (v14)
  {
    v17 = v15;
    do
    {
      v18 = [v17 lastPathComponent];
      v19 = objc_opt_new();
      v71 = v18;
      v20 = [v18 copy];
      v21 = [v20 pathExtension];
      if (([v21 isEqualToString:&stru_1F2A8EB68] & 1) == 0)
      {
        while (1)
        {
          v22 = [MEMORY[0x1E6982C40] typeWithFilenameExtension:v21];
          if (([v22 isDeclared] & 1) == 0)
          {
            break;
          }

          [v19 addObject:v21];
          v23 = [v20 stringByDeletingPathExtension];

          v21 = [v23 pathExtension];
          v20 = v23;
          if ([v21 isEqualToString:&stru_1F2A8EB68])
          {
            goto LABEL_12;
          }
        }
      }

      v23 = v20;
LABEL_12:

      v24 = [v23 mutableCopy];
      v25 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v26 = [v24 rangeOfCharacterFromSet:v25 options:4];
      v28 = v27;

      if (v28)
      {
        v29 = [v24 length];
        v30 = v29 - v26;
        v31 = [v24 substringWithRange:{v26, v29 - v26}];
        v32 = v31;
        if (v31 && (v33 = [v31 intValue], objc_msgSend(v32, "floatValue"), v33) && (v34 == v33 ? (v35 = v33 == -2147483647) : (v35 = 1), !v35 ? (v36 = v33 == 0x7FFFFFFF) : (v36 = 1), !v36))
        {
          [v24 deleteCharactersInRange:{v26, v30}];
          v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@" %ld", v33 + 1];
          [v24 appendString:v46];
        }

        else
        {
          [v24 appendString:@" 2"];
        }
      }

      else
      {
        [v24 appendString:@" 2"];
      }

      if ([v19 count])
      {
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v37 = [v19 reverseObjectEnumerator];
        v38 = [v37 countByEnumeratingWithState:&v74 objects:buf count:16];
        if (v38)
        {
          v39 = v38;
          v40 = *v75;
          do
          {
            for (i = 0; i != v39; ++i)
            {
              if (*v75 != v40)
              {
                objc_enumerationMutation(v37);
              }

              v42 = *(*(&v74 + 1) + 8 * i);
              [v24 appendString:@"."];
              [v24 appendString:v42];
            }

            v39 = [v37 countByEnumeratingWithState:&v74 objects:buf count:16];
          }

          while (v39);
        }
      }

      v43 = [v17 URLByDeletingLastPathComponent];
      v15 = [v43 URLByAppendingPathComponent:v24];

      v44 = [v15 path];
      v45 = [v70 fileExistsAtPath:v44];

      v17 = v15;
    }

    while ((v45 & 1) != 0);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v47 = [v68 path];
    v48 = [v15 lastPathComponent];
    *buf = 138543618;
    v79 = v47;
    v80 = 2114;
    v81 = v48;
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFAssetBundle] Generating folder representation at: %{public}@ with folder name: %{public}@", buf, 0x16u);
  }

  v49 = [MEMORY[0x1E696AC08] defaultManager];
  v50 = [v15 path];
  v51 = [v49 fileExistsAtPath:v50];

  if ((v51 & 1) == 0)
  {
    v52 = [v15 path];
    v73 = 0;
    v53 = [v49 createDirectoryAtPath:v52 withIntermediateDirectories:1 attributes:0 error:&v73];
    v54 = v73;

    if (!v53)
    {
      v58 = v67;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v79 = v15;
        v80 = 2114;
        v81 = v54;
        _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[PFAssetBundle] Could not create folder at: %{public}@. Error: %{public}@", buf, 0x16u);
      }

      goto LABEL_48;
    }
  }

  v72 = 0;
  v55 = [(PFAssetBundle *)v63 writeAllResourceURLsToDirectoryAtURL:v15 updatingManifest:0 error:&v72];
  v54 = v72;
  if (((v51 | v55) & 1) == 0)
  {
    [v49 removeItemAtURL:v15 error:0];
    v58 = v67;
LABEL_48:
    v56 = v66;
    goto LABEL_50;
  }

  v56 = v66;
  if (v55)
  {
    v57 = 1;
    v58 = v67;
    if (!v67)
    {
      goto LABEL_54;
    }

LABEL_53:
    v59 = v54;
    *v58 = v54;
    goto LABEL_54;
  }

  v58 = v67;
LABEL_50:
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v79 = v15;
    v80 = 2112;
    v81 = v54;
    _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[PFAssetBundle] Could not create folder representation: %@. Error: %@.", buf, 0x16u);
  }

  v57 = 0;
  if (v58)
  {
    goto LABEL_53;
  }

LABEL_54:
  if (v57)
  {
    v60 = v15;
  }

  else
  {
    v60 = 0;
  }

  v61 = v60;

  return v60;
}

- (id)writeDowngradedRepresentationToDirectory:(id)a3 error:(id *)a4
{
  v55 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [v6 path];
  v9 = [v7 fileExistsAtPath:v8];

  if ((v9 & 1) == 0)
  {
    v10 = [v6 path];
    v50 = 0;
    v11 = [v7 createDirectoryAtPath:v10 withIntermediateDirectories:1 attributes:0 error:&v50];
    v12 = v50;

    if (!v11)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        v52 = v6;
        v53 = 2114;
        v54 = v12;
        _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFAssetBundle] Could not create directory at: %{public}@. Error: %{public}@", buf, 0x16u);
      }

      goto LABEL_32;
    }
  }

  if ([(PFAssetBundle *)self mediaType]== 1)
  {
    if ([(PFAssetBundle *)self playbackStyle]== 5)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFAssetBundle] Creating downgraded representation from an auto-loop", buf, 2u);
      }

      v13 = [(PFAssetBundle *)self pairedVideoURL];
      v48 = 0;
      v49 = 0;
      [(PFAssetBundle *)self _writeFileAtURL:v13 toDirectory:v6 writtenFileURL:&v49 error:&v48];
      v14 = v49;
      v15 = v48;
    }

    else
    {
      v19 = [(PFAssetBundle *)self mediaSubtypes];
      v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO);
      if ((v19 & 8) != 0)
      {
        if (v20)
        {
          *buf = 0;
          _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFAssetBundle] Creating downgraded representation from a Live Photo", buf, 2u);
        }

        v24 = [(PFAssetBundle *)self fullSizePhotoURL];
        v25 = v24;
        if (v24)
        {
          v26 = v24;
        }

        else
        {
          v26 = [(PFAssetBundle *)self photoURL];
        }

        v13 = v26;

        v30 = [(PFAssetBundle *)self fullSizePairedVideoURL];
        v31 = v30;
        if (v30)
        {
          v32 = v30;
        }

        else
        {
          v32 = [(PFAssetBundle *)self pairedVideoURL];
        }

        v33 = v32;

        v34 = [MEMORY[0x1E696AFB0] UUID];
        v35 = [v34 UUIDString];
        v36 = [v35 stringByAppendingPathExtension:@"pvt"];

        v37 = [PFVideoComplement alloc];
        v42 = v33;
        v38 = [v33 path];
        v39 = [v13 path];
        v40 = [(PFVideoComplement *)v37 initWithPathToVideo:v38 pathToImage:v39];

        v41 = [v6 URLByAppendingPathComponent:v36];
        v47 = 0;
        LODWORD(v33) = [(PFVideoComplement *)v40 writeToBundleAtURL:v41 error:&v47];
        v12 = v47;
        v14 = 0;
        if (v33)
        {
          v14 = v41;
        }

LABEL_31:
        if (v14)
        {
          goto LABEL_35;
        }

        goto LABEL_32;
      }

      if (v20)
      {
        *buf = 0;
        _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFAssetBundle] Creating downgraded representation from a photo", buf, 2u);
      }

      v21 = [(PFAssetBundle *)self fullSizePhotoURL];
      v22 = v21;
      if (v21)
      {
        v23 = v21;
      }

      else
      {
        v23 = [(PFAssetBundle *)self photoURL];
      }

      v13 = v23;

      v45 = 0;
      v46 = 0;
      [(PFAssetBundle *)self _writeFileAtURL:v13 toDirectory:v6 writtenFileURL:&v46 error:&v45];
      v14 = v46;
      v15 = v45;
    }

LABEL_30:
    v12 = v15;
    goto LABEL_31;
  }

  if ([(PFAssetBundle *)self mediaType]== 2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFAssetBundle] Creating downgraded representation from a video", buf, 2u);
    }

    v16 = [(PFAssetBundle *)self fullSizeVideoURL];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = [(PFAssetBundle *)self videoURL];
    }

    v13 = v18;

    v43 = 0;
    v44 = 0;
    [(PFAssetBundle *)self _writeFileAtURL:v13 toDirectory:v6 writtenFileURL:&v44 error:&v43];
    v14 = v44;
    v15 = v43;
    goto LABEL_30;
  }

  v12 = 0;
LABEL_32:
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v52 = v6;
    v53 = 2112;
    v54 = v12;
    _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[PFAssetBundle] Could not create downgraded representation in directory: %@. Error: %@.", buf, 0x16u);
  }

  v14 = 0;
LABEL_35:
  if (a4)
  {
    v27 = v12;
    *a4 = v12;
  }

  v28 = v14;

  return v14;
}

- (PFAssetBundle)initWithOriginalVideoURL:(id)a3 fullSizeRenderedVideoURL:(id)a4 adjustmentBaseVideoURL:(id)a5 spatialOvercaptureVideoURL:(id)a6 adjustmentsURL:(id)a7 originalAdjustmentsURL:(id)a8 mediaSubtypes:(unint64_t)a9 playbackStyle:(int64_t)a10 playbackVariation:(unint64_t)a11
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = [MEMORY[0x1E695DF90] dictionary];
  if (v16)
  {
    v23 = [v16 path];
    [v22 setObject:v23 forKeyedSubscript:@"PFAssetBundlePathVideoKey"];
  }

  if (v17)
  {
    v24 = [v17 path];
    [v22 setObject:v24 forKeyedSubscript:@"PFAssetBundlePathFullSizeVideoKey"];
  }

  if (v18)
  {
    v25 = [v18 path];
    [v22 setObject:v25 forKeyedSubscript:@"PFAssetBundlePathAdjustmentBaseVideoKey"];
  }

  if (v19)
  {
    v26 = [v19 path];
    [v22 setObject:v26 forKeyedSubscript:@"PFAssetBundlePathSpatialOvercaptureVideoKey"];
  }

  if (v20)
  {
    v27 = [v20 path];
    [v22 setObject:v27 forKeyedSubscript:@"PFAssetBundlePathAdjustmentDataKey"];
  }

  if (v21)
  {
    v28 = [v21 path];
    [v22 setObject:v28 forKeyedSubscript:@"PFAssetBundlePathOriginalAdjustmentDataKey"];
  }

  v29 = [MEMORY[0x1E695DF90] dictionary];
  [v29 setObject:@"1" forKeyedSubscript:@"PFAssetBundleMetadataVersionKey"];
  [v29 setObject:&unk_1F2AAB668 forKeyedSubscript:@"PFAssetBundleMetadataMediaTypeKey"];
  v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a9];
  [v29 setObject:v30 forKeyedSubscript:@"PFAssetBundleMetadataMediaSubtypesKey"];

  v31 = [MEMORY[0x1E696AD98] numberWithInteger:a10];
  [v29 setObject:v31 forKeyedSubscript:@"PFAssetBundleMetadataPlaybackStyleKey"];

  v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a11];
  [v29 setObject:v32 forKeyedSubscript:@"PFAssetBundleMetadataPlaybackVariationKey"];

  [v29 setObject:&unk_1F2AAB680 forKeyedSubscript:@"PFAssetBundleMetadataVideoComplementVisibilityStateKey"];
  [v22 setObject:v29 forKeyedSubscript:@"PFAssetBundlePathMetadataKey"];
  v33 = [(PFAssetBundle *)self initWithPropertyList:v22];

  return v33;
}

- (PFAssetBundle)initWithOriginalPhotoURL:(id)a3 alternatePhotoURL:(id)a4 fullSizePhotoURL:(id)a5 adjustmentBaseFullSizePhotoURL:(id)a6 spatialOvercapturePhotoURL:(id)a7 originalPairedVideoURL:(id)a8 fullSizePairedVideoURL:(id)a9 adjustmentBaseFullSizePairedVideoURL:(id)a10 spatialOvercapturePairedVideoURL:(id)a11 fullSizeVideoURL:(id)a12 adjustmentsURL:(id)a13 originalAdjustmentsURL:(id)a14 adjustmentsSecondaryDataURL:(id)a15 mediaSubtypes:(unint64_t)a16 playbackStyle:(int64_t)a17 playbackVariation:(unint64_t)a18 videoComplementVisibilityState:(unsigned __int16)a19
{
  v24 = a3;
  v63 = a4;
  v62 = a5;
  v61 = a6;
  v60 = a7;
  v59 = a8;
  v25 = a9;
  v26 = a10;
  v27 = a11;
  v28 = a12;
  v29 = a13;
  v30 = a14;
  v31 = a15;
  v32 = [MEMORY[0x1E695DF90] dictionary];
  if (v24)
  {
    v33 = [v24 path];
    [v32 setObject:v33 forKeyedSubscript:@"PFAssetBundlePathPhotoKey"];
  }

  if (v63)
  {
    v34 = [v63 path];
    [v32 setObject:v34 forKeyedSubscript:@"PFAssetBundlePathAlternatePhotoKey"];
  }

  if (v62)
  {
    v35 = [v62 path];
    [v32 setObject:v35 forKeyedSubscript:@"PFAssetBundlePathFullSizePhotoKey"];
  }

  if (v61)
  {
    v36 = [v61 path];
    [v32 setObject:v36 forKeyedSubscript:@"PFAssetBundlePathAdjustmentBasePhotoKey"];
  }

  if (v60)
  {
    v37 = [v60 path];
    [v32 setObject:v37 forKeyedSubscript:@"PFAssetBundlePathSpatialOvercapturePhotoKey"];
  }

  if (v59)
  {
    v38 = [v59 path];
    [v32 setObject:v38 forKeyedSubscript:@"PFAssetBundlePathPairedVideoKey"];
  }

  if (v25)
  {
    v39 = [v25 path];
    [v32 setObject:v39 forKeyedSubscript:@"PFAssetBundlePathFullSizePairedVideoKey"];
  }

  if (v26)
  {
    v40 = [v26 path];
    [v32 setObject:v40 forKeyedSubscript:@"PFAssetBundlePathAdjustmentBasePairedVideoKey"];
  }

  if (v27)
  {
    v41 = [v27 path];
    [v32 setObject:v41 forKeyedSubscript:@"PFAssetBundlePathSpatialOvercapturePairedVideoKey"];
  }

  v56 = v26;
  if (v28)
  {
    v42 = [v28 path];
    [v32 setObject:v42 forKeyedSubscript:@"PFAssetBundlePathFullSizeVideoKey"];
  }

  v54 = v27;
  v55 = v25;
  v58 = v24;
  if (v29)
  {
    v43 = [v29 path];
    [v32 setObject:v43 forKeyedSubscript:@"PFAssetBundlePathAdjustmentDataKey"];
  }

  v44 = v29;
  if (v30)
  {
    v45 = [v30 path];
    [v32 setObject:v45 forKeyedSubscript:@"PFAssetBundlePathOriginalAdjustmentDataKey"];
  }

  if (v31)
  {
    v46 = [v31 path];
    [v32 setObject:v46 forKeyedSubscript:@"PFAssetBundlePathAdjustmentSecondaryDataKey"];
  }

  v47 = [MEMORY[0x1E695DF90] dictionary];
  [v47 setObject:@"1" forKeyedSubscript:@"PFAssetBundleMetadataVersionKey"];
  [v47 setObject:&unk_1F2AAB650 forKeyedSubscript:@"PFAssetBundleMetadataMediaTypeKey"];
  v48 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a16];
  [v47 setObject:v48 forKeyedSubscript:@"PFAssetBundleMetadataMediaSubtypesKey"];

  v49 = [MEMORY[0x1E696AD98] numberWithInteger:a17];
  [v47 setObject:v49 forKeyedSubscript:@"PFAssetBundleMetadataPlaybackStyleKey"];

  v50 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a18];
  [v47 setObject:v50 forKeyedSubscript:@"PFAssetBundleMetadataPlaybackVariationKey"];

  v51 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:a19];
  [v47 setObject:v51 forKeyedSubscript:@"PFAssetBundleMetadataVideoComplementVisibilityStateKey"];

  [v32 setObject:v47 forKeyedSubscript:@"PFAssetBundlePathMetadataKey"];
  v52 = [(PFAssetBundle *)self initWithPropertyList:v32];

  return v52;
}

- (BOOL)_writeFileAtURL:(id)a3 toDirectory:(id)a4 withUpdatedFilename:(id)a5 writtenFileURL:(id *)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = [v12 lastPathComponent];
  }

  v17 = v16;
  v18 = [v13 URLByAppendingPathComponent:v16];
  v19 = [(PFAssetBundle *)self linkOrCopyURL:v12 toURL:v18 forceCopy:0 error:a7];
  v20 = v19;
  if (a6 && v19)
  {
    v21 = v18;
    *a6 = v18;
  }

  return v20;
}

- (id)createAssetBundleWritingErrorWithDescription:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = a3;
  v5 = [[v3 alloc] initWithFormat:v4 arguments:&v15];

  v6 = @"Unknown reason";
  if (v5)
  {
    v6 = v5;
  }

  v7 = v6;

  v8 = MEMORY[0x1E696ABC0];
  v12 = *MEMORY[0x1E696A578];
  v13[0] = v7;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v10 = [v8 errorWithDomain:@"com.apple.PhotosFormats" code:-1 userInfo:v9];

  return v10;
}

- (BOOL)_verifyFileSourceExistsAtURL:(id)a3 error:(id *)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v13 = 1;
  v8 = [v6 path];
  v9 = [v7 fileExistsAtPath:v8 isDirectory:&v13];

  if (v9)
  {
    if (v13 != 1)
    {
      LOBYTE(a4) = 1;
      goto LABEL_12;
    }

    if (a4)
    {
      *a4 = [(PFAssetBundle *)self createAssetBundleWritingErrorWithDescription:@"Directory exists at '%@'", v6];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v15 = v6;
        v10 = MEMORY[0x1E69E9C10];
        v11 = "[PFAssetBundle] Source file is not a file, but a directory at URL: %@.";
LABEL_9:
        _os_log_impl(&dword_1B35C1000, v10, OS_LOG_TYPE_INFO, v11, buf, 0xCu);
        goto LABEL_10;
      }

      goto LABEL_10;
    }
  }

  else if (a4)
  {
    *a4 = [(PFAssetBundle *)self createAssetBundleWritingErrorWithDescription:@"No file exists at '%@'", v6];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v15 = v6;
      v10 = MEMORY[0x1E69E9C10];
      v11 = "[PFAssetBundle] Source file does not exist at URL: %@.";
      goto LABEL_9;
    }

LABEL_10:
    LOBYTE(a4) = 0;
  }

LABEL_12:

  return a4;
}

- (BOOL)_pathExtension:(id)a3 matchesType:(id)a4 error:(id *)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [PFUniformTypeUtilities typeWithFilenameExtension:v8];
  v11 = [v8 uppercaseString];
  v12 = [@"aae" uppercaseString];
  v13 = [v11 isEqualToString:v12];

  if (v13)
  {
    v14 = +[PFUniformTypeUtilities supplementalResourceAAEType];

    v10 = v14;
  }

  if (v10 && ([v10 conformsToType:v9] & 1) != 0)
  {
    LOBYTE(a5) = 1;
  }

  else if (a5)
  {
    *a5 = [(PFAssetBundle *)self createAssetBundleWritingErrorWithDescription:@"UTType is not %@ for path extension '%@'", v9, v8];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFAssetBundle] Path extension: %@ does not conform to expected UTI: %@.", buf, 0x16u);
    }

    LOBYTE(a5) = 0;
  }

  return a5;
}

- (BOOL)_writeFileAtURL:(id)a3 toDirectory:(id)a4 withUpdatedFilename:(id)a5 updateManifest:(id)a6 bundlePathKey:(id)a7 verifyUTIType:(__CFString *)a8 error:(id *)a9
{
  v47 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = [v15 lastPathComponent];
  if ([v17 isEqualToString:v20])
  {

    if (!a8)
    {
      v17 = 0;
      goto LABEL_12;
    }

LABEL_7:
    v38 = v20;
    v39 = v16;
    v21 = v18;
    v22 = [v15 pathExtension];
    v17 = 0;
    v23 = 1;
    goto LABEL_8;
  }

  if (!a8)
  {
LABEL_12:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v42 = v15;
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFAssetBundle] Could not write source file at URL %@ to disk. Expected uti type was not supplied.", buf, 0xCu);
    }

    goto LABEL_20;
  }

  if (!v17)
  {
    goto LABEL_7;
  }

  v38 = v20;
  v39 = v16;
  v21 = v18;
  v22 = [v17 pathExtension];
  v23 = 0;
LABEL_8:
  v24 = [MEMORY[0x1E6982C40] typeWithIdentifier:a8];
  v25 = [(PFAssetBundle *)self _pathExtension:v22 matchesType:v24 error:a9];

  if (*a9)
  {
    v26 = MEMORY[0x1E69E9C10];
    v27 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      if (v23)
      {
        v28 = &stru_1F2A8EB68;
      }

      else
      {
        v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(updated filename: %@)", v17];
      }

      v29 = *a9;
      *buf = 138543874;
      v42 = v15;
      v43 = 2114;
      v44 = v28;
      v45 = 2114;
      v46 = v29;
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFAssetBundle] Could not write source file at URL %{public}@ %{public}@ to disk. Error: %{public}@", buf, 0x20u);
      if ((v23 & 1) == 0)
      {
      }
    }
  }

  if (!v25)
  {
    LOBYTE(v30) = 0;
    v18 = v21;
    v20 = v38;
    v16 = v39;
    goto LABEL_30;
  }

  v18 = v21;
  v20 = v38;
  v16 = v39;
LABEL_20:
  if ([(PFAssetBundle *)self _verifyFileSourceExistsAtURL:v15 error:a9])
  {
    v40 = 0;
    v30 = [(PFAssetBundle *)self _writeFileAtURL:v15 toDirectory:v16 withUpdatedFilename:v17 writtenFileURL:&v40 error:a9];
    v31 = v40;
    v32 = v31;
    if (v30 && v31)
    {
      [v31 lastPathComponent];
      v34 = v33 = v20;
      [v18 setObject:v34 forKeyedSubscript:v19];

      v20 = v33;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v35 = [v32 path];
        *buf = 138412290;
        v42 = v35;
        _os_log_debug_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[PFAssetBundle] wrote file at path: %@", buf, 0xCu);

        v20 = v33;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v36 = *a9;
      *buf = 138412546;
      v42 = v15;
      v43 = 2114;
      v44 = v36;
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFAssetBundle] Could not write source file at URL %@ to disk. Error: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    LOBYTE(v30) = 0;
  }

LABEL_30:

  return v30;
}

- (id)urlsByPathKey
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  photoURL = self->_photoURL;
  if (photoURL)
  {
    [v3 setObject:photoURL forKeyedSubscript:@"PFAssetBundlePathPhotoKey"];
  }

  videoURL = self->_videoURL;
  if (videoURL)
  {
    [v4 setObject:videoURL forKeyedSubscript:@"PFAssetBundlePathVideoKey"];
  }

  audioURL = self->_audioURL;
  if (audioURL)
  {
    [v4 setObject:audioURL forKeyedSubscript:@"PFAssetBundlePathAudioKey"];
  }

  alternatePhotoURL = self->_alternatePhotoURL;
  if (alternatePhotoURL)
  {
    [v4 setObject:alternatePhotoURL forKeyedSubscript:@"PFAssetBundlePathAlternatePhotoKey"];
  }

  fullSizePhotoURL = self->_fullSizePhotoURL;
  if (fullSizePhotoURL)
  {
    [v4 setObject:fullSizePhotoURL forKeyedSubscript:@"PFAssetBundlePathFullSizePhotoKey"];
  }

  fullSizeVideoURL = self->_fullSizeVideoURL;
  if (fullSizeVideoURL)
  {
    [v4 setObject:fullSizeVideoURL forKeyedSubscript:@"PFAssetBundlePathFullSizeVideoKey"];
  }

  adjustmentDataURL = self->_adjustmentDataURL;
  if (adjustmentDataURL)
  {
    [v4 setObject:adjustmentDataURL forKeyedSubscript:@"PFAssetBundlePathAdjustmentDataKey"];
  }

  adjustmentBasePhotoURL = self->_adjustmentBasePhotoURL;
  if (adjustmentBasePhotoURL)
  {
    [v4 setObject:adjustmentBasePhotoURL forKeyedSubscript:@"PFAssetBundlePathAdjustmentBasePhotoKey"];
  }

  pairedVideoURL = self->_pairedVideoURL;
  if (pairedVideoURL)
  {
    [v4 setObject:pairedVideoURL forKeyedSubscript:@"PFAssetBundlePathPairedVideoKey"];
  }

  fullSizePairedVideoURL = self->_fullSizePairedVideoURL;
  if (fullSizePairedVideoURL)
  {
    [v4 setObject:fullSizePairedVideoURL forKeyedSubscript:@"PFAssetBundlePathFullSizePairedVideoKey"];
  }

  adjustmentBasePairedVideoURL = self->_adjustmentBasePairedVideoURL;
  if (adjustmentBasePairedVideoURL)
  {
    [v4 setObject:adjustmentBasePairedVideoURL forKeyedSubscript:@"PFAssetBundlePathAdjustmentBasePairedVideoKey"];
  }

  spatialOvercapturePhotoURL = self->_spatialOvercapturePhotoURL;
  if (spatialOvercapturePhotoURL)
  {
    [v4 setObject:spatialOvercapturePhotoURL forKeyedSubscript:@"PFAssetBundlePathSpatialOvercapturePhotoKey"];
  }

  spatialOvercapturePairedVideoURL = self->_spatialOvercapturePairedVideoURL;
  if (spatialOvercapturePairedVideoURL)
  {
    [v4 setObject:spatialOvercapturePairedVideoURL forKeyedSubscript:@"PFAssetBundlePathSpatialOvercapturePairedVideoKey"];
  }

  spatialOvercaptureVideoURL = self->_spatialOvercaptureVideoURL;
  if (spatialOvercaptureVideoURL)
  {
    [v4 setObject:spatialOvercaptureVideoURL forKeyedSubscript:@"PFAssetBundlePathSpatialOvercaptureVideoKey"];
  }

  adjustmentBaseVideoURL = self->_adjustmentBaseVideoURL;
  if (adjustmentBaseVideoURL)
  {
    [v4 setObject:adjustmentBaseVideoURL forKeyedSubscript:@"PFAssetBundlePathAdjustmentBaseVideoKey"];
  }

  originalAdjustmentDataURL = self->_originalAdjustmentDataURL;
  if (originalAdjustmentDataURL)
  {
    [v4 setObject:originalAdjustmentDataURL forKeyedSubscript:@"PFAssetBundlePathOriginalAdjustmentDataKey"];
  }

  adjustmentSecondaryDataURL = self->_adjustmentSecondaryDataURL;
  if (adjustmentSecondaryDataURL)
  {
    [v4 setObject:adjustmentSecondaryDataURL forKeyedSubscript:@"PFAssetBundlePathAdjustmentSecondaryDataKey"];
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v22 = PFAssetBundleAllAuxiliaryResourceKeys();
  v23 = [v22 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v32;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v32 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v31 + 1) + 8 * i);
        v28 = [(NSMutableDictionary *)self->_auxiliaryResourceURLsByKey objectForKeyedSubscript:v27, v31];
        if (v28)
        {
          [v4 setObject:v28 forKeyedSubscript:v27];
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v24);
  }

  v29 = [v4 copy];

  return v29;
}

- (BOOL)writeToBundleAtURL:(id)a3 error:(id *)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  if (([v6 isFileURL] & 1) == 0)
  {
    v12 = [(PFAssetBundle *)self createAssetBundleWritingErrorWithDescription:@"Destination URL for asset bundle is not a file URL: '%@'", v6];
    v13 = 1;
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    *buf = 138412290;
    v34 = v6;
    v14 = MEMORY[0x1E69E9C10];
    v15 = "[PFAssetBundle] Destination URL for asset bundle is not a file URL: %@";
    goto LABEL_8;
  }

  v8 = [v6 pathExtension];
  v9 = [v8 isEqualToString:@"photosasset"];

  if (v9)
  {
    v10 = [v6 path];
    v11 = [v7 fileExistsAtPath:v10];

    if (v11)
    {
      v12 = [(PFAssetBundle *)self createAssetBundleWritingErrorWithDescription:@"Destination for asset bundle already exists: '%@'", v6];
      v13 = 1;
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        goto LABEL_12;
      }

      *buf = 138412290;
      v34 = v6;
      v14 = MEMORY[0x1E69E9C10];
      v15 = "[PFAssetBundle] Destination for asset bundle already exists: '%@'";
LABEL_8:
      _os_log_impl(&dword_1B35C1000, v14, OS_LOG_TYPE_INFO, v15, buf, 0xCu);
      goto LABEL_12;
    }

    v32 = 0;
    v18 = [v7 createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:&v32];
    v12 = v32;
    v13 = v18 ^ 1;
  }

  else
  {
    v16 = [v6 pathExtension];
    v12 = [(PFAssetBundle *)self createAssetBundleWritingErrorWithDescription:@"Destination has extension '%@' but requires '%@'", v16, @"photosasset"];

    v13 = 1;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v17 = [v6 pathExtension];
      *buf = 138412546;
      v34 = v17;
      v35 = 2112;
      v36 = @"photosasset";
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFAssetBundle] Destination has extension '%@' but requires '%@'", buf, 0x16u);
    }
  }

LABEL_12:
  v19 = [MEMORY[0x1E695DF90] dictionary];
  v31 = v12;
  v20 = [(PFAssetBundle *)self writeAllResourceURLsToDirectoryAtURL:v6 updatingManifest:v19 error:&v31];
  v21 = v31;

  v22 = [v6 URLByAppendingPathComponent:@"manifest.plist"];
  if (v20)
  {
    v23 = [v19 writeToURL:v22 atomically:1];
    v24 = [v6 URLByAppendingPathComponent:@"metadata.plist"];
    if (v23)
    {
      v25 = [(NSMutableDictionary *)self->_metadata writeToURL:v24 atomically:1];
      goto LABEL_17;
    }
  }

  else
  {
    v24 = [v6 URLByAppendingPathComponent:@"metadata.plist"];
  }

  v25 = 0;
LABEL_17:
  if ((v25 | v13))
  {
    if (!v25)
    {
      goto LABEL_19;
    }

LABEL_22:
    v26 = *MEMORY[0x1E695DBA0];
    v30 = v21;
    [v6 setResourceValue:MEMORY[0x1E695E118] forKey:v26 error:&v30];
    v27 = v30;

    v21 = v27;
    if (!a4)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  [v7 removeItemAtURL:v6 error:0];
  if (v25)
  {
    goto LABEL_22;
  }

LABEL_19:
  if (!a4)
  {
    goto LABEL_25;
  }

LABEL_23:
  if (v21)
  {
    v28 = v21;
    *a4 = v21;
  }

LABEL_25:

  return v25;
}

- (BOOL)writeAllResourceURLsToDirectoryAtURL:(id)a3 updatingManifest:(id)a4 error:(id *)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v22 = a3;
  v21 = a4;
  v7 = [(PFAssetBundle *)self generateCustomFilenamesByPathKey];
  v19 = self;
  v8 = [(PFAssetBundle *)self urlsByPathKey];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    v12 = 1;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        v15 = [v8 objectForKeyedSubscript:v14];
        v16 = UTTypeForBundlePathKey(v14);
        v17 = [v7 objectForKeyedSubscript:v14];
        if (v12)
        {
          v12 = [(PFAssetBundle *)v19 _writeFileAtURL:v15 toDirectory:v22 withUpdatedFilename:v17 updateManifest:v21 bundlePathKey:v14 verifyUTIType:v16 error:a5];
        }

        else
        {
          v12 = 0;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (id)generateCustomFilenamesByPathKey
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
  v4 = [(PFAssetBundle *)self dcfCompliantFilenameBaseForWritingResourceFiles];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __49__PFAssetBundle_generateCustomFilenamesByPathKey__block_invoke;
  v27[3] = &unk_1E7B66AE0;
  v27[4] = self;
  v5 = MEMORY[0x1B8C64C40](v27);
  v6 = (v5)[2](v5, self->_photoURL, v4, 0);
  [v3 setObject:v6 forKeyedSubscript:@"PFAssetBundlePathPhotoKey"];

  v7 = (v5)[2](v5, self->_videoURL, v4, 0);
  [v3 setObject:v7 forKeyedSubscript:@"PFAssetBundlePathVideoKey"];

  v8 = (v5)[2](v5, self->_audioURL, v4, 0);
  [v3 setObject:v8 forKeyedSubscript:@"PFAssetBundlePathAudioKey"];

  v9 = (v5)[2](v5, self->_alternatePhotoURL, v4, 0);
  [v3 setObject:v9 forKeyedSubscript:@"PFAssetBundlePathAlternatePhotoKey"];

  v10 = (v5)[2](v5, self->_fullSizePhotoURL, v4, @"E");
  [v3 setObject:v10 forKeyedSubscript:@"PFAssetBundlePathFullSizePhotoKey"];

  v11 = (v5)[2](v5, self->_fullSizeVideoURL, v4, @"E");
  [v3 setObject:v11 forKeyedSubscript:@"PFAssetBundlePathFullSizeVideoKey"];

  v12 = (v5)[2](v5, self->_adjustmentBasePhotoURL, v4, @"B");
  [v3 setObject:v12 forKeyedSubscript:@"PFAssetBundlePathAdjustmentBasePhotoKey"];

  v13 = (v5)[2](v5, self->_pairedVideoURL, v4, 0);
  [v3 setObject:v13 forKeyedSubscript:@"PFAssetBundlePathPairedVideoKey"];

  v14 = (v5)[2](v5, self->_fullSizePairedVideoURL, v4, @"E");
  [v3 setObject:v14 forKeyedSubscript:@"PFAssetBundlePathFullSizePairedVideoKey"];

  v15 = (v5)[2](v5, self->_adjustmentBasePairedVideoURL, v4, @"B");
  [v3 setObject:v15 forKeyedSubscript:@"PFAssetBundlePathAdjustmentBasePairedVideoKey"];

  v16 = (v5)[2](v5, self->_spatialOvercapturePhotoURL, v4, @"S");
  [v3 setObject:v16 forKeyedSubscript:@"PFAssetBundlePathSpatialOvercapturePhotoKey"];

  v17 = (v5)[2](v5, self->_spatialOvercapturePairedVideoURL, v4, @"S");
  [v3 setObject:v17 forKeyedSubscript:@"PFAssetBundlePathSpatialOvercapturePairedVideoKey"];

  v18 = (v5)[2](v5, self->_spatialOvercaptureVideoURL, v4, @"S");
  [v3 setObject:v18 forKeyedSubscript:@"PFAssetBundlePathSpatialOvercaptureVideoKey"];

  v19 = (v5)[2](v5, self->_adjustmentBaseVideoURL, v4, @"B");
  [v3 setObject:v19 forKeyedSubscript:@"PFAssetBundlePathAdjustmentBaseVideoKey"];

  v20 = [@"aae" uppercaseString];
  v21 = [v4 stringByAppendingPathExtension:v20];

  [v3 setObject:v21 forKeyedSubscript:@"PFAssetBundlePathAdjustmentDataKey"];
  v22 = [objc_opt_class() insertAuxiliaryResourceTypeMarker:@"O" intoFileName:v21];
  [v3 setObject:v22 forKeyedSubscript:@"PFAssetBundlePathOriginalAdjustmentDataKey"];
  v23 = (v5)[2](v5, self->_adjustmentSecondaryDataURL, v4, @"A");
  v24 = [v23 stringByDeletingPathExtension];
  v25 = [v24 stringByAppendingPathExtension:@"DAT"];
  [v3 setObject:v25 forKeyedSubscript:@"PFAssetBundlePathAdjustmentSecondaryDataKey"];

  return v3;
}

id __49__PFAssetBundle_generateCustomFilenamesByPathKey__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  if (v6)
  {
    v9 = [v6 pathExtension];
    v10 = [v7 stringByAppendingPathExtension:v9];

    if (v8)
    {
      v11 = [objc_opt_class() insertAuxiliaryResourceTypeMarker:v8 intoFileName:v10];

      v10 = v11;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)dcfCompliantFilenameBaseForWritingResourceFiles
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [(PFAssetBundle *)self originalFilename];
  if ([objc_opt_class() isValidDCFFileName:v3])
  {
    v4 = [v3 stringByDeletingPathExtension];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v21 = v4;
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFAssetBundle] DCF compliant name generation: Using original filename from metadata as base: %@", buf, 0xCu);
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = [(PFAssetBundle *)self photoURL];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(PFAssetBundle *)self videoURL];
  }

  v8 = v7;

  if (![v4 length])
  {
    v9 = [v8 URLByDeletingLastPathComponent];
    v10 = [v9 pathExtension];
    v11 = [v10 isEqualToString:@"photosasset"];

    if (v11)
    {
      v12 = [v9 URLByDeletingPathExtension];
      v13 = [v12 lastPathComponent];

      if ([objc_opt_class() isValidDCFFileName:v13])
      {
        v14 = [v13 stringByDeletingPathExtension];

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v21 = v14;
          _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFAssetBundle] DCF compliant name generation: Using bundle URL filename as base: %@", buf, 0xCu);
        }
      }

      else
      {
        v14 = v4;
      }

      v4 = v14;
    }
  }

  v15 = [v8 lastPathComponent];
  if ([v4 length] || !objc_msgSend(objc_opt_class(), "isValidDCFFileName:", v15))
  {
    v16 = v4;
  }

  else
  {
    v16 = [v15 stringByDeletingPathExtension];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v21 = v16;
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFAssetBundle] DCF compliant name generation: Using primary resource filename as base: %@", buf, 0xCu);
    }
  }

  if ([v16 length])
  {
    v17 = v16;
  }

  else
  {
    v18 = [v15 hash];
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"IMG_%04u", v18 % 0x2710];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v21 = v17;
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFAssetBundle] DCF compliant name generation: Generated name from hash. Result: %@", buf, 0xCu);
    }
  }

  return v17;
}

- (BOOL)linkOrCopyURL:(id)a3 toURL:(id)a4 forceCopy:(BOOL)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = [MEMORY[0x1E696AC08] defaultManager];
  v12 = v11;
  if (a5)
  {
    v13 = 0;
  }

  else
  {
    v20 = 0;
    v14 = [v11 linkItemAtURL:v9 toURL:v10 error:&v20];
    v13 = v20;
    if (v14)
    {
      v15 = 1;
      goto LABEL_8;
    }
  }

  v16 = v13;
  v19 = v13;
  v15 = [v12 copyItemAtURL:v9 toURL:v10 error:&v19];
  v13 = v19;

  if (a6 && (v15 & 1) == 0)
  {
    v17 = v13;
    v15 = 0;
    *a6 = v13;
  }

LABEL_8:

  return v15;
}

- (void)setSpatialOvercaptureResourcesPurgeable:(BOOL)a3
{
  if (a3)
  {
    v3 = MEMORY[0x1E695E118];
  }

  else
  {
    v3 = 0;
  }

  [(NSMutableDictionary *)self->_metadata setObject:v3 forKeyedSubscript:@"PFAssetBundleMetadataSpatialOvercaptureResourcesPurgeableKey"];
}

- (void)setLibraryLocation:(id)a3
{
  v23 = a3;
  if (v23)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(NSMutableDictionary *)self->_metadata setObject:&stru_1F2A8EB68 forKeyedSubscript:@"PFAssetBundleMetadataLibraryLocationKey"];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = MEMORY[0x1E695DF90];
        v5 = v23;
        v6 = [v4 dictionaryWithCapacity:8];
        v7 = MEMORY[0x1E696AD98];
        [v5 coordinate];
        v8 = [v7 numberWithDouble:?];
        [v6 setObject:v8 forKeyedSubscript:@"PFAssetBundleMetadataLibraryLocationLatitudeKey"];

        v9 = MEMORY[0x1E696AD98];
        [v5 coordinate];
        v11 = [v9 numberWithDouble:v10];
        [v6 setObject:v11 forKeyedSubscript:@"PFAssetBundleMetadataLibraryLocationLongitudeKey"];

        v12 = MEMORY[0x1E696AD98];
        [v5 altitude];
        v13 = [v12 numberWithDouble:?];
        [v6 setObject:v13 forKeyedSubscript:@"PFAssetBundleMetadataLibraryLocationAltitudeKey"];

        v14 = MEMORY[0x1E696AD98];
        [v5 horizontalAccuracy];
        v15 = [v14 numberWithDouble:?];
        [v6 setObject:v15 forKeyedSubscript:@"PFAssetBundleMetadataLibraryLocationHorizontalAccuracyKey"];

        v16 = MEMORY[0x1E696AD98];
        [v5 verticalAccuracy];
        v17 = [v16 numberWithDouble:?];
        [v6 setObject:v17 forKeyedSubscript:@"PFAssetBundleMetadataLibraryLocationVerticalAccuracyKey"];

        v18 = MEMORY[0x1E696AD98];
        [v5 course];
        v19 = [v18 numberWithDouble:?];
        [v6 setObject:v19 forKeyedSubscript:@"PFAssetBundleMetadataLibraryLocationCourseKey"];

        v20 = MEMORY[0x1E696AD98];
        [v5 speed];
        v21 = [v20 numberWithDouble:?];
        [v6 setObject:v21 forKeyedSubscript:@"PFAssetBundleMetadataLibraryLocationSpeedKey"];

        v22 = [v5 timestamp];

        [v6 setObject:v22 forKeyedSubscript:@"PFAssetBundleMetadataLibraryLocationTimestampKey"];
        [(NSMutableDictionary *)self->_metadata setObject:v6 forKeyedSubscript:@"PFAssetBundleMetadataLibraryLocationKey"];
      }
    }
  }

  else
  {
    [(NSMutableDictionary *)self->_metadata removeObjectForKey:@"PFAssetBundleMetadataLibraryLocationKey"];
  }
}

- (void)setLibraryCreationDate:(id)a3 inTimeZone:(id)a4
{
  v10 = a3;
  v6 = a4;
  [(NSMutableDictionary *)self->_metadata setObject:v10 forKeyedSubscript:@"PFAssetBundleMetadataLibraryCreationDateKey"];
  if (v10 && v6)
  {
    v7 = [v6 name];
    v8 = [v6 secondsFromGMTForDate:v10];
    [(NSMutableDictionary *)self->_metadata setObject:v7 forKeyedSubscript:@"PFAssetBundleMetadataLibraryCreationDateTimeZoneNameKey"];
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:v8];
    [(NSMutableDictionary *)self->_metadata setObject:v9 forKeyedSubscript:@"PFAssetBundleMetadataLibraryCreationDateTimeZoneOffsetSecondsKey"];
  }

  else
  {
    [(NSMutableDictionary *)self->_metadata setObject:0 forKeyedSubscript:@"PFAssetBundleMetadataLibraryCreationDateTimeZoneNameKey"];
    [(NSMutableDictionary *)self->_metadata setObject:0 forKeyedSubscript:@"PFAssetBundleMetadataLibraryCreationDateTimeZoneOffsetSecondsKey"];
  }
}

- (void)setOriginalFilename:(id)a3
{
  v4 = [a3 copy];
  [(NSMutableDictionary *)self->_metadata setObject:v4 forKeyedSubscript:@"PFAssetBundleMetadataOriginalFilenameKey"];
}

- (void)setAssetTitle:(id)a3
{
  v4 = [a3 copy];
  [(NSMutableDictionary *)self->_metadata setObject:v4 forKeyedSubscript:@"PFAssetBundleMetadataAssetTitleKey"];
}

- (void)setAccessibilityDescription:(id)a3
{
  v4 = [a3 copy];
  [(NSMutableDictionary *)self->_metadata setObject:v4 forKeyedSubscript:@"PFAssetBundleMetadataAccessibilityDescriptionKey"];
}

- (void)setAssetDescription:(id)a3
{
  v4 = [a3 copy];
  [(NSMutableDictionary *)self->_metadata setObject:v4 forKeyedSubscript:@"PFAssetBundleMetadataAssetDescriptionKey"];
}

- (void)setKeywordTitles:(id)a3
{
  if (a3)
  {
    v4 = [a3 allObjects];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [(NSMutableDictionary *)self->_metadata setObject:v4 forKeyedSubscript:@"PFAssetBundleMetadataKeywordTitlesKey"];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)livePhotoOriginalImageDisplayTime
{
  result = [(PFAssetBundle *)self _readLivePhotoVideoMetadataIfNeeded];
  *retstr = self->_livePhotoOriginalImageDisplayTime;
  return result;
}

- (NSString)livePhotoOriginalPairingIdentifier
{
  [(PFAssetBundle *)self _readLivePhotoVideoMetadataIfNeeded];
  livePhotoOriginalPairingIdentifier = self->_livePhotoOriginalPairingIdentifier;

  return livePhotoOriginalPairingIdentifier;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)livePhotoOriginalVideoDuration
{
  result = [(PFAssetBundle *)self _readLivePhotoVideoMetadataIfNeeded];
  *retstr = self->_livePhotoOriginalVideoDuration;
  return result;
}

- (void)_readLivePhotoVideoMetadataIfNeeded
{
  if (!self->_didReadOriginalPairedVideoMetadata && [(PFAssetBundle *)self isMediaSubtype:8])
  {
    self->_didReadOriginalPairedVideoMetadata = 1;
    v3 = [(NSURL *)self->_pairedVideoURL path];
    v4 = PFVideoComplementMetadataForVideoAtPath(v3, 0);
    v5 = [v4 pairingIdentifier];
    livePhotoOriginalPairingIdentifier = self->_livePhotoOriginalPairingIdentifier;
    self->_livePhotoOriginalPairingIdentifier = v5;

    if (v4)
    {
      [v4 videoDuration];
      *&self->_livePhotoOriginalVideoDuration.value = v7;
      self->_livePhotoOriginalVideoDuration.epoch = v8;
      [v4 imageDisplayTime];
    }

    else
    {
      self->_livePhotoOriginalVideoDuration.value = 0;
      *&self->_livePhotoOriginalVideoDuration.timescale = 0;
      self->_livePhotoOriginalVideoDuration.epoch = 0;
      v7 = 0uLL;
      v8 = 0;
    }

    *&self->_livePhotoOriginalImageDisplayTime.value = v7;
    self->_livePhotoOriginalImageDisplayTime.epoch = v8;
  }
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)livePhotoImageDisplayTime
{
  *retstr = **&MEMORY[0x1E6960C70];
  result = [(PFAssetBundle *)self isMediaSubtype:8];
  if (result)
  {
    v6 = [(NSMutableDictionary *)self->_metadata objectForKeyedSubscript:@"PFAssetBundleMetadataTimingInfoKey"];

    if (v6)
    {

      return CMTimeMakeFromDictionary(retstr, v6);
    }

    else
    {

      return [(PFAssetBundle *)self livePhotoOriginalImageDisplayTime];
    }
  }

  return result;
}

- (NSString)livePhotoPairingIdentifier
{
  if ([(PFAssetBundle *)self isMediaSubtype:8])
  {
    v3 = [(NSMutableDictionary *)self->_metadata objectForKeyedSubscript:@"PFAssetBundleMetadataPairingIdentifierKey"];
    if (!v3)
    {
      v3 = [(PFAssetBundle *)self livePhotoOriginalPairingIdentifier];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)spatialOvercaptureResourcesPurgeable
{
  v3 = [(NSMutableDictionary *)self->_metadata objectForKeyedSubscript:@"PFAssetBundleMetadataSpatialOvercaptureResourcesPurgeableKey"];

  if (!v3)
  {
    return 0;
  }

  v4 = [(NSMutableDictionary *)self->_metadata objectForKeyedSubscript:@"PFAssetBundleMetadataSpatialOvercaptureResourcesPurgeableKey"];
  v5 = [v4 BOOLValue];

  return v5;
}

- (id)libraryLocation
{
  v2 = [(NSMutableDictionary *)self->_metadata objectForKeyedSubscript:@"PFAssetBundleMetadataLibraryLocationKey"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![v2 length])
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  else
  {
    v3 = [v2 objectForKeyedSubscript:@"PFAssetBundleMetadataLibraryLocationLatitudeKey"];
    if (!v3)
    {
      goto LABEL_8;
    }

    v4 = v3;
    v5 = [v2 objectForKeyedSubscript:@"PFAssetBundleMetadataLibraryLocationLongitudeKey"];

    if (!v5)
    {
      goto LABEL_23;
    }

    v6 = [v2 objectForKeyedSubscript:@"PFAssetBundleMetadataLibraryLocationLatitudeKey"];
    [v6 doubleValue];
    v8 = v7;

    v9 = [v2 objectForKeyedSubscript:@"PFAssetBundleMetadataLibraryLocationLongitudeKey"];
    [v9 doubleValue];
    v11 = v10;

    v39 = CLLocationCoordinate2DMake(v8, v11);
    latitude = v39.latitude;
    longitude = v39.longitude;
    if (CLLocationCoordinate2DIsValid(v39))
    {
      v14 = [v2 objectForKeyedSubscript:@"PFAssetBundleMetadataLibraryLocationAltitudeKey"];

      if (v14)
      {
        v15 = [v2 objectForKeyedSubscript:@"PFAssetBundleMetadataLibraryLocationAltitudeKey"];
        [v15 doubleValue];
        v17 = v16;
      }

      else
      {
        v17 = 0.0;
      }

      v18 = [v2 objectForKeyedSubscript:@"PFAssetBundleMetadataLibraryLocationHorizontalAccuracyKey"];

      v19 = -1.0;
      v20 = -1.0;
      if (v18)
      {
        v21 = [v2 objectForKeyedSubscript:@"PFAssetBundleMetadataLibraryLocationHorizontalAccuracyKey"];
        [v21 doubleValue];
        v20 = v22;
      }

      v23 = [v2 objectForKeyedSubscript:@"PFAssetBundleMetadataLibraryLocationVerticalAccuracyKey"];

      if (v23)
      {
        v24 = [v2 objectForKeyedSubscript:@"PFAssetBundleMetadataLibraryLocationVerticalAccuracyKey"];
        [v24 doubleValue];
        v19 = v25;
      }

      v26 = [v2 objectForKeyedSubscript:@"PFAssetBundleMetadataLibraryLocationCourseKey"];

      v27 = -1.0;
      v28 = -1.0;
      if (v26)
      {
        v29 = [v2 objectForKeyedSubscript:@"PFAssetBundleMetadataLibraryLocationCourseKey"];
        [v29 doubleValue];
        v28 = v30;
      }

      v31 = [v2 objectForKeyedSubscript:@"PFAssetBundleMetadataLibraryLocationSpeedKey"];

      if (v31)
      {
        v32 = [v2 objectForKeyedSubscript:@"PFAssetBundleMetadataLibraryLocationSpeedKey"];
        [v32 doubleValue];
        v27 = v33;
      }

      v34 = [v2 objectForKeyedSubscript:@"PFAssetBundleMetadataLibraryLocationTimestampKey"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        [v2 objectForKeyedSubscript:@"PFAssetBundleMetadataLibraryLocationTimestampKey"];
      }

      else
      {
        [MEMORY[0x1E695DF00] date];
      }
      v36 = ;
      v5 = [objc_alloc(MEMORY[0x1E6985C40]) initWithCoordinate:v36 altitude:latitude horizontalAccuracy:longitude verticalAccuracy:v17 course:v20 speed:v19 timestamp:{v28, v27}];
    }

    else
    {
LABEL_8:
      v5 = 0;
    }
  }

LABEL_23:

  return v5;
}

- (NSTimeZone)libraryCreationDateTimeZone
{
  v3 = [(NSMutableDictionary *)self->_metadata objectForKeyedSubscript:@"PFAssetBundleMetadataLibraryCreationDateTimeZoneNameKey"];
  if (!v3 || ([MEMORY[0x1E695DFE8] timeZoneWithName:v3], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = [(NSMutableDictionary *)self->_metadata objectForKeyedSubscript:@"PFAssetBundleMetadataLibraryCreationDateTimeZoneOffsetSecondsKey"];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 integerValue];
      v4 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:v7];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (NSSet)keywordTitles
{
  v3 = [(NSMutableDictionary *)self->_metadata objectForKeyedSubscript:@"PFAssetBundleMetadataKeywordTitlesKey"];

  if (v3)
  {
    v4 = [(NSMutableDictionary *)self->_metadata objectForKeyedSubscript:@"PFAssetBundleMetadataKeywordTitlesKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [MEMORY[0x1E695DFD8] setWithArray:v4];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (unsigned)videoComplementVisibilityState
{
  v3 = [(NSMutableDictionary *)self->_metadata objectForKeyedSubscript:@"PFAssetBundleMetadataVideoComplementVisibilityStateKey"];

  if (!v3)
  {
    return 0;
  }

  v4 = [(NSMutableDictionary *)self->_metadata objectForKeyedSubscript:@"PFAssetBundleMetadataVideoComplementVisibilityStateKey"];
  v5 = [v4 integerValue];

  return v5;
}

- (unint64_t)playbackVariation
{
  v3 = [(NSMutableDictionary *)self->_metadata objectForKeyedSubscript:@"PFAssetBundleMetadataPlaybackVariationKey"];

  if (!v3)
  {
    return 0;
  }

  v4 = [(NSMutableDictionary *)self->_metadata objectForKeyedSubscript:@"PFAssetBundleMetadataPlaybackVariationKey"];
  v5 = [v4 integerValue];

  return v5;
}

- (unint64_t)mediaSubtypes
{
  v3 = [(NSMutableDictionary *)self->_metadata objectForKeyedSubscript:@"PFAssetBundleMetadataMediaSubtypesKey"];

  if (!v3)
  {
    return 0;
  }

  v4 = [(NSMutableDictionary *)self->_metadata objectForKeyedSubscript:@"PFAssetBundleMetadataMediaSubtypesKey"];
  v5 = [v4 integerValue];

  return v5;
}

- (int64_t)mediaType
{
  v3 = [(NSMutableDictionary *)self->_metadata objectForKeyedSubscript:@"PFAssetBundleMetadataMediaTypeKey"];

  if (!v3)
  {
    return 0;
  }

  v4 = [(NSMutableDictionary *)self->_metadata objectForKeyedSubscript:@"PFAssetBundleMetadataMediaTypeKey"];
  v5 = [v4 integerValue];

  return v5;
}

- (int64_t)playbackStyle
{
  v3 = [(NSMutableDictionary *)self->_metadata objectForKeyedSubscript:@"PFAssetBundleMetadataPlaybackStyleKey"];

  if (!v3)
  {
    return 0;
  }

  v4 = [(NSMutableDictionary *)self->_metadata objectForKeyedSubscript:@"PFAssetBundleMetadataPlaybackStyleKey"];
  v5 = [v4 integerValue];

  return v5;
}

- (PFAssetBundle)initWithAssetBundleAtURL:(id)a3
{
  v52[19] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 pathExtension];
  v6 = [v5 isEqualToString:@"photosasset"];

  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v4 path];
    v37 = v42 = 1;
    v8 = [v37 stringByAppendingPathComponent:@"manifest.plist"];
    v36 = [MEMORY[0x1E696AC08] defaultManager];
    if ([v36 fileExistsAtPath:v8 isDirectory:&v42] && (v42 & 1) == 0)
    {
      v11 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v8];
      v9 = v11 != 0;
      if (v11)
      {
        v33 = v8;
        v34 = v4;
        v12 = v7;
        v35 = self;
        v52[0] = @"PFAssetBundlePathPhotoKey";
        v52[1] = @"PFAssetBundlePathVideoKey";
        v52[2] = @"PFAssetBundlePathAudioKey";
        v52[3] = @"PFAssetBundlePathAlternatePhotoKey";
        v52[4] = @"PFAssetBundlePathFullSizePhotoKey";
        v52[5] = @"PFAssetBundlePathFullSizeVideoKey";
        v52[6] = @"PFAssetBundlePathAdjustmentDataKey";
        v52[7] = @"PFAssetBundlePathAdjustmentBasePhotoKey";
        v52[8] = @"PFAssetBundlePathPairedVideoKey";
        v52[9] = @"PFAssetBundlePathFullSizePairedVideoKey";
        v52[10] = @"PFAssetBundlePathAdjustmentBasePairedVideoKey";
        v52[11] = @"PFAssetBundlePathSpatialOvercapturePhotoKey";
        v52[12] = @"PFAssetBundlePathSpatialOvercapturePairedVideoKey";
        v52[13] = @"PFAssetBundlePathSpatialOvercaptureVideoKey";
        v52[14] = @"PFAssetBundlePathAdjustmentBaseVideoKey";
        v52[15] = @"PFAssetBundlePathOriginalAdjustmentDataKey";
        v52[16] = @"PFAssetBundlePathAdjustmentSecondaryDataKey";
        v52[17] = @"PFAssetBundlePathSegmentationDataKey";
        v52[18] = @"PFAssetBundlePathAmbientPosterDataKey";
        [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:19];
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v13 = v41 = 0u;
        v14 = [v13 countByEnumeratingWithState:&v38 objects:v51 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v39;
          v17 = MEMORY[0x1E69E9C10];
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v39 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v19 = *(*(&v38 + 1) + 8 * i);
              v20 = [v11 objectForKeyedSubscript:v19];
              if (v20)
              {
                v21 = [v37 stringByAppendingPathComponent:v20];
                if (([v36 fileExistsAtPath:v21] & 1) == 0 && os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
                {
                  *buf = 138543618;
                  v44 = v19;
                  v45 = 2114;
                  v46 = v21;
                  _os_log_impl(&dword_1B35C1000, v17, OS_LOG_TYPE_INFO, "[PFAssetBundle] File resource is missing for key %{public}@ even though it's in the manifest: %{public}@ ", buf, 0x16u);
                }

                [v12 setObject:v21 forKeyedSubscript:v19];
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v38 objects:v51 count:16];
          }

          while (v15);
        }

        v4 = v34;
        self = v35;
        v7 = v12;
        v8 = v33;
        v9 = 1;
      }
    }

    else
    {
      v9 = 0;
    }

    v22 = [v37 stringByAppendingPathComponent:@"metadata.plist"];
    v23 = [MEMORY[0x1E696AC08] defaultManager];
    v24 = [v23 fileExistsAtPath:v22 isDirectory:&v42];

    if (v24)
    {
      if (v42)
      {
        v24 = 0;
      }

      else
      {
        v25 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v22];
        v26 = v25;
        if (v25)
        {
          v27 = [v25 objectForKeyedSubscript:@"PFAssetBundleMetadataVersionKey"];
          if ([v27 isEqualToString:@"1"])
          {
            [v7 setObject:v26 forKeyedSubscript:@"PFAssetBundlePathMetadataKey"];

            if (v9)
            {
              self = [(PFAssetBundle *)self initWithPropertyList:v7];
              v10 = self;
LABEL_34:

              goto LABEL_35;
            }

            v24 = 1;
            v28 = 1;
LABEL_32:
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v30 = @"N";
              if (v9)
              {
                v31 = @"Y";
              }

              else
              {
                v31 = @"N";
              }

              *buf = 138413058;
              v44 = v4;
              if (v24)
              {
                v32 = @"Y";
              }

              else
              {
                v32 = @"N";
              }

              v46 = v31;
              v45 = 2112;
              v47 = 2112;
              if (v28)
              {
                v30 = @"Y";
              }

              v48 = v32;
              v49 = 2112;
              v50 = v30;
              _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error trying to read asset bundle at %@ (manifestFound: %@, metadataFound: %@, validMetadataVersion: %@", buf, 0x2Au);
            }

            v10 = 0;
            goto LABEL_34;
          }

          v24 = 1;
        }

        else
        {
          v24 = 0;
        }
      }
    }

    v28 = 0;
    goto LABEL_32;
  }

  v10 = 0;
LABEL_35:

  return v10;
}

- (PFAssetBundle)initWithPropertyList:(id)a3
{
  v90 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v88.receiver = self;
  v88.super_class = PFAssetBundle;
  v5 = [(PFAssetBundle *)&v88 init];
  if (v5)
  {
    v6 = [v4 copy];
    propertyList = v5->_propertyList;
    v5->_propertyList = v6;

    v8 = [v4 objectForKeyedSubscript:@"PFAssetBundlePathMetadataKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 objectForKeyedSubscript:@"PFAssetBundleMetadataVersionKey"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v9 = 0;
      }

      v10 = [v8 objectForKeyedSubscript:@"PFAssetBundleMetadataPlaybackStyleKey"];
      v11 = [v10 integerValue];

      v12 = [v8 objectForKeyedSubscript:@"PFAssetBundleMetadataMediaTypeKey"];
      v13 = [v12 integerValue];

      v14 = [v8 objectForKeyedSubscript:@"PFAssetBundleMetadataMediaSubtypesKey"];
      v15 = [v14 integerValue];

      v16 = [v8 objectForKeyedSubscript:@"PFAssetBundleMetadataPlaybackVariationKey"];
      v17 = [v16 integerValue];

      v18 = [v8 objectForKeyedSubscript:@"PFAssetBundleMetadataVideoComplementVisibilityStateKey"];
      v79 = [v18 integerValue];

      v19 = [v8 objectForKeyedSubscript:@"PFAssetBundleMetadataSpatialOvercaptureResourcesPurgeableKey"];
      v80 = [v19 BOOLValue];

      v20 = [v8 objectForKeyedSubscript:@"PFAssetBundleMetadataPairingIdentifierKey"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v20 = 0;
      }

      v21 = [v8 objectForKeyedSubscript:@"PFAssetBundleMetadataTimingInfoKey"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v82 = v21;
      }

      else
      {

        v82 = 0;
      }
    }

    else
    {
      v15 = 0;
      v17 = 0;
      v79 = 0;
      v80 = 0;
      v20 = 0;
      v82 = 0;
      v13 = 0;
      v11 = 0;
      v9 = 0;
    }

    v22 = @"1";
    if (v9)
    {
      v22 = v9;
    }

    v23 = v22;

    objc_opt_class();
    v83 = v20;
    if (objc_opt_isKindOfClass())
    {
      v24 = [v8 mutableCopy];
    }

    else
    {
      v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v25 = v24;
    v81 = v23;
    v26 = [(__CFString *)v23 copy];
    [v25 setObject:v26 forKeyedSubscript:@"PFAssetBundleMetadataVersionKey"];

    v27 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
    [v25 setObject:v27 forKeyedSubscript:@"PFAssetBundleMetadataPlaybackStyleKey"];

    v28 = [MEMORY[0x1E696AD98] numberWithInteger:v13];
    [v25 setObject:v28 forKeyedSubscript:@"PFAssetBundleMetadataMediaTypeKey"];

    v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v15];
    [v25 setObject:v29 forKeyedSubscript:@"PFAssetBundleMetadataMediaSubtypesKey"];

    v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v17];
    [v25 setObject:v30 forKeyedSubscript:@"PFAssetBundleMetadataPlaybackVariationKey"];

    v31 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v79];
    [v25 setObject:v31 forKeyedSubscript:@"PFAssetBundleMetadataVideoComplementVisibilityStateKey"];

    v32 = [MEMORY[0x1E696AD98] numberWithBool:v80];
    [v25 setObject:v32 forKeyedSubscript:@"PFAssetBundleMetadataSpatialOvercaptureResourcesPurgeableKey"];

    [v25 setObject:v83 forKeyedSubscript:@"PFAssetBundleMetadataPairingIdentifierKey"];
    [v25 setObject:v82 forKeyedSubscript:@"PFAssetBundleMetadataTimingInfoKey"];
    v33 = [v25 mutableCopy];
    metadata = v5->_metadata;
    v5->_metadata = v33;

    v35 = createURLForAbsolutePathKeyInDictionary(@"PFAssetBundlePathPhotoKey", v4);
    photoURL = v5->_photoURL;
    v5->_photoURL = v35;

    v37 = createURLForAbsolutePathKeyInDictionary(@"PFAssetBundlePathVideoKey", v4);
    videoURL = v5->_videoURL;
    v5->_videoURL = v37;

    v39 = createURLForAbsolutePathKeyInDictionary(@"PFAssetBundlePathAudioKey", v4);
    audioURL = v5->_audioURL;
    v5->_audioURL = v39;

    v41 = createURLForAbsolutePathKeyInDictionary(@"PFAssetBundlePathAlternatePhotoKey", v4);
    alternatePhotoURL = v5->_alternatePhotoURL;
    v5->_alternatePhotoURL = v41;

    v43 = createURLForAbsolutePathKeyInDictionary(@"PFAssetBundlePathFullSizePhotoKey", v4);
    fullSizePhotoURL = v5->_fullSizePhotoURL;
    v5->_fullSizePhotoURL = v43;

    v45 = createURLForAbsolutePathKeyInDictionary(@"PFAssetBundlePathFullSizeVideoKey", v4);
    fullSizeVideoURL = v5->_fullSizeVideoURL;
    v5->_fullSizeVideoURL = v45;

    v47 = createURLForAbsolutePathKeyInDictionary(@"PFAssetBundlePathAdjustmentDataKey", v4);
    adjustmentDataURL = v5->_adjustmentDataURL;
    v5->_adjustmentDataURL = v47;

    v49 = createURLForAbsolutePathKeyInDictionary(@"PFAssetBundlePathAdjustmentBasePhotoKey", v4);
    adjustmentBasePhotoURL = v5->_adjustmentBasePhotoURL;
    v5->_adjustmentBasePhotoURL = v49;

    v51 = createURLForAbsolutePathKeyInDictionary(@"PFAssetBundlePathPairedVideoKey", v4);
    pairedVideoURL = v5->_pairedVideoURL;
    v5->_pairedVideoURL = v51;

    v53 = createURLForAbsolutePathKeyInDictionary(@"PFAssetBundlePathFullSizePairedVideoKey", v4);
    fullSizePairedVideoURL = v5->_fullSizePairedVideoURL;
    v5->_fullSizePairedVideoURL = v53;

    v55 = createURLForAbsolutePathKeyInDictionary(@"PFAssetBundlePathAdjustmentBasePairedVideoKey", v4);
    adjustmentBasePairedVideoURL = v5->_adjustmentBasePairedVideoURL;
    v5->_adjustmentBasePairedVideoURL = v55;

    v57 = createURLForAbsolutePathKeyInDictionary(@"PFAssetBundlePathSpatialOvercapturePhotoKey", v4);
    spatialOvercapturePhotoURL = v5->_spatialOvercapturePhotoURL;
    v5->_spatialOvercapturePhotoURL = v57;

    v59 = createURLForAbsolutePathKeyInDictionary(@"PFAssetBundlePathSpatialOvercapturePairedVideoKey", v4);
    spatialOvercapturePairedVideoURL = v5->_spatialOvercapturePairedVideoURL;
    v5->_spatialOvercapturePairedVideoURL = v59;

    v61 = createURLForAbsolutePathKeyInDictionary(@"PFAssetBundlePathSpatialOvercaptureVideoKey", v4);
    spatialOvercaptureVideoURL = v5->_spatialOvercaptureVideoURL;
    v5->_spatialOvercaptureVideoURL = v61;

    v63 = createURLForAbsolutePathKeyInDictionary(@"PFAssetBundlePathAdjustmentBaseVideoKey", v4);
    adjustmentBaseVideoURL = v5->_adjustmentBaseVideoURL;
    v5->_adjustmentBaseVideoURL = v63;

    v65 = createURLForAbsolutePathKeyInDictionary(@"PFAssetBundlePathOriginalAdjustmentDataKey", v4);
    originalAdjustmentDataURL = v5->_originalAdjustmentDataURL;
    v5->_originalAdjustmentDataURL = v65;

    v67 = createURLForAbsolutePathKeyInDictionary(@"PFAssetBundlePathAdjustmentSecondaryDataKey", v4);
    adjustmentSecondaryDataURL = v5->_adjustmentSecondaryDataURL;
    v5->_adjustmentSecondaryDataURL = v67;

    v69 = objc_alloc_init(MEMORY[0x1E695DF90]);
    auxiliaryResourceURLsByKey = v5->_auxiliaryResourceURLsByKey;
    v5->_auxiliaryResourceURLsByKey = v69;

    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v71 = PFAssetBundleAllAuxiliaryResourceKeys();
    v72 = [v71 countByEnumeratingWithState:&v84 objects:v89 count:16];
    if (v72)
    {
      v73 = v72;
      v74 = *v85;
      do
      {
        for (i = 0; i != v73; ++i)
        {
          if (*v85 != v74)
          {
            objc_enumerationMutation(v71);
          }

          v76 = *(*(&v84 + 1) + 8 * i);
          v77 = createURLForAbsolutePathKeyInDictionary(v76, v4);
          if (v77)
          {
            [(NSMutableDictionary *)v5->_auxiliaryResourceURLsByKey setObject:v77 forKeyedSubscript:v76];
          }
        }

        v73 = [v71 countByEnumeratingWithState:&v84 objects:v89 count:16];
      }

      while (v73);
    }
  }

  return v5;
}

- (PFAssetBundle)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"%@ not supported for %@: use initWithPropertyList: or initWithAssetBundleAtURL:", v5, objc_opt_class()}];

  return 0;
}

+ (BOOL)isValidDCFFileName:(id)a3
{
  v4 = isValidDCFFileName__onceToken;
  v5 = a3;
  if (v4 != -1)
  {
    dispatch_once(&isValidDCFFileName__onceToken, &__block_literal_global_199);
  }

  v6 = [a1 fileName:v5 matchesRegex:isValidDCFFileName__dcfRegex];

  return v6;
}

uint64_t __36__PFAssetBundle_isValidDCFFileName___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:@"^ [[A-Z][_][0-9]]{4}   (?# alphanumeric + '_' x4)[0-9]{4}               (?# digit x4)\\.[[A-Z][0-9]]{3 options:4} $ (?# alphanumeric x3 or x4)" error:{3, 0}];
  v1 = isValidDCFFileName__dcfRegex;
  isValidDCFFileName__dcfRegex = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (BOOL)fileName:(id)a3 matchesRegex:(id)a4
{
  if (!a3)
  {
    return 0;
  }

  v5 = a4;
  v6 = a3;
  v7 = [v5 numberOfMatchesInString:v6 options:0 range:{0, objc_msgSend(v6, "length")}];

  return v7 == 1;
}

+ (id)insertAuxiliaryResourceTypeMarker:(id)a3 intoFileName:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 substringToIndex:4];
  v8 = [v5 substringFromIndex:4];

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", v7, v6, v8];

  return v9;
}

+ (UTType)contentType
{
  if (contentType_onceToken != -1)
  {
    dispatch_once(&contentType_onceToken, &__block_literal_global_163_13101);
  }

  v3 = contentType_type;

  return v3;
}

uint64_t __28__PFAssetBundle_contentType__block_invoke()
{
  v0 = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.apple.photos.asset-bundle"];
  v1 = contentType_type;
  contentType_type = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end