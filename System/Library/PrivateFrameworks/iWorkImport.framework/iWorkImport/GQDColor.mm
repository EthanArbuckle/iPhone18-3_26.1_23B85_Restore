@interface GQDColor
+ (id)cmykColorFromReader:(_xmlTextReader *)a3;
+ (id)colorWithCalibratedRed:(double)a3 green:(double)a4 blue:(double)a5;
+ (id)rgbColorFromReader:(_xmlTextReader *)a3 calibrated:(BOOL)a4;
+ (id)whiteColorFromReader:(_xmlTextReader *)a3 calibrated:(BOOL)a4;
+ (void)readColorFromProcessor:(id)a3 reader:(_xmlTextReader *)a4;
- (GQDColor)initWithCalibratedRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6;
- (id)blendedColorWithFraction:(double)a3 ofColor:(id)a4;
- (void)getRed:(double *)a3 green:(double *)a4 blue:(double *)a5 alpha:(double *)a6;
@end

@implementation GQDColor

+ (id)colorWithCalibratedRed:(double)a3 green:(double)a4 blue:(double)a5
{
  v5 = [objc_alloc(objc_opt_class()) initWithCalibratedRed:a3 green:a4 blue:a5 alpha:1.0];

  return v5;
}

- (GQDColor)initWithCalibratedRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6
{
  v11.receiver = self;
  v11.super_class = GQDColor;
  result = [(GQDColor *)&v11 init];
  if (result)
  {
    result->mRed = a3;
    result->mGreen = a4;
    result->mBlue = a5;
    result->mAlpha = a6;
  }

  return result;
}

- (void)getRed:(double *)a3 green:(double *)a4 blue:(double *)a5 alpha:(double *)a6
{
  if (a3)
  {
    *a3 = self->mRed;
  }

  if (a4)
  {
    *a4 = self->mGreen;
  }

  if (a5)
  {
    *a5 = self->mBlue;
  }

  if (a6)
  {
    *a6 = self->mAlpha;
  }
}

- (id)blendedColorWithFraction:(double)a3 ofColor:(id)a4
{
  v7 = 1.0 - a3;
  [a4 redComponent];
  v9 = v7 * self->mRed + v8 * a3;
  [a4 greenComponent];
  v11 = v7 * self->mGreen + v10 * a3;
  [a4 blueComponent];
  v13 = v7 * self->mBlue + v12 * a3;
  [a4 alphaComponent];
  v15 = [[GQDColor alloc] initWithCalibratedRed:v9 green:v11 blue:v13 alpha:v7 * self->mAlpha + v14 * a3];

  return v15;
}

+ (void)readColorFromProcessor:(id)a3 reader:(_xmlTextReader *)a4
{
  AttributeNs = xmlTextReaderGetAttributeNs(a4, "type", *(qword_A35F0 + 16));
  if (!AttributeNs)
  {
    return;
  }

  v8 = AttributeNs;
  if (xmlStrEqual(AttributeNs, "sfa:calibrated-rgb-color-type"))
  {
    v9 = a1;
    v10 = a4;
    v11 = 1;
LABEL_6:
    v12 = [v9 rgbColorFromReader:v10 calibrated:v11];
LABEL_7:
    v13 = v12;
    goto LABEL_8;
  }

  if (xmlStrEqual(v8, "sfa:device-rgb-color-type"))
  {
    v9 = a1;
    v10 = a4;
    v11 = 0;
    goto LABEL_6;
  }

  if (xmlStrEqual(v8, "sfa:calibrated-white-color-type"))
  {
    v15 = a1;
    v16 = a4;
    v17 = 1;
LABEL_17:
    v12 = [v15 whiteColorFromReader:v16 calibrated:v17];
    goto LABEL_7;
  }

  if (xmlStrEqual(v8, "sfa:device-white-color-type"))
  {
    v15 = a1;
    v16 = a4;
    v17 = 0;
    goto LABEL_17;
  }

  if (xmlStrEqual(v8, "sfa:device-cmyk-color-type"))
  {
    v12 = [a1 cmykColorFromReader:a4];
    goto LABEL_7;
  }

  if (xmlStrEqual(v8, "sfa:named-color-type"))
  {
    v18 = [a1 rgbColorFromReader:a4 calibrated:1];
    if (v18)
    {
      v13 = v18;
      free(v8);
LABEL_9:
      v14 = [a3 documentState];

      [v14 pushObject:v13];
      return;
    }

    v19 = xmlTextReaderGetAttributeNs(a4, "catalog", *(qword_A35E0 + 16));
    if (v19)
    {
      v20 = v19;
      if (!xmlStrEqual(v19, "System"))
      {
        v13 = 0;
LABEL_38:
        free(v20);
LABEL_8:
        free(v8);
        if (!v13)
        {
          return;
        }

        goto LABEL_9;
      }

      v21 = xmlTextReaderGetAttributeNs(a4, "name", *(qword_A35E0 + 16));
      v22 = v21;
      if (v21)
      {
        if (xmlStrEqual(v21, "windowBackgroundColor") || xmlStrEqual(v22, "controlColor"))
        {
          v23 = [GQDColor alloc];
          v24 = 0.909803927;
          v25 = 1.0;
          v26 = 0.909803927;
          v27 = 0.909803927;
LABEL_29:
          v13 = [(GQDColor *)v23 initWithCalibratedRed:v24 green:v26 blue:v27 alpha:v25];
LABEL_37:
          free(v22);
          goto LABEL_38;
        }

        if (xmlStrEqual(v22, "selectedMenuItemColor"))
        {
          v23 = [GQDColor alloc];
          v24 = 0.105882354;
          v26 = 0.266666681;
          v27 = 0.952941179;
          v25 = 1.0;
          goto LABEL_29;
        }
      }

      v13 = 0;
      goto LABEL_37;
    }
  }

  free(v8);
}

