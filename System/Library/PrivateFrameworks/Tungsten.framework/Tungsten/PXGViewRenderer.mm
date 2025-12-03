@interface PXGViewRenderer
- ($28B10562A11C0018BB97DE3323169FD5)interactionState;
- (CGRect)visibleRect;
- (PXGRendererDelegate)delegate;
- (PXGViewRenderer)init;
- (UIView)rootView;
- (__n128)cameraConfiguration;
- (__n128)setCameraConfiguration:(uint64_t)configuration;
- (double)_screenScale;
- (id)_dequeueViewWithClass:(Class)class;
- (id)trackingContainerViewForSpriteIndex:(unsigned int)index;
- (id)viewForSpriteIndex:(unsigned int)index;
- (void)_configureTrackingContainerView:(id)view spriteIndex:(unsigned int)index sprites:(id *)sprites screenScale:(double)scale;
- (void)_ensureUnderlayHostingView;
- (void)_makeViewInfoReusable:(id)reusable;
- (void)_resizeBuffersForSpriteCount:(int64_t)count;
- (void)_shiftViewsToCompensateForDeferredVisibleOrigin;
- (void)dealloc;
- (void)releaseResources;
- (void)renderSpritesWithTextures:(id)textures dataStore:(id)store presentationDataStore:(id)dataStore presentationMetadataStore:(id)metadataStore layout:(id)layout;
- (void)setCustomAssetImageViewClassConfigurator:(id)configurator;
- (void)setInteractionState:(id *)state;
- (void)setScrollViewController:(id)controller;
- (void)updateWithChangeDetails:(id)details;
@end

@implementation PXGViewRenderer

- (PXGViewRenderer)init
{
  v16.receiver = self;
  v16.super_class = PXGViewRenderer;
  v2 = [(PXGViewRenderer *)&v16 init];
  if (v2)
  {
    v3 = objc_alloc_init(PXGViewTextureConverter);
    textureConverter = v2->_textureConverter;
    v2->_textureConverter = v3;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    reusableViewsByClass = v2->_reusableViewsByClass;
    v2->_reusableViewsByClass = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    reusableViewInfoBySpriteIndex = v2->_reusableViewInfoBySpriteIndex;
    v2->_reusableViewInfoBySpriteIndex = dictionary2;

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    trackingContainerViewInfoBySpriteIndex = v2->_trackingContainerViewInfoBySpriteIndex;
    v2->_trackingContainerViewInfoBySpriteIndex = dictionary3;

    v2->_renderedVisibleOrigin = *MEMORY[0x277D3CFB0];
    PXEdgeInsetsMake();
    v2->_loadInsets.top = v11;
    v2->_loadInsets.left = v12;
    v2->_loadInsets.bottom = v13;
    v2->_loadInsets.right = v14;
    v2->_spritesNeedUpate = 1;
  }

  return v2;
}

- (void)_shiftViewsToCompensateForDeferredVisibleOrigin
{
  v38 = *MEMORY[0x277D85DE8];
  if ([(PXScrollViewController *)self->_scrollViewController deferContentOffsetUpdates]&& (PXPointIsNull() & 1) == 0)
  {
    v3 = self->_scrollViewController;
    [(PXScrollViewController *)v3 visibleOrigin];
    v5 = v4;
    v7 = v6;
    PXPointSubtract();
    v9 = v8;
    v11 = v10;
    if ((PXPointApproximatelyEqualToPoint() & 1) == 0)
    {
      kdebug_trace();
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      objectEnumerator = [(NSMutableDictionary *)self->_reusableViewInfoBySpriteIndex objectEnumerator];
      v13 = [objectEnumerator countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v33;
        do
        {
          v16 = 0;
          do
          {
            if (*v33 != v15)
            {
              objc_enumerationMutation(objectEnumerator);
            }

            v17 = *(*(&v32 + 1) + 8 * v16);
            if (v17)
            {
              v18 = *(v17 + 40);
            }

            else
            {
              v18 = 0;
            }

            [v18 pxg_shiftPosition:{v9, v11}];
            ++v16;
          }

          while (v14 != v16);
          v19 = [objectEnumerator countByEnumeratingWithState:&v32 objects:v37 count:16];
          v14 = v19;
        }

        while (v19);
      }

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      objectEnumerator2 = [(NSMutableDictionary *)self->_trackingContainerViewInfoBySpriteIndex objectEnumerator];
      v21 = [objectEnumerator2 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v29;
        do
        {
          v24 = 0;
          do
          {
            if (*v29 != v23)
            {
              objc_enumerationMutation(objectEnumerator2);
            }

            v25 = *(*(&v28 + 1) + 8 * v24);
            if (v25)
            {
              v26 = *(v25 + 40);
            }

            else
            {
              v26 = 0;
            }

            [v26 pxg_shiftPosition:{v9, v11}];
            ++v24;
          }

          while (v22 != v24);
          v27 = [objectEnumerator2 countByEnumeratingWithState:&v28 objects:v36 count:16];
          v22 = v27;
        }

        while (v27);
      }

      self->_renderedVisibleOrigin.x = v5;
      self->_renderedVisibleOrigin.y = v7;
    }
  }
}

- (double)_screenScale
{
  scrollView = [(PXScrollViewController *)self->_scrollViewController scrollView];
  [scrollView px_screenScale];
  v4 = v3;

  return v4;
}

- (CGRect)visibleRect
{
  x = self->_visibleRect.origin.x;
  y = self->_visibleRect.origin.y;
  width = self->_visibleRect.size.width;
  height = self->_visibleRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIView)rootView
{
  WeakRetained = objc_loadWeakRetained(&self->_rootView);

  return WeakRetained;
}

- (__n128)setCameraConfiguration:(uint64_t)configuration
{
  *(self + 112) = *configuration;
  v3 = *(configuration + 16);
  v4 = *(configuration + 32);
  v5 = *(configuration + 64);
  *(self + 160) = *(configuration + 48);
  *(self + 176) = v5;
  *(self + 128) = v3;
  *(self + 144) = v4;
  v6 = *(configuration + 80);
  v7 = *(configuration + 96);
  v8 = *(configuration + 128);
  *(self + 224) = *(configuration + 112);
  *(self + 240) = v8;
  *(self + 192) = v6;
  *(self + 208) = v7;
  result = *(configuration + 144);
  v10 = *(configuration + 160);
  v11 = *(configuration + 192);
  *(self + 288) = *(configuration + 176);
  *(self + 304) = v11;
  *(self + 256) = result;
  *(self + 272) = v10;
  return result;
}

