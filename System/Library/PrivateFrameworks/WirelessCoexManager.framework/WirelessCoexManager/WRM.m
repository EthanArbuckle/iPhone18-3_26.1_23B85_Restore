@interface WRM
@end

@implementation WRM

void __46__WRM_iRATInterface_processBTLQMNotification___block_invoke(uint64_t a1)
{
  xpc_dictionary_get_int64(*(a1 + 32), "WRMLinkPrefBTScore_LQMScore");
  NSLog(&cfstr_ReceivedLqmUpd.isa, *(a1 + 32));
  if (*(*(a1 + 40) + 96))
  {
    NSLog(&cfstr_SendingLqmScor.isa);
    v2 = *(*(*(a1 + 40) + 96) + 16);

    v2();
  }

  else
  {
    NSLog(&cfstr_DiscardLqmScor.isa);
  }
}

uint64_t __66__WRM_iRATInterface_processLowPowerModePeriodicWakeUpNotification__block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 104))
  {
    v1 = result;
    NSLog(&cfstr_Processlowpowe.isa);
    v2 = *(*(*(v1 + 32) + 104) + 16);

    return v2();
  }

  return result;
}

void __54__WRM_iRATInterface_processOperatingModeNotification___block_invoke(uint64_t a1)
{
  xpc_dictionary_get_uint64(*(a1 + 32), "WRMCommCenterOperatingModeNotifcation_EnableTelephony");
  xpc_dictionary_get_uint64(*(a1 + 32), "WRMCommCenterOperatingModeNotifcation_SetBBState");
  NSLog(&cfstr_ReceivedOperat.isa, *(a1 + 32));
  if (*(*(a1 + 40) + 64))
  {
    NSLog(&cfstr_SendingOperati.isa);
    v2 = *(*(*(a1 + 40) + 64) + 16);

    v2();
  }

  else
  {
    NSLog(&cfstr_DiscardOperati.isa);
  }
}

void __49__WRM_iRATInterface_processVoiceLqmNotification___block_invoke(uint64_t a1)
{
  uint64 = xpc_dictionary_get_uint64(*(a1 + 32), "kWRMVoiceLqm_SlotId");
  int64 = xpc_dictionary_get_int64(*(a1 + 32), "kWRMVoiceLqmValue");
  v4 = *(a1 + 40);
  if (*(v4 + 125) == 1 && *(v4 + 112))
  {
    NSLog(&cfstr_InovokeMvoicel.isa, uint64, int64);
    v5 = *(*(*(a1 + 40) + 112) + 16);

    v5();
  }

  else
  {
    NSLog(&cfstr_NoVoicelqmCall.isa);
  }
}

void __54__WRM_iRATInterface_processMetricsNotificationReport___block_invoke(uint64_t a1)
{
  v14 = objc_alloc_init(WRM_iRATProximityRecommendationLogging);
  v2 = xpc_dictionary_get_value(*(a1 + 32), "kWRMProximityBtRssi");

  if (v2)
  {
    [(WRM_iRATProximityRecommendationLogging *)v14 setBtRSSI:xpc_dictionary_get_uint64(*(a1 + 32), "kWRMProximityBtRssi")];
  }

  v3 = xpc_dictionary_get_value(*(a1 + 32), "kWRMProximityBtRetransmissionRateTx");

  if (v3)
  {
    [(WRM_iRATProximityRecommendationLogging *)v14 setBtRetransmissionRateTx:xpc_dictionary_get_int64(*(a1 + 32), "kWRMProximityBtRetransmissionRateTx")];
  }

  v4 = xpc_dictionary_get_value(*(a1 + 32), "kWRMProximityBtRetransmissionRateRx");

  if (v4)
  {
    [(WRM_iRATProximityRecommendationLogging *)v14 setBtRetransmissionRateRx:xpc_dictionary_get_uint64(*(a1 + 32), "kWRMProximityBtRetransmissionRateRx")];
  }

  v5 = xpc_dictionary_get_value(*(a1 + 32), "kWRMProximityBtTech");

  if (v5)
  {
    [(WRM_iRATProximityRecommendationLogging *)v14 setBtTech:xpc_dictionary_get_int64(*(a1 + 32), "kWRMProximityBtTech")];
  }

  v6 = xpc_dictionary_get_value(*(a1 + 32), "kWRMProximityWifiRssi");

  if (v6)
  {
    [(WRM_iRATProximityRecommendationLogging *)v14 setWifiRSSI:xpc_dictionary_get_int64(*(a1 + 32), "kWRMProximityWifiRssi")];
  }

  v7 = xpc_dictionary_get_value(*(a1 + 32), "kWRMProximityWifiSnr");

  if (v7)
  {
    [(WRM_iRATProximityRecommendationLogging *)v14 setWifiSNR:xpc_dictionary_get_int64(*(a1 + 32), "kWRMProximityWifiSnr")];
  }

  v8 = xpc_dictionary_get_value(*(a1 + 32), "kWRMProximityWifiLSMBeRecommendation");

  if (v8)
  {
    [(WRM_iRATProximityRecommendationLogging *)v14 setLsmRecommendationBe:xpc_dictionary_get_int64(*(a1 + 32), "kWRMProximityWifiLSMBeRecommendation")];
  }

  v9 = xpc_dictionary_get_value(*(a1 + 32), "kWRMProximityWifiExpectedThroughputVIBE");

  if (v9)
  {
    [(WRM_iRATProximityRecommendationLogging *)v14 setExpectedThroughputVIBE:xpc_dictionary_get_int64(*(a1 + 32), "kWRMProximityWifiExpectedThroughputVIBE")];
  }

  v10 = xpc_dictionary_get_value(*(a1 + 32), "kWRMProximityWifiPacketLifetimeVIBE");

  if (v10)
  {
    [(WRM_iRATProximityRecommendationLogging *)v14 setPacketLifetimeVIBE:xpc_dictionary_get_int64(*(a1 + 32), "kWRMProximityWifiPacketLifetimeVIBE")];
  }

  v11 = xpc_dictionary_get_value(*(a1 + 32), "kWRMProximityWifiPacketLossRateVIBE");

  if (v11)
  {
    [(WRM_iRATProximityRecommendationLogging *)v14 setPacketLossRateVIBE:xpc_dictionary_get_int64(*(a1 + 32), "kWRMProximityWifiPacketLossRateVIBE")];
  }

  v12 = *(a1 + 40);
  if (*(v12 + 127) == 1)
  {
    v13 = *(v12 + 88);
    if (v13)
    {
      (*(v13 + 16))(v13, v14);
      *(*(a1 + 40) + 127) = 0;
      NSLog(&cfstr_SentMetricsFor.isa);
    }
  }
}

