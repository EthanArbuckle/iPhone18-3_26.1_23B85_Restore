@interface GEOMapItemStorage(RTExtensions)
+ (id)mapItemStorageForGEOMapItem:()RTExtensions locationOfInterestType:;
+ (id)mapItemStorageForPlace:()RTExtensions locationOfInterestType:;
@end

@implementation GEOMapItemStorage(RTExtensions)

+ (id)mapItemStorageForPlace:()RTExtensions locationOfInterestType:
{
  v6 = MEMORY[0x277D0EBA0];
  v7 = a3;
  v8 = [[v6 alloc] initWithLOIType:a4 event:0];
  v9 = [a1 mapItemStorageForPlace:v7 clientAttributes:v8];

  return v9;
}

+ (id)mapItemStorageForGEOMapItem:()RTExtensions locationOfInterestType:
{
  v6 = MEMORY[0x277D0EBA0];
  v7 = a3;
  v8 = [[v6 alloc] initWithLOIType:a4 event:0];
  v9 = [a1 mapItemStorageForGEOMapItem:v7 clientAttributes:v8];

  return v9;
}

@end