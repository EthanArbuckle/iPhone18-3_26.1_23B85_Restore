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
        [defaultCenter postNotificationName:*MEMORY[0x1E69DE030] object:0];
      }
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
      v7 = *MEMORY[0x1E69DDA98];
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
        if (UIKeyboardInputModeUsesKBStar())
        {
          v11 = MEMORY[0x193AE81B0](v10);
          [v4 addObject:{v11, v13}];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)_didIdleAndShouldWait
{
  v3 = dispatch_time(0, 150000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__UIKeyboardCache__didIdleAndShouldWait__block_invoke;
  block[3] = &unk_1E72D83A0;
  block[4] = self;
  dispatch_after(v3, MEMORY[0x1E69E96A0], block);
}

- (void)_didIdle
{
  [(UIKeyboardCache *)self setIdleAction:0];
  store = self->_store;

  [(TIImageCacheClient *)store setIdleWhenDone];
}

- (id)displayImagesForView:(id)view fromLayout:(id)layout imageFlags:(id)flags
{
  v126 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  layoutCopy = layout;
  flagsCopy = flags;
  if (![flagsCopy count])
  {

    flagsCopy = &unk_1F03D8F48;
  }

  v9 = [viewCopy cacheKeysForRenderFlags:flagsCopy];
  v92 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(flagsCopy, "count")}];
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  obj = flagsCopy;
  v10 = [obj countByEnumeratingWithState:&v118 objects:v125 count:16];
  selfCopy2 = self;
  if (v10)
  {
    v12 = v10;
    v13 = *v119;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v119 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v118 + 1) + 8 * i);
        v16 = [v9 objectForKey:v15];
        if ([viewCopy keepNonPersistent] && (v17 = _nonPersistentCacheForKey(v16, 0), (v18 = CGImageRetain(v17)) != 0) || (v18 = -[UIKeyboardCache cachedImageForKey:fromLayout:](selfCopy2, "cachedImageForKey:fromLayout:", v16, layoutCopy)) != 0)
        {
          v19 = v18;
          Width = CGImageGetWidth(v18);
          [viewCopy bounds];
          v22 = v21;
          [viewCopy contentScaleFactor];
          if (fabs(Width - v22 * v23) <= 1.0)
          {
            v24 = [UIKBCachedImage alloc];
            [viewCopy contentScaleFactor];
            v25 = [(UIKBCachedImage *)v24 initWithCGImage:v19 scale:0 orientation:?];
            [v92 setObject:v25 forKey:v15];

            selfCopy2 = self;
            if ([viewCopy keepNonPersistent])
            {
              _nonPersistentCacheForKey(v16, v19);
            }
          }

          CGImageRelease(v19);
        }
      }

      v12 = [obj countByEnumeratingWithState:&v118 objects:v125 count:16];
    }

    while (v12);
  }

  [viewCopy cachedWidth];
  v27 = v26;
  [viewCopy bounds];
  v29 = v28;
  v30 = [v92 count];
  if (v30 != [obj count] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v128.origin.x = *MEMORY[0x1E695EFF8];
    v128.origin.y = *(MEMORY[0x1E695EFF8] + 8);
    v128.size.width = v27;
    v128.size.height = v29;
    if (!CGRectIsEmpty(v128))
    {
      if (TIGetKeyboardGrayscaleCachingEnabledValue_onceToken != -1)
      {
        dispatch_once(&TIGetKeyboardGrayscaleCachingEnabledValue_onceToken, &__block_literal_global_100);
      }

      mEMORY[0x1E69D9680] = [MEMORY[0x1E69D9680] sharedPreferencesController];
      v32 = [mEMORY[0x1E69D9680] valueForPreferenceKey:@"KeyboardGrayscaleCachingEnabled"];

      if ([v32 BOOLValue])
      {
        v88 = [viewCopy displaysColorImage] ^ 1;
      }

      else
      {
        v88 = 0;
      }

      context = objc_autoreleasePoolPush();
      v89 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(obj, "count")}];
      assetIdiom = [viewCopy assetIdiom];
      v114 = 0u;
      v115 = 0u;
      v116 = 0u;
      v117 = 0u;
      v33 = obj;
      v34 = [v33 countByEnumeratingWithState:&v114 objects:v124 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v115;
        do
        {
          for (j = 0; j != v35; ++j)
          {
            if (*v115 != v36)
            {
              objc_enumerationMutation(v33);
            }

            v38 = *(*(&v114 + 1) + 8 * j);
            v39 = [v92 objectForKey:v38];

            if (!v39)
            {
              [viewCopy contentScaleFactor];
              v41 = +[UIKBRenderer rendererWithContext:withSize:withScale:opaque:renderFlags:assetIdiom:](UIKBRenderer, "rendererWithContext:withSize:withScale:opaque:renderFlags:assetIdiom:", 0, [viewCopy isOpaque], objc_msgSend(v38, "integerValue"), assetIdiom, v27, v29, v40);
              v42 = [v9 objectForKey:v38];
              [v41 setCacheKey:v42];

              if ([viewCopy displaysColorImage])
              {
                [v41 forceColorFormat:0];
              }

              else
              {
                [v41 setColorDetectMode:v88];
              }

              [v89 addObject:v41];
            }
          }

          v35 = [v33 countByEnumeratingWithState:&v114 objects:v124 count:16];
        }

        while (v35);
      }

      if (v88)
      {
        [viewCopy drawContentsOfRenderers:v89];
        v112 = 0u;
        v113 = 0u;
        v110 = 0u;
        v111 = 0u;
        v43 = v89;
        v44 = [v43 countByEnumeratingWithState:&v110 objects:v123 count:16];
        if (v44)
        {
          v45 = v44;
          v46 = *v111;
          do
          {
            for (k = 0; k != v45; ++k)
            {
              if (*v111 != v46)
              {
                objc_enumerationMutation(v43);
              }

              v48 = *(*(&v110 + 1) + 8 * k);
              [v48 forceColorFormat:objc_msgSend(v48, "contentColorFormat")];
              [v48 setColorDetectMode:0];
            }

            v45 = [v43 countByEnumeratingWithState:&v110 objects:v123 count:16];
          }

          while (v45);
        }
      }

      [viewCopy drawContentsOfRenderers:v89];
      if (objc_opt_respondsToSelector())
      {
        cacheDeferPriority = [viewCopy cacheDeferPriority];
      }

      else
      {
        cacheDeferPriority = [viewCopy cacheDeferable];
      }

      selfCopy7 = self;
      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      v51 = v89;
      v87 = cacheDeferPriority;
      v90 = [v51 countByEnumeratingWithState:&v106 objects:v122 count:16];
      if (v90)
      {
        v52 = *v107;
        v84 = *v107;
        v85 = v51;
        do
        {
          for (m = 0; m != v90; ++m)
          {
            if (*v107 != v52)
            {
              objc_enumerationMutation(v51);
            }

            v54 = *(*(&v106 + 1) + 8 * m);
            renderedImage = [v54 renderedImage];
            if (renderedImage)
            {
              v56 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v54, "renderFlags")}];
              [v92 setObject:renderedImage forKey:v56];

              selfCopy7 = self;
            }

            if ([viewCopy keepNonPersistent])
            {
              cacheKey = [v54 cacheKey];
              _nonPersistentCacheForKey(cacheKey, [renderedImage CGImage]);

              selfCopy7 = self;
            }

            if (+[UIKeyboardCache enabled])
            {
              cacheKey2 = [v54 cacheKey];

              v59 = cacheKey2 == 0;
              selfCopy7 = self;
              v59 = !v59 && cacheDeferPriority == 0;
              if (v59)
              {
                if (v88)
                {
                  if ([v54 contentColorFormat] == 2)
                  {
                    isOpaque = 5;
LABEL_72:
                    v104[0] = 0;
                    v104[1] = v104;
                    v104[2] = 0x3032000000;
                    v104[3] = __Block_byref_object_copy__2869;
                    v104[4] = __Block_byref_object_dispose__2870;
                    v61 = v54;
                    v105 = v61;
                    v62 = MEMORY[0x1E69D95A8];
                    [v61 size];
                    v64 = v63;
                    v66 = v65;
                    singleColor = [v61 singleColor];
                    cGColor = [singleColor CGColor];
                    [v61 scale];
                    v70 = v69;
                    contextData = [v61 contextData];
                    v103[0] = MEMORY[0x1E69E9820];
                    v103[1] = 3221225472;
                    v103[2] = __62__UIKeyboardCache_displayImagesForView_fromLayout_imageFlags___block_invoke;
                    v103[3] = &unk_1E72D8058;
                    v103[4] = v104;
                    v72 = [v62 cacheItemWithSize:isOpaque format:cGColor formatColor:contextData scale:v103 data:v64 dataReleaseHandler:{v66, v70}];

                    store = self->_store;
                    cacheKey3 = [v61 cacheKey];
                    [(TIImageCacheClient *)store storeImageDataForKey:cacheKey3 inGroup:layoutCopy item:v72];

                    selfCopy7 = self;
                    _Block_object_dispose(v104, 8);

                    v51 = v85;
                    cacheDeferPriority = v87;
                    v52 = v84;
                    goto LABEL_73;
                  }

                  if ([v54 contentColorFormat] == 1)
                  {
                    if ([viewCopy isOpaque])
                    {
                      isOpaque = 4;
                    }

                    else
                    {
                      isOpaque = 3;
                    }

                    goto LABEL_72;
                  }
                }

                isOpaque = [viewCopy isOpaque];
                goto LABEL_72;
              }
            }

