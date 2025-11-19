@interface PXImageRequestOptions
- (CGRect)normalizedCropRect;
- (CGSize)fallbackTargetSizeIfRequestedSizeNotLocallyAvailable;
- (PXImageRequestOptions)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)copyPropertiesToOptions:(id)a3;
- (void)setAllowSecondaryDegradedImage:(BOOL)a3;
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

- (void)copyPropertiesToOptions:(id)a3
{
  version = self->_version;
  v5 = a3;
  [v5 setVersion:version];
  [v5 setAllowPlaceholder:self->_allowPlaceholder];
  [v5 setDeliveryMode:self->_deliveryMode];
  [v5 setResizeMode:self->_resizeMode];
  [v5 setNormalizedCropRect:{self->_normalizedCropRect.origin.x, self->_normalizedCropRect.origin.y, self->_normalizedCropRect.size.width, self->_normalizedCropRect.size.height}];
  [v5 setNetworkAccessAllowed:self->_networkAccessAllowed];
  [v5 setSynchronous:self->_synchronous];
  [v5 setProgressHandler:self->_progressHandler];
  [v5 setFallbackTargetSizeIfRequestedSizeNotLocallyAvailable:{self->_fallbackTargetSizeIfRequestedSizeNotLocallyAvailable.width, self->_fallbackTargetSizeIfRequestedSizeNotLocallyAvailable.height}];
  [v5 setLoadingMode:self->_loadingMode];
  [v5 setResultHandlerQueue:self->_resultHandlerQueue];
  [v5 setDownloadIntent:self->_downloadIntent];
  [v5 setDownloadPriority:self->_downloadPriority];
  [v5 setUseLowMemoryMode:self->_useLowMemoryMode];
  [v5 setPreferHDR:self->_preferHDR];
  [v5 setTargetHDRHeadroom:self->_targetHDRHeadroom];
  [v5 setIncludeHDRGainMap:self->_includeHDRGainMap];
  [v5 setChooseAlchemist:self->_chooseAlchemist];
  [v5 setUseAsyncForFastOpportunisticResult:self->_useAsyncForFastOpportunisticResult];
  [v5 setOpportunisticDegradedImagesToReturn:self->_opportunisticDegradedImagesToReturn];
  [v5 setAvoidDisplayingProgressUpdates:self->_avoidDisplayingProgressUpdates];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [(PXImageRequestOptions *)self copyPropertiesToOptions:v4];
  return v4;
}

- (void)setAllowSecondaryDegradedImage:(BOOL)a3
{
  v3 = a3;
  v5 = [(PXImageRequestOptions *)self opportunisticDegradedImagesToReturn]& 0xFFFFFFFFFFFFFFFDLL;
  v6 = 2;
  if (!v3)
  {
    v6 = 0;
  }

  [(PXImageRequestOptions *)self setOpportunisticDegradedImagesToReturn:v5 | v6];
}

@end