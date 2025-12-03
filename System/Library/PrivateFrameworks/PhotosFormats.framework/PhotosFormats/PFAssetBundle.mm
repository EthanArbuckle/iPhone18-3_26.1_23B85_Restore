@interface PFAssetBundle
+ (BOOL)fileName:(id)name matchesRegex:(id)regex;
+ (BOOL)isValidDCFFileName:(id)name;
+ (UTType)contentType;
+ (id)insertAuxiliaryResourceTypeMarker:(id)marker intoFileName:(id)name;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)livePhotoImageDisplayTime;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)livePhotoOriginalImageDisplayTime;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)livePhotoOriginalVideoDuration;
- (BOOL)_pathExtension:(id)extension matchesType:(id)type error:(id *)error;
- (BOOL)_verifyFileSourceExistsAtURL:(id)l error:(id *)error;
- (BOOL)_writeFileAtURL:(id)l toDirectory:(id)directory withUpdatedFilename:(id)filename updateManifest:(id)manifest bundlePathKey:(id)key verifyUTIType:(__CFString *)type error:(id *)error;
- (BOOL)_writeFileAtURL:(id)l toDirectory:(id)directory withUpdatedFilename:(id)filename writtenFileURL:(id *)rL error:(id *)error;
- (BOOL)linkOrCopyURL:(id)l toURL:(id)rL forceCopy:(BOOL)copy error:(id *)error;
- (BOOL)spatialOvercaptureResourcesPurgeable;
- (BOOL)writeAllResourceURLsToDirectoryAtURL:(id)l updatingManifest:(id)manifest error:(id *)error;
- (BOOL)writeToBundleAtURL:(id)l error:(id *)error;
- (NSSet)keywordTitles;
- (NSString)livePhotoOriginalPairingIdentifier;
- (NSString)livePhotoPairingIdentifier;
- (NSTimeZone)libraryCreationDateTimeZone;
- (PFAssetBundle)init;
- (PFAssetBundle)initWithAssetBundleAtURL:(id)l;
- (PFAssetBundle)initWithOriginalPhotoURL:(id)l alternatePhotoURL:(id)rL fullSizePhotoURL:(id)uRL adjustmentBaseFullSizePhotoURL:(id)photoURL spatialOvercapturePhotoURL:(id)overcapturePhotoURL originalPairedVideoURL:(id)videoURL fullSizePairedVideoURL:(id)pairedVideoURL adjustmentBaseFullSizePairedVideoURL:(id)self0 spatialOvercapturePairedVideoURL:(id)self1 fullSizeVideoURL:(id)self2 adjustmentsURL:(id)self3 originalAdjustmentsURL:(id)self4 adjustmentsSecondaryDataURL:(id)self5 mediaSubtypes:(unint64_t)self6 playbackStyle:(int64_t)self7 playbackVariation:(unint64_t)self8 videoComplementVisibilityState:(unsigned __int16)self9;
- (PFAssetBundle)initWithOriginalVideoURL:(id)l fullSizeRenderedVideoURL:(id)rL adjustmentBaseVideoURL:(id)uRL spatialOvercaptureVideoURL:(id)videoURL adjustmentsURL:(id)adjustmentsURL originalAdjustmentsURL:(id)originalAdjustmentsURL mediaSubtypes:(unint64_t)subtypes playbackStyle:(int64_t)self0 playbackVariation:(unint64_t)self1;
- (PFAssetBundle)initWithPropertyList:(id)list;
- (id)createAssetBundleWritingErrorWithDescription:(id)description;
- (id)dcfCompliantFilenameBaseForWritingResourceFiles;
- (id)generateCustomFilenamesByPathKey;
- (id)libraryLocation;
- (id)urlsByPathKey;
- (id)writeDowngradedRepresentationToDirectory:(id)directory error:(id *)error;
- (id)writeFolderRepresentationToDirectory:(id)directory error:(id *)error;
- (int64_t)mediaType;
- (int64_t)playbackStyle;
- (unint64_t)mediaSubtypes;
- (unint64_t)playbackVariation;
- (unsigned)videoComplementVisibilityState;
- (void)_readLivePhotoVideoMetadataIfNeeded;
- (void)setAccessibilityDescription:(id)description;
- (void)setAssetDescription:(id)description;
- (void)setAssetTitle:(id)title;
- (void)setKeywordTitles:(id)titles;
- (void)setLibraryCreationDate:(id)date inTimeZone:(id)zone;
- (void)setLibraryLocation:(id)location;
- (void)setLivePhotoOriginalImageDisplayTime:(id *)time;
- (void)setLivePhotoOriginalVideoDuration:(id *)duration;
- (void)setOriginalFilename:(id)filename;
- (void)setSpatialOvercaptureResourcesPurgeable:(BOOL)purgeable;
@end

@implementation PFAssetBundle

- (void)setLivePhotoOriginalVideoDuration:(id *)duration
{
  v3 = *&duration->var0;
  self->_livePhotoOriginalVideoDuration.epoch = duration->var3;
  *&self->_livePhotoOriginalVideoDuration.value = v3;
}

- (void)setLivePhotoOriginalImageDisplayTime:(id *)time
{
  v3 = *&time->var0;
  self->_livePhotoOriginalImageDisplayTime.epoch = time->var3;
  *&self->_livePhotoOriginalImageDisplayTime.value = v3;
}