LABEL_73:
          }

          v90 = [v51 countByEnumeratingWithState:&v106 objects:v122 count:16];
        }

        while (v90);
      }

      if (+[UIKeyboardCache enabled]&& cacheDeferPriority)
      {
        if (cacheDeferPriority == 2)
        {
          v75 = *MEMORY[0x1E69DDA98];
          v76 = objc_opt_class();
          v77 = NSStringFromClass(v76);
          v78 = [v75 _beginBackgroundTaskWithName:v77 expirationHandler:0];

          cacheDeferPriority = v87;
        }

        else
        {
          v78 = 0;
        }

        v81 = dispatch_time(0, 100000000);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __62__UIKeyboardCache_displayImagesForView_fromLayout_imageFlags___block_invoke_2;
        block[3] = &unk_1E72D7370;
        v96 = v51;
        v102 = v88;
        v97 = viewCopy;
        v98 = selfCopy7;
        v99 = layoutCopy;
        v100 = cacheDeferPriority;
        v101 = v78;
        dispatch_after(v81, MEMORY[0x1E69E96A0], block);

        v80 = v96;
      }

      else
      {
        idleAction = [(UIKeyboardCache *)selfCopy7 idleAction];

        if (idleAction)
        {
LABEL_84:

          objc_autoreleasePoolPop(context);
          goto LABEL_85;
        }

        v80 = [get_UIActionWhenIdleClass() actionWhenIdleWithTarget:selfCopy7 selector:sel__didIdleAndShouldWait object:0];
        [(UIKeyboardCache *)selfCopy7 setIdleAction:v80];
      }

      goto LABEL_84;
    }
  }

