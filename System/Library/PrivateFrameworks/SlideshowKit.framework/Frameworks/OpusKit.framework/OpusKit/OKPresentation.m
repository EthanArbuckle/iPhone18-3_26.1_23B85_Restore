@interface OKPresentation
- (BOOL)guidelineAuthoringDebuggingEnabled;
- (BOOL)guidelineAuthoringFitToAudioDuration;
- (BOOL)guidelineLiveAuthoringEnabled;
- (BOOL)registerProducerPlugin:(id)a3;
- (CGSize)bestResolutionSizeForDisplaySize:(CGSize)a3 keepAspectRatio:(BOOL *)a4;
- (OKPresentation)init;
- (double)guidelineAuthoringCurrentPageDuration;
- (double)guidelineAuthoringDurationFactor;
- (double)guidelineAuthoringMaximumDuration;
- (double)guidelineAuthoringMinimumDuration;
- (double)guidelineAuthoringPageDuration;
- (double)guidelineAuthoringTotalDuration;
- (id)_temporaryDiskCacheManager;
- (id)allGuidelineGlobalUniqueKeys;
- (id)allGuidelines;
- (id)canvasForKeyPath:(id)a3;
- (id)couchWithName:(id)a3;
- (id)couchesDictionary;
- (id)couchesNames;
- (id)feederWithName:(id)a3;
- (id)feedersDictionary;
- (id)feedersNames;
- (id)guidelineAuthoringAttributedTitle;
- (id)guidelineAuthoringInteractiveTransitionSettings;
- (id)guidelineAuthoringMediaAttributes;
- (id)guidelineAuthoringMediaAttributesForKey:(id)a3;
- (id)guidelineAuthoringProducerMediaItems;
- (id)guidelineAuthoringProducerMediaURLs;
- (id)guidelineAuthoringRecommendedResolutionSizes;
- (id)guidelineAuthoringSynopsis;
- (id)guidelineAuthoringTitle;
- (id)guidelineAuthoringTransitionSettings;
- (id)guidelineAuthoringUserAudioItems;
- (id)guidelineAuthoringUserAudioURLs;
- (id)guidelineAuthoringUserMediaItems;
- (id)guidelineAuthoringUserMediaURLs;
- (id)guidelineForGlobalUniqueKey:(id)a3;
- (id)guidelineValueForGlobalUniqueKey:(id)a3;
- (id)guidelinesDictionary;
- (id)guidelinesForKey:(id)a3;
- (id)guidelinesForMediaItem:(id)a3;
- (id)guidelinesForMediaItem:(id)a3 andKey:(id)a4;
- (id)guidelinesForPresentationCanvas:(id)a3;
- (id)guidelinesForPresentationCanvas:(id)a3 andKey:(id)a4;
- (id)guidelinesForProducerPlugin:(id)a3;
- (id)guidelinesForType:(unint64_t)a3;
- (id)mainScript;
- (id)materialTemplateWithName:(id)a3;
- (id)materialTemplatesNames;
- (id)mediaFeederWithName:(id)a3;
- (id)mediaItemForURL:(id)a3;
- (id)mediaItemsForURLs:(id)a3;
- (id)metadataInMemoryForMediaItem:(id)a3;
- (id)navigatorWithName:(id)a3;
- (id)navigatorsDictionary;
- (id)navigatorsNames;
- (id)pageTemplateWithName:(id)a3;
- (id)pageTemplatesNames;
- (id)pageWithName:(id)a3;
- (id)pagesDictionary;
- (id)pagesNames;
- (id)registeredProducerPluginWithIdentifier:(id)a3;
- (id)rootCouch;
- (id)rootFeeder;
- (id)rootMediaFeeder;
- (id)rootNavigator;
- (id)templatesDictionary;
- (id)thumbnailImageInMemoryCacheForMediaItem:(id)a3 andResolution:(unint64_t)a4;
- (id)trailerCouch;
- (id)trailerNavigator;
- (id)widgetTemplateWithName:(id)a3;
- (id)widgetTemplatesNames;
- (unint64_t)guidelineAuthoringRandomSeed;
- (void)_commonInit;
- (void)_didEnterBackgroundNotification:(id)a3;
- (void)_didReceiveMemoryWarningNotification:(id)a3;
- (void)_invalidateMemoryCachedMediaItem:(id)a3;
- (void)_willTerminateNotification:(id)a3;
- (void)addCouch:(id)a3;
- (void)addFeeder:(id)a3;
- (void)addGuideline:(id)a3;
- (void)addGuidelines:(id)a3;
- (void)addMainScript:(id)a3 extend:(BOOL)a4;
- (void)addMaterialTemplate:(id)a3;
- (void)addNavigator:(id)a3;
- (void)addPage:(id)a3;
- (void)addPageTemplate:(id)a3;
- (void)addWidgetTemplate:(id)a3;
- (void)dealloc;
- (void)guidelineAuthoringMediaAttributesUpdateForKey:(id)a3 updateBlock:(id)a4;
- (void)invalidateMetadataMemoryCacheForMediaItem:(id)a3;
- (void)invalidateThumbnailsMemoryCacheForMediaItem:(id)a3;
- (void)reloadCouchesFromDictionary:(id)a3;
- (void)reloadFeedersFromDictionary:(id)a3;
- (void)reloadGuidelinesFromArray:(id)a3;
- (void)reloadNavigatorsFromDictionary:(id)a3;
- (void)reloadPagesFromDictionary:(id)a3;
- (void)reloadTemplatesFromDictionary:(id)a3;
- (void)removeAllCouches;
- (void)removeAllFeeders;
- (void)removeAllGuidelines;
- (void)removeAllMaterialTemplates;
- (void)removeAllNavigators;
- (void)removeAllPageTemplates;
- (void)removeAllPages;
- (void)removeAllTemplates;
- (void)removeAllWidgetTemplates;
- (void)removeCouchWithName:(id)a3;
- (void)removeFeederWithName:(id)a3;
- (void)removeGuideline:(id)a3;
- (void)removeGuidelineForGlobalUniqueKey:(id)a3;
- (void)removeGuidelines:(id)a3;
- (void)removeMainScript;
- (void)removeMaterialTemplateWithName:(id)a3;
- (void)removeNavigatorWithName:(id)a3;
- (void)removePageTemplateWithName:(id)a3;
- (void)removePageWithName:(id)a3;
- (void)removeWidgetTemplateWithName:(id)a3;
- (void)resolveIfNeeded;
- (void)setGuidelines:(id)a3;
- (void)setMediaFeeder:(id)a3 withName:(id)a4;
- (void)setMetadataToMemory:(id)a3 forMediaItem:(id)a4;
- (void)setPresentationChanged:(BOOL)a3;
- (void)setRootMediaFeeder:(id)a3;
- (void)setThumbnailImageToMemoryCache:(id)a3 forMediaItem:(id)a4 andResolution:(unint64_t)a5;
@end

@implementation OKPresentation

- (void)_commonInit
{
  self->_producerPlugins = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = objc_alloc_init(OKPresentationInfo);
  self->_info = v3;
  [(OKPresentationInfo *)v3 setPresentation:self];
  self->_pageTemplates = objc_alloc_init(MEMORY[0x277CBEB38]);
  self->_widgetTemplates = objc_alloc_init(MEMORY[0x277CBEB38]);
  self->_materialTemplates = objc_alloc_init(MEMORY[0x277CBEB38]);
  self->_pages = objc_alloc_init(MEMORY[0x277CBEB38]);
  self->_navigators = objc_alloc_init(MEMORY[0x277CBEB38]);
  self->_couches = objc_alloc_init(MEMORY[0x277CBEB38]);
  self->_feeders = objc_alloc_init(MEMORY[0x277CBEB38]);
  *&self->_haveTemplatesChanged = 0;
  self->_haveFeedersChanged = 0;
  self->_guidelines = objc_alloc_init(MEMORY[0x277CBEB38]);
  self->_haveGuidelinesChanged = 0;
  self->_mainScript = objc_alloc_init(MEMORY[0x277CCAB68]);
  self->_haveScriptsChanged = 0;
  self->_canBeEdited = 1;
  v4 = objc_alloc_init(MEMORY[0x277D627A0]);
  self->_feedersMemoryCache = v4;
  [(OFLRUCache *)v4 setNumberOfSlots:8];
  v5 = objc_alloc_init(MEMORY[0x277D627A0]);
  self->_mediaItemsMemoryCache = v5;
  [(OFLRUCache *)v5 setNumberOfSlots:1024];
  v6 = objc_alloc_init(MEMORY[0x277D627A0]);
  self->_metadataMemoryCache = v6;
  [(OFLRUCache *)v6 setNumberOfSlots:1024];
  self->_lowThumbnailsMemoryCache = objc_alloc_init(MEMORY[0x277D627A0]);
  self->_intermediate1ThumbnailsMemoryCache = objc_alloc_init(MEMORY[0x277D627A0]);
  self->_intermediate2ThumbnailsMemoryCache = objc_alloc_init(MEMORY[0x277D627A0]);
  [MEMORY[0x277D75418] currentDevice];
  if (objc_opt_respondsToSelector())
  {
    [objc_msgSend(MEMORY[0x277D75418] "currentDevice")];
  }

  [(OFLRUCache *)self->_lowThumbnailsMemoryCache setNumberOfSlots:256];
  [(OFLRUCache *)self->_intermediate1ThumbnailsMemoryCache setNumberOfSlots:24];
  [(OFLRUCache *)self->_intermediate2ThumbnailsMemoryCache setNumberOfSlots:12];
  objc_storeWeak(&self->_lookupDelegate, 0);
  self->_enableDisplayDebugging = 0;
  objc_storeWeak(&self->_document, 0);
  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 addObserver:self selector:sel__didReceiveMemoryWarningNotification_ name:*MEMORY[0x277D76670] object:0];
  [v7 addObserver:self selector:sel__didEnterBackgroundNotification_ name:*MEMORY[0x277D76660] object:0];
  [v7 addObserver:self selector:sel__willEnterForegroundNotification_ name:*MEMORY[0x277D76758] object:0];
  v8 = *MEMORY[0x277D76770];

  [v7 addObserver:self selector:sel__willTerminateNotification_ name:v8 object:0];
}