- (id)writeFolderRepresentationToDirectory:(id)directory error:(id *)error
{
  v82 = *MEMORY[0x1E69E9840];
  directoryCopy = directory;
  photoURL = [(PFAssetBundle *)self photoURL];
  v8 = photoURL;
  errorCopy = error;
  selfCopy = self;
  if (photoURL)
  {
    videoURL = photoURL;
  }

  else
  {
    videoURL = [(PFAssetBundle *)self videoURL];
  }

  v10 = videoURL;

  v66 = v10;
  uRLByDeletingLastPathComponent = [v10 URLByDeletingLastPathComponent];
  uRLByDeletingPathExtension = [uRLByDeletingLastPathComponent URLByDeletingPathExtension];
  lastPathComponent = [uRLByDeletingPathExtension lastPathComponent];

  v68 = directoryCopy;
  v64 = lastPathComponent;
  v13 = [directoryCopy URLByAppendingPathComponent:lastPathComponent];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v15 = v13;
  path = [v15 path];
  v70 = defaultManager;
  LODWORD(defaultManager) = [defaultManager fileExistsAtPath:path];

  v69 = v15;
  if (defaultManager)
  {
    v17 = v15;
    do
    {
      lastPathComponent2 = [v17 lastPathComponent];
      v19 = objc_opt_new();
      v71 = lastPathComponent2;
      v20 = [lastPathComponent2 copy];
      pathExtension = [v20 pathExtension];
      if (([pathExtension isEqualToString:&stru_1F2A8EB68] & 1) == 0)
      {
        while (1)
        {
          v22 = [MEMORY[0x1E6982C40] typeWithFilenameExtension:pathExtension];
          if (([v22 isDeclared] & 1) == 0)
          {
            break;
          }

          [v19 addObject:pathExtension];
          stringByDeletingPathExtension = [v20 stringByDeletingPathExtension];

          pathExtension = [stringByDeletingPathExtension pathExtension];
          v20 = stringByDeletingPathExtension;
          if ([pathExtension isEqualToString:&stru_1F2A8EB68])
          {
            goto LABEL_12;
          }
        }
      }

      stringByDeletingPathExtension = v20;
LABEL_12:

      v24 = [stringByDeletingPathExtension mutableCopy];
      whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v26 = [v24 rangeOfCharacterFromSet:whitespaceCharacterSet options:4];
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
        reverseObjectEnumerator = [v19 reverseObjectEnumerator];
        v38 = [reverseObjectEnumerator countByEnumeratingWithState:&v74 objects:buf count:16];
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
                objc_enumerationMutation(reverseObjectEnumerator);
              }

              v42 = *(*(&v74 + 1) + 8 * i);
              [v24 appendString:@"."];
              [v24 appendString:v42];
            }

            v39 = [reverseObjectEnumerator countByEnumeratingWithState:&v74 objects:buf count:16];
          }

          while (v39);
        }
      }

      uRLByDeletingLastPathComponent2 = [v17 URLByDeletingLastPathComponent];
      v15 = [uRLByDeletingLastPathComponent2 URLByAppendingPathComponent:v24];

      path2 = [v15 path];
      v45 = [v70 fileExistsAtPath:path2];

      v17 = v15;
    }

    while ((v45 & 1) != 0);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    path3 = [v68 path];
    lastPathComponent3 = [v15 lastPathComponent];
    *buf = 138543618;
    v79 = path3;
    v80 = 2114;
    v81 = lastPathComponent3;
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFAssetBundle] Generating folder representation at: %{public}@ with folder name: %{public}@", buf, 0x16u);
  }

  defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
  path4 = [v15 path];
  v51 = [defaultManager2 fileExistsAtPath:path4];

  if ((v51 & 1) == 0)
  {
    path5 = [v15 path];
    v73 = 0;
    v53 = [defaultManager2 createDirectoryAtPath:path5 withIntermediateDirectories:1 attributes:0 error:&v73];
    v54 = v73;

    if (!v53)
    {
      v58 = errorCopy;
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
  v55 = [(PFAssetBundle *)selfCopy writeAllResourceURLsToDirectoryAtURL:v15 updatingManifest:0 error:&v72];
  v54 = v72;
  if (((v51 | v55) & 1) == 0)
  {
    [defaultManager2 removeItemAtURL:v15 error:0];
    v58 = errorCopy;
LABEL_48:
    v56 = v66;
    goto LABEL_50;
  }

  v56 = v66;
  if (v55)
  {
    v57 = 1;
    v58 = errorCopy;
    if (!errorCopy)
    {
      goto LABEL_54;
    }

LABEL_53:
    v59 = v54;
    *v58 = v54;
    goto LABEL_54;
  }

  v58 = errorCopy;
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

- (id)writeDowngradedRepresentationToDirectory:(id)directory error:(id *)error
{
  v55 = *MEMORY[0x1E69E9840];
  directoryCopy = directory;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [directoryCopy path];
  v9 = [defaultManager fileExistsAtPath:path];

  if ((v9 & 1) == 0)
  {
    path2 = [directoryCopy path];
    v50 = 0;
    v11 = [defaultManager createDirectoryAtPath:path2 withIntermediateDirectories:1 attributes:0 error:&v50];
    v12 = v50;

    if (!v11)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        v52 = directoryCopy;
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

      pairedVideoURL = [(PFAssetBundle *)self pairedVideoURL];
      v48 = 0;
      v49 = 0;
      [(PFAssetBundle *)self _writeFileAtURL:pairedVideoURL toDirectory:directoryCopy writtenFileURL:&v49 error:&v48];
      v14 = v49;
      v15 = v48;
    }

    else
    {
      mediaSubtypes = [(PFAssetBundle *)self mediaSubtypes];
      v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO);
      if ((mediaSubtypes & 8) != 0)
      {
        if (v20)
        {
          *buf = 0;
          _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFAssetBundle] Creating downgraded representation from a Live Photo", buf, 2u);
        }

        fullSizePhotoURL = [(PFAssetBundle *)self fullSizePhotoURL];
        v25 = fullSizePhotoURL;
        if (fullSizePhotoURL)
        {
          photoURL = fullSizePhotoURL;
        }

        else
        {
          photoURL = [(PFAssetBundle *)self photoURL];
        }

        pairedVideoURL = photoURL;

        fullSizePairedVideoURL = [(PFAssetBundle *)self fullSizePairedVideoURL];
        v31 = fullSizePairedVideoURL;
        if (fullSizePairedVideoURL)
        {
          pairedVideoURL2 = fullSizePairedVideoURL;
        }

        else
        {
          pairedVideoURL2 = [(PFAssetBundle *)self pairedVideoURL];
        }

        v33 = pairedVideoURL2;

        uUID = [MEMORY[0x1E696AFB0] UUID];
        uUIDString = [uUID UUIDString];
        v36 = [uUIDString stringByAppendingPathExtension:@"pvt"];

        v37 = [PFVideoComplement alloc];
        v42 = v33;
        path3 = [v33 path];
        path4 = [pairedVideoURL path];
        v40 = [(PFVideoComplement *)v37 initWithPathToVideo:path3 pathToImage:path4];

        v41 = [directoryCopy URLByAppendingPathComponent:v36];
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

      fullSizePhotoURL2 = [(PFAssetBundle *)self fullSizePhotoURL];
      v22 = fullSizePhotoURL2;
      if (fullSizePhotoURL2)
      {
        photoURL2 = fullSizePhotoURL2;
      }

      else
      {
        photoURL2 = [(PFAssetBundle *)self photoURL];
      }

      pairedVideoURL = photoURL2;

      v45 = 0;
      v46 = 0;
      [(PFAssetBundle *)self _writeFileAtURL:pairedVideoURL toDirectory:directoryCopy writtenFileURL:&v46 error:&v45];
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

    fullSizeVideoURL = [(PFAssetBundle *)self fullSizeVideoURL];
    v17 = fullSizeVideoURL;
    if (fullSizeVideoURL)
    {
      videoURL = fullSizeVideoURL;
    }

    else
    {
      videoURL = [(PFAssetBundle *)self videoURL];
    }

    pairedVideoURL = videoURL;

    v43 = 0;
    v44 = 0;
    [(PFAssetBundle *)self _writeFileAtURL:pairedVideoURL toDirectory:directoryCopy writtenFileURL:&v44 error:&v43];
    v14 = v44;
    v15 = v43;
    goto LABEL_30;
  }

  v12 = 0;
LABEL_32:
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v52 = directoryCopy;
    v53 = 2112;
    v54 = v12;
    _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[PFAssetBundle] Could not create downgraded representation in directory: %@. Error: %@.", buf, 0x16u);
  }

  v14 = 0;
LABEL_35:
  if (error)
  {
    v27 = v12;
    *error = v12;
  }

  v28 = v14;

  return v14;
}

