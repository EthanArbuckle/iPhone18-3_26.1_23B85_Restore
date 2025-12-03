@interface PXImageRequestOptions(PhotoKit)
+ (uint64_t)phImageRequestOptionsDeliveryModeFromPXImageRequestOptionsDeliveryMode:()PhotoKit;
+ (uint64_t)pxImageRequestOptionsDeliveryModeFromPHImageRequestOptionsDeliveryMode:()PhotoKit;
+ (unint64_t)phImageRequestOptionsResizeModeFromPXImageRequestOptionsResizeMode:()PhotoKit;
+ (unint64_t)phImageRequestOptionsVersionFromPXImageRequestOptionsVersion:()PhotoKit;
+ (unint64_t)pxImageRequestOptionsResizeModeFromPHImageRequestOptionsResizeMode:()PhotoKit;
+ (unint64_t)pxImageRequestOptionsVersionFromPHImageRequestOptionsVersion:()PhotoKit;
- (id)photoKitRequestOptions;
- (void)copyPropertiesFromPhotoKitOptions:()PhotoKit;
- (void)copyPropertiesToPhotoKitOptions:()PhotoKit;
- (void)initWithUnderlyingPhotoKitImageRequestOptions:()PhotoKit;
- (void)setUnderlyingPhotoKitImageRequestOptions:()PhotoKit;
@end

@implementation PXImageRequestOptions(PhotoKit)

- (id)photoKitRequestOptions
{
  underlyingPhotoKitImageRequestOptions = [self underlyingPhotoKitImageRequestOptions];
  if (!underlyingPhotoKitImageRequestOptions)
  {
    underlyingPhotoKitImageRequestOptions = objc_alloc_init(MEMORY[0x1E6978868]);
    [self copyPropertiesToPhotoKitOptions:underlyingPhotoKitImageRequestOptions];
  }

  return underlyingPhotoKitImageRequestOptions;
}

- (void)copyPropertiesFromPhotoKitOptions:()PhotoKit
{
  v4 = a3;
  [self setVersion:{objc_msgSend(objc_opt_class(), "pxImageRequestOptionsVersionFromPHImageRequestOptionsVersion:", objc_msgSend(v4, "version"))}];
  [self setAllowPlaceholder:{objc_msgSend(v4, "allowPlaceholder")}];
  [self setDeliveryMode:{objc_msgSend(objc_opt_class(), "pxImageRequestOptionsDeliveryModeFromPHImageRequestOptionsDeliveryMode:", objc_msgSend(v4, "deliveryMode"))}];
  [self setResizeMode:{objc_msgSend(objc_opt_class(), "pxImageRequestOptionsResizeModeFromPHImageRequestOptionsResizeMode:", objc_msgSend(v4, "resizeMode"))}];
  [v4 normalizedCropRect];
  [self setNormalizedCropRect:?];
  [self setNetworkAccessAllowed:{objc_msgSend(v4, "isNetworkAccessAllowed")}];
  [self setSynchronous:{objc_msgSend(v4, "isSynchronous")}];
  progressHandler = [v4 progressHandler];
  [self setProgressHandler:progressHandler];

  [self setAllowSecondaryDegradedImage:{objc_msgSend(v4, "allowSecondaryDegradedImage")}];
  [v4 fallbackTargetSizeIfRequestedSizeNotLocallyAvailable];
  [self setFallbackTargetSizeIfRequestedSizeNotLocallyAvailable:?];
  [self setLoadingMode:{objc_msgSend(v4, "loadingMode")}];
  resultHandlerQueue = [v4 resultHandlerQueue];
  [self setResultHandlerQueue:resultHandlerQueue];

  [self setDownloadIntent:{objc_msgSend(v4, "downloadIntent")}];
  [self setDownloadPriority:{objc_msgSend(v4, "downloadPriority")}];
  [self setUseLowMemoryMode:{objc_msgSend(v4, "useLowMemoryMode")}];
  [self setPreferHDR:{objc_msgSend(v4, "preferHDR")}];
  [v4 targetHDRHeadroom];
  [self setTargetHDRHeadroom:?];
  [self setIncludeHDRGainMap:{objc_msgSend(v4, "includeHDRGainMap")}];
  [self setChooseAlchemist:{objc_msgSend(v4, "chooseAlchemist")}];
  [self setUseAsyncForFastOpportunisticResult:{objc_msgSend(v4, "useAsyncForFastOpportunisticResult")}];
  [self setOpportunisticDegradedImagesToReturn:{objc_msgSend(objc_opt_class(), "pxImageRequestOptionsDegradedImagesToReturnFromPHImageRequestOptionsDegradedImagesToReturn:", objc_msgSend(v4, "opportunisticDegradedImagesToReturn"))}];
  contextualVideoThumbnailIdentifier = [v4 contextualVideoThumbnailIdentifier];

  [self setContextualVideoThumbnailIdentifier:contextualVideoThumbnailIdentifier];
}