void __56__WRM_iRATInterface_processNotificationListForTerminus___block_invoke(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 48))
  {
    v2 = 0;
    v3 = 0x279ED5000uLL;
    do
    {
      v4 = xpc_array_get_value(*(v1 + 32), v2);
      v5 = objc_alloc_init(*(v3 + 3120));
      [v5 setRecommendationType:{xpc_dictionary_get_uint64(v4, "kWRMProximityLinkRecommendationType")}];
      [v5 setLinkIsRecommended:{xpc_dictionary_get_BOOL(v4, "kWRMProximityLinkisRecommended")}];
      [v5 setLinkRecommendationIsValid:1];
      if ([v5 RecommendationType] == 2)
      {
        v6 = xpc_dictionary_get_value(v4, "kWRMProximityBtRssi");

        if (v6)
        {
          uint64 = xpc_dictionary_get_uint64(v4, "kWRMProximityBtRssi");
          v8 = [v5 metrics];
          [v8 setBtRSSI:uint64];
        }

        v9 = xpc_dictionary_get_value(v4, "kWRMProximityBtRetransmissionRateTx");

        if (v9)
        {
          int64 = xpc_dictionary_get_int64(v4, "kWRMProximityBtRetransmissionRateTx");
          v11 = [v5 metrics];
          [v11 setBtRetransmissionRateTx:int64];
        }

        v12 = xpc_dictionary_get_value(v4, "kWRMProximityBtRetransmissionRateRx");

        if (v12)
        {
          v13 = xpc_dictionary_get_uint64(v4, "kWRMProximityBtRetransmissionRateRx");
          v14 = [v5 metrics];
          [v14 setBtRetransmissionRateRx:v13];
        }

        v15 = xpc_dictionary_get_value(v4, "kWRMProximityBtTech");

        if (v15)
        {
          v16 = xpc_dictionary_get_int64(v4, "kWRMProximityBtTech");
          v17 = [v5 metrics];
          [v17 setBtTech:v16];
        }

        v18 = xpc_dictionary_get_value(v4, "kWRMProximityWifiRssi");

        if (v18)
        {
          v19 = xpc_dictionary_get_int64(v4, "kWRMProximityWifiRssi");
          v20 = [v5 metrics];
          [v20 setWifiRSSI:v19];
        }

        v21 = xpc_dictionary_get_value(v4, "kWRMProximityWifiSnr");

        v1 = a1;
        if (v21)
        {
          v22 = xpc_dictionary_get_int64(v4, "kWRMProximityWifiSnr");
          v23 = [v5 metrics];
          [v23 setWifiSNR:v22];
        }

        v24 = xpc_dictionary_get_value(v4, "kWRMProximityWifiLSMBeRecommendation");

        if (v24)
        {
          v25 = xpc_dictionary_get_int64(v4, "kWRMProximityWifiLSMBeRecommendation");
          v26 = [v5 metrics];
          [v26 setLsmRecommendationBe:v25];
        }

        v27 = xpc_dictionary_get_value(v4, "kWRMProximityWifiExpectedThroughputVIBE");

        if (v27)
        {
          v28 = xpc_dictionary_get_int64(v4, "kWRMProximityWifiExpectedThroughputVIBE");
          v29 = [v5 metrics];
          [v29 setExpectedThroughputVIBE:v28];
        }

        v30 = xpc_dictionary_get_value(v4, "kWRMProximityWifiPacketLifetimeVIBE");

        if (v30)
        {
          v31 = xpc_dictionary_get_int64(v4, "kWRMProximityWifiPacketLifetimeVIBE");
          v32 = [v5 metrics];
          [v32 setPacketLifetimeVIBE:v31];
        }

        v33 = xpc_dictionary_get_value(v4, "kWRMProximityWifiPacketLossRateVIBE");

        v3 = 0x279ED5000;
        if (v33)
        {
          v34 = xpc_dictionary_get_int64(v4, "kWRMProximityWifiPacketLossRateVIBE");
          v35 = [v5 metrics];
          [v35 setPacketLossRateVIBE:v34];
        }
      }

      [*(v1 + 40) addProximityLinkRecommendationType:v5];

      ++v2;
    }

    while (*(v1 + 48) > v2);
  }

  v36 = *(v1 + 40);
  if (*(v36 + 126))
  {
    v37 = *(v36 + 80);
    if (v37)
    {
      (*(v37 + 16))(v37, *(v36 + 136));
      *(*(v1 + 40) + 126) = 0;
      NSLog(&cfstr_CountOfRecomme.isa, [*(*(v1 + 40) + 136) count]);
      v36 = *(v1 + 40);
    }
  }

  if (*(v36 + 124) == 1)
  {
    v38 = *(v36 + 72);
    if (v38)
    {
      (*(v38 + 16))(v38, *(v36 + 136));
      NSLog(&cfstr_CountOfRecomme_0.isa, [*(*(v1 + 40) + 136) count]);
    }
  }
}

void __42__WRM_iRATInterface_registerClient_queue___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleNotification:v8 :a4];
  }
}

void __53__WRM_iRATInterface_subscribeBtLqmScoreNotification___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 8))
  {
    v2 = MEMORY[0x2743E9050](*(a1 + 40));
    v3 = *(a1 + 32);
    v4 = *(v3 + 96);
    *(v3 + 96) = v2;

    v5 = xpc_dictionary_create(0, 0, 0);
    *keys = xmmword_279ED5F68;
    v6 = xpc_uint64_create(0x1A5uLL);
    v11[0] = v6;
    v7 = v5;
    v11[1] = v7;
    v8 = xpc_dictionary_create(keys, v11, 2uLL);
    xpc_connection_send_message(*(*(a1 + 32) + 8), v8);
    NSLog(&cfstr_XpcMessageSent.isa, v11[0]);

    for (i = 1; i != -1; --i)
    {
    }
  }

  else
  {
    NSLog(&cfstr_Subscribebtlqm.isa);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __56__WRM_iRATInterface_getVoiceLqmValue_completionHandler___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 8))
  {
    v3 = *(v1 + 16);
    if (v3 < 0x2A && ((0x3EEEFFFFFFFuLL >> v3) & 1) != 0)
    {
      v4 = off_279ED5FB8[v3];
    }

    else if (v3 == 42)
    {
      v4 = "WRMSOS";
    }

    else
    {
      v4 = "INVALID_PROC_ID!!!";
    }

    NSLog(&cfstr_ReceivedGetvoi.isa, v4, *(a1 + 48));
    if (*(a1 + 40))
    {
      v5 = xpc_dictionary_create(0, 0, 0);
      v6 = v5;
      if (v5)
      {
        xpc_dictionary_set_uint64(v5, "kWRMVoiceLqm_SlotId", *(a1 + 48));
        *keys = xmmword_279ED5F68;
        values[0] = xpc_uint64_create(0xAF9uLL);
        values[1] = v6;
        v7 = xpc_dictionary_create(keys, values, 2uLL);
        v8 = *(a1 + 32);
        v9 = *(v8 + 8);
        v10 = *(v8 + 24);
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __56__WRM_iRATInterface_getVoiceLqmValue_completionHandler___block_invoke_2;
        handler[3] = &unk_279ED5DE0;
        v15 = *(a1 + 48);
        v14 = *(a1 + 40);
        xpc_connection_send_message_with_reply(v9, v7, v10, handler);

        for (i = 1; i != -1; --i)
        {
        }
      }
    }

    else
    {
      NSLog(&cfstr_Getvoicelqmval_0.isa);
    }
  }

  else
  {
    NSLog(&cfstr_Getvoicelqmval.isa);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __56__WRM_iRATInterface_getVoiceLqmValue_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  xdict = a2;
  if (xdict && MEMORY[0x2743E9320](xdict) == MEMORY[0x277D86468])
  {
    int64 = xpc_dictionary_get_int64(xdict, "kWRMVoiceLqmValue");
    NSLog(&cfstr_Getvoicelqmval_1.isa, *(a1 + 40), int64);
  }

  else
  {
    NSLog(&cfstr_Getvoicelqmval_2.isa);
  }

  (*(*(a1 + 32) + 16))();
}

