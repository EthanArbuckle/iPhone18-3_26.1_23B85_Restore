@interface PXStoryMiroAssetInfo
+ (id)infoForUsedPhoto;
+ (id)infoWithData:(id)data;
- (PXStoryMiroAssetInfo)initWithData:(id)data;
@end

@implementation PXStoryMiroAssetInfo

- (PXStoryMiroAssetInfo)initWithData:(id)data
{
  v4.receiver = self;
  v4.super_class = PXStoryMiroAssetInfo;
  return [(PXStoryMiroAssetInfo *)&v4 init];
}

+ (id)infoForUsedPhoto
{
  v2 = objc_alloc_init(PXStoryMiroPhotoInfo);
  [(PXStoryMiroAssetInfo *)v2 setIsUsed:1];

  return v2;
}

+ (id)infoWithData:(id)data
{
  dataCopy = data;
  v4 = [dataCopy length];
  v5 = off_1E771FF90;
  if (v4 != 5)
  {
    v5 = off_1E771FF98;
  }

  v6 = [objc_alloc(*v5) initWithData:dataCopy];

  return v6;
}

@end