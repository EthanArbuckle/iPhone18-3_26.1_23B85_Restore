@interface VFXNodeWeakComponent
- (VFXNodeWeakComponent)initWithType:(int64_t)type component:(id)component;
- (id)component;
@end

@implementation VFXNodeWeakComponent

- (VFXNodeWeakComponent)initWithType:(int64_t)type component:(id)component
{
  componentCopy = component;
  v14.receiver = self;
  v14.super_class = VFXNodeWeakComponent;
  v7 = [(VFXNodeWeakComponent *)&v14 init];
  v10 = v7;
  if (v7)
  {
    objc_msgSend_setType_(v7, v8, type, v9);
    objc_msgSend_setComponent_(v10, v11, componentCopy, v12);
  }

  return v10;
}

- (id)component
{
  WeakRetained = objc_loadWeakRetained(&self->component);

  return WeakRetained;
}

@end