@interface SRWxDevice
- (void)checkActiveHRMDeviceUpdate;
- (void)checkDataRelayServerPublishEligibility;
- (void)checkSiriHijackEligibility;
- (void)setDataRelayServerPublished:(BOOL)a3;
- (void)setFirstBannerShown:(BOOL)a3;
- (void)setHasOwnership:(BOOL)a3;
- (void)setHijackBackoffTicks:(unint64_t)a3;
- (void)setInEar:(BOOL)a3;
- (void)setIsHRMCapable:(BOOL)a3;
- (void)setIsRoutingActionInitialized:(BOOL)a3;
- (void)setManualRouteChangeInProgress:(BOOL)a3;
- (void)setManuallyRouted:(BOOL)a3;
- (void)setOtherTipiDeviceBuildVersion:(int64_t)a3 andMinorBuildVersion:(int64_t)a4;
- (void)setOtherTipiDeviceDRCompatible:(BOOL)a3;
- (void)setOtherTipiDeviceInfo:(id)a3 andName:(id)a4 andVersion:(id)a5;
- (void)setOtherTipiDeviceIsStreamingAudio:(BOOL)a3;
- (void)setOtherTipiDeviceIsWatch:(BOOL)a3;
- (void)setOtherTipiDevicePlayingApp:(id)a3;
- (void)setOtherTipiDeviceSiriEnablement:(BOOL)a3;
- (void)setOtherTipiIDSIdentifier:(id)a3;
- (void)setOtherTipiManuallyRouteTicks:(unint64_t)a3;
- (void)setRouted:(BOOL)a3;
- (void)setRoutingAction:(int)a3;
- (void)setRoutingUI:(int)a3;
- (void)setTipiAndRoutedStateFlags:(unsigned int)a3;
@end

@implementation SRWxDevice

- (void)setFirstBannerShown:(BOOL)a3
{
  if (self->firstBannerShown != a3)
  {
    if (dword_1002F6700 <= 30)
    {
      if (dword_1002F6700 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        firstBannerShown = self->firstBannerShown;
      }

      deviceAddress = self->deviceAddress;
      LogPrintF();
    }

LABEL_6:
    self->firstBannerShown = a3;
  }
}

- (void)checkActiveHRMDeviceUpdate
{
  if (dword_1002F6700 <= 30 && (dword_1002F6700 != -1 || _LogCategory_Initialize()))
  {
    sub_1001DCB84(self);
  }

  v3 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
  [v3 activeHRMDeviceUpdate];
}

- (void)checkSiriHijackEligibility
{
  if (_os_feature_enabled_impl())
  {
    if (dword_1002F6700 <= 30 && (dword_1002F6700 != -1 || _LogCategory_Initialize()))
    {
      sub_1001DCBEC(self);
    }

    otherTipiDeviceBTAddress = self->otherTipiDeviceBTAddress;
    if (otherTipiDeviceBTAddress)
    {
      LOBYTE(otherTipiDeviceBTAddress) = self->otherTipiAudioCategory == 100 && !self->otherTipiDeviceSiriEnablement;
    }

    v4 = otherTipiDeviceBTAddress & 1;
    siriHijackEligible = self->siriHijackEligible;
    if (siriHijackEligible != v4)
    {
      if (dword_1002F6700 <= 30)
      {
        if (dword_1002F6700 != -1)
        {
LABEL_13:
          v6 = "no";
          if (siriHijackEligible)
          {
            v7 = "yes";
          }

          else
          {
            v7 = "no";
          }

          if (v4)
          {
            v6 = "yes";
          }

          v9 = v7;
          v10 = v6;
          deviceAddress = self->deviceAddress;
          LogPrintF();
          goto LABEL_20;
        }

        if (_LogCategory_Initialize())
        {
          LOBYTE(siriHijackEligible) = self->siriHijackEligible;
          goto LABEL_13;
        }
      }

LABEL_20:
      self->siriHijackEligible = v4;
      v11 = [BTSmartRoutingDaemon sharedBTSmartRoutingDaemon:deviceAddress];
      [v11 systemStateUpdateRequired];
    }
  }
}

- (void)setDataRelayServerPublished:(BOOL)a3
{
  if (self->dataRelayServerPublished != a3)
  {
    if (dword_1002F6700 <= 30)
    {
      if (dword_1002F6700 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        dataRelayServerPublished = self->dataRelayServerPublished;
      }

      deviceAddress = self->deviceAddress;
      LogPrintF();
    }

LABEL_6:
    self->dataRelayServerPublished = a3;
  }
}

