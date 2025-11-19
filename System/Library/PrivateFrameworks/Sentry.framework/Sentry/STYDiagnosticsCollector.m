@interface STYDiagnosticsCollector
+ (id)sharedDiagnosticsCollector;
@end

@implementation STYDiagnosticsCollector

+ (id)sharedDiagnosticsCollector
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__STYDiagnosticsCollector_sharedDiagnosticsCollector__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedDiagnosticsCollector_onceToken != -1)
  {
    dispatch_once(&sharedDiagnosticsCollector_onceToken, block);
  }

  v2 = sharedDiagnosticsCollector_sharedDiagnosticCollector;

  return v2;
}

void __53__STYDiagnosticsCollector_sharedDiagnosticsCollector__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedDiagnosticsCollector_sharedDiagnosticCollector;
  sharedDiagnosticsCollector_sharedDiagnosticCollector = v1;

  if (sharedDiagnosticsCollector_sharedDiagnosticCollector)
  {
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, -15);
    v3 = dispatch_queue_create("com.apple.Sentry.Frameworking.framework.STYDiagnosticsCollector", v4);
    [sharedDiagnosticsCollector_sharedDiagnosticCollector setSerialUtilityQueue:v3];
  }
}

void __101__STYDiagnosticsCollector_collectTailspinForScenarioReport_tailspinFileDescriptor_completionHandler___block_invoke(uint64_t a1, char a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v12 = *MEMORY[0x277CCA450];
    v4 = [MEMORY[0x277CCA8D8] mainBundle];
    v5 = [v4 localizedStringForKey:@"Error dumping tailspin" value:&stru_287705D88 table:0];
    v13[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];

    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:STYDiagnosticsCollectorErrorDomain code:-1002 userInfo:v6];
    v7 = +[STYDiagCollectorLogger sharedLogger];
    v8 = [v7 logHandle];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __101__STYDiagnosticsCollector_collectTailspinForScenarioReport_tailspinFileDescriptor_completionHandler___block_invoke_cold_1(v8);
    }
  }

  v9 = *(a1 + 48);
  v10 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

@end