- (__n128)cameraConfiguration
{
  v2 = *(self + 288);
  *(a2 + 160) = *(self + 272);
  *(a2 + 176) = v2;
  *(a2 + 192) = *(self + 304);
  v3 = *(self + 224);
  *(a2 + 96) = *(self + 208);
  *(a2 + 112) = v3;
  v4 = *(self + 256);
  *(a2 + 128) = *(self + 240);
  *(a2 + 144) = v4;
  v5 = *(self + 160);
  *(a2 + 32) = *(self + 144);
  *(a2 + 48) = v5;
  v6 = *(self + 192);
  *(a2 + 64) = *(self + 176);
  *(a2 + 80) = v6;
  result = *(self + 128);
  *a2 = *(self + 112);
  *(a2 + 16) = result;
  return result;
}

- (void)setInteractionState:(id *)state
{
  v3 = *&state->var0;
  v4 = *&state->var4;
  size = state->var8.size;
  self->_interactionState.targetRect.origin = state->var8.origin;
  self->_interactionState.targetRect.size = size;
  *&self->_interactionState.scrollRegime = v3;
  *&self->_interactionState.contentChangeTrend = v4;
}

- ($28B10562A11C0018BB97DE3323169FD5)interactionState
{
  v3 = *&self[7].var1;
  *&retstr->var0 = *&self[6].var8.size.height;
  *&retstr->var4 = v3;
  v4 = *&self[7].var8.origin.y;
  retstr->var8.origin = *&self[7].var5;
  retstr->var8.size = v4;
  return self;
}

- (PXGRendererDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setCustomAssetImageViewClassConfigurator:(id)configurator
{
  v4 = MEMORY[0x21CEE40A0](configurator, a2);
  customAssetImageViewClassConfigurator = self->_customAssetImageViewClassConfigurator;
  self->_customAssetImageViewClassConfigurator = v4;

  self->_spritesNeedUpate = 1;
}

- (void)releaseResources
{
  [(PXGViewRenderer *)self interactionState];
  if ((v9 & 1) == 0)
  {
    array = [MEMORY[0x277CBEB18] array];
    reusableViewInfoBySpriteIndex = self->_reusableViewInfoBySpriteIndex;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __35__PXGViewRenderer_releaseResources__block_invoke;
    v7[3] = &unk_2782AA798;
    v8 = array;
    v5 = array;
    [(NSMutableDictionary *)reusableViewInfoBySpriteIndex enumerateKeysAndObjectsUsingBlock:v7];
    [(NSMutableDictionary *)self->_reusableViewInfoBySpriteIndex removeObjectsForKeys:v5];
    delegate = [(PXGViewRenderer *)self delegate];
    [delegate rendererNeedsUpdate:self];
  }

  [(NSMutableDictionary *)self->_reusableViewsByClass enumerateKeysAndObjectsUsingBlock:&__block_literal_global_14122];
  [(NSMutableDictionary *)self->_reusableViewsByClass removeAllObjects];
}

void __35__PXGViewRenderer_releaseResources__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    if (![*(v5 + 5) canUnloadWhenInvisible])
    {
      goto LABEL_5;
    }

    v7 = v6[5];
    goto LABEL_4;
  }

  v8 = [0 canUnloadWhenInvisible];
  v7 = 0;
  if (v8)
  {
LABEL_4:
    [v7 pxg_removeFromSuperview];
    [*(a1 + 32) addObject:v9];
  }

LABEL_5:
}

void __35__PXGViewRenderer_releaseResources__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) pxg_removeFromSuperview];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_configureTrackingContainerView:(id)view spriteIndex:(unsigned int)index sprites:(id *)sprites screenScale:(double)scale
{
  v33 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  v12 = viewCopy;
  if (sprites->var0 > index)
  {
    if (viewCopy && (v13 = viewCopy[5]) != 0)
    {
      v14 = v13;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_5:
        var3 = sprites->var3;
        v16 = sprites->var2 + 32 * index;
        v17 = sprites->var4 + 40 * index;
        v18 = (var3 + 160 * index);
        v19 = v18[1];
        v32[0] = *v18;
        v32[1] = v19;
        v20 = v18[2];
        v21 = v18[3];
        v22 = v18[5];
        v32[4] = v18[4];
        v32[5] = v22;
        v32[2] = v20;
        v32[3] = v21;
        v23 = v18[6];
        v24 = v18[7];
        v25 = v18[9];
        v32[8] = v18[8];
        v32[9] = v25;
        v32[6] = v23;
        v32[7] = v24;
        LODWORD(v32[0]) = 1065353216;
        LOBYTE(v31) = [(PXGViewRenderer *)self shouldSeparateViewLayers];
        [v14 pxg_configureWithTexture:0 geometry:v16 info:v17 style:v32 textureInfo:0 resizableCapInsets:v12 reusableViewInfo:0.0 screenScale:0.0 separateLayers:{0.0, 0.0, scale, v31}];

        goto LABEL_6;
      }

      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v29 = objc_opt_class();
      v28 = NSStringFromClass(v29);
      px_descriptionForAssertionMessage = [v14 px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXGViewRenderer.m" lineNumber:680 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"viewInfo.view", v28, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXGViewRenderer.m" lineNumber:680 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"viewInfo.view", v28}];
      v14 = 0;
    }

    goto LABEL_5;
  }

LABEL_6:
}

