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
  v2 = [a1 underlyingPhotoKitImageRequestOptions];
  if (!v2)
  {
    v2 = objc_alloc_init(MEMORY[0x1E6978868]);
    [a1 copyPropertiesToPhotoKitOptions:v2];
  }

  return v2;
}

- (void)copyPropertiesFromPhotoKitOptions:()PhotoKit
{
  v4 = a3;
  [a1 setVersion:{objc_msgSend(objc_opt_class(), "pxImageRequestOptionsVersionFromPHImageRequestOptionsVersion:", objc_msgSend(v4, "version"))}];
  [a1 setAllowPlaceholder:{objc_msgSend(v4, "allowPlaceholder")}];
  [a1 setDeliveryMode:{objc_msgSend(objc_opt_class(), "pxImageRequestOptionsDeliveryModeFromPHImageRequestOptionsDeliveryMode:", objc_msgSend(v4, "deliveryMode"))}];
  [a1 setResizeMode:{objc_msgSend(objc_opt_class(), "pxImageRequestOptionsResizeModeFromPHImageRequestOptionsResizeMode:", objc_msgSend(v4, "resizeMode"))}];
  [v4 normalizedCropRect];
  [a1 setNormalizedCropRect:?];
  [a1 setNetworkAccessAllowed:{objc_msgSend(v4, "isNetworkAccessAllowed")}];
  [a1 setSynchronous:{objc_msgSend(v4, "isSynchronous")}];
  v5 = [v4 progressHandler];
  [a1 setProgressHandler:v5];

  [a1 setAllowSecondaryDegradedImage:{objc_msgSend(v4, "allowSecondaryDegradedImage")}];
  [v4 fallbackTargetSizeIfRequestedSizeNotLocallyAvailable];
  [a1 setFallbackTargetSizeIfRequestedSizeNotLocallyAvailable:?];
  [a1 setLoadingMode:{objc_msgSend(v4, "loadingMode")}];
  v6 = [v4 resultHandlerQueue];
  [a1 setResultHandlerQueue:v6];

  [a1 setDownloadIntent:{objc_msgSend(v4, "downloadIntent")}];
  [a1 setDownloadPriority:{objc_msgSend(v4, "downloadPriority")}];
  [a1 setUseLowMemoryMode:{objc_msgSend(v4, "useLowMemoryMode")}];
  [a1 setPreferHDR:{objc_msgSend(v4, "preferHDR")}];
  [v4 targetHDRHeadroom];
  [a1 setTargetHDRHeadroom:?];
  [a1 setIncludeHDRGainMap:{objc_msgSend(v4, "includeHDRGainMap")}];
  [a1 setChooseAlchemist:{objc_msgSend(v4, "chooseAlchemist")}];
  [a1 setUseAsyncForFastOpportunisticResult:{objc_msgSend(v4, "useAsyncForFastOpportunisticResult")}];
  [a1 setOpportunisticDegradedImagesToReturn:{objc_msgSend(objc_opt_class(), "pxImageRequestOptionsDegradedImagesToReturnFromPHImageRequestOptionsDegradedImagesToReturn:", objc_msgSend(v4, "opportunisticDegradedImagesToReturn"))}];
  v7 = [v4 contextualVideoThumbnailIdentifier];

  [a1 setContextualVideoThumbnailIdentifier:v7];
}

