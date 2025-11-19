@interface UISSlotMachine
+ (id)allowedLocalizations;
- (NSSet)allTags;
- (UISSlotMachine)initWithSlotDrawer:(id)a3 options:(unint64_t)a4;
- (id)remoteContentForLayerContextWithId:(unint64_t)a3 style:(id)a4 tag:(id)a5;
- (void)_getRemoteContentForLayerContextWithId:(unint64_t)a3 style:(id)a4 tag:(id)a5 forceSync:(BOOL)a6 reply:(id)a7;
- (void)removeContentForStyle:(id)a3 tag:(id)a4;
- (void)removeContentsForTag:(id)a3;
@end

@implementation UISSlotMachine

- (UISSlotMachine)initWithSlotDrawer:(id)a3 options:(unint64_t)a4
{
  v8 = a3;
  v25.receiver = self;
  v25.super_class = UISSlotMachine;
  v9 = [(UISSlotMachine *)&v25 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_slotDrawer, a3);
    v11 = objc_opt_respondsToSelector();
    if (objc_opt_respondsToSelector())
    {
      v12 = 2;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12 & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
    v14 = objc_opt_respondsToSelector();
    v15 = 4;
    if ((v14 & 1) == 0)
    {
      v15 = 0;
    }

    v16 = v13 | v15;
    if (v16 > 5 || ((1 << v16) & 0x36) == 0)
    {
      v24 = [MEMORY[0x1E696AAA8] currentHandler];
      [v24 handleFailureInMethod:a2 object:v10 file:@"UISSlotMachine.m" lineNumber:75 description:@"Unsupported drawer method configuration."];
    }

    else
    {
      v10->_slotDrawerMethod = v16;
    }

    v10->_options = a4;
    *&v10->_cachedContentsLock._os_unfair_lock_opaque = 0;
    v10->_LRUTagsByClassLock._os_unfair_lock_opaque = 0;
    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    cachedContents = v10->_cachedContents;
    v10->_cachedContents = v18;

    layerContext = v10->_layerContext;
    v10->_layerContext = 0;

    if ((a4 & 2) != 0)
    {
      v21 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:258 valueOptions:0 capacity:0];
      LRUTagsByClass = v10->_LRUTagsByClass;
      v10->_LRUTagsByClass = v21;
    }
  }

  return v10;
}

+ (id)allowedLocalizations
{
  if (qword_1ED51BF68 != -1)
  {
    dispatch_once(&qword_1ED51BF68, &__block_literal_global_8);
  }

  v3 = _MergedGlobals_11;

  return v3;
}

void __38__UISSlotMachine_allowedLocalizations__block_invoke()
{
  v0 = MEMORY[0x1E695DFF8];
  v1 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:"/" isDirectory:1 relativeToURL:0];
  v6 = [v0 fileURLWithFileSystemRepresentation:"System/Library/PrivateFrameworks/UIKitCore.framework" isDirectory:1 relativeToURL:v1];

  Unique = _CFBundleCreateUnique();
  v3 = CFBundleCopyBundleLocalizations(Unique);
  v4 = [MEMORY[0x1E695DFD8] setWithArray:v3];
  v5 = _MergedGlobals_11;
  _MergedGlobals_11 = v4;

  if (v3)
  {
    CFRelease(v3);
  }

  if (Unique)
  {
    CFRelease(Unique);
  }
}

- (NSSet)allTags
{
  v3 = objc_alloc(MEMORY[0x1E695DFD8]);
  v4 = [(NSMutableDictionary *)self->_cachedContents allKeys];
  v5 = [v3 initWithArray:v4];

  return v5;
}

