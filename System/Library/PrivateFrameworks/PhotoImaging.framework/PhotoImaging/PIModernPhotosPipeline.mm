@interface PIModernPhotosPipeline
- (id)_processedRenderNodeForComposition:(id)a3 input:(id)a4 pipelineState:(id)a5 error:(id *)a6;
- (id)evaluate:(id)a3 input:(id)a4 pipelineState:(id)a5 error:(id *)a6;
@end

@implementation PIModernPhotosPipeline

- (id)evaluate:(id)a3 input:(id)a4 pipelineState:(id)a5 error:(id *)a6
{
  v783 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v741 = a4;
  v10 = a5;
  v11 = [objc_alloc(MEMORY[0x1E69B3C40]) initWithPipelineState:v10];
  v12 = [v9 objectForKeyedSubscript:@"debug"];
  v752 = [MEMORY[0x1E695DF90] dictionary];
  v721 = [v10 mediaComponentType];
  v742 = v10;
  v749 = [v10 mediaComponentType];
  v737 = v749 == 1;
  v13 = [v9 objectForKeyedSubscript:@"raw"];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 objectForKeyedSubscript:@"inputDecoderVersion"];
    [v752 setObject:v15 forKeyedSubscript:@"inputDecoderVersion"];

    v16 = [v14 objectForKeyedSubscript:@"inputSushiLevel"];
    if (v16)
    {
      [v752 setObject:v16 forKeyedSubscript:@"kCGImageSourceShouldExtendRaw"];
    }

    v17 = [v14 objectForKeyedSubscript:@"gainMapVersion"];
    [v752 setObject:v17 forKeyedSubscript:@"gainMapVersion"];

    v18 = [v14 objectForKeyedSubscript:@"gainMapParameters"];
    [v752 setObject:v18 forKeyedSubscript:@"gainMapParameters"];

    v19 = [v14 objectForKeyedSubscript:@"boostVersion"];
    [v752 setObject:v19 forKeyedSubscript:@"boostVersion"];

    v20 = [v14 objectForKeyedSubscript:@"boostParams"];
    [v752 setObject:v20 forKeyedSubscript:@"boostParams"];

    v21 = [v12 objectForKeyedSubscript:@"raw_transferTone"];
    [v752 setObject:v21 forKeyedSubscript:@"debugTransferTone"];

    v22 = [v12 objectForKeyedSubscript:@"raw_boost"];
    [v752 setObject:v22 forKeyedSubscript:*MEMORY[0x1E695FA58]];

    v23 = [v12 objectForKeyedSubscript:@"raw_exposure"];
    [v752 setObject:v23 forKeyedSubscript:*MEMORY[0x1E695FAA0]];

    v24 = [v12 objectForKeyedSubscript:@"raw_blackPoint"];
    [v752 setObject:v24 forKeyedSubscript:*MEMORY[0x1E695FA50]];

    v25 = [v12 objectForKeyedSubscript:@"raw_toneMapping"];
    [v752 setObject:v25 forKeyedSubscript:@"inputToneMapping"];

    v26 = [v12 objectForKeyedSubscript:@"raw_gamutMapping"];
    [v752 setObject:v26 forKeyedSubscript:@"inputGamutMapMax"];
  }

  v744 = v12;
  v748 = [v9 objectForKeyedSubscript:@"rawNoiseReduction"];
  if ([v748 isEnabled])
  {
    v27 = [v748 objectForKeyedSubscript:@"detail"];
    [v752 setObject:v27 forKeyedSubscript:@"inputNoiseReductionDetailAmount"];

    v28 = [v748 objectForKeyedSubscript:@"color"];
    [v752 setObject:v28 forKeyedSubscript:@"inputUIColorNoiseReductionAmount"];

    v29 = [v748 objectForKeyedSubscript:@"luminance"];
    [v752 setObject:v29 forKeyedSubscript:@"inputUILuminanceNoiseReductionAmount"];

    v30 = [v748 objectForKeyedSubscript:@"sharpness"];
    [v752 setObject:v30 forKeyedSubscript:@"inputNoiseReductionSharpnessAmount"];

    v31 = [v748 objectForKeyedSubscript:@"contrast"];
    [v752 setObject:v31 forKeyedSubscript:@"inputNoiseReductionContrastAmount"];
  }

  v32 = [v9 objectForKeyedSubscript:@"whiteBalance"];
  v33 = v32;
  if (v14)
  {
    if ([v32 isEnabled])
    {
      v34 = [v33 objectForKeyedSubscript:@"colorType"];
      v35 = [v34 isEqualToString:@"tempTint"];

      if (v35)
      {
        v36 = [v33 objectForKeyedSubscript:@"temperature"];
        [v752 setObject:v36 forKeyedSubscript:@"inputNeutralTemperature"];

        v37 = [v33 objectForKeyedSubscript:@"tint"];
        [v752 setObject:v37 forKeyedSubscript:@"inputNeutralTint"];
      }
    }
  }

  v781 = *MEMORY[0x1E6960C70];
  v38 = *(MEMORY[0x1E6960C70] + 12);
  v782 = *(MEMORY[0x1E6960C70] + 8);
  v732 = *(MEMORY[0x1E6960C70] + 16);
  v39 = [v9 objectForKeyedSubscript:@"autoLoop"];
  v751 = v11;
  v40 = [v11 mediaTypeForComposition:v9];
  v41 = v39;
  if ([v39 isEnabled])
  {
    v42 = 0;
  }

  else
  {
    v42 = [v9 objectForKeyedSubscript:@"livePhotoKeyFrame"];
  }

  v43 = [v9 objectForKeyedSubscript:@"videoPosterFrame"];
  v746 = v9;
  v44 = [v9 objectForKeyedSubscript:@"trim"];
  v45 = v44;
  v46 = v40 & 0xFFFFFFFFFFFFFFFELL;
  v743 = v14;
  v747 = v41;
  v745 = v43;
  if (v749 != 1 || v46 != 2)
  {
    v725 = v38;
    if (v46 == 2)
    {
      v735 = a6;
      v730 = v44;
      v47 = v42;
      v53 = [v9 objectForKeyedSubscript:@"cropStraighten"];

      if (v53 && ([v747 isEnabled] & 1) == 0)
      {
        if (v40 == 3)
        {
          v54 = MEMORY[0x1E695E110];
        }

        else
        {
          v54 = MEMORY[0x1E695E118];
        }

        [v752 setObject:v54 forKeyedSubscript:@"hardCropCleanAperture"];
      }

      if (!v42)
      {
        if (v43)
        {
          v73 = [v43 objectForKeyedSubscript:@"time"];
          v74 = [v73 longLongValue];
          v75 = [v745 objectForKeyedSubscript:@"scale"];
          CMTimeMake(v760, v74, [v75 intValue]);
          v781 = *v760;
          v725 = *&v760[12];
          v782 = *&v760[8];
          v732 = *&v760[16];
        }

        goto LABEL_21;
      }

      v55 = [v42 objectForKeyedSubscript:@"time"];
      v56 = [v55 longLongValue];
      v57 = [v42 objectForKeyedSubscript:@"scale"];
      CMTimeMake(v760, v56, [v57 intValue]);
      v781 = *v760;
      v725 = *&v760[12];
      v782 = *&v760[8];
      v732 = *&v760[16];

      v51 = v747;
      v52 = v730;
LABEL_56:
      v49 = 0;
      v50 = v47 != 0;
      goto LABEL_57;
    }

    goto LABEL_54;
  }

  if (![v751 hasStaticTime])
  {
    if (v40 == 3)
    {
      v735 = a6;
      if (!v42)
      {
        v725 = v38;
        v730 = v45;
        v47 = 0;
        if ([v41 isEnabled])
        {
          v77 = [v41 objectForKeyedSubscript:@"flavor"];
          if (([v77 isEqualToString:@"LongExposure"] & 1) == 0)
          {
            v719 = v33;
            if ([v730 isEnabled])
            {
              v78 = [v730 objectForKeyedSubscript:@"start"];
              v79 = [v78 longLongValue];
              v80 = [v730 objectForKeyedSubscript:@"startScale"];
              CMTimeMake(v760, v79, [v80 intValue]);
              v781 = *v760;
              v81 = *&v760[12];
              v782 = *&v760[8];
              v82 = *&v760[16];
            }

            else
            {
              CMTimeMake(v760, 0, 60);
              v781 = *v760;
              v81 = *&v760[12];
              v782 = *&v760[8];
              v82 = *&v760[16];
            }

            *v760 = v781;
            *&v760[8] = __PAIR64__(v81, v782);
            v725 = v81;
            v732 = v82;
            *&v760[16] = v82;
            v148 = [MEMORY[0x1E696B098] valueWithCMTime:v760];
            [v752 setObject:v148 forKeyedSubscript:@"defaultFrameTime"];

            [v752 setObject:@"Video" forKeyedSubscript:@"mediaComponentType"];
            v33 = v719;
            v9 = v746;
          }
        }

        goto LABEL_21;
      }

      v58 = [v42 objectForKeyedSubscript:@"time"];
      v59 = [v58 longLongValue];
      [v42 objectForKeyedSubscript:@"scale"];
      v60 = v41;
      v62 = v61 = v33;
      CMTimeMake(v760, v59, [v62 intValue]);
      v781 = *v760;
      LODWORD(v59) = *&v760[12];
      v782 = *&v760[8];
      v63 = *&v760[16];

      *v760 = v781;
      *&v760[8] = __PAIR64__(v59, v782);
      v725 = v59;
      v732 = v63;
      *&v760[16] = v63;
      v33 = v61;
      v52 = v45;
      v64 = [MEMORY[0x1E696B098] valueWithCMTime:v760];
      [v752 setObject:v64 forKeyedSubscript:@"defaultFrameTime"];

      v51 = v60;
      [v752 setObject:@"Video" forKeyedSubscript:@"mediaComponentType"];
      [v752 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"hardCropCleanAperture"];
      a6 = v735;
      goto LABEL_55;
    }

    if (v43)
    {
      v65 = [v43 objectForKeyedSubscript:@"time"];
      v66 = v41;
      v67 = [v65 longLongValue];
      v68 = [v43 objectForKeyedSubscript:@"scale"];
      v69 = [v68 intValue];
      v70 = v67;
      v41 = v66;
      CMTimeMake(v760, v70, v69);
      v781 = *v760;
      v71 = *&v760[12];
      v782 = *&v760[8];
      v72 = *&v760[16];
    }

    else if ([v45 isEnabled])
    {
      v83 = [v45 objectForKeyedSubscript:@"start"];
      v84 = [v83 longLongValue];
      v85 = [v45 objectForKeyedSubscript:@"startScale"];
      v86 = [v85 intValue];
      v87 = v84;
      v41 = v747;
      CMTimeMake(v760, v87, v86);
      v781 = *v760;
      v71 = *&v760[12];
      v782 = *&v760[8];
      v72 = *&v760[16];
    }

    else
    {
      CMTimeMake(v760, 0, 60);
      v781 = *v760;
      v71 = *&v760[12];
      v782 = *&v760[8];
      v72 = *&v760[16];
    }

    *v760 = v781;
    *&v760[8] = __PAIR64__(v71, v782);
    v725 = v71;
    v732 = v72;
    *&v760[16] = v72;
    v88 = [MEMORY[0x1E696B098] valueWithCMTime:v760];
    [v752 setObject:v88 forKeyedSubscript:@"defaultFrameTime"];

    [v752 setObject:@"Video" forKeyedSubscript:@"mediaComponentType"];
    [v752 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"hardCropCleanAperture"];
LABEL_54:
    v51 = v41;
    v52 = v45;
LABEL_55:
    v47 = v42;
    v9 = v746;
    goto LABEL_56;
  }

  v725 = v38;
  v735 = a6;
  v730 = v45;
  v47 = v42;
  [v752 setObject:@"Video" forKeyedSubscript:@"mediaComponentType"];
  if ([v41 isEnabled])
  {
    v48 = MEMORY[0x1E695E110];
  }

  else
  {
    v48 = MEMORY[0x1E695E118];
  }

  [v752 setObject:v48 forKeyedSubscript:@"hardCropCleanAperture"];
