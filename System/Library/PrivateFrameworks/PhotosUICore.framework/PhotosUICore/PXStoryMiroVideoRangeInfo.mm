@interface PXStoryMiroVideoRangeInfo
- (PXStoryMiroVideoRangeInfo)initWithData:(id)data;
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

- (PXStoryMiroVideoRangeInfo)initWithData:(id)data
{
  dataCopy = data;
  v7.receiver = self;
  v7.super_class = PXStoryMiroVideoRangeInfo;
  v5 = [(PXStoryMiroAssetInfo *)&v7 initWithData:dataCopy];
  if (v5 && ([dataCopy length] - 9) <= 1)
  {
    -[PXStoryMiroAssetInfo setIsUsed:](v5, "setIsUsed:", *([dataCopy bytes] + 8) & 1);
  }

  return v5;
}

@end