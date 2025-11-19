@interface WFBluetoothTrigger(BiomeContext)
+ (id)stream;
- (id)publisherWithScheduler:()BiomeContext;
- (void)getPreviousStateWithDeviceName:()BiomeContext currentStateEvent:completionHandler:;
- (void)shouldFireInResponseToEvent:()BiomeContext triggerIdentifier:completion:;
@end

@implementation WFBluetoothTrigger(BiomeContext)

- (void)getPreviousStateWithDeviceName:()BiomeContext currentStateEvent:completionHandler:
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [objc_alloc(MEMORY[0x277CF1A50]) initWithStartDate:0 endDate:0 maxEvents:0 lastN:0 reversed:1];
  v11 = [MEMORY[0x277D7C190] stream];
  v12 = [v11 publisherWithOptions:v10];

  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__659;
  v25 = __Block_byref_object_dispose__660;
  v26 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __103__WFBluetoothTrigger_BiomeContext__getPreviousStateWithDeviceName_currentStateEvent_completionHandler___block_invoke_2;
  v16[3] = &unk_2788FE520;
  v19 = v27;
  v13 = v7;
  v17 = v13;
  v20 = &v21;
  v14 = v8;
  v18 = v14;
  v15 = [v12 drivableSinkWithBookmark:0 completion:&__block_literal_global_661 shouldContinue:v16];
  v9[2](v9, v22[5]);

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(v27, 8);
}

- (void)shouldFireInResponseToEvent:()BiomeContext triggerIdentifier:completion:
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = [v7 eventBody];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = getWFTriggersLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v25 = "[WFBluetoothTrigger(BiomeContext) shouldFireInResponseToEvent:triggerIdentifier:completion:]";
      v26 = 2112;
      *v27 = v9;
      *&v27[8] = 1024;
      *v28 = [a1 onConnect];
      *&v28[4] = 1024;
      v29 = [a1 onDisconnect];
      v30 = 1024;
      v31 = [v9 starting];
      _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_DEFAULT, "%s Received Bluetooth connection event %@ for trigger with setting; trigger has onConnect %d and onDisconnect %d and event has starting %d", buf, 0x28u);
    }

    v11 = [v9 starting];
    if (v11 != [a1 onConnect] && (v12 = objc_msgSend(v9, "starting"), v12 == objc_msgSend(a1, "onDisconnect")))
    {
      v15 = getWFTriggersLogObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [a1 onConnect];
        v17 = [a1 onDisconnect];
        v18 = [v9 starting];
        *buf = 136315906;
        v25 = "[WFBluetoothTrigger(BiomeContext) shouldFireInResponseToEvent:triggerIdentifier:completion:]";
        v26 = 1024;
        *v27 = v16;
        *&v27[4] = 1024;
        *&v27[6] = v17;
        *v28 = 1024;
        *&v28[2] = v18;
        _os_log_impl(&dword_23103C000, v15, OS_LOG_TYPE_DEFAULT, "%s Trigger set with onConnect: %d and onDisconnect: %d and event had starting: %d, not firing", buf, 0x1Eu);
      }

      v8[2](v8, 0);
    }

    else
    {
      v13 = [v9 name];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __93__WFBluetoothTrigger_BiomeContext__shouldFireInResponseToEvent_triggerIdentifier_completion___block_invoke;
      v20[3] = &unk_2788FE4D8;
      v21 = v9;
      v22 = a1;
      v23 = v8;
      v9 = v9;
      [a1 getPreviousStateWithDeviceName:v13 currentStateEvent:v7 completionHandler:v20];
    }
  }

  else
  {

    v14 = getWFTriggersLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v25 = "[WFBluetoothTrigger(BiomeContext) shouldFireInResponseToEvent:triggerIdentifier:completion:]";
      _os_log_impl(&dword_23103C000, v14, OS_LOG_TYPE_DEFAULT, "%s No Bluetooth event received for trigger; not firing.", buf, 0xCu);
    }

    v8[2](v8, 0);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)publisherWithScheduler:()BiomeContext
{
  v3 = MEMORY[0x277D7C190];
  v4 = a3;
  v5 = [v3 stream];
  v6 = [v5 DSLPublisherWithUseCase:@"Automation.Trigger"];
  v7 = [v6 subscribeOn:v4];

  return v7;
}

+ (id)stream
{
  v0 = BiomeLibrary();
  v1 = [v0 Device];
  v2 = [v1 Wireless];
  v3 = [v2 Bluetooth];

  return v3;
}

@end