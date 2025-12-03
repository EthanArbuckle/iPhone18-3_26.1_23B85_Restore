@interface SBAnimationCompletionDodgingModifierEvent
- (SBAnimationCompletionDodgingModifierEvent)initWithIdentifier:(id)identifier finished:(BOOL)finished retargeted:(BOOL)retargeted;
- (id)description;
@end

@implementation SBAnimationCompletionDodgingModifierEvent

- (SBAnimationCompletionDodgingModifierEvent)initWithIdentifier:(id)identifier finished:(BOOL)finished retargeted:(BOOL)retargeted
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = SBAnimationCompletionDodgingModifierEvent;
  v9 = [(SBAnimationCompletionDodgingModifierEvent *)&v13 init];
  if (v9)
  {
    v10 = [identifierCopy copy];
    identifier = v9->_identifier;
    v9->_identifier = v10;

    v9->_finished = finished;
    v9->_retargeted = retargeted;
  }

  return v9;
}

- (id)description
{
  v9.receiver = self;
  v9.super_class = SBAnimationCompletionDodgingModifierEvent;
  v3 = [(SBDodgingModifierEvent *)&v9 description];
  identifier = self->_identifier;
  v5 = NSStringFromBOOL();
  v6 = NSStringFromBOOL();
  v7 = [v3 stringByAppendingFormat:@" %@ finished:%@ retargeted:%@", identifier, v5, v6];

  return v7;
}

@end