- (OKPresentation)init
{
  v5.receiver = self;
  v5.super_class = OKPresentation;
  v2 = [(OKPresentation *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(OKPresentation *)v2 _commonInit];
  }

  return v3;
}

- (void)dealloc
{
  v34 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277D62808] >= 5)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:5 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Presentation/OKPresentation.m" line:247 andFormat:@"Deallocing %@", self];
  }

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D76670] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D76660] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D76758] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D76770] object:0];
  info = self->_info;
  if (info)
  {

    self->_info = 0;
  }

  pageTemplates = self->_pageTemplates;
  if (pageTemplates)
  {

    self->_pageTemplates = 0;
  }

  widgetTemplates = self->_widgetTemplates;
  if (widgetTemplates)
  {

    self->_widgetTemplates = 0;
  }

  materialTemplates = self->_materialTemplates;
  if (materialTemplates)
  {

    self->_materialTemplates = 0;
  }

  pages = self->_pages;
  if (pages)
  {

    self->_pages = 0;
  }

  navigators = self->_navigators;
  if (navigators)
  {

    self->_navigators = 0;
  }

  couches = self->_couches;
  if (couches)
  {

    self->_couches = 0;
  }

  feeders = self->_feeders;
  if (feeders)
  {

    self->_feeders = 0;
  }

  guidelines = self->_guidelines;
  if (guidelines)
  {

    self->_guidelines = 0;
  }

  mainScript = self->_mainScript;
  if (mainScript)
  {

    self->_mainScript = 0;
  }

  metadataMemoryCache = self->_metadataMemoryCache;
  if (metadataMemoryCache)
  {

    self->_metadataMemoryCache = 0;
  }

  lowThumbnailsMemoryCache = self->_lowThumbnailsMemoryCache;
  if (lowThumbnailsMemoryCache)
  {

    self->_lowThumbnailsMemoryCache = 0;
  }

  intermediate1ThumbnailsMemoryCache = self->_intermediate1ThumbnailsMemoryCache;
  if (intermediate1ThumbnailsMemoryCache)
  {

    self->_intermediate1ThumbnailsMemoryCache = 0;
  }

  intermediate2ThumbnailsMemoryCache = self->_intermediate2ThumbnailsMemoryCache;
  if (intermediate2ThumbnailsMemoryCache)
  {

    self->_intermediate2ThumbnailsMemoryCache = 0;
  }

  feedersMemoryCache = self->_feedersMemoryCache;
  if (feedersMemoryCache)
  {

    self->_feedersMemoryCache = 0;
  }

  mediaItemsMemoryCache = self->_mediaItemsMemoryCache;
  if (mediaItemsMemoryCache)
  {

    self->_mediaItemsMemoryCache = 0;
  }

  objc_storeWeak(&self->_lookupDelegate, 0);
  objc_storeWeak(&self->_document, 0);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  producerPlugins = self->_producerPlugins;
  v21 = [(NSMutableArray *)producerPlugins countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v30;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v30 != v23)
        {
          objc_enumerationMutation(producerPlugins);
        }

        [*(*(&v29 + 1) + 8 * i) unloadRelease];
      }

      v22 = [(NSMutableArray *)producerPlugins countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v22);
  }

  v25 = self->_producerPlugins;
  if (v25)
  {

    self->_producerPlugins = 0;
  }

  temporaryDiskCacheManager = self->_temporaryDiskCacheManager;
  if (temporaryDiskCacheManager)
  {
    [(OKResourcesDiskCacheManager *)temporaryDiskCacheManager performAsynchronousResourceAccessUsingBlock:&__block_literal_global_32];
    v27 = self->_temporaryDiskCacheManager;
    if (v27)
    {

      self->_temporaryDiskCacheManager = 0;
    }
  }

  v28.receiver = self;
  v28.super_class = OKPresentation;
  [(OKPresentation *)&v28 dealloc];
}

- (id)registeredProducerPluginWithIdentifier:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  producerPlugins = self->_producerPlugins;
  objc_sync_enter(producerPlugins);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_producerPlugins;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([objc_msgSend(v10 "identifier")])
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:
  objc_sync_exit(producerPlugins);
  return v11;
}

- (BOOL)registerProducerPlugin:(id)a3
{
  producerPlugins = self->_producerPlugins;
  objc_sync_enter(producerPlugins);
  v6 = 1;
  if (([(NSMutableArray *)self->_producerPlugins containsObject:a3]& 1) == 0)
  {
    [(NSMutableArray *)self->_producerPlugins addObject:a3];
    if (([a3 loadRetain] & 1) == 0)
    {
      v6 = 0;
    }
  }

  objc_sync_exit(producerPlugins);
  return v6;
}

- (void)reloadTemplatesFromDictionary:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  materialTemplates = self->_materialTemplates;
  objc_sync_enter(materialTemplates);
  [(NSMutableDictionary *)self->_materialTemplates removeAllObjects];
  v6 = [a3 objectForKey:@"materials"];
  v29 = a3;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v7 = [v6 allKeys];
  v8 = [v7 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v8)
  {
    v9 = *v39;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v39 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v38 + 1) + 8 * i);
        v12 = -[OKPresentationMaterial initWithDictionary:forPresentation:andParent:]([OKPresentationMaterial alloc], "initWithDictionary:forPresentation:andParent:", [v6 objectForKey:v11], self, 0);
        [(OKPresentationCanvas *)v12 setIsTemplate:1];
        [(NSMutableDictionary *)self->_materialTemplates setObject:v12 forKey:v11];
      }

      v8 = [v7 countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v8);
  }

  objc_sync_exit(materialTemplates);
  widgetTemplates = self->_widgetTemplates;
  objc_sync_enter(widgetTemplates);
  [(NSMutableDictionary *)self->_widgetTemplates removeAllObjects];
  v14 = [v29 objectForKey:@"widgets"];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v15 = [v14 allKeys];
  v16 = [v15 countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v16)
  {
    v17 = *v35;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v35 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v34 + 1) + 8 * j);
        v20 = -[OKPresentationWidget initWithDictionary:forPresentation:andParent:]([OKPresentationWidget alloc], "initWithDictionary:forPresentation:andParent:", [v14 objectForKey:v19], self, 0);
        [(OKPresentationCanvas *)v20 setIsTemplate:1];
        [(NSMutableDictionary *)self->_widgetTemplates setObject:v20 forKey:v19];
      }

      v16 = [v15 countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v16);
  }

  objc_sync_exit(widgetTemplates);
  pageTemplates = self->_pageTemplates;
  objc_sync_enter(pageTemplates);
  [(NSMutableDictionary *)self->_pageTemplates removeAllObjects];
  v22 = [v29 objectForKey:@"pages"];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v23 = [v22 allKeys];
  v24 = [v23 countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v24)
  {
    v25 = *v31;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v31 != v25)
        {
          objc_enumerationMutation(v23);
        }

        v27 = *(*(&v30 + 1) + 8 * k);
        v28 = -[OKPresentationPage initWithDictionary:andName:forPresentation:andParent:]([OKPresentationPage alloc], "initWithDictionary:andName:forPresentation:andParent:", [v22 objectForKey:v27], v27, self, 0);
        [(OKPresentationCanvas *)v28 setIsTemplate:1];
        [(NSMutableDictionary *)self->_pageTemplates setObject:v28 forKey:v27];
      }

      v24 = [v23 countByEnumeratingWithState:&v30 objects:v42 count:16];
    }

    while (v24);
  }

  objc_sync_exit(pageTemplates);
}

