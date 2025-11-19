@interface GenerativeMemoryPhotosGraphData
+ (id)getCuratedAssetPlaybackTimeRangesFor:(id)a3;
+ (id)parsePromptInformationAsDictionaryWithMemory:(id)a3 error:(id *)a4;
@end

@implementation GenerativeMemoryPhotosGraphData

+ (id)getCuratedAssetPlaybackTimeRangesFor:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  static GenerativeMemoryPhotosGraphData.getCuratedAssetPlaybackTimeRanges(for:)(v4);
  v6 = v5;

  return v6;
}

+ (id)parsePromptInformationAsDictionaryWithMemory:(id)a3 error:(id *)a4
{
  swift_getObjCClassMetadata();
  v5 = a3;
  static GenerativeMemoryPhotosGraphData.parsePromptInformationAsDictionary(memory:)(v5);

  v6 = sub_1C755048C();

  return v6;
}

@end