- (PFAssetBundle)initWithOriginalVideoURL:(id)l fullSizeRenderedVideoURL:(id)rL adjustmentBaseVideoURL:(id)uRL spatialOvercaptureVideoURL:(id)videoURL adjustmentsURL:(id)adjustmentsURL originalAdjustmentsURL:(id)originalAdjustmentsURL mediaSubtypes:(unint64_t)subtypes playbackStyle:(int64_t)self0 playbackVariation:(unint64_t)self1
{
  lCopy = l;
  rLCopy = rL;
  uRLCopy = uRL;
  videoURLCopy = videoURL;
  adjustmentsURLCopy = adjustmentsURL;
  originalAdjustmentsURLCopy = originalAdjustmentsURL;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (lCopy)
  {
    path = [lCopy path];
    [dictionary setObject:path forKeyedSubscript:@"PFAssetBundlePathVideoKey"];
  }

  if (rLCopy)
  {
    path2 = [rLCopy path];
    [dictionary setObject:path2 forKeyedSubscript:@"PFAssetBundlePathFullSizeVideoKey"];
  }

  if (uRLCopy)
  {
    path3 = [uRLCopy path];
    [dictionary setObject:path3 forKeyedSubscript:@"PFAssetBundlePathAdjustmentBaseVideoKey"];
  }

  if (videoURLCopy)
  {
    path4 = [videoURLCopy path];
    [dictionary setObject:path4 forKeyedSubscript:@"PFAssetBundlePathSpatialOvercaptureVideoKey"];
  }

  if (adjustmentsURLCopy)
  {
    path5 = [adjustmentsURLCopy path];
    [dictionary setObject:path5 forKeyedSubscript:@"PFAssetBundlePathAdjustmentDataKey"];
  }

  if (originalAdjustmentsURLCopy)
  {
    path6 = [originalAdjustmentsURLCopy path];
    [dictionary setObject:path6 forKeyedSubscript:@"PFAssetBundlePathOriginalAdjustmentDataKey"];
  }

  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  [dictionary2 setObject:@"1" forKeyedSubscript:@"PFAssetBundleMetadataVersionKey"];
  [dictionary2 setObject:&unk_1F2AAB668 forKeyedSubscript:@"PFAssetBundleMetadataMediaTypeKey"];
  v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:subtypes];
  [dictionary2 setObject:v30 forKeyedSubscript:@"PFAssetBundleMetadataMediaSubtypesKey"];

  v31 = [MEMORY[0x1E696AD98] numberWithInteger:style];
  [dictionary2 setObject:v31 forKeyedSubscript:@"PFAssetBundleMetadataPlaybackStyleKey"];

  v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:variation];
  [dictionary2 setObject:v32 forKeyedSubscript:@"PFAssetBundleMetadataPlaybackVariationKey"];

  [dictionary2 setObject:&unk_1F2AAB680 forKeyedSubscript:@"PFAssetBundleMetadataVideoComplementVisibilityStateKey"];
  [dictionary setObject:dictionary2 forKeyedSubscript:@"PFAssetBundlePathMetadataKey"];
  v33 = [(PFAssetBundle *)self initWithPropertyList:dictionary];

  return v33;
}

- (PFAssetBundle)initWithOriginalPhotoURL:(id)l alternatePhotoURL:(id)rL fullSizePhotoURL:(id)uRL adjustmentBaseFullSizePhotoURL:(id)photoURL spatialOvercapturePhotoURL:(id)overcapturePhotoURL originalPairedVideoURL:(id)videoURL fullSizePairedVideoURL:(id)pairedVideoURL adjustmentBaseFullSizePairedVideoURL:(id)self0 spatialOvercapturePairedVideoURL:(id)self1 fullSizeVideoURL:(id)self2 adjustmentsURL:(id)self3 originalAdjustmentsURL:(id)self4 adjustmentsSecondaryDataURL:(id)self5 mediaSubtypes:(unint64_t)self6 playbackStyle:(int64_t)self7 playbackVariation:(unint64_t)self8 videoComplementVisibilityState:(unsigned __int16)self9
{
  lCopy = l;
  rLCopy = rL;
  uRLCopy = uRL;
  photoURLCopy = photoURL;
  overcapturePhotoURLCopy = overcapturePhotoURL;
  videoURLCopy = videoURL;
  pairedVideoURLCopy = pairedVideoURL;
  sizePairedVideoURLCopy = sizePairedVideoURL;
  overcapturePairedVideoURLCopy = overcapturePairedVideoURL;
  sizeVideoURLCopy = sizeVideoURL;
  adjustmentsURLCopy = adjustmentsURL;
  originalAdjustmentsURLCopy = originalAdjustmentsURL;
  dataURLCopy = dataURL;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (lCopy)
  {
    path = [lCopy path];
    [dictionary setObject:path forKeyedSubscript:@"PFAssetBundlePathPhotoKey"];
  }

  if (rLCopy)
  {
    path2 = [rLCopy path];
    [dictionary setObject:path2 forKeyedSubscript:@"PFAssetBundlePathAlternatePhotoKey"];
  }

  if (uRLCopy)
  {
    path3 = [uRLCopy path];
    [dictionary setObject:path3 forKeyedSubscript:@"PFAssetBundlePathFullSizePhotoKey"];
  }

  if (photoURLCopy)
  {
    path4 = [photoURLCopy path];
    [dictionary setObject:path4 forKeyedSubscript:@"PFAssetBundlePathAdjustmentBasePhotoKey"];
  }

  if (overcapturePhotoURLCopy)
  {
    path5 = [overcapturePhotoURLCopy path];
    [dictionary setObject:path5 forKeyedSubscript:@"PFAssetBundlePathSpatialOvercapturePhotoKey"];
  }

  if (videoURLCopy)
  {
    path6 = [videoURLCopy path];
    [dictionary setObject:path6 forKeyedSubscript:@"PFAssetBundlePathPairedVideoKey"];
  }

  if (pairedVideoURLCopy)
  {
    path7 = [pairedVideoURLCopy path];
    [dictionary setObject:path7 forKeyedSubscript:@"PFAssetBundlePathFullSizePairedVideoKey"];
  }

  if (sizePairedVideoURLCopy)
  {
    path8 = [sizePairedVideoURLCopy path];
    [dictionary setObject:path8 forKeyedSubscript:@"PFAssetBundlePathAdjustmentBasePairedVideoKey"];
  }

  if (overcapturePairedVideoURLCopy)
  {
    path9 = [overcapturePairedVideoURLCopy path];
    [dictionary setObject:path9 forKeyedSubscript:@"PFAssetBundlePathSpatialOvercapturePairedVideoKey"];
  }

  v56 = sizePairedVideoURLCopy;
  if (sizeVideoURLCopy)
  {
    path10 = [sizeVideoURLCopy path];
    [dictionary setObject:path10 forKeyedSubscript:@"PFAssetBundlePathFullSizeVideoKey"];
  }

  v54 = overcapturePairedVideoURLCopy;
  v55 = pairedVideoURLCopy;
  v58 = lCopy;
  if (adjustmentsURLCopy)
  {
    path11 = [adjustmentsURLCopy path];
    [dictionary setObject:path11 forKeyedSubscript:@"PFAssetBundlePathAdjustmentDataKey"];
  }

  v44 = adjustmentsURLCopy;
  if (originalAdjustmentsURLCopy)
  {
    path12 = [originalAdjustmentsURLCopy path];
    [dictionary setObject:path12 forKeyedSubscript:@"PFAssetBundlePathOriginalAdjustmentDataKey"];
  }

  if (dataURLCopy)
  {
    path13 = [dataURLCopy path];
    [dictionary setObject:path13 forKeyedSubscript:@"PFAssetBundlePathAdjustmentSecondaryDataKey"];
  }

  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  [dictionary2 setObject:@"1" forKeyedSubscript:@"PFAssetBundleMetadataVersionKey"];
  [dictionary2 setObject:&unk_1F2AAB650 forKeyedSubscript:@"PFAssetBundleMetadataMediaTypeKey"];
  v48 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:subtypes];
  [dictionary2 setObject:v48 forKeyedSubscript:@"PFAssetBundleMetadataMediaSubtypesKey"];

  v49 = [MEMORY[0x1E696AD98] numberWithInteger:style];
  [dictionary2 setObject:v49 forKeyedSubscript:@"PFAssetBundleMetadataPlaybackStyleKey"];

  v50 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:variation];
  [dictionary2 setObject:v50 forKeyedSubscript:@"PFAssetBundleMetadataPlaybackVariationKey"];

  v51 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:state];
  [dictionary2 setObject:v51 forKeyedSubscript:@"PFAssetBundleMetadataVideoComplementVisibilityStateKey"];

  [dictionary setObject:dictionary2 forKeyedSubscript:@"PFAssetBundlePathMetadataKey"];
  v52 = [(PFAssetBundle *)self initWithPropertyList:dictionary];

  return v52;
}