- (id)templatesDictionary
{
  v41 = *MEMORY[0x277D85DE8];
  pageTemplates = self->_pageTemplates;
  objc_sync_enter(pageTemplates);
  obj = self->_widgetTemplates;
  objc_sync_enter(obj);
  materialTemplates = self->_materialTemplates;
  objc_sync_enter(materialTemplates);
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [MEMORY[0x277CBEB38] dictionary];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = [(NSMutableDictionary *)self->_pageTemplates allKeys];
  v8 = [v7 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v8)
  {
    v9 = *v33;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [v4 setObject:objc_msgSend(-[NSMutableDictionary objectForKey:](self->_pageTemplates forKey:{"objectForKey:", *(*(&v32 + 1) + 8 * i), obj), "dictionary"), *(*(&v32 + 1) + 8 * i)}];
      }

      v8 = [v7 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v8);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = [(NSMutableDictionary *)self->_widgetTemplates allKeys];
  v12 = [v11 countByEnumeratingWithState:&v28 objects:v39 count:16];
  if (v12)
  {
    v13 = *v29;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(v11);
        }

        [v5 setObject:objc_msgSend(-[NSMutableDictionary objectForKey:](self->_widgetTemplates forKey:{"objectForKey:", *(*(&v28 + 1) + 8 * j)), "dictionary"), *(*(&v28 + 1) + 8 * j)}];
      }

      v12 = [v11 countByEnumeratingWithState:&v28 objects:v39 count:16];
    }

    while (v12);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = [(NSMutableDictionary *)self->_materialTemplates allKeys];
  v16 = [v15 countByEnumeratingWithState:&v24 objects:v38 count:16];
  if (v16)
  {
    v17 = *v25;
    do
    {
      for (k = 0; k != v16; ++k)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v15);
        }

        [v6 setObject:objc_msgSend(-[NSMutableDictionary objectForKey:](self->_materialTemplates forKey:{"objectForKey:", *(*(&v24 + 1) + 8 * k)), "dictionary"), *(*(&v24 + 1) + 8 * k)}];
      }

      v16 = [v15 countByEnumeratingWithState:&v24 objects:v38 count:16];
    }

    while (v16);
  }

  v36[0] = @"pages";
  v36[1] = @"widgets";
  v37[0] = v4;
  v37[1] = v5;
  v36[2] = @"materials";
  v37[2] = v6;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:3];
  objc_sync_exit(materialTemplates);
  objc_sync_exit(obja);
  objc_sync_exit(pageTemplates);
  return v19;
}

- (void)reloadPagesFromDictionary:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  pages = self->_pages;
  objc_sync_enter(pages);
  [(NSMutableDictionary *)self->_pages removeAllObjects];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [a3 allKeys];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = -[OKPresentationPage initWithDictionary:andName:forPresentation:andParent:]([OKPresentationPage alloc], "initWithDictionary:andName:forPresentation:andParent:", [a3 objectForKey:v10], v10, self, 0);
        [(NSMutableDictionary *)self->_pages setObject:v11 forKey:v10];
      }

      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  objc_sync_exit(pages);
}

- (id)pagesDictionary
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  pages = self->_pages;
  objc_sync_enter(pages);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSMutableDictionary *)self->_pages allKeys];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [v3 setObject:objc_msgSend(-[NSMutableDictionary objectForKey:](self->_pages forKey:{"objectForKey:", *(*(&v10 + 1) + 8 * i)), "dictionary"), *(*(&v10 + 1) + 8 * i)}];
      }

      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  objc_sync_exit(pages);
  return v3;
}

- (void)reloadNavigatorsFromDictionary:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  navigators = self->_navigators;
  objc_sync_enter(navigators);
  [(NSMutableDictionary *)self->_navigators removeAllObjects];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [a3 allKeys];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = -[OKPresentationNavigator initWithDictionary:andName:forPresentation:andParent:]([OKPresentationNavigator alloc], "initWithDictionary:andName:forPresentation:andParent:", [a3 objectForKey:v10], v10, self, 0);
        [(NSMutableDictionary *)self->_navigators setObject:v11 forKey:v10];
      }

      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  objc_sync_exit(navigators);
}

- (id)navigatorsDictionary
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  navigators = self->_navigators;
  objc_sync_enter(navigators);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSMutableDictionary *)self->_navigators allKeys];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [v3 setObject:objc_msgSend(-[NSMutableDictionary objectForKey:](self->_navigators forKey:{"objectForKey:", *(*(&v10 + 1) + 8 * i)), "dictionary"), *(*(&v10 + 1) + 8 * i)}];
      }

      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  objc_sync_exit(navigators);
  return v3;
}

- (void)reloadCouchesFromDictionary:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  couches = self->_couches;
  objc_sync_enter(couches);
  [(NSMutableDictionary *)self->_couches removeAllObjects];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [a3 allKeys];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = -[OKPresentationCouch initWithDictionary:andName:forPresentation:]([OKPresentationCouch alloc], "initWithDictionary:andName:forPresentation:", [a3 objectForKey:v10], v10, self);
        [(NSMutableDictionary *)self->_couches setObject:v11 forKey:v10];
      }

      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  objc_sync_exit(couches);
}

- (id)couchesDictionary
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  couches = self->_couches;
  objc_sync_enter(couches);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSMutableDictionary *)self->_couches allKeys];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [v3 setObject:objc_msgSend(-[NSMutableDictionary objectForKey:](self->_couches forKey:{"objectForKey:", *(*(&v10 + 1) + 8 * i)), "dictionary"), *(*(&v10 + 1) + 8 * i)}];
      }

      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  objc_sync_exit(couches);
  return v3;
}

- (void)reloadGuidelinesFromArray:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  guidelines = self->_guidelines;
  objc_sync_enter(guidelines);
  [(NSMutableDictionary *)self->_guidelines removeAllObjects];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = [[OKPresentationGuideline alloc] initWithDictionary:*(*(&v10 + 1) + 8 * i)];
        [(OKPresentationGuideline *)v9 setPresentation:self];
        [(NSMutableDictionary *)self->_guidelines setObject:v9 forKey:[(OKPresentationGuideline *)v9 globalUniqueKey]];
      }

      v6 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  objc_sync_exit(guidelines);
}

- (id)guidelinesDictionary
{
  v2 = [(NSMutableDictionary *)self->_guidelines allValues];

  return [v2 valueForKey:@"dictionary"];
}

- (void)reloadFeedersFromDictionary:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  feeders = self->_feeders;
  objc_sync_enter(feeders);
  [(NSMutableDictionary *)self->_feeders removeAllObjects];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [a3 allKeys];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = -[OKPresentationFeeder initWithDictionary:andName:forPresentation:]([OKPresentationFeeder alloc], "initWithDictionary:andName:forPresentation:", [a3 objectForKey:v10], v10, self);
        [(NSMutableDictionary *)self->_feeders setObject:v11 forKey:v10];
      }

      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  objc_sync_exit(feeders);
}

- (id)feedersDictionary
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  feeders = self->_feeders;
  objc_sync_enter(feeders);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSMutableDictionary *)self->_feeders allKeys];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [v3 setObject:objc_msgSend(-[NSMutableDictionary objectForKey:](self->_feeders forKey:{"objectForKey:", *(*(&v10 + 1) + 8 * i)), "dictionary"), *(*(&v10 + 1) + 8 * i)}];
      }

      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  objc_sync_exit(feeders);
  return v3;
}

- (void)setPresentationChanged:(BOOL)a3
{
  self->_haveGuidelinesChanged = a3;
  self->_haveScriptsChanged = a3;
  *&self->_haveTemplatesChanged = 16843009 * a3;
  self->_haveFeedersChanged = a3;
}

- (id)rootMediaFeeder
{
  if ([(OKPresentationInfo *)self->_info mainFeederName])
  {
    v3 = [(OKPresentationInfo *)self->_info mainFeederName];
  }

  else
  {
    v3 = @"root";
  }

  return [(OKPresentation *)self mediaFeederWithName:v3];
}

- (id)mediaFeederWithName:(id)a3
{
  feedersMemoryCache = self->_feedersMemoryCache;
  objc_sync_enter(feedersMemoryCache);
  v6 = [(OFLRUCache *)self->_feedersMemoryCache objectForKey:a3];
  if (!v6)
  {
    v8 = [(OKPresentation *)self feederWithName:a3];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 className];
      v11 = [+[OKProducerManager defaultManager](OKProducerManager "defaultManager")];
      if (v11 && [v11 isSubclassOfClass:objc_opt_class()])
      {
        v7 = +[OKSettings objectFromClass:withSettings:andResolution:](OKSettings, "objectFromClass:withSettings:andResolution:", v11, [v9 settings], 0);
        [v7 setPresentation:self];
        [(OFLRUCache *)self->_feedersMemoryCache setObject:v7 forKey:a3];
        goto LABEL_12;
      }

      if (*MEMORY[0x277D62808] >= 4)
      {
        [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Presentation/OKPresentation.m" line:884 andFormat:@"Class %@ is invalid for creating feeder", v10];
      }
    }

    else if (*MEMORY[0x277D62808] >= 4)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Presentation/OKPresentation.m" line:889 andFormat:@"Feeder name %@ does not exist", a3];
    }

    v7 = 0;
    goto LABEL_12;
  }

  v7 = v6;
LABEL_12:
  objc_sync_exit(feedersMemoryCache);
  return v7;
}

- (void)setRootMediaFeeder:(id)a3
{
  if ([(OKPresentationInfo *)self->_info mainFeederName])
  {
    v5 = [(OKPresentationInfo *)self->_info mainFeederName];
  }

  else
  {
    v5 = @"root";
  }

  [(OKPresentation *)self setMediaFeeder:a3 withName:v5];
}

- (void)setMediaFeeder:(id)a3 withName:(id)a4
{
  feedersMemoryCache = self->_feedersMemoryCache;
  objc_sync_enter(feedersMemoryCache);
  [a3 setPresentation:self];
  [(OFLRUCache *)self->_feedersMemoryCache setObject:a3 forKey:a4];
  if ([a3 canBePersisted])
  {
    v8 = objc_opt_class();
    -[OKPresentation addFeeder:](self, "addFeeder:", +[OKPresentationFeeder feederWithName:className:settings:](OKPresentationFeeder, "feederWithName:className:settings:", a4, NSStringFromClass(v8), [a3 feederSettings]));
  }

  objc_sync_exit(feedersMemoryCache);
}

