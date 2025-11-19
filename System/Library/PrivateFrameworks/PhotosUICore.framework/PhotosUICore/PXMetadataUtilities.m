@interface PXMetadataUtilities
+ (BOOL)isVisionProAsset:(id)a3;
+ (id)_accessibilityDescriptionForFileType:(unint64_t)a3;
+ (id)_apertureNumberFromString:(id)a3;
+ (id)_cameraNominalFocalLengthForItem:(id)a3;
+ (id)_fileTypeImageForType:(unint64_t)a3;
+ (id)_focalLengthFromString:(id)a3;
+ (id)_focalLengthStringFromString:(id)a3;
+ (id)_formattedApertureStringWithString:(id)a3;
+ (id)_formattedDeviceDescriptionForItem:(id)a3;
+ (id)_formattedLensDescriptionForItem:(id)a3;
+ (id)_loadImageWithName:(id)a3;
+ (id)_secondaryFormattedLensDescriptionForItem:(id)a3;
+ (id)cameraCaptureDeviceDisplayStringForItem:(id)a3;
+ (id)cameraSettingsDisplayStringsForItem:(id)a3;
+ (id)cameraSettingsForItem:(id)a3;
+ (id)fileTypeImageForType:(unint64_t)a3;
+ (id)flashImageForType:(unint64_t)a3;
+ (id)hardwareDisplayStringsForItem:(id)a3;
+ (id)localizedFileFormatForItem:(id)a3;
+ (id)megaPixelsDisplayStringForItem:(id)a3 isAccessibility:(BOOL)a4;
+ (id)meteringModeImageForType:(unint64_t)a3;
+ (id)originalCreationDateForItem:(id)a3;
+ (id)resolutionDisplayStringForItem:(id)a3 isAccessibility:(BOOL)a4;
+ (id)semanticStylesDisplayStringForItem:(id)a3;
+ (id)symbolSystemNamesForItem:(id)a3;
+ (id)whiteBalanceImageForType:(unint64_t)a3;
+ (int64_t)_cameraDeviceForItem:(id)a3;
+ (unint64_t)codecTypeForItem:(id)a3;
+ (unint64_t)fileTypeForItem:(id)a3;
+ (unint64_t)fileTypeForItem:(id)a3 type:(unint64_t)a4;
+ (unint64_t)flashTypeForItem:(id)a3;
+ (unint64_t)meteringModeTypeForItem:(id)a3;
+ (unint64_t)whiteBalanceTypeForItem:(id)a3;
+ (void)_addDualCaptureBadgeIfNeededForItem:(id)a3 toSymbols:(id)a4;
+ (void)processExifMetadataForItem:(id)a3 resultHandler:(id)a4 callbackQueue:(id)a5;
+ (void)requestExifMetadataProcessingIfNeededForItem:(id)a3 onProcessingQueue:(id)a4 withResultHandler:(id)a5;
@end

@implementation PXMetadataUtilities

