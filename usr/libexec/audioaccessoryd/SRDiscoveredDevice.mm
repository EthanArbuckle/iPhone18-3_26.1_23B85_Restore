@interface SRDiscoveredDevice
- (SRDiscoveredDevice)init;
- (id)description;
- (void)_setAADevice:(id)a3;
- (void)_setAANearbyDevice:(id)a3;
- (void)_setBtAddress:(id)a3;
- (void)_setConnectionState:(unsigned __int8)a3;
- (void)_setInUseBannerBackoffReason:(id)a3;
- (void)_setInUseBannerBackoffTick:(unint64_t)a3;
- (void)_setInUseBannerShown:(BOOL)a3;
- (void)_setIsNearby:(BOOL)a3;
- (void)_setMutedSpeakerForRemotePhoneCall:(BOOL)a3;
- (void)_setNearbyConnectedSourceCount:(unsigned __int8)a3;
- (void)_setNearbyForceDisconnect:(BOOL)a3;
- (void)_setNearbyLastRouteHost:(id)a3;
- (void)_setNearbyName:(id)a3;
- (void)_setNearbyOutOfCaseTime:(unsigned __int8)a3;
- (void)_setNearbyPaired:(BOOL)a3;
- (void)_setNearbyPrevInEar:(int)a3;
- (void)_setNearbyProductID:(unsigned int)a3;
- (void)_setNearbyStreamState:(int64_t)a3;
- (void)_setNearbyWxDevice:(id)a3;
- (void)_setNearbyiCloudSignIn:(BOOL)a3;
- (void)_setRouteToWxAfterUnhide:(BOOL)a3;
- (void)_setRouted:(BOOL)a3;
- (void)_setUserConnectedState:(BOOL)a3;
- (void)_updateUnifiedInEarState;
- (void)setAacpInEarState:(int)a3;
- (void)setAirplaneMode:(BOOL)a3;
- (void)setDisconnectionBackoffTick:(unint64_t)a3;
- (void)setFwVersion:(id)a3;
- (void)setInEar:(BOOL)a3;
- (void)setIsManualDisconnectLastTime:(BOOL)a3;
- (void)setIsPaired:(BOOL)a3;
- (void)setIsPairingInProgress:(BOOL)a3;
- (void)setIsSRCapable:(BOOL)a3;
- (void)setIsUSBPlugIn:(BOOL)a3;
- (void)setLastDRHostIDSIdentifier:(id)a3;
- (void)setLowBatteryBannerShownInWorkoutContext:(BOOL)a3;
- (void)setNearbyInEar:(int)a3;
- (void)setNearbyIsMeLastRoute:(BOOL)a3;
- (void)setNearbyUSBPluggedIn:(char)a3;
- (void)setNearbyUSBPluggedInTick:(unint64_t)a3;
- (void)setNearbyUpdateTick:(unint64_t)a3;
- (void)setPairingBannerClickTick:(unint64_t)a3;
- (void)setPrevFailedTipiConnectType:(int)a3;
- (void)setShouldExtendTimeOnSpeaker:(BOOL)a3;
- (void)setTipiConnectType:(int)a3;
- (void)setUsbColorCode:(unsigned int)a3;
- (void)setUsbName:(id)a3;
- (void)setUsbProductID:(unsigned int)a3;
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

