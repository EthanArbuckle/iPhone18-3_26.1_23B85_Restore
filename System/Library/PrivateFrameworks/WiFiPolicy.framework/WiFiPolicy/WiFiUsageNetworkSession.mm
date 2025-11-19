@interface WiFiUsageNetworkSession
- (BOOL)isSessionHarvestable;
- (WiFiUsageNetworkSession)initWithInterfaceName:(id)a3 andCapabilities:(id)a4;
- (void)displayStateDidChange:(BOOL)a3;
- (void)joinStateDidChange:(id)a3 withReason:(unint64_t)a4 lastDisconnectReason:(int64_t)a5 lastJoinFailure:(int64_t)a6 andNetworkDetails:(id)a7;
- (void)processForgetNetwork:(id)a3;
- (void)sessionDidEnd;
- (void)sessionDidStart;
@end

@implementation WiFiUsageNetworkSession

- (WiFiUsageNetworkSession)initWithInterfaceName:(id)a3 andCapabilities:(id)a4
{
  v15.receiver = self;
  v15.super_class = WiFiUsageNetworkSession;
  v4 = [(WiFiUsageSession *)&v15 initWithSessionType:3 andInterfaceName:a3 andCapabilities:a4];
  lastNetworkDetails = v4->_lastNetworkDetails;
  v4->_lastNetworkDetails = 0;

  v4->_linkUp = 0;
  v4->_networkUsageDuration = 0.0;
  v4->_dnuEnabled = 0;
  v4->_dnuEnabled = DiagnosticLogSubmissionEnabled();
  if (_os_feature_enabled_impl())
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.WiFiLinkState-Biome-Event", v6);
    WiFiLinkStateBiomeEventQueue = v4->_WiFiLinkStateBiomeEventQueue;
    v4->_WiFiLinkStateBiomeEventQueue = v7;
  }

  else
  {
    v9 = v4->_WiFiLinkStateBiomeEventQueue;
    v4->_WiFiLinkStateBiomeEventQueue = 0;

    NSLog(&cfstr_SDoNotAllocate.isa, "[WiFiUsageNetworkSession initWithInterfaceName:andCapabilities:]");
  }

  v10 = [MEMORY[0x277CBEB58] set];
  neighborBssList = v4->_neighborBssList;
  v4->_neighborBssList = v10;

  v12 = [MEMORY[0x277CBEB58] set];
  otherBssList = v4->_otherBssList;
  v4->_otherBssList = v12;

  return v4;
}

- (void)displayStateDidChange:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = WiFiUsageNetworkSession;
  [(WiFiUsageSession *)&v5 displayStateDidChange:?];
  if (!a3 && ![(WiFiUsageSession *)self poweredOn])
  {
    if ([(WiFiUsageSession *)self isSessionActive])
    {
      NSLog(&cfstr_SNetworkSessio.isa, "[WiFiUsageNetworkSession displayStateDidChange:]");
      [(WiFiUsageNetworkSession *)self sessionDidEnd];
    }
  }
}

- (void)joinStateDidChange:(id)a3 withReason:(unint64_t)a4 lastDisconnectReason:(int64_t)a5 lastJoinFailure:(int64_t)a6 andNetworkDetails:(id)a7
{
  v12 = a3;
  v13 = a7;
  v24.receiver = self;
  v24.super_class = WiFiUsageNetworkSession;
  [(WiFiUsageSession *)&v24 joinStateDidChange:v12 withReason:a4 lastDisconnectReason:a5 lastJoinFailure:a6 andNetworkDetails:v13];
  lastNetworkDetails = self->_lastNetworkDetails;
  if (v12)
  {
    v15 = lastNetworkDetails == 0;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  if (v15)
  {
    v17 = [(WiFiUsageSession *)self isSessionActive];
    lastNetworkDetails = self->_lastNetworkDetails;
    if (!lastNetworkDetails)
    {
      if (!v17)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

LABEL_20:
    v19 = [(WiFiUsageNetworkDetails *)lastNetworkDetails networkName];
    v20 = [v19 isEqual:v12];

    v21 = [(WiFiUsageSession *)self isSessionActive];
    if (v20)
    {
      if (((v16 | !v21) & 1) == 0)
      {
        goto LABEL_26;
      }

LABEL_25:
      NSLog(&cfstr_SNetworkSessio_0.isa, "[WiFiUsageNetworkSession joinStateDidChange:withReason:lastDisconnectReason:lastJoinFailure:andNetworkDetails:]");
      [(WiFiUsageNetworkSession *)self sessionDidStart];
      goto LABEL_26;
    }

    if (!v21 && !v17)
    {
      goto LABEL_25;
    }

LABEL_24:
    NSLog(&cfstr_SNetworkSessio.isa, "[WiFiUsageNetworkSession joinStateDidChange:withReason:lastDisconnectReason:lastJoinFailure:andNetworkDetails:]");
    [(WiFiUsageNetworkSession *)self sessionDidEnd];
    goto LABEL_25;
  }

  if (v12 || !lastNetworkDetails)
  {
    if (!v12 || !lastNetworkDetails)
    {
      goto LABEL_26;
    }

    v17 = 0;
    goto LABEL_20;
  }

  v18 = [(WiFiUsageSession *)self isSessionActive];
  if (!a6 && v18)
  {
    NSLog(&cfstr_SNetworkSessio.isa, "[WiFiUsageNetworkSession joinStateDidChange:withReason:lastDisconnectReason:lastJoinFailure:andNetworkDetails:]");
    [(WiFiUsageNetworkSession *)self sessionDidEnd];
  }

LABEL_26:
  if (v13)
  {
    v22 = [v13 copy];
    v23 = self->_lastNetworkDetails;
    self->_lastNetworkDetails = v22;
  }
}

- (void)processForgetNetwork:(id)a3
{
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    if (v4)
    {
      v5 = [v4 networkName];

      if (v5)
      {
        WiFiLinkStateBiomeEventQueue = self->_WiFiLinkStateBiomeEventQueue;
        if (WiFiLinkStateBiomeEventQueue)
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __48__WiFiUsageNetworkSession_processForgetNetwork___block_invoke;
          block[3] = &unk_2789C6630;
          v8 = v4;
          dispatch_async(WiFiLinkStateBiomeEventQueue, block);
        }

        else
        {
          NSLog(&cfstr_SWifilinkstate.isa, "[WiFiUsageNetworkSession processForgetNetwork:]");
        }
      }

      else
      {
        NSLog(&cfstr_SNetworknameNu.isa, "[WiFiUsageNetworkSession processForgetNetwork:]");
      }
    }

    else
    {
      NSLog(&cfstr_SWifiusagenetw.isa, "[WiFiUsageNetworkSession processForgetNetwork:]");
    }
  }

  else
  {
    NSLog(&cfstr_SDoNothingAsWi.isa, "[WiFiUsageNetworkSession processForgetNetwork:]");
  }
}

