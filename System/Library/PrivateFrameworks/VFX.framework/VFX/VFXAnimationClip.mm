@interface VFXAnimationClip
+ (id)clipWithAnimation:(id)animation name:(id)name;
- (VFXAnimationClip)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)copyTo:(id)to withContext:(id)context;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setAnimation:(id)animation;
- (void)setName:(id)name;
@end

@implementation VFXAnimationClip

+ (id)clipWithAnimation:(id)animation name:(id)name
{
  v6 = objc_alloc_init(VFXAnimationClip);
  objc_msgSend_setName_(v6, v7, name, v8);
  v12 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v9, v10, v11);
  v6->_identifier = objc_msgSend_UUIDString(v12, v13, v14, v15);
  v6->_animation = animation;

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXAnimationClip;
  [(VFXAnimationClip *)&v3 dealloc];
}

- (void)setName:(id)name
{
  name = self->_name;
  if (name != name)
  {

    self->_name = name;
  }
}

- (void)setAnimation:(id)animation
{
  animation = self->_animation;
  if (animation != animation)
  {

    self->_animation = animation;
  }
}

- (void)copyTo:(id)to withContext:(id)context
{
  v6 = objc_msgSend_copy(self->_animation, a2, to, context);
  objc_msgSend_setAnimation_(to, v7, v6, v8);
  v12 = objc_msgSend_name(self, v9, v10, v11);
  v17 = objc_msgSend_copy(v12, v13, v14, v15);

  objc_msgSend_setName_(to, v16, v17, v18);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(VFXCopyContext);
  v5 = objc_alloc_init(VFXAnimationClip);
  sub_1AFDF50C8(v4, self, v5);
  objc_msgSend_copyTo_withContext_(self, v6, v5, 0);
  sub_1AFDF51FC(v4, v5);

  return v5;
}

- (VFXAnimationClip)initWithCoder:(id)coder
{
  v20.receiver = self;
  v20.super_class = VFXAnimationClip;
  v4 = [(VFXAnimationClip *)&v20 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v4->_name = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"name");
    v7 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v8, v7, @"identifier");
    v4->_identifier = v9;
    if (!v9)
    {
      v13 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v10, v11, v12);
      v4->_identifier = objc_msgSend_UUIDString(v13, v14, v15, v16);
    }

    v17 = objc_opt_class();
    v4->_animation = objc_msgSend_decodeObjectOfClass_forKey_(coder, v18, v17, @"animation");
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  if (name)
  {
    objc_msgSend_encodeObject_forKey_(coder, a2, name, @"name");
  }

  objc_msgSend_encodeObject_forKey_(coder, a2, self->_identifier, @"identifier");
  animation = self->_animation;

  objc_msgSend_encodeObject_forKey_(coder, v6, animation, @"animation");
}

@end