- (void)copyPropertiesToPhotoKitOptions:()PhotoKit
{
  v4 = a3;
  [v4 setVersion:{objc_msgSend(objc_opt_class(), "phImageRequestOptionsVersionFromPXImageRequestOptionsVersion:", objc_msgSend(self, "version"))}];
  [v4 setAllowPlaceholder:{objc_msgSend(self, "allowPlaceholder")}];
  [v4 setDeliveryMode:{objc_msgSend(objc_opt_class(), "phImageRequestOptionsDeliveryModeFromPXImageRequestOptionsDeliveryMode:", objc_msgSend(self, "deliveryMode"))}];
  [v4 setResizeMode:{objc_msgSend(objc_opt_class(), "phImageRequestOptionsResizeModeFromPXImageRequestOptionsResizeMode:", objc_msgSend(self, "resizeMode"))}];
  [self normalizedCropRect];
  [v4 setNormalizedCropRect:?];
  [v4 setNetworkAccessAllowed:{objc_msgSend(self, "isNetworkAccessAllowed")}];
  [v4 setSynchronous:{objc_msgSend(self, "isSynchronous")}];
  progressHandler = [self progressHandler];
  [v4 setProgressHandler:progressHandler];

  [v4 setAllowSecondaryDegradedImage:{objc_msgSend(self, "allowSecondaryDegradedImage")}];
  [self fallbackTargetSizeIfRequestedSizeNotLocallyAvailable];
  [v4 setFallbackTargetSizeIfRequestedSizeNotLocallyAvailable:?];
  [v4 setLoadingMode:{objc_msgSend(self, "loadingMode")}];
  resultHandlerQueue = [self resultHandlerQueue];
  [v4 setResultHandlerQueue:resultHandlerQueue];

  [v4 setDownloadIntent:{objc_msgSend(self, "downloadIntent")}];
  [v4 setDownloadPriority:{objc_msgSend(self, "downloadPriority")}];
  [v4 setUseLowMemoryMode:{objc_msgSend(self, "useLowMemoryMode")}];
  [v4 setPreferHDR:{objc_msgSend(self, "preferHDR")}];
  [self targetHDRHeadroom];
  [v4 setTargetHDRHeadroom:?];
  [v4 setIncludeHDRGainMap:{objc_msgSend(self, "includeHDRGainMap")}];
  [v4 setChooseAlchemist:{objc_msgSend(self, "chooseAlchemist")}];
  [v4 setUseAsyncForFastOpportunisticResult:{objc_msgSend(self, "useAsyncForFastOpportunisticResult")}];
  [v4 setOpportunisticDegradedImagesToReturn:{objc_msgSend(objc_opt_class(), "phImageRequestOptionsDegradedImagesToReturnFromPXImageRequestOptionsDegradedImagesToReturn:", objc_msgSend(self, "opportunisticDegradedImagesToReturn"))}];
  contextualVideoThumbnailIdentifier = [self contextualVideoThumbnailIdentifier];
  [v4 setContextualVideoThumbnailIdentifier:contextualVideoThumbnailIdentifier];
}

- (void)setUnderlyingPhotoKitImageRequestOptions:()PhotoKit
{
  value = a3;
  [self copyPropertiesFromPhotoKitOptions:value];
  objc_setAssociatedObject(self, UnderlyingPhotoKitRequestOptionsKey, value, 3);
}

- (void)initWithUnderlyingPhotoKitImageRequestOptions:()PhotoKit
{
  v4 = a3;
  v5 = [self init];
  v6 = v5;
  if (v5)
  {
    [v5 setUnderlyingPhotoKitImageRequestOptions:v4];
  }

  return v6;
}

+ (unint64_t)pxImageRequestOptionsResizeModeFromPHImageRequestOptionsResizeMode:()PhotoKit
{
  if (a3 >= 3)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXImageRequestOptions+PhotoKit.m" lineNumber:181 description:{@"Unexpected PH value %ti", a3}];

    abort();
  }

  return a3;
}

+ (unint64_t)phImageRequestOptionsResizeModeFromPXImageRequestOptionsResizeMode:()PhotoKit
{
  if (a3 >= 3)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXImageRequestOptions+PhotoKit.m" lineNumber:168 description:{@"Unexpected PX value %ti", a3}];

    abort();
  }

  return a3;
}

+ (uint64_t)pxImageRequestOptionsDeliveryModeFromPHImageRequestOptionsDeliveryMode:()PhotoKit
{
  if (a3 >= 6 || ((0x27u >> a3) & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXImageRequestOptions+PhotoKit.m" lineNumber:155 description:{@"Unexpected PH value %ti", a3}];

    abort();
  }

  return qword_1A53826D8[a3];
}

+ (uint64_t)phImageRequestOptionsDeliveryModeFromPXImageRequestOptionsDeliveryMode:()PhotoKit
{
  if (a3 >= 4)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXImageRequestOptions+PhotoKit.m" lineNumber:140 description:{@"Unexpected PX value %ti", a3}];

    abort();
  }

  return qword_1A53826B8[a3];
}

+ (unint64_t)pxImageRequestOptionsVersionFromPHImageRequestOptionsVersion:()PhotoKit
{
  if (a3 >= 3)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXImageRequestOptions+PhotoKit.m" lineNumber:125 description:{@"Unexpected PH value %ti", a3}];

    abort();
  }

  return a3;
}

+ (unint64_t)phImageRequestOptionsVersionFromPXImageRequestOptionsVersion:()PhotoKit
{
  if (a3 >= 3)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXImageRequestOptions+PhotoKit.m" lineNumber:112 description:{@"Unexpected PX value %ti", a3}];

    abort();
  }

  return a3;
}

@end