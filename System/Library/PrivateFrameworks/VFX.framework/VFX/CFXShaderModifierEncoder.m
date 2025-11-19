@interface CFXShaderModifierEncoder
+ (id)shaderModifierEncoderWithShaderModifier:(__CFXShaderModifier *)a3;
- (CFXShaderModifierEncoder)initWithCoder:(id)a3;
- (CFXShaderModifierEncoder)initWithShaderModifier:(__CFXShaderModifier *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CFXShaderModifierEncoder

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CFXShaderModifierEncoder;
  [(CFXShaderModifierEncoder *)&v3 dealloc];
}

+ (id)shaderModifierEncoderWithShaderModifier:(__CFXShaderModifier *)a3
{
  v4 = [a1 alloc];
  v7 = objc_msgSend_initWithShaderModifier_(v4, v5, a3, v6);

  return v7;
}

- (CFXShaderModifierEncoder)initWithShaderModifier:(__CFXShaderModifier *)a3
{
  v6.receiver = self;
  v6.super_class = CFXShaderModifierEncoder;
  v4 = [(CFXShaderModifierEncoder *)&v6 init];
  if (v4)
  {
    v4->_shaderModifier = a3;
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  shaderModifier = self->_shaderModifier;
  objc_msgSend_encodeObject_forKey_(a3, a2, shaderModifier->var1, @"declaration");
  objc_msgSend_encodeObject_forKey_(a3, v5, shaderModifier->var2, @"code");
  objc_msgSend_encodeObject_forKey_(a3, v6, shaderModifier->var3, @"defines");
  objc_msgSend_encodeObject_forKey_(a3, v7, shaderModifier->var4, @"standardUniforms");
  objc_msgSend_encodeObject_forKey_(a3, v8, shaderModifier->var5, @"arguments");
  objc_msgSend_encodeObject_forKey_(a3, v9, shaderModifier->var6, @"argumentsDefaultValues");
  objc_msgSend_encodeObject_forKey_(a3, v10, shaderModifier->var7, @"varyings");
  objc_msgSend_encodeInt32_forKey_(a3, v11, shaderModifier->var8, @"entryPoint");
  objc_msgSend_encodeInt32_forKey_(a3, v12, shaderModifier->var9, @"flags");
  objc_msgSend_encodeInt32_forKey_(a3, v13, shaderModifier->var11, @"materialPropertyMaskForTexcoordsUse");
  objc_msgSend_encodeInt32_forKey_(a3, v14, shaderModifier->var12, @"mappingChannelMaskForTexcoordsUse");
  v17 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x1E695DEF0], v15, shaderModifier->var13, 32, 0);

  objc_msgSend_encodeObject_forKey_(a3, v16, v17, @"hash");
}

- (CFXShaderModifierEncoder)initWithCoder:(id)a3
{
  v39[3] = *MEMORY[0x1E69E9840];
  v38.receiver = self;
  v38.super_class = CFXShaderModifierEncoder;
  v4 = [(CFXShaderModifierEncoder *)&v38 init];
  if (v4)
  {
    if (qword_1EB654CE8 != -1)
    {
      sub_1AFDD535C();
    }

    v5 = sub_1AF0D160C(qword_1EB654CE0, 0x68uLL);
    v4->_shaderModifier = v5;
    v6 = MEMORY[0x1E695DFD8];
    v39[0] = objc_opt_class();
    v39[1] = objc_opt_class();
    v39[2] = objc_opt_class();
    v8 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v7, v39, 3);
    v11 = objc_msgSend_setWithArray_(v6, v9, v8, v10);
    v12 = objc_opt_class();
    *(v5 + 16) = objc_msgSend_decodeObjectOfClass_forKey_(a3, v13, v12, @"declaration");
    v14 = objc_opt_class();
    *(v5 + 24) = objc_msgSend_decodeObjectOfClass_forKey_(a3, v15, v14, @"code");
    *(v5 + 32) = objc_msgSend_decodeObjectOfClasses_forKey_(a3, v16, v11, @"defines");
    *(v5 + 40) = objc_msgSend_decodeObjectOfClasses_forKey_(a3, v17, v11, @"standardUniforms");
    *(v5 + 48) = objc_msgSend_decodeObjectOfClasses_forKey_(a3, v18, v11, @"arguments");
    *(v5 + 56) = objc_msgSend_decodeObjectOfClasses_forKey_(a3, v19, v11, @"argumentsDefaultValues");
    *(v5 + 64) = objc_msgSend_decodeObjectOfClasses_forKey_(a3, v20, v11, @"varyings");
    *(v5 + 72) = objc_msgSend_decodeInt32ForKey_(a3, v21, @"entryPoint", v22);
    *(v5 + 73) = objc_msgSend_decodeInt32ForKey_(a3, v23, @"flags", v24);
    *(v5 + 80) = objc_msgSend_decodeInt32ForKey_(a3, v25, @"materialPropertyMaskForTexcoordsUse", v26);
    *(v5 + 84) = objc_msgSend_decodeInt32ForKey_(a3, v27, @"mappingChannelMaskForTexcoordsUse", v28);
    v29 = objc_opt_class();
    v31 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v30, v29, @"hash");
    v35 = objc_msgSend_bytes(v31, v32, v33, v34);
    v36 = v35[1];
    *(v5 + 88) = *v35;
    *(v5 + 104) = v36;
  }

  return v4;
}

@end