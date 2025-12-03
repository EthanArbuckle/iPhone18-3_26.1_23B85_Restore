@interface TCCDIconGenerator
+ (BOOL)createDirectoryIfNeeded:(id)needed;
+ (BOOL)shouldOverrideCachedIcons;
+ (CGImage)_createCGImageIconWithBadge:(id)badge forService:(id)service withDescriptor:(id)descriptor;
+ (CGImage)_createCGImageRefByOverlay:(CGImage *)overlay ontoImage:(CGImage *)image;
+ (id)_iconForService:(id)service;
+ (id)_writeCGImage:(CGImage *)image toTempURL:(id)l;
+ (id)_writeIcon:(id)icon withDescriptor:(id)descriptor toTempURL:(id)l;
+ (id)checkAndGetAppropriateBundleIdentifier:(id)identifier;
+ (id)createIconForTCCService:(id)service withTempDirectory:(id)directory;
@end

@implementation TCCDIconGenerator

+ (BOOL)createDirectoryIfNeeded:(id)needed
{
  neededCopy = needed;
  v4 = +[NSFileManager defaultManager];
  v5 = 1;
  v6 = [NSURL fileURLWithPath:neededCopy isDirectory:1];
  v12 = 0;
  v7 = [v4 createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:&v12];
  v8 = v12;
  v9 = v8;
  if ((v7 & 1) == 0)
  {
    if (v8 && [v8 code] == 516)
    {
      v10 = tcc_access_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        sub_100037884(neededCopy, v10);
      }
    }

    else
    {
      v10 = tcc_access_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000378FC(neededCopy, v9, v10);
      }

      v5 = 0;
    }
  }

  return v5;
}

+ (BOOL)shouldOverrideCachedIcons
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"TCC.IconGenerator.OverrideCachedIcons"];

  return v3;
}

+ (id)createIconForTCCService:(id)service withTempDirectory:(id)directory
{
  serviceCopy = service;
  directoryCopy = directory;
  if (![TCCDIconGenerator createDirectoryIfNeeded:directoryCopy])
  {
    v20 = 0;
    goto LABEL_23;
  }

  if (qword_1000C1150 != -1)
  {
    sub_100037984();
  }

  [NSString stringWithFormat:@"%@@%dx.png", serviceCopy, *&qword_1000C1158];
  v28 = v27 = directoryCopy;
  v22 = v28;
  v7 = [NSArray arrayWithObjects:&v27 count:2];
  v8 = [NSURL fileURLWithPathComponents:v7];

  v9 = +[NSFileManager defaultManager];
  v10 = +[TCCDIconGenerator shouldOverrideCachedIcons];
  path = [v8 path];
  v12 = [v9 fileExistsAtPath:path];

  if (v12)
  {
    v13 = tcc_access_log();
    v14 = v13;
    if (!v10)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        sub_100037998(serviceCopy, v8, v14);
      }

      v20 = v8;
      goto LABEL_22;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      path2 = [v8 path];
      *buf = 138412546;
      v24 = serviceCopy;
      v25 = 2112;
      v26 = path2;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#tccIcon overriding cached icon for %@ at %@", buf, 0x16u);
    }

    [v9 removeItemAtURL:v8 error:0];
  }

  v16 = [TCCDIconGenerator _iconForService:serviceCopy];
  if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
  {
    if (qword_1000C1150 != -1)
    {
      sub_100037A44();
    }

    v17 = [[ISImageDescriptor alloc] initWithSize:29.0 scale:{29.0, *&qword_1000C1158}];
    [v17 setDrawBorder:1];
    v18 = [[ISIcon alloc] initWithType:@"com.apple.graphic-icon.privacy"];
    v19 = [TCCDIconGenerator _createCGImageIconWithBadge:v18 forService:serviceCopy withDescriptor:v17];
    v20 = [TCCDIconGenerator _writeCGImage:v19 toTempURL:v8];
    if (v19)
    {
      CGImageRelease(v19);
    }
  }

  else
  {
    v17 = [ISImageDescriptor imageDescriptorNamed:kISImageDescriptorHomeScreen];
    v20 = [TCCDIconGenerator _writeIcon:v16 withDescriptor:v17 toTempURL:v8];
  }

LABEL_22:
LABEL_23:

  return v20;
}

+ (id)_iconForService:(id)service
{
  serviceCopy = service;
  v4 = serviceCopy;
  if ([serviceCopy containsString:@"kTCCService"])
  {
    v4 = [serviceCopy substringFromIndex:{objc_msgSend(@"kTCCService", "length")}];
  }

  v5 = [&off_1000AF528 objectForKeyedSubscript:v4];
  if (v5)
  {
    v6 = [ISIcon alloc];
    v7 = [@"com.apple." stringByAppendingString:v5];
    v8 = [v6 initWithBundleIdentifier:v7];
  }

  else
  {
    v9 = tcc_access_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 136315394;
      v12 = "+[TCCDIconGenerator _iconForService:]";
      v13 = 2112;
      v14 = serviceCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "#tccIcon %s: No icon found for TCC service=%@", &v11, 0x16u);
    }

    v8 = 0;
  }

  return v8;
}