- (id)mediaItemForURL:(id)a3
{
  v3 = a3;
  if (!a3)
  {
    return v3;
  }

  v5 = [(OKPresentation *)self lookupDelegate];
  if (!v5 || (v6 = [(OKPresentationLookupDelegate *)v5 mediaItemForURL:v3]) == 0)
  {
    mediaItemsMemoryCache = self->_mediaItemsMemoryCache;
    objc_sync_enter(mediaItemsMemoryCache);
    v10 = [MEMORY[0x277CCACA8] normalizeString:{objc_msgSend(v3, "absoluteString")}];
    v11 = [(OFLRUCache *)self->_mediaItemsMemoryCache objectForKey:v10];
    if (v11)
    {
      v3 = v11;
    }

    else
    {
      v12 = [+[OKMediaManager defaultManager](OKMediaManager "defaultManager")];
      v3 = v12;
      if (v12)
      {
        [v12 setPresentation:self];
        [(OFLRUCache *)self->_mediaItemsMemoryCache setObject:v3 forKey:v10];
      }
    }

    objc_sync_exit(mediaItemsMemoryCache);
    return v3;
  }

  v7 = v6;

  return v7;
}

- (id)mediaItemsForURLs:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v10 = [(OKPresentation *)self mediaItemForURL:*(*(&v12 + 1) + 8 * v9)];
        if (v10)
        {
          [v5 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v5;
}

- (void)_invalidateMemoryCachedMediaItem:(id)a3
{
  mediaItemsMemoryCache = self->_mediaItemsMemoryCache;
  objc_sync_enter(mediaItemsMemoryCache);
  -[OFLRUCache removeObjectForKey:](self->_mediaItemsMemoryCache, "removeObjectForKey:", [a3 uniqueURLNormalisedString]);
  objc_sync_exit(mediaItemsMemoryCache);
  [(OKPresentation *)self invalidateMetadataMemoryCacheForMediaItem:a3];

  [(OKPresentation *)self invalidateThumbnailsMemoryCacheForMediaItem:a3];
}

- (id)_temporaryDiskCacheManager
{
  objc_sync_enter(self);
  temporaryDiskCacheManager = self->_temporaryDiskCacheManager;
  if (!temporaryDiskCacheManager)
  {
    temporaryDiskCacheManager = +[OKResourcesDiskCacheManager temporaryManagerWithIdentifier:](OKResourcesDiskCacheManager, "temporaryManagerWithIdentifier:", [MEMORY[0x277CCACA8] generateUUID]);
    self->_temporaryDiskCacheManager = temporaryDiskCacheManager;
  }

  objc_sync_exit(self);
  return temporaryDiskCacheManager;
}

- (id)metadataInMemoryForMediaItem:(id)a3
{
  metadataMemoryCache = self->_metadataMemoryCache;
  v4 = [a3 uniqueURLNormalisedString];

  return [(OFLRUCache *)metadataMemoryCache objectForKey:v4];
}

- (void)setMetadataToMemory:(id)a3 forMediaItem:(id)a4
{
  metadataMemoryCache = self->_metadataMemoryCache;
  v6 = [a4 uniqueURLNormalisedString];

  [(OFLRUCache *)metadataMemoryCache setObject:a3 forKey:v6];
}

- (void)invalidateMetadataMemoryCacheForMediaItem:(id)a3
{
  metadataMemoryCache = self->_metadataMemoryCache;
  v4 = [a3 uniqueURLNormalisedString];

  [(OFLRUCache *)metadataMemoryCache removeObjectForKey:v4];
}

- (id)thumbnailImageInMemoryCacheForMediaItem:(id)a3 andResolution:(unint64_t)a4
{
  if (a4 == 1)
  {
    lowThumbnailsMemoryCache = self->_lowThumbnailsMemoryCache;
    v5 = [a3 uniqueURLNormalisedString];
    v6 = lowThumbnailsMemoryCache;
  }

  else
  {
    if (a4 > 0x200)
    {
      intermediate2ThumbnailsMemoryCache = self->_intermediate2ThumbnailsMemoryCache;
    }

    else
    {
      intermediate2ThumbnailsMemoryCache = self->_intermediate1ThumbnailsMemoryCache;
    }

    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%ld", objc_msgSend(a3, "uniqueURLNormalisedString"), a4];
    v6 = intermediate2ThumbnailsMemoryCache;
  }

  return [(OFLRUCache *)v6 objectForKey:v5];
}

- (void)setThumbnailImageToMemoryCache:(id)a3 forMediaItem:(id)a4 andResolution:(unint64_t)a5
{
  if (a5 == 1)
  {
    lowThumbnailsMemoryCache = self->_lowThumbnailsMemoryCache;
    v7 = [a4 uniqueURLNormalisedString];
    v8 = lowThumbnailsMemoryCache;
  }

  else
  {
    if (a5 > 0x200)
    {
      intermediate2ThumbnailsMemoryCache = self->_intermediate2ThumbnailsMemoryCache;
    }

    else
    {
      intermediate2ThumbnailsMemoryCache = self->_intermediate1ThumbnailsMemoryCache;
    }

    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%ld", objc_msgSend(a4, "uniqueURLNormalisedString"), a5];
    v8 = intermediate2ThumbnailsMemoryCache;
  }

  [(OFLRUCache *)v8 setObject:a3 forKey:v7];
}

- (void)invalidateThumbnailsMemoryCacheForMediaItem:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  -[OFLRUCache removeObjectForKey:](self->_lowThumbnailsMemoryCache, "removeObjectForKey:", [a3 uniqueURLNormalisedString]);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [(OFLRUCache *)self->_intermediate1ThumbnailsMemoryCache allKeys];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v19 + 1) + 8 * v9) hasPrefix:{objc_msgSend(a3, "uniqueURLNormalisedString")}])
        {
          -[OFLRUCache removeObjectForKey:](self->_intermediate1ThumbnailsMemoryCache, "removeObjectForKey:", [a3 uniqueURLNormalisedString]);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = [(OFLRUCache *)self->_intermediate2ThumbnailsMemoryCache allKeys];
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        if ([*(*(&v15 + 1) + 8 * v14) hasPrefix:{objc_msgSend(a3, "uniqueURLNormalisedString")}])
        {
          -[OFLRUCache removeObjectForKey:](self->_intermediate2ThumbnailsMemoryCache, "removeObjectForKey:", [a3 uniqueURLNormalisedString]);
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

- (void)_didReceiveMemoryWarningNotification:(id)a3
{
  [(OFLRUCache *)self->_lowThumbnailsMemoryCache removeAllObjects];
  [(OFLRUCache *)self->_intermediate1ThumbnailsMemoryCache removeAllObjects];
  [(OFLRUCache *)self->_intermediate2ThumbnailsMemoryCache removeAllObjects];
  mediaItemsMemoryCache = self->_mediaItemsMemoryCache;
  objc_sync_enter(mediaItemsMemoryCache);
  [(OFLRUCache *)self->_mediaItemsMemoryCache removeAllObjects];
  objc_sync_exit(mediaItemsMemoryCache);
  metadataMemoryCache = self->_metadataMemoryCache;

  [(OFLRUCache *)metadataMemoryCache removeAllObjects];
}

- (void)_didEnterBackgroundNotification:(id)a3
{
  [(OFLRUCache *)self->_lowThumbnailsMemoryCache removeAllObjects];
  [(OFLRUCache *)self->_intermediate1ThumbnailsMemoryCache removeAllObjects];
  [(OFLRUCache *)self->_intermediate2ThumbnailsMemoryCache removeAllObjects];
  mediaItemsMemoryCache = self->_mediaItemsMemoryCache;
  objc_sync_enter(mediaItemsMemoryCache);
  [(OFLRUCache *)self->_mediaItemsMemoryCache removeAllObjects];
  objc_sync_exit(mediaItemsMemoryCache);
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5 = [MEMORY[0x277D75128] sharedApplication];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__OKPresentation__didEnterBackgroundNotification___block_invoke;
  v9[3] = &unk_279C8EA68;
  v9[4] = &v10;
  v6 = [v5 beginBackgroundTaskWithExpirationHandler:v9];
  v11[3] = v6;
  if (v6 != *MEMORY[0x277D767B0])
  {
    global_queue = dispatch_get_global_queue(2, 0);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __50__OKPresentation__didEnterBackgroundNotification___block_invoke_2;
    v8[3] = &unk_279C8EA68;
    v8[4] = &v10;
    dispatch_async(global_queue, v8);
  }

  _Block_object_dispose(&v10, 8);
}

uint64_t __50__OKPresentation__didEnterBackgroundNotification___block_invoke(uint64_t a1)
{
  result = [objc_msgSend(MEMORY[0x277D75128] "sharedApplication")];
  if (!result)
  {
    v3 = [MEMORY[0x277D75128] sharedApplication];
    v4 = *(*(*(a1 + 32) + 8) + 24);

    return [v3 endBackgroundTask:v4];
  }

  return result;
}

uint64_t __50__OKPresentation__didEnterBackgroundNotification___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  v3 = *(*(*(a1 + 32) + 8) + 24);

  return [v2 endBackgroundTask:v3];
}

- (void)_willTerminateNotification:(id)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v3 = [MEMORY[0x277D75128] sharedApplication];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__OKPresentation__willTerminateNotification___block_invoke;
  v7[3] = &unk_279C8EA68;
  v7[4] = &v8;
  v4 = [v3 beginBackgroundTaskWithExpirationHandler:v7];
  v9[3] = v4;
  if (v4 != *MEMORY[0x277D767B0])
  {
    global_queue = dispatch_get_global_queue(2, 0);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __45__OKPresentation__willTerminateNotification___block_invoke_2;
    v6[3] = &unk_279C8EA68;
    v6[4] = &v8;
    dispatch_async(global_queue, v6);
  }

  _Block_object_dispose(&v8, 8);
}