+ (id)rgbColorFromReader:(_xmlTextReader *)a3 calibrated:(BOOL)a4
{
  v9 = 0.0;
  v10 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  if (!sub_426B0(a3, qword_A35E0, "r", &v10) || !sub_426B0(a3, qword_A35E0, "g", &v9) || !sub_426B0(a3, qword_A35E0, "b", &v8) || !sub_426B0(a3, qword_A35E0, "a", &v7))
  {
    return 0;
  }

  v5 = [GQDColor alloc];
  return [(GQDColor *)v5 initWithCalibratedRed:v10 green:v9 blue:v8 alpha:v7];
}

+ (id)whiteColorFromReader:(_xmlTextReader *)a3 calibrated:(BOOL)a4
{
  v7 = 0.0;
  v8 = 0.0;
  if (!sub_426B0(a3, qword_A35E0, "w", &v8) || !sub_426B0(a3, qword_A35E0, "a", &v7))
  {
    return 0;
  }

  v5 = [GQDColor alloc];
  return [(GQDColor *)v5 initWithCalibratedRed:v8 green:v8 blue:v8 alpha:v7];
}

+ (id)cmykColorFromReader:(_xmlTextReader *)a3
{
  v15 = 0.0;
  v16 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  v12 = 0.0;
  if (!sub_426B0(a3, qword_A35E0, "c", &v16))
  {
    return 0;
  }

  if (!sub_426B0(a3, qword_A35E0, "m", &v15))
  {
    return 0;
  }

  if (!sub_426B0(a3, qword_A35E0, "y", &v14))
  {
    return 0;
  }

  if (!sub_426B0(a3, qword_A35E0, "k", &v13))
  {
    return 0;
  }

  if (!sub_426B0(a3, qword_A35E0, "a", &v12))
  {
    return 0;
  }

  DeviceCMYK = CGColorSpaceCreateDeviceCMYK();
  components[0] = v16;
  components[1] = v15;
  components[2] = v14;
  components[3] = v13;
  components[4] = v12;
  v5 = CGColorCreate(DeviceCMYK, components);
  CGColorSpaceRelease(DeviceCMYK);
  if (!v5)
  {
    return 0;
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  if (DeviceRGB)
  {
    v7 = DeviceRGB;
    if (CGColorTransformCreate())
    {
      v8 = CGColorTransformConvertColor();
      v9 = v8;
      if (v8)
      {
        if (CGColorGetNumberOfComponents(v8) == 4)
        {
          v10 = CGColorGetComponents(v9);
          v9 = [[GQDColor alloc] initWithCalibratedRed:*v10 green:v10[1] blue:v10[2] alpha:v10[3]];
        }

        else
        {
          v9 = 0;
        }
      }

      CGColorTransformRelease();
    }

    else
    {
      v9 = 0;
    }

    CGColorSpaceRelease(v7);
  }

  else
  {
    v9 = 0;
  }

  CGColorRelease(v5);
  return v9;
}

@end