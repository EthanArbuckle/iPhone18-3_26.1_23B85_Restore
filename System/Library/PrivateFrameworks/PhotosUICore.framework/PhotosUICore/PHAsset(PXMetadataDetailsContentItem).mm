@interface PHAsset(PXMetadataDetailsContentItem)
- (BOOL)px_isExtendedPropertiesProcessed;
- (id)_px_currentRAWResource;
- (id)px_FPS;
- (id)px_ISORating;
- (id)px_aperture;
- (id)px_assetDescription;
- (id)px_bitRate;
- (id)px_codec;
- (id)px_digitalZoomRatio;
- (id)px_exposureBias;
- (id)px_filename;
- (id)px_filesize;
- (id)px_flash;
- (id)px_focalLength;
- (id)px_focalLengthIn35mm;
- (id)px_formattedCameraModel;
- (id)px_lensModel;
- (id)px_make;
- (id)px_meteringMode;
- (id)px_model;
- (id)px_originalTimeZone;
- (id)px_sampleRate;
- (id)px_semanticStylePreset;
- (id)px_shutterSpeed;
- (id)px_timeZone;
- (id)px_title;
- (id)px_whiteBalance;
- (uint64_t)px_audioTrackFormat;
- (uint64_t)px_canUseLocation;
- (uint64_t)px_duration;
- (uint64_t)px_fetchCloudLocalState;
- (uint64_t)px_isFrontRear;
- (uint64_t)px_isH264;
- (uint64_t)px_isHEVC;
- (uint64_t)px_isProResRAW;
- (uint64_t)px_isSelfie;
- (uint64_t)px_originalType;
- (uint64_t)px_resolution;
- (uint64_t)px_reverseLocationDataIsValid;
- (uint64_t)px_supportsImageProperties;
- (uint64_t)px_type;
- (unint64_t)px_fileType;
- (unint64_t)px_originalFileType;
@end

@implementation PHAsset(PXMetadataDetailsContentItem)

- (id)px_semanticStylePreset
{
  photosInfoPanelExtendedProperties = [self photosInfoPanelExtendedProperties];
  semanticStylePreset = [photosInfoPanelExtendedProperties semanticStylePreset];

  return semanticStylePreset;
}

- (uint64_t)px_isHEVC
{
  px_codec = [self px_codec];
  v2 = PXStringForOSType(0x68766331u);
  v3 = [px_codec isEqualToString:v2];

  return v3;
}

- (uint64_t)px_isH264
{
  px_codec = [self px_codec];
  v2 = PXStringForOSType(0x61766331u);
  v3 = [px_codec isEqualToString:v2];

  return v3;
}

- (uint64_t)px_isProResRAW
{
  result = [self px_isExtendedPropertiesProcessed];
  if (result)
  {
    v3 = MEMORY[0x1E69BE350];
    px_codec = [self px_codec];
    v5 = [v3 isProResRAWFourCharCodecName:px_codec];

    return v5;
  }

  return result;
}

- (uint64_t)px_isFrontRear
{
  cameraCaptureDeviceProperties = [self cameraCaptureDeviceProperties];
  isFrontRear = [cameraCaptureDeviceProperties isFrontRear];

  return isFrontRear;
}

- (uint64_t)px_isSelfie
{
  cameraCaptureDeviceProperties = [self cameraCaptureDeviceProperties];
  isSelfie = [cameraCaptureDeviceProperties isSelfie];

  return isSelfie;
}

- (uint64_t)px_reverseLocationDataIsValid
{
  photosOneUpProperties = [self photosOneUpProperties];
  reverseLocationDataIsValid = [photosOneUpProperties reverseLocationDataIsValid];

  return reverseLocationDataIsValid;
}

- (uint64_t)px_canUseLocation
{
  location = [self location];

  if (!location)
  {
    return 0;
  }

  v3 = MEMORY[0x1E69BE520];
  location2 = [self location];
  [location2 coordinate];
  v5 = [v3 canUseCoordinate:?];

  return v5;
}

