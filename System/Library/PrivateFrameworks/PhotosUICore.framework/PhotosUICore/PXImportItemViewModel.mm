@interface PXImportItemViewModel
+ (BOOL)hasPanoramaImageDimensions:(CGSize)a3;
+ (NSString)alreadyImportedGroupIdentifier;
+ (id)dateFormatter;
+ (id)importAssetsFromModels:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToImportItemViewModel:(id)a3;
- (BOOL)isMediaAsset;
- (BOOL)isNotYetImported;
- (BOOL)isPanoramicImage;
- (BOOL)px_isAudio;
- (BOOL)px_isImage;
- (BOOL)px_isLivePhoto;
- (BOOL)px_isSloMo;
- (BOOL)px_isTimelapse;
- (BOOL)px_isVideo;
- (BOOL)px_representsBurst;
- (BOOL)px_supportsImageProperties;
- (CGRect)acceptableCropRect;
- (CGRect)bestCropRectForAspectRatio:(double)a3;
- (CGRect)faceAreaRect;
- (CGRect)preferredCropRect;
- (CGSize)largeThumbnailSize;
- (CGSize)thumbnailSize;
- (NSDate)creationDate;
- (NSDate)localCreationDate;
- (NSDate)px_creationDate;
- (NSDictionary)imageRepresentations;
- (NSNumber)px_FPS;
- (NSNumber)px_ISORating;
- (NSNumber)px_aperture;
- (NSNumber)px_bitRate;
- (NSNumber)px_digitalZoomRatio;
- (NSNumber)px_duration;
- (NSNumber)px_exposureBias;
- (NSNumber)px_filesize;
- (NSNumber)px_flash;
- (NSNumber)px_focalLength;
- (NSNumber)px_focalLengthIn35mm;
- (NSNumber)px_meteringMode;
- (NSNumber)px_sampleRate;
- (NSNumber)px_shutterSpeed;
- (NSNumber)px_whiteBalance;
- (NSString)debugDisplayName;
- (NSString)description;
- (NSString)fileName;
- (NSString)px_burstUUID;
- (NSString)px_codec;
- (NSString)px_formattedCameraModel;
- (NSString)px_lensModel;
- (NSString)px_make;
- (NSString)px_model;
- (NSString)px_uniformTypeIdentifier;
- (NSString)uniformTypeIdentifier;
- (NSString)uuid;
- (NSTimeZone)px_timeZone;
- (PHImportAssetDataRequest)thumbnailRequest;
- (PXImportAssetCollection)assetCollection;
- (PXImportDisplayDelegate)displayDelegate;
- (PXImportItemViewModel)init;
- (PXImportItemViewModel)initWithImportAsset:(id)a3;
- (PXImportItemViewModel)initWithKind:(id)a3 selectable:(BOOL)a4;
- (PXIntSize_st)px_resolution;
- (double)aspectRatio;
- (double)duration;
- (id)accessibilityLabel;
- (id)assetDataRequestForRequestSize:(unint64_t)a3;
- (id)groupIdentifier;
- (id)thumbnailRequestsForRequestSize:(unint64_t)a3;
- (int64_t)badgeType;
- (int64_t)isContentEqualTo:(id)a3;
- (int64_t)mediaType;
- (int64_t)originalFilesize;
- (int64_t)playbackStyle;
- (unint64_t)hash;
- (unint64_t)mediaSubtypes;
- (unint64_t)pixelHeight;
- (unint64_t)pixelWidth;
- (unint64_t)px_fileType;
- (unint64_t)px_originalFileType;
- (unint64_t)px_type;
- (unsigned)playbackVariation;
- (unsigned)px_audioTrackFormat;
- (void)addImageRepresentation:(id)a3;
- (void)addThumbnailRequest:(id)a3;
- (void)performChanges:(id)a3;
- (void)removeAssetDataRequestForRequestSize:(unint64_t)a3;
- (void)removeThumbnailRequest:(id)a3;
- (void)setAssetDataRequest:(id)a3 forRequestSize:(unint64_t)a4;
- (void)setDeleteSession:(id)a3;
- (void)setDuplicate:(BOOL)a3;
- (void)setImportDate:(id)a3;
- (void)setIsDeleted:(BOOL)a3;
- (void)setSelectable:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
- (void)setState:(int64_t)a3;
@end

