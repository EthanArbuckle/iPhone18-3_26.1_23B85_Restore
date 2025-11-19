@interface OZARMetadata
+ (NSArray)personSegmentationMediaCharacteristics;
+ (NSArray)sceneDepthMediaCharacteristics;
+ (id)createWithMetadataItem:(id)a3 error:(id *)a4;
+ (id)decompressedData:(id)a3 error:(id *)a4;
+ (id)metadataItemIdentifier;
+ (id)simplyDecodeFromData:(id)a3 error:(id *)a4;
+ (opaqueCMFormatDescription)createMetadataFormat;
+ (opaqueCMFormatDescription)metadataFormat;
- (OZARMetadata)initWithCoder:(id)a3;
- (id)compressedDataWithError:(id *)a3;
- (id)metadataItemWithTimeRange:(id *)a3 error:(id *)a4;
@end

@implementation OZARMetadata

- (id)compressedDataWithError:(id *)a3
{
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:a3];
  v5 = [objc_opt_class() metadataCompressionAlgorithm];
  if (v5 < 0)
  {
    return v4;
  }

  return [v4 compressedDataUsingAlgorithm:v5 error:a3];
}

+ (id)decompressedData:(id)a3 error:(id *)a4
{
  v6 = [objc_opt_class() metadataCompressionAlgorithm];
  if (v6 < 0)
  {
    return a3;
  }

  return [a3 decompressedDataUsingAlgorithm:v6 error:a4];
}

+ (opaqueCMFormatDescription)createMetadataFormat
{
  v2 = [objc_opt_class() metadataItemIdentifier];

  return OZSimplyCreateCMMetadataFormatDescriptionForRawDataWithIdentifier(v2);
}

+ (opaqueCMFormatDescription)metadataFormat
{
  result = [a1 createMetadataFormat];
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

+ (id)simplyDecodeFromData:(id)a3 error:(id *)a4
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  if (![a3 length])
  {
    return 0;
  }

  v7 = [a1 decompressedData:a3 error:a4];
  if (![v7 length])
  {
    return 0;
  }

  [MEMORY[0x277CCAAC8] setClass:objc_opt_class() forClassName:@"PCDMARFrameMetadata"];
  v8 = MEMORY[0x277CCAAC8];
  v9 = objc_opt_class();

  return [v8 unarchivedObjectOfClass:v9 fromData:v7 error:a4];
}

+ (id)createWithMetadataItem:(id)a3 error:(id *)a4
{
  v6 = [a3 value];

  return [a1 simplyDecodeFromData:v6 error:a4];
}

+ (id)metadataItemIdentifier
{
  [a1 doesNotRecognizeSelector:a2];
  v2 = MEMORY[0x277CE6520];
  v3 = *MEMORY[0x277CE5FA8];

  return [v2 identifierForKey:@"com.apple.videoapps.arfx.metadata" keySpace:v3];
}

- (id)metadataItemWithTimeRange:(id *)a3 error:(id *)a4
{
  v7 = MEMORY[0x277CE6520];
  v8 = [objc_opt_class() metadataItemIdentifier];
  v9 = *&a3->var0.var3;
  v11[0] = *&a3->var0.var0;
  v11[1] = v9;
  v11[2] = *&a3->var1.var1;
  return [v7 simplyCreateMetadataItemWithObject:self identifier:v8 timeRange:v11 error:a4];
}

- (OZARMetadata)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = OZARMetadata;
  return [(OZARMetadata *)&v4 init];
}

@end