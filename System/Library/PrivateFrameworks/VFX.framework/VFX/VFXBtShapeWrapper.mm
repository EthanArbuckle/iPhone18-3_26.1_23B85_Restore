@interface VFXBtShapeWrapper
- (VFXBtShapeWrapper)initWithShape:(btCollisionShape *)a3;
- (void)dealloc;
@end

@implementation VFXBtShapeWrapper

- (VFXBtShapeWrapper)initWithShape:(btCollisionShape *)a3
{
  v5.receiver = self;
  v5.super_class = VFXBtShapeWrapper;
  result = [(VFXBtShapeWrapper *)&v5 init];
  if (result)
  {
    result->_collisionShape = a3;
  }

  return result;
}

- (void)dealloc
{
  sub_1AF35CE98(self->_collisionShape);
  v3.receiver = self;
  v3.super_class = VFXBtShapeWrapper;
  [(VFXBtShapeWrapper *)&v3 dealloc];
}

@end