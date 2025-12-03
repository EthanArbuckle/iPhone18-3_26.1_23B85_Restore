@interface SXComponentInsertionManager
- (SXComponentInsertionManager)initWithComponentInserterManager:(id)manager conditionEngine:(id)engine blueprintAnalyzer:(id)analyzer unitConverterFactory:(id)factory;
- (id)insertComponentsForBlueprint:(id)blueprint DOMObjectProvider:(id)provider;
- (id)insertForMarker:(id)marker inserter:(id)inserter DOMObjectProvider:(id)provider layoutProvider:(id)layoutProvider;
- (void)updateDOM:(id)m layoutBlueprint:(id)blueprint insert:(id)insert marker:(id)marker;
@end

@implementation SXComponentInsertionManager

- (SXComponentInsertionManager)initWithComponentInserterManager:(id)manager conditionEngine:(id)engine blueprintAnalyzer:(id)analyzer unitConverterFactory:(id)factory
{
  managerCopy = manager;
  engineCopy = engine;
  analyzerCopy = analyzer;
  factoryCopy = factory;
  v20.receiver = self;
  v20.super_class = SXComponentInsertionManager;
  v15 = [(SXComponentInsertionManager *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_inserterManager, manager);
    objc_storeStrong(&v16->_conditionEngine, engine);
    objc_storeStrong(&v16->_blueprintAnalyzer, analyzer);
    objc_storeStrong(&v16->_unitConverterFactory, factory);
    array = [MEMORY[0x1E695DF70] array];
    cache = v16->_cache;
    v16->_cache = array;
  }

  return v16;
}

