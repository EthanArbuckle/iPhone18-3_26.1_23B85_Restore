@interface AVMetadataItem(OZAdditions)
+ (id)simplyCreateMetadataItemWithMediaCharacteristic:()OZAdditions;
+ (id)simplyCreateMetadataItemWithRawData:()OZAdditions identifier:timeRange:;
+ (uint64_t)simplyCreateMetadataItemWithObject:()OZAdditions identifier:timeRange:error:;
@end

@implementation AVMetadataItem(OZAdditions)

+ (uint64_t)simplyCreateMetadataItemWithObject:()OZAdditions identifier:timeRange:error:
{
  result = [a3 simplyEncode:a6];
  if (result)
  {
    v10 = a5[1];
    v11[0] = *a5;
    v11[1] = v10;
    v11[2] = a5[2];
    return [a1 simplyCreateMetadataItemWithRawData:result identifier:a4 timeRange:v11];
  }

  return result;
}

+ (id)simplyCreateMetadataItemWithRawData:()OZAdditions identifier:timeRange:
{
  v8 = objc_alloc_init(MEMORY[0x277CE6558]);
  [v8 setIdentifier:a4];
  [v8 setValue:a3];
  [v8 setDataType:*MEMORY[0x277CC05B0]];
  v10 = *a5;
  v11 = *(a5 + 2);
  [v8 setTime:&v10];
  v10 = *(a5 + 24);
  v11 = *(a5 + 5);
  [v8 setDuration:&v10];
  return v8;
}

+ (id)simplyCreateMetadataItemWithMediaCharacteristic:()OZAdditions
{
  v4 = objc_alloc_init(MEMORY[0x277CE6558]);
  [v4 setIdentifier:{objc_msgSend(MEMORY[0x277CE6520], "identifierForKey:keySpace:", *MEMORY[0x277CE5FF0], *MEMORY[0x277CE5FB0])}];
  [v4 setValue:a3];
  return v4;
}

@end