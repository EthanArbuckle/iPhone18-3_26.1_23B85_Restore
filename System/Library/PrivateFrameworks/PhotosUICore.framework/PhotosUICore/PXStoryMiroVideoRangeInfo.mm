@interface PXStoryMiroVideoRangeInfo
- (PXStoryMiroVideoRangeInfo)initWithData:(id)a3;
- (id)dataRepresentation;
@end

@implementation PXStoryMiroVideoRangeInfo

- (id)dataRepresentation
{
  v5 = *MEMORY[0x1E69E9840];
  v4[8] = [(PXStoryMiroAssetInfo *)self isUsed];
  v2 = [MEMORY[0x1E695DEF0] dataWithBytes:v4 length:10];

  return v2;
}

- (PXStoryMiroVideoRangeInfo)initWithData:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PXStoryMiroVideoRangeInfo;
  v5 = [(PXStoryMiroAssetInfo *)&v7 initWithData:v4];
  if (v5 && ([v4 length] - 9) <= 1)
  {
    -[PXStoryMiroAssetInfo setIsUsed:](v5, "setIsUsed:", *([v4 bytes] + 8) & 1);
  }

  return v5;
}

@end