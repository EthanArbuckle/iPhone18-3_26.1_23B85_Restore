@interface PLResourceRecipeGenerationOptions
- (PLResourceRecipeGenerationOptions)initWithVersion:(unsigned int)version taskIdentifier:(id)identifier reason:(id)reason;
- (PLResourceRecipeGenerationOptions)initWithVersion:(unsigned int)version taskIdentifier:(id)identifier reason:(id)reason clientBundleID:(id)d deferredPhotoFinalizer:(id)finalizer;
- (PLResourceRecipeGenerationOptions)initWithVersion:(unsigned int)version taskIdentifier:(id)identifier reason:(id)reason imageConversionServiceClient:(id)client videoConversionServiceClient:(id)serviceClient conversionServiceOptions:(id)options;
- (PLResourceRecipeGenerationOptions)initWithVersion:(unsigned int)version taskIdentifier:(id)identifier reason:(id)reason imageConversionServiceClient:(id)client videoConversionServiceClient:(id)serviceClient conversionServiceOptions:(id)options deferredPhotoFinalizer:(id)finalizer clientBundleID:(id)self0;
- (PLResourceRecipeGenerationOptions)initWithVersion:(unsigned int)version taskIdentifier:(id)identifier reason:(id)reason networkAccessAllowed:(BOOL)allowed clientBundleID:(id)d;
@end

@implementation PLResourceRecipeGenerationOptions

- (PLResourceRecipeGenerationOptions)initWithVersion:(unsigned int)version taskIdentifier:(id)identifier reason:(id)reason networkAccessAllowed:(BOOL)allowed clientBundleID:(id)d
{
  v10 = *&version;
  dCopy = d;
  v13 = [(PLResourceRecipeGenerationOptions *)self initWithVersion:v10 taskIdentifier:identifier reason:reason];
  v14 = v13;
  if (v13)
  {
    v13->_networkAccessAllowed = allowed;
    v15 = [dCopy copy];
    clientBundleID = v14->_clientBundleID;
    v14->_clientBundleID = v15;
  }

  return v14;
}

- (PLResourceRecipeGenerationOptions)initWithVersion:(unsigned int)version taskIdentifier:(id)identifier reason:(id)reason imageConversionServiceClient:(id)client videoConversionServiceClient:(id)serviceClient conversionServiceOptions:(id)options deferredPhotoFinalizer:(id)finalizer clientBundleID:(id)self0
{
  v15 = *&version;
  finalizerCopy = finalizer;
  dCopy = d;
  v19 = [(PLResourceRecipeGenerationOptions *)self initWithVersion:v15 taskIdentifier:identifier reason:reason imageConversionServiceClient:client videoConversionServiceClient:serviceClient conversionServiceOptions:options];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_deferredPhotoFinalizer, finalizer);
    v21 = [dCopy copy];
    clientBundleID = v20->_clientBundleID;
    v20->_clientBundleID = v21;
  }

  return v20;
}

- (PLResourceRecipeGenerationOptions)initWithVersion:(unsigned int)version taskIdentifier:(id)identifier reason:(id)reason clientBundleID:(id)d deferredPhotoFinalizer:(id)finalizer
{
  v10 = *&version;
  dCopy = d;
  finalizerCopy = finalizer;
  v14 = [(PLResourceRecipeGenerationOptions *)self initWithVersion:v10 taskIdentifier:identifier reason:reason];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_deferredPhotoFinalizer, finalizer);
    v16 = [dCopy copy];
    clientBundleID = v15->_clientBundleID;
    v15->_clientBundleID = v16;
  }

  return v15;
}

- (PLResourceRecipeGenerationOptions)initWithVersion:(unsigned int)version taskIdentifier:(id)identifier reason:(id)reason imageConversionServiceClient:(id)client videoConversionServiceClient:(id)serviceClient conversionServiceOptions:(id)options
{
  v13 = *&version;
  clientCopy = client;
  serviceClientCopy = serviceClient;
  optionsCopy = options;
  v18 = [(PLResourceRecipeGenerationOptions *)self initWithVersion:v13 taskIdentifier:identifier reason:reason];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_imageConversionServiceClient, client);
    objc_storeStrong(&v19->_videoConversionServiceClient, serviceClient);
    objc_storeStrong(&v19->_conversionServiceOptions, options);
  }

  return v19;
}

- (PLResourceRecipeGenerationOptions)initWithVersion:(unsigned int)version taskIdentifier:(id)identifier reason:(id)reason
{
  identifierCopy = identifier;
  reasonCopy = reason;
  v17.receiver = self;
  v17.super_class = PLResourceRecipeGenerationOptions;
  v10 = [(PLResourceRecipeGenerationOptions *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_version = version;
    v12 = [identifierCopy copy];
    taskIdentifier = v11->_taskIdentifier;
    v11->_taskIdentifier = v12;

    v14 = [reasonCopy copy];
    reason = v11->_reason;
    v11->_reason = v14;
  }

  return v11;
}

@end