- (BOOL)_writeFileAtURL:(id)l toDirectory:(id)directory withUpdatedFilename:(id)filename writtenFileURL:(id *)rL error:(id *)error
{
  lCopy = l;
  directoryCopy = directory;
  filenameCopy = filename;
  v15 = filenameCopy;
  if (filenameCopy)
  {
    lastPathComponent = filenameCopy;
  }

  else
  {
    lastPathComponent = [lCopy lastPathComponent];
  }

  v17 = lastPathComponent;
  v18 = [directoryCopy URLByAppendingPathComponent:lastPathComponent];
  v19 = [(PFAssetBundle *)self linkOrCopyURL:lCopy toURL:v18 forceCopy:0 error:error];
  v20 = v19;
  if (rL && v19)
  {
    v21 = v18;
    *rL = v18;
  }

  return v20;
}

- (id)createAssetBundleWritingErrorWithDescription:(id)description
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  descriptionCopy = description;
  v5 = [[v3 alloc] initWithFormat:descriptionCopy arguments:&v15];

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

- (BOOL)_verifyFileSourceExistsAtURL:(id)l error:(id *)error
{
  v16 = *MEMORY[0x1E69E9840];
  lCopy = l;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v13 = 1;
  path = [lCopy path];
  v9 = [defaultManager fileExistsAtPath:path isDirectory:&v13];

  if (v9)
  {
    if (v13 != 1)
    {
      LOBYTE(error) = 1;
      goto LABEL_12;
    }

    if (error)
    {
      *error = [(PFAssetBundle *)self createAssetBundleWritingErrorWithDescription:@"Directory exists at '%@'", lCopy];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v15 = lCopy;
        v10 = MEMORY[0x1E69E9C10];
        v11 = "[PFAssetBundle] Source file is not a file, but a directory at URL: %@.";
LABEL_9:
        _os_log_impl(&dword_1B35C1000, v10, OS_LOG_TYPE_INFO, v11, buf, 0xCu);
        goto LABEL_10;
      }

      goto LABEL_10;
    }
  }

  else if (error)
  {
    *error = [(PFAssetBundle *)self createAssetBundleWritingErrorWithDescription:@"No file exists at '%@'", lCopy];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v15 = lCopy;
      v10 = MEMORY[0x1E69E9C10];
      v11 = "[PFAssetBundle] Source file does not exist at URL: %@.";
      goto LABEL_9;
    }

LABEL_10:
    LOBYTE(error) = 0;
  }

LABEL_12:

  return error;
}

- (BOOL)_pathExtension:(id)extension matchesType:(id)type error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  extensionCopy = extension;
  typeCopy = type;
  v10 = [PFUniformTypeUtilities typeWithFilenameExtension:extensionCopy];
  uppercaseString = [extensionCopy uppercaseString];
  uppercaseString2 = [@"aae" uppercaseString];
  v13 = [uppercaseString isEqualToString:uppercaseString2];

  if (v13)
  {
    v14 = +[PFUniformTypeUtilities supplementalResourceAAEType];

    v10 = v14;
  }

  if (v10 && ([v10 conformsToType:typeCopy] & 1) != 0)
  {
    LOBYTE(error) = 1;
  }

  else if (error)
  {
    *error = [(PFAssetBundle *)self createAssetBundleWritingErrorWithDescription:@"UTType is not %@ for path extension '%@'", typeCopy, extensionCopy];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v17 = extensionCopy;
      v18 = 2112;
      v19 = typeCopy;
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFAssetBundle] Path extension: %@ does not conform to expected UTI: %@.", buf, 0x16u);
    }

    LOBYTE(error) = 0;
  }

  return error;
}

- (BOOL)_writeFileAtURL:(id)l toDirectory:(id)directory withUpdatedFilename:(id)filename updateManifest:(id)manifest bundlePathKey:(id)key verifyUTIType:(__CFString *)type error:(id *)error
{
  v47 = *MEMORY[0x1E69E9840];
  lCopy = l;
  directoryCopy = directory;
  filenameCopy = filename;
  manifestCopy = manifest;
  keyCopy = key;
  lastPathComponent = [lCopy lastPathComponent];
  if ([filenameCopy isEqualToString:lastPathComponent])
  {

    if (!type)
    {
      filenameCopy = 0;
      goto LABEL_12;
    }

LABEL_7:
    v38 = lastPathComponent;
    v39 = directoryCopy;
    v21 = manifestCopy;
    pathExtension = [lCopy pathExtension];
    filenameCopy = 0;
    v23 = 1;
    goto LABEL_8;
  }

  if (!type)
  {
LABEL_12:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v42 = lCopy;
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFAssetBundle] Could not write source file at URL %@ to disk. Expected uti type was not supplied.", buf, 0xCu);
    }

    goto LABEL_20;
  }

  if (!filenameCopy)
  {
    goto LABEL_7;
  }

  v38 = lastPathComponent;
  v39 = directoryCopy;
  v21 = manifestCopy;
  pathExtension = [filenameCopy pathExtension];
  v23 = 0;
LABEL_8:
  v24 = [MEMORY[0x1E6982C40] typeWithIdentifier:type];
  v25 = [(PFAssetBundle *)self _pathExtension:pathExtension matchesType:v24 error:error];

  if (*error)
  {
    v26 = MEMORY[0x1E69E9C10];
    v27 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      if (v23)
      {
        filenameCopy = &stru_1F2A8EB68;
      }

      else
      {
        filenameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"(updated filename: %@)", filenameCopy];
      }

      v29 = *error;
      *buf = 138543874;
      v42 = lCopy;
      v43 = 2114;
      v44 = filenameCopy;
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
    manifestCopy = v21;
    lastPathComponent = v38;
    directoryCopy = v39;
    goto LABEL_30;
  }

  manifestCopy = v21;
  lastPathComponent = v38;
  directoryCopy = v39;
LABEL_20:
  if ([(PFAssetBundle *)self _verifyFileSourceExistsAtURL:lCopy error:error])
  {
    v40 = 0;
    v30 = [(PFAssetBundle *)self _writeFileAtURL:lCopy toDirectory:directoryCopy withUpdatedFilename:filenameCopy writtenFileURL:&v40 error:error];
    v31 = v40;
    v32 = v31;
    if (v30 && v31)
    {
      [v31 lastPathComponent];
      v34 = v33 = lastPathComponent;
      [manifestCopy setObject:v34 forKeyedSubscript:keyCopy];

      lastPathComponent = v33;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        path = [v32 path];
        *buf = 138412290;
        v42 = path;
        _os_log_debug_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[PFAssetBundle] wrote file at path: %@", buf, 0xCu);

        lastPathComponent = v33;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v36 = *error;
      *buf = 138412546;
      v42 = lCopy;
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  photoURL = self->_photoURL;
  if (photoURL)
  {
    [dictionary setObject:photoURL forKeyedSubscript:@"PFAssetBundlePathPhotoKey"];
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

- (BOOL)writeToBundleAtURL:(id)l error:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  lCopy = l;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if (([lCopy isFileURL] & 1) == 0)
  {
    lCopy = [(PFAssetBundle *)self createAssetBundleWritingErrorWithDescription:@"Destination URL for asset bundle is not a file URL: '%@'", lCopy];
    v13 = 1;
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    *buf = 138412290;
    v34 = lCopy;
    v14 = MEMORY[0x1E69E9C10];
    v15 = "[PFAssetBundle] Destination URL for asset bundle is not a file URL: %@";
    goto LABEL_8;
  }

  pathExtension = [lCopy pathExtension];
  v9 = [pathExtension isEqualToString:@"photosasset"];

  if (v9)
  {
    path = [lCopy path];
    v11 = [defaultManager fileExistsAtPath:path];

    if (v11)
    {
      lCopy = [(PFAssetBundle *)self createAssetBundleWritingErrorWithDescription:@"Destination for asset bundle already exists: '%@'", lCopy];
      v13 = 1;
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        goto LABEL_12;
      }

      *buf = 138412290;
      v34 = lCopy;
      v14 = MEMORY[0x1E69E9C10];
      v15 = "[PFAssetBundle] Destination for asset bundle already exists: '%@'";
LABEL_8:
      _os_log_impl(&dword_1B35C1000, v14, OS_LOG_TYPE_INFO, v15, buf, 0xCu);
      goto LABEL_12;
    }

    v32 = 0;
    v18 = [defaultManager createDirectoryAtURL:lCopy withIntermediateDirectories:1 attributes:0 error:&v32];
    lCopy = v32;
    v13 = v18 ^ 1;
  }

  else
  {
    pathExtension2 = [lCopy pathExtension];
    lCopy = [(PFAssetBundle *)self createAssetBundleWritingErrorWithDescription:@"Destination has extension '%@' but requires '%@'", pathExtension2, @"photosasset"];

    v13 = 1;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      pathExtension3 = [lCopy pathExtension];
      *buf = 138412546;
      v34 = pathExtension3;
      v35 = 2112;
      v36 = @"photosasset";
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFAssetBundle] Destination has extension '%@' but requires '%@'", buf, 0x16u);
    }
  }

