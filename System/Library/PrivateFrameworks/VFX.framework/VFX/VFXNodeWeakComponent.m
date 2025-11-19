@interface VFXNodeWeakComponent
- (VFXNodeWeakComponent)initWithType:(int64_t)a3 component:(id)a4;
- (id)component;
@end

@implementation VFXNodeWeakComponent

- (VFXNodeWeakComponent)initWithType:(int64_t)a3 component:(id)a4
{
  v6 = a4;
  v14.receiver = self;
  v14.super_class = VFXNodeWeakComponent;
  v7 = [(VFXNodeWeakComponent *)&v14 init];
  v10 = v7;
  if (v7)
  {
    objc_msgSend_setType_(v7, v8, a3, v9);
    objc_msgSend_setComponent_(v10, v11, v6, v12);
  }

  return v10;
}

- (id)component
{
  WeakRetained = objc_loadWeakRetained(&self->component);

  return WeakRetained;
}

@end