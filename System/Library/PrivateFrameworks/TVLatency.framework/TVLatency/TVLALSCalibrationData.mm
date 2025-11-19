@interface TVLALSCalibrationData
+ (id)instanceFromDictionary:(id)a3;
- (id)dictionaryRepresentation;
@end

@implementation TVLALSCalibrationData

- (id)dictionaryRepresentation
{
  v33[10] = *MEMORY[0x277D85DE8];
  v3 = [(TVLALSCalibrationData *)self version];
  if (!v3)
  {
    goto LABEL_19;
  }

  v4 = v3;
  v5 = [(TVLALSCalibrationData *)self displayID];
  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = v5;
  v7 = [(TVLALSCalibrationData *)self spectrumNom];
  if (!v7)
  {
LABEL_17:

LABEL_18:
    goto LABEL_19;
  }

  v8 = v7;
  v9 = [(TVLALSCalibrationData *)self wavelengthStartVisible];
  if (!v9)
  {
LABEL_16:

    goto LABEL_17;
  }

  v10 = v9;
  v11 = [(TVLALSCalibrationData *)self wavelengthStartNIR];
  if (!v11)
  {
LABEL_15:

    goto LABEL_16;
  }

  v12 = v11;
  v13 = [(TVLALSCalibrationData *)self wavelengthEnd];
  if (!v13)
  {
LABEL_14:

    goto LABEL_15;
  }

  v14 = v13;
  v15 = [(TVLALSCalibrationData *)self wavelengthStep];
  if (!v15)
  {

    goto LABEL_14;
  }

  v16 = v15;
  v17 = [(TVLALSCalibrationData *)self channels];

  if (v17)
  {
    v33[0] = &unk_287E0E970;
    v18 = [(TVLALSCalibrationData *)self version:@"ALS_CALIBRATION_RESERVED"];
    v33[1] = v18;
    v32[2] = @"ALS_CALIBRATION_DISPLAY_ID";
    v19 = [(TVLALSCalibrationData *)self displayID];
    v33[2] = v19;
    v32[3] = @"ALS_CALIBRATION_NCHANNELS";
    v20 = [(TVLALSCalibrationData *)self channels];
    v33[3] = v20;
    v32[4] = @"ALS_CALIBRATION_SPECTRUM_NOM";
    v21 = [(TVLALSCalibrationData *)self spectrumNom];
    v33[4] = v21;
    v32[5] = @"ALS_CALIBRATION_NARMALIZATION_FACTOR";
    v22 = [(TVLALSCalibrationData *)self normalizationFactor];
    v23 = v22;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = &unk_287E0E970;
    }

    v33[5] = v24;
    v32[6] = @"ALS_CALIBRATION_WAVELENGTH_END";
    v25 = [(TVLALSCalibrationData *)self wavelengthEnd];
    v33[6] = v25;
    v32[7] = @"ALS_CALIBRATION_WAVELENGTH_STEP";
    v26 = [(TVLALSCalibrationData *)self wavelengthStep];
    v33[7] = v26;
    v32[8] = @"ALS_CALIBRATION_WAVELENGTH_START_NIR";
    v27 = [(TVLALSCalibrationData *)self wavelengthStartNIR];
    v33[8] = v27;
    v32[9] = @"ALS_CALIBRATION_WAVELENGTH_START_VISIBLE";
    v28 = [(TVLALSCalibrationData *)self wavelengthStartVisible];
    v33[9] = v28;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:10];

    goto LABEL_20;
  }

LABEL_19:
  v29 = MEMORY[0x277CBEC10];
LABEL_20:
  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

+ (id)instanceFromDictionary:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(TVLALSCalibrationData);
  v5 = [v3 objectForKey:@"ALS_CALIBRATION_VERSION"];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &unk_287E0E970;
  }

  [(TVLALSCalibrationData *)v4 setVersion:v7];

  v8 = [v3 objectForKey:@"ALS_CALIBRATION_DISPLAY_ID"];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &unk_287E0E970;
  }

  [(TVLALSCalibrationData *)v4 setDisplayID:v10];

  v11 = [v3 objectForKey:@"ALS_CALIBRATION_NCHANNELS"];
  [(TVLALSCalibrationData *)v4 setChannels:v11];

  v12 = [v3 objectForKey:@"ALS_CALIBRATION_SPECTRUM_NOM"];
  [(TVLALSCalibrationData *)v4 setSpectrumNom:v12];

  v13 = [v3 objectForKey:@"ALS_CALIBRATION_WAVELENGTH_START_VISIBLE"];
  [(TVLALSCalibrationData *)v4 setWavelengthStartVisible:v13];

  v14 = [v3 objectForKey:@"ALS_CALIBRATION_WAVELENGTH_START_NIR"];
  [(TVLALSCalibrationData *)v4 setWavelengthStartNIR:v14];

  v15 = [v3 objectForKey:@"ALS_CALIBRATION_WAVELENGTH_END"];
  [(TVLALSCalibrationData *)v4 setWavelengthEnd:v15];

  v16 = [v3 objectForKey:@"ALS_CALIBRATION_WAVELENGTH_STEP"];
  [(TVLALSCalibrationData *)v4 setWavelengthStep:v16];

  v17 = [v3 objectForKey:@"ALS_CALIBRATION_NARMALIZATION_FACTOR"];

  [(TVLALSCalibrationData *)v4 setNormalizationFactor:v17];
  v18 = [(TVLALSCalibrationData *)v4 version];
  if (v18)
  {
    v19 = [(TVLALSCalibrationData *)v4 displayID];
    if (v19)
    {
      v20 = v19;
      v21 = [(TVLALSCalibrationData *)v4 spectrumNom];
      if (v21)
      {
        v22 = v21;
        v23 = [(TVLALSCalibrationData *)v4 wavelengthStartVisible];
        if (v23)
        {
          v24 = v23;
          v25 = [(TVLALSCalibrationData *)v4 wavelengthStartNIR];
          if (v25)
          {
            v26 = v25;
            v27 = [(TVLALSCalibrationData *)v4 wavelengthEnd];
            if (v27)
            {
              v28 = v27;
              v29 = [(TVLALSCalibrationData *)v4 wavelengthStep];
              if (v29)
              {
                v30 = v29;
                v31 = [(TVLALSCalibrationData *)v4 channels];

                if (v31)
                {
                  v18 = v4;
                  goto LABEL_23;
                }

                goto LABEL_22;
              }
            }
          }
        }
      }
    }

LABEL_22:
    v18 = 0;
  }

LABEL_23:

  return v18;
}

@end