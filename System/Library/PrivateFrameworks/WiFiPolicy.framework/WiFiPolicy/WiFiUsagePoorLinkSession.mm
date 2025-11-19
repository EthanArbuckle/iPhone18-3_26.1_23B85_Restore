@interface WiFiUsagePoorLinkSession
+ (id)describeWiFiUsageMonitor_tdDecisionState:(id *)a3;
+ (id)describeWiFiUsageMonitor_tdExecState:(id)a3;
+ (id)describeWiFiUsageMonitor_tdFastTDState:(id *)a3;
+ (id)sessionEndedBy:(int)a3;
+ (id)sessionStartedBy:(int)a3;
+ (id)timerReason:(int)a3;
- ($CA18CBBE7683B0106BED709705F86C47)last_SuppressState;
- ($F459DE10F772475887923C84DB189A08)last_DecisionState;
- (BOOL)driverDoesNotRecommendTd:(unint64_t)a3;
- (WiFiUsagePoorLinkSession)initWithInterfaceName:(id)a3 andCapabilities:(id)a4 onQueue:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)faultEventDetected:(unint64_t)a3 event:(id)a4;
- (void)initializeTimer;
- (void)joinStateDidChange:(id)a3 withReason:(unint64_t)a4 lastDisconnectReason:(int64_t)a5 lastJoinFailure:(int64_t)a6 andNetworkDetails:(id)a7;
- (void)linkQualityDidChange:(id)a3;
- (void)logUserImpactTimes;
- (void)resetRxFrameImpact;
- (void)roamingStateDidChange:(BOOL)a3 reason:(unint64_t)a4 andStatus:(unint64_t)a5 andLatency:(unint64_t)a6 andRoamData:(id)a7 andPingPongStats:(id)a8;
- (void)sessionDidEnd:(int)a3;
- (void)setLast_DecisionState:(id *)a3;
- (void)setLast_FastTdVotes:(id *)a3;
- (void)stopTimer;
- (void)summarizeSession;
- (void)suspendTimer;
- (void)tdLogic_badRssi:(int64_t)a3 goodRSSI:(int64_t)goodLinkRssi;
- (void)tdLogic_decisionState:(id *)a3;
- (void)tdLogic_deferJoin:(unint64_t)a3 perBSSID:(unint64_t)perBSSID_deferJoin;
- (void)tdLogic_fastTdState:(id *)a3;
- (void)updateRxFrameImpactWith:(id)a3;
- (void)updateWithScores:(id)a3;
@end

@implementation WiFiUsagePoorLinkSession

- (void)updateWithScores:(id)a3
{
  v6 = a3;
  if ([(WiFiUsageSession *)self isSessionActive])
  {
    timerReason = self->_timerReason;
    if (timerReason == 3 || timerReason == 0)
    {
      if ([v6 txLatencyP95] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v6, "txLatencyP95") > self->_txLatencyThreshold)
      {
        self->_txLatencyImpactTime += [v6 duration];
      }

      if ([v6 chanQualScore] == 1)
      {
        self->_txRxRateImpactTime += [v6 duration];
      }

      if ([v6 txLossScore] <= 2)
      {
        self->_txPerImpactTime += [v6 duration];
      }
    }
  }
}

