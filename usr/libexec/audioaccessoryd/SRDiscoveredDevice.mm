@interface SRDiscoveredDevice
- (SRDiscoveredDevice)init;
- (id)description;
- (void)_setAADevice:(id)device;
- (void)_setAANearbyDevice:(id)device;
- (void)_setBtAddress:(id)address;
- (void)_setConnectionState:(unsigned __int8)state;
- (void)_setInUseBannerBackoffReason:(id)reason;
- (void)_setInUseBannerBackoffTick:(unint64_t)tick;
- (void)_setInUseBannerShown:(BOOL)shown;
- (void)_setIsNearby:(BOOL)nearby;
- (void)_setMutedSpeakerForRemotePhoneCall:(BOOL)call;
- (void)_setNearbyConnectedSourceCount:(unsigned __int8)count;
- (void)_setNearbyForceDisconnect:(BOOL)disconnect;
- (void)_setNearbyLastRouteHost:(id)host;
- (void)_setNearbyName:(id)name;
- (void)_setNearbyOutOfCaseTime:(unsigned __int8)time;
- (void)_setNearbyPaired:(BOOL)paired;
- (void)_setNearbyPrevInEar:(int)ear;
- (void)_setNearbyProductID:(unsigned int)d;
- (void)_setNearbyStreamState:(int64_t)state;
- (void)_setNearbyWxDevice:(id)device;
- (void)_setNearbyiCloudSignIn:(BOOL)in;
- (void)_setRouteToWxAfterUnhide:(BOOL)unhide;
- (void)_setRouted:(BOOL)routed;
- (void)_setUserConnectedState:(BOOL)state;
- (void)_updateUnifiedInEarState;
- (void)setAacpInEarState:(int)state;
- (void)setAirplaneMode:(BOOL)mode;
- (void)setDisconnectionBackoffTick:(unint64_t)tick;
- (void)setFwVersion:(id)version;
- (void)setInEar:(BOOL)ear;
- (void)setIsManualDisconnectLastTime:(BOOL)time;
- (void)setIsPaired:(BOOL)paired;
- (void)setIsPairingInProgress:(BOOL)progress;
- (void)setIsSRCapable:(BOOL)capable;
- (void)setIsUSBPlugIn:(BOOL)in;
- (void)setLastDRHostIDSIdentifier:(id)identifier;
- (void)setLowBatteryBannerShownInWorkoutContext:(BOOL)context;
- (void)setNearbyInEar:(int)ear;
- (void)setNearbyIsMeLastRoute:(BOOL)route;
- (void)setNearbyUSBPluggedIn:(char)in;
- (void)setNearbyUSBPluggedInTick:(unint64_t)tick;
- (void)setNearbyUpdateTick:(unint64_t)tick;
- (void)setPairingBannerClickTick:(unint64_t)tick;
- (void)setPrevFailedTipiConnectType:(int)type;
- (void)setShouldExtendTimeOnSpeaker:(BOOL)speaker;
- (void)setTipiConnectType:(int)type;
- (void)setUsbColorCode:(unsigned int)code;
- (void)setUsbName:(id)name;
- (void)setUsbProductID:(unsigned int)d;
@end

@implementation SRDiscoveredDevice

- (SRDiscoveredDevice)init
{
  v5.receiver = self;
  v5.super_class = SRDiscoveredDevice;
  v2 = [(SRDiscoveredDevice *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SRDiscoveredDevice *)v2 setUsbcColorCode:255];
  }

  return v3;
}

