@interface TIKeyEventMap_zh_Hant_Zhuyin
+ (id)sharedInstance;
- (BOOL)isZhuyinCharacterBeforeInsertionPointOfKeyboardState:(id)a3;
- (id)punctuationMap;
- (id)remapKeyWithString:(id)a3 stringWithoutModifiers:(id)a4 modifierFlags:(unint64_t)a5 keyboardState:(id)a6;
@end

@implementation TIKeyEventMap_zh_Hant_Zhuyin

- (id)remapKeyWithString:(id)a3 stringWithoutModifiers:(id)a4 modifierFlags:(unint64_t)a5 keyboardState:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (!a5 && [v10 isEqualToString:@" "] && -[TIKeyEventMap_zh_Hant_Zhuyin isZhuyinCharacterBeforeInsertionPointOfKeyboardState:](self, "isZhuyinCharacterBeforeInsertionPointOfKeyboardState:", v12))
  {
    v13 = @"ˉ";
  }

  else
  {
    v15.receiver = self;
    v15.super_class = TIKeyEventMap_zh_Hant_Zhuyin;
    v13 = [(TIKeyEventMap_zh *)&v15 remapKeyWithString:v10 stringWithoutModifiers:v11 modifierFlags:a5 keyboardState:v12];
  }

  return v13;
}

- (BOOL)isZhuyinCharacterBeforeInsertionPointOfKeyboardState:(id)a3
{
  v4 = a3;
  v5 = [v4 documentState];
  v6 = [v5 markedText];

  if (v6 && ([v4 documentState], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "selectedRangeInMarkedText"), v7, v8))
  {
    v9 = [v4 documentState];
    v10 = [v9 markedText];
    v11 = [v4 documentState];
    v12 = [v10 substringWithRange:{objc_msgSend(v11, "selectedRangeInMarkedText") - 1, 1}];

    v13 = [(TIKeyEventMap_zh_Hant_Zhuyin *)self shouldInsertZhuyinCharacterAfter:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)punctuationMap
{
  v2 = objc_opt_class();

  return [v2 punctuationMap_zh_Hant];
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__TIKeyEventMap_zh_Hant_Zhuyin_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance___onceToken_201 != -1)
  {
    dispatch_once(&sharedInstance___onceToken_201, block);
  }

  v2 = sharedInstance___keyEventMap_200;

  return v2;
}

@end