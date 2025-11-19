@interface MPAssetManager
+ (id)convertCGImageToBuffer:(CGImage *)a3;
+ (id)convertCGImageToBufferUsingDataProvider:(CGImage *)a3;
+ (id)convertCGImageToBufferUsingRGBDevice:(CGImage *)a3;
+ (id)sharedManager;
+ (void)releaseSharedManager;
- (CGSize)resolutionForAssetAtPath:(id)a3;
- (double)posterTimeForAssetAtPath:(id)a3;
- (id)regionsOfInterestForAsset:(CGImage *)a3;
- (id)regionsOfInterestForAssetAtPath:(id)a3;
- (unint64_t)mediaTypeForAssetAtPath:(id)a3;
@end

@implementation MPAssetManager

+ (id)sharedManager
{
  result = qword_1EF370;
  if (!qword_1EF370)
  {
    if (byte_1EF368)
    {
      return 0;
    }

    else
    {
      objc_sync_enter(a1);
      if (!qword_1EF370)
      {
        qword_1EF370 = objc_alloc_init(MPEmbeddedAssetManager);
      }

      objc_sync_exit(a1);
      return qword_1EF370;
    }
  }

  return result;
}

+ (void)releaseSharedManager
{
  if (qword_1EF370)
  {
    objc_sync_enter(a1);
    v3 = qword_1EF370;
    objc_sync_enter(qword_1EF370);

    qword_1EF370 = 0;
    objc_sync_exit(v3);

    objc_sync_exit(a1);
  }
}

- (CGSize)resolutionForAssetAtPath:(id)a3
{
  v41 = CGSizeZero;
  height = CGSizeZero.height;
  if (a3)
  {
    v5 = [a3 isAbsolutePath] ? +[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", a3) : +[NSURL URLWithString:](NSURL, "URLWithString:", a3);
    v6 = v5;
    v7 = [AVURLAsset assetWithURL:v5];
    if (!v7)
    {
      goto LABEL_21;
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v8 = [(AVURLAsset *)v7 tracksWithMediaType:AVMediaTypeVideo];
    v9 = [v8 countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v45;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v45 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v44 + 1) + 8 * i);
          [v13 naturalSize];
          if (v13)
          {
            v39 = v15;
            v40 = v14;
            [v13 preferredTransform];
            v15 = v39;
            v14 = v40;
            v16 = v42;
            v17 = v43;
          }

          else
          {
            v16 = 0uLL;
            v17 = 0uLL;
          }

          v18 = vmlaq_n_f64(vmulq_n_f64(v17, v15), v16, v14);
          v41 = vbslq_s8(vcgtq_f64(v18, v41), v18, v41);
        }

        v10 = [v8 countByEnumeratingWithState:&v44 objects:v48 count:16];
      }

      while (v10);
    }

    height = v41.height;
    if (v41.width == CGSizeZero.width && v41.height == CGSizeZero.height)
    {
LABEL_21:
      v20 = CGImageSourceCreateWithURL(v6, 0);
      if (v20)
      {
        v21 = v20;
        v22 = CGImageSourceCopyPropertiesAtIndex(v20, 0, 0);
        if (v22)
        {
          v23 = v22;
          v24 = [(__CFDictionary *)v22 objectForKey:kCGImagePropertyPixelWidth];
          if (v24)
          {
            [v24 floatValue];
            height = v25;
            [-[__CFDictionary objectForKey:](v23 objectForKey:{kCGImagePropertyPixelHeight), "floatValue"}];
            v27 = v26;
            v28 = [-[__CFDictionary objectForKey:](v23 objectForKey:{kCGImagePropertyOrientation), "integerValue"}];
            if (v28 <= 4uLL)
            {
              v29 = height;
            }

            else
            {
              v29 = v27;
            }

            v41.width = v29;
            if (v28 <= 4uLL)
            {
              height = v27;
            }
          }

          else
          {
            v32 = [(__CFDictionary *)v23 valueForKey:kCGImagePropertyExifDictionary];
            if (v32)
            {
              v33 = v32;
              v34 = [v32 objectForKeyedSubscript:kCGImagePropertyExifPixelXDimension];
              v35 = [v33 objectForKeyedSubscript:kCGImagePropertyExifPixelYDimension];
              if (v34)
              {
                v36 = v35;
                if (v35)
                {
                  [v34 floatValue];
                  v41.width = v37;
                  [v36 floatValue];
                  height = v38;
                }
              }
            }
          }

          CFRelease(v23);
        }

        CFRelease(v21);
      }
    }
  }

  width = v41.width;
  v31 = height;
  result.height = v31;
  result.width = width;
  return result;
}

- (unint64_t)mediaTypeForAssetAtPath:(id)a3
{
  v5 = 0;
  v4 = 0;
  [MPFileValidationManager checkFileExtension:a3 isAudio:&v5 + 1 isImage:&v5 isVideo:&v4];
  if (v5)
  {
    return 2;
  }

  if (v4)
  {
    return 3;
  }

  if (HIBYTE(v5))
  {
    return 1;
  }

  return -1;
}

