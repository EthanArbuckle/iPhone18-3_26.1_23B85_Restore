@interface ActivityDispatcher
+ (id)getErrorFailedCollectors:(id)a3;
+ (id)getErrorNoCollectorDefinitionsToRun;
+ (id)getExecQ;
- (void)runCollectorsDefinedInParameters:(id)a3 completion:(id)a4;
@end

@implementation ActivityDispatcher

+ (id)getExecQ
{
  if (getExecQ_onceToken != -1)
  {
    +[ActivityDispatcher getExecQ];
  }

  v3 = getExecQ__execQ;

  return v3;
}

void __30__ActivityDispatcher_getExecQ__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x277D85CD8], QOS_CLASS_BACKGROUND, -32768);
  v0 = dispatch_queue_create("PSE_BG_Q_for_collectors", v2);
  v1 = getExecQ__execQ;
  getExecQ__execQ = v0;
}

+ (id)getErrorNoCollectorDefinitionsToRun
{
  if (getErrorNoCollectorDefinitionsToRun_onceToken != -1)
  {
    +[ActivityDispatcher getErrorNoCollectorDefinitionsToRun];
  }

  v3 = getErrorNoCollectorDefinitionsToRun_kErrorNoCollectorDefinitionsToRun;

  return v3;
}

uint64_t __57__ActivityDispatcher_getErrorNoCollectorDefinitionsToRun__block_invoke()
{
  getErrorNoCollectorDefinitionsToRun_kErrorNoCollectorDefinitionsToRun = [MEMORY[0x277CCA9B8] errorWithDomain:@"PostSiriEngagement" code:-1 userInfo:&unk_2870E3AB8];

  return MEMORY[0x2821F96F8]();
}

+ (id)getErrorFailedCollectors:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  v10 = @"failed_collectors";
  v11[0] = a3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v3 errorWithDomain:@"PostSiriEngagement" code:-10 userInfo:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)runCollectorsDefinedInParameters:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  _Block_copy(v5);
  v9 = self;
  specialized ActivityDispatcher.runCollectorsDefinedIn(parameters:completion:)(v6, v8, v9, v5);
  _Block_release(v5);
  _Block_release(v5);
}

@end