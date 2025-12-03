@interface GQDColor
+ (id)cmykColorFromReader:(_xmlTextReader *)reader;
+ (id)colorWithCalibratedRed:(double)red green:(double)green blue:(double)blue;
+ (id)rgbColorFromReader:(_xmlTextReader *)reader calibrated:(BOOL)calibrated;
+ (id)whiteColorFromReader:(_xmlTextReader *)reader calibrated:(BOOL)calibrated;
+ (void)readColorFromProcessor:(id)processor reader:(_xmlTextReader *)reader;
- (GQDColor)initWithCalibratedRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha;
- (id)blendedColorWithFraction:(double)fraction ofColor:(id)color;
- (void)getRed:(double *)red green:(double *)green blue:(double *)blue alpha:(double *)alpha;
@end

@implementation GQDColor

+ (id)colorWithCalibratedRed:(double)red green:(double)green blue:(double)blue
{
  v5 = [objc_alloc(objc_opt_class()) initWithCalibratedRed:red green:green blue:blue alpha:1.0];

  return v5;
}

- (GQDColor)initWithCalibratedRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha
{
  v11.receiver = self;
  v11.super_class = GQDColor;
  result = [(GQDColor *)&v11 init];
  if (result)
  {
    result->mRed = red;
    result->mGreen = green;
    result->mBlue = blue;
    result->mAlpha = alpha;
  }

  return result;
}

- (void)getRed:(double *)red green:(double *)green blue:(double *)blue alpha:(double *)alpha
{
  if (red)
  {
    *red = self->mRed;
  }

  if (green)
  {
    *green = self->mGreen;
  }

  if (blue)
  {
    *blue = self->mBlue;
  }

  if (alpha)
  {
    *alpha = self->mAlpha;
  }
}

- (id)blendedColorWithFraction:(double)fraction ofColor:(id)color
{
  v7 = 1.0 - fraction;
  [color redComponent];
  v9 = v7 * self->mRed + v8 * fraction;
  [color greenComponent];
  v11 = v7 * self->mGreen + v10 * fraction;
  [color blueComponent];
  v13 = v7 * self->mBlue + v12 * fraction;
  [color alphaComponent];
  fraction = [[GQDColor alloc] initWithCalibratedRed:v9 green:v11 blue:v13 alpha:v7 * self->mAlpha + v14 * fraction];

  return fraction;
}

+ (void)readColorFromProcessor:(id)processor reader:(_xmlTextReader *)reader
{
  AttributeNs = xmlTextReaderGetAttributeNs(reader, "type", *(qword_A35F0 + 16));
  if (!AttributeNs)
  {
    return;
  }

  v8 = AttributeNs;
  if (xmlStrEqual(AttributeNs, "sfa:calibrated-rgb-color-type"))
  {
    selfCopy2 = self;
    readerCopy2 = reader;
    v11 = 1;
LABEL_6:
    v12 = [selfCopy2 rgbColorFromReader:readerCopy2 calibrated:v11];
LABEL_7:
    v13 = v12;
    goto LABEL_8;
  }

  if (xmlStrEqual(v8, "sfa:device-rgb-color-type"))
  {
    selfCopy2 = self;
    readerCopy2 = reader;
    v11 = 0;
    goto LABEL_6;
  }

  if (xmlStrEqual(v8, "sfa:calibrated-white-color-type"))
  {
    selfCopy4 = self;
    readerCopy4 = reader;
    v17 = 1;
LABEL_17:
    v12 = [selfCopy4 whiteColorFromReader:readerCopy4 calibrated:v17];
    goto LABEL_7;
  }

  if (xmlStrEqual(v8, "sfa:device-white-color-type"))
  {
    selfCopy4 = self;
    readerCopy4 = reader;
    v17 = 0;
    goto LABEL_17;
  }

  if (xmlStrEqual(v8, "sfa:device-cmyk-color-type"))
  {
    v12 = [self cmykColorFromReader:reader];
    goto LABEL_7;
  }

  if (xmlStrEqual(v8, "sfa:named-color-type"))
  {
    v18 = [self rgbColorFromReader:reader calibrated:1];
    if (v18)
    {
      v13 = v18;
      free(v8);
LABEL_9:
      documentState = [processor documentState];

      [documentState pushObject:v13];
      return;
    }

    v19 = xmlTextReaderGetAttributeNs(reader, "catalog", *(qword_A35E0 + 16));
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

      v21 = xmlTextReaderGetAttributeNs(reader, "name", *(qword_A35E0 + 16));
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

+ (id)rgbColorFromReader:(_xmlTextReader *)reader calibrated:(BOOL)calibrated
{
  v9 = 0.0;
  v10 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  if (!sub_426B0(reader, qword_A35E0, "r", &v10) || !sub_426B0(reader, qword_A35E0, "g", &v9) || !sub_426B0(reader, qword_A35E0, "b", &v8) || !sub_426B0(reader, qword_A35E0, "a", &v7))
  {
    return 0;
  }

  v5 = [GQDColor alloc];
  return [(GQDColor *)v5 initWithCalibratedRed:v10 green:v9 blue:v8 alpha:v7];
}

+ (id)whiteColorFromReader:(_xmlTextReader *)reader calibrated:(BOOL)calibrated
{
  v7 = 0.0;
  v8 = 0.0;
  if (!sub_426B0(reader, qword_A35E0, "w", &v8) || !sub_426B0(reader, qword_A35E0, "a", &v7))
  {
    return 0;
  }

  v5 = [GQDColor alloc];
  return [(GQDColor *)v5 initWithCalibratedRed:v8 green:v8 blue:v8 alpha:v7];
}

+ (id)cmykColorFromReader:(_xmlTextReader *)reader
{
  v15 = 0.0;
  v16 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  v12 = 0.0;
  if (!sub_426B0(reader, qword_A35E0, "c", &v16))
  {
    return 0;
  }

  if (!sub_426B0(reader, qword_A35E0, "m", &v15))
  {
    return 0;
  }

  if (!sub_426B0(reader, qword_A35E0, "y", &v14))
  {
    return 0;
  }

  if (!sub_426B0(reader, qword_A35E0, "k", &v13))
  {
    return 0;
  }

  if (!sub_426B0(reader, qword_A35E0, "a", &v12))
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