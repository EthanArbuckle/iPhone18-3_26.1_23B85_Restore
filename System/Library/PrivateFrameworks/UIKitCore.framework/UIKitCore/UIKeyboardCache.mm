@interface UIKeyboardCache
+ (BOOL)enabled;
+ (BOOL)enabledForTraitCollection:(id)collection;
+ (id)sharedInstance;
- (CGImage)cachedCompositeImageForCacheKeys:(id)keys fromLayout:(id)layout opacities:(id)opacities;
- (CGImage)cachedImageForKey:(id)key fromLayout:(id)layout;
- (CGImage)cachedImageForKey:(id)key fromLayout:(id)layout traitCollection:(id)collection;
- (UIKeyboardCache)init;
- (id)displayImagesForView:(id)view fromLayout:(id)layout imageFlags:(id)flags;
- (id)uniqueLayoutsFromInputModes:(id)modes;
- (void)_didIdle;
- (void)_didIdleAndShouldWait;
- (void)dealloc;
- (void)decrementExpectedRender:(id)render;
- (void)drawCachedImage:(id)image alpha:(double)alpha inContext:(CGContext *)context;
- (void)incrementExpectedRender:(id)render;
- (void)updateCacheForInputModes:(id)modes;
@end

@implementation UIKeyboardCache

+ (id)sharedInstance
{
  v2 = __cache;
  if (!__cache)
  {
    v3 = objc_alloc_init(UIKeyboardCache);
    v4 = __cache;
    __cache = v3;

    v2 = __cache;
  }

  return v2;
}

- (UIKeyboardCache)init
{
  v11.receiver = self;
  v11.super_class = UIKeyboardCache;
  v2 = [(UIKeyboardCache *)&v11 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E69D95A0]) initWithLocalAccess:1];
    store = v2->_store;
    v2->_store = v3;

    if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UIKeyboardCachingLockOnRead, @"UIKeyboardCachingLockOnRead") & 1) == 0 && byte_1ED48B2BC)
    {
      -[TIImageCacheClient setLockOnRead:](v2->_store, "setLockOnRead:", [UIApp launchedToTest]);
    }

    [(TIImageCacheClient *)v2->_store setCacheItemLimit:80];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, AXSSensitiveSettingChanged, *MEMORY[0x1E69E4D00], 0, 0);
    v6 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v6, v2, AXSSensitiveSettingChanged, *MEMORY[0x1E69E4CE0], 0, 0);
    v7 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v7, v2, AXSSensitiveSettingChanged, *MEMORY[0x1E69E4D10], 0, 0);
    if ([UIApp launchedToTest])
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      activeRenderers = v2->_activeRenderers;
      v2->_activeRenderers = v8;
    }
  }

  return v2;
}

+ (BOOL)enabled
{
  if (pthread_main_np() != 1)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v8 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v8, OS_LOG_TYPE_FAULT, "Unsupported use of +[UIKeyboardCache enabled] off the main thread", buf, 2u);
      }
    }

    else
    {
      v7 = *(__UILogGetCategoryCachedImpl("Assert", &enabled___s_category) + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v9 = 0;
        _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Unsupported use of +[UIKeyboardCache enabled] off the main thread", v9, 2u);
      }
    }
  }

  v3 = +[UIKeyboard activeKeyboard];
  traitCollection = [v3 traitCollection];
  v5 = [self enabledForTraitCollection:traitCollection];

  return v5;
}

+ (BOOL)enabledForTraitCollection:(id)collection
{
  collectionCopy = collection;
  v4 = collectionCopy;
  if (collectionCopy && [collectionCopy userInterfaceIdiom] == 3)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    if (TIGetKeyboardCachingDisabledValue_onceToken != -1)
    {
      dispatch_once(&TIGetKeyboardCachingDisabledValue_onceToken, &__block_literal_global_361);
    }

    mEMORY[0x1E69D9680] = [MEMORY[0x1E69D9680] sharedPreferencesController];
    v7 = [mEMORY[0x1E69D9680] valueForPreferenceKey:@"KeyboardCachingDisabled"];

    v5 = [v7 BOOLValue] ^ 1;
  }

  return v5;
}

- (void)dealloc
{
  idleAction = self->_idleAction;
  self->_idleAction = 0;

  activeRenderers = self->_activeRenderers;
  self->_activeRenderers = 0;

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x1E69E4D10], 0);
  store = self->_store;
  self->_store = 0;

  layouts = self->_layouts;
  self->_layouts = 0;

  v8.receiver = self;
  v8.super_class = UIKeyboardCache;
  [(UIKeyboardCache *)&v8 dealloc];
}