- (id)description
{
  nearbyTipiScore1 = self->_nearbyTipiScore1;
  if (nearbyTipiScore1 <= 0xF)
  {
    v3 = off_1002BB498[nearbyTipiScore1];
  }

  nearbyTipiScore2 = self->_nearbyTipiScore2;
  if (nearbyTipiScore2 <= 0xF)
  {
    v5 = off_1002BB498[nearbyTipiScore2];
  }

  nearbyInEar = self->_nearbyInEar;
  if (nearbyInEar <= 7)
  {
    v7 = off_1002BB5C8[nearbyInEar];
  }

  nearbyAudioState = self->_nearbyAudioState;
  if (nearbyAudioState <= 3)
  {
    v9 = off_1002BB538[nearbyAudioState];
  }

  btAddress = self->_btAddress;
  nearbyName = self->_nearbyName;
  isNearby = self->_isNearby;
  fwVersion = self->_fwVersion;
  isSRCapable = self->_isSRCapable;
  nearbyConnectedSourceCount = self->_nearbyConnectedSourceCount;
  nearbyLastRouteHost = self->_nearbyLastRouteHost;
  nearbyForceDisconnectBit = self->_nearbyForceDisconnectBit;
  prevFailedTipiConnectType = self->_prevFailedTipiConnectType;
  if (prevFailedTipiConnectType <= 0xA)
  {
    v19 = off_1002BB570[prevFailedTipiConnectType];
  }

  NSAppendPrintF();

  return 0;
}

- (void)_setAADevice:(id)device
{
  deviceCopy = device;
  aaDevice = self->_aaDevice;
  p_aaDevice = &self->_aaDevice;
  v7 = aaDevice;
  v8 = deviceCopy;
  v11 = v8;
  if (v7 == v8)
  {

LABEL_11:
    goto LABEL_12;
  }

  if ((v8 == 0) == (v7 != 0))
  {

LABEL_7:
    if (dword_1002F7530 <= 30 && (dword_1002F7530 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FADBC(p_aaDevice, v11);
    }

    v10 = v11;
    v7 = *p_aaDevice;
    *p_aaDevice = v10;
    goto LABEL_11;
  }

  v9 = [(AudioAccessoryDevice *)v7 isEqual:v8];

  if ((v9 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_12:
}

- (void)_setAANearbyDevice:(id)device
{
  deviceCopy = device;
  aaNearbyDevice = self->_aaNearbyDevice;
  p_aaNearbyDevice = &self->_aaNearbyDevice;
  v7 = aaNearbyDevice;
  v8 = deviceCopy;
  v11 = v8;
  if (v7 == v8)
  {

LABEL_11:
    goto LABEL_12;
  }

  if ((v8 == 0) == (v7 != 0))
  {

LABEL_7:
    if (dword_1002F7530 <= 30 && (dword_1002F7530 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FAE3C(p_aaNearbyDevice, v11);
    }

    v10 = v11;
    v7 = *p_aaNearbyDevice;
    *p_aaNearbyDevice = v10;
    goto LABEL_11;
  }

  v9 = [(AANearbyDevice *)v7 isEqual:v8];

  if ((v9 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_12:
}

- (void)setAacpInEarState:(int)state
{
  aacpInEarState = self->_aacpInEarState;
  if (aacpInEarState == state)
  {
    return;
  }

  if (dword_1002F7530 <= 30)
  {
    if (dword_1002F7530 != -1)
    {
LABEL_4:
      if (aacpInEarState <= 7)
      {
        v7 = off_1002BB5C8[aacpInEarState];
      }

      if (state <= 7)
      {
        v8 = off_1002BB5C8[state];
      }

      btAddress = self->_btAddress;
      LogPrintF();
      goto LABEL_11;
    }

    if (_LogCategory_Initialize())
    {
      aacpInEarState = self->_aacpInEarState;
      goto LABEL_4;
    }
  }

LABEL_11:
  self->_aacpInEarState = state;

  [(SRDiscoveredDevice *)self _updateUnifiedInEarState];
}

- (void)setAirplaneMode:(BOOL)mode
{
  if (self->_airplaneMode != mode)
  {
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        airplaneMode = self->_airplaneMode;
      }

      btAddress = self->_btAddress;
      LogPrintF();
    }

LABEL_6:
    self->_airplaneMode = mode;
  }
}

- (void)_setBtAddress:(id)address
{
  addressCopy = address;
  btAddress = self->_btAddress;
  p_btAddress = &self->_btAddress;
  v9 = addressCopy;
  if (![(NSString *)btAddress isEqualToString:?])
  {
    if (dword_1002F7530 <= 30 && (dword_1002F7530 != -1 || _LogCategory_Initialize()))
    {
      v8 = *p_btAddress;
      LogPrintF();
    }

    objc_storeStrong(p_btAddress, address);
  }
}

- (void)_setConnectionState:(unsigned __int8)state
{
  connectionState = self->_connectionState;
  if (connectionState != state)
  {
    stateCopy = state;
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 != -1)
      {
LABEL_4:
        if (connectionState <= 3)
        {
          v6 = off_1002BB518[connectionState];
        }

        if (stateCopy <= 3)
        {
          v7 = off_1002BB518[stateCopy];
        }

        LogPrintF();
        goto LABEL_11;
      }

      if (_LogCategory_Initialize())
      {
        connectionState = self->_connectionState;
        goto LABEL_4;
      }
    }

LABEL_11:
    self->_connectionState = stateCopy;
  }
}

- (void)setDisconnectionBackoffTick:(unint64_t)tick
{
  if (self->_disconnectionBackoffTick != tick)
  {
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        disconnectionBackoffTick = self->_disconnectionBackoffTick;
      }

      btAddress = self->_btAddress;
      LogPrintF();
    }

LABEL_6:
    self->_disconnectionBackoffTick = tick;
  }
}