LABEL_12:
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v31 = lCopy;
  v20 = [(PFAssetBundle *)self writeAllResourceURLsToDirectoryAtURL:lCopy updatingManifest:dictionary error:&v31];
  v21 = v31;

  v22 = [lCopy URLByAppendingPathComponent:@"manifest.plist"];
  if (v20)
  {
    v23 = [dictionary writeToURL:v22 atomically:1];
    v24 = [lCopy URLByAppendingPathComponent:@"metadata.plist"];
    if (v23)
    {
      v25 = [(NSMutableDictionary *)self->_metadata writeToURL:v24 atomically:1];
      goto LABEL_17;
    }
  }

  else
  {
    v24 = [lCopy URLByAppendingPathComponent:@"metadata.plist"];
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
    [lCopy setResourceValue:MEMORY[0x1E695E118] forKey:v26 error:&v30];
    v27 = v30;

    v21 = v27;
    if (!error)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  [defaultManager removeItemAtURL:lCopy error:0];
  if (v25)
  {
    goto LABEL_22;
  }

LABEL_19:
  if (!error)
  {
    goto LABEL_25;
  }

LABEL_23:
  if (v21)
  {
    v28 = v21;
    *error = v21;
  }

LABEL_25:

  return v25;
}

- (BOOL)writeAllResourceURLsToDirectoryAtURL:(id)l updatingManifest:(id)manifest error:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  lCopy = l;
  manifestCopy = manifest;
  generateCustomFilenamesByPathKey = [(PFAssetBundle *)self generateCustomFilenamesByPathKey];
  selfCopy = self;
  urlsByPathKey = [(PFAssetBundle *)self urlsByPathKey];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = [urlsByPathKey countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(urlsByPathKey);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        v15 = [urlsByPathKey objectForKeyedSubscript:v14];
        v16 = UTTypeForBundlePathKey(v14);
        v17 = [generateCustomFilenamesByPathKey objectForKeyedSubscript:v14];
        if (v12)
        {
          v12 = [(PFAssetBundle *)selfCopy _writeFileAtURL:v15 toDirectory:lCopy withUpdatedFilename:v17 updateManifest:manifestCopy bundlePathKey:v14 verifyUTIType:v16 error:error];
        }

        else
        {
          v12 = 0;
        }
      }

      v10 = [urlsByPathKey countByEnumeratingWithState:&v23 objects:v27 count:16];
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
  dcfCompliantFilenameBaseForWritingResourceFiles = [(PFAssetBundle *)self dcfCompliantFilenameBaseForWritingResourceFiles];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __49__PFAssetBundle_generateCustomFilenamesByPathKey__block_invoke;
  v27[3] = &unk_1E7B66AE0;
  v27[4] = self;
  v5 = MEMORY[0x1B8C64C40](v27);
  v6 = (v5)[2](v5, self->_photoURL, dcfCompliantFilenameBaseForWritingResourceFiles, 0);
  [v3 setObject:v6 forKeyedSubscript:@"PFAssetBundlePathPhotoKey"];

  v7 = (v5)[2](v5, self->_videoURL, dcfCompliantFilenameBaseForWritingResourceFiles, 0);
  [v3 setObject:v7 forKeyedSubscript:@"PFAssetBundlePathVideoKey"];

  v8 = (v5)[2](v5, self->_audioURL, dcfCompliantFilenameBaseForWritingResourceFiles, 0);
  [v3 setObject:v8 forKeyedSubscript:@"PFAssetBundlePathAudioKey"];

  v9 = (v5)[2](v5, self->_alternatePhotoURL, dcfCompliantFilenameBaseForWritingResourceFiles, 0);
  [v3 setObject:v9 forKeyedSubscript:@"PFAssetBundlePathAlternatePhotoKey"];

  v10 = (v5)[2](v5, self->_fullSizePhotoURL, dcfCompliantFilenameBaseForWritingResourceFiles, @"E");
  [v3 setObject:v10 forKeyedSubscript:@"PFAssetBundlePathFullSizePhotoKey"];

  v11 = (v5)[2](v5, self->_fullSizeVideoURL, dcfCompliantFilenameBaseForWritingResourceFiles, @"E");
  [v3 setObject:v11 forKeyedSubscript:@"PFAssetBundlePathFullSizeVideoKey"];

  v12 = (v5)[2](v5, self->_adjustmentBasePhotoURL, dcfCompliantFilenameBaseForWritingResourceFiles, @"B");
  [v3 setObject:v12 forKeyedSubscript:@"PFAssetBundlePathAdjustmentBasePhotoKey"];

  v13 = (v5)[2](v5, self->_pairedVideoURL, dcfCompliantFilenameBaseForWritingResourceFiles, 0);
  [v3 setObject:v13 forKeyedSubscript:@"PFAssetBundlePathPairedVideoKey"];

  v14 = (v5)[2](v5, self->_fullSizePairedVideoURL, dcfCompliantFilenameBaseForWritingResourceFiles, @"E");
  [v3 setObject:v14 forKeyedSubscript:@"PFAssetBundlePathFullSizePairedVideoKey"];

  v15 = (v5)[2](v5, self->_adjustmentBasePairedVideoURL, dcfCompliantFilenameBaseForWritingResourceFiles, @"B");
  [v3 setObject:v15 forKeyedSubscript:@"PFAssetBundlePathAdjustmentBasePairedVideoKey"];

  v16 = (v5)[2](v5, self->_spatialOvercapturePhotoURL, dcfCompliantFilenameBaseForWritingResourceFiles, @"S");
  [v3 setObject:v16 forKeyedSubscript:@"PFAssetBundlePathSpatialOvercapturePhotoKey"];

  v17 = (v5)[2](v5, self->_spatialOvercapturePairedVideoURL, dcfCompliantFilenameBaseForWritingResourceFiles, @"S");
  [v3 setObject:v17 forKeyedSubscript:@"PFAssetBundlePathSpatialOvercapturePairedVideoKey"];

  v18 = (v5)[2](v5, self->_spatialOvercaptureVideoURL, dcfCompliantFilenameBaseForWritingResourceFiles, @"S");
  [v3 setObject:v18 forKeyedSubscript:@"PFAssetBundlePathSpatialOvercaptureVideoKey"];

  v19 = (v5)[2](v5, self->_adjustmentBaseVideoURL, dcfCompliantFilenameBaseForWritingResourceFiles, @"B");
  [v3 setObject:v19 forKeyedSubscript:@"PFAssetBundlePathAdjustmentBaseVideoKey"];

  uppercaseString = [@"aae" uppercaseString];
  v21 = [dcfCompliantFilenameBaseForWritingResourceFiles stringByAppendingPathExtension:uppercaseString];

  [v3 setObject:v21 forKeyedSubscript:@"PFAssetBundlePathAdjustmentDataKey"];
  v22 = [objc_opt_class() insertAuxiliaryResourceTypeMarker:@"O" intoFileName:v21];
  [v3 setObject:v22 forKeyedSubscript:@"PFAssetBundlePathOriginalAdjustmentDataKey"];
  v23 = (v5)[2](v5, self->_adjustmentSecondaryDataURL, dcfCompliantFilenameBaseForWritingResourceFiles, @"A");
  stringByDeletingPathExtension = [v23 stringByDeletingPathExtension];
  v25 = [stringByDeletingPathExtension stringByAppendingPathExtension:@"DAT"];
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
  originalFilename = [(PFAssetBundle *)self originalFilename];
  if ([objc_opt_class() isValidDCFFileName:originalFilename])
  {
    stringByDeletingPathExtension = [originalFilename stringByDeletingPathExtension];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v21 = stringByDeletingPathExtension;
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFAssetBundle] DCF compliant name generation: Using original filename from metadata as base: %@", buf, 0xCu);
    }
  }

  else
  {
    stringByDeletingPathExtension = 0;
  }

  photoURL = [(PFAssetBundle *)self photoURL];
  v6 = photoURL;
  if (photoURL)
  {
    videoURL = photoURL;
  }

  else
  {
    videoURL = [(PFAssetBundle *)self videoURL];
  }

  v8 = videoURL;

  if (![stringByDeletingPathExtension length])
  {
    uRLByDeletingLastPathComponent = [v8 URLByDeletingLastPathComponent];
    pathExtension = [uRLByDeletingLastPathComponent pathExtension];
    v11 = [pathExtension isEqualToString:@"photosasset"];

    if (v11)
    {
      uRLByDeletingPathExtension = [uRLByDeletingLastPathComponent URLByDeletingPathExtension];
      lastPathComponent = [uRLByDeletingPathExtension lastPathComponent];

      if ([objc_opt_class() isValidDCFFileName:lastPathComponent])
      {
        stringByDeletingPathExtension2 = [lastPathComponent stringByDeletingPathExtension];

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v21 = stringByDeletingPathExtension2;
          _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFAssetBundle] DCF compliant name generation: Using bundle URL filename as base: %@", buf, 0xCu);
        }
      }

      else
      {
        stringByDeletingPathExtension2 = stringByDeletingPathExtension;
      }

      stringByDeletingPathExtension = stringByDeletingPathExtension2;
    }
  }

  lastPathComponent2 = [v8 lastPathComponent];
  if ([stringByDeletingPathExtension length] || !objc_msgSend(objc_opt_class(), "isValidDCFFileName:", lastPathComponent2))
  {
    stringByDeletingPathExtension3 = stringByDeletingPathExtension;
  }

  else
  {
    stringByDeletingPathExtension3 = [lastPathComponent2 stringByDeletingPathExtension];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v21 = stringByDeletingPathExtension3;
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFAssetBundle] DCF compliant name generation: Using primary resource filename as base: %@", buf, 0xCu);
    }
  }

  if ([stringByDeletingPathExtension3 length])
  {
    0x2710 = stringByDeletingPathExtension3;
  }

  else
  {
    v18 = [lastPathComponent2 hash];
    0x2710 = [MEMORY[0x1E696AEC0] stringWithFormat:@"IMG_%04u", v18 % 0x2710];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v21 = 0x2710;
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFAssetBundle] DCF compliant name generation: Generated name from hash. Result: %@", buf, 0xCu);
    }
  }

  return 0x2710;
}

