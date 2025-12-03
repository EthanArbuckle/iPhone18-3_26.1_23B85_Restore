@interface SiriUIAttributionImage
+ (id)attributionImageFromAppPunchOut:(id)out;
+ (id)attributionImageFromImageResource:(id)resource;
+ (id)attributionImageFromKey:(id)key pressedKey:(id)pressedKey punchOut:(id)out;
+ (id)attributionImageWithLocalResourceName:(id)name pressedResourceName:(id)resourceName localPunchOut:(id)out bundle:(id)bundle;
- (CGSize)logoSize;
- (id)_imageInLocalResourceBundleNamed:(id)named;
- (void)_fetchLocalResourcesWithCompletion:(id)completion;
- (void)_fetchRemoteResourcesWithCompletion:(id)completion;
- (void)getLogoWithCompletion:(id)completion;
@end

@implementation SiriUIAttributionImage

+ (id)attributionImageFromAppPunchOut:(id)out
{
  outCopy = out;
  v4 = [objc_opt_class() attributionImageFromKey:0 pressedKey:0 punchOut:outCopy];

  return v4;
}

+ (id)attributionImageFromImageResource:(id)resource
{
  resourceCopy = resource;
  resourceUrl = [resourceCopy resourceUrl];
  [resourceCopy scaleFactor];
  if (v5 <= 0.0)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = v5;
  }

  if (resourceCopy)
  {
    [resourceCopy pixelWidth];
    v8 = v7 / v6;
    [resourceCopy pixelHeight];
    v10 = v9 / v6;
  }

  else
  {
    v8 = *MEMORY[0x277CBF3A8];
    v10 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v11 = objc_alloc_init(SiriUIAttributionImage);
  [(SiriUIAttributionImage *)v11 setRemoteURL:resourceUrl];
  [(SiriUIAttributionImage *)v11 setRemoteScale:v6];
  [(SiriUIAttributionImage *)v11 setLogoSize:v8, v10];

  return v11;
}

+ (id)attributionImageWithLocalResourceName:(id)name pressedResourceName:(id)resourceName localPunchOut:(id)out bundle:(id)bundle
{
  bundleCopy = bundle;
  outCopy = out;
  resourceNameCopy = resourceName;
  nameCopy = name;
  v13 = objc_alloc_init(SiriUIAttributionImage);
  [(SiriUIAttributionImage *)v13 setLocalResourceBundle:bundleCopy];

  [(SiriUIAttributionImage *)v13 setLocalResourceName:nameCopy];
  [(SiriUIAttributionImage *)v13 setLocalPressedResourceName:resourceNameCopy];

  [(SiriUIAttributionImage *)v13 setLocalPunchOut:outCopy];

  return v13;
}

+ (id)attributionImageFromKey:(id)key pressedKey:(id)pressedKey punchOut:(id)out
{
  keyCopy = key;
  pressedKeyCopy = pressedKey;
  outCopy = out;
  appIconMap = [outCopy appIconMap];

  if (keyCopy && appIconMap)
  {
    appIconMap2 = [outCopy appIconMap];
    appIcon = [appIconMap2 objectForKey:keyCopy];
    v13 = [appIconMap2 objectForKey:pressedKeyCopy];
  }

  else
  {
    appIcon = [outCopy appIcon];
    v13 = 0;
  }

  resourceUrl = [appIcon resourceUrl];
  [appIcon scaleFactor];
  if (v15 <= 0.0)
  {
    v16 = 1.0;
  }

  else
  {
    v16 = v15;
  }

  resourceUrl2 = [v13 resourceUrl];
  [v13 scaleFactor];
  v19 = v18;
  if (appIcon)
  {
    [appIcon pixelWidth];
    v21 = v20 / v16;
    [appIcon pixelHeight];
    v23 = v22 / v16;
  }

  else
  {
    v21 = *MEMORY[0x277CBF3A8];
    v23 = *(MEMORY[0x277CBF3A8] + 8);
  }

  if (v19 <= 0.0)
  {
    v19 = 1.0;
  }

  v24 = objc_alloc_init(SiriUIAttributionImage);
  [(SiriUIAttributionImage *)v24 setRemoteURL:resourceUrl];
  [(SiriUIAttributionImage *)v24 setRemoteScale:v16];
  [(SiriUIAttributionImage *)v24 setRemotePressedURL:resourceUrl2];
  [(SiriUIAttributionImage *)v24 setRemotePressedScale:v19];
  [(SiriUIAttributionImage *)v24 setLogoSize:v21, v23];
  [(SiriUIAttributionImage *)v24 setRemotePunchOut:outCopy];

  return v24;
}

