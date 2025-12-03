@interface WiFiUsageLinkSession
- (WiFiUsageLinkSession)initWithInterfaceName:(id)name andCapabilities:(id)capabilities;
- (void)addDictionary:(id)dictionary withKeysPrefix:(id)prefix toFlatDictionary:(id)flatDictionary;
- (void)applicationStateDidChange:(id)change withAttributes:(id)attributes;
- (void)faultEventDetected:(unint64_t)detected event:(id)event;
- (void)getLazyNSNumberPreference:(id)preference exists:(id)exists;
- (void)joinStateDidChange:(id)change withReason:(unint64_t)reason lastDisconnectReason:(int64_t)disconnectReason lastJoinFailure:(int64_t)failure andNetworkDetails:(id)details;
- (void)linkQualityDidChange:(id)change;
- (void)performLinkTestFor:(id)for isTriggeredByFault:(BOOL)fault;
- (void)processDHCPChanges:(id)changes;
- (void)processIPv4Changes:(id)changes;
- (void)processIPv6Changes:(id)changes;
- (void)rangingCompleted;
- (void)retryLinkTestInOneMinute;
@end

@implementation WiFiUsageLinkSession

- (WiFiUsageLinkSession)initWithInterfaceName:(id)name andCapabilities:(id)capabilities
{
  v13.receiver = self;
  v13.super_class = WiFiUsageLinkSession;
  v4 = [(WiFiUsageSession *)&v13 initWithSessionType:4 andInterfaceName:name andCapabilities:capabilities];
  v4->_linkUp = 0;
  lastLinkTest = v4->_lastLinkTest;
  v4->_lastLinkTest = 0;

  v4->_numLinkTestFailures = 0;
  v4->_didHandleFaultEvent = 0;
  v4->_didBecomePrimary = 0;
  v4->_foundSuccessfulLinkTest = 0;
  v4->_numLinkRecoverySkips = 0;
  v4->_periodicLinkTestInterval = 60;
  lastFaultEventHandled = v4->_lastFaultEventHandled;
  v4->_lastFaultEventHandled = 0;

  v4->_band = 3;
  faultEventSoftError = v4->_faultEventSoftError;
  v4->_faultEventSoftError = 0;

  joinFailSoftError = v4->_joinFailSoftError;
  v4->_joinFailSoftError = 0;

  [(WiFiUsageSession *)v4 setConsecutiveJoinFailureCount:0];
  [(WiFiUsageSession *)v4 setLinkRecoveryDisabled:0];
  linkTestResult = v4->_linkTestResult;
  v4->_linkTestResult = 0;

  v4->_joinSeqNo = 0;
  array = [MEMORY[0x277CBEB18] array];
  deferredFailureSessions = v4->_deferredFailureSessions;
  v4->_deferredFailureSessions = array;

  v4->_lastSubmittedSessionSeqNo = 0;
  v4->_joinAttemptedBeforeLinkDown = 0;
  v4->_faultCountOnBss = 0;
  return v4;
}

- (void)joinStateDidChange:(id)change withReason:(unint64_t)reason lastDisconnectReason:(int64_t)disconnectReason lastJoinFailure:(int64_t)failure andNetworkDetails:(id)details
{
  v80 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  detailsCopy = details;
  if (failure)
  {
    v14 = ![(WiFiUsageSession *)self isSessionActive];
  }

  else
  {
    v14 = 0;
  }

  self->_joinAttemptedBeforeLinkDown = [(WiFiUsageSession *)self isSessionActive];
  if (v14)
  {
    [(WiFiUsageSession *)self sessionDidStart];
  }

  else if (changeCopy)
  {
    disconnectReasonCopy = disconnectReason;
    failureCopy = failure;
    v55 = detailsCopy;
    reasonCopy = reason;
    selfCopy = self;
    v54 = changeCopy;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v15 = self->_deferredFailureSessions;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v62 objects:v79 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v63;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v63 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v62 + 1) + 8 * i);
          completionHandler = [v20 completionHandler];
          if (completionHandler)
          {
            v22 = completionHandler;
            completionQueue = [v20 completionQueue];

            if (completionQueue)
            {
              completionQueue2 = [v20 completionQueue];
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __109__WiFiUsageLinkSession_joinStateDidChange_withReason_lastDisconnectReason_lastJoinFailure_andNetworkDetails___block_invoke;
              block[3] = &unk_2789C6630;
              block[4] = v20;
              dispatch_async(completionQueue2, block);
            }
          }
        }

        v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v62 objects:v79 count:16];
      }

      while (v17);
    }

    self = selfCopy;
    [(NSMutableArray *)selfCopy->_deferredFailureSessions removeAllObjects];
    ++selfCopy->_joinSeqNo;
    changeCopy = v54;
    detailsCopy = v55;
    disconnectReason = disconnectReasonCopy;
    failure = failureCopy;
    reason = reasonCopy;
    v14 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    disconnectReasonCopy2 = disconnectReason;
    if (changeCopy)
    {
      v26 = "started";
    }

    else
    {
      v26 = "stopped";
    }

    joinSeqNo = self->_joinSeqNo;
    [WiFiUsageSession joinReasonString:reason];
    v28 = v58 = reason;
    *buf = 136316418;
    v68 = "[WiFiUsageLinkSession joinStateDidChange:withReason:lastDisconnectReason:lastJoinFailure:andNetworkDetails:]";
    v69 = 2080;
    v70 = v26;
    disconnectReason = disconnectReasonCopy2;
    v71 = 2112;
    v72 = changeCopy;
    v73 = 1024;
    v74 = joinSeqNo;
    v75 = 2112;
    v76 = v28;
    v77 = 1024;
    failureCopy2 = failure;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: %s joining %@, seqNo %d, reason %@, failure %d", buf, 0x36u);

    reason = v58;
  }

  v60.receiver = self;
  v60.super_class = WiFiUsageLinkSession;
  [(WiFiUsageSession *)&v60 joinStateDidChange:changeCopy withReason:reason lastDisconnectReason:disconnectReason lastJoinFailure:failure andNetworkDetails:detailsCopy];
  if (v14)
  {
    v59.receiver = self;
    v59.super_class = WiFiUsageLinkSession;
    [(WiFiUsageSession *)&v59 updateAssociatedNetworkDetails:detailsCopy];
    if ((!failure && [(WiFiUsageSession *)self consecutiveJoinFailureCount]> 4 || [(WiFiUsageSession *)self consecutiveJoinFailureCount]>= 0xA) && !self->_joinFailSoftError)
    {
      v29 = [[WiFiSoftError alloc] initWithName:@"JoinFailure"];
      joinFailSoftError = self->_joinFailSoftError;
      self->_joinFailSoftError = v29;

      [MEMORY[0x277CBEB38] dictionary];
      v32 = v31 = failure;
      reasonCopy2 = reason;
      v34 = [WiFiUsagePrivacyFilter numberWithInstances:[(WiFiUsageSession *)self consecutiveJoinFailureCount]];
      [v32 setObject:v34 forKeyedSubscript:@"consecutiveJoinFailureCount"];

      [WiFiUsageLQMTransformations numberForKeyPath:@"rssiAtSessionStart" ofObject:self];
      v35 = v56 = detailsCopy;
      [v32 setObject:v35 forKeyedSubscript:@"rssiAtSessionStart"];

      networkDetails = [(WiFiUsageSession *)self networkDetails];
      connectedBss = [networkDetails connectedBss];
      [connectedBss bssid];
      v39 = v38 = self;
      v40 = [WiFiUsagePrivacyFilter sanitizedOUI:v39];
      [v32 setObject:v40 forKeyedSubscript:@"oui"];

      self = v38;
      v41 = [WiFiUsageSession joinReasonString:reasonCopy2];
      [v32 setObject:v41 forKeyedSubscript:@"joinReason"];

      networkDetails2 = [(WiFiUsageSession *)v38 networkDetails];
      connectedBss2 = [networkDetails2 connectedBss];
      apProfile = [connectedBss2 apProfile];
      [v32 setObject:apProfile forKeyedSubscript:@"apProfile"];

      v66 = v32;
      v45 = [MEMORY[0x277CBEA60] arrayWithObjects:&v66 count:1];
      v46 = v38->_joinFailSoftError;
      v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v31];
      v48 = [(WiFiSoftError *)v46 submitABCReportWithReason:v47 event:v45];

      failure = v31;
      detailsCopy = v56;
    }

    [(WiFiUsageSession *)self sessionDidEnd];
    self->_lastSubmittedSessionSeqNo = self->_joinSeqNo;
    [(NSMutableArray *)self->_deferredFailureSessions removeAllObjects];
  }

  if (!changeCopy && !failure)
  {
    v49 = self->_joinFailSoftError;
    self->_joinFailSoftError = 0;
  }

  v50 = *MEMORY[0x277D85DE8];
}

