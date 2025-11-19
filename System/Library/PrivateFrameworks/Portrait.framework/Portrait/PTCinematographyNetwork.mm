@interface PTCinematographyNetwork
+ (BOOL)existsVersionString:(id)a3;
+ (NSString)defaultVersionString;
+ (id)defaultVersionStringForDetectionModel:(unint64_t)a3;
+ (id)earliestVersionString;
+ (id)firstExistingVersion:(id)a3;
+ (id)latestVersionString;
- (BOOL)_allNetworkDetectionsAreStaleAtTime:(id *)a3;
- (BOOL)_isNetworkCompatibleDetectionType:(unint64_t)a3;
- (BOOL)_loadEspressoNetwork:(id)a3;
- (BOOL)_shouldIgnoreNetworkPredictionIndex:(unint64_t)a3 time:(id *)a4;
- (BOOL)_shouldResetDetectionFromType:(unint64_t)a3 toType:(unint64_t)a4;
- (PTCinematographyNetwork)init;
- (PTCinematographyNetwork)initWithVersionString:(id)a3;
- (float)expectedFPS;
- (id)_asCinematographyDictionary;
- (id)_detectionAtNetworkIndex:(unint64_t)a3 frameDetections:(id)a4;
- (id)_initWithCinematographyDictionary:(id)a3;
- (id)_initWithNetwork:(id)a3 parameters:(id)a4;
- (id)stepWithFrameDetections:(id)a3;
- (unint64_t)_allocateNetworkDetectionIndex;
- (unint64_t)_getLeastRecentNetworkDetectionIndex;
- (unint64_t)_networkPredictionIndex;
- (void)_debugLogAllNetworkInputs;
- (void)_debugLogNetworkInputs;
- (void)_debugLogNetworkOutputs;
- (void)_forgetNetworkDetectionAtIndex:(unint64_t)a3;
- (void)_forgetNetworkDetectionsOlderThan:(id *)a3;
- (void)_networkPredictionIndex;
- (void)_setDetection:(id)a3 asInputRow:(unint64_t)a4 time:(id *)a5 missing:(BOOL)a6;
- (void)_setMissingDetectionAtIndex:(unint64_t)a3 time:(id *)a4;
- (void)_setNetworkDetection:(id)a3 atIndex:(unint64_t)a4 time:(id *)a5;
- (void)_setNetworkDetectionsFromFrameDetections:(id)a3;
- (void)_setNetworkInputsFromNetworkDetections;
- (void)_updateLastNetworkPredictionIndex:(unint64_t)a3 time:(id *)a4;
- (void)dealloc;
@end

@implementation PTCinematographyNetwork

+ (NSString)defaultVersionString
{
  v2 = [a1 firstExistingVersion:&unk_2837F3838];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [&unk_2837F3850 objectAtIndexedSubscript:0];
  }

  v5 = v4;

  return v5;
}

+ (id)defaultVersionStringForDetectionModel:(unint64_t)a3
{
  if (a3 == 1)
  {
    v3 = &unk_2837F3868;
    v4 = 0;
    goto LABEL_5;
  }

  if (a3 == 2)
  {
    v3 = &unk_2837F3880;
    v4 = 1;
LABEL_5:
    v5 = [v3 objectAtIndexedSubscript:v4];
    goto LABEL_7;
  }

  v5 = [a1 defaultVersionString];
LABEL_7:

  return v5;
}

+ (id)firstExistingVersion:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([a1 existsVersionString:{v9, v13}])
        {
          v11 = v9;
          v10 = v4;
          goto LABEL_13;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = _PTLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    +[PTCinematographyNetwork firstExistingVersion:];
  }

  v11 = 0;
LABEL_13:

  return v11;
}

+ (BOOL)existsVersionString:(id)a3
{
  v4 = MEMORY[0x277CCA8D8];
  v5 = a3;
  v6 = [v4 bundleForClass:a1];
  v7 = PTVersionStringWithComponents(v5, 1);

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"cinematography_models/%@", v7];
  v9 = [v6 URLForResource:@"model.espresso" withExtension:@"net" subdirectory:v8];
  v10 = v9 != 0;

  return v10;
}

- (PTCinematographyNetwork)init
{
  v3 = [objc_opt_class() defaultVersionString];
  v4 = [(PTCinematographyNetwork *)self initWithVersionString:v3];

  return v4;
}

- (PTCinematographyNetwork)initWithVersionString:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = PTVersionStringWithComponents(v5, 1);
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"cinematography_models/%@", v7];
  v9 = [v6 URLForResource:@"model.espresso" withExtension:@"net" subdirectory:v8];
  if (v9)
  {
    v10 = [v6 URLForResource:@"model.parameters" withExtension:@"json" subdirectory:v8];
    if (!v10)
    {
      v11 = _PTLogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = v7;
        _os_log_impl(&dword_2243FB000, v11, OS_LOG_TYPE_DEFAULT, "no model parameters json file for version %@", buf, 0xCu);
      }
    }

    v12 = [[PTCinematographyNetworkParameters alloc] initWithURL:v10];
    if (v12)
    {
      v13 = [(PTCinematographyNetwork *)self _initWithNetwork:v9 parameters:v12];
      if (v13)
      {
        v14 = _PTLogSystem();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          [PTCinematographyNetwork initWithVersionString:];
        }

        objc_storeStrong(v13 + 153, a3);
      }

      self = v13;
      v15 = self;
    }

    else
    {
      v16 = _PTLogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [PTCinematographyNetwork initWithVersionString:];
      }

      v15 = 0;
    }
  }

  else
  {
    v10 = _PTLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [PTCinematographyNetwork initWithVersionString:];
    }

    v15 = 0;
  }

  return v15;
}