LABEL_85:

  return v92;
}

void __62__UIKeyboardCache_displayImagesForView_fromLayout_imageFlags___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void __62__UIKeyboardCache_displayImagesForView_fromLayout_imageFlags___block_invoke_2(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v2)
  {
    v3 = v2;
    v25 = *v30;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v30 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v29 + 1) + 8 * i);
        v6 = [v5 cacheKey];

        if (v6)
        {
          if (*(a1 + 80) == 1)
          {
            if ([v5 contentColorFormat] == 2)
            {
              v7 = 5;
LABEL_16:
              v27[0] = 0;
              v27[1] = v27;
              v27[2] = 0x3032000000;
              v27[3] = __Block_byref_object_copy__2869;
              v27[4] = __Block_byref_object_dispose__2870;
              v8 = v5;
              v28 = v8;
              v9 = MEMORY[0x1E69D95A8];
              [v8 size];
              v11 = v10;
              v13 = v12;
              v14 = [v8 singleColor];
              v15 = [v14 CGColor];
              [v8 scale];
              v17 = v16;
              v18 = [v8 contextData];
              v26[0] = MEMORY[0x1E69E9820];
              v26[1] = 3221225472;
              v26[2] = __62__UIKeyboardCache_displayImagesForView_fromLayout_imageFlags___block_invoke_3;
              v26[3] = &unk_1E72D8058;
              v26[4] = v27;
              v19 = [v9 cacheItemWithSize:v7 format:v15 formatColor:v18 scale:v26 data:v11 dataReleaseHandler:{v13, v17}];

              v20 = *(*(a1 + 48) + 8);
              v21 = [v8 cacheKey];
              [v20 storeImageDataForKey:v21 inGroup:*(a1 + 56) item:v19];

              _Block_object_dispose(v27, 8);
              continue;
            }

            if ((*(a1 + 80) & 1) != 0 && [v5 contentColorFormat] == 1)
            {
              if ([*(a1 + 40) isOpaque])
              {
                v7 = 4;
              }

              else
              {
                v7 = 3;
              }

              goto LABEL_16;
            }
          }

          v7 = [*(a1 + 40) isOpaque];
          goto LABEL_16;
        }
      }

      v3 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v3);
  }

  v22 = [*(a1 + 48) idleAction];

  if (!v22)
  {
    v23 = [get_UIActionWhenIdleClass() actionWhenIdleWithTarget:*(a1 + 48) selector:sel__didIdle object:0];
    [*(a1 + 48) setIdleAction:v23];
  }

  if (*(a1 + 64) == 2)
  {
    [*MEMORY[0x1E69DDA98] _endBackgroundTask:*(a1 + 72)];
  }
}

