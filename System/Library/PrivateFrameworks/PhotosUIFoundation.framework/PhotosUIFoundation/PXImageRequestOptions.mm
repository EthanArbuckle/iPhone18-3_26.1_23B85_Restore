@interface PXImageRequestOptions
- (CGRect)normalizedCropRect;
- (CGSize)fallbackTargetSizeIfRequestedSizeNotLocallyAvailable;
- (PXImageRequestOptions)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)copyPropertiesToOptions:(id)options;
- (void)setAllowSecondaryDegradedImage:(BOOL)image;
@end

@implementation PXImageRequestOptions

- (PXImageRequestOptions)init
{
  v7.receiver = self;
  v7.super_class = PXImageRequestOptions;
  v2 = [(PXImageRequestOptions *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_loadingMode = 0;
    v2->_version = 0;
    v2->_deliveryMode = 0;
    v4 = *(MEMORY[0x1E695F058] + 16);
    v2->_normalizedCropRect.origin = *MEMORY[0x1E695F058];
    v2->_normalizedCropRect.size = v4;
    v2->_networkAccessAllowed = 0;
    progressHandler = v2->_progressHandler;
    v2->_resizeMode = 1;
    v2->_progressHandler = 0;

    v3->_fallbackTargetSizeIfRequestedSizeNotLocallyAvailable = *MEMORY[0x1E695F060];
    v3->_allowPlaceholder = 0;
    v3->_targetHDRHeadroom = 1.0;
    *&v3->_chooseAlchemist = 0;
    *&v3->_useAsyncForFastOpportunisticResult = 0;
    v3->_opportunisticDegradedImagesToReturn = 1;
  }

  return v3;
}

- (CGRect)normalizedCropRect
{
  x = self->_normalizedCropRect.origin.x;
  y = self->_normalizedCropRect.origin.y;
  width = self->_normalizedCropRect.size.width;
  height = self->_normalizedCropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)fallbackTargetSizeIfRequestedSizeNotLocallyAvailable
{
  width = self->_fallbackTargetSizeIfRequestedSizeNotLocallyAvailable.width;
  height = self->_fallbackTargetSizeIfRequestedSizeNotLocallyAvailable.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)copyPropertiesToOptions:(id)options
{
  version = self->_version;
  optionsCopy = options;
  [optionsCopy setVersion:version];
  [optionsCopy setAllowPlaceholder:self->_allowPlaceholder];
  [optionsCopy setDeliveryMode:self->_deliveryMode];
  [optionsCopy setResizeMode:self->_resizeMode];
  [optionsCopy setNormalizedCropRect:{self->_normalizedCropRect.origin.x, self->_normalizedCropRect.origin.y, self->_normalizedCropRect.size.width, self->_normalizedCropRect.size.height}];
  [optionsCopy setNetworkAccessAllowed:self->_networkAccessAllowed];
  [optionsCopy setSynchronous:self->_synchronous];
  [optionsCopy setProgressHandler:self->_progressHandler];
  [optionsCopy setFallbackTargetSizeIfRequestedSizeNotLocallyAvailable:{self->_fallbackTargetSizeIfRequestedSizeNotLocallyAvailable.width, self->_fallbackTargetSizeIfRequestedSizeNotLocallyAvailable.height}];
  [optionsCopy setLoadingMode:self->_loadingMode];
  [optionsCopy setResultHandlerQueue:self->_resultHandlerQueue];
  [optionsCopy setDownloadIntent:self->_downloadIntent];
  [optionsCopy setDownloadPriority:self->_downloadPriority];
  [optionsCopy setUseLowMemoryMode:self->_useLowMemoryMode];
  [optionsCopy setPreferHDR:self->_preferHDR];
  [optionsCopy setTargetHDRHeadroom:self->_targetHDRHeadroom];
  [optionsCopy setIncludeHDRGainMap:self->_includeHDRGainMap];
  [optionsCopy setChooseAlchemist:self->_chooseAlchemist];
  [optionsCopy setUseAsyncForFastOpportunisticResult:self->_useAsyncForFastOpportunisticResult];
  [optionsCopy setOpportunisticDegradedImagesToReturn:self->_opportunisticDegradedImagesToReturn];
  [optionsCopy setAvoidDisplayingProgressUpdates:self->_avoidDisplayingProgressUpdates];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [(PXImageRequestOptions *)self copyPropertiesToOptions:v4];
  return v4;
}

- (void)setAllowSecondaryDegradedImage:(BOOL)image
{
  imageCopy = image;
  v5 = [(PXImageRequestOptions *)self opportunisticDegradedImagesToReturn]& 0xFFFFFFFFFFFFFFFDLL;
  v6 = 2;
  if (!imageCopy)
  {
    v6 = 0;
  }

  [(PXImageRequestOptions *)self setOpportunisticDegradedImagesToReturn:v5 | v6];
}

@end