void __109__WiFiUsageLinkSession_joinStateDidChange_withReason_lastDisconnectReason_lastJoinFailure_andNetworkDetails___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) completionHandler];
  v2 = [*(a1 + 32) completionContext];
  v3[2](v3, v2, *(a1 + 32));
}

- (void)applicationStateDidChange:(id)change withAttributes:(id)attributes
{
  changeCopy = change;
  attributesCopy = attributes;
  date = [MEMORY[0x277CBEAA8] date];
  if (changeCopy)
  {
    if (([changeCopy isEqualToString:@"com.apple.springboard"] & 1) == 0)
    {
      if ([changeCopy isEqualToString:@"com.apple.appleseed.FeedbackAssistant"])
      {
        if (!self->_lastFaultIndicationTime || ([date timeIntervalSinceDate:?], v9 > 60.0))
        {
          if (self->_linkUp && self->_didBecomePrimary)
          {
            objc_storeStrong(&self->_lastFaultIndicationTime, date);
            [(WiFiUsageLinkSession *)self performLinkTestFor:@"FeedbackAssistant" isTriggeredByFault:0];
          }
        }
      }
    }
  }

  v10.receiver = self;
  v10.super_class = WiFiUsageLinkSession;
  [(WiFiUsageSession *)&v10 applicationStateDidChange:changeCopy withAttributes:attributesCopy];
}

- (void)retryLinkTestInOneMinute
{
  NSLog(&cfstr_SUWaiting1Minu.isa, a2, "[WiFiUsageLinkSession retryLinkTestInOneMinute]", 398);
  objc_initWeak(&location, self);
  v3 = dispatch_time(0, 60000000000);
  completionQueue = [(WiFiUsageSession *)self completionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__WiFiUsageLinkSession_retryLinkTestInOneMinute__block_invoke;
  block[3] = &unk_2789C68F8;
  objc_copyWeak(&v6, &location);
  dispatch_after(v3, completionQueue, block);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __48__WiFiUsageLinkSession_retryLinkTestInOneMinute__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained[12056])
  {
    v2 = @"didHandleFaultEvent";
  }

  else
  {
    v2 = @"retryLinkTest";
  }

  [WeakRetained performLinkTestFor:v2 isTriggeredByFault:0];
}