- (uint64_t)px_audioTrackFormat
{
  photosInfoPanelExtendedProperties = [self photosInfoPanelExtendedProperties];
  trackFormat = [photosInfoPanelExtendedProperties trackFormat];
  unsignedIntValue = [trackFormat unsignedIntValue];

  return unsignedIntValue;
}

- (id)px_whiteBalance
{
  photosInfoPanelExtendedProperties = [self photosInfoPanelExtendedProperties];
  whiteBalance = [photosInfoPanelExtendedProperties whiteBalance];

  return whiteBalance;
}

- (id)px_shutterSpeed
{
  photosInfoPanelExtendedProperties = [self photosInfoPanelExtendedProperties];
  shutterSpeed = [photosInfoPanelExtendedProperties shutterSpeed];

  return shutterSpeed;
}

- (id)px_meteringMode
{
  photosInfoPanelExtendedProperties = [self photosInfoPanelExtendedProperties];
  meteringMode = [photosInfoPanelExtendedProperties meteringMode];

  return meteringMode;
}

- (id)px_formattedCameraModel
{
  photosInfoPanelExtendedProperties = [self photosInfoPanelExtendedProperties];
  formattedCameraModel = [photosInfoPanelExtendedProperties formattedCameraModel];

  return formattedCameraModel;
}

- (id)px_model
{
  photosInfoPanelExtendedProperties = [self photosInfoPanelExtendedProperties];
  cameraModel = [photosInfoPanelExtendedProperties cameraModel];

  return cameraModel;
}

- (id)px_make
{
  photosInfoPanelExtendedProperties = [self photosInfoPanelExtendedProperties];
  cameraMake = [photosInfoPanelExtendedProperties cameraMake];

  return cameraMake;
}

- (id)px_lensModel
{
  photosInfoPanelExtendedProperties = [self photosInfoPanelExtendedProperties];
  lensModel = [photosInfoPanelExtendedProperties lensModel];

  return lensModel;
}

- (id)px_ISORating
{
  photosInfoPanelExtendedProperties = [self photosInfoPanelExtendedProperties];
  v2 = [photosInfoPanelExtendedProperties iso];

  return v2;
}

- (id)px_digitalZoomRatio
{
  photosInfoPanelExtendedProperties = [self photosInfoPanelExtendedProperties];
  digitalZoomRatio = [photosInfoPanelExtendedProperties digitalZoomRatio];

  return digitalZoomRatio;
}

- (id)px_focalLengthIn35mm
{
  photosInfoPanelExtendedProperties = [self photosInfoPanelExtendedProperties];
  focalLengthIn35mm = [photosInfoPanelExtendedProperties focalLengthIn35mm];

  return focalLengthIn35mm;
}

- (id)px_focalLength
{
  photosInfoPanelExtendedProperties = [self photosInfoPanelExtendedProperties];
  focalLength = [photosInfoPanelExtendedProperties focalLength];

  return focalLength;
}

- (id)px_flash
{
  photosInfoPanelExtendedProperties = [self photosInfoPanelExtendedProperties];
  flashFired = [photosInfoPanelExtendedProperties flashFired];

  return flashFired;
}

- (id)px_exposureBias
{
  photosInfoPanelExtendedProperties = [self photosInfoPanelExtendedProperties];
  exposureBias = [photosInfoPanelExtendedProperties exposureBias];

  return exposureBias;
}

- (id)px_aperture
{
  photosInfoPanelExtendedProperties = [self photosInfoPanelExtendedProperties];
  aperture = [photosInfoPanelExtendedProperties aperture];

  return aperture;
}

- (id)px_codec
{
  photosInfoPanelExtendedProperties = [self photosInfoPanelExtendedProperties];
  codec = [photosInfoPanelExtendedProperties codec];

  return codec;
}

- (id)px_sampleRate
{
  photosInfoPanelExtendedProperties = [self photosInfoPanelExtendedProperties];
  sampleRate = [photosInfoPanelExtendedProperties sampleRate];

  return sampleRate;
}