void __51__WRM_iRATInterface_subscribeVoiceLqmNotification___block_invoke(uint64_t a1)
{
  keys[1] = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 16);
  if (v2 < 0x2A && ((0x3EEEFFFFFFFuLL >> v2) & 1) != 0)
  {
    v3 = off_279ED5FB8[v2];
  }

  else if (v2 == 42)
  {
    v3 = "WRMSOS";
  }

  else
  {
    v3 = "INVALID_PROC_ID!!!";
  }

  NSLog(&cfstr_ReceivedSubscr.isa, v3);
  if (*(*(a1 + 32) + 8))
  {
    v4 = MEMORY[0x2743E9050](*(a1 + 40));
    v5 = *(a1 + 32);
    v6 = *(v5 + 112);
    *(v5 + 112) = v4;

    *(*(a1 + 32) + 125) = *(*(a1 + 32) + 112) != 0;
    keys[0] = "kMessageId";
    values = xpc_uint64_create(0x9F6uLL);
    v7 = values;
    v8 = xpc_dictionary_create(keys, &values, 1uLL);
    xpc_connection_send_message(*(*(a1 + 32) + 8), v8);
    NSLog(&cfstr_XpcMessageSent_0.isa);
  }

  else
  {
    NSLog(&cfstr_Subscribevoice.isa);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __58__WRM_iRATInterface_subscribeProximityLinkRecommendation___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 8))
  {
    v2 = MEMORY[0x2743E9050](*(a1 + 40));
    v3 = *(a1 + 32);
    v4 = *(v3 + 72);
    *(v3 + 72) = v2;

    *(*(a1 + 32) + 124) = *(*(a1 + 32) + 72) != 0;
    if (*(*(a1 + 32) + 124) == 1)
    {
      v5 = objc_alloc_init(WRM_iRATProximityRecommendation);
      [(WRM_iRATProximityRecommendation *)v5 setRecommendationType:1];
      [(WRM_iRATProximityRecommendation *)v5 setLinkRecommendationIsValid:1];
      [(WRM_iRATProximityRecommendation *)v5 setLinkIsRecommended:1];
      [*(a1 + 32) addProximityLinkRecommendationType:v5];
      v6 = objc_alloc_init(WRM_iRATProximityRecommendation);
      [(WRM_iRATProximityRecommendation *)v6 setRecommendationType:0];
      [(WRM_iRATProximityRecommendation *)v6 setLinkRecommendationIsValid:1];
      [(WRM_iRATProximityRecommendation *)v6 setLinkIsRecommended:1];
      [*(a1 + 32) addProximityLinkRecommendationType:v6];
      v7 = objc_alloc_init(WRM_iRATProximityRecommendation);
      [(WRM_iRATProximityRecommendation *)v7 setRecommendationType:2];
      [(WRM_iRATProximityRecommendation *)v7 setLinkRecommendationIsValid:1];
      [(WRM_iRATProximityRecommendation *)v7 setLinkIsRecommended:1];
      [*(a1 + 32) addProximityLinkRecommendationType:v7];
      v8 = *(*(a1 + 32) + 16);
      if (v8 < 0x2A && ((0x3EEEFFFFFFFuLL >> v8) & 1) != 0)
      {
        v9 = off_279ED5FB8[v8];
      }

      else if (v8 == 42)
      {
        v9 = "WRMSOS";
      }

      else
      {
        v9 = "INVALID_PROC_ID!!!";
      }

      NSLog(&cfstr_SendingDefault.isa, v9);
      v10 = *(a1 + 32);
      v11 = *(v10 + 136);
      (*(*(v10 + 72) + 16))();
      [*(*(a1 + 32) + 136) removeAllObjects];
    }

    v12 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v12, "kWRMApplicationType", 0);
    xpc_dictionary_set_uint64(v12, "kWRMSubscriptionType", 0);
    xpc_dictionary_set_BOOL(v12, "kWRMProximityLinkRecommendationSubscriptionValid", *(*(a1 + 32) + 124));
    *keys = xmmword_279ED5F68;
    v13 = xpc_uint64_create([*(a1 + 32) getSubscribeMessageType:*(*(a1 + 32) + 16)]);
    values[0] = v13;
    v14 = v12;
    values[1] = v14;
    v15 = xpc_dictionary_create(keys, values, 2uLL);
    xpc_connection_send_message(*(*(a1 + 32) + 8), v15);

    for (i = 1; i != -1; --i)
    {
    }
  }

  else
  {
    NSLog(&cfstr_Subscribeproxi.isa);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __50__WRM_iRATInterface_getLinkRecommendationMetrics___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 8))
  {
    v3 = *(v1 + 88);
    if (v3)
    {
      *(v1 + 88) = 0;
    }

    v4 = MEMORY[0x2743E9050](*(a1 + 40));
    v5 = *(a1 + 32);
    v6 = *(v5 + 88);
    *(v5 + 88) = v4;

    *(*(a1 + 32) + 127) = *(*(a1 + 32) + 88) != 0;
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v7, "kWRMProximityGetProximityGetMetrics", *(*(a1 + 32) + 127));
    *keys = xmmword_279ED5F68;
    v8 = xpc_uint64_create(0x19FuLL);
    v13[0] = v8;
    v9 = v7;
    v13[1] = v9;
    v10 = xpc_dictionary_create(keys, v13, 2uLL);
    xpc_connection_send_message(*(*(a1 + 32) + 8), v10);

    for (i = 1; i != -1; --i)
    {
    }
  }

  else
  {
    NSLog(&cfstr_Getlinkrecomme.isa);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __67__WRM_iRATInterface_getProximityLinkRecommendation_recommendation___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 8))
  {
    v3 = *(v1 + 80);
    if (v3)
    {
      *(v1 + 80) = 0;
    }

    v4 = MEMORY[0x2743E9050](*(a1 + 40));
    v5 = *(a1 + 32);
    v6 = *(v5 + 80);
    *(v5 + 80) = v4;

    *(*(a1 + 32) + 126) = *(*(a1 + 32) + 80) != 0;
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v7, "kWRMApplicationType", 0);
    xpc_dictionary_set_uint64(v7, "kWRMSubscriptionType", 0);
    xpc_dictionary_set_BOOL(v7, "kWRMProximityGetProximityLinkRecommendation", *(*(a1 + 32) + 126));
    xpc_dictionary_set_BOOL(v7, "kWRMProximityLinkRecommendationIsRetry", *(a1 + 48));
    *keys = xmmword_279ED5F68;
    v8 = xpc_uint64_create([*(a1 + 32) getSubscribeMessageType:*(*(a1 + 32) + 16)]);
    v13[0] = v8;
    v9 = v7;
    v13[1] = v9;
    v10 = xpc_dictionary_create(keys, v13, 2uLL);
    xpc_connection_send_message(*(*(a1 + 32) + 8), v10);

    for (i = 1; i != -1; --i)
    {
    }
  }

  else
  {
    NSLog(&cfstr_Getproximityli.isa);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __58__WRM_iRATInterface_statusUpdateAppLinkPreference_status___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 8))
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v2, "kWRMProximityLinkRecommendationType", *(a1 + 40));
    xpc_dictionary_set_BOOL(v2, "kWRMProximityAppLinkPreferenceActive", *(a1 + 44));
    *keys = xmmword_279ED5F68;
    v3 = xpc_uint64_create([*(a1 + 32) getStatusUpdateMessageType:*(*(a1 + 32) + 16)]);
    v8[0] = v3;
    v4 = v2;
    v8[1] = v4;
    v5 = xpc_dictionary_create(keys, v8, 2uLL);
    xpc_connection_send_message(*(*(a1 + 32) + 8), v5);

    for (i = 1; i != -1; --i)
    {
    }
  }

  else
  {
    NSLog(&cfstr_Statusupdateap.isa);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __47__WRM_iRATInterface_getStreamingInfo_linkType___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (!*(v1 + 8))
  {
    NSLog(&cfstr_Getstreamingin.isa);
    goto LABEL_16;
  }

  v3 = *(v1 + 16);
  if (v3 < 0x2A && ((0x3EEEFFFFFFFuLL >> v3) & 1) != 0)
  {
    v4 = off_279ED5FB8[v3];
  }

  else if (v3 == 42)
  {
    v4 = "WRMSOS";
  }

  else
  {
    v4 = "INVALID_PROC_ID!!!";
  }

  NSLog(&cfstr_ReceivedGetlin.isa, v4);
  if (!*(a1 + 40) || (v5 = MEMORY[0x2743E9050]()) == 0)
  {
    NSLog(&cfstr_ReceivedGetlin_0.isa);
LABEL_16:
    v13 = *MEMORY[0x277D85DE8];
    return;
  }

  v15 = v5;
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
    xpc_dictionary_set_uint64(v6, "WRMGetStreamingMetrics_linkType", *(a1 + 48));
    *keys = xmmword_279ED5F68;
    values[0] = xpc_uint64_create(0x1A1uLL);
    v8 = v7;
    values[1] = v8;
    v9 = xpc_dictionary_create(keys, values, 2uLL);
    v10 = *(*(a1 + 32) + 8);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __47__WRM_iRATInterface_getStreamingInfo_linkType___block_invoke_2;
    handler[3] = &unk_279ED5D18;
    v11 = v15;
    v17 = v11;
    xpc_connection_send_message_with_reply(v10, v9, 0, handler);

    for (i = 1; i != -1; --i)
    {
    }

    goto LABEL_16;
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __47__WRM_iRATInterface_getStreamingInfo_linkType___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  uint64 = xpc_dictionary_get_uint64(v3, "MaxBW");
  xpc_dictionary_get_uint64(v3, "StallDetected");
  v5 = xpc_dictionary_get_uint64(v3, "AvgRTT");
  v6 = xpc_dictionary_get_BOOL(v3, "isValid");

  NSLog(&cfstr_ReceivedStream.isa, uint64, v5, v6);
  v7 = *(*(a1 + 32) + 16);

  return v7();
}

