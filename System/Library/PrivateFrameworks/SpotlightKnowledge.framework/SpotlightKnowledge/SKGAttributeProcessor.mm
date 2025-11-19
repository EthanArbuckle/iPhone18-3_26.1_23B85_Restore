@interface SKGAttributeProcessor
+ (id)sharedImporterProcessor;
+ (id)sharedProcessor;
- (SKGAttributeProcessor)init;
- (id)addUpdaterAttributesForMDPlistRecord:(id *)a3 bundleID:(id)a4;
- (id)eventsJournalsStats;
- (id)initForImporter;
- (void)getGenerationConfigurationForProcessorFlags:(unint64_t)a3 configurationHandler:(id)a4 completionHandler:(id)a5;
- (void)getGenerationProgressReportForProtectionClasses:(id)a3 processorFlags:(unint64_t)a4 reportHandler:(id)a5 completionHandler:(id)a6;
@end

@implementation SKGAttributeProcessor

+ (id)sharedProcessor
{
  if (sharedProcessor_onceToken != -1)
  {
    +[SKGAttributeProcessor sharedProcessor];
  }

  v3 = sharedProcessor_sSharedProcessor;

  return v3;
}

- (SKGAttributeProcessor)init
{
  v6.receiver = self;
  v6.super_class = SKGAttributeProcessor;
  v2 = [(SKGAttributeProcessor *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(SKGProcessorConnection);
    connection = v2->_connection;
    v2->_connection = v3;
  }

  return v2;
}

uint64_t __40__SKGAttributeProcessor_sharedProcessor__block_invoke()
{
  sharedProcessor_sSharedProcessor = objc_alloc_init(SKGAttributeProcessor);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sharedImporterProcessor
{
  if (sharedImporterProcessor_onceToken != -1)
  {
    +[SKGAttributeProcessor sharedImporterProcessor];
  }

  v3 = sharedImporterProcessor_sSharedProcessor;

  return v3;
}

uint64_t __48__SKGAttributeProcessor_sharedImporterProcessor__block_invoke()
{
  sharedImporterProcessor_sSharedProcessor = [[SKGAttributeProcessor alloc] initForImporter];

  return MEMORY[0x1EEE66BB8]();
}

- (id)initForImporter
{
  v6.receiver = self;
  v6.super_class = SKGAttributeProcessor;
  v2 = [(SKGAttributeProcessor *)&v6 init];
  if (v2)
  {
    v3 = [[SKGProcessorConnection alloc] initForImporter];
    connection = v2->_connection;
    v2->_connection = v3;
  }

  return v2;
}

- (id)addUpdaterAttributesForMDPlistRecord:(id *)a3 bundleID:(id)a4
{
  v9 = *a3;
  v5 = a4;
  v6 = _MDPlistContainerCopyObject();
  v7 = [(SKGAttributeProcessor *)self processorAttributesForRecord:v6 bundleID:v5 protectionClass:0 isUpdate:0, *&v9.var0, *&v9.var2];

  return v7;
}

- (void)getGenerationProgressReportForProtectionClasses:(id)a3 processorFlags:(unint64_t)a4 reportHandler:(id)a5 completionHandler:(id)a6
{
  v8 = a4;
  v14 = a3;
  v10 = a5;
  v11 = a6;
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = v12;
  if ((v8 & 4) != 0)
  {
    [v12 addObject:@"embedding"];
    if ((v8 & 8) == 0)
    {
LABEL_3:
      if ((v8 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v8 & 8) == 0)
  {
    goto LABEL_3;
  }

  [v13 addObject:@"keyphrase"];
  if ((v8 & 0x20) == 0)
  {
LABEL_4:
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  [v13 addObject:@"suggestedEvents"];
  if ((v8 & 0x40) != 0)
  {
LABEL_5:
    [v13 addObject:@"documentUnderstanding"];
  }

LABEL_6:
  [(SKGProcessorConnection *)self->_connection getGenerationProgressReportForTypes:v13 protectionClasses:v14 reportHandler:v10 completionHandler:v11];
}

- (void)getGenerationConfigurationForProcessorFlags:(unint64_t)a3 configurationHandler:(id)a4 completionHandler:(id)a5
{
  v6 = a3;
  v11 = a4;
  v8 = a5;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = v9;
  if ((v6 & 4) != 0)
  {
    [v9 addObject:@"embedding"];
  }

  [(SKGProcessorConnection *)self->_connection getGenerationConfigurationForTypes:v10 configurationHandler:v11 completionHandler:v8];
}

- (id)eventsJournalsStats
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  connection = self->_connection;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__SKGAttributeProcessor_eventsJournalsStats__block_invoke;
  v9[3] = &unk_1E74B7EB0;
  v11 = &v12;
  v5 = v3;
  v10 = v5;
  [(SKGProcessorConnection *)connection eventsJournalsStatsWithCompletion:v9];
  v6 = dispatch_time(0, 300000000000);
  dispatch_group_wait(v5, v6);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __44__SKGAttributeProcessor_eventsJournalsStats__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"journalsStats"];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  dispatch_group_leave(v6);
}

- (void)processorAttributesForRecord:(char)a1 bundleID:(NSObject *)a2 protectionClass:isUpdate:.cold.4(char a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1 & 1;
  _os_log_debug_impl(&dword_1977A7000, a2, OS_LOG_TYPE_DEBUG, "SKGProcessor+EmbeddingsUtils#processorAttributesForRecord includeEmbeddings=%{BOOL}d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)processorAttributesForRecord:(void *)a1 bundleID:(NSObject *)a2 protectionClass:isUpdate:.cold.5(void *a1, NSObject *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [a1 objectForKeyedSubscript:@"_kMDItemEmbeddingsSN"];
  v5 = [a1 objectForKeyedSubscript:@"kMDItemEmbeddingVersion"];
  v7[0] = 67109376;
  v7[1] = v4 == 0;
  v8 = 1024;
  v9 = v5 == 0;
  _os_log_debug_impl(&dword_1977A7000, a2, OS_LOG_TYPE_DEBUG, "SKGProcessor+EmbeddingsUtils#processorAttributesForRecord skipping adding NeedsEmbeddings as notHasItemEmbeddingsSN=%{BOOL}d notHasItemEmbeddingVersion=%{BOOL}d", v7, 0xEu);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)processorAttributesForRecord:bundleID:protectionClass:isUpdate:.cold.6()
{
  v9 = *MEMORY[0x1E69E9840];
  v4[0] = 138413058;
  OUTLINED_FUNCTION_1();
  v5 = v0;
  v6 = 1;
  v7 = v0;
  v8 = v1;
  _os_log_debug_impl(&dword_1977A7000, v2, OS_LOG_TYPE_DEBUG, "SKGAttributeProcessor#processorAttributesForRecord bundleID=%@ canHaveEmbeddings=%{BOOL}d needsEmbeddings=%{BOOL}d resulting extractEmbeddings=%{BOOL}d", v4, 0x1Eu);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)processorAttributesForRecord:bundleID:protectionClass:isUpdate:.cold.7()
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 138412546;
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_1977A7000, v0, OS_LOG_TYPE_DEBUG, "SKGAttributeProcessor#processorAttributesForRecord bundleID=%@ needsPriotity=%{BOOL}d", v2, 0x12u);
  v1 = *MEMORY[0x1E69E9840];
}

@end