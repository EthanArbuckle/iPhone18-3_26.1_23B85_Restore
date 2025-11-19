@interface PTPersonSemanticsNetwork
- (PTPersonSemanticsNetwork)initWithMetalContext:(id)a3 sharedResources:(id)a4;
- (id)espressoFileURLFor:(id)a3 prefix:(id)a4 chipId:(id)a5;
- (unsigned)executeNetwork:(id)a3;
@end

@implementation PTPersonSemanticsNetwork

- (id)espressoFileURLFor:(id)a3 prefix:(id)a4 chipId:(id)a5
{
  if (a5)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@.%@.espresso.net", a3, a4, a5];
    v6 = [MEMORY[0x277CCAA00] defaultManager];
    v7 = [v6 fileExistsAtPath:v5];

    if (v7)
    {
      v8 = v5;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (PTPersonSemanticsNetwork)initWithMetalContext:(id)a3 sharedResources:(id)a4
{
  v67 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v63.receiver = self;
  v63.super_class = PTPersonSemanticsNetwork;
  v9 = [(PTPersonSemanticsNetwork *)&v63 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_metalContext, a3);
    kdebug_trace();
    if ((MGGetBoolAnswer() & 1) == 0)
    {
      v15 = _PTLogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [PTPersonSemanticsNetwork initWithMetalContext:sharedResources:];
      }

      v31 = 0;
      goto LABEL_54;
    }

    PTKTraceInit();
    v11 = [v8 effectUtil];
    effectUtil = v10->_effectUtil;
    v10->_effectUtil = v11;

    inRGBAName = v10->_inRGBAName;
    v10->_inRGBAName = @"image__Placeholder__0";

    v14 = FTGetChipIdentifier();
    v15 = [(PTPersonSemanticsNetwork *)v10 espressoFileURLFor:@"/System/Library/ImagingNetworks" prefix:@"personsemantics-preview-lowfps" chipId:v14];
    v16 = [(PTPersonSemanticsNetwork *)v10 espressoFileURLFor:@"/System/Library/ImagingNetworks" prefix:@"personsemantics-preview" chipId:v14];
    if (!(v15 | v16))
    {
      v58 = v14;
      v54 = v8;
      v17 = _PTLogSystem();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [PTPersonSemanticsNetwork initWithMetalContext:sharedResources:];
      }

      v56 = v7;

      v18 = [MEMORY[0x277CCAA00] defaultManager];
      v19 = [v18 contentsOfDirectoryAtPath:@"/System/Library/ImagingNetworks" error:0];

      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v20 = v19;
      v21 = [v20 countByEnumeratingWithState:&v59 objects:v66 count:16];
      if (!v21)
      {
        v23 = 0;
        v24 = 0;
        goto LABEL_26;
      }

      v22 = v21;
      v23 = 0;
      v24 = 0;
      v25 = *v60;
      while (1)
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v60 != v25)
          {
            objc_enumerationMutation(v20);
          }

          v27 = *(*(&v59 + 1) + 8 * i);
          if ([v27 hasSuffix:@".espresso.net"])
          {
            if ([v27 containsString:@"personsemantics-preview-lowfps"])
            {
              v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", @"/System/Library/ImagingNetworks", v27];
              v29 = v24;
              v24 = v28;
            }

            else
            {
              if (![v27 containsString:@"personsemantics-preview"])
              {
                continue;
              }

              v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", @"/System/Library/ImagingNetworks", v27];
              v29 = v23;
              v23 = v30;
            }
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v59 objects:v66 count:16];
        if (!v22)
        {
LABEL_26:

          v8 = v54;
          v7 = v56;
          v14 = v58;
          v15 = v24;
          v32 = v23;
          goto LABEL_27;
        }
      }
    }

    v32 = v16;
