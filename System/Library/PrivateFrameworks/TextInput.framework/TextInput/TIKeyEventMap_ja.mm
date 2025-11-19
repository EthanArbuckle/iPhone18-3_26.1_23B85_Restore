@interface TIKeyEventMap_ja
+ (id)optionMap_JIS;
+ (id)shiftOptionMap_JIS;
- (id)remapKeyWithString:(id)a3 stringWithoutModifiers:(id)a4 modifierFlags:(unint64_t)a5 keyboardState:(id)a6;
@end

@implementation TIKeyEventMap_ja

- (id)remapKeyWithString:(id)a3 stringWithoutModifiers:(id)a4 modifierFlags:(unint64_t)a5 keyboardState:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if ([v10 isEqualToString:@" "])
  {
    v13 = [v12 inputForMarkedText];
    v14 = [v13 length];

    if (!v14)
    {
      if ((((a5 & 0x900000) == 0) & (((a5 & 0x220000) != 0) ^ [v12 shouldOutputFullwidthSpace])) != 0)
      {
        v19 = @"　";
      }

      else
      {
        v19 = @" ";
      }

      v18 = v19;
      goto LABEL_14;
    }
  }

  if ((a5 & 0x480000) != 0 && (a5 & 0x220000) != 0)
  {
    v15 = [objc_opt_class() shiftOptionMap_JIS];
    v16 = [v15 objectForKeyedSubscript:v11];

    if (v16)
    {
      goto LABEL_15;
    }

LABEL_8:
    v17 = [objc_opt_class() optionMap_JIS];
    v16 = [v17 objectForKeyedSubscript:v11];

    if (v16)
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  if ((a5 & 0x480000) != 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  v21.receiver = self;
  v21.super_class = TIKeyEventMap_ja;
  v18 = [(TIKeyEventMap *)&v21 remapKeyWithString:v10 stringWithoutModifiers:v11 modifierFlags:a5 keyboardState:v12];
LABEL_14:
  v16 = v18;
LABEL_15:

  return v16;
}

+ (id)optionMap_JIS
{
  if (optionMap_JIS_onceToken != -1)
  {
    dispatch_once(&optionMap_JIS_onceToken, &__block_literal_global_351);
  }

  v3 = optionMap_JIS_optionMap;

  return v3;
}

+ (id)shiftOptionMap_JIS
{
  if (shiftOptionMap_JIS_onceToken != -1)
  {
    dispatch_once(&shiftOptionMap_JIS_onceToken, &__block_literal_global_339);
  }

  v3 = shiftOptionMap_JIS_optionMap;

  return v3;
}

@end