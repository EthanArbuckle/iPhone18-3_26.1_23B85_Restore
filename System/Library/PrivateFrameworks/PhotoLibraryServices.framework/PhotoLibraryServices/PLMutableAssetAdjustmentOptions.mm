@interface PLMutableAssetAdjustmentOptions
+ (id)assetAdjustmentOptionsForFileSystemImport;
@end

@implementation PLMutableAssetAdjustmentOptions

+ (id)assetAdjustmentOptionsForFileSystemImport
{
  v2 = objc_alloc_init(self);
  [v2 setShouldUpdateAttributes:1];
  [v2 setShouldGenerateThumbnails:1];
  [v2 setFileIngestionType:0];

  return v2;
}

@end