@interface ATXModeMicrolocationFeaturizer
- (ATXModeFeaturizerDelegate)delegate;
- (ATXModeMicrolocationFeaturizer)initWithMiloProvider:(id)a3;
- (id)_provideFeaturesWithCurrentULMap:(id)a3;
- (id)provideFeatures;
- (void)beginListening;
- (void)connectionDidUpdatePredictionContext:(id)a3;
- (void)stopListening;
@end

@implementation ATXModeMicrolocationFeaturizer

- (ATXModeMicrolocationFeaturizer)initWithMiloProvider:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = ATXModeMicrolocationFeaturizer;
  v6 = [(ATXModeMicrolocationFeaturizer *)&v15 init];
  if (v6)
  {
    if (!v5)
    {
      [(ATXModeMicrolocationFeaturizer *)a2 initWithMiloProvider:v6];
    }

    v7 = [MEMORY[0x277D28780] createServiceIdentifierForToken:@"com.apple.proactive.ProactiveContextClient"];
    v8 = [objc_alloc(MEMORY[0x277D28780]) initWithDelegate:v6 serviceIdentifier:v7];
    connection = v6->_connection;
    v6->_connection = v8;

    v10 = [(ULConnection *)v6->_connection connect];
    [v5 setConnection:v6->_connection];
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.ULConnectionDelgetae.queue", v11);
    queue = v6->_queue;
    v6->_queue = v12;
  }

  return v6;
}

- (id)provideFeatures
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = __atxlog_handle_modes();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = v5;
    v7 = NSStringFromSelector(a2);
    v12 = 138412546;
    v13 = v5;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_260C9F000, v4, OS_LOG_TYPE_DEFAULT, "[%@][%@] Requesting feature set via pull based feature provider", &v12, 0x16u);
  }

  v8 = [(ULConnection *)self->_connection currentMap];
  v9 = [(ATXModeMicrolocationFeaturizer *)self _provideFeaturesWithCurrentULMap:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_provideFeaturesWithCurrentULMap:(id)a3
{
  v64 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v49 = objc_alloc_init(ATXModeFeatureSet);
  if ([v3 isMapValid])
  {
    v4 = [MEMORY[0x277CBEAA8] date];
    v5 = [v3 predictionContext];
    v6 = [v5 timestamp];
    [v4 timeIntervalSinceDate:v6];
    v8 = v7;

    if (v8 > 900.0)
    {
      v9 = __atxlog_handle_modes();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = objc_opt_class();
        v11 = v10;
        v12 = NSStringFromSelector(a2);
        *buf = 138412802;
        v56 = v10;
        v57 = 2112;
        v58 = v12;
        v59 = 2048;
        v60 = 900.0;
        _os_log_impl(&dword_260C9F000, v9, OS_LOG_TYPE_DEFAULT, "[%@][%@] Warning: Prediction scan was unexpectedly delayed by more than %f seconds", buf, 0x20u);
      }
    }

    v13 = __atxlog_handle_modes();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = v14;
      v16 = NSStringFromSelector(a2);
      *buf = 138412546;
      v56 = v14;
      v57 = 2112;
      v58 = v16;
      _os_log_impl(&dword_260C9F000, v13, OS_LOG_TYPE_DEFAULT, "[%@][%@] analyzing predicted Microlocation for this device", buf, 0x16u);
    }

    v17 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"C9FC4298-DE04-494A-9791-71AB71B52E27"];
    v18 = [v17 UUIDString];

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = [v3 mapItems];
    v19 = [obj countByEnumeratingWithState:&v51 objects:v63 count:16];
    if (v19)
    {
      v21 = v19;
      v22 = *v52;
      *&v20 = 138413059;
      v46 = v20;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v52 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v51 + 1) + 8 * i);
          [v24 name];
          v25 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          v26 = [v24 labels];
          v27 = [v26 count];

          v28 = [v3 numberOfLabelsInSameSpaceForMapItem:v24];
          if (v27)
          {
            v29 = v28 / v27;
            if ([*&v25 isEqual:v18])
            {
              if (v29 <= 0.4)
              {
LABEL_20:
                v36 = __atxlog_handle_modes();
                if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                {
                  v37 = objc_opt_class();
                  v38 = v37;
                  v39 = NSStringFromSelector(a2);
                  *buf = 138412803;
                  v56 = v37;
                  v57 = 2112;
                  v58 = v39;
                  v59 = 2049;
                  v60 = 1.0 - v29;
                  _os_log_impl(&dword_260C9F000, v36, OS_LOG_TYPE_DEFAULT, "[%@][%@] Device was predicted (at %{private}f) to not be at a work microlocation", buf, 0x20u);
                }

                v34 = v49;
                v35 = 0;
              }

              else
              {
                v30 = __atxlog_handle_modes();
                if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                {
                  v31 = objc_opt_class();
                  v32 = v31;
                  v33 = NSStringFromSelector(a2);
                  *buf = 138412803;
                  v56 = v31;
                  v57 = 2112;
                  v58 = v33;
                  v59 = 2049;
                  v60 = v29;
                  _os_log_impl(&dword_260C9F000, v30, OS_LOG_TYPE_DEFAULT, "[%@][%@] Device is predicted (at %{private}f) to be at a work microlocation", buf, 0x20u);
                }

                v34 = v49;
                v35 = 1;
              }

              [(ATXModeFeatureSet *)v34 setValue:v35 forBinaryFeatureOfType:25];
              goto LABEL_27;
            }
          }

          else
          {
            v29 = 0.0;
            if ([*&v25 isEqual:v18])
            {
              goto LABEL_20;
            }
          }

          v40 = __atxlog_handle_modes();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            v41 = objc_opt_class();
            v42 = v41;
            v43 = NSStringFromSelector(a2);
            *buf = v46;
            v56 = v41;
            v57 = 2112;
            v58 = v43;
            v59 = 2112;
            v60 = v25;
            v61 = 2049;
            v62 = v29;
            _os_log_impl(&dword_260C9F000, v40, OS_LOG_TYPE_DEFAULT, "[%@][%@] Probability that this device is not at work microlocation [labled:%@]: %{private}f", buf, 0x2Au);
          }

