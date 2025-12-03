@interface AAAccessoryUsageSummary
- (BOOL)updateWithPayload:(id)payload;
- (void)_updateInEarState:(BOOL)state;
- (void)_updateListeningMode:(BOOL)mode;
- (void)_updateVolumeChange:(int)change;
- (void)_updateWithHfpPayload:(id)payload;
- (void)addA2DPDuration:(unint64_t)duration audioCategory:(unint64_t)category;
- (void)addA2DPPacketFlushRetx:(unsigned int)retx;
- (void)addA2DPRetx:(unsigned int)retx;
- (void)addDisconnectionErrors:(unint64_t)errors;
- (void)adda2DPSnr:(unsigned int)snr;
- (void)setAaDevice:(id)device;
- (void)updateConnectionErrorReason:(id)reason;
@end

@implementation AAAccessoryUsageSummary

- (void)setAaDevice:(id)device
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
    if (dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EDE24(p_aaDevice, v11);
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

- (void)_updateWithHfpPayload:(id)payload
{
  payloadCopy = payload;
  avgHfpRetx = [(AAAccessoryUsageSummary *)self avgHfpRetx];
  v6 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [payloadCopy retx]);
  [avgHfpRetx addObject:v6];

  avgHfpRssi = [(AAAccessoryUsageSummary *)self avgHfpRssi];
  v8 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [payloadCopy rssiAvg]);
  [avgHfpRssi addObject:v8];

  hfpDuration = [(AAAccessoryUsageSummary *)self hfpDuration];
  v10 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [payloadCopy durationInSec]);
  [hfpDuration addObject:v10];

  hfpIsTipiConnected = [(AAAccessoryUsageSummary *)self hfpIsTipiConnected];
  v12 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [payloadCopy tipiConnected]);
  [hfpIsTipiConnected addObject:v12];

  hfpNumberOfDevices = [(AAAccessoryUsageSummary *)self hfpNumberOfDevices];
  v14 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [payloadCopy numDevicesConnected]);
  [hfpNumberOfDevices addObject:v14];

  hfpSnr = [(AAAccessoryUsageSummary *)self hfpSnr];
  v16 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [payloadCopy snrAvg]);
  [hfpSnr addObject:v16];

  hfpPlc = [(AAAccessoryUsageSummary *)self hfpPlc];
  v18 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [payloadCopy plcCount]);
  [hfpPlc addObject:v18];

  durationInSec = [payloadCopy durationInSec];
  [(AAAccessoryUsageSummary *)self setTotalDurationHfp:&durationInSec[[(AAAccessoryUsageSummary *)self totalDurationHfp]]];
  if (dword_1002F6998 <= 50 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EDEB0();
  }
}