- (id)_initWithNetwork:(id)a3 parameters:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v39.receiver = self;
  v39.super_class = PTCinematographyNetwork;
  v8 = [(PTCinematographyNetwork *)&v39 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_params, a4);
    if ([(PTCinematographyNetwork *)v9 _loadEspressoNetwork:v6])
    {
      v32 = v7;
      v9->_step_i = -1;
      *&v9->_lastNetworkPredictionIndex = xmmword_2244A52E0;
      v10 = [PTCinematographyDetection alloc];
      v37 = *MEMORY[0x277CC0888];
      v38 = *(MEMORY[0x277CC0888] + 16);
      v11 = [(PTCinematographyDetection *)v10 initWithTime:&v37 rect:*MEMORY[0x277CBF3A0] focusDistance:*(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24), 0.0];
      zeroDisparityDetection = v9->_zeroDisparityDetection;
      v9->_zeroDisparityDetection = v11;

      [(PTCinematographyDetection *)v9->_zeroDisparityDetection setDetectionType:101];
      [(PTCinematographyDetection *)v9->_zeroDisparityDetection setTrackIdentifier:0x1000000000];
      v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:v9->_x_in.height];
      networkDetections = v9->_networkDetections;
      v9->_networkDetections = v13;

      v15 = [MEMORY[0x277CCAB58] indexSet];
      unusedIndexes = v9->_unusedIndexes;
      v9->_unusedIndexes = v15;

      v17 = [MEMORY[0x277CBEB18] array];
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v18 = [(PTCinematographyNetwork *)v9 params];
      v19 = [v18 inputSchemas];

      v20 = [v19 countByEnumeratingWithState:&v33 objects:v40 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v34;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v34 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v33 + 1) + 8 * i);
            v25 = [PTCinematographyNetworkSignal alloc];
            v26 = [v24 params];
            v27 = [(PTCinematographyNetworkSignal *)v25 initWithModelDictionary:v26];

            [v17 addObject:v27];
          }

          v21 = [v19 countByEnumeratingWithState:&v33 objects:v40 count:16];
        }

        while (v21);
      }

      v28 = [v17 copy];
      inputSignals = v9->_inputSignals;
      v9->_inputSignals = v28;

      bzero(v9->_x_in.data, 4 * v9->_x_in.width * v9->_x_in.height);
      bzero(v9->_mask_in.data, 4 * v9->_mask_in.height);
      bzero(v9->_hx_out.data, 4 * v9->_hx_out.width * v9->_hx_out.height);
      bzero(v9->_cx_out.data, 4 * v9->_cx_out.width * v9->_cx_out.height);
      v30 = v9;
      v7 = v32;
    }

    else
    {
      v17 = _PTLogSystem();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [PTCinematographyNetwork _initWithNetwork:parameters:];
      }

      v30 = 0;
    }
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (void)dealloc
{
  espresso_plan_destroy();
  espresso_context_destroy();
  v3.receiver = self;
  v3.super_class = PTCinematographyNetwork;
  [(PTCinematographyNetwork *)&v3 dealloc];
}

- (float)expectedFPS
{
  v2 = [(PTCinematographyNetwork *)self params];
  [v2 expectedFPS];
  v4 = v3;

  return v4;
}

- (id)stepWithFrameDetections:(id)a3
{
  v4 = a3;
  ++self->_step_i;
  [(PTCinematographyNetwork *)self _setNetworkDetectionsFromFrameDetections:v4];
  v5 = [(PTCinematographyNetwork *)self params];
  if ([v5 runOnlyWhenDetectorDidRun] && (objc_msgSend(v4, "detectorDidRun"), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = [v4 detectorDidRun];
    v9 = [v8 BOOLValue];

    if ((v9 & 1) == 0)
    {
      v10 = [(PTCinematographyNetwork *)self lastFocusDetection];

      v11 = _PTLogSystem();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
      if (v10)
      {
        if (v12)
        {
          [PTCinematographyNetwork stepWithFrameDetections:];
        }

        v13 = [(PTCinematographyNetwork *)self lastFocusDetection];
        v14 = [v4 detectionForTrackIdentifier:{objc_msgSend(v13, "trackIdentifier")}];
        v15 = v14;
        if (v14)
        {
          v16 = v14;
        }

        else
        {
          v16 = [(PTCinematographyNetwork *)self lastFocusDetection];
        }

        v25 = v16;
      }

      else
      {
        if (v12)
        {
          [PTCinematographyNetwork stepWithFrameDetections:];
        }

        v25 = [v4 autoFocusDetection];
        [(PTCinematographyNetwork *)self setLastFocusDetection:v25];
      }

      goto LABEL_27;
    }
  }

  else
  {
  }

  v31 = 0uLL;
  v32 = 0;
  if (v4)
  {
    [v4 presentationTime];
  }

  [(PTCinematographyNetwork *)self _setNetworkInputsFromNetworkDetections];
  v17 = _PTLogSystem();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);

  if (v18)
  {
    v19 = _PTLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [PTCinematographyNetwork stepWithFrameDetections:];
    }

    [(PTCinematographyNetwork *)self _debugLogNetworkInputs];
  }

  v20 = [(PTCinematographyNetwork *)self _networkPredictionIndex];
  v21 = _PTLogSystem();
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);

  if (v22)
  {
    v23 = _PTLogSystem();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [PTCinematographyNetwork stepWithFrameDetections:];
    }

    [(PTCinematographyNetwork *)self _debugLogNetworkOutputs];
  }

  v29 = v31;
  v30 = v32;
  if ([(PTCinematographyNetwork *)self _shouldIgnoreNetworkPredictionIndex:v20 time:&v29])
  {
    v24 = _PTLogSystem();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [(PTCinematographyNetwork *)self stepWithFrameDetections:v20];
    }

    v20 = 0;
  }

  v25 = [(PTCinematographyNetwork *)self _detectionAtNetworkIndex:v20 frameDetections:v4];
  if (!v25)
  {
    v25 = [v4 autoFocusDetection];
  }

  v29 = v31;
  v30 = v32;
  [(PTCinematographyNetwork *)self _updateLastNetworkPredictionIndex:v20 time:&v29];