- (id)insertComponentsForBlueprint:(id)blueprint DOMObjectProvider:(id)provider
{
  v167 = *MEMORY[0x1E69E9840];
  blueprintCopy = blueprint;
  providerCopy = provider;
  obj = 0;
  v101 = blueprintCopy;
  if (blueprintCopy && providerCopy)
  {
    v102 = providerCopy;
    v7 = SXInsertionLog;
    if (os_log_type_enabled(SXInsertionLog, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = blueprintCopy;
      _os_log_impl(&dword_1D825C000, v7, OS_LOG_TYPE_DEFAULT, "Initiating component insertion for layout blueprint: %{public}@", &buf, 0xCu);
    }

    v8 = [SXComponentInsertionLayoutProvider alloc];
    unitConverterFactory = [(SXComponentInsertionManager *)self unitConverterFactory];
    v92 = [(SXComponentInsertionLayoutProvider *)v8 initWithBlueprint:blueprintCopy DOMObjectProvider:v102 unitConverterFactory:unitConverterFactory];

    *&buf = 0;
    *(&buf + 1) = &buf;
    v163 = 0x3032000000;
    v164 = __Block_byref_object_copy__4;
    v165 = __Block_byref_object_dispose__4;
    array = [MEMORY[0x1E695DF70] array];
    v146 = 0;
    v147 = &v146;
    v148 = 0x3032000000;
    v149 = __Block_byref_object_copy__4;
    v150 = __Block_byref_object_dispose__4;
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    v140 = 0;
    v141 = &v140;
    v142 = 0x3032000000;
    v143 = __Block_byref_object_copy__4;
    v144 = __Block_byref_object_dispose__4;
    inserterManager = [(SXComponentInsertionManager *)self inserterManager];
    inserters = [inserterManager inserters];
    v145 = [inserters mutableCopy];

    v12 = SXInsertionLog;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v141[5] count];
      *v158 = 134218240;
      v159 = v13;
      v160 = 2050;
      v161 = blueprintCopy;
      _os_log_impl(&dword_1D825C000, v12, OS_LOG_TYPE_DEFAULT, "Initial queue of inserters contains %lu inserter(s), blueprint=%{public}p", v158, 0x16u);
    }

    array2 = [MEMORY[0x1E695DF70] array];
    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    cache = [(SXComponentInsertionManager *)self cache];
    v15 = [cache copy];

    v16 = [v15 countByEnumeratingWithState:&v136 objects:v157 count:16];
    if (v16)
    {
      v17 = *v137;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v137 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v136 + 1) + 8 * i);
          caption = [(SXFullscreenCaption *)v19 caption];
          storage = [(SXTangierTextRenderCollectorItem *)v19 storage];
          v22 = [caption validateCache:storage DOMObjectProvider:v102];

          v23 = SXInsertionLog;
          v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
          if (v22)
          {
            if (v24)
            {
              text = [(SXFullscreenCaption *)v19 text];
              *v158 = 138543618;
              v159 = text;
              v160 = 2050;
              v161 = v101;
              _os_log_impl(&dword_1D825C000, v23, OS_LOG_TYPE_DEFAULT, "Using cached results from %{public}@ inserter, blueprint=%{public}p", v158, 0x16u);
            }

            v26 = v141[5];
            text2 = [(SXFullscreenCaption *)v19 text];
            [v26 removeObject:text2];

            storage2 = [(SXTangierTextRenderCollectorItem *)v19 storage];
            [array2 addObjectsFromArray:storage2];
          }

          else
          {
            if (v24)
            {
              text3 = [(SXFullscreenCaption *)v19 text];
              *v158 = 138543618;
              v159 = text3;
              v160 = 2050;
              v161 = v101;
              _os_log_impl(&dword_1D825C000, v23, OS_LOG_TYPE_DEFAULT, "Cached results no longer valid for from %{public}@ inserter, blueprint=%{public}p", v158, 0x16u);
            }

            storage2 = [(SXComponentInsertionManager *)self cache];
            [storage2 removeObject:v19];
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v136 objects:v157 count:16];
      }

      while (v16);
    }

    components = [v102 components];
    allComponents = [components allComponents];

    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    obja = v141[5];
    v31 = [obja countByEnumeratingWithState:&v132 objects:v156 count:16];
    if (v31)
    {
      v96 = *v133;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v133 != v96)
          {
            objc_enumerationMutation(obja);
          }

          v33 = *(*(&v132 + 1) + 8 * j);
          conditionEngine = [v33 conditionEngine];
          v35 = objc_opt_respondsToSelector();

          if (v35)
          {
            conditionEngine2 = [v33 conditionEngine];
            [conditionEngine2 prepareWithComponents:allComponents layoutProvider:v92 DOMObjectProvider:v102];
          }

          v37 = [v33 conditionsForDOMObjectProvider:v102];
          v130 = 0u;
          v131 = 0u;
          v128 = 0u;
          v129 = 0u;
          v38 = v37;
          v39 = [v38 countByEnumeratingWithState:&v128 objects:v155 count:16];
          if (v39)
          {
            v40 = *v129;
            do
            {
              for (k = 0; k != v39; ++k)
              {
                if (*v129 != v40)
                {
                  objc_enumerationMutation(v38);
                }

                v42 = *(*(&v128 + 1) + 8 * k);
                conditionEngine3 = [(SXComponentInsertionManager *)self conditionEngine];
                [conditionEngine3 addCondition:v42];
              }

              v39 = [v38 countByEnumeratingWithState:&v128 objects:v155 count:16];
            }

            while (v39);
          }

          v44 = v147[5];
          array3 = [MEMORY[0x1E695DF70] array];
          [v44 setObject:array3 forKey:v33];
        }

        v31 = [obja countByEnumeratingWithState:&v132 objects:v156 count:16];
      }

      while (v31);
    }

    conditionEngine4 = [(SXComponentInsertionManager *)self conditionEngine];
    [conditionEngine4 prepareWithComponents:allComponents layoutProvider:v92 DOMObjectProvider:v102];

    v47 = SXInsertionLog;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = [v141[5] count];
      *v158 = 134349312;
      v159 = v48;
      v160 = 2050;
      v161 = v101;
      _os_log_impl(&dword_1D825C000, v47, OS_LOG_TYPE_DEFAULT, "Starting blueprint analyzing with %{public}lu inserter(s), blueprint=%{public}p", v158, 0x16u);
    }

    objc_initWeak(&location, self);
    blueprintAnalyzer = [(SXComponentInsertionManager *)self blueprintAnalyzer];
    v118[0] = MEMORY[0x1E69E9820];
    v118[1] = 3221225472;
    v118[2] = __78__SXComponentInsertionManager_insertComponentsForBlueprint_DOMObjectProvider___block_invoke;
    v118[3] = &unk_1E85021F0;
    objc_copyWeak(&v126, &location);
    v87 = array2;
    v119 = v87;
    v120 = v101;
    p_buf = &buf;
    v124 = &v140;
    v121 = v102;
    v86 = v92;
    v122 = v86;
    v125 = &v146;
    v116[4] = &v140;
    v117[0] = MEMORY[0x1E69E9820];
    v117[1] = 3221225472;
    v117[2] = __78__SXComponentInsertionManager_insertComponentsForBlueprint_DOMObjectProvider___block_invoke_6;
    v117[3] = &unk_1E8502218;
    v117[4] = &v140;
    v116[0] = MEMORY[0x1E69E9820];
    v116[1] = 3221225472;
    v116[2] = __78__SXComponentInsertionManager_insertComponentsForBlueprint_DOMObjectProvider___block_invoke_2;
    v116[3] = &unk_1E8502240;
    v90 = v120;
    v97 = v121;
    [blueprintAnalyzer analyzeBlueprint:v120 DOMObjectProvider:v121 onMarkerFound:v118 then:v117 onEndReached:v116];

    v50 = [v97 DOM];
    obj = [v50 mutableCopy];

    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    reverseObjectEnumerator = [*(*(&buf + 1) + 40) reverseObjectEnumerator];
    v52 = [reverseObjectEnumerator countByEnumeratingWithState:&v112 objects:v154 count:16];
    if (v52)
    {
      v88 = reverseObjectEnumerator;
      v89 = *v113;
      do
      {
        v93 = v52;
        for (m = 0; m != v93; ++m)
        {
          if (*v113 != v89)
          {
            objc_enumerationMutation(v88);
          }

          v53 = *(*(&v112 + 1) + 8 * m);
          text4 = [(SXFullscreenCaption *)v53 text];
          caption2 = [(SXFullscreenCaption *)v53 caption];
          [(SXComponentInsertionManager *)self updateDOM:obj layoutBlueprint:v90 insert:text4 marker:caption2];

          conditionEngine5 = [(SXComponentInsertionManager *)self conditionEngine];
          LOBYTE(caption2) = objc_opt_respondsToSelector();

          if (caption2)
          {
            conditionEngine6 = [(SXComponentInsertionManager *)self conditionEngine];
            text5 = [(SXFullscreenCaption *)v53 text];
            component = [text5 component];
            caption3 = [(SXFullscreenCaption *)v53 caption];
            [caption3 approximateLocation];
            [conditionEngine6 insertedComponent:component approximateLocation:?];
          }

          v110 = 0u;
          v111 = 0u;
          v108 = 0u;
          v109 = 0u;
          inserterManager2 = [(SXComponentInsertionManager *)self inserterManager];
          inserters2 = [inserterManager2 inserters];

          v63 = [inserters2 countByEnumeratingWithState:&v108 objects:v153 count:16];
          if (v63)
          {
            v64 = *v109;
            do
            {
              for (n = 0; n != v63; ++n)
              {
                if (*v109 != v64)
                {
                  objc_enumerationMutation(inserters2);
                }

                v66 = *(*(&v108 + 1) + 8 * n);
                conditionEngine7 = [v66 conditionEngine];
                v68 = objc_opt_respondsToSelector();

                if (v68)
                {
                  conditionEngine8 = [v66 conditionEngine];
                  text6 = [(SXFullscreenCaption *)v53 text];
                  component2 = [text6 component];
                  caption4 = [(SXFullscreenCaption *)v53 caption];
                  [caption4 approximateLocation];
                  [conditionEngine8 insertedComponent:component2 approximateLocation:?];
                }
              }

              v63 = [inserters2 countByEnumeratingWithState:&v108 objects:v153 count:16];
            }

            while (v63);
          }
        }

        reverseObjectEnumerator = v88;
        v52 = [v88 countByEnumeratingWithState:&v112 objects:v154 count:16];
      }

      while (v52);
    }

    v73 = SXInsertionLog;
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      v74 = [*(*(&buf + 1) + 40) count];
      *v158 = 134349312;
      v159 = v74;
      v160 = 2050;
      v161 = v90;
      _os_log_impl(&dword_1D825C000, v73, OS_LOG_TYPE_DEFAULT, "Finished DOM mutation for %{public}lu insert(s), blueprint=%{public}p", v158, 0x16u);
    }

    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    inserterManager3 = [(SXComponentInsertionManager *)self inserterManager];
    inserters3 = [inserterManager3 inserters];

    v77 = [inserters3 countByEnumeratingWithState:&v104 objects:v152 count:16];
    if (v77)
    {
      v100 = *v105;
      do
      {
        for (ii = 0; ii != v77; ++ii)
        {
          if (*v105 != v100)
          {
            objc_enumerationMutation(inserters3);
          }

          v79 = *(*(&v104 + 1) + 8 * ii);
          if (objc_opt_respondsToSelector())
          {
            v80 = [v147[5] objectForKey:v79];
            v81 = [v79 cacheValidatorForCache:v80 DOMObjectProvider:v97];
            if ([v80 count])
            {
              v82 = v81 == 0;
            }

            else
            {
              v82 = 1;
            }

            if (!v82)
            {
              v83 = [[SXComponentInsertionCacheItem alloc] initWithInserter:v79 validator:v81 results:v80];
              cache2 = [(SXComponentInsertionManager *)self cache];
              [cache2 addObject:v83];
            }
          }

          if (objc_opt_respondsToSelector())
          {
            [v79 componentInsertionCompleted];
          }
        }

        v77 = [inserters3 countByEnumeratingWithState:&v104 objects:v152 count:16];
      }

      while (v77);
    }

    objc_destroyWeak(&v126);
    objc_destroyWeak(&location);

    _Block_object_dispose(&v140, 8);
    _Block_object_dispose(&v146, 8);

    _Block_object_dispose(&buf, 8);
    providerCopy = v102;
  }

  return obj;
}

