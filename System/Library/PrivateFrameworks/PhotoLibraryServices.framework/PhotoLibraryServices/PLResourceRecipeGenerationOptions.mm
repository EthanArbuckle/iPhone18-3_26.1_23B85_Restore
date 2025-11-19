@interface PLResourceRecipeGenerationOptions
- (PLResourceRecipeGenerationOptions)initWithVersion:(unsigned int)a3 taskIdentifier:(id)a4 reason:(id)a5;
- (PLResourceRecipeGenerationOptions)initWithVersion:(unsigned int)a3 taskIdentifier:(id)a4 reason:(id)a5 clientBundleID:(id)a6 deferredPhotoFinalizer:(id)a7;
- (PLResourceRecipeGenerationOptions)initWithVersion:(unsigned int)a3 taskIdentifier:(id)a4 reason:(id)a5 imageConversionServiceClient:(id)a6 videoConversionServiceClient:(id)a7 conversionServiceOptions:(id)a8;
- (PLResourceRecipeGenerationOptions)initWithVersion:(unsigned int)a3 taskIdentifier:(id)a4 reason:(id)a5 imageConversionServiceClient:(id)a6 videoConversionServiceClient:(id)a7 conversionServiceOptions:(id)a8 deferredPhotoFinalizer:(id)a9 clientBundleID:(id)a10;
- (PLResourceRecipeGenerationOptions)initWithVersion:(unsigned int)a3 taskIdentifier:(id)a4 reason:(id)a5 networkAccessAllowed:(BOOL)a6 clientBundleID:(id)a7;
@end

@implementation PLResourceRecipeGenerationOptions

- (PLResourceRecipeGenerationOptions)initWithVersion:(unsigned int)a3 taskIdentifier:(id)a4 reason:(id)a5 networkAccessAllowed:(BOOL)a6 clientBundleID:(id)a7
{
  v10 = *&a3;
  v12 = a7;
  v13 = [(PLResourceRecipeGenerationOptions *)self initWithVersion:v10 taskIdentifier:a4 reason:a5];
  v14 = v13;
  if (v13)
  {
    v13->_networkAccessAllowed = a6;
    v15 = [v12 copy];
    clientBundleID = v14->_clientBundleID;
    v14->_clientBundleID = v15;
  }

  return v14;
}

- (PLResourceRecipeGenerationOptions)initWithVersion:(unsigned int)a3 taskIdentifier:(id)a4 reason:(id)a5 imageConversionServiceClient:(id)a6 videoConversionServiceClient:(id)a7 conversionServiceOptions:(id)a8 deferredPhotoFinalizer:(id)a9 clientBundleID:(id)a10
{
  v15 = *&a3;
  v17 = a9;
  v18 = a10;
  v19 = [(PLResourceRecipeGenerationOptions *)self initWithVersion:v15 taskIdentifier:a4 reason:a5 imageConversionServiceClient:a6 videoConversionServiceClient:a7 conversionServiceOptions:a8];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_deferredPhotoFinalizer, a9);
    v21 = [v18 copy];
    clientBundleID = v20->_clientBundleID;
    v20->_clientBundleID = v21;
  }

  return v20;
}

- (PLResourceRecipeGenerationOptions)initWithVersion:(unsigned int)a3 taskIdentifier:(id)a4 reason:(id)a5 clientBundleID:(id)a6 deferredPhotoFinalizer:(id)a7
{
  v10 = *&a3;
  v12 = a6;
  v13 = a7;
  v14 = [(PLResourceRecipeGenerationOptions *)self initWithVersion:v10 taskIdentifier:a4 reason:a5];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_deferredPhotoFinalizer, a7);
    v16 = [v12 copy];
    clientBundleID = v15->_clientBundleID;
    v15->_clientBundleID = v16;
  }

  return v15;
}

- (PLResourceRecipeGenerationOptions)initWithVersion:(unsigned int)a3 taskIdentifier:(id)a4 reason:(id)a5 imageConversionServiceClient:(id)a6 videoConversionServiceClient:(id)a7 conversionServiceOptions:(id)a8
{
  v13 = *&a3;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = [(PLResourceRecipeGenerationOptions *)self initWithVersion:v13 taskIdentifier:a4 reason:a5];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_imageConversionServiceClient, a6);
    objc_storeStrong(&v19->_videoConversionServiceClient, a7);
    objc_storeStrong(&v19->_conversionServiceOptions, a8);
  }

  return v19;
}

- (PLResourceRecipeGenerationOptions)initWithVersion:(unsigned int)a3 taskIdentifier:(id)a4 reason:(id)a5
{
  v8 = a4;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = PLResourceRecipeGenerationOptions;
  v10 = [(PLResourceRecipeGenerationOptions *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_version = a3;
    v12 = [v8 copy];
    taskIdentifier = v11->_taskIdentifier;
    v11->_taskIdentifier = v12;

    v14 = [v9 copy];
    reason = v11->_reason;
    v11->_reason = v14;
  }

  return v11;
}

@end