LABEL_21:
  v49 = 0;
  v50 = v47 != 0;
  if (v40 == 3)
  {
    v51 = v747;
    a6 = v735;
    if (v47)
    {
      v52 = v730;
    }

    else
    {
      v52 = v730;
      if ([v747 isEnabled])
      {
        v50 = 0;
        v49 = 0;
      }

      else if (v721 == 2)
      {
        v50 = 0;
        v49 = 1;
      }

      else
      {
        v76 = [v752 objectForKeyedSubscript:@"mediaComponentType"];
        v49 = [v76 isEqualToString:@"Video"];

        v51 = v747;
        v50 = 0;
      }
    }
  }

  else
  {
    v51 = v747;
    v52 = v730;
    a6 = v735;
  }

LABEL_57:
  if ([v51 isEnabled])
  {
    [v51 objectForKeyedSubscript:@"flavor"];
    v90 = v89 = v51;
    v91 = [v90 isEqualToString:@"LongExposure"];
    if (v749 == 1)
    {
      v92 = v91;
    }

    else
    {
      v92 = 0;
    }

    v737 = v92;
    [v752 setObject:@"Video" forKeyedSubscript:@"mediaComponentType"];

    v51 = v89;
  }

  [v752 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"skipOrientation"];
  v93 = [v9 objectForKeyedSubscript:@"semanticStyle"];
  v94 = [v93 isEnabled];
  if (v14)
  {
    v95 = 0;
  }

  else
  {
    v95 = v94;
  }

  if (v95 == 1)
  {
    [v752 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"revertToOriginalStyle"];
  }

  v96 = [v751 beginGroupWithName:@"Master" error:a6];
  if (a6 && *a6)
  {
    v97 = 0;
    v98 = v742;
    goto LABEL_593;
  }

  v714 = v49;
  v99 = [v9 objectForKeyedSubscript:@"source"];
  v100 = [v751 renderNodeFromSource:v99 settings:v752 error:a6];

  if (!a6 || !*a6)
  {
    v710 = v50;
    v716 = v47;
    if (v95)
    {
      [v752 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"revertToOriginalStyle"];
      v101 = [v9 objectForKeyedSubscript:@"source"];
      v717 = [v751 renderNodeFromSource:v101 settings:v752 error:a6];

      if (a6 && *a6)
      {
        v97 = 0;
        v102 = v717;
        v98 = v742;
LABEL_591:
        v51 = v747;

        v47 = v716;
        goto LABEL_592;
      }
    }

    else
    {
      v717 = 0;
    }

    v768 = 0;
    v103 = [v751 inputForPath:@"RAW/Linear" error:&v768];
    v713 = v768;
    if (v103)
    {
      v718 = [v751 addTagWithName:@"Source" inputNode:v103 error:a6];

      if (a6)
      {
        if (*a6)
        {
          v97 = 0;
LABEL_89:
          v102 = v717;
          v98 = v742;
LABEL_590:

          goto LABEL_591;
        }

        v104 = v100;
        goto LABEL_87;
      }

      v104 = v100;
    }

    else
    {
      v104 = [v751 addTagWithName:@"Source" inputNode:v100 error:a6];

      if (a6)
      {
        v718 = 0;
        if (*a6)
        {
          v100 = v104;
          v97 = 0;
          goto LABEL_89;
        }

LABEL_87:
        [v751 endGroupWithName:@"Master" error:a6];
        if (*a6)
        {
          v97 = 0;
          v100 = v104;
          goto LABEL_89;
        }

        v105 = [(NURenderNode *)v104 imageProperties:a6];
        if (*a6)
        {
          v97 = 0;
          v102 = v717;
          v98 = v742;
LABEL_589:

          v100 = v104;
          goto LABEL_590;
        }

LABEL_92:
        v708 = v105;
        v720 = v33;
        v731 = v52;
        if ([MEMORY[0x1E69B3AB0] enableHDRSupport] && objc_msgSend(v742, "auxiliaryImageType") == 1 && ((objc_msgSend(MEMORY[0x1E69B3AB0], "allAssetsCanUseHDRPipeline") & 1) != 0 || objc_msgSend(v708, "isHDR")))
        {
          if (*MEMORY[0x1E69B3D78] != -1)
          {
            dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_1262_23130);
          }

          v106 = *MEMORY[0x1E69B3D80];
          if (os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG))
          {
            *v760 = 0;
            _os_log_debug_impl(&dword_1C7694000, v106, OS_LOG_TYPE_DEBUG, "Evaluating pipeline as HDR input", v760, 2u);
          }

          v107 = v751;

          v706 = 1;
        }

        else
        {
          v107 = v751;
          v706 = 0;
        }

        v108 = v104;
        v709 = v108;
        if (v718)
        {
          v109 = [v744 objectForKeyedSubscript:@"raw_applyFirst"];
          if ([v109 BOOLValue])
          {
LABEL_106:

            goto LABEL_107;
          }

          +[PIGlobalSettings globalSettings];
          v111 = v110 = v93;
          v112 = [v111 rawApplyBoostFirst];

          v93 = v110;
          if ((v112 & 1) == 0)
          {
            v109 = [v743 objectForKeyedSubscript:@"boostAmount"];
            v113 = [v743 objectForKeyedSubscript:@"boostVersion"];
            v114 = [v743 objectForKeyedSubscript:@"boostParams"];
            v115 = NUMakeDictionary4();
            v108 = [v107 nodeByApplyingFilterWithName:@"PIForwardFakeBoost" useHDRFilter:v706 settingsAndInputs:v115];

            v93 = v110;
            goto LABEL_106;
          }
        }

LABEL_107:
        v104 = [v107 addTagWithName:@"pre-SemanticStyle" inputNode:v108 error:a6];

        if (a6 && *a6)
        {
          v97 = 0;
          v33 = v720;
          v52 = v731;
          v102 = v717;
          v9 = v746;
          v98 = v742;
LABEL_588:

          v105 = v708;
          goto LABEL_589;
        }

        v736 = a6;
        v52 = v731;
        v705 = v93;
        if (![v93 isEnabled])
        {
          v707 = 0;
          v33 = v720;
          v127 = a6;
          v9 = v746;
          v128 = v725;
LABEL_122:
          v133 = [v751 addTagWithName:@"pre-AutoLoop" inputNode:v104 error:v127];

          if (v127 && *v127)
          {
            goto LABEL_124;
          }

          if (![v747 isEnabled])
          {
LABEL_156:
            v151 = v52;
            if ((v128 & 1) != 0 && v749 == 1)
            {
              v152 = objc_alloc(MEMORY[0x1E69B3BD8]);
              *v760 = v781;
              *&v760[8] = __PAIR64__(v128, v782);
              *&v760[16] = v732;
              v153 = [MEMORY[0x1E696B098] valueWithCMTime:v760];
              v154 = NUMakeDictionary2();
              v155 = NUMakeDictionary1();
              v156 = [v152 initWithSettings:v154 inputs:v155];

              v127 = v736;
              v93 = v705;

              v9 = v746;
              v133 = v156;
            }

            if (v95 && ([v747 isEnabled] & 1) == 0)
            {
              v159 = [v751 addTagWithName:@"ShowOriginalSource" inputNode:v717 error:v127];

              if (v127)
              {
                v52 = v151;
                if (*v127)
                {
                  v97 = 0;
                  v102 = v159;
                  goto LABEL_126;
                }

                v717 = v159;
                v157 = v133;
                v158 = 0x1E69B3000;
                goto LABEL_169;
              }

              v717 = v159;
              v157 = v133;
            }

            else
            {
              v157 = [v751 addTagWithName:@"ShowOriginalSource" inputNode:v133 error:v127];

              if (v127)
              {
                v158 = 0x1E69B3000;
                v52 = v151;
                if (*v127)
                {
                  v97 = 0;
                  v133 = v157;
                  goto LABEL_125;
                }

                goto LABEL_169;
              }
            }

            v158 = 0x1E69B3000uLL;
            v52 = v151;
LABEL_169:
            if (!v706 || ([*(v158 + 2736) HLGOpticalScale], v160 <= 1.0))
            {
LABEL_174:
              v129 = v157;
              v104 = [v751 addTagWithName:@"pre-Adjustments" inputNode:v129 error:v127];

              if (v127 && *v127)
              {
                v97 = 0;
                v102 = v717;
                goto LABEL_177;
              }

              v704 = v129;
              if (v737)
              {
                v161 = [v9 objectForKeyedSubscript:@"retouch"];
                v162 = [(PIPortraitEffectNode *)v161 isEnabled];
                v703 = v161;
                if (v162)
                {
                  v779 = @"retouch";
                  v780 = v161;
                  v163 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v780 forKeys:&v779 count:1];
                  v164 = [v751 cacheNode:v104 type:@"Retouch" settings:v163 error:v127];

                  if (v127 && *v127)
                  {
                    v700 = v164;
                    v97 = 0;
                    v98 = v742;
                    v52 = v731;
                    v93 = v705;
                    v102 = v717;
                    v9 = v746;

LABEL_584:
                    v149 = v104;
                    v150 = v703;
                    goto LABEL_585;
                  }

                  v777[0] = @"image";
                  v777[1] = @"retouchedImage";
                  v778[0] = v104;
                  v778[1] = v164;
                  v176 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v778 forKeys:v777 count:2];
                  v175 = v751;
                  v177 = [v751 switchFromNodes:v176 mainInput:@"image" selector:&__block_literal_global_23163];

                  v104 = v177;
                  v52 = v731;
                  v93 = v705;
                  v9 = v746;
                }

                else
                {
                  v175 = v751;
                }

                v149 = [v175 addTagWithName:@"Pre-Inpaint" inputNode:v104 error:v127];

                if (v127 && *v127)
                {
                  v97 = 0;
                  v102 = v717;
                  v150 = v703;
                  goto LABEL_195;
                }

                v178 = [v9 objectForKeyedSubscript:@"inpaint"];
                v701 = v178;
                if ([v178 isEnabled])
                {
                  v179 = [v9 objectForKeyedSubscript:@"inpaintMasks"];
                  [v178 objectForKeyedSubscript:@"operations"];
                  v699 = v698 = v179;
                  v165 = [PIInpaintCacheNode inpaintNodeWithInput:"inpaintNodeWithInput:operations:masks:error:" operations:v149 masks:? error:?];

                  if (v127 && *v127)
                  {
                    v97 = 0;
                    v102 = v717;
                    v98 = v742;
                    goto LABEL_582;
                  }

                  v162 = 1;
                }

                else
                {
                  v165 = v149;
                }

                v104 = [v751 addTagWithName:@"Inpaint" inputNode:v165 error:v127];

                if (v127 && *v127)
                {
                  v97 = 0;
                  v52 = v731;
                  v102 = v717;
                  v98 = v742;
LABEL_583:

                  goto LABEL_584;
                }

                v207 = [v9 objectForKeyedSubscript:@"apertureRedEye"];
                if ([v207 isEnabled])
                {
                  v208 = [v751 performApertureRedeyeOnImage:v104 useHDRFilter:v706 redEyeAdjustment:v207];

                  v162 = 1;
                  v104 = v208;
                  v9 = v746;
                }

                v209 = [v9 objectForKeyedSubscript:@"redEye"];
                if ([v209 isEnabled])
                {
                  v210 = [v751 performRedeyeOnImage:v104 useHDRFilter:v706 redEyeAdjustment:v209];

                  v162 = 1;
                  v104 = v210;
                  v9 = v746;
                }

                v33 = v720;
                v127 = v736;
                v93 = v705;
              }

              else
              {
                v162 = 0;
              }

              v165 = v104;
              v166 = [v9 objectForKeyedSubscript:@"depthEffect"];
              v167 = [v9 objectForKeyedSubscript:@"effect3D"];
              v168 = [v9 objectForKeyedSubscript:@"portraitEffect"];
              v701 = v166;
              v689 = [v166 isEnabled];
              v698 = v167;
              v687 = [v167 isEnabled];
              v699 = v168;
              v169 = [v168 isEnabled];
              v703 = v165;
              v691 = v169;
              if (v749 != 1)
              {
                goto LABEL_204;
              }

              v170 = v708;
              if ((v169 & 1) == 0)
              {
                v171 = v165;
                v172 = v93;
                v98 = v742;
                v775 = @"keepCacheWhenAtOneToOne";
                v173 = [MEMORY[0x1E696AD98] numberWithBool:v162];
                v776 = v173;
                v174 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v776 forKeys:&v775 count:1];
                v165 = [v751 cacheNode:v165 type:@"Intermediate" settings:v174 error:v127];

                if (v127 && *v127)
                {
                  v93 = v172;
                  v97 = 0;
                  v102 = v717;
                  v9 = v746;
LABEL_582:

                  v104 = v165;
                  v52 = v731;
                  goto LABEL_583;
                }

                v170 = v708;
                v169 = v691;
              }

              v180 = [v170 auxiliaryImagePropertiesForType:2];

              if (v180)
              {
                v181 = [MEMORY[0x1E695DF90] dictionary];
                v182 = [v701 objectForKeyedSubscript:@"depthInfo"];
                [v181 setObject:v182 forKeyedSubscript:@"depthInfo"];

                v183 = [v701 objectForKeyedSubscript:@"aperture"];
                [v181 setObject:v183 forKeyedSubscript:@"aperture"];

                v184 = [v701 objectForKeyedSubscript:@"focusRect"];
                [v181 setObject:v184 forKeyedSubscript:@"focusRect"];

                v185 = [v701 objectForKeyedSubscript:@"glassesMatteAllowed"];
                [v181 setObject:v185 forKeyedSubscript:@"glassesMatteAllowed"];

                v127 = v736;
                v186 = [[PIPortraitMakeBlurMapNode alloc] initWithInput:v165 settings:v181];

                v187 = v186;
              }

              else
              {
LABEL_204:
                v187 = 0;
              }

              v188 = [v744 objectForKeyedSubscript:@"inputExposure"];
              [v188 doubleValue];
              v190 = v189;

              if (v190 != 0.0)
              {
                v191 = [v744 objectForKeyedSubscript:@"inputExposure"];
                v192 = NUMakeDictionary2();
                v193 = [v751 nodeByApplyingFilterWithName:@"CIExposureAdjust" useHDRFilter:v706 settingsAndInputs:v192];
                v194 = v165;
                v165 = v193;

                v127 = v736;
              }

              if (((v749 == 1) & v169) == 1)
              {
                v195 = [MEMORY[0x1E695DF90] dictionary];
                v196 = [v699 objectForKeyedSubscript:@"kind"];
                [v195 setObject:v196 forKeyedSubscript:@"kind"];

                v197 = [v699 objectForKeyedSubscript:@"portraitInfo"];
                [v195 setObject:v197 forKeyedSubscript:@"portraitInfo"];

                v198 = [v699 objectForKeyedSubscript:@"strength"];
                [v195 setObject:v198 forKeyedSubscript:@"strength"];

                v199 = [v699 objectForKeyedSubscript:@"spillMatteAllowed"];
                [v195 setObject:v199 forKeyedSubscript:@"spillMatteAllowed"];

                v694 = v187;
                v200 = [[PIPortraitEffectNode alloc] initWithInput:v165 blurMap:v187 settings:v195];

                if ([v751 versionForPortraitEffect:v699] < 2)
                {
                  v93 = v705;
                }

                else
                {
                  v165 = [v751 addTagWithName:@"PortraitV2" inputNode:v200 error:v736];

                  v93 = v705;
                  if (v736 && *v736)
                  {
                    v697 = v195;
                    v97 = 0;
                    v102 = v717;
                    v187 = v694;
LABEL_254:
                    v9 = v746;
                    v98 = v742;
LABEL_581:

                    goto LABEL_582;
                  }

                  v200 = v165;
                }

                v165 = v200;
                v127 = v736;
                v187 = v694;
                v201 = v749;
                v202 = v751;
              }

              else
              {
                v201 = v749;
                v202 = v751;
                v93 = v705;
              }

              v203 = v165;
              v204 = [v746 objectForKeyedSubscript:@"portraitVideo"];
              v165 = [v202 addTagWithName:@"pre-PortraitVideo" inputNode:v165 error:v127];

              v697 = v204;
              if (v127 && *v127)
              {
LABEL_253:
                v97 = 0;
                v102 = v717;
                goto LABEL_254;
              }

              if ([v204 isEnabled])
              {
                v205 = [v746 objectForKeyedSubscript:@"source"];
                v206 = [v751 isSourceAvailable:v205 sourceSettings:&unk_1F4720220];

                if (v206)
                {
                  v686 = [v751 auxiliaryImageFromComposition:v746 type:@"Disparity" mediaComponentType:@"Video" error:v127];
                  if (v127 && *v127)
                  {
                    v9 = v746;
                    v97 = 0;
                    v98 = v742;
                    v93 = v705;
                    v102 = v717;
LABEL_580:

                    goto LABEL_581;
                  }

                  v211 = [v204 objectForKeyedSubscript:@"disparityKeyframes"];
                  v212 = [v204 objectForKeyedSubscript:@"apertureKeyframes"];
                  [v204 objectForKeyedSubscript:@"debugMode"];
                  v214 = v213 = v165;
                  v215 = [v751 portraitVideo:v213 disparityInput:v686 disparityKeyframes:v211 apertureKeyframes:v212 debugMode:objc_msgSend(v214 error:{"integerValue"), v127}];

                  if (v127 && *v127)
                  {
                    v97 = 0;
                    v165 = v215;
                    v98 = v742;
                    v33 = v720;
                    v93 = v705;
                    v102 = v717;
                    v9 = v746;
                    goto LABEL_580;
                  }

                  v695 = v187;
                  if (v201 != 1)
                  {
LABEL_243:
                    v221 = [v204 objectForKeyedSubscript:@"debugMode"];
                    v222 = [v221 intValue];

                    if ((v222 & 0xFFFFFFFE) == 6)
                    {
                      v223 = [v746 objectForKeyedSubscript:@"source"];
                      v224 = [v204 objectForKeyedSubscript:@"cinematographyState"];
                      v225 = [v751 portraitVideoDebugDetectedObjects:v215 source:v223 cinematographyState:v224 monochrome:v222 == 7 error:v127];

                      if (v127)
                      {
                        if (*v127)
                        {
                          v97 = 0;
                          v98 = v742;
                          v33 = v720;
                          v93 = v705;
                          v102 = v717;
                          v187 = v695;
                          v9 = v746;
                          v165 = v225;
                          goto LABEL_580;
                        }

                        v165 = v225;
                        v33 = v720;
                        v127 = v736;
                        goto LABEL_250;
                      }

                      v165 = v225;
                    }

                    else
                    {
                      v165 = v215;
                    }

                    v33 = v720;
LABEL_250:
                    v93 = v705;

                    v187 = v695;
                    goto LABEL_251;
                  }

                  v683 = objc_alloc(MEMORY[0x1E69B3BD8]);
                  v216 = MEMORY[0x1E696B098];
                  if (v742)
                  {
                    [v742 time];
                    if ((v766 & 0x100000000) != 0)
                    {
                      [v742 time];
LABEL_242:
                      v217 = [v216 valueWithCMTime:v760];
                      v218 = NUMakeDictionary2();
                      v219 = NUMakeDictionary1();
                      v220 = [v683 initWithSettings:v218 inputs:v219];

                      v215 = v220;
                      goto LABEL_243;
                    }
                  }

                  else
                  {
                    v766 = 0;
                    v765 = 0;
                    v767 = 0;
                  }

                  *v760 = v781;
                  *&v760[8] = __PAIR64__(v725, v782);
                  *&v760[16] = v732;
                  goto LABEL_242;
                }

                v93 = v705;
              }

LABEL_251:
              v226 = v165;
              v165 = [v751 addTagWithName:@"post-PortraitVideo" inputNode:v165 error:v127];

              if (v127 && *v127)
              {
                goto LABEL_253;
              }

              v9 = v746;
              if (((v201 == 1) & v689) == 1)
              {
                v98 = v742;
                if (v187)
                {
                  v227 = v93;
                  v228 = [MEMORY[0x1E695DF90] dictionary];
                  v229 = [v701 objectForKeyedSubscript:@"depthInfo"];
                  [v228 setObject:v229 forKeyedSubscript:@"depthInfo"];

                  v230 = [v701 objectForKeyedSubscript:@"aperture"];
                  [v228 setObject:v230 forKeyedSubscript:@"aperture"];

                  if (v691)
                  {
                    v231 = [v699 objectForKeyedSubscript:@"kind"];
                    [v228 setObject:v231 forKeyedSubscript:@"portraitEffect"];
                  }

                  else
                  {
                    [v228 setObject:0 forKeyedSubscript:@"portraitEffect"];
                  }

                  v232 = [[PIDepthEffectNode alloc] initWithInput:v165 blurMap:v187 settings:v228];

                  v233 = +[PIGlobalSettings globalSettings];
                  v234 = [v233 portraitDrawDebugInfo];

                  if (v234)
                  {
                    [MEMORY[0x1E695DF90] dictionary];
                    v236 = v235 = v187;
                    v237 = [v701 objectForKeyedSubscript:@"depthInfo"];
                    [v236 setObject:v237 forKeyedSubscript:@"depthInfo"];

                    v238 = objc_alloc(MEMORY[0x1E69B3A70]);
                    v773 = *MEMORY[0x1E695FAB0];
                    v774 = v232;
                    v239 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v774 forKeys:&v773 count:1];
                    v240 = [v238 initWithFilterName:@"PIPortraitDebugFilter" settings:v236 inputs:v239];

                    v187 = v235;
                    v232 = v240;
                  }

                  v98 = v742;
                  v93 = v227;
                  v9 = v746;

                  v165 = v232;
                  v33 = v720;
                  v127 = v736;
                }
              }

              else
              {
                v98 = v742;
              }

              v241 = v165;
              v165 = [v751 addTagWithName:@"masterSpace" inputNode:v165 error:v127];

              if (v127 && *v127)
              {
                v97 = 0;
                v102 = v717;
                goto LABEL_581;
              }

              v242 = v165;
              v750 = [v9 objectForKeyedSubscript:@"noiseReduction"];
              v686 = v242;
              v696 = v187;
              if ([v750 isEnabled])
              {
                v243 = [v750 objectForKeyedSubscript:@"radius"];
                [v243 doubleValue];
                v245 = v244;

                v246 = [v750 objectForKeyedSubscript:@"edgeDetail"];
                [v246 doubleValue];
                v248 = v247;

                v249 = v245 * 0.5;
                if (v721 != 2)
                {
                  v249 = v245;
                }

                v250 = [MEMORY[0x1E69B3C38] scaleMultiplyOfScalar:v249];
                v251 = [MEMORY[0x1E69B3C38] scaleMultiplyOfScalar:v248];
                NUMakeDictionary3();
                v253 = v252 = v93;
                v242 = [v751 nodeByApplyingFilterWithName:@"PIBilateralFilter" useHDRFilter:v706 settingsAndInputs:v253];

                v93 = v252;
                v9 = v746;
                v127 = v736;
                v33 = v720;
              }

              if (v707)
              {
                v254 = [[PISemanticStyleApplyNode alloc] initWithInput:v242 style:v707 thumbnail:v703];

                v242 = v254;
              }

              v165 = [v751 addTagWithName:@"pre-WB" inputNode:v242 error:v127];

              if (v127 && *v127)
              {
                goto LABEL_301;
              }

              if (![v33 isEnabled])
              {
LABEL_299:
                v277 = v165;
                v165 = [v751 addTagWithName:@"pre-Mute" inputNode:v165 error:v127];

                if (v127 && *v127)
                {
LABEL_301:
                  v97 = 0;
LABEL_579:
                  v102 = v717;

                  goto LABEL_580;
                }

                v278 = [v9 objectForKeyedSubscript:@"mute"];
                if ([v278 isEnabled])
                {
                  v279 = [objc_alloc(MEMORY[0x1E69B3BB8]) initWithInput:v165];

                  v165 = v279;
                }

                v280 = v165;
                v165 = [v751 addTagWithName:@"Mute" inputNode:v165 error:v127];

                if (v127 && *v127)
                {
                  v97 = 0;
LABEL_578:

                  goto LABEL_579;
                }

                v734 = v278;
                if ([v747 isEnabled] && (objc_msgSend(v747, "objectForKeyedSubscript:", @"flavor"), v281 = objc_claimAutoreleasedReturnValue(), v282 = objc_msgSend(v281, "isEqualToString:", @"LongExposure"), v281, !v282))
                {
                  v288 = 1;
                }

                else
                {
                  v283 = [v751 addTagWithName:@"pre-LivePhotoKeyFrame" inputNode:v165 error:v736];

                  if (v736 && *v736)
                  {
                    v97 = 0;
                    v165 = v283;
LABEL_577:
                    v278 = v734;
                    goto LABEL_578;
                  }

                  if (v710)
                  {
                    v284 = [v716 objectForKeyedSubscript:@"time"];
                    v285 = [v284 longLongValue];
                    v286 = [v716 objectForKeyedSubscript:@"scale"];
                    CMTimeMake(v760, v285, [v286 intValue]);
                    v781 = *v760;
                    LODWORD(v285) = *&v760[12];
                    v782 = *&v760[8];
                    v287 = *&v760[16];

                    *v760 = v781;
                    *&v760[8] = __PAIR64__(v285, v782);
                    *&v760[16] = v287;
                    v165 = [v751 livePhotoKeyFrameMetadataFromNode:v283 time:v760 error:v736];

                    if (v736 && *v736)
                    {
                      goto LABEL_330;
                    }

                    v283 = v165;
                  }

                  v165 = [v751 addTagWithName:@"LivePhotoKeyFrame" inputNode:v283 error:v736];

                  if (v736 && *v736)
                  {
LABEL_330:
                    v97 = 0;
LABEL_576:
                    v98 = v742;
                    v9 = v746;
                    v33 = v720;
                    v93 = v705;
                    v187 = v696;
                    goto LABEL_577;
                  }

                  v288 = 0;
                }

                v289 = [v751 addTagWithName:@"pre-Trim" inputNode:v165 error:v736];

                if (v736 && *v736)
                {
                  v97 = 0;
                  v98 = v742;
                  v9 = v746;
                  v93 = v705;
                  v187 = v696;
                  v278 = v734;
                  v165 = v289;
                  v33 = v720;
                  goto LABEL_578;
                }

                if ((v288 | [v731 isEnabled] ^ 1))
                {
                  v290 = v289;
                }

                else
                {
                  memset(v760, 0, 24);
                  v291 = [v731 objectForKeyedSubscript:@"start"];
                  v292 = [v291 longLongValue];
                  v293 = [v731 objectForKeyedSubscript:@"startScale"];
                  CMTimeMake(v760, v292, [v293 intValue]);

                  memset(v759, 0, 24);
                  v294 = [v731 objectForKeyedSubscript:@"end"];
                  v295 = [v294 longLongValue];
                  v296 = [v731 objectForKeyedSubscript:@"endScale"];
                  CMTimeMake(v759, v295, [v296 intValue]);

                  v764 = *v760;
                  v763 = *v759;
                  v290 = [v751 trimInput:v289 startTime:&v764 endTime:&v763 error:v736];

                  if (v736 && *v736)
                  {
                    goto LABEL_333;
                  }
                }

                v165 = [v751 addTagWithName:@"Trim" inputNode:v290 error:v736];

                if (v736 && *v736)
                {
                  goto LABEL_330;
                }

                v290 = [v751 addTagWithName:@"pre-SloMo" inputNode:v165 error:v736];

                if (v736 && *v736)
                {
LABEL_333:
                  v97 = 0;
                  v165 = v290;
                  goto LABEL_576;
                }

                v690 = [v746 objectForKeyedSubscript:@"slomo"];
                if (v690)
                {
                  memset(v760, 0, 24);
                  v297 = [v690 objectForKeyedSubscript:@"start"];
                  v298 = [v297 longLongValue];
                  v299 = [v690 objectForKeyedSubscript:@"startScale"];
                  CMTimeMake(v760, v298, [v299 intValue]);

                  memset(v759, 0, 24);
                  v300 = [v690 objectForKeyedSubscript:@"end"];
                  v301 = [v300 longLongValue];
                  v302 = [v690 objectForKeyedSubscript:@"endScale"];
                  CMTimeMake(v759, v301, [v302 intValue]);

                  if (((v288 | [v731 isEnabled] ^ 1) & 1) == 0)
                  {
                    memset(&v764, 0, sizeof(v764));
                    v303 = [v731 objectForKeyedSubscript:@"start"];
                    v304 = [v303 longLongValue];
                    v305 = [v731 objectForKeyedSubscript:@"startScale"];
                    CMTimeMake(&v764, v304, [v305 intValue]);

                    lhs = *v760;
                    rhs = v764;
                    CMTimeSubtract(&v763, &lhs, &rhs);
                    *v760 = v763;
                    lhs = *v759;
                    rhs = v764;
                    CMTimeSubtract(&v763, &lhs, &rhs);
                    *v759 = v763;
                  }

                  v306 = [v690 objectForKeyedSubscript:@"rate"];
                  [v306 floatValue];
                  v308 = v307;

                  v764 = *v760;
                  v763 = *v759;
                  v165 = [v751 createSloMoWithInput:v290 startTime:&v764 endTime:&v763 rate:v736 error:{COERCE_DOUBLE(__PAIR64__(*&v759[4], v308))}];

                  if (v736 && *v736)
                  {
                    goto LABEL_357;
                  }
                }

                else
                {
                  v165 = v290;
                }

                v309 = v165;
                v165 = [v751 addTagWithName:@"SloMo" inputNode:v165 error:v736];

                if (v736 && *v736)
                {
                  goto LABEL_357;
                }

                if (v737)
                {
                  v310 = [v746 objectForKeyedSubscript:@"semanticEnhance"];
                  if ([v310 isEnabled])
                  {
                    v311 = v165;
                    v312 = [v310 objectForKeyedSubscript:@"sceneLabel"];
                    v313 = MEMORY[0x1E695DF90];
                    v165 = v311;
                    v772[0] = v311;
                    v771[0] = @"inputImage";
                    v771[1] = @"inputConfidence";
                    v314 = [v310 objectForKeyedSubscript:@"sceneConfidence"];
                    v772[1] = v314;
                    v315 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v772 forKeys:v771 count:2];
                    v316 = [v313 dictionaryWithDictionary:v315];

                    v317 = [v310 objectForKeyedSubscript:@"faceBoundingBoxes"];
                    [v316 setObject:v317 forKeyedSubscript:@"inputFaceBoxArray"];

                    if ([v312 isEqualToString:@"platedFood"])
                    {
                      v318 = [v310 objectForKeyedSubscript:@"boundingBoxes"];
                      [v316 setObject:v318 forKeyedSubscript:@"inputBoundingBoxArray"];

                      v319 = @"CIDynamicFood";
                    }

                    else
                    {
                      if (([v312 isEqualToString:@"sunsetOrSunrise"] & 1) == 0 && (objc_msgSend(v312, "isEqualToString:", @"genericLandscape") & 1) == 0)
                      {
                        if (v736)
                        {
                          *v736 = [MEMORY[0x1E69B3A48] invalidError:@"Unknown sceneLabel when rendering semantic enhance adjustment" object:v310];
                        }

                        goto LABEL_357;
                      }

                      v319 = @"CIDynamicRender";
                    }

                    v320 = [v751 nodeByApplyingFilterWithName:v319 useHDRFilter:v706 settingsAndInputs:v316];

                    v321 = [v310 objectForKeyedSubscript:@"intensity"];

                    if (v321)
                    {
                      v322 = [v310 objectForKeyedSubscript:@"intensity"];
                      v323 = NUMakeDictionary4();
                      v324 = [v751 nodeByApplyingFilterWithName:@"CIDissolveTransition" useHDRFilter:v706 settingsAndInputs:v323];

                      v320 = v324;
                    }

                    v165 = v320;
                  }
                }

                v325 = v165;
                v165 = [v751 addTagWithName:@"pre-SmartTone" inputNode:v165 error:v736];

                if (v736)
                {
                  if (*v736)
                  {
LABEL_357:
                    v97 = 0;
LABEL_575:

                    goto LABEL_576;
                  }
                }

                v676 = [v746 objectForKeyedSubscript:@"smartTone"];
                if ([v676 isEnabled])
                {
                  v326 = [v676 objectForKeyedSubscript:@"inputShadows"];
                  [v326 doubleValue];
                  v328 = v327;
                  v329 = [v676 objectForKeyedSubscript:@"offsetShadows"];
                  [v329 doubleValue];
                  v331 = v328 + v330;

                  if (v737)
                  {
                    v332 = [v676 objectForKeyedSubscript:@"statistics"];
                    v333 = v332;
                    if (v332)
                    {
                      v334 = [v332 objectForKeyedSubscript:@"lightMap"];

                      if (v334)
                      {
                        v726 = [v333 objectForKeyedSubscript:@"lightMap"];
                        v335 = fmax(v331, 0.0);
                        if ([v751 isCIFilterAvailable:@"CILocalLightMapPrepare" propertyName:0])
                        {
                          v336 = NUMakeDictionary3();
                          v337 = [v751 nodeByApplyingFilterWithName:@"CILocalLightMapPrepare" useHDRFilter:v706 settingsAndInputs:v336];

                          v338 = MEMORY[0x1E696AD98];
                          v339 = [v676 objectForKeyedSubscript:@"inputLocalLight"];
                          [v339 doubleValue];
                          v341 = v340;
                          v342 = [v676 objectForKeyedSubscript:@"offsetLocalLight"];
                          [v342 doubleValue];
                          v344 = [v338 numberWithDouble:v341 + v343];
                          v345 = [MEMORY[0x1E696AD98] numberWithDouble:v335];
                          v346 = v344;
                          v722 = v337;
                          v347 = NUMakeDictionary5();
                          v348 = [v751 nodeByApplyingFilterWithName:@"CILocalLightFilter" useHDRFilter:v706 settingsAndInputs:{v347, @"__dominantInputSettingsKey", @"inputImage"}];

                          v165 = v347;
                        }

                        else
                        {
                          v349 = MEMORY[0x1E696AD98];
                          v722 = [v676 objectForKeyedSubscript:@"inputLocalLight"];
                          [v722 doubleValue];
                          v351 = v350;
                          v339 = [v676 objectForKeyedSubscript:@"offsetLocalLight"];
                          [v339 doubleValue];
                          v353 = [v349 numberWithDouble:v351 + v352];
                          [MEMORY[0x1E696AD98] numberWithDouble:v335];
                          v346 = v342 = v353;
                          v345 = NUMakeDictionary6();
                          v348 = [v751 nodeByApplyingFilterWithName:@"CILocalLightFilter" useHDRFilter:v706 settingsAndInputs:{v345, @"inputGuideImage", v704, @"__dominantInputSettingsKey", @"inputImage"}];
                        }

                        v165 = v348;
                      }
                    }
                  }

                  v354 = [v676 objectForKeyedSubscript:@"inputExposure"];
                  [v354 doubleValue];
                  v356 = v355;
                  v357 = [v676 objectForKeyedSubscript:@"offsetExposure"];
                  [v357 doubleValue];
                  v359 = v356 + v358;

                  v360 = [v676 objectForKeyedSubscript:@"inputContrast"];
                  [v360 doubleValue];
                  v362 = v361;
                  v363 = [v676 objectForKeyedSubscript:@"offsetContrast"];
                  [v363 doubleValue];
                  v365 = v362 + v364;

                  v366 = [v676 objectForKeyedSubscript:@"inputBrightness"];
                  [v366 doubleValue];
                  v368 = v367;
                  v369 = [v676 objectForKeyedSubscript:@"offsetBrightness"];
                  [v369 doubleValue];
                  v371 = v368 + v370;

                  v372 = [v676 objectForKeyedSubscript:@"inputHighlights"];
                  [v372 doubleValue];
                  v374 = v373;
                  v375 = [v676 objectForKeyedSubscript:@"offsetHighlights"];
                  [v375 doubleValue];
                  v377 = v374 + v376;

                  v378 = [v676 objectForKeyedSubscript:@"inputBlack"];
                  [v378 doubleValue];
                  v380 = v379;
                  v381 = [v676 objectForKeyedSubscript:@"offsetBlack"];
                  [v381 doubleValue];
                  v383 = v380 + v382;

                  v384 = [MEMORY[0x1E696AD98] numberWithDouble:v371];
                  v385 = NUMakeDictionary2();
                  v386 = [v751 nodeByApplyingFilterWithName:@"CIHighKey" useHDRFilter:v706 settingsAndInputs:v385];

                  v387 = fmin(v331, 0.0);
                  if (v737)
                  {
                    v388 = v387;
                  }

                  else
                  {
                    v388 = v331;
                  }

                  v389 = [MEMORY[0x1E696AD98] numberWithDouble:v359];
                  v390 = [MEMORY[0x1E696AD98] numberWithDouble:v365];
                  v391 = [MEMORY[0x1E696AD98] numberWithDouble:v388];
                  v392 = [MEMORY[0x1E696AD98] numberWithDouble:v377];
                  v393 = [MEMORY[0x1E696AD98] numberWithDouble:v383];
                  v394 = [v676 objectForKeyedSubscript:@"inputRawHighlights"];
                  v395 = NUMakeDictionary7();
                  v165 = [v751 nodeByApplyingFilterWithName:@"CISmartToneFilter" useHDRFilter:v706 settingsAndInputs:{v395, @"inputHighlights", v392, @"inputBlack", v393, @"inputRawHighlights", v394}];
                }

                v675 = [v746 objectForKeyedSubscript:@"smartColor"];
                if ([v675 isEnabled])
                {
                  v396 = MEMORY[0x1E696AD98];
                  v738 = [v675 objectForKeyedSubscript:@"inputCast"];
                  [v738 doubleValue];
                  v398 = v397;
                  v727 = [v675 objectForKeyedSubscript:@"offsetCast"];
                  [v727 doubleValue];
                  v400 = [v396 numberWithDouble:v398 + v399];
                  v401 = MEMORY[0x1E696AD98];
                  v402 = [v675 objectForKeyedSubscript:@"inputSaturation"];
                  [v402 doubleValue];
                  v404 = v403;
                  v405 = [v675 objectForKeyedSubscript:@"offsetSaturation"];
                  [v405 doubleValue];
                  v407 = [v401 numberWithDouble:v404 + v406];
                  v408 = v165;
                  v409 = NUMakeDictionary3();
                  v410 = [v751 nodeByApplyingFilterWithName:@"CISmartColorFilter" useHDRFilter:v706 settingsAndInputs:v409];

                  v411 = MEMORY[0x1E696AD98];
                  v412 = [v675 objectForKeyedSubscript:@"inputContrast"];
                  [v412 doubleValue];
                  v414 = v413;
                  v415 = [v675 objectForKeyedSubscript:@"offsetContrast"];
                  [v415 doubleValue];
                  v417 = [v411 numberWithDouble:v414 + v416];
                  v418 = NUMakeDictionary2();
                  v165 = [v751 nodeByApplyingFilterWithName:@"CIVibrance" useHDRFilter:v706 settingsAndInputs:v418];
                }

                v677 = [v751 addTagWithName:@"pre-Curves" inputNode:v165 error:v736];

                if (v736 && *v736)
                {
                  v97 = 0;
LABEL_574:

                  v165 = v677;
                  goto LABEL_575;
                }

                v673 = [v746 objectForKeyedSubscript:@"curves"];
                if ([v673 isEnabled])
                {
                  v419 = [v673 objectForKeyedSubscript:@"pointsR"];
                  v420 = [v673 objectForKeyedSubscript:@"pointsG"];
                  v421 = [v673 objectForKeyedSubscript:@"pointsB"];
                  v422 = [v673 objectForKeyedSubscript:@"pointsL"];
                  v423 = NUMakeDictionary4();

                  v424 = [v751 nodeByApplyingFilterWithName:@"PICurvesLUTFilter" useHDRFilter:v706 settingsAndInputs:v423];
                  v425 = NUMakeDictionary3();
                  v426 = [v751 nodeByApplyingFilterWithName:@"PICurvesFilter" useHDRFilter:v706 settingsAndInputs:v425];

                  v677 = v426;
                }

                v674 = [v746 objectForKeyedSubscript:@"selectiveColor"];
                if ([v674 isEnabled])
                {
                  v684 = [v674 objectForKeyedSubscript:@"corrections"];
                  v679 = [v684 count];
                  if (v679)
                  {
                    v681 = [MEMORY[0x1E695DF70] array];
                    for (i = 0; i != v679; ++i)
                    {
                      v428 = [v684 objectAtIndexedSubscript:i];
                      v728 = [v428 objectForKeyedSubscript:@"red"];
                      v723 = [v428 objectForKeyedSubscript:@"green"];
                      v429 = [v428 objectForKeyedSubscript:@"blue"];
                      v430 = [v428 objectForKeyedSubscript:@"spread"];
                      v431 = MEMORY[0x1E696AD98];
                      v739 = [v428 objectForKeyedSubscript:@"hueShift"];
                      [v739 doubleValue];
                      v692 = [v431 numberWithDouble:v432 / 60.0];
                      v433 = MEMORY[0x1E696AD98];
                      v711 = [v428 objectForKeyedSubscript:@"saturation"];
                      [v711 doubleValue];
                      v435 = [v433 numberWithDouble:v434 / 100.0];
                      v436 = MEMORY[0x1E696AD98];
                      v437 = [v428 objectForKeyedSubscript:@"luminance"];
                      [v437 doubleValue];
                      v439 = [v436 numberWithDouble:v438 / 70.0];
                      v440 = NUMakeDictionary7();
                      [v681 addObject:{v440, @"hueShift", v692, @"saturation", v435, @"luminance", v439}];
                    }

                    v441 = NUMakeDictionary2();
                    v442 = [v751 nodeByApplyingFilterWithName:@"PISelectiveColorFilter" useHDRFilter:v706 settingsAndInputs:v441];

                    v677 = v442;
                  }
                }

                v443 = [v751 addTagWithName:@"pre-Levels" inputNode:v677 error:v736];

                if (v736 && *v736)
                {
                  v97 = 0;
LABEL_573:

                  v677 = v443;
                  goto LABEL_574;
                }

                v729 = [v746 objectForKeyedSubscript:@"levels"];
                if ([v729 isEnabled])
                {
                  v444 = [MEMORY[0x1E695DF90] dictionary];
                  [v444 setObject:v443 forKeyedSubscript:@"inputImage"];
                  v445 = [v729 objectForKeyedSubscript:@"colorSpace"];
                  [v444 setObject:v445 forKeyedSubscript:@"inputColorSpace"];

                  v446 = [v729 objectForKeyedSubscript:@"blackSrcRGB"];
                  [v444 setObject:v446 forKeyedSubscript:@"inputBlackSrcRGB"];

                  v447 = [v729 objectForKeyedSubscript:@"blackDstRGB"];
                  [v444 setObject:v447 forKeyedSubscript:@"inputBlackDstRGB"];

                  v448 = [v729 objectForKeyedSubscript:@"shadowSrcRGB"];
                  [v444 setObject:v448 forKeyedSubscript:@"inputShadowSrcRGB"];

                  v449 = [v729 objectForKeyedSubscript:@"shadowDstRGB"];
                  [v444 setObject:v449 forKeyedSubscript:@"inputShadowDstRGB"];

                  v450 = [v729 objectForKeyedSubscript:@"midSrcRGB"];
                  [v444 setObject:v450 forKeyedSubscript:@"inputMidSrcRGB"];

                  v451 = [v729 objectForKeyedSubscript:@"midDstRGB"];
                  [v444 setObject:v451 forKeyedSubscript:@"inputMidDstRGB"];

                  v452 = [v729 objectForKeyedSubscript:@"hilightSrcRGB"];
                  [v444 setObject:v452 forKeyedSubscript:@"inputHilightSrcRGB"];

                  v453 = [v729 objectForKeyedSubscript:@"hilightDstRGB"];
                  [v444 setObject:v453 forKeyedSubscript:@"inputHilightDstRGB"];

                  v454 = [v729 objectForKeyedSubscript:@"whiteSrcRGB"];
                  [v444 setObject:v454 forKeyedSubscript:@"inputWhiteSrcRGB"];

                  v455 = [v729 objectForKeyedSubscript:@"whiteDstRGB"];
                  [v444 setObject:v455 forKeyedSubscript:@"inputWhiteDstRGB"];

                  v456 = [v729 objectForKeyedSubscript:@"blackSrcRed"];
                  [v444 setObject:v456 forKeyedSubscript:@"inputBlackSrcRed"];

                  v457 = [v729 objectForKeyedSubscript:@"blackDstRed"];
                  [v444 setObject:v457 forKeyedSubscript:@"inputBlackDstRed"];

                  v458 = [v729 objectForKeyedSubscript:@"shadowSrcRed"];
                  [v444 setObject:v458 forKeyedSubscript:@"inputShadowSrcRed"];

                  v459 = [v729 objectForKeyedSubscript:@"shadowDstRed"];
                  [v444 setObject:v459 forKeyedSubscript:@"inputShadowDstRed"];

                  v460 = [v729 objectForKeyedSubscript:@"midSrcRed"];
                  [v444 setObject:v460 forKeyedSubscript:@"inputMidSrcRed"];

                  v461 = [v729 objectForKeyedSubscript:@"midDstRed"];
                  [v444 setObject:v461 forKeyedSubscript:@"inputMidDstRed"];

                  v462 = [v729 objectForKeyedSubscript:@"hilightSrcRed"];
                  [v444 setObject:v462 forKeyedSubscript:@"inputHilightSrcRed"];

                  v463 = [v729 objectForKeyedSubscript:@"hilightDstRed"];
                  [v444 setObject:v463 forKeyedSubscript:@"inputHilightDstRed"];

                  v464 = [v729 objectForKeyedSubscript:@"whiteSrcRed"];
                  [v444 setObject:v464 forKeyedSubscript:@"inputWhiteSrcRed"];

                  v465 = [v729 objectForKeyedSubscript:@"whiteDstRed"];
                  [v444 setObject:v465 forKeyedSubscript:@"inputWhiteDstRed"];

                  v466 = [v729 objectForKeyedSubscript:@"blackSrcGreen"];
                  [v444 setObject:v466 forKeyedSubscript:@"inputBlackSrcGreen"];

                  v467 = [v729 objectForKeyedSubscript:@"blackDstGreen"];
                  [v444 setObject:v467 forKeyedSubscript:@"inputBlackDstGreen"];

                  v468 = [v729 objectForKeyedSubscript:@"shadowSrcGreen"];
                  [v444 setObject:v468 forKeyedSubscript:@"inputShadowSrcGreen"];

                  v469 = [v729 objectForKeyedSubscript:@"shadowDstGreen"];
                  [v444 setObject:v469 forKeyedSubscript:@"inputShadowDstGreen"];

                  v470 = [v729 objectForKeyedSubscript:@"midSrcGreen"];
                  [v444 setObject:v470 forKeyedSubscript:@"inputMidSrcGreen"];

                  v471 = [v729 objectForKeyedSubscript:@"midDstGreen"];
                  [v444 setObject:v471 forKeyedSubscript:@"inputMidDstGreen"];

                  v472 = [v729 objectForKeyedSubscript:@"hilightSrcGreen"];
                  [v444 setObject:v472 forKeyedSubscript:@"inputHilightSrcGreen"];

                  v473 = [v729 objectForKeyedSubscript:@"hilightDstGreen"];
                  [v444 setObject:v473 forKeyedSubscript:@"inputHilightDstGreen"];

                  v474 = [v729 objectForKeyedSubscript:@"whiteSrcGreen"];
                  [v444 setObject:v474 forKeyedSubscript:@"inputWhiteSrcGreen"];

                  v475 = [v729 objectForKeyedSubscript:@"whiteDstGreen"];
                  [v444 setObject:v475 forKeyedSubscript:@"inputWhiteDstGreen"];

                  v476 = [v729 objectForKeyedSubscript:@"blackSrcBlue"];
                  [v444 setObject:v476 forKeyedSubscript:@"inputBlackSrcBlue"];

                  v477 = [v729 objectForKeyedSubscript:@"blackDstBlue"];
                  [v444 setObject:v477 forKeyedSubscript:@"inputBlackDstBlue"];

                  v478 = [v729 objectForKeyedSubscript:@"shadowSrcBlue"];
                  [v444 setObject:v478 forKeyedSubscript:@"inputShadowSrcBlue"];

                  v479 = [v729 objectForKeyedSubscript:@"shadowDstBlue"];
                  [v444 setObject:v479 forKeyedSubscript:@"inputShadowDstBlue"];

                  v480 = [v729 objectForKeyedSubscript:@"midSrcBlue"];
                  [v444 setObject:v480 forKeyedSubscript:@"inputMidSrcBlue"];

                  v481 = [v729 objectForKeyedSubscript:@"midDstBlue"];
                  [v444 setObject:v481 forKeyedSubscript:@"inputMidDstBlue"];

                  v482 = [v729 objectForKeyedSubscript:@"hilightSrcBlue"];
                  [v444 setObject:v482 forKeyedSubscript:@"inputHilightSrcBlue"];

                  v483 = [v729 objectForKeyedSubscript:@"hilightDstBlue"];
                  [v444 setObject:v483 forKeyedSubscript:@"inputHilightDstBlue"];

                  v484 = [v729 objectForKeyedSubscript:@"whiteSrcBlue"];
                  [v444 setObject:v484 forKeyedSubscript:@"inputWhiteSrcBlue"];

                  v485 = [v729 objectForKeyedSubscript:@"whiteDstBlue"];
                  [v444 setObject:v485 forKeyedSubscript:@"inputWhiteDstBlue"];

                  v486 = [v751 nodeByApplyingFilterWithName:@"PILevelsFilter" useHDRFilter:v706 settingsAndInputs:v444];

                  v443 = v486;
                }

                v724 = [v746 objectForKeyedSubscript:@"smartBlackAndWhite"];
                if ([v724 isEnabled])
                {
                  v487 = [v724 objectForKeyedSubscript:@"grain"];
                  [v487 doubleValue];
                  v489 = v488;

                  v490 = [v724 objectForKeyedSubscript:@"hue"];
                  v491 = [v724 objectForKeyedSubscript:@"strength"];
                  v492 = [v724 objectForKeyedSubscript:@"neutral"];
                  v493 = [v724 objectForKeyedSubscript:@"tone"];
                  v494 = [MEMORY[0x1E69B3C38] scaleMultiplyOfScalar:v489];
                  v495 = [MEMORY[0x1E69B3C38] grainInputSeedFromFrameTime];
                  v496 = v443;
                  v497 = NUMakeDictionary7();
                  v443 = [v751 nodeByApplyingFilterWithName:@"CISmartBlackAndWhite" useHDRFilter:v706 settingsAndInputs:{v497, @"inputTone", v493, @"inputGrain", v494, @"inputSeed", v495}];
                }

                v712 = [v746 objectForKeyedSubscript:@"sharpen"];
                if ([v712 isEnabled])
                {
                  v498 = [v712 objectForKeyedSubscript:@"falloff"];
                  [v498 doubleValue];
                  v500 = v499;

                  v501 = [v712 objectForKeyedSubscript:@"intensity"];
                  [v501 doubleValue];
                  v503 = v502;

                  v504 = v443;
                  v505 = [objc_alloc(MEMORY[0x1E69B39F8]) initWithInput:v443];
                  v506 = MEMORY[0x1E696AD98];
                  v507 = [v712 objectForKeyedSubscript:@"edges"];
                  [v507 doubleValue];
                  v509 = [v506 numberWithDouble:v508 * 5.5];
                  v510 = [MEMORY[0x1E69B3C38] scaleMultiplyOfScalar:v500];
                  v511 = [MEMORY[0x1E69B3C38] sharpnessWithIntensity:v503];
                  v512 = NUMakeDictionary4();
                  v513 = [v751 nodeByApplyingFilterWithName:@"CIProSharpenEdges" useHDRFilter:v706 settingsAndInputs:v512];

                  v514 = [(NURenderNode *)v513 outputImageGeometry:v736];
                  v515 = v514;
                  if (v736 && *v736)
                  {
                    v97 = 0;
LABEL_572:

                    v443 = v513;
                    goto LABEL_573;
                  }

                  memset(v760, 0, sizeof(v760));
                  if (v514)
                  {
                    [v514 extent];
                  }

                  *v759 = *v760;
                  *&v759[16] = *&v760[16];
                  v443 = [v751 cropNode:v513 cropRect:v759 cropSettings:0];
                }

                v515 = [v746 objectForKeyedSubscript:@"definition"];
                if ([v515 isEnabled])
                {
                  v516 = MEMORY[0x1E696AD98];
                  v517 = [v515 objectForKeyedSubscript:@"intensity"];
                  [v517 doubleValue];
                  v519 = [v516 numberWithDouble:v518 + v518];
                  v520 = NUMakeDictionary2();
                  v513 = [v751 nodeByApplyingFilterWithName:@"PILocalContrastHDR" useHDRFilter:v706 settingsAndInputs:v520];

                  v740 = [(NURenderNode *)v513 outputImageGeometry:v736];
                  if (v736 && *v736)
                  {
                    v97 = 0;
LABEL_571:

                    goto LABEL_572;
                  }

                  memset(v760, 0, sizeof(v760));
                  if (v740)
                  {
                    [v740 extent];
                  }

                  *v759 = *v760;
                  *&v759[16] = *&v760[16];
                  v443 = [v751 cropNode:v513 cropRect:v759 cropSettings:0];
                }

                v740 = [v746 objectForKeyedSubscript:@"effect"];
                if (v740)
                {
                  v521 = v443;
                  v522 = MEMORY[0x1E696AEC0];
                  v523 = [v740 objectForKeyedSubscript:@"kind"];
                  v524 = [v522 stringWithFormat:@"CIPhotoEffect%@", v523];

                  v525 = [v740 objectForKeyedSubscript:@"version"];
                  v526 = NUMakeDictionary2();
                  v443 = [v751 nodeByApplyingFilterWithName:v524 useHDRFilter:v706 settingsAndInputs:v526];

                  v527 = [v740 objectForKeyedSubscript:@"intensity"];

                  if (v527)
                  {
                    v528 = [v740 objectForKeyedSubscript:@"intensity"];
                    v529 = NUMakeDictionary4();
                    v530 = [v751 nodeByApplyingFilterWithName:@"CIDissolveTransition" useHDRFilter:v706 settingsAndInputs:v529];

                    v443 = v530;
                  }
                }

                if (v687)
                {
                  v531 = [MEMORY[0x1E695DF90] dictionary];
                  v532 = [v698 objectForKeyedSubscript:@"kind"];
                  [v531 setObject:v532 forKeyedSubscript:@"kind"];

                  v533 = [v698 objectForKeyedSubscript:@"intensity"];
                  [v531 setObject:v533 forKeyedSubscript:@"intensity"];

                  v534 = [MEMORY[0x1E696AD98] numberWithBool:v706];
                  [v531 setObject:v534 forKeyedSubscript:@"isHDR"];

                  v535 = [[PIPhotoEffect3DNode alloc] initWithInput:v443 blurMap:v696 settings:v531];
                  v443 = v535;
                }

                v693 = [v746 objectForKeyedSubscript:@"grain"];
                if ([v693 isEnabled])
                {
                  v536 = [v693 objectForKeyedSubscript:@"amount"];
                  [v536 doubleValue];
                  v538 = v537;

                  v539 = [v693 objectForKeyedSubscript:@"iso"];
                  v540 = [v693 objectForKeyedSubscript:@"seed"];
                  if (v540)
                  {
                    [v693 objectForKeyedSubscript:@"seed"];
                  }

                  else
                  {
                    [MEMORY[0x1E69B3C38] grainInputSeedFromFrameTime];
                  }
                  v541 = ;
                  v542 = [MEMORY[0x1E69B3C38] scaleMultiplyOfScalar:v538];
                  v543 = v443;
                  v544 = NUMakeDictionary4();
                  v443 = [v751 nodeByApplyingFilterWithName:@"CIPhotoGrain" useHDRFilter:v706 settingsAndInputs:v544];
                }

                v513 = [v751 addTagWithName:@"pre-VideoStabilize" inputNode:v443 error:v736];

                if (v736 && *v736)
                {
                  v97 = 0;
LABEL_570:

                  goto LABEL_571;
                }

                v688 = [v746 objectForKeyedSubscript:@"videoStabilize"];
                if (v688 && [v688 isEnabled])
                {
                  v545 = [v751 videoReframe:v513 reframes:v688 error:v736];

                  if (v736 && *v736)
                  {
                    goto LABEL_429;
                  }

                  v513 = v545;
                }

                v545 = [v751 addTagWithName:@"VideoStabilize" inputNode:v513 error:v736];

                if (v736 && *v736)
                {
LABEL_429:
                  v97 = 0;
LABEL_569:

                  v513 = v545;
                  goto LABEL_570;
                }

                v546 = [v751 addTagWithName:@"pre-VideoCrossfadeLoop" inputNode:v545 error:v736];

                if (v736 && *v736)
                {
                  v97 = 0;
                  v545 = v546;
                  goto LABEL_569;
                }

                v685 = [v746 objectForKeyedSubscript:@"videoCrossfadeLoop"];
                if (v685 && [v685 isEnabled])
                {
                  v545 = [v751 videoCrossfadeLoop:v546 crossfadeAdjustment:v685 error:v736];

                  if (v736 && *v736)
                  {
                    goto LABEL_445;
                  }

                  v546 = v545;
                }

                v545 = [v751 addTagWithName:@"VideoCrossfadeLoop" inputNode:v546 error:v736];

                if (v736 && *v736)
                {
                  goto LABEL_445;
                }

                v547 = [v751 addTagWithName:@"pre-Geometry" inputNode:v545 error:v736];

                if (v736 && *v736)
                {
                  v97 = 0;
                  v545 = v547;
LABEL_568:

                  goto LABEL_569;
                }

                v545 = [v751 addTagWithName:@"pre-Crop" inputNode:v547 error:v736];

                if (v736)
                {
                  if (*v736)
                  {
LABEL_445:
                    v97 = 0;
                    goto LABEL_568;
                  }
                }

                v680 = [v746 objectForKeyedSubscript:@"cropStraighten"];
                if ([v680 isEnabled])
                {
                  v678 = [(NURenderNode *)v545 outputImageGeometry:v736];
                  if (v736 && *v736)
                  {
                    goto LABEL_494;
                  }

                  v548 = [v680 objectForKeyedSubscript:@"pitch"];
                  [v548 doubleValue];
                  v550 = v549;

                  v551 = [v680 objectForKeyedSubscript:@"yaw"];
                  [v551 doubleValue];
                  v553 = v552;

                  v554 = [v680 objectForKeyedSubscript:@"angle"];
                  [v554 doubleValue];
                  v556 = v555;

                  if (v550 == 0.0 && v553 == 0.0)
                  {
                    if (v678)
                    {
                      [v678 extent];
                    }

                    else
                    {
                      memset(v760, 0, sizeof(v760));
                    }

                    v557 = [v751 straightenTransformWithAngle:v760 extent:v556];
                  }

                  else
                  {
                    if (v678)
                    {
                      [v678 extent];
                    }

                    else
                    {
                      memset(v760, 0, sizeof(v760));
                    }

                    NUPixelRectToCGRect();
                    v557 = [v751 perspectiveTransformWithPitch:v550 yaw:v553 roll:v556 imageRect:{v558, v559, v560, v561}];
                  }

                  v672 = v557;
                  v562 = [MEMORY[0x1E69B3CE8] transformNodeWithInput:v545 transform:v557 error:v736];

                  if (v736 && *v736)
                  {
                    v97 = 0;
LABEL_565:

                    v545 = v562;
                    goto LABEL_566;
                  }

                  v671 = [v751 addTagWithName:@"perspectiveStraighten" inputNode:v562 error:v736];

                  if (v736 && *v736)
                  {
                    v97 = 0;
LABEL_564:
                    v562 = v671;
                    goto LABEL_565;
                  }

                  v682 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:&unk_1F4720248];
                  if (v714)
                  {
                    v563 = [(NURenderNode *)v671 videoProperties:v736];
                    v564 = v563;
                    if (v736 && *v736)
                    {

LABEL_562:
                      v97 = 0;
                      goto LABEL_563;
                    }

                    if (v563)
                    {
                      memset(v760, 0, sizeof(v760));
                      [v563 originalCleanAperture];
                      v565 = [MEMORY[0x1E696B098] valueWithBytes:v760 objCType:"{?={?=qq}{?=qq}}"];
                      [v682 setObject:v565 forKeyedSubscript:@"projectUsingCleanAperture"];

                      *v759 = 0uLL;
                      *v759 = [v564 originalSize];
                      *&v759[8] = v566;
                      v567 = [MEMORY[0x1E696B098] valueWithBytes:v759 objCType:"{?=qq}"];
                      [v682 setObject:v567 forKeyedSubscript:@"projectUsingOriginalSize"];

                      v757 = 0u;
                      v758 = 0u;
                      v755 = 0u;
                      v756 = 0u;
                      v568 = [v564 metadata];
                      v569 = [v568 countByEnumeratingWithState:&v755 objects:v770 count:16];
                      if (v569)
                      {
                        v570 = v569;
                        v571 = *v756;
                        do
                        {
                          for (j = 0; j != v570; ++j)
                          {
                            if (*v756 != v571)
                            {
                              objc_enumerationMutation(v568);
                            }

                            v573 = [*(*(&v755 + 1) + 8 * j) key];
                            v574 = [v573 isEqual:@"com.apple.quicktime.live-photo.vitality-disabled"];

                            if (v574)
                            {
                              [v682 setObject:&unk_1F471F9D0 forKeyedSubscript:@"projectUsingEstimatedCleanAperture"];
                            }
                          }

                          v570 = [v568 countByEnumeratingWithState:&v755 objects:v770 count:16];
                        }

                        while (v570);
                      }
                    }
                  }

                  v575 = [v680 objectForKeyedSubscript:@"xOrigin"];
                  v576 = [v575 integerValue];
                  v577 = [v680 objectForKeyedSubscript:@"yOrigin"];
                  v578 = [v577 integerValue];
                  v579 = [v680 objectForKeyedSubscript:@"width"];
                  v580 = [v579 integerValue];
                  v581 = [v680 objectForKeyedSubscript:@"height"];
                  v582 = [v581 integerValue];

                  *v760 = v576;
                  *&v760[8] = v578;
                  *&v760[16] = v580;
                  *&v760[24] = v582;
                  v545 = [v751 cropNode:v671 cropRect:v760 cropSettings:v682];
                }

                v583 = v545;
                v545 = [v751 addTagWithName:@"Crop" inputNode:v545 error:v736];

                if (v736 && *v736)
                {
                  v97 = 0;
LABEL_567:

                  goto LABEL_568;
                }

                v584 = [v751 addTagWithName:@"pre-Orientation" inputNode:v545 error:v736];

                if (v736 && *v736)
                {
                  v97 = 0;
                  v545 = v584;
                  goto LABEL_567;
                }

                v678 = [v746 objectForKeyedSubscript:@"orientation"];
                if (v678)
                {
                  v585 = [v678 objectForKeyedSubscript:@"value"];
                  v586 = [v585 integerValue];

                  v545 = [v751 orientedNode:v584 withOrientation:v586];

                  if (v736 && *v736)
                  {
                    goto LABEL_494;
                  }

                  v584 = v545;
                }

                v545 = [v751 addTagWithName:@"Orientation" inputNode:v584 error:v736];

                if (v736 && *v736)
                {
LABEL_494:
                  v97 = 0;
LABEL_566:

                  goto LABEL_567;
                }

                v587 = [v751 addTagWithName:@"post-Geometry" inputNode:v545 error:v736];

                if (v736 && *v736)
                {
                  v97 = 0;
                  v545 = v587;
                  goto LABEL_566;
                }

                v672 = [v746 objectForKeyedSubscript:@"cinematicAudio"];
                if ([v672 isEnabled] && (objc_msgSend(v734, "isEnabled") & 1) == 0)
                {
                  v591 = [v672 objectForKeyedSubscript:@"dialogMixBias"];
                  v592 = v591;
                  v593 = &unk_1F471F9E0;
                  if (v591)
                  {
                    v593 = v591;
                  }

                  v594 = v593;

                  v595 = [v672 objectForKeyedSubscript:@"renderingStyle"];
                  v596 = v595;
                  v597 = @"original";
                  if (v595)
                  {
                    v597 = v595;
                  }

                  v598 = v597;

                  v599 = [PICinematicAudioRenderNode alloc];
                  v682 = v594;
                  [v594 doubleValue];
                  v671 = [(PICinematicAudioRenderNode *)v599 initWithInput:v587 dialogMixBias:v598 renderingStyle:?];

                  if (v736 && *v736)
                  {

                    goto LABEL_562;
                  }
                }

                else
                {
                  v671 = v587;
                }

                v682 = [v746 objectForKeyedSubscript:@"vignette"];
                if ([v682 isEnabled])
                {
                  v588 = [(NURenderNode *)v671 outputImageGeometry:v736];
                  v589 = v588;
                  if (v736 && *v736)
                  {
                    goto LABEL_561;
                  }

                  if (v588)
                  {
                    [v588 extent];
                    v590 = v754;
                  }

                  else
                  {
                    v590 = 0.0;
                  }

                  v600 = [v589 size];
                  if (v589)
                  {
                    [v589 extent];
                    v601 = v753;
                  }

                  else
                  {
                    v601 = 0.0;
                  }

                  v602 = v590 + v600 * 0.5;
                  [v589 size];
                  v604 = v601 + v603 * 0.5;
                  v605 = [v682 objectForKeyedSubscript:@"falloff"];
                  [v605 doubleValue];
                  v607 = v606;

                  v608 = [v682 objectForKeyedSubscript:@"intensity"];
                  [v608 doubleValue];
                  v610 = v609;

                  v611 = [v682 objectForKeyedSubscript:@"radius"];
                  [v611 doubleValue];
                  v613 = 1.0 - v612;

                  if (v610 >= 0.0)
                  {
                    v614 = pow(v610, 0.6);
                    v615 = (v613 + -0.5) * 0.3 + 0.5;
                  }

                  else
                  {
                    v614 = -pow(-v610, 0.6);
                    v615 = (v613 + -0.5) * 0.4 + 0.7;
                  }

                  [v589 size];
                  v617 = v616;
                  v618 = [v589 size];
                  if (v617 >= v618)
                  {
                    v618 = v617;
                  }

                  v619 = v615 * v618;
                  v620 = MEMORY[0x1E69B3C38];
                  v670 = [MEMORY[0x1E696AD98] numberWithDouble:v602];
                  v769[0] = v670;
                  v621 = [MEMORY[0x1E696AD98] numberWithDouble:v604];
                  v769[1] = v621;
                  v715 = [MEMORY[0x1E695DEC8] arrayWithObjects:v769 count:2];
                  v622 = [v620 scaledVector:v715];
                  v623 = [MEMORY[0x1E696AD98] numberWithDouble:v614];
                  v624 = [MEMORY[0x1E69B3C38] scaleMultiplyOfScalar:v619];
                  v625 = [MEMORY[0x1E696AD98] numberWithDouble:v607];
                  v626 = NUMakeDictionary5();
                  v627 = [v751 nodeByApplyingFilterWithName:@"CIVignetteEffect" useHDRFilter:v706 settingsAndInputs:{v626, @"inputFalloff", v625}];

                  v671 = v627;
                }

                v628 = v671;
                v671 = [v751 addTagWithName:@"post-Adjustments" inputNode:v671 error:v736];

                if (v736 && *v736)
                {
                  goto LABEL_562;
                }

                if (v718)
                {
                  v629 = [v744 objectForKeyedSubscript:@"raw_applyFirst"];
                  if ([v629 BOOLValue])
                  {
LABEL_530:

                    goto LABEL_531;
                  }

                  v630 = +[PIGlobalSettings globalSettings];
                  v631 = [v630 rawApplyBoostFirst];

                  if ((v631 & 1) == 0)
                  {
                    v632 = [v743 objectForKeyedSubscript:@"boostAmount"];
                    v633 = [v743 objectForKeyedSubscript:@"boostVersion"];
                    v634 = [v743 objectForKeyedSubscript:@"boostParams"];
                    v635 = NUMakeDictionary4();
                    v629 = [v751 nodeByApplyingFilterWithName:@"PIInverseFakeBoost" useHDRFilter:v706 settingsAndInputs:v635];

                    [v751 resetTag:@"Master/RAW/Linear" input:v629];
                    v671 = v709;
                    goto LABEL_530;
                  }
                }