void __54__WRM_iRATInterface_getMLPredictedThroughput_options___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (!*(v1 + 8))
  {
    NSLog(&cfstr_Getmlpredicted.isa);
    goto LABEL_20;
  }

  v3 = *(v1 + 16);
  if (v3 < 0x2A && ((0x3EEEFFFFFFFuLL >> v3) & 1) != 0)
  {
    v4 = off_279ED5FB8[v3];
  }

  else if (v3 == 42)
  {
    v4 = "WRMSOS";
  }

  else
  {
    v4 = "INVALID_PROC_ID!!!";
  }

  NSLog(&cfstr_ReceivedGetmlp.isa, v4);
  if (!*(a1 + 48) || (NSLog(&cfstr_ReceivedMlpred.isa), (v17 = MEMORY[0x2743E9050](*(a1 + 48))) == 0))
  {
    NSLog(&cfstr_ReceivedGetmlp_0.isa);
LABEL_20:
    v15 = *MEMORY[0x277D85DE8];
    return;
  }

  NSLog(&cfstr_ReceivedNotifi.isa);
  v5 = xpc_dictionary_create(0, 0, 0);
  if (v5)
  {
    v6 = v5;
    NSLog(&cfstr_ReceivedArgsIs.isa);
    v7 = *(a1 + 40);
    if (v7 && ([v7 objectForKey:@"linkType"], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
    {
      v9 = [*(a1 + 40) objectForKey:@"linkType"];
      xpc_dictionary_set_int64(v6, "WRMMLPredictedThroughput_linkType", [v9 intValue]);
    }

    else
    {
      xpc_dictionary_set_int64(v6, "WRMMLPredictedThroughput_linkType", -1);
    }

    *keys = xmmword_279ED5F68;
    values[0] = xpc_uint64_create(0x1A7uLL);
    v10 = v6;
    values[1] = v10;
    v11 = xpc_dictionary_create(keys, values, 2uLL);
    v12 = *(*(a1 + 32) + 8);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __54__WRM_iRATInterface_getMLPredictedThroughput_options___block_invoke_2;
    handler[3] = &unk_279ED5D18;
    v13 = v17;
    v19 = v13;
    xpc_connection_send_message_with_reply(v12, v11, 0, handler);

    for (i = 1; i != -1; --i)
    {
    }

    goto LABEL_20;
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __54__WRM_iRATInterface_getMLPredictedThroughput_options___block_invoke_2(uint64_t a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "WRMMLPredictedThroughput_CoreMedia");
  NSLog(&cfstr_Getmlpredicted_0.isa, uint64);
  v4 = *(*(a1 + 32) + 16);

  return v4();
}

void __50__WRM_iRATInterface_assertCommCenterBaseBandMode___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 8))
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    v3 = v2;
    if (v2)
    {
      v5 = *(a1 + 32);
      v4 = (a1 + 32);
      *(v5 + 123) = 1;
      v6 = v4[2];
      *(*v4 + 128) = v6;
      xpc_dictionary_set_uint64(v2, "WRMTriggerCommCenterBasebandOperatingModeChange_AssertBasebandGPS", v6);
      *keys = xmmword_279ED5F68;
      v10[0] = xpc_uint64_create(0x19AuLL);
      v10[1] = v3;
      v7 = xpc_dictionary_create(keys, v10, 2uLL);
      xpc_connection_send_message(*(*v4 + 8), v7);

      for (i = 1; i != -1; --i)
      {
      }
    }
  }

  else
  {
    NSLog(&cfstr_Assertcommcent.isa);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __54__WRM_iRATInterface_expediteCellularForReason_reason___block_invoke(uint64_t a1)
{
  NSLog(&cfstr_Expeditecellul.isa, *(a1 + 48));
  v2 = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__WRM_iRATInterface_expediteCellularForReason_reason___block_invoke_2;
  v4[3] = &unk_279ED5EF8;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v3 _expediteBBAssertionBGAppActive_sync:v2 handler:v4];
}