+ (id)semanticStylesDisplayStringForItem:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v3 fetchPropertySetsIfNeeded], v4 = objc_msgSend(v3, "currentSmartStyleCast"), v4))
    {
      v5 = [MEMORY[0x1E69C4248] adjustmentStyleCastDisplayName:v4];
      v6 = [v5 localizedUppercaseString];
    }

    else
    {
      v6 = 0;
    }

    v7 = [v3 px_semanticStylePreset];
    v8 = v7;
    if (!v6 && v7)
    {
      if ([v7 integerValue])
      {
        v9 = CEKDisplayStringForSemanticStyleMakerPreset();
        v6 = [v9 localizedUppercaseString];
      }

      else
      {
        v6 = 0;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isVisionProAsset:(id)a3
{
  v3 = a3;
  v4 = [v3 px_make];
  v5 = [v3 px_model];

  v6 = [v4 lowercaseString];
  v7 = [v6 isEqualToString:@"apple"];

  v8 = 0;
  if (v7 && v5)
  {
    v9 = [v5 lowercaseString];
    v8 = [v9 containsString:@"vision pro"];
  }

  return v8;
}

+ (void)_addDualCaptureBadgeIfNeededForItem:(id)a3 toSymbols:(id)a4
{
  v8 = a4;
  if ([a3 px_isFrontRear])
  {
    v5 = [PXMetadataDisplayItem alloc];
    v6 = PXLocalizedStringFromTable(@"PXInfoPanelSymbolAXDescriptionFrontBack", @"PhotosUICore");
    v7 = [(PXMetadataDisplayItem *)v5 initWithContent:@"person.crop.pip" accessibilityDescription:v6 accessibilityValue:0 accessibilityIdentifier:@"com.apple.photos.infoPanel.exif.symbol.frontrear" accessoryImageSystemName:0];
    [v8 addObject:v7];
  }
}

+ (id)symbolSystemNamesForItem:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([a1 flashTypeForItem:v4] == 2)
  {
    v6 = [PXMetadataDisplayItem alloc];
    v7 = PXLocalizedStringFromTable(@"PXInfoPanelSymbolAXDescriptionFlash", @"PhotosUICore");
    v8 = [(PXMetadataDisplayItem *)v6 initWithContent:@"bolt.circle" accessibilityDescription:v7 accessibilityValue:0 accessibilityIdentifier:@"com.apple.photos.infoPanel.exif.symbol.flash.fired" accessoryImageSystemName:0];
    [v5 addObject:v8];
  }

  v9 = [a1 codecTypeForItem:v4];
  if (v9 == 1)
  {
    v10 = [PXMetadataDisplayItem alloc];
    v11 = PXLocalizedStringFromTable(@"PXInfoPanelEXIFVideoProResBadge", @"PhotosUICore");
    v12 = [(PXMetadataDisplayItem *)v10 initWithContent:@"video.circle.fill" accessibilityDescription:v11 accessibilityValue:0 accessibilityIdentifier:@"com.apple.photos.infoPanel.exif.symbol.proRes" accessoryImageSystemName:0];
    [v5 addObject:v12];
  }

  if ([v4 px_isCinematicVideo])
  {
    v13 = [PXMetadataDisplayItem alloc];
    v14 = PXLocalizedStringFromTable(@"PXInfoPanelSymbolAXDescriptionCinematicVideo", @"PhotosUICore");
    v15 = [(PXMetadataDisplayItem *)v13 initWithContent:@"cinematic.video" accessibilityDescription:v14 accessibilityValue:0 accessibilityIdentifier:@"com.apple.photos.infoPanel.exif.symbol.cinematicVideo" accessoryImageSystemName:0];
    [v5 addObject:v15];

    goto LABEL_12;
  }

  if ([v4 px_isActionModeVideo])
  {
    v16 = [PXMetadataDisplayItem alloc];
    v17 = PXLocalizedStringFromTable(@"PXInfoPanelSymbolAXDescriptionActionModeVideo", @"PhotosUICore");
    v18 = @"figure.run.motion.circle.fill";
    v19 = @"com.apple.photos.infoPanel.exif.symbol.actionMode";
    goto LABEL_9;
  }

  if (v9 != 1)
  {
    if ([v4 px_isDepthEffect])
    {
      v22 = [v4 px_isLivePhoto];
      v23 = [PXMetadataDisplayItem alloc];
      if (v22)
      {
        v24 = PXLocalizedStringFromTable(@"PXInfoPanelSymbolAXDescriptionLiveDepthEffect", @"PhotosUICore");
        v25 = @"livephoto.portrait";
        v26 = @"com.apple.photos.infoPanel.exif.symbol.livePhoto.portrait";
      }

      else
      {
        v24 = PXLocalizedStringFromTable(@"PXInfoPanelSymbolAXDescriptionDepthEffect", @"PhotosUICore");
        v25 = @"f.cursive.circle";
        v26 = @"com.apple.photos.infoPanel.exif.symbol.portrait";
      }
    }

    else if ([v4 px_representsBurst])
    {
      v23 = [PXMetadataDisplayItem alloc];
      v24 = PXLocalizedStringFromTable(@"PXInfoPanelSymbolAXDescriptionBurst", @"PhotosUICore");
      v25 = @"square.stack.3d.down.forward";
      v26 = @"com.apple.photos.infoPanel.exif.symbol.burst";
    }

    else if ([v4 px_isPanorama])
    {
      v23 = [PXMetadataDisplayItem alloc];
      v24 = PXLocalizedStringFromTable(@"PXInfoPanelSymbolAXDescriptionPano", @"PhotosUICore");
      v25 = @"pano";
      v26 = @"com.apple.photos.infoPanel.exif.symbol.pano";
    }

    else if ([v4 px_isSelfie])
    {
      v23 = [PXMetadataDisplayItem alloc];
      v24 = PXLocalizedStringFromTable(@"PXInfoPanelSymbolAXDescriptionSelfie", @"PhotosUICore");
      v25 = @"person.crop.square";
      v26 = @"com.apple.photos.infoPanel.exif.symbol.selfie";
    }

    else if ([v4 px_isLivePhoto])
    {
      v23 = [PXMetadataDisplayItem alloc];
      v24 = PXLocalizedStringFromTable(@"PXInfoPanelSymbolAXDescriptionLivePhoto", @"PhotosUICore");
      v25 = @"livephoto";
      v26 = @"com.apple.photos.infoPanel.exif.symbol.livePhoto";
    }

    else if ([v4 px_isScreenshot])
    {
      v23 = [PXMetadataDisplayItem alloc];
      v24 = PXLocalizedStringFromTable(@"PXInfoPanelSymbolAXDescriptionScreenshot", @"PhotosUICore");
      v25 = @"camera.viewfinder";
      v26 = @"com.apple.photos.infoPanel.exif.symbol.screenshot";
    }

    else if ([v4 px_isScreenRecording])
    {
      v23 = [PXMetadataDisplayItem alloc];
      v24 = PXLocalizedStringFromTable(@"PXInfoPanelSymbolAXDescriptionScreenRecording", @"PhotosUICore");
      v25 = @"record.circle";
      v26 = @"com.apple.photos.infoPanel.exif.symbol.screenRecording";
    }

    else if ([v4 px_isSloMo])
    {
      v23 = [PXMetadataDisplayItem alloc];
      v24 = PXLocalizedStringFromTable(@"PXInfoPanelSymbolAXDescriptionSloMo", @"PhotosUICore");
      v25 = @"slowmo";
      v26 = @"com.apple.photos.infoPanel.exif.symbol.slomo";
    }

    else if ([v4 px_isTimelapse])
    {
      v23 = [PXMetadataDisplayItem alloc];
      v24 = PXLocalizedStringFromTable(@"PXInfoPanelSymbolAXDescriptionTimelapse", @"PhotosUICore");
      v25 = @"timelapse";
      v26 = @"com.apple.photos.infoPanel.exif.symbol.timelapse";
    }

    else
    {
      if (![v4 px_isVideo])
      {
LABEL_38:
        if (![v4 px_isSpatialMedia])
        {
          goto LABEL_10;
        }

        v16 = [PXMetadataDisplayItem alloc];
        v17 = PXLocalizedStringFromTable(@"PXInfoPanelSymbolAXDescriptionSpatialCapture", @"PhotosUICore");
        v18 = @"spatial";
        v19 = @"com.apple.photos.infoPanel.exif.symbol.spatial";
LABEL_9:
        v20 = [(PXMetadataDisplayItem *)v16 initWithContent:v18 accessibilityDescription:v17 accessibilityValue:0 accessibilityIdentifier:v19 accessoryImageSystemName:0];
        [v5 addObject:v20];

LABEL_10:
        [a1 _addDualCaptureBadgeIfNeededForItem:v4 toSymbols:v5];
        goto LABEL_12;
      }

      v23 = [PXMetadataDisplayItem alloc];
      v24 = PXLocalizedStringFromTable(@"PXInfoPanelSymbolAXDescriptionVideo", @"PhotosUICore");
      v25 = @"video";
      v26 = @"com.apple.photos.infoPanel.exif.symbol.video";
    }

    v27 = [(PXMetadataDisplayItem *)v23 initWithContent:v25 accessibilityDescription:v24 accessibilityValue:0 accessibilityIdentifier:v26 accessoryImageSystemName:0];
    [v5 addObject:v27];

    goto LABEL_38;
  }

LABEL_12:

  return v5;
}

+ (id)cameraSettingsDisplayStringsForItem:(id)a3
{
  v53[5] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 cameraSettingsForItem:v4];
  if (v5)
  {
    if ([v4 px_isVideo])
    {
      v6 = [v5 objectForKeyedSubscript:@"fps"];
      v7 = [v5 objectForKeyedSubscript:@"duration"];
      v48 = +[PXMetadataDisplayItem emptyItem];
      v53[0] = v48;
      v8 = [PXMetadataDisplayItem alloc];
      v49 = PXLocalizedStringFromTable(@"PXMetadataUtilitiesCameraSettingsMediaFPSAXDescription", @"PhotosUICore");
      v50 = [PXMetadataDisplayItem initWithContent:v8 accessibilityDescription:"initWithContent:accessibilityDescription:accessibilityValue:accessibilityIdentifier:accessoryImageSystemName:" accessibilityValue:v6 accessibilityIdentifier:? accessoryImageSystemName:?];
      v53[1] = v50;
      v47 = +[PXMetadataDisplayItem emptyItem];
      v53[2] = v47;
      v9 = [PXMetadataDisplayItem alloc];
      v10 = PXLocalizedStringFromTable(@"PXMetadataUtilitiesCameraSettingsMediaDurationAXDescription", @"PhotosUICore");
      v11 = [(PXMetadataDisplayItem *)v9 initWithContent:v7 accessibilityDescription:v10 accessibilityValue:v7 accessibilityIdentifier:@"com.apple.photos.infoPanel.exif.video.duration" accessoryImageSystemName:0];
      v53[3] = v11;
      v12 = +[PXMetadataDisplayItem emptyItem];
      v53[4] = v12;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:5];
    }

    else if ([v4 px_isAudio])
    {
      v6 = [v5 objectForKeyedSubscript:@"sampleRate"];
      v7 = [v5 objectForKeyedSubscript:@"bitrate"];
      v14 = [v5 objectForKeyedSubscript:@"duration"];
      v15 = [PXMetadataDisplayItem alloc];
      v49 = PXLocalizedStringFromTable(@"PXMetadataUtilitiesCameraSettingsMediaBitrateAXDescription", @"PhotosUICore");
      v50 = [(PXMetadataDisplayItem *)v15 initWithContent:v6 accessibilityDescription:v49 accessibilityValue:v6 accessibilityIdentifier:@"com.apple.photos.infoPanel.exif.audio.samplerate" accessoryImageSystemName:0];
      v52[0] = v50;
      v47 = +[PXMetadataDisplayItem emptyItem];
      v52[1] = v47;
      v16 = [PXMetadataDisplayItem alloc];
      v45 = PXLocalizedStringFromTable(@"PXMetadataUtilitiesCameraSettingsMediaBitrateAXDescription", @"PhotosUICore");
      v11 = [(PXMetadataDisplayItem *)v16 initWithContent:v7 accessibilityDescription:v45 accessibilityValue:v7 accessibilityIdentifier:@"com.apple.photos.infoPanel.exif.audio.bitrate" accessoryImageSystemName:0];
      v52[2] = v11;
      v12 = +[PXMetadataDisplayItem emptyItem];
      v52[3] = v12;
      v17 = [PXMetadataDisplayItem alloc];
      v18 = PXLocalizedStringFromTable(@"PXMetadataUtilitiesCameraSettingsMediaDurationAXDescription", @"PhotosUICore");
      v48 = v14;
      v19 = [(PXMetadataDisplayItem *)v17 initWithContent:v14 accessibilityDescription:v18 accessibilityValue:v14 accessibilityIdentifier:@"com.apple.photos.infoPanel.exif.audio.duration" accessoryImageSystemName:0];
      v52[4] = v19;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:5];

      v10 = v45;
    }

    else
    {
      v44 = [v5 objectForKeyedSubscript:@"iso"];
      v20 = [v5 objectForKeyedSubscript:@"iso.ax"];
      v38 = v20;
      v21 = [v5 objectForKeyedSubscript:@"focalLength"];
      v49 = [v5 objectForKeyedSubscript:@"exposure"];
      v50 = [v5 objectForKeyedSubscript:@"exposure.ax"];
      v47 = [v5 objectForKeyedSubscript:@"aperture"];
      v46 = [v47 stringByReplacingOccurrencesOfString:@"/" withString:&stru_1F1741150];
      v11 = [v5 objectForKeyedSubscript:@"aperture.ax"];
      v12 = [(PXMetadataDisplayItem *)v11 stringByReplacingOccurrencesOfString:@"/" withString:&stru_1F1741150];
      v43 = [v5 objectForKeyedSubscript:@"shutterSpeed"];
      v40 = [v5 objectForKeyedSubscript:@"shutterSpeed.ax"];
      v22 = [v4 px_shotWithNightMode];
      v23 = @"camera.nightmode";
      if (!v22)
      {
        v23 = 0;
      }

      v37 = v23;
      v24 = [PXMetadataDisplayItem alloc];
      v42 = PXLocalizedStringFromTable(@"PXMetadataUtilitiesCameraSettingsISOAXDescription", @"PhotosUICore");
      v41 = [(PXMetadataDisplayItem *)v24 initWithContent:v44 accessibilityDescription:v42 accessibilityValue:v20 accessibilityIdentifier:@"com.apple.photos.infoPanel.exif.image.iso" accessoryImageSystemName:0];
      v51[0] = v41;
      v25 = [PXMetadataDisplayItem alloc];
      v39 = PXLocalizedStringFromTable(@"PXMetadataUtilitiesCameraSettingsFocalLengthAXDescription", @"PhotosUICore");
      v48 = v21;
      v36 = [(PXMetadataDisplayItem *)v25 initWithContent:v21 accessibilityDescription:v39 accessibilityValue:v21 accessibilityIdentifier:@"com.apple.photos.infoPanel.exif.image.focalLength" accessoryImageSystemName:0];
      v51[1] = v36;
      v26 = [PXMetadataDisplayItem alloc];
      v35 = PXLocalizedStringFromTable(@"PXMetadataUtilitiesCameraSettingsExposureBiasAXDescription", @"PhotosUICore");
      v34 = [(PXMetadataDisplayItem *)v26 initWithContent:v49 accessibilityDescription:v35 accessibilityValue:v50 accessibilityIdentifier:@"com.apple.photos.infoPanel.exif.image.exposureBias" accessoryImageSystemName:0];
      v51[2] = v34;
      v27 = [PXMetadataDisplayItem alloc];
      v33 = PXLocalizedStringFromTable(@"PXMetadataUtilitiesCameraSettingsApertureAXDescription", @"PhotosUICore");
      v28 = [(PXMetadataDisplayItem *)v27 initWithContent:v46 accessibilityDescription:v33 accessibilityValue:v12 accessibilityIdentifier:@"com.apple.photos.infoPanel.exif.image.aperture" accessoryImageSystemName:0];
      v51[3] = v28;
      v29 = [PXMetadataDisplayItem alloc];
      v30 = PXLocalizedStringFromTable(@"PXMetadataUtilitiesCameraSettingsShutterSpeedAXDescription", @"PhotosUICore");
      v31 = [(PXMetadataDisplayItem *)v29 initWithContent:v43 accessibilityDescription:v30 accessibilityValue:v40 accessibilityIdentifier:@"com.apple.photos.infoPanel.exif.image.shutterSpeed" accessoryImageSystemName:v37];

      v51[4] = v31;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:5];

      v7 = v38;
      v6 = v44;

      v10 = v46;
    }
  }

  else
  {
    v13 = MEMORY[0x1E695E0F0];
  }

  return v13;
}

