@interface PLCodec
+ (BOOL)isPlayableFourCharCodecName:(id)name;
+ (BOOL)isProResRAWFourCharCodecName:(id)name;
+ (id)H264fourCharCode;
+ (id)HEVCfourCharCode;
+ (unsigned)_typeCodeFromString:(id)string;
@end

@implementation PLCodec

+ (BOOL)isProResRAWFourCharCodecName:(id)name
{
  nameCopy = name;
  if ([nameCopy length])
  {
    v5 = [self _typeCodeFromString:nameCopy];
    v7 = v5 == 1634759278 || v5 == 1634759272;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)HEVCfourCharCode
{
  if (HEVCfourCharCode_onceToken != -1)
  {
    dispatch_once(&HEVCfourCharCode_onceToken, &__block_literal_global_2);
  }

  v3 = HEVCfourCharCode_codecName;

  return v3;
}

void __27__PLCodec_HEVCfourCharCode__block_invoke()
{
  v0 = [MEMORY[0x1E69C0708] stringFromFourCharCode:1752589105];
  v1 = HEVCfourCharCode_codecName;
  HEVCfourCharCode_codecName = v0;
}

+ (id)H264fourCharCode
{
  if (H264fourCharCode_onceToken != -1)
  {
    dispatch_once(&H264fourCharCode_onceToken, &__block_literal_global_75513);
  }

  v3 = H264fourCharCode_codecName;

  return v3;
}

void __27__PLCodec_H264fourCharCode__block_invoke()
{
  v0 = [MEMORY[0x1E69C0708] stringFromFourCharCode:1635148593];
  v1 = H264fourCharCode_codecName;
  H264fourCharCode_codecName = v0;
}

+ (BOOL)isPlayableFourCharCodecName:(id)name
{
  nameCopy = name;
  if ([nameCopy length])
  {
    [self _typeCodeFromString:nameCopy];
    v5 = VTSelectAndCreateVideoDecoderInstance() == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (unsigned)_typeCodeFromString:(id)string
{
  v3 = [string dataUsingEncoding:4];
  if ([v3 length] < 4)
  {
    v4 = 0;
  }

  else
  {
    [v3 getBytes:&v6 range:{0, 4}];
    v4 = bswap32(v6);
  }

  return v4;
}

@end