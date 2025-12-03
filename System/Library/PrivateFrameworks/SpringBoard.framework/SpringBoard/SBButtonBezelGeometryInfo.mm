@interface SBButtonBezelGeometryInfo
+ (id)buttonBezelGeometryInfoForCurrentEmbeddedDisplayBezel;
- (CGRect)buttonHWRectForButton:(int64_t)button inView:(id)view;
- (CGRect)buttonHWRectForButton:(int64_t)button onEmbeddedDisplayBounds:(CGRect)bounds;
- (CGRect)normalizedButtonHWRectForButton:(int64_t)button;
- (unint64_t)buttonScreenEdgeForButton:(int64_t)button;
@end

@implementation SBButtonBezelGeometryInfo

+ (id)buttonBezelGeometryInfoForCurrentEmbeddedDisplayBezel
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__SBButtonBezelGeometryInfo_buttonBezelGeometryInfoForCurrentEmbeddedDisplayBezel__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (buttonBezelGeometryInfoForCurrentEmbeddedDisplayBezel_onceToken != -1)
  {
    dispatch_once(&buttonBezelGeometryInfoForCurrentEmbeddedDisplayBezel_onceToken, block);
  }

  v2 = buttonBezelGeometryInfoForCurrentEmbeddedDisplayBezel___result;

  return v2;
}

void __82__SBButtonBezelGeometryInfo_buttonBezelGeometryInfoForCurrentEmbeddedDisplayBezel__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = buttonBezelGeometryInfoForCurrentEmbeddedDisplayBezel___result;
  buttonBezelGeometryInfoForCurrentEmbeddedDisplayBezel___result = v1;
}