void __48__WiFiUsageNetworkSession_processForgetNetwork___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = __softlink__BiomeLibrary();
  v3 = [v2 Device];
  v4 = [v3 Wireless];
  v5 = [v4 WiFi];

  if (v5)
  {
    v6 = [v5 pruner];
    if (v6)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __48__WiFiUsageNetworkSession_processForgetNetwork___block_invoke_23;
      v9[3] = &unk_2789C7598;
      v10 = *(a1 + 32);
      [v6 deleteEventsPassingTest:v9];
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) networkName];
      *buf = 136315650;
      v12 = "[WiFiUsageNetworkSession processForgetNetwork:]_block_invoke";
      v13 = 2160;
      v14 = 1752392040;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: BMPruner NUll - SSID:%{mask.hash}@ ", buf, 0x20u);
    }

    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) networkName];
    *buf = 136315650;
    v12 = "[WiFiUsageNetworkSession processForgetNetwork:]_block_invoke";
    v13 = 2160;
    v14 = 1752392040;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: BMStream NUll - SSID:%{mask.hash}@ ", buf, 0x20u);
LABEL_8:
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __48__WiFiUsageNetworkSession_processForgetNetwork___block_invoke_23(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [*(a1 + 32) networkName];
  v5 = [v3 SSID];
  v6 = [v4 isEqual:v5];

  return v6;
}

