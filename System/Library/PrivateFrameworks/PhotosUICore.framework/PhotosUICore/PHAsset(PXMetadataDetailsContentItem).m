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
  v1 = [a1 photosInfoPanelExtendedProperties];
  v2 = [v1 semanticStylePreset];

  return v2;
}

- (uint64_t)px_isHEVC
{
  v1 = [a1 px_codec];
  v2 = PXStringForOSType(0x68766331u);
  v3 = [v1 isEqualToString:v2];

  return v3;
}

- (uint64_t)px_isH264
{
  v1 = [a1 px_codec];
  v2 = PXStringForOSType(0x61766331u);
  v3 = [v1 isEqualToString:v2];

  return v3;
}

- (uint64_t)px_isProResRAW
{
  result = [a1 px_isExtendedPropertiesProcessed];
  if (result)
  {
    v3 = MEMORY[0x1E69BE350];
    v4 = [a1 px_codec];
    v5 = [v3 isProResRAWFourCharCodecName:v4];

    return v5;
  }

  return result;
}

- (uint64_t)px_isFrontRear
{
  v1 = [a1 cameraCaptureDeviceProperties];
  v2 = [v1 isFrontRear];

  return v2;
}

- (uint64_t)px_isSelfie
{
  v1 = [a1 cameraCaptureDeviceProperties];
  v2 = [v1 isSelfie];

  return v2;
}

- (uint64_t)px_reverseLocationDataIsValid
{
  v1 = [a1 photosOneUpProperties];
  v2 = [v1 reverseLocationDataIsValid];

  return v2;
}

- (uint64_t)px_canUseLocation
{
  v2 = [a1 location];

  if (!v2)
  {
    return 0;
  }

  v3 = MEMORY[0x1E69BE520];
  v4 = [a1 location];
  [v4 coordinate];
  v5 = [v3 canUseCoordinate:?];

  return v5;
}

- (uint64_t)px_audioTrackFormat
{
  v1 = [a1 photosInfoPanelExtendedProperties];
  v2 = [v1 trackFormat];
  v3 = [v2 unsignedIntValue];

  return v3;
}

- (id)px_whiteBalance
{
  v1 = [a1 photosInfoPanelExtendedProperties];
  v2 = [v1 whiteBalance];

  return v2;
}

- (id)px_shutterSpeed
{
  v1 = [a1 photosInfoPanelExtendedProperties];
  v2 = [v1 shutterSpeed];

  return v2;
}

- (id)px_meteringMode
{
  v1 = [a1 photosInfoPanelExtendedProperties];
  v2 = [v1 meteringMode];

  return v2;
}

- (id)px_formattedCameraModel
{
  v1 = [a1 photosInfoPanelExtendedProperties];
  v2 = [v1 formattedCameraModel];

  return v2;
}

- (id)px_model
{
  v1 = [a1 photosInfoPanelExtendedProperties];
  v2 = [v1 cameraModel];

  return v2;
}

- (id)px_make
{
  v1 = [a1 photosInfoPanelExtendedProperties];
  v2 = [v1 cameraMake];

  return v2;
}

- (id)px_lensModel
{
  v1 = [a1 photosInfoPanelExtendedProperties];
  v2 = [v1 lensModel];

  return v2;
}

- (id)px_ISORating
{
  v1 = [a1 photosInfoPanelExtendedProperties];
  v2 = [v1 iso];

  return v2;
}

- (id)px_digitalZoomRatio
{
  v1 = [a1 photosInfoPanelExtendedProperties];
  v2 = [v1 digitalZoomRatio];

  return v2;
}

- (id)px_focalLengthIn35mm
{
  v1 = [a1 photosInfoPanelExtendedProperties];
  v2 = [v1 focalLengthIn35mm];

  return v2;
}

- (id)px_focalLength
{
  v1 = [a1 photosInfoPanelExtendedProperties];
  v2 = [v1 focalLength];

  return v2;
}

- (id)px_flash
{
  v1 = [a1 photosInfoPanelExtendedProperties];
  v2 = [v1 flashFired];

  return v2;
}

- (id)px_exposureBias
{
  v1 = [a1 photosInfoPanelExtendedProperties];
  v2 = [v1 exposureBias];

  return v2;
}

- (id)px_aperture
{
  v1 = [a1 photosInfoPanelExtendedProperties];
  v2 = [v1 aperture];

  return v2;
}

- (id)px_codec
{
  v1 = [a1 photosInfoPanelExtendedProperties];
  v2 = [v1 codec];

  return v2;
}

- (id)px_sampleRate
{
  v1 = [a1 photosInfoPanelExtendedProperties];
  v2 = [v1 sampleRate];

  return v2;
}

- (id)px_bitRate
{
  v1 = [a1 photosInfoPanelExtendedProperties];
  v2 = [v1 bitrate];

  return v2;
}

- (id)px_FPS
{
  v1 = [a1 photosInfoPanelExtendedProperties];
  v2 = [v1 fps];

  return v2;
}