LABEL_531:
                v636 = v671;
                if (v706)
                {
                  [MEMORY[0x1E69B3AB0] HLGOpticalScale];
                  if (v637 > 1.0)
                  {
                    [MEMORY[0x1E69B3AB0] HLGOpticalScale];
                    v671 = [v751 HDROpticalScaleNode:v671 scale:1.0 / v638];

                    if (v736 && *v736)
                    {
                      goto LABEL_562;
                    }

                    v636 = v671;
                  }
                }

                v639 = [v744 objectForKeyedSubscript:@"outputExposure"];
                [v639 doubleValue];
                v641 = v640;

                if (v641 != 0.0)
                {
                  v642 = [v744 objectForKeyedSubscript:@"outputExposure"];
                  v643 = NUMakeDictionary2();
                  v644 = [v751 nodeByApplyingFilterWithName:@"CIExposureAdjust" useHDRFilter:v706 settingsAndInputs:v643];

                  v636 = v644;
                }

                v645 = [v744 objectForKeyedSubscript:@"headroomAdjust"];
                [v645 doubleValue];
                v647 = v646;

                if (v647 != 0.0)
                {
                  v648 = [v744 objectForKeyedSubscript:@"headroomAdjust"];
                  [v648 floatValue];
                  v650 = v649;

                  v651 = [v751 gainMapHeadroomNode:v636 headroomOffset:v650];

                  v636 = v651;
                }

                v652 = [v744 objectForKeyedSubscript:@"falseColorHDR"];
                [v652 doubleValue];
                if (v653 == 0.0)
                {
                  v654 = +[PIGlobalSettings globalSettings];
                  v655 = [v654 falseColorHDR];

                  if (!v655)
                  {
                    goto LABEL_548;
                  }
                }

                else
                {
                }

                v656 = [v744 objectForKeyedSubscript:@"falseColorHDR"];
                [v656 doubleValue];
                if (v657 == 0.0)
                {
                  v658 = &unk_1F471F9C0;
                }

                else
                {
                  v658 = [v744 objectForKeyedSubscript:@"falseColorHDR"];
                }

                v659 = NUMakeDictionary2();
                v660 = [v751 debugNodeByApplyingFilterWithName:@"PIFalseColorHDRDebug" useHDRFilter:v706 settingsAndInputs:v659];

                v636 = v660;