- (void)getLogoWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    localResourceName = [(SiriUIAttributionImage *)self localResourceName];

    if (localResourceName)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __48__SiriUIAttributionImage_getLogoWithCompletion___block_invoke;
      v7[3] = &unk_279C5A248;
      v7[4] = self;
      v8 = completionCopy;
      [(SiriUIAttributionImage *)self _fetchLocalResourcesWithCompletion:v7];
    }

    else
    {
      remoteURL = [(SiriUIAttributionImage *)self remoteURL];

      if (remoteURL)
      {
        [(SiriUIAttributionImage *)self _fetchRemoteResourcesWithCompletion:completionCopy];
      }

      else
      {
        (*(completionCopy + 2))(completionCopy, 0, 0, 0);
      }
    }
  }
}

uint64_t __48__SiriUIAttributionImage_getLogoWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    return [*(a1 + 32) _fetchRemoteResourcesWithCompletion:*(a1 + 40)];
  }
}

- (CGSize)logoSize
{
  width = *MEMORY[0x277CBF3A8];
  height = *(MEMORY[0x277CBF3A8] + 8);
  localResourceName = [(SiriUIAttributionImage *)self localResourceName];
  if ([localResourceName length])
  {
    v6 = [(SiriUIAttributionImage *)self _imageInLocalResourceBundleNamed:localResourceName];
    v7 = v6;
    if (v6)
    {
      [v6 size];
      width = v8;
      height = v9;
    }
  }

  if (width <= 0.0)
  {
    width = self->_logoSize.width;
    height = self->_logoSize.height;
  }

  v10 = width;
  v11 = height;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)_fetchLocalResourcesWithCompletion:(id)completion
{
  completionCopy = completion;
  localResourceName = [(SiriUIAttributionImage *)self localResourceName];
  localPressedResourceName = [(SiriUIAttributionImage *)self localPressedResourceName];
  localPunchOut = [(SiriUIAttributionImage *)self localPunchOut];
  if (localResourceName)
  {
    v7 = [(SiriUIAttributionImage *)self _imageInLocalResourceBundleNamed:localResourceName];
    if (localPressedResourceName)
    {
LABEL_3:
      v8 = [(SiriUIAttributionImage *)self _imageInLocalResourceBundleNamed:localPressedResourceName];
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    if (localPressedResourceName)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  completionCopy[2](completionCopy, v7, v8, localPunchOut);
}

- (id)_imageInLocalResourceBundleNamed:(id)named
{
  v4 = MEMORY[0x277D755B8];
  namedCopy = named;
  localResourceBundle = [(SiriUIAttributionImage *)self localResourceBundle];
  v7 = [v4 _deviceSpecificImageNamed:namedCopy inBundle:localResourceBundle];

  return v7;
}

- (void)_fetchRemoteResourcesWithCompletion:(id)completion
{
  completionCopy = completion;
  remoteURL = [(SiriUIAttributionImage *)self remoteURL];
  remotePressedURL = [(SiriUIAttributionImage *)self remotePressedURL];
  remotePunchOut = [(SiriUIAttributionImage *)self remotePunchOut];
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = __Block_byref_object_copy_;
  v31[4] = __Block_byref_object_dispose_;
  v32 = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = __Block_byref_object_copy_;
  v29[4] = __Block_byref_object_dispose_;
  v30 = 0;
  v7 = dispatch_group_create();
  v8 = dispatch_get_global_queue(0, 0);
  dispatch_group_enter(v7);
  v9 = +[SiriUIURLSession sharedURLSession];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __62__SiriUIAttributionImage__fetchRemoteResourcesWithCompletion___block_invoke;
  v26[3] = &unk_279C5A270;
  v28 = v31;
  v10 = v7;
  v27 = v10;
  v11 = [v9 imageTaskWithHTTPGetRequest:remoteURL client:self completionHandler:v26];

  dispatch_group_enter(v10);
  v12 = +[SiriUIURLSession sharedURLSession];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __62__SiriUIAttributionImage__fetchRemoteResourcesWithCompletion___block_invoke_2;
  v23[3] = &unk_279C5A270;
  v25 = v29;
  v13 = v10;
  v24 = v13;
  v14 = [v12 imageTaskWithHTTPGetRequest:remotePressedURL client:self completionHandler:v23];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__SiriUIAttributionImage__fetchRemoteResourcesWithCompletion___block_invoke_3;
  block[3] = &unk_279C5A298;
  v21 = v31;
  v22 = v29;
  v19 = remotePunchOut;
  v20 = completionCopy;
  v15 = remotePunchOut;
  v16 = completionCopy;
  dispatch_group_notify(v13, v8, block);

  _Block_object_dispose(v29, 8);
  _Block_object_dispose(v31, 8);
}

void __62__SiriUIAttributionImage__fetchRemoteResourcesWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __62__SiriUIAttributionImage__fetchRemoteResourcesWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

@end