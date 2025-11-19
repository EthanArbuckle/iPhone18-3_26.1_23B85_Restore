@interface SCROPendingBrailleModifierPair
- (SCROPendingBrailleModifierPair)initWithPendingBraille:(id)a3 modifiers:(id)a4;
@end

@implementation SCROPendingBrailleModifierPair

- (SCROPendingBrailleModifierPair)initWithPendingBraille:(id)a3 modifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = SCROPendingBrailleModifierPair;
  v8 = [(SCROPendingBrailleModifierPair *)&v13 init];
  pendingBraille = v8->_pendingBraille;
  v8->_pendingBraille = v6;
  v10 = v6;

  modifiers = v8->_modifiers;
  v8->_modifiers = v7;

  return v8;
}

@end