@interface MPEmbeddedAssetManager
- (BOOL)isAssetAtPathASupportedAudio:(id)a3;
- (BOOL)isAssetAtPathASupportedImage:(id)a3;
- (BOOL)isAssetAtPathASupportedMovie:(id)a3;
- (CGSize)resolutionForAssetAtPath:(id)a3;
- (double)durationForAssetAtPath:(id)a3;
@end

@implementation MPEmbeddedAssetManager

- (CGSize)resolutionForAssetAtPath:(id)a3
{
  if (!a3 || [MPUtilities pathIsRelative:?])
  {
    goto LABEL_15;
  }

  if ([a3 isAbsolutePath])
  {
    v4 = [NSURL fileURLWithPath:a3];
  }

  else
  {
    v4 = [NSURL URLWithString:a3];
  }

  v5 = CGImageSourceCreateWithURL(v4, 0);
  if (!v5)
  {
    NSLog(@"Marimba: Requesting size of path that dosen't exist: %@", a3);
LABEL_15:
    width = CGSizeZero.width;
    height = CGSizeZero.height;
    goto LABEL_16;
  }

  v6 = v5;
  v7 = CGImageSourceCopyPropertiesAtIndex(v5, 0, 0);
  if (v7)
  {
    v8 = v7;
    [-[__CFDictionary objectForKey:](v7 objectForKey:{kCGImagePropertyPixelWidth), "floatValue"}];
    height = v9;
    [-[__CFDictionary objectForKey:](v8 objectForKey:{kCGImagePropertyPixelHeight), "floatValue"}];
    v12 = v11;
    v13 = [-[__CFDictionary objectForKey:](v8 objectForKey:{kCGImagePropertyOrientation), "integerValue"}];
    if (v13 <= 4uLL)
    {
      width = height;
    }

    else
    {
      width = v12;
    }

    if (v13 <= 4uLL)
    {
      height = v12;
    }

    CFRelease(v8);
  }

  else
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  CFRelease(v6);
LABEL_16:
  v15 = width;
  v16 = height;
  result.height = v16;
  result.width = v15;
  return result;
}

- (BOOL)isAssetAtPathASupportedImage:(id)a3
{
  v3 = a3;
  if (a3)
  {
    v4 = [a3 rangeOfString:@"?"];
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v3 = [v3 substringToIndex:v4];
    }

    PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(kUTTagClassFilenameExtension, [v3 pathExtension], 0);
    LOBYTE(v3) = UTTypeConformsTo(PreferredIdentifierForTag, kUTTypeImage) != 0;
    CFRelease(PreferredIdentifierForTag);
  }

  return v3;
}

- (BOOL)isAssetAtPathASupportedMovie:(id)a3
{
  v3 = a3;
  if (a3)
  {
    v4 = [a3 rangeOfString:@"?"];
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v3 = [v3 substringToIndex:v4];
    }

    PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(kUTTagClassFilenameExtension, [v3 pathExtension], 0);
    LOBYTE(v3) = UTTypeConformsTo(PreferredIdentifierForTag, kUTTypeMovie) != 0;
    CFRelease(PreferredIdentifierForTag);
  }

  return v3;
}

- (BOOL)isAssetAtPathASupportedAudio:(id)a3
{
  v3 = a3;
  if (a3)
  {
    v4 = [a3 rangeOfString:@"?"];
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v3 = [v3 substringToIndex:v4];
    }

    PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(kUTTagClassFilenameExtension, [v3 pathExtension], 0);
    LOBYTE(v3) = UTTypeConformsTo(PreferredIdentifierForTag, kUTTypeAudio) != 0;
    CFRelease(PreferredIdentifierForTag);
  }

  return v3;
}

- (double)durationForAssetAtPath:(id)a3
{
  Seconds = 0.0;
  if (![(MPEmbeddedAssetManager *)self isAssetAtPathASupportedImage:?])
  {
    if ([a3 isAbsolutePath])
    {
      v5 = [NSURL fileURLWithPath:a3];
    }

    else
    {
      v5 = [NSURL URLWithString:a3];
    }

    v6 = [[AVURLAsset alloc] initWithURL:v5 options:0];
    v7 = v6;
    memset(&v9[1], 0, sizeof(CMTime));
    if (v6)
    {
      [v6 duration];
    }

    v9[0] = v9[1];
    Seconds = CMTimeGetSeconds(v9);
  }

  return Seconds;
}

@end