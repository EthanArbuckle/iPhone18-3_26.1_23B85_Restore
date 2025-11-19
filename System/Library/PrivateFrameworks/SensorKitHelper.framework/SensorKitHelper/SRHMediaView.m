@interface SRHMediaView
- (CGRect)position;
- (SRHMediaView)init;
- (void)dealloc;
@end

@implementation SRHMediaView

- (SRHMediaView)init
{
  v4.receiver = self;
  v4.super_class = SRHMediaView;
  v2 = [(SRHMediaView *)&v4 init];
  if (v2)
  {
    v2->_uuid = [MEMORY[0x277CCAD78] UUID];
  }

  return v2;
}

- (void)dealloc
{
  self->_uuid = 0;
  v3.receiver = self;
  v3.super_class = SRHMediaView;
  [(SRHMediaView *)&v3 dealloc];
}

- (CGRect)position
{
  x = self->_position.origin.x;
  y = self->_position.origin.y;
  width = self->_position.size.width;
  height = self->_position.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end