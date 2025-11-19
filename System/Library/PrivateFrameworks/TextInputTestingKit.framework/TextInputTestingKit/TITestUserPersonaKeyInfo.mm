@interface TITestUserPersonaKeyInfo
- (CGPoint)center;
- (id)description;
@end

@implementation TITestUserPersonaKeyInfo

- (CGPoint)center
{
  x = self->_center.x;
  y = self->_center.y;
  result.y = y;
  result.x = x;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = TITestUserPersonaKeyInfo;
  v4 = [(TITestUserPersonaKeyInfo *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ @ {%.1f, %.1f}", v4, *&self->_center.x, *&self->_center.y];

  return v5;
}

@end