@implementation PXImportItemViewModel

- (PHImportAssetDataRequest)thumbnailRequest
{
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailRequest);

  return WeakRetained;
}

- (CGSize)thumbnailSize
{
  width = self->_thumbnailSize.width;
  height = self->_thumbnailSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)largeThumbnailSize
{
  width = self->_largeThumbnailSize.width;
  height = self->_largeThumbnailSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (PXImportAssetCollection)assetCollection
{
  WeakRetained = objc_loadWeakRetained(&self->_assetCollection);

  return WeakRetained;
}

- (PXImportDisplayDelegate)displayDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_displayDelegate);

  return WeakRetained;
}

- (id)accessibilityLabel
{
  v3 = objc_opt_new();
  v4 = PLLocalizedFrameworkString();
  v5 = [(PXImportItemViewModel *)self importAsset];
  v6 = [v5 fileCreationDate];

  v7 = [(PXImportItemViewModel *)self kind];
  v8 = [v7 isEqualToString:@"PXImportItemViewModelKindExpansionPlaceholder"];

  if (v8 & 1) != 0 || (-[PXImportItemViewModel importAsset](self, "importAsset"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 isImage], v9, (v10) || (-[PXImportItemViewModel importAsset](self, "importAsset"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isMovie"), v11, v12))
  {
    v13 = PLLocalizedFrameworkString();

    v4 = v13;
  }

  [v3 appendString:v4];
  [v3 appendString:@"."];
  if (v6)
  {
    v14 = MEMORY[0x1E696AEC0];
    v15 = [MEMORY[0x1E696AB78] localizedStringFromDate:v6 dateStyle:2 timeStyle:1];
    v16 = [v14 stringWithFormat:@"%@.", v15];
    [v3 appendString:v16];
  }

  v17 = [(PXImportItemViewModel *)self importDate];

  if (v17)
  {
    v18 = PLLocalizedFrameworkString();
    [v3 appendString:v18];

    [v3 appendString:@"."];
  }

  if ([(PXImportItemViewModel *)self isSelected])
  {
    v19 = PLLocalizedFrameworkString();
    [v3 appendString:v19];

    [v3 appendString:@"."];
  }

  v20 = [v3 copy];

  return v20;
}

- (id)groupIdentifier
{
  v24 = *MEMORY[0x1E69E9840];
  if ([(PXImportItemViewModel *)self isDuplicate])
  {
    v4 = [MEMORY[0x1E695DF00] distantPast];
    goto LABEL_9;
  }

  v5 = +[PXImportSettings sharedInstance];
  v6 = [v5 groupItemsByEXIFDate];

  if (v6)
  {
    v7 = [(PXImportItemViewModel *)self importAsset];
    v8 = [v7 creationDate];

    if (v8)
    {
      goto LABEL_10;
    }

    v9 = _importGridLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315394;
      v21 = "[PXImportItemViewModel groupIdentifier]";
      v22 = 2112;
      v23 = self;
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "%s: import asset does not have an EXIF date. Resorting to file creation date. %@", &v20, 0x16u);
    }

    v4 = [(PXImportItemViewModel *)self fileCreationDate];
    goto LABEL_9;
  }

  v4 = [(PXImportItemViewModel *)self fileCreationDate];
  if (v4)
  {
LABEL_9:
    v8 = v4;
    goto LABEL_10;
  }

  v17 = _importGridLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v20 = 136315394;
    v21 = "[PXImportItemViewModel groupIdentifier]";
    v22 = 2112;
    v23 = self;
    _os_log_error_impl(&dword_1A3C1C000, v17, OS_LOG_TYPE_ERROR, "%s: import asset does not have a file creation date (stable). Resorting to image date (possibly unstable). %@", &v20, 0x16u);
  }

  v18 = [(PXImportItemViewModel *)self importAsset];
  v8 = [v18 creationDate];

LABEL_10:
  v10 = [objc_opt_class() dateFormatter];
  v11 = [v10 stringFromDate:v8];

  if (v11)
  {
    p_collectionIdentifier = &self->_collectionIdentifier;
    if (!self->_collectionIdentifier)
    {
LABEL_17:
      objc_storeStrong(p_collectionIdentifier, v11);
      v14 = *p_collectionIdentifier;
      goto LABEL_18;
    }

    if (([v11 isEqualToString:?] & 1) == 0)
    {
      v13 = _importGridLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 136315394;
        v21 = "[PXImportItemViewModel groupIdentifier]";
        v22 = 2112;
        v23 = self;
        _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_DEFAULT, "%s: *** warning*** model collection identifier has changed. %@", &v20, 0x16u);
      }
    }
  }

  else
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PXImportItemViewModel.m" lineNumber:420 description:@"Unable to create a group identifier because a date for the asset could not be determined."];

    p_collectionIdentifier = &self->_collectionIdentifier;
  }

  v14 = *p_collectionIdentifier;
  if (!*p_collectionIdentifier)
  {
    goto LABEL_17;
  }