LABEL_548:
                v671 = [v751 addTagWithName:@"Image" inputNode:v636 error:v736];

                if (v736 && *v736)
                {
                  goto LABEL_562;
                }

                v661 = [v744 objectForKeyedSubscript:@"useStyleEngine"];
                if ([v661 BOOLValue])
                {
                }

                else
                {
                  v662 = +[PIGlobalSettings globalSettings];
                  v663 = [v662 debugUseStyleEngine];

                  if (!v663)
                  {
                    goto LABEL_558;
                  }
                }

                v589 = [v751 getTagWithPath:@"masterSpace" error:v736];
                if (v736)
                {
                  if (*v736)
                  {
                    v664 = 0;
LABEL_560:

LABEL_561:
                    goto LABEL_562;
                  }

                  v664 = [v751 getTagWithPath:@"pre-Geometry" error:v736];
                  if (*v736)
                  {
                    goto LABEL_560;
                  }
                }

                else
                {
                  v664 = [v751 getTagWithPath:@"pre-Geometry" error:0];
                }

                v665 = MEMORY[0x1E69B3C40];
                v666 = [v664 inputs];
                v667 = [v666 objectForKeyedSubscript:*MEMORY[0x1E695FAB0]];
                v668 = [v665 styleTransferNodeWithInput:v589 target:v667 settings:MEMORY[0x1E695E0F8]];

                [v751 resetTag:@"pre-Geometry" input:v668];
