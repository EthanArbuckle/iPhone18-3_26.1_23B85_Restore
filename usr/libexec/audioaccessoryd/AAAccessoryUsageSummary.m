@interface AAAccessoryUsageSummary
- (BOOL)updateWithPayload:(id)a3;
- (void)_updateInEarState:(BOOL)a3;
- (void)_updateListeningMode:(BOOL)a3;
- (void)_updateVolumeChange:(int)a3;
- (void)_updateWithHfpPayload:(id)a3;
- (void)addA2DPDuration:(unint64_t)a3 audioCategory:(unint64_t)a4;
- (void)addA2DPPacketFlushRetx:(unsigned int)a3;
- (void)addA2DPRetx:(unsigned int)a3;
- (void)addDisconnectionErrors:(unint64_t)a3;
- (void)adda2DPSnr:(unsigned int)a3;
- (void)setAaDevice:(id)a3;
- (void)updateConnectionErrorReason:(id)a3;
@end

@implementation AAAccessoryUsageSummary

- (void)setAaDevice:(id)a3
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

- (void)_updateWithHfpPayload:(id)a3
{
  v4 = a3;
  v5 = [(AAAccessoryUsageSummary *)self avgHfpRetx];
  v6 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v4 retx]);
  [v5 addObject:v6];

  v7 = [(AAAccessoryUsageSummary *)self avgHfpRssi];
  v8 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v4 rssiAvg]);
  [v7 addObject:v8];

  v9 = [(AAAccessoryUsageSummary *)self hfpDuration];
  v10 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v4 durationInSec]);
  [v9 addObject:v10];

  v11 = [(AAAccessoryUsageSummary *)self hfpIsTipiConnected];
  v12 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 tipiConnected]);
  [v11 addObject:v12];

  v13 = [(AAAccessoryUsageSummary *)self hfpNumberOfDevices];
  v14 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v4 numDevicesConnected]);
  [v13 addObject:v14];

  v15 = [(AAAccessoryUsageSummary *)self hfpSnr];
  v16 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v4 snrAvg]);
  [v15 addObject:v16];

  v17 = [(AAAccessoryUsageSummary *)self hfpPlc];
  v18 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v4 plcCount]);
  [v17 addObject:v18];

  v19 = [v4 durationInSec];
  [(AAAccessoryUsageSummary *)self setTotalDurationHfp:&v19[[(AAAccessoryUsageSummary *)self totalDurationHfp]]];
  if (dword_1002F6998 <= 50 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EDEB0();
  }
}