- (id)px_bitRate
{
  photosInfoPanelExtendedProperties = [self photosInfoPanelExtendedProperties];
  bitrate = [photosInfoPanelExtendedProperties bitrate];

  return bitrate;
}

- (id)px_FPS
{
  photosInfoPanelExtendedProperties = [self photosInfoPanelExtendedProperties];
  v2 = [photosInfoPanelExtendedProperties fps];

  return v2;
}

- (uint64_t)px_duration
{
  v1 = MEMORY[0x1E696AD98];
  [self duration];

  return [v1 numberWithDouble:?];
}

- (uint64_t)px_supportsImageProperties
{
  result = [self mediaType];
  if (result != 1)
  {
    return [self mediaType] == 2;
  }

  return result;
}

- (uint64_t)px_resolution
{
  _px_currentRAWResource = [self _px_currentRAWResource];
  v3 = _px_currentRAWResource;
  if (_px_currentRAWResource)
  {
    pixelWidth = [_px_currentRAWResource pixelWidth];
    selfCopy = v3;
  }

  else
  {
    pixelWidth = [self pixelWidth];
    selfCopy = self;
  }

  [selfCopy pixelHeight];

  return pixelWidth;
}

- (uint64_t)px_fetchCloudLocalState
{
  cloudLocalStateProperties = [self cloudLocalStateProperties];
  assetCloudLocalState = [cloudLocalStateProperties assetCloudLocalState];

  return assetCloudLocalState;
}

- (id)px_originalTimeZone
{
  v4 = 0;
  v1 = [self originalCreationDateWithTimeZone:&v4];
  localTimeZone = v4;
  if (!localTimeZone)
  {
    localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
  }

  return localTimeZone;
}

- (id)px_timeZone
{
  originalMetadataProperties = [self originalMetadataProperties];
  timeZone = [originalMetadataProperties timeZone];
  v3 = timeZone;
  if (timeZone)
  {
    localTimeZone = timeZone;
  }

  else
  {
    localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
  }

  v5 = localTimeZone;

  return v5;
}

- (id)px_filesize
{
  _px_currentRAWResource = [self _px_currentRAWResource];
  v3 = _px_currentRAWResource;
  if (_px_currentRAWResource)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(_px_currentRAWResource, "fileSize")}];
  }

  else
  {
    [self fetchPropertySetsIfNeeded];
    v5 = MEMORY[0x1E696AD98];
    originalMetadataProperties = [self originalMetadataProperties];
    v4 = [v5 numberWithUnsignedLong:{objc_msgSend(originalMetadataProperties, "originalFilesize")}];
  }

  return v4;
}

- (id)px_filename
{
  selfCopy = [self _px_currentRAWResource];
  v3 = selfCopy;
  if (!selfCopy)
  {
    selfCopy = self;
  }

  originalFilename = [selfCopy originalFilename];

  return originalFilename;
}

- (BOOL)px_isExtendedPropertiesProcessed
{
  [self fetchPropertySetsIfNeeded];
  photosInfoPanelExtendedProperties = [self photosInfoPanelExtendedProperties];
  v3 = photosInfoPanelExtendedProperties != 0;

  return v3;
}

- (id)px_assetDescription
{
  descriptionProperties = [self descriptionProperties];
  assetDescription = [descriptionProperties assetDescription];

  return assetDescription;
}

- (id)px_title
{
  descriptionProperties = [self descriptionProperties];
  title = [descriptionProperties title];

  return title;
}

- (unint64_t)px_originalFileType
{
  px_originalType = [self px_originalType];

  return [PXMetadataUtilities fileTypeForItem:self type:px_originalType];
}

- (unint64_t)px_fileType
{
  px_type = [self px_type];

  return [PXMetadataUtilities fileTypeForItem:self type:px_type];
}

