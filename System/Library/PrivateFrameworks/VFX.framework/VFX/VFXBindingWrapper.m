@interface VFXBindingWrapper
- (VFXBindingWrapper)initWithBinding:(id)a3 coreEntityHandle:(id)a4;
- (float32x2_t)range;
- (int64_t)componentCount;
- (unint64_t)componentSize;
- (void)dealloc;
- (void)setRawValue:(id)a3;
@end

@implementation VFXBindingWrapper

- (VFXBindingWrapper)initWithBinding:(id)a3 coreEntityHandle:(id)a4
{
  v8.receiver = self;
  v8.super_class = VFXBindingWrapper;
  v6 = [(VFXBindingWrapper *)&v8 init];
  if (v6)
  {
    v6->_binding = a3;
    objc_storeWeak(&v6->_handle, a4);
  }

  return v6;
}

- (void)dealloc
{
  objc_storeWeak(&self->_handle, 0);
  v3.receiver = self;
  v3.super_class = VFXBindingWrapper;
  [(VFXBindingWrapper *)&v3 dealloc];
}

- (void)setRawValue:(id)a3
{
  objc_msgSend_setRawValue_(self->_binding, a2, a3, v3);
  Weak = objc_loadWeak(&self->_handle);
  if (Weak)
  {
    v10 = Weak;
    v11 = objc_msgSend_name(self, v7, v8, v9);
    v15 = objc_msgSend_handle(v10, v12, v13, v14);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1AF2BEFB8;
    v17[3] = &unk_1E7A7E2E8;
    v17[5] = a3;
    v17[6] = v15;
    v17[4] = v11;
    objc_msgSend_postCommandWithObject_keyPath_applyBlock_(VFXTransaction, v16, v10, v11, v17);
  }
}

- (int64_t)componentCount
{
  v4 = objc_msgSend_type(self->_binding, a2, v2, v3);
  if ((v4 - 13) > 0xA)
  {
    return 1;
  }

  else
  {
    return qword_1AFE47788[v4 - 13];
  }
}

- (unint64_t)componentSize
{
  v4 = objc_msgSend_type(self->_binding, a2, v2, v3);
  if ((v4 - 1) > 0x16)
  {
    return 8;
  }

  else
  {
    return qword_1AFE477E0[v4 - 1];
  }
}

- (float32x2_t)range
{
  objc_msgSend_min(*(a1 + 8), a2, a3, a4);
  v12 = v5;
  objc_msgSend_max(*(a1 + 8), v6, v7, v8);
  v9.f64[0] = v12;
  v9.f64[1] = v10;
  return vcvt_f32_f64(v9);
}

@end