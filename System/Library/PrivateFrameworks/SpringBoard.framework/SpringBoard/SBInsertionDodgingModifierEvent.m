@interface SBInsertionDodgingModifierEvent
- (CGPoint)center;
- (CGSize)size;
- (SBInsertionDodgingModifierEvent)initWithIdentifier:(id)a3 center:(CGPoint)a4 size:(CGSize)a5;
@end

@implementation SBInsertionDodgingModifierEvent

- (SBInsertionDodgingModifierEvent)initWithIdentifier:(id)a3 center:(CGPoint)a4 size:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  y = a4.y;
  x = a4.x;
  v11 = a3;
  v15.receiver = self;
  v15.super_class = SBInsertionDodgingModifierEvent;
  v12 = [(SBInsertionDodgingModifierEvent *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, a3);
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