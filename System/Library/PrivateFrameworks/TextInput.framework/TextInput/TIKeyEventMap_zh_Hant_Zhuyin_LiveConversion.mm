@interface TIKeyEventMap_zh_Hant_Zhuyin_LiveConversion
+ (id)sharedInstance;
- (int64_t)candidateNumberKey:(int)key;
@end

@implementation TIKeyEventMap_zh_Hant_Zhuyin_LiveConversion

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__TIKeyEventMap_zh_Hant_Zhuyin_LiveConversion_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance___onceToken_210 != -1)
  {
    dispatch_once(&sharedInstance___onceToken_210, block);
  }

  v2 = sharedInstance___keyEventMap_209;

  return v2;
}

- (int64_t)candidateNumberKey:(int)key
{
  keyCopy = key;
  if (candidateNumberKey____onceToken != -1)
  {
    dispatch_once(&candidateNumberKey____onceToken, &__block_literal_global_212);
  }

  v7 = keyCopy;
  v4 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v7 length:1];
  v5 = [candidateNumberKey____numberKeys indexOfObject:v4];

  return v5;
}

@end