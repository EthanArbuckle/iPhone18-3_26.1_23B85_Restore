@interface OpusMarimbaProducer_MPAssetKeyDelegate
- (CGSize)resolutionForAssetKey:(id)a3;
- (id)absolutePathForAssetKey:(id)a3;
- (id)absolutePathForAssetKey:(id)a3 andSize:(CGSize)a4;
- (id)absolutePathForStillAssetAtPath:(id)a3 andSize:(CGSize)a4;
- (id)mediaItemForAssetPath:(id)a3;
- (id)updatedAssetPathForAssetPath:(id)a3;
- (id)urlForAssetKey:(id)a3;
@end

@implementation OpusMarimbaProducer_MPAssetKeyDelegate

- (id)absolutePathForAssetKey:(id)a3
{
  if (OFLoggerLevel >= 4)
  {
    [OFLogger logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKitPlugins/OpusProducers/OpusMarimbaProducer/OpusMarimbaProducer.m" line:965 andFormat:@"OpusMarimbaProducer_MPAssetKeyDelegate: absolutePathForAssetKey:%@", a3];
  }

  v5 = [(OpusMarimbaProducer_MPAssetKeyDelegate *)self mediaItemForAssetPath:a3];
  if (!v5)
  {
    return a3;
  }

  v6 = [v5 resourceURL];

  return [v6 path];
}

- (id)absolutePathForAssetKey:(id)a3 andSize:(CGSize)a4
{
  if (OFLoggerLevel >= 4)
  {
    [OFLogger logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKitPlugins/OpusProducers/OpusMarimbaProducer/OpusMarimbaProducer.m" line:976 andFormat:@"OpusMarimbaProducer_MPAssetKeyDelegate: absolutePathForAssetKey:%@ andSize:%@", a3, NSStringFromCGSize(a4)];
  }

  return [(OpusMarimbaProducer_MPAssetKeyDelegate *)self absolutePathForAssetKey:a3];
}

- (id)absolutePathForStillAssetAtPath:(id)a3 andSize:(CGSize)a4
{
  if (OFLoggerLevel >= 4)
  {
    [OFLogger logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKitPlugins/OpusProducers/OpusMarimbaProducer/OpusMarimbaProducer.m" line:982 andFormat:@"OpusMarimbaProducer_MPAssetKeyDelegate: absolutePathForStillAssetAtPath:%@ andSize:@", a3, NSStringFromCGSize(a4)];
  }

  return [(OpusMarimbaProducer_MPAssetKeyDelegate *)self absolutePathForAssetKey:a3];
}

- (CGSize)resolutionForAssetKey:(id)a3
{
  v3 = [(OpusMarimbaProducer_MPAssetKeyDelegate *)self mediaItemForAssetPath:a3];
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

- (id)updatedAssetPathForAssetPath:(id)a3
{
  v4 = [(OpusMarimbaProducer_MPAssetKeyDelegate *)self mediaItemForAssetPath:?];
  if (!v4)
  {
    return a3;
  }

  v5 = [v4 uniqueURL];

  return [v5 absoluteString];
}

- (id)mediaItemForAssetPath:(id)a3
{
  if ([a3 isAbsolutePath])
  {
    return 0;
  }

  result = [(OKPresentationLookupDelegate *)self->_lookupDelegate mediaItemForURL:[(OpusMarimbaProducer_MPAssetKeyDelegate *)self urlForAssetKey:a3]];
  if (!result)
  {
    return 0;
  }

  return result;
}

- (id)urlForAssetKey:(id)a3
{
  if ([a3 hasPrefix:@"iphoto://"])
  {
    v4 = objc_alloc_init(NSURLComponents);
    v5 = v4;
    v6 = @"iphoto";
LABEL_5:
    [v4 setScheme:v6];
    [v5 setHost:{objc_msgSend(a3, "lastPathComponent")}];
    v7 = [v5 URL];

    return v7;
  }

  if ([a3 hasPrefix:@"aperture://"])
  {
    v4 = objc_alloc_init(NSURLComponents);
    v5 = v4;
    v6 = @"aperture";
    goto LABEL_5;
  }

  return [NSURL URLWithString:a3];
}

@end