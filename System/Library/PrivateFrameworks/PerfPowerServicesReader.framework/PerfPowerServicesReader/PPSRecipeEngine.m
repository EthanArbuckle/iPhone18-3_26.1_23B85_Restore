@interface PPSRecipeEngine
+ (id)recipeHandlers;
+ (id)sharedInstance;
- (PPSRecipeEngine)init;
- (id)createEventRecipeForMetric:(id)a3;
- (id)createMetricRecipeForMetric:(id)a3;
- (id)createTimeSeriesRecipeForMetric:(id)a3;
- (id)executeEventRecipe:(id)a3 on:(id)a4 metrics:(id)a5 error:(id *)a6;
- (id)executeMetricRecipe:(id)a3 on:(id)a4 metric:(id)a5 error:(id *)a6;
- (id)executeTimeSeriesRecipe:(id)a3 on:(id)a4 metrics:(id)a5 error:(id *)a6;
- (void)registerHandlersForClass:(Class)a3;
- (void)setupHandlers;
@end

@implementation PPSRecipeEngine

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[PPSRecipeEngine sharedInstance];
  }

  v3 = sharedInstance_recipeEngine;

  return v3;
}

uint64_t __33__PPSRecipeEngine_sharedInstance__block_invoke()
{
  sharedInstance_recipeEngine = objc_alloc_init(PPSRecipeEngine);

  return MEMORY[0x2821F96F8]();
}

- (id)createEventRecipeForMetric:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [v4 subsystem];
    v8 = [v5 category];
    v9 = [v6 stringWithFormat:@"%@::%@", v7, v8];
  }

  else
  {
    v10 = PPSReaderLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [PPSRecipeEngine createEventRecipeForMetric:];
    }

    v9 = 0;
  }

  v11 = [(PPSRecipeEngine *)self eventRecipeHandlers];
  v12 = [v11 objectForKeyedSubscript:v9];
  if (v12)
  {
    v13 = v9;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  return v13;
}

- (id)createMetricRecipeForMetric:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [v4 subsystem];
    v8 = [v5 category];
    v9 = [v5 name];
    v10 = [v6 stringWithFormat:@"%@::%@::%@", v7, v8, v9];
  }

  else
  {
    v11 = PPSReaderLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [PPSRecipeEngine createEventRecipeForMetric:];
    }

    v10 = 0;
  }

  v12 = [(PPSRecipeEngine *)self metricRecipeHandlers];
  v13 = [v12 objectForKeyedSubscript:v10];
  if (v13)
  {
    v14 = v10;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  return v14;
}

- (id)createTimeSeriesRecipeForMetric:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [v4 subsystem];
    v8 = [v5 category];
    v9 = [v6 stringWithFormat:@"%@::%@", v7, v8];
  }

  else
  {
    v10 = PPSReaderLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [PPSRecipeEngine createEventRecipeForMetric:];
    }

    v9 = 0;
  }

  v11 = [(PPSRecipeEngine *)self timeSeriesRecipeHandlers];
  v12 = [v11 objectForKeyedSubscript:v9];
  if (v12)
  {
    v13 = v9;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  return v13;
}

- (id)executeEventRecipe:(id)a3 on:(id)a4 metrics:(id)a5 error:(id *)a6
{
  v24[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(PPSRecipeEngine *)self eventRecipeHandlers];
  v14 = [v13 objectForKeyedSubscript:v10];

  if (!v14)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Curated event recipe is not supported %@", v10];
    v17 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277CCA450];
    v24[0] = v15;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    *a6 = [v17 errorWithDomain:@"com.apple.PPSRecipeEngine" code:3 userInfo:v18];

    v19 = PPSReaderLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [PPSRecipeEngine executeEventRecipe:on:metrics:error:];
    }

    goto LABEL_9;
  }

  v15 = (v14)[2](v14, v11, v12, a6);
  if (*a6)
  {
    v16 = PPSReaderLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [PPSRecipeEngine executeEventRecipe:v10 on:a6 metrics:? error:?];
    }

LABEL_9:
    v20 = 0;
    goto LABEL_11;
  }

  v20 = [v11 copy];
  [v20 setMetrics:v15];
LABEL_11:

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)executeMetricRecipe:(id)a3 on:(id)a4 metric:(id)a5 error:(id *)a6
{
  v23[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(PPSRecipeEngine *)self metricRecipeHandlers];
  v14 = [v13 objectForKeyedSubscript:v10];

  if (v14)
  {
    v15 = (v14)[2](v14, v11, v12, a6);
    if (!*a6)
    {
      goto LABEL_9;
    }

    v16 = PPSReaderLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [PPSRecipeEngine executeMetricRecipe:v10 on:a6 metric:? error:?];
    }
  }

  else
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Curated metric recipe is not supported %@", v10];
    v17 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277CCA450];
    v23[0] = v16;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    *a6 = [v17 errorWithDomain:@"com.apple.PPSRecipeEngine" code:3 userInfo:v18];

    v19 = PPSReaderLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [PPSRecipeEngine executeMetricRecipe:on:metric:error:];
    }

    v15 = 0;
  }

LABEL_9:
  v20 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)executeTimeSeriesRecipe:(id)a3 on:(id)a4 metrics:(id)a5 error:(id *)a6
{
  v23[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(PPSRecipeEngine *)self timeSeriesRecipeHandlers];
  v14 = [v13 objectForKeyedSubscript:v10];

  if (v14)
  {
    v15 = (v14)[2](v14, v11, v12, a6);
    if (!*a6)
    {
      goto LABEL_9;
    }

    v16 = PPSReaderLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [PPSRecipeEngine executeMetricRecipe:v10 on:a6 metric:? error:?];
    }
  }

  else
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Curated time series recipe is not supported %@", v10];
    v17 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277CCA450];
    v23[0] = v16;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    *a6 = [v17 errorWithDomain:@"com.apple.PPSRecipeEngine" code:3 userInfo:v18];

    v19 = PPSReaderLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [PPSRecipeEngine executeMetricRecipe:on:metric:error:];
    }

    v15 = 0;
  }

