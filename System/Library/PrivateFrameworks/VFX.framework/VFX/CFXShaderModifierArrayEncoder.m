@interface CFXShaderModifierArrayEncoder
+ (id)shaderModifierArrayEncoderWithArray:(id)a3;
- (CFXShaderModifierArrayEncoder)initWithArray:(id)a3;
- (CFXShaderModifierArrayEncoder)initWithCoder:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CFXShaderModifierArrayEncoder

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CFXShaderModifierArrayEncoder;
  [(CFXShaderModifierArrayEncoder *)&v3 dealloc];
}

+ (id)shaderModifierArrayEncoderWithArray:(id)a3
{
  v4 = [a1 alloc];
  v7 = objc_msgSend_initWithArray_(v4, v5, a3, v6);

  return v7;
}

- (CFXShaderModifierArrayEncoder)initWithArray:(id)a3
{
  v6.receiver = self;
  v6.super_class = CFXShaderModifierArrayEncoder;
  v4 = [(CFXShaderModifierArrayEncoder *)&v6 init];
  if (v4)
  {
    v4->_shaderModifiers = a3;
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E695DF70];
  v7 = objc_msgSend_count(self->_shaderModifiers, a2, a3, v3);
  v10 = objc_msgSend_arrayWithCapacity_(v6, v8, v7, v9);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  shaderModifiers = self->_shaderModifiers;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(shaderModifiers, v12, &v22, v26, 16);
  if (v13)
  {
    v16 = v13;
    v17 = *v23;
    do
    {
      v18 = 0;
      do
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(shaderModifiers);
        }

        v19 = objc_msgSend_shaderModifierEncoderWithShaderModifier_(CFXShaderModifierEncoder, v14, *(*(&v22 + 1) + 8 * v18), v15);
        objc_msgSend_addObject_(v10, v20, v19, v21);
        ++v18;
      }

      while (v16 != v18);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(shaderModifiers, v14, &v22, v26, 16);
    }

    while (v16);
  }

  objc_msgSend_encodeObject_forKey_(a3, v14, v10, @"modifiers");
}

- (CFXShaderModifierArrayEncoder)initWithCoder:(id)a3
{
  v39[2] = *MEMORY[0x1E69E9840];
  v37.receiver = self;
  v37.super_class = CFXShaderModifierArrayEncoder;
  v4 = [(CFXShaderModifierArrayEncoder *)&v37 init];
  if (v4)
  {
    v5 = MEMORY[0x1E695DFD8];
    v39[0] = objc_opt_class();
    v39[1] = objc_opt_class();
    v7 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v6, v39, 2);
    v10 = objc_msgSend_setWithArray_(v5, v8, v7, v9);
    v12 = objc_msgSend_decodeObjectOfClasses_forKey_(a3, v11, v10, @"modifiers");
    v13 = MEMORY[0x1E695DF70];
    v17 = objc_msgSend_count(v12, v14, v15, v16);
    v20 = objc_msgSend_arrayWithCapacity_(v13, v18, v17, v19);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v21, &v33, v38, 16);
    if (v22)
    {
      v26 = v22;
      v27 = *v34;
      do
      {
        v28 = 0;
        do
        {
          if (*v34 != v27)
          {
            objc_enumerationMutation(v12);
          }

          v29 = objc_msgSend_shaderModifier(*(*(&v33 + 1) + 8 * v28), v23, v24, v25);
          objc_msgSend_addObject_(v20, v30, v29, v31);
          ++v28;
        }

        while (v26 != v28);
        v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v23, &v33, v38, 16);
      }

      while (v26);
    }

    v4->_shaderModifiers = v20;
  }

  return v4;
}

@end