LABEL_18:
  v15 = v14;

  return v14;
}

- (NSString)fileName
{
  v3 = [(PHImportAsset *)self->_importAsset createdFileName];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(PHImportAsset *)self->_importAsset fileName];
  }

  v6 = v5;

  return v6;
}

- (void)removeThumbnailRequest:(id)a3
{
  v8 = a3;
  v4 = [v8 requestSize];
  v5 = [(PXImportItemViewModel *)self thumbnailRequestsBySize];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    [v7 removeObject:v8];
  }
}

- (void)addThumbnailRequest:(id)a3
{
  v12 = a3;
  v4 = [(PXImportItemViewModel *)self thumbnailRequestsBySize];

  if (!v4)
  {
    v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:4];
    [(PXImportItemViewModel *)self setThumbnailRequestsBySize:v5];
  }

  v6 = [v12 requestSize];
  v7 = [(PXImportItemViewModel *)self thumbnailRequestsBySize];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (!v9)
  {
    v9 = [MEMORY[0x1E695DFA8] set];
    v10 = [(PXImportItemViewModel *)self thumbnailRequestsBySize];
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6];
    [v10 setObject:v9 forKeyedSubscript:v11];
  }

  [v9 addObject:v12];
}

- (id)thumbnailRequestsForRequestSize:(unint64_t)a3
{
  v4 = [(PXImportItemViewModel *)self thumbnailRequestsBySize];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  v7 = [v6 copy];

  return v7;
}

- (void)removeAssetDataRequestForRequestSize:(unint64_t)a3
{
  v5 = [(PXImportItemViewModel *)self assetRequestsBySize];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v5 setObject:0 forKeyedSubscript:v4];
}

- (void)setAssetDataRequest:(id)a3 forRequestSize:(unint64_t)a4
{
  v7 = a3;
  v8 = [(PXImportItemViewModel *)self assetRequestsBySize];

  if (!v8)
  {
    v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:4];
    [(PXImportItemViewModel *)self setAssetRequestsBySize:v9];
  }

  v10 = [(PXImportItemViewModel *)self assetRequestsBySize];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v12 = [v10 objectForKeyedSubscript:v11];

  if (v12)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PXImportItemViewModel.m" lineNumber:296 description:@"Overwriting an existing asset data request with new one"];
  }

  v15 = [(PXImportItemViewModel *)self assetRequestsBySize];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  [v15 setObject:v7 forKeyedSubscript:v13];
}

- (id)assetDataRequestForRequestSize:(unint64_t)a3
{
  v4 = [(PXImportItemViewModel *)self assetRequestsBySize];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

- (NSDictionary)imageRepresentations
{
  v3 = [(PXImportItemViewModel *)self imageRepresentationsBySize];

  if (v3)
  {
    v4 = MEMORY[0x1E695DF20];
    v5 = [(PXImportItemViewModel *)self imageRepresentationsBySize];
    v6 = [v4 dictionaryWithDictionary:v5];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F8];
  }

  return v6;
}

- (void)setIsDeleted:(BOOL)a3
{
  if (self->_isDeleted != a3)
  {
    self->_isDeleted = a3;
    [(PXImportItemViewModel *)self signalChange:128];
  }
}

- (void)setDeleteSession:(id)a3
{
  v5 = a3;
  if (![(NSString *)self->_deleteSession isEqualToString:?])
  {
    objc_storeStrong(&self->_deleteSession, a3);
    [(PXImportItemViewModel *)self signalChange:64];
  }
}

- (void)setImportDate:(id)a3
{
  v5 = a3;
  if (![(NSDate *)self->_importDate isEqualToDate:?])
  {
    objc_storeStrong(&self->_importDate, a3);
    [(PXImportItemViewModel *)self signalChange:32];
  }
}

