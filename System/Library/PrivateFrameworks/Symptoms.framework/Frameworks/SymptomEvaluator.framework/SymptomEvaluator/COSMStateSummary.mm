@interface COSMStateSummary
+ (id)summaryFromFlags:(unint64_t)flags;
+ (int)primaryArmedReasonFromFlags:(unint64_t)flags;
+ (int)primaryIdleReasonFromFlags:(unint64_t)flags;
+ (int)primaryOutrankReasonFromFlags:(unint64_t)flags;
+ (int)primaryReasonFromFlags:(unint64_t)flags state:(int)state;
+ (unsigned)wifiPublicTypeFromFlags:(unint64_t)flags;
+ (void)initialize;
- (BOOL)applyDictionary:(id)dictionary;
- (BOOL)armedEligible;
- (BOOL)captivityFrictionEligible;
- (BOOL)cellEligible;
- (BOOL)cellStatusOutrankExitEligible;
- (BOOL)deviceEligible;
- (BOOL)forcedOutrankEligible;
- (BOOL)userInitiatedFrictionEligible;
- (BOOL)wifiAmbientFrictionEligible;
- (BOOL)wifiEligible;
- (BOOL)wifiPublicEligible;
- (id)_prettyJSONStringStarting:(unint64_t)starting ending:(unint64_t)ending;
- (id)_stringForKey:(id)key object:(id)object;
- (id)arrayOfStringsDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryForm;
- (id)jsonRepresentation;
- (id)prettyJSONString;
- (id)prettyJSONStringPart1;
- (id)prettyJSONStringPart2;
- (id)prettyJSONStringPart3;
- (unint64_t)reasonFlags;
- (void)mergeEvents:(id)events;
@end

@implementation COSMStateSummary

- (unint64_t)reasonFlags
{
  v3 = 512;
  if (!self->_wifiTputLargeXfer)
  {
    v3 = 0;
  }

  if (self->_wifiTputInterfaceUse)
  {
    v3 |= 0x400uLL;
  }

  if (self->_arpFailureEvent)
  {
    v3 |= 0x1000uLL;
  }

  if (self->_wifiPolledFlowsProlongedBad)
  {
    v3 |= 0x10000000uLL;
  }

  if (self->_captivityIndeterminateEvent)
  {
    v3 |= 0x4000uLL;
  }

  if (self->_coremediaDownloadActive)
  {
    v3 |= 0x8000uLL;
  }

  if (self->_dataStallThresholdEvent)
  {
    v3 |= 0x10000uLL;
  }

  if (self->_wifiDnsProlongedOut)
  {
    v3 |= 0x40000uLL;
  }

  if (self->_excessCertificateErrorsEvent)
  {
    v3 |= 0x4000000uLL;
  }

  if (self->_imminentStallEvent)
  {
    v3 |= 0x80000uLL;
  }

  if (self->_mediaPlaybackStallEvent)
  {
    v3 |= 0x100000uLL;
  }

  if (self->_nd6FailureEvent)
  {
    v3 |= 0x200000uLL;
  }

  if (self->_userInitiatedActivity)
  {
    v3 |= 0x800000uLL;
  }

  if (self->_wifiLowDataMode)
  {
    v3 |= 0x1000000uLL;
  }

  if (self->_force5GPreferred)
  {
    v3 |= 0x8000000uLL;
  }

  if (self->_trialWaiveOutrankReason)
  {
    v3 |= 0x2000uLL;
  }

  if (self->_forceCellPreferred)
  {
    v3 |= 0x800uLL;
  }

  if (self->_cellPrivateNetworkActive)
  {
    v3 |= 0x40000000uLL;
  }

  if (self->_inCellPrivateNetworkOutrank)
  {
    v3 |= 0x80000000uLL;
  }

  if (!self->_wifiGoodSecurity && self->_wifiActive)
  {
    v3 |= 0x2000000uLL;
  }

  if (self->_cellLowDataMode)
  {
    v3 |= 0x100000000uLL;
  }

  if (self->_cellExpensive)
  {
    v3 |= 0x200000000uLL;
  }

  if (self->_cellWRMExpensive)
  {
    v3 |= 0x80000000000uLL;
  }

  if (self->_cellActive)
  {
    v4 = v3;
  }

  else
  {
    v4 = v3 | 0x400000000;
  }

  cellWRMStatusProlongedBad = [(COSMStateSummary *)self cellWRMStatusProlongedBad];
  v6 = v4 | 0x800000000;
  if (!cellWRMStatusProlongedBad)
  {
    v6 = v4;
  }

  if (self->_coremediaDownloadPeriodEnd)
  {
    v6 |= 0x1000000000uLL;
  }

  if (self->_lowPowerModeEnabled)
  {
    v6 |= 0x2000000000uLL;
  }

  if (!self->_screenUnlocked)
  {
    v6 |= 0x4000000000uLL;
  }

  if (self->_screenNotDark)
  {
    v7 = v6;
  }

  else
  {
    v7 = v6 | 0x8000000000;
  }

  thermalStateAllowsContinuedOutrank = [(COSMStateSummary *)self thermalStateAllowsContinuedOutrank];
  v9 = v7 | 0x10000000000;
  if (thermalStateAllowsContinuedOutrank)
  {
    v9 = v7;
  }

  if (self->_wifiManuallyJoined)
  {
    v9 |= 0x20000000000uLL;
  }

  if (self->_wifiChangedSSIDEvent)
  {
    v9 |= 0x40000000000uLL;
  }

  if (self->_wifiTputAdviceEnded)
  {
    v10 = v9 | 0x100000000000;
  }

  else
  {
    v10 = v9;
  }

  cellWRMStatusGood = [(COSMStateSummary *)self cellWRMStatusGood];
  v12 = v10 | 0x1000000000000;
  if (cellWRMStatusGood)
  {
    v12 = v10;
  }

  if (self->_wifiHome)
  {
    v12 |= 0x2000000000000uLL;
  }

  if (self->_rnfActivated)
  {
    v12 |= 0x10000000000000uLL;
  }

  if (self->_rnfAskedOutrank)
  {
    v13 = v12 | 0x100;
  }

  else
  {
    v13 = v12;
  }

  thermalStateAllowsEntryToOutrank = [(COSMStateSummary *)self thermalStateAllowsEntryToOutrank];
  v15 = v13 | 0x20000000000000;
  if (thermalStateAllowsEntryToOutrank)
  {
    v15 = v13;
  }

  if (!self->_wifiPrimary)
  {
    v15 |= 0x40000000000000uLL;
  }

  if (self->_wifiActive)
  {
    v16 = v15;
  }

  else
  {
    v16 = v15 | 0x80000000000000;
  }

  if ([(COSMStateSummary *)self cellPrimary])
  {
    v16 |= 0x200000000000000uLL;
  }

  cellWRMStatusGood2 = [(COSMStateSummary *)self cellWRMStatusGood];
  v18 = v16 | 0x100000000000000;
  if (!cellWRMStatusGood2)
  {
    v18 = v16;
  }

  if (self->_coremediaDownloadHysteresis)
  {
    v18 |= 0x400000000000000uLL;
  }

  if (self->_wifiExpensive)
  {
    v18 |= 0x2000000000000000uLL;
  }

  if (self->_wifiPublic)
  {
    v18 |= 0x4000000000000000uLL;
  }

  if (self->_wifiAlwaysOutrank)
  {
    v18 |= 0x20000uLL;
  }

  if (self->_wifiNeverOutrank)
  {
    v18 |= 0x400000uLL;
  }

  if (self->_wifiManaged)
  {
    v18 |= 0x8000000000000uLL;
  }

  if (self->_wifiHotspot20)
  {
    v18 |= 0x4000000000000uLL;
  }

  if (self->_wifiKnowableSporadic)
  {
    v18 |= 0x800000000000uLL;
  }

  if (self->_wifiSporadic)
  {
    v18 |= 0x400000000000uLL;
  }

  if (self->_wifiPolledFlowsCurrentlyBad)
  {
    v18 |= 0x20000000uLL;
  }

  if (self->_inDampeningPeriod)
  {
    v18 |= 0x1000000000000000uLL;
  }

  if (self->_dampeningTimerExpiryEvent)
  {
    v18 |= 0x800000000000000uLL;
  }

  if (self->_inRegretAvoidanceOutrank)
  {
    return v18 | 0x8000000000000000;
  }

  else
  {
    return v18;
  }
}