LABEL_27:
    v33 = v15;
    if (v15 || (v33 = v32) != 0)
    {
      v34 = [MEMORY[0x277CBEBC0] fileURLWithPath:v33];
      v35 = [v8 segmentationNetwork];

      if (v35)
      {
        v36 = [v8 segmentationNetwork];
        executor = v10->_executor;
        v10->_executor = v36;
      }

      else
      {
        v55 = v32;
        v57 = v15;
        executor = +[PTInference ANEConfigForAsynchronousWork];
        v38 = [PTEspressoGenericExecutor alloc];
        metalContext = v10->_metalContext;
        v65 = v10->_inRGBAName;
        v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v65 count:1];
        v64[0] = @"skin:0";
        v64[1] = @"person:0";
        v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:2];
        v42 = [(PTEspressoGenericExecutor *)v38 initWithMetalContext:metalContext url:v34 inputNames:v40 outputNames:v41 tensorSwapNames:0 reshapeNetworkSize:0 configuration:0 ANEConfig:executor];
        v43 = v10->_executor;
        v10->_executor = v42;

        if (!v10->_executor)
        {
          v52 = _PTLogSystem();
          v32 = v55;
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            [PTPersonSemanticsNetwork initWithMetalContext:sharedResources:];
          }

          v31 = 0;
          v15 = v57;
          goto LABEL_53;
        }

        [v8 setSegmentationNetwork:?];
        v15 = v57;
        v32 = v55;
      }

      kdebug_trace();
      v44 = v10->_executor;
      if (v44)
      {
        v45 = [(PTEspressoGenericExecutor *)v44 getInputResourceWithName:v10->_inRGBAName];
        inRGBA = v10->_inRGBA;
        v10->_inRGBA = v45;

        if (v10->_inRGBA)
        {
          v47 = [(PTEspressoGenericExecutor *)v10->_executor getOutputResourceWithName:@"skin:0"];
          outSkinMask = v10->_outSkinMask;
          v10->_outSkinMask = v47;

          if (v10->_outSkinMask)
          {
            v49 = [(PTEspressoGenericExecutor *)v10->_executor getOutputResourceWithName:@"person:0"];
            outPersonMask = v10->_outPersonMask;
            v10->_outPersonMask = v49;

            if (v10->_outPersonMask)
            {
              v31 = v10;
LABEL_53:

LABEL_54:
              goto LABEL_55;
            }

            v51 = _PTLogSystem();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
            {
              [PTPersonSemanticsNetwork initWithMetalContext:sharedResources:];
            }
          }

          else
          {
            v51 = _PTLogSystem();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
            {
              [PTPersonSemanticsNetwork initWithMetalContext:sharedResources:];
            }
          }
        }

        else
        {
          v51 = _PTLogSystem();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            [PTPersonSemanticsNetwork initWithMetalContext:sharedResources:];
          }
        }
      }

      else
      {
        v51 = _PTLogSystem();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          [PTPersonSemanticsNetwork initWithMetalContext:sharedResources:];
        }
      }
    }

    else
    {
      v34 = _PTLogSystem();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [PTPersonSemanticsNetwork initWithMetalContext:sharedResources:];
      }
    }

    v31 = 0;
    goto LABEL_53;
  }

  v31 = 0;
LABEL_55:

  return v31;
}

- (unsigned)executeNetwork:(id)a3
{
  v4 = a3;
  kdebug_trace();
  executor = self->_executor;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__PTPersonSemanticsNetwork_executeNetwork___block_invoke;
  v7[3] = &unk_278522E90;
  v7[4] = self;
  LODWORD(self) = [(PTEspressoGenericExecutor *)executor executeAsync:v7 metalContext:v4];

  return self;
}

void __43__PTPersonSemanticsNetwork_executeNetwork___block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 16) commandQueue];
  [v1 hash];
  kdebug_trace();
}

- (void)initWithMetalContext:sharedResources:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithMetalContext:sharedResources:.cold.2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithMetalContext:sharedResources:.cold.6()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithMetalContext:sharedResources:.cold.8()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end