- (void)_setAADevice:(id)a3
{
  v4 = a3;
  aaDevice = self->_aaDevice;
  p_aaDevice = &self->_aaDevice;
  v7 = aaDevice;
  v8 = v4;
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

- (void)_setAANearbyDevice:(id)a3
{
  v4 = a3;
  aaNearbyDevice = self->_aaNearbyDevice;
  p_aaNearbyDevice = &self->_aaNearbyDevice;
  v7 = aaNearbyDevice;
  v8 = v4;
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

- (void)setAacpInEarState:(int)a3
{
  aacpInEarState = self->_aacpInEarState;
  if (aacpInEarState == a3)
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

      if (a3 <= 7)
      {
        v8 = off_1002BB5C8[a3];
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
  self->_aacpInEarState = a3;

  [(SRDiscoveredDevice *)self _updateUnifiedInEarState];
}

- (void)setAirplaneMode:(BOOL)a3
{
  if (self->_airplaneMode != a3)
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
    self->_airplaneMode = a3;
  }
}

- (void)_setBtAddress:(id)a3
{
  v5 = a3;
  btAddress = self->_btAddress;
  p_btAddress = &self->_btAddress;
  v9 = v5;
  if (![(NSString *)btAddress isEqualToString:?])
  {
    if (dword_1002F7530 <= 30 && (dword_1002F7530 != -1 || _LogCategory_Initialize()))
    {
      v8 = *p_btAddress;
      LogPrintF();
    }

    objc_storeStrong(p_btAddress, a3);
  }
}

- (void)_setConnectionState:(unsigned __int8)a3
{
  connectionState = self->_connectionState;
  if (connectionState != a3)
  {
    v4 = a3;
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 != -1)
      {
LABEL_4:
        if (connectionState <= 3)
        {
          v6 = off_1002BB518[connectionState];
        }

        if (v4 <= 3)
        {
          v7 = off_1002BB518[v4];
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
    self->_connectionState = v4;
  }
}

- (void)setDisconnectionBackoffTick:(unint64_t)a3
{
  if (self->_disconnectionBackoffTick != a3)
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
    self->_disconnectionBackoffTick = a3;
  }
}

- (void)setFwVersion:(id)a3
{
  v7 = a3;
  if (![(NSString *)self->_fwVersion isEqualToString:?])
  {
    if (dword_1002F7530 <= 30 && (dword_1002F7530 != -1 || _LogCategory_Initialize()))
    {
      fwVersion = self->_fwVersion;
      btAddress = self->_btAddress;
      LogPrintF();
    }

    objc_storeStrong(&self->_fwVersion, a3);
  }
}

- (void)setIsSRCapable:(BOOL)a3
{
  if (self->_isSRCapable != a3)
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
    self->_isSRCapable = a3;
  }
}

- (void)setIsManualDisconnectLastTime:(BOOL)a3
{
  if (self->_isManualDisconnectLastTime != a3)
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
    self->_isManualDisconnectLastTime = a3;
  }
}

- (void)_setIsNearby:(BOOL)a3
{
  if (self->_isNearby != a3)
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
    self->_isNearby = a3;
  }
}

- (void)setIsPaired:(BOOL)a3
{
  if (self->_isPaired != a3)
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
    self->_isPaired = a3;
  }
}

- (void)setIsPairingInProgress:(BOOL)a3
{
  if (self->_isPairingInProgress != a3)
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
    self->_isPairingInProgress = a3;
  }
}

- (void)setIsUSBPlugIn:(BOOL)a3
{
  if (self->_isUSBPlugIn != a3)
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
    self->_isUSBPlugIn = a3;
  }
}

- (void)setInEar:(BOOL)a3
{
  inEar = self->_inEar;
  if (inEar == a3)
  {
    return;
  }

  v5 = a3;
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

      if (v5)
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
  self->_inEar = v5;
  v12 = [BTSmartRoutingDaemon sharedBTSmartRoutingDaemon:btAddress];
  [v12 activeHRMDeviceUpdate];
}

- (void)_setInUseBannerBackoffTick:(unint64_t)a3
{
  if (self->_inUseBannerBackoffTick != a3)
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
    self->_inUseBannerBackoffTick = a3;
  }
}

- (void)_setInUseBannerBackoffReason:(id)a3
{
  v7 = a3;
  if (![(NSString *)self->_inUseBannerBackoffReason isEqualToString:?])
  {
    if (dword_1002F7530 <= 30 && (dword_1002F7530 != -1 || _LogCategory_Initialize()))
    {
      inUseBannerBackoffReason = self->_inUseBannerBackoffReason;
      btAddress = self->_btAddress;
      LogPrintF();
    }

    objc_storeStrong(&self->_inUseBannerBackoffReason, a3);
  }
}

- (void)_setInUseBannerShown:(BOOL)a3
{
  if (self->_inUseBannerShown != a3)
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
    self->_inUseBannerShown = a3;
  }
}

