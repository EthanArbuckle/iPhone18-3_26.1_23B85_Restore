@interface TIKeyEventMap_zh_Stroke
- (BOOL)isNumericWubi:(id)a3;
- (id)remapKeyWithString:(id)a3 stringWithoutModifiers:(id)a4 modifierFlags:(unint64_t)a5 keyboardState:(id)a6;
- (id)wubiFromASCII:(id)a3;
@end

@implementation TIKeyEventMap_zh_Stroke

- (id)remapKeyWithString:(id)a3 stringWithoutModifiers:(id)a4 modifierFlags:(unint64_t)a5 keyboardState:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if ([v12 hardwareKeyboardMode])
  {
    if ([(TIKeyEventMap_zh_Stroke *)self isNumericWubi:v11]&& (a5 == 0x400000 || a5 == 0x80000))
    {
      v13 = v11;
      goto LABEL_10;
    }

    if ([(TIKeyEventMap_zh_Stroke *)self isNumericWubi:v10])
    {
      if (![v10 isEqualToString:@"="] || (objc_msgSend(v12, "documentState"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "markedText"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "length"), v15, v14, v16))
      {
        v13 = [(TIKeyEventMap_zh_Stroke *)self wubiFromASCII:v10];
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
  v17 = [(TIKeyEventMap_zh *)&v19 remapKeyWithString:v10 stringWithoutModifiers:v11 modifierFlags:a5 keyboardState:v12];
LABEL_12:

  return v17;
}

- (BOOL)isNumericWubi:(id)a3
{
  v3 = [(TIKeyEventMap_zh_Stroke *)self wubiFromASCII:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)wubiFromASCII:(id)a3
{
  v3 = wubiFromASCII__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&wubiFromASCII__onceToken, &__block_literal_global_248);
  }

  v5 = [wubiFromASCII__asciiToWubiMap objectForKey:v4];

  return v5;
}

@end