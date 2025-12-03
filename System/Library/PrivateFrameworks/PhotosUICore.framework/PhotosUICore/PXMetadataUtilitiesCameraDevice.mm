@interface PXMetadataUtilitiesCameraDevice
+ (id)cameraDeviceForDeviceName:(id)name camera:(int64_t)camera realLensFocalLength:(id)length nominalLensFocalLength:(id)focalLength;
+ (id)cameraForFocalLength:(id)length deviceName:(id)name;
+ (id)frontCameraDataForDeviceName:(id)name;
+ (id)supportedDevices;
- (BOOL)isEqual:(id)equal;
- (PXMetadataUtilitiesCameraDevice)init;
- (PXMetadataUtilitiesCameraDevice)initWithDisplayName:(id)name focalLength:(id)length focalLengthIn35mm:(id)in35mm;
@end

@implementation PXMetadataUtilitiesCameraDevice

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    displayName = [v5 displayName];
    displayName2 = [(PXMetadataUtilitiesCameraDevice *)self displayName];
    if (displayName == displayName2 || [displayName isEqualToString:displayName2])
    {
      focalLength = [v5 focalLength];
      focalLength2 = [(PXMetadataUtilitiesCameraDevice *)self focalLength];
      if (focalLength == focalLength2)
      {
        focalLengthIn35mm = [v5 focalLengthIn35mm];
        focalLengthIn35mm2 = [(PXMetadataUtilitiesCameraDevice *)self focalLengthIn35mm];
        v10 = focalLengthIn35mm == focalLengthIn35mm2;
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
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (PXMetadataUtilitiesCameraDevice)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXMetadataUtilitiesCameraDevice.m" lineNumber:36 description:{@"%s is not available as initializer", "-[PXMetadataUtilitiesCameraDevice init]"}];

  abort();
}

- (PXMetadataUtilitiesCameraDevice)initWithDisplayName:(id)name focalLength:(id)length focalLengthIn35mm:(id)in35mm
{
  nameCopy = name;
  lengthCopy = length;
  in35mmCopy = in35mm;
  v15.receiver = self;
  v15.super_class = PXMetadataUtilitiesCameraDevice;
  v12 = [(PXMetadataUtilitiesCameraDevice *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_displayName, name);
    objc_storeStrong(&v13->_focalLength, length);
    objc_storeStrong(&v13->_focalLengthIn35mm, in35mm);
  }

  return v13;
}

+ (id)frontCameraDataForDeviceName:(id)name
{
  v34 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  lowercaseString = [nameCopy lowercaseString];
  v5 = [lowercaseString containsString:@"iphone"];

  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = PXLocalizedStringFromTable(@"PXInfoPanelLCDFrontCamera", @"PhotosUICore");
    v8 = [v6 setWithObject:v7];

    v9 = +[PXMetadataUtilitiesCameraDevice supportedDevices];
    v10 = [v9 objectForKeyedSubscript:nameCopy];
    v11 = v10;
    if (v10)
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v12 = v10;
      v13 = [v12 countByEnumeratingWithState:&v27 objects:v33 count:16];
      if (v13)
      {
        v14 = v13;
        v24 = v11;
        v25 = v9;
        v26 = nameCopy;
        v15 = *v28;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v28 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = [v12 objectForKeyedSubscript:*(*(&v27 + 1) + 8 * i)];
            v18 = [v17 objectForKeyedSubscript:@"lensName"];
            if ([v8 containsObject:v18])
            {
              v19 = [v17 objectForKeyedSubscript:@"focalLengthIn35mm"];
              v20 = v19;
              if (v18)
              {
                v21 = v19 == 0;
              }

              else
              {
                v21 = 1;
              }

              if (!v21)
              {
                v31[0] = @"lensDisplayName";
                v31[1] = @"focalLengthIn35mm";
                v32[0] = v18;
                v32[1] = v19;
                v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];

                goto LABEL_20;
              }
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v27 objects:v33 count:16];
        }

        while (v14);
        v22 = 0;
LABEL_20:
        v9 = v25;
        nameCopy = v26;
        v11 = v24;
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (id)supportedDevices
{
  MEMORY[0x1EEE9AC00](self);
  v583[45] = *MEMORY[0x1E69E9840];
  v2 = PXLocalizedStringFromTable(@"PXInfoPanelLCDFrontCamera", @"PhotosUICore");
  v200 = PXLocalizedStringFromTable(@"PXInfoPanelLCDRearCamera", @"PhotosUICore");
  v199 = PXLocalizedStringFromTable(@"PXInfoPanelLCDWideCamera", @"PhotosUICore");
  v3 = PXLocalizedStringFromTable(@"PXInfoPanelLCDMainCamera", @"PhotosUICore");
  v4 = PXLocalizedStringFromTable(@"PXInfoPanelLCDUltraWideCamera", @"PhotosUICore");
  v5 = PXLocalizedStringFromTable(@"PXInfoPanelLCDTelephotoCamera", @"PhotosUICore");
  v582[0] = @"Apple Vision Pro";
  v580 = &unk_1F190E268;
  v578[0] = @"lensName";
  v578[1] = @"focalLengthIn35mm";
  v579[0] = v3;
  v579[1] = &unk_1F190CE98;
  v197 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v579 forKeys:v578 count:2];
  v581 = v197;
  v196 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v581 forKeys:&v580 count:1];
  v583[0] = v196;
  v582[1] = @"Apple Vision Pro (M5)";
  v576 = &unk_1F190E268;
  v574[0] = @"lensName";
  v574[1] = @"focalLengthIn35mm";
  v575[0] = v3;
  v575[1] = &unk_1F190CE98;
  v195 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v575 forKeys:v574 count:2];
  v577 = v195;
  v194 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v577 forKeys:&v576 count:1];
  v583[1] = v194;
  v582[2] = @"iPhone 17 Pro Max";
  v572[0] = &unk_1F190E278;
  v570[0] = @"lensName";
  v570[1] = @"focalLengthIn35mm";
  v571[0] = v4;
  v571[1] = &unk_1F190CEB0;
  v193 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v571 forKeys:v570 count:2];
  v573[0] = v193;
  v572[1] = &unk_1F190E288;
  v568[0] = @"lensName";
  v568[1] = @"focalLengthIn35mm";
  v569[0] = v2;
  v569[1] = &unk_1F190CEC8;
  v192 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v569 forKeys:v568 count:2];
  v573[1] = v192;
  v572[2] = &unk_1F190E298;
  v566[0] = @"lensName";
  v566[1] = @"focalLengthIn35mm";
  v567[0] = v2;
  v567[1] = &unk_1F190CEC8;
  v191 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v567 forKeys:v566 count:2];
  v573[2] = v191;
  v572[3] = &unk_1F190E2A8;
  v564[0] = @"lensName";
  v564[1] = @"focalLengthIn35mm";
  v565[0] = v3;
  v565[1] = &unk_1F190CEE0;
  v190 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v565 forKeys:v564 count:2];
  v573[3] = v190;
  v572[4] = &unk_1F190E2B8;
  v562[0] = @"lensName";
  v562[1] = @"focalLengthIn35mm";
  v563[0] = v5;
  v563[1] = &unk_1F190CEF8;
  v189 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v563 forKeys:v562 count:2];
  v573[4] = v189;
  v572[5] = &unk_1F190E2C8;
  v560[0] = @"lensName";
  v560[1] = @"focalLengthIn35mm";
  v561[0] = v5;
  v561[1] = &unk_1F190CEF8;
  v188 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v561 forKeys:v560 count:2];
  v573[5] = v188;
  v187 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v573 forKeys:v572 count:6];
  v583[2] = v187;
  v582[3] = @"iPhone 17 Pro";
  v558[0] = &unk_1F190E278;
  v556[0] = @"lensName";
  v556[1] = @"focalLengthIn35mm";
  v198 = v4;
  v557[0] = v4;
  v557[1] = &unk_1F190CEB0;
  v186 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v557 forKeys:v556 count:2];
  v559[0] = v186;
  v558[1] = &unk_1F190E288;
  v554[0] = @"lensName";
  v554[1] = @"focalLengthIn35mm";
  v555[0] = v2;
  v555[1] = &unk_1F190CEC8;
  v185 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v555 forKeys:v554 count:2];
  v559[1] = v185;
  v558[2] = &unk_1F190E298;
  v552[0] = @"lensName";
  v552[1] = @"focalLengthIn35mm";
  v553[0] = v2;
  v553[1] = &unk_1F190CEC8;
  v184 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v553 forKeys:v552 count:2];
  v559[2] = v184;
  v558[3] = &unk_1F190E2A8;
  v550[0] = @"lensName";
  v550[1] = @"focalLengthIn35mm";
  v551[0] = v3;
  v551[1] = &unk_1F190CEE0;
  v183 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v551 forKeys:v550 count:2];
  v559[3] = v183;
  v558[4] = &unk_1F190E2B8;
  v548[0] = @"lensName";
  v548[1] = @"focalLengthIn35mm";
  v201 = v5;
  v549[0] = v5;
  v549[1] = &unk_1F190CEF8;
  v182 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v549 forKeys:v548 count:2];
  v559[4] = v182;
  v558[5] = &unk_1F190E2C8;
  v546[0] = @"lensName";
  v546[1] = @"focalLengthIn35mm";
  v547[0] = v5;
  v547[1] = &unk_1F190CEF8;
  v181 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v547 forKeys:v546 count:2];
  v559[5] = v181;
  v180 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v559 forKeys:v558 count:6];
  v583[3] = v180;
  v582[4] = @"iPhone 17";
  v544[0] = &unk_1F190E278;
  v542[0] = @"lensName";
  v542[1] = @"focalLengthIn35mm";
  v543[0] = v4;
  v543[1] = &unk_1F190CEB0;
  v179 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v543 forKeys:v542 count:2];
  v545[0] = v179;
  v544[1] = &unk_1F190E288;
  v540[0] = @"lensName";
  v540[1] = @"focalLengthIn35mm";
  v541[0] = v2;
  v541[1] = &unk_1F190CEC8;
  v178 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v541 forKeys:v540 count:2];
  v545[1] = v178;
  v544[2] = &unk_1F190E298;
  v538[0] = @"lensName";
  v538[1] = @"focalLengthIn35mm";
  v539[0] = v2;
  v539[1] = &unk_1F190CEC8;
  v177 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v539 forKeys:v538 count:2];
  v545[2] = v177;
  v544[3] = &unk_1F190E2D8;
  v536[0] = @"lensName";
  v536[1] = @"focalLengthIn35mm";
  v537[0] = v3;
  v537[1] = &unk_1F190CF10;
  v176 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v537 forKeys:v536 count:2];
  v545[3] = v176;
  v175 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v545 forKeys:v544 count:4];
  v583[4] = v175;
  v582[5] = @"iPhone Air";
  v534[0] = &unk_1F190E288;
  v532[0] = @"lensName";
  v532[1] = @"focalLengthIn35mm";
  v533[0] = v2;
  v533[1] = &unk_1F190CEC8;
  v174 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v533 forKeys:v532 count:2];
  v535[0] = v174;
  v534[1] = &unk_1F190E298;
  v530[0] = @"lensName";
  v530[1] = @"focalLengthIn35mm";
  v531[0] = v2;
  v531[1] = &unk_1F190CEC8;
  v173 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v531 forKeys:v530 count:2];
  v535[1] = v173;
  v534[2] = &unk_1F190E2D8;
  v528[0] = @"lensName";
  v528[1] = @"focalLengthIn35mm";
  v529[0] = v3;
  v529[1] = &unk_1F190CF10;
  v172 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v529 forKeys:v528 count:2];
  v535[2] = v172;
  v171 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v535 forKeys:v534 count:3];
  v583[5] = v171;
  v582[6] = @"iPhone 16e";
  v526[0] = &unk_1F190E2E8;
  v524[0] = @"lensName";
  v524[1] = @"focalLengthIn35mm";
  v525[0] = v2;
  v525[1] = &unk_1F190CF28;
  v170 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v525 forKeys:v524 count:2];
  v527[0] = v170;
  v526[1] = &unk_1F190E2F8;
  v522[0] = @"lensName";
  v522[1] = @"focalLengthIn35mm";
  v523[0] = v3;
  v523[1] = &unk_1F190CF10;
  v169 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v523 forKeys:v522 count:2];
  v527[1] = v169;
  v168 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v527 forKeys:v526 count:2];
  v583[6] = v168;
  v582[7] = @"iPhone 16 Pro Max";
  v520[0] = &unk_1F190E2E8;
  v518[0] = @"lensName";
  v518[1] = @"focalLengthIn35mm";
  v519[0] = v2;
  v519[1] = &unk_1F190CF28;
  v167 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v519 forKeys:v518 count:2];
  v521[0] = v167;
  v520[1] = &unk_1F190E308;
  v516[0] = @"lensName";
  v516[1] = @"focalLengthIn35mm";
  v517[0] = v3;
  v517[1] = &unk_1F190CEE0;
  v166 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v517 forKeys:v516 count:2];
  v521[1] = v166;
  v520[2] = &unk_1F190E2A8;
  v514[0] = @"lensName";
  v514[1] = @"focalLengthIn35mm";
  v515[0] = v3;
  v515[1] = &unk_1F190CEE0;
  v165 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v515 forKeys:v514 count:2];
  v521[2] = v165;
  v520[3] = &unk_1F190E278;
  v512[0] = @"lensName";
  v512[1] = @"focalLengthIn35mm";
  v513[0] = v4;
  v513[1] = &unk_1F190CEB0;
  v164 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v513 forKeys:v512 count:2];
  v521[3] = v164;
  v520[4] = &unk_1F190E318;
  v510[0] = @"lensName";
  v510[1] = @"focalLengthIn35mm";
  v511[0] = v5;
  v511[1] = &unk_1F190CF40;
  v163 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v511 forKeys:v510 count:2];
  v521[4] = v163;
  v162 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v521 forKeys:v520 count:5];
  v583[7] = v162;
  v582[8] = @"iPhone 16 Pro";
  v508[0] = &unk_1F190E2E8;
  v506[0] = @"lensName";
  v506[1] = @"focalLengthIn35mm";
  v507[0] = v2;
  v507[1] = &unk_1F190CF28;
  v161 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v507 forKeys:v506 count:2];
  v509[0] = v161;
  v508[1] = &unk_1F190E308;
  v504[0] = @"lensName";
  v504[1] = @"focalLengthIn35mm";
  v505[0] = v3;
  v505[1] = &unk_1F190CEE0;
  v160 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v505 forKeys:v504 count:2];
  v509[1] = v160;
  v508[2] = &unk_1F190E2A8;
  v502[0] = @"lensName";
  v502[1] = @"focalLengthIn35mm";
  v503[0] = v3;
  v503[1] = &unk_1F190CEE0;
  v159 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v503 forKeys:v502 count:2];
  v509[2] = v159;
  v508[3] = &unk_1F190E278;
  v500[0] = @"lensName";
  v500[1] = @"focalLengthIn35mm";
  v501[0] = v4;
  v501[1] = &unk_1F190CEB0;
  v158 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v501 forKeys:v500 count:2];
  v509[3] = v158;
  v508[4] = &unk_1F190E318;
  v498[0] = @"lensName";
  v498[1] = @"focalLengthIn35mm";
  v499[0] = v5;
  v499[1] = &unk_1F190CF40;
  v157 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v499 forKeys:v498 count:2];
  v509[4] = v157;
  v156 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v509 forKeys:v508 count:5];
  v583[8] = v156;
  v582[9] = @"iPhone 16 Plus";
  v496[0] = &unk_1F190E2E8;
  v494[0] = @"lensName";
  v494[1] = @"focalLengthIn35mm";
  v495[0] = v2;
  v495[1] = &unk_1F190CF28;
  v155 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v495 forKeys:v494 count:2];
  v497[0] = v155;
  v496[1] = &unk_1F190E2D8;
  v492[0] = @"lensName";
  v492[1] = @"focalLengthIn35mm";
  v493[0] = v3;
  v493[1] = &unk_1F190CF10;
  v154 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v493 forKeys:v492 count:2];
  v497[1] = v154;
  v496[2] = &unk_1F190E278;
  v490[0] = @"lensName";
  v490[1] = @"focalLengthIn35mm";
  v491[0] = v4;
  v491[1] = &unk_1F190CEB0;
  v153 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v491 forKeys:v490 count:2];
  v497[2] = v153;
  v152 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v497 forKeys:v496 count:3];
  v583[9] = v152;
  v582[10] = @"iPhone 16";
  v488[0] = &unk_1F190E2E8;
  v486[0] = @"lensName";
  v486[1] = @"focalLengthIn35mm";
  v487[0] = v2;
  v487[1] = &unk_1F190CF28;
  v151 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v487 forKeys:v486 count:2];
  v489[0] = v151;
  v488[1] = &unk_1F190E2D8;
  v484[0] = @"lensName";
  v484[1] = @"focalLengthIn35mm";
  v485[0] = v3;
  v485[1] = &unk_1F190CF10;
  v150 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v485 forKeys:v484 count:2];
  v489[1] = v150;
  v488[2] = &unk_1F190E278;
  v482[0] = @"lensName";
  v482[1] = @"focalLengthIn35mm";
  v483[0] = v4;
  v483[1] = &unk_1F190CEB0;
  v149 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v483 forKeys:v482 count:2];
  v489[2] = v149;
  v148 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v489 forKeys:v488 count:3];
  v583[10] = v148;
  v582[11] = @"iPhone 15 Pro Max";
  v480[0] = &unk_1F190E2E8;
  v478[0] = @"lensName";
  v478[1] = @"focalLengthIn35mm";
  v479[0] = v2;
  v479[1] = &unk_1F190CF28;
  v147 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v479 forKeys:v478 count:2];
  v481[0] = v147;
  v480[1] = &unk_1F190E308;
  v476[0] = @"lensName";
  v476[1] = @"focalLengthIn35mm";
  v477[0] = v3;
  v477[1] = &unk_1F190CEE0;
  v146 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v477 forKeys:v476 count:2];
  v481[1] = v146;
  v480[2] = &unk_1F190E2A8;
  v474[0] = @"lensName";
  v474[1] = @"focalLengthIn35mm";
  v475[0] = v3;
  v475[1] = &unk_1F190CEE0;
  v145 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v475 forKeys:v474 count:2];
  v481[2] = v145;
  v480[3] = &unk_1F190E278;
  v472[0] = @"lensName";
  v472[1] = @"focalLengthIn35mm";
  v473[0] = v4;
  v473[1] = &unk_1F190CEB0;
  v144 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v473 forKeys:v472 count:2];
  v481[3] = v144;
  v480[4] = &unk_1F190E318;
  v470[0] = @"lensName";
  v470[1] = @"focalLengthIn35mm";
  v471[0] = v5;
  v471[1] = &unk_1F190CF40;
  v143 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v471 forKeys:v470 count:2];
  v481[4] = v143;
  v142 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v481 forKeys:v480 count:5];
  v583[11] = v142;
  v582[12] = @"iPhone 15 Pro";
  v468[0] = &unk_1F190E2E8;
  v466[0] = @"lensName";
  v466[1] = @"focalLengthIn35mm";
  v467[0] = v2;
  v467[1] = &unk_1F190CF28;
  v141 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v467 forKeys:v466 count:2];
  v469[0] = v141;
  v468[1] = &unk_1F190E308;
  v464[0] = @"lensName";
  v464[1] = @"focalLengthIn35mm";
  v465[0] = v3;
  v465[1] = &unk_1F190CEE0;
  v140 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v465 forKeys:v464 count:2];
  v469[1] = v140;
  v468[2] = &unk_1F190E2A8;
  v462[0] = @"lensName";
  v462[1] = @"focalLengthIn35mm";
  v463[0] = v3;
  v463[1] = &unk_1F190CEE0;
  v139 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v463 forKeys:v462 count:2];
  v469[2] = v139;
  v468[3] = &unk_1F190E278;
  v460[0] = @"lensName";
  v460[1] = @"focalLengthIn35mm";
  v461[0] = v4;
  v461[1] = &unk_1F190CEB0;
  v138 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v461 forKeys:v460 count:2];
  v469[3] = v138;
  v468[4] = &unk_1F190CF58;
  v458[0] = @"lensName";
  v458[1] = @"focalLengthIn35mm";
  v459[0] = v5;
  v459[1] = &unk_1F190CF70;
  v137 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v459 forKeys:v458 count:2];
  v469[4] = v137;
  v136 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v469 forKeys:v468 count:5];
  v583[12] = v136;
  v582[13] = @"iPhone 15 Plus";
  v456[0] = &unk_1F190E2E8;
  v454[0] = @"lensName";
  v454[1] = @"focalLengthIn35mm";
  v455[0] = v2;
  v455[1] = &unk_1F190CF28;
  v135 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v455 forKeys:v454 count:2];
  v457[0] = v135;
  v456[1] = &unk_1F190E2D8;
  v452[0] = @"lensName";
  v452[1] = @"focalLengthIn35mm";
  v453[0] = v3;
  v453[1] = &unk_1F190CF10;
  v134 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v453 forKeys:v452 count:2];
  v457[1] = v134;
  v456[2] = &unk_1F190E328;
  v450[0] = @"lensName";
  v450[1] = @"focalLengthIn35mm";
  v451[0] = v4;
  v451[1] = &unk_1F190CEB0;
  v133 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v451 forKeys:v450 count:2];
  v457[2] = v133;
  v132 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v457 forKeys:v456 count:3];
  v583[13] = v132;
  v582[14] = @"iPhone 15";
  v448[0] = &unk_1F190E2E8;
  v446[0] = @"lensName";
  v446[1] = @"focalLengthIn35mm";
  v447[0] = v2;
  v447[1] = &unk_1F190CF28;
  v131 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v447 forKeys:v446 count:2];
  v449[0] = v131;
  v448[1] = &unk_1F190E2D8;
  v444[0] = @"lensName";
  v444[1] = @"focalLengthIn35mm";
  v445[0] = v3;
  v445[1] = &unk_1F190CF10;
  v130 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v445 forKeys:v444 count:2];
  v449[1] = v130;
  v448[2] = &unk_1F190E328;
  v442[0] = @"lensName";
  v442[1] = @"focalLengthIn35mm";
  v443[0] = v4;
  v443[1] = &unk_1F190CEB0;
  v129 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v443 forKeys:v442 count:2];
  v449[2] = v129;
  v128 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v449 forKeys:v448 count:3];
  v583[14] = v128;
  v582[15] = @"iPhone 14 Pro Max";
  v440[0] = &unk_1F190E2E8;
  v438[0] = @"lensName";
  v438[1] = @"focalLengthIn35mm";
  v439[0] = v2;
  v439[1] = &unk_1F190CF28;
  v127 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v439 forKeys:v438 count:2];
  v441[0] = v127;
  v440[1] = &unk_1F190E308;
  v436[0] = @"lensName";
  v436[1] = @"focalLengthIn35mm";
  v437[0] = v3;
  v437[1] = &unk_1F190CEE0;
  v126 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v437 forKeys:v436 count:2];
  v441[1] = v126;
  v440[2] = &unk_1F190E278;
  v434[0] = @"lensName";
  v434[1] = @"focalLengthIn35mm";
  v435[0] = v4;
  v435[1] = &unk_1F190CEB0;
  v125 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v435 forKeys:v434 count:2];
  v441[2] = v125;
  v440[3] = &unk_1F190E338;
  v432[0] = @"lensName";
  v432[1] = @"focalLengthIn35mm";
  v433[0] = v5;
  v433[1] = &unk_1F190CF70;
  v124 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v433 forKeys:v432 count:2];
  v441[3] = v124;
  v123 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v441 forKeys:v440 count:4];
  v583[15] = v123;
  v582[16] = @"iPhone 14 Pro";
  v430[0] = &unk_1F190E2E8;
  v428[0] = @"lensName";
  v428[1] = @"focalLengthIn35mm";
  v429[0] = v2;
  v429[1] = &unk_1F190CF28;
  v122 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v429 forKeys:v428 count:2];
  v431[0] = v122;
  v430[1] = &unk_1F190E308;
  v426[0] = @"lensName";
  v426[1] = @"focalLengthIn35mm";
  v427[0] = v3;
  v427[1] = &unk_1F190CEE0;
  v121 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v427 forKeys:v426 count:2];
  v431[1] = v121;
  v430[2] = &unk_1F190E278;
  v424[0] = @"lensName";
  v424[1] = @"focalLengthIn35mm";
  v425[0] = v4;
  v425[1] = &unk_1F190CEB0;
  v120 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v425 forKeys:v424 count:2];
  v431[2] = v120;
  v430[3] = &unk_1F190E338;
  v422[0] = @"lensName";
  v422[1] = @"focalLengthIn35mm";
  v423[0] = v5;
  v423[1] = &unk_1F190CF70;
  v119 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v423 forKeys:v422 count:2];
  v431[3] = v119;
  v118 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v431 forKeys:v430 count:4];
  v583[16] = v118;
  v582[17] = @"iPhone 14 Plus";
  v420[0] = &unk_1F190E2E8;
  v418[0] = @"lensName";
  v418[1] = @"focalLengthIn35mm";
  v419[0] = v2;
  v419[1] = &unk_1F190CF28;
  v117 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v419 forKeys:v418 count:2];
  v421[0] = v117;
  v420[1] = &unk_1F190E348;
  v416[0] = @"lensName";
  v416[1] = @"focalLengthIn35mm";
  v417[0] = v3;
  v417[1] = &unk_1F190CF10;
  v116 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v417 forKeys:v416 count:2];
  v421[1] = v116;
  v420[2] = &unk_1F190E328;
  v414[0] = @"lensName";
  v414[1] = @"focalLengthIn35mm";
  v415[0] = v4;
  v415[1] = &unk_1F190CEB0;
  v115 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v415 forKeys:v414 count:2];
  v421[2] = v115;
  v114 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v421 forKeys:v420 count:3];
  v583[17] = v114;
  v582[18] = @"iPhone 14";
  v412[0] = &unk_1F190E2E8;
  v410[0] = @"lensName";
  v410[1] = @"focalLengthIn35mm";
  v411[0] = v2;
  v411[1] = &unk_1F190CF28;
  v113 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v411 forKeys:v410 count:2];
  v413[0] = v113;
  v412[1] = &unk_1F190E348;
  v408[0] = @"lensName";
  v408[1] = @"focalLengthIn35mm";
  v409[0] = v3;
  v409[1] = &unk_1F190CF10;
  v112 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v409 forKeys:v408 count:2];
  v413[1] = v112;
  v412[2] = &unk_1F190E328;
  v406[0] = @"lensName";
  v406[1] = @"focalLengthIn35mm";
  v407[0] = v4;
  v407[1] = &unk_1F190CEB0;
  v111 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v407 forKeys:v406 count:2];
  v413[2] = v111;
  v110 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v413 forKeys:v412 count:3];
  v583[18] = v110;
  v582[19] = @"iPhone 13 Pro Max";
  v404[0] = &unk_1F190E358;
  v402[0] = @"lensName";
  v402[1] = @"focalLengthIn35mm";
  v403[0] = v2;
  v403[1] = &unk_1F190CF28;
  v109 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v403 forKeys:v402 count:2];
  v405[0] = v109;
  v404[1] = &unk_1F190E348;
  v400[0] = @"lensName";
  v400[1] = @"focalLengthIn35mm";
  v401[0] = v199;
  v401[1] = &unk_1F190CF10;
  v108 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v401 forKeys:v400 count:2];
  v405[1] = v108;
  v404[2] = &unk_1F190E368;
  v398[0] = @"lensName";
  v398[1] = @"focalLengthIn35mm";
  v399[0] = v4;
  v399[1] = &unk_1F190CEB0;
  v107 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v399 forKeys:v398 count:2];
  v405[2] = v107;
  v404[3] = &unk_1F190E338;
  v396[0] = @"lensName";
  v396[1] = @"focalLengthIn35mm";
  v397[0] = v5;
  v397[1] = &unk_1F190CF70;
  v106 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v397 forKeys:v396 count:2];
  v405[3] = v106;
  v105 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v405 forKeys:v404 count:4];
  v583[19] = v105;
  v582[20] = @"iPhone 13 Pro";
  v394[0] = &unk_1F190E358;
  v392[0] = @"lensName";
  v392[1] = @"focalLengthIn35mm";
  v393[0] = v2;
  v393[1] = &unk_1F190CF28;
  v104 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v393 forKeys:v392 count:2];
  v395[0] = v104;
  v394[1] = &unk_1F190E348;
  v390[0] = @"lensName";
  v390[1] = @"focalLengthIn35mm";
  v391[0] = v199;
  v391[1] = &unk_1F190CF10;
  v103 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v391 forKeys:v390 count:2];
  v395[1] = v103;
  v394[2] = &unk_1F190E368;
  v388[0] = @"lensName";
  v388[1] = @"focalLengthIn35mm";
  v389[0] = v4;
  v389[1] = &unk_1F190CEB0;
  v102 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v389 forKeys:v388 count:2];
  v395[2] = v102;
  v394[3] = &unk_1F190E338;
  v386[0] = @"lensName";
  v386[1] = @"focalLengthIn35mm";
  v387[0] = v5;
  v387[1] = &unk_1F190CF70;
  v101 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v387 forKeys:v386 count:2];
  v395[3] = v101;
  v100 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v395 forKeys:v394 count:4];
  v583[20] = v100;
  v582[21] = @"iPhone 13";
  v384[0] = &unk_1F190E358;
  v382[0] = @"lensName";
  v382[1] = @"focalLengthIn35mm";
  v383[0] = v2;
  v383[1] = &unk_1F190CF28;
  v99 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v383 forKeys:v382 count:2];
  v385[0] = v99;
  v384[1] = &unk_1F190E378;
  v380[0] = @"lensName";
  v380[1] = @"focalLengthIn35mm";
  v381[0] = v199;
  v381[1] = &unk_1F190CF10;
  v98 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v381 forKeys:v380 count:2];
  v385[1] = v98;
  v384[2] = &unk_1F190E328;
  v378[0] = @"lensName";
  v378[1] = @"focalLengthIn35mm";
  v379[0] = v4;
  v379[1] = &unk_1F190CEB0;
  v97 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v379 forKeys:v378 count:2];
  v385[2] = v97;
  v96 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v385 forKeys:v384 count:3];
  v583[21] = v96;
  v582[22] = @"iPhone 13 mini";
  v376[0] = &unk_1F190E358;
  v374[0] = @"lensName";
  v374[1] = @"focalLengthIn35mm";
  v375[0] = v2;
  v375[1] = &unk_1F190CF28;
  v95 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v375 forKeys:v374 count:2];
  v377[0] = v95;
  v376[1] = &unk_1F190E378;
  v372[0] = @"lensName";
  v372[1] = @"focalLengthIn35mm";
  v373[0] = v199;
  v373[1] = &unk_1F190CF10;
  v94 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v373 forKeys:v372 count:2];
  v377[1] = v94;
  v376[2] = &unk_1F190E328;
  v370[0] = @"lensName";
  v370[1] = @"focalLengthIn35mm";
  v371[0] = v4;
  v371[1] = &unk_1F190CEB0;
  v93 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v371 forKeys:v370 count:2];
  v377[2] = v93;
  v92 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v377 forKeys:v376 count:3];
  v583[22] = v92;
  v582[23] = @"iPhone 12 Pro Max";
  v368[0] = &unk_1F190E358;
  v366[0] = @"lensName";
  v366[1] = @"focalLengthIn35mm";
  v367[0] = v2;
  v367[1] = &unk_1F190CF28;
  v91 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v367 forKeys:v366 count:2];
  v369[0] = v91;
  v368[1] = &unk_1F190E378;
  v364[0] = @"lensName";
  v364[1] = @"focalLengthIn35mm";
  v365[0] = v199;
  v365[1] = &unk_1F190CF10;
  v90 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v365 forKeys:v364 count:2];
  v369[1] = v90;
  v368[2] = &unk_1F190E328;
  v362[0] = @"lensName";
  v362[1] = @"focalLengthIn35mm";
  v363[0] = v4;
  v363[1] = &unk_1F190CEB0;
  v89 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v363 forKeys:v362 count:2];
  v369[2] = v89;
  v368[3] = &unk_1F190E388;
  v360[0] = @"lensName";
  v360[1] = @"focalLengthIn35mm";
  v361[0] = v5;
  v361[1] = &unk_1F190CF88;
  v88 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v361 forKeys:v360 count:2];
  v369[3] = v88;
  v87 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v369 forKeys:v368 count:4];
  v583[23] = v87;
  v582[24] = @"iPhone 12 Pro";
  v358[0] = &unk_1F190E358;
  v356[0] = @"lensName";
  v356[1] = @"focalLengthIn35mm";
  v357[0] = v2;
  v357[1] = &unk_1F190CF28;
  v86 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v357 forKeys:v356 count:2];
  v359[0] = v86;
  v358[1] = &unk_1F190E2F8;
  v354[0] = @"lensName";
  v354[1] = @"focalLengthIn35mm";
  v355[0] = v199;
  v355[1] = &unk_1F190CF10;
  v85 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v355 forKeys:v354 count:2];
  v359[1] = v85;
  v358[2] = &unk_1F190E328;
  v352[0] = @"lensName";
  v352[1] = @"focalLengthIn35mm";
  v353[0] = v4;
  v353[1] = &unk_1F190CEB0;
  v84 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v353 forKeys:v352 count:2];
  v359[2] = v84;
  v358[3] = &unk_1F190E398;
  v350[0] = @"lensName";
  v350[1] = @"focalLengthIn35mm";
  v351[0] = v5;
  v351[1] = &unk_1F190CFA0;
  v83 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v351 forKeys:v350 count:2];
  v359[3] = v83;
  v82 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v359 forKeys:v358 count:4];
  v583[24] = v82;
  v582[25] = @"iPhone 12";
  v348[0] = &unk_1F190E358;
  v346[0] = @"lensName";
  v346[1] = @"focalLengthIn35mm";
  v347[0] = v2;
  v347[1] = &unk_1F190CF28;
  v81 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v347 forKeys:v346 count:2];
  v349[0] = v81;
  v348[1] = &unk_1F190E2F8;
  v344[0] = @"lensName";
  v344[1] = @"focalLengthIn35mm";
  v345[0] = v199;
  v345[1] = &unk_1F190CF10;
  v80 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v345 forKeys:v344 count:2];
  v349[1] = v80;
  v348[2] = &unk_1F190E3A8;
  v342[0] = @"lensName";
  v342[1] = @"focalLengthIn35mm";
  v343[0] = v4;
  v343[1] = &unk_1F190CEB0;
  v79 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v343 forKeys:v342 count:2];
  v349[2] = v79;
  v78 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v349 forKeys:v348 count:3];
  v583[25] = v78;
  v582[26] = @"iPhone 12 mini";
  v340[0] = &unk_1F190E358;
  v338[0] = @"lensName";
  v338[1] = @"focalLengthIn35mm";
  v339[0] = v2;
  v339[1] = &unk_1F190CF28;
  v77 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v339 forKeys:v338 count:2];
  v341[0] = v77;
  v340[1] = &unk_1F190E2F8;
  v336[0] = @"lensName";
  v336[1] = @"focalLengthIn35mm";
  v337[0] = v199;
  v337[1] = &unk_1F190CF10;
  v76 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v337 forKeys:v336 count:2];
  v341[1] = v76;
  v340[2] = &unk_1F190E3A8;
  v334[0] = @"lensName";
  v334[1] = @"focalLengthIn35mm";
  v335[0] = v4;
  v335[1] = &unk_1F190CEB0;
  v75 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v335 forKeys:v334 count:2];
  v341[2] = v75;
  v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v341 forKeys:v340 count:3];
  v583[26] = v74;
  v582[27] = @"iPhone 11";
  v332[0] = &unk_1F190E358;
  v330[0] = @"lensName";
  v330[1] = @"focalLengthIn35mm";
  v331[0] = v2;
  v331[1] = &unk_1F190CF28;
  v73 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v331 forKeys:v330 count:2];
  v333[0] = v73;
  v332[1] = &unk_1F190E3B8;
  v328[0] = @"lensName";
  v328[1] = @"focalLengthIn35mm";
  v329[0] = v199;
  v329[1] = &unk_1F190CF10;
  v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v329 forKeys:v328 count:2];
  v333[1] = v72;
  v332[2] = &unk_1F190E328;
  v326[0] = @"lensName";
  v326[1] = @"focalLengthIn35mm";
  v327[0] = v4;
  v327[1] = &unk_1F190CEB0;
  v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v327 forKeys:v326 count:2];
  v333[2] = v71;
  v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v333 forKeys:v332 count:3];
  v583[27] = v70;
  v582[28] = @"iPhone SE";
  v324[0] = &unk_1F190E3C8;
  v322[0] = @"lensName";
  v322[1] = @"focalLengthIn35mm";
  v323[0] = v2;
  v323[1] = &unk_1F190CFB8;
  v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v323 forKeys:v322 count:2];
  v325[0] = v69;
  v324[1] = &unk_1F190E3D8;
  v320[0] = @"lensName";
  v320[1] = @"focalLengthIn35mm";
  v321[0] = v200;
  v321[1] = &unk_1F190CFD0;
  v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v321 forKeys:v320 count:2];
  v325[1] = v68;
  v324[2] = &unk_1F190E3E8;
  v318[0] = @"lensName";
  v318[1] = @"focalLengthIn35mm";
  v319[0] = v2;
  v319[1] = &unk_1F190CFE8;
  v67 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v319 forKeys:v318 count:2];
  v325[2] = v67;
  v324[3] = &unk_1F190E3F8;
  v316[0] = @"lensName";
  v316[1] = @"focalLengthIn35mm";
  v317[0] = v200;
  v317[1] = &unk_1F190D000;
  v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v317 forKeys:v316 count:2];
  v325[3] = v66;
  v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v325 forKeys:v324 count:4];
  v583[28] = v65;
  v582[29] = @"iPhone 11 Pro Max";
  v314[0] = &unk_1F190E358;
  v312[0] = @"lensName";
  v312[1] = @"focalLengthIn35mm";
  v313[0] = v2;
  v313[1] = &unk_1F190CF28;
  v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v313 forKeys:v312 count:2];
  v315[0] = v64;
  v314[1] = &unk_1F190E3B8;
  v310[0] = @"lensName";
  v310[1] = @"focalLengthIn35mm";
  v311[0] = v199;
  v311[1] = &unk_1F190CF10;
  v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v311 forKeys:v310 count:2];
  v315[1] = v63;
  v314[2] = &unk_1F190E328;
  v308[0] = @"lensName";
  v308[1] = @"focalLengthIn35mm";
  v309[0] = v4;
  v309[1] = &unk_1F190CEB0;
  v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v309 forKeys:v308 count:2];
  v315[2] = v62;
  v314[3] = &unk_1F190E398;
  v306[0] = @"lensName";
  v306[1] = @"focalLengthIn35mm";
  v307[0] = v5;
  v307[1] = &unk_1F190CFA0;
  v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v307 forKeys:v306 count:2];
  v315[3] = v61;
  v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v315 forKeys:v314 count:4];
  v583[29] = v60;
  v582[30] = @"iPhone 11 Pro";
  v304[0] = &unk_1F190E358;
  v302[0] = @"lensName";
  v302[1] = @"focalLengthIn35mm";
  v303[0] = v2;
  v303[1] = &unk_1F190CF28;
  v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v303 forKeys:v302 count:2];
  v305[0] = v59;
  v304[1] = &unk_1F190E3B8;
  v300[0] = @"lensName";
  v300[1] = @"focalLengthIn35mm";
  v301[0] = v199;
  v301[1] = &unk_1F190CF10;
  v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v301 forKeys:v300 count:2];
  v305[1] = v58;
  v304[2] = &unk_1F190E328;
  v298[0] = @"lensName";
  v298[1] = @"focalLengthIn35mm";
  v299[0] = v4;
  v299[1] = &unk_1F190CEB0;
  v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v299 forKeys:v298 count:2];
  v305[2] = v57;
  v304[3] = &unk_1F190E398;
  v296[0] = @"lensName";
  v296[1] = @"focalLengthIn35mm";
  v297[0] = v5;
  v297[1] = &unk_1F190CFA0;
  v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v297 forKeys:v296 count:2];
  v305[3] = v56;
  v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v305 forKeys:v304 count:4];
  v583[30] = v55;
  v582[31] = @"iPhone XR";
  v294[0] = &unk_1F190E3C8;
  v292[0] = @"lensName";
  v292[1] = @"focalLengthIn35mm";
  v293[0] = v2;
  v293[1] = &unk_1F190CFB8;
  v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v293 forKeys:v292 count:2];
  v295[0] = v54;
  v294[1] = &unk_1F190E3B8;
  v290[0] = @"lensName";
  v290[1] = @"focalLengthIn35mm";
  v291[0] = v200;
  v291[1] = &unk_1F190CF10;
  v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v291 forKeys:v290 count:2];
  v295[1] = v53;
  v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v295 forKeys:v294 count:2];
  v583[31] = v52;
  v582[32] = @"iPhone XS Max";
  v288[0] = &unk_1F190E3C8;
  v286[0] = @"lensName";
  v286[1] = @"focalLengthIn35mm";
  v287[0] = v2;
  v287[1] = &unk_1F190CFB8;
  v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v287 forKeys:v286 count:2];
  v289[0] = v51;
  v288[1] = &unk_1F190E3B8;
  v284[0] = @"lensName";
  v284[1] = @"focalLengthIn35mm";
  v285[0] = v199;
  v285[1] = &unk_1F190CF10;
  v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v285 forKeys:v284 count:2];
  v289[1] = v50;
  v288[2] = &unk_1F190E398;
  v282[0] = @"lensName";
  v282[1] = @"focalLengthIn35mm";
  v283[0] = v5;
  v283[1] = &unk_1F190CFA0;
  v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v283 forKeys:v282 count:2];
  v289[2] = v49;
  v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v289 forKeys:v288 count:3];
  v583[32] = v48;
  v582[33] = @"iPhone XS";
  v280[0] = &unk_1F190E3C8;
  v278[0] = @"lensName";
  v278[1] = @"focalLengthIn35mm";
  v279[0] = v2;
  v279[1] = &unk_1F190CFB8;
  v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v279 forKeys:v278 count:2];
  v281[0] = v47;
  v280[1] = &unk_1F190E3B8;
  v276[0] = @"lensName";
  v276[1] = @"focalLengthIn35mm";
  v277[0] = v199;
  v277[1] = &unk_1F190CF10;
  v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v277 forKeys:v276 count:2];
  v281[1] = v46;
  v280[2] = &unk_1F190E398;
  v274[0] = @"lensName";
  v274[1] = @"focalLengthIn35mm";
  v275[0] = v5;
  v275[1] = &unk_1F190CFA0;
  v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v275 forKeys:v274 count:2];
  v281[2] = v45;
  v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v281 forKeys:v280 count:3];
  v583[33] = v44;
  v582[34] = @"iPhone X";
  v272[0] = &unk_1F190E3C8;
  v270[0] = @"lensName";
  v270[1] = @"focalLengthIn35mm";
  v271[0] = v2;
  v271[1] = &unk_1F190CFB8;
  v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v271 forKeys:v270 count:2];
  v273[0] = v43;
  v272[1] = &unk_1F190E408;
  v268[0] = @"lensName";
  v268[1] = @"focalLengthIn35mm";
  v269[0] = v199;
  v269[1] = &unk_1F190CFD0;
  v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v269 forKeys:v268 count:2];
  v273[1] = v42;
  v272[2] = &unk_1F190E398;
  v266[0] = @"lensName";
  v266[1] = @"focalLengthIn35mm";
  v267[0] = v5;
  v267[1] = &unk_1F190CFA0;
  v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v267 forKeys:v266 count:2];
  v273[2] = v41;
  v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v273 forKeys:v272 count:3];
  v583[34] = v40;
  v582[35] = @"iPhone 8 Plus";
  v264[0] = &unk_1F190E3C8;
  v262[0] = @"lensName";
  v262[1] = @"focalLengthIn35mm";
  v263[0] = v2;
  v263[1] = &unk_1F190CFB8;
  v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v263 forKeys:v262 count:2];
  v265[0] = v39;
  v264[1] = &unk_1F190E3D8;
  v260[0] = @"lensName";
  v260[1] = @"focalLengthIn35mm";
  v261[0] = v199;
  v261[1] = &unk_1F190CFD0;
  v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v261 forKeys:v260 count:2];
  v265[1] = v38;
  v264[2] = &unk_1F190E418;
  v258[0] = @"lensName";
  v258[1] = @"focalLengthIn35mm";
  v259[0] = v5;
  v259[1] = &unk_1F190D018;
  v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v259 forKeys:v258 count:2];
  v265[2] = v37;
  v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v265 forKeys:v264 count:3];
  v583[35] = v36;
  v582[36] = @"iPhone 8";
  v256[0] = &unk_1F190E3C8;
  v254[0] = @"lensName";
  v254[1] = @"focalLengthIn35mm";
  v255[0] = v2;
  v255[1] = &unk_1F190CFB8;
  v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v255 forKeys:v254 count:2];
  v257[0] = v35;
  v256[1] = &unk_1F190E3D8;
  v252[0] = @"lensName";
  v252[1] = @"focalLengthIn35mm";
  v253[0] = v199;
  v253[1] = &unk_1F190CFD0;
  v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v253 forKeys:v252 count:2];
  v257[1] = v34;
  v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v257 forKeys:v256 count:2];
  v583[36] = v33;
  v582[37] = @"iPhone 7 Plus";
  v250[0] = &unk_1F190E3C8;
  v248[0] = @"lensName";
  v248[1] = @"focalLengthIn35mm";
  v249[0] = v2;
  v249[1] = &unk_1F190CFB8;
  v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v249 forKeys:v248 count:2];
  v251[0] = v32;
  v250[1] = &unk_1F190E3D8;
  v246[0] = @"lensName";
  v246[1] = @"focalLengthIn35mm";
  v247[0] = v199;
  v247[1] = &unk_1F190CFD0;
  v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v247 forKeys:v246 count:2];
  v251[1] = v31;
  v250[2] = &unk_1F190E418;
  v244[0] = @"lensName";
  v244[1] = @"focalLengthIn35mm";
  v245[0] = v5;
  v245[1] = &unk_1F190D018;
  v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v245 forKeys:v244 count:2];
  v251[2] = v30;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v251 forKeys:v250 count:3];
  v583[37] = v29;
  v582[38] = @"iPhone 7";
  v242[0] = &unk_1F190E3C8;
  v240[0] = @"lensName";
  v240[1] = @"focalLengthIn35mm";
  v241[0] = v2;
  v241[1] = &unk_1F190CFB8;
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v241 forKeys:v240 count:2];
  v243[0] = v28;
  v242[1] = &unk_1F190E3D8;
  v238[0] = @"lensName";
  v238[1] = @"focalLengthIn35mm";
  v239[0] = v200;
  v239[1] = &unk_1F190CFD0;
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v239 forKeys:v238 count:2];
  v243[1] = v27;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v243 forKeys:v242 count:2];
  v583[38] = v26;
  v582[39] = @"iPhone 6s Plus";
  v236[0] = &unk_1F190E428;
  v234[0] = @"lensName";
  v234[1] = @"focalLengthIn35mm";
  v235[0] = v2;
  v235[1] = &unk_1F190CFE8;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v235 forKeys:v234 count:2];
  v237[0] = v25;
  v236[1] = &unk_1F190E3F8;
  v232[0] = @"lensName";
  v232[1] = @"focalLengthIn35mm";
  v233[0] = v200;
  v233[1] = &unk_1F190D000;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v233 forKeys:v232 count:2];
  v237[1] = v24;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v237 forKeys:v236 count:2];
  v583[39] = v23;
  v582[40] = @"iPhone 6s";
  v230[0] = &unk_1F190E428;
  v228[0] = @"lensName";
  v228[1] = @"focalLengthIn35mm";
  v229[0] = v2;
  v229[1] = &unk_1F190CFE8;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v229 forKeys:v228 count:2];
  v231[0] = v22;
  v230[1] = &unk_1F190E3F8;
  v226[0] = @"lensName";
  v226[1] = @"focalLengthIn35mm";
  v227[0] = v200;
  v227[1] = &unk_1F190D000;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v227 forKeys:v226 count:2];
  v231[1] = v21;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v231 forKeys:v230 count:2];
  v583[40] = v20;
  v582[41] = @"iPhone 6 Plus";
  v224[0] = &unk_1F190E428;
  v222[0] = @"lensName";
  v222[1] = @"focalLengthIn35mm";
  v223[0] = v2;
  v223[1] = &unk_1F190CFE8;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v223 forKeys:v222 count:2];
  v225[0] = v19;
  v224[1] = &unk_1F190E3F8;
  v220[0] = @"lensName";
  v220[1] = @"focalLengthIn35mm";
  v221[0] = v200;
  v221[1] = &unk_1F190D000;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v221 forKeys:v220 count:2];
  v225[1] = v18;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v225 forKeys:v224 count:2];
  v583[41] = v17;
  v582[42] = @"iPhone 6";
  v218[0] = &unk_1F190E428;
  v216[0] = @"lensName";
  v216[1] = @"focalLengthIn35mm";
  v217[0] = v2;
  v217[1] = &unk_1F190CFE8;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v217 forKeys:v216 count:2];
  v219[0] = v16;
  v218[1] = &unk_1F190E3F8;
  v214[0] = @"lensName";
  v214[1] = @"focalLengthIn35mm";
  v215[0] = v200;
  v215[1] = &unk_1F190D000;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v215 forKeys:v214 count:2];
  v219[1] = v15;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v219 forKeys:v218 count:2];
  v583[42] = v14;
  v582[43] = @"iPhone 5s";
  v212[0] = &unk_1F190E3E8;
  v210[0] = @"lensName";
  v210[1] = @"focalLengthIn35mm";
  v211[0] = v2;
  v211[1] = &unk_1F190CFE8;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v211 forKeys:v210 count:2];
  v213[0] = v6;
  v212[1] = &unk_1F190E438;
  v208[0] = @"lensName";
  v208[1] = @"focalLengthIn35mm";
  v209[0] = v200;
  v209[1] = &unk_1F190D030;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v209 forKeys:v208 count:2];
  v213[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v213 forKeys:v212 count:2];
  v583[43] = v8;
  v582[44] = @"iPhone 5c";
  v206[0] = &unk_1F190E448;
  v204[0] = @"lensName";
  v204[1] = @"focalLengthIn35mm";
  v205[0] = v2;
  v205[1] = &unk_1F190D048;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v205 forKeys:v204 count:2];
  v207[0] = v9;
  v206[1] = &unk_1F190E438;
  v202[0] = @"lensName";
  v202[1] = @"focalLengthIn35mm";
  v203[0] = v200;
  v203[1] = &unk_1F190D048;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v203 forKeys:v202 count:2];
  v207[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v207 forKeys:v206 count:2];
  v583[44] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v583 forKeys:v582 count:45];

  return v12;
}