LABEL_27:
  v26 = [(PTCinematographyNetwork *)self params];
  v27 = [v26 runOnlyWhenDetectorDidRun];

  if (v27)
  {
    [(PTCinematographyNetwork *)self setLastFocusDetection:v25];
  }

  return v25;
}

- (void)_updateLastNetworkPredictionIndex:(unint64_t)a3 time:(id *)a4
{
  v7 = [(PTCinematographyNetwork *)self lastNetworkPredictionIndex];
  v8 = [(PTCinematographyNetwork *)self networkDetections];
  v9 = [v8 objectAtIndexedSubscript:a3];
  v10 = [v9 trackIdentifier];

  v11 = [(PTCinematographyNetwork *)self lastNetworkPredictionTrackID];
  if (!v7)
  {
    goto LABEL_9;
  }

  v12 = v11;
  if (v11 == v10)
  {
    goto LABEL_9;
  }

  v13 = [(PTCinematographyNetwork *)self unusedIndexes];
  if ([v13 containsIndex:v7])
  {
LABEL_8:

    goto LABEL_9;
  }

  v14 = [(PTCinematographyNetwork *)self networkDetections];
  v15 = [v14 objectAtIndexedSubscript:v7];
  if ([v15 trackIdentifier] != v12)
  {

    goto LABEL_8;
  }

  v16 = [(PTCinematographyNetwork *)self networkDetections];
  v17 = [v16 objectAtIndexedSubscript:v7];
  v18 = v17;
  if (v17)
  {
    [v17 time];
  }

  else
  {
    memset(&time1, 0, sizeof(time1));
  }

  v21 = *a4;
  v19 = CMTimeCompare(&time1, &v21);

  if (v19 < 0)
  {
    v20 = _PTLogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [PTCinematographyNetwork _updateLastNetworkPredictionIndex:v7 time:?];
    }

    [(PTCinematographyNetwork *)self _forgetNetworkDetectionAtIndex:v7];
  }

LABEL_9:
  [(PTCinematographyNetwork *)self setLastNetworkPredictionIndex:a3];
  [(PTCinematographyNetwork *)self setLastNetworkPredictionTrackID:v10];
}

- (BOOL)_isNetworkCompatibleDetectionType:(unint64_t)a3
{
  v4 = [(PTCinematographyNetwork *)self params];
  v5 = [v4 supportedDetectionTypes];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v7 = [v5 containsObject:v6];

  return v7;
}

- (BOOL)_loadEspressoNetwork:(id)a3
{
  v4 = a3;
  context = espresso_create_context();
  self->_context = context;
  if (context)
  {
    plan = espresso_create_plan();
    self->_plan = plan;
    if (plan)
    {
      v7 = [v4 path];
      [v7 UTF8String];
      v8 = espresso_plan_add_network();

      if (v8)
      {
        v9 = _PTLogSystem();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          [PTCinematographyNetwork _loadEspressoNetwork:];
        }
      }

      else if (espresso_plan_build())
      {
        v9 = _PTLogSystem();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          [PTCinematographyNetwork _loadEspressoNetwork:];
        }
      }

      else
      {
        [@"x" UTF8String];
        if (espresso_network_bind_buffer())
        {
          v12 = _PTLogSystem();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            [PTCinematographyNetwork _loadEspressoNetwork:];
          }
        }

        [@"hx_in" UTF8String];
        if (espresso_network_bind_buffer())
        {
          v13 = _PTLogSystem();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            [PTCinematographyNetwork _loadEspressoNetwork:];
          }
        }

        [@"cx_in" UTF8String];
        if (espresso_network_bind_buffer())
        {
          v14 = _PTLogSystem();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            [PTCinematographyNetwork _loadEspressoNetwork:];
          }
        }

        [@"mask" UTF8String];
        if (espresso_network_bind_buffer())
        {
          v15 = _PTLogSystem();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            [PTCinematographyNetwork _loadEspressoNetwork:];
          }
        }

        [@"hx_out" UTF8String];
        if (espresso_network_bind_buffer())
        {
          v16 = _PTLogSystem();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            [PTCinematographyNetwork _loadEspressoNetwork:];
          }
        }

        [@"cx_out" UTF8String];
        if (espresso_network_bind_buffer())
        {
          v17 = _PTLogSystem();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            [PTCinematographyNetwork _loadEspressoNetwork:];
          }
        }

        [@"pred" UTF8String];
        if (espresso_network_bind_buffer())
        {
          v18 = _PTLogSystem();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            [PTCinematographyNetwork _loadEspressoNetwork:];
          }
        }

        if (self->_x_in.height)
        {
          v10 = 1;
          goto LABEL_14;
        }

        v9 = _PTLogSystem();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          [PTCinematographyNetwork _loadEspressoNetwork:];
        }
      }
    }

    else
    {
      v9 = _PTLogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [PTCinematographyNetwork _loadEspressoNetwork:];
      }
    }
  }

  else
  {
    v9 = _PTLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [PTCinematographyNetwork _loadEspressoNetwork:];
    }
  }

  v10 = 0;