- (BOOL)wifiEligible
{
  targetHandler = self->_targetHandler;
  if (!targetHandler)
  {
    return 0;
  }

  wifiEligiblePred = [(CellOutrankHandlerSTM *)targetHandler wifiEligiblePred];
  if (!wifiEligiblePred)
  {
    return 0;
  }

  v5 = wifiEligiblePred;
  v6 = [wifiEligiblePred evaluateWithObject:self];

  return v6;
}

- (BOOL)cellEligible
{
  targetHandler = self->_targetHandler;
  if (!targetHandler)
  {
    return 0;
  }

  cellEligiblePred = [(CellOutrankHandlerSTM *)targetHandler cellEligiblePred];
  if (!cellEligiblePred)
  {
    return 0;
  }

  v5 = cellEligiblePred;
  v6 = [cellEligiblePred evaluateWithObject:self];

  return v6;
}

- (BOOL)deviceEligible
{
  targetHandler = self->_targetHandler;
  if (!targetHandler)
  {
    return 0;
  }

  deviceEligiblePred = [(CellOutrankHandlerSTM *)targetHandler deviceEligiblePred];
  if (!deviceEligiblePred)
  {
    return 0;
  }

  v5 = deviceEligiblePred;
  v6 = [deviceEligiblePred evaluateWithObject:self];

  return v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  inCellPrivateNetworkOutrank = self->_inCellPrivateNetworkOutrank;
  eventsInstanceNumber = self->_eventsInstanceNumber;
  inRegretAvoidanceOutrank = self->_inRegretAvoidanceOutrank;
  wifiTputAdviceEnded = self->_wifiTputAdviceEnded;
  mediaPlaybackStallEvent = self->_mediaPlaybackStallEvent;
  wifiChangedSSIDEvent = self->_wifiChangedSSIDEvent;
  dataStallThresholdEvent = self->_dataStallThresholdEvent;
  imminentStallEvent = self->_imminentStallEvent;
  dampeningTimerExpiryEvent = self->_dampeningTimerExpiryEvent;
  excessCertificateErrorsEvent = self->_excessCertificateErrorsEvent;
  rnfActivated = self->_rnfActivated;
  eventsInstanceNumber = [v3 initWithFormat:@"COSMStateSummary: trial %d force-profile %d forceSPI %d damp %d cell act %d const %d exp %d wexp %d pri %d wrm %d pbad %d prvnwact %d wifi act %d const %d exp %d goodsec %d pri %d dnsout %d pdnsout %d public %d hotspot20 %d managed %d always %d never %d sporadic %d known %d m-join %d flow-bad %d pbad %d tput-adv %d (lrg:%d/hi:%d) wrm %d home (auth:%d/known:%d)d/l act %d hyst %d end %d LPM %d notDark %d unlock %d thermal %d rnf act %d rnf outr %d ev exp %d certs %d dstall %d istall %d mstall %d ssidchg %d regret %d wifitputend %d prvnwoutrank %d secno %lld", self->_trialWaiveOutrankReason, self->_force5GPreferred, self->_forceCellPreferred, self->_inDampeningPeriod, self->_cellActive, self->_cellLowDataMode, self->_cellExpensive, self->_cellWRMExpensive, self->_cellPrimary, self->_cellWRMStatus, self->_cellWRMStatusProlongedBad, self->_cellPrivateNetworkActive, self->_wifiActive, self->_wifiLowDataMode, self->_wifiExpensive, self->_wifiGoodSecurity, self->_wifiPrimary, self->_wifiDnsOut, self->_wifiDnsProlongedOut, self->_wifiPublic, self->_wifiHotspot20, self->_wifiManaged, self->_wifiAlwaysOutrank, self->_wifiNeverOutrank, self->_wifiSporadic, self->_wifiKnowableSporadic, self->_wifiManuallyJoined, self->_wifiPolledFlowsCurrentlyBad, self->_wifiPolledFlowsProlongedBad, self->_wifiTputAdvice, self->_wifiTputLargeXfer, self->_wifiTputInterfaceUse, self->_wifiWRMStatus, self->_LOIUseAuthorized, self->_homeLocationIsKnown, self->_coremediaDownloadActive, self->_coremediaDownloadHysteresis, self->_coremediaDownloadPeriodEnd, self->_lowPowerModeEnabled, self->_screenNotDark, self->_screenUnlocked, self->_thermalPressure, rnfActivated, self->_rnfAskedOutrank, dampeningTimerExpiryEvent, excessCertificateErrorsEvent, dataStallThresholdEvent, imminentStallEvent, mediaPlaybackStallEvent, wifiChangedSSIDEvent, inRegretAvoidanceOutrank, wifiTputAdviceEnded, inCellPrivateNetworkOutrank, eventsInstanceNumber];

  return eventsInstanceNumber;
}

