@interface CRFormPostProcessingManager
+ (id)postProcessingManagerWithDefaultSequence;
+ (void)enumerateAllFieldsInFields:(id)fields block:(id)block;
+ (void)enumerateContourBasedDetectedFields:(id)fields block:(id)block;
+ (void)enumerateDetectedFields:(id)fields block:(id)block;
+ (void)enumerateExternalFields:(id)fields block:(id)block;
+ (void)enumerateFieldsInFields:(id)fields filter:(id)filter block:(id)block;
+ (void)enumerateTextBasedDetectedFields:(id)fields block:(id)block;
+ (void)logFieldStatistics:(id)statistics;
- (CRFormPostProcessingManager)initWithSequence:(id)sequence;
- (CRFormPostProcessingManager)initWithStep:(id)step;
- (id)process:(id)process document:(id)document options:(id)options;
- (id)process:(id)process externalFields:(id)fields document:(id)document options:(id)options;
@end

@implementation CRFormPostProcessingManager

+ (id)postProcessingManagerWithDefaultSequence
{
  swift_getObjCClassMetadata();
  v2 = sub_1B4100A28();

  return v2;
}

- (CRFormPostProcessingManager)initWithStep:(id)step
{
  v8[1] = *MEMORY[0x1E69E9840];
  stepCopy = step;
  v8[0] = stepCopy;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v6 = [(CRFormPostProcessingManager *)self initWithSequence:v5];

  return v6;
}

- (CRFormPostProcessingManager)initWithSequence:(id)sequence
{
  sequenceCopy = sequence;
  v9.receiver = self;
  v9.super_class = CRFormPostProcessingManager;
  v6 = [(CRFormPostProcessingManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sequence, sequence);
  }

  return v7;
}

+ (void)logFieldStatistics:(id)statistics
{
  v13 = *MEMORY[0x1E69E9840];
  statisticsCopy = statistics;
  array = [MEMORY[0x1E695DF70] array];
  v5 = objc_opt_class();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__CRFormPostProcessingManager_logFieldStatistics___block_invoke_2;
  v9[3] = &unk_1E7BC2048;
  v6 = array;
  v10 = v6;
  [v5 enumerateFieldsInFields:statisticsCopy filter:&__block_literal_global_1 block:v9];
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

- (id)process:(id)process document:(id)document options:(id)options
{
  v5 = [(CRFormPostProcessingManager *)self process:process externalFields:MEMORY[0x1E695E0F0] document:document options:options];

  return v5;
}

- (id)process:(id)process externalFields:(id)fields document:(id)document options:(id)options
{
  v30 = *MEMORY[0x1E69E9840];
  processCopy = process;
  fieldsCopy = fields;
  documentCopy = document;
  optionsCopy = options;
  v14 = CROSLogForCategory(6);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v29 = [processCopy count];
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
      v19 = processCopy;
      do
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v15);
        }

        processCopy = [*(*(&v23 + 1) + 8 * v18) process:v19 externalFields:fieldsCopy document:documentCopy options:{optionsCopy, v23}];

        ++v18;
        v19 = processCopy;
      }

      while (v16 != v18);
      v16 = [(NSArray *)v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v16);
  }

  v20 = CROSLogForCategory(6);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v21 = [processCopy count];
    *buf = 134217984;
    v29 = v21;
    _os_log_impl(&dword_1B40D2000, v20, OS_LOG_TYPE_DEBUG, "CRFormPostProcessorStep completed with %ld fields.", buf, 0xCu);
  }

  return processCopy;
}

+ (void)enumerateAllFieldsInFields:(id)fields block:(id)block
{
  blockCopy = block;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__CRFormPostProcessingManager_enumerateAllFieldsInFields_block___block_invoke;
  v7[3] = &unk_1E7BC2070;
  v8 = blockCopy;
  v6 = blockCopy;
  [fields enumerateObjectsUsingBlock:v7];
}

+ (void)enumerateFieldsInFields:(id)fields filter:(id)filter block:(id)block
{
  filterCopy = filter;
  blockCopy = block;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__CRFormPostProcessingManager_enumerateFieldsInFields_filter_block___block_invoke;
  v11[3] = &unk_1E7BC2098;
  v12 = filterCopy;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = filterCopy;
  [fields enumerateObjectsUsingBlock:v11];
}

void __68__CRFormPostProcessingManager_enumerateFieldsInFields_filter_block___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 32) + 16))())
  {
    (*(*(a1 + 40) + 16))();
  }
}

+ (void)enumerateDetectedFields:(id)fields block:(id)block
{
  fieldsCopy = fields;
  blockCopy = block;
  [objc_opt_class() enumerateFieldsInFields:fieldsCopy filter:&__block_literal_global_130 block:blockCopy];
}

+ (void)enumerateContourBasedDetectedFields:(id)fields block:(id)block
{
  fieldsCopy = fields;
  blockCopy = block;
  [objc_opt_class() enumerateFieldsInFields:fieldsCopy filter:&__block_literal_global_132 block:blockCopy];
}

+ (void)enumerateTextBasedDetectedFields:(id)fields block:(id)block
{
  fieldsCopy = fields;
  blockCopy = block;
  [objc_opt_class() enumerateFieldsInFields:fieldsCopy filter:&__block_literal_global_134 block:blockCopy];
}

+ (void)enumerateExternalFields:(id)fields block:(id)block
{
  fieldsCopy = fields;
  blockCopy = block;
  [objc_opt_class() enumerateFieldsInFields:fieldsCopy filter:&__block_literal_global_136 block:blockCopy];
}

BOOL __61__CRFormPostProcessingManager_enumerateExternalFields_block___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 fieldSource] == 4 || objc_msgSend(v2, "fieldSource") == 5;

  return v3;
}

@end