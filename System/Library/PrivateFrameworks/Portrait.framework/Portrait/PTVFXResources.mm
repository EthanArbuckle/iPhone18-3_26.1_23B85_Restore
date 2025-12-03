@interface PTVFXResources
- (void)asyncVFXInit:(id)init metalContext:(id)context;
@end

@implementation PTVFXResources

- (void)asyncVFXInit:(id)init metalContext:(id)context
{
  initCopy = init;
  contextCopy = context;
  objc_initWeak(&location, self);
  [(PTVFXResources *)self setReactionTemplates:MEMORY[0x277CBEBF8]];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__PTVFXResources_asyncVFXInit_metalContext___block_invoke;
  block[3] = &unk_2785233B0;
  objc_copyWeak(&v11, &location);
  v10 = contextCopy;
  v8 = contextCopy;
  dispatch_async(initCopy, block);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __44__PTVFXResources_asyncVFXInit_metalContext___block_invoke(uint64_t a1)
{
  v118 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && ([WeakRetained initializationCancelled] & 1) == 0)
  {
    v93 = a1;
    v99 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    kdebug_trace();
    v98 = objc_opt_new();
    [v98 setQosLevel:3];
    v4 = [*(a1 + 32) device];
    v5 = [v4 newCommandQueueWithDescriptor:v98];

    v92 = v5;
    v96 = [[PTCommandQueueProxy alloc] initWithInitializerCommandQueue:v5];
    v97 = [v99 URLForResource:@"default" withExtension:@"metallib"];
    context = objc_autoreleasePoolPush();
    if ([v3 initializationCancelled])
    {
      v7 = _PTLogSystem();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2243FB000, v7, OS_LOG_TYPE_INFO, "VFX initialization aborted", buf, 2u);
      }

      objc_autoreleasePoolPop(context);
      goto LABEL_51;
    }

    Helper_x8__OBJC_CLASS___VFXRenderer = gotLoadHelper_x8__OBJC_CLASS___VFXRenderer(v6);
    v10 = [*(v9 + 312) rendererWithCommandQueue:v96 options:{0, Helper_x8__OBJC_CLASS___VFXRenderer}];
    [v3 setVfxRenderer:v10];

    v11 = [v3 vfxRenderer];
    [v11 setAntialiasingMode:0];

    v12 = [v99 URLForResource:@"lighting" withExtension:@"vfx"];
    Helper_x8__OBJC_CLASS___VFXWorld = gotLoadHelper_x8__OBJC_CLASS___VFXWorld(v13);
    v16 = *(v15 + 360);
    v110 = 0;
    v17 = [v16 worldWithURL:v12 options:0 error:{&v110, Helper_x8__OBJC_CLASS___VFXWorld}];
    v18 = v110;
    [v3 setWorld:v17];

    if (v18 || ([v3 world], v20 = objc_claimAutoreleasedReturnValue(), v21 = v20 == 0, v20, v21))
    {
      v19 = _PTLogSystem();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        __44__PTVFXResources_asyncVFXInit_metalContext___block_invoke_cold_4(v12, v18, v19);
      }

      objc_autoreleasePoolPop(context);
      goto LABEL_51;
    }

    v22 = [v3 world];
    v23 = [v3 vfxRenderer];
    [v23 setWorld:v22];

    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v24 = [v3 world];
    v25 = [v24 behaviorGraph];
    v26 = [v25 bindings];

    v27 = [v26 countByEnumeratingWithState:&v106 objects:v117 count:16];
    if (v27)
    {
      v28 = *v107;
      while (2)
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v107 != v28)
          {
            objc_enumerationMutation(v26);
          }

          v30 = *(*(&v106 + 1) + 8 * i);
          v31 = [v30 name];
          v32 = [v31 isEqualToString:@"IBLIntensity"];

          if (v32)
          {
            [v3 setLightBinding:v30];
            goto LABEL_22;
          }
        }

        v27 = [v26 countByEnumeratingWithState:&v106 objects:v117 count:16];
        if (v27)
        {
          continue;
        }

        break;
      }
    }

