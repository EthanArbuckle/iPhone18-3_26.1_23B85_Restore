@interface TSDImageDataHelper
+ (id)thumbnailImageDataForImageData:(id)a3;
- (BOOL)prefersHDRRendering;
- (CGSize)naturalSize;
- (TSDImageDataHelper)initWithImageData:(id)a3;
- (void)generateThumbnailImageDataWithCompletionHandler:(id)a3;
@end

@implementation TSDImageDataHelper

- (TSDImageDataHelper)initWithImageData:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TSDImageDataHelper;
  v6 = [(TSDImageDataHelper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_imageData, a3);
  }

  return v7;
}

- (CGSize)naturalSize
{
  v3 = objc_msgSend_imageData(self, a2, v2);
  objc_opt_class();
  v6 = objc_msgSend_attributes(v3, v4, v5);
  v7 = TSUDynamicCast();

  if (v7 && objc_msgSend_hasPixelSize(v7, v8, v9))
  {
    objc_msgSend_pixelSize(v7, v8, v9);
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v14 = objc_msgSend_sharedPool(TSDImageProviderPool, v8, v9);
    v16 = objc_msgSend_providerForData_shouldValidate_(v14, v15, v3, 1);

    objc_msgSend_naturalSize(v16, v17, v18);
    v11 = v21;
    v13 = v22;
    if (v21 != *MEMORY[0x277CBF3A8] || v22 != *(MEMORY[0x277CBF3A8] + 8))
    {
      if (v7)
      {
        v24 = objc_msgSend_copyWithPixelSize_(v7, v19, v20, v21, v22);

        v7 = v24;
        objc_msgSend_setAttributes_(v3, v25, v24);
      }

      else
      {
        v26 = [TSDImageDataAttributes alloc];
        v7 = objc_msgSend_initWithPixelSize_(v26, v27, v28, v11, v13);
        objc_msgSend_setAttributes_(v3, v29, v7);
      }
    }
  }

  v30 = v11;
  v31 = v13;
  result.height = v31;
  result.width = v30;
  return result;
}

- (BOOL)prefersHDRRendering
{
  v4 = objc_msgSend_sharedPool(TSDImageProviderPool, a2, v2);
  v7 = objc_msgSend_imageData(self, v5, v6);
  v9 = objc_msgSend_providerForData_shouldValidate_(v4, v8, v7, 1);

  LOBYTE(v7) = objc_msgSend_prefersHDRRendering(v9, v10, v11);
  return v7;
}

- (void)generateThumbnailImageDataWithCompletionHandler:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_imageData(self, v5, v6);
  v10 = objc_msgSend_context(v7, v8, v9);
  v13 = objc_msgSend_documentObject(v10, v11, v12);

  if (!v13)
  {
    goto LABEL_6;
  }

  if (objc_msgSend_isReadable(v7, v14, v15))
  {
    v18 = objc_opt_class();
    v20 = objc_msgSend_thumbnailImageDataForImageData_(v18, v19, v7);
LABEL_7:
    v4[2](v4, v20);
    goto LABEL_8;
  }

  if (!objc_msgSend_needsDownload(v7, v16, v17))
  {
LABEL_6:
    v20 = 0;
    goto LABEL_7;
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_2767C0194;
  v22[3] = &unk_27A6CDEE0;
  v23 = v4;
  objc_msgSend_tsck_addDownloadObserver_lockMode_options_completionHandler_(v7, v21, self, 2, 2, v22);
  v20 = v23;
LABEL_8:
}

+ (id)thumbnailImageDataForImageData:(id)a3
{
  v3 = a3;
  v4 = TSDResampleImageData(v3, 131, 256.0, 256.0);

  if (v4 == v3)
  {

    v4 = 0;
  }

  return v4;
}

@end