- (uint64_t)px_originalType
{
  v1 = MEMORY[0x1E69C08F0];
  v2 = [MEMORY[0x1E6978630] originalUniformTypeIdentifierForAsset:self];
  v3 = [v1 typeWithIdentifier:v2];

  if ([v3 conformsToType:*MEMORY[0x1E6982E58]])
  {
    v4 = 0;
  }

  else
  {
    avifType = [MEMORY[0x1E69C08F0] avifType];
    v6 = [v3 conformsToType:avifType];

    if (v6)
    {
      v4 = 11;
    }

    else if ([v3 conformsToType:*MEMORY[0x1E6983138]])
    {
      v4 = 1;
    }

    else if ([v3 conformsToType:*MEMORY[0x1E6982F88]])
    {
      v4 = 2;
    }

    else if ([v3 conformsToType:*MEMORY[0x1E6982DE8]])
    {
      v4 = 3;
    }

    else if ([v3 conformsToType:*MEMORY[0x1E6982F28]])
    {
      v4 = 4;
    }

    else if ([v3 conformsToType:*MEMORY[0x1E6983008]])
    {
      v4 = 5;
    }

    else if ([v3 conformsToType:*MEMORY[0x1E6982F10]])
    {
      v4 = 6;
    }

    else
    {
      adobePhotoshopType = [MEMORY[0x1E69C08F0] adobePhotoshopType];
      v8 = [v3 conformsToType:adobePhotoshopType];

      if (v8)
      {
        v4 = 7;
      }

      else
      {
        jpeg2000Type = [MEMORY[0x1E69C08F0] jpeg2000Type];
        v10 = [v3 conformsToType:jpeg2000Type];

        if (v10)
        {
          v4 = 8;
        }

        else if ([v3 conformsToType:*MEMORY[0x1E6982CD0]])
        {
          v4 = 9;
        }

        else if ([v3 conformsToType:*MEMORY[0x1E6982EE8]])
        {
          v4 = 10;
        }

        else
        {
          v4 = 12;
        }
      }
    }
  }

  return v4;
}

- (uint64_t)px_type
{
  rAWBadgeAttributes = [self RAWBadgeAttributes];
  isJPEG = [self isJPEG];
  result = 0;
  if ((isJPEG & 1) == 0 && rAWBadgeAttributes != 2)
  {
    if ([self isHEIF])
    {
      return 1;
    }

    else
    {
      isRAW = [self isRAW];
      result = 2;
      if ((isRAW & 1) == 0 && rAWBadgeAttributes != 1)
      {
        if ([self isAnimatedGIF])
        {
          return 3;
        }

        else if ([self isPNG])
        {
          return 4;
        }

        else if ([self isTIFF])
        {
          return 5;
        }

        else if ([self isPDF])
        {
          return 6;
        }

        else if ([self isPSD])
        {
          return 7;
        }

        else if ([self isJPEG2000])
        {
          return 8;
        }

        else if ([self isAudio])
        {
          return 9;
        }

        else if ([self isVideo])
        {
          return 10;
        }

        else
        {
          return 12;
        }
      }
    }
  }

  return result;
}

- (id)_px_currentRAWResource
{
  v13 = *MEMORY[0x1E69E9840];
  if ([self ipx_isRAWOnTop])
  {
    v2 = objc_getAssociatedObject(self, _px_currentRAWResource_PXSelectionProviderContentItemCurrentRawResourceKey);
    if (!v2)
    {
      [MEMORY[0x1E69786D8] assetResourcesForAsset:self];
      v8 = 0u;
      v9 = 0u;
      v10 = 0u;
      v3 = v11 = 0u;
      v2 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v2)
      {
        v4 = *v9;
        while (2)
        {
          for (i = 0; i != v2; i = i + 1)
          {
            if (*v9 != v4)
            {
              objc_enumerationMutation(v3);
            }

            v6 = *(*(&v8 + 1) + 8 * i);
            if ([v6 type] == 4)
            {
              v2 = v6;
              objc_setAssociatedObject(self, _px_currentRAWResource_PXSelectionProviderContentItemCurrentRawResourceKey, v2, 1);
              goto LABEL_14;
            }
          }

          v2 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
          if (v2)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end