- (void)setFwVersion:(id)version
{
  versionCopy = version;
  if (![(NSString *)self->_fwVersion isEqualToString:?])
  {
    if (dword_1002F7530 <= 30 && (dword_1002F7530 != -1 || _LogCategory_Initialize()))
    {
      fwVersion = self->_fwVersion;
      btAddress = self->_btAddress;
      LogPrintF();
    }

    objc_storeStrong(&self->_fwVersion, version);
  }
}

- (void)setIsSRCapable:(BOOL)capable
{
  if (self->_isSRCapable != capable)
  {
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        isSRCapable = self->_isSRCapable;
      }

      btAddress = self->_btAddress;
      LogPrintF();
    }

LABEL_6:
    self->_isSRCapable = capable;
  }
}

- (void)setIsManualDisconnectLastTime:(BOOL)time
{
  if (self->_isManualDisconnectLastTime != time)
  {
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        isManualDisconnectLastTime = self->_isManualDisconnectLastTime;
      }

      btAddress = self->_btAddress;
      LogPrintF();
    }

LABEL_6:
    self->_isManualDisconnectLastTime = time;
  }
}

- (void)_setIsNearby:(BOOL)nearby
{
  if (self->_isNearby != nearby)
  {
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        isNearby = self->_isNearby;
      }

      btAddress = self->_btAddress;
      LogPrintF();
    }

LABEL_6:
    self->_isNearby = nearby;
  }
}

- (void)setIsPaired:(BOOL)paired
{
  if (self->_isPaired != paired)
  {
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        isPaired = self->_isPaired;
      }

      btAddress = self->_btAddress;
      LogPrintF();
    }

LABEL_6:
    self->_isPaired = paired;
  }
}

- (void)setIsPairingInProgress:(BOOL)progress
{
  if (self->_isPairingInProgress != progress)
  {
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        isPairingInProgress = self->_isPairingInProgress;
      }

      btAddress = self->_btAddress;
      LogPrintF();
    }

LABEL_6:
    self->_isPairingInProgress = progress;
  }
}

- (void)setIsUSBPlugIn:(BOOL)in
{
  if (self->_isUSBPlugIn != in)
  {
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        isUSBPlugIn = self->_isUSBPlugIn;
      }

      btAddress = self->_btAddress;
      LogPrintF();
    }

LABEL_6:
    self->_isUSBPlugIn = in;
  }
}

- (void)setInEar:(BOOL)ear
{
  inEar = self->_inEar;
  if (inEar == ear)
  {
    return;
  }

  earCopy = ear;
  if (dword_1002F7530 <= 30)
  {
    if (dword_1002F7530 != -1)
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

      v10 = v8;
      v11 = v7;
      btAddress = self->_btAddress;
      LogPrintF();
      goto LABEL_11;
    }

    if (_LogCategory_Initialize())
    {
      LOBYTE(inEar) = self->_inEar;
      goto LABEL_4;
    }
  }

