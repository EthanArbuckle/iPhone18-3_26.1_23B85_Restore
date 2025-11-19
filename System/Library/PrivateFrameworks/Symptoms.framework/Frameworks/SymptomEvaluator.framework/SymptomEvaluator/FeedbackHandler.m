@interface FeedbackHandler
+ (id)configureClass:(id)a3;
+ (id)sharedInstance;
- (BOOL)noteSymptom:(id)a3;
- (int)read:(id)a3 returnedValues:(id)a4;
@end

@implementation FeedbackHandler

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__FeedbackHandler_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_pred_13 != -1)
  {
    dispatch_once(&sharedInstance_pred_13, block);
  }

  v2 = sharedInstance_sharedInstance_13;

  return v2;
}

void __33__FeedbackHandler_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_13;
  sharedInstance_sharedInstance_13 = v1;

  v3 = sharedInstance_sharedInstance_13;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [ConfigurationHandler setConfigurationObject:v3 forName:v5];
}

+ (id)configureClass:(id)a3
{
  v3 = a3;
  v4 = +[FeedbackHandler sharedInstance];
  [v4 configureInstance:v3];

  return v4;
}

- (BOOL)noteSymptom:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = [a3 eventData];
  v4 = *(v3 + 4);
  if ((v4 & 1) == 0)
  {
    v5 = evaluationLogHandle;
    if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_ERROR, "Feedback symptom with no qualifier", buf, 2u);
    }

    v4 = *(v3 + 4);
  }

  if ((v4 & 2) == 0)
  {
    v6 = evaluationLogHandle;
    if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "Feedback symptom with no qualifier1", buf, 2u);
    }
  }

  v7 = evaluationLogHandle;
  if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(v3 + 24);
    v9 = *(v3 + 32);
    *buf = 134218240;
    v33 = v8;
    v34 = 2048;
    v35 = v9;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "Feedback on notification %lld has value %lld", buf, 0x16u);
  }

  v10 = [ManagedEventTransport feedbackForEventId:*(v3 + 24)];
  v11 = v10;
  if (v10)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v12 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v12)
    {
      v14 = v12;
      v15 = *v28;
      *&v13 = 136315138;
      v26 = v13;
      do
      {
        v16 = 0;
        do
        {
          if (*v28 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v27 + 1) + 8 * v16);
          v18 = evaluationLogHandle;
          if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
          {
            v19 = v18;
            v20 = [v17 description];
            v21 = [v20 UTF8String];
            *buf = v26;
            v33 = v21;
            _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEBUG, "About to calibrate Evaluation %s", buf, 0xCu);
          }

          v22 = [v17 callback];

          if (v22)
          {
            v23 = [v17 callback];
            v23[2](v23, *(v3 + 32));
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v14);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return 0;
}

- (int)read:(id)a3 returnedValues:(id)a4
{
  v4 = a4;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 setObject:v6 forKey:@"GENERIC_CONFIG_TARGET"];

  return 0;
}

@end