- (CGRect)normalizedButtonHWRectForButton:(int64_t)button
{
  x = *MEMORY[0x277CBF3A0];
  v6 = *(MEMORY[0x277CBF3A0] + 8);
  v7 = *(MEMORY[0x277CBF3A0] + 16);
  v8 = *(MEMORY[0x277CBF3A0] + 24);
  if (button <= 4)
  {
    if (button <= 1)
    {
      if (button)
      {
        if (button != 1)
        {
          goto LABEL_24;
        }

LABEL_15:
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        v14 = NSStringFromSBSHardwareButtonKind();
        [currentHandler handleFailureInMethod:a2 object:self file:@"SBButtonBezelGeometryInfo.m" lineNumber:89 description:{@"We're currently not supporting getting the button position for the %@ button", v14}];

        goto LABEL_24;
      }
    }

    else if (button != 2)
    {
      if (button == 3)
      {
        v12 = @"VolumeUpButtonNormalizedCGRect";
      }

      else
      {
        v12 = @"VolumeDownButtonNormalizedCGRect";
      }

LABEL_20:
      v15 = 0.0;
      goto LABEL_21;
    }

    v12 = @"UserIntentPhysicalButtonNormalizedCGRect";
    v15 = 1.0;
LABEL_21:
    v31.origin.x = SBMGGetCGRectAnswer(v12, v15);
    goto LABEL_22;
  }

  if (button < 8)
  {
    goto LABEL_15;
  }

  if (button <= 9)
  {
    if (button != 8)
    {
      x = 1.0;
      SBMGGetCGRectAnswer(@"CameraButtonNormalizedCGRect", 1.0);
LABEL_23:
      v6 = v9;
      v7 = v10;
      v8 = v11;
      goto LABEL_24;
    }

    v12 = @"RingerButtonNormalizedCGRect";
    goto LABEL_20;
  }

  if (button == 10)
  {
    v16 = SBMGGetCGRectAnswer(@"VolumeUpButtonNormalizedCGRect", 0.0);
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v33.origin.x = SBMGGetCGRectAnswer(@"VolumeDownButtonNormalizedCGRect", 0.0);
    v33.origin.y = v23;
    v33.size.width = v24;
    v33.size.height = v25;
    v30.origin.x = v16;
    v30.origin.y = v18;
    v30.size.width = v20;
    v30.size.height = v22;
    *(&v9 - 1) = CGRectUnion(v30, v33);
LABEL_22:
    x = v31.origin.x;
    goto LABEL_23;
  }

  if (button == 11)
  {
    goto LABEL_15;
  }

LABEL_24:
  v26 = x;
  v27 = v6;
  v28 = v7;
  v29 = v8;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (CGRect)buttonHWRectForButton:(int64_t)button onEmbeddedDisplayBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(SBButtonBezelGeometryInfo *)self normalizedButtonHWRectForButton:button];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v24 = v14;
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  MinX = CGRectGetMinX(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v16 = v9 * CGRectGetMaxX(v26) + (1.0 - v9) * MinX;
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  MinY = CGRectGetMinY(v27);
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  v18 = v11 * CGRectGetMaxY(v28) + (1.0 - v11) * MinY;
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  v19 = v13 * CGRectGetWidth(v29) + (1.0 - v13) * 0.0;
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  v20 = v24 * CGRectGetHeight(v30) + (1.0 - v24) * 0.0;
  v21 = v16;
  v22 = v18;
  v23 = v19;
  result.size.height = v20;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (CGRect)buttonHWRectForButton:(int64_t)button inView:(id)view
{
  viewCopy = view;
  window = [viewCopy window];
  windowScene = [window windowScene];
  screen = [windowScene screen];
  if ([screen _isEmbeddedScreen])
  {
  }

  else
  {
    v10 = SBLogCommon();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);

    if (v11)
    {
      NSLog(&cfstr_Sbbuttonbezelg_0.isa);
    }
  }

  screen2 = [windowScene screen];
  [screen2 _referenceBounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  [(SBButtonBezelGeometryInfo *)self normalizedButtonHWRectForButton:button];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v45 = v27;
  v46.origin.x = v14;
  v46.origin.y = v16;
  v46.size.width = v18;
  v46.size.height = v20;
  MinX = CGRectGetMinX(v46);
  v47.origin.x = v14;
  v47.origin.y = v16;
  v47.size.width = v18;
  v47.size.height = v20;
  v29 = v22 * CGRectGetMaxX(v47) + (1.0 - v22) * MinX;
  v48.origin.x = v14;
  v48.origin.y = v16;
  v48.size.width = v18;
  v48.size.height = v20;
  MinY = CGRectGetMinY(v48);
  v49.origin.x = v14;
  v49.origin.y = v16;
  v49.size.width = v18;
  v49.size.height = v20;
  v31 = v24 * CGRectGetMaxY(v49) + (1.0 - v24) * MinY;
  v50.origin.x = v14;
  v50.origin.y = v16;
  v50.size.width = v18;
  v50.size.height = v20;
  v32 = v26 * CGRectGetWidth(v50) + (1.0 - v26) * 0.0;
  v51.origin.x = v14;
  v51.origin.y = v16;
  v51.size.width = v18;
  v51.size.height = v20;
  [viewCopy convertRect:window fromView:{v29, v31, v32, v45 * CGRectGetHeight(v51) + (1.0 - v45) * 0.0}];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;

  v41 = v34;
  v42 = v36;
  v43 = v38;
  v44 = v40;
  result.size.height = v44;
  result.size.width = v43;
  result.origin.y = v42;
  result.origin.x = v41;
  return result;
}

- (unint64_t)buttonScreenEdgeForButton:(int64_t)button
{
  [(SBButtonBezelGeometryInfo *)self normalizedButtonHWRectForButton:button];
  if (BSFloatIsZero() && (BSFloatIsZero() & 1) != 0)
  {
    return 2;
  }

  if (BSFloatIsOne() && (BSFloatIsZero() & 1) != 0)
  {
    return 8;
  }

  if (BSFloatIsZero() && !BSFloatIsZero())
  {
    return 1;
  }

  if (BSFloatIsOne() && !BSFloatIsZero())
  {
    return 4;
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBButtonBezelGeometryInfo.m" lineNumber:121 description:@"Button rect is not on edge of screen"];

  return 0;
}

@end