LABEL_558:
                v97 = v671;
                v671 = v97;
LABEL_563:

                goto LABEL_564;
              }

              v255 = [MEMORY[0x1E695DF90] dictionary];
              v256 = [v33 objectForKeyedSubscript:@"colorType"];
              v257 = [v256 isEqualToString:@"warmTint"];

              v733 = v165;
              if (v257)
              {
                [v255 setObject:v165 forKeyedSubscript:@"inputImage"];
                v258 = [v33 objectForKeyedSubscript:@"warmTemp"];
                [v255 setObject:v258 forKeyedSubscript:@"inputWarmTemp"];

                v259 = [v33 objectForKeyedSubscript:@"warmTint"];
                [v255 setObject:v259 forKeyedSubscript:@"inputWarmTint"];

                v260 = [v33 objectForKeyedSubscript:@"warmFace"];
                [v255 setObject:v260 forKeyedSubscript:@"inputHasFace"];

                v261 = [MEMORY[0x1E696AD98] numberWithInt:v718 != 0];
                [v255 setObject:v261 forKeyedSubscript:@"inputIsRaw"];
                v262 = @"PIColorBalanceFilter";
              }

              else
              {
                v263 = [v33 objectForKeyedSubscript:@"colorType"];
                v264 = [v263 isEqualToString:@"tempTint"];

                if (!v264 || v718)
                {
                  v266 = [v33 objectForKeyedSubscript:@"colorType"];
                  v267 = [v266 isEqualToString:@"faceBalance"];

                  if (v267)
                  {
                    v261 = [v33 objectForKeyedSubscript:@"faceI"];
                    v268 = [v33 objectForKeyedSubscript:@"faceQ"];
                    if (!v261 || [v261 isEqualToNumber:&unk_1F471EEE0])
                    {

                      v261 = &unk_1F4724618;
                    }

                    if (!v268 || [v268 isEqualToNumber:&unk_1F471EEE0])
                    {

                      v268 = &unk_1F4724628;
                    }

                    [v255 setObject:v165 forKeyedSubscript:@"inputImage"];
                    [v255 setObject:v261 forKeyedSubscript:@"inputOrigI"];
                    [v255 setObject:v268 forKeyedSubscript:@"inputOrigQ"];
                    v269 = [v33 objectForKeyedSubscript:@"faceStrength"];
                    [v255 setObject:v269 forKeyedSubscript:@"inputStrength"];

                    v270 = [v33 objectForKeyedSubscript:@"faceWarmth"];
                    [v255 setObject:v270 forKeyedSubscript:@"inputWarmth"];

                    if (v718)
                    {
                      v262 = @"PIRAWFaceBalance";
                    }

                    else
                    {
                      v262 = @"CIFaceBalance";
                    }
                  }

                  else
                  {
                    v271 = [v33 objectForKeyedSubscript:@"colorType"];
                    v272 = [v271 isEqualToString:@"neutralGray"];

                    if (!v272)
                    {
                      v98 = v742;
                      v9 = v746;
                      v127 = v736;
LABEL_298:
                      v93 = v705;

                      v187 = v696;
                      v165 = v733;
                      goto LABEL_299;
                    }

                    [v255 setObject:v165 forKeyedSubscript:@"inputImage"];
                    [v255 setObject:&unk_1F471F9C0 forKeyedSubscript:@"strength"];
                    v273 = [v33 objectForKeyedSubscript:@"grayWarmth"];
                    [v255 setObject:v273 forKeyedSubscript:@"warmth"];

                    v274 = [v33 objectForKeyedSubscript:@"grayY"];
                    [v255 setObject:v274 forKeyedSubscript:@"y"];

                    v275 = [v33 objectForKeyedSubscript:@"grayI"];
                    [v255 setObject:v275 forKeyedSubscript:@"i"];

                    v261 = [v33 objectForKeyedSubscript:@"grayQ"];
                    [v255 setObject:v261 forKeyedSubscript:@"q"];
                    v262 = @"PINeutralGrayWhiteBalanceFilter";
                  }

                  v127 = v736;
                }

                else
                {
                  [v255 setObject:v165 forKeyedSubscript:@"inputImage"];
                  v265 = [v33 objectForKeyedSubscript:@"temperature"];
                  [v255 setObject:v265 forKeyedSubscript:@"temperature"];

                  v261 = [v33 objectForKeyedSubscript:@"tint"];
                  [v255 setObject:v261 forKeyedSubscript:@"tint"];
                  v262 = @"PITempTintFilter";
                }
              }

              v9 = v746;
              if (v255)
              {
                v276 = [v751 nodeByApplyingFilterWithName:v262 useHDRFilter:v706 settingsAndInputs:v255];

                v733 = v276;
              }

              v98 = v742;
              goto LABEL_298;
            }

            [*(v158 + 2736) HLGOpticalScale];
            v133 = [v751 HDROpticalScaleNode:v157 scale:?];

            if (!v127 || !*v127)
            {
              v157 = v133;
              goto LABEL_174;
            }

