@interface UIKeyboardCache
+ (BOOL)enabled;
+ (BOOL)enabledForTraitCollection:(id)a3;
+ (id)sharedInstance;
- (CGImage)cachedCompositeImageForCacheKeys:(id)a3 fromLayout:(id)a4 opacities:(id)a5;
- (CGImage)cachedImageForKey:(id)a3 fromLayout:(id)a4;
- (CGImage)cachedImageForKey:(id)a3 fromLayout:(id)a4 traitCollection:(id)a5;
- (UIKeyboardCache)init;
- (id)displayImagesForView:(id)a3 fromLayout:(id)a4 imageFlags:(id)a5;
- (id)uniqueLayoutsFromInputModes:(id)a3;
- (void)_didIdle;
- (void)_didIdleAndShouldWait;
- (void)dealloc;
- (void)decrementExpectedRender:(id)a3;
- (void)drawCachedImage:(id)a3 alpha:(double)a4 inContext:(CGContext *)a5;
- (void)incrementExpectedRender:(id)a3;
- (void)updateCacheForInputModes:(id)a3;
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
  v4 = [v3 traitCollection];
  v5 = [a1 enabledForTraitCollection:v4];

  return v5;
}

+ (BOOL)enabledForTraitCollection:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 userInterfaceIdiom] == 3)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    if (TIGetKeyboardCachingDisabledValue_onceToken != -1)
    {
      dispatch_once(&TIGetKeyboardCachingDisabledValue_onceToken, &__block_literal_global_361);
    }

    v6 = [MEMORY[0x1E69D9680] sharedPreferencesController];
    v7 = [v6 valueForPreferenceKey:@"KeyboardCachingDisabled"];

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

- (CGImage)cachedImageForKey:(id)a3 fromLayout:(id)a4
{
  v6 = a4;
  v7 = a3;
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
  v9 = [v8 traitCollection];
  v10 = [(UIKeyboardCache *)self cachedImageForKey:v7 fromLayout:v6 traitCollection:v9];

  return v10;
}

- (CGImage)cachedImageForKey:(id)a3 fromLayout:(id)a4 traitCollection:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 && [UIKeyboardCache enabledForTraitCollection:v10])
  {
    v11 = self;
    objc_sync_enter(v11);
    v12 = [(TIImageCacheClient *)v11->_store copyImageForKey:v8 inGroup:v9];
    objc_sync_exit(v11);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (CGImage)cachedCompositeImageForCacheKeys:(id)a3 fromLayout:(id)a4 opacities:(id)a5
{
  v57 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![v8 count] || !+[UIKeyboardCache enabled](UIKeyboardCache, "enabled"))
  {
    Image = 0;
    goto LABEL_36;
  }

  v50 = v10;
  v11 = [MEMORY[0x1E696AD60] string];
  v12 = [v8 count];
  if (v12)
  {
    v13 = v12;
    for (i = 0; i != v13; ++i)
    {
      v15 = [v8 objectAtIndex:i];
      [v11 appendFormat:@"%lul:", objc_msgSend(v15, "hash")];
    }
  }

  v16 = _nonPersistentCacheForKey(v11, 0);
  if (v16)
  {
    Image = CGImageRetain(v16);
    v10 = v50;
    goto LABEL_35;
  }

  v48 = v11;
  v51 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v49 = v8;
  v18 = v8;
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

      v24 = [(UIKeyboardCache *)self cachedImageForKey:*(*(&v52 + 1) + 8 * v23) fromLayout:v9];
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
    v10 = v50;
    v33 = [v50 count];
    v34 = [v51 firstObject];
    [v34 size];
    v36 = v35;
    v38 = v37;
    v47 = v34;
    [v34 scale];
    v40 = [UIKBRenderer imageContextWithSize:v22 scale:0 colorFormat:0 opaque:v36 invert:v38, v39];
    v41 = 0;
    v8 = v49;
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
    v11 = v48;
    _nonPersistentCacheForKey(v48, Image);
  }

  else
  {
    Image = 0;
    v10 = v50;
    v11 = v48;
  }