LABEL_22:

    v33 = [v3 lightBinding];
    v34 = v33 == 0;

    if (v34)
    {
      v35 = _PTLogSystem();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        __44__PTVFXResources_asyncVFXInit_metalContext___block_invoke_cold_1(v35, v36, v37, v38, v39, v40, v41, v42);
      }
    }

    v43 = [v3 vfxRenderer];
    v44 = [v43 world];
    v45 = [v3 vfxRenderer];
    v46 = [[PTVFXResourcesLogger alloc] initWithName:@"IBLIntensity" index:0xFFFFFFFFLL];
    v47 = [(PTVFXResourcesLogger *)v46 progressHandler];
    [v44 prepareForRenderer:v45 progressHandler:v47];

    objc_autoreleasePoolPop(context);
    v91 = objc_opt_new();
    v49 = 0;
    if ([&unk_2837F3928 count])
    {
      v50 = 0;
      gotLoadHelper_x8__VFXWorldLoaderOptionMetalLibraryURL(v48);
      v90 = **(v51 + 392);
      *&v52 = 138412546;
      v89 = v52;
      while (1)
      {
        contexta = objc_autoreleasePoolPush();
        if ([v3 initializationCancelled])
        {
          break;
        }

        if (v50 == 2)
        {
          v53 = [v91 lastObject];
          [v91 addObject:v53];
        }

        else
        {
          v54 = [&unk_2837F3928 objectAtIndexedSubscript:v50];
          v53 = [v99 URLForResource:v54 withExtension:@"vfx"];

          v115 = v90;
          v116 = v97;
          v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v116 forKeys:&v115 count:1];
          v57 = gotLoadHelper_x8__OBJC_CLASS___VFXWorld(v56);
          v59 = *(v58 + 360);
          v105 = v49;
          v60 = [v59 worldWithURL:v53 options:v55 error:{&v105, v57}];
          v61 = v105;

          if (v60)
          {
            v62 = [v3 vfxRenderer];
            v63 = [PTVFXResourcesLogger alloc];
            v64 = [&unk_2837F3928 objectAtIndexedSubscript:v50];
            v65 = [(PTVFXResourcesLogger *)v63 initWithName:v64 index:v50];
            v66 = [(PTVFXResourcesLogger *)v65 progressHandler];
            [v60 prepareForRenderer:v62 progressHandler:v66];

            [v91 addObject:v60];
          }

          else
          {
            v67 = _PTLogSystem();
            if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
            {
              *buf = v89;
              v112 = v53;
              v113 = 2112;
              v114 = v61;
              _os_log_error_impl(&dword_2243FB000, v67, OS_LOG_TYPE_ERROR, "Failed to create world from %@ error %@", buf, 0x16u);
            }
          }

          v49 = v61;
        }

        objc_autoreleasePoolPop(contexta);
        if (++v50 >= [&unk_2837F3928 count])
        {
          goto LABEL_38;
        }
      }

      v68 = _PTLogSystem();
      if (!os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
      {
        goto LABEL_50;
      }

      *buf = 0;
    }

    else
    {
LABEL_38:
      contexta = objc_autoreleasePoolPush();
      if (![v3 initializationCancelled])
      {
        v69 = [v3 world];
        v70 = [v69 rootNode];
        v71 = [v70 childNodeWithName:@"Camera" recursively:1];
        v72 = [v71 camera];
        [v3 setCamera:v72];

        v73 = [v3 camera];
        LODWORD(v69) = v73 == 0;

        if (v69)
        {
          v68 = _PTLogSystem();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
          {
            __44__PTVFXResources_asyncVFXInit_metalContext___block_invoke_cold_3(v68, v82, v83, v84, v85, v86, v87, v88);
          }
        }

        else
        {
          v68 = [(PTCommandQueueProxy *)v96 commandBuffer];
          if (!v68)
          {
            v74 = _PTLogSystem();
            if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
            {
              __44__PTVFXResources_asyncVFXInit_metalContext___block_invoke_cold_2(v74, v75, v76, v77, v78, v79, v80, v81);
            }
          }

          [v68 setLabel:@"PTVFXResources wait for resources", v89];
          v100[0] = MEMORY[0x277D85DD0];
          v100[1] = 3221225472;
          v100[2] = __44__PTVFXResources_asyncVFXInit_metalContext___block_invoke_89;
          v100[3] = &unk_278523388;
          objc_copyWeak(&v104, (v93 + 40));
          v101 = v96;
          v102 = *(v93 + 32);
          v103 = v91;
          [v68 addCompletedHandler:v100];
          [v68 commit];

          objc_destroyWeak(&v104);
        }

        goto LABEL_50;
      }

      v68 = _PTLogSystem();
      if (!os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
      {
LABEL_50:

        objc_autoreleasePoolPop(contexta);
LABEL_51:

        goto LABEL_52;
      }

      *buf = 0;
    }

    _os_log_impl(&dword_2243FB000, v68, OS_LOG_TYPE_INFO, "VFX initialization aborted", buf, 2u);
    goto LABEL_50;
  }

LABEL_52:
}

void __44__PTVFXResources_asyncVFXInit_metalContext___block_invoke_89(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained && ![WeakRetained initializationCancelled])
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) commandQueue];
    [v5 switchToCommandQueue:v6];

    v7 = [*(a1 + 48) copy];
    [v3 setReactionTemplates:v7];

    kdebug_trace();
  }

  else
  {
    v4 = _PTLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_2243FB000, v4, OS_LOG_TYPE_INFO, "VFX initialization aborted", v8, 2u);
    }
  }
}

void __44__PTVFXResources_asyncVFXInit_metalContext___block_invoke_cold_4(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = a1;
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_1_6(&dword_2243FB000, a2, a3, "Failed to create world from %@ error %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

@end