LABEL_124:
            v97 = 0;
LABEL_125:
            v102 = v717;
LABEL_126:
            v98 = v742;
LABEL_587:

            v104 = v133;
            goto LABEL_588;
          }

          if (v707)
          {
            v134 = [[PISemanticStyleApplyNode alloc] initWithInput:v133 style:v707 thumbnail:0];

            v133 = [v751 cacheNode:v134 type:@"Video" settings:MEMORY[0x1E695E0F8] error:v127];

            if (v127 && *v127)
            {
              goto LABEL_124;
            }

            v135 = v52;
          }

          else
          {
            v135 = v52;
          }

          v136 = [v747 objectForKeyedSubscript:@"flavor"];
          v137 = [v747 objectForKeyedSubscript:@"recipe"];
          v138 = NUMakeDictionary2();
          v139 = [v138 mutableCopy];

          if ([v135 isEnabled])
          {
            v140 = [v135 objectForKeyedSubscript:@"start"];
            v141 = [v135 objectForKeyedSubscript:@"end"];
            v142 = [v135 objectForKeyedSubscript:@"startScale"];
            v143 = [v135 objectForKeyedSubscript:@"endScale"];
            v144 = NUMakeDictionary4();
            [(PIPortraitEffectNode *)v139 setObject:v144 forKeyedSubscript:@"trim"];
          }

          v704 = v139;
          v104 = [v751 cacheNode:v133 type:@"AutoLoop" settings:v139 error:a6];

          v33 = v720;
          if (a6 && *a6)
          {
            v707 = 0;
            v97 = 0;
            v98 = v742;
            v52 = v135;
            v129 = v139;
            v93 = v705;
            v102 = v717;
            v9 = v746;
LABEL_586:

            v133 = v104;
            goto LABEL_587;
          }

          v145 = [v747 objectForKeyedSubscript:@"flavor"];
          v146 = [v145 isEqualToString:@"LongExposure"];

          v147 = v139;
          if (v146)
          {
            v9 = v746;
            if (v749 == 1)
            {
              v702 = [v746 objectForKeyedSubscript:@"highResFusion"];
              v127 = a6;
              if ([(PIPortraitEffectNode *)v702 isEnabled])
              {
                [v751 performLongExposureFusionForComposition:v746 longExposureImage:v104 useHDRFilter:v706 error:a6];
              }

              else
              {
                [v751 scaleNode:v104 scale:*MEMORY[0x1E69B3918] error:{*(MEMORY[0x1E69B3918] + 8), a6}];
              }
              v149 = ;

              v52 = v135;
              v93 = v705;
              if (a6)
              {
                v150 = v702;
                v128 = v725;
                if (*a6)
                {
                  v707 = 0;
                  v97 = 0;
                  v102 = v717;
LABEL_195:
                  v98 = v742;
LABEL_585:

                  v104 = v149;
                  v129 = v704;
                  goto LABEL_586;
                }
              }

              else
              {
                v150 = v702;
                v128 = v725;
              }

              v104 = v149;
              v147 = v704;
              goto LABEL_155;
            }

            v52 = v135;
            v127 = a6;
            v93 = v705;
          }

          else
          {
            v52 = v135;
            v127 = a6;
            v93 = v705;
            v9 = v746;
          }

          v128 = v725;