- (void)addImageRepresentation:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(PXImportItemViewModel *)self imageRepresentationsBySize];

    if (!v5)
    {
      v6 = objc_opt_new();
      [(PXImportItemViewModel *)self setImageRepresentationsBySize:v6];
    }

    v7 = [(PXImportItemViewModel *)self imageRepresentationsBySize];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "sizeType")}];
    [v7 setObject:v4 forKeyedSubscript:v8];
  }

  [(PXImportItemViewModel *)self signalChange:256];
}

- (void)setState:(int64_t)a3
{
  if (self->_state != a3)
  {
    self->_state = a3;
    [(PXImportItemViewModel *)self signalChange:16];
  }
}

- (void)setDuplicate:(BOOL)a3
{
  if (self->_duplicate != a3)
  {
    self->_duplicate = a3;
  }
}

- (void)setSelectable:(BOOL)a3
{
  if (self->_selectable != a3)
  {
    if (!a3 && [(PXImportItemViewModel *)self isSelected]&& [(PXImportItemViewModel *)self isSelected])
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      [v6 handleFailureInMethod:a2 object:self file:@"PXImportItemViewModel.m" lineNumber:220 description:@"Attempting to mark import view model as unselectable while it is selected."];
    }

    self->_selectable = a3;

    [(PXImportItemViewModel *)self signalChange:4];
  }
}

- (void)setSelected:(BOOL)a3
{
  if (self->_selected != a3)
  {
    self->_selected = a3;
    if (a3)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }

    [(PXImportItemViewModel *)self signalChange:v3];
  }
}

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXImportItemViewModel;
  [(PXImportItemViewModel *)&v3 performChanges:a3];
}

- (BOOL)isPanoramicImage
{
  v3 = [(PXImportItemViewModel *)self importAsset];
  [v3 exifPixelSize];
  v5 = v4;
  v7 = v6;

  v8 = [objc_opt_class() hasPanoramaImageDimensions:{v5, v7}];
  if (v8)
  {
    v9 = [(PXImportItemViewModel *)self importAsset];
    v10 = [v9 isImage];

    LOBYTE(v8) = v10;
  }

  return v8;
}

- (int64_t)badgeType
{
  if ([(PXImportItemViewModel *)self state]== 1)
  {
    return 2;
  }

  if ([(PXImportItemViewModel *)self isSelected])
  {
    return 1;
  }

  if ([(PXImportItemViewModel *)self state]== 3)
  {
    return 4;
  }

  v4 = [(PXImportItemViewModel *)self importDate];

  if (v4)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (NSString)uniformTypeIdentifier
{
  v2 = [(PXImportItemViewModel *)self importAsset];
  v3 = [v2 contentType];
  v4 = [v3 identifier];

  return v4;
}

- (NSString)debugDisplayName
{
  v2 = [(PXImportItemViewModel *)self importAsset];
  v3 = [v2 fileName];
  v4 = [v2 rawAsset];

  if (v4)
  {
    v5 = @"(+R)";
  }

  else
  {
    v6 = [v2 videoComplement];

    if (v6)
    {
      v5 = @"(+M)";
    }

    else
    {
      v7 = [v2 audioAsset];

      v5 = @"(+A)";
      if (!v7)
      {
        v5 = &stru_1F1741150;
      }
    }
  }

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v3, v5];

  return v8;
}

- (BOOL)isNotYetImported
{
  if ([(PXImportItemViewModel *)self isDuplicate])
  {
    return 0;
  }

  v4 = [(PXImportItemViewModel *)self importDate];
  if (v4)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(PXImportItemViewModel *)self isMediaAsset];
  }

  return v3;
}

- (BOOL)isMediaAsset
{
  v2 = [(PXImportItemViewModel *)self importAsset];
  v3 = v2 != 0;

  return v3;
}

- (NSString)uuid
{
  v2 = [(PXImportItemViewModel *)self importAsset];
  v3 = [v2 uuid];

  return v3;
}

- (unint64_t)hash
{
  v2 = [(PXImportItemViewModel *)self uuid];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PXImportItemViewModel *)self isEqualToImportItemViewModel:v4];
  }

  return v5;
}