uint64_t __54__WRM_iRATInterface_expediteCellularForReason_reason___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __41__WRM_iRATInterface_setTelephonyEnabled___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 8))
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    v3 = v2;
    if (v2)
    {
      v5 = *(a1 + 32);
      v4 = (a1 + 32);
      *(v5 + 121) = 1;
      v6 = v4[8];
      *(*v4 + 122) = v6;
      xpc_dictionary_set_uint64(v2, "WRMTriggerCommCenterBasebandOperatingModeChange_AssertTelephony", v6);
      *keys = xmmword_279ED5F68;
      v10[0] = xpc_uint64_create(0x19AuLL);
      v10[1] = v3;
      v7 = xpc_dictionary_create(keys, v10, 2uLL);
      xpc_connection_send_message(*(*v4 + 8), v7);

      for (i = 1; i != -1; --i)
      {
      }
    }
  }

  else
  {
    NSLog(&cfstr_Settelephonyen.isa);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __47__WRM_iRATInterface_subscribeAppType_observer___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 8))
  {
    v2 = [MEMORY[0x277CCAE60] valueWithBytes:a1 + 48 objCType:"{?=iiii}"];
    v3 = MEMORY[0x2743E9050](*(a1 + 40));
    v4 = *(a1 + 32);
    v5 = *(v4 + 56);
    *(v4 + 56) = v3;

    if (![*(*(a1 + 32) + 40) count])
    {
      [*(a1 + 32) addAppType:v2];
    }

    *(*(a1 + 32) + 120) = 1;
    v6 = xpc_array_create(0, 0);
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v7, "kWRMApplicationType", *(a1 + 48));
    xpc_dictionary_set_uint64(v7, "kWRMSubscriptionType", *(a1 + 60));
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v8, "kWRMPolicyInfoHoAlgorithmType", *(a1 + 52));
    xpc_dictionary_set_uint64(v8, "kWRMPolicyInfoServiceType", *(a1 + 56));
    xpc_dictionary_set_value(v7, "kWRMPolicyInfo", v8);
    xpc_array_append_value(v6, v7);
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_value(v9, "kWRMApplicationTypeList", v6);
    *keys = xmmword_279ED5F68;
    v10 = xpc_uint64_create([*(a1 + 32) getSubscribeMessageType:*(*(a1 + 32) + 16)]);
    v15[0] = v10;
    v11 = v9;
    v15[1] = v11;
    v12 = xpc_dictionary_create(keys, v15, 2uLL);
    xpc_connection_send_message(*(*(a1 + 32) + 8), v12);

    for (i = 1; i != -1; --i)
    {
    }
  }

  else
  {
    NSLog(&cfstr_Subscribeappty.isa);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __56__WRM_iRATInterface_subscribeMultipleAppTypes_observer___block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 8))
  {
    v2 = MEMORY[0x2743E9050](*(a1 + 48));
    v3 = *(a1 + 32);
    v4 = *(v3 + 56);
    *(v3 + 56) = v2;

    *(*(a1 + 32) + 48) = 1;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v5 = *(a1 + 40);
    v6 = [v5 countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v41;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v41 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v40 + 1) + 8 * i);
          keys[0] = 0;
          keys[1] = 0;
          [v10 getValue:keys];
        }

        v7 = [v5 countByEnumeratingWithState:&v40 objects:v48 count:16];
      }

      while (v7);
    }

    *(*(a1 + 32) + 120) = 1;
    if (![*(*(a1 + 32) + 40) count])
    {
      objc_storeStrong((*(a1 + 32) + 40), *(a1 + 40));
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v11 = *(*(a1 + 32) + 40);
    v12 = [v11 countByEnumeratingWithState:&v36 objects:v46 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v37;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v37 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v36 + 1) + 8 * j);
          keys[0] = 0;
          keys[1] = 0;
          [v16 getValue:keys];
        }

        v13 = [v11 countByEnumeratingWithState:&v36 objects:v46 count:16];
      }

      while (v13);
    }

    v17 = xpc_array_create(0, 0);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = *(*(a1 + 32) + 40);
    v18 = [obj countByEnumeratingWithState:&v32 objects:v45 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v33;
      do
      {
        for (k = 0; k != v19; ++k)
        {
          if (*v33 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v32 + 1) + 8 * k);
          keys[0] = 0;
          keys[1] = 0;
          [v22 getValue:keys];
          v23 = xpc_dictionary_create(0, 0, 0);
          xpc_dictionary_set_uint64(v23, "kWRMApplicationType", LODWORD(keys[0]));
          xpc_dictionary_set_uint64(v23, "kWRMSubscriptionType", HIDWORD(keys[1]));
          v24 = xpc_dictionary_create(0, 0, 0);
          xpc_dictionary_set_uint64(v24, "kWRMPolicyInfoHoAlgorithmType", HIDWORD(keys[0]));
          xpc_dictionary_set_uint64(v24, "kWRMPolicyInfoServiceType", LODWORD(keys[1]));
          xpc_dictionary_set_value(v23, "kWRMPolicyInfo", v24);
          xpc_array_append_value(v17, v23);
        }

        v19 = [obj countByEnumeratingWithState:&v32 objects:v45 count:16];
      }

      while (v19);
    }

    v25 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_value(v25, "kWRMApplicationTypeList", v17);
    *keys = xmmword_279ED5F68;
    v26 = xpc_uint64_create([*(a1 + 32) getSubscribeMessageType:*(*(a1 + 32) + 16)]);
    values[0] = v26;
    v27 = v25;
    values[1] = v27;
    v28 = xpc_dictionary_create(keys, values, 2uLL);
    xpc_connection_send_message(*(*(a1 + 32) + 8), v28);

    for (m = 1; m != -1; --m)
    {
    }
  }

  else
  {
    NSLog(&cfstr_Subscribemulti.isa);
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __64__WRM_iRATInterface_statusUpdateAppType_linkType_serviceStatus___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 8))
  {
    v2 = xpc_array_create(0, 0);
    v3 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v3, "kWRMApplicationType", *(a1 + 40));
    xpc_dictionary_set_uint64(v3, "kWRMLinkType", *(a1 + 40));
    xpc_dictionary_set_uint64(v3, "kWRMServiceStatus", *(a1 + 44));
    xpc_array_append_value(v2, v3);
    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_value(v4, "kWRMApplicationTypeList", v2);
    *keys = xmmword_279ED5F68;
    v5 = xpc_uint64_create([*(a1 + 32) getStatusUpdateMessageType:*(*(a1 + 32) + 16)]);
    v10[0] = v5;
    v6 = v4;
    v10[1] = v6;
    v7 = xpc_dictionary_create(keys, v10, 2uLL);
    xpc_connection_send_message(*(*(a1 + 32) + 8), v7);

    for (i = 1; i != -1; --i)
    {
    }
  }

  else
  {
    NSLog(&cfstr_Statusupdateap_0.isa);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __66__WRM_iRATInterface__expediteBBAssertionBGAppActive_sync_handler___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (!*(v1 + 8))
  {
    NSLog(&cfstr_Expeditebbasse.isa);
    goto LABEL_20;
  }

  if (*(v1 + 144) != *(a1 + 48))
  {
    v6 = xpc_dictionary_create(0, 0, 0);
    v7 = v6;
    if (v6)
    {
      xpc_dictionary_set_uint64(v6, "WRMProcessIdKey", *(*(a1 + 32) + 16));
      xpc_dictionary_set_BOOL(v7, "WRMBBAssertionBGAppActiveKey", *(a1 + 48));
      *keys = xmmword_279ED5F68;
      v8 = xpc_uint64_create(0x19BuLL);
      values[0] = v8;
      values[1] = v7;
      v9 = xpc_dictionary_create(keys, values, 2uLL);
      v10 = *(a1 + 40);
      if (v8 && v9)
      {
        v11 = MEMORY[0x2743E9050](v10);
        NSLog(&cfstr_Expeditebbasse_0.isa);
        v12 = *(a1 + 32);
        v13 = *(v12 + 8);
        v14 = *(v12 + 24);
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __66__WRM_iRATInterface__expediteBBAssertionBGAppActive_sync_handler___block_invoke_2;
        handler[3] = &unk_279ED5F80;
        v21 = *(a1 + 48);
        handler[4] = v12;
        v20 = v11;
        v15 = v11;
        xpc_connection_send_message_with_reply(v13, v9, v14, handler);
      }

      else if (v10)
      {
        (*(v10 + 16))(v10, 0);
      }

      for (i = 1; i != -1; --i)
      {
      }
    }

    else
    {
      v16 = *(a1 + 40);
      if (v16)
      {
        (*(v16 + 16))(v16, 0);
      }
    }

    goto LABEL_20;
  }

  v3 = *(a1 + 40);
  if (!v3)
  {
LABEL_20:
    v18 = *MEMORY[0x277D85DE8];
    return;
  }

  v4 = *(v3 + 16);
  v5 = *MEMORY[0x277D85DE8];

  v4();
}

