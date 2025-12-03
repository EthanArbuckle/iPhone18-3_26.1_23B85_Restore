@interface PDPeridotCameraSystemCalibrationData
+ (id)calibrationDataWithPeridotCalib:(id)calib platformId:(int)id sensorVersion:(int)version;
+ (id)calibrationDataWithPeridotCalibDataDictionary:(id)dictionary;
- (PDPeridotCameraSystemCalibrationData)initWithPeridotModuleCalibration:(id)calibration platformId:(int)id sensorVersion:(int)version;
- (void)replacePeridotDistortionModelWithWarperMesh:(id)mesh width:(int64_t)width height:(int64_t)height;
@end

@implementation PDPeridotCameraSystemCalibrationData

- (void)replacePeridotDistortionModelWithWarperMesh:(id)mesh width:(int64_t)width height:(int64_t)height
{
  meshCopy = mesh;
  peridot_depth_log("Replacing Jasper distortion model with a warper mesh");
  if (width != 85 || height != 109)
  {
    v15 = MEMORY[0x277CBEAD8];
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"warperMesh dimensions must be %lu%lu", 85, 109];
    v17 = [v15 exceptionWithName:*MEMORY[0x277CBE660] reason:v16 userInfo:0];
    v18 = v17;

    objc_exception_throw(v17);
  }

  v8 = +[PDUserDefaults defaults];
  ignoreWarperMesh = [v8 ignoreWarperMesh];

  if (ignoreWarperMesh)
  {
    peridot_depth_log("WARNING! Warper mesh set, but ignored due to defaults write");
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x277CED128]) initWithWarperMesh:meshCopy type:1 width:85 height:109];
    [(ADMutableCameraCalibration *)self->_peridotCamera setDistortionModel:v10];
  }

  v11 = +[PDUserDefaults defaults];
  dumpWarperMeshesPath = [v11 dumpWarperMeshesPath];

  if (dumpWarperMeshesPath)
  {
    v13 = +[PDInternalUtils currTimeAsString];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@_Warper.bin", dumpWarperMeshesPath, v13];
    [meshCopy writeToFile:v14 atomically:1];
  }
}

- (PDPeridotCameraSystemCalibrationData)initWithPeridotModuleCalibration:(id)calibration platformId:(int)id sensorVersion:(int)version
{
  calibrationCopy = calibration;
  v22.receiver = self;
  v22.super_class = PDPeridotCameraSystemCalibrationData;
  v10 = [(PDPeridotCameraSystemCalibrationData *)&v22 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_peridotModule, calibration);
    if (id <= 96)
    {
      if (id > 65)
      {
        if ((id - 66) >= 2)
        {
          if ((id - 69) >= 2)
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
        if ((id - 51) < 4)
        {
LABEL_5:
          v12 = 2;
          goto LABEL_46;
        }

        if (id != -1)
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
            if (version < 3)
            {
LABEL_52:
              v11->_peridotChipRevision = version;
              calib = [(PDPeridotModuleCalibrationData *)v11->_peridotModule calib];
              v19 = peridot::CalibManager::getPeridotCamera(calib, v18);
              peridotCamera = v11->_peridotCamera;
              v11->_peridotCamera = v19;

              goto LABEL_53;
            }

LABEL_51:
            peridot_depth_log("Warning: unknown SensorVersion (%d)", version);
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
          if (version < 3)
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

    if (id <= 99)
    {
      if ((id - 97) < 2)
      {
LABEL_13:
        v12 = 6;
        goto LABEL_46;
      }

      if (id != 99)
      {
        goto LABEL_50;
      }

      v12 = 4;
LABEL_46:
      v11->_platform = v12;
      if (version < 3)
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    }

    if ((id - 100) < 4)
    {
      goto LABEL_8;
    }

    if ((id - 231) >= 2)
    {
      goto LABEL_50;
    }

    goto LABEL_15;
  }

LABEL_53:

  return v11;
}

+ (id)calibrationDataWithPeridotCalib:(id)calib platformId:(int)id sensorVersion:(int)version
{
  v5 = *&version;
  v6 = *&id;
  calibCopy = calib;
  v8 = [[PDPeridotModuleCalibrationData alloc] initWithPeridotCalib:calibCopy];
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

+ (id)calibrationDataWithPeridotCalibDataDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [[PDPeridotModuleCalibrationData alloc] initWithCalibrationDictionary:dictionaryCopy];
  if (v4)
  {
    v5 = [dictionaryCopy objectForKeyedSubscript:@"PlatformId"];
    v6 = v5;
    if (v5)
    {
      intValue = [v5 intValue];
    }

    else
    {
      intValue = 0;
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"SensorVersion"];
    v10 = v9;
    if (v9)
    {
      intValue2 = [v9 intValue];
    }

    else
    {
      intValue2 = 0;
    }

    v8 = [[PDPeridotCameraSystemCalibrationData alloc] initWithPeridotModuleCalibration:v4 platformId:intValue sensorVersion:intValue2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end