LABEL_11:
  self->_inEar = earCopy;
  v12 = [BTSmartRoutingDaemon sharedBTSmartRoutingDaemon:btAddress];
  [v12 activeHRMDeviceUpdate];
}

- (void)_setInUseBannerBackoffTick:(unint64_t)tick
{
  if (self->_inUseBannerBackoffTick != tick)
  {
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        inUseBannerBackoffTick = self->_inUseBannerBackoffTick;
      }

      btAddress = self->_btAddress;
      LogPrintF();
    }

LABEL_6:
    self->_inUseBannerBackoffTick = tick;
  }
}

- (void)_setInUseBannerBackoffReason:(id)reason
{
  reasonCopy = reason;
  if (![(NSString *)self->_inUseBannerBackoffReason isEqualToString:?])
  {
    if (dword_1002F7530 <= 30 && (dword_1002F7530 != -1 || _LogCategory_Initialize()))
    {
      inUseBannerBackoffReason = self->_inUseBannerBackoffReason;
      btAddress = self->_btAddress;
      LogPrintF();
    }

    objc_storeStrong(&self->_inUseBannerBackoffReason, reason);
  }
}

- (void)_setInUseBannerShown:(BOOL)shown
{
  if (self->_inUseBannerShown != shown)
  {
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        inUseBannerShown = self->_inUseBannerShown;
      }

      btAddress = self->_btAddress;
      LogPrintF();
    }

LABEL_6:
    self->_inUseBannerShown = shown;
  }
}

- (void)setLowBatteryBannerShownInWorkoutContext:(BOOL)context
{
  if (self->_lowBatteryBannerShownInWorkoutContext != context)
  {
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        lowBatteryBannerShownInWorkoutContext = self->_lowBatteryBannerShownInWorkoutContext;
      }

      btAddress = self->_btAddress;
      LogPrintF();
    }

LABEL_6:
    self->_lowBatteryBannerShownInWorkoutContext = context;
  }
}

- (void)_setMutedSpeakerForRemotePhoneCall:(BOOL)call
{
  if (self->_mutedSpeakerForRemotePhoneCall != call)
  {
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        mutedSpeakerForRemotePhoneCall = self->_mutedSpeakerForRemotePhoneCall;
      }

      LogPrintF();
    }

LABEL_6:
    self->_mutedSpeakerForRemotePhoneCall = call;
  }
}

- (void)_setNearbyiCloudSignIn:(BOOL)in
{
  if (self->_nearbyiCloudSignIn != in)
  {
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        nearbyiCloudSignIn = self->_nearbyiCloudSignIn;
      }

      btAddress = self->_btAddress;
      LogPrintF();
    }

LABEL_6:
    self->_nearbyiCloudSignIn = in;
  }
}

- (void)setLastDRHostIDSIdentifier:(id)identifier
{
  identifierCopy = identifier;
  lastDRHostIDSIdentifier = self->_lastDRHostIDSIdentifier;
  p_lastDRHostIDSIdentifier = &self->_lastDRHostIDSIdentifier;
  v10 = identifierCopy;
  if (![(NSString *)lastDRHostIDSIdentifier isEqualToString:?])
  {
    if (dword_1002F7530 <= 30 && (dword_1002F7530 != -1 || _LogCategory_Initialize()))
    {
      v9 = *p_lastDRHostIDSIdentifier;
      LogPrintF();
    }

    objc_storeStrong(p_lastDRHostIDSIdentifier, identifier);
    v8 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
    [v8 activeHRMDeviceUpdate];
  }
}

- (void)setNearbyInEar:(int)ear
{
  nearbyInEar = self->_nearbyInEar;
  if (nearbyInEar == ear)
  {
    return;
  }

  if (dword_1002F7530 <= 30)
  {
    if (dword_1002F7530 != -1)
    {
LABEL_4:
      if (nearbyInEar <= 7)
      {
        v7 = off_1002BB5C8[nearbyInEar];
      }

      if (ear <= 7)
      {
        v8 = off_1002BB5C8[ear];
      }

      btAddress = self->_btAddress;
      LogPrintF();
      goto LABEL_11;
    }

    if (_LogCategory_Initialize())
    {
      nearbyInEar = self->_nearbyInEar;
      goto LABEL_4;
    }
  }

LABEL_11:
  self->_nearbyInEar = ear;

  [(SRDiscoveredDevice *)self _updateUnifiedInEarState];
}

