@interface OpusMarimbaProducer_MPAssetKeyDelegate
- (CGSize)resolutionForAssetKey:(id)key;
- (id)absolutePathForAssetKey:(id)key;
- (id)absolutePathForAssetKey:(id)key andSize:(CGSize)size;
- (id)absolutePathForStillAssetAtPath:(id)path andSize:(CGSize)size;
- (id)mediaItemForAssetPath:(id)path;
- (id)updatedAssetPathForAssetPath:(id)path;
- (id)urlForAssetKey:(id)key;
@end

@implementation OpusMarimbaProducer_MPAssetKeyDelegate

- (id)absolutePathForAssetKey:(id)key
{
  if (OFLoggerLevel >= 4)
  {
    [OFLogger logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKitPlugins/OpusProducers/OpusMarimbaProducer/OpusMarimbaProducer.m" line:965 andFormat:@"OpusMarimbaProducer_MPAssetKeyDelegate: absolutePathForAssetKey:%@", key];
  }

  v5 = [(OpusMarimbaProducer_MPAssetKeyDelegate *)self mediaItemForAssetPath:key];
  if (!v5)
  {
    return key;
  }

  resourceURL = [v5 resourceURL];

  return [resourceURL path];
}

- (id)absolutePathForAssetKey:(id)key andSize:(CGSize)size
{
  if (OFLoggerLevel >= 4)
  {
    [OFLogger logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKitPlugins/OpusProducers/OpusMarimbaProducer/OpusMarimbaProducer.m" line:976 andFormat:@"OpusMarimbaProducer_MPAssetKeyDelegate: absolutePathForAssetKey:%@ andSize:%@", key, NSStringFromCGSize(size)];
  }

  return [(OpusMarimbaProducer_MPAssetKeyDelegate *)self absolutePathForAssetKey:key];
}

- (id)absolutePathForStillAssetAtPath:(id)path andSize:(CGSize)size
{
  if (OFLoggerLevel >= 4)
  {
    [OFLogger logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKitPlugins/OpusProducers/OpusMarimbaProducer/OpusMarimbaProducer.m" line:982 andFormat:@"OpusMarimbaProducer_MPAssetKeyDelegate: absolutePathForStillAssetAtPath:%@ andSize:@", path, NSStringFromCGSize(size)];
  }

  return [(OpusMarimbaProducer_MPAssetKeyDelegate *)self absolutePathForAssetKey:path];
}

- (CGSize)resolutionForAssetKey:(id)key
{
  v3 = [(OpusMarimbaProducer_MPAssetKeyDelegate *)self mediaItemForAssetPath:key];
  if (v3)
  {
    [objc_msgSend(v3 "metadata")];
  }

  else
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (id)updatedAssetPathForAssetPath:(id)path
{
  v4 = [(OpusMarimbaProducer_MPAssetKeyDelegate *)self mediaItemForAssetPath:?];
  if (!v4)
  {
    return path;
  }

  uniqueURL = [v4 uniqueURL];

  return [uniqueURL absoluteString];
}

- (id)mediaItemForAssetPath:(id)path
{
  if ([path isAbsolutePath])
  {
    return 0;
  }

  result = [(OKPresentationLookupDelegate *)self->_lookupDelegate mediaItemForURL:[(OpusMarimbaProducer_MPAssetKeyDelegate *)self urlForAssetKey:path]];
  if (!result)
  {
    return 0;
  }

  return result;
}

- (id)urlForAssetKey:(id)key
{
  if ([key hasPrefix:@"iphoto://"])
  {
    v4 = objc_alloc_init(NSURLComponents);
    v5 = v4;
    v6 = @"iphoto";
LABEL_5:
    [v4 setScheme:v6];
    [v5 setHost:{objc_msgSend(key, "lastPathComponent")}];
    v7 = [v5 URL];

    return v7;
  }

  if ([key hasPrefix:@"aperture://"])
  {
    v4 = objc_alloc_init(NSURLComponents);
    v5 = v4;
    v6 = @"aperture";
    goto LABEL_5;
  }

  return [NSURL URLWithString:key];
}

@end