- (void)linkQualityDidChange:(id)a3
{
  v4 = a3;
  if (![(WiFiUsageSession *)self isSessionActive])
  {
    goto LABEL_52;
  }

  if (self->_toBeClosedAfterLQM)
  {
    -[WiFiUsagePoorLinkSession setRssiAtNextLinkUp:](self, "setRssiAtNextLinkUp:", [v4 rssiInUse]);
    if ([v4 driverTDrecommended] != 0x7FFFFFFFFFFFFFFFLL)
    {
      -[WiFiUsagePoorLinkSession setTdRecommendAtNextLinkUp:](self, "setTdRecommendAtNextLinkUp:", [v4 driverTDrecommended] != 0);
    }

    timerReason = self->_timerReason;
    if (timerReason == 2)
    {
      self->_timerReason = 3;
      v6 = self;
      timerReason = 6;
    }

    else
    {
      if (timerReason != 1)
      {
        v15 = [WiFiUsagePoorLinkSession timerReason:?];
        NSLog(&cfstr_STobeclosedaft.isa, "[WiFiUsagePoorLinkSession linkQualityDidChange:]", v15);

        goto LABEL_26;
      }

      self->_timerReason = 3;
      v6 = self;
    }

    [(WiFiUsagePoorLinkSession *)v6 sessionDidEnd:timerReason];
LABEL_26:
    self->_toBeClosedAfterLQM = 0;
    goto LABEL_47;
  }

  v7 = self->_timerReason;
  if (v7 == 3 || v7 == 0)
  {
    v9 = [v4 perCoreRssiInUse];
    if (v9 <= 2)
    {
      v10 = off_2789C7BC0[v9];
      *(&self->super.super.isa + *v10) = *(&self->super.super.isa + *v10) + [v4 duration];
    }

    v38.receiver = self;
    v38.super_class = WiFiUsagePoorLinkSession;
    [(WiFiUsageSession *)&v38 linkQualityDidChange:v4];
    if (self->_isFirstTDConfirmed)
    {
      v11 = [v4 duration];
    }

    else
    {
      v11 = 0;
    }

    self->_totalSessionTime += [v4 duration];
    self->_totalSessionTimeAfterFirstTDConfirmed += v11;
    if ([v4 averageTxPer] >= self->_txPerThresholdHigh)
    {
      self->_lowModHighImpactTime += [v4 duration];
      self->_modHighImpactTime += [v4 duration];
      self->_highImpactTime += [v4 duration];
      self->_lowModHighImpactTimeAfterFirstTDConfirmed += v11;
      v13 = &OBJC_IVAR___WiFiUsagePoorLinkSession__highImpactTimeAfterFirstTDConfirmed;
      v14 = &OBJC_IVAR___WiFiUsagePoorLinkSession__modHighImpactTimeAfterFirstTDConfirmed;
    }

    else
    {
      if ([v4 averageTxPer] < self->_txPerThresholdModerate)
      {
        if ([v4 averageTxPer] < self->_txPerThresholdLow)
        {
LABEL_30:
          [(WiFiUsagePoorLinkSession *)self updateRxFrameImpactWith:v4];
          if (-[WiFiUsagePoorLinkSession isGoodRssi:](self, "isGoodRssi:", [v4 rssiInUse]) && -[WiFiUsagePoorLinkSession driverDoesNotRecommendTd:](self, "driverDoesNotRecommendTd:", objc_msgSend(v4, "driverTDrecommended")) && (objc_msgSend(v4, "rssiInUse") > self->_rssiThresholdFor2GHz || (objc_msgSend(v4, "isHighCCAFor2GHz") & 1) == 0))
          {
            v16 = [(WiFiUsagePoorLinkSession *)self lastTdEval_EndedBy];
            if (v16)
            {
            }

            else if (!self->_toBeClosedAfterTdLogicEnd)
            {
              v30 = [v4 rssiInUse];
              goodLinkRssi = self->_goodLinkRssi;
              if (goodLinkRssi == 0x7FFFFFFFFFFFFFFFLL)
              {
                v32 = @"N/A";
              }

              else
              {
                v32 = [MEMORY[0x277CCABB0] numberWithInteger:goodLinkRssi];
              }

              if ([v4 driverTDrecommended] == 0x7FFFFFFFFFFFFFFFLL)
              {
                v33 = @"N/A";
              }

              else
              {
                v34 = [v4 driverTDrecommended];
                v33 = @"YES";
                if (!v34)
                {
                  v33 = @"NO";
                }
              }

              NSLog(&cfstr_SBadlinkSessio.isa, "[WiFiUsagePoorLinkSession linkQualityDidChange:]", v30, v32, v33);
              if (goodLinkRssi != 0x7FFFFFFFFFFFFFFFLL)
              {
              }

              self->_toBeClosedAfterTdLogicEnd = 1;
              goto LABEL_47;
            }

            self->_toBeClosedAfterTdLogicEnd = 0;
            v17 = [v4 rssiInUse];
            v18 = self->_goodLinkRssi;
            if (v18 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v19 = @"N/A";
            }

            else
            {
              v19 = [MEMORY[0x277CCABB0] numberWithInteger:v18];
            }

            if ([v4 driverTDrecommended] == 0x7FFFFFFFFFFFFFFFLL)
            {
              v20 = @"N/A";
            }

            else
            {
              v21 = [v4 driverTDrecommended];
              v20 = @"YES";
              if (!v21)
              {
                v20 = @"NO";
              }
            }

            NSLog(&cfstr_SBadlinkSessio_0.isa, "[WiFiUsagePoorLinkSession linkQualityDidChange:]", v17, v19, v20, 10);
            if (v18 != 0x7FFFFFFFFFFFFFFFLL)
            {
            }

            [(WiFiUsagePoorLinkSession *)self startTimerWithTimeout:10 reason:0];
          }

          goto LABEL_47;
        }

        v12 = [v4 duration];
        v13 = &OBJC_IVAR___WiFiUsagePoorLinkSession__lowModHighImpactTimeAfterFirstTDConfirmed;
        v14 = &OBJC_IVAR___WiFiUsagePoorLinkSession__lowModHighImpactTime;
LABEL_29:
        *(&self->super.super.isa + *v14) = (*(&self->super.super.isa + *v14) + v12);
        *(&self->super.super.isa + *v13) = (*(&self->super.super.isa + *v13) + v11);
        goto LABEL_30;
      }

      self->_lowModHighImpactTime += [v4 duration];
      self->_modHighImpactTime += [v4 duration];
      v13 = &OBJC_IVAR___WiFiUsagePoorLinkSession__modHighImpactTimeAfterFirstTDConfirmed;
      v14 = &OBJC_IVAR___WiFiUsagePoorLinkSession__lowModHighImpactTimeAfterFirstTDConfirmed;
    }

    v12 = v11;
    goto LABEL_29;
  }

LABEL_47:
  if (!self->_firstLQMForSessionReceived)
  {
    if (self->_sessionStartedBy == 4 && -[WiFiUsagePoorLinkSession isBadRssi:](self, "isBadRssi:", [v4 rssiInUse]))
    {
      self->_sessionStartedBy = 1;
      NSLog(&cfstr_STdalertedDueT.isa, "[WiFiUsagePoorLinkSession linkQualityDidChange:]");
    }

    self->_firstLQMForSessionReceived = 1;
  }

LABEL_52:
  if (![(WiFiUsageSession *)self isSessionActive]|| !self->_timerReason)
  {
    if (-[WiFiUsagePoorLinkSession isBadRssi:](self, "isBadRssi:", [v4 rssiInUse]))
    {
      if (!self->_timerReason)
      {
        self->_timerReason = 3;
        [(WiFiUsagePoorLinkSession *)self suspendTimer];
        v26 = [v4 rssiInUse];
        v27 = v26;
        if (self->_badLinkRssi == 0x7FFFFFFFFFFFFFFFLL)
        {
          NSLog(&cfstr_SRssiLddbmCros.isa, "[WiFiUsagePoorLinkSession linkQualityDidChange:]", v26, @"N/A");
        }

        else
        {
          v29 = [MEMORY[0x277CCABB0] numberWithInteger:?];
          NSLog(&cfstr_SRssiLddbmCros.isa, "[WiFiUsagePoorLinkSession linkQualityDidChange:]", v27, v29);
        }

        goto LABEL_74;
      }

      v22 = [v4 rssiInUse];
      v23 = v22;
      if (self->_badLinkRssi == 0x7FFFFFFFFFFFFFFFLL)
      {
        NSLog(&cfstr_SRssiLddbmCros_0.isa, "[WiFiUsagePoorLinkSession linkQualityDidChange:]", v22, @"N/A");
      }

      else
      {
        v28 = [MEMORY[0x277CCABB0] numberWithInteger:?];
        NSLog(&cfstr_SRssiLddbmCros_0.isa, "[WiFiUsagePoorLinkSession linkQualityDidChange:]", v23, v28);
      }

      v24 = self;
      v25 = 1;
    }

    else if ([v4 rssiInUse] <= self->_rssiThresholdFor2GHz && objc_msgSend(v4, "isHighCCAFor2GHz"))
    {
      if (!self->_timerReason)
      {
        self->_timerReason = 3;
        [(WiFiUsagePoorLinkSession *)self suspendTimer];
        NSLog(&cfstr_SBadlinkSessio_1.isa, "[WiFiUsagePoorLinkSession linkQualityDidChange:]", v35, v36);
        goto LABEL_74;
      }

      NSLog(&cfstr_SBadlinkSessio_2.isa, "[WiFiUsagePoorLinkSession linkQualityDidChange:]");
      v24 = self;
      v25 = 5;
    }

    else
    {
      if ([v4 driverTDrecommended] == 0x7FFFFFFFFFFFFFFFLL || !objc_msgSend(v4, "driverTDrecommended"))
      {
        goto LABEL_74;
      }

      if (!self->_timerReason)
      {
        self->_timerReason = 3;
        [(WiFiUsagePoorLinkSession *)self suspendTimer];
        NSLog(&cfstr_SBadlinkSessio_3.isa, "[WiFiUsagePoorLinkSession linkQualityDidChange:]", v4, v36);
        goto LABEL_74;
      }

      NSLog(&cfstr_SBadlinkSessio_4.isa, "[WiFiUsagePoorLinkSession linkQualityDidChange:]", v4);
      v24 = self;
      v25 = 2;
    }

    [(WiFiUsagePoorLinkSession *)v24 sessionDidStart:v25];
LABEL_74:
    v37.receiver = self;
    v37.super_class = WiFiUsagePoorLinkSession;
    [(WiFiUsageSession *)&v37 linkQualityDidChange:v4];
  }

  if (self->_justJoined)
  {
    -[WiFiUsagePoorLinkSession setRssiAtJoin:](self, "setRssiAtJoin:", [v4 rssiInUse]);
    if ([v4 driverTDrecommended] != 0x7FFFFFFFFFFFFFFFLL)
    {
      -[WiFiUsagePoorLinkSession setTdRecommendAtJoin:](self, "setTdRecommendAtJoin:", [v4 driverTDrecommended] != 0);
    }

    self->_justJoined = 0;
  }

  if ([v4 driverTDrecommended] != 0x7FFFFFFFFFFFFFFFLL)
  {
    self->_lastTdRecommended = [v4 driverTDrecommended] != 0;
  }

  self->_lastIsTimeSensitiveAppRunning = [v4 isAVcallOnWiFi];
  self->_lastIsAnyAppinFG = [v4 isNwAppInFG];
}

- (BOOL)driverDoesNotRecommendTd:(unint64_t)a3
{
  lastTdRecommended = self->_lastTdRecommended;
  if (lastTdRecommended)
  {
    return !a3 && lastTdRecommended;
  }

  result = 1;
  if (a3)
  {
    if (a3 != 0x7FFFFFFFFFFFFFFFLL)
    {
      return !a3 && lastTdRecommended;
    }
  }

  return result;
}

- (void)faultEventDetected:(unint64_t)a3 event:(id)a4
{
  v6.receiver = self;
  v6.super_class = WiFiUsagePoorLinkSession;
  [(WiFiUsageSession *)&v6 faultEventDetected:a3 event:a4];
  if (a3 == 1 && ![(WiFiUsageSession *)self isSessionActive])
  {
    NSLog(&cfstr_SBadlinkSessio_5.isa, "[WiFiUsagePoorLinkSession faultEventDetected:event:]");
    [(WiFiUsagePoorLinkSession *)self sessionDidStart:3];
  }
}

- (void)joinStateDidChange:(id)a3 withReason:(unint64_t)a4 lastDisconnectReason:(int64_t)a5 lastJoinFailure:(int64_t)a6 andNetworkDetails:(id)a7
{
  v12 = a3;
  v19.receiver = self;
  v19.super_class = WiFiUsagePoorLinkSession;
  [(WiFiUsageSession *)&v19 joinStateDidChange:v12 withReason:a4 lastDisconnectReason:a5 lastJoinFailure:a6 andNetworkDetails:a7];
  if (v12)
  {
    if ([(WiFiUsageSession *)self isSessionActive])
    {
      if (self->_lastLinkDownAt)
      {
        v13 = [MEMORY[0x277CBEAA8] now];
        [v13 timeIntervalSinceDate:self->_lastLinkDownAt];
        [(WiFiUsagePoorLinkSession *)self setTimeToNextJoin:?];
      }

      v14 = [WiFiUsageSession joinReasonString:a4];
      [(WiFiUsagePoorLinkSession *)self setNextJoinReason:v14];

      if ([v12 isEqualToString:self->_ssidAtLinkDown])
      {
        [(WiFiUsagePoorLinkSession *)self setNextJoinIsSameSSID:1];
        timeToNextJoin = self->_timeToNextJoin;
        v16 = timeToNextJoin != 9.22337204e18 && timeToNextJoin < self->_perSSID_deferJoin;
        [(WiFiUsagePoorLinkSession *)self setNextJoinWhileDeferJoin:v16];
      }
    }

    if (![(WiFiUsageSession *)self isSessionActive])
    {
      self->_justJoined = 1;
      v17 = [MEMORY[0x277CBEAA8] now];
      lastJoinAt = self->_lastJoinAt;
      self->_lastJoinAt = v17;
    }
  }
}