+ (id)_formattedApertureStringWithString:(id)a3
{
  v3 = a3;
  v4 = [v3 stringByReplacingOccurrencesOfString:@"f/" withString:@"ƒ" options:1 range:{0, objc_msgSend(v3, "length")}];

  return v4;
}

+ (id)_apertureNumberFromString:(id)a3
{
  v4 = [a3 componentsSeparatedByString:@" "];
  v5 = [v4 indexOfObjectPassingTest:&__block_literal_global_633];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v7 = [v4 objectAtIndexedSubscript:v5];
    v8 = [v7 substringFromIndex:2];
    v9 = [a1 _numberStringResolvingDecimalSeparatorLocalization:v8];

    [v9 doubleValue];
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  }

  return v6;
}

+ (id)_focalLengthStringFromString:(id)a3
{
  v3 = [a3 componentsSeparatedByString:@" "];
  v4 = [v3 indexOfObjectPassingTest:&__block_literal_global_631];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v3 objectAtIndexedSubscript:v4];
  }

  return v5;
}

+ (id)_focalLengthFromString:(id)a3
{
  v4 = [a3 componentsSeparatedByString:@" "];
  v5 = [v4 indexOfObjectPassingTest:&__block_literal_global_629];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v7 = [v4 objectAtIndexedSubscript:v5];
    v8 = [a1 _numberStringResolvingDecimalSeparatorLocalization:v7];

    v9 = MEMORY[0x1E696AD98];
    [v8 doubleValue];
    v6 = [v9 numberWithDouble:?];
  }

  return v6;
}

