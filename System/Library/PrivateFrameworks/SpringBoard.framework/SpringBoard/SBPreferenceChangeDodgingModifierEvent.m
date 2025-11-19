@interface SBPreferenceChangeDodgingModifierEvent
- (SBPreferenceChangeDodgingModifierEvent)initWithIdentifier:(id)a3 phase:(unint64_t)a4 style:(unint64_t)a5;
@end

@implementation SBPreferenceChangeDodgingModifierEvent

- (SBPreferenceChangeDodgingModifierEvent)initWithIdentifier:(id)a3 phase:(unint64_t)a4 style:(unint64_t)a5
{
  v10 = a3;
  v13.receiver = self;
  v13.super_class = SBPreferenceChangeDodgingModifierEvent;
  v11 = [(SBPreferenceChangeDodgingModifierEvent *)&v13 init];
  if (v11)
  {
    if (!v10)
    {
      [SBPreferenceChangeDodgingModifierEvent initWithIdentifier:a2 phase:v11 style:?];
    }

    objc_storeStrong(&v11->_identifier, a3);
    v11->_phase = a4;
    v11->_style = a5;
  }

  return v11;
}

- (void)initWithIdentifier:(uint64_t)a1 phase:(uint64_t)a2 style:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBPreferenceChangeDodgingModifierEvent.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
}

@end