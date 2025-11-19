@interface SBRotationDodgingModifierEvent
- (SBRotationDodgingModifierEvent)initWithIdentifier:(id)a3 fromOrientation:(int64_t)a4 toOrientation:(int64_t)a5 phase:(unint64_t)a6;
@end

@implementation SBRotationDodgingModifierEvent

- (SBRotationDodgingModifierEvent)initWithIdentifier:(id)a3 fromOrientation:(int64_t)a4 toOrientation:(int64_t)a5 phase:(unint64_t)a6
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = SBRotationDodgingModifierEvent;
  v12 = [(SBRotationDodgingModifierEvent *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, a3);
    v13->_fromOrientation = a4;
    v13->_toOrientation = a5;
    v13->_phase = a6;
  }

  return v13;
}

@end