uint64_t __45__OKPresentation__willTerminateNotification___block_invoke(uint64_t a1)
{
  result = [objc_msgSend(MEMORY[0x277D75128] "sharedApplication")];
  if (!result)
  {
    v3 = [MEMORY[0x277D75128] sharedApplication];
    v4 = *(*(*(a1 + 32) + 8) + 24);

    return [v3 endBackgroundTask:v4];
  }

  return result;
}

uint64_t __45__OKPresentation__willTerminateNotification___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  v3 = *(*(*(a1 + 32) + 8) + 24);

  return [v2 endBackgroundTask:v3];
}

- (id)feedersNames
{
  feeders = self->_feeders;
  objc_sync_enter(feeders);
  v4 = [(NSMutableDictionary *)self->_feeders allKeys];
  objc_sync_exit(feeders);
  return v4;
}

- (id)feederWithName:(id)a3
{
  feeders = self->_feeders;
  objc_sync_enter(feeders);
  v6 = [(NSMutableDictionary *)self->_feeders objectForKey:a3];
  objc_sync_exit(feeders);
  return v6;
}

- (id)rootFeeder
{
  if ([(OKPresentationInfo *)self->_info mainFeederName])
  {
    v3 = [(OKPresentationInfo *)self->_info mainFeederName];
  }

  else
  {
    v3 = @"root";
  }

  return [(OKPresentation *)self feederWithName:v3];
}

- (void)addFeeder:(id)a3
{
  feeders = self->_feeders;
  objc_sync_enter(feeders);
  [a3 setPresentation:self];
  [a3 resolveIfNeeded];
  -[NSMutableDictionary setObject:forKey:](self->_feeders, "setObject:forKey:", a3, [a3 name]);
  self->_haveFeedersChanged = 1;

  objc_sync_exit(feeders);
}

- (void)removeFeederWithName:(id)a3
{
  feeders = self->_feeders;
  objc_sync_enter(feeders);
  [(NSMutableDictionary *)self->_feeders removeObjectForKey:a3];
  [(OFLRUCache *)self->_feedersMemoryCache removeObjectForKey:a3];
  self->_haveFeedersChanged = 1;

  objc_sync_exit(feeders);
}

- (void)removeAllFeeders
{
  feeders = self->_feeders;
  objc_sync_enter(feeders);
  [(NSMutableDictionary *)self->_feeders removeAllObjects];
  self->_haveFeedersChanged = 1;

  objc_sync_exit(feeders);
}

- (id)pageTemplatesNames
{
  pageTemplates = self->_pageTemplates;
  objc_sync_enter(pageTemplates);
  v4 = [(NSMutableDictionary *)self->_pageTemplates allKeys];
  objc_sync_exit(pageTemplates);
  return v4;
}

- (id)pageTemplateWithName:(id)a3
{
  pageTemplates = self->_pageTemplates;
  objc_sync_enter(pageTemplates);
  v6 = [(NSMutableDictionary *)self->_pageTemplates objectForKey:a3];
  objc_sync_exit(pageTemplates);
  return v6;
}

- (void)addPageTemplate:(id)a3
{
  pageTemplates = self->_pageTemplates;
  objc_sync_enter(pageTemplates);
  [a3 setIsTemplate:1];
  [a3 setPresentation:self];
  [a3 resolveIfNeeded];
  -[NSMutableDictionary setObject:forKey:](self->_pageTemplates, "setObject:forKey:", a3, [a3 name]);
  self->_haveTemplatesChanged = 1;

  objc_sync_exit(pageTemplates);
}

- (void)removePageTemplateWithName:(id)a3
{
  pageTemplates = self->_pageTemplates;
  objc_sync_enter(pageTemplates);
  [(NSMutableDictionary *)self->_pageTemplates removeObjectForKey:a3];
  self->_haveTemplatesChanged = 1;

  objc_sync_exit(pageTemplates);
}

- (void)removeAllPageTemplates
{
  pageTemplates = self->_pageTemplates;
  objc_sync_enter(pageTemplates);
  [(NSMutableDictionary *)self->_pageTemplates removeAllObjects];
  self->_haveTemplatesChanged = 1;

  objc_sync_exit(pageTemplates);
}

- (id)widgetTemplatesNames
{
  widgetTemplates = self->_widgetTemplates;
  objc_sync_enter(widgetTemplates);
  v4 = [(NSMutableDictionary *)self->_widgetTemplates allKeys];
  objc_sync_exit(widgetTemplates);
  return v4;
}

- (id)widgetTemplateWithName:(id)a3
{
  widgetTemplates = self->_widgetTemplates;
  objc_sync_enter(widgetTemplates);
  v6 = [(NSMutableDictionary *)self->_widgetTemplates objectForKey:a3];
  objc_sync_exit(widgetTemplates);
  return v6;
}

- (void)addWidgetTemplate:(id)a3
{
  widgetTemplates = self->_widgetTemplates;
  objc_sync_enter(widgetTemplates);
  [a3 setIsTemplate:1];
  [a3 setPresentation:self];
  [a3 resolveIfNeeded];
  -[NSMutableDictionary setObject:forKey:](self->_widgetTemplates, "setObject:forKey:", a3, [a3 name]);
  self->_haveTemplatesChanged = 1;

  objc_sync_exit(widgetTemplates);
}

- (void)removeWidgetTemplateWithName:(id)a3
{
  widgetTemplates = self->_widgetTemplates;
  objc_sync_enter(widgetTemplates);
  [(NSMutableDictionary *)self->_widgetTemplates removeObjectForKey:a3];
  self->_haveTemplatesChanged = 1;

  objc_sync_exit(widgetTemplates);
}

- (void)removeAllWidgetTemplates
{
  widgetTemplates = self->_widgetTemplates;
  objc_sync_enter(widgetTemplates);
  [(NSMutableDictionary *)self->_widgetTemplates removeAllObjects];
  self->_haveTemplatesChanged = 1;

  objc_sync_exit(widgetTemplates);
}

- (id)materialTemplatesNames
{
  materialTemplates = self->_materialTemplates;
  objc_sync_enter(materialTemplates);
  v4 = [(NSMutableDictionary *)self->_materialTemplates allKeys];
  objc_sync_exit(materialTemplates);
  return v4;
}

- (id)materialTemplateWithName:(id)a3
{
  materialTemplates = self->_materialTemplates;
  objc_sync_enter(materialTemplates);
  v6 = [(NSMutableDictionary *)self->_materialTemplates objectForKey:a3];
  objc_sync_exit(materialTemplates);
  return v6;
}

- (void)addMaterialTemplate:(id)a3
{
  materialTemplates = self->_materialTemplates;
  objc_sync_enter(materialTemplates);
  [a3 setIsTemplate:1];
  [a3 setPresentation:self];
  [a3 resolveIfNeeded];
  -[NSMutableDictionary setObject:forKey:](self->_materialTemplates, "setObject:forKey:", a3, [a3 name]);
  self->_haveTemplatesChanged = 1;

  objc_sync_exit(materialTemplates);
}

- (void)removeMaterialTemplateWithName:(id)a3
{
  materialTemplates = self->_materialTemplates;
  objc_sync_enter(materialTemplates);
  [(NSMutableDictionary *)self->_materialTemplates removeObjectForKey:a3];
  self->_haveTemplatesChanged = 1;

  objc_sync_exit(materialTemplates);
}

- (void)removeAllMaterialTemplates
{
  materialTemplates = self->_materialTemplates;
  objc_sync_enter(materialTemplates);
  [(NSMutableDictionary *)self->_materialTemplates removeAllObjects];
  self->_haveTemplatesChanged = 1;

  objc_sync_exit(materialTemplates);
}

- (void)removeAllTemplates
{
  [(OKPresentation *)self removeAllPageTemplates];
  [(OKPresentation *)self removeAllWidgetTemplates];

  [(OKPresentation *)self removeAllMaterialTemplates];
}

- (id)pagesNames
{
  pages = self->_pages;
  objc_sync_enter(pages);
  v4 = [(NSMutableDictionary *)self->_pages allKeys];
  objc_sync_exit(pages);
  return v4;
}

- (id)pageWithName:(id)a3
{
  pages = self->_pages;
  objc_sync_enter(pages);
  v6 = [(NSMutableDictionary *)self->_pages objectForKey:a3];
  objc_sync_exit(pages);
  return v6;
}

- (void)addPage:(id)a3
{
  pages = self->_pages;
  objc_sync_enter(pages);
  [a3 setPresentation:self];
  [a3 resolveIfNeeded];
  -[NSMutableDictionary setObject:forKey:](self->_pages, "setObject:forKey:", a3, [a3 name]);
  self->_havePagesChanged = 1;

  objc_sync_exit(pages);
}

- (void)removePageWithName:(id)a3
{
  pages = self->_pages;
  objc_sync_enter(pages);
  [(NSMutableDictionary *)self->_pages removeObjectForKey:a3];
  self->_havePagesChanged = 1;

  objc_sync_exit(pages);
}

