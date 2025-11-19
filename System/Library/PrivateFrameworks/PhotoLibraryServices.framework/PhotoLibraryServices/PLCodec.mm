@interface PLCodec
+ (BOOL)isPlayableFourCharCodecName:(id)a3;
+ (BOOL)isProResRAWFourCharCodecName:(id)a3;
+ (id)H264fourCharCode;
+ (id)HEVCfourCharCode;
+ (unsigned)_typeCodeFromString:(id)a3;
@end

@implementation PLCodec

+ (BOOL)isProResRAWFourCharCodecName:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [a1 _typeCodeFromString:v4];
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

+ (BOOL)isPlayableFourCharCodecName:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    [a1 _typeCodeFromString:v4];
    v5 = VTSelectAndCreateVideoDecoderInstance() == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (unsigned)_typeCodeFromString:(id)a3
{
  v3 = [a3 dataUsingEncoding:4];
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