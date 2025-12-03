@interface PSFrameIDTranslator
- (PSFrameIDTranslator)init;
- (unint64_t)virtualFrameIDForPhysicalFrameID:(unint64_t)d syncID:(unint64_t)iD;
- (void)pulseRateWillChangeForSyncID:(unint64_t)d atFrameID:(unint64_t)iD frequency:(unint64_t)frequency increment:(unint64_t)increment msgFrameNumber:(unint64_t)number;
@end

@implementation PSFrameIDTranslator

- (PSFrameIDTranslator)init
{
  v6.receiver = self;
  v6.super_class = PSFrameIDTranslator;
  v2 = [(PSFrameIDTranslator *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    msgCalibrations = v2->_msgCalibrations;
    v2->_msgCalibrations = v3;
  }

  return v2;
}

- (void)pulseRateWillChangeForSyncID:(unint64_t)d atFrameID:(unint64_t)iD frequency:(unint64_t)frequency increment:(unint64_t)increment msgFrameNumber:(unint64_t)number
{
  v16 = [NSNumber numberWithUnsignedLongLong:?];
  v13 = [(NSMutableDictionary *)self->_msgCalibrations objectForKey:?];
  if (!v13)
  {
    v13 = objc_alloc_init(PSMSGCalibration);
  }

  current = [(PSMSGCalibration *)v13 current];
  [(PSMSGCalibration *)v13 setPrevious:current];

  v15 = objc_alloc_init(PSMSGCalibrationUpdate);
  [(PSMSGCalibrationUpdate *)v15 setSyncID:d];
  [(PSMSGCalibrationUpdate *)v15 setFrameID:iD];
  [(PSMSGCalibrationUpdate *)v15 setFrequency:frequency];
  [(PSMSGCalibrationUpdate *)v15 setIncrement:increment];
  [(PSMSGCalibrationUpdate *)v15 setMsgFrameNumber:number];
  [(PSMSGCalibration *)v13 setCurrent:v15];
  [(NSMutableDictionary *)self->_msgCalibrations setObject:v13 forKey:v16];
}

- (unint64_t)virtualFrameIDForPhysicalFrameID:(unint64_t)d syncID:(unint64_t)iD
{
  v6 = [NSNumber numberWithUnsignedLongLong:iD];
  v7 = [(NSMutableDictionary *)self->_msgCalibrations objectForKey:v6];
  current = [v7 current];

  if (current)
  {
    if ([current msgFrameNumber] <= d || (-[NSMutableDictionary objectForKey:](self->_msgCalibrations, "objectForKey:", v6), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "previous"), v10 = objc_claimAutoreleasedReturnValue(), current, v9, (current = v10) != 0))
    {
      frameID = [current frameID];
      msgFrameNumber = [current msgFrameNumber];
      d = frameID + [current increment] * (d - msgFrameNumber);
    }
  }

  return d;
}

@end