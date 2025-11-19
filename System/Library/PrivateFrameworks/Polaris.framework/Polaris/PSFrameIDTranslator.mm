@interface PSFrameIDTranslator
- (PSFrameIDTranslator)init;
- (unint64_t)virtualFrameIDForPhysicalFrameID:(unint64_t)a3 syncID:(unint64_t)a4;
- (void)pulseRateWillChangeForSyncID:(unint64_t)a3 atFrameID:(unint64_t)a4 frequency:(unint64_t)a5 increment:(unint64_t)a6 msgFrameNumber:(unint64_t)a7;
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

- (void)pulseRateWillChangeForSyncID:(unint64_t)a3 atFrameID:(unint64_t)a4 frequency:(unint64_t)a5 increment:(unint64_t)a6 msgFrameNumber:(unint64_t)a7
{
  v16 = [NSNumber numberWithUnsignedLongLong:?];
  v13 = [(NSMutableDictionary *)self->_msgCalibrations objectForKey:?];
  if (!v13)
  {
    v13 = objc_alloc_init(PSMSGCalibration);
  }

  v14 = [(PSMSGCalibration *)v13 current];
  [(PSMSGCalibration *)v13 setPrevious:v14];

  v15 = objc_alloc_init(PSMSGCalibrationUpdate);
  [(PSMSGCalibrationUpdate *)v15 setSyncID:a3];
  [(PSMSGCalibrationUpdate *)v15 setFrameID:a4];
  [(PSMSGCalibrationUpdate *)v15 setFrequency:a5];
  [(PSMSGCalibrationUpdate *)v15 setIncrement:a6];
  [(PSMSGCalibrationUpdate *)v15 setMsgFrameNumber:a7];
  [(PSMSGCalibration *)v13 setCurrent:v15];
  [(NSMutableDictionary *)self->_msgCalibrations setObject:v13 forKey:v16];
}

- (unint64_t)virtualFrameIDForPhysicalFrameID:(unint64_t)a3 syncID:(unint64_t)a4
{
  v6 = [NSNumber numberWithUnsignedLongLong:a4];
  v7 = [(NSMutableDictionary *)self->_msgCalibrations objectForKey:v6];
  v8 = [v7 current];

  if (v8)
  {
    if ([v8 msgFrameNumber] <= a3 || (-[NSMutableDictionary objectForKey:](self->_msgCalibrations, "objectForKey:", v6), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "previous"), v10 = objc_claimAutoreleasedReturnValue(), v8, v9, (v8 = v10) != 0))
    {
      v11 = [v8 frameID];
      v12 = [v8 msgFrameNumber];
      a3 = v11 + [v8 increment] * (a3 - v12);
    }
  }

  return a3;
}

@end