LABEL_14:

  return v10;
}

- (BOOL)_shouldIgnoreNetworkPredictionIndex:(unint64_t)a3 time:(id *)a4
{
  if (!a3)
  {
    return 0;
  }

  v7 = [(PTCinematographyNetwork *)self lastNetworkPredictionTrackID];
  v8 = [(PTCinematographyNetwork *)self networkDetections];
  v9 = [v8 objectAtIndexedSubscript:a3];
  v10 = [v9 trackIdentifier];

  if (v7 == v10)
  {
    return 0;
  }

  v11 = [(PTCinematographyNetwork *)self networkDetections];
  v12 = [v11 objectAtIndexedSubscript:a3];
  v13 = v12;
  if (v12)
  {
    [v12 time];
  }

  else
  {
    memset(&time1, 0, sizeof(time1));
  }

  v16 = *a4;
  v15 = CMTimeCompare(&time1, &v16);

  if ((v15 & 0x80000000) == 0)
  {
    return 0;
  }

  if (![(PTCinematographyNetwork *)self lastNetworkPredictionIndex])
  {
    return 1;
  }

  time1 = *a4;
  return [(PTCinematographyNetwork *)self _allNetworkDetectionsAreStaleAtTime:&time1];
}

- (BOOL)_allNetworkDetectionsAreStaleAtTime:(id *)a3
{
  v5 = [(PTCinematographyNetwork *)self networkDetections];
  v6 = [v5 count];

  if (v6 < 2)
  {
    return 1;
  }

  v7 = 1;
  while (1)
  {
    v8 = [(PTCinematographyNetwork *)self unusedIndexes];
    v9 = [v8 containsIndex:v7];

    if ((v9 & 1) == 0)
    {
      v10 = [(PTCinematographyNetwork *)self networkDetections];
      v11 = [v10 objectAtIndexedSubscript:v7];
      v12 = v11;
      if (v11)
      {
        [v11 time];
      }

      else
      {
        memset(&time1, 0, sizeof(time1));
      }

      v17 = *a3;
      v13 = CMTimeCompare(&time1, &v17);

      if (!v13)
      {
        break;
      }
    }

    ++v7;
    v14 = [(PTCinematographyNetwork *)self networkDetections];
    v15 = [v14 count];

    if (v7 >= v15)
    {
      return 1;
    }
  }

  return 0;
}

- (void)_setNetworkDetectionsFromFrameDetections:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CBEB58];
  v6 = [v4 allTrackIdentifiersForCinematicChoice];
  v7 = [v5 setWithArray:v6];

  memset(&v41, 0, sizeof(v41));
  if (v4)
  {
    [v4 presentationTime];
  }

  v8 = [(PTCinematographyNetwork *)self networkDetections];
  v9 = [v8 count];

  if (v9)
  {
    v40 = v41;
    [(PTCinematographyNetwork *)self _setMissingDetectionAtIndex:0 time:&v40];
  }

  else
  {
    v10 = [(PTCinematographyNetwork *)self zeroDisparityDetection];
    v40 = v41;
    [(PTCinematographyNetwork *)self _setNetworkDetection:v10 atIndex:0 time:&v40];
  }

  [(PTCinematographyNetworkParameters *)self->_params forgetDetectionsAfterSeconds];
  if (v11 > 0.0)
  {
    v12 = v11;
    memset(&v40, 0, sizeof(v40));
    if (v4)
    {
      [v4 presentationTime];
    }

    else
    {
      memset(&lhs, 0, sizeof(lhs));
    }

    CMTimeMakeWithSeconds(&rhs, v12, 90000);
    CMTimeSubtract(&v40, &lhs, &rhs);
    lhs = v40;
    [(PTCinematographyNetwork *)self _forgetNetworkDetectionsOlderThan:&lhs];
  }

  v13 = [(PTCinematographyNetwork *)self networkDetections];
  v14 = [v13 count];

  if (v14 >= 2)
  {
    v15 = 1;
    do
    {
      v16 = [(PTCinematographyNetwork *)self unusedIndexes];
      v17 = [v16 containsIndex:v15];

      if ((v17 & 1) == 0)
      {
        v18 = [(PTCinematographyNetwork *)self networkDetections];
        v19 = [v18 objectAtIndexedSubscript:v15];
        v20 = [v19 trackIdentifier];

        v21 = [MEMORY[0x277CCABB0] numberWithInteger:v20];
        LODWORD(v19) = [v7 containsObject:v21];

        if (v19)
        {
          v22 = [v4 detectionForTrackIdentifier:v20];
          v40 = v41;
          [(PTCinematographyNetwork *)self _setNetworkDetection:v22 atIndex:v15 time:&v40];
          v23 = [MEMORY[0x277CCABB0] numberWithInteger:v20];
          [v7 removeObject:v23];
        }

        else
        {
          v40 = v41;
          [(PTCinematographyNetwork *)self _setMissingDetectionAtIndex:v15 time:&v40];
        }
      }

      ++v15;
      v24 = [(PTCinematographyNetwork *)self networkDetections];
      v25 = [v24 count];
    }

    while (v15 < v25);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v26 = v7;
  v27 = [v26 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v35;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v35 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = PTTrackIDFromNumber(*(*(&v34 + 1) + 8 * i));
        v32 = [v4 detectionForTrackIdentifier:{v31, v34}];
        if (-[PTCinematographyNetwork _isNetworkCompatibleDetectionType:](self, "_isNetworkCompatibleDetectionType:", [v32 detectionType]))
        {
          v33 = [(PTCinematographyNetwork *)self _allocateNetworkDetectionIndex];
          v40 = v41;
          [(PTCinematographyNetwork *)self _setNetworkDetection:v32 atIndex:v33 time:&v40];
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v28);
  }
}

