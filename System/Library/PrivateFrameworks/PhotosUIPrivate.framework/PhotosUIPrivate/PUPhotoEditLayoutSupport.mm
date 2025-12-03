@interface PUPhotoEditLayoutSupport
+ (BOOL)doneCancelButtonsInNotchAreaForLayoutOrientation:(int64_t)orientation viewWidth:(double)width;
+ (BOOL)isNotchedPhone;
+ (BOOL)isPhoneClassDevice;
+ (BOOL)requiresCompactNavBarForLayoutOrientation:(int64_t)orientation viewWidth:(double)width;
+ (double)topToolbarVerticalOffsetForLayoutOrientation:(int64_t)orientation view:(id)view;
+ (id)constraintsForNotchAreaButtonsLeading:(id)leading trailing:(id)trailing inWindow:(id)window;
+ (id)layoutConstraintsForHidingSecondaryView:(id)view layoutOrientation:(int64_t)orientation;
+ (id)layoutConstraintsForHidingView:(id)view layoutOrientation:(int64_t)orientation;
+ (int)productType;
+ (void)_solariumCurrentDeviceButtonSize:(CGSize *)size offset:(UIOffset *)offset zoomedSize:(CGSize *)zoomedSize zoomedOffset:(UIOffset *)zoomedOffset normalScreenWidth:(double *)width;
+ (void)currentDeviceButtonSize:(CGSize *)size offset:(UIOffset *)offset zoomedSize:(CGSize *)zoomedSize zoomedOffset:(UIOffset *)zoomedOffset normalScreenWidth:(double *)width quickCrop:(BOOL)crop;
+ (void)getTopLeadingButtonFrame:(CGRect *)frame topTrailingButtonFrame:(CGRect *)buttonFrame inBounds:(CGRect)bounds inRTL:(BOOL)l quickCrop:(BOOL)crop;
+ (void)transitionFromBarView:(id)view orientation:(int64_t)orientation toBarView:(id)barView orientation:(int64_t)a6 coordinator:(id)coordinator completionHandler:(id)handler;
@end

@implementation PUPhotoEditLayoutSupport