uint64_t __78__SXComponentInsertionManager_insertComponentsForBlueprint_DOMObjectProvider___block_invoke(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_copyWeak(&to, (a1 + 88));
  v4 = objc_loadWeakRetained(&to);
  v5 = v4 == 0;

  if (v5)
  {
    v19 = 0;
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v6 = *(a1 + 32);
    v7 = [v6 countByEnumeratingWithState:&v24 objects:v37 count:16];
    if (v7)
    {
      v8 = *v25;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v24 + 1) + 8 * i);
          v11 = [(SXFullscreenCaption *)v10 caption];
          v12 = [v11 isEqualToMarker:{v3, v24}];

          if (v12)
          {
            v20 = SXInsertionLog;
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = [(SXFullscreenCaption *)v10 text];
              v22 = *(a1 + 40);
              *buf = 138543874;
              v30 = v21;
              v31 = 2114;
              v32 = v3;
              v33 = 2050;
              v34 = v22;
              _os_log_impl(&dword_1D825C000, v20, OS_LOG_TYPE_DEFAULT, "Inserting cached insert %{public}@ for marker: %{public}@, blueprint=%{public}p", buf, 0x20u);
            }

            [*(*(*(a1 + 64) + 8) + 40) addObject:v10];
            v19 = 2;
            goto LABEL_17;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v24 objects:v37 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v6 = [*(*(*(a1 + 72) + 8) + 40) firstObject];
    v13 = objc_loadWeakRetained(&to);
    v14 = [v13 insertForMarker:v3 inserter:v6 DOMObjectProvider:*(a1 + 48) layoutProvider:*(a1 + 56)];

    if (v14)
    {
      v15 = SXInsertionLog;
      if (os_log_type_enabled(SXInsertionLog, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 40);
        *buf = 138544130;
        v30 = v14;
        v31 = 2114;
        v32 = v3;
        v33 = 2114;
        v34 = v6;
        v35 = 2050;
        v36 = v16;
        _os_log_impl(&dword_1D825C000, v15, OS_LOG_TYPE_DEFAULT, "Adding insert %{public}@ at marker %{public}@ for inserter: %{public}@, blueprint=%{public}p", buf, 0x2Au);
      }

      v17 = [[SXComponentInsertionResult alloc] initWithInsert:v14 marker:v3];
      [*(*(*(a1 + 64) + 8) + 40) addObject:v17];
      v18 = [*(*(*(a1 + 80) + 8) + 40) objectForKey:v6];
      [v18 addObject:v17];

      v19 = 1;
    }

    else
    {
      v19 = 0;
    }

LABEL_17:
  }

  objc_destroyWeak(&to);

  return v19;
}

