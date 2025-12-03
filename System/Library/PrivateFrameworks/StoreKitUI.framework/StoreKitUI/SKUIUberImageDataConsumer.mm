@interface SKUIUberImageDataConsumer
- (id)imageForImage:(id)image;
@end

@implementation SKUIUberImageDataConsumer

- (id)imageForImage:(id)image
{
  v37 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIUberImageDataConsumer imageForImage:];
  }

  [imageCopy size];
  v6 = v5;
  [imageCopy size];
  v8 = v7;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v11 = v10;
  v39.width = v6;
  v39.height = v8;
  UIGraphicsBeginImageContextWithOptions(v39, 1, v11);

  CurrentContext = UIGraphicsGetCurrentContext();
  [imageCopy drawInRect:{0.0, 0.0, v6, v8}];
  if (self->_backgroundColor)
  {
    c = CurrentContext;
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    *locations = xmmword_215F3F1C0;
    v36 = unk_215F3F1D0;
    v14 = [(UIColor *)self->_backgroundColor colorWithAlphaComponent:0.0];
    v15 = CGColorRetain([v14 CGColor]);

    v16 = [(UIColor *)self->_backgroundColor colorWithAlphaComponent:0.25];
    v17 = CGColorRetain([v16 CGColor]);

    v18 = [(UIColor *)self->_backgroundColor colorWithAlphaComponent:0.75];
    v19 = CGColorRetain([v18 CGColor]);

    v20 = [(UIColor *)self->_backgroundColor colorWithAlphaComponent:1.0];
    v21 = CGColorRetain([v20 CGColor]);

    values[0] = v15;
    values[1] = v17;
    values[2] = v19;
    values[3] = v21;
    v22 = CFArrayCreate(0, values, 4, MEMORY[0x277CBF128]);
    v23 = CGGradientCreateWithColors(DeviceRGB, v22, locations);
    [imageCopy size];
    v25 = v24;
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    v28 = 70.0;
    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      v28 = 30.0;
    }

    v29 = v25 - v28;
    [imageCopy size];
    v41.y = v30;
    v40.x = 0.0;
    v41.x = 0.0;
    v40.y = v29;
    CGContextDrawLinearGradient(c, v23, v40, v41, 0);
    CGGradientRelease(v23);
    CFRelease(v22);
    CGColorRelease(v15);
    CGColorRelease(v17);
    CGColorRelease(v19);
    CGColorRelease(v21);
    CGColorSpaceRelease(DeviceRGB);
  }

  v31 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v31;
}

- (void)imageForImage:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIUberImageDataConsumer imageForImage:]";
}

@end