- (void)removeAllPages
{
  pages = self->_pages;
  objc_sync_enter(pages);
  [(NSMutableDictionary *)self->_pages removeAllObjects];
  self->_havePagesChanged = 1;

  objc_sync_exit(pages);
}

- (id)navigatorsNames
{
  navigators = self->_navigators;
  objc_sync_enter(navigators);
  v4 = [(NSMutableDictionary *)self->_navigators allKeys];
  objc_sync_exit(navigators);
  return v4;
}

- (id)navigatorWithName:(id)a3
{
  navigators = self->_navigators;
  objc_sync_enter(navigators);
  v6 = [(NSMutableDictionary *)self->_navigators objectForKey:a3];
  objc_sync_exit(navigators);
  return v6;
}

- (id)rootNavigator
{
  if ([(OKPresentationInfo *)self->_info mainNavigatorName])
  {
    v3 = [(OKPresentationInfo *)self->_info mainNavigatorName];
  }

  else
  {
    v3 = @"root";
  }

  return [(OKPresentation *)self navigatorWithName:v3];
}

- (id)trailerNavigator
{
  if ([(OKPresentationInfo *)self->_info trailerNavigatorName])
  {
    v3 = [(OKPresentationInfo *)self->_info trailerNavigatorName];
  }

  else
  {
    v3 = @"trailer";
  }

  return [(OKPresentation *)self navigatorWithName:v3];
}

- (void)addNavigator:(id)a3
{
  navigators = self->_navigators;
  objc_sync_enter(navigators);
  [a3 setPresentation:self];
  [a3 resolveIfNeeded];
  -[NSMutableDictionary setObject:forKey:](self->_navigators, "setObject:forKey:", a3, [a3 name]);
  self->_haveNavigatorsChanged = 1;

  objc_sync_exit(navigators);
}

- (void)removeNavigatorWithName:(id)a3
{
  navigators = self->_navigators;
  objc_sync_enter(navigators);
  [(NSMutableDictionary *)self->_navigators removeObjectForKey:a3];
  self->_haveNavigatorsChanged = 1;

  objc_sync_exit(navigators);
}

- (void)removeAllNavigators
{
  navigators = self->_navigators;
  objc_sync_enter(navigators);
  [(NSMutableDictionary *)self->_navigators removeAllObjects];
  self->_haveNavigatorsChanged = 1;

  objc_sync_exit(navigators);
}

- (id)couchesNames
{
  couches = self->_couches;
  objc_sync_enter(couches);
  v4 = [(NSMutableDictionary *)self->_couches allKeys];
  objc_sync_exit(couches);
  return v4;
}

- (id)couchWithName:(id)a3
{
  couches = self->_couches;
  objc_sync_enter(couches);
  v6 = [(NSMutableDictionary *)self->_couches objectForKey:a3];
  objc_sync_exit(couches);
  return v6;
}

- (id)rootCouch
{
  if ([(OKPresentationInfo *)self->_info mainNavigatorName])
  {
    v3 = [(OKPresentationInfo *)self->_info mainNavigatorName];
  }

  else
  {
    v3 = @"root";
  }

  return [(OKPresentation *)self couchWithName:v3];
}

- (id)trailerCouch
{
  if ([(OKPresentationInfo *)self->_info trailerNavigatorName])
  {
    v3 = [(OKPresentationInfo *)self->_info trailerNavigatorName];
  }

  else
  {
    v3 = @"trailer";
  }

  return [(OKPresentation *)self couchWithName:v3];
}

- (void)addCouch:(id)a3
{
  couches = self->_couches;
  objc_sync_enter(couches);
  [a3 setPresentation:self];
  [a3 resolveIfNeeded];
  -[NSMutableDictionary setObject:forKey:](self->_couches, "setObject:forKey:", a3, [a3 name]);
  self->_haveCouchesChanged = 1;

  objc_sync_exit(couches);
}

- (void)removeCouchWithName:(id)a3
{
  couches = self->_couches;
  objc_sync_enter(couches);
  [(NSMutableDictionary *)self->_couches removeObjectForKey:a3];
  self->_haveCouchesChanged = 1;

  objc_sync_exit(couches);
}

- (void)removeAllCouches
{
  couches = self->_couches;
  objc_sync_enter(couches);
  [(NSMutableDictionary *)self->_couches removeAllObjects];
  self->_haveCouchesChanged = 1;

  objc_sync_exit(couches);
}

- (void)resolveIfNeeded
{
  [-[NSMutableDictionary allValues](self->_materialTemplates "allValues")];
  [-[NSMutableDictionary allValues](self->_widgetTemplates "allValues")];
  [-[NSMutableDictionary allValues](self->_pageTemplates "allValues")];
  [-[OKPresentation rootNavigator](self "rootNavigator")];
  [-[OKPresentation trailerNavigator](self "trailerNavigator")];
  [-[OKPresentation rootCouch](self "rootCouch")];
  v3 = [(OKPresentation *)self trailerCouch];

  [v3 resolveIfNeeded];
}

- (id)mainScript
{
  mainScript = self->_mainScript;
  objc_sync_enter(mainScript);
  v4 = self->_mainScript;
  objc_sync_exit(mainScript);
  return v4;
}

- (void)addMainScript:(id)a3 extend:(BOOL)a4
{
  mainScript = self->_mainScript;
  objc_sync_enter(mainScript);
  v8 = self->_mainScript;
  if (a4)
  {
    [(NSMutableString *)v8 appendString:@"\n\n"];
    [(NSMutableString *)self->_mainScript appendString:a3];
  }

  else
  {
    [(NSMutableString *)v8 setString:a3];
  }

  self->_haveScriptsChanged = 1;

  objc_sync_exit(mainScript);
}

- (void)removeMainScript
{
  mainScript = self->_mainScript;
  objc_sync_enter(mainScript);
  [(NSMutableString *)self->_mainScript setString:&stru_287AC35A0];
  objc_sync_exit(mainScript);
  self->_haveScriptsChanged = 1;
}

- (id)canvasForKeyPath:(id)a3
{
  v4 = [a3 componentsSeparatedByString:@"."];
  if ([v4 count])
  {
    v5 = -[OKPresentation navigatorWithName:](self, "navigatorWithName:", [v4 objectAtIndexedSubscript:0]);
    if (v5)
    {
      v6 = 1;
      while (v6 < [v4 count])
      {
        v7 = v6 + 1;
        v5 = [v5 canvasWithName:{objc_msgSend(v4, "objectAtIndexedSubscript:", v6++)}];
        if (!v5)
        {
          goto LABEL_10;
        }
      }

      v7 = v6;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

LABEL_10:
  if (v7 == [v4 count])
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

- (void)addGuideline:(id)a3
{
  guidelines = self->_guidelines;
  objc_sync_enter(guidelines);
  [a3 setPresentation:self];
  -[NSMutableDictionary setObject:forKey:](self->_guidelines, "setObject:forKey:", a3, [a3 globalUniqueKey]);
  self->_haveGuidelinesChanged = 1;

  objc_sync_exit(guidelines);
}

- (void)addGuidelines:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  guidelines = self->_guidelines;
  objc_sync_enter(guidelines);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        [v9 setPresentation:self];
        -[NSMutableDictionary setObject:forKey:](self->_guidelines, "setObject:forKey:", v9, [v9 globalUniqueKey]);
      }

      v6 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  self->_haveGuidelinesChanged = 1;
  objc_sync_exit(guidelines);
}

- (void)removeGuideline:(id)a3
{
  guidelines = self->_guidelines;
  objc_sync_enter(guidelines);
  -[NSMutableDictionary removeObjectForKey:](self->_guidelines, "removeObjectForKey:", [a3 globalUniqueKey]);
  self->_haveGuidelinesChanged = 1;

  objc_sync_exit(guidelines);
}

- (void)removeGuidelineForGlobalUniqueKey:(id)a3
{
  guidelines = self->_guidelines;
  objc_sync_enter(guidelines);
  [(NSMutableDictionary *)self->_guidelines removeObjectForKey:a3];
  self->_haveGuidelinesChanged = 1;

  objc_sync_exit(guidelines);
}

- (void)removeGuidelines:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  guidelines = self->_guidelines;
  objc_sync_enter(guidelines);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(a3);
        }

        -[NSMutableDictionary removeObjectForKey:](self->_guidelines, "removeObjectForKey:", [*(*(&v9 + 1) + 8 * i) globalUniqueKey]);
      }

      v6 = [a3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  self->_haveGuidelinesChanged = 1;
  objc_sync_exit(guidelines);
}

- (void)removeAllGuidelines
{
  guidelines = self->_guidelines;
  objc_sync_enter(guidelines);
  [(NSMutableDictionary *)self->_guidelines removeAllObjects];
  self->_haveGuidelinesChanged = 1;

  objc_sync_exit(guidelines);
}

- (id)guidelineForGlobalUniqueKey:(id)a3
{
  guidelines = self->_guidelines;
  objc_sync_enter(guidelines);
  v6 = [(NSMutableDictionary *)self->_guidelines objectForKey:a3];
  objc_sync_exit(guidelines);
  return v6;
}

- (id)guidelineValueForGlobalUniqueKey:(id)a3
{
  v3 = [(OKPresentation *)self guidelineForGlobalUniqueKey:a3];

  return [v3 value];
}

