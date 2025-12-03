@interface PXImportItemViewModel
+ (BOOL)hasPanoramaImageDimensions:(CGSize)dimensions;
+ (NSString)alreadyImportedGroupIdentifier;
+ (id)dateFormatter;
+ (id)importAssetsFromModels:(id)models;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToImportItemViewModel:(id)model;
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
- (CGRect)bestCropRectForAspectRatio:(double)ratio;
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
- (PXImportItemViewModel)initWithImportAsset:(id)asset;
- (PXImportItemViewModel)initWithKind:(id)kind selectable:(BOOL)selectable;
- (PXIntSize_st)px_resolution;
- (double)aspectRatio;
- (double)duration;
- (id)accessibilityLabel;
- (id)assetDataRequestForRequestSize:(unint64_t)size;
- (id)groupIdentifier;
- (id)thumbnailRequestsForRequestSize:(unint64_t)size;
- (int64_t)badgeType;
- (int64_t)isContentEqualTo:(id)to;
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
- (void)addImageRepresentation:(id)representation;
- (void)addThumbnailRequest:(id)request;
- (void)performChanges:(id)changes;
- (void)removeAssetDataRequestForRequestSize:(unint64_t)size;
- (void)removeThumbnailRequest:(id)request;
- (void)setAssetDataRequest:(id)request forRequestSize:(unint64_t)size;
- (void)setDeleteSession:(id)session;
- (void)setDuplicate:(BOOL)duplicate;
- (void)setImportDate:(id)date;
- (void)setIsDeleted:(BOOL)deleted;
- (void)setSelectable:(BOOL)selectable;
- (void)setSelected:(BOOL)selected;
- (void)setState:(int64_t)state;
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
  importAsset = [(PXImportItemViewModel *)self importAsset];
  fileCreationDate = [importAsset fileCreationDate];

  kind = [(PXImportItemViewModel *)self kind];
  v8 = [kind isEqualToString:@"PXImportItemViewModelKindExpansionPlaceholder"];

  if (v8 & 1) != 0 || (-[PXImportItemViewModel importAsset](self, "importAsset"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 isImage], v9, (v10) || (-[PXImportItemViewModel importAsset](self, "importAsset"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isMovie"), v11, v12))
  {
    v13 = PLLocalizedFrameworkString();

    v4 = v13;
  }

  [v3 appendString:v4];
  [v3 appendString:@"."];
  if (fileCreationDate)
  {
    v14 = MEMORY[0x1E696AEC0];
    v15 = [MEMORY[0x1E696AB78] localizedStringFromDate:fileCreationDate dateStyle:2 timeStyle:1];
    v16 = [v14 stringWithFormat:@"%@.", v15];
    [v3 appendString:v16];
  }

  importDate = [(PXImportItemViewModel *)self importDate];

  if (importDate)
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
    distantPast = [MEMORY[0x1E695DF00] distantPast];
    goto LABEL_9;
  }

  v5 = +[PXImportSettings sharedInstance];
  groupItemsByEXIFDate = [v5 groupItemsByEXIFDate];

  if (groupItemsByEXIFDate)
  {
    importAsset = [(PXImportItemViewModel *)self importAsset];
    creationDate = [importAsset creationDate];

    if (creationDate)
    {
      goto LABEL_10;
    }

    v9 = _importGridLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315394;
      v21 = "[PXImportItemViewModel groupIdentifier]";
      v22 = 2112;
      selfCopy3 = self;
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "%s: import asset does not have an EXIF date. Resorting to file creation date. %@", &v20, 0x16u);
    }

    distantPast = [(PXImportItemViewModel *)self fileCreationDate];
    goto LABEL_9;
  }

  distantPast = [(PXImportItemViewModel *)self fileCreationDate];
  if (distantPast)
  {
LABEL_9:
    creationDate = distantPast;
    goto LABEL_10;
  }

  v17 = _importGridLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v20 = 136315394;
    v21 = "[PXImportItemViewModel groupIdentifier]";
    v22 = 2112;
    selfCopy3 = self;
    _os_log_error_impl(&dword_1A3C1C000, v17, OS_LOG_TYPE_ERROR, "%s: import asset does not have a file creation date (stable). Resorting to image date (possibly unstable). %@", &v20, 0x16u);
  }

  importAsset2 = [(PXImportItemViewModel *)self importAsset];
  creationDate = [importAsset2 creationDate];

