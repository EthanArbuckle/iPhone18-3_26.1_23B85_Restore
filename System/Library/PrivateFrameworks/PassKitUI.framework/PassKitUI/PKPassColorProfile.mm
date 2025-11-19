@interface PKPassColorProfile
+ (id)profileForDisplayProfile:(id)a3;
- (id)_imageForGlyph:(id)a3 color:(id)a4;
- (id)_initWithBackgroundColor:(id)a3 foregroundColor:(id)a4 labelColor:(id)a5;
- (id)foregroundAttributesForFont:(id)a3;
- (id)foregroundColorOverStrip:(BOOL)a3;
- (id)labelAttributesForFont:(id)a3;
- (id)labelColorOverStrip:(BOOL)a3;
- (void)_calculateColorsWithBackgroundColor:(id)a3 foregroundColor:(id)a4 labelColor:(id)a5;
@end

@implementation PKPassColorProfile

+ (id)profileForDisplayProfile:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = objc_getAssociatedObject(v3, &ColorProfileCacheKey);
    if (v5)
    {
      goto LABEL_23;
    }
  }

  if ([v4 passStyle] == 9)
  {
    v6 = [MEMORY[0x1E69DC888] blackColor];
    v7 = MEMORY[0x1E69DC888];
    v8 = [v4 foregroundColor];
    v9 = [v7 pkui_colorWithPKColor:v8];
    if (!v9)
    {
      v10 = [MEMORY[0x1E69DC888] whiteColor];
LABEL_13:
      v13 = v10;

      goto LABEL_14;
    }

LABEL_12:
    v10 = v9;
    goto LABEL_13;
  }

  v11 = [v4 showsBackgroundImage];
  v12 = MEMORY[0x1E69DC888];
  if (!v11)
  {
    v14 = [v4 backgroundColor];
    v15 = [v12 pkui_colorWithPKColor:v14];
    v16 = [v15 colorWithAlphaComponent:1.0];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = [MEMORY[0x1E69DC888] whiteColor];
    }

    v6 = v18;

    v19 = MEMORY[0x1E69DC888];
    v8 = [v4 foregroundColor];
    v9 = [v19 pkui_colorWithPKColor:v8];
    if (!v9)
    {
      v10 = [MEMORY[0x1E69DC888] blackColor];
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v6 = [MEMORY[0x1E69DC888] blackColor];
  v8 = [MEMORY[0x1E69DC888] whiteColor];
  v13 = [v8 colorWithAlphaComponent:0.699999988];
LABEL_14:

  v20 = MEMORY[0x1E69DC888];
  v21 = [v4 labelColor];
  v22 = [v20 pkui_colorWithPKColor:v21];

  v5 = [[PKPassColorProfile alloc] _initWithBackgroundColor:v6 foregroundColor:v13 labelColor:v22];
  if ([v4 showsStripImage])
  {
    v23 = MEMORY[0x1E69DC888];
    v24 = [v4 stripColor];
    v25 = [v23 pkui_colorWithPKColor:v24];
    v26 = v25;
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = [MEMORY[0x1E69DC888] whiteColor];
    }

    v28 = v27;

    v29 = [PKPassColorProfile alloc];
    v30 = [MEMORY[0x1E69DC888] blackColor];
    v31 = [(PKPassColorProfile *)v29 _initWithBackgroundColor:v30 foregroundColor:v28 labelColor:v28];
    v32 = v5[4];
    v5[4] = v31;
  }

  *(v5 + 40) = [v4 supportsAutomaticForegroundVibrancy];
  *(v5 + 41) = [v4 supportsAutomaticLabelVibrancy];
  v33 = MEMORY[0x1E69DC888];
  v34 = [v4 footerBackgroundColor];
  v35 = [v33 pkui_colorWithPKColor:v34];
  v36 = v5[14];
  v5[14] = v35;

  if (v4 && v5)
  {
    objc_setAssociatedObject(v4, &ColorProfileCacheKey, v5, 0x301);
  }

LABEL_23:

  return v5;
}

- (id)_initWithBackgroundColor:(id)a3 foregroundColor:(id)a4 labelColor:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = PKPassColorProfile;
  v11 = [(PKPassColorProfile *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(PKPassColorProfile *)v11 _calculateColorsWithBackgroundColor:v8 foregroundColor:v9 labelColor:v10];
  }

  return v12;
}

- (id)labelColorOverStrip:(BOOL)a3
{
  if (a3 && self->_stripProfile)
  {
    self = self->_stripProfile;
  }

  v3 = [(PKPassColorProfile *)self labelColor];

  return v3;
}