- (void)_setNetworkInputsFromNetworkDetections
{
  v3 = [(PTCinematographyNetwork *)self networkDetections];
  v4 = [v3 count];

  if (v4)
  {
    v5 = 0;
    do
    {
      v6 = [(PTCinematographyNetwork *)self unusedIndexes];
      if ([v6 containsIndex:v5])
      {
        v7 = 0.0;
      }

      else
      {
        v7 = 1.0;
      }

      *(self->_mask_in.data + v5) = v7;

      ++v5;
      v8 = [(PTCinematographyNetwork *)self networkDetections];
      v9 = [v8 count];
    }

    while (v5 < v9);
  }

  memcpy(self->_hx_in.data, self->_hx_out.data, 4 * self->_hx_in.width * self->_hx_in.height);
  data = self->_cx_in.data;
  v11 = self->_cx_out.data;
  v12 = 4 * self->_cx_in.width * self->_cx_in.height;

  memcpy(data, v11, v12);
}

- (unint64_t)_networkPredictionIndex
{
  espresso_plan_execute_sync();
  height = self->_pred_out.height;
  if (height < 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    data = self->_pred_out.data;
    v6 = *data;
    for (i = 1; i != height; ++i)
    {
      if (v6 < data[i])
      {
        v4 = i;
        v6 = data[i];
      }
    }
  }

  v8 = _PTLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PTCinematographyNetwork _networkPredictionIndex];
  }

  return v4;
}

- (id)_detectionAtNetworkIndex:(unint64_t)a3 frameDetections:(id)a4
{
  v6 = a4;
  v7 = [(PTCinematographyNetwork *)self unusedIndexes];
  v8 = [v7 containsIndex:a3];

  if (v8)
  {
    v9 = _PTLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [PTCinematographyNetwork _detectionAtNetworkIndex:a3 frameDetections:?];
    }
  }

  else
  {
    if (!a3)
    {
      goto LABEL_10;
    }

    v10 = [(PTCinematographyNetwork *)self networkDetections];
    v11 = [v10 count];

    if (v11 > a3)
    {
      v12 = [(PTCinematographyNetwork *)self networkDetections];
      v13 = [v12 objectAtIndexedSubscript:a3];
      v14 = [v13 trackIdentifier];

      v15 = [v6 detectionForTrackIdentifier:v14];
      v16 = v15;
      if (v15)
      {
        a3 = v15;
      }

      else
      {
        v18 = [(PTCinematographyNetwork *)self networkDetections];
        v19 = [v18 objectAtIndexedSubscript:a3];
        a3 = [v19 copy];
      }

      goto LABEL_10;
    }
  }

  a3 = 0;
LABEL_10:

  return a3;
}

- (void)_setDetection:(id)a3 asInputRow:(unint64_t)a4 time:(id *)a5 missing:(BOOL)a6
{
  v6 = a6;
  v27 = *MEMORY[0x277D85DE8];
  v10 = a3;
  width = self->_x_in.width;
  v12 = self->_x_in.data + 4 * width * a4;
  v13 = [PTCinematographyNetworkPayload alloc];
  v25 = *a5;
  v14 = [(PTCinematographyNetworkPayload *)v13 initWithTime:&v25 detection:v10 missing:v6];
  v15 = [[PTCinematographyNetworkFloatOutputStream alloc] initWithDestination:v12 count:width];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v16 = [(PTCinematographyNetwork *)self inputSignals];
  v17 = [v16 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v22;
    do
    {
      v20 = 0;
      do
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [*(*(&v21 + 1) + 8 * v20++) writePayload:v14 toStream:v15];
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v18);
  }
}

