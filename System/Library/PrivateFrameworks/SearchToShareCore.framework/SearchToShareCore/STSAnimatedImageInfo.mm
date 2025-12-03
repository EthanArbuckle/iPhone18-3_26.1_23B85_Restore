@interface STSAnimatedImageInfo
- (CGSize)size;
@end

@implementation STSAnimatedImageInfo

- (CGSize)size
{
  frames = [(STSAnimatedImageInfo *)self frames];
  firstObject = [frames firstObject];

  if (firstObject)
  {
    [firstObject size];
    v5 = v4;
    v7 = v6;
  }

  else
  {
    v5 = *MEMORY[0x277CBF3A8];
    v7 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

@end