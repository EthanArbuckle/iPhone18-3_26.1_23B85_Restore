@interface SKUICircleRepellor
- (CGPoint)center;
- (id)description;
- (void)description;
@end

@implementation SKUICircleRepellor

- (id)description
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUICircleRepellor description];
  }

  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = SKUICircleRepellor;
  v4 = [(SKUICircleRepellor *)&v9 description];
  physicsBody = self->_physicsBody;
  v6 = NSStringFromCGPoint(self->_center);
  v7 = [v3 stringWithFormat:@"%@: Body: %@, Center: %@, Radius: %.2f", v4, physicsBody, v6, *&self->_radius];

  return v7;
}

- (CGPoint)center
{
  x = self->_center.x;
  y = self->_center.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)description
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUICircleRepellor description]";
}

@end