- (void)setHijackBackoffTicks:(unint64_t)a3
{
  if (self->hijackBackoffTicks != a3)
  {
    if (dword_1002F6700 <= 30)
    {
      if (dword_1002F6700 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        hijackBackoffTicks = self->hijackBackoffTicks;
      }

      deviceAddress = self->deviceAddress;
      LogPrintF();
    }

LABEL_6:
    self->hijackBackoffTicks = a3;
  }
}

- (void)setInEar:(BOOL)a3
{
  inEar = self->inEar;
  if (inEar == a3)
  {
    return;
  }

  v5 = a3;
  if (dword_1002F6700 <= 30)
  {
    if (dword_1002F6700 != -1)
    {
LABEL_4:
      v7 = "no";
      if (inEar)
      {
        v8 = "yes";
      }

      else
      {
        v8 = "no";
      }

      if (v5)
      {
        v7 = "yes";
      }

      v9 = v8;
      v10 = v7;
      LogPrintF();
      goto LABEL_11;
    }

    if (_LogCategory_Initialize())
    {
      LOBYTE(inEar) = self->inEar;
      goto LABEL_4;
    }
  }

LABEL_11:
  self->inEar = v5;
  [(SRWxDevice *)self checkActiveHRMDeviceUpdate:v9];

  [(SRWxDevice *)self checkDataRelayServerPublishEligibility];
}

- (void)setManuallyRouted:(BOOL)a3
{
  if (self->manuallyRouted != a3)
  {
    if (dword_1002F6700 <= 30)
    {
      if (dword_1002F6700 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        manuallyRouted = self->manuallyRouted;
      }

      LogPrintF();
    }

LABEL_6:
    self->manuallyRouted = a3;
  }
}

- (void)setManualRouteChangeInProgress:(BOOL)a3
{
  if (self->manualRouteChangeInProgress != a3)
  {
    if (dword_1002F6700 <= 30)
    {
      if (dword_1002F6700 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        manualRouteChangeInProgress = self->manualRouteChangeInProgress;
      }

      LogPrintF();
    }

LABEL_6:
    self->manualRouteChangeInProgress = a3;
  }
}

- (void)setOtherTipiDevicePlayingApp:(id)a3
{
  v7 = a3;
  if (![(NSString *)self->otherTipiDevicePlayingApp isEqualToString:?])
  {
    if (dword_1002F6700 <= 30 && (dword_1002F6700 != -1 || _LogCategory_Initialize()))
    {
      otherTipiDevicePlayingApp = self->otherTipiDevicePlayingApp;
      deviceAddress = self->deviceAddress;
      LogPrintF();
    }

    objc_storeStrong(&self->otherTipiDevicePlayingApp, a3);
  }
}

- (void)setOtherTipiDeviceInfo:(id)a3 andName:(id)a4 andVersion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v9;
  otherTipiDeviceBTAddress = self->otherTipiDeviceBTAddress;
  v23 = v12;
  if (!(v12 | otherTipiDeviceBTAddress))
  {
    goto LABEL_9;
  }

  if (![(NSString *)otherTipiDeviceBTAddress isEqualToString:v12])
  {
    if (dword_1002F6700 <= 30 && (dword_1002F6700 != -1 || _LogCategory_Initialize()))
    {
      v21 = v10;
      v22 = v11;
      v19 = self->otherTipiDeviceBTAddress;
      v20 = v23;
      deviceAddress = self->deviceAddress;
      LogPrintF();
    }

    objc_storeStrong(&self->otherTipiDeviceBTAddress, a3);
    objc_storeStrong(&self->otherTipiDeviceBTName, a4);
    objc_storeStrong(&self->otherTipiDeviceVersion, a5);
    self->otherTipiManuallyRouteTicks = 0;
    [(SRWxDevice *)self checkSiriHijackEligibility];
    [(SRWxDevice *)self checkDataRelayServerPublishEligibility];
  }

  if (!v23)
  {
LABEL_9:
    self->otherTipiAudioCategory = 0;
  }

  tipiAndRoutedState = self->tipiAndRoutedState;
  if (self->otherTipiDeviceBTAddress)
  {
    if (self->otherTipiDeviceIsWatch)
    {
      v15 = 3;
    }

    else
    {
      v15 = 1;
    }

    v16 = v15 | tipiAndRoutedState;
  }

  else
  {
    v16 = tipiAndRoutedState & 0xFFFFFFFC;
  }

  v17 = [BTSmartRoutingDaemon sharedBTSmartRoutingDaemon:deviceAddress];
  [v17 _setTipiAndRoutedStateFlags:v16 forDevice:self];
}