LABEL_155:

          v707 = 0;
          v133 = v104;
          goto LABEL_156;
        }

        v116 = objc_alloc_init(MEMORY[0x1E695DF90]);
        [v93 objectForKeyedSubscript:@"tone"];
        v118 = v117 = v93;
        [(PIPortraitEffectNode *)v116 setObject:v118 forKeyedSubscript:@"tone"];

        v119 = [v117 objectForKeyedSubscript:@"color"];
        [(PIPortraitEffectNode *)v116 setObject:v119 forKeyedSubscript:@"color"];

        v120 = [v117 objectForKeyedSubscript:@"cast"];
        [(PIPortraitEffectNode *)v116 setObject:v120 forKeyedSubscript:@"cast"];

        v121 = [v117 objectForKeyedSubscript:@"intensity"];
        [(PIPortraitEffectNode *)v116 setObject:v121 forKeyedSubscript:@"intensity"];

        v122 = [v117 objectForKeyedSubscript:@"version"];
        v123 = v116;
        [(PIPortraitEffectNode *)v116 setObject:v122 forKeyedSubscript:@"version"];

        v124 = [v117 objectForKeyedSubscript:@"debugDisableStyleEngine"];
        v125 = [v124 BOOLValue];

        v126 = +[PIGlobalSettings globalSettings];
        LOBYTE(v122) = [v126 semanticStyleDisableStyleEngine];

        v127 = a6;
        v128 = v725;
        if ((v122 & 1) != 0 || v125)
        {
          v129 = v123;
          v132 = [[PISemanticStyleRenderNode alloc] initWithInput:v104 settings:v123];

          v707 = 0;
          v104 = v132;
        }

        else
        {
          v129 = v123;
          v130 = [(PISemanticStyleRenderNode *)[PISemanticStyleLearnNode alloc] initWithInput:v104 settings:v123];
          v131 = [v751 addTagWithName:@"semanticStyleLearn" inputNode:v130 error:a6];
          v707 = v130;
          if (a6)
          {
            v93 = v705;
            v52 = v731;
            if (*a6)
            {
              v97 = 0;
              v33 = v720;
              v102 = v717;
              v9 = v746;
LABEL_177:
              v98 = v742;
              goto LABEL_586;
            }

            v33 = v720;
            v9 = v746;
            goto LABEL_121;
          }
        }

        v33 = v720;
        v93 = v705;
        v9 = v746;
        v52 = v731;