void __66__WRM_iRATInterface__expediteBBAssertionBGAppActive_sync_handler___block_invoke_2(uint64_t a1, void *a2)
{
  xdict = a2;
  if (xdict && MEMORY[0x2743E9320]() == MEMORY[0x277D86468])
  {
    *(*(a1 + 32) + 144) = *(a1 + 48) == 1 && xpc_dictionary_get_BOOL(xdict, "WRMBBAssertionBGAppActiveResultKey");
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

void __60__WRM_iRATInterface_expediteBBAssertionBGAppActive_handler___block_invoke(uint64_t a1)
{
  NSLog(&cfstr_Expeditebbasse_1.isa, *(a1 + 48));
  v2 = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__WRM_iRATInterface_expediteBBAssertionBGAppActive_handler___block_invoke_2;
  v4[3] = &unk_279ED5EF8;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v3 _expediteBBAssertionBGAppActive_sync:v2 handler:v4];
}

uint64_t __60__WRM_iRATInterface_expediteBBAssertionBGAppActive_handler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __37__WRM_iRATInterface_unregisterClient__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  *(v2 + 56) = 0;

  *(*(a1 + 32) + 120) = 0;
  *(*(a1 + 32) + 121) = 0;
  *(*(a1 + 32) + 123) = 0;
  *(*(a1 + 32) + 128) = 0;
  *(*(a1 + 32) + 122) = 1;
  *(*(a1 + 32) + 48) = 0;
  *(*(a1 + 32) + 124) = 0;
  *(*(a1 + 32) + 126) = 0;
  [*(*(a1 + 32) + 136) removeAllObjects];
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (v5)
  {
    *(v4 + 40) = 0;

    v6 = *(a1 + 32);
    v7 = *(v6 + 24);
    *(v6 + 24) = 0;

    v8 = *(a1 + 32);
    v9 = *(v8 + 56);
    if (v9)
    {
      *(v8 + 56) = 0;
    }
  }
}

void __41__WRM_UCMInterface_registerClient_queue___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleNotification:v8 :a4];
  }
}

void __41__WRM_UCMInterface_registerClient_queue___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (!WeakRetained || !WeakRetained[2])
  {
    goto LABEL_11;
  }

  v6 = MEMORY[0x2743E9320](v3);
  if (v6 == MEMORY[0x277D86468])
  {
    v8 = *(v5[2] + 16);
LABEL_7:
    v8();
    goto LABEL_11;
  }

  if (v6 != MEMORY[0x277D86480])
  {
    v7 = MEMORY[0x2743E9250](v3);
    free(v7);
    goto LABEL_11;
  }

  v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  if (v9)
  {
    __41__WRM_UCMInterface_registerClient_queue___block_invoke_2_cold_1(v9, v10, v11, v12, v13, v14, v15, v16);
  }

  if (v3 == MEMORY[0x277D863F0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_2742D6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Connection interrupted: reconnecting", v17, 2u);
    }

    v8 = *(v5[2] + 16);
    goto LABEL_7;
  }