+ (id)_secondaryFormattedLensDescriptionForItem:(id)a3
{
  v3 = a3;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = v3;

    if (v4)
    {
      [v4 fetchPropertySetsIfNeeded];
    }
  }

  else
  {

    v4 = 0;
  }

  v5 = [v3 px_model];
  if ([v3 px_isFrontRear])
  {
    if (v5)
    {
      v6 = [_apertureFormatter stringForObjectValue:&unk_1F190DF58];
      v7 = [v6 stringByReplacingOccurrencesOfString:@"/" withString:&stru_1F1741150];

      v8 = [PXMetadataUtilitiesCameraDevice frontCameraDataForDeviceName:v5];
      v9 = v8;
      if (v8)
      {
        v10 = [v8 objectForKeyedSubscript:@"lensDisplayName"];
        v11 = [v9 objectForKeyedSubscript:@"focalLengthIn35mm"];
        v12 = [_focalLengthFormatter stringForObjectValue:v11];
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ — %@ %@", v10, v12, v7];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = PXLocalizedStringFromTable(@"PXInfoPanelLCDUnknownLens", @"PhotosUICore");
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)_formattedLensDescriptionForItem:(id)a3
{
  v4 = a3;
  v5 = [v4 px_make];
  v6 = [v4 px_model];
  v7 = [v4 px_lensModel];
  v8 = [v5 lowercaseString];
  v9 = [v8 isEqualToString:@"apple"];

  if ((v9 & 1) == 0)
  {
    if (v7)
    {
      [a1 _formattedApertureStringWithString:v7];
    }

    else
    {
      PXLocalizedStringFromTable(@"PXInfoPanelLCDUnknownLens", @"PhotosUICore");
    }
    v32 = ;
    goto LABEL_38;
  }

  v10 = v7;
  v11 = v10;
  if (!v6 || !v10)
  {
    goto LABEL_36;
  }

  v12 = [v10 stringByReplacingOccurrencesOfString:v6 withString:&stru_1F1741150 options:1 range:{0, objc_msgSend(v10, "length")}];

  v13 = [a1 _apertureNumberFromString:v12];
  v14 = _apertureFormatter;
  if (!_apertureFormatter)
  {
    v15 = objc_alloc_init(PXApertureFormatter);
    v16 = _apertureFormatter;
    _apertureFormatter = v15;

    v14 = _apertureFormatter;
  }

  v17 = [v14 stringForObjectValue:v13];
  v18 = [v17 stringByReplacingOccurrencesOfString:@"/" withString:&stru_1F1741150];

  v19 = [a1 _focalLengthFromString:v12];
  if (!_focalLengthFormatter)
  {
    v20 = objc_alloc_init(PXFocalDistanceFormatter);
    v21 = _focalLengthFormatter;
    _focalLengthFormatter = v20;
  }

  v69 = v18;
  v66 = [a1 _cameraNominalFocalLengthForItem:v4];
  v22 = +[PXMetadataUtilitiesCameraDevice cameraDeviceForDeviceName:camera:realLensFocalLength:nominalLensFocalLength:](PXMetadataUtilitiesCameraDevice, "cameraDeviceForDeviceName:camera:realLensFocalLength:nominalLensFocalLength:", v6, [a1 _cameraDeviceForItem:v4], v19, v66);
  v23 = v19;
  v67 = v19;
  v68 = v13;
  v65 = v22;
  if (!v22)
  {
    v64 = [v4 px_digitalZoomRatio];
    v33 = [v4 px_focalLengthIn35mm];
    v34 = [PXMetadataUtilities cameraCaptureDeviceDisplayStringForItem:v4];
    v63 = v33;
    if (!v23 || !v33)
    {
      v31 = v12;
      v27 = v64;
      if (!v34)
      {
LABEL_31:
        v49 = [v31 capitalizedString];

        v50 = PXLocalizedStringFromTable(@"PXInfoPanelLCDFaceTimeCamera", @"PhotosUICore");
        v51 = [v49 stringByReplacingOccurrencesOfString:@"Facetime" withString:v50];

        v52 = PXLocalizedStringFromTable(@"PXInfoPanelLCDFrontiSightCamera", @"PhotosUICore");
        v53 = [v51 stringByReplacingOccurrencesOfString:@"Isight" withString:v52];

        v54 = PXLocalizedStringFromTable(@"PXInfoPanelLCDFrontTrueDepthCamera", @"PhotosUICore");
        v55 = [v53 stringByReplacingOccurrencesOfString:@"Truedepth" withString:v54];

        v56 = [v55 stringByReplacingOccurrencesOfString:@"Mm" withString:@"mm"];

        v31 = [v56 stringByReplacingOccurrencesOfString:@"Camera " withString:@"Camera — "];

        v27 = v64;
        v12 = 0;
        goto LABEL_32;
      }

LABEL_20:
      v12 = v34;
LABEL_32:
      v30 = v69;
      v29 = v63;
      goto LABEL_33;
    }

    v35 = v33;
    v61 = v34;
    if (v64 && ([v64 doubleValue], v35 = v33, v36 > 0.0))
    {
      v37 = MEMORY[0x1E696AD98];
      [v33 doubleValue];
      v39 = v38;
      [v64 doubleValue];
      v41 = [v37 numberWithDouble:v39 / v40];
    }

    else
    {
      v41 = v35;
    }

    v42 = v41;
    v62 = [a1 _focalLengthStringFromString:v12];
    v43 = _focalLengthFormatter;
    v44 = MEMORY[0x1E696AD98];
    [v42 floatValue];
    v46 = [v44 numberWithLong:llroundf(v45)];
    v47 = [v43 stringForObjectValue:v46];

    if (v61 && v62 && v47)
    {
      v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ — %@ %@", v61, v47, v69];
      v27 = v64;
    }

    else
    {
      v27 = v64;
      if (!v62 || !v47)
      {
LABEL_30:

        v31 = v12;
        v34 = v61;
        if (!v61)
        {
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v48 = [v12 stringByReplacingOccurrencesOfString:v62 withString:v47];
    }

    v12 = v48;
    goto LABEL_30;
  }

  v24 = v22;
  v25 = _focalLengthFormatter;
  v26 = [v22 focalLengthIn35mm];
  v27 = [v25 stringForObjectValue:v26];

  v28 = MEMORY[0x1E696AEC0];
  v29 = [v24 displayName];
  v30 = v69;
  v31 = [v28 stringWithFormat:@"%@ — %@ %@", v29, v27, v69];
LABEL_33:

  v57 = [a1 _formattedApertureStringWithString:v31];

  v58 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v11 = [v57 stringByTrimmingCharactersInSet:v58];

  if (!v11 || ![v11 length])
  {
LABEL_36:
    v59 = PXLocalizedStringFromTable(@"PXInfoPanelLCDUnknownLens", @"PhotosUICore");
    goto LABEL_37;
  }

  v59 = v11;
  v11 = v59;
LABEL_37:
  v32 = v59;

LABEL_38:

  return v32;
}

+ (id)_formattedDeviceDescriptionForItem:(id)a3
{
  v3 = a3;
  v4 = [v3 px_formattedCameraModel];
  if (!v4)
  {
    if ([v3 px_isScreenshot])
    {
      v5 = @"PXInfoPanelLCDScreenshot";
    }

    else if ([v3 px_isScreenRecording])
    {
      v5 = @"PXInfoPanelLCDScreenRecording";
    }

    else
    {
      v5 = @"PXInfoPanelLCDUnknownCamera";
    }

    v4 = PXLocalizedStringFromTable(v5, @"PhotosUICore");
  }

  return v4;
}

+ (id)hardwareDisplayStringsForItem:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 fetchPropertySetsIfNeeded];
  }

  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = [a1 _formattedDeviceDescriptionForItem:v4];
  [v5 setObject:v6 forKeyedSubscript:PXMetadataUtilitiesHardwareKeyDevice];

  v7 = [a1 _formattedLensDescriptionForItem:v4];
  [v5 setObject:v7 forKeyedSubscript:PXMetadataUtilitiesHardwareKeyFormattedLens];

  v8 = [a1 _secondaryFormattedLensDescriptionForItem:v4];
  [v5 setObject:v8 forKeyedSubscript:PXMetadataUtilitiesHardwareKeySecondaryFormattedLens];

  v9 = [v4 px_lensModel];
  [v5 setObject:v9 forKeyedSubscript:PXMetadataUtilitiesHardwareKeyUnformattedLens];

  return v5;
}

+ (id)resolutionDisplayStringForItem:(id)a3 isAccessibility:(BOOL)a4
{
  v4 = a4;
  v5 = [a3 px_resolution];
  v7 = v6;
  v8 = [MEMORY[0x1E696AD98] numberWithLong:v5];
  v9 = [MEMORY[0x1E696AD98] numberWithLong:v7];
  [MEMORY[0x1E696ADA0] localizedStringFromNumber:v8 numberStyle:0];
  objc_claimAutoreleasedReturnValue();
  [MEMORY[0x1E696ADA0] localizedStringFromNumber:v9 numberStyle:0];
  objc_claimAutoreleasedReturnValue();
  if (v4)
  {
    v10 = @"PXInfoPanelAXLCDResolutionFormat";
  }

  else
  {
    v10 = @"PXInfoPanelLCDResolutionFormat";
  }

  PXLocalizedStringFromTable(v10, @"PhotosUICore");
  objc_claimAutoreleasedReturnValue();
  PXStringWithValidatedFormat();
}

+ (int64_t)_cameraDeviceForItem:(id)a3
{
  v3 = a3;
  if (!objc_opt_class() || (objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = 0;
    v9 = 0;
    v6 = v3;
LABEL_10:

    goto LABEL_11;
  }

  v4 = v3;

  if (v4)
  {
    [v4 fetchPropertySetsIfNeeded];
    v5 = [v4 originalImageProperties];
    v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E696DE30]];

    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69867B8]];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 integerValue];
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_10;
  }

  v9 = 0;
