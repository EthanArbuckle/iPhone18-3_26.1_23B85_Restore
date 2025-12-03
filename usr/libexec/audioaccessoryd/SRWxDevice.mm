@interface SRWxDevice
- (void)checkActiveHRMDeviceUpdate;
- (void)checkDataRelayServerPublishEligibility;
- (void)checkSiriHijackEligibility;
- (void)setDataRelayServerPublished:(BOOL)published;
- (void)setFirstBannerShown:(BOOL)shown;
- (void)setHasOwnership:(BOOL)ownership;
- (void)setHijackBackoffTicks:(unint64_t)ticks;
- (void)setInEar:(BOOL)ear;
- (void)setIsHRMCapable:(BOOL)capable;
- (void)setIsRoutingActionInitialized:(BOOL)initialized;
- (void)setManualRouteChangeInProgress:(BOOL)progress;
- (void)setManuallyRouted:(BOOL)routed;
- (void)setOtherTipiDeviceBuildVersion:(int64_t)version andMinorBuildVersion:(int64_t)buildVersion;
- (void)setOtherTipiDeviceDRCompatible:(BOOL)compatible;
- (void)setOtherTipiDeviceInfo:(id)info andName:(id)name andVersion:(id)version;
- (void)setOtherTipiDeviceIsStreamingAudio:(BOOL)audio;
- (void)setOtherTipiDeviceIsWatch:(BOOL)watch;
- (void)setOtherTipiDevicePlayingApp:(id)app;
- (void)setOtherTipiDeviceSiriEnablement:(BOOL)enablement;
- (void)setOtherTipiIDSIdentifier:(id)identifier;
- (void)setOtherTipiManuallyRouteTicks:(unint64_t)ticks;
- (void)setRouted:(BOOL)routed;
- (void)setRoutingAction:(int)action;
- (void)setRoutingUI:(int)i;
- (void)setTipiAndRoutedStateFlags:(unsigned int)flags;
@end

@implementation SRWxDevice

- (void)setFirstBannerShown:(BOOL)shown
{
  if (self->firstBannerShown != shown)
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
    self->firstBannerShown = shown;
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

- (void)setDataRelayServerPublished:(BOOL)published
{
  if (self->dataRelayServerPublished != published)
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
    self->dataRelayServerPublished = published;
  }
}

- (void)setHijackBackoffTicks:(unint64_t)ticks
{
  if (self->hijackBackoffTicks != ticks)
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
    self->hijackBackoffTicks = ticks;
  }
}

- (void)setInEar:(BOOL)ear
{
  inEar = self->inEar;
  if (inEar == ear)
  {
    return;
  }

  earCopy = ear;
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

      if (earCopy)
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
  self->inEar = earCopy;
  [(SRWxDevice *)self checkActiveHRMDeviceUpdate:v9];

  [(SRWxDevice *)self checkDataRelayServerPublishEligibility];
}

- (void)setManuallyRouted:(BOOL)routed
{
  if (self->manuallyRouted != routed)
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
    self->manuallyRouted = routed;
  }
}

- (void)setManualRouteChangeInProgress:(BOOL)progress
{
  if (self->manualRouteChangeInProgress != progress)
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
    self->manualRouteChangeInProgress = progress;
  }
}

- (void)setOtherTipiDevicePlayingApp:(id)app
{
  appCopy = app;
  if (![(NSString *)self->otherTipiDevicePlayingApp isEqualToString:?])
  {
    if (dword_1002F6700 <= 30 && (dword_1002F6700 != -1 || _LogCategory_Initialize()))
    {
      otherTipiDevicePlayingApp = self->otherTipiDevicePlayingApp;
      deviceAddress = self->deviceAddress;
      LogPrintF();
    }

    objc_storeStrong(&self->otherTipiDevicePlayingApp, app);
  }
}

- (void)setOtherTipiDeviceInfo:(id)info andName:(id)name andVersion:(id)version
{
  infoCopy = info;
  nameCopy = name;
  versionCopy = version;
  v12 = infoCopy;
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
      v21 = nameCopy;
      v22 = versionCopy;
      v19 = self->otherTipiDeviceBTAddress;
      v20 = v23;
      deviceAddress = self->deviceAddress;
      LogPrintF();
    }

    objc_storeStrong(&self->otherTipiDeviceBTAddress, info);
    objc_storeStrong(&self->otherTipiDeviceBTName, name);
    objc_storeStrong(&self->otherTipiDeviceVersion, version);
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

- (void)setOtherTipiDeviceIsStreamingAudio:(BOOL)audio
{
  if (self->otherTipiDeviceIsStreamingAudio == audio)
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
  self->otherTipiDeviceIsStreamingAudio = audio;

  [(SRWxDevice *)self checkDataRelayServerPublishEligibility];
}

