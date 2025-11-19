@interface PDPeridotCameraSystemCalibrationData
+ (id)calibrationDataWithPeridotCalib:(id)a3 platformId:(int)a4 sensorVersion:(int)a5;
+ (id)calibrationDataWithPeridotCalibDataDictionary:(id)a3;
- (PDPeridotCameraSystemCalibrationData)initWithPeridotModuleCalibration:(id)a3 platformId:(int)a4 sensorVersion:(int)a5;
- (void)replacePeridotDistortionModelWithWarperMesh:(id)a3 width:(int64_t)a4 height:(int64_t)a5;
@end

@implementation PDPeridotCameraSystemCalibrationData

- (void)replacePeridotDistortionModelWithWarperMesh:(id)a3 width:(int64_t)a4 height:(int64_t)a5
{
  v19 = a3;
  peridot_depth_log("Replacing Jasper distortion model with a warper mesh");
  if (a4 != 85 || a5 != 109)
  {
    v15 = MEMORY[0x277CBEAD8];
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"warperMesh dimensions must be %lu%lu", 85, 109];
    v17 = [v15 exceptionWithName:*MEMORY[0x277CBE660] reason:v16 userInfo:0];
    v18 = v17;

    objc_exception_throw(v17);
  }

  v8 = +[PDUserDefaults defaults];
  v9 = [v8 ignoreWarperMesh];

  if (v9)
  {
    peridot_depth_log("WARNING! Warper mesh set, but ignored due to defaults write");
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x277CED128]) initWithWarperMesh:v19 type:1 width:85 height:109];
    [(ADMutableCameraCalibration *)self->_peridotCamera setDistortionModel:v10];
  }

  v11 = +[PDUserDefaults defaults];
  v12 = [v11 dumpWarperMeshesPath];

  if (v12)
  {
    v13 = +[PDInternalUtils currTimeAsString];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@_Warper.bin", v12, v13];
    [v19 writeToFile:v14 atomically:1];
  }
}

- (PDPeridotCameraSystemCalibrationData)initWithPeridotModuleCalibration:(id)a3 platformId:(int)a4 sensorVersion:(int)a5
{
  v9 = a3;
  v22.receiver = self;
  v22.super_class = PDPeridotCameraSystemCalibrationData;
  v10 = [(PDPeridotCameraSystemCalibrationData *)&v22 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_peridotModule, a3);
    if (a4 <= 96)
    {
      if (a4 > 65)
      {
        if ((a4 - 66) >= 2)
        {
          if ((a4 - 69) >= 2)
          {
            goto LABEL_50;
          }

LABEL_11:
          v12 = 3;
          goto LABEL_46;
        }
      }

      else
      {
        if ((a4 - 51) < 4)
        {
LABEL_5:
          v12 = 2;
          goto LABEL_46;
        }

        if (a4 != -1)
        {
          goto LABEL_50;
        }

        v13 = MGGetProductType();
        if (v13 > 2619317133)
        {
          if (v13 <= 3241053351)
          {
            if (v13 <= 2941181570)
            {
              if (v13 == 2619317134)
              {
                goto LABEL_5;
              }

              v14 = 2795618603;
LABEL_35:
              if (v13 != v14)
              {
                goto LABEL_50;
              }

              goto LABEL_11;
            }

            if (v13 != 2941181571)
            {
              v16 = 3048527336;
              goto LABEL_43;
            }

            goto LABEL_45;
          }

          if (v13 <= 3667751752)
          {
            if (v13 == 3241053352)
            {
              goto LABEL_5;
            }

            v16 = 3591055299;
LABEL_43:
            if (v13 != v16)
            {
              goto LABEL_50;
            }

            goto LABEL_13;
          }

          if (v13 != 3667751753 && v13 != 4184216061)
          {
LABEL_50:
            v11->_platform = -1;
            peridot_depth_log("Warning: PeridotDepth could not resolve platform type");
            if (a5 < 3)
            {
LABEL_52:
              v11->_peridotChipRevision = a5;
              v17 = [(PDPeridotModuleCalibrationData *)v11->_peridotModule calib];
              v19 = peridot::CalibManager::getPeridotCamera(v17, v18);
              peridotCamera = v11->_peridotCamera;
              v11->_peridotCamera = v19;

              goto LABEL_53;
            }

LABEL_51:
            peridot_depth_log("Warning: unknown SensorVersion (%d)", a5);
            goto LABEL_52;
          }

LABEL_8:
          v12 = 5;
          goto LABEL_46;
        }

        if (v13 > 369845483)
        {
          if (v13 <= 689804741)
          {
            if (v13 == 369845484)
            {
              goto LABEL_8;
            }

            v15 = 555503454;
LABEL_39:
            if (v13 == v15)
            {
              goto LABEL_5;
            }

            goto LABEL_50;
          }

          if (v13 != 689804742)
          {
            v15 = 2487868872;
            goto LABEL_39;
          }

LABEL_15:
          v11->_platform = 0;
          if (a5 < 3)
          {
            goto LABEL_52;
          }

          goto LABEL_51;
        }

        if (v13 != 133314240)
        {
          if (v13 != 185765807)
          {
            v14 = 330877086;
            goto LABEL_35;
          }

          goto LABEL_8;
        }
      }

LABEL_45:
      v12 = 1;
      goto LABEL_46;
    }

    if (a4 <= 99)
    {
      if ((a4 - 97) < 2)
      {
LABEL_13:
        v12 = 6;
        goto LABEL_46;
      }

      if (a4 != 99)
      {
        goto LABEL_50;
      }

      v12 = 4;
LABEL_46:
      v11->_platform = v12;
      if (a5 < 3)
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    }

    if ((a4 - 100) < 4)
    {
      goto LABEL_8;
    }

    if ((a4 - 231) >= 2)
    {
      goto LABEL_50;
    }

    goto LABEL_15;
  }

LABEL_53:

  return v11;
}

+ (id)calibrationDataWithPeridotCalib:(id)a3 platformId:(int)a4 sensorVersion:(int)a5
{
  v5 = *&a5;
  v6 = *&a4;
  v7 = a3;
  v8 = [[PDPeridotModuleCalibrationData alloc] initWithPeridotCalib:v7];
  if (v8)
  {
    v9 = [[PDPeridotCameraSystemCalibrationData alloc] initWithPeridotModuleCalibration:v8 platformId:v6 sensorVersion:v5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)calibrationDataWithPeridotCalibDataDictionary:(id)a3
{
  v3 = a3;
  v4 = [[PDPeridotModuleCalibrationData alloc] initWithCalibrationDictionary:v3];
  if (v4)
  {
    v5 = [v3 objectForKeyedSubscript:@"PlatformId"];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 intValue];
    }

    else
    {
      v7 = 0;
    }

    v9 = [v3 objectForKeyedSubscript:@"SensorVersion"];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 intValue];
    }

    else
    {
      v11 = 0;
    }

    v8 = [[PDPeridotCameraSystemCalibrationData alloc] initWithPeridotModuleCalibration:v4 platformId:v7 sensorVersion:v11];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end