+ (id)cameraDeviceForDeviceName:(id)name camera:(int64_t)camera realLensFocalLength:(id)length nominalLensFocalLength:(id)focalLength
{
  v41 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  lengthCopy = length;
  focalLengthCopy = focalLength;
  v13 = focalLengthCopy;
  if (camera && focalLengthCopy && ([nameCopy lowercaseString], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "containsString:", @"iphone"), v14, (v15 & 1) != 0))
  {
    v16 = PXLocalizedStringFromTable(@"PXInfoPanelLCDMainCamera", @"PhotosUICore");
    v17 = PXLocalizedStringFromTable(@"PXInfoPanelLCDFrontCamera", @"PhotosUICore");
    v18 = PXLocalizedStringFromTable(@"PXInfoPanelLCDUltraWideCamera", @"PhotosUICore");
    PXLocalizedStringFromTable(@"PXInfoPanelLCDTelephotoCamera", @"PhotosUICore");
    v35[0] = &unk_1F190CE20;
    v35[1] = &unk_1F190CE38;
    v37 = v36 = v16;
    v33 = v37;
    v34 = v18;
    v35[2] = &unk_1F190CE50;
    v35[3] = &unk_1F190CE68;
    v38 = v18;
    v39 = v17;
    v35[4] = &unk_1F190CE80;
    v40 = v17;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:v35 count:5];
    v20 = [MEMORY[0x1E696AD98] numberWithInteger:camera];
    v21 = [v19 objectForKeyedSubscript:v20];

    if (v21)
    {
      v30 = v17;
      v32 = v16;
      v22 = PXLocalizedStringFromTable(@"PXInfoPanelLCDRearCamera", @"PhotosUICore");
      v23 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F1911188];
      v24 = PXLocalizedStringFromTable(@"PXInfoPanelLCDWideCamera", @"PhotosUICore");
      v25 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F19111A0];
      v31 = v23;
      v29 = v22;
      if (camera == 2)
      {
        if (([v23 containsObject:nameCopy] & 1) != 0 || (v22 = v24, objc_msgSend(v25, "containsObject:", nameCopy)))
        {
          v26 = v22;

          v21 = v26;
        }
      }

      v17 = v30;
      v27 = [[PXMetadataUtilitiesCameraDevice alloc] initWithDisplayName:v21 focalLength:lengthCopy focalLengthIn35mm:v13];

      v16 = v32;
    }

    else
    {
      v27 = [self cameraForFocalLength:lengthCopy deviceName:nameCopy];
    }
  }

  else
  {
    v27 = [self cameraForFocalLength:lengthCopy deviceName:nameCopy];
  }

  return v27;
}

+ (id)cameraForFocalLength:(id)length deviceName:(id)name
{
  lengthCopy = length;
  nameCopy = name;
  lowercaseString = [nameCopy lowercaseString];
  if ([lowercaseString containsString:@"iphone"])
  {
  }

  else
  {
    lowercaseString2 = [nameCopy lowercaseString];
    v9 = [lowercaseString2 containsString:@"apple vision pro"];

    if (!v9)
    {
      v18 = 0;
      goto LABEL_15;
    }
  }

  v10 = +[PXMetadataUtilitiesCameraDevice supportedDevices];
  v11 = [v10 objectForKeyedSubscript:nameCopy];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 objectForKeyedSubscript:lengthCopy];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 objectForKeyedSubscript:@"lensName"];
      v16 = [v14 objectForKeyedSubscript:@"focalLengthIn35mm"];
      v17 = v16;
      v18 = 0;
      if (v15 && v16)
      {
        v18 = [[PXMetadataUtilitiesCameraDevice alloc] initWithDisplayName:v15 focalLength:lengthCopy focalLengthIn35mm:v16];
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

LABEL_15:

  return v18;
}

@end