- (id)trackingContainerViewForSpriteIndex:(unsigned int)index
{
  v3 = *&index;
  trackingContainerViewInfoBySpriteIndex = self->_trackingContainerViewInfoBySpriteIndex;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
  v8 = [(NSMutableDictionary *)trackingContainerViewInfoBySpriteIndex objectForKeyedSubscript:v7];

  if (!v8)
  {
    v14 = [PXGTrackingContainerView alloc];
    v9 = [(PXGTrackingContainerView *)v14 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    v8 = [[_PXGReusableViewInfo alloc] initWithReusableView:v9];
    v15 = self->_trackingContainerViewInfoBySpriteIndex;
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
    [(NSMutableDictionary *)v15 setObject:v8 forKeyedSubscript:v16];

    lastPresentationDataStore = self->_lastPresentationDataStore;
    if (lastPresentationDataStore)
    {
      [(PXGSpriteDataStore *)lastPresentationDataStore sprites];
    }

    else
    {
      v22 = 0;
      memset(v21, 0, sizeof(v21));
    }

    [(PXGViewRenderer *)self _screenScale];
    [(PXGViewRenderer *)self _configureTrackingContainerView:v8 spriteIndex:v3 sprites:v21 screenScale:?];
    [(PXScrollViewController *)self->_scrollViewController addSubview:v9];
    delegate = [(PXGViewRenderer *)self delegate];
    [delegate rendererNeedsUpdate:self];

    goto LABEL_9;
  }

  v9 = v8[5];
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_9;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    px_descriptionForAssertionMessage = [(PXGTrackingContainerView *)v9 px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGViewRenderer.m" lineNumber:658 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"viewInfo.view", v12, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v20 = objc_opt_class();
    v12 = NSStringFromClass(v20);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGViewRenderer.m" lineNumber:658 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"viewInfo.view", v12}];
  }

LABEL_9:

  return v9;
}

- (id)viewForSpriteIndex:(unsigned int)index
{
  reusableViewInfoBySpriteIndex = self->_reusableViewInfoBySpriteIndex;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*&index];
  v5 = [(NSMutableDictionary *)reusableViewInfoBySpriteIndex objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 40);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (void)renderSpritesWithTextures:(id)textures dataStore:(id)store presentationDataStore:(id)dataStore presentationMetadataStore:(id)metadataStore layout:(id)layout
{
  v217 = *MEMORY[0x277D85DE8];
  texturesCopy = textures;
  storeCopy = store;
  dataStoreCopy = dataStore;
  metadataStoreCopy = metadataStore;
  layoutCopy = layout;
  recordingSession = [(PXGViewRenderer *)self recordingSession];

  if (recordingSession)
  {
    recordingSession2 = [(PXGViewRenderer *)self recordingSession];
    [(PXGViewRenderer *)self visibleRect];
    v19 = v18;
    v21 = v20;
    [(PXGViewRenderer *)self visibleRect];
    v23 = v22;
    v25 = v24;
    [(PXGViewRenderer *)self _screenScale];
    v27 = [PXGViewRecordingFrameStartEvent eventWithViewSize:v19 renderOrigin:v21 screenScale:v23, v25, v26];
    [recordingSession2 recordEvent:v27];
  }

  [(PXGViewRenderer *)self _screenScale];
  v29 = v28;
  selfCopy = self;
  objc_storeStrong(&self->_lastPresentationDataStore, dataStore);
  v213 = 0;
  v30 = 0uLL;
  v211 = 0u;
  v212 = 0u;
  if (storeCopy)
  {
    [storeCopy sprites];
    v30 = 0uLL;
  }

  v210 = 0;
  v208 = v30;
  v209 = v30;
  v142 = dataStoreCopy;
  if (dataStoreCopy)
  {
    [dataStoreCopy sprites];
    v146 = *(&v209 + 1);
    v150 = v209;
    v154 = v210;
  }

  else
  {
    v154 = 0;
    v146 = 0;
    v150 = 0;
  }

  v143 = storeCopy;
  v141 = metadataStoreCopy;
  resizableCapInsets = [metadataStoreCopy resizableCapInsets];
  [(PXGViewRenderer *)self visibleRect];
  self->_renderedVisibleOrigin.x = v31;
  self->_renderedVisibleOrigin.y = v32;
  PXEdgeInsetsInsetRect();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  scrollViewController = [(PXGViewRenderer *)self scrollViewController];
  [scrollViewController visibleRectOutsideBounds];
  v220.origin.x = v42;
  v220.origin.y = v43;
  v220.size.width = v44;
  v220.size.height = v45;
  v218.origin.x = v34;
  v218.origin.y = v36;
  v218.size.width = v38;
  v218.size.height = v40;
  v219 = CGRectUnion(v218, v220);
  x = v219.origin.x;
  y = v219.origin.y;
  width = v219.size.width;
  height = v219.size.height;

  indexSet = [MEMORY[0x277CCAB58] indexSet];
  v204 = 0u;
  v205 = 0u;
  v206 = 0u;
  v207 = 0u;
  v51 = texturesCopy;
  v52 = [v51 countByEnumeratingWithState:&v204 objects:v216 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v205;
    do
    {
      for (i = 0; i != v53; ++i)
      {
        if (*v205 != v54)
        {
          objc_enumerationMutation(v51);
        }

        v56 = *(*(&v204 + 1) + 8 * i);
        v197[0] = MEMORY[0x277D85DD0];
        v197[1] = 3221225472;
        v197[2] = __110__PXGViewRenderer_renderSpritesWithTextures_dataStore_presentationDataStore_presentationMetadataStore_layout___block_invoke;
        v197[3] = &unk_2782AA680;
        v199 = v150;
        v200 = x;
        v201 = y;
        v202 = width;
        v203 = height;
        v198 = indexSet;
        [v56 enumerateSpriteIndexes:v197];
      }

      v53 = [v51 countByEnumeratingWithState:&v204 objects:v216 count:16];
    }

    while (v53);
  }

  indexSet2 = [MEMORY[0x277CCAB58] indexSet];
  selfCopy2 = self;
  reusableViewInfoBySpriteIndex = self->_reusableViewInfoBySpriteIndex;
  v194[0] = MEMORY[0x277D85DD0];
  v194[1] = 3221225472;
  v194[2] = __110__PXGViewRenderer_renderSpritesWithTextures_dataStore_presentationDataStore_presentationMetadataStore_layout___block_invoke_2;
  v194[3] = &unk_2782AA6A8;
  v60 = indexSet;
  v195 = v60;
  v61 = indexSet2;
  v196 = v61;
  [(NSMutableDictionary *)reusableViewInfoBySpriteIndex enumerateKeysAndObjectsUsingBlock:v194];
  v193[0] = MEMORY[0x277D85DD0];
  v193[1] = 3221225472;
  v193[2] = __110__PXGViewRenderer_renderSpritesWithTextures_dataStore_presentationDataStore_presentationMetadataStore_layout___block_invoke_3;
  v193[3] = &unk_2782ABC08;
  v193[4] = self;
  v140 = v61;
  [v61 enumerateIndexesUsingBlock:v193];
  v153 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v191[0] = MEMORY[0x277D85DD0];
  v191[1] = 3221225472;
  v191[2] = __110__PXGViewRenderer_renderSpritesWithTextures_dataStore_presentationDataStore_presentationMetadataStore_layout___block_invoke_4;
  v191[3] = &unk_2782AA6D0;
  v139 = layoutCopy;
  v192 = v139;
  v137 = MEMORY[0x21CEE40A0](v191);
  v187 = 0u;
  v188 = 0u;
  v189 = 0u;
  v190 = 0u;
  obj = v51;
  v62 = [obj countByEnumeratingWithState:&v187 objects:v215 count:16];
  v155 = v60;
  if (v62)
  {
    v63 = v62;
    v64 = *v188;
    v145 = *v188;
    do
    {
      v65 = 0;
      v147 = v63;
      do
      {
        if (*v188 != v64)
        {
          objc_enumerationMutation(obj);
        }

        v152 = v65;
        v66 = *(*(&v187 + 1) + 8 * v65);
        spriteCount = [v66 spriteCount];
        [(PXGViewRenderer *)selfCopy2 _resizeBuffersForSpriteCount:spriteCount];
        [v66 getSpriteIndexes:selfCopy2->_spriteIndexes maxSpriteCount:spriteCount];
        objc_opt_class();
        v157 = v66;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v70 = 0;
            goto LABEL_109;
          }

          v71 = v66;
          payload = [v71 payload];
          if (payload)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              goto LABEL_28;
            }

            currentHandler = [MEMORY[0x277CCA890] currentHandler];
            v120 = objc_opt_class();
            v119 = NSStringFromClass(v120);
            v160 = payload;
            px_descriptionForAssertionMessage = [payload px_descriptionForAssertionMessage];
            [currentHandler handleFailureInMethod:a2 object:selfCopy2 file:@"PXGViewRenderer.m" lineNumber:416 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"payloadTexture.payload", v119, px_descriptionForAssertionMessage, v137}];
          }

          else
          {
            v160 = 0;
            currentHandler = [MEMORY[0x277CCA890] currentHandler];
            v118 = objc_opt_class();
            v119 = NSStringFromClass(v118);
            [currentHandler handleFailureInMethod:a2 object:selfCopy2 file:@"PXGViewRenderer.m" lineNumber:416 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"payloadTexture.payload", v119}];
          }

          v66 = v157;
          payload = v160;