- (BOOL)forcedOutrankEligible
{
  targetHandler = self->_targetHandler;
  if (!targetHandler)
  {
    return 0;
  }

  forcedOutrankEligiblePred = [(CellOutrankHandlerSTM *)targetHandler forcedOutrankEligiblePred];
  if (!forcedOutrankEligiblePred)
  {
    return 0;
  }

  v5 = forcedOutrankEligiblePred;
  v6 = [forcedOutrankEligiblePred evaluateWithObject:self];

  return v6;
}

- (BOOL)armedEligible
{
  targetHandler = self->_targetHandler;
  if (!targetHandler)
  {
    return 0;
  }

  armedEligiblePred = [(CellOutrankHandlerSTM *)targetHandler armedEligiblePred];
  if (!armedEligiblePred)
  {
    return 0;
  }

  v5 = armedEligiblePred;
  v6 = [armedEligiblePred evaluateWithObject:self];

  return v6;
}

- (BOOL)captivityFrictionEligible
{
  targetHandler = self->_targetHandler;
  if (!targetHandler)
  {
    return 0;
  }

  captivityFrictionEligiblePred = [(CellOutrankHandlerSTM *)targetHandler captivityFrictionEligiblePred];
  if (!captivityFrictionEligiblePred)
  {
    return 0;
  }

  v5 = captivityFrictionEligiblePred;
  v6 = [captivityFrictionEligiblePred evaluateWithObject:self];

  return v6;
}

- (BOOL)cellStatusOutrankExitEligible
{
  targetHandler = self->_targetHandler;
  if (!targetHandler)
  {
    return 0;
  }

  cellStatusOutrankExitEligiblePred = [(CellOutrankHandlerSTM *)targetHandler cellStatusOutrankExitEligiblePred];
  if (!cellStatusOutrankExitEligiblePred)
  {
    return 0;
  }

  v5 = cellStatusOutrankExitEligiblePred;
  v6 = [cellStatusOutrankExitEligiblePred evaluateWithObject:self];

  return v6;
}

- (BOOL)userInitiatedFrictionEligible
{
  targetHandler = self->_targetHandler;
  if (!targetHandler)
  {
    return 0;
  }

  userInitiatedFrictionEligiblePred = [(CellOutrankHandlerSTM *)targetHandler userInitiatedFrictionEligiblePred];
  if (!userInitiatedFrictionEligiblePred)
  {
    return 0;
  }

  v5 = userInitiatedFrictionEligiblePred;
  v6 = [userInitiatedFrictionEligiblePred evaluateWithObject:self];

  return v6;
}

