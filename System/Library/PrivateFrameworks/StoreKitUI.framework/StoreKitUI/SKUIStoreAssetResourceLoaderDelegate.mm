@interface SKUIStoreAssetResourceLoaderDelegate
+ (id)storeAssetResourceLoaderDelegateForPlayableAsset:(id)asset clientContext:(id)context;
- (BOOL)resourceLoader:(id)loader shouldWaitForLoadingOfRequestedResource:(id)resource;
@end

@implementation SKUIStoreAssetResourceLoaderDelegate

+ (id)storeAssetResourceLoaderDelegateForPlayableAsset:(id)asset clientContext:(id)context
{
  assetCopy = asset;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v7)
      {
        [(SKUIStoreAssetResourceLoaderDelegate *)v7 storeAssetResourceLoaderDelegateForPlayableAsset:v8 clientContext:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  if ([assetCopy shouldUseITunesStoreSecureKeyDelivery])
  {
    v15 = objc_alloc_init(SKUIStoreAssetResourceLoaderDelegate);
    v16 = v15;
    if (!v15)
    {
      goto LABEL_15;
    }

    v15->_shouldUseITunesStoreSecureKeyDelivery = 1;
  }

  else
  {
    clientContext = [assetCopy keyCertificateURL];
    keyServerURL = [assetCopy keyServerURL];
    v19 = keyServerURL;
    if (!clientContext || !keyServerURL || (v20 = objc_alloc_init(SKUIStoreAssetResourceLoaderDelegate)) == 0)
    {

      v16 = 0;
      goto LABEL_14;
    }

    v16 = v20;
    keyCertificateURL = v20->_keyCertificateURL;
    v20->_keyCertificateURL = clientContext;
    v22 = clientContext;

    keyServerURL = v16->_keyServerURL;
    v16->_keyServerURL = v19;

    v16->_isITunesStream = [assetCopy isITunesStream];
  }

  v24 = contextCopy;
  clientContext = v16->_clientContext;
  v16->_clientContext = v24;
LABEL_14:

LABEL_15:

  return v16;
}

- (BOOL)resourceLoader:(id)loader shouldWaitForLoadingOfRequestedResource:(id)resource
{
  loaderCopy = loader;
  resourceCopy = resource;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUIStoreAssetResourceLoaderDelegate *)v8 resourceLoader:v9 shouldWaitForLoadingOfRequestedResource:v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v16 = SSVAssetResourceLoadingRequestContainsSecureKeyDeliveryRequest();
  if (v16)
  {
    if (!self->_operationQueue)
    {
      v17 = objc_alloc_init(MEMORY[0x277CCABD8]);
      operationQueue = self->_operationQueue;
      self->_operationQueue = v17;

      [(NSOperationQueue *)self->_operationQueue setName:@"com.apple.StoreKitUI.SKUIStoreAssetResourceLoaderDelegate.operationQueue"];
      [(NSOperationQueue *)self->_operationQueue setMaxConcurrentOperationCount:3];
    }

    v46 = 0;
    v47 = &v46;
    v48 = 0x3032000000;
    v49 = __Block_byref_object_copy__4;
    v50 = __Block_byref_object_dispose__4;
    v51 = 0;
    v40 = 0;
    v41 = &v40;
    v42 = 0x3032000000;
    v43 = __Block_byref_object_copy__4;
    v44 = __Block_byref_object_dispose__4;
    v45 = 0;
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v39 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __95__SKUIStoreAssetResourceLoaderDelegate_resourceLoader_shouldWaitForLoadingOfRequestedResource___block_invoke;
    aBlock[3] = &unk_2781F9690;
    v33 = &v46;
    v34 = &v40;
    v35 = &v36;
    v31 = resourceCopy;
    selfCopy = self;
    v19 = _Block_copy(aBlock);
    if (self->_shouldUseITunesStoreSecureKeyDelivery)
    {
      *(v37 + 24) = 1;
      uRLBag = [(SKUIClientContext *)self->_clientContext URLBag];
      v21 = uRLBag;
      if (uRLBag)
      {
        v22 = uRLBag;
      }

      else
      {
        v23 = MEMORY[0x277D69C88];
        v24 = [MEMORY[0x277D69C90] contextWithBagType:0];
        v22 = [v23 URLBagForContext:v24];
      }

      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __95__SKUIStoreAssetResourceLoaderDelegate_resourceLoader_shouldWaitForLoadingOfRequestedResource___block_invoke_3;
      v26[3] = &unk_2781F96B8;
      v28 = &v40;
      v29 = &v46;
      v27 = v19;
      [v22 loadWithCompletionBlock:v26];
    }

    else
    {
      objc_storeStrong(v47 + 5, self->_keyCertificateURL);
      objc_storeStrong(v41 + 5, self->_keyServerURL);
      *(v37 + 24) = self->_isITunesStream;
      (*(v19 + 2))(v19, 0);
    }

    _Block_object_dispose(&v36, 8);
    _Block_object_dispose(&v40, 8);

    _Block_object_dispose(&v46, 8);
  }

  return v16;
}

void __95__SKUIStoreAssetResourceLoaderDelegate_resourceLoader_shouldWaitForLoadingOfRequestedResource___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) finishLoadingWithError:v3];
  }

  else
  {
    if (*(*(*(a1 + 48) + 8) + 40) && *(*(*(a1 + 56) + 8) + 40))
    {
      v4 = objc_alloc_init(MEMORY[0x277D69D08]);
      [v4 setITunesStoreRequest:*(*(*(a1 + 64) + 8) + 24)];
      [v4 setCertificateURL:*(*(*(a1 + 48) + 8) + 40)];
      [v4 setKeyServerURL:*(*(*(a1 + 56) + 8) + 40)];
      [v4 setResourceLoadingRequest:*(a1 + 32)];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __95__SKUIStoreAssetResourceLoaderDelegate_resourceLoader_shouldWaitForLoadingOfRequestedResource___block_invoke_2;
      v6[3] = &unk_2781F9668;
      v7 = *(a1 + 32);
      [v4 setResponseBlock:v6];
      [*(*(a1 + 40) + 32) addOperation:v4];
    }

    else
    {
      v5 = *(a1 + 32);
      v4 = SSError();
      [v5 finishLoadingWithError:v4];
    }
  }
}

uint64_t __95__SKUIStoreAssetResourceLoaderDelegate_resourceLoader_shouldWaitForLoadingOfRequestedResource___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 finishLoadingWithError:a2];
  }

  else
  {
    return [v2 finishLoading];
  }
}

void __95__SKUIStoreAssetResourceLoaderDelegate_resourceLoader_shouldWaitForLoadingOfRequestedResource___block_invoke_3(void *a1, void *a2, void *a3)
{
  v14 = a3;
  if (!v14)
  {
    v5 = MEMORY[0x277D69D28];
    v6 = a2;
    v7 = [[v5 alloc] initWithURLBagDictionary:v6];

    v8 = [v7 pastisKeyServerURL];
    v9 = *(a1[5] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = [v7 pastisCertificateURL];
    v12 = *(a1[6] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  (*(a1[4] + 16))();
}

@end