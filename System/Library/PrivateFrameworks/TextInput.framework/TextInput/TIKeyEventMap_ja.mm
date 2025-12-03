@interface TIKeyEventMap_ja
+ (id)optionMap_JIS;
+ (id)shiftOptionMap_JIS;
- (id)remapKeyWithString:(id)string stringWithoutModifiers:(id)modifiers modifierFlags:(unint64_t)flags keyboardState:(id)state;
@end

@implementation TIKeyEventMap_ja

- (id)remapKeyWithString:(id)string stringWithoutModifiers:(id)modifiers modifierFlags:(unint64_t)flags keyboardState:(id)state
{
  stringCopy = string;
  modifiersCopy = modifiers;
  stateCopy = state;
  if ([stringCopy isEqualToString:@" "])
  {
    inputForMarkedText = [stateCopy inputForMarkedText];
    v14 = [inputForMarkedText length];

    if (!v14)
    {
      if ((((flags & 0x900000) == 0) & (((flags & 0x220000) != 0) ^ [stateCopy shouldOutputFullwidthSpace])) != 0)
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

  if ((flags & 0x480000) != 0 && (flags & 0x220000) != 0)
  {
    shiftOptionMap_JIS = [objc_opt_class() shiftOptionMap_JIS];
    v16 = [shiftOptionMap_JIS objectForKeyedSubscript:modifiersCopy];

    if (v16)
    {
      goto LABEL_15;
    }

LABEL_8:
    optionMap_JIS = [objc_opt_class() optionMap_JIS];
    v16 = [optionMap_JIS objectForKeyedSubscript:modifiersCopy];

    if (v16)
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  if ((flags & 0x480000) != 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  v21.receiver = self;
  v21.super_class = TIKeyEventMap_ja;
  v18 = [(TIKeyEventMap *)&v21 remapKeyWithString:stringCopy stringWithoutModifiers:modifiersCopy modifierFlags:flags keyboardState:stateCopy];
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