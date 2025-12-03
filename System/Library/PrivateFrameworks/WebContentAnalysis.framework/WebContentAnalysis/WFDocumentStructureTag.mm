@interface WFDocumentStructureTag
+ (id)tagForNumberOfImages:(int64_t)images;
+ (id)tagForNumberOfPixels:(int64_t)pixels;
- (WFDocumentStructureTag)tagWithWebpage:(id)webpage;
@end

@implementation WFDocumentStructureTag

+ (id)tagForNumberOfImages:(int64_t)images
{
  v3 = 100;
  do
  {
    if (v3 <= images)
    {
      v5 = MEMORY[0x277CCACA8];
      return [v5 stringWithFormat:@"ImageCount%dWebFilterTag", v3];
    }

    v4 = v3 >= 0xA;
    v3 = (v3 - 10);
  }

  while (v3 != 0 && v4);
  if (images >= 6)
  {
    v5 = MEMORY[0x277CCACA8];
    v3 = 5;
    return [v5 stringWithFormat:@"ImageCount%dWebFilterTag", v3];
  }

  if (images >= 3)
  {
    v5 = MEMORY[0x277CCACA8];
    v3 = 2;
    return [v5 stringWithFormat:@"ImageCount%dWebFilterTag", v3];
  }

  v5 = MEMORY[0x277CCACA8];
  if (images >= 1)
  {
    v3 = 1;
    return [v5 stringWithFormat:@"ImageCount%dWebFilterTag", v3];
  }

  return [v5 stringWithFormat:@"NoImagesWebFilterTag"];
}

+ (id)tagForNumberOfPixels:(int64_t)pixels
{
  if (pixels > 2000000)
  {
    return @"Images2MegaPixelsWebFilterTag";
  }

  if (pixels > 1000000)
  {
    return @"Images1MegaPixelsWebFilterTag";
  }

  if (pixels > 700000)
  {
    return @"Images700KiloPixelsWebFilterTag";
  }

  if (pixels > 400000)
  {
    return @"Images400KiloPixelsWebFilterTag";
  }

  if (pixels > 100000)
  {
    return @"Images100KiloPixelsWebFilterTag";
  }

  if (pixels > 50000)
  {
    return @"Images50KiloPixelsWebFilterTag";
  }

  if (pixels > 25000)
  {
    return @"Images25KiloPixelsWebFilterTag";
  }

  if (pixels > 15000)
  {
    return @"Images15KiloPixelsWebFilterTag";
  }

  if (pixels <= 5000)
  {
    return @"ImagesNoPixelsWebFilterTag";
  }

  return @"Images5KiloPixelsWebFilterTag";
}

- (WFDocumentStructureTag)tagWithWebpage:(id)webpage
{
  string = [MEMORY[0x277CCAB68] string];
  numberOfKnownImagePixels = [webpage numberOfKnownImagePixels];
  numberOfImages = [webpage numberOfImages];
  -[WFDocumentStructureTag appendFormat:](string, "appendFormat:", @"%@ (TotAreaWFImagesTag:%ld)", [objc_opt_class() tagForNumberOfPixels:numberOfKnownImagePixels], numberOfKnownImagePixels);
  [(WFDocumentStructureTag *)string appendString:@" | "];
  -[WFDocumentStructureTag appendFormat:](string, "appendFormat:", @"%@ (TotNumWFImagesTag:%ld)", [objc_opt_class() tagForNumberOfImages:numberOfImages], numberOfImages);
  return string;
}

@end