@interface CFXRemoteRenderPipelineDescriptor
- ($0A5B5EE80FF9A3BD0C0D8CB2CCC95C0F)blendingDescAt:(int64_t)at;
- (BOOL)isEqual:(id)equal;
- (CFXRemoteRenderPipelineDescriptor)initWithCoder:(id)coder;
- (CFXRemoteRenderPipelineDescriptor)initWithDescriptor:(id *)descriptor;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setBlendingDesc:(id)desc at:(int64_t)at;
@end

@implementation CFXRemoteRenderPipelineDescriptor

- (CFXRemoteRenderPipelineDescriptor)initWithDescriptor:(id *)descriptor
{
  v36.receiver = self;
  v36.super_class = CFXRemoteRenderPipelineDescriptor;
  v4 = [(CFXRemoteRenderPipelineDescriptor *)&v36 init];
  if (v4)
  {
    v5 = objc_opt_new();
    v6 = objc_opt_new();
    objc_msgSend_setVertexFunction_(v4, v7, v5, v8);
    objc_msgSend_setFragmentFunction_(v4, v9, v6, v10);
    objc_msgSend_setArgumentEncoder_(v4, v11, 0, v12);

    objc_msgSend_setProgramHashCode_(v4, v13, descriptor->var0.var0, v14);
    objc_msgSend_setVertexDescriptor_(v4, v15, descriptor->var7, v16);
    objc_msgSend_setPrimitiveTopologyClass_(v4, v17, descriptor->var5, v18);
    objc_msgSend_setRasterizationEnabled_(v4, v19, 1, v20);
    objc_msgSend_setMaxVertexAmplificationCount_(v4, v21, 2, v22);
    for (i = 0; i != 4; ++i)
    {
      var3 = descriptor->var3;
      if (var3 && i < sub_1AF15BA14(var3))
      {
        v26 = sub_1AF15B948(descriptor->var3, i);
        v27 = v26 & 0xFF00000000000000;
        v28 = v26 & 1;
        v29 = v26 & 0xFF000000000000;
        v30 = v26 & 0xFF0000000000;
        v31 = v26 & 0xFF00000000;
        v32 = v26 & 0xFF000000;
        v33 = v26 & 0xFF0000;
      }

      else
      {
        v28 = 0;
        v33 = 0;
        v32 = 0;
        v31 = 0;
        v30 = 0;
        v29 = 0;
        v27 = 0;
      }

      if (descriptor->var16)
      {
        v34 = descriptor->var4[i] << 8;
      }

      else
      {
        v34 = 0;
      }

      objc_msgSend_setBlendingDesc_at_(v4, v23, v33 | v28 | v32 | v31 | v30 | v29 | v27 | v34, i);
    }
  }

  return v4;
}

- (void)dealloc
{
  objc_msgSend_setArgumentEncoder_(self, a2, 0, v2);

  sub_1AF13F914(self->_programHashCode);
  v4.receiver = self;
  v4.super_class = CFXRemoteRenderPipelineDescriptor;
  [(CFXRemoteRenderPipelineDescriptor *)&v4 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (!objc_msgSend_isEqual_(self->_vertexFunction, a2, *(equal + 10), v3))
  {
    return 0;
  }

  if (!objc_msgSend_isEqual_(self->_fragmentFunction, v6, *(equal + 11), v7))
  {
    return 0;
  }

  vertexDescriptor = self->_vertexDescriptor;
  v11 = *(equal + 12);
  if (vertexDescriptor != v11 && !objc_msgSend_isEqual_(vertexDescriptor, v8, v11, v9))
  {
    return 0;
  }

  programHashCode = self->_programHashCode;
  v13 = *(equal + 16);

  return objc_msgSend_isEqual_(programHashCode, v8, v13, v9);
}

- (unint64_t)hash
{
  v5 = objc_msgSend_hash(self->_vertexFunction, a2, v2, v3) + 2654435769;
  v9 = (objc_msgSend_hash(self->_fragmentFunction, v6, v7, v8) + (v5 << 6) + (v5 >> 2) + 2654435769u) ^ v5;
  v13 = objc_msgSend_hash(self->_vertexDescriptor, v10, v11, v12);
  v14 = 0;
  v15 = (v13 + (v9 << 6) + (v9 >> 2) + 2654435769u) ^ v9;
  v16 = (self->_primitiveTopologyClass + (v15 << 6) + (v15 >> 2) + 2654435769u) ^ v15;
  v17 = ((self->_rasterizationEnabled | (v16 << 6)) + (v16 >> 2) + 2654435769u) ^ v16;
  v18 = v17 ^ 0xA929E4D6F47A6540 ^ (self->_maxVertexAmplificationCount + (v17 << 6) + (v17 >> 2) + 2654435769u);
  do
  {
    v19 = self->_blendingDesc[v14++];
    v18 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *&v19) ^ ((0xC6A4A7935BD1E995 * *&v19) >> 47))) ^ v18);
  }

  while (v14 != 8);
  v20 = (0xC6A4A7935BD1E995 * (v18 ^ (v18 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v18 ^ (v18 >> 47))) >> 47);
  return (self->_programHashCode + 64 * v20 + (v20 >> 2) + 2654435769u) ^ v20;
}

