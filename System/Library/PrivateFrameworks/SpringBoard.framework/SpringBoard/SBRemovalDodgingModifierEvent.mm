@interface SBRemovalDodgingModifierEvent
- (SBRemovalDodgingModifierEvent)initWithIdentifier:(id)identifier;
@end

@implementation SBRemovalDodgingModifierEvent

- (SBRemovalDodgingModifierEvent)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = SBRemovalDodgingModifierEvent;
  v6 = [(SBRemovalDodgingModifierEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
  }

  return v7;
}

@end