LABEL_27:
        }

        v21 = [obj countByEnumeratingWithState:&v51 objects:v63 count:16];
      }

      while (v21);
    }
  }

  else
  {
    v18 = __atxlog_handle_modes();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(ATXModeMicrolocationFeaturizer *)self _provideFeaturesWithCurrentULMap:a2, v18];
    }
  }

  v44 = *MEMORY[0x277D85DE8];

  return v49;
}

- (void)connectionDidUpdatePredictionContext:(id)a3
{
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__ATXModeMicrolocationFeaturizer_connectionDidUpdatePredictionContext___block_invoke;
  v7[3] = &__block_descriptor_40_e40_v16__0__ATXModeMicrolocationFeaturizer_8l;
  v7[4] = a2;
  v5 = v7;
  if (queue)
  {
    v6 = queue;
    objc_initWeak(&location, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __ATXDispatchAsyncWithStrongSelf_block_invoke;
    block[3] = &unk_279AB7C48;
    objc_copyWeak(&v10, &location);
    v9 = v5;
    dispatch_async(v6, block);

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __71__ATXModeMicrolocationFeaturizer_connectionDidUpdatePredictionContext___block_invoke(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3[1] currentMap];
  v5 = [v4 predictionContext];
  v6 = __atxlog_handle_modes();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = *(a1 + 32);
    v28 = v7;
    v9 = NSStringFromSelector(v8);
    v10 = [v5 uniqueIdentifier];
    v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "isPredictionValid")}];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "isMapValid")}];
    *buf = 138413314;
    v30 = v7;
    v31 = 2112;
    v32 = v9;
    v33 = 2112;
    v34 = v10;
    v35 = 2112;
    v36 = v11;
    v37 = 2112;
    v38 = v12;
    _os_log_impl(&dword_260C9F000, v6, OS_LOG_TYPE_DEFAULT, "[%@][%@] MiLo prediction received, uniqueIdentifier: %@, isPredictionValid: %@, isMapValid: %@", buf, 0x34u);
  }

  v13 = [v5 isPredictionValid];
  v14 = __atxlog_handle_modes();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v15)
    {
      v16 = objc_opt_class();
      v17 = *(a1 + 32);
      v18 = v16;
      v19 = NSStringFromSelector(v17);
      *buf = 138412546;
      v30 = v16;
      v31 = 2112;
      v32 = v19;
      _os_log_impl(&dword_260C9F000, v14, OS_LOG_TYPE_DEFAULT, "[%@][%@] Pushing work microlocation prediction to mode heurisic classifier", buf, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained(v3 + 3);
    v21 = [v3 _provideFeaturesWithCurrentULMap:v4];
  }

  else
  {
    if (v15)
    {
      v22 = objc_opt_class();
      v23 = *(a1 + 32);
      v24 = v22;
      v25 = NSStringFromSelector(v23);
      *buf = 138412546;
      v30 = v22;
      v31 = 2112;
      v32 = v25;
      _os_log_impl(&dword_260C9F000, v14, OS_LOG_TYPE_DEFAULT, "[%@][%@] Got invalid MiLo prediction, return empty feature set", buf, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained(v3 + 3);
    v21 = objc_alloc_init(ATXModeFeatureSet);
  }

  v26 = v21;
  [WeakRetained featurizer:v3 didUpdateFeatures:v21];

  v27 = *MEMORY[0x277D85DE8];
}

- (void)beginListening
{
  connection = self->_connection;
  v4 = [objc_alloc(MEMORY[0x277D28818]) initWithIsLowLatency:0];
  v3 = [(ULConnection *)connection startUpdatingWithConfiguration:v4];
}

- (void)stopListening
{
  v3 = [(ULConnection *)self->_connection disconnect];
  connection = self->_connection;
  self->_connection = 0;
}

- (ATXModeFeaturizerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithMiloProvider:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXModeMicrolocationFeaturizer.m" lineNumber:55 description:@"miloProvider must not be nil."];
}

- (void)_provideFeaturesWithCurrentULMap:(NSObject *)a3 .cold.1(uint64_t a1, const char *a2, NSObject *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = v5;
  v7 = NSStringFromSelector(a2);
  v9 = 138412546;
  v10 = v5;
  v11 = 2112;
  v12 = v7;
  _os_log_error_impl(&dword_260C9F000, a3, OS_LOG_TYPE_ERROR, "[%@][%@] Invalid microlocation map", &v9, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

@end