- (id)foregroundColorOverStrip:(BOOL)a3
{
  if (a3 && self->_stripProfile)
  {
    self = self->_stripProfile;
  }

  v3 = [(PKPassColorProfile *)self foregroundColor];

  return v3;
}

- (id)labelAttributesForFont:(id)a3
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8[0] = *MEMORY[0x1E69DB650];
  v4 = a3;
  v5 = [(PKPassColorProfile *)self labelColor];
  v8[1] = *MEMORY[0x1E69DB648];
  v9[0] = v5;
  v9[1] = v4;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

- (id)foregroundAttributesForFont:(id)a3
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8[0] = *MEMORY[0x1E69DB650];
  v4 = a3;
  v5 = [(PKPassColorProfile *)self foregroundColor];
  v8[1] = *MEMORY[0x1E69DB648];
  v9[0] = v5;
  v9[1] = v4;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

- (id)_imageForGlyph:(id)a3 color:(id)a4
{
  v5 = *MEMORY[0x1E695EFF8];
  v6 = *(MEMORY[0x1E695EFF8] + 8);
  v7 = a4;
  v8 = a3;
  [v8 size];
  width = v16.width;
  height = v16.height;
  UIGraphicsBeginImageContextWithOptions(v16, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  v12 = [v7 CGColor];

  CGContextSetFillColorWithColor(CurrentContext, v12);
  v17.origin.x = v5;
  v17.origin.y = v6;
  v17.size.width = width;
  v17.size.height = height;
  CGContextFillRect(CurrentContext, v17);
  [v8 drawInRect:22 blendMode:v5 alpha:{v6, width, height, 1.0}];

  v13 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v13;
}

- (void)_calculateColorsWithBackgroundColor:(id)a3 foregroundColor:(id)a4 labelColor:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  data = 0;
  DeviceGray = CGColorSpaceCreateDeviceGray();
  v13 = CGBitmapContextCreate(&data, 1uLL, 1uLL, 8uLL, 1uLL, DeviceGray, 0);
  objc_storeStrong(&self->_backgroundColor, a3);
  self->_backgroundLightness = _ColorLightness(self->_backgroundColor, v13, &data);
  objc_storeStrong(&self->_foregroundColor, a4);
  self->_foregroundLightness = _ColorLightness(self->_foregroundColor, v13, &data);
  backgroundColor = self->_backgroundColor;
  v15 = (self->_backgroundLightness + -0.400000006) * 1.20000005;
  if (v15 < 0.0)
  {
    v15 = 0.0;
  }

  v16 = v15 + 0.25;
  v29 = 0.0;
  v30 = 0.0;
  [(UIColor *)backgroundColor getHue:0 saturation:&v30 brightness:&v29 alpha:0];
  v17 = (v30 + v29 * 2.0) / 3.0 + -0.800000012;
  if (v17 < 0.0)
  {
    v17 = 0.0;
  }

  v18 = v17 * 1.5;
  if (v18 <= 0.300000012)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0.300000012;
  }

  if (v11)
  {
    v20 = v11;
  }

  else
  {
    if ([(PKPassColorProfile *)self isLight])
    {
      _NewColorByAdjustingColor(self->_backgroundColor, 1, v16 * 0.7, v19);
    }

    else
    {
      [MEMORY[0x1E69DC888] whiteColor];
    }
    v20 = ;
  }

  labelColor = self->_labelColor;
  self->_labelColor = v20;

  self->_labelLightness = _ColorLightness(self->_labelColor, v13, &data);
  self->_overlayDarkeningAlpha = v16;
  self->_regularDarkeningAlpha = v19;
  v22 = self->_backgroundColor;
  v29 = 0.0;
  v30 = 0.0;
  [(UIColor *)v22 getHue:0 saturation:&v30 brightness:&v29 alpha:0];
  v23 = (v30 + v29 * 2.0) / 3.0 + -0.800000012;
  if (v23 < 0.0)
  {
    v23 = 0.0;
  }

  v24 = v23 * 1.20000005;
  if (v24 <= 0.300000012)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0.300000012;
  }

  v26 = _NewColorByAdjustingColor(self->_backgroundColor, 0, 0.800000012, v25);
  highlightColor = self->_highlightColor;
  self->_highlightColor = v26;

  self->_overlayLighteningAlpha = 0.800000012;
  self->_regularLighteningAlpha = v25;
  CFRelease(DeviceGray);
  CFRelease(v13);
}

@end