- (BOOL)linkOrCopyURL:(id)l toURL:(id)rL forceCopy:(BOOL)copy error:(id *)error
{
  lCopy = l;
  rLCopy = rL;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v12 = defaultManager;
  if (copy)
  {
    v13 = 0;
  }

  else
  {
    v20 = 0;
    v14 = [defaultManager linkItemAtURL:lCopy toURL:rLCopy error:&v20];
    v13 = v20;
    if (v14)
    {
      v15 = 1;
      goto LABEL_8;
    }
  }

  v16 = v13;
  v19 = v13;
  v15 = [v12 copyItemAtURL:lCopy toURL:rLCopy error:&v19];
  v13 = v19;

  if (error && (v15 & 1) == 0)
  {
    v17 = v13;
    v15 = 0;
    *error = v13;
  }

LABEL_8:

  return v15;
}

- (void)setSpatialOvercaptureResourcesPurgeable:(BOOL)purgeable
{
  if (purgeable)
  {
    v3 = MEMORY[0x1E695E118];
  }

  else
  {
    v3 = 0;
  }

  [(NSMutableDictionary *)self->_metadata setObject:v3 forKeyedSubscript:@"PFAssetBundleMetadataSpatialOvercaptureResourcesPurgeableKey"];
}

- (void)setLibraryLocation:(id)location
{
  locationCopy = location;
  if (locationCopy)
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
        v5 = locationCopy;
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

        timestamp = [v5 timestamp];

        [v6 setObject:timestamp forKeyedSubscript:@"PFAssetBundleMetadataLibraryLocationTimestampKey"];
        [(NSMutableDictionary *)self->_metadata setObject:v6 forKeyedSubscript:@"PFAssetBundleMetadataLibraryLocationKey"];
      }
    }
  }

  else
  {
    [(NSMutableDictionary *)self->_metadata removeObjectForKey:@"PFAssetBundleMetadataLibraryLocationKey"];
  }
}

- (void)setLibraryCreationDate:(id)date inTimeZone:(id)zone
{
  dateCopy = date;
  zoneCopy = zone;
  [(NSMutableDictionary *)self->_metadata setObject:dateCopy forKeyedSubscript:@"PFAssetBundleMetadataLibraryCreationDateKey"];
  if (dateCopy && zoneCopy)
  {
    name = [zoneCopy name];
    v8 = [zoneCopy secondsFromGMTForDate:dateCopy];
    [(NSMutableDictionary *)self->_metadata setObject:name forKeyedSubscript:@"PFAssetBundleMetadataLibraryCreationDateTimeZoneNameKey"];
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:v8];
    [(NSMutableDictionary *)self->_metadata setObject:v9 forKeyedSubscript:@"PFAssetBundleMetadataLibraryCreationDateTimeZoneOffsetSecondsKey"];
  }

  else
  {
    [(NSMutableDictionary *)self->_metadata setObject:0 forKeyedSubscript:@"PFAssetBundleMetadataLibraryCreationDateTimeZoneNameKey"];
    [(NSMutableDictionary *)self->_metadata setObject:0 forKeyedSubscript:@"PFAssetBundleMetadataLibraryCreationDateTimeZoneOffsetSecondsKey"];
  }
}

- (void)setOriginalFilename:(id)filename
{
  v4 = [filename copy];
  [(NSMutableDictionary *)self->_metadata setObject:v4 forKeyedSubscript:@"PFAssetBundleMetadataOriginalFilenameKey"];
}

- (void)setAssetTitle:(id)title
{
  v4 = [title copy];
  [(NSMutableDictionary *)self->_metadata setObject:v4 forKeyedSubscript:@"PFAssetBundleMetadataAssetTitleKey"];
}

