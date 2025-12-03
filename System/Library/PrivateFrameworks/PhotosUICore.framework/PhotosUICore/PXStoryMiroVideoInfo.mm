@interface PXStoryMiroVideoInfo
- (PXStoryMiroVideoInfo)initWithData:(id)data;
- (id)token;
@end

@implementation PXStoryMiroVideoInfo

- (PXStoryMiroVideoInfo)initWithData:(id)data
{
  dataCopy = data;
  v13.receiver = self;
  v13.super_class = PXStoryMiroVideoInfo;
  v5 = [(PXStoryMiroAssetInfo *)&v13 initWithData:dataCopy];
  if (v5)
  {
    if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * [dataCopy length] - 0x3333333333333334, 1) <= 0x1999999999999999uLL)
    {
      v6 = [dataCopy subdataWithRange:{0, 4}];
      token = [(PXStoryMiroVideoInfo *)v5 token];
      v8 = [v6 isEqualToData:token];

      if (v8)
      {
        if ([dataCopy length] >= 5)
        {
          v9 = 4;
          while (1)
          {
            v10 = [dataCopy subdataWithRange:{v9, 10}];
            v11 = [[PXStoryMiroVideoRangeInfo alloc] initWithData:v10];
            if ([(PXStoryMiroAssetInfo *)v11 isUsed])
            {
              break;
            }

            v9 += 10;

            if (v9 >= [dataCopy length])
            {
              goto LABEL_10;
            }
          }

          [(PXStoryMiroAssetInfo *)v5 setIsUsed:1];
        }
      }
    }
  }

LABEL_10:

  return v5;
}

- (id)token
{
  if (token_once != -1)
  {
    dispatch_once(&token_once, &__block_literal_global_57277);
  }

  v3 = token_token;

  return v3;
}

void __29__PXStoryMiroVideoInfo_token__block_invoke()
{
  v0 = [MEMORY[0x1E695DEF0] dataWithBytes:"MVFI" length:4];
  v1 = token_token;
  token_token = v0;
}

@end