- (id)_initWithCinematographyDictionary:(id)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"version"];
  v6 = [(PTCinematographyNetwork *)self initWithVersionString:v5];

  if (v6)
  {
    v7 = [v4 objectForKeyedSubscript:@"_step_i"];
    v6->_step_i = [v7 integerValue];

    v8 = [v4 objectForKeyedSubscript:@"_network_detections"];
    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v41 objects:&v45 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v42;
      do
      {
        v14 = 0;
        do
        {
          if (*v42 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v41 + 1) + 8 * v14);
          v16 = [PTCinematographyDetection alloc];
          v17 = [(PTCinematographyDetection *)v16 _initWithCinematographyDictionary:v15, v41];
          [(NSMutableArray *)v9 addObject:v17];

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v41 objects:&v45 count:16];
      }

      while (v12);
    }

    networkDetections = v6->_networkDetections;
    v6->_networkDetections = v9;

    v19 = [v4 objectForKeyedSubscript:@"_last_focus_detection"];
    if (v19)
    {
      v20 = [[PTCinematographyDetection alloc] _initWithCinematographyDictionary:v19];
      lastFocusDetection = v6->_lastFocusDetection;
      v6->_lastFocusDetection = v20;
    }

    v22 = [MEMORY[0x277CCAB58] indexSet];
    unusedIndexes = v6->_unusedIndexes;
    v6->_unusedIndexes = v22;

    if ([(NSMutableArray *)v6->_networkDetections count]>= 2)
    {
      v24 = 1;
      do
      {
        v25 = [(NSMutableArray *)v6->_networkDetections objectAtIndexedSubscript:v24];
        v26 = [v25 _isInvalid];

        if (v26)
        {
          [(NSMutableIndexSet *)v6->_unusedIndexes addIndex:v24];
        }

        ++v24;
      }

      while (v24 < [(NSMutableArray *)v6->_networkDetections count]);
    }

    v27 = [v4 objectForKeyedSubscript:@"_hx_out"];
    v28 = *&v6->_hx_out.stride_batch_number;
    v53 = *&v6->_hx_out.stride_height;
    v54 = v28;
    v55 = *&v6->_hx_out.storage_type;
    v29 = *&v6->_hx_out.width;
    v49 = *&v6->_hx_out.stride[2];
    v50 = v29;
    v30 = *&v6->_hx_out.sequence_length;
    v51 = *&v6->_hx_out.channels;
    v52 = v30;
    v31 = *v6->_hx_out.dim;
    v45 = *&v6->_hx_out.data;
    v46 = v31;
    v32 = *v6->_hx_out.stride;
    v47 = *&v6->_hx_out.dim[2];
    v48 = v32;
    SetEspressoArray(&v45, v27);

    v33 = [v4 objectForKeyedSubscript:@"_cx_out"];
    v34 = *&v6->_cx_out.stride_batch_number;
    v53 = *&v6->_cx_out.stride_height;
    v54 = v34;
    v55 = *&v6->_cx_out.storage_type;
    v35 = *&v6->_cx_out.width;
    v49 = *&v6->_cx_out.stride[2];
    v50 = v35;
    v36 = *&v6->_cx_out.sequence_length;
    v51 = *&v6->_cx_out.channels;
    v52 = v36;
    v37 = *v6->_cx_out.dim;
    v45 = *&v6->_cx_out.data;
    v46 = v37;
    v38 = *v6->_cx_out.stride;
    v47 = *&v6->_cx_out.dim[2];
    v48 = v38;
    SetEspressoArray(&v45, v33);

    v39 = v6;
  }

  return v6;
}

- (id)_asCinematographyDictionary
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  [v3 setObject:self->_versionString forKeyedSubscript:@"version"];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->_step_i];
  [v3 setObject:v4 forKeyedSubscript:@"_step_i"];

  v5 = [(PTCinematographyNetwork *)self networkDetections];
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v30 objects:&v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v30 + 1) + 8 * i) _asCinematographyDictionary];
        [v6 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v30 objects:&v34 count:16];
    }

    while (v9);
  }

  v13 = [v6 copy];
  [v3 setObject:v13 forKeyedSubscript:@"_network_detections"];

  v14 = [(PTCinematographyNetwork *)self lastFocusDetection];
  v15 = [v14 _asCinematographyDictionary];
  [v3 setObject:v15 forKeyedSubscript:@"_last_focus_detection"];

  v16 = *&self->_hx_out.stride_batch_number;
  v42 = *&self->_hx_out.stride_height;
  v43 = v16;
  v44 = *&self->_hx_out.storage_type;
  v17 = *&self->_hx_out.width;
  v38 = *&self->_hx_out.stride[2];
  v39 = v17;
  v18 = *&self->_hx_out.sequence_length;
  v40 = *&self->_hx_out.channels;
  v41 = v18;
  v19 = *self->_hx_out.dim;
  v34 = *&self->_hx_out.data;
  v35 = v19;
  v20 = *self->_hx_out.stride;
  v36 = *&self->_hx_out.dim[2];
  v37 = v20;
  v21 = CopyEspressoArray(&v34);
  [v3 setObject:v21 forKeyedSubscript:@"_hx_out"];

  v22 = *&self->_cx_out.stride_batch_number;
  v42 = *&self->_cx_out.stride_height;
  v43 = v22;
  v44 = *&self->_cx_out.storage_type;
  v23 = *&self->_cx_out.width;
  v38 = *&self->_cx_out.stride[2];
  v39 = v23;
  v24 = *&self->_cx_out.sequence_length;
  v40 = *&self->_cx_out.channels;
  v41 = v24;
  v25 = *self->_cx_out.dim;
  v34 = *&self->_cx_out.data;
  v35 = v25;
  v26 = *self->_cx_out.stride;
  v36 = *&self->_cx_out.dim[2];
  v37 = v26;
  v27 = CopyEspressoArray(&v34);
  [v3 setObject:v27 forKeyedSubscript:@"_cx_out"];

  v28 = [v3 copy];

  return v28;
}