- (void)setNearbyIsMeLastRoute:(BOOL)route
{
  if (self->_nearbyIsMeLastRoute != route)
  {
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        nearbyIsMeLastRoute = self->_nearbyIsMeLastRoute;
      }

      btAddress = self->_btAddress;
      LogPrintF();
    }

LABEL_6:
    self->_nearbyIsMeLastRoute = route;
  }
}

- (void)_setNearbyLastRouteHost:(id)host
{
  hostCopy = host;
  v6 = hostCopy;
  if (hostCopy)
  {
    v9 = hostCopy;
    hostCopy = [(NSData *)self->_nearbyLastRouteHost isEqualToData:hostCopy];
    v6 = v9;
    if ((hostCopy & 1) == 0)
    {
      if (dword_1002F7530 <= 30 && (dword_1002F7530 != -1 || _LogCategory_Initialize()))
      {
        nearbyLastRouteHost = self->_nearbyLastRouteHost;
        btAddress = self->_btAddress;
        LogPrintF();
      }

      objc_storeStrong(&self->_nearbyLastRouteHost, host);
      v6 = v9;
    }
  }

  _objc_release_x1(hostCopy, v6);
}

- (void)_setNearbyName:(id)name
{
  nameCopy = name;
  if (![(NSString *)self->_nearbyName isEqualToString:?])
  {
    if (dword_1002F7530 <= 30 && (dword_1002F7530 != -1 || _LogCategory_Initialize()))
    {
      nearbyName = self->_nearbyName;
      btAddress = self->_btAddress;
      LogPrintF();
    }

    objc_storeStrong(&self->_nearbyName, name);
  }
}

- (void)_setNearbyOutOfCaseTime:(unsigned __int8)time
{
  if (self->_nearbyOutOfCaseTime != time)
  {
    timeCopy = time;
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        nearbyOutOfCaseTime = self->_nearbyOutOfCaseTime;
      }

      btAddress = self->_btAddress;
      LogPrintF();
    }

LABEL_6:
    self->_nearbyOutOfCaseTime = timeCopy;
  }
}

- (void)_setNearbyPaired:(BOOL)paired
{
  if (self->_nearbyPaired != paired)
  {
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        nearbyPaired = self->_nearbyPaired;
      }

      btAddress = self->_btAddress;
      LogPrintF();
    }

LABEL_6:
    self->_nearbyPaired = paired;
  }
}

- (void)_setNearbyProductID:(unsigned int)d
{
  if (self->_nearbyProductID != d)
  {
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        nearbyProductID = self->_nearbyProductID;
      }

      btAddress = self->_btAddress;
      LogPrintF();
    }

LABEL_6:
    self->_nearbyProductID = d;
  }
}

- (void)_setNearbyPrevInEar:(int)ear
{
  if (dword_1002F7530 <= 30 && (dword_1002F7530 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FAEBC(self, ear);
  }

  self->_nearbyPrevInEar = ear;
}

- (void)_setNearbyConnectedSourceCount:(unsigned __int8)count
{
  if (self->_nearbyConnectedSourceCount != count)
  {
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        nearbyConnectedSourceCount = self->_nearbyConnectedSourceCount;
      }

      btAddress = self->_btAddress;
      LogPrintF();
    }

LABEL_6:
    self->_nearbyConnectedSourceCount = count;
  }
}

- (void)_setNearbyForceDisconnect:(BOOL)disconnect
{
  if (self->_nearbyForceDisconnectBit != disconnect)
  {
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        nearbyForceDisconnectBit = self->_nearbyForceDisconnectBit;
      }

      LogPrintF();
    }

LABEL_6:
    self->_nearbyForceDisconnectBit = disconnect;
  }
}

