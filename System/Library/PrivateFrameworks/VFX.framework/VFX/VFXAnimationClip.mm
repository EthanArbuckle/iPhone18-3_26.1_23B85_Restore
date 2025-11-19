@interface VFXAnimationClip
+ (id)clipWithAnimation:(id)a3 name:(id)a4;
- (VFXAnimationClip)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)copyTo:(id)a3 withContext:(id)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setAnimation:(id)a3;
- (void)setName:(id)a3;
@end

@implementation VFXAnimationClip

+ (id)clipWithAnimation:(id)a3 name:(id)a4
{
  v6 = objc_alloc_init(VFXAnimationClip);
  objc_msgSend_setName_(v6, v7, a4, v8);
  v12 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v9, v10, v11);
  v6->_identifier = objc_msgSend_UUIDString(v12, v13, v14, v15);
  v6->_animation = a3;

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXAnimationClip;
  [(VFXAnimationClip *)&v3 dealloc];
}

- (void)setName:(id)a3
{
  name = self->_name;
  if (name != a3)
  {

    self->_name = a3;
  }
}

- (void)setAnimation:(id)a3
{
  animation = self->_animation;
  if (animation != a3)
  {

    self->_animation = a3;
  }
}

- (void)copyTo:(id)a3 withContext:(id)a4
{
  v6 = objc_msgSend_copy(self->_animation, a2, a3, a4);
  objc_msgSend_setAnimation_(a3, v7, v6, v8);
  v12 = objc_msgSend_name(self, v9, v10, v11);
  v17 = objc_msgSend_copy(v12, v13, v14, v15);

  objc_msgSend_setName_(a3, v16, v17, v18);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(VFXCopyContext);
  v5 = objc_alloc_init(VFXAnimationClip);
  sub_1AFDF50C8(v4, self, v5);
  objc_msgSend_copyTo_withContext_(self, v6, v5, 0);
  sub_1AFDF51FC(v4, v5);

  return v5;
}

- (VFXAnimationClip)initWithCoder:(id)a3
{
  v20.receiver = self;
  v20.super_class = VFXAnimationClip;
  v4 = [(VFXAnimationClip *)&v20 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v4->_name = objc_msgSend_decodeObjectOfClass_forKey_(a3, v6, v5, @"name");
    v7 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v8, v7, @"identifier");
    v4->_identifier = v9;
    if (!v9)
    {
      v13 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v10, v11, v12);
      v4->_identifier = objc_msgSend_UUIDString(v13, v14, v15, v16);
    }

    v17 = objc_opt_class();
    v4->_animation = objc_msgSend_decodeObjectOfClass_forKey_(a3, v18, v17, @"animation");
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  if (name)
  {
    objc_msgSend_encodeObject_forKey_(a3, a2, name, @"name");
  }

  objc_msgSend_encodeObject_forKey_(a3, a2, self->_identifier, @"identifier");
  animation = self->_animation;

  objc_msgSend_encodeObject_forKey_(a3, v6, animation, @"animation");
}

@end