+ (id)_writeIcon:(id)icon withDescriptor:(id)descriptor toTempURL:(id)l
{
  iconCopy = icon;
  descriptorCopy = descriptor;
  lCopy = l;
  v10 = [iconCopy imageForDescriptor:descriptorCopy];
  if ([v10 placeholder])
  {
    v11 = [iconCopy prepareImageForDescriptor:descriptorCopy];

    v10 = v11;
  }

  v12 = tcc_access_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v16 = 136315394;
    v17 = "+[TCCDIconGenerator _writeIcon:withDescriptor:toTempURL:]";
    v18 = 2112;
    v19 = lCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "#tccIcon %s: Attempting to write icon to %@", &v16, 0x16u);
  }

  if ([v10 writeToURL:lCopy])
  {
    v13 = lCopy;
  }

  else
  {
    v14 = tcc_access_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100037A6C();
    }

    v13 = 0;
  }

  return v13;
}

+ (CGImage)_createCGImageIconWithBadge:(id)badge forService:(id)service withDescriptor:(id)descriptor
{
  badgeCopy = badge;
  serviceCopy = service;
  descriptorCopy = descriptor;
  v10 = [NSSet setWithArray:&off_1000B0220];
  v11 = serviceCopy;
  v12 = v11;
  if ([v11 containsString:@"kTCCService"])
  {
    v12 = [v11 substringFromIndex:{objc_msgSend(@"kTCCService", "length")}];
  }

  v13 = [&off_1000AF550 objectForKeyedSubscript:v12];

  if (v13)
  {
    v14 = [&off_1000AF578 objectForKeyedSubscript:v12];
    v15 = [@"com.apple." stringByAppendingString:v14];
    v16 = [TCCDIconGenerator checkAndGetAppropriateBundleIdentifier:v15];

    v17 = [[ISIcon alloc] initWithBundleIdentifier:v16];
    goto LABEL_5;
  }

  v34 = [&off_1000AF5A0 objectForKeyedSubscript:v12];

  if (v34)
  {
    v14 = [&off_1000AF5C8 objectForKeyedSubscript:v12];
    v35 = [&off_1000B0238 containsObject:v12];
    v36 = [ISIcon alloc];
    v37 = v36;
    if (v35)
    {
      v18 = [v36 initWithType:v14];
      goto LABEL_6;
    }

    v16 = [@"com.apple." stringByAppendingString:v14];
    v17 = [v37 initWithType:v16];
LABEL_5:
    v18 = v17;

LABEL_6:
    if (qword_1000C1150 != -1)
    {
      sub_100037984();
    }

    v19 = *&qword_1000C1158;
    v20 = tcc_access_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v41 = "+[TCCDIconGenerator _createCGImageIconWithBadge:forService:withDescriptor:]";
      v42 = 2048;
      v43 = v19;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "#tccIcon %s: Setting display scale to %lf", buf, 0x16u);
    }

    v21 = [[ISImageDescriptor alloc] initWithSize:64.0 scale:{64.0, v19}];
    v22 = [v18 imageForDescriptor:v21];
    if ([v22 placeholder])
    {
      v23 = [v18 prepareImageForDescriptor:v21];

      v22 = v23;
    }

    if ([v10 containsObject:v12])
    {
      v24 = [badgeCopy imageForDescriptor:descriptorCopy];
      v38 = v10;
      v39 = descriptorCopy;
      if ([v24 placeholder])
      {
        v25 = [badgeCopy prepareImageForDescriptor:descriptorCopy];

        v24 = v25;
      }

      v26 = badgeCopy;
      v27 = tcc_access_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [v18 description];
        v29 = [badgeCopy description];
        *buf = 138412802;
        v41 = v11;
        v42 = 2112;
        v43 = *&v28;
        v44 = 2112;
        v45 = v29;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#tccIcon Service: %@, icon:%@, badge icon: %@", buf, 0x20u);
      }

      cGImage = +[TCCDIconGenerator _createCGImageRefByOverlay:ontoImage:](TCCDIconGenerator, "_createCGImageRefByOverlay:ontoImage:", [v24 CGImage], objc_msgSend(v22, "CGImage"));
      badgeCopy = v26;
      v10 = v38;
      descriptorCopy = v39;
    }

    else
    {
      v31 = tcc_access_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = [v22 description];
        *buf = 138412546;
        v41 = v11;
        v42 = 2112;
        v43 = *&v32;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#tccIcon Service: %@, icon:%@, ", buf, 0x16u);
      }

      CFRetain([v22 CGImage]);
      cGImage = [v22 CGImage];
    }

    goto LABEL_22;
  }

  v18 = tcc_access_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    sub_100037AF0();
  }

  cGImage = 0;
LABEL_22:

  return cGImage;
}

+ (id)checkAndGetAppropriateBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (![identifierCopy isEqualToString:@"com.apple.Passbook"])
  {
    goto LABEL_6;
  }

  if (qword_1000C1168 != -1)
  {
    sub_100037B74();
  }

  if (byte_1000C1160)
  {
    v4 = @"com.apple.PassbookStub";
  }

  else
  {
LABEL_6:
    v4 = identifierCopy;
  }

  return v4;
}

