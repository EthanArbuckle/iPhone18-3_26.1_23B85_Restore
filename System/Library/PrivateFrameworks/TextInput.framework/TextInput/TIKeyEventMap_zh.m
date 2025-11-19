@interface TIKeyEventMap_zh
+ (id)punctuationMap_zh_Hans;
+ (id)punctuationMap_zh_Hant;
- (id)remapKeyWithString:(id)a3 stringWithoutModifiers:(id)a4 modifierFlags:(unint64_t)a5 keyboardState:(id)a6;
@end

@implementation TIKeyEventMap_zh

- (id)remapKeyWithString:(id)a3 stringWithoutModifiers:(id)a4 modifierFlags:(unint64_t)a5 keyboardState:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (![v12 hardwareKeyboardMode] || -[TIKeyEventMap_zh isURLOrEmailKeyboardInKeyboardState:](self, "isURLOrEmailKeyboardInKeyboardState:", v12) || (-[TIKeyEventMap_zh punctuationMap](self, "punctuationMap"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "objectForKey:", v10), v14 = objc_claimAutoreleasedReturnValue(), v13, !v14))
  {
    v16.receiver = self;
    v16.super_class = TIKeyEventMap_zh;
    v14 = [(TIKeyEventMap *)&v16 remapKeyWithString:v10 stringWithoutModifiers:v11 modifierFlags:a5 keyboardState:v12];
  }

  return v14;
}

+ (id)punctuationMap_zh_Hant
{
  if (punctuationMap_zh_Hant___onceToken != -1)
  {
    dispatch_once(&punctuationMap_zh_Hant___onceToken, &__block_literal_global_162);
  }

  v3 = punctuationMap_zh_Hant___punctuationMap;

  return v3;
}

+ (id)punctuationMap_zh_Hans
{
  if (punctuationMap_zh_Hans___onceToken != -1)
  {
    dispatch_once(&punctuationMap_zh_Hans___onceToken, &__block_literal_global_2625);
  }

  v3 = punctuationMap_zh_Hans___punctuationMap;

  return v3;
}

@end