+ (void)_solariumCurrentDeviceButtonSize:(CGSize *)size offset:(UIOffset *)offset zoomedSize:(CGSize *)zoomedSize zoomedOffset:(UIOffset *)zoomedOffset normalScreenWidth:(double *)width
{
  v13 = 26.0;
  v14 = 8.0;
  v15 = 375.0;
  v16 = MGGetProductType();
  if (v16 <= 2159747552)
  {
    if (v16 > 1260109172)
    {
      if (v16 > 1781728946)
      {
        if (v16 <= 2021146988)
        {
          if (v16 != 1781728947)
          {
            if (v16 != 1872992317)
            {
              goto LABEL_78;
            }

            v19 = 28.0;
            v13 = 27.0;
            v20 = 24.0;
            v14 = 22.0;
            v21 = 68.0;
            v22 = 48.0;
            v23 = 44.0;
            v15 = 420.0;
            goto LABEL_36;
          }

          goto LABEL_58;
        }

        if (v16 == 2021146989)
        {
LABEL_45:
          v20 = 14.0;
          v22 = 20.0;
          v23 = 13.0;
          v21 = 60.0;
LABEL_54:
          v15 = 390.0;
          goto LABEL_55;
        }

        if (v16 != 2078329141)
        {
          goto LABEL_78;
        }

LABEL_44:
        v14 = 6.0;
        v23 = 10.0;
        v21 = 60.0;
        v22 = 10.0;
        v20 = 6.0;
LABEL_55:
        v26 = 60.0;
        goto LABEL_56;
      }

      if (v16 != 1260109173)
      {
        if (v16 == 1371389549)
        {
          v23 = 10.0;
          v22 = 16.0;
          v21 = 60.0;
          v20 = 10.0;
          goto LABEL_55;
        }

        v25 = 1434404433;
        goto LABEL_52;
      }
    }

    else
    {
      if (v16 <= 689804741)
      {
        if (v16 != 133314240)
        {
          if (v16 != 330877086)
          {
            v24 = 574536383;
LABEL_33:
            if (v16 != v24)
            {
              goto LABEL_78;
            }
          }

LABEL_34:
          v19 = 28.0;
          v13 = 27.0;
          v20 = 16.0;
          v14 = 12.0;
          v21 = 68.0;
          v22 = 48.0;
          v23 = 44.0;
LABEL_35:
          v15 = 428.0;
LABEL_36:
          v26 = v21;
          if (!size)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        }

        goto LABEL_58;
      }

      if (v16 > 1060988940)
      {
        if (v16 != 1060988941)
        {
          v17 = 1169082144;
LABEL_40:
          if (v16 != v17)
          {
            goto LABEL_78;
          }

          goto LABEL_45;
        }

        v20 = 13.0;
        v22 = 25.0;
        v14 = 10.0;
        v23 = 16.0;
        v26 = 64.0;
        v21 = 60.0;
        goto LABEL_56;
      }

      if (v16 != 689804742)
      {
        v18 = 851437781;
        goto LABEL_48;
      }
    }

LABEL_53:
    v23 = 26.0;
    v20 = 10.0;
    v21 = 60.0;
    v22 = 34.0;
    goto LABEL_54;
  }

  if (v16 > 2941181570)
  {
    if (v16 <= 3591055298)
    {
      if (v16 <= 3048527335)
      {
        if (v16 != 2941181571)
        {
          v17 = 3001488778;
          goto LABEL_40;
        }

        goto LABEL_34;
      }

      if (v16 != 3048527336)
      {
        v25 = 3585085679;
LABEL_52:
        if (v16 != v25)
        {
          goto LABEL_78;
        }

        goto LABEL_53;
      }

      goto LABEL_58;
    }

    if (v16 <= 3885279869)
    {
      if (v16 != 3591055299)
      {
        v24 = 3825599860;
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    if (v16 != 3885279870)
    {
      if (v16 != 4201643249)
      {
        goto LABEL_78;
      }

      v19 = 28.0;
      v20 = 12.0;
      v22 = 30.0;
      v14 = 10.0;
      v23 = 22.0;
      v21 = 66.0;
      goto LABEL_35;
    }

    v20 = 17.0;
    v22 = 14.0;
    v23 = 10.0;
    v26 = 58.0;
    v21 = 52.0;
    v14 = 10.0;
LABEL_56:
    v19 = 26.0;
    if (!size)
    {
      goto LABEL_61;
    }

LABEL_60:
    size->width = v26;
    size->height = v19;
    goto LABEL_61;
  }

  if (v16 <= 2722529671)
  {
    if (v16 != 2159747553)
    {
      if (v16 == 2309863438)
      {
        v13 = 28.0;
        v20 = 10.0;
        v21 = 68.0;
        v22 = 48.0;
        v23 = 32.0;
        v15 = 428.0;
LABEL_59:
        v26 = v21;
        v19 = 28.0;
        if (!size)
        {
          goto LABEL_61;
        }

        goto LABEL_60;
      }

      v24 = 2688879999;
      goto LABEL_33;
    }

    goto LABEL_44;
  }

  if (v16 > 2795618602)
  {
    if (v16 != 2795618603)
    {
      v18 = 2940697645;
      goto LABEL_48;
    }

LABEL_58:
    v13 = 28.0;
    v20 = 18.0;
    v14 = 13.0;
    v23 = 30.0;
    v21 = 66.0;
    v22 = 44.0;
    v15 = 390.0;
    goto LABEL_59;
  }

  if (v16 == 2722529672)
  {
    v20 = 10.0;
    v22 = 28.0;
    v23 = 22.0;
    v21 = 60.0;
    v15 = 414.0;
    goto LABEL_55;
  }

  v18 = 2793418701;
LABEL_48:
  if (v16 == v18)
  {
    goto LABEL_58;
  }

LABEL_78:
  isPhoneClassDevice = [self isPhoneClassDevice];
  v20 = 22.0;
  if (isPhoneClassDevice)
  {
    v20 = 19.0;
  }

  v22 = 14.0;
  if (isPhoneClassDevice)
  {
    v19 = 26.0;
  }

  else
  {
    v22 = 16.0;
    v19 = 28.0;
  }

  if (isPhoneClassDevice)
  {
    v26 = 58.0;
  }

  else
  {
    v26 = 68.0;
  }

  v23 = 0.0;
  v15 = 1.0;
  v14 = 0.0;
  v21 = 0.0;
  v13 = 0.0;
  if (size)
  {
    goto LABEL_60;
  }

LABEL_61:
  if (offset)
  {
    offset->horizontal = v22;
    offset->vertical = v20;
  }

  if (zoomedSize)
  {
    zoomedSize->width = v21;
    zoomedSize->height = v13;
  }

  if (zoomedOffset)
  {
    zoomedOffset->horizontal = v23;
    zoomedOffset->vertical = v14;
  }

  if (width)
  {
    *width = v15;
  }
}

+ (void)currentDeviceButtonSize:(CGSize *)size offset:(UIOffset *)offset zoomedSize:(CGSize *)zoomedSize zoomedOffset:(UIOffset *)zoomedOffset normalScreenWidth:(double *)width quickCrop:(BOOL)crop
{
  if (MEMORY[0x1B8C6D660](self, a2) && !crop)
  {

    [self _solariumCurrentDeviceButtonSize:size offset:offset zoomedSize:zoomedSize zoomedOffset:zoomedOffset normalScreenWidth:width];
    return;
  }

  v15 = 26.0;
  v16 = 375.0;
  v17 = MGGetProductType();
  if (v17 <= 2159747552)
  {
    if (v17 > 1260109172)
    {
      if (v17 > 1781728946)
      {
        if (v17 <= 2021146988)
        {
          if (v17 != 1781728947)
          {
            if (v17 != 1872992317)
            {
              goto LABEL_82;
            }

            v20 = 28.0;
            v15 = 27.0;
            v21 = 24.0;
            v22 = 22.0;
            v23 = 68.0;
            v24 = 48.0;
            v25 = 38.0;
            v16 = 420.0;
            goto LABEL_40;
          }

          goto LABEL_58;
        }

        if (v17 == 2021146989)
        {
LABEL_49:
          v21 = 18.0;
          v24 = 20.0;
          v22 = 16.0;
          v25 = 13.0;
          v23 = 60.0;
          v16 = 390.0;
          goto LABEL_68;
        }

        if (v17 != 2078329141)
        {
          goto LABEL_82;
        }

LABEL_48:
        v22 = 6.0;
        v25 = 10.0;
        v23 = 60.0;
        v24 = 10.0;
        v21 = 6.0;
LABEL_68:
        v28 = 60.0;
        goto LABEL_69;
      }

      if (v17 != 1260109173)
      {
        if (v17 != 1371389549)
        {
          v27 = 1434404433;
          goto LABEL_56;
        }

        v24 = 16.0;
        v25 = 10.0;
        v23 = 60.0;
        v22 = 10.0;
        goto LABEL_67;
      }
    }

    else
    {
      if (v17 <= 689804741)
      {
        if (v17 != 133314240)
        {
          if (v17 != 330877086)
          {
            v26 = 574536383;
LABEL_38:
            if (v17 != v26)
            {
              goto LABEL_82;
            }
          }

LABEL_39:
          v20 = 28.0;
          v15 = 27.0;
          v21 = 16.0;
          v22 = 12.0;
          v23 = 68.0;
          v24 = 50.0;
          v25 = 40.0;
          v16 = 428.0;
          goto LABEL_40;
        }

        goto LABEL_58;
      }

      if (v17 > 1060988940)
      {
        if (v17 == 1060988941)
        {
          v21 = 19.0;
          v24 = 25.0;
          v22 = 18.0;
          v25 = 16.0;
          v28 = 64.0;
          v23 = 60.0;
          goto LABEL_69;
        }

        v18 = 1169082144;
        goto LABEL_44;
      }

      if (v17 != 689804742)
      {
        v19 = 851437781;
        goto LABEL_52;
      }
    }

LABEL_57:
    v25 = 18.0;
    v24 = 30.0;
    v22 = 16.0;
    v23 = 60.0;
    v16 = 390.0;
    v21 = 18.0;
    goto LABEL_68;
  }

  if (v17 <= 2941181570)
  {
    if (v17 > 2722529671)
    {
      if (v17 <= 2795618602)
      {
        if (v17 != 2722529672)
        {
          v19 = 2793418701;
          goto LABEL_52;
        }

        v25 = 16.0;
        v24 = 28.0;
        v23 = 60.0;
        v16 = 414.0;
        v22 = 16.0;
LABEL_67:
        v21 = 16.0;
        goto LABEL_68;
      }

      if (v17 != 2795618603)
      {
        v19 = 2940697645;
LABEL_52:
        if (v17 != v19)
        {
LABEL_82:
          isPhoneClassDevice = [self isPhoneClassDevice];
          if (isPhoneClassDevice)
          {
            v21 = 19.0;
          }

          else
          {
            v21 = 22.0;
          }

          v24 = 14.0;
          if (isPhoneClassDevice)
          {
            v20 = 26.0;
          }

          else
          {
            v24 = 16.0;
            v20 = 28.0;
          }

          if (isPhoneClassDevice)
          {
            v28 = 58.0;
          }

          else
          {
            v28 = 68.0;
          }

          v25 = 0.0;
          v16 = 1.0;
          v22 = 0.0;
          v23 = 0.0;
          v15 = 0.0;
          if (!size)
          {
            goto LABEL_71;
          }

          goto LABEL_70;
        }
      }

LABEL_58:
      v15 = 28.0;
      v21 = 16.0;
      v22 = 10.0;
      v25 = 25.0;
      v23 = 66.0;
      v24 = 37.0;
      v16 = 390.0;
      goto LABEL_59;
    }

    if (v17 != 2159747553)
    {
      if (v17 == 2309863438)
      {
        v25 = 28.0;
        v21 = 23.0;
        v22 = 20.0;
        v23 = 68.0;
        v24 = 42.0;
        v16 = 428.0;
        v15 = 28.0;
LABEL_59:
        v28 = v23;
        v20 = 28.0;
        if (!size)
        {
          goto LABEL_71;
        }

        goto LABEL_70;
      }

      v26 = 2688879999;
      goto LABEL_38;
    }

    goto LABEL_48;
  }

  if (v17 <= 3591055298)
  {
    if (v17 <= 3048527335)
    {
      if (v17 != 2941181571)
      {
        v18 = 3001488778;
LABEL_44:
        if (v17 != v18)
        {
          goto LABEL_82;
        }

        goto LABEL_49;
      }

      goto LABEL_39;
    }

    if (v17 != 3048527336)
    {
      v27 = 3585085679;
LABEL_56:
      if (v17 != v27)
      {
        goto LABEL_82;
      }

      goto LABEL_57;
    }

    goto LABEL_58;
  }

  if (v17 <= 3885279869)
  {
    if (v17 != 3591055299)
    {
      v26 = 3825599860;
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  if (v17 != 3885279870)
  {
    if (v17 != 4201643249)
    {
      goto LABEL_82;
    }

    v20 = 28.0;
    v22 = 20.0;
    v24 = 30.0;
    v25 = 22.0;
    v23 = 66.0;
    v16 = 428.0;
    v21 = 20.0;
LABEL_40:
    v28 = v23;
    if (!size)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

  v21 = 19.0;
  v24 = 14.0;
  v25 = 10.0;
  v28 = 58.0;
  v23 = 52.0;
  v22 = 10.0;
LABEL_69:
  v20 = 26.0;
  if (size)
  {
LABEL_70:
    size->width = v28;
    size->height = v20;
  }

LABEL_71:
  if (offset)
  {
    offset->horizontal = v24;
    offset->vertical = v21;
  }

  if (zoomedSize)
  {
    zoomedSize->width = v23;
    zoomedSize->height = v15;
  }

  if (zoomedOffset)
  {
    zoomedOffset->horizontal = v25;
    zoomedOffset->vertical = v22;
  }

  if (width)
  {
    *width = v16;
  }
}

+ (void)getTopLeadingButtonFrame:(CGRect *)frame topTrailingButtonFrame:(CGRect *)buttonFrame inBounds:(CGRect)bounds inRTL:(BOOL)l quickCrop:(BOOL)crop
{
  lCopy = l;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v14 = *MEMORY[0x1E69DE258];
  v30 = *MEMORY[0x1E695F060];
  v31 = v14;
  v29 = 0.0;
  v27 = v30;
  v28 = v14;
  [self currentDeviceButtonSize:&v30 offset:&v31 zoomedSize:&v27 zoomedOffset:&v28 normalScreenWidth:&v29 quickCrop:crop];
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  if (!CGRectIsEmpty(v32) && width < v29)
  {
    v30 = v27;
    v31 = v28;
  }

  if (frame)
  {
    PXRectWithSize();
    frame->origin.x = v15;
    frame->origin.y = v16;
    frame->size.width = v17;
    frame->size.height = v18;
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = height;
    frame->origin.y = CGRectGetMinY(v33) + *(&v31 + 1);
  }

  if (buttonFrame)
  {
    PXRectWithSize();
    buttonFrame->origin.x = v19;
    buttonFrame->origin.y = v20;
    buttonFrame->size.width = v21;
    buttonFrame->size.height = v22;
    if (frame)
    {
      v23 = frame->origin.y;
    }

    else
    {
      v34.origin.x = x;
      v34.origin.y = y;
      v34.size.width = width;
      v34.size.height = height;
      v23 = CGRectGetMinX(v34) + *(&v31 + 1);
    }

    buttonFrame->origin.y = v23;
  }

  v24 = !lCopy;
  if (lCopy)
  {
    frameCopy = buttonFrame;
  }

  else
  {
    frameCopy = frame;
  }

  if (!v24)
  {
    buttonFrame = frame;
  }

  if (buttonFrame)
  {
    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = width;
    v35.size.height = height;
    MaxX = CGRectGetMaxX(v35);
    buttonFrame->origin.x = MaxX - CGRectGetWidth(*buttonFrame) - *&v31;
  }

  if (frameCopy)
  {
    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = width;
    v36.size.height = height;
    frameCopy->origin.x = CGRectGetMinX(v36) + *&v31;
  }
}

+ (double)topToolbarVerticalOffsetForLayoutOrientation:(int64_t)orientation view:(id)view
{
  viewCopy = view;
  v7 = MGGetProductType();
  v9 = v7 == 2078329141 || v7 == 2159747553;
  if (orientation == 1 && v9)
  {
    if (MEMORY[0x1B8C6D660]())
    {
      v10 = 0.0;
    }

    else
    {
      v10 = 66.0;
    }
  }

  else
  {
    v11 = +[PUPhotoEditLayoutSupport isPhoneClassDevice];
    if (orientation != 1 || v11)
    {
      v13 = +[PUPhotoEditLayoutSupport isPhoneClassDevice];
      v10 = 0.0;
      if (orientation == 1 && v13)
      {
        [viewCopy safeAreaInsets];
        v10 = fmin(fmax(59.0 - v14, 0.0), 12.0);
      }
    }

    else if ((MEMORY[0x1B8C6D660]() & 1) != 0 || ([viewCopy bounds], (objc_msgSend(self, "doneCancelButtonsInNotchAreaForLayoutOrientation:viewWidth:", 1, v12) & 1) == 0))
    {
      v10 = 0.0;
    }

    else
    {
      v10 = 46.0;
    }
  }

  return v10;
}

+ (id)constraintsForNotchAreaButtonsLeading:(id)leading trailing:(id)trailing inWindow:(id)window
{
  v47[8] = *MEMORY[0x1E69E9840];
  leadingCopy = leading;
  trailingCopy = trailing;
  memset(&v46, 0, sizeof(v46));
  memset(&v45, 0, sizeof(v45));
  windowCopy = window;
  traitCollection = [windowCopy traitCollection];
  layoutDirection = [traitCollection layoutDirection];
  screen = [windowCopy screen];
  [screen bounds];
  v15 = v14;

  screen2 = [windowCopy screen];

  [screen2 bounds];
  [self getTopLeadingButtonFrame:&v46 topTrailingButtonFrame:&v45 inBounds:layoutDirection == 1 inRTL:0 quickCrop:?];

  superview = [leadingCopy superview];
  if (superview)
  {
    v18 = v46;
    v43 = traitCollection;
    if (layoutDirection == 1)
    {
      v19 = v15 - CGRectGetMaxX(v18);
      MinX = CGRectGetMinX(v45);
    }

    else
    {
      v19 = CGRectGetMinX(v18);
      MinX = v15 - CGRectGetMaxX(v45);
    }

    widthAnchor = [leadingCopy widthAnchor];
    v41 = [widthAnchor constraintEqualToConstant:v46.size.width];
    v47[0] = v41;
    heightAnchor = [leadingCopy heightAnchor];
    v39 = [heightAnchor constraintEqualToConstant:v46.size.height];
    v47[1] = v39;
    leadingAnchor = [leadingCopy leadingAnchor];
    leadingAnchor2 = [superview leadingAnchor];
    v36 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v19];
    v47[2] = v36;
    topAnchor = [leadingCopy topAnchor];
    topAnchor2 = [superview topAnchor];
    v33 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v46.origin.y];
    v47[3] = v33;
    widthAnchor2 = [trailingCopy widthAnchor];
    v31 = [widthAnchor2 constraintEqualToConstant:v45.size.width];
    v47[4] = v31;
    heightAnchor2 = [trailingCopy heightAnchor];
    v21 = [heightAnchor2 constraintEqualToConstant:v45.size.height];
    v47[5] = v21;
    trailingAnchor = [trailingCopy trailingAnchor];
    trailingAnchor2 = [superview trailingAnchor];
    v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-MinX];
    v47[6] = v24;
    topAnchor3 = [trailingCopy topAnchor];
    [superview topAnchor];
    v27 = v26 = trailingCopy;
    v28 = [topAnchor3 constraintEqualToAnchor:v27 constant:v45.origin.y];
    v47[7] = v28;
    v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:8];

    trailingCopy = v26;
    traitCollection = v43;
  }

  else
  {
    v44 = MEMORY[0x1E695E0F0];
  }

  return v44;
}

+ (BOOL)requiresCompactNavBarForLayoutOrientation:(int64_t)orientation viewWidth:(double)width
{
  if (!+[PUPhotoEditLayoutSupport isPhoneClassDevice])
  {
    return width <= 568.0;
  }

  v6 = !+[PUPhotoEditLayoutSupport isNotchedPhone];
  return orientation == 1 && v6;
}

+ (BOOL)doneCancelButtonsInNotchAreaForLayoutOrientation:(int64_t)orientation viewWidth:(double)width
{
  v5 = orientation - 4;
  v6 = +[PUPhotoEditLayoutSupport isPhoneClassDevice];
  v7 = width < 510.0 || v6;
  return v5 < 0xFFFFFFFFFFFFFFFELL && v7;
}

+ (BOOL)isNotchedPhone
{
  isPhoneClassDevice = [self isPhoneClassDevice];
  if (isPhoneClassDevice)
  {
    productType = [self productType];
    LOBYTE(isPhoneClassDevice) = productType != 2078329141 && productType != 2159747553;
  }

  return isPhoneClassDevice;
}

+ (BOOL)isPhoneClassDevice
{
  if (isPhoneClassDevice_onceToken != -1)
  {
    dispatch_once(&isPhoneClassDevice_onceToken, &__block_literal_global_9);
  }

  return isPhoneClassDevice_isiPhoneClass;
}

void __46__PUPhotoEditLayoutSupport_isPhoneClassDevice__block_invoke()
{
  v0 = MGCopyAnswer();
  isPhoneClassDevice_isiPhoneClass = CFEqual(v0, @"iPhone") != 0;
  if (v0)
  {

    CFRelease(v0);
  }
}

+ (int)productType
{
  if (productType_onceToken != -1)
  {
    dispatch_once(&productType_onceToken, &__block_literal_global_53901);
  }

  return productType_productType;
}

uint64_t __39__PUPhotoEditLayoutSupport_productType__block_invoke()
{
  result = MGGetProductType();
  productType_productType = result;
  return result;
}

+ (void)transitionFromBarView:(id)view orientation:(int64_t)orientation toBarView:(id)barView orientation:(int64_t)a6 coordinator:(id)coordinator completionHandler:(id)handler
{
  viewCopy = view;
  barViewCopy = barView;
  handlerCopy = handler;
  coordinatorCopy = coordinator;
  v18 = [PUPhotoEditLayoutSupport layoutConstraintsForHidingView:viewCopy layoutOrientation:orientation];
  v19 = [PUPhotoEditLayoutSupport layoutConstraintsForHidingView:barViewCopy layoutOrientation:a6];
  superview = [viewCopy superview];
  if (!superview)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoEditLayoutSupport.m" lineNumber:65 description:@"The view must have a superview"];
  }

  [superview addConstraint:v19];
  [barViewCopy setAlpha:0.0];
  [superview layoutIfNeeded];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __114__PUPhotoEditLayoutSupport_transitionFromBarView_orientation_toBarView_orientation_coordinator_completionHandler___block_invoke;
  v31[3] = &unk_1E7B7ABB8;
  v32 = superview;
  v33 = v18;
  v34 = v19;
  v35 = viewCopy;
  v36 = barViewCopy;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __114__PUPhotoEditLayoutSupport_transitionFromBarView_orientation_toBarView_orientation_coordinator_completionHandler___block_invoke_2;
  v29[3] = &unk_1E7B7ABE0;
  v30 = handlerCopy;
  v21 = handlerCopy;
  v22 = barViewCopy;
  v23 = viewCopy;
  v24 = v19;
  v25 = v18;
  v26 = superview;
  [coordinatorCopy animateAlongsideTransition:v31 completion:v29];
}

