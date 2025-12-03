@interface TIKeyEventMap_zh_Stroke
- (BOOL)isNumericWubi:(id)wubi;
- (id)remapKeyWithString:(id)string stringWithoutModifiers:(id)modifiers modifierFlags:(unint64_t)flags keyboardState:(id)state;
- (id)wubiFromASCII:(id)i;
@end

@implementation TIKeyEventMap_zh_Stroke

- (id)remapKeyWithString:(id)string stringWithoutModifiers:(id)modifiers modifierFlags:(unint64_t)flags keyboardState:(id)state
{
  stringCopy = string;
  modifiersCopy = modifiers;
  stateCopy = state;
  if ([stateCopy hardwareKeyboardMode])
  {
    if ([(TIKeyEventMap_zh_Stroke *)self isNumericWubi:modifiersCopy]&& (flags == 0x400000 || flags == 0x80000))
    {
      v13 = modifiersCopy;
      goto LABEL_10;
    }

    if ([(TIKeyEventMap_zh_Stroke *)self isNumericWubi:stringCopy])
    {
      if (![stringCopy isEqualToString:@"="] || (objc_msgSend(stateCopy, "documentState"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "markedText"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "length"), v15, v14, v16))
      {
        v13 = [(TIKeyEventMap_zh_Stroke *)self wubiFromASCII:stringCopy];
LABEL_10:
        v17 = v13;
        if (v13)
        {
          goto LABEL_12;
        }
      }
    }
  }

  v19.receiver = self;
  v19.super_class = TIKeyEventMap_zh_Stroke;
  v17 = [(TIKeyEventMap_zh *)&v19 remapKeyWithString:stringCopy stringWithoutModifiers:modifiersCopy modifierFlags:flags keyboardState:stateCopy];
LABEL_12:

  return v17;
}

- (BOOL)isNumericWubi:(id)wubi
{
  v3 = [(TIKeyEventMap_zh_Stroke *)self wubiFromASCII:wubi];
  v4 = v3 != 0;

  return v4;
}

- (id)wubiFromASCII:(id)i
{
  v3 = wubiFromASCII__onceToken;
  iCopy = i;
  if (v3 != -1)
  {
    dispatch_once(&wubiFromASCII__onceToken, &__block_literal_global_248);
  }

  v5 = [wubiFromASCII__asciiToWubiMap objectForKey:iCopy];

  return v5;
}

@end