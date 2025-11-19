@interface PTCinematographyNetworkParameters
- (PTCinematographyNetworkParameters)initWithURL:(id)a3;
- (void)_processInputSchemaDicts:(id)a3;
@end

@implementation PTCinematographyNetworkParameters

- (PTCinematographyNetworkParameters)initWithURL:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEAE0] inputStreamWithURL:v4];
  [v5 open];
  v23 = 0;
  v6 = [MEMORY[0x277CCAAA0] JSONObjectWithStream:v5 options:0 error:&v23];
  v7 = v23;
  if (v7)
  {
    v8 = _PTLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [PTCinematographyNetworkParameters initWithURL:];
    }

LABEL_10:

    v18 = 0;
    goto LABEL_11;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v8 = _PTLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(PTCinematographyNetworkParameters *)v6 initWithURL:v4, v8];
    }

    goto LABEL_10;
  }

  v22.receiver = self;
  v22.super_class = PTCinematographyNetworkParameters;
  v9 = [(PTCinematographyNetworkParameters *)&v22 init];
  if (v9)
  {
    v10 = [(objc_class *)v6 objectForKeyedSubscript:@"expected_fps"];
    [v10 floatValue];
    v9->_expectedFPS = v11;

    v12 = [(objc_class *)v6 objectForKeyedSubscript:@"detections"];
    v13 = [v12 objectForKeyedSubscript:@"forget_after_seconds"];
    [v13 floatValue];
    v9->_forgetDetectionsAfterSeconds = v14;

    v15 = [(objc_class *)v6 objectForKeyedSubscript:@"sync_with_detector"];
    v9->_runOnlyWhenDetectorDidRun = [v15 BOOLValue];

    v16 = [(objc_class *)v6 objectForKeyedSubscript:@"supported_detection_types"];
    if (v16)
    {
      [MEMORY[0x277CBEB98] setWithArray:v16];
    }

    else
    {
      [(PTCinematographyNetworkParameters *)v9 _defaultSupportedDetectionTypes];
    }
    v17 = ;
    supportedDetectionTypes = v9->_supportedDetectionTypes;
    v9->_supportedDetectionTypes = v17;

    v21 = [(objc_class *)v6 objectForKeyedSubscript:@"input_schemas"];
    [(PTCinematographyNetworkParameters *)v9 _processInputSchemaDicts:v21];
  }

  self = v9;
  v18 = self;
LABEL_11:

  return v18;
}

- (void)_processInputSchemaDicts:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  self->_totalInputFloatCount = 0;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        v12 = [PTCinematographyNetworkInputSchema alloc];
        v13 = [(PTCinematographyNetworkInputSchema *)v12 initWithModelDictionary:v11, v16];
        [v5 addObject:v13];
        self->_totalInputFloatCount += [(PTCinematographyNetworkInputSchema *)v13 count];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];
  inputSchemas = self->_inputSchemas;
  self->_inputSchemas = v14;
}

- (void)initWithURL:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_13();
  v3 = v0;
  _os_log_error_impl(&dword_2243FB000, v1, OS_LOG_TYPE_ERROR, "error %@ reading network parameters %@", v2, 0x16u);
}

- (void)initWithURL:(NSObject *)a3 .cold.2(objc_class *a1, uint64_t a2, NSObject *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromClass(a1);
  OUTLINED_FUNCTION_0_13();
  v7 = a2;
  _os_log_error_impl(&dword_2243FB000, a3, OS_LOG_TYPE_ERROR, "expected a dictionary, got a %@ from network parameters %@", v6, 0x16u);
}

@end