- (void)setAccessibilityDescription:(id)description
{
  v4 = [description copy];
  [(NSMutableDictionary *)self->_metadata setObject:v4 forKeyedSubscript:@"PFAssetBundleMetadataAccessibilityDescriptionKey"];
}

- (void)setAssetDescription:(id)description
{
  v4 = [description copy];
  [(NSMutableDictionary *)self->_metadata setObject:v4 forKeyedSubscript:@"PFAssetBundleMetadataAssetDescriptionKey"];
}

- (void)setKeywordTitles:(id)titles
{
  if (titles)
  {
    allObjects = [titles allObjects];
  }

  else
  {
    allObjects = 0;
  }

  v5 = allObjects;
  [(NSMutableDictionary *)self->_metadata setObject:allObjects forKeyedSubscript:@"PFAssetBundleMetadataKeywordTitlesKey"];
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
    path = [(NSURL *)self->_pairedVideoURL path];
    v4 = PFVideoComplementMetadataForVideoAtPath(path, 0);
    pairingIdentifier = [v4 pairingIdentifier];
    livePhotoOriginalPairingIdentifier = self->_livePhotoOriginalPairingIdentifier;
    self->_livePhotoOriginalPairingIdentifier = pairingIdentifier;

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
    livePhotoOriginalPairingIdentifier = [(NSMutableDictionary *)self->_metadata objectForKeyedSubscript:@"PFAssetBundleMetadataPairingIdentifierKey"];
    if (!livePhotoOriginalPairingIdentifier)
    {
      livePhotoOriginalPairingIdentifier = [(PFAssetBundle *)self livePhotoOriginalPairingIdentifier];
    }
  }

  else
  {
    livePhotoOriginalPairingIdentifier = 0;
  }

  return livePhotoOriginalPairingIdentifier;
}

- (BOOL)spatialOvercaptureResourcesPurgeable
{
  v3 = [(NSMutableDictionary *)self->_metadata objectForKeyedSubscript:@"PFAssetBundleMetadataSpatialOvercaptureResourcesPurgeableKey"];

  if (!v3)
  {
    return 0;
  }

  v4 = [(NSMutableDictionary *)self->_metadata objectForKeyedSubscript:@"PFAssetBundleMetadataSpatialOvercaptureResourcesPurgeableKey"];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (id)libraryLocation
{
  v2 = [(NSMutableDictionary *)self->_metadata objectForKeyedSubscript:@"PFAssetBundleMetadataLibraryLocationKey"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![v2 length])
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  else
  {
    v3 = [v2 objectForKeyedSubscript:@"PFAssetBundleMetadataLibraryLocationLatitudeKey"];
    if (!v3)
    {
      goto LABEL_8;
    }

    v4 = v3;
    null = [v2 objectForKeyedSubscript:@"PFAssetBundleMetadataLibraryLocationLongitudeKey"];

    if (!null)
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
      null = [objc_alloc(MEMORY[0x1E6985C40]) initWithCoordinate:v36 altitude:latitude horizontalAccuracy:longitude verticalAccuracy:v17 course:v20 speed:v19 timestamp:{v28, v27}];
    }

    else
    {
LABEL_8:
      null = 0;
    }
  }

LABEL_23:

  return null;
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
      integerValue = [v5 integerValue];
      v4 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:integerValue];
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
  integerValue = [v4 integerValue];

  return integerValue;
}

- (unint64_t)playbackVariation
{
  v3 = [(NSMutableDictionary *)self->_metadata objectForKeyedSubscript:@"PFAssetBundleMetadataPlaybackVariationKey"];

  if (!v3)
  {
    return 0;
  }

  v4 = [(NSMutableDictionary *)self->_metadata objectForKeyedSubscript:@"PFAssetBundleMetadataPlaybackVariationKey"];
  integerValue = [v4 integerValue];

  return integerValue;
}

- (unint64_t)mediaSubtypes
{
  v3 = [(NSMutableDictionary *)self->_metadata objectForKeyedSubscript:@"PFAssetBundleMetadataMediaSubtypesKey"];

  if (!v3)
  {
    return 0;
  }

  v4 = [(NSMutableDictionary *)self->_metadata objectForKeyedSubscript:@"PFAssetBundleMetadataMediaSubtypesKey"];
  integerValue = [v4 integerValue];

  return integerValue;
}

- (int64_t)mediaType
{
  v3 = [(NSMutableDictionary *)self->_metadata objectForKeyedSubscript:@"PFAssetBundleMetadataMediaTypeKey"];

  if (!v3)
  {
    return 0;
  }

  v4 = [(NSMutableDictionary *)self->_metadata objectForKeyedSubscript:@"PFAssetBundleMetadataMediaTypeKey"];
  integerValue = [v4 integerValue];

  return integerValue;
}

- (int64_t)playbackStyle
{
  v3 = [(NSMutableDictionary *)self->_metadata objectForKeyedSubscript:@"PFAssetBundleMetadataPlaybackStyleKey"];

  if (!v3)
  {
    return 0;
  }

  v4 = [(NSMutableDictionary *)self->_metadata objectForKeyedSubscript:@"PFAssetBundleMetadataPlaybackStyleKey"];
  integerValue = [v4 integerValue];

  return integerValue;
}