- (void)setBlendingDesc:(id)desc at:(int64_t)at
{
  if (at >= 8)
  {
    v7 = sub_1AF0D5194();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEDF10(v7);
    }
  }

  self->_blendingDesc[at] = desc;
}

- ($0A5B5EE80FF9A3BD0C0D8CB2CCC95C0F)blendingDescAt:(int64_t)at
{
  if (at >= 8)
  {
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEDF10(v5);
    }
  }

  return self->_blendingDesc[at];
}

- (void)encodeWithCoder:(id)coder
{
  vertexFunction = self->_vertexFunction;
  if (vertexFunction)
  {
    objc_msgSend_encodeObject_forKey_(coder, a2, vertexFunction, @"vertexFunction");
  }

  fragmentFunction = self->_fragmentFunction;
  if (fragmentFunction)
  {
    objc_msgSend_encodeObject_forKey_(coder, a2, fragmentFunction, @"fragmentFunction");
  }

  vertexDescriptor = self->_vertexDescriptor;
  if (vertexDescriptor)
  {
    v9 = objc_msgSend_encode_(MEMORY[0x1E69741E0], a2, vertexDescriptor, v3);
    if (v9)
    {
      objc_msgSend_encodeObject_forKey_(coder, a2, v9, @"vertexDescriptor");
    }
  }

  objc_msgSend_encodeInteger_forKey_(coder, a2, self->_primitiveTopologyClass, @"primitiveTopologyClass");
  objc_msgSend_encodeBool_forKey_(coder, v10, self->_rasterizationEnabled, @"rasterizationEnabled");
  objc_msgSend_encodeInteger_forKey_(coder, v11, self->_maxVertexAmplificationCount, @"maxVertexAmp");
  v13 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x1E695DEF0], v12, self->_blendingDesc, 64, 0);
  objc_msgSend_encodeObject_forKey_(coder, v14, v13, @"blendingDesc");
  programHashCode = self->_programHashCode;
  if (programHashCode)
  {
    v19 = objc_msgSend_programHashCodeEncoderWithHashCode_(CFXProgramHashCodeEncoder, v15, programHashCode, v16);

    objc_msgSend_encodeObject_forKey_(coder, v18, v19, @"hashCode");
  }
}

- (CFXRemoteRenderPipelineDescriptor)initWithCoder:(id)coder
{
  v60.receiver = self;
  v60.super_class = CFXRemoteRenderPipelineDescriptor;
  v4 = [(CFXRemoteRenderPipelineDescriptor *)&v60 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v7 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"vertexFunction");
    objc_msgSend_setVertexFunction_(v4, v8, v7, v9);
    v10 = objc_opt_class();
    v12 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v11, v10, @"fragmentFunction");
    objc_msgSend_setFragmentFunction_(v4, v13, v12, v14);
    v15 = objc_opt_class();
    v17 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v16, v15, @"vertexDescriptor");
    if (v17)
    {
      v20 = objc_msgSend_decode_(MEMORY[0x1E69741E0], v18, v17, v19);
      objc_msgSend_setVertexDescriptor_(v4, v21, v20, v22);
    }

    v23 = objc_msgSend_decodeIntegerForKey_(coder, v18, @"primitiveTopologyClass", v19);
    objc_msgSend_setPrimitiveTopologyClass_(v4, v24, v23, v25);
    v28 = objc_msgSend_decodeBoolForKey_(coder, v26, @"rasterizationEnabled", v27);
    objc_msgSend_setRasterizationEnabled_(v4, v29, v28, v30);
    v33 = objc_msgSend_decodeIntegerForKey_(coder, v31, @"maxVertexAmp", v32);
    objc_msgSend_setMaxVertexAmplificationCount_(v4, v34, v33, v35);
    v36 = objc_opt_class();
    v38 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v37, v36, @"blendingDesc");
    if (objc_msgSend_length(v38, v39, v40, v41) == 64)
    {
      v45 = objc_msgSend_bytes(v38, v42, v43, v44);
      v46 = v45[2];
      v47 = v45[3];
      v48 = v45[1];
      *(v4 + 8) = *v45;
      *(v4 + 56) = v47;
      *(v4 + 40) = v46;
      *(v4 + 24) = v48;
    }

    else
    {
      v49 = sub_1AF0D5194();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDEDF94(v49);
      }
    }

    v50 = objc_opt_class();
    v52 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v51, v50, @"hashCode");
    v56 = objc_msgSend_hashCode(v52, v53, v54, v55);
    objc_msgSend_setProgramHashCode_(v4, v57, v56, v58);
  }

  return v4;
}

@end