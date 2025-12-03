@interface PIValuesAtCapture
+ (id)valuesAtCaptureFromImageProperties:(id)properties error:(id *)error;
- (id)description;
- (id)initFromMinAperture:(float)aperture maxAperture:(float)maxAperture aperture:(float)a5 focusRect:(id)rect portraitStrength:(float)strength SDOFRenderingVersion:(unint64_t)version depthVersionInfo:(id)info;
@end

@implementation PIValuesAtCapture

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  [(PIValuesAtCapture *)self aperture];
  v6 = v5;
  minimumAperture = [(PIValuesAtCapture *)self minimumAperture];
  maximumAperture = [(PIValuesAtCapture *)self maximumAperture];
  focusRect = [(PIValuesAtCapture *)self focusRect];
  [(PIValuesAtCapture *)self portraitStrength];
  v11 = [v3 stringWithFormat:@"<%@:%p \n\taperture:%f \n\tminimumAperture:%@ \n\tmaximumAperture:%@ \n\tfocusRect:%@ \n\tportraitStrength:%f \n\tSDOFRenderingVersion:%lu \n\tportraitMajorVersion:%lu \n\tportraitMinorVersion:%lu \n\tdepthInfoMajorVersion:%d \n\tdepthInfoMinorVersion:%d>", v4, self, *&v6, minimumAperture, maximumAperture, focusRect, v10, -[PIValuesAtCapture SDOFRenderingVersion](self, "SDOFRenderingVersion"), -[PIValuesAtCapture portraitMajorVersion](self, "portraitMajorVersion"), -[PIValuesAtCapture portraitMinorVersion](self, "portraitMinorVersion"), -[PIValuesAtCapture depthVersionInfo](self, "depthVersionInfo"), -[PIValuesAtCapture depthVersionInfo](self, "depthVersionInfo") >> 32];

  return v11;
}

- (id)initFromMinAperture:(float)aperture maxAperture:(float)maxAperture aperture:(float)a5 focusRect:(id)rect portraitStrength:(float)strength SDOFRenderingVersion:(unint64_t)version depthVersionInfo:(id)info
{
  v33.receiver = self;
  v33.super_class = PIValuesAtCapture;
  rectCopy = rect;
  v16 = [(PIValuesAtCapture *)&v33 init];
  v17 = v16;
  v19 = maxAperture > 0.0 && aperture > 0.0;
  v21 = strength <= 1.0 && strength >= 0.0;
  if (version >= 4)
  {
    v22 = xmmword_1C7845DF0;
LABEL_17:
    *&v16->_portraitMajorVersion = v22;
    goto LABEL_18;
  }

  if (v21)
  {
    v22 = xmmword_1C7845DE0;
    goto LABEL_17;
  }

  v16->_portraitMajorVersion = 1;
  v16->_portraitMinorVersion = v19;
LABEL_18:
  v23 = 5.9;
  if (a5 > 0.0)
  {
    v23 = a5;
  }

  v16->_aperture = v23;
  v24 = [rectCopy copy];

  focusRect = v17->_focusRect;
  v17->_focusRect = v24;

  LODWORD(v26) = 0.5;
  if (v21)
  {
    *&v26 = strength;
  }

  v17->_portraitStrength = *&v26;
  if (aperture <= 0.0)
  {
    v27 = 0;
  }

  else
  {
    *&v26 = aperture;
    v27 = [MEMORY[0x1E696AD98] numberWithFloat:v26];
  }

  minimumAperture = v17->_minimumAperture;
  v17->_minimumAperture = v27;

  if (maxAperture <= 0.0)
  {
    v30 = 0;
  }

  else
  {
    *&v29 = maxAperture;
    v30 = [MEMORY[0x1E696AD98] numberWithFloat:v29];
  }

  maximumAperture = v17->_maximumAperture;
  v17->_maximumAperture = v30;

  v17->_depthVersionInfo = info;
  v17->_SDOFRenderingVersion = version;
  return v17;
}