- (void)faultEventDetected:(unint64_t)detected event:(id)event
{
  eventCopy = event;
  date = [MEMORY[0x277CBEAA8] date];
  v37.receiver = self;
  v37.super_class = WiFiUsageLinkSession;
  [(WiFiUsageSession *)&v37 faultEventDetected:detected event:eventCopy];
  v8 = 0;
  if (detected > 24)
  {
    if (detected <= 34)
    {
      if (detected == 25)
      {
        v8 = @"Siri Timed Out";
      }

      else
      {
        if (detected != 26)
        {
          goto LABEL_25;
        }

        v8 = @"Apsd Timed Out";
      }
    }

    else
    {
      switch(detected)
      {
        case '#':
          networkDetails = [(WiFiUsageSession *)self networkDetails];
          if ([networkDetails isCarPlay])
          {

            goto LABEL_65;
          }

          networkDetails2 = [(WiFiUsageSession *)self networkDetails];
          isPersonalHotspot = [networkDetails2 isPersonalHotspot];

          if (isPersonalHotspot)
          {
            goto LABEL_65;
          }

          v8 = @"Primary Not Set";
          break;
        case '$':
          v8 = @"Rx Data Stall";
          if (self->_lastFaultIndicationTime)
          {
            [date timeIntervalSinceDate:?];
            if (v28 <= 60.0)
            {
              [date timeIntervalSinceDate:self->_lastFaultIndicationTime];
              NSLog(&cfstr_SKwifiusagefau_4.isa, "[WiFiUsageLinkSession faultEventDetected:event:]", v32);
              goto LABEL_65;
            }
          }

          didBecomePrimary = self->_didBecomePrimary;
          if (!self->_linkUp || !didBecomePrimary)
          {
            NSLog(&cfstr_SKwifiusagefau_3.isa, "[WiFiUsageLinkSession faultEventDetected:event:]", self->_linkUp, didBecomePrimary);
            goto LABEL_65;
          }

          goto LABEL_57;
        case '%':
          v8 = @"PH Client Info Fetch Failure";
          break;
        default:
          goto LABEL_25;
      }
    }

    v10 = [[WiFiSoftError alloc] initWithName:v8];
    faultEventSoftError = self->_faultEventSoftError;
    self->_faultEventSoftError = v10;

    firstObject = [eventCopy firstObject];
    v13 = firstObject;
    if (firstObject && ([firstObject objectForKeyedSubscript:@"context"], v14 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v14, (isKindOfClass & 1) != 0))
    {
      v16 = [v13 objectForKeyedSubscript:@"context"];
    }

    else
    {
      v16 = @"FaultEvent";
    }

    v17 = [(WiFiSoftError *)self->_faultEventSoftError submitABCReportWithReason:v16 event:eventCopy];

    goto LABEL_25;
  }

  if (detected <= 16)
  {
    if (detected == 10)
    {
      v9 = @"SlowWiFiAP";
      goto LABEL_38;
    }

    if (detected == 13)
    {
      goto LABEL_65;
    }

    goto LABEL_25;
  }

  if (detected == 17)
  {
    v9 = @"Arp Failure";
    goto LABEL_38;
  }

  if (detected == 18)
  {
    v9 = @"SlowWiFiDnsFailure";
    goto LABEL_38;
  }

  if (detected != 19)
  {
LABEL_25:
    if (detected > 25)
    {
      if (detected != 26)
      {
        goto LABEL_65;
      }

      if (self->_lastFaultIndicationTime)
      {
        [date timeIntervalSinceDate:?];
        if (v30 <= 600.0)
        {
          [date timeIntervalSinceDate:self->_lastFaultIndicationTime];
          NSLog(&cfstr_SKwifiusagefau_2.isa, "[WiFiUsageLinkSession faultEventDetected:event:]", v36);
          goto LABEL_65;
        }
      }

      v31 = self->_didBecomePrimary;
      if (!self->_linkUp || !v31)
      {
        NSLog(&cfstr_SKwifiusagefau_1.isa, "[WiFiUsageLinkSession faultEventDetected:event:]", self->_linkUp, v31);
        goto LABEL_65;
      }
    }

    else
    {
      if (detected != 25)
      {
        goto LABEL_65;
      }

      if (self->_lastFaultIndicationTime)
      {
        [date timeIntervalSinceDate:?];
        if (v18 <= 60.0)
        {
          [date timeIntervalSinceDate:self->_lastFaultIndicationTime];
          NSLog(&cfstr_SKwifiusagefau_0.isa, "[WiFiUsageLinkSession faultEventDetected:event:]", v35);
          goto LABEL_65;
        }
      }

      v19 = self->_didBecomePrimary;
      if (!self->_linkUp || !v19)
      {
        NSLog(&cfstr_SKwifiusagefau.isa, "[WiFiUsageLinkSession faultEventDetected:event:]", self->_linkUp, v19);
        goto LABEL_65;
      }
    }

LABEL_57:
    objc_storeStrong(&self->_lastFaultIndicationTime, date);
    selfCopy2 = self;
    v26 = v8;
    v24 = 1;
    goto LABEL_58;
  }

  v9 = @"SlowWiFiDUT";
LABEL_38:
  if (self->_lastFaultIndicationTime && (self->_faultCountOnBss ? (v21 = 600) : (v21 = 60), [date timeIntervalSinceDate:?], v22 <= v21))
  {
    [date timeIntervalSinceDate:self->_lastFaultIndicationTime];
    NSLog(&cfstr_SFaultTypeLuRe_0.isa, "[WiFiUsageLinkSession faultEventDetected:event:]", detected, v9, v27);
  }

  else
  {
    v23 = self->_didBecomePrimary;
    if (self->_linkUp && v23)
    {
      objc_storeStrong(&self->_lastFaultIndicationTime, date);
      ++self->_faultCountOnBss;
      v24 = detected == 18;
      selfCopy2 = self;
      v26 = v9;
LABEL_58:
      [(WiFiUsageLinkSession *)selfCopy2 performLinkTestFor:v26 isTriggeredByFault:v24];
      goto LABEL_65;
    }

    NSLog(&cfstr_SFaultTypeLuRe.isa, "[WiFiUsageLinkSession faultEventDetected:event:]", detected, v9, self->_linkUp, v23);
  }

LABEL_65:
}

- (void)performLinkTestFor:(id)for isTriggeredByFault:(BOOL)fault
{
  forCopy = for;
  v7 = forCopy;
  if (self->_linkUp && self->_didBecomePrimary)
  {
    NSLog(&cfstr_SUReasonIntern.isa, "[WiFiUsageLinkSession performLinkTestFor:isTriggeredByFault:]", 577, forCopy, +[WiFiUsagePrivacyFilter isInternalInstall]);
    if (+[WiFiUsagePrivacyFilter isInternalInstall])
    {
      date = [MEMORY[0x277CBEAA8] date];
      objc_storeStrong(&self->_lastLinkTest, date);
      v9 = +[WiFiPolicyNetworkActivityTracing sharedNetworkActivityTracing];
      hasActivitiesRunning = [v9 hasActivitiesRunning];

      if ((hasActivitiesRunning & 1) == 0)
      {
        v11 = +[WiFiPolicyNetworkActivityTracing sharedNetworkActivityTracing];
        [v11 networkActivityStart:1 activate:1];

        linkTestResult = self->_linkTestResult;
        self->_linkTestResult = 0;

        dictionary = [MEMORY[0x277CBEB38] dictionary];
        v14 = self->_linkTestResult;
        self->_linkTestResult = dictionary;
      }

      v15 = [WFMeasure alloc];
      lastFaultEventHandledOptions = self->_lastFaultEventHandledOptions;
      interfaceName = [(WiFiUsageSession *)self interfaceName];
      v18 = [(WFMeasure *)v15 initWithType:2 andReason:v7 prevTestedOptions:lastFaultEventHandledOptions andInterfaceName:interfaceName];

      if (v18)
      {
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __62__WiFiUsageLinkSession_performLinkTestFor_isTriggeredByFault___block_invoke;
        v27[3] = &unk_2789C6948;
        faultCopy = fault;
        v28 = v7;
        selfCopy = self;
        completionQueue = [(WiFiUsageSession *)self completionQueue];
        [(WFMeasure *)v18 start:v27 withCompletionQueue:completionQueue];
      }
    }

    else
    {
      NSLog(&cfstr_SRejectedDueTo.isa, "[WiFiUsageLinkSession performLinkTestFor:isTriggeredByFault:]");
    }
  }

  else if (self->_didHandleFaultEvent && [forCopy isEqualToString:@"didHandleFaultEvent"])
  {
    NSLog(&cfstr_SULinkNotReady.isa, "[WiFiUsageLinkSession performLinkTestFor:isTriggeredByFault:]", 940, self->_lastFaultEventHandledReason);
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    v21 = dictionary2;
    if (self->_didBecomePrimary)
    {
      v22 = @"YES";
    }

    else
    {
      v22 = @"NO";
    }

    [dictionary2 setObject:v22 forKey:@"DidBecomePrimary"];
    if (self->_linkUp)
    {
      v23 = @"YES";
    }

    else
    {
      v23 = @"NO";
    }

    [v21 setObject:v23 forKey:@"LinkUp"];
    [(WiFiUsageLinkSession *)self addDictionary:v21 withKeysPrefix:@"FinalResults_" toFlatDictionary:self->_linkTestResult];
    v24 = +[WiFiPolicyNetworkActivityTracing sharedNetworkActivityTracing];
    [v24 networkActivityStop:1 withReason:3 withClientMetric:"linkTestResults" withClientDict:self->_linkTestResult andError:0];

    v25 = self->_linkTestResult;
    self->_linkTestResult = 0;

    self->_didHandleFaultEvent = 0;
    lastFaultEventHandledReason = self->_lastFaultEventHandledReason;
    self->_lastFaultEventHandledReason = 0;

    self->_lastFaultEventHandledOptions = 0;
    self->_numLinkTestFailures = 0;
  }
}