LABEL_28:
          viewClass = [payload viewClass];

          v158 = 0;
          v70 = payload;
          if (!viewClass)
          {
            goto LABEL_109;
          }

LABEL_29:
          v156 = viewClass;
          v159 = v70;
          userData = [v70 userData];
          if (userData)
          {
            isKindOfClass = 1;
          }

          else
          {
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
          }

          if (![v66 spriteCount])
          {
LABEL_108:
            v70 = v159;
            goto LABEL_109;
          }

          v74 = 0;
          v75 = v158;
          while (2)
          {
            v76 = selfCopy2->_spriteIndexes[v74];
            if (![v60 containsIndex:v76])
            {
              goto LABEL_96;
            }

            customAssetImageViewClass = [(PXGViewRenderer *)selfCopy2 customAssetImageViewClass];
            v78 = v156;
            if (customAssetImageViewClass)
            {
              if (*(v154 + 40 * v76 + 1) == 2)
              {
                v78 = customAssetImageViewClass;
              }

              else
              {
                v78 = v156;
              }
            }

            v79 = selfCopy2->_spritesNeedUpate && v78 == [(PXGViewRenderer *)selfCopy2 customAssetImageViewClass];
            if (v158)
            {
              v80 = v75;
            }

            else
            {
              v80 = 0;
            }

            v161 = v80;
            v164 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v76];
            v81 = [(NSMutableDictionary *)selfCopy2->_reusableViewInfoBySpriteIndex objectForKeyedSubscript:?];
            if (PXFloatGreaterThanFloat())
            {
              v82 = 1;
            }

            else
            {
              v82 = PXFloatGreaterThanFloat();
            }

            if (v81)
            {
              v83 = v79;
            }

            else
            {
              v83 = 0;
            }

            if (v83)
            {
LABEL_53:
              [(NSMutableDictionary *)selfCopy2->_reusableViewInfoBySpriteIndex setObject:0 forKeyedSubscript:v164];
              [(PXGViewRenderer *)selfCopy2 _makeViewInfoReusable:v81];

              v81 = 0;
              goto LABEL_54;
            }

            if ((v81 == 0) | v82 & 1)
            {
              if (!v81)
              {
                goto LABEL_54;
              }
            }

            else if ([v81[5] shouldReuseWhenInvisible])
            {
              goto LABEL_53;
            }

            userData2 = [v159 userData];
            if (userData2)
            {
              v111 = userData2;
              v112 = v81[5];
              userData3 = [v159 userData];
              v151 = [v112 shouldReloadForUserData:userData3];

              selfCopy2 = selfCopy;
              if (v151)
              {
                goto LABEL_53;
              }
            }

            v114 = v81[5];
            if (v114)
            {
              v115 = v114;
              v116 = objc_opt_isKindOfClass();

              if ((v116 & 1) == 0)
              {
                goto LABEL_53;
              }
            }

