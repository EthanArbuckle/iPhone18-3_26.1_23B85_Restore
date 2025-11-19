@interface SBCustomEventDodgingModifierEvent
- (SBCustomEventDodgingModifierEvent)initWithName:(id)a3;
- (id)description;
@end

@implementation SBCustomEventDodgingModifierEvent

- (SBCustomEventDodgingModifierEvent)initWithName:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBCustomEventDodgingModifierEvent;
  v5 = [(SBCustomEventDodgingModifierEvent *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    name = v5->_name;
    v5->_name = v6;
  }

  return v5;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = SBCustomEventDodgingModifierEvent;
  v3 = [(SBDodgingModifierEvent *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" %@", self->_name];

  return v4;
}

@end