- (BOOL)isEqualToImportItemViewModel:(id)a3
{
  v4 = a3;
  v5 = [(PXImportItemViewModel *)self uuid];
  v6 = [v4 uuid];
  if (v5 == v6)
  {
    v8 = [(PXImportItemViewModel *)self kind];
    v9 = [v4 kind];
    v7 = [v8 isEqualToString:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(PXImportItemViewModel *)self fileName];
  v6 = [v3 stringWithFormat:@"<%@:%p file: %@>", v4, self, v5];

  return v6;
}

- (PXImportItemViewModel)initWithKind:(id)a3 selectable:(BOOL)a4
{
  v7 = a3;
  v8 = [(PXImportItemViewModel *)self initWithImportAsset:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_kind, a3);
    v9->_selectable = a4;
  }

  return v9;
}

- (PXImportItemViewModel)initWithImportAsset:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = PXImportItemViewModel;
  v6 = [(PXImportItemViewModel *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_importAsset, a3);
    v7->_duplicate = [v5 isDuplicate];
    v7->_selectable = 1;
    kind = v7->_kind;
    v7->_kind = @"PXImportItemViewModelKindAsset";
  }

  return v7;
}

- (PXImportItemViewModel)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXImportItemViewModel.m" lineNumber:43 description:{@"%s is not available as initializer", "-[PXImportItemViewModel init]"}];

  abort();
}

+ (NSString)alreadyImportedGroupIdentifier
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__PXImportItemViewModel_alreadyImportedGroupIdentifier__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (alreadyImportedGroupIdentifier_onceToken != -1)
  {
    dispatch_once(&alreadyImportedGroupIdentifier_onceToken, block);
  }

  v2 = alreadyImportedGroupIdentifier_alreadyImportedIdentifier;

  return v2;
}

void __55__PXImportItemViewModel_alreadyImportedGroupIdentifier__block_invoke()
{
  v3 = [MEMORY[0x1E695DF00] distantPast];
  v0 = [objc_opt_class() dateFormatter];
  v1 = [v0 stringFromDate:v3];
  v2 = alreadyImportedGroupIdentifier_alreadyImportedIdentifier;
  alreadyImportedGroupIdentifier_alreadyImportedIdentifier = v1;
}

+ (id)dateFormatter
{
  if (dateFormatter_onceToken != -1)
  {
    dispatch_once(&dateFormatter_onceToken, &__block_literal_global_66009);
  }

  v3 = dateFormatter_formatter;

  return v3;
}

uint64_t __38__PXImportItemViewModel_dateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = dateFormatter_formatter;
  dateFormatter_formatter = v0;

  [dateFormatter_formatter setDateStyle:2];
  [dateFormatter_formatter setTimeStyle:0];
  v2 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [dateFormatter_formatter setLocale:v2];

  v3 = dateFormatter_formatter;

  return [v3 setDateFormat:@"yyyy-MM-dd"];
}

+ (BOOL)hasPanoramaImageDimensions:(CGSize)a3
{
  if (a3.height == 0.0)
  {
    return 0;
  }

  v4 = a3.width / a3.height;
  return v4 < 0.5 || v4 > 2.0;
}

+ (id)importAssetsFromModels:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) importAsset];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (int64_t)originalFilesize
{
  v2 = [(PXImportItemViewModel *)self importAsset];
  v3 = [v2 fileSize];

  return v3;
}

- (CGRect)bestCropRectForAspectRatio:(double)a3
{
  v3 = [(PXImportItemViewModel *)self importAsset];
  [v3 orientedPixelSize];

  PXRectWithAspectRatioFittingRect();
}

- (double)aspectRatio
{
  v2 = [(PXImportItemViewModel *)self importAsset];
  [v2 orientedPixelSize];
  v4 = v3;
  v6 = v5;

  result = v4 / v6;
  if (v4 / v6 == 0.0)
  {
    return 1.0;
  }

  return result;
}

- (unsigned)playbackVariation
{
  v2 = [(PXImportItemViewModel *)self importAsset];
  v3 = [v2 metadata];

  if ([v3 isAutoloop])
  {
    v4 = 1;
  }

  else if ([v3 isMirror])
  {
    v4 = 2;
  }

  else if ([v3 isLongExposure])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)playbackStyle
{
  v3 = [(PXImportItemViewModel *)self importAsset];
  v4 = [v3 isMovie];

  if (v4)
  {
    return 4;
  }

  v6 = [(PXImportItemViewModel *)self importAsset];
  v7 = [v6 isLivePhoto];

  if (v7)
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

- (double)duration
{
  v3 = [(PXImportItemViewModel *)self importAsset];
  if ([v3 isImage])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(PXImportItemViewModel *)self importAsset];
    v4 = [v5 durationTimeInterval];
  }

  [v4 doubleValue];
  v7 = v6;

  return v7;
}