uint64_t __114__PUPhotoEditLayoutSupport_transitionFromBarView_orientation_toBarView_orientation_coordinator_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) addConstraint:*(a1 + 40)];
  [*(a1 + 32) removeConstraint:*(a1 + 48)];
  [*(a1 + 56) setAlpha:0.0];
  [*(a1 + 64) setAlpha:1.0];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

uint64_t __114__PUPhotoEditLayoutSupport_transitionFromBarView_orientation_toBarView_orientation_coordinator_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (id)layoutConstraintsForHidingSecondaryView:(id)view layoutOrientation:(int64_t)orientation
{
  viewCopy = view;
  superview = [viewCopy superview];
  if (!superview)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoEditLayoutSupport.m" lineNumber:50 description:@"The view must have a superview"];
  }

  v8 = [MEMORY[0x1E696ACD8] constraintWithItem:viewCopy attribute:4 relatedBy:0 toItem:superview attribute:3 multiplier:1.0 constant:0.0];

  return v8;
}

+ (id)layoutConstraintsForHidingView:(id)view layoutOrientation:(int64_t)orientation
{
  viewCopy = view;
  superview = [viewCopy superview];
  if (!superview)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoEditLayoutSupport.m" lineNumber:23 description:@"The view must have a superview"];
  }

  switch(orientation)
  {
    case 3:
      v9 = MEMORY[0x1E696ACD8];
      v10 = 1.0;
      v11 = viewCopy;
      v12 = 1;
      v13 = superview;
      v14 = 2;
      goto LABEL_9;
    case 2:
      v9 = MEMORY[0x1E696ACD8];
      v10 = 1.0;
      v11 = viewCopy;
      v12 = 2;
      v13 = superview;
      v14 = 1;
      goto LABEL_9;
    case 1:
      v9 = MEMORY[0x1E696ACD8];
      v10 = 1.0;
      v11 = viewCopy;
      v12 = 3;
      v13 = superview;
      v14 = 4;
LABEL_9:
      v15 = [v9 constraintWithItem:v11 attribute:v12 relatedBy:0 toItem:v13 attribute:v14 multiplier:v10 constant:0.0];
      goto LABEL_11;
  }

  v15 = 0;
LABEL_11:

  return v15;
}

@end