- (void)setLowBatteryBannerShownInWorkoutContext:(BOOL)a3
{
  if (self->_lowBatteryBannerShownInWorkoutContext != a3)
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
    self->_lowBatteryBannerShownInWorkoutContext = a3;
  }
}

- (void)_setMutedSpeakerForRemotePhoneCall:(BOOL)a3
{
  if (self->_mutedSpeakerForRemotePhoneCall != a3)
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
    self->_mutedSpeakerForRemotePhoneCall = a3;
  }
}

- (void)_setNearbyiCloudSignIn:(BOOL)a3
{
  if (self->_nearbyiCloudSignIn != a3)
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
    self->_nearbyiCloudSignIn = a3;
  }
}

- (void)setLastDRHostIDSIdentifier:(id)a3
{
  v5 = a3;
  lastDRHostIDSIdentifier = self->_lastDRHostIDSIdentifier;
  p_lastDRHostIDSIdentifier = &self->_lastDRHostIDSIdentifier;
  v10 = v5;
  if (![(NSString *)lastDRHostIDSIdentifier isEqualToString:?])
  {
    if (dword_1002F7530 <= 30 && (dword_1002F7530 != -1 || _LogCategory_Initialize()))
    {
      v9 = *p_lastDRHostIDSIdentifier;
      LogPrintF();
    }

    objc_storeStrong(p_lastDRHostIDSIdentifier, a3);
    v8 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
    [v8 activeHRMDeviceUpdate];
  }
}

- (void)setNearbyInEar:(int)a3
{
  nearbyInEar = self->_nearbyInEar;
  if (nearbyInEar == a3)
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

      if (a3 <= 7)
      {
        v8 = off_1002BB5C8[a3];
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
  self->_nearbyInEar = a3;

  [(SRDiscoveredDevice *)self _updateUnifiedInEarState];
}

- (void)setNearbyIsMeLastRoute:(BOOL)a3
{
  if (self->_nearbyIsMeLastRoute != a3)
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
    self->_nearbyIsMeLastRoute = a3;
  }
}

- (void)_setNearbyLastRouteHost:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v9 = v5;
    v5 = [(NSData *)self->_nearbyLastRouteHost isEqualToData:v5];
    v6 = v9;
    if ((v5 & 1) == 0)
    {
      if (dword_1002F7530 <= 30 && (dword_1002F7530 != -1 || _LogCategory_Initialize()))
      {
        nearbyLastRouteHost = self->_nearbyLastRouteHost;
        btAddress = self->_btAddress;
        LogPrintF();
      }

      objc_storeStrong(&self->_nearbyLastRouteHost, a3);
      v6 = v9;
    }
  }

  _objc_release_x1(v5, v6);
}

- (void)_setNearbyName:(id)a3
{
  v7 = a3;
  if (![(NSString *)self->_nearbyName isEqualToString:?])
  {
    if (dword_1002F7530 <= 30 && (dword_1002F7530 != -1 || _LogCategory_Initialize()))
    {
      nearbyName = self->_nearbyName;
      btAddress = self->_btAddress;
      LogPrintF();
    }

    objc_storeStrong(&self->_nearbyName, a3);
  }
}

- (void)_setNearbyOutOfCaseTime:(unsigned __int8)a3
{
  if (self->_nearbyOutOfCaseTime != a3)
  {
    v3 = a3;
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
    self->_nearbyOutOfCaseTime = v3;
  }
}

- (void)_setNearbyPaired:(BOOL)a3
{
  if (self->_nearbyPaired != a3)
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
    self->_nearbyPaired = a3;
  }
}

- (void)_setNearbyProductID:(unsigned int)a3
{
  if (self->_nearbyProductID != a3)
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
    self->_nearbyProductID = a3;
  }
}

- (void)_setNearbyPrevInEar:(int)a3
{
  if (dword_1002F7530 <= 30 && (dword_1002F7530 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FAEBC(self, a3);
  }

  self->_nearbyPrevInEar = a3;
}

- (void)_setNearbyConnectedSourceCount:(unsigned __int8)a3
{
  if (self->_nearbyConnectedSourceCount != a3)
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
    self->_nearbyConnectedSourceCount = a3;
  }
}

- (void)_setNearbyForceDisconnect:(BOOL)a3
{
  if (self->_nearbyForceDisconnectBit != a3)
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
    self->_nearbyForceDisconnectBit = a3;
  }
}