- (void)roamingStateDidChange:(BOOL)a3 reason:(unint64_t)a4 andStatus:(unint64_t)a5 andLatency:(unint64_t)a6 andRoamData:(id)a7 andPingPongStats:(id)a8
{
  if (!a3)
  {
    if (self->_tdConfirmed)
    {
      switch(a5)
      {
        case 0uLL:
          v12 = &OBJC_IVAR___WiFiUsagePoorLinkSession__roamStatus_Succeeded_Count_WhileTDWait;
          goto LABEL_19;
        case 0xE0820403uLL:
          v10 = &OBJC_IVAR___WiFiUsagePoorLinkSession__roamStatus_FailedNotFound_Count_WhileTDWait;
          break;
        case 0xE082044BuLL:
          v10 = &OBJC_IVAR___WiFiUsagePoorLinkSession__roamStatus_FailedFilteredOut_Count_WhileTDWait;
          break;
        default:
LABEL_13:
          v12 = &OBJC_IVAR___WiFiUsagePoorLinkSession__roamStatus_Failed_Count_WhileTDWait;
LABEL_19:
          ++*(&self->super.super.isa + *v12);
          goto LABEL_20;
      }

      ++*(&self->super.super.isa + *v10);
      goto LABEL_13;
    }

    switch(a5)
    {
      case 0uLL:
        v12 = &OBJC_IVAR___WiFiUsagePoorLinkSession__roamStatus_Succeeded_Count_BeforeTDWait;
        goto LABEL_19;
      case 0xE0820403uLL:
        v11 = &OBJC_IVAR___WiFiUsagePoorLinkSession__roamStatus_FailedNotFound_Count_BeforeTDWait;
        break;
      case 0xE082044BuLL:
        v11 = &OBJC_IVAR___WiFiUsagePoorLinkSession__roamStatus_FailedFilteredOut_Count_BeforeTDWait;
        break;
      default:
LABEL_16:
        v12 = &OBJC_IVAR___WiFiUsagePoorLinkSession__roamStatus_Failed_Count_BeforeTDWait;
        goto LABEL_19;
    }

    ++*(&self->super.super.isa + *v11);
    goto LABEL_16;
  }

LABEL_20:
  v14 = v8;
  v15 = v9;
  v13.receiver = self;
  v13.super_class = WiFiUsagePoorLinkSession;
  [WiFiUsageSession roamingStateDidChange:sel_roamingStateDidChange_reason_andStatus_andLatency_andRoamData_andPingPongStats_ reason:? andStatus:? andLatency:? andRoamData:? andPingPongStats:?];
}

- (void)tdLogic_decisionState:(id *)a3
{
  ++a3->var8;
  if (self->_timerReason == 3)
  {
    v20 = v3;
    v21 = v4;
    if (!self->_toBeClosedAfterLQM)
    {
      v7 = [MEMORY[0x277CBEAA8] now];
      v8 = v7;
      if (self->_lastDecisionAt)
      {
        [(NSDate *)v7 timeIntervalSinceDate:?];
        if (self->_last_DecisionState.decision_TxPER)
        {
          v10 = v9;
        }

        else
        {
          v10 = 0.0;
        }

        self->_decision_TxPER_Duration = self->_decision_TxPER_Duration + v10;
        if (self->_last_DecisionState.decision_FWTxPER)
        {
          v11 = v9;
        }

        else
        {
          v11 = 0.0;
        }

        self->_decision_FWTxPER_Duration = self->_decision_FWTxPER_Duration + v11;
        if (self->_last_DecisionState.decision_BeaconPER)
        {
          v12 = v9;
        }

        else
        {
          v12 = 0.0;
        }

        self->_decision_BeaconPER_Duration = self->_decision_BeaconPER_Duration + v12;
        if (self->_last_DecisionState.decision_GatewayARPFailure)
        {
          v13 = v9;
        }

        else
        {
          v13 = 0.0;
        }

        self->_decision_GatewayARPFailure_Duration = self->_decision_GatewayARPFailure_Duration + v13;
        if (self->_last_DecisionState.decision_SymptomsDNSError)
        {
          v14 = v9;
        }

        else
        {
          v14 = 0.0;
        }

        self->_decision_SymptomsDNSError_Duration = self->_decision_SymptomsDNSError_Duration + v14;
        if (self->_last_DecisionState.decision_AutoLeave)
        {
          v15 = v9;
        }

        else
        {
          v15 = 0.0;
        }

        self->_decision_AutoLeave_Duration = self->_decision_AutoLeave_Duration + v15;
        if (self->_last_DecisionState.decision_ActiveProbe)
        {
          v16 = v9;
        }

        else
        {
          v16 = 0.0;
        }

        self->_decision_ActiveProbe_Duration = self->_decision_ActiveProbe_Duration + v16;
        if (!self->_last_DecisionState.decision_FastTD)
        {
          v9 = 0.0;
        }

        self->_decision_FastTD_Duration = self->_decision_FastTD_Duration + v9;
      }

      lastDecisionAt = self->_lastDecisionAt;
      self->_lastDecisionAt = v8;

      v18 = *&a3->var13;
      v19[0] = *&a3->var0;
      v19[1] = v18;
      [(WiFiUsagePoorLinkSession *)self setLast_DecisionState:v19];
      [(WiFiUsagePoorLinkSession *)self setIsLastDecisionStateValid:1];
    }
  }
}

- (void)tdLogic_fastTdState:(id *)a3
{
  v5 = [MEMORY[0x277CBEAA8] now];
  v6 = v5;
  if (self->_lastFastTDVotesAt)
  {
    [(NSDate *)v5 timeIntervalSinceDate:?];
    if (self->_last_FastTdVotes.fastTD_vote_recommendation)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0.0;
    }

    self->_vote_FastTD_Recommendation_Duration = self->_vote_FastTD_Recommendation_Duration + v8;
    if (self->_last_FastTdVotes.fastTD_vote_TxPER)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0.0;
    }

    self->_vote_FastTD_TXPER_Duration = self->_vote_FastTD_TXPER_Duration + v9;
    if (self->_last_FastTdVotes.fastTD_vote_FWTxPER)
    {
      v10 = v7;
    }

    else
    {
      v10 = 0.0;
    }

    self->_vote_FastTD_FWTxPER_Duration = self->_vote_FastTD_FWTxPER_Duration + v10;
    if (self->_last_FastTdVotes.fastTD_vote_BeaconPER)
    {
      v11 = v7;
    }

    else
    {
      v11 = 0.0;
    }

    self->_vote_FastTD_BeaconPER_Duration = self->_vote_FastTD_BeaconPER_Duration + v11;
    if (self->_last_FastTdVotes.fastTD_vote_2GPoorLink)
    {
      v12 = v7;
    }

    else
    {
      v12 = 0.0;
    }

    self->_vote_FastTD_2GPoorLink_Duration = self->_vote_FastTD_2GPoorLink_Duration + v12;
    if (self->_last_FastTdVotes.fastTD_vote_2GDataStall)
    {
      v13 = v7;
    }

    else
    {
      v13 = 0.0;
    }

    self->_vote_FastTD_2GDataStall_Duration = self->_vote_FastTD_2GDataStall_Duration + v13;
    if (self->_last_FastTdVotes.fastTD_vote_HighLatency)
    {
      v14 = v7;
    }

    else
    {
      v14 = 0.0;
    }

    self->_vote_FastTD_HighLatency_Duration = self->_vote_FastTD_HighLatency_Duration + v14;
    if (!self->_last_FastTdVotes.fastTD_vote_InsufficientRxFrames)
    {
      v7 = 0.0;
    }

    self->_vote_FastTD_InsufficientRxFrames_Duration = self->_vote_FastTD_InsufficientRxFrames_Duration + v7;
  }

  lastFastTDVotesAt = self->_lastFastTDVotesAt;
  self->_lastFastTDVotesAt = v6;

  v16 = *&a3->var0;
  v17 = *&a3->var9;
  [(WiFiUsagePoorLinkSession *)self setLast_FastTdVotes:&v16];
  [(WiFiUsagePoorLinkSession *)self setIsLastFastTdVotesValid:1];
}