- (BOOL)wifiAmbientFrictionEligible
{
  targetHandler = self->_targetHandler;
  if (!targetHandler)
  {
    return 0;
  }

  wifiAmbientFrictionEligiblePred = [(CellOutrankHandlerSTM *)targetHandler wifiAmbientFrictionEligiblePred];
  if (!wifiAmbientFrictionEligiblePred)
  {
    return 0;
  }

  v5 = wifiAmbientFrictionEligiblePred;
  v6 = [wifiAmbientFrictionEligiblePred evaluateWithObject:self];

  return v6;
}

- (BOOL)wifiPublicEligible
{
  targetHandler = self->_targetHandler;
  if (!targetHandler)
  {
    return 0;
  }

  wifiPublicEligiblePred = [(CellOutrankHandlerSTM *)targetHandler wifiPublicEligiblePred];
  if (!wifiPublicEligiblePred)
  {
    return 0;
  }

  v5 = wifiPublicEligiblePred;
  v6 = [wifiPublicEligiblePred evaluateWithObject:self];

  return v6;
}

+ (id)summaryFromFlags:(unint64_t)flags
{
  v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v4 appendString:@"For Outrank entry:["];
  if ((flags & 0x800) != 0)
  {
    [v4 appendString:@" forceSPI"];
    if ((flags & 0x8000000) == 0)
    {
LABEL_3:
      if ((flags & 0x2000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_50;
    }
  }

  else if ((flags & 0x8000000) == 0)
  {
    goto LABEL_3;
  }

  [v4 appendString:@" force"];
  if ((flags & 0x2000) == 0)
  {
LABEL_4:
    if ((flags & 0x40000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_51;
  }

LABEL_50:
  [v4 appendString:@" trial"];
  if ((flags & 0x40000000) == 0)
  {
LABEL_5:
    if ((flags & 0x2000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_52;
  }

LABEL_51:
  [v4 appendString:@" privateNetworkActive"];
  if ((flags & 0x2000000) == 0)
  {
LABEL_6:
    if ((flags & 0x1000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_53;
  }

LABEL_52:
  [v4 appendString:@" wifiBadSec"];
  if ((flags & 0x1000000) == 0)
  {
LABEL_7:
    if ((flags & 0x10000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_54;
  }

LABEL_53:
  [v4 appendString:@" wifiLoDataMode"];
  if ((flags & 0x10000000) == 0)
  {
LABEL_8:
    if ((flags & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_55;
  }

LABEL_54:
  [v4 appendString:@" wifiFlowProlongedBad"];
  if ((flags & 0x200) == 0)
  {
LABEL_9:
    if ((flags & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_56;
  }

LABEL_55:
  [v4 appendString:@" wifiLargeTransfer"];
  if ((flags & 0x400) == 0)
  {
LABEL_10:
    if ((flags & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_57;
  }

LABEL_56:
  [v4 appendString:@" wifiInterfaceUse"];
  if ((flags & 0x8000) == 0)
  {
LABEL_11:
    if ((flags & 0x4000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_58;
  }

LABEL_57:
  [v4 appendString:@" d/l"];
  if ((flags & 0x4000) == 0)
  {
LABEL_12:
    if ((flags & 0x4000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_59;
  }

LABEL_58:
  [v4 appendString:@" captivity-issue"];
  if ((flags & 0x4000000) == 0)
  {
LABEL_13:
    if ((flags & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_60;
  }

LABEL_59:
  [v4 appendString:@" certs"];
  if ((flags & 0x1000) == 0)
  {
LABEL_14:
    if ((flags & 0x200000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_61;
  }

LABEL_60:
  [v4 appendString:@" ARP"];
  if ((flags & 0x200000) == 0)
  {
LABEL_15:
    if ((flags & 0x10000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_61:
  [v4 appendString:@" ND6"];
  if ((flags & 0x10000) != 0)
  {
LABEL_16:
    [v4 appendString:@" dStalls"];
  }

LABEL_17:
  if ((flags & 0x80000020000) == 0x20000)
  {
    [v4 appendString:@" wifiAlwaysOutrank"];
  }

  if ((flags & 0x840000) == 0x840000)
  {
    [v4 appendString:@" FrictionDNS"];
  }

  if ((flags & 0x100) != 0)
  {
    [v4 appendString:@" RNFAskedOutrank"];
  }

  [v4 appendString:@" ] for Outrank exit:["];
  if ((flags & 0x400000000) != 0)
  {
    [v4 appendString:@" cellInActiv"];
  }

  if ((~flags & 0x80200000000) != 0)
  {
    if ((flags & 0x100000000) == 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    [v4 appendString:@" cellExp-cellWRMExp"];
    if ((flags & 0x100000000) == 0)
    {
LABEL_27:
      if ((flags & 0x800000000) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_65;
    }
  }

  [v4 appendString:@" cellLoDataMode"];
  if ((flags & 0x800000000) == 0)
  {
LABEL_28:
    if ((flags & 0x40000000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_66;
  }

LABEL_65:
  [v4 appendString:@" cellWRMProlongBad"];
  if ((flags & 0x40000000000) == 0)
  {
LABEL_29:
    if ((flags & 0x20000000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_67;
  }

LABEL_66:
  [v4 appendString:@" SSIDchg"];
  if ((flags & 0x20000000000) == 0)
  {
LABEL_30:
    if ((flags & 0x10000000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_68;
  }

LABEL_67:
  [v4 appendString:@" wifiManJoin"];
  if ((flags & 0x10000000000000) == 0)
  {
LABEL_31:
    if ((flags & 0x100) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_69;
  }

LABEL_68:
  [v4 appendString:@" RNFActiv"];
  if ((flags & 0x100) == 0)
  {
LABEL_32:
    if ((flags & 0x1000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_70;
  }

LABEL_69:
  [v4 appendString:@" RNFAskedOutrank"];
  if ((flags & 0x1000000000) == 0)
  {
LABEL_33:
    if ((flags & 0x100000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_71;
  }

LABEL_70:
  [v4 appendString:@" d/l-end"];
  if ((flags & 0x100000000000) == 0)
  {
LABEL_34:
    if ((flags & 0x2000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_72;
  }

LABEL_71:
  [v4 appendString:@" tput-end"];
  if ((flags & 0x2000000000) == 0)
  {
LABEL_35:
    if ((flags & 0x10000000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_72:
  [v4 appendString:@" LPM"];
  if ((flags & 0x10000000000) != 0)
  {
LABEL_36:
    [v4 appendString:@" thermHi"];
  }

LABEL_37:
  if ((flags & 0x400000000008000) == 0)
  {
    if ((flags & 0x4000000000) != 0)
    {
      [v4 appendString:@" scrLock"];
    }

    if ((flags & 0x8000000000) != 0)
    {
      [v4 appendString:@" scrDark"];
    }
  }

  [v4 appendString:@" ] extra to stay in idle:["];
  if ((flags & 0x1000000000000) != 0)
  {
    [v4 appendString:@" cellWRMStayIdle"];
    if ((flags & 0x80000000000000) == 0)
    {
LABEL_44:
      if ((flags & 0x800000000000) != 0)
      {
        goto LABEL_45;
      }

      goto LABEL_76;
    }
  }

  else if ((flags & 0x80000000000000) == 0)
  {
    goto LABEL_44;
  }

  [v4 appendString:@" wifiInActiv"];
  if ((flags & 0x800000000000) != 0)
  {
LABEL_45:
    if ((flags & 0x400000000000) != 0)
    {
      goto LABEL_46;
    }

    goto LABEL_77;
  }

LABEL_76:
  [v4 appendString:@" wifiSporadicNOTKnown"];
  if ((flags & 0x400000000000) != 0)
  {
LABEL_46:
    if ((flags & 0x4000000000000000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_78;
  }

LABEL_77:
  [v4 appendString:@" wifiNOTSporadic"];
  if ((flags & 0x4000000000000000) == 0)
  {
    goto LABEL_82;
  }

LABEL_78:
  if ((flags & 0x4000000000000) != 0)
  {
    [v4 appendString:@" wifiHotspot20"];
  }

  if ((flags & 0x8000000000000) != 0)
  {
    [v4 appendString:@" wifiManagedNetwork"];
  }

LABEL_82:
  if ((flags & 0x400000) != 0)
  {
    [v4 appendString:@" wifiNeverOutrank"];
  }

  if ((flags & 0x20000000000000) != 0)
  {
    [v4 appendString:@" thermalStayIdle"];
  }

  [v4 appendString:@" ] additional status:["];
  if ((flags & 0x200000000000000) != 0)
  {
    [v4 appendString:@" cellPri"];
    if ((flags & 0x100000000000000) == 0)
    {
LABEL_88:
      if ((flags & 0x400000000000000) == 0)
      {
        goto LABEL_89;
      }

      goto LABEL_115;
    }
  }

  else if ((flags & 0x100000000000000) == 0)
  {
    goto LABEL_88;
  }

  [v4 appendString:@" cellWRMGd"];
  if ((flags & 0x400000000000000) == 0)
  {
LABEL_89:
    if ((flags & 0x2000000000000000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_116;
  }

LABEL_115:
  [v4 appendString:@" d/l-hyst"];
  if ((flags & 0x2000000000000000) == 0)
  {
LABEL_90:
    if ((flags & 0x4000000000000000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_117;
  }

LABEL_116:
  [v4 appendString:@" wifiExp"];
  if ((flags & 0x4000000000000000) == 0)
  {
LABEL_91:
    if ((flags & 0x200000000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_118;
  }

LABEL_117:
  [v4 appendString:@" wifiPublic"];
  if ((flags & 0x200000000) == 0)
  {
LABEL_92:
    if ((flags & 0x80000000000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_119;
  }

LABEL_118:
  [v4 appendString:@" cellExp"];
  if ((flags & 0x80000000000) == 0)
  {
LABEL_93:
    if ((flags & 0x20000000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_94;
  }

LABEL_119:
  [v4 appendString:@" cellWRMExp"];
  if ((flags & 0x20000000) != 0)
  {
LABEL_94:
    [v4 appendString:@" wifiFlowCurrentlyBad"];
  }

LABEL_95:
  if ((flags & 0x840000) == 0x40000)
  {
    [v4 appendString:@" DNS"];
  }

  if ((flags & 0x400000000008000) != 0)
  {
    if ((flags & 0x4000000000) != 0)
    {
      [v4 appendString:@" d/l-active-scrLock"];
    }

    if ((flags & 0x8000000000) != 0)
    {
      [v4 appendString:@" d/l-active-scrDark"];
    }
  }

  if ((flags & 0x800000) != 0)
  {
    [v4 appendString:@" usrActiv"];
    if ((flags & 0x800000000000) == 0)
    {
LABEL_104:
      if ((flags & 0x400000000000) == 0)
      {
        goto LABEL_105;
      }

      goto LABEL_123;
    }
  }

  else if ((flags & 0x800000000000) == 0)
  {
    goto LABEL_104;
  }

  [v4 appendString:@" wifiKnownSporadic"];
  if ((flags & 0x400000000000) == 0)
  {
LABEL_105:
    if ((flags & 0x1000000000000000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_124;
  }

LABEL_123:
  [v4 appendString:@" wifiSporadic"];
  if ((flags & 0x1000000000000000) == 0)
  {
LABEL_106:
    if ((flags & 0x800000000000000) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_125;
  }

LABEL_124:
  [v4 appendString:@" tmrRun"];
  if ((flags & 0x800000000000000) == 0)
  {
LABEL_107:
    if ((flags & 0x8000000000000000) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_126;
  }

LABEL_125:
  [v4 appendString:@" tmrExpiry"];
  if ((flags & 0x8000000000000000) == 0)
  {
LABEL_108:
    if ((flags & 0x80000000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_127;
  }

LABEL_126:
  [v4 appendString:@" regretAvoidance"];
  if ((flags & 0x80000000) == 0)
  {
LABEL_109:
    if ((flags & 0x80000) == 0)
    {
      goto LABEL_110;
    }

LABEL_128:
    [v4 appendString:@" iStalls"];
    if ((flags & 0x100000) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_111;
  }

LABEL_127:
  [v4 appendString:@" privateNetworkWasActive"];
  if ((flags & 0x80000) != 0)
  {
    goto LABEL_128;
  }

LABEL_110:
  if ((flags & 0x100000) != 0)
  {
LABEL_111:
    [v4 appendString:@" pStalls"];
  }

LABEL_112:
  [v4 appendString:@" ]"];
  v5 = v4;

  return v4;
}

- (id)_stringForKey:(id)key object:(id)object
{
  keyCopy = key;
  objectCopy = object;
  v7 = objc_alloc_init(MEMORY[0x277CCAB68]);
  if (objectCopy)
  {
    keyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"   %@: ", keyCopy];
    if ([keyCopy length] > 0x21)
    {
      [v7 appendString:keyCopy];
    }

    else
    {
      v9 = [keyCopy stringByPaddingToLength:34 withString:@" " startingAtIndex:0];
      [v7 appendString:v9];
    }

    if (objc_opt_isKindOfClass())
    {
      if ([objectCopy BOOLValue])
      {
        v10 = @"true";
      }

      else
      {
        v10 = @"false";
      }

      [v7 appendString:v10];
    }

    else
    {
      objectCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", objectCopy];
      [v7 appendString:objectCopy];
    }
  }

  return v7;
}

+ (int)primaryIdleReasonFromFlags:(unint64_t)flags
{
  if ((flags & 0x400000000) != 0)
  {
    return 34;
  }

  if ((flags & 0xC0000000) == 0x80000000)
  {
    return 71;
  }

  if ((~flags & 0x80200000000) == 0)
  {
    return 66;
  }

  if ((flags & 0x100000000) != 0)
  {
    return 32;
  }

  if ((flags & 0x800000000) != 0)
  {
    return 35;
  }

  if ((flags & 0x20000000000) != 0)
  {
    return 41;
  }

  if ((flags & 0x800000000000) == 0)
  {
    return 70;
  }

  if ((flags & 0x400000000000) == 0)
  {
    return 65;
  }

  if ((flags & 0x40000000000) != 0)
  {
    return 42;
  }

  if ((flags & 0x10000000000000) != 0)
  {
    return 52;
  }

  if ((flags & 0x100) != 0)
  {
    return 8;
  }

  if ((flags & 0x1000000000) != 0)
  {
    return 36;
  }

  if ((flags & 0x2000000000) != 0)
  {
    return 37;
  }

  if ((flags & 0x10000000000) != 0)
  {
    return 40;
  }

  if ((flags & 0x400000000008000) == 0)
  {
    if ((flags & 0x4000000000) != 0)
    {
      return 38;
    }

    if ((flags & 0x8000000000) != 0)
    {
      return 39;
    }
  }

  if ((flags & 0x1000000000000) != 0)
  {
    return 48;
  }

  if ((flags & 0x80000000000000) != 0)
  {
    return 55;
  }

  if ((flags & 0x4000000000000000) != 0)
  {
    if ((flags & 0x4000000000000) != 0)
    {
      return 50;
    }

    if ((flags & 0x8000000000000) != 0)
    {
      return 51;
    }
  }

  if ((flags & 0x400000) != 0)
  {
    return 22;
  }

  if ((flags & 0x100000000000) != 0)
  {
    return 44;
  }

  return -1;
}

+ (int)primaryArmedReasonFromFlags:(unint64_t)flags
{
  if ((flags & 0x80000000000) != 0)
  {
    v3 = -1;
  }

  else
  {
    v3 = 69;
  }

  if ((flags & 0x200000000) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 68;
  }

  if ((flags & 0x80200000000) != 0)
  {
    return v4;
  }

  else
  {
    return 67;
  }
}

+ (int)primaryOutrankReasonFromFlags:(unint64_t)flags
{
  if ((flags & 0x800) != 0)
  {
    return 11;
  }

  if ((flags & 0x8000000) != 0)
  {
    return 27;
  }

  if ((flags & 0x2000) != 0)
  {
    return 13;
  }

  if ((flags & 0x40000000) != 0)
  {
    return 30;
  }

  if ((flags & 0x1000000) != 0)
  {
    return 24;
  }

  if ((flags & 0x2000000) != 0)
  {
    return 25;
  }

  if ((flags & 0x200) != 0)
  {
    return 9;
  }

  if ((flags & 0x400) != 0)
  {
    return 10;
  }

  if ((flags & 0x8000) != 0)
  {
    return 15;
  }

  if ((flags & 0x4000) != 0)
  {
    return 14;
  }

  if ((flags & 0x4000000) != 0)
  {
    return 26;
  }

  if ((flags & 0x1000) != 0)
  {
    return 12;
  }

  if ((flags & 0x200000) != 0)
  {
    return 21;
  }

  if ((flags & 0x10000) != 0)
  {
    return 16;
  }

  if ((flags & 0x800000) != 0)
  {
    if ((flags & 0x40000) != 0)
    {
      return 18;
    }

    if ((flags & 0x10000000) != 0)
    {
      return 28;
    }
  }

  if ((flags & 0x100) != 0)
  {
    return 8;
  }

  else
  {
    return -1;
  }
}

+ (int)primaryReasonFromFlags:(unint64_t)flags state:(int)state
{
  if (state == 3)
  {
    return [self primaryOutrankReasonFromFlags:flags];
  }

  if (state == 2)
  {
    return [self primaryArmedReasonFromFlags:flags];
  }

  if (state)
  {
    return -1;
  }

  return [self primaryIdleReasonFromFlags:flags];
}

+ (unsigned)wifiPublicTypeFromFlags:(unint64_t)flags
{
  v3 = (flags >> 62) | 2;
  if ((flags & 0x4000000000000) == 0)
  {
    v3 = (flags & 0x4000000000000000) != 0;
  }

  return v3 | (flags >> 49) & 4;
}

- (id)_prettyJSONStringStarting:(unint64_t)starting ending:(unint64_t)ending
{
  v7 = objc_alloc_init(MEMORY[0x277CCAB68]);
  if ([gSortedKeys count] >= ending)
  {
    if (starting < ending)
    {
      do
      {
        if (starting)
        {
          v8 = @",\n";
        }

        else
        {
          v8 = @"{\n";
        }

        [v7 appendString:v8];
        v9 = [gSortedKeys objectAtIndexedSubscript:starting];
        v10 = [(COSMStateSummary *)self valueForKey:v9];
        v11 = [(COSMStateSummary *)self _stringForKey:v9 object:v10];
        [v7 appendString:v11];

        ++starting;
      }

      while (ending != starting);
    }

    [v7 appendString:@"\n}"];
  }

  return v7;
}

- (id)prettyJSONString
{
  v3 = [gSortedKeys count];
  if (v3)
  {
    v3 = -[COSMStateSummary _prettyJSONStringStarting:ending:](self, "_prettyJSONStringStarting:ending:", 0, [gSortedKeys count]);
  }

  return v3;
}

- (id)prettyJSONStringPart1
{
  v3 = [gSortedKeys count];
  if (v3)
  {
    v3 = -[COSMStateSummary _prettyJSONStringStarting:ending:](self, "_prettyJSONStringStarting:ending:", 0, [gSortedKeys count] / 3uLL);
  }

  return v3;
}

- (id)prettyJSONStringPart2
{
  v3 = [gSortedKeys count];
  if (v3)
  {
    v4 = [gSortedKeys count] / 3uLL;
    v3 = -[COSMStateSummary _prettyJSONStringStarting:ending:](self, "_prettyJSONStringStarting:ending:", v4, 2 * [gSortedKeys count] / 3uLL);
  }

  return v3;
}

- (id)prettyJSONStringPart3
{
  v3 = [gSortedKeys count];
  if (v3)
  {
    v4 = 2 * [gSortedKeys count] / 3uLL;
    v3 = -[COSMStateSummary _prettyJSONStringStarting:ending:](self, "_prettyJSONStringStarting:ending:", v4, [gSortedKeys count]);
  }

  return v3;
}

- (id)arrayOfStringsDescription
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([gSortedKeys count])
  {
    v4 = 0;
    do
    {
      v5 = [gSortedKeys objectAtIndexedSubscript:v4];
      v6 = [(COSMStateSummary *)self valueForKey:v5];
      v7 = [(COSMStateSummary *)self _stringForKey:v5 object:v6];
      if (v7)
      {
        [v3 addObject:v7];
      }

      ++v4;
    }

    while (v4 < [gSortedKeys count]);
  }

  return v3;
}

- (id)dictionaryForm
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = gSortedKeys;
  v4 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v9 = outrankLogHandle;
        if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v28 = v8;
          _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "COSMStateSummary dictionaryForm: check key %@", buf, 0xCu);
        }

        v10 = [(COSMStateSummary *)self valueForKey:v8];
        if (v10)
        {
          [v3 setObject:v10 forKeyedSubscript:v8];
          v11 = outrankLogHandle;
          if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
          {
            v12 = v11;
            v13 = [v3 objectForKeyedSubscript:v8];
            *buf = 138412546;
            v28 = v8;
            v29 = 2112;
            v30 = v13;
            _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEBUG, "COSMStateSummary dictionaryForm added key %@ -> %@", buf, 0x16u);
          }

          v14 = outrankLogHandle;
          if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
          {
            v15 = v14;
            v16 = objc_opt_class();
            v17 = NSStringFromClass(v16);
            *buf = 138412546;
            v28 = v8;
            v29 = 2112;
            v30 = v17;
            _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEBUG, "COSMStateSummary dictionaryForm key %@ class %@", buf, 0x16u);
          }
        }

        else
        {
          v18 = outrankLogHandle;
          if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v28 = v8;
            _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_ERROR, "COSMStateSummary dictionaryForm no object for key %@", buf, 0xCu);
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v5);
  }

  v19 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v28 = v3;
    _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEBUG, "COSMStateSummary dictionaryForm return %@", buf, 0xCu);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)jsonRepresentation
{
  v9 = *MEMORY[0x277D85DE8];
  dictionaryForm = [(COSMStateSummary *)self dictionaryForm];
  v3 = [MEMORY[0x277CCAAA0] dataWithJSONObject:dictionaryForm options:3 error:0];
  v4 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEBUG, "COSMStateSummary jsonRepresentation return %@", &v7, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)applyDictionary:(id)dictionary
{
  v35 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = [dictionaryCopy countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = &outrankLogHandle;
    v9 = *v25;
    *&v6 = 138412546;
    v23 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(dictionaryCopy);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        v12 = [dictionaryCopy objectForKeyedSubscript:{v11, v23}];
        v13 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
        {
          v14 = v13;
          v15 = objc_opt_class();
          NSStringFromClass(v15);
          v16 = v9;
          v17 = v8;
          v19 = v18 = self;
          *buf = 138412802;
          v29 = v11;
          v30 = 2112;
          v31 = v12;
          v32 = 2112;
          v33 = v19;
          _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEBUG, "COSMStateSummary applyDictionary key %@ object %@ of class %@", buf, 0x20u);

          self = v18;
          v8 = v17;
          v9 = v16;
        }

        [(COSMStateSummary *)self setValue:v12 forKey:v11];
        v20 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
        {
          *buf = v23;
          v29 = v11;
          v30 = 2112;
          v31 = v12;
          _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEBUG, "COSMStateSummary applyDictionary success for key %@ object %@", buf, 0x16u);
        }
      }

      v7 = [dictionaryCopy countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v7);
  }

  v21 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)mergeEvents:(id)events
{
  eventsCopy = events;
  self->_arpFailureEvent = [eventsCopy arpFailureEvent];
  self->_captivityIndeterminateEvent = [eventsCopy captivityIndeterminateEvent];
  self->_dampeningTimerExpiryEvent = [eventsCopy dampeningTimerExpiryEvent];
  self->_dataStallThresholdEvent = [eventsCopy dataStallThresholdEvent];
  self->_excessCertificateErrorsEvent = [eventsCopy excessCertificateErrorsEvent];
  self->_imminentStallEvent = [eventsCopy imminentStallEvent];
  self->_mediaPlaybackStallEvent = [eventsCopy mediaPlaybackStallEvent];
  self->_nd6FailureEvent = [eventsCopy nd6FailureEvent];
  self->_wifiChangedSSIDEvent = [eventsCopy wifiChangedSSIDEvent];
  eventsInstanceNumber = [eventsCopy eventsInstanceNumber];

  self->_eventsInstanceNumber = eventsInstanceNumber;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(COSMStateSummary);
  if ([gSortedKeys count] && objc_msgSend(gSortedKeys, "count"))
  {
    v5 = 0;
    do
    {
      v6 = [gSortedKeys objectAtIndexedSubscript:v5];
      v7 = [(COSMStateSummary *)self valueForKey:v6];
      [(COSMStateSummary *)v4 setValue:v7 forKey:v6];

      ++v5;
    }

    while ([gSortedKeys count] > v5);
  }

  return v4;
}

+ (void)initialize
{
  outCount = 0;
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = class_copyPropertyList(self, &outCount);
  if (outCount)
  {
    for (i = 0; i < outCount; ++i)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:property_getName(v4[i])];
      [v3 addObject:v6];
    }
  }

  v7 = [v3 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];
  v8 = gSortedKeys;
  gSortedKeys = v7;

  if (v4)
  {
    free(v4);
  }

  gBoolClass = NSClassFromString(&cfstr_NscfBOOLean.isa);
}

@end