- (BOOL)updateWithPayload:(id)payload
{
  payloadCopy = payload;
  infoType = [payloadCopy infoType];
  if (!infoType)
  {
    if (dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EDED0();
    }

    goto LABEL_7;
  }

  if (infoType != 2)
  {
LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  [(AAAccessoryUsageSummary *)self _updateWithHfpPayload:payloadCopy];
  v6 = 1;
LABEL_8:

  return v6;
}

- (void)updateConnectionErrorReason:(id)reason
{
  reasonCopy = reason;
  v16 = reasonCopy;
  if (reasonCopy)
  {
    if (([reasonCopy isEqualToString:@"NA"] & 1) == 0)
    {
      connectionErroReasonrMap = self->_connectionErroReasonrMap;
      if (!connectionErroReasonrMap)
      {
        v6 = objc_alloc_init(NSMutableDictionary);
        v7 = self->_connectionErroReasonrMap;
        self->_connectionErroReasonrMap = v6;

        connectionErroReasonrMap = self->_connectionErroReasonrMap;
      }

      v8 = [(NSMutableDictionary *)connectionErroReasonrMap objectForKeyedSubscript:v16];
      v9 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v8 intValue] + 1);
      [(NSMutableDictionary *)self->_connectionErroReasonrMap setObject:v9 forKeyedSubscript:v16];

      if (([v16 isEqualToString:@"ACL Connect Failed"] & 1) == 0 && (objc_msgSend(v16, "isEqualToString:", @"Magic Pairing failed due to OPERATION_TIMED_OUT") & 1) == 0 && (objc_msgSend(v16, "isEqualToString:", @"Peer device has no pairing keys BT_MAGIC_PAIRING_KEY_NOT_FOUND") & 1) == 0 && (objc_msgSend(v16, "isEqualToString:", @"HFP Connect Failed") & 1) == 0)
      {
        ++self->_connectionErrorGeneralCount;
      }
    }

    ++self->_totalNumberOfConnections;
    if (dword_1002F6998 <= 30)
    {
      if (dword_1002F6998 != -1)
      {
LABEL_12:
        v10 = [(NSMutableDictionary *)self->_connectionErroReasonrMap objectForKeyedSubscript:@"ACL Connect Failed"];
        v11 = [(NSMutableDictionary *)self->_connectionErroReasonrMap objectForKeyedSubscript:@"Magic Pairing failed due to OPERATION_TIMED_OUT"];
        v12 = [(NSMutableDictionary *)self->_connectionErroReasonrMap objectForKeyedSubscript:@"Peer device has no pairing keys BT_MAGIC_PAIRING_KEY_NOT_FOUND"];
        v14 = [(NSMutableDictionary *)self->_connectionErroReasonrMap objectForKeyedSubscript:@"HFP Connect Failed"];
        connectionErrorGeneralCount = self->_connectionErrorGeneralCount;
        LogPrintF();

        goto LABEL_14;
      }

      if (_LogCategory_Initialize())
      {
        totalNumberOfConnections = self->_totalNumberOfConnections;
        goto LABEL_12;
      }
    }
  }

  else
  {
    sub_1001EDEEC();
  }

LABEL_14:
}

- (void)addDisconnectionErrors:(unint64_t)errors
{
  if (errors)
  {
    disconnectionErrorMap = self->_disconnectionErrorMap;
    if (!disconnectionErrorMap)
    {
      v6 = objc_alloc_init(NSMutableDictionary);
      v7 = self->_disconnectionErrorMap;
      self->_disconnectionErrorMap = v6;

      disconnectionErrorMap = self->_disconnectionErrorMap;
    }

    v8 = [NSNumber numberWithUnsignedLongLong:errors];
    v9 = [(NSMutableDictionary *)disconnectionErrorMap objectForKeyedSubscript:v8];
    v10 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v9 intValue] + 1);
    v11 = self->_disconnectionErrorMap;
    v12 = [NSNumber numberWithUnsignedLongLong:errors];
    [(NSMutableDictionary *)v11 setObject:v10 forKeyedSubscript:v12];

    if (errors != 10720 && errors != 11818)
    {
      ++self->_disconnectionErrorGeneralCount;
    }
  }
}

- (void)addA2DPDuration:(unint64_t)duration audioCategory:(unint64_t)category
{
  categoryCopy = category;
  a2dpDuration = self->_a2dpDuration;
  v8 = [NSNumber numberWithUnsignedLongLong:?];
  [(NSMutableArray *)a2dpDuration addObject:v8];

  self->_totalDurationA2dp += duration;
  if (categoryCopy)
  {
    self->_a2dpTotalGameDuration += duration;
  }

  if ((categoryCopy & 2) != 0)
  {
    self->_a2dpTotalSpatialDuration += duration;
  }
}

- (void)addA2DPRetx:(unsigned int)retx
{
  avgA2dpRetx = self->_avgA2dpRetx;
  v6 = [NSNumber numberWithUnsignedInt:?];
  [(NSMutableArray *)avgA2dpRetx addObject:v6];

  v7 = 32;
  if (retx > 0x27)
  {
    v7 = 28;
  }

  if (retx < 0x1E)
  {
    v7 = 36;
  }

  ++*(&self->super.isa + v7);
}