LABEL_35:
LABEL_36:

  return Image;
}

- (void)drawCachedImage:(id)a3 alpha:(double)a4 inContext:(CGContext *)a5
{
  v7 = a3;
  if (v7)
  {
    v18 = v7;
    CGContextSaveGState(a5);
    CGContextSetAlpha(a5, a4);
    v9 = *MEMORY[0x1E695EFF8];
    v8 = *(MEMORY[0x1E695EFF8] + 8);
    [v18 size];
    v11 = v10;
    v13 = v12;
    if ([v18 hasFormatColor])
    {
      v14 = [v18 formatColor];
      CGContextSetFillColorWithColor(a5, [v14 CGColor]);

      v15 = v18;
      v16 = [v18 CGImage];
      v20.origin.x = v9;
      v20.origin.y = v8;
      v20.size.width = v11;
      v20.size.height = v13;
      CGContextClipToMask(a5, v20, v16);
      v21.origin.x = v9;
      v21.origin.y = v8;
      v21.size.width = v11;
      v21.size.height = v13;
      CGContextFillRect(a5, v21);
    }

    else
    {
      v17 = [v18 CGImage];
      v22.origin.x = v9;
      v22.origin.y = v8;
      v22.size.width = v11;
      v22.size.height = v13;
      CGContextDrawImage(a5, v22, v17);
    }

    CGContextRestoreGState(a5);
    v7 = v18;
  }
}