- (CGImage)cachedImageForKey:(id)key fromLayout:(id)layout
{
  layoutCopy = layout;
  keyCopy = key;
  if (pthread_main_np() != 1)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v13 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v13, OS_LOG_TYPE_FAULT, "Unsupported use of [UIKeyboardCache cachedImageForKey:fromLayout:] off the main thread", buf, 2u);
      }
    }

    else
    {
      v12 = *(__UILogGetCategoryCachedImpl("Assert", &cachedImageForKey_fromLayout____s_category) + 8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *v14 = 0;
        _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "Unsupported use of [UIKeyboardCache cachedImageForKey:fromLayout:] off the main thread", v14, 2u);
      }
    }
  }

  v8 = +[UIKeyboard activeKeyboard];
  traitCollection = [v8 traitCollection];
  v10 = [(UIKeyboardCache *)self cachedImageForKey:keyCopy fromLayout:layoutCopy traitCollection:traitCollection];

  return v10;
}

- (CGImage)cachedImageForKey:(id)key fromLayout:(id)layout traitCollection:(id)collection
{
  keyCopy = key;
  layoutCopy = layout;
  collectionCopy = collection;
  if (keyCopy && [UIKeyboardCache enabledForTraitCollection:collectionCopy])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v12 = [(TIImageCacheClient *)selfCopy->_store copyImageForKey:keyCopy inGroup:layoutCopy];
    objc_sync_exit(selfCopy);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (CGImage)cachedCompositeImageForCacheKeys:(id)keys fromLayout:(id)layout opacities:(id)opacities
{
  v57 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  layoutCopy = layout;
  opacitiesCopy = opacities;
  if (![keysCopy count] || !+[UIKeyboardCache enabled](UIKeyboardCache, "enabled"))
  {
    Image = 0;
    goto LABEL_36;
  }

  v50 = opacitiesCopy;
  string = [MEMORY[0x1E696AD60] string];
  v12 = [keysCopy count];
  if (v12)
  {
    v13 = v12;
    for (i = 0; i != v13; ++i)
    {
      v15 = [keysCopy objectAtIndex:i];
      [string appendFormat:@"%lul:", objc_msgSend(v15, "hash")];
    }
  }

  v16 = _nonPersistentCacheForKey(string, 0);
  if (v16)
  {
    Image = CGImageRetain(v16);
    opacitiesCopy = v50;
    goto LABEL_35;
  }

  v48 = string;
  v51 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(keysCopy, "count")}];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v49 = keysCopy;
  v18 = keysCopy;
  v19 = [v18 countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (!v19)
  {
    v22 = 1;
    goto LABEL_27;
  }

  v20 = v19;
  v21 = *v53;
  v22 = 1;
  do
  {
    v23 = 0;
    do
    {
      if (*v53 != v21)
      {
        objc_enumerationMutation(v18);
      }

      v24 = [(UIKeyboardCache *)self cachedImageForKey:*(*(&v52 + 1) + 8 * v23) fromLayout:layoutCopy];
      v25 = [(UIImage *)[UIKBCachedImage alloc] initWithCGImage:v24];
      CGImageRelease(v24);
      if (!v22)
      {
        goto LABEL_18;
      }

      ColorSpace = CGImageGetColorSpace(v24);
      if (CGColorSpaceGetNumberOfComponents(ColorSpace) == 4 || (-[UIKBCachedImage formatColor](v25, "formatColor"), v27 = objc_claimAutoreleasedReturnValue(), v28 = UIKBColorUsesRGB([v27 CGColor]), v27, v28))
      {
        v22 = 0;
LABEL_18:
        if (!v25)
        {
          goto LABEL_20;
        }

LABEL_19:
        [v51 addObject:v25];
        goto LABEL_20;
      }

      v22 = 1;
      if (v25)
      {
        goto LABEL_19;
      }

LABEL_20:

      ++v23;
    }

    while (v20 != v23);
    v29 = [v18 countByEnumeratingWithState:&v52 objects:v56 count:16];
    v20 = v29;
  }

  while (v29);
LABEL_27:

  v30 = v51;
  v31 = [v51 count];
  if (v31)
  {
    v32 = v31;
    opacitiesCopy = v50;
    v33 = [v50 count];
    firstObject = [v51 firstObject];
    [firstObject size];
    v36 = v35;
    v38 = v37;
    v47 = firstObject;
    [firstObject scale];
    v40 = [UIKBRenderer imageContextWithSize:v22 scale:0 colorFormat:0 opaque:v36 invert:v38, v39];
    v41 = 0;
    keysCopy = v49;
    do
    {
      v42 = [v30 objectAtIndex:v41];
      v43 = 1.0;
      if (v32 == v33)
      {
        v44 = [v50 objectAtIndex:v41];
        [v44 floatValue];
        v43 = v45;

        v30 = v51;
      }

      [(UIKeyboardCache *)self drawCachedImage:v42 alpha:v40 inContext:v43];

      ++v41;
    }

    while (v32 != v41);
    Image = CGBitmapContextCreateImage(v40);
    CGContextRelease(v40);
    string = v48;
    _nonPersistentCacheForKey(v48, Image);
  }

  else
  {
    Image = 0;
    opacitiesCopy = v50;
    string = v48;
  }

LABEL_35:
LABEL_36:

  return Image;
}

