@interface PLAssetFormats
+ (CGSize)sizeForFormat:(unsigned __int16)a3;
+ (id)descriptionForImageFormat:(unsigned __int16)a3;
@end

@implementation PLAssetFormats

+ (CGSize)sizeForFormat:(unsigned __int16)a3
{
  if (a3)
  {
    v3 = [MEMORY[0x1E69BF260] formatWithID:?];
    [v3 size];
    v5 = v4;
    v7 = v6;
  }

  else
  {
    v5 = *MEMORY[0x1E695F060];
    v7 = *(MEMORY[0x1E695F060] + 8);
  }

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

+ (id)descriptionForImageFormat:(unsigned __int16)a3
{
  if (a3)
  {
    v3 = [MEMORY[0x1E69BF260] formatWithID:?];
    v4 = [v3 shortDescription];
  }

  else
  {
    v4 = @"0-PLUnknownImageFormat";
  }

  return v4;
}

@end