void __62__UIKeyboardCache_displayImagesForView_fromLayout_imageFlags___block_invoke_3(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
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
      v25 = [[UIKBCachedImage alloc] initWithCGImage:v24];
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

- (CGImage)cachedImageForKey:(id)key fromLayout:(id)layout
{
  layoutCopy = layout;
  keyCopy = key;
  if (pthread_main_np() != 1)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v14 = __TUIFaultDebugAssertLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_18FFDC000, v14, OS_LOG_TYPE_FAULT, "Unsupported use of [UIKeyboardCache cachedImageForKey:fromLayout:] off the main thread", buf, 2u);
      }
    }

    else
    {
      CategoryImpl = cachedImageForKey_fromLayout____s_category;
      if (!cachedImageForKey_fromLayout____s_category)
      {
        CategoryImpl = __TUILogGetCategoryImpl("Assert");
        atomic_store(CategoryImpl, &cachedImageForKey_fromLayout____s_category);
      }

      v13 = *(CategoryImpl + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v15 = 0;
        _os_log_impl(&dword_18FFDC000, v13, OS_LOG_TYPE_ERROR, "Unsupported use of [UIKeyboardCache cachedImageForKey:fromLayout:] off the main thread", v15, 2u);
      }
    }
  }

  activeKeyboard = [MEMORY[0x1E69DCBB8] activeKeyboard];
  traitCollection = [activeKeyboard traitCollection];
  v10 = [(UIKeyboardCache *)self cachedImageForKey:keyCopy fromLayout:layoutCopy traitCollection:traitCollection];

  return v10;
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

- (UIKeyboardCache)init
{
  v13.receiver = self;
  v13.super_class = UIKeyboardCache;
  v2 = [(UIKeyboardCache *)&v13 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E69D95A0]) initWithLocalAccess:1];
    store = v2->_store;
    v2->_store = v3;

    if (TIGetKeyboardCachingLockOnReadValue_onceToken != -1)
    {
      dispatch_once(&TIGetKeyboardCachingLockOnReadValue_onceToken, &__block_literal_global_87);
    }

    mEMORY[0x1E69D9680] = [MEMORY[0x1E69D9680] sharedPreferencesController];
    v6 = [mEMORY[0x1E69D9680] valueForPreferenceKey:@"KeyboardCachingLockOnRead"];

    LODWORD(mEMORY[0x1E69D9680]) = [v6 BOOLValue];
    v7 = MEMORY[0x1E69DDA98];
    if (mEMORY[0x1E69D9680])
    {
      -[TIImageCacheClient setLockOnRead:](v2->_store, "setLockOnRead:", [*MEMORY[0x1E69DDA98] launchedToTest]);
    }

    [(TIImageCacheClient *)v2->_store setCacheItemLimit:80];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, AXSSensitiveSettingChanged, *MEMORY[0x1E69E4D10], 0, 0);
    v9 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v9, v2, AXSSensitiveSettingChanged, *MEMORY[0x1E69E4D00], 0, 0);
    if ([*v7 launchedToTest])
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      activeRenderers = v2->_activeRenderers;
      v2->_activeRenderers = v10;
    }
  }

  return v2;
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
      dispatch_once(&TIGetKeyboardCachingDisabledValue_onceToken, &__block_literal_global_2913);
    }

    mEMORY[0x1E69D9680] = [MEMORY[0x1E69D9680] sharedPreferencesController];
    v7 = [mEMORY[0x1E69D9680] valueForPreferenceKey:@"KeyboardCachingDisabled"];

    v5 = [v7 BOOLValue] ^ 1;
  }

  return v5;
}

+ (BOOL)enabled
{
  if (pthread_main_np() != 1)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v9 = __TUIFaultDebugAssertLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_18FFDC000, v9, OS_LOG_TYPE_FAULT, "Unsupported use of +[UIKeyboardCache enabled] off the main thread", buf, 2u);
      }
    }

    else
    {
      CategoryImpl = enabled___s_category;
      if (!enabled___s_category)
      {
        CategoryImpl = __TUILogGetCategoryImpl("Assert");
        atomic_store(CategoryImpl, &enabled___s_category);
      }

      v8 = *(CategoryImpl + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v10 = 0;
        _os_log_impl(&dword_18FFDC000, v8, OS_LOG_TYPE_ERROR, "Unsupported use of +[UIKeyboardCache enabled] off the main thread", v10, 2u);
      }
    }
  }

  activeKeyboard = [MEMORY[0x1E69DCBB8] activeKeyboard];
  traitCollection = [activeKeyboard traitCollection];
  v5 = [self enabledForTraitCollection:traitCollection];

  return v5;
}

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

@end