void __62__WiFiUsageLinkSession_performLinkTestFor_isTriggeredByFault___block_invoke(uint64_t a1, void *a2)
{
  v138[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 statusForDNS];
  v5 = [v3 statusForLocal];
  v6 = [v3 statusForInternet];
  v7 = [v3 dnsServers];
  if (v7)
  {
    v8 = [v3 dnsServers];
    v100 = [v8 count] == 0;
  }

  else
  {
    v100 = 1;
  }

  v9 = [v3 gatewayAddress];
  if (v9)
  {
    v10 = [v3 gatewayAddress];
    v99 = [v10 length] == 0;
  }

  else
  {
    v99 = 1;
  }

  v11 = [v3 statusForSiriTCP];
  v12 = [v3 statusForSiriTLS];
  v13 = [MEMORY[0x277CBEB38] dictionary];
  v14 = [MEMORY[0x277CCAB68] stringWithString:@"LinkTestFailure"];
  [v14 appendFormat:@"_%@", *(a1 + 32)];
  v102 = (a1 + 32);
  [v13 setObject:*(a1 + 32) forKey:@"Invoke"];
  if (v4)
  {
    [v13 setObject:v4 forKey:@"DNS"];
  }

  if (v5)
  {
    [v13 setObject:v5 forKey:@"Local"];
  }

  if (v6)
  {
    [v13 setObject:v6 forKey:@"Internet"];
  }

  if (v11)
  {
    [v13 setObject:v11 forKey:@"SiriTCP"];
    if (!v12)
    {
      v101 = 0;
LABEL_18:
      v15 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v3, "siriTrafficClass")}];
      [v13 setObject:v15 forKey:@"SiriTrafficClass"];

      goto LABEL_19;
    }

LABEL_17:
    [v13 setObject:v12 forKey:@"SiriTLS"];
    v101 = 1;
    goto LABEL_18;
  }

  if (v12)
  {
    goto LABEL_17;
  }

  v101 = 0;
LABEL_19:
  if ([v3 backhaulResultsValid])
  {
    v16 = [v3 downloadError];

    v17 = &kWFMeasureStatusBroken;
    if (!v16)
    {
      v17 = &kWFMeasureStatusOK;
    }

    [v13 setObject:*v17 forKey:@"Backhaul"];
  }

  if (*(a1 + 48) == 1 && [v3 seenSpecificAcFailure])
  {
    v18 = [v3 statusForAcFailure];
    [v13 setObject:v18 forKey:@"FltBadAC"];
  }

  v105 = v11;
  v106 = v5;
  v107 = v12;
  v108 = v6;
  if (v4 == kWFMeasureStatusOK)
  {
    v104 = 0;
    v28 = v4;
  }

  else
  {
    v19 = kWFMeasureStatusBroken;
    if (v4 == kWFMeasureStatusBroken)
    {
      v20 = [MEMORY[0x277CCAB98] defaultCenter];
      v21 = *(a1 + 40);
      v138[0] = &unk_2848B95F0;
      v137[0] = @"SessionNotificationFaultType";
      v137[1] = @"SessionNotificationInterfaceName";
      v22 = [v21 interfaceName];
      v138[1] = v22;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v138 forKeys:v137 count:2];
      v24 = v21;
      v12 = v107;
      [v20 postNotificationName:@"SessionNotificationFaultEventDetected" object:v24 userInfo:v23];

      v5 = v106;
      v6 = v108;

      v19 = kWFMeasureStatusBroken;
    }

    if (v4)
    {
      v25 = v4 == v19;
    }

    else
    {
      v25 = 1;
    }

    v26 = v25;
    v104 = v26;
    if (v25)
    {
      if (v4)
      {
        v27 = @"_DNS";
      }

      else if (v100 && v99)
      {
        v27 = @"_DNSNoGDNS";
      }

      else
      {
        v29 = @"_DNSNil";
        if (v99)
        {
          v29 = @"_DNSNoG";
        }

        if (v100)
        {
          v27 = @"_DNSNoDNS";
        }

        else
        {
          v27 = v29;
        }
      }

      [v14 appendString:v27];
    }

    NSLog(&cfstr_SStatusfordnsL.isa, "[WiFiUsageLinkSession performLinkTestFor:isTriggeredByFault:]_block_invoke", v4, v14);
    v28 = kWFMeasureStatusOK;
  }

  v103 = v4;
  if (v6 == v28)
  {
    v37 = 0;
    v39 = v6;
  }

  else
  {
    v30 = kWFMeasureStatusBroken;
    if (v6 == kWFMeasureStatusBroken)
    {
      v31 = [MEMORY[0x277CCAB98] defaultCenter];
      v32 = *(a1 + 40);
      v136[0] = &unk_2848B9608;
      v135[0] = @"SessionNotificationFaultType";
      v135[1] = @"SessionNotificationInterfaceName";
      v33 = [v32 interfaceName];
      v136[1] = v33;
      v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v136 forKeys:v135 count:2];
      v35 = v32;
      v11 = v105;
      [v31 postNotificationName:@"SessionNotificationFaultEventDetected" object:v35 userInfo:v34];

      v6 = v108;
      v12 = v107;

      v5 = v106;
      v30 = kWFMeasureStatusBroken;
    }

    if (v6)
    {
      v36 = v6 == v30;
    }

    else
    {
      v36 = 1;
    }

    v37 = v36;
    if (v36)
    {
      if (v6)
      {
        v38 = @"_Int";
      }

      else if (v100 && v99)
      {
        v38 = @"_IntNoGDNS";
      }

      else
      {
        v40 = @"_IntNil";
        if (v99)
        {
          v40 = @"_IntNoG";
        }

        if (v100)
        {
          v38 = @"_IntNoDNS";
        }

        else
        {
          v38 = v40;
        }
      }

      [v14 appendString:v38];
    }

    NSLog(&cfstr_SStatusforinte.isa, "[WiFiUsageLinkSession performLinkTestFor:isTriggeredByFault:]_block_invoke", v6, v14);
    v39 = kWFMeasureStatusOK;
  }

  if (v5 != v39)
  {
    v41 = kWFMeasureStatusBroken;
    if (v5 == kWFMeasureStatusBroken)
    {
      v42 = [MEMORY[0x277CCAB98] defaultCenter];
      v43 = *(a1 + 40);
      v134[0] = &unk_2848B9620;
      v133[0] = @"SessionNotificationFaultType";
      v133[1] = @"SessionNotificationInterfaceName";
      v44 = [v43 interfaceName];
      v134[1] = v44;
      v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v134 forKeys:v133 count:2];
      v46 = v43;
      v11 = v105;
      [v42 postNotificationName:@"SessionNotificationFaultEventDetected" object:v46 userInfo:v45];

      v6 = v108;
      v12 = v107;

      v5 = v106;
      v41 = kWFMeasureStatusBroken;
      if (!v106)
      {
        goto LABEL_81;
      }
    }

    else if (!v5)
    {
      goto LABEL_81;
    }

    if (v5 != v41)
    {
LABEL_84:
      NSLog(&cfstr_SStatusforloca.isa, "[WiFiUsageLinkSession performLinkTestFor:isTriggeredByFault:]_block_invoke", v5, v14);
      goto LABEL_85;
    }