LABEL_11:

  return v9;
}

+ (id)_cameraNominalFocalLengthForItem:(id)a3
{
  v3 = a3;
  if (!objc_opt_class() || (objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = 0;
    v8 = 0;
    v6 = v3;
LABEL_10:

    goto LABEL_11;
  }

  v4 = v3;

  if (v4)
  {
    [v4 fetchPropertySetsIfNeeded];
    v5 = [v4 originalImageProperties];
    v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E696DE30]];

    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69867E8]];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_10;
  }

  v8 = 0;
LABEL_11:

  return v8;
}

+ (id)cameraCaptureDeviceDisplayStringForItem:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    [v4 fetchPropertySetsIfNeeded];
    v5 = [v4 originalImageProperties];
    v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E696DE30]];

    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69867B8]];
    v8 = v7;
    if (v7 && (v9 = [v7 integerValue] - 2, v9 <= 4))
    {
      v10 = PXLocalizedStringFromTable(off_1E772CD50[v9], @"PhotosUICore");
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)megaPixelsDisplayStringForItem:(id)a3 isAccessibility:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [v5 px_resolution];
  v8 = v7;
  if ([v5 px_isImage])
  {
    *v9.i64 = v6 * v8 / 1000000.0;
    if (*v9.i64 >= 1.0)
    {
      *v10.i64 = *v9.i64 - trunc(*v9.i64);
      v15.f64[0] = NAN;
      v15.f64[1] = NAN;
      v16 = *vbslq_s8(vnegq_f64(v15), v10, v9).i64 < 0.9;
      v17 = floor(*v9.i64);
      v11 = ceil(*v9.i64);
      if (v16)
      {
        v11 = v17;
      }
    }

    else
    {
      v11 = round(*v9.i64 * 10.0) / 10.0;
    }

    v18 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
    v19 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    v20 = v19;
    if (v4)
    {
      v21 = 5;
    }

    else
    {
      v21 = 1;
    }

    if (v4)
    {
      v22 = @"PXInfoPanelMegaPixelsAXFormat";
    }

    else
    {
      v22 = @"PXInfoPanelMegaPixelsFormat";
    }

    [v19 setNumberStyle:v21];
    [v20 stringFromNumber:v18];
    objc_claimAutoreleasedReturnValue();
    PXLocalizedStringFromTable(v22, @"PhotosUICore");
    objc_claimAutoreleasedReturnValue();
    PXStringWithValidatedFormat();
  }

  v12 = 0;
  if ([v5 px_isVideo])
  {
    if (v6 >= v8)
    {
      v13 = v8;
    }

    else
    {
      v13 = v6;
    }

    if (v13 <= 1439)
    {
      switch(v13)
      {
        case 480:
          if (v4)
          {
            v14 = @"PXInfoPanelVideoResolutionAX480p";
          }

          else
          {
            v14 = @"PXInfoPanelVideoResolution480p";
          }

          break;
        case 720:
          if (v4)
          {
            v14 = @"PXInfoPanelVideoResolutionAX720p";
          }

          else
          {
            v14 = @"PXInfoPanelVideoResolution720p";
          }

          break;
        case 1080:
          if (v4)
          {
            v14 = @"PXInfoPanelVideoResolutionAX1080p";
          }

          else
          {
            v14 = @"PXInfoPanelVideoResolution1080p";
          }

          break;
        default:
          goto LABEL_48;
      }
    }

    else if (v13 > 2159)
    {
      if (v13 == 2160)
      {
        if (v4)
        {
          v14 = @"PXInfoPanelVideoResolutionAX4k";
        }

        else
        {
          v14 = @"PXInfoPanelVideoResolution4k";
        }
      }

      else
      {
        if (v13 != 4320)
        {
          goto LABEL_48;
        }

        if (v4)
        {
          v14 = @"PXInfoPanelVideoResolutionAX8k";
        }

        else
        {
          v14 = @"PXInfoPanelVideoResolution8k";
        }
      }
    }

    else if (v13 == 1440)
    {
      if (v4)
      {
        v14 = @"PXInfoPanelVideoResolutionAX1440p";
      }

      else
      {
        v14 = @"PXInfoPanelVideoResolution1440p";
      }
    }

    else
    {
      if (v13 != 1584)
      {
        goto LABEL_48;
      }

      if (v4)
      {
        v14 = @"PXInfoPanelVideoResolutionAX28k";
      }

      else
      {
        v14 = @"PXInfoPanelVideoResolution28k";
      }
    }

    v12 = PXLocalizedStringFromTable(v14, @"PhotosUICore");
  }