LABEL_54:
            v66 = v157;
            if ((v79 | (v81 == 0) & isKindOfClass & v82) == 1)
            {
              v84 = [(PXGViewRenderer *)selfCopy2 _dequeueViewWithClass:v78];
              v85 = [[_PXGReusableViewInfo alloc] initWithReusableView:v84];

              v86 = v164;
              [(NSMutableDictionary *)selfCopy2->_reusableViewInfoBySpriteIndex setObject:v85 forKeyedSubscript:v164];
              v87 = objc_alloc_init(_PXGViewSetupParameters);
              if (v87)
              {
                v88 = v87;
                v87->_needsParenting = 1;

                v89 = v85 != 0;
                if (!(v79 | isKindOfClass & v89))
                {
LABEL_91:
                  if (v89)
                  {
                    goto LABEL_92;
                  }

                  goto LABEL_93;
                }

LABEL_64:
                objc_storeStrong(&v88->_texture, v157);
LABEL_65:
                if (v161)
                {
                  v90 = v161[1];
                  v183 = *v161;
                  v184 = v90;
                  v91 = v161[3];
                  v185 = v161[2];
                  v186 = v91;
                  if (v88)
                  {
                    goto LABEL_67;
                  }
                }

                else
                {
                  v185 = 0u;
                  v186 = 0u;
                  v183 = 0u;
                  v184 = 0u;
                  if (v88)
                  {
LABEL_67:
                    v93 = v185;
                    v92 = v186;
                    v94 = v184;
                    *&v88[1].super.isa = v183;
                    *&v88[1]._floatingAxis = v94;
                    *&v88[2].super.isa = v93;
                    *&v88[2]._floatingAxis = v92;
                    v88->_spriteIndex = v76;
                  }
                }

                if (v85)
                {
                  v95 = v85[5];
                }

                else
                {
                  v95 = 0;
                }

                pxg_hasSuperview = [v95 pxg_hasSuperview];
                if (v88)
                {
                  v88->_needsParenting = pxg_hasSuperview ^ 1;
                }

                shouldSeparateViewLayers = [(PXGViewRenderer *)selfCopy2 shouldSeparateViewLayers];
                if (shouldSeparateViewLayers)
                {
                  LOBYTE(shouldSeparateViewLayers) = [v159 shouldSeparateViewLayers];
                }

                if (v88)
                {
                  v88->_separateLayers = shouldSeparateViewLayers;
                  v88->_floatingAxis = [v159 floatingAxis];
                }

                else
                {
                  [v159 floatingAxis];
                }

                recordingSession3 = [(PXGViewRenderer *)selfCopy2 recordingSession];

                if (recordingSession3)
                {
                  recordingSession4 = [(PXGViewRenderer *)selfCopy2 recordingSession];
                  if (v88)
                  {
                    texture = v88->_texture;
                  }

                  else
                  {
                    texture = 0;
                  }

                  v101 = texture;
                  viewClass2 = [v159 viewClass];
                  if (v88)
                  {
                    spriteIndex = v88->_spriteIndex;
                    needsParenting = v88->_needsParenting;
                  }

                  else
                  {
                    spriteIndex = 0;
                    needsParenting = 0;
                  }

                  v105 = [PXGViewRecordingViewEvent eventWithSpriteTexture:v101 viewClass:viewClass2 spriteIndex:spriteIndex needsParenting:needsParenting];

                  [recordingSession4 recordEvent:v105];
                  recordingSession5 = [(PXGViewRenderer *)selfCopy2 recordingSession];
                  frameState = [recordingSession5 frameState];
                  v108 = frameState;
                  if (v88)
                  {
                    v109 = v88->_spriteIndex;
                  }

                  else
                  {
                    v109 = 0;
                  }

                  [frameState addRecordedSpriteIndex:v109];

                  v86 = v164;
                }

                goto LABEL_93;
              }

              if (!(v79 | isKindOfClass & (v85 != 0)))
              {
                v88 = 0;
                if (v85)
                {
LABEL_92:
                  [v85[5] pxg_becomeReusable];
                }

LABEL_93:
                if (v88)
                {
                  [v153 setObject:v88 forKeyedSubscript:v86];
                }

                v60 = v155;
LABEL_96:
                ++v74;
                v75 += 8;
                if (v74 >= [v66 spriteCount])
                {
                  v63 = v147;
                  v64 = v145;
                  goto LABEL_108;
                }

                continue;
              }
            }

            else
            {
              v89 = v81 != 0;
              if ((isKindOfClass & v89) != 1)
              {
                v88 = 0;
                v85 = v81;
                v86 = v164;
                goto LABEL_91;
              }

              v85 = v81;
              v86 = v164;
            }

            break;
          }

          v88 = objc_alloc_init(_PXGViewSetupParameters);
          if (v88)
          {
            goto LABEL_64;
          }

          goto LABEL_65;
        }

        textureInfos = selfCopy2->_textureInfos;
        if (textureInfos)
        {
          [v66 getTextureInfos:selfCopy2->_textureInfos forSpriteIndexes:selfCopy2->_spriteIndexes geometries:v150 spriteStyles:v146 spriteInfos:v154 screenScale:spriteCount count:v29];
        }

        v158 = textureInfos;
        viewClass = objc_opt_class();
        v70 = 0;
        if (viewClass)
        {
          goto LABEL_29;
        }

LABEL_109:

        v65 = v152 + 1;
      }

      while (v152 + 1 != v63);
      v122 = [obj countByEnumeratingWithState:&v187 objects:v215 count:16];
      v63 = v122;
    }

    while (v122);
  }

  v174[0] = MEMORY[0x277D85DD0];
  v174[1] = 3221225472;
  v174[2] = __110__PXGViewRenderer_renderSpritesWithTextures_dataStore_presentationDataStore_presentationMetadataStore_layout___block_invoke_5;
  v174[3] = &unk_2782AA748;
  v177 = v208;
  v178 = v209;
  v174[4] = selfCopy2;
  v179 = v210;
  v123 = v137;
  v176 = v123;
  v180 = a2;
  v181 = resizableCapInsets;
  v182 = v29;
  v124 = v153;
  v175 = v124;
  v125 = MEMORY[0x21CEE40A0](v174);
  v126 = [v124 count];
  if ([v124 count])
  {
    while (1)
    {
      allValues = [v124 allValues];
      v170 = 0u;
      v171 = 0u;
      v172 = 0u;
      v173 = 0u;
      v128 = allValues;
      v129 = [v128 countByEnumeratingWithState:&v170 objects:v214 count:16];
      if (v129)
      {
        v130 = v129;
        v131 = *v171;
        do
        {
          for (j = 0; j != v130; ++j)
          {
            if (*v171 != v131)
            {
              objc_enumerationMutation(v128);
            }

            v125[2](v125, *(*(&v170 + 1) + 8 * j));
          }

          v130 = [v128 countByEnumeratingWithState:&v170 objects:v214 count:16];
        }

        while (v130);
      }

      if ([v124 count] == v126)
      {
        break;
      }

      v126 = [v124 count];

      if (![v124 count])
      {
        goto LABEL_127;
      }
    }
  }

