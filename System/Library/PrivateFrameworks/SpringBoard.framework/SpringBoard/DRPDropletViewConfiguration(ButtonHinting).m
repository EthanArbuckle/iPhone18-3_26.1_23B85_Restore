@interface DRPDropletViewConfiguration(ButtonHinting)
+ (id)hardwareButtonHintForButton:()ButtonHinting stage:keylineStyle:rectEdge:buttonRect:canvasSize:;
@end

@implementation DRPDropletViewConfiguration(ButtonHinting)

+ (id)hardwareButtonHintForButton:()ButtonHinting stage:keylineStyle:rectEdge:buttonRect:canvasSize:
{
  v22 = +[SBHardwareButtonHintPrototypeDomain rootSettings];
  v76.origin.x = a1;
  v76.origin.y = a2;
  v76.size.width = a3;
  v76.size.height = a4;
  MidY = CGRectGetMidY(v76);
  v77.origin.x = a1;
  v77.origin.y = a2;
  v77.size.width = a3;
  v77.size.height = a4;
  Height = CGRectGetHeight(v77);
  v25 = 0.0;
  if (a9 <= 4)
  {
    if (a9 < 2)
    {
LABEL_13:
      [v22 cameraCaptureDropletWidth];
      v26 = v35;
      [v22 cameraCaptureDropletHeight];
      Height = v36;
      if (a10 == 2)
      {
        [v22 cameraCaptureFlattenedCornerRadius];
        v25 = v41;
        [v22 cameraCaptureFlattenedProtrusionFromEdge];
        v27 = v42;
        [v22 cameraCaptureFlattenedDropletRadius];
      }

      else if (a10 == 1)
      {
        [v22 cameraCapturePresentedCornerRadius];
        v25 = v39;
        [v22 cameraCapturePresentedProtrusionFromEdge];
        v27 = v40;
        [v22 cameraCapturePresentedDropletRadius];
      }

      else
      {
        if (a10)
        {
          goto LABEL_29;
        }

        [v22 cameraCaptureInitialCornerRadius];
        v25 = v37;
        [v22 cameraCaptureInitialProtrusionFromEdge];
        v27 = v38;
        [v22 cameraCaptureInitialDropletRadius];
      }

      goto LABEL_36;
    }

    if ((a9 - 3) >= 2)
    {
      if (a9 != 2)
      {
        goto LABEL_28;
      }

      [v22 lockDropletWidth];
      v26 = v43;
      [v22 lockDropletHeight];
      Height = v44;
      if (a10 == 2)
      {
        [v22 lockFlattenedCornerRadius];
        v25 = v61;
        [v22 lockFlattenedProtrusionFromEdge];
        v27 = v62;
        [v22 lockFlattenedDropletRadius];
        goto LABEL_36;
      }

      if (a10 == 1)
      {
        [v22 lockPresentedCornerRadius];
        v25 = v59;
        [v22 lockPresentedProtrusionFromEdge];
        v27 = v60;
        [v22 lockPresentedDropletRadius];
        goto LABEL_36;
      }

      if (a10)
      {
        goto LABEL_29;
      }

      [v22 lockInitialCornerRadius];
      v25 = v45;
      [v22 lockInitialProtrusionFromEdge];
      v27 = v46;
      [v22 lockInitialDropletRadius];
    }

    else
    {
      [v22 volumeDropletWidth];
      v26 = v30;
      [v22 volumeDropletHeight];
      Height = v31;
      if (a10 == 2)
      {
        [v22 volumeFlattenedCornerRadius];
        v25 = v53;
        [v22 volumeFlattenedProtrusionFromEdge];
        v27 = v54;
        [v22 volumeFlattenedDropletRadius];
        goto LABEL_36;
      }

      if (a10 == 1)
      {
        [v22 volumePresentedCornerRadius];
        v25 = v51;
        [v22 volumePresentedProtrusionFromEdge];
        v27 = v52;
        [v22 volumePresentedDropletRadius];
        goto LABEL_36;
      }

      if (a10)
      {
        goto LABEL_29;
      }

      [v22 volumeInitialCornerRadius];
      v25 = v32;
      [v22 volumeInitialProtrusionFromEdge];
      v27 = v33;
      [v22 volumeInitialDropletRadius];
    }

LABEL_36:
    v28 = v34;
    goto LABEL_37;
  }

  if (a9 > 0xB)
  {
LABEL_28:
    v26 = 0.0;
    goto LABEL_29;
  }

  if (((1 << a9) & 0x6E0) != 0)
  {
    goto LABEL_13;
  }

  if (a9 == 8)
  {
    [v22 staccatoDropletWidth];
    v26 = v47;
    [v22 staccatoDropletHeight];
    Height = v48;
    switch(a10)
    {
      case 2:
        [v22 staccatoFlattenedCornerRadius];
        v25 = v57;
        [v22 staccatoFlattenedProtrusionFromEdge];
        v27 = v58;
        [v22 staccatoFlattenedDropletRadius];
        goto LABEL_36;
      case 1:
        [v22 staccatoPresentedCornerRadius];
        v25 = v55;
        [v22 staccatoPresentedProtrusionFromEdge];
        v27 = v56;
        [v22 staccatoPresentedDropletRadius];
        goto LABEL_36;
      case 0:
        [v22 staccatoInitialCornerRadius];
        v25 = v49;
        [v22 staccatoInitialProtrusionFromEdge];
        v27 = v50;
        [v22 staccatoInitialDropletRadius];
        goto LABEL_36;
    }

LABEL_29:
    v27 = 0.0;
    v28 = 0.0;
    goto LABEL_37;
  }

  v26 = 0.0;
  v27 = 0.0;
  v28 = 0.0;
  if (a9 == 11)
  {
    v29 = 0;
    goto LABEL_43;
  }

LABEL_37:
  v63 = *(MEMORY[0x277CD9DE8] + 80);
  v74[4] = *(MEMORY[0x277CD9DE8] + 64);
  v74[5] = v63;
  v64 = *(MEMORY[0x277CD9DE8] + 112);
  v74[6] = *(MEMORY[0x277CD9DE8] + 96);
  v74[7] = v64;
  v65 = *(MEMORY[0x277CD9DE8] + 16);
  v74[0] = *MEMORY[0x277CD9DE8];
  v74[1] = v65;
  v66 = *(MEMORY[0x277CD9DE8] + 48);
  v74[2] = *(MEMORY[0x277CD9DE8] + 32);
  v74[3] = v66;
  v29 = [MEMORY[0x277D069F8] edgeAdaptiveKeylineWithCanvasSize:a12 edge:v74 protrusionFromEdge:a5 centerAlongEdge:a6 containerSize:v27 containerCornerRadius:MidY transform3D:v26 dropletRadius:{Height, v25, v28}];
  v67 = [v29 keylineStyle];
  [v22 allButtonKeylineWidth];
  [v67 setOuterWidth:?];

  if ((a11 == 2 || a11 == 1 && a9 == 2) && a10)
  {
    [v29 changeToIntelligentLightStyle:a11 preferAudioReactivity:1 canvasSize:{a5, a6}];
    v68 = [v22 intelligentEdgeLightKeylineStyleBehaviorSettings];
    [v29 setBehaviorSettingsForKeyPath:@"keylineStyle" behaviorSettings:v68];
  }

  v69 = [v22 centerXBehaviorSettings];
  [v29 setBehaviorSettingsForKeyPath:@"centerX" behaviorSettings:v69];

  v70 = [v22 centerYBehaviorSettings];
  [v29 setBehaviorSettingsForKeyPath:@"centerY" behaviorSettings:v70];

  v71 = [v22 containerWidthBehaviorSettings];
  [v29 setBehaviorSettingsForKeyPath:@"containerWidth" behaviorSettings:v71];

  v72 = [v22 containerHeightBehaviorSettings];
  [v29 setBehaviorSettingsForKeyPath:@"containerHeight" behaviorSettings:v72];

LABEL_43:

  return v29;
}

@end