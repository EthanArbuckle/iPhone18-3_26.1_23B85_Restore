@interface CRFormPostProcessingManager
+ (id)postProcessingManagerWithDefaultSequence;
+ (void)enumerateAllFieldsInFields:(id)a3 block:(id)a4;
+ (void)enumerateContourBasedDetectedFields:(id)a3 block:(id)a4;
+ (void)enumerateDetectedFields:(id)a3 block:(id)a4;
+ (void)enumerateExternalFields:(id)a3 block:(id)a4;
+ (void)enumerateFieldsInFields:(id)a3 filter:(id)a4 block:(id)a5;
+ (void)enumerateTextBasedDetectedFields:(id)a3 block:(id)a4;
+ (void)logFieldStatistics:(id)a3;
- (CRFormPostProcessingManager)initWithSequence:(id)a3;
- (CRFormPostProcessingManager)initWithStep:(id)a3;
- (id)process:(id)a3 document:(id)a4 options:(id)a5;
- (id)process:(id)a3 externalFields:(id)a4 document:(id)a5 options:(id)a6;
@end

@implementation CRFormPostProcessingManager

+ (id)postProcessingManagerWithDefaultSequence
{
  swift_getObjCClassMetadata();
  v2 = sub_1B4100A28();

  return v2;
}

- (CRFormPostProcessingManager)initWithStep:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v6 = [(CRFormPostProcessingManager *)self initWithSequence:v5];

  return v6;
}

- (CRFormPostProcessingManager)initWithSequence:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CRFormPostProcessingManager;
  v6 = [(CRFormPostProcessingManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sequence, a3);
  }

  return v7;
}

+ (void)logFieldStatistics:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = objc_opt_class();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__CRFormPostProcessingManager_logFieldStatistics___block_invoke_2;
  v9[3] = &unk_1E7BC2048;
  v6 = v4;
  v10 = v6;
  [v5 enumerateFieldsInFields:v3 filter:&__block_literal_global_1 block:v9];
  v7 = CROSLogForCategory(6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = [v6 description];
    *buf = 138412290;
    v12 = v8;
    _os_log_impl(&dword_1B40D2000, v7, OS_LOG_TYPE_DEBUG, "CRFormPostProcessorStep running with fields per source = %@", buf, 0xCu);
  }
}

void __50__CRFormPostProcessingManager_logFieldStatistics___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [CRFormUtilities debugDescriptionForField:v3];
  v5 = CROSLogForCategory(6);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138477827;
    v11 = v4;
    _os_log_impl(&dword_1B40D2000, v5, OS_LOG_TYPE_DEBUG, "%{private}@", &v10, 0xCu);
  }

  while (1)
  {
    v6 = [*(a1 + 32) count];
    if (v6 >= [v3 fieldSource] + 1)
    {
      break;
    }

    [*(a1 + 32) addObject:&unk_1F2BF80F8];
  }

  v7 = MEMORY[0x1E696AD98];
  v8 = [*(a1 + 32) objectAtIndexedSubscript:{objc_msgSend(v3, "fieldSource")}];
  v9 = [v7 numberWithInt:{objc_msgSend(v8, "intValue") + 1}];
  [*(a1 + 32) setObject:v9 atIndexedSubscript:{objc_msgSend(v3, "fieldSource")}];
}

- (id)process:(id)a3 document:(id)a4 options:(id)a5
{
  v5 = [(CRFormPostProcessingManager *)self process:a3 externalFields:MEMORY[0x1E695E0F0] document:a4 options:a5];

  return v5;
}

- (id)process:(id)a3 externalFields:(id)a4 document:(id)a5 options:(id)a6
{
  v30 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = CROSLogForCategory(6);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v29 = [v10 count];
    _os_log_impl(&dword_1B40D2000, v14, OS_LOG_TYPE_DEBUG, "CRFormPostProcessorStep running with %ld fields.", buf, 0xCu);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = self->_sequence;
  v16 = [(NSArray *)v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v16)
  {
    v17 = *v24;
    do
    {
      v18 = 0;
      v19 = v10;
      do
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v10 = [*(*(&v23 + 1) + 8 * v18) process:v19 externalFields:v11 document:v12 options:{v13, v23}];

        ++v18;
        v19 = v10;
      }

      while (v16 != v18);
      v16 = [(NSArray *)v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v16);
  }

  v20 = CROSLogForCategory(6);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v21 = [v10 count];
    *buf = 134217984;
    v29 = v21;
    _os_log_impl(&dword_1B40D2000, v20, OS_LOG_TYPE_DEBUG, "CRFormPostProcessorStep completed with %ld fields.", buf, 0xCu);
  }

  return v10;
}

+ (void)enumerateAllFieldsInFields:(id)a3 block:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__CRFormPostProcessingManager_enumerateAllFieldsInFields_block___block_invoke;
  v7[3] = &unk_1E7BC2070;
  v8 = v5;
  v6 = v5;
  [a3 enumerateObjectsUsingBlock:v7];
}

+ (void)enumerateFieldsInFields:(id)a3 filter:(id)a4 block:(id)a5
{
  v7 = a4;
  v8 = a5;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__CRFormPostProcessingManager_enumerateFieldsInFields_filter_block___block_invoke;
  v11[3] = &unk_1E7BC2098;
  v12 = v7;
  v13 = v8;
  v9 = v8;
  v10 = v7;
  [a3 enumerateObjectsUsingBlock:v11];
}

void __68__CRFormPostProcessingManager_enumerateFieldsInFields_filter_block___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 32) + 16))())
  {
    (*(*(a1 + 40) + 16))();
  }
}

+ (void)enumerateDetectedFields:(id)a3 block:(id)a4
{
  v6 = a3;
  v5 = a4;
  [objc_opt_class() enumerateFieldsInFields:v6 filter:&__block_literal_global_130 block:v5];
}

+ (void)enumerateContourBasedDetectedFields:(id)a3 block:(id)a4
{
  v6 = a3;
  v5 = a4;
  [objc_opt_class() enumerateFieldsInFields:v6 filter:&__block_literal_global_132 block:v5];
}

+ (void)enumerateTextBasedDetectedFields:(id)a3 block:(id)a4
{
  v6 = a3;
  v5 = a4;
  [objc_opt_class() enumerateFieldsInFields:v6 filter:&__block_literal_global_134 block:v5];
}

+ (void)enumerateExternalFields:(id)a3 block:(id)a4
{
  v6 = a3;
  v5 = a4;
  [objc_opt_class() enumerateFieldsInFields:v6 filter:&__block_literal_global_136 block:v5];
}

BOOL __61__CRFormPostProcessingManager_enumerateExternalFields_block___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 fieldSource] == 4 || objc_msgSend(v2, "fieldSource") == 5;

  return v3;
}

@end