+ (id)_writeCGImage:(CGImage *)image toTempURL:(id)l
{
  lCopy = l;
  v6 = lCopy;
  if (!image)
  {
LABEL_9:
    v15 = 0;
    goto LABEL_14;
  }

  v7 = CGImageDestinationCreateWithURL(lCopy, kUTTypePNG, 1uLL, 0);
  if (!v7)
  {
    v14 = tcc_access_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "#tccIcon Failed to create image destination", &v17, 2u);
    }

    goto LABEL_9;
  }

  v8 = v7;
  CGImageDestinationAddImage(v7, image, 0);
  v9 = CGImageDestinationFinalize(v8);
  v10 = tcc_access_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v9)
  {
    if (v11)
    {
      path = [(__CFURL *)v6 path];
      v17 = 138412290;
      v18 = path;
      v13 = "#tccIcon Image saved to %@";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, v13, &v17, 0xCu);
    }
  }

  else if (v11)
  {
    path = [(__CFURL *)v6 path];
    v17 = 138412290;
    v18 = path;
    v13 = "#tccIcon Failed to write image to %@";
    goto LABEL_12;
  }

  CFRelease(v8);
  v15 = v6;
LABEL_14:

  return v15;
}

+ (CGImage)_createCGImageRefByOverlay:(CGImage *)overlay ontoImage:(CGImage *)image
{
  if (qword_1000C1150 != -1)
  {
    sub_100037984();
  }

  v6 = *&qword_1000C1158;
  v7 = tcc_access_log();
  v8 = v7;
  if (!overlay || !image)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_100037C10(image == 0, overlay == 0, v8);
    }

    return 0;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v33 = 136316418;
    v34 = "+[TCCDIconGenerator _createCGImageRefByOverlay:ontoImage:]";
    v35 = 2048;
    Width = CGImageGetWidth(image);
    v37 = 2048;
    Height = CGImageGetHeight(image);
    v39 = 2048;
    v40 = CGImageGetWidth(overlay);
    v41 = 2048;
    v42 = CGImageGetHeight(overlay);
    v43 = 2048;
    v44 = v6;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "#tccIcon %s: baseImageSize: (%zu, %zu) overlayImageSize: (%zu, %zu) both scale: %f", &v33, 0x3Eu);
  }

  ColorSpace = CGImageGetColorSpace(image);
  if (ColorSpace)
  {
    v10 = ColorSpace;
    CGColorSpaceRetain(ColorSpace);
  }

  else
  {
    v11 = tcc_access_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v33) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#tccIcon CGImageGetColorSpace returned NULL for baseImage. Defaulting to ExtendedSRGB colorspace", &v33, 2u);
    }

    v10 = CGColorSpaceCreateWithName(kCGColorSpaceExtendedSRGB);
    if (!v10)
    {
      v27 = tcc_access_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        sub_100037BCC(v27);
      }

      goto LABEL_26;
    }
  }

  v12 = (v6 << 6) | 0xF;
  v13 = CGBitmapContextCreate(0, v12, v12, 0x10uLL, 8 * v12, v10, 0x1101u);
  if (!v13)
  {
    v27 = tcc_access_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_100037B88(v27);
    }

LABEL_26:

    return 0;
  }

  v14 = v13;
  v45.size.width = v12;
  v45.origin.x = 0.0;
  v45.origin.y = 0.0;
  v45.size.height = v12;
  CGContextClearRect(v13, v45);
  v15 = +[NSLocale currentLocale];
  v16 = [v15 objectForKey:NSLocaleLanguageCode];
  v17 = [NSLocale characterDirectionForLanguage:v16];
  v18 = tcc_access_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v33 = 138412546;
    v34 = v16;
    v35 = 1024;
    LODWORD(Width) = v17 == NSLocaleLanguageDirectionRightToLeft;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#tccIcon Language code is %@ isRTLLanguage: %d", &v33, 0x12u);
  }

  v19 = CGImageGetWidth(image);
  v20 = CGImageGetHeight(image);
  if (v17 == NSLocaleLanguageDirectionRightToLeft)
  {
    v21 = 15.0;
    v22 = 15.0;
    v23 = v19;
    CGContextDrawImage(v14, *(&v20 - 3), image);
    v24 = CGImageGetWidth(overlay);
    v25 = CGImageGetHeight(overlay);
    v26 = 0.0;
  }

  else
  {
    v28 = 0;
    v29 = 15.0;
    v30 = v19;
    CGContextDrawImage(v14, *(&v20 - 3), image);
    v26 = (v12 - CGImageGetWidth(overlay));
    v24 = CGImageGetWidth(overlay);
    v25 = CGImageGetHeight(overlay);
  }

  v46.size.height = v25;
  v46.size.width = v24;
  v46.origin.x = v26;
  v46.origin.y = 0.0;
  CGContextDrawImage(v14, v46, overlay);
  Image = CGBitmapContextCreateImage(v14);
  CGContextRelease(v14);
  CGColorSpaceRelease(v10);
  return Image;
}

@end