- (void)summarizeSession
{
  lastTDEval_ExecutedAt = self->_lastTDEval_ExecutedAt;
  if (lastTDEval_ExecutedAt)
  {
    [(NSDate *)lastTDEval_ExecutedAt timeIntervalSinceDate:self->_lastDecisionAt];
    if (self->_last_DecisionState.decision_TxPER)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0.0;
    }

    self->_decision_TxPER_Duration = self->_decision_TxPER_Duration + v5;
    if (self->_last_DecisionState.decision_FWTxPER)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0.0;
    }

    self->_decision_FWTxPER_Duration = self->_decision_FWTxPER_Duration + v6;
    if (self->_last_DecisionState.decision_BeaconPER)
    {
      v7 = v4;
    }

    else
    {
      v7 = 0.0;
    }

    self->_decision_BeaconPER_Duration = self->_decision_BeaconPER_Duration + v7;
    if (self->_last_DecisionState.decision_GatewayARPFailure)
    {
      v8 = v4;
    }

    else
    {
      v8 = 0.0;
    }

    self->_decision_GatewayARPFailure_Duration = self->_decision_GatewayARPFailure_Duration + v8;
    if (self->_last_DecisionState.decision_SymptomsDNSError)
    {
      v9 = v4;
    }

    else
    {
      v9 = 0.0;
    }

    self->_decision_SymptomsDNSError_Duration = self->_decision_SymptomsDNSError_Duration + v9;
    if (self->_last_DecisionState.decision_AutoLeave)
    {
      v10 = v4;
    }

    else
    {
      v10 = 0.0;
    }

    self->_decision_AutoLeave_Duration = self->_decision_AutoLeave_Duration + v10;
    if (self->_last_DecisionState.decision_ActiveProbe)
    {
      v11 = v4;
    }

    else
    {
      v11 = 0.0;
    }

    self->_decision_ActiveProbe_Duration = self->_decision_ActiveProbe_Duration + v11;
    if (!self->_last_DecisionState.decision_FastTD)
    {
      v4 = 0.0;
    }

    self->_decision_FastTD_Duration = self->_decision_FastTD_Duration + v4;
    [(NSDate *)self->_lastTDEval_ExecutedAt timeIntervalSinceDate:self->_lastFastTDVotesAt];
    if (self->_last_FastTdVotes.fastTD_vote_recommendation)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0.0;
    }

    self->_vote_FastTD_Recommendation_Duration = self->_vote_FastTD_Recommendation_Duration + v13;
    if (self->_last_FastTdVotes.fastTD_vote_TxPER)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0.0;
    }

    self->_vote_FastTD_TXPER_Duration = self->_vote_FastTD_TXPER_Duration + v14;
    if (self->_last_FastTdVotes.fastTD_vote_FWTxPER)
    {
      v15 = v12;
    }

    else
    {
      v15 = 0.0;
    }

    self->_vote_FastTD_FWTxPER_Duration = self->_vote_FastTD_FWTxPER_Duration + v15;
    if (self->_last_FastTdVotes.fastTD_vote_BeaconPER)
    {
      v16 = v12;
    }

    else
    {
      v16 = 0.0;
    }

    self->_vote_FastTD_BeaconPER_Duration = self->_vote_FastTD_BeaconPER_Duration + v16;
    if (self->_last_FastTdVotes.fastTD_vote_2GPoorLink)
    {
      v17 = v12;
    }

    else
    {
      v17 = 0.0;
    }

    self->_vote_FastTD_2GPoorLink_Duration = self->_vote_FastTD_2GPoorLink_Duration + v17;
    if (self->_last_FastTdVotes.fastTD_vote_2GDataStall)
    {
      v18 = v12;
    }

    else
    {
      v18 = 0.0;
    }

    self->_vote_FastTD_2GDataStall_Duration = self->_vote_FastTD_2GDataStall_Duration + v18;
    if (self->_last_FastTdVotes.fastTD_vote_HighLatency)
    {
      v19 = v12;
    }

    else
    {
      v19 = 0.0;
    }

    self->_vote_FastTD_HighLatency_Duration = self->_vote_FastTD_HighLatency_Duration + v19;
    if (!self->_last_FastTdVotes.fastTD_vote_InsufficientRxFrames)
    {
      v12 = 0.0;
    }

    self->_vote_FastTD_InsufficientRxFrames_Duration = self->_vote_FastTD_InsufficientRxFrames_Duration + v12;
    [(NSDate *)self->_lastTDEval_ExecutedAt timeIntervalSinceDate:self->_lastSuppressAt];
    if (self->_last_SuppressState.suppress_SymptomDataStallScoreGood)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0.0;
    }

    self->_suppress_SymptomsNODataStall_Duration = self->_suppress_SymptomsNODataStall_Duration + v21;
    if (self->_last_SuppressState.suppress_SymptomAppPolicyScore)
    {
      v22 = v20;
    }

    else
    {
      v22 = 0.0;
    }

    self->_suppress_SymptomsAppPolicy_Duration = self->_suppress_SymptomsAppPolicy_Duration + v22;
    if (self->_last_SuppressState.suppress_FastCheapCellular)
    {
      v23 = v20;
    }

    else
    {
      v23 = 0.0;
    }

    self->_suppress_FastCheapCellular_Duration = self->_suppress_FastCheapCellular_Duration + v23;
    if (self->_last_SuppressState.suppress_2dBGuard)
    {
      v24 = v20;
    }

    else
    {
      v24 = 0.0;
    }

    self->_suppress_2dBGuard = self->_suppress_2dBGuard + v24;
    if (self->_last_SuppressState.suppress_NoFGnetwApp)
    {
      v25 = v20;
    }

    else
    {
      v25 = 0.0;
    }

    self->_suppress_NoFgNetwApp_Duration = self->_suppress_NoFgNetwApp_Duration + v25;
    if (self->_last_SuppressState.suppress_TTR)
    {
      v26 = v20;
    }

    else
    {
      v26 = 0.0;
    }

    self->_suppress_TTR_Duration = self->_suppress_TTR_Duration + v26;
    if (self->_last_SuppressState.suppress_UserInput)
    {
      v27 = v20;
    }

    else
    {
      v27 = 0.0;
    }

    self->_suppress_UserInput_Duration = self->_suppress_UserInput_Duration + v27;
    if (self->_last_SuppressState.suppress_GoodAfterRoam)
    {
      v28 = v20;
    }

    else
    {
      v28 = 0.0;
    }

    self->_suppress_GoodAfterRoam_Duration = self->_suppress_GoodAfterRoam_Duration + v28;
    if (self->_last_SuppressState.defer_roaming)
    {
      v29 = v20;
    }

    else
    {
      v29 = 0.0;
    }

    self->_suppress_Roam_Duration = self->_suppress_Roam_Duration + v29;
    if (!self->_last_SuppressState.defer_activeProbing)
    {
      v20 = 0.0;
    }

    self->_suppress_ActiveProbing = self->_suppress_ActiveProbing + v20;
  }

  v30.receiver = self;
  v30.super_class = WiFiUsagePoorLinkSession;
  [(WiFiUsageSession *)&v30 summarizeSession];
}

- (void)sessionDidEnd:(int)a3
{
  [(WiFiUsagePoorLinkSession *)self setSessionEndedBy:?];
  if (a3 == 5 || !a3)
  {
    v5 = [WiFiUsageInterfaceStats statsForInterfaceName:self->_interface];
    -[WiFiUsagePoorLinkSession setSessionTxBytes:](self, "setSessionTxBytes:", [v5 txBytes] - self->_sessionStartTxBytes);
    -[WiFiUsagePoorLinkSession setSessionRxBytes:](self, "setSessionRxBytes:", [v5 rxBytes] - self->_sessionStartRxBytes);
    [(WiFiUsagePoorLinkSession *)self logUserImpactTimes];
  }

  txPerImpactTime = self->_txPerImpactTime;
  if (txPerImpactTime <= self->_txRxRateImpactTime)
  {
    txPerImpactTime = self->_txRxRateImpactTime;
  }

  if (txPerImpactTime <= self->_txLatencyImpactTime)
  {
    txPerImpactTime = self->_txLatencyImpactTime;
  }

  self->_unifiedImpactTime = txPerImpactTime;
  self->_sessionTotalBytes = self->_sessionRxBytes + self->_sessionTxBytes;
  v7 = [WiFiUsagePoorLinkSession sessionStartedBy:[(WiFiUsagePoorLinkSession *)self sessionStartedBy]];
  v8 = [WiFiUsagePoorLinkSession sessionEndedBy:[(WiFiUsagePoorLinkSession *)self sessionEndedBy]];
  NSLog(&cfstr_SSessionStarte_0.isa, "[WiFiUsagePoorLinkSession sessionDidEnd:]", v7, v8);

  self->_lastIsTimeSensitiveAppRunning = 0;
  self->_lastIsAnyAppinFG = 0;
  v9.receiver = self;
  v9.super_class = WiFiUsagePoorLinkSession;
  [(WiFiUsageSession *)&v9 sessionDidEnd];
}