- (id)regionsOfInterestForAsset:(CGImage *)a3
{
  v4 = objc_autoreleasePoolPush();
  if (a3)
  {
    Width = CGImageGetWidth(a3);
    Height = CGImageGetHeight(a3);
    if (Width && Height && ((v7 = Width, v8 = Height, v9 = Width / Height, v9 >= 0.5) ? (v10 = v9 <= 2.0) : (v10 = 0), v10))
    {
      v11 = 0;
      if (v7 >= v8)
      {
        v13 = Width;
      }

      else
      {
        v13 = Height;
      }

      if (v13 >= 200.0 && Width >= 0x32 && Height >= 0x32)
      {
        v14 = [[CIDetector detectorOfType:0 context:[NSDictionary dictionaryWithObject:CIDetectorAccuracyLow forKey:CIDetectorAccuracy] options:?], "featuresInImage:", [CIImage imageWithCGImage:a3]];
        v11 = +[NSMutableArray array];
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v15 = [(NSArray *)v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v24;
          do
          {
            for (i = 0; i != v16; i = i + 1)
            {
              if (*v24 != v17)
              {
                objc_enumerationMutation(v14);
              }

              [*(*(&v23 + 1) + 8 * i) bounds];
              x = v28.origin.x;
              y = v28.origin.y;
              v21 = v28.size.width;
              v22 = v28.size.height;
              v30.origin.x = CGRectZero.origin.x;
              v30.origin.y = CGRectZero.origin.y;
              v30.size.width = CGRectZero.size.width;
              v30.size.height = CGRectZero.size.height;
              if (!CGRectEqualToRect(v28, v30))
              {
                v29.origin.x = x / v7;
                v29.origin.y = y / v8;
                v29.size.width = v21 / v7;
                v29.size.height = v22 / v8;
                [v11 addObject:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", NSStringFromCGRect(v29), kMPMetaDataRegionOfInterestBounds, 0)}];
              }
            }

            v16 = [(NSArray *)v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
          }

          while (v16);
        }
      }
    }

    else
    {
      v11 = +[NSMutableArray array];
    }
  }

  else
  {
    v11 = 0;
  }

  objc_autoreleasePoolPop(v4);
  return v11;
}

- (id)regionsOfInterestForAssetAtPath:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  v6 = [[NSData alloc] initWithContentsOfFile:a3 options:2 error:0];
  if (!v6)
  {
    goto LABEL_20;
  }

  v7 = v6;
  v8 = CGImageSourceCreateWithData(v6, 0);

  if (!v8)
  {
    goto LABEL_20;
  }

  v9 = CGImageSourceCopyPropertiesAtIndex(v8, 0, 0);
  if (v9)
  {
    v10 = v9;
    [-[__CFDictionary objectForKey:](v9 objectForKey:{kCGImagePropertyPixelWidth), "floatValue"}];
    width = v11;
    [-[__CFDictionary objectForKey:](v10 objectForKey:{kCGImagePropertyPixelHeight), "floatValue"}];
    height = v13;
    CFRelease(v10);
  }

  else
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  if (width != 0.0 && height != 0.0)
  {
    v15 = width / height;
    if (width / height < 0.5 || v15 > 2.0)
    {
      v17 = +[NSMutableArray array];
      CFRelease(v8);
      goto LABEL_21;
    }
  }

  if (width <= 256.0)
  {
    v18 = 0;
  }

  else
  {
    v18 = (width * 0.00390625);
  }

  v19 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:{+[NSNumber numberWithBool:](NSNumber, "numberWithBool:", 1), @"kCGImageSourceShouldPreferRGB32", 0}];
  if (v18 >= 1)
  {
    [v19 setObject:+[NSNumber numberWithInteger:](NSNumber forKey:{"numberWithInteger:", v18), @"kCGImageSourceSubsampleFactor"}];
  }

  [v19 setObject:kCFBooleanTrue forKey:kCGImageSourceCreateThumbnailWithTransform];
  [v19 setObject:kCFBooleanTrue forKey:kCGImageSourceCreateThumbnailFromImageAlways];
  LODWORD(v20) = 1132462080;
  [v19 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v20), kCGImageSourceThumbnailMaxPixelSize}];
  ImageAtIndex = CGImageSourceCreateImageAtIndex(v8, 0, v19);

  CFRelease(v8);
  if (ImageAtIndex)
  {
    v22 = qword_1EF370;
    objc_sync_enter(qword_1EF370);
    v17 = [(MPAssetManager *)self regionsOfInterestForAsset:ImageAtIndex];
    CGImageRelease(ImageAtIndex);
    objc_sync_exit(v22);
  }

  else
  {
LABEL_20:
    v17 = 0;
  }

LABEL_21:
  objc_autoreleasePoolPop(v5);

  return v17;
}

- (double)posterTimeForAssetAtPath:(id)a3
{
  v3 = [(MPAssetManager *)self mediaTypeForAssetAtPath:a3];
  result = 0.0;
  if (v3 == 3)
  {
    return 2.0;
  }

  return result;
}

+ (id)convertCGImageToBuffer:(CGImage *)a3
{
  result = [MPAssetManager convertCGImageToBufferUsingDataProvider:?];
  if (!result)
  {

    return [MPAssetManager convertCGImageToBufferUsingRGBDevice:a3];
  }

  return result;
}

+ (id)convertCGImageToBufferUsingRGBDevice:(CGImage *)a3
{
  CGColorSpaceCreateDeviceRGB();
  CGImageGetWidth(a3);
  CGImageGetHeight(a3);
  operator new[]();
}

+ (id)convertCGImageToBufferUsingDataProvider:(CGImage *)a3
{
  if ((CGImageGetAlphaInfo(a3) & 5) != 0 && CGImageGetBitsPerComponent(a3) == 8 && CGImageGetBitsPerPixel(a3) == 32)
  {
    CGImageGetWidth(a3);
    CGImageGetHeight(a3);
    CGColorSpaceCreateDeviceGray();
    operator new[]();
  }

  return 0;
}

@end