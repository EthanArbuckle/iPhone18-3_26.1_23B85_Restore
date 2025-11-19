@interface PKPhysicsContact
- (CGPoint)contactPoint;
- (CGVector)contactNormal;
- (PKPhysicsContact)init;
@end

@implementation PKPhysicsContact

- (CGPoint)contactPoint
{
  x = self->_contactPoint.x;
  y = self->_contactPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGVector)contactNormal
{
  dx = self->_contactNormal.dx;
  dy = self->_contactNormal.dy;
  result.dy = dy;
  result.dx = dx;
  return result;
}

- (PKPhysicsContact)init
{
  v5.receiver = self;
  v5.super_class = PKPhysicsContact;
  v2 = [(PKPhysicsContact *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PKPhysicsContact *)v2 setDidBegin:0];
    [(PKPhysicsContact *)v3 setDidEnd:0];
  }

  return v3;
}

@end