- (int64_t)isContentEqualTo:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (self != v4)
    {
      v5 = [(PXImportItemViewModel *)v4 uuid];
      v6 = MEMORY[0x1E696AEC0];
      v7 = [(PXImportItemViewModel *)self uuid];
      v8 = [v6 stringWithFormat:@"%@", v7];

      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v5];
      if (![v8 isEqualToString:v9])
      {
        v15 = 0;
LABEL_17:

        goto LABEL_18;
      }

      v10 = [(PXImportItemViewModel *)v4 creationDate];
      v11 = [(PXImportItemViewModel *)self creationDate];
      v12 = v11;
      if (v11 && v10)
      {
        v13 = [(PXImportItemViewModel *)self creationDate];
        v14 = [v13 compare:v10];

        if (!v14)
        {
          v15 = 2;
LABEL_16:

          goto LABEL_17;
        }
      }

      else
      {
      }

      v16 = [(PXImportItemViewModel *)self creationDate];
      v17 = v16 | v10;

      if (v17)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      goto LABEL_16;
    }

    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

LABEL_18:

  return v15;
}

- (CGRect)faceAreaRect
{
  v2 = *MEMORY[0x1E695F050];
  v3 = *(MEMORY[0x1E695F050] + 8);
  v4 = *(MEMORY[0x1E695F050] + 16);
  v5 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)acceptableCropRect
{
  v2 = *MEMORY[0x1E695F050];
  v3 = *(MEMORY[0x1E695F050] + 8);
  v4 = *(MEMORY[0x1E695F050] + 16);
  v5 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)preferredCropRect
{
  v2 = *MEMORY[0x1E695F050];
  v3 = *(MEMORY[0x1E695F050] + 8);
  v4 = *(MEMORY[0x1E695F050] + 16);
  v5 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (unint64_t)pixelHeight
{
  v2 = [(PXImportItemViewModel *)self importAsset];
  [v2 exifPixelSize];
  v4 = v3;

  return v4;
}

- (unint64_t)pixelWidth
{
  v2 = [(PXImportItemViewModel *)self importAsset];
  [v2 exifPixelSize];
  v4 = v3;

  return v4;
}

- (NSDate)localCreationDate
{
  v3 = [(PXImportItemViewModel *)self importAsset];
  v4 = [v3 creationDate];

  v5 = [(PXImportItemViewModel *)self importAsset];
  v6 = [v5 timeZone];

  v7 = 0;
  if (v4 && v6)
  {
    v7 = [v4 dateByAddingTimeInterval:{objc_msgSend(v6, "secondsFromGMTForDate:", v4)}];
  }

  return v7;
}

- (NSDate)creationDate
{
  v3 = [(PXImportItemViewModel *)self importAsset];
  v4 = [v3 creationDate];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(PXImportItemViewModel *)self importAsset];
    v6 = [v7 fileCreationDate];
  }

  return v6;
}

- (unint64_t)mediaSubtypes
{
  if ([(PXImportItemViewModel *)self mediaType]== 1)
  {
    v3 = [(PXImportItemViewModel *)self importAsset];
    v4 = [v3 isHDR];

    if (v4)
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    v6 = [(PXImportItemViewModel *)self importAsset];
    v7 = [v6 isLivePhoto];

    v8 = v5 | 8;
  }

  else
  {
    if ([(PXImportItemViewModel *)self mediaType]!= 2)
    {
      return 0;
    }

    v9 = [(PXImportItemViewModel *)self importAsset];
    v10 = [v9 isSloMo];

    if (v10)
    {
      v5 = 0x20000;
    }

    else
    {
      v5 = 0;
    }

    v11 = [(PXImportItemViewModel *)self importAsset];
    v7 = [v11 isTimelapse];

    v8 = v5 | 0x40000;
  }

  if (v7)
  {
    return v8;
  }

  else
  {
    return v5;
  }
}