LABEL_10:
  dateFormatter = [objc_opt_class() dateFormatter];
  v11 = [dateFormatter stringFromDate:creationDate];

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
        selfCopy3 = self;
        _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_DEFAULT, "%s: *** warning*** model collection identifier has changed. %@", &v20, 0x16u);
      }
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXImportItemViewModel.m" lineNumber:420 description:@"Unable to create a group identifier because a date for the asset could not be determined."];

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
  createdFileName = [(PHImportAsset *)self->_importAsset createdFileName];
  v4 = createdFileName;
  if (createdFileName)
  {
    fileName = createdFileName;
  }

  else
  {
    fileName = [(PHImportAsset *)self->_importAsset fileName];
  }

  v6 = fileName;

  return v6;
}

- (void)removeThumbnailRequest:(id)request
{
  requestCopy = request;
  requestSize = [requestCopy requestSize];
  thumbnailRequestsBySize = [(PXImportItemViewModel *)self thumbnailRequestsBySize];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:requestSize];
  v7 = [thumbnailRequestsBySize objectForKeyedSubscript:v6];

  if (v7)
  {
    [v7 removeObject:requestCopy];
  }
}

- (void)addThumbnailRequest:(id)request
{
  requestCopy = request;
  thumbnailRequestsBySize = [(PXImportItemViewModel *)self thumbnailRequestsBySize];

  if (!thumbnailRequestsBySize)
  {
    v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:4];
    [(PXImportItemViewModel *)self setThumbnailRequestsBySize:v5];
  }

  requestSize = [requestCopy requestSize];
  thumbnailRequestsBySize2 = [(PXImportItemViewModel *)self thumbnailRequestsBySize];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:requestSize];
  v9 = [thumbnailRequestsBySize2 objectForKeyedSubscript:v8];

  if (!v9)
  {
    v9 = [MEMORY[0x1E695DFA8] set];
    thumbnailRequestsBySize3 = [(PXImportItemViewModel *)self thumbnailRequestsBySize];
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:requestSize];
    [thumbnailRequestsBySize3 setObject:v9 forKeyedSubscript:v11];
  }

  [v9 addObject:requestCopy];
}

- (id)thumbnailRequestsForRequestSize:(unint64_t)size
{
  thumbnailRequestsBySize = [(PXImportItemViewModel *)self thumbnailRequestsBySize];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:size];
  v6 = [thumbnailRequestsBySize objectForKeyedSubscript:v5];

  v7 = [v6 copy];

  return v7;
}

- (void)removeAssetDataRequestForRequestSize:(unint64_t)size
{
  assetRequestsBySize = [(PXImportItemViewModel *)self assetRequestsBySize];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:size];
  [assetRequestsBySize setObject:0 forKeyedSubscript:v4];
}

- (void)setAssetDataRequest:(id)request forRequestSize:(unint64_t)size
{
  requestCopy = request;
  assetRequestsBySize = [(PXImportItemViewModel *)self assetRequestsBySize];

  if (!assetRequestsBySize)
  {
    v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:4];
    [(PXImportItemViewModel *)self setAssetRequestsBySize:v9];
  }

  assetRequestsBySize2 = [(PXImportItemViewModel *)self assetRequestsBySize];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:size];
  v12 = [assetRequestsBySize2 objectForKeyedSubscript:v11];

  if (v12)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXImportItemViewModel.m" lineNumber:296 description:@"Overwriting an existing asset data request with new one"];
  }

  assetRequestsBySize3 = [(PXImportItemViewModel *)self assetRequestsBySize];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:size];
  [assetRequestsBySize3 setObject:requestCopy forKeyedSubscript:v13];
}

- (id)assetDataRequestForRequestSize:(unint64_t)size
{
  assetRequestsBySize = [(PXImportItemViewModel *)self assetRequestsBySize];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:size];
  v6 = [assetRequestsBySize objectForKeyedSubscript:v5];

  return v6;
}

- (NSDictionary)imageRepresentations
{
  imageRepresentationsBySize = [(PXImportItemViewModel *)self imageRepresentationsBySize];

  if (imageRepresentationsBySize)
  {
    v4 = MEMORY[0x1E695DF20];
    imageRepresentationsBySize2 = [(PXImportItemViewModel *)self imageRepresentationsBySize];
    v6 = [v4 dictionaryWithDictionary:imageRepresentationsBySize2];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F8];
  }

  return v6;
}