- (uint64_t)px_duration
{
  v1 = MEMORY[0x1E696AD98];
  [a1 duration];

  return [v1 numberWithDouble:?];
}

- (uint64_t)px_supportsImageProperties
{
  result = [a1 mediaType];
  if (result != 1)
  {
    return [a1 mediaType] == 2;
  }

  return result;
}

- (uint64_t)px_resolution
{
  v2 = [a1 _px_currentRAWResource];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 pixelWidth];
    v5 = v3;
  }

  else
  {
    v4 = [a1 pixelWidth];
    v5 = a1;
  }

  [v5 pixelHeight];

  return v4;
}

- (uint64_t)px_fetchCloudLocalState
{
  v1 = [a1 cloudLocalStateProperties];
  v2 = [v1 assetCloudLocalState];

  return v2;
}

- (id)px_originalTimeZone
{
  v4 = 0;
  v1 = [a1 originalCreationDateWithTimeZone:&v4];
  v2 = v4;
  if (!v2)
  {
    v2 = [MEMORY[0x1E695DFE8] localTimeZone];
  }

  return v2;
}

- (id)px_timeZone
{
  v1 = [a1 originalMetadataProperties];
  v2 = [v1 timeZone];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E695DFE8] localTimeZone];
  }

  v5 = v4;

  return v5;
}

- (id)px_filesize
{
  v2 = [a1 _px_currentRAWResource];
  v3 = v2;
  if (v2)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v2, "fileSize")}];
  }

  else
  {
    [a1 fetchPropertySetsIfNeeded];
    v5 = MEMORY[0x1E696AD98];
    v6 = [a1 originalMetadataProperties];
    v4 = [v5 numberWithUnsignedLong:{objc_msgSend(v6, "originalFilesize")}];
  }

  return v4;
}

- (id)px_filename
{
  v2 = [a1 _px_currentRAWResource];
  v3 = v2;
  if (!v2)
  {
    v2 = a1;
  }

  v4 = [v2 originalFilename];

  return v4;
}

- (BOOL)px_isExtendedPropertiesProcessed
{
  [a1 fetchPropertySetsIfNeeded];
  v2 = [a1 photosInfoPanelExtendedProperties];
  v3 = v2 != 0;

  return v3;
}

- (id)px_assetDescription
{
  v1 = [a1 descriptionProperties];
  v2 = [v1 assetDescription];

  return v2;
}

- (id)px_title
{
  v1 = [a1 descriptionProperties];
  v2 = [v1 title];

  return v2;
}

- (unint64_t)px_originalFileType
{
  v2 = [a1 px_originalType];

  return [PXMetadataUtilities fileTypeForItem:a1 type:v2];
}

- (unint64_t)px_fileType
{
  v2 = [a1 px_type];

  return [PXMetadataUtilities fileTypeForItem:a1 type:v2];
}

- (uint64_t)px_originalType
{
  v1 = MEMORY[0x1E69C08F0];
  v2 = [MEMORY[0x1E6978630] originalUniformTypeIdentifierForAsset:a1];
  v3 = [v1 typeWithIdentifier:v2];

  if ([v3 conformsToType:*MEMORY[0x1E6982E58]])
  {
    v4 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E69C08F0] avifType];
    v6 = [v3 conformsToType:v5];

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
      v7 = [MEMORY[0x1E69C08F0] adobePhotoshopType];
      v8 = [v3 conformsToType:v7];

      if (v8)
      {
        v4 = 7;
      }

      else
      {
        v9 = [MEMORY[0x1E69C08F0] jpeg2000Type];
        v10 = [v3 conformsToType:v9];

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
  v2 = [a1 RAWBadgeAttributes];
  v3 = [a1 isJPEG];
  result = 0;
  if ((v3 & 1) == 0 && v2 != 2)
  {
    if ([a1 isHEIF])
    {
      return 1;
    }

    else
    {
      v5 = [a1 isRAW];
      result = 2;
      if ((v5 & 1) == 0 && v2 != 1)
      {
        if ([a1 isAnimatedGIF])
        {
          return 3;
        }

        else if ([a1 isPNG])
        {
          return 4;
        }

        else if ([a1 isTIFF])
        {
          return 5;
        }

        else if ([a1 isPDF])
        {
          return 6;
        }

        else if ([a1 isPSD])
        {
          return 7;
        }

        else if ([a1 isJPEG2000])
        {
          return 8;
        }

        else if ([a1 isAudio])
        {
          return 9;
        }

        else if ([a1 isVideo])
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
  if ([a1 ipx_isRAWOnTop])
  {
    v2 = objc_getAssociatedObject(a1, _px_currentRAWResource_PXSelectionProviderContentItemCurrentRawResourceKey);
    if (!v2)
    {
      [MEMORY[0x1E69786D8] assetResourcesForAsset:a1];
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
              objc_setAssociatedObject(a1, _px_currentRAWResource_PXSelectionProviderContentItemCurrentRawResourceKey, v2, 1);
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