LABEL_9:
  v20 = *MEMORY[0x277D85DE8];

  return v15;
}

- (PPSRecipeEngine)init
{
  v5.receiver = self;
  v5.super_class = PPSRecipeEngine;
  v2 = [(PPSRecipeEngine *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PPSRecipeEngine *)v2 setupHandlers];
  }

  return v3;
}

- (void)setupHandlers
{
  v3 = objc_opt_new();
  eventRecipeHandlers = self->_eventRecipeHandlers;
  self->_eventRecipeHandlers = v3;

  v5 = objc_opt_new();
  metricRecipeHandlers = self->_metricRecipeHandlers;
  self->_metricRecipeHandlers = v5;

  v7 = objc_opt_new();
  timeSeriesRecipeHandlers = self->_timeSeriesRecipeHandlers;
  self->_timeSeriesRecipeHandlers = v7;

  v9 = +[PPSRecipeEngine recipeHandlers];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __32__PPSRecipeEngine_setupHandlers__block_invoke;
  v10[3] = &unk_279A11620;
  v10[4] = self;
  [v9 enumerateObjectsUsingBlock:v10];
}

- (void)registerHandlersForClass:(Class)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v5 = [(objc_class *)a3 eventRecipes];
  v37 = [(objc_class *)a3 metricRecipes];
  v38 = [(objc_class *)a3 timeSeriesRecipes];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v48;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v48 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v47 + 1) + 8 * i);
        v12 = [(PPSRecipeEngine *)self eventRecipeHandlers];
        v13 = [v12 objectForKeyedSubscript:v11];

        if (v13)
        {
          v14 = PPSReaderLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v54 = v11;
            _os_log_error_impl(&dword_25E225000, v14, OS_LOG_TYPE_ERROR, "Attempting to register duplicate handler for %@, skipping", buf, 0xCu);
          }
        }

        else
        {
          v14 = [v6 objectForKeyedSubscript:v11];
          v15 = [(PPSRecipeEngine *)self eventRecipeHandlers];
          [v15 setObject:v14 forKeyedSubscript:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v8);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v16 = v37;
  v17 = [v16 countByEnumeratingWithState:&v43 objects:v52 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v44;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v44 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v43 + 1) + 8 * j);
        v22 = [(PPSRecipeEngine *)self metricRecipeHandlers];
        v23 = [v22 objectForKeyedSubscript:v21];

        if (v23)
        {
          v24 = PPSReaderLog();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v54 = v21;
            _os_log_error_impl(&dword_25E225000, v24, OS_LOG_TYPE_ERROR, "Attempting to register duplicate handler for %@, skipping", buf, 0xCu);
          }
        }

        else
        {
          v24 = [v16 objectForKeyedSubscript:v21];
          v25 = [(PPSRecipeEngine *)self metricRecipeHandlers];
          [v25 setObject:v24 forKeyedSubscript:v21];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v43 objects:v52 count:16];
    }

    while (v18);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v26 = v38;
  v27 = [v26 countByEnumeratingWithState:&v39 objects:v51 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v40;
    do
    {
      for (k = 0; k != v28; ++k)
      {
        if (*v40 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v39 + 1) + 8 * k);
        v32 = [(PPSRecipeEngine *)self timeSeriesRecipeHandlers];
        v33 = [v32 objectForKeyedSubscript:v31];

        if (v33)
        {
          v34 = PPSReaderLog();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v54 = v31;
            _os_log_error_impl(&dword_25E225000, v34, OS_LOG_TYPE_ERROR, "Attempting to register duplicate handler for %@, skipping", buf, 0xCu);
          }
        }

        else
        {
          v34 = [v26 objectForKeyedSubscript:v31];
          v35 = [(PPSRecipeEngine *)self timeSeriesRecipeHandlers];
          [v35 setObject:v34 forKeyedSubscript:v31];
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v39 objects:v51 count:16];
    }

    while (v28);
  }

  v36 = *MEMORY[0x277D85DE8];
}

+ (id)recipeHandlers
{
  if (recipeHandlers_onceToken != -1)
  {
    +[PPSRecipeEngine recipeHandlers];
  }

  v3 = recipeHandlers_recipeHandlers;

  return v3;
}

void __33__PPSRecipeEngine_recipeHandlers__block_invoke()
{
  v0 = objc_opt_new();
  [v0 addObject:NSClassFromString(&cfstr_Ppsbasebandrec.isa)];
  [v0 addObject:NSClassFromString(&cfstr_Ppsmodelurlrec.isa)];
  v1 = recipeHandlers_recipeHandlers;
  recipeHandlers_recipeHandlers = v0;
}

- (void)executeEventRecipe:(uint64_t)a1 on:(uint64_t *)a2 metrics:error:.cold.1(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_25E225000, v3, v4, "Error fetching response for event recipe: %@ error: %@");
  v5 = *MEMORY[0x277D85DE8];
}

- (void)executeEventRecipe:on:metrics:error:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)executeMetricRecipe:(uint64_t)a1 on:(uint64_t *)a2 metric:error:.cold.1(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_25E225000, v3, v4, "Error fetching response for metric recipe: %@ error: %@");
  v5 = *MEMORY[0x277D85DE8];
}

- (void)executeMetricRecipe:on:metric:error:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end