- (void)drawCachedImage:(id)image alpha:(double)alpha inContext:(CGContext *)context
{
  imageCopy = image;
  if (imageCopy)
  {
    v18 = imageCopy;
    CGContextSaveGState(context);
    CGContextSetAlpha(context, alpha);
    v9 = *MEMORY[0x1E695EFF8];
    v8 = *(MEMORY[0x1E695EFF8] + 8);
    [v18 size];
    v11 = v10;
    v13 = v12;
    if ([v18 hasFormatColor])
    {
      formatColor = [v18 formatColor];
      CGContextSetFillColorWithColor(context, [formatColor CGColor]);

      v15 = v18;
      cGImage = [v18 CGImage];
      v20.origin.x = v9;
      v20.origin.y = v8;
      v20.size.width = v11;
      v20.size.height = v13;
      CGContextClipToMask(context, v20, cGImage);
      v21.origin.x = v9;
      v21.origin.y = v8;
      v21.size.width = v11;
      v21.size.height = v13;
      CGContextFillRect(context, v21);
    }

    else
    {
      cGImage2 = [v18 CGImage];
      v22.origin.x = v9;
      v22.origin.y = v8;
      v22.size.width = v11;
      v22.size.height = v13;
      CGContextDrawImage(context, v22, cGImage2);
    }

    CGContextRestoreGState(context);
    imageCopy = v18;
  }
}