- (BOOL)updateWithPayload:(id)a3
{
  v4 = a3;
  v5 = [v4 infoType];
  if (!v5)
  {
    if (dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EDED0();
    }

    goto LABEL_7;
  }

  if (v5 != 2)
  {
LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  [(AAAccessoryUsageSummary *)self _updateWithHfpPayload:v4];
  v6 = 1;
LABEL_8:

  return v6;
}

- (void)updateConnectionErrorReason:(id)a3
{
  v4 = a3;
  v16 = v4;
  if (v4)
  {
    if (([v4 isEqualToString:@"NA"] & 1) == 0)
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

- (void)addDisconnectionErrors:(unint64_t)a3
{
  if (a3)
  {
    disconnectionErrorMap = self->_disconnectionErrorMap;
    if (!disconnectionErrorMap)
    {
      v6 = objc_alloc_init(NSMutableDictionary);
      v7 = self->_disconnectionErrorMap;
      self->_disconnectionErrorMap = v6;

      disconnectionErrorMap = self->_disconnectionErrorMap;
    }

    v8 = [NSNumber numberWithUnsignedLongLong:a3];
    v9 = [(NSMutableDictionary *)disconnectionErrorMap objectForKeyedSubscript:v8];
    v10 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v9 intValue] + 1);
    v11 = self->_disconnectionErrorMap;
    v12 = [NSNumber numberWithUnsignedLongLong:a3];
    [(NSMutableDictionary *)v11 setObject:v10 forKeyedSubscript:v12];

    if (a3 != 10720 && a3 != 11818)
    {
      ++self->_disconnectionErrorGeneralCount;
    }
  }
}

- (void)addA2DPDuration:(unint64_t)a3 audioCategory:(unint64_t)a4
{
  v4 = a4;
  a2dpDuration = self->_a2dpDuration;
  v8 = [NSNumber numberWithUnsignedLongLong:?];
  [(NSMutableArray *)a2dpDuration addObject:v8];

  self->_totalDurationA2dp += a3;
  if (v4)
  {
    self->_a2dpTotalGameDuration += a3;
  }

  if ((v4 & 2) != 0)
  {
    self->_a2dpTotalSpatialDuration += a3;
  }
}

- (void)addA2DPRetx:(unsigned int)a3
{
  avgA2dpRetx = self->_avgA2dpRetx;
  v6 = [NSNumber numberWithUnsignedInt:?];
  [(NSMutableArray *)avgA2dpRetx addObject:v6];

  v7 = 32;
  if (a3 > 0x27)
  {
    v7 = 28;
  }

  if (a3 < 0x1E)
  {
    v7 = 36;
  }

  ++*(&self->super.isa + v7);
}

- (void)adda2DPSnr:(unsigned int)a3
{
  a2dpSnr = self->_a2dpSnr;
  v6 = [NSNumber numberWithUnsignedInt:?];
  [(NSMutableArray *)a2dpSnr addObject:v6];

  v7 = 40;
  if (a3 > 0x13)
  {
    v7 = 44;
  }

  ++*(&self->super.isa + v7);
}

- (void)addA2DPPacketFlushRetx:(unsigned int)a3
{
  avgA2dpFlushRetx = self->_avgA2dpFlushRetx;
  v6 = [NSNumber numberWithUnsignedInt:?];
  [(NSMutableArray *)avgA2dpFlushRetx addObject:v6];

  v7 = 68;
  if (a3 > 0x27)
  {
    v7 = 64;
  }

  if (a3 < 0x1E)
  {
    v7 = 72;
  }

  ++*(&self->super.isa + v7);
}

- (void)_updateVolumeChange:(int)a3
{
  if (a3)
  {
    if (a3 == 1)
    {
      ++self->_volumeChnagePhoneCallCount;
    }

    else if (a3 == -1 && dword_1002F6998 <= 90 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EE00C();
    }
  }

  else
  {
    ++self->_volumeChangeAudioVideoCount;
  }
}

- (void)_updateInEarState:(BOOL)a3
{
  aaDevice = self->_aaDevice;
  if (!aaDevice)
  {
    sub_1001EE028();
    return;
  }

  v5 = a3;
  budState = self->_budState;
  if ([(AudioAccessoryDevice *)aaDevice primaryPlacement]== 1 && [(AudioAccessoryDevice *)self->_aaDevice secondaryPlacement]== 1)
  {
    v7 = 2;
  }

  else
  {
    v7 = [(AudioAccessoryDevice *)self->_aaDevice primaryPlacement]== 1 && [(AudioAccessoryDevice *)self->_aaDevice secondaryPlacement]!= 1 || [(AudioAccessoryDevice *)self->_aaDevice primaryPlacement]!= 1 && [(AudioAccessoryDevice *)self->_aaDevice secondaryPlacement]== 1;
  }

  if (budState != v7 || v5)
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

- (void)_updateListeningMode:(BOOL)a3
{
  aaDevice = self->_aaDevice;
  if (aaDevice)
  {
    v5 = a3;
    listeningMode = self->_listeningMode;
    v7 = [(AudioAccessoryDevice *)aaDevice listeningMode];
    mach_absolute_time();
    listeningModeStartTick = self->_listeningModeStartTick;
    v9 = UpTicksToSeconds();
    if (listeningMode != v7 || v5)
    {
      if (listeningMode - 2 <= 2)
      {
        *(&self->_bothBudDuration + listeningMode) += v9 / 0x3C;
      }

      self->_listeningMode = v7;
      self->_listeningModeStartTick = mach_absolute_time();
      if (dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
      {
        sub_1001EE088(listeningMode, v7, self);
      }
    }
  }

  else
  {
    sub_1001EE110();
  }
}

@end