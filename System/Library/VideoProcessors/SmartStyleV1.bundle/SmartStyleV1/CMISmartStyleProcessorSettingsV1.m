@interface CMISmartStyleProcessorSettingsV1
+ (id)sharedInstance;
+ (id)tuningParametersForVariant:(unint64_t)a3;
- (id)tuningParametersForVariant:(uint64_t)a1;
- (uint64_t)loadTuningParameters;
- (void)initLoadingSmartStyleProcessorSettings;
@end

@implementation CMISmartStyleProcessorSettingsV1

+ (id)sharedInstance
{
  objc_opt_self();
  if (sharedInstance_onceToken != -1)
  {
    +[CMISmartStyleProcessorSettingsV1 sharedInstance];
  }

  v0 = sharedInstance_instance;

  return v0;
}

void __50__CMISmartStyleProcessorSettingsV1_sharedInstance__block_invoke(id a1)
{
  sharedInstance_instance = [[CMISmartStyleProcessorSettingsV1 alloc] initLoadingSmartStyleProcessorSettings];

  _objc_release_x1();
}

+ (id)tuningParametersForVariant:(unint64_t)a3
{
  v4 = +[CMISmartStyleProcessorSettingsV1 sharedInstance];
  v5 = [(CMISmartStyleProcessorSettingsV1 *)v4 tuningParametersForVariant:a3];

  return v5;
}

- (void)initLoadingSmartStyleProcessorSettings
{
  if (!a1)
  {
    return 0;
  }

  v4.receiver = a1;
  v4.super_class = CMISmartStyleProcessorSettingsV1;
  v1 = objc_msgSendSuper2(&v4, "init");
  v2 = v1;
  if (!v1)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1();
    FigDebugAssert3();
    return v2;
  }

  if (([(CMISmartStyleProcessorSettingsV1 *)v1 loadTuningParameters]& 1) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1();
    FigDebugAssert3();

    return 0;
  }

  return v2;
}

- (id)tuningParametersForVariant:(uint64_t)a1
{
  if (a1)
  {
    v2 = *(a1 + 8);
    v3 = [NSNumber numberWithUnsignedInteger:a2];
    v4 = [v2 objectForKeyedSubscript:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)loadTuningParameters
{
  if (!a1)
  {
    LOBYTE(v5) = 0;
    return v5 & 1;
  }

  v28[0] = 0;
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = v2;
  if (!v2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1();
    FigDebugAssert3();
LABEL_28:
    LOBYTE(v5) = 0;
    goto LABEL_21;
  }

  v4 = [v2 pathForResource:@"SmartStyleProcessorV1-Tuning" ofType:@"plist"];
  v5 = [NSDictionary dictionaryWithContentsOfFile:v4];

  if (v5)
  {
    v6 = [v5 objectForKeyedSubscript:@"SmartStyleProcessorV1"];
    if (v6)
    {
      v7 = v6;
      v22 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
      if (v22)
      {
        v20 = v5;
        v21 = v3;
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v24 objects:v23 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v25;
LABEL_8:
          v12 = 0;
          while (1)
          {
            if (*v25 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v24 + 1) + 8 * v12);
            v14 = [v8 objectForKeyedSubscript:v13];
            v15 = [&off_209F8 objectForKeyedSubscript:v13];
            if (!v15)
            {
              break;
            }

            v16 = objc_alloc_init(CMISmartStyleProcessorTuningV1);
            if (!v16)
            {
              break;
            }

            v17 = v16;
            [v14 cmi_floatValueForKey:@"PersonMaskDilatedMaskVal" defaultValue:v28 found:0.0];
            [(CMISmartStyleProcessorTuningV1 *)v17 setPersonMaskDilatedMaskVal:?];
            if ((v28[0] & 1) == 0)
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_1();
              FigDebugAssert3();

              goto LABEL_19;
            }

            [v22 setObject:v17 forKeyedSubscript:v15];

            if (v10 == ++v12)
            {
              v10 = [v8 countByEnumeratingWithState:&v24 objects:v23 count:16];
              if (v10)
              {
                goto LABEL_8;
              }

              goto LABEL_16;
            }
          }

          fig_log_get_emitter();
          OUTLINED_FUNCTION_1();
          FigDebugAssert3();
LABEL_19:

          LOBYTE(v5) = v28[0];
          goto LABEL_20;
        }

LABEL_16:

        v5 = *(a1 + 8);
        *(a1 + 8) = v22;
        v18 = v22;

        LOBYTE(v5) = 1;
        v28[0] = 1;

LABEL_20:
        v3 = v21;
        goto LABEL_21;
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_1();
      FigDebugAssert3();
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1();
      FigDebugAssert3();
    }

    goto LABEL_28;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  FigDebugAssert3();
LABEL_21:

  return v5 & 1;
}

@end