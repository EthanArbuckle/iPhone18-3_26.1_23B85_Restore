@interface SBRotationDodgingModifierEvent
- (SBRotationDodgingModifierEvent)initWithIdentifier:(id)identifier fromOrientation:(int64_t)orientation toOrientation:(int64_t)toOrientation phase:(unint64_t)phase;
@end

@implementation SBRotationDodgingModifierEvent

- (SBRotationDodgingModifierEvent)initWithIdentifier:(id)identifier fromOrientation:(int64_t)orientation toOrientation:(int64_t)toOrientation phase:(unint64_t)phase
{
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = SBRotationDodgingModifierEvent;
  v12 = [(SBRotationDodgingModifierEvent *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, identifier);
    v13->_fromOrientation = orientation;
    v13->_toOrientation = toOrientation;
    v13->_phase = phase;
  }

  return v13;
}

@end