uint64_t __78__SXComponentInsertionManager_insertComponentsForBlueprint_DOMObjectProvider___block_invoke_6(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    return 0;
  }

  if ([*(*(*(a1 + 32) + 8) + 40) count] < 2)
  {
    return 0;
  }

  v3 = [*(*(*(a1 + 32) + 8) + 40) firstObject];
  [*(*(*(a1 + 32) + 8) + 40) removeObject:v3];
  [*(*(*(a1 + 32) + 8) + 40) addObject:v3];

  return 1;
}

uint64_t __78__SXComponentInsertionManager_insertComponentsForBlueprint_DOMObjectProvider___block_invoke_2(uint64_t a1)
{
  if ([*(*(*(a1 + 32) + 8) + 40) count] < 2)
  {
    return 2;
  }

  v2 = [*(*(*(a1 + 32) + 8) + 40) firstObject];
  [*(*(*(a1 + 32) + 8) + 40) removeObjectAtIndex:0];

  return 1;
}

- (id)insertForMarker:(id)marker inserter:(id)inserter DOMObjectProvider:(id)provider layoutProvider:(id)layoutProvider
{
  markerCopy = marker;
  inserterCopy = inserter;
  providerCopy = provider;
  layoutProviderCopy = layoutProvider;
  conditionEngine = [(SXComponentInsertionManager *)self conditionEngine];
  v15 = [conditionEngine validateMarker:markerCopy componentTraits:objc_msgSend(inserterCopy layoutProvider:{"componentTraits"), layoutProviderCopy}];

  if (!v15)
  {
    goto LABEL_10;
  }

  conditionEngine2 = [inserterCopy conditionEngine];
  if ([conditionEngine2 validateMarker:markerCopy componentTraits:objc_msgSend(inserterCopy layoutProvider:{"componentTraits"), layoutProviderCopy}])
  {
  }

  else
  {
    conditionEngine3 = [inserterCopy conditionEngine];

    if (conditionEngine3)
    {
LABEL_10:
      v19 = 0;
      goto LABEL_11;
    }
  }

  if (![inserterCopy validateMarker:markerCopy DOMObjectProvider:providerCopy layoutProvider:layoutProviderCopy])
  {
    goto LABEL_10;
  }

  v18 = [inserterCopy componentInsertForMarker:markerCopy DOMObjectProvider:providerCopy layoutProvider:layoutProviderCopy];
  v19 = v18;
  if (!v18 || ([v18 component], (v20 = objc_claimAutoreleasedReturnValue()) == 0) || (v21 = v20, objc_msgSend(v19, "componentLayout"), v22 = objc_claimAutoreleasedReturnValue(), v22, v21, !v22))
  {

    goto LABEL_10;
  }

LABEL_11:

  return v19;
}