- (int64_t)mediaType
{
  v3 = [(PXImportItemViewModel *)self importAsset];
  v4 = [v3 isAudio];

  if (v4)
  {
    return 3;
  }

  v6 = [(PXImportItemViewModel *)self importAsset];
  v7 = [v6 isMovie];

  if (v7)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (BOOL)px_representsBurst
{
  v3 = [(PXImportItemViewModel *)self importAsset];
  v4 = [v3 burstPick];
  v5 = [v4 uuid];
  v6 = [(PXImportItemViewModel *)self importAsset];
  v7 = [v6 uuid];
  v8 = [v5 isEqual:v7];

  return v8;
}

- (BOOL)px_isSloMo
{
  v2 = [(PXImportItemViewModel *)self importAsset];
  v3 = [v2 isSloMo];

  return v3;
}

- (BOOL)px_isTimelapse
{
  v2 = [(PXImportItemViewModel *)self importAsset];
  v3 = [v2 isTimelapse];

  return v3;
}

- (BOOL)px_isLivePhoto
{
  v2 = [(PXImportItemViewModel *)self importAsset];
  v3 = [v2 isLivePhoto];

  return v3;
}

- (unsigned)px_audioTrackFormat
{
  v2 = [(PXImportItemViewModel *)self importAsset];
  v3 = [v2 trackFormat];
  v4 = [v3 unsignedIntValue];

  return v4;
}

- (NSNumber)px_whiteBalance
{
  v2 = [(PXImportItemViewModel *)self importAsset];
  v3 = [v2 whiteBalance];

  return v3;
}

- (NSNumber)px_shutterSpeed
{
  v2 = [(PXImportItemViewModel *)self importAsset];
  v3 = [v2 exposureTime];

  return v3;
}

- (NSNumber)px_meteringMode
{
  v2 = [(PXImportItemViewModel *)self importAsset];
  v3 = [v2 meteringMode];

  return v3;
}

- (NSString)px_formattedCameraModel
{
  v2 = [(PXImportItemViewModel *)self importAsset];
  v3 = [v2 formattedCameraModel];

  return v3;
}

- (NSString)px_model
{
  v2 = [(PXImportItemViewModel *)self importAsset];
  v3 = [v2 cameraModel];

  return v3;
}

- (NSString)px_make
{
  v2 = [(PXImportItemViewModel *)self importAsset];
  v3 = [v2 cameraMake];

  return v3;
}

- (NSString)px_lensModel
{
  v2 = [(PXImportItemViewModel *)self importAsset];
  v3 = [v2 lensModel];

  return v3;
}

- (NSNumber)px_ISORating
{
  v2 = [(PXImportItemViewModel *)self importAsset];
  v3 = [v2 focalLength];

  return v3;
}

- (NSNumber)px_digitalZoomRatio
{
  v2 = [(PXImportItemViewModel *)self importAsset];
  v3 = [v2 digitalZoomRatio];

  return v3;
}

- (NSNumber)px_focalLengthIn35mm
{
  v2 = [(PXImportItemViewModel *)self importAsset];
  v3 = [v2 focalLengthIn35mm];

  return v3;
}

- (NSNumber)px_focalLength
{
  v2 = [(PXImportItemViewModel *)self importAsset];
  v3 = [v2 focalLength];

  return v3;
}

- (NSNumber)px_flash
{
  v2 = [(PXImportItemViewModel *)self importAsset];
  v3 = [v2 flashFired];

  return v3;
}

- (NSNumber)px_exposureBias
{
  v2 = [(PXImportItemViewModel *)self importAsset];
  v3 = [v2 exposureBias];

  return v3;
}

- (NSNumber)px_aperture
{
  v2 = [(PXImportItemViewModel *)self importAsset];
  v3 = [v2 fNumber];

  return v3;
}

- (NSString)px_codec
{
  v2 = [(PXImportItemViewModel *)self importAsset];
  v3 = [v2 codec];

  return v3;
}

- (NSNumber)px_sampleRate
{
  v2 = [(PXImportItemViewModel *)self importAsset];
  v3 = [v2 sampleRate];

  return v3;
}

- (NSNumber)px_bitRate
{
  v2 = [(PXImportItemViewModel *)self importAsset];
  v3 = [v2 bitrate];

  return v3;
}

- (NSNumber)px_FPS
{
  v2 = [(PXImportItemViewModel *)self importAsset];
  v3 = [v2 fps];

  return v3;
}

- (NSNumber)px_duration
{
  v2 = [(PXImportItemViewModel *)self importAsset];
  v3 = [v2 durationTimeInterval];

  return v3;
}

- (BOOL)px_supportsImageProperties
{
  v2 = [(PXImportItemViewModel *)self importAsset];
  v3 = [v2 isImage];

  return v3;
}

- (NSString)px_burstUUID
{
  v2 = [(PXImportItemViewModel *)self importAsset];
  v3 = [v2 burstUUID];

  return v3;
}

- (NSString)px_uniformTypeIdentifier
{
  v2 = [(PXImportItemViewModel *)self importAsset];
  v3 = [v2 contentType];
  v4 = [v3 identifier];

  return v4;
}

- (PXIntSize_st)px_resolution
{
  v2 = [(PXImportItemViewModel *)self importAsset];
  [v2 exifPixelSize];
  v4 = v3;
  v6 = v5;

  v7 = llround(v4);
  v8 = llround(v6);
  result.var1 = v8;
  result.var0 = v7;
  return result;
}

- (NSTimeZone)px_timeZone
{
  v2 = [(PXImportItemViewModel *)self importAsset];
  v3 = [v2 timeZone];

  return v3;
}

- (NSDate)px_creationDate
{
  v2 = [(PXImportItemViewModel *)self importAsset];
  v3 = [v2 creationDate];

  return v3;
}

- (NSNumber)px_filesize
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [(PXImportItemViewModel *)self importAsset];
  v4 = [v2 numberWithUnsignedLongLong:{objc_msgSend(v3, "fileSize")}];

  return v4;
}