- (void)setGuidelines:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  guidelines = self->_guidelines;
  objc_sync_enter(guidelines);
  [(NSMutableDictionary *)self->_guidelines removeAllObjects];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        [v9 setPresentation:self];
        -[NSMutableDictionary setObject:forKey:](self->_guidelines, "setObject:forKey:", v9, [v9 globalUniqueKey]);
      }

      v6 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  self->_haveGuidelinesChanged = 1;
  objc_sync_exit(guidelines);
}

- (id)guidelinesForType:(unint64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  guidelines = self->_guidelines;
  objc_sync_enter(guidelines);
  v6 = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = self->_guidelines;
  v8 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if (([v11 type] & a3) != 0)
        {
          [v6 addObject:v11];
        }
      }

      v8 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  objc_sync_exit(guidelines);
  return v6;
}

- (id)guidelinesForKey:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(NSMutableDictionary *)self->_guidelines keyEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 hasPrefix:a3])
        {
          [v5 addObject:{-[NSMutableDictionary objectForKey:](self->_guidelines, "objectForKey:", v11)}];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)guidelinesForMediaItem:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  guidelines = self->_guidelines;
  objc_sync_enter(guidelines);
  v6 = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [(NSMutableDictionary *)self->_guidelines objectEnumerator];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([objc_msgSend(v11 "mediaItem")])
        {
          [v6 addObject:v11];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  objc_sync_exit(guidelines);
  return v6;
}

- (id)guidelinesForMediaItem:(id)a3 andKey:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  guidelines = self->_guidelines;
  objc_sync_enter(guidelines);
  v8 = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [(NSMutableDictionary *)self->_guidelines objectEnumerator];
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if ([objc_msgSend(v13 "mediaItem")] && objc_msgSend(objc_msgSend(v13, "key"), "isEqualToString:", a4))
        {
          [v8 addObject:v13];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  objc_sync_exit(guidelines);
  return v8;
}

- (id)guidelinesForPresentationCanvas:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  guidelines = self->_guidelines;
  objc_sync_enter(guidelines);
  v6 = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [(NSMutableDictionary *)self->_guidelines objectEnumerator];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [a3 keyPath];
        if (v12 && [objc_msgSend(v11 "presentationCanvasKeyPath")])
        {
          [v6 addObject:v11];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  objc_sync_exit(guidelines);
  return v6;
}

- (id)guidelinesForPresentationCanvas:(id)a3 andKey:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  guidelines = self->_guidelines;
  objc_sync_enter(guidelines);
  v8 = [MEMORY[0x277CBEB18] array];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [(NSMutableDictionary *)self->_guidelines objectEnumerator];
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        v14 = [a3 keyPath];
        if (v14 && [objc_msgSend(v13 "presentationCanvasKeyPath")] && objc_msgSend(objc_msgSend(v13, "key"), "isEqualToString:", a4))
        {
          [v8 addObject:v13];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  objc_sync_exit(guidelines);
  return v8;
}

- (id)guidelinesForProducerPlugin:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  guidelines = self->_guidelines;
  objc_sync_enter(guidelines);
  v6 = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [(NSMutableDictionary *)self->_guidelines objectEnumerator];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([objc_msgSend(v11 "producerPlugin")])
        {
          [v6 addObject:v11];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  objc_sync_exit(guidelines);
  return v6;
}

- (id)allGuidelineGlobalUniqueKeys
{
  guidelines = self->_guidelines;
  objc_sync_enter(guidelines);
  v4 = [(NSMutableDictionary *)self->_guidelines allKeys];
  objc_sync_exit(guidelines);
  return v4;
}

- (id)allGuidelines
{
  guidelines = self->_guidelines;
  objc_sync_enter(guidelines);
  v4 = [(NSMutableDictionary *)self->_guidelines allValues];
  objc_sync_exit(guidelines);
  return v4;
}

