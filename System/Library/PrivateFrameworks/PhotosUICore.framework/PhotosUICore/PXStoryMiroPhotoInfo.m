@interface PXStoryMiroPhotoInfo
- (PXStoryMiroPhotoInfo)initWithData:(id)a3;
- (id)dataRepresentation;
@end

@implementation PXStoryMiroPhotoInfo

- (id)dataRepresentation
{
  v4[4] = [(PXStoryMiroAssetInfo *)self isUsed];
  v2 = [MEMORY[0x1E695DEF0] dataWithBytes:v4 length:5];

  return v2;
}

- (PXStoryMiroPhotoInfo)initWithData:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PXStoryMiroPhotoInfo;
  v5 = [(PXStoryMiroAssetInfo *)&v7 initWithData:v4];
  if (v5 && [v4 length] == 5)
  {
    -[PXStoryMiroAssetInfo setIsUsed:](v5, "setIsUsed:", *([v4 bytes] + 4) & 1);
  }

  return v5;
}

@end