- (void)_getRemoteContentForLayerContextWithId:(unint64_t)a3 style:(id)a4 tag:(id)a5 forceSync:(BOOL)a6 reply:(id)a7
{
  v45 = a6;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __83__UISSlotMachine__getRemoteContentForLayerContextWithId_style_tag_forceSync_reply___block_invoke;
  v62[3] = &unk_1E74592E8;
  v15 = v14;
  v63 = v15;
  v16 = MEMORY[0x19A8C69E0](v62);
  if (!a3)
  {
    v44 = [MEMORY[0x1E696AAA8] currentHandler];
    [v44 handleFailureInMethod:a2 object:self file:@"UISSlotMachine.m" lineNumber:137 description:{@"Invalid parameter not satisfying: %@", @"layerContextId"}];
  }

  v17 = [v13 failGradeForStyle:v12];
  if (v17)
  {
    v18 = v17;
    if ((v17 & 0x100) != 0)
    {
      +[UISSlotMachine allowedLocalizations];
    }

    else
    {
      [MEMORY[0x1E695DFD8] set];
    }
    v19 = ;
    if ([v12 gradeWithOnlyFails:v18 allowedLocalizations:v19])
    {
      v16[2](v16, 0);
    }
  }

  if (([v13 isValid] & 1) == 0)
  {
    v16[2](v16, 0);
  }

  v20 = objc_opt_class();
  v21 = v20;
  if ((self->_options & 2) != 0)
  {
    v22 = [v20 cacheLimit];
  }

  else
  {
    v22 = -1;
  }

  v23 = [v13 resolvedStyleForStyle:v12];
  objc_initWeak(&location, self);
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __83__UISSlotMachine__getRemoteContentForLayerContextWithId_style_tag_forceSync_reply___block_invoke_2;
  v53[3] = &unk_1E7459310;
  objc_copyWeak(v60, &location);
  v24 = v16;
  v58 = v24;
  v25 = v13;
  v54 = v25;
  v26 = v23;
  v55 = v26;
  v56 = self;
  v60[1] = a2;
  v60[2] = a3;
  v46 = v12;
  v57 = v46;
  v60[3] = v22;
  v60[4] = v21;
  v27 = v15;
  v59 = v27;
  v28 = MEMORY[0x19A8C69E0](v53);
  if (v22)
  {
    os_unfair_lock_lock(&self->_cachedContentsLock);
    v29 = [(NSMutableDictionary *)self->_cachedContents objectForKeyedSubscript:v25];
    v30 = [v29 objectForKeyedSubscript:v26];

    os_unfair_lock_unlock(&self->_cachedContentsLock);
    if (v30)
    {
      (v28)[2](v28, v30, 0);
      goto LABEL_33;
    }
  }

  slotDrawerMethod = self->_slotDrawerMethod;
  if (slotDrawerMethod > 3)
  {
    if (slotDrawerMethod == 4)
    {
      v36 = [(UISSlotDrawer *)self->_slotDrawer drawingWithStyle:v26 tag:v25 forRemote:1];
      v30 = v36;
      if (v36)
      {
        [v36 drawingSize];
        if (v37 > 0.0)
        {
          [v30 drawingSize];
          if (v38 > 0.0)
          {
            goto LABEL_37;
          }
        }
      }

      v39 = _UISSlotMachineServiceLogger();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_195FF3000, v39, OS_LOG_TYPE_DEFAULT, "Cannot create local content from empty drawing.", buf, 2u);
      }
    }

    else
    {
      if (slotDrawerMethod != 5)
      {
LABEL_28:
        v34 = [MEMORY[0x1E696AAA8] currentHandler];
        [v34 handleFailureInMethod:a2 object:self file:@"UISSlotMachine.m" lineNumber:279 description:@"Unsupported drawer method configuration."];
LABEL_31:
        v30 = 0;
LABEL_32:

        goto LABEL_33;
      }

      v35 = [(UISSlotDrawer *)self->_slotDrawer imageWithStyle:v26 tag:v25 forRemote:1];
      if (v35)
      {
LABEL_30:
        v34 = +[UISSlotLocalContent contentWithImage:scale:](UISSlotLocalContent, "contentWithImage:scale:", v35, [v26 displayScale]);
        (v28)[2](v28, v34, v22 != 0);
        goto LABEL_31;
      }

      v40 = [(UISSlotDrawer *)self->_slotDrawer drawingWithStyle:v26 tag:v25 forRemote:1];
      v30 = v40;
      if (v40)
      {
        [v40 drawingSize];
        if (v41 > 0.0)
        {
          [v30 drawingSize];
          if (v42 > 0.0)
          {
LABEL_37:
            v34 = [UISSlotLocalContent contentWithDrawing:v30 style:v26];
            (v28)[2](v28, v34, v22 != 0);
            goto LABEL_32;
          }
        }
      }

      v39 = _UISSlotMachineServiceLogger();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_195FF3000, v39, OS_LOG_TYPE_DEFAULT, "Cannot create local content from empty drawing.", buf, 2u);
      }
    }

    (*(v24 + 2))(v24, 0);
    goto LABEL_33;
  }

  if (slotDrawerMethod != 1)
  {
    if (slotDrawerMethod == 2)
    {
      if (v45)
      {
        v32 = [MEMORY[0x1E696AAA8] currentHandler];
        [v32 handleFailureInMethod:a2 object:self file:@"UISSlotMachine.m" lineNumber:286 description:@"Cannot synchronously create local content with asynchronous image drawer method."];
      }

      slotDrawer = self->_slotDrawer;
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __83__UISSlotMachine__getRemoteContentForLayerContextWithId_style_tag_forceSync_reply___block_invoke_40;
      v47[3] = &unk_1E7459338;
      v49 = v28;
      v48 = v26;
      v51 = v22 != 0;
      v50 = v24;
      [(UISSlotDrawer *)slotDrawer getImageWithStyle:v48 tag:v25 forRemote:1 reply:v47];

      v30 = 0;
      v34 = v49;
      goto LABEL_32;
    }

    goto LABEL_28;
  }

  v35 = [(UISSlotDrawer *)self->_slotDrawer imageWithStyle:v26 tag:v25 forRemote:1];
  if (v35)
  {
    goto LABEL_30;
  }

  v43 = _UISSlotMachineServiceLogger();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_195FF3000, v43, OS_LOG_TYPE_DEFAULT, "Cannot create local content from empty image.", buf, 2u);
  }

  (*(v24 + 2))(v24, 0);
  v30 = 0;