- (void)_setNearbyStreamState:(int64_t)state
{
  nearbyStreamState = self->_nearbyStreamState;
  if (nearbyStreamState != state)
  {
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 != -1)
      {
LABEL_4:
        if (nearbyStreamState <= 3)
        {
          v6 = off_1002BB538[nearbyStreamState];
        }

        if (state <= 3)
        {
          v7 = off_1002BB538[state];
        }

        btAddress = self->_btAddress;
        LogPrintF();
        goto LABEL_11;
      }

      if (_LogCategory_Initialize())
      {
        nearbyStreamState = self->_nearbyStreamState;
        goto LABEL_4;
      }
    }

LABEL_11:
    self->_nearbyStreamState = state;
  }
}

- (void)setNearbyUpdateTick:(unint64_t)tick
{
  if (self->_nearbyUpdateTick != tick)
  {
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        nearbyUpdateTick = self->_nearbyUpdateTick;
      }

      btAddress = self->_btAddress;
      LogPrintF();
    }

LABEL_6:
    self->_nearbyUpdateTick = tick;
  }
}

- (void)setNearbyUSBPluggedIn:(char)in
{
  nearbyUSBPluggedIn = self->_nearbyUSBPluggedIn;
  if (nearbyUSBPluggedIn != in)
  {
    inCopy = in;
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 != -1)
      {
LABEL_4:
        if (nearbyUSBPluggedIn <= 2)
        {
          v6 = off_1002BB558[nearbyUSBPluggedIn];
        }

        if (inCopy <= 2)
        {
          v7 = off_1002BB558[inCopy];
        }

        btAddress = self->_btAddress;
        LogPrintF();
        goto LABEL_11;
      }

      if (_LogCategory_Initialize())
      {
        nearbyUSBPluggedIn = self->_nearbyUSBPluggedIn;
        goto LABEL_4;
      }
    }

LABEL_11:
    self->_nearbyUSBPluggedIn = inCopy;
  }
}

- (void)setNearbyUSBPluggedInTick:(unint64_t)tick
{
  if (self->_nearbyUSBPluggedInTick != tick)
  {
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        nearbyUSBPluggedInTick = self->_nearbyUSBPluggedInTick;
      }

      btAddress = self->_btAddress;
      LogPrintF();
    }

LABEL_6:
    self->_nearbyUSBPluggedInTick = tick;
  }
}

- (void)_setNearbyWxDevice:(id)device
{
  deviceCopy = device;
  nearbyWxDevice = self->_nearbyWxDevice;
  p_nearbyWxDevice = &self->_nearbyWxDevice;
  if (nearbyWxDevice != deviceCopy)
  {
    v8 = deviceCopy;
    objc_storeStrong(p_nearbyWxDevice, device);
    deviceCopy = v8;
  }
}

- (void)setPairingBannerClickTick:(unint64_t)tick
{
  if (self->_pairingBannerClickTick != tick)
  {
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        pairingBannerClickTick = self->_pairingBannerClickTick;
      }

      btAddress = self->_btAddress;
      LogPrintF();
    }

LABEL_6:
    self->_pairingBannerClickTick = tick;
  }
}

- (void)setPrevFailedTipiConnectType:(int)type
{
  prevFailedTipiConnectType = self->_prevFailedTipiConnectType;
  if (prevFailedTipiConnectType != type)
  {
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 != -1)
      {
LABEL_4:
        if (prevFailedTipiConnectType <= 0xA)
        {
          v6 = off_1002BB570[prevFailedTipiConnectType];
        }

        if (type <= 0xA)
        {
          v7 = off_1002BB570[type];
        }

        btAddress = self->_btAddress;
        LogPrintF();
        goto LABEL_11;
      }

      if (_LogCategory_Initialize())
      {
        prevFailedTipiConnectType = self->_prevFailedTipiConnectType;
        goto LABEL_4;
      }
    }

LABEL_11:
    self->_prevFailedTipiConnectType = type;
  }
}

- (void)_setRouted:(BOOL)routed
{
  if (self->_routed != routed)
  {
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        routed = self->_routed;
      }

      btAddress = self->_btAddress;
      LogPrintF();
    }