- (void)initializeTimer
{
  v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_queue);
  endSessionTimer = self->_endSessionTimer;
  self->_endSessionTimer = v3;

  self->_timerActive = 0;
  self->_timerReason = 3;
  objc_initWeak(&location, self);
  v5 = self->_endSessionTimer;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __43__WiFiUsagePoorLinkSession_initializeTimer__block_invoke;
  handler[3] = &unk_2789C7BA0;
  objc_copyWeak(&v7, &location);
  handler[4] = self;
  dispatch_source_set_event_handler(v5, handler);
  dispatch_activate(self->_endSessionTimer);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __43__WiFiUsagePoorLinkSession_initializeTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(*(a1 + 32) + 12176);
  v9 = WeakRetained;
  switch(v3)
  {
    case 2:
      v8 = [WiFiUsagePoorLinkSession sessionEndedBy:3];
      NSLog(&cfstr_SLinkdownnottd.isa, "[WiFiUsagePoorLinkSession initializeTimer]_block_invoke", v8);

      v5 = v9;
      v6 = 3;
      goto LABEL_7;
    case 1:
      v7 = [WiFiUsagePoorLinkSession sessionEndedBy:2];
      NSLog(&cfstr_STdtimerExpire.isa, "[WiFiUsagePoorLinkSession initializeTimer]_block_invoke", v7);

      v5 = v9;
      v6 = 2;
      goto LABEL_7;
    case 0:
      v4 = [WiFiUsagePoorLinkSession sessionEndedBy:0];
      NSLog(&cfstr_SGoodrssitimer.isa, "[WiFiUsagePoorLinkSession initializeTimer]_block_invoke", v4);

      [*(a1 + 32) setRtAppAtSessionEnd:*(*(a1 + 32) + 12168)];
      [*(a1 + 32) setFgAppAtSessionEnd:*(*(a1 + 32) + 12169)];
      v5 = v9;
      v6 = 0;
LABEL_7:
      [v5 sessionDidEnd:v6];
      goto LABEL_9;
  }

  NSLog(&cfstr_STimerExpiredW.isa, "[WiFiUsagePoorLinkSession initializeTimer]_block_invoke");
LABEL_9:
  *(*(a1 + 32) + 12176) = 3;
}