- (id)displayImagesForView:(id)a3 fromLayout:(id)a4 imageFlags:(id)a5
{
  v123 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v91 = a4;
  v8 = a5;
  if (![v8 count])
  {

    v8 = &unk_1EFE2C670;
  }

  v9 = [v7 cacheKeysForRenderFlags:v8];
  v89 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v8, "count")}];
  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  obj = v8;
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
        if ([v7 keepNonPersistent] && (v15 = _nonPersistentCacheForKey(v14, 0), (v16 = CGImageRetain(v15)) != 0) || (v16 = -[UIKeyboardCache cachedImageForKey:fromLayout:](self, "cachedImageForKey:fromLayout:", v14, v91)) != 0)
        {
          Width = CGImageGetWidth(v16);
          [v7 bounds];
          v19 = v18;
          [v7 contentScaleFactor];
          if (vabdd_f64(Width, v20 * v19) <= 1.0)
          {
            v21 = [UIKBCachedImage alloc];
            [v7 contentScaleFactor];
            v22 = [(UIImage *)v21 initWithCGImage:v16 scale:0 orientation:?];
            [v89 setObject:v22 forKey:v13];

            if ([v7 keepNonPersistent])
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

  [v7 cachedWidth];
  v24 = v23;
  [v7 bounds];
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
        v81 = [v7 displaysColorImage] ^ 1;
      }

      else
      {
        v81 = 0;
      }

      context = objc_autoreleasePoolPush();
      v86 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(obj, "count")}];
      v84 = [v7 assetIdiom];
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
              [v7 contentScaleFactor];
              v37 = +[UIKBRenderer rendererWithContext:withSize:withScale:opaque:renderFlags:assetIdiom:](UIKBRenderer, "rendererWithContext:withSize:withScale:opaque:renderFlags:assetIdiom:", 0, [v7 isOpaque], objc_msgSend(v34, "integerValue"), v84, v24, v26, v36);
              v38 = [v9 objectForKey:v34];
              [v37 setCacheKey:v38];

              if ([v7 displaysColorImage])
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
        [v7 drawContentsOfRenderers:v86];
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

      [v7 drawContentsOfRenderers:v86];
      if (objc_opt_respondsToSelector())
      {
        v82 = [v7 cacheDeferPriority];
      }

      else
      {
        v82 = [v7 cacheDeferable];
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
            v46 = [v45 renderedImage];
            if (v46)
            {
              v47 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v45, "renderFlags")}];
              [v89 setObject:v46 forKey:v47];
            }

            if ([v7 keepNonPersistent])
            {
              v48 = [v45 cacheKey];
              v49 = v46;
              _nonPersistentCacheForKey(v48, [v46 CGImage]);
            }

            if (+[UIKeyboardCache enabled])
            {
              v50 = [v45 cacheKey];
              v51 = v50 != 0;

              if (v51 && v82 == 0)
              {
                if (v81)
                {
                  if ([v45 contentColorFormat] == 2)
                  {
                    v52 = 5;
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
                    v59 = [v53 singleColor];
                    v60 = v59;
                    v61 = [v59 CGColor];
                    [v53 scale];
                    v63 = v62;
                    v64 = [v53 contextData];
                    v100[0] = MEMORY[0x1E69E9820];
                    v100[1] = 3221225472;
                    v100[2] = __62__UIKeyboardCache_displayImagesForView_fromLayout_imageFlags___block_invoke;
                    v100[3] = &unk_1E70F2F20;
                    v100[4] = v101;
                    v65 = [v54 cacheItemWithSize:v52 format:v61 formatColor:v64 scale:v100 data:v56 dataReleaseHandler:{v58, v63}];

                    store = self->_store;
                    v67 = [v53 cacheKey];
                    [(TIImageCacheClient *)store storeImageDataForKey:v67 inGroup:v91 item:v65];

                    _Block_object_dispose(v101, 8);
                    goto LABEL_70;
                  }

                  if ([v45 contentColorFormat] == 1)
                  {
                    if ([v7 isOpaque])
                    {
                      v52 = 4;
                    }

                    else
                    {
                      v52 = 3;
                    }

                    goto LABEL_69;
                  }
                }

                v52 = [v7 isOpaque];
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
      v69 = v82;
      if (v82)
      {
        v70 = v68;
      }

      else
      {
        v70 = 0;
      }

      if (v70)
      {
        if (v82 == 2)
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
        v94 = v7;
        v95 = self;
        v96 = v91;
        v97 = v69;
        v98 = v74;
        dispatch_after(v78, MEMORY[0x1E69E96A0], block);

        v77 = v93;
      }

      else
      {
        v75 = [(UIKeyboardCache *)self idleAction];
        v76 = v75 == 0;

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

- (id)uniqueLayoutsFromInputModes:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DFA8] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
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

- (void)updateCacheForInputModes:(id)a3
{
  v4 = a3;
  if (+[UIKeyboardCache enabled])
  {
    v5 = [(UIKeyboardCache *)self uniqueLayoutsFromInputModes:v4];
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

- (void)incrementExpectedRender:(id)a3
{
  if (self->_activeRenderers)
  {
    v4 = [MEMORY[0x1E696B098] valueWithNonretainedObject:a3];
    if (([(NSMutableSet *)self->_activeRenderers containsObject:?]& 1) == 0)
    {
      [(NSMutableSet *)self->_activeRenderers addObject:v4];
    }
  }
}

- (void)decrementExpectedRender:(id)a3
{
  if (self->_activeRenderers)
  {
    v6 = [MEMORY[0x1E696B098] valueWithNonretainedObject:a3];
    if ([(NSMutableSet *)self->_activeRenderers containsObject:?])
    {
      [(NSMutableSet *)self->_activeRenderers removeObject:v6];
      if (![(NSMutableSet *)self->_activeRenderers count])
      {
        activeRenderers = self->_activeRenderers;
        self->_activeRenderers = 0;

        v5 = [MEMORY[0x1E696AD88] defaultCenter];
        [v5 postNotificationName:@"UIKeyboardRenderDidFinishNotification" object:0];
      }
    }
  }
}

@end