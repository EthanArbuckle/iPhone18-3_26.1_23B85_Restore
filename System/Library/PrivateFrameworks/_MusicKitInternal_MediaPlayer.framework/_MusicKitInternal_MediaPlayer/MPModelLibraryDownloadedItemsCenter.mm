@interface MPModelLibraryDownloadedItemsCenter
+ (MPModelLibraryDownloadedItemsCenter)sharedDownloadedItemsCenter;
@end

@implementation MPModelLibraryDownloadedItemsCenter

+ (MPModelLibraryDownloadedItemsCenter)sharedDownloadedItemsCenter
{
  v2 = static MPModelLibraryDownloadedItemsCenter.shared.getter();

  return v2;
}

@end