- (void)suspendTimer
{
  endSessionTimer = self->_endSessionTimer;
  if (endSessionTimer)
  {
    if (self->_timerActive)
    {
      dispatch_source_set_timer(endSessionTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
      self->_timerActive = 0;
    }
  }
}

- (void)stopTimer
{
  endSessionTimer = self->_endSessionTimer;
  if (endSessionTimer)
  {
    dispatch_source_cancel(endSessionTimer);
    v4 = self->_endSessionTimer;
    self->_endSessionTimer = 0;

    self->_timerActive = 0;
  }
}

- (WiFiUsagePoorLinkSession)initWithInterfaceName:(id)a3 andCapabilities:(id)a4 onQueue:(id)a5
{
  v9 = a3;
  v10 = a5;
  v24.receiver = self;
  v24.super_class = WiFiUsagePoorLinkSession;
  v11 = [(WiFiUsageSession *)&v24 initWithSessionType:9 andInterfaceName:v9 andCapabilities:a4];
  v12 = [[WiFiUsageSessionCAConfig alloc] initWithSampling:2 minInterval:86400.0];
  [(WiFiUsageSession *)v11 setCa_config:v12];

  objc_storeStrong(&v11->_queue, a5);
  objc_storeStrong(&v11->_interface, a3);
  [(WiFiUsagePoorLinkSession *)v11 initializeTimer];
  v13 = [[WiFiSoftError alloc] initWithName:@"TriggerDisconnect" andParams:&unk_2848BB0D8];
  tdSoftError = v11->_tdSoftError;
  v11->_tdSoftError = v13;

  v11->_badLinkRssi = 0x7FFFFFFFFFFFFFFFLL;
  v11->_goodLinkRssi = 0x7FFFFFFFFFFFFFFFLL;
  v11->_rssiThresholdFor2GHz = -70;
  v11->_ccaThresholdFor2GHz = 50;
  v11->_txPerThresholdLow = 5;
  v11->_txPerThresholdModerate = 15;
  v11->_txPerThresholdHigh = 50;
  v11->_txLatencyThreshold = 150;
  rxFrameThresholds = v11->_rxFrameThresholds;
  v11->_rxFrameThresholds = &unk_2848BAF28;

  v11->_perSSID_deferJoin = 0x7FFFFFFFFFFFFFFFLL;
  v11->_perBSSID_deferJoin = 0x7FFFFFFFFFFFFFFFLL;
  v11->_linkIsUp = 0;
  lastJoinAt = v11->_lastJoinAt;
  v11->_lastJoinAt = 0;

  v11->_justJoined = 0;
  v11->_alerted = 0;
  v11->_tdExecuted = 0;
  v11->_toBeClosedAfterLQM = 0;
  bssidAtTD = v11->_bssidAtTD;
  v11->_bssidAtTD = 0;

  ssidAtLinkDown = v11->_ssidAtLinkDown;
  v11->_ssidAtLinkDown = 0;

  v11->_lastIsTimeSensitiveAppRunning = 0;
  v11->_lastIsAnyAppinFG = 0;
  v11->_isFirstTDConfirmed = 0;
  v11->_rtAppAtFirstTDConfirmed = 0;
  v11->_rtAppAtSessionEnd = 0;
  v11->_fgAppAtFirstTDConfirmed = 0;
  v11->_fgAppAtSessionEnd = 0;
  v11->_cellularFallbackEnabledAtLinkDown = 0;
  v11->_cellularFallbackEnabled = 0;
  v11->_firstLQMForSessionReceived = 0;
  v11->_totalSessionTime = 0;
  v11->_lowModHighImpactTime = 0;
  v11->_modHighImpactTime = 0;
  v11->_highImpactTime = 0;
  v11->_txRxRateImpactTime = 0;
  v11->_txLatencyImpactTime = 0;
  v11->_txPerImpactTime = 0;
  v11->_unifiedImpactTime = 0;
  v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
  rxFrameImpactTime = v11->_rxFrameImpactTime;
  v11->_rxFrameImpactTime = v19;

  v21 = [(NSArray *)v11->_rxFrameThresholds count];
  if (v21)
  {
    v22 = v21;
    do
    {
      [(NSMutableArray *)v11->_rxFrameImpactTime addObject:&unk_2848BA298];
      --v22;
    }

    while (v22);
  }

  v11->_sessionTxBytes = 0;
  v11->_sessionRxBytes = 0;
  v11->_sessionTotalBytes = 0;
  v11->_sessionStartTxBytes = 0;
  v11->_sessionStartRxBytes = 0;
  v11->_totalSessionTimeAfterFirstTDConfirmed = 0;
  v11->_lowModHighImpactTimeAfterFirstTDConfirmed = 0;
  v11->_modHighImpactTimeAfterFirstTDConfirmed = 0;
  v11->_highImpactTimeAfterFirstTDConfirmed = 0;

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = WiFiUsagePoorLinkSession;
  v4 = [(WiFiUsageSession *)&v9 copyWithZone:a3];
  *(v4 + 1503) = self->_badLinkRssi;
  *(v4 + 1504) = self->_goodLinkRssi;
  *(v4 + 1505) = self->_rssiThresholdFor2GHz;
  *(v4 + 1506) = self->_ccaThresholdFor2GHz;
  *(v4 + 1507) = self->_txPerThresholdLow;
  *(v4 + 1508) = self->_txPerThresholdModerate;
  *(v4 + 1509) = self->_txPerThresholdHigh;
  *(v4 + 1510) = self->_txLatencyThreshold;
  objc_storeStrong(v4 + 1511, self->_rxFrameThresholds);
  *(v4 + 1512) = self->_perSSID_deferJoin;
  *(v4 + 1513) = self->_perBSSID_deferJoin;
  *(v4 + 3056) = self->_sessionStartedBy;
  *(v4 + 3057) = self->_sessionEndedBy;
  v4[12112] = self->_linkIsUp;
  objc_storeStrong(v4 + 1515, self->_lastJoinAt);
  v4[12128] = self->_justJoined;
  objc_storeStrong(v4 + 1517, self->_lastLinkDownAt);
  v4[12144] = self->_lastTdRecommended;
  v4[12145] = self->_alerted;
  v4[12208] = self->_tdExecuted;
  v4[12146] = self->_toBeClosedAfterLQM;
  v4[12147] = self->_toBeClosedAfterTdLogicEnd;
  objc_storeStrong(v4 + 1519, self->_bssidAtTD);
  objc_storeStrong(v4 + 1520, self->_ssidAtLinkDown);
  objc_storeStrong(v4 + 1523, self->_lastDecisionAt);
  objc_storeStrong(v4 + 1524, self->_lastFastTDVotesAt);
  objc_storeStrong(v4 + 1525, self->_lastSuppressAt);
  v4[12210] = self->_tdConfirmed;
  v4[12211] = self->_isLastDecisionStateValid;
  v4[12212] = self->_isLastSuppressStateValid;
  v4[12213] = self->_isLastFastTdVotesValid;
  v5 = *&self->_last_DecisionState.appsUsingWiFi;
  *(v4 + 803) = *&self->_last_DecisionState.decision_TxPER;
  *(v4 + 804) = v5;
  v6 = *&self->_last_SuppressState.suppress_FastCheapCellular;
  *(v4 + 1601) = *&self->_last_SuppressState.aggressiveTDEnabled;
  *(v4 + 12813) = v6;
  v7 = *&self->_last_FastTdVotes.fastTD_RTApp;
  *(v4 + 12824) = *&self->_last_FastTdVotes.fastTD_voteCount;
  *(v4 + 1605) = v7;
  *(v4 + 1530) = self->_last_RSSIMode;
  objc_storeStrong(v4 + 1531, self->_lastTdEval_StartedBy);
  objc_storeStrong(v4 + 1532, self->_lastTdEval_EndedBy);
  objc_storeStrong(v4 + 1533, self->_lastTDEval_AlertedAt);
  objc_storeStrong(v4 + 1534, self->_lastTDEval_ConfirmedAt);
  objc_storeStrong(v4 + 1535, self->_lastTDEval_ExecutedAt);
  *(v4 + 1536) = *&self->_lastTDEval_TDEvalDuration;
  *(v4 + 1537) = self->_lastTDEval_rssiAtTD;
  *(v4 + 1538) = *&self->_lastTDEval_waitOnRoamStatusDuration;
  *(v4 + 1539) = *&self->_tdEvalDurationCumulative;
  *(v4 + 1540) = self->_waitOnRoamStatusDurationCumulative;
  objc_storeStrong(v4 + 1541, self->_nextJoinReason);
  v4[12219] = self->_nextJoinIsSameSSID;
  v4[12209] = self->_nextJoinWhileDeferJoin;
  *(v4 + 1542) = *&self->_timeToNextJoin;
  v4[12220] = self->_nextLinkUpIsSameBSSID;
  *(v4 + 1543) = self->_rssiAtNextLinkUp;
  v4[12221] = self->_tdRecommendAtNextLinkUp;
  *(v4 + 1544) = self->_rssiAtJoin;
  v4[12222] = self->_tdRecommendAtJoin;
  *(v4 + 1545) = *&self->_timeSinceJoinATStart;
  *(v4 + 3056) = self->_sessionStartedBy;
  *(v4 + 3057) = self->_sessionEndedBy;
  *(v4 + 1546) = *&self->_decision_TxPER_Duration;
  *(v4 + 1547) = *&self->_decision_FWTxPER_Duration;
  *(v4 + 1548) = *&self->_decision_BeaconPER_Duration;
  *(v4 + 1549) = *&self->_decision_GatewayARPFailure_Duration;
  *(v4 + 1550) = *&self->_decision_SymptomsDNSError_Duration;
  *(v4 + 1551) = *&self->_decision_AutoLeave_Duration;
  *(v4 + 1552) = *&self->_decision_ActiveProbe_Duration;
  *(v4 + 1553) = *&self->_decision_FastTD_Duration;
  *(v4 + 1554) = *&self->_vote_FastTD_Recommendation_Duration;
  *(v4 + 1555) = *&self->_vote_FastTD_TXPER_Duration;
  *(v4 + 1556) = *&self->_vote_FastTD_FWTxPER_Duration;
  *(v4 + 1557) = *&self->_vote_FastTD_BeaconPER_Duration;
  *(v4 + 1558) = *&self->_vote_FastTD_2GPoorLink_Duration;
  *(v4 + 1559) = *&self->_vote_FastTD_2GDataStall_Duration;
  *(v4 + 1560) = *&self->_vote_FastTD_HighLatency_Duration;
  *(v4 + 1561) = *&self->_vote_FastTD_InsufficientRxFrames_Duration;
  *(v4 + 1562) = *&self->_suppress_SymptomsNODataStall_Duration;
  *(v4 + 1563) = *&self->_suppress_SymptomsAppPolicy_Duration;
  *(v4 + 1564) = *&self->_suppress_FastCheapCellular_Duration;
  *(v4 + 1565) = *&self->_suppress_2dBGuard;
  *(v4 + 1566) = *&self->_suppress_NoFgNetwApp_Duration;
  *(v4 + 1567) = *&self->_suppress_TTR_Duration;
  *(v4 + 1568) = *&self->_suppress_UserInput_Duration;
  *(v4 + 1569) = *&self->_suppress_GoodAfterRoam_Duration;
  *(v4 + 1570) = *&self->_suppress_Roam_Duration;
  *(v4 + 1571) = *&self->_suppress_ActiveProbing;
  *(v4 + 1572) = *&self->_perCoreRSSI_NotUsed_Duration;
  *(v4 + 1573) = *&self->_perCoreRSSI_Core0_Duration;
  *(v4 + 1574) = *&self->_perCoreRSSI_Core1_Duration;
  *(v4 + 1575) = self->_roamStatus_Succeeded_Count_WhileTDWait;
  *(v4 + 1576) = self->_roamStatus_Failed_Count_WhileTDWait;
  *(v4 + 1577) = self->_roamStatus_FailedFilteredOut_Count_WhileTDWait;
  *(v4 + 1578) = self->_roamStatus_FailedNotFound_Count_WhileTDWait;
  *(v4 + 1579) = self->_roamStatus_Succeeded_Count_BeforeTDWait;
  *(v4 + 1580) = self->_roamStatus_Failed_Count_BeforeTDWait;
  *(v4 + 1581) = self->_roamStatus_FailedFilteredOut_Count_BeforeTDWait;
  *(v4 + 1582) = self->_roamStatus_FailedNotFound_Count_BeforeTDWait;
  v4[12168] = self->_lastIsTimeSensitiveAppRunning;
  v4[12214] = self->_rtAppAtFirstTDConfirmed;
  v4[12215] = self->_rtAppAtSessionEnd;
  v4[12216] = self->_fgAppAtFirstTDConfirmed;
  v4[12217] = self->_fgAppAtSessionEnd;
  v4[12173] = self->_cellularFallbackEnabled;
  v4[12218] = self->_cellularFallbackEnabledAtLinkDown;
  v4[12170] = self->_isFirstTDConfirmed;
  v4[12171] = self->_firstLQMForSessionReceived;
  *(v4 + 1583) = self->_totalSessionTime;
  *(v4 + 1584) = self->_lowModHighImpactTime;
  *(v4 + 1585) = self->_modHighImpactTime;
  *(v4 + 1586) = self->_highImpactTime;
  *(v4 + 1587) = self->_txRxRateImpactTime;
  *(v4 + 1588) = self->_txLatencyImpactTime;
  *(v4 + 1589) = self->_txPerImpactTime;
  objc_storeStrong(v4 + 1591, self->_rxFrameImpactTime);
  *(v4 + 1590) = self->_unifiedImpactTime;
  *(v4 + 1594) = self->_sessionTxBytes;
  *(v4 + 1595) = self->_sessionRxBytes;
  *(v4 + 1596) = self->_sessionTotalBytes;
  *(v4 + 1597) = self->_totalSessionTimeAfterFirstTDConfirmed;
  *(v4 + 1598) = self->_lowModHighImpactTimeAfterFirstTDConfirmed;
  *(v4 + 1599) = self->_modHighImpactTimeAfterFirstTDConfirmed;
  *(v4 + 1600) = self->_highImpactTimeAfterFirstTDConfirmed;
  v4[12223] = self->_assertiveTdDisabled;
  return v4;
}

- (void)tdLogic_badRssi:(int64_t)a3 goodRSSI:(int64_t)goodLinkRssi
{
  v10.receiver = self;
  v10.super_class = WiFiUsagePoorLinkSession;
  [WiFiUsageSession tdLogic_badRssi:sel_tdLogic_badRssi_goodRSSI_ goodRSSI:?];
  self->_badLinkRssi = a3;
  self->_goodLinkRssi = goodLinkRssi;
  badLinkRssi = self->_badLinkRssi;
  if (badLinkRssi == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = @"N/A";
  }

  else
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:self->_badLinkRssi];
    goodLinkRssi = self->_goodLinkRssi;
  }

  if (goodLinkRssi == 0x7FFFFFFFFFFFFFFFLL)
  {
    NSLog(&cfstr_SBadrssithresh.isa, "[WiFiUsagePoorLinkSession tdLogic_badRssi:goodRSSI:]", v8, @"N/A");
  }

  else
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:goodLinkRssi];
    NSLog(&cfstr_SBadrssithresh.isa, "[WiFiUsagePoorLinkSession tdLogic_badRssi:goodRSSI:]", v8, v9);
  }

  if (badLinkRssi != 0x7FFFFFFFFFFFFFFFLL)
  {
  }
}