- (void)updateDOM:(id)m layoutBlueprint:(id)blueprint insert:(id)insert marker:(id)marker
{
  v48 = *MEMORY[0x1E69E9840];
  mCopy = m;
  blueprintCopy = blueprint;
  insertCopy = insert;
  markerCopy = marker;
  array = [MEMORY[0x1E695DF70] array];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  path = [markerCopy path];
  v15 = [path countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v44;
    do
    {
      v18 = 0;
      do
      {
        if (*v44 != v17)
        {
          objc_enumerationMutation(path);
        }

        identifier = [*(*(&v43 + 1) + 8 * v18) identifier];
        [array addObject:identifier];

        ++v18;
      }

      while (v16 != v18);
      v16 = [path countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v16);
  }

  components = [mCopy components];
  v21 = [components componentsForContainerComponentWithPath:array];

  component = [insertCopy component];
  identifier2 = [component identifier];

  if (!identifier2)
  {
    component2 = [insertCopy component];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    [component2 setIdentifier:uUIDString];
  }

  layout = [component layout];

  if (!layout)
  {
    component3 = [insertCopy component];
    uUID2 = [MEMORY[0x1E696AFB0] UUID];
    uUIDString2 = [uUID2 UUIDString];
    [component3 setLayout:uUIDString2];
  }

  anchor = [component anchor];

  if (!anchor)
  {
    component4 = [insertCopy component];
    componentAnchor = [markerCopy componentAnchor];
    [component4 setAnchor:componentAnchor];
  }

  component5 = [insertCopy component];
  leadingComponent = [markerCopy leadingComponent];
  [v21 insertComponent:component5 afterComponent:leadingComponent];

  componentLayouts = [mCopy componentLayouts];
  componentLayout = [insertCopy componentLayout];
  layout2 = [component layout];
  [componentLayouts setObject:componentLayout forKey:layout2];

  componentAnchor2 = [markerCopy componentAnchor];
  targetComponentIdentifier = [componentAnchor2 targetComponentIdentifier];

  if (targetComponentIdentifier)
  {
    componentAnchor3 = [markerCopy componentAnchor];
    targetComponentIdentifier2 = [componentAnchor3 targetComponentIdentifier];
    [blueprintCopy invalidateSizeForComponentWithIdentifier:targetComponentIdentifier2];
  }
}

@end