LABEL_48:

  return v12;
}

+ (id)fileTypeImageForType:(unint64_t)a3
{
  v5 = [a1 _fileTypeImageForType:?];
  v6 = [a1 _accessibilityDescriptionForFileType:a3];
  v7 = [[PXMetadataDisplayItem alloc] initWithContent:v5 accessibilityDescription:v6 accessibilityValue:0 accessibilityIdentifier:@"com.apple.photos.infoPanel.exif.fileType" accessoryImageSystemName:0];

  return v7;
}

+ (unint64_t)codecTypeForItem:(id)a3
{
  v3 = a3;
  if ([v3 px_isProRes])
  {
    v4 = 1;
  }

  else if ([v3 px_isH264])
  {
    v4 = 2;
  }

  else if ([v3 px_isHEVC])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_fileTypeImageForType:(unint64_t)a3
{
  if (a3 > 0x12)
  {
    v3 = @"LCD-Filetype-JPEG";
  }

  else
  {
    v3 = off_1E772CCB8[a3];
  }

  return [a1 _loadImageWithName:v3];
}

+ (id)_accessibilityDescriptionForFileType:(unint64_t)a3
{
  if (a3 > 0x10)
  {
    v4 = @"PXFileTypeAXDescriptionUnknown";
  }

  else
  {
    v4 = off_1E772CC30[a3];
  }

  v5 = PXLocalizedStringFromTable(v4, @"PhotosUICore");

  return v5;
}

+ (id)meteringModeImageForType:(unint64_t)a3
{
  v4 = @"camera.metering.unknown";
  if (a3 > 3)
  {
    if (a3 > 5)
    {
      if (a3 == 6)
      {
        v4 = @"camera.metering.partial";
        return [MEMORY[0x1E69DCAB8] systemImageNamed:v4];
      }

      if (a3 != 255)
      {
        goto LABEL_13;
      }
    }

    else if (a3 == 4)
    {
      v4 = @"camera.metering.multispot";
    }

    else
    {
      v4 = @"camera.metering.matrix";
    }
  }

  else if (a3 > 1)
  {
    if (a3 == 2)
    {
      v4 = @"camera.metering.center.weighted";
    }

    else
    {
      v4 = @"camera.metering.spot";
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      v4 = @"camera.metering.center.weighted.average";
      return [MEMORY[0x1E69DCAB8] systemImageNamed:v4];
    }

LABEL_13:
    v4 = @"camera.metering.none";
  }

  return [MEMORY[0x1E69DCAB8] systemImageNamed:v4];
}

+ (id)whiteBalanceImageForType:(unint64_t)a3
{
  if (a3 - 2 > 7)
  {
    v3 = @"LCD-WB";
  }

  else
  {
    v3 = off_1E772CBF0[a3 - 2];
  }

  return [a1 _loadImageWithName:v3];
}

+ (id)flashImageForType:(unint64_t)a3
{
  if (a3 == 2)
  {
    v5 = [a1 _loadImageWithName:{@"LCD-Flash-Fired", v3}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_loadImageWithName:(id)a3
{
  v3 = MEMORY[0x1E696AAE8];
  v4 = a3;
  v5 = [v3 bundleWithIdentifier:@"com.apple.PhotosUICore"];
  v6 = [MEMORY[0x1E69DCAB8] imageNamed:v4 inBundle:v5 withConfiguration:0];

  return v6;
}

+ (id)cameraSettingsForItem:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v5 = PXLocalizedStringFromTable(@"PXInfoPanelMissingValuePlaceholder", @"PhotosUICore");
  if (cameraSettingsForItem__onceToken != -1)
  {
    dispatch_once(&cameraSettingsForItem__onceToken, &__block_literal_global_1132);
  }

  v43 = [v3 px_ISORating];
  v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v43];
  v6 = [v3 px_focalLengthIn35mm];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [v3 px_focalLength];
  }

  v45 = v8;

  v9 = [v3 px_aperture];
  v10 = MEMORY[0x1E696AEC0];
  v11 = [_apertureFormatter stringForObjectValue:v9];
  v41 = [v10 stringWithFormat:@"f %@", v11];

  v12 = [v3 px_shutterSpeed];
  v13 = [v3 px_exposureBias];
  v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ e v", v13];
  v44 = [v3 px_FPS];
  v39 = [v3 px_duration];
  v14 = [v3 px_bitRate];
  v15 = MEMORY[0x1E696AD98];
  v16 = [v3 px_sampleRate];
  [v16 doubleValue];
  v17 = [v15 numberWithDouble:?];

  v18 = v43;
  if (v43)
  {
    v19 = [_isoFormatter stringForObjectValue:v43];
    [v4 setObject:v19 forKeyedSubscript:@"iso"];

    v20 = v42;
  }

  else
  {
    [v4 setObject:v5 forKeyedSubscript:@"iso"];
    v20 = v5;
  }

  [v4 setObject:v20 forKeyedSubscript:@"iso.ax"];
  if (v45)
  {
    v21 = [_focalLengthFormatter stringForObjectValue:?];
    [v4 setObject:v21 forKeyedSubscript:@"focalLength"];

    if (v13)
    {
LABEL_11:
      v22 = [_exposureFormatter stringForObjectValue:v13];
      [v4 setObject:v22 forKeyedSubscript:@"exposure"];

      v23 = v40;
      goto LABEL_14;
    }
  }

  else
  {
    [v4 setObject:v5 forKeyedSubscript:@"focalLength"];
    if (v13)
    {
      goto LABEL_11;
    }
  }

  [v4 setObject:v5 forKeyedSubscript:@"exposure"];
  v23 = v5;
LABEL_14:
  [v4 setObject:v23 forKeyedSubscript:@"exposure.ax"];
  if (v9)
  {
    v24 = [_apertureFormatter stringForObjectValue:v9];
    [v4 setObject:v24 forKeyedSubscript:@"aperture"];

    v25 = v41;
  }

  else
  {
    [v4 setObject:v5 forKeyedSubscript:@"aperture"];
    v25 = v5;
  }

  [v4 setObject:v25 forKeyedSubscript:@"aperture.ax"];
  if (v12)
  {
    v26 = [_shutterSpeedFormatter stringForObjectValue:v12];
    [v4 setObject:v26 forKeyedSubscript:@"shutterSpeed"];

    v27 = [_shutterSpeedAXFormatter stringForObjectValue:v12];
    [v4 setObject:v27 forKeyedSubscript:@"shutterSpeed.ax"];

    if (v14)
    {
      goto LABEL_19;
    }

LABEL_22:
    [v4 setObject:v5 forKeyedSubscript:@"bitrate"];
    if (v17)
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  [v4 setObject:v5 forKeyedSubscript:@"shutterSpeed"];
  [v4 setObject:v5 forKeyedSubscript:@"shutterSpeed.ax"];
  if (!v14)
  {
    goto LABEL_22;
  }

LABEL_19:
  v28 = [_mediaBitrateFormatter stringFromNumber:v14];
  [v4 setObject:v28 forKeyedSubscript:@"bitrate"];

  if (v17)
  {
LABEL_20:
    v29 = [_mediaSampleRateFormatter stringFromNumber:v17];
    [v4 setObject:v29 forKeyedSubscript:@"sampleRate"];

    goto LABEL_24;
  }

LABEL_23:
  [v4 setObject:v5 forKeyedSubscript:@"sampleRate"];
LABEL_24:
  if (v44)
  {
    v30 = [_mediaFPSFormatter stringFromNumber:?];
    [v4 setObject:v30 forKeyedSubscript:@"fps"];
  }

  else
  {
    [v4 setObject:v5 forKeyedSubscript:@"fps"];
  }

  v31 = v39;
  if (v39)
  {
    [v39 doubleValue];
    v33 = round(v32);
    if (v33 <= 3600.0)
    {
      v34 = @"mm:ss";
    }

    else
    {
      v34 = @"HH:mm:ss";
    }

    [_mediaDurationFormatter setDateFormat:v34];
    v35 = _mediaDurationFormatter;
    v36 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v33];
    v37 = [v35 stringFromDate:v36];
    [v4 setObject:v37 forKeyedSubscript:@"duration"];

    v31 = v39;
    v18 = v43;
  }

  else
  {
    [v4 setObject:v5 forKeyedSubscript:@"duration"];
  }

  return v4;
}

void __45__PXMetadataUtilities_cameraSettingsForItem___block_invoke()
{
  if (!_focalLengthFormatter)
  {
    v0 = objc_alloc_init(PXFocalDistanceFormatter);
    v1 = _focalLengthFormatter;
    _focalLengthFormatter = v0;
  }

  if (!_isoFormatter)
  {
    v2 = objc_alloc_init(PXISOFormatter);
    v3 = _isoFormatter;
    _isoFormatter = v2;
  }

  if (!_exposureFormatter)
  {
    v4 = objc_alloc_init(PXExposureBiasFormatter);
    v5 = _exposureFormatter;
    _exposureFormatter = v4;
  }

  if (!_shutterSpeedFormatter)
  {
    v6 = objc_alloc_init(PXShutterSpeedFormatter);
    v7 = _shutterSpeedFormatter;
    _shutterSpeedFormatter = v6;
  }

  if (!_shutterSpeedAXFormatter)
  {
    v8 = objc_alloc_init(PXShutterSpeedFormatter);
    v9 = _shutterSpeedAXFormatter;
    _shutterSpeedAXFormatter = v8;

    [_shutterSpeedAXFormatter setNumberStyle:5];
  }

  if (!_apertureFormatter)
  {
    v10 = objc_alloc_init(PXApertureFormatter);
    v11 = _apertureFormatter;
    _apertureFormatter = v10;
  }

  if (!_dateFormatter)
  {
    v12 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v13 = _dateFormatter;
    _dateFormatter = v12;

    v14 = _dateFormatter;
    v15 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"UTC"];
    [v14 setTimeZone:v15];
  }

  if (!_intervalFormatter)
  {
    v16 = objc_alloc_init(MEMORY[0x1E696AB88]);
    v17 = _intervalFormatter;
    _intervalFormatter = v16;
  }

  if (!_mediaDurationFormatter)
  {
    v18 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v19 = _mediaDurationFormatter;
    _mediaDurationFormatter = v18;

    v20 = _mediaDurationFormatter;
    v21 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
    [v20 setTimeZone:v21];
  }

  if (!_mediaFPSFormatter)
  {
    v22 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    v23 = _mediaFPSFormatter;
    _mediaFPSFormatter = v22;

    v24 = PXLocalizedStringFromTable(@"PXInfoPanelLCDMediaFPSNumberFormat", @"PhotosUICore");
    [_mediaFPSFormatter setPositiveFormat:v24];
  }

  if (!_mediaBitrateFormatter)
  {
    v25 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    v26 = _mediaBitrateFormatter;
    _mediaBitrateFormatter = v25;

    v27 = PXLocalizedStringFromTable(@"PXInfoPanelLCDMediaBitrateNumberFormat", @"PhotosUICore");
    [_mediaBitrateFormatter setPositiveFormat:v27];

    [_mediaBitrateFormatter setMultiplier:&unk_1F190DF48];
  }

  if (!_mediaSampleRateFormatter)
  {
    v28 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    v29 = _mediaSampleRateFormatter;
    _mediaSampleRateFormatter = v28;

    v30 = PXLocalizedStringFromTable(@"PXInfoPanelLCDMediaSampleRateNumberFormat", @"PhotosUICore");
    [_mediaSampleRateFormatter setPositiveFormat:v30];

    v31 = _mediaSampleRateFormatter;

    [v31 setMultiplier:&unk_1F190DF48];
  }
}