- (void)tdLogic_deferJoin:(unint64_t)a3 perBSSID:(unint64_t)perBSSID_deferJoin
{
  v10.receiver = self;
  v10.super_class = WiFiUsagePoorLinkSession;
  [WiFiUsageSession tdLogic_deferJoin:sel_tdLogic_deferJoin_perBSSID_ perBSSID:?];
  self->_perSSID_deferJoin = a3;
  self->_perBSSID_deferJoin = perBSSID_deferJoin;
  perSSID_deferJoin = self->_perSSID_deferJoin;
  if (perSSID_deferJoin == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = @"N/A";
  }

  else
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_perSSID_deferJoin];
    perBSSID_deferJoin = self->_perBSSID_deferJoin;
  }

  if (perBSSID_deferJoin == 0x7FFFFFFFFFFFFFFFLL)
  {
    NSLog(&cfstr_SDeferperssidD.isa, "[WiFiUsagePoorLinkSession tdLogic_deferJoin:perBSSID:]", v8, @"N/A");
  }

  else
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:perBSSID_deferJoin];
    NSLog(&cfstr_SDeferperssidD.isa, "[WiFiUsagePoorLinkSession tdLogic_deferJoin:perBSSID:]", v8, v9);
  }

  if (perSSID_deferJoin != 0x7FFFFFFFFFFFFFFFLL)
  {
  }
}

- (void)updateRxFrameImpactWith:(id)a3
{
  v11 = a3;
  if ([(NSArray *)self->_rxFrameThresholds count])
  {
    v4 = 0;
    while (1)
    {
      v5 = [(NSMutableArray *)self->_rxFrameImpactTime objectAtIndex:v4];
      v6 = [(NSArray *)self->_rxFrameThresholds objectAtIndex:v4];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ![v11 duration])
      {
        break;
      }

      v7 = v5;
      v8 = [v11 rxFrames];
      v9 = v8 / [v11 duration];
      v10 = v7;
      if (v9 <= [v6 integerValue])
      {
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "unsignedIntegerValue") + objc_msgSend(v11, "duration")}];

        [(NSMutableArray *)self->_rxFrameImpactTime replaceObjectAtIndex:v4 withObject:v10];
      }

      if (++v4 >= [(NSArray *)self->_rxFrameThresholds count])
      {
        goto LABEL_11;
      }
    }
  }

LABEL_11:
}

- (void)resetRxFrameImpact
{
  v3 = [(NSArray *)self->_rxFrameThresholds count];
  if (v3)
  {
    v4 = v3;
    for (i = 0; i != v4; ++i)
    {
      [(NSMutableArray *)self->_rxFrameImpactTime replaceObjectAtIndex:i withObject:&unk_2848BA298];
    }
  }
}

- (void)logUserImpactTimes
{
  txPerImpactTime = self->_txPerImpactTime;
  if (txPerImpactTime <= self->_txRxRateImpactTime)
  {
    txPerImpactTime = self->_txRxRateImpactTime;
  }

  if (txPerImpactTime <= self->_txLatencyImpactTime)
  {
    txPerImpactTime = self->_txLatencyImpactTime;
  }

  self->_unifiedImpactTime = txPerImpactTime;
  self->_sessionTotalBytes = self->_sessionRxBytes + self->_sessionTxBytes;
  NSLog(&cfstr_SRtappatsessio.isa, "[WiFiUsagePoorLinkSession logUserImpactTimes]", [(WiFiUsagePoorLinkSession *)self rtAppAtSessionEnd], [(WiFiUsagePoorLinkSession *)self rtAppAtFirstTDConfirmed], [(WiFiUsagePoorLinkSession *)self fgAppAtSessionEnd], [(WiFiUsagePoorLinkSession *)self fgAppAtFirstTDConfirmed], [(WiFiUsagePoorLinkSession *)self cellularFallbackEnabledAtLinkDown]);
  NSLog(&cfstr_STotalsessiont.isa, "[WiFiUsagePoorLinkSession logUserImpactTimes]", [(WiFiUsagePoorLinkSession *)self totalSessionTime], [(WiFiUsagePoorLinkSession *)self totalSessionTimeAfterFirstTDConfirmed]);
  NSLog(&cfstr_SLowmodhighimp.isa, "[WiFiUsagePoorLinkSession logUserImpactTimes]", [(WiFiUsagePoorLinkSession *)self lowModHighImpactTime], [(WiFiUsagePoorLinkSession *)self lowModHighImpactTimeAfterFirstTDConfirmed]);
  NSLog(&cfstr_SModhighimpact.isa, "[WiFiUsagePoorLinkSession logUserImpactTimes]", [(WiFiUsagePoorLinkSession *)self modHighImpactTime], [(WiFiUsagePoorLinkSession *)self modHighImpactTimeAfterFirstTDConfirmed]);
  NSLog(&cfstr_SHighimpacttim.isa, "[WiFiUsagePoorLinkSession logUserImpactTimes]", [(WiFiUsagePoorLinkSession *)self highImpactTime], [(WiFiUsagePoorLinkSession *)self highImpactTimeAfterFirstTDConfirmed]);
  v10 = [MEMORY[0x277CCAB68] string];
  [v10 appendFormat:@"%s RxFrameImpactTime [Threshold, Duration] ", "-[WiFiUsagePoorLinkSession logUserImpactTimes]"];
  if ([(NSArray *)self->_rxFrameThresholds count])
  {
    v4 = 0;
    while (1)
    {
      v5 = [(NSMutableArray *)self->_rxFrameImpactTime objectAtIndex:v4];
      v6 = [(NSArray *)self->_rxFrameThresholds objectAtIndex:v4];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      v7 = v5;
      v8 = [v6 unsignedIntegerValue];
      v9 = [v7 unsignedIntegerValue];

      [v10 appendFormat:@"[%lu, %lu] ", v8, v9];
      if (++v4 >= [(NSArray *)self->_rxFrameThresholds count])
      {
        goto LABEL_12;
      }
    }
  }

LABEL_12:
  NSLog(&stru_284888320.isa, v10);
  NSLog(&cfstr_SUnifiedimpact.isa, "[WiFiUsagePoorLinkSession logUserImpactTimes]", [(WiFiUsagePoorLinkSession *)self unifiedImpactTime], [(WiFiUsagePoorLinkSession *)self txPerImpactTime], [(WiFiUsagePoorLinkSession *)self txRxRateImpactTime], [(WiFiUsagePoorLinkSession *)self txLatencyImpactTime]);
  NSLog(&cfstr_SSessiontotalb.isa, "[WiFiUsagePoorLinkSession logUserImpactTimes]", [(WiFiUsagePoorLinkSession *)self sessionTotalBytes], [(WiFiUsagePoorLinkSession *)self sessionTxBytes], [(WiFiUsagePoorLinkSession *)self sessionRxBytes]);
}

+ (id)sessionStartedBy:(int)a3
{
  if ((a3 - 1) > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_2789C7BD8[a3 - 1];
  }
}