- (void)adda2DPSnr:(unsigned int)snr
{
  a2dpSnr = self->_a2dpSnr;
  v6 = [NSNumber numberWithUnsignedInt:?];
  [(NSMutableArray *)a2dpSnr addObject:v6];

  v7 = 40;
  if (snr > 0x13)
  {
    v7 = 44;
  }

  ++*(&self->super.isa + v7);
}

- (void)addA2DPPacketFlushRetx:(unsigned int)retx
{
  avgA2dpFlushRetx = self->_avgA2dpFlushRetx;
  v6 = [NSNumber numberWithUnsignedInt:?];
  [(NSMutableArray *)avgA2dpFlushRetx addObject:v6];

  v7 = 68;
  if (retx > 0x27)
  {
    v7 = 64;
  }

  if (retx < 0x1E)
  {
    v7 = 72;
  }

  ++*(&self->super.isa + v7);
}

- (void)_updateVolumeChange:(int)change
{
  if (change)
  {
    if (change == 1)
    {
      ++self->_volumeChnagePhoneCallCount;
    }

    else if (change == -1 && dword_1002F6998 <= 90 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EE00C();
    }
  }

  else
  {
    ++self->_volumeChangeAudioVideoCount;
  }
}

- (void)_updateInEarState:(BOOL)state
{
  aaDevice = self->_aaDevice;
  if (!aaDevice)
  {
    sub_1001EE028();
    return;
  }

  stateCopy = state;
  budState = self->_budState;
  if ([(AudioAccessoryDevice *)aaDevice primaryPlacement]== 1 && [(AudioAccessoryDevice *)self->_aaDevice secondaryPlacement]== 1)
  {
    v7 = 2;
  }

  else
  {
    v7 = [(AudioAccessoryDevice *)self->_aaDevice primaryPlacement]== 1 && [(AudioAccessoryDevice *)self->_aaDevice secondaryPlacement]!= 1 || [(AudioAccessoryDevice *)self->_aaDevice primaryPlacement]!= 1 && [(AudioAccessoryDevice *)self->_aaDevice secondaryPlacement]== 1;
  }

  if (budState != v7 || stateCopy)
  {
    mach_absolute_time();
    budStateChangeTick = self->_budStateChangeTick;
    v9 = UpTicksToSeconds();
    if (budState == 1)
    {
      v10 = 108;
    }

    else
    {
      if (budState != 2)
      {
LABEL_18:
        self->_budState = v7;
        self->_budStateChangeTick = mach_absolute_time();
        if (dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
        {
          if (budState <= 2)
          {
            v11 = off_1002B9408[budState];
          }

          v12 = off_1002B9408[v7];
          bothBudDuration = self->_bothBudDuration;
          singleBudDuration = self->_singleBudDuration;
          LogPrintF();
        }

        return;
      }

      v10 = 112;
    }

    *(&self->super.isa + v10) += v9 / 0x3C;
    goto LABEL_18;
  }
}

- (void)_updateListeningMode:(BOOL)mode
{
  aaDevice = self->_aaDevice;
  if (aaDevice)
  {
    modeCopy = mode;
    listeningMode = self->_listeningMode;
    listeningMode = [(AudioAccessoryDevice *)aaDevice listeningMode];
    mach_absolute_time();
    listeningModeStartTick = self->_listeningModeStartTick;
    v9 = UpTicksToSeconds();
    if (listeningMode != listeningMode || modeCopy)
    {
      if (listeningMode - 2 <= 2)
      {
        *(&self->_bothBudDuration + listeningMode) += v9 / 0x3C;
      }

      self->_listeningMode = listeningMode;
      self->_listeningModeStartTick = mach_absolute_time();
      if (dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
      {
        sub_1001EE088(listeningMode, listeningMode, self);
      }
    }
  }

  else
  {
    sub_1001EE110();
  }
}

@end