LABEL_81:
    if ((v37 & 1) == 0)
    {
      NSLog(&cfstr_SWarningLocalT.isa, "[WiFiUsageLinkSession performLinkTestFor:isTriggeredByFault:]_block_invoke");
    }

    [v14 appendString:@"_Loc"];
    goto LABEL_84;
  }

LABEL_85:
  if (*(a1 + 48) == 1 && [v3 seenSpecificAcFailure])
  {
    v47 = [v3 statusForAcFailure];
    [v14 appendFormat:@"_FltBadAC %@", v47];

    NSLog(&cfstr_SFaultWithSeen.isa, "[WiFiUsageLinkSession performLinkTestFor:isTriggeredByFault:]_block_invoke", v3, v14);
    NSLog(&cfstr_SStatusforloca_0.isa, "[WiFiUsageLinkSession performLinkTestFor:isTriggeredByFault:]_block_invoke", v106, v14, v13);
  }

  v48 = kWFMeasureStatusOK;
  if (v11 && v11 != kWFMeasureStatusOK)
  {
    if (v11 == kWFMeasureStatusBroken)
    {
      v49 = [MEMORY[0x277CCAB98] defaultCenter];
      v50 = *(a1 + 40);
      v132[0] = &unk_2848B9638;
      v131[0] = @"SessionNotificationFaultType";
      v131[1] = @"SessionNotificationInterfaceName";
      v51 = [v50 interfaceName];
      v132[1] = v51;
      v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v132 forKeys:v131 count:2];
      v53 = v50;
      v11 = v105;
      [v49 postNotificationName:@"SessionNotificationFaultEventDetected" object:v53 userInfo:v52];

      v6 = v108;
      v12 = v107;
    }

    [v14 appendString:@"_SiriTCP"];
    NSLog(&cfstr_SStatusforsiri.isa, "[WiFiUsageLinkSession performLinkTestFor:isTriggeredByFault:]_block_invoke", v11, v14, v13);
    v48 = kWFMeasureStatusOK;
    v37 = 1;
  }

  v25 = v12 == v48;
  v54 = v101;
  if (v25)
  {
    v54 = 0;
  }

  if (v54 == 1)
  {
    if (v12 == kWFMeasureStatusBroken)
    {
      v55 = [MEMORY[0x277CCAB98] defaultCenter];
      v56 = *(a1 + 40);
      v130[0] = &unk_2848B9650;
      v129[0] = @"SessionNotificationFaultType";
      v129[1] = @"SessionNotificationInterfaceName";
      v57 = [v56 interfaceName];
      v130[1] = v57;
      v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v130 forKeys:v129 count:2];
      [v55 postNotificationName:@"SessionNotificationFaultEventDetected" object:v56 userInfo:v58];

      v6 = v108;
      v12 = v107;
    }

    [v14 appendString:@"_SiriTLS"];
    NSLog(&cfstr_SStatusforsiri_0.isa, "[WiFiUsageLinkSession performLinkTestFor:isTriggeredByFault:]_block_invoke", v12, v14, v13);
    v37 = 1;
  }

  if (*(a1 + 48) == 1 && [v3 seenSpecificAcFailure])
  {
    [v14 appendFormat:@"_FltBadAC"];
    NSLog(&cfstr_SFaultWithSeen_0.isa, "[WiFiUsageLinkSession performLinkTestFor:isTriggeredByFault:]_block_invoke", v3, v14, v13);
  }

  NSLog(&cfstr_SLqmWifi.isa, "[WiFiUsageLinkSession performLinkTestFor:isTriggeredByFault:]_block_invoke", v3);
  if (_os_feature_enabled_impl())
  {
    v59 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      v60 = [MEMORY[0x277D7B940] sharedDeviceAnalyticsClient];
      *buf = 136446978;
      v61 = @"NO";
      v122 = "[WiFiUsageLinkSession performLinkTestFor:isTriggeredByFault:]_block_invoke";
      if (v60)
      {
        v61 = @"YES";
      }

      v123 = 1024;
      v124 = 771;
      v125 = 2080;
      v126 = "[WiFiUsageLinkSession performLinkTestFor:isTriggeredByFault:]_block_invoke";
      v127 = 2112;
      v128 = v61;
      _os_log_impl(&dword_2332D7000, v59, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: Saving linkTest in DeviceStore: %@", buf, 0x26u);
    }

    v62 = [MEMORY[0x277D7B940] sharedDeviceAnalyticsClient];

    if (v62)
    {
      v63 = [MEMORY[0x277D7B940] sharedDeviceAnalyticsClient];
      v64 = *(*(a1 + 40) + 12040);
      v65 = [MEMORY[0x277CBEAA8] date];
      v109[0] = MEMORY[0x277D85DD0];
      v109[1] = 3221225472;
      v109[2] = __62__WiFiUsageLinkSession_performLinkTestFor_isTriggeredByFault___block_invoke_372;
      v109[3] = &unk_2789C6920;
      v117 = v100;
      v118 = v99;
      v110 = v3;
      v119 = v37;
      v111 = *(a1 + 32);
      v120 = *(a1 + 48);
      v112 = v103;
      v113 = v6;
      v114 = v106;
      v115 = v105;
      v116 = v107;
      [v63 linkTestEventOn:v64 at:v65 with:v109];
    }
  }

  v66 = *(a1 + 40);
  if ((v104 | v37) == 1)
  {
    ++*(v66 + 12048);
    NSLog(&cfstr_SULinkTestFail.isa, "[WiFiUsageLinkSession performLinkTestFor:isTriggeredByFault:]_block_invoke_2", 816, *(*(a1 + 40) + 12048), v14);
    v67 = @"FoundFailure";
  }

  else
  {
    *(v66 + 12057) = 1;
    *(*(a1 + 40) + 12048) = 0;
    NSLog(&cfstr_SULinkTestPass.isa, "[WiFiUsageLinkSession performLinkTestFor:isTriggeredByFault:]_block_invoke_2", 822);
    v67 = @"SuccessfulLinkTest";
  }

  [v13 setObject:@"YES" forKey:v67];
  v68 = *(a1 + 40);
  if (*(v68 + 12056) != 1)
  {
    if ((*(v68 + 12057) & 1) == 0)
    {
      v71 = *(v68 + 12064);
      if (v71 < 2)
      {
        *(v68 + 12064) = v71 + 1;
        NSLog(&cfstr_SULinkTestDidN.isa, "[WiFiUsageLinkSession performLinkTestFor:isTriggeredByFault:]_block_invoke", 922, *(*(a1 + 40) + 12064));
        [v13 setObject:@"YES" forKey:@"SkippingRecovery"];
        [*(a1 + 40) addDictionary:v13 withKeysPrefix:@"FinalResults_" toFlatDictionary:*(*(a1 + 40) + 12112)];
        v79 = +[WiFiPolicyNetworkActivityTracing sharedNetworkActivityTracing];
        [v79 networkActivityStop:1 withReason:4 withClientMetric:"linkTestResults" withClientDict:*(*(a1 + 40) + 12112) andError:0];

        *(*(a1 + 40) + 12096) = 0;
        v80 = *(a1 + 40);
        v81 = *(v80 + 12112);
        *(v80 + 12112) = 0;

LABEL_144:
        v69 = v108;
        goto LABEL_145;
      }
    }

    *(v68 + 12064) = 0;
    v72 = *(a1 + 40);
    v69 = v108;
    if (*(v72 + 12057))
    {
      if (v37)
      {
LABEL_120:
        v73 = (a1 + 32);
        if (!v104 || *(*(a1 + 40) + 12048) < 2uLL)
        {
          goto LABEL_136;
        }

LABEL_126:
        NSLog(&cfstr_SULinktestfail.isa, "[WiFiUsageLinkSession performLinkTestFor:isTriggeredByFault:]_block_invoke_2", 864);
        [v14 appendFormat:@"_MaxNonCrit"];
        v73 = (a1 + 32);
        goto LABEL_136;
      }
    }

    else
    {
      NSLog(&cfstr_SULinkTestHasN.isa, "[WiFiUsageLinkSession performLinkTestFor:isTriggeredByFault:]_block_invoke_2", 856, *(v72 + 12064));
      if (v37)
      {
        goto LABEL_120;
      }
    }

    v73 = (a1 + 32);
    if (v104)
    {
      if (*(*(a1 + 40) + 12048) > 1uLL)
      {
        goto LABEL_126;
      }

      if ((*(a1 + 48) & 1) == 0)
      {
        NSLog(&cfstr_SUFoundNonCrit.isa, "[WiFiUsageLinkSession performLinkTestFor:isTriggeredByFault:]_block_invoke", 886);
        [v13 setObject:@"YES" forKey:@"WillAttemptRetest"];
        [*(a1 + 40) addDictionary:v13 withKeysPrefix:@"BeforeNonCriticalFailureRetest_" toFlatDictionary:*(*(a1 + 40) + 12112)];
        *(*(a1 + 40) + 12096) = [v3 options];
        [*(a1 + 40) retryLinkTestInOneMinute];
        goto LABEL_145;
      }
    }

    else if ((v37 & 1) == 0 && (v82 = [v3 seenSpecificAcFailure], v73 = (a1 + 32), !v82) || (*(a1 + 48) & 1) == 0)
    {
      if (*(*(a1 + 40) + 12057) == 1)
      {
        NSLog(&cfstr_SUFoundSuccess.isa, "[WiFiUsageLinkSession performLinkTestFor:isTriggeredByFault:]_block_invoke", 895);
        [*(a1 + 40) addDictionary:v13 withKeysPrefix:@"FinalResults_" toFlatDictionary:*(*(a1 + 40) + 12112)];
        v83 = +[WiFiPolicyNetworkActivityTracing sharedNetworkActivityTracing];
        v84 = v83;
        v85 = *(*(a1 + 40) + 12112);
        v86 = 2;
      }

      else
      {
        NSLog(&cfstr_SUNotProceedin.isa, "[WiFiUsageLinkSession performLinkTestFor:isTriggeredByFault:]_block_invoke", 907);
        [v13 setObject:@"YES" forKey:@"LinkRecoverySkips"];
        [*(a1 + 40) addDictionary:v13 withKeysPrefix:@"FinalResults_" toFlatDictionary:*(*(a1 + 40) + 12112)];
        v83 = +[WiFiPolicyNetworkActivityTracing sharedNetworkActivityTracing];
        v84 = v83;
        v85 = *(*(a1 + 40) + 12112);
        v86 = 4;
      }

      [v83 networkActivityStop:1 withReason:v86 withClientMetric:"linkTestResults" withClientDict:v85 andError:0];

      *(*(a1 + 40) + 12096) = 0;
      v95 = *(a1 + 40);
      v96 = *(v95 + 12112);
      *(v95 + 12112) = 0;

      goto LABEL_145;
    }

LABEL_136:
    v87 = v73;
    v88 = [MEMORY[0x277CCACA8] stringWithFormat:@"LinkTestFailure_%@", *v73];
    if ([v14 isEqualToString:v88])
    {
      NSLog(&cfstr_SUAttemptingTo.isa, "[WiFiUsageLinkSession performLinkTestFor:isTriggeredByFault:]_block_invoke_2", 871, v14, *v87);
      v97 = MEMORY[0x277D86220];
      v98 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v97, OS_LOG_TYPE_FAULT))
      {
        __62__WiFiUsageLinkSession_performLinkTestFor_isTriggeredByFault___block_invoke_cold_1(v14, v102);
      }

      __assert_rtn("[WiFiUsageLinkSession performLinkTestFor:isTriggeredByFault:]_block_invoke", "WiFiUsageLinkSession.m", 873, "false");
    }

    if (v104)
    {
      v89 = *(*(a1 + 40) + 12048) > 1uLL;
    }

    else if (v37)
    {
      v89 = 0;
    }

    else
    {
      v90 = [v3 seenSpecificAcFailure];
      v89 = 0;
      v91 = 0;
      if (!v90)
      {
LABEL_143:
        NSLog(&cfstr_SUWillInduceFa.isa, "[WiFiUsageLinkSession performLinkTestFor:isTriggeredByFault:]_block_invoke", 877, v14, v37, v89, v91);
        [v13 setObject:@"YES" forKey:@"WillInduceFaultEvent"];
        [*(a1 + 40) addDictionary:v13 withKeysPrefix:@"BeforeInduceingFault_" toFlatDictionary:*(*(a1 + 40) + 12112)];
        *(*(a1 + 40) + 12096) = [v3 options];
        v92 = *(a1 + 40);
        v93 = [MEMORY[0x277CCACA8] stringWithString:v14];
        [v92 handleFaultEventWithReason:v93];

        goto LABEL_144;
      }
    }

    v91 = *(a1 + 48);
    goto LABEL_143;
  }

  NSLog(&cfstr_SULinkTestComp.isa, "[WiFiUsageLinkSession performLinkTestFor:isTriggeredByFault:]_block_invoke_2", 828, *v102);
  v69 = v108;
  if ([*v102 isEqualToString:@"didHandleFaultEvent"])
  {
    if ((v104 | v37))
    {
      [v13 setObject:@"YES" forKey:@"FaultEventLinkNotRecovered"];
      NSLog(&cfstr_SULinkTestFail_0.isa, "[WiFiUsageLinkSession performLinkTestFor:isTriggeredByFault:]_block_invoke_2", 837, *(*(a1 + 40) + 12088));
      v70 = 3;
    }

    else
    {
      [v13 setObject:@"YES" forKey:@"FaultEventRecoveredLink"];
      NSLog(&cfstr_SULinkTestPass_0.isa, "[WiFiUsageLinkSession performLinkTestFor:isTriggeredByFault:]_block_invoke_2", 834, *(*(a1 + 40) + 12088));
      v70 = 2;
    }

    [*(a1 + 40) addDictionary:v13 withKeysPrefix:@"FinalResults_" toFlatDictionary:*(*(a1 + 40) + 12112)];
    v74 = +[WiFiPolicyNetworkActivityTracing sharedNetworkActivityTracing];
    [v74 networkActivityStop:1 withReason:v70 withClientMetric:"linkTestResults" withClientDict:*(*(a1 + 40) + 12112) andError:0];

    v75 = *(a1 + 40);
    v76 = *(v75 + 12112);
    *(v75 + 12112) = 0;

    *(*(a1 + 40) + 12056) = 0;
    v77 = *(a1 + 40);
    v78 = *(v77 + 12088);
    *(v77 + 12088) = 0;

    *(*(a1 + 40) + 12096) = 0;
    *(*(a1 + 40) + 12048) = 0;
    goto LABEL_144;
  }