- (void)setIsDeleted:(BOOL)deleted
{
  if (self->_isDeleted != deleted)
  {
    self->_isDeleted = deleted;
    [(PXImportItemViewModel *)self signalChange:128];
  }
}

- (void)setDeleteSession:(id)session
{
  sessionCopy = session;
  if (![(NSString *)self->_deleteSession isEqualToString:?])
  {
    objc_storeStrong(&self->_deleteSession, session);
    [(PXImportItemViewModel *)self signalChange:64];
  }
}

- (void)setImportDate:(id)date
{
  dateCopy = date;
  if (![(NSDate *)self->_importDate isEqualToDate:?])
  {
    objc_storeStrong(&self->_importDate, date);
    [(PXImportItemViewModel *)self signalChange:32];
  }
}

- (void)addImageRepresentation:(id)representation
{
  if (representation)
  {
    representationCopy = representation;
    imageRepresentationsBySize = [(PXImportItemViewModel *)self imageRepresentationsBySize];

    if (!imageRepresentationsBySize)
    {
      v6 = objc_opt_new();
      [(PXImportItemViewModel *)self setImageRepresentationsBySize:v6];
    }

    imageRepresentationsBySize2 = [(PXImportItemViewModel *)self imageRepresentationsBySize];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(representationCopy, "sizeType")}];
    [imageRepresentationsBySize2 setObject:representationCopy forKeyedSubscript:v8];
  }

  [(PXImportItemViewModel *)self signalChange:256];
}

- (void)setState:(int64_t)state
{
  if (self->_state != state)
  {
    self->_state = state;
    [(PXImportItemViewModel *)self signalChange:16];
  }
}

- (void)setDuplicate:(BOOL)duplicate
{
  if (self->_duplicate != duplicate)
  {
    self->_duplicate = duplicate;
  }
}

- (void)setSelectable:(BOOL)selectable
{
  if (self->_selectable != selectable)
  {
    if (!selectable && [(PXImportItemViewModel *)self isSelected]&& [(PXImportItemViewModel *)self isSelected])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXImportItemViewModel.m" lineNumber:220 description:@"Attempting to mark import view model as unselectable while it is selected."];
    }

    self->_selectable = selectable;

    [(PXImportItemViewModel *)self signalChange:4];
  }
}

