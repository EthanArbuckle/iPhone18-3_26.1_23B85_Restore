@interface OZARMetadata
+ (NSArray)personSegmentationMediaCharacteristics;
+ (NSArray)sceneDepthMediaCharacteristics;
+ (id)createWithMetadataItem:(id)item error:(id *)error;
+ (id)decompressedData:(id)data error:(id *)error;
+ (id)metadataItemIdentifier;
+ (id)simplyDecodeFromData:(id)data error:(id *)error;
+ (opaqueCMFormatDescription)createMetadataFormat;
+ (opaqueCMFormatDescription)metadataFormat;
- (OZARMetadata)initWithCoder:(id)coder;
- (id)compressedDataWithError:(id *)error;
- (id)metadataItemWithTimeRange:(id *)range error:(id *)error;
@end

@implementation OZARMetadata

- (id)compressedDataWithError:(id *)error
{
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:error];
  metadataCompressionAlgorithm = [objc_opt_class() metadataCompressionAlgorithm];
  if (metadataCompressionAlgorithm < 0)
  {
    return v4;
  }

  return [v4 compressedDataUsingAlgorithm:metadataCompressionAlgorithm error:error];
}

+ (id)decompressedData:(id)data error:(id *)error
{
  metadataCompressionAlgorithm = [objc_opt_class() metadataCompressionAlgorithm];
  if (metadataCompressionAlgorithm < 0)
  {
    return data;
  }

  return [data decompressedDataUsingAlgorithm:metadataCompressionAlgorithm error:error];
}

+ (opaqueCMFormatDescription)createMetadataFormat
{
  metadataItemIdentifier = [objc_opt_class() metadataItemIdentifier];

  return OZSimplyCreateCMMetadataFormatDescriptionForRawDataWithIdentifier(metadataItemIdentifier);
}

+ (opaqueCMFormatDescription)metadataFormat
{
  result = [self createMetadataFormat];
  +[OZARMetadata metadataFormat]::metadataFormat = result;
  return result;
}

+ (NSArray)sceneDepthMediaCharacteristics
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[0] = *MEMORY[0x277CE5E18];
  v3[1] = @"com.apple.quicktime.video-map";
  v3[2] = @"com.apple.quicktime.video-map.depth";
  v3[3] = @"com.apple.videoapps.media-characteristic.ar.scene.depth";
  return [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:4];
}

+ (NSArray)personSegmentationMediaCharacteristics
{
  v3[3] = *MEMORY[0x277D85DE8];
  v3[0] = *MEMORY[0x277CE5E18];
  v3[1] = @"com.apple.quicktime.video-map";
  v3[2] = @"com.apple.videoapps.media-characteristic.ar.person.segmentation";
  return [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:3];
}

+ (id)simplyDecodeFromData:(id)data error:(id *)error
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  if (![data length])
  {
    return 0;
  }

  v7 = [self decompressedData:data error:error];
  if (![v7 length])
  {
    return 0;
  }

  [MEMORY[0x277CCAAC8] setClass:objc_opt_class() forClassName:@"PCDMARFrameMetadata"];
  v8 = MEMORY[0x277CCAAC8];
  v9 = objc_opt_class();

  return [v8 unarchivedObjectOfClass:v9 fromData:v7 error:error];
}

+ (id)createWithMetadataItem:(id)item error:(id *)error
{
  value = [item value];

  return [self simplyDecodeFromData:value error:error];
}

+ (id)metadataItemIdentifier
{
  [self doesNotRecognizeSelector:a2];
  v2 = MEMORY[0x277CE6520];
  v3 = *MEMORY[0x277CE5FA8];

  return [v2 identifierForKey:@"com.apple.videoapps.arfx.metadata" keySpace:v3];
}

- (id)metadataItemWithTimeRange:(id *)range error:(id *)error
{
  v7 = MEMORY[0x277CE6520];
  metadataItemIdentifier = [objc_opt_class() metadataItemIdentifier];
  v9 = *&range->var0.var3;
  v11[0] = *&range->var0.var0;
  v11[1] = v9;
  v11[2] = *&range->var1.var1;
  return [v7 simplyCreateMetadataItemWithObject:self identifier:metadataItemIdentifier timeRange:v11 error:error];
}

- (OZARMetadata)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = OZARMetadata;
  return [(OZARMetadata *)&v4 init];
}

@end