- (void)_setNearbyStreamState:(int64_t)a3
{
  nearbyStreamState = self->_nearbyStreamState;
  if (nearbyStreamState != a3)
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

        if (a3 <= 3)
        {
          v7 = off_1002BB538[a3];
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
    self->_nearbyStreamState = a3;
  }
}

- (void)setNearbyUpdateTick:(unint64_t)a3
{
  if (self->_nearbyUpdateTick != a3)
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
    self->_nearbyUpdateTick = a3;
  }
}

- (void)setNearbyUSBPluggedIn:(char)a3
{
  nearbyUSBPluggedIn = self->_nearbyUSBPluggedIn;
  if (nearbyUSBPluggedIn != a3)
  {
    v5 = a3;
    if (dword_1002F7530 <= 30)
    {
      if (dword_1002F7530 != -1)
      {
LABEL_4:
        if (nearbyUSBPluggedIn <= 2)
        {
          v6 = off_1002BB558[nearbyUSBPluggedIn];
        }

        if (v5 <= 2)
        {
          v7 = off_1002BB558[v5];
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
    self->_nearbyUSBPluggedIn = v5;
  }
}

- (void)setNearbyUSBPluggedInTick:(unint64_t)a3
{
  if (self->_nearbyUSBPluggedInTick != a3)
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
    self->_nearbyUSBPluggedInTick = a3;
  }
}

- (void)_setNearbyWxDevice:(id)a3
{
  v5 = a3;
  nearbyWxDevice = self->_nearbyWxDevice;
  p_nearbyWxDevice = &self->_nearbyWxDevice;
  if (nearbyWxDevice != v5)
  {
    v8 = v5;
    objc_storeStrong(p_nearbyWxDevice, a3);
    v5 = v8;
  }
}

- (void)setPairingBannerClickTick:(unint64_t)a3
{
  if (self->_pairingBannerClickTick != a3)
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
    self->_pairingBannerClickTick = a3;
  }
}

- (void)setPrevFailedTipiConnectType:(int)a3
{
  prevFailedTipiConnectType = self->_prevFailedTipiConnectType;
  if (prevFailedTipiConnectType != a3)
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

        if (a3 <= 0xA)
        {
          v7 = off_1002BB570[a3];
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
    self->_prevFailedTipiConnectType = a3;
  }
}

- (void)_setRouted:(BOOL)a3
{
  if (self->_routed != a3)
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
    self->_routed = a3;
  }
}

- (void)_setRouteToWxAfterUnhide:(BOOL)a3
{
  if (self->_routeToWxAfterUnhide != a3)
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
    self->_routeToWxAfterUnhide = a3;
  }
}

- (void)setShouldExtendTimeOnSpeaker:(BOOL)a3
{
  if (self->_shouldExtendTimeOnSpeaker != a3)
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
    self->_shouldExtendTimeOnSpeaker = a3;
  }
}

- (void)setTipiConnectType:(int)a3
{
  tipiConnectType = self->_tipiConnectType;
  if (tipiConnectType != a3)
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

        if (a3 <= 0xA)
        {
          v7 = off_1002BB570[a3];
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
    self->_tipiConnectType = a3;
  }
}

- (void)setUsbColorCode:(unsigned int)a3
{
  if (self->_usbcColorCode != a3)
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
    self->_usbcColorCode = a3;
  }
}

- (void)setUsbName:(id)a3
{
  v7 = a3;
  if (![(NSString *)self->_usbName isEqualToString:?])
  {
    if (dword_1002F7530 <= 30 && (dword_1002F7530 != -1 || _LogCategory_Initialize()))
    {
      usbName = self->_usbName;
      btAddress = self->_btAddress;
      LogPrintF();
    }

    objc_storeStrong(&self->_usbName, a3);
  }
}

- (void)setUsbProductID:(unsigned int)a3
{
  if (self->_usbProductID != a3)
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
    self->_usbProductID = a3;
  }
}

- (void)_setUserConnectedState:(BOOL)a3
{
  if (self->_userConnectedState != a3)
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
    self->_userConnectedState = a3;
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