- (id)guidelineAuthoringUserMediaURLs
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [-[OKPresentation guidelineForGlobalUniqueKey:](self guidelineForGlobalUniqueKey:{+[OKPresentationGuideline globalUniqueKeyForKey:](OKPresentationGuideline, "globalUniqueKeyForKey:", @"authoringUserMediaURLStrings", "value"}];
  v3 = [MEMORY[0x277CBEB18] array];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        [v3 addObject:{objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", *(*(&v9 + 1) + 8 * v7++))}];
      }

      while (v5 != v7);
      v5 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  return v3;
}

- (id)guidelineAuthoringUserMediaItems
{
  v3 = [(OKPresentation *)self guidelineAuthoringUserMediaURLs];

  return [(OKPresentation *)self mediaItemsForURLs:v3];
}

- (id)guidelineAuthoringProducerMediaURLs
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [-[OKPresentation guidelineForGlobalUniqueKey:](self guidelineForGlobalUniqueKey:{+[OKPresentationGuideline globalUniqueKeyForKey:](OKPresentationGuideline, "globalUniqueKeyForKey:", @"authoringProducerMediaURLStrings", "value"}];
  v3 = [MEMORY[0x277CBEB18] array];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        [v3 addObject:{objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", *(*(&v9 + 1) + 8 * v7++))}];
      }

      while (v5 != v7);
      v5 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  return v3;
}

- (id)guidelineAuthoringProducerMediaItems
{
  v3 = [(OKPresentation *)self guidelineAuthoringProducerMediaURLs];

  return [(OKPresentation *)self mediaItemsForURLs:v3];
}

- (id)guidelineAuthoringUserAudioURLs
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [-[OKPresentation guidelineForGlobalUniqueKey:](self guidelineForGlobalUniqueKey:{+[OKPresentationGuideline globalUniqueKeyForKey:](OKPresentationGuideline, "globalUniqueKeyForKey:", @"authoringUserAudioURLStrings", "value"}];
  v3 = [MEMORY[0x277CBEB18] array];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        [v3 addObject:{objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", *(*(&v9 + 1) + 8 * v7++))}];
      }

      while (v5 != v7);
      v5 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  return v3;
}

- (id)guidelineAuthoringUserAudioItems
{
  v3 = [(OKPresentation *)self guidelineAuthoringUserAudioURLs];

  return [(OKPresentation *)self mediaItemsForURLs:v3];
}

- (unint64_t)guidelineAuthoringRandomSeed
{
  v2 = [-[OKPresentation guidelineForGlobalUniqueKey:](self guidelineForGlobalUniqueKey:{+[OKPresentationGuideline globalUniqueKeyForKey:](OKPresentationGuideline, "globalUniqueKeyForKey:", @"authoringRandomSeed", "value"}];

  return [v2 unsignedIntegerValue];
}

- (id)guidelineAuthoringSynopsis
{
  v2 = [(OKPresentation *)self guidelineForGlobalUniqueKey:[OKPresentationGuideline globalUniqueKeyForKey:@"authoringSynopsis"]];

  return [v2 value];
}

- (id)guidelineAuthoringTitle
{
  v2 = [(OKPresentation *)self guidelineForGlobalUniqueKey:[OKPresentationGuideline globalUniqueKeyForKey:@"authoringTitle"]];

  return [v2 value];
}

- (id)guidelineAuthoringAttributedTitle
{
  v2 = [(OKPresentation *)self guidelineForGlobalUniqueKey:[OKPresentationGuideline globalUniqueKeyForKey:@"authoringAttributedTitle"]];

  return [v2 value];
}

- (id)guidelineAuthoringTransitionSettings
{
  v2 = [(OKPresentation *)self guidelineForGlobalUniqueKey:[OKPresentationGuideline globalUniqueKeyForKey:@"transitionSettings"]];

  return [v2 value];
}

- (id)guidelineAuthoringInteractiveTransitionSettings
{
  v2 = [(OKPresentation *)self guidelineForGlobalUniqueKey:[OKPresentationGuideline globalUniqueKeyForKey:@"interactiveTransitionSettings"]];

  return [v2 value];
}

- (id)guidelineAuthoringMediaAttributes
{
  guidelines = self->_guidelines;
  objc_sync_enter(guidelines);
  v4 = [(OKPresentation *)self guidelineForGlobalUniqueKey:[OKPresentationGuideline globalUniqueKeyForKey:@"authoringMediaAttributes"]];
  if ([v4 value])
  {
    v5 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:objc_msgSend(v4 copyItems:{"value"), 1}];
  }

  else
  {
    v5 = 0;
  }

  objc_sync_exit(guidelines);
  return v5;
}

- (id)guidelineAuthoringMediaAttributesForKey:(id)a3
{
  guidelines = self->_guidelines;
  objc_sync_enter(guidelines);
  v6 = [(OKPresentation *)self guidelineForGlobalUniqueKey:[OKPresentationGuideline globalUniqueKeyForKey:@"authoringMediaAttributes"]];
  if ([v6 value])
  {
    v7 = [objc_msgSend(objc_msgSend(v6 "value")];
  }

  else
  {
    v7 = 0;
  }

  objc_sync_exit(guidelines);
  return v7;
}

- (void)guidelineAuthoringMediaAttributesUpdateForKey:(id)a3 updateBlock:(id)a4
{
  guidelines = self->_guidelines;
  objc_sync_enter(guidelines);
  v8 = [(OKPresentation *)self guidelineForGlobalUniqueKey:[OKPresentationGuideline globalUniqueKeyForKey:@"authoringMediaAttributes"]];
  if ([v8 value])
  {
    v9 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:{objc_msgSend(v8, "value")}];
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v10 = v9;
  v11 = [v9 objectForKeyedSubscript:a3];
  if (!v11)
  {
    v11 = objc_alloc_init(OKProducerMediaAttributes);
    [v10 setObject:v11 forKeyedSubscript:a3];
  }

  if (a4)
  {
    (*(a4 + 2))(a4, v11);
  }

  [(OKPresentation *)self addGuideline:[OKPresentationGuideline guidelineAuthoringMediaAttributes:v10]];

  objc_sync_exit(guidelines);
}

- (double)guidelineAuthoringPageDuration
{
  v2 = [(OKPresentation *)self guidelineForGlobalUniqueKey:[OKPresentationGuideline globalUniqueKeyForKey:@"authoringPageDuration"]];
  if (!v2)
  {
    return -1.0;
  }

  v3 = [v2 value];

  [v3 doubleValue];
  return result;
}

- (double)guidelineAuthoringDurationFactor
{
  v2 = [(OKPresentation *)self guidelineForGlobalUniqueKey:[OKPresentationGuideline globalUniqueKeyForKey:@"authoringDurationFactor"]];
  if (!v2)
  {
    return -1.0;
  }

  v3 = [v2 value];

  [v3 doubleValue];
  return result;
}

- (double)guidelineAuthoringCurrentPageDuration
{
  v2 = [-[OKPresentation guidelineForGlobalUniqueKey:](self guidelineForGlobalUniqueKey:{+[OKPresentationGuideline globalUniqueKeyForKey:](OKPresentationGuideline, "globalUniqueKeyForKey:", @"authoringCurrentPageDuration", "value"}];

  [v2 doubleValue];
  return result;
}

- (double)guidelineAuthoringTotalDuration
{
  v2 = [-[OKPresentation guidelineForGlobalUniqueKey:](self guidelineForGlobalUniqueKey:{+[OKPresentationGuideline globalUniqueKeyForKey:](OKPresentationGuideline, "globalUniqueKeyForKey:", @"authoringTotalDuration", "value"}];

  [v2 doubleValue];
  return result;
}

- (double)guidelineAuthoringMinimumDuration
{
  v2 = [-[OKPresentation guidelineForGlobalUniqueKey:](self guidelineForGlobalUniqueKey:{+[OKPresentationGuideline globalUniqueKeyForKey:](OKPresentationGuideline, "globalUniqueKeyForKey:", @"authoringMinimumDuration", "value"}];

  [v2 doubleValue];
  return result;
}

- (double)guidelineAuthoringMaximumDuration
{
  v2 = [-[OKPresentation guidelineForGlobalUniqueKey:](self guidelineForGlobalUniqueKey:{+[OKPresentationGuideline globalUniqueKeyForKey:](OKPresentationGuideline, "globalUniqueKeyForKey:", @"authoringMaximumDuration", "value"}];

  [v2 doubleValue];
  return result;
}

- (BOOL)guidelineAuthoringFitToAudioDuration
{
  v2 = [-[OKPresentation guidelineForGlobalUniqueKey:](self guidelineForGlobalUniqueKey:{+[OKPresentationGuideline globalUniqueKeyForKey:](OKPresentationGuideline, "globalUniqueKeyForKey:", @"authoringFitToAudioDuration", "value"}];

  return [v2 BOOLValue];
}

- (BOOL)guidelineLiveAuthoringEnabled
{
  v2 = [-[OKPresentation guidelineForGlobalUniqueKey:](self guidelineForGlobalUniqueKey:{+[OKPresentationGuideline globalUniqueKeyForKey:](OKPresentationGuideline, "globalUniqueKeyForKey:", @"liveAuthoringEnabled", "value"}];

  return [v2 BOOLValue];
}

- (id)guidelineAuthoringRecommendedResolutionSizes
{
  v2 = [(OKPresentation *)self guidelineForGlobalUniqueKey:[OKPresentationGuideline globalUniqueKeyForKey:@"authoringRecommendedResolutionSizes"]];

  return [v2 value];
}

- (BOOL)guidelineAuthoringDebuggingEnabled
{
  v2 = [-[OKPresentation guidelineForGlobalUniqueKey:](self guidelineForGlobalUniqueKey:{+[OKPresentationGuideline globalUniqueKeyForKey:](OKPresentationGuideline, "globalUniqueKeyForKey:", @"authoringDebuggingEnabled", "value"}];

  return [v2 BOOLValue];
}

- (CGSize)bestResolutionSizeForDisplaySize:(CGSize)a3 keepAspectRatio:(BOOL *)a4
{
  height = a3.height;
  width = a3.width;
  v59 = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CBF3A8];
  v8 = *(MEMORY[0x277CBF3A8] + 8);
  v9 = +[OKRuntime stringForPlatforms:](OKRuntime, "stringForPlatforms:", +[OKRuntime currentPlatform]);
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v45 = self;
  v10 = [(OKPresentationInfo *)self->_info resolutions];
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v54 objects:v58 count:16];
  if (!v11)
  {
    v13 = 0;
    v48 = 1;
    v15 = v8;
    v47 = v7;
    goto LABEL_51;
  }

  v12 = v11;
  v13 = 0;
  v14 = *v55;
  v48 = 1;
  v15 = v8;
  v47 = v7;
  v49 = v8;
  v50 = height;
  v51 = v7;
  v16 = width / height;
  do
  {
    v17 = 0;
    do
    {
      if (*v55 != v14)
      {
        objc_enumerationMutation(v10);
      }

      v18 = [*(*(&v54 + 1) + 8 * v17) componentsSeparatedByCharactersInSet:{objc_msgSend(MEMORY[0x277CCA900], "characterSetWithCharactersInString:", @"x=@"}];
      if ([v18 count] != 2 && objc_msgSend(v18, "count") != 3 && objc_msgSend(v18, "count") != 4 && objc_msgSend(v18, "count") != 5)
      {
        goto LABEL_39;
      }

      v19 = [v18 objectAtIndex:0];
      v20 = [v18 objectAtIndex:1];
      v21 = [v19 hasPrefix:@"+"];
      if (v21)
      {
        v19 = [v19 substringFromIndex:1];
      }

      [v19 doubleValue];
      v23 = v22;
      [v20 doubleValue];
      v25 = v24;
      if ([v18 count] == 4 || objc_msgSend(v18, "count") == 5)
      {
        v26 = [v18 objectAtIndex:2];
        v27 = [v18 objectAtIndex:3];
        [v26 doubleValue];
        v53 = v28;
        [v27 doubleValue];
        v52 = v29;
        v30 = 1;
      }

      else
      {
        v30 = 0;
        v52 = v49;
        v53 = v51;
      }

      if ([v18 count] == 3)
      {
        v31 = v18;
        v32 = 2;
      }

      else
      {
        if ([v18 count] != 5)
        {
          goto LABEL_21;
        }

        v31 = v18;
        v32 = 4;
      }

      if ([objc_msgSend(v31 objectAtIndex:{v32), "rangeOfString:", v9}] == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_39;
      }

LABEL_21:
      if (v23 == width && v25 == v50)
      {
        v15 = v52;
        v47 = v53;
        v13 = v30;
        v48 = v21 ^ 1;
        v8 = v25;
        v7 = v23;
        goto LABEL_51;
      }

      if (v23 / v25 == v16 || v7 / v8 == v16)
      {
        if (vabdd_f64(width, v23) < vabdd_f64(width, v7))
        {
          v15 = v52;
          v47 = v53;
          v13 = v30;
          v48 = v21 ^ 1;
          v8 = v25;
          v7 = v23;
        }

        if (v7 == v51 && v8 == v49)
        {
LABEL_38:
          v7 = v23;
          v8 = v25;
          v48 = v21 ^ 1;
          v13 = v30;
          v15 = v52;
          v47 = v53;
        }
      }

      else
      {
        if (v7 == v51 && v8 == v49)
        {
          goto LABEL_38;
        }

        v35 = fabs(log(width * v25 / (v50 * v23)));
        v36 = fabs(log(width * v8 / (v50 * v7)));
        if (v35 < v36 + -0.25)
        {
          goto LABEL_38;
        }

        v39 = vabdd_f64(v35, v36) < 0.25;
        v37 = vabdd_f64(width, v23);
        v38 = vabdd_f64(width, v7);
        v39 = v39 && v37 < v38;
        if (v39)
        {
          goto LABEL_38;
        }
      }

LABEL_39:
      ++v17;
    }

    while (v12 != v17);
    v40 = [(NSArray *)v10 countByEnumeratingWithState:&v54 objects:v58 count:16];
    v12 = v40;
  }

  while (v40);
LABEL_51:
  if (a4)
  {
    *a4 = v48 & 1;
  }

  if (v13)
  {
    [(OKPresentation *)v45 bestResolutionSizeForDisplaySize:a4 keepAspectRatio:v47, v15];
    v7 = v41;
    v8 = v42;
  }

  if (v7 == 0.0 || v8 == 0.0)
  {
    if (*MEMORY[0x277D62808] >= 2)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:2 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Presentation/OKPresentation.m" line:2739 andFormat:@"Missing resolution for platform %@", v9];
    }

    if (a4)
    {
      *a4 = 0;
    }

    v7 = 1024.0;
    v8 = 768.0;
  }

  v43 = v7;
  v44 = v8;
  result.height = v44;
  result.width = v43;
  return result;
}

@end