LABEL_33:

  objc_destroyWeak(v60);
  objc_destroyWeak(&location);
}

void __83__UISSlotMachine__getRemoteContentForLayerContextWithId_style_tag_forceSync_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4, 0, a2);
  }

  else
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"UISSlotMachineErrorDomain" code:0 userInfo:0];
    (*(v2 + 16))(v2, 0, v5);
  }
}

void __83__UISSlotMachine__getRemoteContentForLayerContextWithId_style_tag_forceSync_reply___block_invoke_2(uint64_t a1, void *a2, int a3)
{
  v37 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  if (WeakRetained)
  {
    if (!a3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    (*(*(a1 + 64) + 16))();
    if (!a3)
    {
      goto LABEL_9;
    }
  }

  os_unfair_lock_lock(WeakRetained + 8);
  v6 = [*(WeakRetained + 6) objectForKeyedSubscript:*(a1 + 32)];
  v7 = v6;
  if (v6)
  {
    [v6 setObject:v37 forKeyedSubscript:*(a1 + 40)];
  }

  else
  {
    v8 = [MEMORY[0x1E695DF90] dictionaryWithObject:v37 forKey:*(a1 + 40)];
    [*(WeakRetained + 6) setObject:v8 forKeyedSubscript:*(a1 + 32)];
  }

  os_unfair_lock_unlock(WeakRetained + 8);

LABEL_9:
  if ([MEMORY[0x1E6979518] currentState])
  {
    v36 = [MEMORY[0x1E696AAA8] currentHandler];
    [v36 handleFailureInMethod:*(a1 + 88) object:*(a1 + 48) file:@"UISSlotMachine.m" lineNumber:175 description:@"An active implicit transaction will delay slot creation; please use an explicit transaction instead"];
  }

  [MEMORY[0x1E6979518] begin];
  os_unfair_lock_lock(WeakRetained + 9);
  v9 = [UISSlotRemoteContent alloc];
  [v37 contentSize];
  v11 = v10;
  v13 = v12;
  v14 = [v37 contentScale];
  v15 = [v37 image];
  v16 = [(UISSlotRemoteContent *)v9 initWithContentSize:v14 contentScale:v15 localImage:WeakRetained + 56 toLayerContext:v11, v13];

  [(UISSlotRemoteContent *)v16 transferFromLayerContext:*(WeakRetained + 7) toLayerContextWithId:*(a1 + 96)];
  os_unfair_lock_unlock(WeakRetained + 9);
  [MEMORY[0x1E6979518] commit];
  [MEMORY[0x1E6979518] synchronize];
  if (WeakRetained[24])
  {
    v17 = [*(a1 + 32) authenticationMessageContextForStyle:*(a1 + 56)];
    v18 = [*(a1 + 32) backgroundStatisticsRegionForStyle:*(a1 + 56)];
    [*(a1 + 32) backgroundStatisticsForegroundForStyle:*(a1 + 56)];
    v20 = v19;
    [*(a1 + 32) backgroundStatisticsPassingContrastForStyle:*(a1 + 56)];
    v22 = v21;
    [*(a1 + 32) backgroundStatisticsFailingContrastForStyle:*(a1 + 56)];
    v24 = v23;
    v25 = [*(a1 + 32) hitTestInformationMaskForStyle:*(a1 + 56)];
    v26 = [*(a1 + 32) initialSampleEventForStyle:*(a1 + 56)];
    v27 = [*(a1 + 32) secureNameForStyle:*(a1 + 56)];
    LODWORD(v28) = v20;
    LODWORD(v29) = v22;
    LODWORD(v30) = v24;
    v31 = [(UISSlotRemoteContent *)v16 newTouchAuthenticationSpecificationWithAuthenticationMessageContext:v17 backgroundStatisticsRegion:v18 backgroundStatisticsForeground:v25 backgroundStatisticsPassingContrast:v26 backgroundStatisticsFailingContrast:v27 hitTestInformationMask:v28 initialSampleEvent:v29 secureName:v30];
    v32 = [MEMORY[0x1E698E448] sharedInstance];
    v33 = [MEMORY[0x1E695DFD8] setWithObject:v31];
    [v32 addTouchAuthenticationSpecifications:v33 forReason:@"slot machine"];
  }

  if (a3 && *(a1 + 104) != -1)
  {
    os_unfair_lock_lock(WeakRetained + 10);
    v34 = [*(WeakRetained + 8) objectForKey:*(a1 + 112)];
    if (!v34)
    {
      v34 = [[UISLRUCache alloc] initWithLimit:*(a1 + 104)];
      [*(WeakRetained + 8) setObject:v34 forKey:*(a1 + 112)];
    }

    v35 = [(UISLRUCache *)v34 evictedObjectForUsedObject:*(a1 + 32)];
    os_unfair_lock_unlock(WeakRetained + 10);
    if (v35)
    {
      [*(a1 + 48) removeContentsForTag:v35];
    }
  }

  (*(*(a1 + 72) + 16))();
}

void __83__UISSlotMachine__getRemoteContentForLayerContextWithId_style_tag_forceSync_reply___block_invoke_40(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 40);
    v7 = +[UISSlotLocalContent contentWithImage:scale:](UISSlotLocalContent, "contentWithImage:scale:", a2, [*(a1 + 32) displayScale]);
    (*(v6 + 16))(v6, v7, *(a1 + 56));
  }

  else
  {
    v8 = _UISSlotMachineServiceLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_195FF3000, v8, OS_LOG_TYPE_DEFAULT, "Cannot create local content from empty image.", v9, 2u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (id)remoteContentForLayerContextWithId:(unint64_t)a3 style:(id)a4 tag:(id)a5
{
  v8 = a4;
  v9 = a5;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__UISSlotMachine_remoteContentForLayerContextWithId_style_tag___block_invoke;
  v12[3] = &unk_1E7459360;
  v12[4] = &v13;
  [(UISSlotMachine *)self _getRemoteContentForLayerContextWithId:a3 style:v8 tag:v9 forceSync:1 reply:v12];
  v10 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v10;
}

- (void)removeContentForStyle:(id)a3 tag:(id)a4
{
  v8 = a4;
  v6 = [v8 resolvedStyleForStyle:a3];
  os_unfair_lock_lock(&self->_cachedContentsLock);
  v7 = [(NSMutableDictionary *)self->_cachedContents objectForKeyedSubscript:v8];
  [v7 removeObjectForKey:v6];
  if (![v7 count])
  {
    [(NSMutableDictionary *)self->_cachedContents removeObjectForKey:v8];
  }

  os_unfair_lock_unlock(&self->_cachedContentsLock);
}

- (void)removeContentsForTag:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_cachedContentsLock);
  [(NSMutableDictionary *)self->_cachedContents removeObjectForKey:v4];

  os_unfair_lock_unlock(&self->_cachedContentsLock);
}

@end