LABEL_6:
    self->_routed = routed;
  }
}

- (void)_setRouteToWxAfterUnhide:(BOOL)unhide
{
  if (self->_routeToWxAfterUnhide != unhide)
  {
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        routeToWxAfterUnhide = self->_routeToWxAfterUnhide;
      }

      btAddress = self->_btAddress;
      LogPrintF();
    }

LABEL_6:
    self->_routeToWxAfterUnhide = unhide;
  }
}

- (void)setShouldExtendTimeOnSpeaker:(BOOL)speaker
{
  if (self->_shouldExtendTimeOnSpeaker != speaker)
  {
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        shouldExtendTimeOnSpeaker = self->_shouldExtendTimeOnSpeaker;
      }

      btAddress = self->_btAddress;
      LogPrintF();
    }

LABEL_6:
    self->_shouldExtendTimeOnSpeaker = speaker;
  }
}

- (void)setTipiConnectType:(int)type
{
  tipiConnectType = self->_tipiConnectType;
  if (tipiConnectType != type)
  {
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 != -1)
      {
LABEL_4:
        if (tipiConnectType <= 0xA)
        {
          v6 = off_1002BB570[tipiConnectType];
        }

        if (type <= 0xA)
        {
          v7 = off_1002BB570[type];
        }

        btAddress = self->_btAddress;
        LogPrintF();
        goto LABEL_11;
      }

      if (_LogCategory_Initialize())
      {
        tipiConnectType = self->_tipiConnectType;
        goto LABEL_4;
      }
    }

LABEL_11:
    self->_tipiConnectType = type;
  }
}

- (void)setUsbColorCode:(unsigned int)code
{
  if (self->_usbcColorCode != code)
  {
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        usbcColorCode = self->_usbcColorCode;
      }

      btAddress = self->_btAddress;
      LogPrintF();
    }

LABEL_6:
    self->_usbcColorCode = code;
  }
}

- (void)setUsbName:(id)name
{
  nameCopy = name;
  if (![(NSString *)self->_usbName isEqualToString:?])
  {
    if (dword_1002F7530 <= 30 && (dword_1002F7530 != -1 || _LogCategory_Initialize()))
    {
      usbName = self->_usbName;
      btAddress = self->_btAddress;
      LogPrintF();
    }

    objc_storeStrong(&self->_usbName, name);
  }
}

- (void)setUsbProductID:(unsigned int)d
{
  if (self->_usbProductID != d)
  {
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        usbProductID = self->_usbProductID;
      }

      btAddress = self->_btAddress;
      LogPrintF();
    }

LABEL_6:
    self->_usbProductID = d;
  }
}

- (void)_setUserConnectedState:(BOOL)state
{
  if (self->_userConnectedState != state)
  {
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        userConnectedState = self->_userConnectedState;
      }

      LogPrintF();
    }

LABEL_6:
    self->_userConnectedState = state;
  }
}

- (void)_updateUnifiedInEarState
{
  aacpInEarState = self->_aacpInEarState;
  if (aacpInEarState)
  {
    if (aacpInEarState == 1 || aacpInEarState == 4)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }
  }

  else
  {
    nearbyInEar = self->_nearbyInEar;
    if (nearbyInEar == 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    if (nearbyInEar)
    {
      v5 = v7;
    }

    else
    {
      v5 = 0;
    }
  }

  inEarStateUnified = self->_inEarStateUnified;
  if (v5 != inEarStateUnified)
  {
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 != -1)
      {
LABEL_17:
        btAddress = self->_btAddress;
        if (inEarStateUnified <= 7)
        {
          v10 = off_1002BB5C8[inEarStateUnified];
        }

        v11 = off_1002BB608[v5];
        LogPrintF();
        goto LABEL_22;
      }

      if (_LogCategory_Initialize())
      {
        inEarStateUnified = self->_inEarStateUnified;
        goto LABEL_17;
      }
    }

LABEL_22:
    self->_inEarStateUnified = v5;
  }
}

@end