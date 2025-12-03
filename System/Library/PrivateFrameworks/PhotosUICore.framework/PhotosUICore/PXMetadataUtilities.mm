@interface PXMetadataUtilities
+ (BOOL)isVisionProAsset:(id)asset;
+ (id)_accessibilityDescriptionForFileType:(unint64_t)type;
+ (id)_apertureNumberFromString:(id)string;
+ (id)_cameraNominalFocalLengthForItem:(id)item;
+ (id)_fileTypeImageForType:(unint64_t)type;
+ (id)_focalLengthFromString:(id)string;
+ (id)_focalLengthStringFromString:(id)string;
+ (id)_formattedApertureStringWithString:(id)string;
+ (id)_formattedDeviceDescriptionForItem:(id)item;
+ (id)_formattedLensDescriptionForItem:(id)item;
+ (id)_loadImageWithName:(id)name;
+ (id)_secondaryFormattedLensDescriptionForItem:(id)item;
+ (id)cameraCaptureDeviceDisplayStringForItem:(id)item;
+ (id)cameraSettingsDisplayStringsForItem:(id)item;
+ (id)cameraSettingsForItem:(id)item;
+ (id)fileTypeImageForType:(unint64_t)type;
+ (id)flashImageForType:(unint64_t)type;
+ (id)hardwareDisplayStringsForItem:(id)item;
+ (id)localizedFileFormatForItem:(id)item;
+ (id)megaPixelsDisplayStringForItem:(id)item isAccessibility:(BOOL)accessibility;
+ (id)meteringModeImageForType:(unint64_t)type;
+ (id)originalCreationDateForItem:(id)item;
+ (id)resolutionDisplayStringForItem:(id)item isAccessibility:(BOOL)accessibility;
+ (id)semanticStylesDisplayStringForItem:(id)item;
+ (id)symbolSystemNamesForItem:(id)item;
+ (id)whiteBalanceImageForType:(unint64_t)type;
+ (int64_t)_cameraDeviceForItem:(id)item;
+ (unint64_t)codecTypeForItem:(id)item;
+ (unint64_t)fileTypeForItem:(id)item;
+ (unint64_t)fileTypeForItem:(id)item type:(unint64_t)type;
+ (unint64_t)flashTypeForItem:(id)item;
+ (unint64_t)meteringModeTypeForItem:(id)item;
+ (unint64_t)whiteBalanceTypeForItem:(id)item;
+ (void)_addDualCaptureBadgeIfNeededForItem:(id)item toSymbols:(id)symbols;
+ (void)processExifMetadataForItem:(id)item resultHandler:(id)handler callbackQueue:(id)queue;
+ (void)requestExifMetadataProcessingIfNeededForItem:(id)item onProcessingQueue:(id)queue withResultHandler:(id)handler;
@end

@implementation PXMetadataUtilities

+ (id)semanticStylesDisplayStringForItem:(id)item
{
  itemCopy = item;
  if (objc_opt_respondsToSelector())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([itemCopy fetchPropertySetsIfNeeded], v4 = objc_msgSend(itemCopy, "currentSmartStyleCast"), v4))
    {
      v5 = [MEMORY[0x1E69C4248] adjustmentStyleCastDisplayName:v4];
      localizedUppercaseString = [v5 localizedUppercaseString];
    }

    else
    {
      localizedUppercaseString = 0;
    }

    px_semanticStylePreset = [itemCopy px_semanticStylePreset];
    v8 = px_semanticStylePreset;
    if (!localizedUppercaseString && px_semanticStylePreset)
    {
      if ([px_semanticStylePreset integerValue])
      {
        v9 = CEKDisplayStringForSemanticStyleMakerPreset();
        localizedUppercaseString = [v9 localizedUppercaseString];
      }

      else
      {
        localizedUppercaseString = 0;
      }
    }
  }

  else
  {
    localizedUppercaseString = 0;
  }

  return localizedUppercaseString;
}

+ (BOOL)isVisionProAsset:(id)asset
{
  assetCopy = asset;
  px_make = [assetCopy px_make];
  px_model = [assetCopy px_model];

  lowercaseString = [px_make lowercaseString];
  v7 = [lowercaseString isEqualToString:@"apple"];

  v8 = 0;
  if (v7 && px_model)
  {
    lowercaseString2 = [px_model lowercaseString];
    v8 = [lowercaseString2 containsString:@"vision pro"];
  }

  return v8;
}

+ (void)_addDualCaptureBadgeIfNeededForItem:(id)item toSymbols:(id)symbols
{
  symbolsCopy = symbols;
  if ([item px_isFrontRear])
  {
    v5 = [PXMetadataDisplayItem alloc];
    v6 = PXLocalizedStringFromTable(@"PXInfoPanelSymbolAXDescriptionFrontBack", @"PhotosUICore");
    v7 = [(PXMetadataDisplayItem *)v5 initWithContent:@"person.crop.pip" accessibilityDescription:v6 accessibilityValue:0 accessibilityIdentifier:@"com.apple.photos.infoPanel.exif.symbol.frontrear" accessoryImageSystemName:0];
    [symbolsCopy addObject:v7];
  }
}