LABEL_121:

        goto LABEL_122;
      }

      v718 = 0;
    }

    [v751 endGroupWithName:@"Master" error:0];
    v105 = [(NURenderNode *)v104 imageProperties:0];
    goto LABEL_92;
  }

  v97 = 0;
  v98 = v742;
  v51 = v747;
LABEL_592:

LABEL_593:

  return v97;
}

__CFString *__61__PIModernPhotosPipeline_evaluate_input_pipelineState_error___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 auxiliaryImageType] == 1)
  {
    v2 = @"retouchedImage";
  }

  else
  {
    v2 = @"image";
  }

  return v2;
}

- (id)_processedRenderNodeForComposition:(id)a3 input:(id)a4 pipelineState:(id)a5 error:(id *)a6
{
  v51 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v10)
  {
    v16 = NUAssertLogger_23757();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "composition != nil"];
      *buf = 138543362;
      v48 = v17;
      _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v18 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v20 = NUAssertLogger_23757();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v21)
      {
        v34 = dispatch_get_specific(*v18);
        v35 = MEMORY[0x1E696AF00];
        v36 = v34;
        v18 = [v35 callStackSymbols];
        v37 = [v18 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v48 = v34;
        v49 = 2114;
        v50 = v37;
        _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      v22 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [v22 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v48 = v18;
      _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v26 = _NUAssertFailHandler();
    goto LABEL_25;
  }

  v13 = v12;
  if (!v12)
  {
    v23 = NUAssertLogger_23757();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "pipelineState != nil"];
      *buf = 138543362;
      v48 = v24;
      _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v18 = MEMORY[0x1E69B38E8];
    v25 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v20 = NUAssertLogger_23757();
    v26 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (!v25)
    {
      if (v26)
      {
        v27 = [MEMORY[0x1E696AF00] callStackSymbols];
        v18 = [v27 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v48 = v18;
        _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_27:

      v31 = _NUAssertFailHandler();
      goto LABEL_28;
    }

LABEL_25:
    if (v26)
    {
      v38 = dispatch_get_specific(*v18);
      v39 = MEMORY[0x1E696AF00];
      v40 = v38;
      v18 = [v39 callStackSymbols];
      v41 = [v18 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v48 = v38;
      v49 = 2114;
      v50 = v41;
      _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_27;
  }

  if (!a6)
  {
    v28 = NUAssertLogger_23757();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v48 = v29;
      _os_log_error_impl(&dword_1C7694000, v28, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v18 = MEMORY[0x1E69B38E8];
    v30 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v20 = NUAssertLogger_23757();
    v31 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (!v30)
    {
      if (v31)
      {
        v32 = [MEMORY[0x1E696AF00] callStackSymbols];
        v33 = [v32 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v48 = v33;
        _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_30;
    }

LABEL_28:
    if (v31)
    {
      v42 = dispatch_get_specific(*v18);
      v43 = MEMORY[0x1E696AF00];
      v44 = v42;
      v45 = [v43 callStackSymbols];
      v46 = [v45 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v48 = v42;
      v49 = 2114;
      v50 = v46;
      _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_30:

    _NUAssertFailHandler();
  }

  v14 = [(PIModernPhotosPipeline *)self evaluate:v10 input:v11 pipelineState:v12 error:a6];

  return v14;
}

@end