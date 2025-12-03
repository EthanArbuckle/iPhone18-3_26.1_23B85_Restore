@interface PXLivePhotoRequestOptions
- (id)copyWithZone:(_NSZone *)zone;
- (id)photoKitRequestOptions;
@end

@implementation PXLivePhotoRequestOptions

- (id)photoKitRequestOptions
{
  v3 = objc_alloc_init(MEMORY[0x1E69788D8]);
  [v3 setDeliveryMode:{-[PXLivePhotoRequestOptions deliveryMode](self, "deliveryMode")}];
  [v3 setNetworkAccessAllowed:{-[PXLivePhotoRequestOptions isNetworkAccessAllowed](self, "isNetworkAccessAllowed")}];
  [v3 setDownloadPriority:{-[PXLivePhotoRequestOptions downloadPriority](self, "downloadPriority")}];
  [v3 setDownloadIntent:{-[PXLivePhotoRequestOptions downloadIntent](self, "downloadIntent")}];
  [v3 setPreferHDR:{-[PXLivePhotoRequestOptions preferHDR](self, "preferHDR")}];
  progressHandler = [(PXLivePhotoRequestOptions *)self progressHandler];
  [v3 setProgressHandler:progressHandler];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setDeliveryMode:self->_deliveryMode];
  [v4 setNetworkAccessAllowed:self->_networkAccessAllowed];
  [v4 setDownloadPriority:self->_downloadPriority];
  [v4 setDownloadIntent:self->_downloadIntent];
  [v4 setPreferHDR:{-[PXLivePhotoRequestOptions preferHDR](self, "preferHDR")}];
  [v4 setProgressHandler:self->_progressHandler];
  return v4;
}

@end