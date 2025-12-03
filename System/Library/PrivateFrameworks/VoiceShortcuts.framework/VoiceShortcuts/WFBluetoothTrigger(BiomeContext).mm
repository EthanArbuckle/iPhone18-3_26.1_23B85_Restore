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
  stream = [MEMORY[0x277D7C190] stream];
  v12 = [stream publisherWithOptions:v10];

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
  eventBody = [v7 eventBody];
  if (eventBody && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = getWFTriggersLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v25 = "[WFBluetoothTrigger(BiomeContext) shouldFireInResponseToEvent:triggerIdentifier:completion:]";
      v26 = 2112;
      *v27 = eventBody;
      *&v27[8] = 1024;
      *v28 = [self onConnect];
      *&v28[4] = 1024;
      onDisconnect = [self onDisconnect];
      v30 = 1024;
      starting = [eventBody starting];
      _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_DEFAULT, "%s Received Bluetooth connection event %@ for trigger with setting; trigger has onConnect %d and onDisconnect %d and event has starting %d", buf, 0x28u);
    }

    starting2 = [eventBody starting];
    if (starting2 != [self onConnect] && (v12 = objc_msgSend(eventBody, "starting"), v12 == objc_msgSend(self, "onDisconnect")))
    {
      v15 = getWFTriggersLogObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        onConnect = [self onConnect];
        onDisconnect2 = [self onDisconnect];
        starting3 = [eventBody starting];
        *buf = 136315906;
        v25 = "[WFBluetoothTrigger(BiomeContext) shouldFireInResponseToEvent:triggerIdentifier:completion:]";
        v26 = 1024;
        *v27 = onConnect;
        *&v27[4] = 1024;
        *&v27[6] = onDisconnect2;
        *v28 = 1024;
        *&v28[2] = starting3;
        _os_log_impl(&dword_23103C000, v15, OS_LOG_TYPE_DEFAULT, "%s Trigger set with onConnect: %d and onDisconnect: %d and event had starting: %d, not firing", buf, 0x1Eu);
      }

      v8[2](v8, 0);
    }

    else
    {
      name = [eventBody name];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __93__WFBluetoothTrigger_BiomeContext__shouldFireInResponseToEvent_triggerIdentifier_completion___block_invoke;
      v20[3] = &unk_2788FE4D8;
      v21 = eventBody;
      selfCopy = self;
      v23 = v8;
      eventBody = eventBody;
      [self getPreviousStateWithDeviceName:name currentStateEvent:v7 completionHandler:v20];
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
  stream = [v3 stream];
  v6 = [stream DSLPublisherWithUseCase:@"Automation.Trigger"];
  v7 = [v6 subscribeOn:v4];

  return v7;
}

+ (id)stream
{
  v0 = BiomeLibrary();
  device = [v0 Device];
  wireless = [device Wireless];
  bluetooth = [wireless Bluetooth];

  return bluetooth;
}

@end