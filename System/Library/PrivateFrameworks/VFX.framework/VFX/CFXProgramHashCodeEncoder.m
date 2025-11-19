@interface CFXProgramHashCodeEncoder
+ (id)programHashCodeEncoderWithHashCode:(__CFXProgramHashCode *)a3;
- (CFXProgramHashCodeEncoder)initWithCoder:(id)a3;
- (CFXProgramHashCodeEncoder)initWithHashCode:(__CFXProgramHashCode *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CFXProgramHashCodeEncoder

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CFXProgramHashCodeEncoder;
  [(CFXProgramHashCodeEncoder *)&v3 dealloc];
}

+ (id)programHashCodeEncoderWithHashCode:(__CFXProgramHashCode *)a3
{
  v4 = [a1 alloc];
  v7 = objc_msgSend_initWithHashCode_(v4, v5, a3, v6);

  return v7;
}

- (CFXProgramHashCodeEncoder)initWithHashCode:(__CFXProgramHashCode *)a3
{
  v6.receiver = self;
  v6.super_class = CFXProgramHashCodeEncoder;
  v4 = [(CFXProgramHashCodeEncoder *)&v6 init];
  if (v4)
  {
    v4->_hashCode = a3;
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  hashCode = self->_hashCode;
  objc_msgSend_encodeObject_forKey_(a3, a2, hashCode->var2, @"hash");
  objc_msgSend_encodeInt32_forKey_(a3, v5, hashCode->var3, @"version");
  v7 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x1E695DEF0], v6, &hashCode->var1, 180, 0);
  objc_msgSend_encodeObject_forKey_(a3, v8, v7, @"desc");
  v11 = hashCode->var4[0];
  if (v11)
  {
    v12 = objc_msgSend_shaderModifierArrayEncoderWithArray_(CFXShaderModifierArrayEncoder, v9, v11, v10);
    objc_msgSend_encodeObject_forKey_(a3, v13, v12, @"shaderModifiers[material]");
  }

  v14 = hashCode->var4[1];
  if (v14)
  {
    v15 = objc_msgSend_shaderModifierArrayEncoderWithArray_(CFXShaderModifierArrayEncoder, v9, v14, v10);
    objc_msgSend_encodeObject_forKey_(a3, v16, v15, @"shaderModifiers[model]");
  }

  v19 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v9, 8, v10);
  v20 = 0;
  var5 = hashCode->var5;
  do
  {
    v22 = var5[v20];
    if (!v22)
    {
      break;
    }

    objc_msgSend_addObject_(v19, v17, v22, v18);
    ++v20;
  }

  while (v20 != 8);

  objc_msgSend_encodeObject_forKey_(a3, v17, v19, @"customPropertyNames");
}

- (CFXProgramHashCodeEncoder)initWithCoder:(id)a3
{
  v86 = *MEMORY[0x1E69E9840];
  v67.receiver = self;
  v67.super_class = CFXProgramHashCodeEncoder;
  v4 = [(CFXProgramHashCodeEncoder *)&v67 init];
  if (v4)
  {
    v85 = 0;
    memset(v84, 0, sizeof(v84));
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v5 = objc_opt_class();
    *(&v82 + 1) = objc_msgSend_decodeObjectOfClass_forKey_(a3, v6, v5, @"hash");
    LODWORD(v83) = objc_msgSend_decodeInt32ForKey_(a3, v7, @"version", v8);
    v9 = objc_opt_class();
    v11 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v10, v9, @"desc");
    v15 = objc_msgSend_bytes(v11, v12, v13, v14);
    v16 = *(v15 + 48);
    v18 = *v15;
    v17 = *(v15 + 16);
    v73 = *(v15 + 32);
    v74 = v16;
    v71 = v18;
    v72 = v17;
    v19 = *(v15 + 112);
    v21 = *(v15 + 64);
    v20 = *(v15 + 80);
    v77 = *(v15 + 96);
    v78 = v19;
    v75 = v21;
    v76 = v20;
    v23 = *(v15 + 144);
    v22 = *(v15 + 160);
    v24 = *(v15 + 128);
    LODWORD(v82) = *(v15 + 176);
    v80 = v23;
    v81 = v22;
    v79 = v24;
    v25 = objc_opt_class();
    v27 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v26, v25, @"shaderModifiers[material]");
    *(&v83 + 1) = objc_msgSend_shaderModifiers(v27, v28, v29, v30);
    v31 = objc_opt_class();
    v33 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v32, v31, @"shaderModifiers[model]");
    *&v84[0] = objc_msgSend_shaderModifiers(v33, v34, v35, v36);
    v37 = MEMORY[0x1E695DFD8];
    v69[0] = objc_opt_class();
    v69[1] = objc_opt_class();
    v39 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v38, v69, 2);
    v42 = objc_msgSend_setWithArray_(v37, v40, v39, v41);
    v44 = objc_msgSend_decodeObjectOfClasses_forKey_(a3, v43, v42, @"customPropertyNames");
    if (objc_msgSend_count(v44, v45, v46, v47) >= 8)
    {
      v49 = sub_1AF0D5194();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD4A64(v49, v48, v50, v51, v52, v53, v54, v55);
      }
    }

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v48, &v63, v68, 16);
    if (v56)
    {
      v57 = v56;
      LODWORD(v58) = 0;
      v59 = *v64;
      do
      {
        v60 = 0;
        v58 = v58;
        do
        {
          if (*v64 != v59)
          {
            objc_enumerationMutation(v44);
          }

          *(v84 + ++v58) = *(*(&v63 + 1) + 8 * v60++);
        }

        while (v57 != v60);
        v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v61, &v63, v68, 16);
      }

      while (v57);
    }

    v4->_hashCode = sub_1AF13F3D8(&v70);
  }

  return v4;
}

@end