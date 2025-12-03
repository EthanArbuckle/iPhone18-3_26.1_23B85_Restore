@interface GenerativeMemoryPhotosGraphData
+ (id)getCuratedAssetPlaybackTimeRangesFor:(id)for;
+ (id)parsePromptInformationAsDictionaryWithMemory:(id)memory error:(id *)error;
@end

@implementation GenerativeMemoryPhotosGraphData

+ (id)getCuratedAssetPlaybackTimeRangesFor:(id)for
{
  swift_getObjCClassMetadata();
  forCopy = for;
  static GenerativeMemoryPhotosGraphData.getCuratedAssetPlaybackTimeRanges(for:)(forCopy);
  v6 = v5;

  return v6;
}

+ (id)parsePromptInformationAsDictionaryWithMemory:(id)memory error:(id *)error
{
  swift_getObjCClassMetadata();
  memoryCopy = memory;
  static GenerativeMemoryPhotosGraphData.parsePromptInformationAsDictionary(memory:)(memoryCopy);

  v6 = sub_1C755048C();

  return v6;
}

@end