- (unint64_t)_getLeastRecentNetworkDetectionIndex
{
  v3 = [(PTCinematographyNetwork *)self networkDetections];
  if ([v3 count] <= 1)
  {
    [PTCinematographyNetwork _getLeastRecentNetworkDetectionIndex];
  }

  memset(&v23, 0, sizeof(v23));
  v4 = [(PTCinematographyNetwork *)self networkDetections];
  v5 = [v4 objectAtIndexedSubscript:1];
  v6 = v5;
  if (v5)
  {
    [v5 time];
  }

  else
  {
    memset(&v23, 0, sizeof(v23));
  }

  v7 = [(PTCinematographyNetwork *)self networkDetections];
  v8 = [v7 count];

  if (v8 < 3)
  {
    return 1;
  }

  v9 = 1;
  v10 = 2;
  do
  {
    v11 = [(PTCinematographyNetwork *)self networkDetections];
    v12 = [v11 objectAtIndexedSubscript:v10];
    v13 = v12;
    if (v12)
    {
      [v12 time];
    }

    else
    {
      memset(&time1, 0, sizeof(time1));
    }

    v21 = v23;
    v14 = CMTimeCompare(&time1, &v21);

    if (v14 < 0)
    {
      v15 = [(PTCinematographyNetwork *)self networkDetections];
      v16 = [v15 objectAtIndexedSubscript:v10];
      v17 = v16;
      if (v16)
      {
        [v16 time];
      }

      else
      {
        memset(&time1, 0, sizeof(time1));
      }

      v23 = time1;

      v9 = v10;
    }

    ++v10;
    v18 = [(PTCinematographyNetwork *)self networkDetections];
    v19 = [v18 count];
  }

  while (v10 < v19);
  return v9;
}

- (void)_forgetNetworkDetectionAtIndex:(unint64_t)a3
{
  v5 = [(PTCinematographyNetwork *)self unusedIndexes];
  v6 = [v5 containsIndex:a3];

  if ((v6 & 1) == 0)
  {
    v7 = [(PTCinematographyNetwork *)self networkDetections];
    v8 = [v7 objectAtIndexedSubscript:a3];
    [v8 _setInvalid:1];

    v9 = [(PTCinematographyNetwork *)self unusedIndexes];
    [v9 addIndex:a3];
  }
}

- (void)_forgetNetworkDetectionsOlderThan:(id *)a3
{
  v5 = [(PTCinematographyNetwork *)self networkDetections];
  v6 = [v5 count];

  if (v6 >= 2)
  {
    v7 = 1;
    do
    {
      v8 = [(PTCinematographyNetwork *)self networkDetections];
      v9 = [v8 objectAtIndexedSubscript:v7];
      v10 = v9;
      if (v9)
      {
        [v9 time];
      }

      else
      {
        memset(&time1, 0, sizeof(time1));
      }

      v14 = *a3;
      v11 = CMTimeCompare(&time1, &v14);

      if (v11 < 0)
      {
        [(PTCinematographyNetwork *)self _forgetNetworkDetectionAtIndex:v7];
      }

      ++v7;
      v12 = [(PTCinematographyNetwork *)self networkDetections];
      v13 = [v12 count];
    }

    while (v7 < v13);
  }
}

- (unint64_t)_allocateNetworkDetectionIndex
{
  v3 = [(PTCinematographyNetwork *)self networkDetections];
  v4 = [v3 count];

  v5 = [(PTCinematographyNetwork *)self unusedIndexes];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(PTCinematographyNetwork *)self unusedIndexes];
    v4 = [v7 firstIndex];
  }

  if (v4 < self->_x_in.height)
  {
    return v4;
  }

  return [(PTCinematographyNetwork *)self _getLeastRecentNetworkDetectionIndex];
}

- (void)_setMissingDetectionAtIndex:(unint64_t)a3 time:(id *)a4
{
  if (self->_x_in.height <= a3)
  {
    [PTCinematographyNetwork _setMissingDetectionAtIndex:time:];
  }

  v7 = [(PTCinematographyNetwork *)self networkDetections];
  if ([v7 count] <= a3)
  {
    [PTCinematographyNetwork _setMissingDetectionAtIndex:time:];
  }

  if (a3)
  {
    v8 = _PTLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [PTCinematographyNetwork _setMissingDetectionAtIndex:time:];
    }
  }

  v9 = [(PTCinematographyNetwork *)self networkDetections];
  v10 = [v9 objectAtIndexedSubscript:a3];
  v11 = *&a4->var0;
  var3 = a4->var3;
  [(PTCinematographyNetwork *)self _setDetection:v10 asInputRow:a3 time:&v11 missing:1];
}

- (BOOL)_shouldResetDetectionFromType:(unint64_t)a3 toType:(unint64_t)a4
{
  if (a3 == 1 && a4 == 2)
  {
    return 1;
  }

  return a3 == 2 && a4 == 1;
}