LABEL_127:
  trackingContainerViewInfoBySpriteIndex = selfCopy->_trackingContainerViewInfoBySpriteIndex;
  v165[0] = MEMORY[0x277D85DD0];
  v165[1] = 3221225472;
  v166 = v208;
  v165[2] = __110__PXGViewRenderer_renderSpritesWithTextures_dataStore_presentationDataStore_presentationMetadataStore_layout___block_invoke_4_64;
  v165[3] = &unk_2782AA770;
  v165[4] = selfCopy;
  v167 = v209;
  v168 = v210;
  v169 = v29;
  [(NSMutableDictionary *)trackingContainerViewInfoBySpriteIndex enumerateKeysAndObjectsUsingBlock:v165];
  [(PXGViewRenderer *)selfCopy _shiftViewsToCompensateForDeferredVisibleOrigin];
  recordingSession6 = [(PXGViewRenderer *)selfCopy recordingSession];

  if (recordingSession6)
  {
    recordingSession7 = [(PXGViewRenderer *)selfCopy recordingSession];
    v136 = +[PXGViewRecordingFrameEndEvent event];
    [recordingSession7 recordEvent:v136];
  }

  selfCopy->_spritesNeedUpate = 0;
}

uint64_t __110__PXGViewRenderer_renderSpritesWithTextures_dataStore_presentationDataStore_presentationMetadataStore_layout___block_invoke(uint64_t result, unsigned int a2)
{
  v2 = *(result + 40) + 32 * a2;
  v3 = *(result + 48);
  v4 = vmul_f32(*(v2 + 24), 0x3F0000003F000000);
  if (*v2 - v4.f32[0] <= v3 + *(result + 64) && *v2 + v4.f32[0] >= v3)
  {
    v6 = *(result + 56);
    v7 = *(v2 + 8);
    v8 = v4.f32[1];
    v9 = v7 - v8;
    v10 = v7 + v8;
    if (v9 <= *(result + 72) + v6 && v10 >= v6)
    {
      return [*(result + 32) addIndex:v10];
    }
  }

  return result;
}

uint64_t __110__PXGViewRenderer_renderSpritesWithTextures_dataStore_presentationDataStore_presentationMetadataStore_layout___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 unsignedIntegerValue];
  result = [*(a1 + 32) containsIndex:v3];
  if ((result & 1) == 0)
  {
    v5 = *(a1 + 40);

    return [v5 addIndex:v3];
  }

  return result;
}

void __110__PXGViewRenderer_renderSpritesWithTextures_dataStore_presentationDataStore_presentationMetadataStore_layout___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v3 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:v4];
  [*(*(a1 + 32) + 16) removeObjectForKey:v4];
  [*(a1 + 32) _makeViewInfoReusable:v3];
}

uint64_t __110__PXGViewRenderer_renderSpritesWithTextures_dataStore_presentationDataStore_presentationMetadataStore_layout___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) leafSublayoutForSpriteIndex:a2];
  v5 = [*(a1 + 32) convertSpriteIndex:a2 toDescendantLayout:v4];
  v6 = v4;
  v7 = v4;
  while (1)
  {
    v8 = [*(a1 + 32) convertSpriteIndex:objc_msgSend(v6 fromLayout:{"viewHostingSpriteIndexForSublayout:spriteIndex:", v7, v5), v6}];
    v9 = v6 == v4 && v8 == a2;
    if (!v9 && v8 != -1)
    {
      break;
    }

    v5 = [v6 convertSpriteIndex:v5 fromLayout:v7];
    v11 = v6;

    v6 = [v11 nextViewHostingLayout];

    v7 = v11;
    if (!v6)
    {
      v12 = 0xFFFFFFFFLL;
      v7 = v11;
      goto LABEL_15;
    }
  }

  if (v6)
  {
    v12 = v8;
  }

  else
  {
    v12 = 0xFFFFFFFFLL;
  }

LABEL_15:

  return v12;
}

void __110__PXGViewRenderer_renderSpritesWithTextures_dataStore_presentationDataStore_presentationMetadataStore_layout___block_invoke_5(uint64_t a1, void *a2)
{
  v84 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = v3[2];
    v6 = *(v3 + 3);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = *(*(a1 + 32) + 16);
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v6];
  v9 = [v7 objectForKeyedSubscript:v8];

  v74 = 0;
  v75 = &v74;
  v76 = 0x4010000000;
  v77 = "";
  v78 = 0u;
  v79 = 0u;
  v10 = (*(a1 + 72) + 32 * v6);
  v11 = v10[1];
  v78 = *v10;
  v79 = v11;
  v12 = *(a1 + 88) + 40 * v6;
  if (v9)
  {
    v13 = *(v9 + 40);
  }

  else
  {
    v13 = 0;
  }

  v68 = *(a1 + 80);
  v14 = *(v12 + 34);
  v69 = v13;
  if (v4 && (*(v4 + 8) & 1) != 0)
  {
    goto LABEL_12;
  }

  v15 = *(a1 + 32);
  if ((v14 & 0x20) != 0)
  {
    if (([v69 pxg_isChildOfScrollViewController:*(v15 + 368)] & 1) == 0)
    {
      goto LABEL_37;
    }

LABEL_12:
    v19 = (*(*(a1 + 48) + 16))();
    v20 = *(a1 + 32);
    if (v19 == -1)
    {
      if ((v14 & 0x20) == 0)
      {
        [v69 pxg_addToScrollViewController:v20[46] floatingAxis:v5];
        goto LABEL_37;
      }

      [v20 _ensureUnderlayHostingView];
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
      [v69 pxg_insertIntoView:WeakRetained atIndex:0];
LABEL_36:

      goto LABEL_37;
    }

    v21 = v20[2];
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
    v23 = [v21 objectForKeyedSubscript:v22];

    if (!v23)
    {
      WeakRetained = 0;
      goto LABEL_34;
    }

    v24 = v23[5];
    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      v25 = objc_opt_respondsToSelector();

      if (v25)
      {
        WeakRetained = v23;
        if (v9)
        {
          objc_storeWeak((v9 + 48), WeakRetained);
        }

        v27 = v9;
        v28 = WeakRetained[1];
        if (!v28)
        {
          v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v30 = WeakRetained[1];
          WeakRetained[1] = v29;

          v28 = WeakRetained[1];
        }

        [v28 addObject:v27];

        v31 = v23[5];
        [v69 pxg_addToHostingView:v31];

        if (v9)
        {
          v32 = v27[5];
        }

        else
        {
          v32 = 0;
        }

        v33 = v32;
        v34 = [v33 pxg_hasSuperview];

        if (v34)
        {
          goto LABEL_34;
        }

        v35 = PXAssertGetLog();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          *&buf[4] = @"viewInfo.view.pxg_hasSuperview";
          _os_log_fault_impl(&dword_21AD38000, v35, OS_LOG_TYPE_FAULT, "Invalid parameter not satisfying: %@", buf, 0xCu);
        }

        goto LABEL_32;
      }
    }

    else
    {
    }

    v35 = PXGTungstenGetLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = v23[5];
      v37 = objc_opt_class();
      *buf = 138543362;
      *&buf[4] = v37;
      v38 = v37;
      _os_log_impl(&dword_21AD38000, v35, OS_LOG_TYPE_DEFAULT, "View class %{public}@ could not host sprites with PXGPresentationTypeView because it does not implement one or more of the view-hosting methods.", buf, 0xCu);
    }

    WeakRetained = 0;
