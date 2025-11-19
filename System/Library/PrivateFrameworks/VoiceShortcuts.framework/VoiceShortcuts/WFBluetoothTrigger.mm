@interface WFBluetoothTrigger
@end

@implementation WFBluetoothTrigger

uint64_t __103__WFBluetoothTrigger_BiomeContext__getPreviousStateWithDeviceName_currentStateEvent_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = getWFTriggersLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [v3 timestamp];
    v20 = 136315394;
    v21 = "[WFBluetoothTrigger(BiomeContext) getPreviousStateWithDeviceName:currentStateEvent:completionHandler:]_block_invoke_2";
    v22 = 2048;
    v23 = v5;
    _os_log_impl(&dword_23103C000, v4, OS_LOG_TYPE_DEBUG, "%s Walking back through bluetooth event with timestamp %f", &v20, 0x16u);
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v6 = [v3 eventBody];
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {

      v13 = getWFTriggersLogObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 136315138;
        v21 = "[WFBluetoothTrigger(BiomeContext) getPreviousStateWithDeviceName:currentStateEvent:completionHandler:]_block_invoke";
        _os_log_impl(&dword_23103C000, v13, OS_LOG_TYPE_DEFAULT, "%s Event in stream was not of BMDeviceBluetooth event type.", &v20, 0xCu);
      }

      goto LABEL_16;
    }

    v7 = [v6 name];
    v8 = [v7 isEqualToString:*(a1 + 32)];

    v9 = getWFTriggersLogObject();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
    if (v8)
    {
      if (v10)
      {
        v20 = 136315394;
        v21 = "[WFBluetoothTrigger(BiomeContext) getPreviousStateWithDeviceName:currentStateEvent:completionHandler:]_block_invoke";
        v22 = 2112;
        v23 = v6;
        _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_DEBUG, "%s Found last event for device name: %@", &v20, 0x16u);
      }

      v11 = *(*(a1 + 56) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v6;
      v13 = v6;

LABEL_16:
      v17 = 0;
      goto LABEL_21;
    }

    if (v10)
    {
      v20 = 136315394;
      v21 = "[WFBluetoothTrigger(BiomeContext) getPreviousStateWithDeviceName:currentStateEvent:completionHandler:]_block_invoke";
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_DEBUG, "%s Processed previous event with different device: %@", &v20, 0x16u);
    }

LABEL_20:
    v17 = 1;
    goto LABEL_21;
  }

  if (![v3 isEqual:*(a1 + 40)])
  {
    goto LABEL_20;
  }

  v14 = getWFTriggersLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [*(a1 + 40) timestamp];
    v20 = 136315394;
    v21 = "[WFBluetoothTrigger(BiomeContext) getPreviousStateWithDeviceName:currentStateEvent:completionHandler:]_block_invoke";
    v22 = 2048;
    v23 = v15;
    _os_log_impl(&dword_23103C000, v14, OS_LOG_TYPE_DEBUG, "%s Hit the event we are recieved for the trigger, which has timestamp %f", &v20, 0x16u);
  }

  v16 = *(*(a1 + 48) + 8);
  v17 = 1;
  *(v16 + 24) = 1;
LABEL_21:

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

void __93__WFBluetoothTrigger_BiomeContext__shouldFireInResponseToEvent_triggerIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 starting];
    if (v5 == [*(a1 + 32) starting])
    {
      v9 = getWFTriggersLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315138;
        v13 = "[WFBluetoothTrigger(BiomeContext) shouldFireInResponseToEvent:triggerIdentifier:completion:]_block_invoke";
        v10 = "%s Last Bluetooth connection event was same as current event, not firing";
LABEL_10:
        _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_DEFAULT, v10, &v12, 0xCu);
      }

LABEL_11:

      (*(*(a1 + 48) + 16))(*(a1 + 48), 0);
      goto LABEL_12;
    }
  }

  if ([*(a1 + 40) selection] == 1)
  {
    v6 = [*(a1 + 40) selectedDevices];
    v7 = [*(a1 + 32) name];
    v8 = [v6 containsObject:v7];

    if (!v8)
    {
      v9 = getWFTriggersLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315138;
        v13 = "[WFBluetoothTrigger(BiomeContext) shouldFireInResponseToEvent:triggerIdentifier:completion:]_block_invoke";
        v10 = "%s Event device not contained in trigger devices, not firing";
        goto LABEL_10;
      }

      goto LABEL_11;
    }
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), 1);
LABEL_12:

  v11 = *MEMORY[0x277D85DE8];
}

@end