LABEL_145:

  v94 = *MEMORY[0x277D85DE8];
}

void __62__WiFiUsageLinkSession_performLinkTestFor_isTriggeredByFault___block_invoke_372(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setBadDNSServers:*(a1 + 88)];
  [v3 setBadGateway:*(a1 + 89)];
  [v3 setDnsResultsValid:{objc_msgSend(*(a1 + 32), "dnsResultsValid")}];
  [v3 setDnsSuccess:{objc_msgSend(*(a1 + 32), "dnsSuccess")}];
  [v3 setFoundCriticalFailure:*(a1 + 90)];
  v4 = MEMORY[0x277CCA980];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "gatewayMaxRTT")}];
  v6 = v5;
  if (v5)
  {
    [v5 decimalValue];
  }

  else
  {
    v40 = 0;
    v41 = 0;
    v42 = 0;
  }

  v7 = [v4 decimalNumberWithDecimal:&v40];
  [v3 setGatewayMaxRTT:v7];

  v8 = MEMORY[0x277CCA980];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "gatewayMinRTT")}];
  v10 = v9;
  if (v9)
  {
    [v9 decimalValue];
  }

  else
  {
    v40 = 0;
    v41 = 0;
    v42 = 0;
  }

  v11 = [v8 decimalNumberWithDecimal:&v40];
  [v3 setGatewayMinRTT:v11];

  v12 = MEMORY[0x277CCA980];
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "gatewayPacketLoss")}];
  v14 = v13;
  if (v13)
  {
    [v13 decimalValue];
  }

  else
  {
    v40 = 0;
    v41 = 0;
    v42 = 0;
  }

  v15 = [v12 decimalNumberWithDecimal:&v40];
  [v3 setGatewayPacketLoss:v15];

  [v3 setGatewayResultsValid:{objc_msgSend(*(a1 + 32), "gatewayResultsValid")}];
  [v3 setInitiatingReason:*(a1 + 40)];
  [v3 setIsTriggeredByFault:*(a1 + 91)];
  v16 = MEMORY[0x277CCA980];
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "localDNSMaxRTT")}];
  v18 = v17;
  if (v17)
  {
    [v17 decimalValue];
  }

  else
  {
    v40 = 0;
    v41 = 0;
    v42 = 0;
  }

  v19 = [v16 decimalNumberWithDecimal:&v40];
  [v3 setLocalDNSMaxRTT:v19];

  v20 = MEMORY[0x277CCA980];
  v21 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "localDNSMinRTT")}];
  v22 = v21;
  if (v21)
  {
    [v21 decimalValue];
  }

  else
  {
    v40 = 0;
    v41 = 0;
    v42 = 0;
  }

  v23 = [v20 decimalNumberWithDecimal:&v40];
  [v3 setLocalDNSMinRTT:v23];

  v24 = MEMORY[0x277CCA980];
  v25 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "localDNSPacketLoss")}];
  v26 = v25;
  if (v25)
  {
    [v25 decimalValue];
  }

  else
  {
    v40 = 0;
    v41 = 0;
    v42 = 0;
  }

  v27 = [v24 decimalNumberWithDecimal:&v40];
  [v3 setLocalDNSPacketLoss:v27];

  [v3 setLocalResultsValid:{objc_msgSend(*(a1 + 32), "localResultsValid")}];
  v28 = MEMORY[0x277CCA980];
  v29 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "publicDNSMaxRTT")}];
  v30 = v29;
  if (v29)
  {
    [v29 decimalValue];
  }

  else
  {
    v40 = 0;
    v41 = 0;
    v42 = 0;
  }

  v31 = [v28 decimalNumberWithDecimal:&v40];
  [v3 setPublicDNSMaxRTT:v31];

  v32 = MEMORY[0x277CCA980];
  v33 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "publicDNSMinRTT")}];
  v34 = v33;
  if (v33)
  {
    [v33 decimalValue];
  }

  else
  {
    v40 = 0;
    v41 = 0;
    v42 = 0;
  }

  v35 = [v32 decimalNumberWithDecimal:&v40];
  [v3 setPublicDNSMinRTT:v35];

  v36 = MEMORY[0x277CCA980];
  v37 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "publicDNSPacketLoss")}];
  v38 = v37;
  if (v37)
  {
    [v37 decimalValue];
  }

  else
  {
    v40 = 0;
    v41 = 0;
    v42 = 0;
  }

  v39 = [v36 decimalNumberWithDecimal:&v40];
  [v3 setPublicDNSPacketLoss:v39];

  [v3 setPublicResultsValid:{objc_msgSend(*(a1 + 32), "publicResultsValid")}];
  [v3 setSeenSpecificAcFailure:{objc_msgSend(*(a1 + 32), "seenSpecificAcFailure")}];
  [v3 setSiriTCPResultsValid:{objc_msgSend(*(a1 + 32), "siriTCPResultsValid")}];
  [v3 setSiriTCPSuccess:{objc_msgSend(*(a1 + 32), "siriTCPSuccess")}];
  [v3 setSiriTLSResultsValid:{objc_msgSend(*(a1 + 32), "siriTLSResultsValid")}];
  [v3 setSiriTLSSuccess:{objc_msgSend(*(a1 + 32), "siriTLSSuccess")}];
  [v3 setSiriTrafficClass:{objc_msgSend(*(a1 + 32), "siriTrafficClass")}];
  [v3 setStatusForDNS:*(a1 + 48)];
  [v3 setStatusForInternet:*(a1 + 56)];
  [v3 setStatusForLocal:*(a1 + 64)];
  [v3 setStatusForSiriTCP:*(a1 + 72)];
  [v3 setStatusForSiriTLS:*(a1 + 80)];
}