- (id)displayImagesForView:(id)view fromLayout:(id)layout imageFlags:(id)flags
{
  v123 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  layoutCopy = layout;
  flagsCopy = flags;
  if (![flagsCopy count])
  {

    flagsCopy = &unk_1EFE2C670;
  }

  v9 = [viewCopy cacheKeysForRenderFlags:flagsCopy];
  v89 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(flagsCopy, "count")}];
  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  obj = flagsCopy;
  v10 = [obj countByEnumeratingWithState:&v115 objects:v122 count:16];
  if (v10)
  {
    v11 = *v116;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v116 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v115 + 1) + 8 * i);
        v14 = [v9 objectForKey:v13];
        if ([viewCopy keepNonPersistent] && (v15 = _nonPersistentCacheForKey(v14, 0), (v16 = CGImageRetain(v15)) != 0) || (v16 = -[UIKeyboardCache cachedImageForKey:fromLayout:](self, "cachedImageForKey:fromLayout:", v14, layoutCopy)) != 0)
        {
          Width = CGImageGetWidth(v16);
          [viewCopy bounds];
          v19 = v18;
          [viewCopy contentScaleFactor];
          if (vabdd_f64(Width, v20 * v19) <= 1.0)
          {
            v21 = [UIKBCachedImage alloc];
            [viewCopy contentScaleFactor];
            v22 = [(UIImage *)v21 initWithCGImage:v16 scale:0 orientation:?];
            [v89 setObject:v22 forKey:v13];

            if ([viewCopy keepNonPersistent])
            {
              _nonPersistentCacheForKey(v14, v16);
            }
          }

          CGImageRelease(v16);
        }
      }

      v10 = [obj countByEnumeratingWithState:&v115 objects:v122 count:16];
    }

    while (v10);
  }

  [viewCopy cachedWidth];
  v24 = v23;
  [viewCopy bounds];
  v26 = v25;
  v27 = [v89 count];
  if (v27 != [obj count] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v125.origin.x = *MEMORY[0x1E695EFF8];
    v125.origin.y = *(MEMORY[0x1E695EFF8] + 8);
    v125.size.width = v24;
    v125.size.height = v26;
    if (!CGRectIsEmpty(v125))
    {
      v28 = _UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UIKeyboardGrayscaleCachingEnabled, @"UIKeyboardGrayscaleCachingEnabled");
      if (byte_1ED48B2B4)
      {
        v29 = 1;
      }

      else
      {
        v29 = v28;
      }

      if (v29 == 1)
      {
        v81 = [viewCopy displaysColorImage] ^ 1;
      }

      else
      {
        v81 = 0;
      }

      context = objc_autoreleasePoolPush();
      v86 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(obj, "count")}];
      assetIdiom = [viewCopy assetIdiom];
      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      v30 = obj;
      v31 = [v30 countByEnumeratingWithState:&v111 objects:v121 count:16];
      if (v31)
      {
        v32 = *v112;
        do
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v112 != v32)
            {
              objc_enumerationMutation(v30);
            }

            v34 = *(*(&v111 + 1) + 8 * j);
            v35 = [v89 objectForKey:v34];

            if (!v35)
            {
              [viewCopy contentScaleFactor];
              v37 = +[UIKBRenderer rendererWithContext:withSize:withScale:opaque:renderFlags:assetIdiom:](UIKBRenderer, "rendererWithContext:withSize:withScale:opaque:renderFlags:assetIdiom:", 0, [viewCopy isOpaque], objc_msgSend(v34, "integerValue"), assetIdiom, v24, v26, v36);
              v38 = [v9 objectForKey:v34];
              [v37 setCacheKey:v38];

              if ([viewCopy displaysColorImage])
              {
                [v37 forceColorFormat:0];
              }

              else
              {
                [v37 setColorDetectMode:v81];
              }

              [v86 addObject:v37];
            }
          }

          v31 = [v30 countByEnumeratingWithState:&v111 objects:v121 count:16];
        }

        while (v31);
      }

      if (v81)
      {
        [viewCopy drawContentsOfRenderers:v86];
        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        v39 = v86;
        v40 = [v39 countByEnumeratingWithState:&v107 objects:v120 count:16];
        if (v40)
        {
          v41 = *v108;
          do
          {
            for (k = 0; k != v40; ++k)
            {
              if (*v108 != v41)
              {
                objc_enumerationMutation(v39);
              }

              v43 = *(*(&v107 + 1) + 8 * k);
              [v43 forceColorFormat:objc_msgSend(v43, "contentColorFormat")];
              [v43 setColorDetectMode:0];
            }

            v40 = [v39 countByEnumeratingWithState:&v107 objects:v120 count:16];
          }

          while (v40);
        }
      }

      [viewCopy drawContentsOfRenderers:v86];
      if (objc_opt_respondsToSelector())
      {
        cacheDeferPriority = [viewCopy cacheDeferPriority];
      }

      else
      {
        cacheDeferPriority = [viewCopy cacheDeferable];
      }

      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v83 = v86;
      v87 = [v83 countByEnumeratingWithState:&v103 objects:v119 count:16];
      if (v87)
      {
        v85 = *v104;
        do
        {
          for (m = 0; m != v87; ++m)
          {
            if (*v104 != v85)
            {
              objc_enumerationMutation(v83);
            }

            v45 = *(*(&v103 + 1) + 8 * m);
            renderedImage = [v45 renderedImage];
            if (renderedImage)
            {
              v47 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v45, "renderFlags")}];
              [v89 setObject:renderedImage forKey:v47];
            }

            if ([viewCopy keepNonPersistent])
            {
              cacheKey = [v45 cacheKey];
              v49 = renderedImage;
              _nonPersistentCacheForKey(cacheKey, [renderedImage CGImage]);
            }

            if (+[UIKeyboardCache enabled])
            {
              cacheKey2 = [v45 cacheKey];
              v51 = cacheKey2 != 0;

              if (v51 && cacheDeferPriority == 0)
              {
                if (v81)
                {
                  if ([v45 contentColorFormat] == 2)
                  {
                    isOpaque = 5;
LABEL_69:
                    v101[0] = 0;
                    v101[1] = v101;
                    v101[2] = 0x3032000000;
                    v101[3] = __Block_byref_object_copy__124;
                    v101[4] = __Block_byref_object_dispose__124;
                    v53 = v45;
                    v102 = v53;
                    v54 = MEMORY[0x1E69D95A8];
                    [v53 size];
                    v56 = v55;
                    v58 = v57;
                    singleColor = [v53 singleColor];
                    v60 = singleColor;
                    cGColor = [singleColor CGColor];
                    [v53 scale];
                    v63 = v62;
                    contextData = [v53 contextData];
                    v100[0] = MEMORY[0x1E69E9820];
                    v100[1] = 3221225472;
                    v100[2] = __62__UIKeyboardCache_displayImagesForView_fromLayout_imageFlags___block_invoke;
                    v100[3] = &unk_1E70F2F20;
                    v100[4] = v101;
                    v65 = [v54 cacheItemWithSize:isOpaque format:cGColor formatColor:contextData scale:v100 data:v56 dataReleaseHandler:{v58, v63}];

                    store = self->_store;
                    cacheKey3 = [v53 cacheKey];
                    [(TIImageCacheClient *)store storeImageDataForKey:cacheKey3 inGroup:layoutCopy item:v65];

                    _Block_object_dispose(v101, 8);
                    goto LABEL_70;
                  }

                  if ([v45 contentColorFormat] == 1)
                  {
                    if ([viewCopy isOpaque])
                    {
                      isOpaque = 4;
                    }

                    else
                    {
                      isOpaque = 3;
                    }

                    goto LABEL_69;
                  }
                }

                isOpaque = [viewCopy isOpaque];
                goto LABEL_69;
              }
            }

