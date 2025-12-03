@interface SBPreferenceChangeDodgingModifierEvent
- (SBPreferenceChangeDodgingModifierEvent)initWithIdentifier:(id)identifier phase:(unint64_t)phase style:(unint64_t)style;
@end

@implementation SBPreferenceChangeDodgingModifierEvent

- (SBPreferenceChangeDodgingModifierEvent)initWithIdentifier:(id)identifier phase:(unint64_t)phase style:(unint64_t)style
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = SBPreferenceChangeDodgingModifierEvent;
  v11 = [(SBPreferenceChangeDodgingModifierEvent *)&v13 init];
  if (v11)
  {
    if (!identifierCopy)
    {
      [SBPreferenceChangeDodgingModifierEvent initWithIdentifier:a2 phase:v11 style:?];
    }

    objc_storeStrong(&v11->_identifier, identifier);
    v11->_phase = phase;
    v11->_style = style;
  }

  return v11;
}

- (void)initWithIdentifier:(uint64_t)a1 phase:(uint64_t)a2 style:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBPreferenceChangeDodgingModifierEvent.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
}

@end