+ (id)valuesAtCaptureFromImageProperties:(id)properties error:(id *)error
{
  v71 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  if (!error)
  {
    v48 = NUAssertLogger_27584();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *v68 = v49;
      _os_log_error_impl(&dword_1C7694000, v48, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v50 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v52 = NUAssertLogger_27584();
    v53 = os_log_type_enabled(v52, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v53)
      {
        v56 = dispatch_get_specific(*v50);
        v57 = MEMORY[0x1E696AF00];
        v58 = v56;
        callStackSymbols = [v57 callStackSymbols];
        v60 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *v68 = v56;
        *&v68[8] = 2114;
        *&v68[10] = v60;
        _os_log_error_impl(&dword_1C7694000, v52, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v53)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v55 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *v68 = v55;
      _os_log_error_impl(&dword_1C7694000, v52, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v6 = propertiesCopy;
  metadata = [propertiesCopy metadata];
  v8 = [metadata objectForKeyedSubscript:*MEMORY[0x1E696DE30]];

  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69867F8]];
  unsignedIntValue = [v9 unsignedIntValue];

  if ((unsignedIntValue & 0x40) != 0)
  {
    [MEMORY[0x1E69B3A48] invalidError:@"Portrait was previously applied." object:0];
    *error = v25 = 0;
    goto LABEL_19;
  }

  v11 = [v6 auxiliaryImagePropertiesForType:2];
  v66 = 0;
  v12 = [v11 auxiliaryImage:&v66];
  v13 = v66;
  if (v12)
  {
    underlyingAVDepthData = [v12 underlyingAVDepthData];
    if ([underlyingAVDepthData isDepthDataFiltered])
    {
      if ([underlyingAVDepthData depthDataQuality])
      {
        cameraCalibrationData = [underlyingAVDepthData cameraCalibrationData];

        if (cameraCalibrationData)
        {
          v65 = 0;
          v16 = [v11 auxiliaryCoreGraphicsInfoDictionary:&v65];
          v17 = v65;

          if (v16)
          {
            v18 = [v16 objectForKeyedSubscript:*MEMORY[0x1E696D228]];

            if (v18)
            {
              v62 = v16;
              v19 = CGImageMetadataCopyStringValueWithPath(v18, 0, @"depthData:DepthDataVersion");
              intValue = [(__CFString *)v19 intValue];
              v21 = HIWORD(intValue);
              intValue2 = [(__CFString *)v19 intValue];

              if (intValue < 0x20000)
              {
                v64 = 0;
                v63 = 0.0;
                v31 = MEMORY[0x1E695F648];
                depthBlurEffectRenderingParameters = [underlyingAVDepthData depthBlurEffectRenderingParameters];
                v33 = [v31 getMinMaxSimulatedApertureFrom:depthBlurEffectRenderingParameters minValue:&v64 maxValue:&v63 version:&v64 + 4];

                if (v33)
                {
                  v34 = NULogger_27701();
                  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 67109888;
                    *v68 = v33;
                    *&v68[4] = 2048;
                    *&v68[6] = *&v64;
                    *&v68[14] = 2048;
                    *&v68[16] = v63;
                    v69 = 1024;
                    v70 = HIDWORD(v64);
                    _os_log_error_impl(&dword_1C7694000, v34, OS_LOG_TYPE_ERROR, "PIPortraitAutoCalculator getMinMaxSimulatedAperture returned error:%i (minAperture:%f maxAperture:%f version:%d)", buf, 0x22u);
                  }
                }

                maxSDOFRenderingVersionSupported = [MEMORY[0x1E695F648] maxSDOFRenderingVersionSupported];
                if (SHIDWORD(v64) <= maxSDOFRenderingVersionSupported)
                {
                  [underlyingAVDepthData depthBlurEffectSimulatedAperture];
                  v38 = v37;
                  [underlyingAVDepthData portraitLightingEffectStrength];
                  v40 = v39;
                  v41 = SHIDWORD(v64);
                  metadata2 = [v6 metadata];
                  v36 = [PIPortraitAutoCalculator focusRectDictionaryFromMetadata:metadata2];

                  v43 = [PIValuesAtCapture alloc];
                  *&v45 = v63;
                  LODWORD(v44) = v64;
                  LODWORD(v46) = v38;
                  LODWORD(v47) = v40;
                  v25 = [(PIValuesAtCapture *)v43 initFromMinAperture:v36 maxAperture:v41 aperture:v21 | (intValue2 << 32) focusRect:v44 portraitStrength:v45 SDOFRenderingVersion:v46 depthVersionInfo:v47];
                }

                else
                {
                  v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"We only know up to sDOF version %d. Found: %d", maxSDOFRenderingVersionSupported, HIDWORD(v64)];
                  [MEMORY[0x1E69B3A48] unsupportedError:v36 object:0];
                  *error = v25 = 0;
                }

                v16 = v62;
              }

              else
              {
                v22 = MEMORY[0x1E696AEC0];
                v23 = [MEMORY[0x1E696AD98] numberWithInt:v21];
                v24 = [v22 stringWithFormat:@"Depth data version mismatch, asset has %@ but we can only handle %@", v23, &unk_1F471F2D0];

                v16 = v62;
                *error = [MEMORY[0x1E69B3A48] unsupportedError:v24 object:v62];

                v25 = 0;
              }

              goto LABEL_34;
            }

            v30 = [MEMORY[0x1E69B3A48] missingError:@"Missing auxiliary metadata" object:v16];
          }

          else
          {
            v30 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to load auxiliary data" object:v11 underlyingError:v17];
          }

          v25 = 0;
          *error = v30;
LABEL_34:

          goto LABEL_17;
        }

        v28 = [MEMORY[0x1E69B3A48] missingError:@"Missing camera calibration data" object:underlyingAVDepthData];
LABEL_16:
        v25 = 0;
        *error = v28;
        v17 = v13;
LABEL_17:

        v13 = v17;
        goto LABEL_18;
      }

      v26 = MEMORY[0x1E69B3A48];
      v27 = @"Low quality depth data is not supported";
    }

    else
    {
      v26 = MEMORY[0x1E69B3A48];
      v27 = @"Unfiltered depth data is not supported";
    }

    v28 = [v26 unsupportedError:v27 object:underlyingAVDepthData];
    goto LABEL_16;
  }

  [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to load depth data" object:v11 underlyingError:v13];
  *error = v25 = 0;
LABEL_18:

LABEL_19:

  return v25;
}

@end