- (void)processIPv4Changes:(id)changes
{
  v3.receiver = self;
  v3.super_class = WiFiUsageLinkSession;
  [(WiFiUsageSession *)&v3 processIPv4Changes:changes];
}

- (void)processIPv6Changes:(id)changes
{
  v3.receiver = self;
  v3.super_class = WiFiUsageLinkSession;
  [(WiFiUsageSession *)&v3 processIPv6Changes:changes];
}

- (void)processDHCPChanges:(id)changes
{
  linkUp = self->_linkUp;
  changesCopy = changes;
  NSLog(&cfstr_SDLinkupDDicti.isa, "[WiFiUsageLinkSession processDHCPChanges:]", 1035, linkUp, changesCopy);
  v6.receiver = self;
  v6.super_class = WiFiUsageLinkSession;
  [(WiFiUsageSession *)&v6 processDHCPChanges:changesCopy];
}

- (void)rangingCompleted
{
  NSLog(&cfstr_SDLinkupD.isa, a2, "[WiFiUsageLinkSession rangingCompleted]", 1056, self->_linkUp);
  v3.receiver = self;
  v3.super_class = WiFiUsageLinkSession;
  [(WiFiUsageSession *)&v3 rangingCompleted];
}

- (void)linkQualityDidChange:(id)change
{
  v3.receiver = self;
  v3.super_class = WiFiUsageLinkSession;
  [(WiFiUsageSession *)&v3 linkQualityDidChange:change];
}