LABEL_11:
}

void __58__WRM_UCMInterface_subscribeBtConnectedLinksNotification___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  v5 = xpc_dictionary_create(0, 0, 0);
  *keys = xmmword_279ED6208;
  v6 = xpc_uint64_create(0x8FCuLL);
  values[0] = v6;
  v7 = v5;
  values[1] = v7;
  v8 = xpc_dictionary_create(keys, values, 2uLL);
  xpc_connection_send_message(*(*(a1 + 32) + 56), v8);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_2742D6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "XPC message sent: WCMBTConnectedDevices", v11, 2u);
  }

  for (i = 1; i != -1; --i)
  {
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __56__WRM_UCMInterface_processBTConnectedLinksNotification___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 32);
    *buf = 138412290;
    v20 = v2;
    _os_log_impl(&dword_2742D6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Received BT Connected Links message:%@", buf, 0xCu);
  }

  int64 = xpc_dictionary_get_int64(*(a1 + 32), "kWCMBTNumA2DP");
  v4 = xpc_dictionary_get_int64(*(a1 + 32), "kWCMBTNumSCO");
  v5 = xpc_dictionary_get_int64(*(a1 + 32), "kWCMBTNumESCO");
  v6 = xpc_dictionary_get_int64(*(a1 + 32), "kWCMBTNumHID");
  v7 = xpc_dictionary_get_int64(*(a1 + 32), "kWCMBTNumLE");
  v8 = xpc_dictionary_get_int64(*(a1 + 32), "kWCMBTNumLEA");
  if (*(*(a1 + 40) + 8))
  {
    v9 = v8;
    v10 = objc_alloc(MEMORY[0x277CBEAC0]);
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:int64];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v4];
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v5];
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v6];
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v7];
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v9];
    v17 = [v10 initWithObjectsAndKeys:{v11, @"kWCMBTNumA2DP", v12, @"kWCMBTNumSCO", v13, @"kWCMBTNumESCO", v14, @"kWCMBTNumHID", v15, @"kWCMBTNumLE", v16, @"kWCMBTNumLEA", 0}];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2742D6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Sending BT Connected Links notification", buf, 2u);
    }

    (*(*(*(a1 + 40) + 8) + 16))();
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2742D6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Discard BT Connected Links notification", buf, 2u);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __31__WRM_UCMInterface_sendBtLoad___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  uint64 = xpc_dictionary_get_uint64(*(a1 + 32), "kWRMHomeKitBtLoad");
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = uint64;
    _os_log_impl(&dword_2742D6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "getWirelessRadioManagerReportLoad Sending BtLoad: %u", v5, 8u);
  }

  v3 = *(*(a1 + 40) + 24);
  if (v3)
  {
    v3(uint64);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __34__WRM_UCMInterface_getInstantLoad__block_invoke(int8x16_t *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(*(a1[3].i64[0] + 8) + 40))
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    if (v2)
    {
      *keys = xmmword_279ED6208;
      v3 = xpc_uint64_create(0xAF2uLL);
      values[0] = v3;
      values[1] = 0;
      v4 = xpc_dictionary_create(keys, values, 2uLL);
      v5 = *(*(a1[3].i64[0] + 8) + 40);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __34__WRM_UCMInterface_getInstantLoad__block_invoke_83;
      handler[3] = &unk_279ED6148;
      v12 = a1[3].i64[1];
      v9 = a1[2];
      v6 = v9.i64[0];
      v11 = vextq_s8(v9, v9, 8uLL);
      xpc_connection_send_message_with_reply(v5, v4, 0, handler);

      for (i = 1; i != -1; --i)
      {
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(keys[0]) = 0;
      _os_log_impl(&dword_2742D6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Invalid XPC connection.", keys, 2u);
    }

    dispatch_semaphore_signal(a1[2].i64[0]);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __34__WRM_UCMInterface_getInstantLoad__block_invoke_83(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(a1 + 32) checkConnection:v3])
  {
    *(*(*(a1 + 48) + 8) + 24) = xpc_dictionary_get_uint64(v3, "kWRMHomeKitBtLoad");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(*(a1 + 48) + 8) + 24);
      v6[0] = 67109120;
      v6[1] = v4;
      _os_log_impl(&dword_2742D6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "getWirelessRadioManagerReportLoad Current BT Load: %u", v6, 8u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));

  v5 = *MEMORY[0x277D85DE8];
}

void __29__WRM_UCMInterface_stopTimer__block_invoke(int8x16_t *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2742D6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "getWirelessRadioManagerReportLoad Stop Timer", buf, 2u);
  }

  if (*(*(a1[3].i64[0] + 8) + 40))
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    if (v2)
    {
      *buf = xmmword_279ED6208;
      v3 = xpc_uint64_create(0xAF4uLL);
      xpc_dictionary_set_BOOL(v2, "kWRMHomeKitEnable", 0);
      v4 = v3;
      values[0] = v4;
      values[1] = v2;
      v5 = xpc_dictionary_create(buf, values, 2uLL);
      v6 = *(*(a1[3].i64[0] + 8) + 40);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __29__WRM_UCMInterface_stopTimer__block_invoke_86;
      handler[3] = &unk_279ED6148;
      v13 = a1[3].i64[1];
      v10 = a1[2];
      v7 = v10.i64[0];
      v12 = vextq_s8(v10, v10, 8uLL);
      xpc_connection_send_message_with_reply(v6, v5, 0, handler);

      for (i = 1; i != -1; --i)
      {
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2742D6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Invalid XPC connection.", buf, 2u);
    }

    dispatch_semaphore_signal(a1[2].i64[0]);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __29__WRM_UCMInterface_stopTimer__block_invoke_86(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(a1 + 32) checkConnection:v3])
  {
    *(*(*(a1 + 48) + 8) + 24) = xpc_dictionary_get_uint64(v3, "kWRMHomeKitBtLoad");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(*(a1 + 48) + 8) + 24);
      v6[0] = 67109120;
      v6[1] = v4;
      _os_log_impl(&dword_2742D6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "getWirelessRadioManagerReportLoad Max BT Load: %u", v6, 8u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));

  v5 = *MEMORY[0x277D85DE8];
}