void __116__WiFiUsageNetworkSession_linkStateDidChange_isInvoluntary_linkChangeReason_linkChangeSubreason_withNetworkDetails___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2050000000;
  v2 = getBMDeviceWiFiClass_softClass;
  v24 = getBMDeviceWiFiClass_softClass;
  if (!getBMDeviceWiFiClass_softClass)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __getBMDeviceWiFiClass_block_invoke;
    v26 = &unk_2789C75C0;
    v27 = &v21;
    __getBMDeviceWiFiClass_block_invoke(buf);
    v2 = v22[3];
  }

  v3 = v2;
  _Block_object_dispose(&v21, 8);
  v4 = [v2 alloc];
  v5 = [*(a1 + 32) networkName];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
  v7 = [v4 initWithSSID:v5 starting:v6];

  if (v7)
  {
    v8 = __softlink__BiomeLibrary();
    v9 = [v8 Device];
    v10 = [v9 Wireless];
    v11 = [v10 WiFi];

    if (v11)
    {
      v12 = [v11 source];
      v13 = v12;
      if (v12)
      {
        [v12 sendEvent:v7];
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v18 = [*(a1 + 32) networkName];
          v19 = *(a1 + 40);
          *buf = 136315906;
          *&buf[4] = "[WiFiUsageNetworkSession linkStateDidChange:isInvoluntary:linkChangeReason:linkChangeSubreason:withNetworkDetails:]_block_invoke";
          *&buf[12] = 2160;
          *&buf[14] = 1752392040;
          *&buf[22] = 2112;
          v26 = v18;
          LOWORD(v27) = 1024;
          *(&v27 + 2) = v19;
          _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: BMSource NUll - SSID:%{mask.hash}@ linkstate:%d ", buf, 0x26u);
        }
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v16 = [*(a1 + 32) networkName];
      v17 = *(a1 + 40);
      *buf = 136315906;
      *&buf[4] = "[WiFiUsageNetworkSession linkStateDidChange:isInvoluntary:linkChangeReason:linkChangeSubreason:withNetworkDetails:]_block_invoke";
      *&buf[12] = 2160;
      *&buf[14] = 1752392040;
      *&buf[22] = 2112;
      v26 = v16;
      LOWORD(v27) = 1024;
      *(&v27 + 2) = v17;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: BMStream NUll - SSID:%{mask.hash}@ linkstate:%d ", buf, 0x26u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v14 = [*(a1 + 32) networkName];
    v15 = *(a1 + 40);
    *buf = 136315906;
    *&buf[4] = "[WiFiUsageNetworkSession linkStateDidChange:isInvoluntary:linkChangeReason:linkChangeSubreason:withNetworkDetails:]_block_invoke";
    *&buf[12] = 2160;
    *&buf[14] = 1752392040;
    *&buf[22] = 2112;
    v26 = v14;
    LOWORD(v27) = 1024;
    *(&v27 + 2) = v15;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: BMDeviceWiFi Allocation failed SSID:%{mask.hash}@ linkstate:%d ", buf, 0x26u);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)sessionDidStart
{
  v3.receiver = self;
  v3.super_class = WiFiUsageNetworkSession;
  [(WiFiUsageSession *)&v3 sessionDidStart];
  self->_networkUsageDuration = 0.0;
  [(NSMutableSet *)self->_neighborBssList removeAllObjects];
  [(NSMutableSet *)self->_otherBssList removeAllObjects];
}

- (void)sessionDidEnd
{
  if (self->_networkUsageDuration != 0.0)
  {
    [(WiFiUsageSession *)self setSessionDuration:?];
    [(WiFiUsageSession *)self setSessionStartTime:0];
  }

  [(WiFiUsageSession *)self setNeighborBssCount:[(NSMutableSet *)self->_neighborBssList count]];
  [(WiFiUsageSession *)self setOtherBssCount:[(NSMutableSet *)self->_otherBssList count]];
  v5.receiver = self;
  v5.super_class = WiFiUsageNetworkSession;
  [(WiFiUsageSession *)&v5 sessionDidEnd];
  if ([(WiFiUsageNetworkSession *)self isSessionHarvestable])
  {
    v3 = [[WiFiUsageConnectionQualityRecord alloc] initWithUsageSession:self andNeighborBssList:self->_neighborBssList andOtherBssList:self->_otherBssList];
    v4 = v3;
    if (v3)
    {
      [(WiFiUsageConnectionQualityRecord *)v3 queryNetworkPerformanceFeedAndSubmitToGeoWiFi];
    }
  }
}

- (BOOL)isSessionHarvestable
{
  v3 = [(WiFiUsageSession *)self networkDetails];
  if ([(WiFiUsageSession *)self privacyRestrictionDisabled])
  {
    goto LABEL_16;
  }

  if (!self->_dnuEnabled || v3 == 0)
  {
    goto LABEL_22;
  }

  if ([v3 isHidden])
  {
    NSLog(&cfstr_SHiddenNetwork.isa, "[WiFiUsageNetworkSession isSessionHarvestable]");
    goto LABEL_22;
  }

  if ([v3 isHome])
  {
    NSLog(&cfstr_SHomeNetworkNo.isa, "[WiFiUsageNetworkSession isSessionHarvestable]");
    goto LABEL_22;
  }

  if ([v3 hasNoMap])
  {
    NSLog(&cfstr_SPrivateNetwor.isa, "[WiFiUsageNetworkSession isSessionHarvestable]");
    goto LABEL_22;
  }

  if ([v3 isPersonalHotspot])
  {
    NSLog(&cfstr_SPersonalHotsp.isa, "[WiFiUsageNetworkSession isSessionHarvestable]");
    goto LABEL_22;
  }

  v5 = [v3 connectedBss];
  if ([v5 networkAccessCode] != 2)
  {
    v6 = [v3 connectedBss];
    v7 = [v6 networkAccessCode];

    if (v7 == 3)
    {
      goto LABEL_16;
    }

    if ([v3 usageRank] <= 3)
    {
      NSLog(&cfstr_STopNetworkNot.isa, "[WiFiUsageNetworkSession isSessionHarvestable]");
    }

    else
    {
      [(WiFiUsageSession *)self sessionDuration];
      if (v8 <= 60.0)
      {
        NSLog(&cfstr_SShortDataSess.isa, "[WiFiUsageNetworkSession isSessionHarvestable]");
      }

      else
      {
        if ([WiFiUsagePrivacyFilter canPerformActionWithSampleRate:0])
        {
          goto LABEL_16;
        }

        NSLog(&cfstr_SLossCoinTossN.isa, "[WiFiUsageNetworkSession isSessionHarvestable]");
      }
    }

LABEL_22:
    v9 = 0;
    goto LABEL_17;
  }

LABEL_16:
  v9 = 1;
LABEL_17:

  return v9;
}

@end