- (void)setOtherTipiDeviceIsStreamingAudio:(BOOL)a3
{
  if (self->otherTipiDeviceIsStreamingAudio == a3)
  {
    return;
  }

  if (dword_1002F6700 <= 30)
  {
    if (dword_1002F6700 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      otherTipiDeviceIsStreamingAudio = self->otherTipiDeviceIsStreamingAudio;
    }

    LogPrintF();
  }

LABEL_6:
  self->otherTipiDeviceIsStreamingAudio = a3;

  [(SRWxDevice *)self checkDataRelayServerPublishEligibility];
}

- (void)setOtherTipiDeviceIsWatch:(BOOL)a3
{
  v3 = a3;
  otherTipiDeviceIsWatch = self->otherTipiDeviceIsWatch;
  if (otherTipiDeviceIsWatch == a3)
  {
    goto LABEL_12;
  }

  if (dword_1002F6700 <= 30)
  {
    if (dword_1002F6700 != -1)
    {
LABEL_4:
      v6 = "no";
      if (otherTipiDeviceIsWatch)
      {
        v7 = "yes";
      }

      else
      {
        v7 = "no";
      }

      if (v3)
      {
        v6 = "yes";
      }

      v10 = v7;
      v11 = v6;
      LogPrintF();
      goto LABEL_11;
    }

    if (_LogCategory_Initialize())
    {
      LOBYTE(otherTipiDeviceIsWatch) = self->otherTipiDeviceIsWatch;
      goto LABEL_4;
    }
  }

LABEL_11:
  self->otherTipiDeviceIsWatch = v3;
LABEL_12:
  v8 = self->tipiAndRoutedState & 0xFFFFFFFD;
  if (v3)
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  v12 = [BTSmartRoutingDaemon sharedBTSmartRoutingDaemon:v10];
  [v12 _setTipiAndRoutedStateFlags:v9 | v8 forDevice:self];
}

- (void)setOtherTipiDeviceBuildVersion:(int64_t)a3 andMinorBuildVersion:(int64_t)a4
{
  if (*&self->otherTipiDeviceMajorBuildVersion != __PAIR128__(a4, a3))
  {
    if (dword_1002F6700 <= 30)
    {
      if (dword_1002F6700 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        otherTipiDeviceMajorBuildVersion = self->otherTipiDeviceMajorBuildVersion;
      }

      otherTipiDeviceMinorBuildVersion = self->otherTipiDeviceMinorBuildVersion;
      deviceAddress = self->deviceAddress;
      LogPrintF();
    }

LABEL_6:
    self->otherTipiDeviceMajorBuildVersion = a3;
    self->otherTipiDeviceMinorBuildVersion = a4;
  }
}

- (void)setOtherTipiDeviceDRCompatible:(BOOL)a3
{
  if (self->otherTipiDeviceDRCompatible != a3)
  {
    if (dword_1002F6700 <= 30)
    {
      if (dword_1002F6700 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        otherTipiDeviceDRCompatible = self->otherTipiDeviceDRCompatible;
      }

      LogPrintF();
    }

LABEL_6:
    self->otherTipiDeviceDRCompatible = a3;
  }
}

- (void)setOtherTipiIDSIdentifier:(id)a3
{
  v7 = a3;
  if (![(NSString *)self->_otherTipiIDSIdentifier isEqualToString:?])
  {
    if (dword_1002F6700 <= 30 && (dword_1002F6700 != -1 || _LogCategory_Initialize()))
    {
      otherTipiIDSIdentifier = self->_otherTipiIDSIdentifier;
      deviceAddress = self->deviceAddress;
      LogPrintF();
    }

    objc_storeStrong(&self->_otherTipiIDSIdentifier, a3);
  }
}

- (void)setOtherTipiManuallyRouteTicks:(unint64_t)a3
{
  if (self->otherTipiManuallyRouteTicks != a3)
  {
    if (dword_1002F6700 <= 30)
    {
      if (dword_1002F6700 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        otherTipiManuallyRouteTicks = self->otherTipiManuallyRouteTicks;
      }

      deviceAddress = self->deviceAddress;
      LogPrintF();
    }

LABEL_6:
    self->otherTipiManuallyRouteTicks = a3;
  }
}