+ (id)symbolSystemNamesForItem:(id)item
{
  itemCopy = item;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([self flashTypeForItem:itemCopy] == 2)
  {
    v6 = [PXMetadataDisplayItem alloc];
    v7 = PXLocalizedStringFromTable(@"PXInfoPanelSymbolAXDescriptionFlash", @"PhotosUICore");
    v8 = [(PXMetadataDisplayItem *)v6 initWithContent:@"bolt.circle" accessibilityDescription:v7 accessibilityValue:0 accessibilityIdentifier:@"com.apple.photos.infoPanel.exif.symbol.flash.fired" accessoryImageSystemName:0];
    [v5 addObject:v8];
  }

  v9 = [self codecTypeForItem:itemCopy];
  if (v9 == 1)
  {
    v10 = [PXMetadataDisplayItem alloc];
    v11 = PXLocalizedStringFromTable(@"PXInfoPanelEXIFVideoProResBadge", @"PhotosUICore");
    v12 = [(PXMetadataDisplayItem *)v10 initWithContent:@"video.circle.fill" accessibilityDescription:v11 accessibilityValue:0 accessibilityIdentifier:@"com.apple.photos.infoPanel.exif.symbol.proRes" accessoryImageSystemName:0];
    [v5 addObject:v12];
  }

  if ([itemCopy px_isCinematicVideo])
  {
    v13 = [PXMetadataDisplayItem alloc];
    v14 = PXLocalizedStringFromTable(@"PXInfoPanelSymbolAXDescriptionCinematicVideo", @"PhotosUICore");
    v15 = [(PXMetadataDisplayItem *)v13 initWithContent:@"cinematic.video" accessibilityDescription:v14 accessibilityValue:0 accessibilityIdentifier:@"com.apple.photos.infoPanel.exif.symbol.cinematicVideo" accessoryImageSystemName:0];
    [v5 addObject:v15];

    goto LABEL_12;
  }

  if ([itemCopy px_isActionModeVideo])
  {
    v16 = [PXMetadataDisplayItem alloc];
    v17 = PXLocalizedStringFromTable(@"PXInfoPanelSymbolAXDescriptionActionModeVideo", @"PhotosUICore");
    v18 = @"figure.run.motion.circle.fill";
    v19 = @"com.apple.photos.infoPanel.exif.symbol.actionMode";
    goto LABEL_9;
  }

  if (v9 != 1)
  {
    if ([itemCopy px_isDepthEffect])
    {
      px_isLivePhoto = [itemCopy px_isLivePhoto];
      v23 = [PXMetadataDisplayItem alloc];
      if (px_isLivePhoto)
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

    else if ([itemCopy px_representsBurst])
    {
      v23 = [PXMetadataDisplayItem alloc];
      v24 = PXLocalizedStringFromTable(@"PXInfoPanelSymbolAXDescriptionBurst", @"PhotosUICore");
      v25 = @"square.stack.3d.down.forward";
      v26 = @"com.apple.photos.infoPanel.exif.symbol.burst";
    }

    else if ([itemCopy px_isPanorama])
    {
      v23 = [PXMetadataDisplayItem alloc];
      v24 = PXLocalizedStringFromTable(@"PXInfoPanelSymbolAXDescriptionPano", @"PhotosUICore");
      v25 = @"pano";
      v26 = @"com.apple.photos.infoPanel.exif.symbol.pano";
    }

    else if ([itemCopy px_isSelfie])
    {
      v23 = [PXMetadataDisplayItem alloc];
      v24 = PXLocalizedStringFromTable(@"PXInfoPanelSymbolAXDescriptionSelfie", @"PhotosUICore");
      v25 = @"person.crop.square";
      v26 = @"com.apple.photos.infoPanel.exif.symbol.selfie";
    }

    else if ([itemCopy px_isLivePhoto])
    {
      v23 = [PXMetadataDisplayItem alloc];
      v24 = PXLocalizedStringFromTable(@"PXInfoPanelSymbolAXDescriptionLivePhoto", @"PhotosUICore");
      v25 = @"livephoto";
      v26 = @"com.apple.photos.infoPanel.exif.symbol.livePhoto";
    }

    else if ([itemCopy px_isScreenshot])
    {
      v23 = [PXMetadataDisplayItem alloc];
      v24 = PXLocalizedStringFromTable(@"PXInfoPanelSymbolAXDescriptionScreenshot", @"PhotosUICore");
      v25 = @"camera.viewfinder";
      v26 = @"com.apple.photos.infoPanel.exif.symbol.screenshot";
    }

    else if ([itemCopy px_isScreenRecording])
    {
      v23 = [PXMetadataDisplayItem alloc];
      v24 = PXLocalizedStringFromTable(@"PXInfoPanelSymbolAXDescriptionScreenRecording", @"PhotosUICore");
      v25 = @"record.circle";
      v26 = @"com.apple.photos.infoPanel.exif.symbol.screenRecording";
    }

    else if ([itemCopy px_isSloMo])
    {
      v23 = [PXMetadataDisplayItem alloc];
      v24 = PXLocalizedStringFromTable(@"PXInfoPanelSymbolAXDescriptionSloMo", @"PhotosUICore");
      v25 = @"slowmo";
      v26 = @"com.apple.photos.infoPanel.exif.symbol.slomo";
    }

    else if ([itemCopy px_isTimelapse])
    {
      v23 = [PXMetadataDisplayItem alloc];
      v24 = PXLocalizedStringFromTable(@"PXInfoPanelSymbolAXDescriptionTimelapse", @"PhotosUICore");
      v25 = @"timelapse";
      v26 = @"com.apple.photos.infoPanel.exif.symbol.timelapse";
    }

    else
    {
      if (![itemCopy px_isVideo])
      {
LABEL_38:
        if (![itemCopy px_isSpatialMedia])
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
        [self _addDualCaptureBadgeIfNeededForItem:itemCopy toSymbols:v5];
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

+ (id)cameraSettingsDisplayStringsForItem:(id)item
{
  v53[5] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v5 = [self cameraSettingsForItem:itemCopy];
  if (v5)
  {
    if ([itemCopy px_isVideo])
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

    else if ([itemCopy px_isAudio])
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
      px_shotWithNightMode = [itemCopy px_shotWithNightMode];
      v23 = @"camera.nightmode";
      if (!px_shotWithNightMode)
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

+ (id)_formattedApertureStringWithString:(id)string
{
  stringCopy = string;
  v4 = [stringCopy stringByReplacingOccurrencesOfString:@"f/" withString:@"ƒ" options:1 range:{0, objc_msgSend(stringCopy, "length")}];

  return v4;
}

+ (id)_apertureNumberFromString:(id)string
{
  v4 = [string componentsSeparatedByString:@" "];
  v5 = [v4 indexOfObjectPassingTest:&__block_literal_global_633];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v7 = [v4 objectAtIndexedSubscript:v5];
    v8 = [v7 substringFromIndex:2];
    v9 = [self _numberStringResolvingDecimalSeparatorLocalization:v8];

    [v9 doubleValue];
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  }

  return v6;
}

+ (id)_focalLengthStringFromString:(id)string
{
  v3 = [string componentsSeparatedByString:@" "];
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

+ (id)_focalLengthFromString:(id)string
{
  v4 = [string componentsSeparatedByString:@" "];
  v5 = [v4 indexOfObjectPassingTest:&__block_literal_global_629];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v7 = [v4 objectAtIndexedSubscript:v5];
    v8 = [self _numberStringResolvingDecimalSeparatorLocalization:v7];

    v9 = MEMORY[0x1E696AD98];
    [v8 doubleValue];
    v6 = [v9 numberWithDouble:?];
  }

  return v6;
}

+ (id)_secondaryFormattedLensDescriptionForItem:(id)item
{
  itemCopy = item;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = itemCopy;

    if (v4)
    {
      [v4 fetchPropertySetsIfNeeded];
    }
  }

  else
  {

    v4 = 0;
  }

  px_model = [itemCopy px_model];
  if ([itemCopy px_isFrontRear])
  {
    if (px_model)
    {
      v6 = [_apertureFormatter stringForObjectValue:&unk_1F190DF58];
      v7 = [v6 stringByReplacingOccurrencesOfString:@"/" withString:&stru_1F1741150];

      v8 = [PXMetadataUtilitiesCameraDevice frontCameraDataForDeviceName:px_model];
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

+ (id)_formattedLensDescriptionForItem:(id)item
{
  itemCopy = item;
  px_make = [itemCopy px_make];
  px_model = [itemCopy px_model];
  px_lensModel = [itemCopy px_lensModel];
  lowercaseString = [px_make lowercaseString];
  v9 = [lowercaseString isEqualToString:@"apple"];

  if ((v9 & 1) == 0)
  {
    if (px_lensModel)
    {
      [self _formattedApertureStringWithString:px_lensModel];
    }

    else
    {
      PXLocalizedStringFromTable(@"PXInfoPanelLCDUnknownLens", @"PhotosUICore");
    }
    v32 = ;
    goto LABEL_38;
  }

  v10 = px_lensModel;
  v11 = v10;
  if (!px_model || !v10)
  {
    goto LABEL_36;
  }

  v12 = [v10 stringByReplacingOccurrencesOfString:px_model withString:&stru_1F1741150 options:1 range:{0, objc_msgSend(v10, "length")}];

  v13 = [self _apertureNumberFromString:v12];
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

  v19 = [self _focalLengthFromString:v12];
  if (!_focalLengthFormatter)
  {
    v20 = objc_alloc_init(PXFocalDistanceFormatter);
    v21 = _focalLengthFormatter;
    _focalLengthFormatter = v20;
  }

  v69 = v18;
  v66 = [self _cameraNominalFocalLengthForItem:itemCopy];
  v22 = +[PXMetadataUtilitiesCameraDevice cameraDeviceForDeviceName:camera:realLensFocalLength:nominalLensFocalLength:](PXMetadataUtilitiesCameraDevice, "cameraDeviceForDeviceName:camera:realLensFocalLength:nominalLensFocalLength:", px_model, [self _cameraDeviceForItem:itemCopy], v19, v66);
  v23 = v19;
  v67 = v19;
  v68 = v13;
  v65 = v22;
  if (!v22)
  {
    px_digitalZoomRatio = [itemCopy px_digitalZoomRatio];
    px_focalLengthIn35mm = [itemCopy px_focalLengthIn35mm];
    v34 = [PXMetadataUtilities cameraCaptureDeviceDisplayStringForItem:itemCopy];
    v63 = px_focalLengthIn35mm;
    if (!v23 || !px_focalLengthIn35mm)
    {
      v31 = v12;
      v27 = px_digitalZoomRatio;
      if (!v34)
      {
LABEL_31:
        capitalizedString = [v31 capitalizedString];

        v50 = PXLocalizedStringFromTable(@"PXInfoPanelLCDFaceTimeCamera", @"PhotosUICore");
        v51 = [capitalizedString stringByReplacingOccurrencesOfString:@"Facetime" withString:v50];

        v52 = PXLocalizedStringFromTable(@"PXInfoPanelLCDFrontiSightCamera", @"PhotosUICore");
        v53 = [v51 stringByReplacingOccurrencesOfString:@"Isight" withString:v52];

        v54 = PXLocalizedStringFromTable(@"PXInfoPanelLCDFrontTrueDepthCamera", @"PhotosUICore");
        v55 = [v53 stringByReplacingOccurrencesOfString:@"Truedepth" withString:v54];

        v56 = [v55 stringByReplacingOccurrencesOfString:@"Mm" withString:@"mm"];

        v31 = [v56 stringByReplacingOccurrencesOfString:@"Camera " withString:@"Camera — "];

        v27 = px_digitalZoomRatio;
        v12 = 0;
        goto LABEL_32;
      }

LABEL_20:
      v12 = v34;
LABEL_32:
      v30 = v69;
      displayName = v63;
      goto LABEL_33;
    }

    v35 = px_focalLengthIn35mm;
    v61 = v34;
    if (px_digitalZoomRatio && ([px_digitalZoomRatio doubleValue], v35 = px_focalLengthIn35mm, v36 > 0.0))
    {
      v37 = MEMORY[0x1E696AD98];
      [px_focalLengthIn35mm doubleValue];
      v39 = v38;
      [px_digitalZoomRatio doubleValue];
      v41 = [v37 numberWithDouble:v39 / v40];
    }

    else
    {
      v41 = v35;
    }

    v42 = v41;
    v62 = [self _focalLengthStringFromString:v12];
    v43 = _focalLengthFormatter;
    v44 = MEMORY[0x1E696AD98];
    [v42 floatValue];
    v46 = [v44 numberWithLong:llroundf(v45)];
    v47 = [v43 stringForObjectValue:v46];

    if (v61 && v62 && v47)
    {
      v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ — %@ %@", v61, v47, v69];
      v27 = px_digitalZoomRatio;
    }

    else
    {
      v27 = px_digitalZoomRatio;
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
  focalLengthIn35mm = [v22 focalLengthIn35mm];
  v27 = [v25 stringForObjectValue:focalLengthIn35mm];

  v28 = MEMORY[0x1E696AEC0];
  displayName = [v24 displayName];
  v30 = v69;
  v31 = [v28 stringWithFormat:@"%@ — %@ %@", displayName, v27, v69];
LABEL_33:

  v57 = [self _formattedApertureStringWithString:v31];

  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v11 = [v57 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

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

+ (id)_formattedDeviceDescriptionForItem:(id)item
{
  itemCopy = item;
  px_formattedCameraModel = [itemCopy px_formattedCameraModel];
  if (!px_formattedCameraModel)
  {
    if ([itemCopy px_isScreenshot])
    {
      v5 = @"PXInfoPanelLCDScreenshot";
    }

    else if ([itemCopy px_isScreenRecording])
    {
      v5 = @"PXInfoPanelLCDScreenRecording";
    }

    else
    {
      v5 = @"PXInfoPanelLCDUnknownCamera";
    }

    px_formattedCameraModel = PXLocalizedStringFromTable(v5, @"PhotosUICore");
  }

  return px_formattedCameraModel;
}

+ (id)hardwareDisplayStringsForItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [itemCopy fetchPropertySetsIfNeeded];
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v6 = [self _formattedDeviceDescriptionForItem:itemCopy];
  [dictionary setObject:v6 forKeyedSubscript:PXMetadataUtilitiesHardwareKeyDevice];

  v7 = [self _formattedLensDescriptionForItem:itemCopy];
  [dictionary setObject:v7 forKeyedSubscript:PXMetadataUtilitiesHardwareKeyFormattedLens];

  v8 = [self _secondaryFormattedLensDescriptionForItem:itemCopy];
  [dictionary setObject:v8 forKeyedSubscript:PXMetadataUtilitiesHardwareKeySecondaryFormattedLens];

  px_lensModel = [itemCopy px_lensModel];
  [dictionary setObject:px_lensModel forKeyedSubscript:PXMetadataUtilitiesHardwareKeyUnformattedLens];

  return dictionary;
}

+ (id)resolutionDisplayStringForItem:(id)item isAccessibility:(BOOL)accessibility
{
  accessibilityCopy = accessibility;
  px_resolution = [item px_resolution];
  v7 = v6;
  v8 = [MEMORY[0x1E696AD98] numberWithLong:px_resolution];
  v9 = [MEMORY[0x1E696AD98] numberWithLong:v7];
  [MEMORY[0x1E696ADA0] localizedStringFromNumber:v8 numberStyle:0];
  objc_claimAutoreleasedReturnValue();
  [MEMORY[0x1E696ADA0] localizedStringFromNumber:v9 numberStyle:0];
  objc_claimAutoreleasedReturnValue();
  if (accessibilityCopy)
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

+ (int64_t)_cameraDeviceForItem:(id)item
{
  itemCopy = item;
  if (!objc_opt_class() || (objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = 0;
    integerValue = 0;
    v6 = itemCopy;
LABEL_10:

    goto LABEL_11;
  }

  v4 = itemCopy;

  if (v4)
  {
    [v4 fetchPropertySetsIfNeeded];
    originalImageProperties = [v4 originalImageProperties];
    v6 = [originalImageProperties objectForKeyedSubscript:*MEMORY[0x1E696DE30]];

    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69867B8]];
    v8 = v7;
    if (v7)
    {
      integerValue = [v7 integerValue];
    }

    else
    {
      integerValue = 0;
    }

    goto LABEL_10;
  }

  integerValue = 0;
LABEL_11:

  return integerValue;
}

+ (id)_cameraNominalFocalLengthForItem:(id)item
{
  itemCopy = item;
  if (!objc_opt_class() || (objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = 0;
    v8 = 0;
    v6 = itemCopy;
LABEL_10:

    goto LABEL_11;
  }

  v4 = itemCopy;

  if (v4)
  {
    [v4 fetchPropertySetsIfNeeded];
    originalImageProperties = [v4 originalImageProperties];
    v6 = [originalImageProperties objectForKeyedSubscript:*MEMORY[0x1E696DE30]];

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

+ (id)cameraCaptureDeviceDisplayStringForItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = itemCopy;
    [v4 fetchPropertySetsIfNeeded];
    originalImageProperties = [v4 originalImageProperties];
    v6 = [originalImageProperties objectForKeyedSubscript:*MEMORY[0x1E696DE30]];

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

+ (id)megaPixelsDisplayStringForItem:(id)item isAccessibility:(BOOL)accessibility
{
  accessibilityCopy = accessibility;
  itemCopy = item;
  px_resolution = [itemCopy px_resolution];
  v8 = v7;
  if ([itemCopy px_isImage])
  {
    *v9.i64 = px_resolution * v8 / 1000000.0;
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
    if (accessibilityCopy)
    {
      v21 = 5;
    }

    else
    {
      v21 = 1;
    }

    if (accessibilityCopy)
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
  if ([itemCopy px_isVideo])
  {
    if (px_resolution >= v8)
    {
      v13 = v8;
    }

    else
    {
      v13 = px_resolution;
    }

    if (v13 <= 1439)
    {
      switch(v13)
      {
        case 480:
          if (accessibilityCopy)
          {
            v14 = @"PXInfoPanelVideoResolutionAX480p";
          }

          else
          {
            v14 = @"PXInfoPanelVideoResolution480p";
          }

          break;
        case 720:
          if (accessibilityCopy)
          {
            v14 = @"PXInfoPanelVideoResolutionAX720p";
          }

          else
          {
            v14 = @"PXInfoPanelVideoResolution720p";
          }

          break;
        case 1080:
          if (accessibilityCopy)
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
        if (accessibilityCopy)
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

        if (accessibilityCopy)
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
      if (accessibilityCopy)
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

      if (accessibilityCopy)
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

+ (id)fileTypeImageForType:(unint64_t)type
{
  v5 = [self _fileTypeImageForType:?];
  v6 = [self _accessibilityDescriptionForFileType:type];
  v7 = [[PXMetadataDisplayItem alloc] initWithContent:v5 accessibilityDescription:v6 accessibilityValue:0 accessibilityIdentifier:@"com.apple.photos.infoPanel.exif.fileType" accessoryImageSystemName:0];

  return v7;
}

+ (unint64_t)codecTypeForItem:(id)item
{
  itemCopy = item;
  if ([itemCopy px_isProRes])
  {
    v4 = 1;
  }

  else if ([itemCopy px_isH264])
  {
    v4 = 2;
  }

  else if ([itemCopy px_isHEVC])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_fileTypeImageForType:(unint64_t)type
{
  if (type > 0x12)
  {
    v3 = @"LCD-Filetype-JPEG";
  }

  else
  {
    v3 = off_1E772CCB8[type];
  }

  return [self _loadImageWithName:v3];
}

+ (id)_accessibilityDescriptionForFileType:(unint64_t)type
{
  if (type > 0x10)
  {
    v4 = @"PXFileTypeAXDescriptionUnknown";
  }

  else
  {
    v4 = off_1E772CC30[type];
  }

  v5 = PXLocalizedStringFromTable(v4, @"PhotosUICore");

  return v5;
}

+ (id)meteringModeImageForType:(unint64_t)type
{
  v4 = @"camera.metering.unknown";
  if (type > 3)
  {
    if (type > 5)
    {
      if (type == 6)
      {
        v4 = @"camera.metering.partial";
        return [MEMORY[0x1E69DCAB8] systemImageNamed:v4];
      }

      if (type != 255)
      {
        goto LABEL_13;
      }
    }

    else if (type == 4)
    {
      v4 = @"camera.metering.multispot";
    }

    else
    {
      v4 = @"camera.metering.matrix";
    }
  }

  else if (type > 1)
  {
    if (type == 2)
    {
      v4 = @"camera.metering.center.weighted";
    }

    else
    {
      v4 = @"camera.metering.spot";
    }
  }

  else if (type)
  {
    if (type == 1)
    {
      v4 = @"camera.metering.center.weighted.average";
      return [MEMORY[0x1E69DCAB8] systemImageNamed:v4];
    }

LABEL_13:
    v4 = @"camera.metering.none";
  }

  return [MEMORY[0x1E69DCAB8] systemImageNamed:v4];
}

+ (id)whiteBalanceImageForType:(unint64_t)type
{
  if (type - 2 > 7)
  {
    v3 = @"LCD-WB";
  }

  else
  {
    v3 = off_1E772CBF0[type - 2];
  }

  return [self _loadImageWithName:v3];
}

+ (id)flashImageForType:(unint64_t)type
{
  if (type == 2)
  {
    v5 = [self _loadImageWithName:{@"LCD-Flash-Fired", v3}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_loadImageWithName:(id)name
{
  v3 = MEMORY[0x1E696AAE8];
  nameCopy = name;
  v5 = [v3 bundleWithIdentifier:@"com.apple.PhotosUICore"];
  v6 = [MEMORY[0x1E69DCAB8] imageNamed:nameCopy inBundle:v5 withConfiguration:0];

  return v6;
}

+ (id)cameraSettingsForItem:(id)item
{
  itemCopy = item;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v5 = PXLocalizedStringFromTable(@"PXInfoPanelMissingValuePlaceholder", @"PhotosUICore");
  if (cameraSettingsForItem__onceToken != -1)
  {
    dispatch_once(&cameraSettingsForItem__onceToken, &__block_literal_global_1132);
  }

  px_ISORating = [itemCopy px_ISORating];
  v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", px_ISORating];
  px_focalLengthIn35mm = [itemCopy px_focalLengthIn35mm];
  v7 = px_focalLengthIn35mm;
  if (px_focalLengthIn35mm)
  {
    px_focalLength = px_focalLengthIn35mm;
  }

  else
  {
    px_focalLength = [itemCopy px_focalLength];
  }

  v45 = px_focalLength;

  px_aperture = [itemCopy px_aperture];
  v10 = MEMORY[0x1E696AEC0];
  v11 = [_apertureFormatter stringForObjectValue:px_aperture];
  v41 = [v10 stringWithFormat:@"f %@", v11];

  px_shutterSpeed = [itemCopy px_shutterSpeed];
  px_exposureBias = [itemCopy px_exposureBias];
  v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ e v", px_exposureBias];
  px_FPS = [itemCopy px_FPS];
  px_duration = [itemCopy px_duration];
  px_bitRate = [itemCopy px_bitRate];
  v15 = MEMORY[0x1E696AD98];
  px_sampleRate = [itemCopy px_sampleRate];
  [px_sampleRate doubleValue];
  v17 = [v15 numberWithDouble:?];

  v18 = px_ISORating;
  if (px_ISORating)
  {
    v19 = [_isoFormatter stringForObjectValue:px_ISORating];
    [dictionary setObject:v19 forKeyedSubscript:@"iso"];

    v20 = v42;
  }

  else
  {
    [dictionary setObject:v5 forKeyedSubscript:@"iso"];
    v20 = v5;
  }

  [dictionary setObject:v20 forKeyedSubscript:@"iso.ax"];
  if (v45)
  {
    v21 = [_focalLengthFormatter stringForObjectValue:?];
    [dictionary setObject:v21 forKeyedSubscript:@"focalLength"];

    if (px_exposureBias)
    {
LABEL_11:
      v22 = [_exposureFormatter stringForObjectValue:px_exposureBias];
      [dictionary setObject:v22 forKeyedSubscript:@"exposure"];

      v23 = v40;
      goto LABEL_14;
    }
  }

  else
  {
    [dictionary setObject:v5 forKeyedSubscript:@"focalLength"];
    if (px_exposureBias)
    {
      goto LABEL_11;
    }
  }

  [dictionary setObject:v5 forKeyedSubscript:@"exposure"];
  v23 = v5;
LABEL_14:
  [dictionary setObject:v23 forKeyedSubscript:@"exposure.ax"];
  if (px_aperture)
  {
    v24 = [_apertureFormatter stringForObjectValue:px_aperture];
    [dictionary setObject:v24 forKeyedSubscript:@"aperture"];

    v25 = v41;
  }

  else
  {
    [dictionary setObject:v5 forKeyedSubscript:@"aperture"];
    v25 = v5;
  }

  [dictionary setObject:v25 forKeyedSubscript:@"aperture.ax"];
  if (px_shutterSpeed)
  {
    v26 = [_shutterSpeedFormatter stringForObjectValue:px_shutterSpeed];
    [dictionary setObject:v26 forKeyedSubscript:@"shutterSpeed"];

    v27 = [_shutterSpeedAXFormatter stringForObjectValue:px_shutterSpeed];
    [dictionary setObject:v27 forKeyedSubscript:@"shutterSpeed.ax"];

    if (px_bitRate)
    {
      goto LABEL_19;
    }

LABEL_22:
    [dictionary setObject:v5 forKeyedSubscript:@"bitrate"];
    if (v17)
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  [dictionary setObject:v5 forKeyedSubscript:@"shutterSpeed"];
  [dictionary setObject:v5 forKeyedSubscript:@"shutterSpeed.ax"];
  if (!px_bitRate)
  {
    goto LABEL_22;
  }

LABEL_19:
  v28 = [_mediaBitrateFormatter stringFromNumber:px_bitRate];
  [dictionary setObject:v28 forKeyedSubscript:@"bitrate"];

  if (v17)
  {
LABEL_20:
    v29 = [_mediaSampleRateFormatter stringFromNumber:v17];
    [dictionary setObject:v29 forKeyedSubscript:@"sampleRate"];

    goto LABEL_24;
  }

LABEL_23:
  [dictionary setObject:v5 forKeyedSubscript:@"sampleRate"];
LABEL_24:
  if (px_FPS)
  {
    v30 = [_mediaFPSFormatter stringFromNumber:?];
    [dictionary setObject:v30 forKeyedSubscript:@"fps"];
  }

  else
  {
    [dictionary setObject:v5 forKeyedSubscript:@"fps"];
  }

  v31 = px_duration;
  if (px_duration)
  {
    [px_duration doubleValue];
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
    [dictionary setObject:v37 forKeyedSubscript:@"duration"];

    v31 = px_duration;
    v18 = px_ISORating;
  }

  else
  {
    [dictionary setObject:v5 forKeyedSubscript:@"duration"];
  }

  return dictionary;
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

+ (id)localizedFileFormatForItem:(id)item
{
  itemCopy = item;
  v4 = [PXMetadataUtilities codecTypeForItem:itemCopy]- 1;
  if (v4 < 3)
  {
    v5 = &off_1E772CB48[v4];
LABEL_3:
    v6 = PXLocalizedStringFromTable(*v5, @"PhotosUICore");
    goto LABEL_8;
  }

  v7 = [PXMetadataUtilities fileTypeForItem:itemCopy];
  if (v7 < 0x12 && ((0x3C9FFu >> v7) & 1) != 0)
  {
    v5 = &off_1E772CB60[v7];
    goto LABEL_3;
  }

  v6 = 0;
LABEL_8:

  return v6;
}

+ (unint64_t)fileTypeForItem:(id)item type:(unint64_t)type
{
  itemCopy = item;
  if ([itemCopy px_representsBurst])
  {
    typeCopy = 11;
  }

  else
  {
    typeCopy = 19;
    switch(type)
    {
      case 0uLL:
        if ([itemCopy px_isLivePhoto])
        {
          typeCopy = 15;
        }

        else
        {
          typeCopy = 1;
        }

        break;
      case 1uLL:
        if ([itemCopy px_isLivePhoto])
        {
          typeCopy = 16;
        }

        else
        {
          typeCopy = 2;
        }

        break;
      case 2uLL:
        typeCopy = 0;
        break;
      case 3uLL:
      case 6uLL:
      case 7uLL:
      case 8uLL:
      case 9uLL:
      case 0x12uLL:
        typeCopy = type;
        break;
      case 4uLL:
        typeCopy = 5;
        break;
      case 5uLL:
        typeCopy = 4;
        break;
      case 0xAuLL:
        if ([itemCopy px_isTimelapse])
        {
          typeCopy = 13;
        }

        else
        {
          typeCopy = 10;
        }

        if ([itemCopy px_isSloMo])
        {
          typeCopy = 12;
        }

        break;
      case 0xBuLL:
        typeCopy = 17;
        break;
      default:
        break;
    }
  }

  return typeCopy;
}

+ (unint64_t)fileTypeForItem:(id)item
{
  itemCopy = item;
  v5 = [self fileTypeForItem:itemCopy type:{objc_msgSend(itemCopy, "px_originalType")}];

  return v5;
}

+ (unint64_t)meteringModeTypeForItem:(id)item
{
  px_meteringMode = [item px_meteringMode];
  unsignedIntegerValue = [px_meteringMode unsignedIntegerValue];

  return unsignedIntegerValue;
}

+ (unint64_t)whiteBalanceTypeForItem:(id)item
{
  px_whiteBalance = [item px_whiteBalance];
  integerValue = [px_whiteBalance integerValue];
  if (integerValue > 23)
  {
    if ((integerValue - 1006) <= 0xF && ((1 << (integerValue + 18)) & 0xFE7B) != 0)
    {
      v5 = 9;
      goto LABEL_29;
    }

    if (integerValue != 24)
    {
LABEL_28:
      v5 = 0;
      goto LABEL_29;
    }

LABEL_26:
    v5 = 4;
    goto LABEL_29;
  }

  if (integerValue <= 10)
  {
    if (integerValue <= 2)
    {
      if (!integerValue)
      {
        v5 = 1;
        goto LABEL_29;
      }

      if (integerValue != 1)
      {
        if (integerValue != 2)
        {
          goto LABEL_28;
        }

        goto LABEL_21;
      }
    }

    else
    {
      if (integerValue <= 8)
      {
        if (integerValue != 3)
        {
          if (integerValue == 4)
          {
            v5 = 5;
            goto LABEL_29;
          }

          goto LABEL_28;
        }

        goto LABEL_26;
      }

      if (integerValue != 9)
      {
        v5 = 6;
        goto LABEL_29;
      }
    }

    v5 = 2;
    goto LABEL_29;
  }

  if ((integerValue - 17) >= 7)
  {
    if ((integerValue - 12) >= 4)
    {
      if (integerValue == 11)
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

+ (unint64_t)flashTypeForItem:(id)item
{
  itemCopy = item;
  if ([itemCopy px_supportsImageProperties])
  {
    px_flash = [itemCopy px_flash];
    if ([px_flash integerValue] == 1)
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

+ (void)processExifMetadataForItem:(id)item resultHandler:(id)handler callbackQueue:(id)queue
{
  v29 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  handlerCopy = handler;
  queueCopy = queue;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    PXAssertGetLog();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = itemCopy;
    v12 = os_log_create(*MEMORY[0x1E69BDDA0], "InfoPanelEXIFMetadataSignPost");
    v13 = os_signpost_id_make_with_pointer(v12, self);
    v14 = v12;
    v15 = v14;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      uuid = [v11 uuid];
      *buf = 138412290;
      v28 = uuid;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "InfoPanelEXIFMetadataProcessing", "beginning exif processing for asset: %@", buf, 0xCu);
    }

    photoLibrary = [v11 photoLibrary];
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
    v22 = queueCopy;
    v23 = handlerCopy;
    v18 = v15;
    [photoLibrary performChanges:v25 completionHandler:v19];
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

+ (void)requestExifMetadataProcessingIfNeededForItem:(id)item onProcessingQueue:(id)queue withResultHandler:(id)handler
{
  itemCopy = item;
  handlerCopy = handler;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __104__PXMetadataUtilities_requestExifMetadataProcessingIfNeededForItem_onProcessingQueue_withResultHandler___block_invoke;
  v11[3] = &unk_1E774C2F0;
  v12 = itemCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = itemCopy;
  dispatch_async(queue, v11);
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

+ (id)originalCreationDateForItem:(id)item
{
  itemCopy = item;
  px_originalCreationDate = [itemCopy px_originalCreationDate];
  v5 = px_originalCreationDate;
  if (px_originalCreationDate)
  {
    v6 = px_originalCreationDate;
  }

  else
  {
    px_creationDate = [itemCopy px_creationDate];
    v8 = px_creationDate;
    if (px_creationDate)
    {
      v9 = px_creationDate;
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