@interface SBInsertionDodgingModifierEvent
- (CGPoint)center;
- (CGSize)size;
- (SBInsertionDodgingModifierEvent)initWithIdentifier:(id)identifier center:(CGPoint)center size:(CGSize)size;
@end

@implementation SBInsertionDodgingModifierEvent

- (SBInsertionDodgingModifierEvent)initWithIdentifier:(id)identifier center:(CGPoint)center size:(CGSize)size
{
  height = size.height;
  width = size.width;
  y = center.y;
  x = center.x;
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = SBInsertionDodgingModifierEvent;
  v12 = [(SBInsertionDodgingModifierEvent *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, identifier);
    v13->_center.x = x;
    v13->_center.y = y;
    v13->_size.width = width;
    v13->_size.height = height;
  }

  return v13;
}

- (CGPoint)center
{
  x = self->_center.x;
  y = self->_center.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end