- (unint64_t)px_originalFileType
{
  v3 = [(PXImportItemViewModel *)self px_originalType];

  return [PXMetadataUtilities fileTypeForItem:self type:v3];
}

- (unint64_t)px_fileType
{
  v3 = [(PXImportItemViewModel *)self px_type];

  return [PXMetadataUtilities fileTypeForItem:self type:v3];
}

- (unint64_t)px_type
{
  v3 = [(PXImportItemViewModel *)self importAsset];
  v4 = [v3 isJPEG];

  if (v4)
  {
    return 0;
  }

  v6 = [(PXImportItemViewModel *)self importAsset];
  v7 = [v6 isHEIF];

  if (v7)
  {
    return 1;
  }

  v8 = [(PXImportItemViewModel *)self importAsset];
  v9 = [v8 isRAW];

  if (v9)
  {
    return 2;
  }

  v10 = [(PXImportItemViewModel *)self importAsset];
  v11 = [v10 isGIF];

  if (v11)
  {
    return 3;
  }

  v12 = [(PXImportItemViewModel *)self importAsset];
  v13 = [v12 isPNG];

  if (v13)
  {
    return 4;
  }

  v14 = [(PXImportItemViewModel *)self importAsset];
  v15 = [v14 isTIFF];

  if (v15)
  {
    return 5;
  }

  v16 = [(PXImportItemViewModel *)self importAsset];
  v17 = [v16 isPDF];

  if (v17)
  {
    return 6;
  }

  v18 = [(PXImportItemViewModel *)self importAsset];
  v19 = [v18 isPSD];

  if (v19)
  {
    return 7;
  }

  v20 = [(PXImportItemViewModel *)self importAsset];
  v21 = [v20 isJPEG2000];

  if (v21)
  {
    return 8;
  }

  v22 = [(PXImportItemViewModel *)self importAsset];
  v23 = [v22 isAudio];

  if (v23)
  {
    return 9;
  }

  v24 = [(PXImportItemViewModel *)self importAsset];
  v25 = [v24 isMovie];

  if (v25)
  {
    return 10;
  }

  else
  {
    return 12;
  }
}

- (BOOL)px_isVideo
{
  v2 = [(PXImportItemViewModel *)self importAsset];
  v3 = [v2 isMovie];

  return v3;
}

- (BOOL)px_isAudio
{
  v2 = [(PXImportItemViewModel *)self importAsset];
  v3 = [v2 isAudio];

  return v3;
}

- (BOOL)px_isImage
{
  v2 = [(PXImportItemViewModel *)self importAsset];
  v3 = [v2 isImage];

  return v3;
}

@end