- (void)setOtherTipiDeviceSiriEnablement:(BOOL)a3
{
  if (self->otherTipiDeviceSiriEnablement == a3)
  {
    return;
  }

  if (dword_1002F6700 <= 30)
  {
    if (dword_1002F6700 != -1)
    {
LABEL_4:
      deviceAddress = self->deviceAddress;
      LogPrintF();
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      otherTipiDeviceSiriEnablement = self->otherTipiDeviceSiriEnablement;
      goto LABEL_4;
    }
  }

LABEL_6:
  self->otherTipiDeviceSiriEnablement = a3;
  if (!a3)
  {

    [(SRWxDevice *)self checkSiriHijackEligibility];
  }
}

- (void)setHasOwnership:(BOOL)a3
{
  if (self->hasOwnership == a3)
  {
    return;
  }

  if (dword_1002F6700 <= 30)
  {
    if (dword_1002F6700 != -1)
    {
LABEL_4:
      deviceAddress = self->deviceAddress;
      LogPrintF();
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      hasOwnership = self->hasOwnership;
      goto LABEL_4;
    }
  }

LABEL_6:
  self->hasOwnership = a3;
  if (!a3)
  {
    v7 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
    [v7 _setConnectedBannerTick:0];
  }
}

- (void)setRouted:(BOOL)a3
{
  v3 = a3;
  v5 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
  routed = self->routed;
  v20 = v5;
  if (routed != v3)
  {
    if (dword_1002F6700 <= 30)
    {
      if (dword_1002F6700 != -1)
      {
LABEL_4:
        v7 = "no";
        if (routed)
        {
          v8 = "yes";
        }

        else
        {
          v8 = "no";
        }

        if (v3)
        {
          v7 = "yes";
        }

        v18 = v8;
        v19 = v7;
        deviceAddress = self->deviceAddress;
        LogPrintF();
        goto LABEL_11;
      }

      if (_LogCategory_Initialize())
      {
        LOBYTE(routed) = self->routed;
        goto LABEL_4;
      }
    }

LABEL_11:
    self->routed = v3;
    [(SRWxDevice *)self checkActiveHRMDeviceUpdate:deviceAddress];
    [(SRWxDevice *)self checkDataRelayServerPublishEligibility];
    v5 = v20;
  }

  tipiAndRoutedState = self->tipiAndRoutedState;
  v10 = [v5 workoutObserver];
  v11 = [v10 workoutActive];

  if (self->routed)
  {
    v12 = tipiAndRoutedState | 4;
    if (v11)
    {
      v13 = v20;
      if (!self->isHRMCapable)
      {
        goto LABEL_20;
      }

      v14 = v20;
      v15 = self;
      goto LABEL_18;
    }
  }

  else
  {
    v12 = tipiAndRoutedState & 0xFFFFFFFB;
    v16 = [v20 workoutWx];

    if (v16 == self)
    {
      v14 = v20;
      v15 = 0;
LABEL_18:
      [v14 setWorkoutWx:v15];
    }
  }

  v13 = v20;
LABEL_20:
  [v13 _setTipiAndRoutedStateFlags:v12 forDevice:self];
}

- (void)setIsHRMCapable:(BOOL)a3
{
  isHRMCapable = self->isHRMCapable;
  if (isHRMCapable == a3)
  {
    return;
  }

  v5 = a3;
  if (dword_1002F6700 <= 30)
  {
    if (dword_1002F6700 != -1)
    {
LABEL_4:
      v7 = "no";
      if (isHRMCapable)
      {
        v8 = "yes";
      }

      else
      {
        v8 = "no";
      }

      if (v5)
      {
        v7 = "yes";
      }

      v10 = v8;
      v11 = v7;
      deviceAddress = self->deviceAddress;
      LogPrintF();
      goto LABEL_11;
    }

    if (_LogCategory_Initialize())
    {
      LOBYTE(isHRMCapable) = self->isHRMCapable;
      goto LABEL_4;
    }
  }

LABEL_11:
  self->isHRMCapable = v5;
  [(SRWxDevice *)self checkDataRelayServerPublishEligibility:deviceAddress];

  [(SRWxDevice *)self checkActiveHRMDeviceUpdate];
}

