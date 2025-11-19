@interface WiFiCloudSyncEngineProcessCloudChangeEvent
@end

@implementation WiFiCloudSyncEngineProcessCloudChangeEvent

void ____WiFiCloudSyncEngineProcessCloudChangeEvent_block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48))
  {
    v2 = 0;
    v3 = MEMORY[0x277D86220];
    do
    {
      v4 = [*(a1 + 32) objectAtIndex:{v2, v8, v9}];
      if (v4)
      {
        v5 = v4;
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 136316162;
          v11 = "__WiFiCloudSyncEngineProcessCloudChangeEvent_block_invoke";
          v12 = 2080;
          v13 = "WiFiCloudSyncEngine.m";
          v14 = 1024;
          v15 = 1176;
          v16 = 2048;
          v17 = v2;
          v18 = 2112;
          v19 = v5;
          LODWORD(v9) = 48;
          v8 = &v10;
          _os_log_send_and_compose_impl();
        }

        if ([*(a1 + 40) isKVSEncrypted])
        {
          if ([v5 hasPrefix:@"network."])
          {
            goto LABEL_11;
          }

          if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
          {
            v10 = 136315906;
            v11 = "__WiFiCloudSyncEngineProcessCloudChangeEvent_block_invoke";
            v12 = 2080;
            v13 = "WiFiCloudSyncEngine.m";
            v14 = 1024;
            v15 = 1184;
            v16 = 2112;
            v17 = v5;
            LODWORD(v9) = 38;
            v8 = &v10;
LABEL_14:
            _os_log_send_and_compose_impl();
          }
        }

        else
        {
          v6 = [v5 length];
          if (v6 < [@"WiFiCloudSyncEngineNonSSIDKeyPrefix_" length])
          {
LABEL_11:
            __WiFiCloudSyncEngineProcessCloudNetworkChangeEvent(*(a1 + 56), *(a1 + 40));
            goto LABEL_15;
          }

          if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
          {
            v10 = 136315906;
            v11 = "__WiFiCloudSyncEngineProcessCloudChangeEvent_block_invoke";
            v12 = 2080;
            v13 = "WiFiCloudSyncEngine.m";
            v14 = 1024;
            v15 = 1193;
            v16 = 2112;
            v17 = v5;
            LODWORD(v9) = 38;
            v8 = &v10;
            goto LABEL_14;
          }
        }
      }

LABEL_15:
      ++v2;
    }

    while (v2 < *(a1 + 48));
  }

  dispatch_semaphore_signal(*(*(a1 + 56) + 280));
  CFRelease(*(a1 + 56));
  v7 = *MEMORY[0x277D85DE8];
}

@end