- (void)setOtherTipiDeviceIsWatch:(BOOL)watch
{
  watchCopy = watch;
  otherTipiDeviceIsWatch = self->otherTipiDeviceIsWatch;
  if (otherTipiDeviceIsWatch == watch)
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

      if (watchCopy)
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
  self->otherTipiDeviceIsWatch = watchCopy;
LABEL_12:
  v8 = self->tipiAndRoutedState & 0xFFFFFFFD;
  if (watchCopy)
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

- (void)setOtherTipiDeviceBuildVersion:(int64_t)version andMinorBuildVersion:(int64_t)buildVersion
{
  if (*&self->otherTipiDeviceMajorBuildVersion != __PAIR128__(buildVersion, version))
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
    self->otherTipiDeviceMajorBuildVersion = version;
    self->otherTipiDeviceMinorBuildVersion = buildVersion;
  }
}

- (void)setOtherTipiDeviceDRCompatible:(BOOL)compatible
{
  if (self->otherTipiDeviceDRCompatible != compatible)
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
    self->otherTipiDeviceDRCompatible = compatible;
  }
}

- (void)setOtherTipiIDSIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (![(NSString *)self->_otherTipiIDSIdentifier isEqualToString:?])
  {
    if (dword_1002F6700 <= 30 && (dword_1002F6700 != -1 || _LogCategory_Initialize()))
    {
      otherTipiIDSIdentifier = self->_otherTipiIDSIdentifier;
      deviceAddress = self->deviceAddress;
      LogPrintF();
    }

    objc_storeStrong(&self->_otherTipiIDSIdentifier, identifier);
  }
}

- (void)setOtherTipiManuallyRouteTicks:(unint64_t)ticks
{
  if (self->otherTipiManuallyRouteTicks != ticks)
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
    self->otherTipiManuallyRouteTicks = ticks;
  }
}

- (void)setOtherTipiDeviceSiriEnablement:(BOOL)enablement
{
  if (self->otherTipiDeviceSiriEnablement == enablement)
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
  self->otherTipiDeviceSiriEnablement = enablement;
  if (!enablement)
  {

    [(SRWxDevice *)self checkSiriHijackEligibility];
  }
}

- (void)setHasOwnership:(BOOL)ownership
{
  if (self->hasOwnership == ownership)
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
  self->hasOwnership = ownership;
  if (!ownership)
  {
    v7 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
    [v7 _setConnectedBannerTick:0];
  }
}

- (void)setRouted:(BOOL)routed
{
  routedCopy = routed;
  v5 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
  routed = self->routed;
  v20 = v5;
  if (routed != routedCopy)
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

        if (routedCopy)
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
    self->routed = routedCopy;
    [(SRWxDevice *)self checkActiveHRMDeviceUpdate:deviceAddress];
    [(SRWxDevice *)self checkDataRelayServerPublishEligibility];
    v5 = v20;
  }

  tipiAndRoutedState = self->tipiAndRoutedState;
  workoutObserver = [v5 workoutObserver];
  workoutActive = [workoutObserver workoutActive];

  if (self->routed)
  {
    v12 = tipiAndRoutedState | 4;
    if (workoutActive)
    {
      v13 = v20;
      if (!self->isHRMCapable)
      {
        goto LABEL_20;
      }

      v14 = v20;
      selfCopy = self;
      goto LABEL_18;
    }
  }

  else
  {
    v12 = tipiAndRoutedState & 0xFFFFFFFB;
    workoutWx = [v20 workoutWx];

    if (workoutWx == self)
    {
      v14 = v20;
      selfCopy = 0;
LABEL_18:
      [v14 setWorkoutWx:selfCopy];
    }
  }

  v13 = v20;
LABEL_20:
  [v13 _setTipiAndRoutedStateFlags:v12 forDevice:self];
}

- (void)setIsHRMCapable:(BOOL)capable
{
  isHRMCapable = self->isHRMCapable;
  if (isHRMCapable == capable)
  {
    return;
  }

  capableCopy = capable;
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

      if (capableCopy)
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
  self->isHRMCapable = capableCopy;
  [(SRWxDevice *)self checkDataRelayServerPublishEligibility:deviceAddress];

  [(SRWxDevice *)self checkActiveHRMDeviceUpdate];
}

- (void)setIsRoutingActionInitialized:(BOOL)initialized
{
  if (self->isRoutingActionInitialized != initialized)
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
    self->isRoutingActionInitialized = initialized;
  }
}

- (void)setRoutingAction:(int)action
{
  routingAction = self->routingAction;
  if (routingAction != action)
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

        if (action <= 5)
        {
          v7 = (&off_1002B7D20)[action];
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
    self->routingAction = action;
  }
}

- (void)setRoutingUI:(int)i
{
  routingUI = self->routingUI;
  if (routingUI != i)
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

        if (i <= 5)
        {
          v7 = (&off_1002B7D20)[i];
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
    self->routingUI = i;
  }
}

- (void)setTipiAndRoutedStateFlags:(unsigned int)flags
{
  if (self->tipiAndRoutedState != flags)
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
    self->tipiAndRoutedState = flags;
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
      workoutObserver = [v9 workoutObserver];
      workoutActive = [workoutObserver workoutActive];

      if (self->routed)
      {
        v7 = 0;
      }

      else
      {
        v7 = (self->otherTipiDeviceBTAddress != 0) & workoutActive;
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