- (void)setIsRoutingActionInitialized:(BOOL)a3
{
  if (self->isRoutingActionInitialized != a3)
  {
    if (dword_1002F6700 <= 30)
    {
      if (dword_1002F6700 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        isRoutingActionInitialized = self->isRoutingActionInitialized;
      }

      deviceAddress = self->deviceAddress;
      LogPrintF();
    }

LABEL_6:
    self->isRoutingActionInitialized = a3;
  }
}

- (void)setRoutingAction:(int)a3
{
  routingAction = self->routingAction;
  if (routingAction != a3)
  {
    if (dword_1002F6700 <= 30)
    {
      if (dword_1002F6700 != -1)
      {
LABEL_4:
        if (routingAction <= 5)
        {
          v6 = (&off_1002B7D20)[routingAction];
        }

        if (a3 <= 5)
        {
          v7 = (&off_1002B7D20)[a3];
        }

        deviceAddress = self->deviceAddress;
        LogPrintF();
        goto LABEL_11;
      }

      if (_LogCategory_Initialize())
      {
        routingAction = self->routingAction;
        goto LABEL_4;
      }
    }

LABEL_11:
    self->routingAction = a3;
  }
}

- (void)setRoutingUI:(int)a3
{
  routingUI = self->routingUI;
  if (routingUI != a3)
  {
    if (dword_1002F6700 <= 30)
    {
      if (dword_1002F6700 != -1)
      {
LABEL_4:
        if (routingUI <= 5)
        {
          v6 = (&off_1002B7D20)[routingUI];
        }

        if (a3 <= 5)
        {
          v7 = (&off_1002B7D20)[a3];
        }

        deviceAddress = self->deviceAddress;
        LogPrintF();
        goto LABEL_11;
      }

      if (_LogCategory_Initialize())
      {
        routingUI = self->routingUI;
        goto LABEL_4;
      }
    }

LABEL_11:
    self->routingUI = a3;
  }
}

- (void)setTipiAndRoutedStateFlags:(unsigned int)a3
{
  if (self->tipiAndRoutedState != a3)
  {
    if (dword_1002F6700 <= 30)
    {
      if (dword_1002F6700 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        tipiAndRoutedState = self->tipiAndRoutedState;
      }

      deviceAddress = self->deviceAddress;
      v6 = CUPrintFlags32();
      v8 = CUPrintFlags32();
      LogPrintF();
    }

LABEL_6:
    self->tipiAndRoutedState = a3;
  }
}

- (void)checkDataRelayServerPublishEligibility
{
  if (!_os_feature_enabled_impl())
  {
    return;
  }

  v9 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
  if (self->otherTipiDeviceBTAddress && !self->otherTipiDeviceDRCompatible)
  {
    if (dword_1002F6700 <= 30 && (dword_1002F6700 != -1 || _LogCategory_Initialize()))
    {
LABEL_43:
      LogPrintF();
    }
  }

  else
  {
    if (!self->isHRMCapable)
    {
      if (dword_1002F6700 <= 30 && (dword_1002F6700 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      if (self->dataRelayServerPublished)
      {
        [v9 dataRelayRemoveAvailableDataTypesWithDevice:self];
      }
    }

    if (GestaltGetDeviceClass() == 1 || GestaltGetDeviceClass() == 3 || GestaltGetDeviceClass() == 6)
    {
      v3 = self->otherTipiAudioCategory != 100 || self->otherTipiDeviceIsStreamingAudio;
      v4 = !self->routed && self->otherTipiDeviceBTAddress && self->inEar && v3;
      v5 = [v9 workoutObserver];
      v6 = [v5 workoutActive];

      if (self->routed)
      {
        v7 = 0;
      }

      else
      {
        v7 = (self->otherTipiDeviceBTAddress != 0) & v6;
      }

      if (dword_1002F6700 <= 30)
      {
        if (dword_1002F6700 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_28;
          }

          routed = self->routed;
        }

        self->isHRMCapable;
        self->dataRelayServerPublished;
        LogPrintF();
      }

LABEL_28:
      if (((v4 | v7) & 1) != 0 && !self->dataRelayServerPublished)
      {
        [v9 dataRelayAddAvailableDataTypesWithDevice:self];
      }

      else if (self->routed && self->dataRelayServerPublished)
      {
        [v9 dataRelayRemoveAvailableDataTypesWithDevice:self];
      }

      goto LABEL_34;
    }

    if (dword_1002F6700 <= 30 && (dword_1002F6700 != -1 || _LogCategory_Initialize()))
    {
      goto LABEL_43;
    }
  }

LABEL_34:
}

@end