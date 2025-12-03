@interface TIKeyEventMap_zh_Hant_Zhuyin
+ (id)sharedInstance;
- (BOOL)isZhuyinCharacterBeforeInsertionPointOfKeyboardState:(id)state;
- (id)punctuationMap;
- (id)remapKeyWithString:(id)string stringWithoutModifiers:(id)modifiers modifierFlags:(unint64_t)flags keyboardState:(id)state;
@end

@implementation TIKeyEventMap_zh_Hant_Zhuyin

- (id)remapKeyWithString:(id)string stringWithoutModifiers:(id)modifiers modifierFlags:(unint64_t)flags keyboardState:(id)state
{
  stringCopy = string;
  modifiersCopy = modifiers;
  stateCopy = state;
  if (!flags && [stringCopy isEqualToString:@" "] && -[TIKeyEventMap_zh_Hant_Zhuyin isZhuyinCharacterBeforeInsertionPointOfKeyboardState:](self, "isZhuyinCharacterBeforeInsertionPointOfKeyboardState:", stateCopy))
  {
    v13 = @"ˉ";
  }

  else
  {
    v15.receiver = self;
    v15.super_class = TIKeyEventMap_zh_Hant_Zhuyin;
    v13 = [(TIKeyEventMap_zh *)&v15 remapKeyWithString:stringCopy stringWithoutModifiers:modifiersCopy modifierFlags:flags keyboardState:stateCopy];
  }

  return v13;
}

- (BOOL)isZhuyinCharacterBeforeInsertionPointOfKeyboardState:(id)state
{
  stateCopy = state;
  documentState = [stateCopy documentState];
  markedText = [documentState markedText];

  if (markedText && ([stateCopy documentState], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "selectedRangeInMarkedText"), v7, v8))
  {
    documentState2 = [stateCopy documentState];
    markedText2 = [documentState2 markedText];
    documentState3 = [stateCopy documentState];
    v12 = [markedText2 substringWithRange:{objc_msgSend(documentState3, "selectedRangeInMarkedText") - 1, 1}];

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
  block[4] = self;
  if (sharedInstance___onceToken_201 != -1)
  {
    dispatch_once(&sharedInstance___onceToken_201, block);
  }

  v2 = sharedInstance___keyEventMap_200;

  return v2;
}

@end