LABEL_70:
          }

          v87 = [v83 countByEnumeratingWithState:&v103 objects:v119 count:16];
        }

        while (v87);
      }

      v68 = +[UIKeyboardCache enabled];
      v69 = cacheDeferPriority;
      if (cacheDeferPriority)
      {
        v70 = v68;
      }

      else
      {
        v70 = 0;
      }

      if (v70)
      {
        if (cacheDeferPriority == 2)
        {
          v71 = UIApp;
          v72 = objc_opt_class();
          v73 = NSStringFromClass(v72);
          v74 = [v71 _beginBackgroundTaskWithName:v73 expirationHandler:0];

          v69 = 2;
        }

        else
        {
          v74 = 0;
        }

        v78 = dispatch_time(0, 100000000);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __62__UIKeyboardCache_displayImagesForView_fromLayout_imageFlags___block_invoke_2;
        block[3] = &unk_1E7114728;
        v93 = v83;
        v99 = v81;
        v94 = viewCopy;
        selfCopy = self;
        v96 = layoutCopy;
        v97 = v69;
        v98 = v74;
        dispatch_after(v78, MEMORY[0x1E69E96A0], block);

        v77 = v93;
      }

      else
      {
        idleAction = [(UIKeyboardCache *)self idleAction];
        v76 = idleAction == 0;

        if (!v76)
        {
LABEL_83:

          objc_autoreleasePoolPop(context);
          goto LABEL_84;
        }

        v77 = [_UIActionWhenIdle actionWhenIdleWithTarget:self selector:sel__didIdleAndShouldWait object:0];
        [(UIKeyboardCache *)self setIdleAction:v77];
      }

      goto LABEL_83;
    }
  }

LABEL_84:

  return v89;
}