+ (id)sessionEndedBy:(int)a3
{
  if (a3 > 6)
  {
    return @"Unknown";
  }

  else
  {
    return off_2789C7C00[a3];
  }
}

+ (id)timerReason:(int)a3
{
  if (a3 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_2789C7C38[a3];
  }
}

+ (id)describeWiFiUsageMonitor_tdDecisionState:(id *)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = [WiFiUsagePrivacyFilter getLabelForTDMode:a3->var8];
  v6 = &stru_28487EF20;
  if (a3->var0)
  {
    v7 = @"decision_TxPER & ";
  }

  else
  {
    v7 = &stru_28487EF20;
  }

  if (a3->var1)
  {
    v8 = @"decision_BeaconPER & ";
  }

  else
  {
    v8 = &stru_28487EF20;
  }

  if (a3->var2)
  {
    v9 = @"decision_FWTxPER & ";
  }

  else
  {
    v9 = &stru_28487EF20;
  }

  v10 = @"decision_GatewayARPFailure & ";
  if (!a3->var3)
  {
    v10 = &stru_28487EF20;
  }

  if (a3->var4)
  {
    v11 = @"decision_SymptomsDNSError & ";
  }

  else
  {
    v11 = &stru_28487EF20;
  }

  if (a3->var5)
  {
    v12 = @"decision_AutoLeave & ";
  }

  else
  {
    v12 = &stru_28487EF20;
  }

  if (a3->var6)
  {
    v13 = @"decision_ActiveProbe & ";
  }

  else
  {
    v13 = &stru_28487EF20;
  }

  if (a3->var7)
  {
    v14 = @"decision_FastTD & ";
  }

  else
  {
    v14 = &stru_28487EF20;
  }

  if (a3->var9)
  {
    v15 = @"motionbasedAggressiveTDEnabled & ";
  }

  else
  {
    v15 = &stru_28487EF20;
  }

  v16 = @"walkoutDetected & ";
  if (!a3->var10)
  {
    v16 = &stru_28487EF20;
  }

  if (a3->var11)
  {
    v17 = @"waitForRoam & ";
  }

  else
  {
    v17 = &stru_28487EF20;
  }

  if (a3->var12)
  {
    v18 = @"edgeBSS & ";
  }

  else
  {
    v18 = &stru_28487EF20;
  }

  if (a3->var13)
  {
    v19 = @"appsUsingWiFi & ";
  }

  else
  {
    v19 = &stru_28487EF20;
  }

  if (a3->var14)
  {
    v6 = @"monitorMode & ";
  }

  v20 = [v4 stringWithFormat:@"tdMode:%@ & %@%@%@%@%@%@%@%@%@%@%@%@%@%@autoLeaveRSSIthreshold:%ld", v5, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v6, a3->var15];

  return v20;
}

+ (id)describeWiFiUsageMonitor_tdFastTDState:(id *)a3
{
  v3 = @"NO";
  if (a3->var9)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  if (a3->var10)
  {
    v3 = @"YES";
  }

  v5 = &stru_28487EF20;
  if (a3->var1)
  {
    v6 = @"Recommend & ";
  }

  else
  {
    v6 = &stru_28487EF20;
  }

  if (a3->var2)
  {
    v7 = @"TxPER & ";
  }

  else
  {
    v7 = &stru_28487EF20;
  }

  if (a3->var3)
  {
    v8 = @"BeaconPER & ";
  }

  else
  {
    v8 = &stru_28487EF20;
  }

  if (a3->var4)
  {
    v9 = @"FWTxPER & ";
  }

  else
  {
    v9 = &stru_28487EF20;
  }

  v10 = @"2GDataStall & ";
  if (!a3->var7)
  {
    v10 = &stru_28487EF20;
  }

  if (a3->var6)
  {
    v11 = @"2GPoorLink & ";
  }

  else
  {
    v11 = &stru_28487EF20;
  }

  if (a3->var5)
  {
    v12 = @"HighLatency & ";
  }

  else
  {
    v12 = &stru_28487EF20;
  }

  if (a3->var8)
  {
    v5 = @"InsufficientRxFrames & ";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"fastTD (RTApp:%@ Cheap5G:%@) votes:%lu %@%@%@%@%@%@%@%@", v4, v3, a3->var0, v6, v7, v8, v9, v10, v11, v12, v5];
}

+ (id)describeWiFiUsageMonitor_tdExecState:(id)a3
{
  v3 = &stru_28487EF20;
  v4 = @"aggressiveTDEnabled & ";
  if (!a3.var0)
  {
    v4 = &stru_28487EF20;
  }

  v5 = @"rnfAllowed & ";
  if ((*&a3.var0 & 0x100) == 0)
  {
    v5 = &stru_28487EF20;
  }

  v6 = @"fastTD & ";
  if ((*&a3.var0 & 0x10000) == 0)
  {
    v6 = &stru_28487EF20;
  }

  v7 = @"suppress_SymptomDataStallScoreGood & ";
  if ((*&a3.var0 & 0x1000000) == 0)
  {
    v7 = &stru_28487EF20;
  }

  v8 = @"suppress_SymptomAppPolicyScore & ";
  if ((*&a3.var0 & 0x100000000) == 0)
  {
    v8 = &stru_28487EF20;
  }

  v9 = @"suppress_FastCheapCellular & ";
  if ((*&a3.var0 & 0x10000000000) == 0)
  {
    v9 = &stru_28487EF20;
  }

  v10 = @"suppress_2dBGuard & ";
  if ((*&a3.var0 & 0x1000000000000) == 0)
  {
    v10 = &stru_28487EF20;
  }

  v11 = @"suppress_NoFGnetwApp & ";
  if ((*&a3.var0 & 0x100000000000000) == 0)
  {
    v11 = &stru_28487EF20;
  }

  v12 = @"suppress_TTR & ";
  if (!a3.var8)
  {
    v12 = &stru_28487EF20;
  }

  v13 = @"suppress_UserInput & ";
  if ((*&a3.var8 & 0x100) == 0)
  {
    v13 = &stru_28487EF20;
  }

  *&a3.var0 = @"suppress_GoodAfterRoam & ";
  if ((*&a3.var8 & 0x10000) == 0)
  {
    *&a3.var0 = &stru_28487EF20;
  }

  v14 = @"defer_activeProbing & ";
  if ((*&a3.var8 & 0x1000000) == 0)
  {
    v14 = &stru_28487EF20;
  }

  if ((*&a3.var8 & 0x100000000) != 0)
  {
    v3 = @"defer_roaming & ";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@%@%@%@%@%@%@%@%@%@%@", v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, *&a3.var0, v14, v3];
}

- (void)dealloc
{
  [(WiFiUsagePoorLinkSession *)self stopTimer];
  v3.receiver = self;
  v3.super_class = WiFiUsagePoorLinkSession;
  [(WiFiUsageSession *)&v3 dealloc];
}

- ($F459DE10F772475887923C84DB189A08)last_DecisionState
{
  v3 = *&self[402].var0;
  *&retstr->var0 = *&self[401].var13;
  *&retstr->var13 = v3;
  return self;
}

- (void)setLast_DecisionState:(id *)a3
{
  v3 = *&a3->var13;
  *&self->_last_DecisionState.decision_TxPER = *&a3->var0;
  *&self->_last_DecisionState.appsUsingWiFi = v3;
}

- ($CA18CBBE7683B0106BED709705F86C47)last_SuppressState
{
  p_last_SuppressState = &self->_last_SuppressState;
  v3 = *&self->_last_SuppressState.aggressiveTDEnabled;
  v4 = *&p_last_SuppressState->suppress_TTR | (p_last_SuppressState->defer_roaming << 32);
  result.var8 = v4;
  result.var9 = BYTE1(v4);
  result.var10 = BYTE2(v4);
  result.var11 = BYTE3(v4);
  result.var12 = BYTE4(v4);
  result.var0 = v3;
  result.var1 = BYTE1(v3);
  result.var2 = BYTE2(v3);
  result.var3 = BYTE3(v3);
  result.var4 = BYTE4(v3);
  result.var5 = BYTE5(v3);
  result.var6 = BYTE6(v3);
  result.var7 = HIBYTE(v3);
  return result;
}

- (void)setLast_FastTdVotes:(id *)a3
{
  v3 = *&a3->var9;
  *&self->_last_FastTdVotes.fastTD_voteCount = *&a3->var0;
  *&self->_last_FastTdVotes.fastTD_RTApp = v3;
}

@end