- (void)setSelected:(BOOL)selected
{
  if (self->_selected != selected)
  {
    self->_selected = selected;
    if (selected)
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

- (void)performChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = PXImportItemViewModel;
  [(PXImportItemViewModel *)&v3 performChanges:changes];
}

- (BOOL)isPanoramicImage
{
  importAsset = [(PXImportItemViewModel *)self importAsset];
  [importAsset exifPixelSize];
  v5 = v4;
  v7 = v6;

  v8 = [objc_opt_class() hasPanoramaImageDimensions:{v5, v7}];
  if (v8)
  {
    importAsset2 = [(PXImportItemViewModel *)self importAsset];
    isImage = [importAsset2 isImage];

    LOBYTE(v8) = isImage;
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

  importDate = [(PXImportItemViewModel *)self importDate];

  if (importDate)
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
  importAsset = [(PXImportItemViewModel *)self importAsset];
  contentType = [importAsset contentType];
  identifier = [contentType identifier];

  return identifier;
}

- (NSString)debugDisplayName
{
  importAsset = [(PXImportItemViewModel *)self importAsset];
  fileName = [importAsset fileName];
  rawAsset = [importAsset rawAsset];

  if (rawAsset)
  {
    v5 = @"(+R)";
  }

  else
  {
    videoComplement = [importAsset videoComplement];

    if (videoComplement)
    {
      v5 = @"(+M)";
    }

    else
    {
      audioAsset = [importAsset audioAsset];

      v5 = @"(+A)";
      if (!audioAsset)
      {
        v5 = &stru_1F1741150;
      }
    }
  }

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", fileName, v5];

  return v8;
}

- (BOOL)isNotYetImported
{
  if ([(PXImportItemViewModel *)self isDuplicate])
  {
    return 0;
  }

  importDate = [(PXImportItemViewModel *)self importDate];
  if (importDate)
  {
    isMediaAsset = 0;
  }

  else
  {
    isMediaAsset = [(PXImportItemViewModel *)self isMediaAsset];
  }

  return isMediaAsset;
}

- (BOOL)isMediaAsset
{
  importAsset = [(PXImportItemViewModel *)self importAsset];
  v3 = importAsset != 0;

  return v3;
}

- (NSString)uuid
{
  importAsset = [(PXImportItemViewModel *)self importAsset];
  uuid = [importAsset uuid];

  return uuid;
}

- (unint64_t)hash
{
  uuid = [(PXImportItemViewModel *)self uuid];
  v3 = [uuid hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PXImportItemViewModel *)self isEqualToImportItemViewModel:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToImportItemViewModel:(id)model
{
  modelCopy = model;
  uuid = [(PXImportItemViewModel *)self uuid];
  uuid2 = [modelCopy uuid];
  if (uuid == uuid2)
  {
    kind = [(PXImportItemViewModel *)self kind];
    kind2 = [modelCopy kind];
    v7 = [kind isEqualToString:kind2];
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
  fileName = [(PXImportItemViewModel *)self fileName];
  v6 = [v3 stringWithFormat:@"<%@:%p file: %@>", v4, self, fileName];

  return v6;
}

- (PXImportItemViewModel)initWithKind:(id)kind selectable:(BOOL)selectable
{
  kindCopy = kind;
  v8 = [(PXImportItemViewModel *)self initWithImportAsset:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_kind, kind);
    v9->_selectable = selectable;
  }

  return v9;
}

- (PXImportItemViewModel)initWithImportAsset:(id)asset
{
  assetCopy = asset;
  v10.receiver = self;
  v10.super_class = PXImportItemViewModel;
  v6 = [(PXImportItemViewModel *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_importAsset, asset);
    v7->_duplicate = [assetCopy isDuplicate];
    v7->_selectable = 1;
    kind = v7->_kind;
    v7->_kind = @"PXImportItemViewModelKindAsset";
  }

  return v7;
}

- (PXImportItemViewModel)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXImportItemViewModel.m" lineNumber:43 description:{@"%s is not available as initializer", "-[PXImportItemViewModel init]"}];

  abort();
}

+ (NSString)alreadyImportedGroupIdentifier
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__PXImportItemViewModel_alreadyImportedGroupIdentifier__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

+ (BOOL)hasPanoramaImageDimensions:(CGSize)dimensions
{
  if (dimensions.height == 0.0)
  {
    return 0;
  }

  v4 = dimensions.width / dimensions.height;
  return v4 < 0.5 || v4 > 2.0;
}

+ (id)importAssetsFromModels:(id)models
{
  v17 = *MEMORY[0x1E69E9840];
  modelsCopy = models;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(modelsCopy, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = modelsCopy;
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

        importAsset = [*(*(&v12 + 1) + 8 * i) importAsset];
        if (importAsset)
        {
          [v4 addObject:importAsset];
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
  importAsset = [(PXImportItemViewModel *)self importAsset];
  fileSize = [importAsset fileSize];

  return fileSize;
}

- (CGRect)bestCropRectForAspectRatio:(double)ratio
{
  importAsset = [(PXImportItemViewModel *)self importAsset];
  [importAsset orientedPixelSize];

  PXRectWithAspectRatioFittingRect();
}

- (double)aspectRatio
{
  importAsset = [(PXImportItemViewModel *)self importAsset];
  [importAsset orientedPixelSize];
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
  importAsset = [(PXImportItemViewModel *)self importAsset];
  metadata = [importAsset metadata];

  if ([metadata isAutoloop])
  {
    v4 = 1;
  }

  else if ([metadata isMirror])
  {
    v4 = 2;
  }

  else if ([metadata isLongExposure])
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
  importAsset = [(PXImportItemViewModel *)self importAsset];
  isMovie = [importAsset isMovie];

  if (isMovie)
  {
    return 4;
  }

  importAsset2 = [(PXImportItemViewModel *)self importAsset];
  isLivePhoto = [importAsset2 isLivePhoto];

  if (isLivePhoto)
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
  importAsset = [(PXImportItemViewModel *)self importAsset];
  if ([importAsset isImage])
  {
    durationTimeInterval = 0;
  }

  else
  {
    importAsset2 = [(PXImportItemViewModel *)self importAsset];
    durationTimeInterval = [importAsset2 durationTimeInterval];
  }

  [durationTimeInterval doubleValue];
  v7 = v6;

  return v7;
}

- (int64_t)isContentEqualTo:(id)to
{
  toCopy = to;
  if (toCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (self != toCopy)
    {
      uuid = [(PXImportItemViewModel *)toCopy uuid];
      v6 = MEMORY[0x1E696AEC0];
      uuid2 = [(PXImportItemViewModel *)self uuid];
      v8 = [v6 stringWithFormat:@"%@", uuid2];

      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", uuid];
      if (![v8 isEqualToString:v9])
      {
        v15 = 0;
LABEL_17:

        goto LABEL_18;
      }

      creationDate = [(PXImportItemViewModel *)toCopy creationDate];
      creationDate2 = [(PXImportItemViewModel *)self creationDate];
      v12 = creationDate2;
      if (creationDate2 && creationDate)
      {
        creationDate3 = [(PXImportItemViewModel *)self creationDate];
        v14 = [creationDate3 compare:creationDate];

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

      creationDate4 = [(PXImportItemViewModel *)self creationDate];
      v17 = creationDate4 | creationDate;

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
  importAsset = [(PXImportItemViewModel *)self importAsset];
  [importAsset exifPixelSize];
  v4 = v3;

  return v4;
}

- (unint64_t)pixelWidth
{
  importAsset = [(PXImportItemViewModel *)self importAsset];
  [importAsset exifPixelSize];
  v4 = v3;

  return v4;
}

- (NSDate)localCreationDate
{
  importAsset = [(PXImportItemViewModel *)self importAsset];
  creationDate = [importAsset creationDate];

  importAsset2 = [(PXImportItemViewModel *)self importAsset];
  timeZone = [importAsset2 timeZone];

  v7 = 0;
  if (creationDate && timeZone)
  {
    v7 = [creationDate dateByAddingTimeInterval:{objc_msgSend(timeZone, "secondsFromGMTForDate:", creationDate)}];
  }

  return v7;
}

- (NSDate)creationDate
{
  importAsset = [(PXImportItemViewModel *)self importAsset];
  creationDate = [importAsset creationDate];
  v5 = creationDate;
  if (creationDate)
  {
    fileCreationDate = creationDate;
  }

  else
  {
    importAsset2 = [(PXImportItemViewModel *)self importAsset];
    fileCreationDate = [importAsset2 fileCreationDate];
  }

  return fileCreationDate;
}

- (unint64_t)mediaSubtypes
{
  if ([(PXImportItemViewModel *)self mediaType]== 1)
  {
    importAsset = [(PXImportItemViewModel *)self importAsset];
    isHDR = [importAsset isHDR];

    if (isHDR)
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    importAsset2 = [(PXImportItemViewModel *)self importAsset];
    isLivePhoto = [importAsset2 isLivePhoto];

    v8 = v5 | 8;
  }

  else
  {
    if ([(PXImportItemViewModel *)self mediaType]!= 2)
    {
      return 0;
    }

    importAsset3 = [(PXImportItemViewModel *)self importAsset];
    isSloMo = [importAsset3 isSloMo];

    if (isSloMo)
    {
      v5 = 0x20000;
    }

    else
    {
      v5 = 0;
    }

    importAsset4 = [(PXImportItemViewModel *)self importAsset];
    isLivePhoto = [importAsset4 isTimelapse];

    v8 = v5 | 0x40000;
  }

  if (isLivePhoto)
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
  importAsset = [(PXImportItemViewModel *)self importAsset];
  isAudio = [importAsset isAudio];

  if (isAudio)
  {
    return 3;
  }

  importAsset2 = [(PXImportItemViewModel *)self importAsset];
  isMovie = [importAsset2 isMovie];

  if (isMovie)
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
  importAsset = [(PXImportItemViewModel *)self importAsset];
  burstPick = [importAsset burstPick];
  uuid = [burstPick uuid];
  importAsset2 = [(PXImportItemViewModel *)self importAsset];
  uuid2 = [importAsset2 uuid];
  v8 = [uuid isEqual:uuid2];

  return v8;
}

- (BOOL)px_isSloMo
{
  importAsset = [(PXImportItemViewModel *)self importAsset];
  isSloMo = [importAsset isSloMo];

  return isSloMo;
}

- (BOOL)px_isTimelapse
{
  importAsset = [(PXImportItemViewModel *)self importAsset];
  isTimelapse = [importAsset isTimelapse];

  return isTimelapse;
}

- (BOOL)px_isLivePhoto
{
  importAsset = [(PXImportItemViewModel *)self importAsset];
  isLivePhoto = [importAsset isLivePhoto];

  return isLivePhoto;
}

- (unsigned)px_audioTrackFormat
{
  importAsset = [(PXImportItemViewModel *)self importAsset];
  trackFormat = [importAsset trackFormat];
  unsignedIntValue = [trackFormat unsignedIntValue];

  return unsignedIntValue;
}

- (NSNumber)px_whiteBalance
{
  importAsset = [(PXImportItemViewModel *)self importAsset];
  whiteBalance = [importAsset whiteBalance];

  return whiteBalance;
}

- (NSNumber)px_shutterSpeed
{
  importAsset = [(PXImportItemViewModel *)self importAsset];
  exposureTime = [importAsset exposureTime];

  return exposureTime;
}

- (NSNumber)px_meteringMode
{
  importAsset = [(PXImportItemViewModel *)self importAsset];
  meteringMode = [importAsset meteringMode];

  return meteringMode;
}

- (NSString)px_formattedCameraModel
{
  importAsset = [(PXImportItemViewModel *)self importAsset];
  formattedCameraModel = [importAsset formattedCameraModel];

  return formattedCameraModel;
}

- (NSString)px_model
{
  importAsset = [(PXImportItemViewModel *)self importAsset];
  cameraModel = [importAsset cameraModel];

  return cameraModel;
}

- (NSString)px_make
{
  importAsset = [(PXImportItemViewModel *)self importAsset];
  cameraMake = [importAsset cameraMake];

  return cameraMake;
}

- (NSString)px_lensModel
{
  importAsset = [(PXImportItemViewModel *)self importAsset];
  lensModel = [importAsset lensModel];

  return lensModel;
}

- (NSNumber)px_ISORating
{
  importAsset = [(PXImportItemViewModel *)self importAsset];
  focalLength = [importAsset focalLength];

  return focalLength;
}

- (NSNumber)px_digitalZoomRatio
{
  importAsset = [(PXImportItemViewModel *)self importAsset];
  digitalZoomRatio = [importAsset digitalZoomRatio];

  return digitalZoomRatio;
}

- (NSNumber)px_focalLengthIn35mm
{
  importAsset = [(PXImportItemViewModel *)self importAsset];
  focalLengthIn35mm = [importAsset focalLengthIn35mm];

  return focalLengthIn35mm;
}

- (NSNumber)px_focalLength
{
  importAsset = [(PXImportItemViewModel *)self importAsset];
  focalLength = [importAsset focalLength];

  return focalLength;
}

- (NSNumber)px_flash
{
  importAsset = [(PXImportItemViewModel *)self importAsset];
  flashFired = [importAsset flashFired];

  return flashFired;
}

- (NSNumber)px_exposureBias
{
  importAsset = [(PXImportItemViewModel *)self importAsset];
  exposureBias = [importAsset exposureBias];

  return exposureBias;
}

- (NSNumber)px_aperture
{
  importAsset = [(PXImportItemViewModel *)self importAsset];
  fNumber = [importAsset fNumber];

  return fNumber;
}

- (NSString)px_codec
{
  importAsset = [(PXImportItemViewModel *)self importAsset];
  codec = [importAsset codec];

  return codec;
}

- (NSNumber)px_sampleRate
{
  importAsset = [(PXImportItemViewModel *)self importAsset];
  sampleRate = [importAsset sampleRate];

  return sampleRate;
}

- (NSNumber)px_bitRate
{
  importAsset = [(PXImportItemViewModel *)self importAsset];
  bitrate = [importAsset bitrate];

  return bitrate;
}

- (NSNumber)px_FPS
{
  importAsset = [(PXImportItemViewModel *)self importAsset];
  v3 = [importAsset fps];

  return v3;
}

- (NSNumber)px_duration
{
  importAsset = [(PXImportItemViewModel *)self importAsset];
  durationTimeInterval = [importAsset durationTimeInterval];

  return durationTimeInterval;
}

- (BOOL)px_supportsImageProperties
{
  importAsset = [(PXImportItemViewModel *)self importAsset];
  isImage = [importAsset isImage];

  return isImage;
}

- (NSString)px_burstUUID
{
  importAsset = [(PXImportItemViewModel *)self importAsset];
  burstUUID = [importAsset burstUUID];

  return burstUUID;
}

- (NSString)px_uniformTypeIdentifier
{
  importAsset = [(PXImportItemViewModel *)self importAsset];
  contentType = [importAsset contentType];
  identifier = [contentType identifier];

  return identifier;
}

- (PXIntSize_st)px_resolution
{
  importAsset = [(PXImportItemViewModel *)self importAsset];
  [importAsset exifPixelSize];
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
  importAsset = [(PXImportItemViewModel *)self importAsset];
  timeZone = [importAsset timeZone];

  return timeZone;
}

- (NSDate)px_creationDate
{
  importAsset = [(PXImportItemViewModel *)self importAsset];
  creationDate = [importAsset creationDate];

  return creationDate;
}

- (NSNumber)px_filesize
{
  v2 = MEMORY[0x1E696AD98];
  importAsset = [(PXImportItemViewModel *)self importAsset];
  v4 = [v2 numberWithUnsignedLongLong:{objc_msgSend(importAsset, "fileSize")}];

  return v4;
}

- (unint64_t)px_originalFileType
{
  px_originalType = [(PXImportItemViewModel *)self px_originalType];

  return [PXMetadataUtilities fileTypeForItem:self type:px_originalType];
}

- (unint64_t)px_fileType
{
  px_type = [(PXImportItemViewModel *)self px_type];

  return [PXMetadataUtilities fileTypeForItem:self type:px_type];
}

- (unint64_t)px_type
{
  importAsset = [(PXImportItemViewModel *)self importAsset];
  isJPEG = [importAsset isJPEG];

  if (isJPEG)
  {
    return 0;
  }

  importAsset2 = [(PXImportItemViewModel *)self importAsset];
  isHEIF = [importAsset2 isHEIF];

  if (isHEIF)
  {
    return 1;
  }

  importAsset3 = [(PXImportItemViewModel *)self importAsset];
  isRAW = [importAsset3 isRAW];

  if (isRAW)
  {
    return 2;
  }

  importAsset4 = [(PXImportItemViewModel *)self importAsset];
  isGIF = [importAsset4 isGIF];

  if (isGIF)
  {
    return 3;
  }

  importAsset5 = [(PXImportItemViewModel *)self importAsset];
  isPNG = [importAsset5 isPNG];

  if (isPNG)
  {
    return 4;
  }

  importAsset6 = [(PXImportItemViewModel *)self importAsset];
  isTIFF = [importAsset6 isTIFF];

  if (isTIFF)
  {
    return 5;
  }

  importAsset7 = [(PXImportItemViewModel *)self importAsset];
  isPDF = [importAsset7 isPDF];

  if (isPDF)
  {
    return 6;
  }

  importAsset8 = [(PXImportItemViewModel *)self importAsset];
  isPSD = [importAsset8 isPSD];

  if (isPSD)
  {
    return 7;
  }

  importAsset9 = [(PXImportItemViewModel *)self importAsset];
  isJPEG2000 = [importAsset9 isJPEG2000];

  if (isJPEG2000)
  {
    return 8;
  }

  importAsset10 = [(PXImportItemViewModel *)self importAsset];
  isAudio = [importAsset10 isAudio];

  if (isAudio)
  {
    return 9;
  }

  importAsset11 = [(PXImportItemViewModel *)self importAsset];
  isMovie = [importAsset11 isMovie];

  if (isMovie)
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
  importAsset = [(PXImportItemViewModel *)self importAsset];
  isMovie = [importAsset isMovie];

  return isMovie;
}

- (BOOL)px_isAudio
{
  importAsset = [(PXImportItemViewModel *)self importAsset];
  isAudio = [importAsset isAudio];

  return isAudio;
}

- (BOOL)px_isImage
{
  importAsset = [(PXImportItemViewModel *)self importAsset];
  isImage = [importAsset isImage];

  return isImage;
}

@end