LABEL_32:

LABEL_34:
    goto LABEL_36;
  }

  v16 = objc_loadWeakRetained((v15 + 32));
  if (v16)
  {
    v17 = objc_loadWeakRetained((*(a1 + 32) + 32));
    v18 = [v69 pxg_isChildOfView:v17];

    if (v18)
    {
      goto LABEL_12;
    }
  }

LABEL_37:
  v73[0] = MEMORY[0x277D85DD0];
  v73[1] = 3221225472;
  v73[2] = __110__PXGViewRenderer_renderSpritesWithTextures_dataStore_presentationDataStore_presentationMetadataStore_layout___block_invoke_58;
  v73[3] = &unk_2782AA6F8;
  v73[4] = *(a1 + 32);
  v73[5] = &v74;
  v39 = MEMORY[0x21CEE40A0](v73);
  if (!v9 || (v40 = objc_loadWeakRetained((v9 + 48))) == 0)
  {
    v42 = 0;
    goto LABEL_41;
  }

  v41 = v40[5];

  if (v41)
  {
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __110__PXGViewRenderer_renderSpritesWithTextures_dataStore_presentationDataStore_presentationMetadataStore_layout___block_invoke_2_60;
    v71[3] = &unk_2782AA720;
    v72 = v9;
    (v39)[2](v39, v71);
    v42 = v72;
LABEL_41:
  }

  v43 = objc_loadWeakRetained((*(a1 + 32) + 32));
  if (v43)
  {
    v44 = v9 ? *(v9 + 40) : 0;
    v45 = v44;
    v46 = objc_loadWeakRetained((*(a1 + 32) + 32));
    v47 = [v45 pxg_isChildOfView:v46];

    if (v47)
    {
      v70[0] = MEMORY[0x277D85DD0];
      v70[1] = 3221225472;
      v70[2] = __110__PXGViewRenderer_renderSpritesWithTextures_dataStore_presentationDataStore_presentationMetadataStore_layout___block_invoke_3_62;
      v70[3] = &unk_2782AA720;
      v70[4] = *(a1 + 32);
      (v39)[2](v39, v70);
    }
  }

  v48 = v68 + 160 * v6;
  v49 = v75;
  v75[6] = v75[6] + 1.0;
  v50 = (*(a1 + 104) + 16 * *(v48 + 68));
  v51 = *v50;
  v52 = v50[1];
  v53 = v50[2];
  v54 = v50[3];
  if (v4)
  {
    v55 = *(v4 + 3);
    *buf = *(v4 + 2);
    v81 = v55;
    v56 = *(v4 + 5);
    v82 = *(v4 + 4);
    v83 = v56;
    if (v9)
    {
LABEL_49:
      v57 = *(v9 + 40);
      goto LABEL_50;
    }
  }

  else
  {
    v82 = 0u;
    v83 = 0u;
    *buf = 0u;
    v81 = 0u;
    if (v9)
    {
      goto LABEL_49;
    }
  }

  v57 = 0;
LABEL_50:
  v58 = v57;
  if (v4)
  {
    v63 = *(v4 + 3);
    v64 = *(v4 + 9);
  }

  else
  {
    v63 = 0;
    v64 = 0;
  }

  LOBYTE(v67) = v64 & 1;
  LODWORD(v59) = v51;
  LODWORD(v60) = v52;
  LODWORD(v61) = v53;
  LODWORD(v62) = v54;
  [v58 pxg_configureWithTexture:v63 geometry:v49 + 4 info:v12 style:v48 textureInfo:buf resizableCapInsets:v9 reusableViewInfo:v59 screenScale:v60 separateLayers:{v61, v62, *(a1 + 112), v67}];

  v65 = *(a1 + 40);
  v66 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v6];
  [v65 removeObjectForKey:v66];

  _Block_object_dispose(&v74, 8);
}

void __110__PXGViewRenderer_renderSpritesWithTextures_dataStore_presentationDataStore_presentationMetadataStore_layout___block_invoke_4_64(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [a2 unsignedIntValue];
  v8 = *(a1 + 80);
  v9 = *(a1 + 56);
  v10[0] = *(a1 + 40);
  v10[1] = v9;
  v11 = *(a1 + 72);
  [v5 _configureTrackingContainerView:v6 spriteIndex:v7 sprites:v10 screenScale:v8];
}

void __110__PXGViewRenderer_renderSpritesWithTextures_dataStore_presentationDataStore_presentationMetadataStore_layout___block_invoke_58(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 368);
  v4 = a2;
  v5 = [v3 scrollView];
  v9 = [v5 layer];

  v6 = v4[2](v4, v9, *(*(*(a1 + 40) + 8) + 32), *(*(*(a1 + 40) + 8) + 40));
  v8 = v7;

  *(*(*(a1 + 40) + 8) + 32) = v6;
  *(*(*(a1 + 40) + 8) + 40) = v8;
}

double __110__PXGViewRenderer_renderSpritesWithTextures_dataStore_presentationDataStore_presentationMetadataStore_layout___block_invoke_2_60(uint64_t a1, void *a2, double a3, double a4)
{
  v7 = a2;
  v8 = *(a1 + 32);
  if (v8)
  {
    WeakRetained = objc_loadWeakRetained((v8 + 48));
    v10 = WeakRetained;
    if (WeakRetained)
    {
      WeakRetained = WeakRetained[5];
    }
  }

  else
  {
    v10 = 0;
    WeakRetained = 0;
  }

  [WeakRetained convertHostedChildCenter:v7 fromGlobalLayer:{a3, a4}];
  v12 = v11;

  return v12;
}

double __110__PXGViewRenderer_renderSpritesWithTextures_dataStore_presentationDataStore_presentationMetadataStore_layout___block_invoke_3_62(uint64_t a1, void *a2, double a3, double a4)
{
  v6 = *(a1 + 32);
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((v6 + 32));
  v9 = [WeakRetained layer];
  [v9 convertPoint:v7 fromLayer:{a3, a4}];
  v11 = v10;

  return v11;
}