+ (id)localizedFileFormatForItem:(id)a3
{
  v3 = a3;
  v4 = [PXMetadataUtilities codecTypeForItem:v3]- 1;
  if (v4 < 3)
  {
    v5 = &off_1E772CB48[v4];
LABEL_3:
    v6 = PXLocalizedStringFromTable(*v5, @"PhotosUICore");
    goto LABEL_8;
  }

  v7 = [PXMetadataUtilities fileTypeForItem:v3];
  if (v7 < 0x12 && ((0x3C9FFu >> v7) & 1) != 0)
  {
    v5 = &off_1E772CB60[v7];
    goto LABEL_3;
  }

  v6 = 0;
LABEL_8:

  return v6;
}

+ (unint64_t)fileTypeForItem:(id)a3 type:(unint64_t)a4
{
  v5 = a3;
  if ([v5 px_representsBurst])
  {
    v6 = 11;
  }

  else
  {
    v6 = 19;
    switch(a4)
    {
      case 0uLL:
        if ([v5 px_isLivePhoto])
        {
          v6 = 15;
        }

        else
        {
          v6 = 1;
        }

        break;
      case 1uLL:
        if ([v5 px_isLivePhoto])
        {
          v6 = 16;
        }

        else
        {
          v6 = 2;
        }

        break;
      case 2uLL:
        v6 = 0;
        break;
      case 3uLL:
      case 6uLL:
      case 7uLL:
      case 8uLL:
      case 9uLL:
      case 0x12uLL:
        v6 = a4;
        break;
      case 4uLL:
        v6 = 5;
        break;
      case 5uLL:
        v6 = 4;
        break;
      case 0xAuLL:
        if ([v5 px_isTimelapse])
        {
          v6 = 13;
        }

        else
        {
          v6 = 10;
        }

        if ([v5 px_isSloMo])
        {
          v6 = 12;
        }

        break;
      case 0xBuLL:
        v6 = 17;
        break;
      default:
        break;
    }
  }

  return v6;
}

