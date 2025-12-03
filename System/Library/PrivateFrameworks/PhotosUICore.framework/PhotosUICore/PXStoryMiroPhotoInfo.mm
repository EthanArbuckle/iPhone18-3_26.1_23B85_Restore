@interface PXStoryMiroPhotoInfo
- (PXStoryMiroPhotoInfo)initWithData:(id)data;
- (id)dataRepresentation;
@end

@implementation PXStoryMiroPhotoInfo

- (id)dataRepresentation
{
  v4[4] = [(PXStoryMiroAssetInfo *)self isUsed];
  v2 = [MEMORY[0x1E695DEF0] dataWithBytes:v4 length:5];

  return v2;
}

- (PXStoryMiroPhotoInfo)initWithData:(id)data
{
  dataCopy = data;
  v7.receiver = self;
  v7.super_class = PXStoryMiroPhotoInfo;
  v5 = [(PXStoryMiroAssetInfo *)&v7 initWithData:dataCopy];
  if (v5 && [dataCopy length] == 5)
  {
    -[PXStoryMiroAssetInfo setIsUsed:](v5, "setIsUsed:", *([dataCopy bytes] + 4) & 1);
  }

  return v5;
}

@end