- (void)_setNetworkDetection:(id)a3 atIndex:(unint64_t)a4 time:(id *)a5
{
  v8 = a3;
  if (self->_x_in.height <= a4)
  {
    [PTCinematographyNetwork _setNetworkDetection:atIndex:time:];
  }

  v9 = v8;
  v10 = [(PTCinematographyNetwork *)self networkDetections];
  if ([v10 count] < a4)
  {
    [PTCinematographyNetwork _setNetworkDetection:atIndex:time:];
  }

  v11 = _PTLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [PTCinematographyNetwork _setNetworkDetection:atIndex:time:];
  }

  v12 = [(PTCinematographyNetwork *)self networkDetections];
  if ([v12 count] == a4)
  {
    goto LABEL_12;
  }

  v13 = [(PTCinematographyNetwork *)self unusedIndexes];
  if ([v13 containsIndex:a4])
  {
LABEL_11:

LABEL_12:
    goto LABEL_13;
  }

  v14 = [(PTCinematographyNetwork *)self networkDetections];
  v15 = [v14 objectAtIndexedSubscript:a4];
  v16 = [v15 trackIdentifier];
  if (v16 != [v9 trackIdentifier])
  {

    goto LABEL_11;
  }

  v22 = [(PTCinematographyNetwork *)self networkDetections];
  v17 = [v22 objectAtIndexedSubscript:a4];
  v18 = -[PTCinematographyNetwork _shouldResetDetectionFromType:toType:](self, "_shouldResetDetectionFromType:toType:", [v17 detectionType], objc_msgSend(v9, "detectionType"));

  if (v18)
  {
LABEL_13:
    v19 = [(PTCinematographyNetwork *)self unusedIndexes];
    [v19 removeIndex:a4];

    v23 = *&a5->var0;
    var3 = a5->var3;
    [(PTCinematographyNetwork *)self _setDetection:v9 asInputRow:a4 time:&v23 missing:0];
    bzero(self->_hx_out.data + 4 * self->_hx_out.width * a4, 4 * self->_hx_out.width);
    bzero(self->_cx_out.data + 4 * self->_cx_out.width * a4, 4 * self->_cx_out.width);
    goto LABEL_14;
  }

  v23 = *&a5->var0;
  var3 = a5->var3;
  [(PTCinematographyNetwork *)self _setDetection:v9 asInputRow:a4 time:&v23 missing:0];
LABEL_14:
  v20 = [v9 copy];
  v21 = [(PTCinematographyNetwork *)self networkDetections];
  [v21 setObject:v20 atIndexedSubscript:a4];
}

- (void)_debugLogNetworkInputs
{
  v3 = [(PTCinematographyNetwork *)self networkDetections];
  v4 = [v3 count];

  if (v4)
  {
    v5 = 0;
    do
    {
      if (*(self->_mask_in.data + v5) == 1.0)
      {
        _DebugLogEspressoBufferRow(&self->_x_in.data, v5);
      }

      ++v5;
      v6 = [(PTCinematographyNetwork *)self networkDetections];
      v7 = [v6 count];
    }

    while (v5 < v7);
  }
}

- (void)_debugLogNetworkOutputs
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_debugLogAllNetworkInputs
{
  v3 = _PTLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [PTCinematographyNetwork _debugLogAllNetworkInputs];
  }

  [(PTCinematographyNetwork *)self _debugLogNetworkInputs];
  v4 = _PTLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [PTCinematographyNetwork _debugLogAllNetworkInputs];
  }

  if (self->_hx_in.height)
  {
    v5 = 0;
    do
    {
      _DebugLogEspressoBufferRow(&self->_hx_in.data, v5++);
    }

    while (v5 < self->_hx_in.height);
  }

  v6 = _PTLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [PTCinematographyNetwork _debugLogAllNetworkInputs];
  }

  if (self->_cx_in.height)
  {
    v7 = 0;
    do
    {
      _DebugLogEspressoBufferRow(&self->_cx_in.data, v7++);
    }

    while (v7 < self->_cx_in.height);
  }

  v8 = _PTLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PTCinematographyNetwork _debugLogAllNetworkInputs];
  }

  [(PTCinematographyNetwork *)self _debugLogNetworkOutputs];
}

+ (id)earliestVersionString
{
  v2 = [a1 firstExistingVersion:&unk_2837F3898];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [&unk_2837F38B0 firstObject];
  }

  v5 = v4;

  return v5;
}

+ (id)latestVersionString
{
  v3 = [&unk_2837F38C8 reverseObjectEnumerator];
  v4 = [v3 allObjects];
  v5 = [a1 firstExistingVersion:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [&unk_2837F38E0 lastObject];
  }

  v8 = v7;

  return v8;
}

+ (void)firstExistingVersion:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)initWithVersionString:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)initWithVersionString:.cold.2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)initWithVersionString:.cold.3()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_initWithNetwork:parameters:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)stepWithFrameDetections:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)stepWithFrameDetections:.cold.2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)stepWithFrameDetections:.cold.3()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)stepWithFrameDetections:.cold.4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)stepWithFrameDetections:(void *)a1 .cold.5(void *a1, uint64_t a2)
{
  v3 = [a1 networkDetections];
  v4 = [v3 objectAtIndexedSubscript:a2];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v5, v6, OS_LOG_TYPE_DEBUG, v7, v8, 0xCu);
}

- (void)_updateLastNetworkPredictionIndex:(void *)a1 time:(uint64_t)a2 .cold.1(void *a1, uint64_t a2)
{
  v3 = [a1 networkDetections];
  v4 = [v3 objectAtIndexedSubscript:a2];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v5, v6, OS_LOG_TYPE_DEBUG, v7, v8, 0xCu);
}

- (void)_loadEspressoNetwork:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x12u);
}

- (void)_loadEspressoNetwork:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x12u);
}

- (void)_loadEspressoNetwork:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)_loadEspressoNetwork:.cold.4()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)_loadEspressoNetwork:.cold.5()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)_loadEspressoNetwork:.cold.6()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)_loadEspressoNetwork:.cold.7()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)_loadEspressoNetwork:.cold.8()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)_loadEspressoNetwork:.cold.9()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)_networkPredictionIndex
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_detectionAtNetworkIndex:(uint64_t)a1 frameDetections:.cold.1(uint64_t a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a1];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0xCu);
}

- (void)_setMissingDetectionAtIndex:time:.cold.3()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_setNetworkDetection:atIndex:time:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x16u);
}

@end