- (PFAssetBundle)initWithAssetBundleAtURL:(id)l
{
  v52[19] = *MEMORY[0x1E69E9840];
  lCopy = l;
  pathExtension = [lCopy pathExtension];
  v6 = [pathExtension isEqualToString:@"photosasset"];

  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [lCopy path];
    v37 = v42 = 1;
    v8 = [v37 stringByAppendingPathComponent:@"manifest.plist"];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    if ([defaultManager fileExistsAtPath:v8 isDirectory:&v42] && (v42 & 1) == 0)
    {
      v11 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v8];
      v9 = v11 != 0;
      if (v11)
      {
        v33 = v8;
        v34 = lCopy;
        v12 = v7;
        selfCopy = self;
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
                if (([defaultManager fileExistsAtPath:v21] & 1) == 0 && os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
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

        lCopy = v34;
        self = selfCopy;
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
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v24 = [defaultManager2 fileExistsAtPath:v22 isDirectory:&v42];

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
              selfCopy2 = self;
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
              v44 = lCopy;
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

            selfCopy2 = 0;
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

  selfCopy2 = 0;
LABEL_35:

  return selfCopy2;
}

- (PFAssetBundle)initWithPropertyList:(id)list
{
  v90 = *MEMORY[0x1E69E9840];
  listCopy = list;
  v88.receiver = self;
  v88.super_class = PFAssetBundle;
  v5 = [(PFAssetBundle *)&v88 init];
  if (v5)
  {
    v6 = [listCopy copy];
    propertyList = v5->_propertyList;
    v5->_propertyList = v6;

    v8 = [listCopy objectForKeyedSubscript:@"PFAssetBundlePathMetadataKey"];
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
      integerValue = [v10 integerValue];

      v12 = [v8 objectForKeyedSubscript:@"PFAssetBundleMetadataMediaTypeKey"];
      integerValue2 = [v12 integerValue];

      v14 = [v8 objectForKeyedSubscript:@"PFAssetBundleMetadataMediaSubtypesKey"];
      integerValue3 = [v14 integerValue];

      v16 = [v8 objectForKeyedSubscript:@"PFAssetBundleMetadataPlaybackVariationKey"];
      integerValue4 = [v16 integerValue];

      v18 = [v8 objectForKeyedSubscript:@"PFAssetBundleMetadataVideoComplementVisibilityStateKey"];
      integerValue5 = [v18 integerValue];

      v19 = [v8 objectForKeyedSubscript:@"PFAssetBundleMetadataSpatialOvercaptureResourcesPurgeableKey"];
      bOOLValue = [v19 BOOLValue];

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
      integerValue3 = 0;
      integerValue4 = 0;
      integerValue5 = 0;
      bOOLValue = 0;
      v20 = 0;
      v82 = 0;
      integerValue2 = 0;
      integerValue = 0;
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

    v27 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue];
    [v25 setObject:v27 forKeyedSubscript:@"PFAssetBundleMetadataPlaybackStyleKey"];

    v28 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue2];
    [v25 setObject:v28 forKeyedSubscript:@"PFAssetBundleMetadataMediaTypeKey"];

    v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:integerValue3];
    [v25 setObject:v29 forKeyedSubscript:@"PFAssetBundleMetadataMediaSubtypesKey"];

    v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:integerValue4];
    [v25 setObject:v30 forKeyedSubscript:@"PFAssetBundleMetadataPlaybackVariationKey"];

    v31 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:integerValue5];
    [v25 setObject:v31 forKeyedSubscript:@"PFAssetBundleMetadataVideoComplementVisibilityStateKey"];

    v32 = [MEMORY[0x1E696AD98] numberWithBool:bOOLValue];
    [v25 setObject:v32 forKeyedSubscript:@"PFAssetBundleMetadataSpatialOvercaptureResourcesPurgeableKey"];

    [v25 setObject:v83 forKeyedSubscript:@"PFAssetBundleMetadataPairingIdentifierKey"];
    [v25 setObject:v82 forKeyedSubscript:@"PFAssetBundleMetadataTimingInfoKey"];
    v33 = [v25 mutableCopy];
    metadata = v5->_metadata;
    v5->_metadata = v33;

    v35 = createURLForAbsolutePathKeyInDictionary(@"PFAssetBundlePathPhotoKey", listCopy);
    photoURL = v5->_photoURL;
    v5->_photoURL = v35;

    v37 = createURLForAbsolutePathKeyInDictionary(@"PFAssetBundlePathVideoKey", listCopy);
    videoURL = v5->_videoURL;
    v5->_videoURL = v37;

    v39 = createURLForAbsolutePathKeyInDictionary(@"PFAssetBundlePathAudioKey", listCopy);
    audioURL = v5->_audioURL;
    v5->_audioURL = v39;

    v41 = createURLForAbsolutePathKeyInDictionary(@"PFAssetBundlePathAlternatePhotoKey", listCopy);
    alternatePhotoURL = v5->_alternatePhotoURL;
    v5->_alternatePhotoURL = v41;

    v43 = createURLForAbsolutePathKeyInDictionary(@"PFAssetBundlePathFullSizePhotoKey", listCopy);
    fullSizePhotoURL = v5->_fullSizePhotoURL;
    v5->_fullSizePhotoURL = v43;

    v45 = createURLForAbsolutePathKeyInDictionary(@"PFAssetBundlePathFullSizeVideoKey", listCopy);
    fullSizeVideoURL = v5->_fullSizeVideoURL;
    v5->_fullSizeVideoURL = v45;

    v47 = createURLForAbsolutePathKeyInDictionary(@"PFAssetBundlePathAdjustmentDataKey", listCopy);
    adjustmentDataURL = v5->_adjustmentDataURL;
    v5->_adjustmentDataURL = v47;

    v49 = createURLForAbsolutePathKeyInDictionary(@"PFAssetBundlePathAdjustmentBasePhotoKey", listCopy);
    adjustmentBasePhotoURL = v5->_adjustmentBasePhotoURL;
    v5->_adjustmentBasePhotoURL = v49;

    v51 = createURLForAbsolutePathKeyInDictionary(@"PFAssetBundlePathPairedVideoKey", listCopy);
    pairedVideoURL = v5->_pairedVideoURL;
    v5->_pairedVideoURL = v51;

    v53 = createURLForAbsolutePathKeyInDictionary(@"PFAssetBundlePathFullSizePairedVideoKey", listCopy);
    fullSizePairedVideoURL = v5->_fullSizePairedVideoURL;
    v5->_fullSizePairedVideoURL = v53;

    v55 = createURLForAbsolutePathKeyInDictionary(@"PFAssetBundlePathAdjustmentBasePairedVideoKey", listCopy);
    adjustmentBasePairedVideoURL = v5->_adjustmentBasePairedVideoURL;
    v5->_adjustmentBasePairedVideoURL = v55;

    v57 = createURLForAbsolutePathKeyInDictionary(@"PFAssetBundlePathSpatialOvercapturePhotoKey", listCopy);
    spatialOvercapturePhotoURL = v5->_spatialOvercapturePhotoURL;
    v5->_spatialOvercapturePhotoURL = v57;

    v59 = createURLForAbsolutePathKeyInDictionary(@"PFAssetBundlePathSpatialOvercapturePairedVideoKey", listCopy);
    spatialOvercapturePairedVideoURL = v5->_spatialOvercapturePairedVideoURL;
    v5->_spatialOvercapturePairedVideoURL = v59;

    v61 = createURLForAbsolutePathKeyInDictionary(@"PFAssetBundlePathSpatialOvercaptureVideoKey", listCopy);
    spatialOvercaptureVideoURL = v5->_spatialOvercaptureVideoURL;
    v5->_spatialOvercaptureVideoURL = v61;

    v63 = createURLForAbsolutePathKeyInDictionary(@"PFAssetBundlePathAdjustmentBaseVideoKey", listCopy);
    adjustmentBaseVideoURL = v5->_adjustmentBaseVideoURL;
    v5->_adjustmentBaseVideoURL = v63;

    v65 = createURLForAbsolutePathKeyInDictionary(@"PFAssetBundlePathOriginalAdjustmentDataKey", listCopy);
    originalAdjustmentDataURL = v5->_originalAdjustmentDataURL;
    v5->_originalAdjustmentDataURL = v65;

    v67 = createURLForAbsolutePathKeyInDictionary(@"PFAssetBundlePathAdjustmentSecondaryDataKey", listCopy);
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
          v77 = createURLForAbsolutePathKeyInDictionary(v76, listCopy);
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

+ (BOOL)isValidDCFFileName:(id)name
{
  v4 = isValidDCFFileName__onceToken;
  nameCopy = name;
  if (v4 != -1)
  {
    dispatch_once(&isValidDCFFileName__onceToken, &__block_literal_global_199);
  }

  v6 = [self fileName:nameCopy matchesRegex:isValidDCFFileName__dcfRegex];

  return v6;
}

uint64_t __36__PFAssetBundle_isValidDCFFileName___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:@"^ [[A-Z][_][0-9]]{4}   (?# alphanumeric + '_' x4)[0-9]{4}               (?# digit x4)\\.[[A-Z][0-9]]{3 options:4} $ (?# alphanumeric x3 or x4)" error:{3, 0}];
  v1 = isValidDCFFileName__dcfRegex;
  isValidDCFFileName__dcfRegex = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (BOOL)fileName:(id)name matchesRegex:(id)regex
{
  if (!name)
  {
    return 0;
  }

  regexCopy = regex;
  nameCopy = name;
  v7 = [regexCopy numberOfMatchesInString:nameCopy options:0 range:{0, objc_msgSend(nameCopy, "length")}];

  return v7 == 1;
}

+ (id)insertAuxiliaryResourceTypeMarker:(id)marker intoFileName:(id)name
{
  nameCopy = name;
  markerCopy = marker;
  v7 = [nameCopy substringToIndex:4];
  v8 = [nameCopy substringFromIndex:4];

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", v7, markerCopy, v8];

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