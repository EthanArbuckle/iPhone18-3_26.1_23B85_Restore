@interface MPEmbeddedAssetManager
- (BOOL)isAssetAtPathASupportedAudio:(id)audio;
- (BOOL)isAssetAtPathASupportedImage:(id)image;
- (BOOL)isAssetAtPathASupportedMovie:(id)movie;
- (CGSize)resolutionForAssetAtPath:(id)path;
- (double)durationForAssetAtPath:(id)path;
@end

@implementation MPEmbeddedAssetManager

- (CGSize)resolutionForAssetAtPath:(id)path
{
  if (!path || [MPUtilities pathIsRelative:?])
  {
    goto LABEL_15;
  }

  if ([path isAbsolutePath])
  {
    v4 = [NSURL fileURLWithPath:path];
  }

  else
  {
    v4 = [NSURL URLWithString:path];
  }

  v5 = CGImageSourceCreateWithURL(v4, 0);
  if (!v5)
  {
    NSLog(@"Marimba: Requesting size of path that dosen't exist: %@", path);
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

- (BOOL)isAssetAtPathASupportedImage:(id)image
{
  imageCopy = image;
  if (image)
  {
    v4 = [image rangeOfString:@"?"];
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      imageCopy = [imageCopy substringToIndex:v4];
    }

    PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(kUTTagClassFilenameExtension, [imageCopy pathExtension], 0);
    LOBYTE(imageCopy) = UTTypeConformsTo(PreferredIdentifierForTag, kUTTypeImage) != 0;
    CFRelease(PreferredIdentifierForTag);
  }

  return imageCopy;
}

- (BOOL)isAssetAtPathASupportedMovie:(id)movie
{
  movieCopy = movie;
  if (movie)
  {
    v4 = [movie rangeOfString:@"?"];
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      movieCopy = [movieCopy substringToIndex:v4];
    }

    PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(kUTTagClassFilenameExtension, [movieCopy pathExtension], 0);
    LOBYTE(movieCopy) = UTTypeConformsTo(PreferredIdentifierForTag, kUTTypeMovie) != 0;
    CFRelease(PreferredIdentifierForTag);
  }

  return movieCopy;
}

- (BOOL)isAssetAtPathASupportedAudio:(id)audio
{
  audioCopy = audio;
  if (audio)
  {
    v4 = [audio rangeOfString:@"?"];
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      audioCopy = [audioCopy substringToIndex:v4];
    }

    PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(kUTTagClassFilenameExtension, [audioCopy pathExtension], 0);
    LOBYTE(audioCopy) = UTTypeConformsTo(PreferredIdentifierForTag, kUTTypeAudio) != 0;
    CFRelease(PreferredIdentifierForTag);
  }

  return audioCopy;
}

- (double)durationForAssetAtPath:(id)path
{
  Seconds = 0.0;
  if (![(MPEmbeddedAssetManager *)self isAssetAtPathASupportedImage:?])
  {
    if ([path isAbsolutePath])
    {
      v5 = [NSURL fileURLWithPath:path];
    }

    else
    {
      v5 = [NSURL URLWithString:path];
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