void __31__WRM_UCMInterface_startTimer___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2742D6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "getWirelessRadioManagerReportLoad start Timer", buf, 2u);
  }

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    if (v2)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2742D6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Received args is not nil", buf, 2u);
      }

      *buf = xmmword_279ED6208;
      v3 = xpc_uint64_create(0xAF4uLL);
      xpc_dictionary_set_double(v2, "kWRMHomeKitDuration", *(a1 + 64));
      xpc_dictionary_set_BOOL(v2, "kWRMHomeKitEnable", 1);
      v4 = v3;
      values[0] = v4;
      values[1] = v2;
      v5 = xpc_dictionary_create(buf, values, 2uLL);
      v6 = *(*(*(a1 + 48) + 8) + 40);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __31__WRM_UCMInterface_startTimer___block_invoke_89;
      handler[3] = &unk_279ED6148;
      v13 = *(a1 + 56);
      v10 = *(a1 + 32);
      v7 = v10.i64[0];
      v12 = vextq_s8(v10, v10, 8uLL);
      xpc_connection_send_message_with_reply(v6, v5, 0, handler);

      for (i = 1; i != -1; --i)
      {
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2742D6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Invalid XPC connection.", buf, 2u);
    }

    dispatch_semaphore_signal(*(a1 + 32));
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __31__WRM_UCMInterface_startTimer___block_invoke_89(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(a1 + 32) checkConnection:v3])
  {
    *(*(*(a1 + 48) + 8) + 24) = xpc_dictionary_get_uint64(v3, "kWRMHomeKitBtLoad");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(*(a1 + 48) + 8) + 24);
      v6[0] = 67109120;
      v6[1] = v4;
      _os_log_impl(&dword_2742D6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "getWirelessRadioManagerReportLoad Max BT Load: %u", v6, 8u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));

  v5 = *MEMORY[0x277D85DE8];
}

void __48__WRM_UCMInterface_sendNRFrequencyUpdateForMic___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __48__WRM_UCMInterface_sendNRFrequencyUpdateForMic___block_invoke_2;
  v10 = &unk_279ED61C0;
  v11 = *(a1 + 32);
  v3 = v2;
  v12 = v3;
  [&unk_2883510D0 enumerateKeysAndObjectsUsingBlock:&v7];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v3;
    _os_log_impl(&dword_2742D6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "sendNRFrequencyUpdateForMic %@", buf, 0xCu);
  }

  v4 = *(*(a1 + 40) + 32);
  if (v4)
  {
    v5 = [v3 copy];
    v4();
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __48__WRM_UCMInterface_sendNRFrequencyUpdateForMic___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v8 = v5 && (xpc_dictionary_get_value(*(a1 + 32), [v5 UTF8String]), v7 = v6 = v5;
  v9 = [MEMORY[0x277CCABB0] numberWithBool:v8];
  [*(a1 + 40) setObject:v9 forKeyedSubscript:v10];
}

void __58__WRM_UCMInterface_getWirelessFrequencyBandUpdatesForMIC___block_invoke(int8x16_t *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(*(a1[3].i64[0] + 8) + 40))
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    if (v2)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2742D6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Received args is not nil", buf, 2u);
      }

      *buf = xmmword_279ED6208;
      v3 = xpc_uint64_create(0xAF5uLL);
      values[0] = v3;
      values[1] = v2;
      v4 = xpc_dictionary_create(buf, values, 2uLL);
      v5 = *(*(a1[3].i64[0] + 8) + 40);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __58__WRM_UCMInterface_getWirelessFrequencyBandUpdatesForMIC___block_invoke_130;
      handler[3] = &unk_279ED6148;
      v12 = a1[3].i64[1];
      v9 = a1[2];
      v6 = v9.i64[0];
      v11 = vextq_s8(v9, v9, 8uLL);
      xpc_connection_send_message_with_reply(v5, v4, 0, handler);

      for (i = 1; i != -1; --i)
      {
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2742D6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Invalid XPC connection.", buf, 2u);
    }

    dispatch_semaphore_signal(a1[2].i64[0]);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __58__WRM_UCMInterface_getWirelessFrequencyBandUpdatesForMIC___block_invoke_130(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(a1 + 32) checkConnection:v3])
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __58__WRM_UCMInterface_getWirelessFrequencyBandUpdatesForMIC___block_invoke_2;
    v8[3] = &unk_279ED61E8;
    v4 = v3;
    v5 = *(a1 + 48);
    v9 = v4;
    v10 = v5;
    [&unk_2883510F8 enumerateKeysAndObjectsUsingBlock:v8];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138412290;
      v12 = v6;
      _os_log_impl(&dword_2742D6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "getWirelessFrequencyBandUpdatesForMIC :%@", buf, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));

  v7 = *MEMORY[0x277D85DE8];
}

void __58__WRM_UCMInterface_getWirelessFrequencyBandUpdatesForMIC___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v8 = v5 && (xpc_dictionary_get_value(*(a1 + 32), [v5 UTF8String]), v7 = v6 = v5;
  v9 = [MEMORY[0x277CCABB0] numberWithBool:v8];
  [*(*(*(a1 + 40) + 8) + 40) setObject:v9 forKeyedSubscript:v10];
}

void __42__WRM_UCMInterface_sendULFrequencyUpdate___block_invoke(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_2742D6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "sendULFrequencyUpdate", v13, 2u);
  }

  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = xpc_dictionary_get_value(*(a1 + 32), "kWRMULFrequencyUpdate");
  v4 = v3;
  if (v3)
  {
    int64 = xpc_dictionary_get_int64(v3, "kWRMULBandInfoType");
    v6 = xpc_dictionary_get_double(v4, "kWRMULCenterFrequency");
    v7 = xpc_dictionary_get_double(v4, "kWRMULBandwidth");
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:int64];
    [v2 setObject:v8 forKeyedSubscript:@"BandInfoType"];

    v9 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
    [v2 setObject:v9 forKeyedSubscript:@"ULCenterFrequency"];

    v10 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
    [v2 setObject:v10 forKeyedSubscript:@"ULBandwidth"];

    v11 = *(*(a1 + 40) + 40);
    if (v11)
    {
      v12 = [v2 copy];
      (*(v11 + 16))(v11, v12);
    }
  }
}

void __54__WRM_UCMInterface_getWirelessULFrequencyBandUpdates___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    if (v2)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2742D6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Received args is not nil", buf, 2u);
      }

      *buf = xmmword_279ED6208;
      v3 = xpc_uint64_create(0xAF7uLL);
      v7[0] = v3;
      v7[1] = v2;
      v4 = xpc_dictionary_create(buf, v7, 2uLL);
      xpc_connection_send_message(*(*(*(a1 + 32) + 8) + 40), v4);

      for (i = 1; i != -1; --i)
      {
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2742D6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Invalid XPC connection.", buf, 2u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

@end