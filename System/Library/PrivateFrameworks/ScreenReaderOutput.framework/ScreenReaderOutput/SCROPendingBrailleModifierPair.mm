@interface SCROPendingBrailleModifierPair
- (SCROPendingBrailleModifierPair)initWithPendingBraille:(id)braille modifiers:(id)modifiers;
@end

@implementation SCROPendingBrailleModifierPair

- (SCROPendingBrailleModifierPair)initWithPendingBraille:(id)braille modifiers:(id)modifiers
{
  brailleCopy = braille;
  modifiersCopy = modifiers;
  v13.receiver = self;
  v13.super_class = SCROPendingBrailleModifierPair;
  v8 = [(SCROPendingBrailleModifierPair *)&v13 init];
  pendingBraille = v8->_pendingBraille;
  v8->_pendingBraille = brailleCopy;
  v10 = brailleCopy;

  modifiers = v8->_modifiers;
  v8->_modifiers = modifiersCopy;

  return v8;
}

@end