@interface TIKeyEventMap_zh
+ (id)punctuationMap_zh_Hans;
+ (id)punctuationMap_zh_Hant;
- (id)remapKeyWithString:(id)string stringWithoutModifiers:(id)modifiers modifierFlags:(unint64_t)flags keyboardState:(id)state;
@end

@implementation TIKeyEventMap_zh

- (id)remapKeyWithString:(id)string stringWithoutModifiers:(id)modifiers modifierFlags:(unint64_t)flags keyboardState:(id)state
{
  stringCopy = string;
  modifiersCopy = modifiers;
  stateCopy = state;
  if (![stateCopy hardwareKeyboardMode] || -[TIKeyEventMap_zh isURLOrEmailKeyboardInKeyboardState:](self, "isURLOrEmailKeyboardInKeyboardState:", stateCopy) || (-[TIKeyEventMap_zh punctuationMap](self, "punctuationMap"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "objectForKey:", stringCopy), v14 = objc_claimAutoreleasedReturnValue(), v13, !v14))
  {
    v16.receiver = self;
    v16.super_class = TIKeyEventMap_zh;
    v14 = [(TIKeyEventMap *)&v16 remapKeyWithString:stringCopy stringWithoutModifiers:modifiersCopy modifierFlags:flags keyboardState:stateCopy];
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