+ (unint64_t)fileTypeForItem:(id)a3
{
  v4 = a3;
  v5 = [a1 fileTypeForItem:v4 type:{objc_msgSend(v4, "px_originalType")}];

  return v5;
}

+ (unint64_t)meteringModeTypeForItem:(id)a3
{
  v3 = [a3 px_meteringMode];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

+ (unint64_t)whiteBalanceTypeForItem:(id)a3
{
  v3 = [a3 px_whiteBalance];
  v4 = [v3 integerValue];
  if (v4 > 23)
  {
    if ((v4 - 1006) <= 0xF && ((1 << (v4 + 18)) & 0xFE7B) != 0)
    {
      v5 = 9;
      goto LABEL_29;
    }

    if (v4 != 24)
    {
LABEL_28:
      v5 = 0;
      goto LABEL_29;
    }

LABEL_26:
    v5 = 4;
    goto LABEL_29;
  }

  if (v4 <= 10)
  {
    if (v4 <= 2)
    {
      if (!v4)
      {
        v5 = 1;
        goto LABEL_29;
      }

      if (v4 != 1)
      {
        if (v4 != 2)
        {
          goto LABEL_28;
        }

        goto LABEL_21;
      }
    }

    else
    {
      if (v4 <= 8)
      {
        if (v4 != 3)
        {
          if (v4 == 4)
          {
            v5 = 5;
            goto LABEL_29;
          }

          goto LABEL_28;
        }

        goto LABEL_26;
      }

      if (v4 != 9)
      {
        v5 = 6;
        goto LABEL_29;
      }
    }

    v5 = 2;
    goto LABEL_29;
  }

  if ((v4 - 17) >= 7)
  {
    if ((v4 - 12) >= 4)
    {
      if (v4 == 11)
      {
        v5 = 7;
        goto LABEL_29;
      }

      goto LABEL_28;
    }

LABEL_21:
    v5 = 3;
    goto LABEL_29;
  }

  v5 = 8;
LABEL_29:

  return v5;
}

+ (unint64_t)flashTypeForItem:(id)a3
{
  v3 = a3;
  if ([v3 px_supportsImageProperties])
  {
    v4 = [v3 px_flash];
    if ([v4 integerValue] == 1)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)processExifMetadataForItem:(id)a3 resultHandler:(id)a4 callbackQueue:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    PXAssertGetLog();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v8;
    v12 = os_log_create(*MEMORY[0x1E69BDDA0], "InfoPanelEXIFMetadataSignPost");
    v13 = os_signpost_id_make_with_pointer(v12, a1);
    v14 = v12;
    v15 = v14;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      v16 = [v11 uuid];
      *buf = 138412290;
      v28 = v16;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "InfoPanelEXIFMetadataProcessing", "beginning exif processing for asset: %@", buf, 0xCu);
    }

    v17 = [v11 photoLibrary];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __78__PXMetadataUtilities_processExifMetadataForItem_resultHandler_callbackQueue___block_invoke;
    v25[3] = &unk_1E774C648;
    v26 = v11;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __78__PXMetadataUtilities_processExifMetadataForItem_resultHandler_callbackQueue___block_invoke_2;
    v19[3] = &unk_1E7745230;
    v24 = v13;
    v20 = v15;
    v21 = v26;
    v22 = v10;
    v23 = v9;
    v18 = v15;
    [v17 performChanges:v25 completionHandler:v19];
  }
}

void __78__PXMetadataUtilities_processExifMetadataForItem_resultHandler_callbackQueue___block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x1E6978648] changeRequestForAsset:*(a1 + 32)];
  [v1 updateExtendedAttributesUsingOriginalMediaMetadata];
}

void __78__PXMetadataUtilities_processExifMetadataForItem_resultHandler_callbackQueue___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = v6;
  v8 = *(a1 + 64);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v7, OS_SIGNPOST_INTERVAL_END, v8, "InfoPanelEXIFMetadataProcessing", "", buf, 2u);
  }

  if ((v5 || (a2 & 1) == 0) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [*(a1 + 40) uuid];
    v11 = [v5 localizedDescription];
    *buf = 138412546;
    v16 = v10;
    v17 = 2112;
    v18 = v11;
    _os_log_error_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to process EXIF metadata for asset: %@ with error: %@", buf, 0x16u);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __78__PXMetadataUtilities_processExifMetadataForItem_resultHandler_callbackQueue___block_invoke_243;
  v12[3] = &unk_1E7748148;
  v9 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = a2;
  dispatch_async(v9, v12);
}

+ (void)requestExifMetadataProcessingIfNeededForItem:(id)a3 onProcessingQueue:(id)a4 withResultHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __104__PXMetadataUtilities_requestExifMetadataProcessingIfNeededForItem_onProcessingQueue_withResultHandler___block_invoke;
  v11[3] = &unk_1E774C2F0;
  v12 = v7;
  v13 = v8;
  v9 = v8;
  v10 = v7;
  dispatch_async(a4, v11);
}

uint64_t __104__PXMetadataUtilities_requestExifMetadataProcessingIfNeededForItem_onProcessingQueue_withResultHandler___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) px_isExtendedPropertiesProcessed])
  {
    v2 = *(*(a1 + 40) + 16);

    return v2();
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = MEMORY[0x1E69E96A0];

    return [PXMetadataUtilities processExifMetadataForItem:v4 resultHandler:v5 callbackQueue:v6];
  }
}

+ (id)originalCreationDateForItem:(id)a3
{
  v3 = a3;
  v4 = [v3 px_originalCreationDate];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [v3 px_creationDate];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [MEMORY[0x1E695DF00] now];
    }

    v6 = v9;
  }

  return v6;
}

@end