- (void)getLazyNSNumberPreference:(id)preference exists:(id)exists
{
  preferenceCopy = preference;
  existsCopy = exists;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v7 = [standardUserDefaults persistentDomainForName:@"com.apple.wifipolicy.usagelinksession"];

  v8 = [v7 objectForKey:preferenceCopy];
  if (v8)
  {
    NSLog(&cfstr_SFoundPreferen.isa, "[WiFiUsageLinkSession getLazyNSNumberPreference:exists:]", @"com.apple.wifipolicy.usagelinksession", preferenceCopy);
    existsCopy[2](existsCopy, v8);
  }
}

- (void)addDictionary:(id)dictionary withKeysPrefix:(id)prefix toFlatDictionary:(id)flatDictionary
{
  prefixCopy = prefix;
  flatDictionaryCopy = flatDictionary;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__WiFiUsageLinkSession_addDictionary_withKeysPrefix_toFlatDictionary___block_invoke;
  v11[3] = &unk_2789C6970;
  v12 = prefixCopy;
  v13 = flatDictionaryCopy;
  v9 = flatDictionaryCopy;
  v10 = prefixCopy;
  [dictionary enumerateKeysAndObjectsUsingBlock:v11];
}

void __70__WiFiUsageLinkSession_addDictionary_withKeysPrefix_toFlatDictionary___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v5 = [*(a1 + 32) stringByAppendingString:a2];
  v6 = [*(a1 + 40) valueForKey:v5];

  v7 = *(a1 + 40);
  if (v6)
  {
    v8 = [v7 valueForKey:v5];
    NSLog(&cfstr_SKeywithprefix.isa, "[WiFiUsageLinkSession addDictionary:withKeysPrefix:toFlatDictionary:]_block_invoke", v5, v8, v9);
  }

  else
  {
    [v7 setObject:v9 forKey:v5];
  }
}

void __62__WiFiUsageLinkSession_performLinkTestFor_isTriggeredByFault___block_invoke_cold_1(uint64_t a1, uint64_t *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v4 = 136315906;
  v5 = "[WiFiUsageLinkSession performLinkTestFor:isTriggeredByFault:]_block_invoke_2";
  v6 = 1024;
  v7 = 872;
  v8 = 2112;
  v9 = a1;
  v10 = 2112;
  v11 = v2;
  _os_log_fault_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "%s:%u: Attempting to reset chip with vague reason %@, linkTestIniated %@\n", &v4, 0x26u);
  v3 = *MEMORY[0x277D85DE8];
}

@end