void __62__UIKeyboardCache_displayImagesForView_fromLayout_imageFlags___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void __62__UIKeyboardCache_displayImagesForView_fromLayout_imageFlags___block_invoke_2(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v2)
  {
    v3 = *v32;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v32 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v31 + 1) + 8 * i);
        v6 = [v5 cacheKey];
        v7 = v6 == 0;

        if (!v7)
        {
          if (*(a1 + 80) == 1)
          {
            if ([v5 contentColorFormat] == 2)
            {
              v8 = 5;
LABEL_16:
              v29[0] = 0;
              v29[1] = v29;
              v29[2] = 0x3032000000;
              v29[3] = __Block_byref_object_copy__124;
              v29[4] = __Block_byref_object_dispose__124;
              v9 = v5;
              v30 = v9;
              v10 = MEMORY[0x1E69D95A8];
              [v9 size];
              v12 = v11;
              v14 = v13;
              v15 = [v9 singleColor];
              v16 = v15;
              v17 = [v15 CGColor];
              [v9 scale];
              v19 = v18;
              v20 = [v9 contextData];
              v28[0] = MEMORY[0x1E69E9820];
              v28[1] = 3221225472;
              v28[2] = __62__UIKeyboardCache_displayImagesForView_fromLayout_imageFlags___block_invoke_3;
              v28[3] = &unk_1E70F2F20;
              v28[4] = v29;
              v21 = [v10 cacheItemWithSize:v8 format:v17 formatColor:v20 scale:v28 data:v12 dataReleaseHandler:{v14, v19}];

              v22 = *(*(a1 + 48) + 8);
              v23 = [v9 cacheKey];
              [v22 storeImageDataForKey:v23 inGroup:*(a1 + 56) item:v21];

              _Block_object_dispose(v29, 8);
              continue;
            }

            if ((*(a1 + 80) & 1) != 0 && [v5 contentColorFormat] == 1)
            {
              if ([*(a1 + 40) isOpaque])
              {
                v8 = 4;
              }

              else
              {
                v8 = 3;
              }

              goto LABEL_16;
            }
          }

          v8 = [*(a1 + 40) isOpaque];
          goto LABEL_16;
        }
      }

      v2 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v2);
  }

  v24 = [*(a1 + 48) idleAction];
  v25 = v24 == 0;

  if (v25)
  {
    v26 = [_UIActionWhenIdle actionWhenIdleWithTarget:*(a1 + 48) selector:sel__didIdle object:0];
    [*(a1 + 48) setIdleAction:v26];
  }

  if (*(a1 + 64) == 2)
  {
    [UIApp _endBackgroundTask:*(a1 + 72)];
  }
}

void __62__UIKeyboardCache_displayImagesForView_fromLayout_imageFlags___block_invoke_3(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

- (void)_didIdle
{
  [(UIKeyboardCache *)self setIdleAction:0];
  store = self->_store;

  [(TIImageCacheClient *)store setIdleWhenDone];
}

- (void)_didIdleAndShouldWait
{
  v3 = dispatch_time(0, 150000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__UIKeyboardCache__didIdleAndShouldWait__block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  dispatch_after(v3, MEMORY[0x1E69E96A0], block);
}

- (id)uniqueLayoutsFromInputModes:(id)modes
{
  v18 = *MEMORY[0x1E69E9840];
  modesCopy = modes;
  v4 = [MEMORY[0x1E695DFA8] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = modesCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (UIKeyboardInputModeUsesKBStar(v10))
        {
          v11 = KBStarLayoutString(v10);
          [v4 addObject:{v11, v13}];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)updateCacheForInputModes:(id)modes
{
  modesCopy = modes;
  if (+[UIKeyboardCache enabled])
  {
    v5 = [(UIKeyboardCache *)self uniqueLayoutsFromInputModes:modesCopy];
    if (![(NSSet *)self->_layouts isEqualToSet:v5])
    {
      v6 = [(NSSet *)self->_layouts mutableCopy];
      [v6 minusSet:v5];
      v7 = UIApp;
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = [v7 _beginBackgroundTaskWithName:v9 expirationHandler:0];

      store = self->_store;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __44__UIKeyboardCache_updateCacheForInputModes___block_invoke;
      v12[3] = &__block_descriptor_40_e5_v8__0l;
      v12[4] = v10;
      [(TIImageCacheClient *)store removeImagesInGroups:v6 completion:v12];
    }
  }
}

- (void)incrementExpectedRender:(id)render
{
  if (self->_activeRenderers)
  {
    v4 = [MEMORY[0x1E696B098] valueWithNonretainedObject:render];
    if (([(NSMutableSet *)self->_activeRenderers containsObject:?]& 1) == 0)
    {
      [(NSMutableSet *)self->_activeRenderers addObject:v4];
    }
  }
}

- (void)decrementExpectedRender:(id)render
{
  if (self->_activeRenderers)
  {
    v6 = [MEMORY[0x1E696B098] valueWithNonretainedObject:render];
    if ([(NSMutableSet *)self->_activeRenderers containsObject:?])
    {
      [(NSMutableSet *)self->_activeRenderers removeObject:v6];
      if (![(NSMutableSet *)self->_activeRenderers count])
      {
        activeRenderers = self->_activeRenderers;
        self->_activeRenderers = 0;

        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter postNotificationName:@"UIKeyboardRenderDidFinishNotification" object:0];
      }
    }
  }
}

@end