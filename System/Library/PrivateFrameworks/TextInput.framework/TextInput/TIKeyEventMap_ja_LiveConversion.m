@interface TIKeyEventMap_ja_LiveConversion
- (id)inputEventForInputString:(id)a3 stringWithoutModifiers:(id)a4 modifierFlags:(unint64_t)a5 keyboardState:(id)a6;
@end

@implementation TIKeyEventMap_ja_LiveConversion

- (id)inputEventForInputString:(id)a3 stringWithoutModifiers:(id)a4 modifierFlags:(unint64_t)a5 keyboardState:(id)a6
{
  v6 = a5;
  v8 = a3;
  v9 = a4;
  v10 = v8;
  v11 = v10;
  if (([v10 _isBasicLatin] & 1) == 0)
  {
    v11 = v9;
  }

  v12 = 0;
  v13 = v6 & 0x1D90000 | [v11 _firstChar];
  if (v13 > 4194400)
  {
    if (v13 <= 8388618)
    {
      if (v13 > 4194423)
      {
        if (v13 <= 8388616)
        {
          if (v13 != 4194424)
          {
            v14 = 4194426;
            goto LABEL_44;
          }

          goto LABEL_38;
        }

        if (v13 != 8388617)
        {
          v14 = 8388618;
          goto LABEL_44;
        }

LABEL_58:
        v12 = objc_alloc_init(TIKeyboardInput);
        [(TIKeyboardInput *)v12 setShrinkSegment:1];
        goto LABEL_54;
      }

      if (v13 != 4194401)
      {
        if (v13 != 4194403)
        {
          v15 = 4194419;
LABEL_28:
          if (v13 != v15)
          {
            goto LABEL_54;
          }

LABEL_52:
          v17 = objc_alloc_init(TIKeyboardInput);
          v12 = v17;
          v18 = 5;
          goto LABEL_53;
        }

LABEL_39:
        v17 = objc_alloc_init(TIKeyboardInput);
        v12 = v17;
        v18 = 1;
        goto LABEL_53;
      }

LABEL_51:
      v17 = objc_alloc_init(TIKeyboardInput);
      v12 = v17;
      v18 = 2;
      goto LABEL_53;
    }

    if (v13 > 8388634)
    {
      if (v13 <= 8388665)
      {
        if (v13 != 8388635)
        {
          v15 = 8388647;
          goto LABEL_28;
        }

LABEL_57:
        v12 = objc_alloc_init(TIKeyboardInput);
        [(TIKeyboardInput *)v12 setString:@"\x1B"];
        goto LABEL_54;
      }

      if (v13 == 8388666)
      {
        goto LABEL_52;
      }

      v19 = 8388667;
LABEL_50:
      if (v13 != v19)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }

    if (v13 != 8388619)
    {
      if (v13 == 8388620)
      {
        goto LABEL_39;
      }

      v16 = 8388623;
      goto LABEL_36;
    }

LABEL_38:
    v17 = objc_alloc_init(TIKeyboardInput);
    v12 = v17;
    v18 = 3;
LABEL_53:
    [(TIKeyboardInput *)v17 setTransliterationType:v18];
    goto LABEL_54;
  }

  if (v13 <= 1048586)
  {
    if (v13 > 524407)
    {
      if (v13 <= 1048584)
      {
        if (v13 != 524408)
        {
          v14 = 524410;
LABEL_44:
          if (v13 != v14)
          {
            goto LABEL_54;
          }

          v17 = objc_alloc_init(TIKeyboardInput);
          v12 = v17;
          v18 = 4;
          goto LABEL_53;
        }

        goto LABEL_38;
      }

      if (v13 != 1048585)
      {
        v14 = 1048586;
        goto LABEL_44;
      }

      goto LABEL_58;
    }

    if (v13 != 524385)
    {
      if (v13 != 524387)
      {
        v15 = 524403;
        goto LABEL_28;
      }

      goto LABEL_39;
    }

    goto LABEL_51;
  }

  if (v13 > 1048602)
  {
    if (v13 <= 1048633)
    {
      if (v13 != 1048603)
      {
        v15 = 1048615;
        goto LABEL_28;
      }

      goto LABEL_57;
    }

    if (v13 == 1048634)
    {
      goto LABEL_52;
    }

    v19 = 1048635;
    goto LABEL_50;
  }

  if (v13 == 1048587)
  {
    goto LABEL_38;
  }

  if (v13 == 1048588)
  {
    goto LABEL_39;
  }

  v16 = 1048591;
LABEL_36:
  if (v13 == v16)
  {
    v12 = objc_alloc_init(TIKeyboardInput);
    [(TIKeyboardInput *)v12 setExpandSegment:1];
  }

LABEL_54:

  return v12;
}

@end