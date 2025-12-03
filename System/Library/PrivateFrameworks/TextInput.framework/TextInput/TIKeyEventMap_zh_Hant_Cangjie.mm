@interface TIKeyEventMap_zh_Hant_Cangjie
+ (id)sharedInstance;
- (id)punctuationMap;
@end

@implementation TIKeyEventMap_zh_Hant_Cangjie

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__TIKeyEventMap_zh_Hant_Cangjie_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance___onceToken_311 != -1)
  {
    dispatch_once(&sharedInstance___onceToken_311, block);
  }

  v2 = sharedInstance___keyEventMap_310;

  return v2;
}

- (id)punctuationMap
{
  v2 = objc_opt_class();

  return [v2 punctuationMap_zh_Hant];
}

@end