- (void)updateWithChangeDetails:(id)details
{
  reusableViewInfoBySpriteIndex = self->_reusableViewInfoBySpriteIndex;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__PXGViewRenderer_updateWithChangeDetails___block_invoke;
  v9[3] = &unk_2782AA630;
  v9[4] = self;
  detailsCopy = details;
  [detailsCopy applyToDictionary:reusableViewInfoBySpriteIndex removalHandler:v9];
  trackingContainerViewInfoBySpriteIndex = self->_trackingContainerViewInfoBySpriteIndex;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__PXGViewRenderer_updateWithChangeDetails___block_invoke_2;
  v8[3] = &unk_2782AA658;
  v8[4] = self;
  v8[5] = a2;
  [detailsCopy applyToDictionary:trackingContainerViewInfoBySpriteIndex removalHandler:v8];
}

void __43__PXGViewRenderer_updateWithChangeDetails___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v16 = v4;
  if (v4 && (v5 = v4[5]) != 0)
  {
    v6 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_4;
    }

    v7 = [MEMORY[0x277CCA890] currentHandler];
    v13 = *(a1 + 32);
    v12 = *(a1 + 40);
    v14 = objc_opt_class();
    v11 = NSStringFromClass(v14);
    v15 = [v6 px_descriptionForAssertionMessage];
    [v7 handleFailureInMethod:v12 object:v13 file:@"PXGViewRenderer.m" lineNumber:286 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"viewInfo.view", v11, v15}];
  }

  else
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [v7 handleFailureInMethod:v8 object:v9 file:@"PXGViewRenderer.m" lineNumber:286 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"viewInfo.view", v11}];
    v6 = 0;
  }

LABEL_4:
  [v6 setIsSpriteRemoved:1];
}

- (id)_dequeueViewWithClass:(Class)class
{
  v5 = [(NSMutableDictionary *)self->_reusableViewsByClass objectForKeyedSubscript:?];
  if ([v5 count])
  {
    firstObject = [v5 firstObject];
    [v5 removeObjectAtIndex:0];
    [firstObject pxg_prepareForReuse];
  }

  else
  {
    firstObject = objc_alloc_init(class);
  }

  if ([(PXGViewRenderer *)self customAssetImageViewClass]== class)
  {
    customAssetImageViewClassConfigurator = [(PXGViewRenderer *)self customAssetImageViewClassConfigurator];

    if (customAssetImageViewClassConfigurator)
    {
      customAssetImageViewClassConfigurator2 = [(PXGViewRenderer *)self customAssetImageViewClassConfigurator];
      (customAssetImageViewClassConfigurator2)[2](customAssetImageViewClassConfigurator2, firstObject);
    }
  }

  return firstObject;
}

- (void)_makeViewInfoReusable:(id)reusable
{
  v25 = *MEMORY[0x277D85DE8];
  reusableCopy = reusable;
  v5 = reusableCopy;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  if (reusableCopy)
  {
    v6 = [reusableCopy[1] copy];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(_PXGReusableViewInfo *)*(*(&v18 + 1) + 8 * i) removeFromSuperViewInfo];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v8);
  }

  if (v5)
  {
    v11 = [*(v5 + 8) copy];
  }

  else
  {
    v11 = 0;
  }

  v12 = [v11 count];

  if (v12)
  {
    v13 = PXAssertGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      if (v5)
      {
        v17 = [*(v5 + 8) copy];
      }

      else
      {
        v17 = 0;
      }

      *buf = 138412290;
      v23 = v17;
      _os_log_error_impl(&dword_21AD38000, v13, OS_LOG_TYPE_ERROR, "Some children are left: %@", buf, 0xCu);
    }
  }

  [(_PXGReusableViewInfo *)v5 removeFromSuperViewInfo];
  if (v5)
  {
    v14 = *(v5 + 40);
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  [v15 pxg_becomeReusable];
  array = [(NSMutableDictionary *)self->_reusableViewsByClass objectForKeyedSubscript:objc_opt_class()];
  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
    [(NSMutableDictionary *)self->_reusableViewsByClass setObject:array forKeyedSubscript:objc_opt_class()];
  }

  [array addObject:v15];
}

- (void)_resizeBuffersForSpriteCount:(int64_t)count
{
  if (self->_spriteBufferCapacity < count)
  {
    self->_spriteBufferCapacity = count;
    self->_spriteIndexes = malloc_type_realloc(self->_spriteIndexes, 4 * count, 0x100004052888210uLL);
    self->_textureInfos = malloc_type_realloc(self->_textureInfos, count << 6, 0x1000040FB6E31C6uLL);
  }
}

- (void)_ensureUnderlayHostingView
{
  WeakRetained = objc_loadWeakRetained(&self->_underlayHostingView);

  if (!WeakRetained)
  {
    rootView = [(PXGViewRenderer *)self rootView];
    objc_storeWeak(&self->_underlayHostingView, rootView);

    v6 = objc_loadWeakRetained(&self->_underlayHostingView);
    if (!v6)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXGViewRenderer.m" lineNumber:203 description:{@"Invalid parameter not satisfying: %@", @"_underlayHostingView != nil"}];
    }

    v7 = objc_loadWeakRetained(&self->_underlayHostingView);
    enableUnderlaySupport = [v7 enableUnderlaySupport];

    if ((enableUnderlaySupport & 1) == 0)
    {
      v9 = PXAssertGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_21AD38000, v9, OS_LOG_TYPE_FAULT, "PXGView.enableUnderlaySupport must be turned on when PXGSpriteInfoFlagsUnderlay is used", buf, 2u);
      }
    }
  }
}

- (void)setScrollViewController:(id)controller
{
  controllerCopy = controller;
  scrollViewController = self->_scrollViewController;
  if (scrollViewController != controllerCopy)
  {
    v7 = controllerCopy;
    [(PXScrollViewController *)scrollViewController unregisterObserver:self];
    objc_storeStrong(&self->_scrollViewController, controller);
    [(PXScrollViewController *)self->_scrollViewController registerObserver:self];
    controllerCopy = v7;
  }
}

- (void)dealloc
{
  free(self->_spriteIndexes);
  free(self->_textureInfos);
  v3.receiver = self;
  v3.super_class = PXGViewRenderer;
  [(PXGViewRenderer *)&v3 dealloc];
}

@end