- (void)copyPropertiesToPhotoKitOptions:()PhotoKit
{
  v4 = a3;
  [v4 setVersion:{objc_msgSend(objc_opt_class(), "phImageRequestOptionsVersionFromPXImageRequestOptionsVersion:", objc_msgSend(a1, "version"))}];
  [v4 setAllowPlaceholder:{objc_msgSend(a1, "allowPlaceholder")}];
  [v4 setDeliveryMode:{objc_msgSend(objc_opt_class(), "phImageRequestOptionsDeliveryModeFromPXImageRequestOptionsDeliveryMode:", objc_msgSend(a1, "deliveryMode"))}];
  [v4 setResizeMode:{objc_msgSend(objc_opt_class(), "phImageRequestOptionsResizeModeFromPXImageRequestOptionsResizeMode:", objc_msgSend(a1, "resizeMode"))}];
  [a1 normalizedCropRect];
  [v4 setNormalizedCropRect:?];
  [v4 setNetworkAccessAllowed:{objc_msgSend(a1, "isNetworkAccessAllowed")}];
  [v4 setSynchronous:{objc_msgSend(a1, "isSynchronous")}];
  v5 = [a1 progressHandler];
  [v4 setProgressHandler:v5];

  [v4 setAllowSecondaryDegradedImage:{objc_msgSend(a1, "allowSecondaryDegradedImage")}];
  [a1 fallbackTargetSizeIfRequestedSizeNotLocallyAvailable];
  [v4 setFallbackTargetSizeIfRequestedSizeNotLocallyAvailable:?];
  [v4 setLoadingMode:{objc_msgSend(a1, "loadingMode")}];
  v6 = [a1 resultHandlerQueue];
  [v4 setResultHandlerQueue:v6];

  [v4 setDownloadIntent:{objc_msgSend(a1, "downloadIntent")}];
  [v4 setDownloadPriority:{objc_msgSend(a1, "downloadPriority")}];
  [v4 setUseLowMemoryMode:{objc_msgSend(a1, "useLowMemoryMode")}];
  [v4 setPreferHDR:{objc_msgSend(a1, "preferHDR")}];
  [a1 targetHDRHeadroom];
  [v4 setTargetHDRHeadroom:?];
  [v4 setIncludeHDRGainMap:{objc_msgSend(a1, "includeHDRGainMap")}];
  [v4 setChooseAlchemist:{objc_msgSend(a1, "chooseAlchemist")}];
  [v4 setUseAsyncForFastOpportunisticResult:{objc_msgSend(a1, "useAsyncForFastOpportunisticResult")}];
  [v4 setOpportunisticDegradedImagesToReturn:{objc_msgSend(objc_opt_class(), "phImageRequestOptionsDegradedImagesToReturnFromPXImageRequestOptionsDegradedImagesToReturn:", objc_msgSend(a1, "opportunisticDegradedImagesToReturn"))}];
  v7 = [a1 contextualVideoThumbnailIdentifier];
  [v4 setContextualVideoThumbnailIdentifier:v7];
}

- (void)setUnderlyingPhotoKitImageRequestOptions:()PhotoKit
{
  value = a3;
  [a1 copyPropertiesFromPhotoKitOptions:value];
  objc_setAssociatedObject(a1, UnderlyingPhotoKitRequestOptionsKey, value, 3);
}

- (void)initWithUnderlyingPhotoKitImageRequestOptions:()PhotoKit
{
  v4 = a3;
  v5 = [a1 init];
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
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:a1 file:@"PXImageRequestOptions+PhotoKit.m" lineNumber:181 description:{@"Unexpected PH value %ti", a3}];

    abort();
  }

  return a3;
}

+ (unint64_t)phImageRequestOptionsResizeModeFromPXImageRequestOptionsResizeMode:()PhotoKit
{
  if (a3 >= 3)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:a1 file:@"PXImageRequestOptions+PhotoKit.m" lineNumber:168 description:{@"Unexpected PX value %ti", a3}];

    abort();
  }

  return a3;
}

+ (uint64_t)pxImageRequestOptionsDeliveryModeFromPHImageRequestOptionsDeliveryMode:()PhotoKit
{
  if (a3 >= 6 || ((0x27u >> a3) & 1) == 0)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:a1 file:@"PXImageRequestOptions+PhotoKit.m" lineNumber:155 description:{@"Unexpected PH value %ti", a3}];

    abort();
  }

  return qword_1A53826D8[a3];
}

+ (uint64_t)phImageRequestOptionsDeliveryModeFromPXImageRequestOptionsDeliveryMode:()PhotoKit
{
  if (a3 >= 4)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:a1 file:@"PXImageRequestOptions+PhotoKit.m" lineNumber:140 description:{@"Unexpected PX value %ti", a3}];

    abort();
  }

  return qword_1A53826B8[a3];
}

+ (unint64_t)pxImageRequestOptionsVersionFromPHImageRequestOptionsVersion:()PhotoKit
{
  if (a3 >= 3)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:a1 file:@"PXImageRequestOptions+PhotoKit.m" lineNumber:125 description:{@"Unexpected PH value %ti", a3}];

    abort();
  }

  return a3;
}

+ (unint64_t)phImageRequestOptionsVersionFromPXImageRequestOptionsVersion:()PhotoKit
{
  if (a3 >= 3)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:a1 file:@"PXImageRequestOptions+PhotoKit.m" lineNumber:112 description:{@"Unexpected PX value %ti", a3}];

    abort();
  }

  return a3;
}

@end