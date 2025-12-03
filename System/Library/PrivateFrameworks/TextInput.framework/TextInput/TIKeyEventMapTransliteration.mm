@interface TIKeyEventMapTransliteration
- (id)remapKeyWithString:(id)string stringWithoutModifiers:(id)modifiers modifierFlags:(unint64_t)flags keyboardState:(id)state;
@end

@implementation TIKeyEventMapTransliteration

- (id)remapKeyWithString:(id)string stringWithoutModifiers:(id)modifiers modifierFlags:(unint64_t)flags keyboardState:(id)state
{
  stringCopy = string;
  modifiersCopy = modifiers;
  stateCopy = state;
  if (![stringCopy isEqualToString:@"¤"] || (objc_msgSend(MEMORY[0x1E695DF58], "currentLocale"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "currencySymbol"), v14 = objc_claimAutoreleasedReturnValue(), v13, !v14))
  {
    v16.receiver = self;
    v16.super_class = TIKeyEventMapTransliteration;
    v14 = [(TIKeyEventMap *)&v16 remapKeyWithString:stringCopy stringWithoutModifiers:modifiersCopy modifierFlags:flags keyboardState:stateCopy];
  }

  return v14;
}

@end