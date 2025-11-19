@interface TSCH3DShaderContext
- (BOOL)isEqual:(id)a3;
- (TSCH3DShaderContext)initWithObjectState:(const void *)a3 version:(id)a4;
- (TextureAttributes)textureAttributesForVariable:(SEL)a3;
- (id).cxx_construct;
- (id)diffEffects:(id)a3;
- (id)discardStatement;
- (id)textureFunctionNameForVariable:(id)a3 projective:(BOOL)a4;
- (unint64_t)hash;
@end

@implementation TSCH3DShaderContext

- (TSCH3DShaderContext)initWithObjectState:(const void *)a3 version:(id)a4
{
  v7 = a4;
  v22.receiver = self;
  v22.super_class = TSCH3DShaderContext;
  v8 = [(TSCH3DShaderContext *)&v22 init];
  if (v8)
  {
    sub_2761CB09C(&v17, a3);
    sub_276161210(&v8->_state._effects.mValue, v17);
    sub_2761CB63C(&v8->_state._attributes.__begin_);
    *&v8->_state._attributes.__begin_ = v18;
    v8->_state._attributes.__cap_ = v19;
    v18 = 0uLL;
    v19 = 0;
    sub_2761CB6A0(&v8->_state._textures.__begin_);
    *&v8->_state._textures.__begin_ = v20;
    v8->_state._textures.__cap_ = v21;
    v20 = 0uLL;
    v21 = 0;
    v23 = &v20;
    sub_2761CB5BC(&v23);
    v23 = &v18;
    sub_2761CB388(&v23);

    objc_storeStrong(&v8->_version, a4);
    v9 = [TSCH3DShaderResource alloc];
    v14 = objc_msgSend_initWithCaching_version_(v9, v10, v11, v12, v13, 0, v7);
    shader = v8->_shader;
    v8->_shader = v14;
  }

  return v8;
}

- (unint64_t)hash
{
  v5 = objc_msgSend_version(self, a2, v2, v3, v4);
  v10 = objc_msgSend_hash(v5, v6, v7, v8, v9);

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v6 = TSUSpecificCast();
  if (v6 && (objc_msgSend_version(self, v5, v7, v8, v9), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend_version(v6, v11, v12, v13, v14), v15 = objc_claimAutoreleasedReturnValue(), isEqual = objc_msgSend_isEqual_(v10, v16, v17, v18, v19, v15), v15, v10, isEqual))
  {
    v25 = objc_msgSend_version(self, v21, v22, v23, v24);
    isShaderGenerationFromContext_equalToContext = objc_msgSend_isShaderGenerationFromContext_equalToContext_(v25, v26, v27, v28, v29, self, v6);
  }

  else
  {
    isShaderGenerationFromContext_equalToContext = 0;
  }

  return isShaderGenerationFromContext_equalToContext;
}

- (TextureAttributes)textureAttributesForVariable:(SEL)a3
{
  v6 = a4;
  sub_2761CAC8C(&self->_state, v6, &v28);
  v11 = v28;
  if (v28 != v6)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCH3DShaderContext textureAttributesForVariable:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderContext.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 67, 0, "Texture not found for variable %@", v6);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
    v11 = v28;
  }

  *&retstr->var0 = *v29;
  *(&retstr->var1 + 3) = *(&v29[1] + 3);
  *&retstr->var5.var0 = *&v29[3];
  retstr->var5.var1.var1.var0 = v29[5];
  retstr->var6 = v30;

  return result;
}

- (id)textureFunctionNameForVariable:(id)a3 projective:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v11 = objc_msgSend_version(self, v7, v8, v9, v10);
  v16 = objc_msgSend_textureFunctionNameForVariable_projective_context_(v11, v12, v13, v14, v15, v6, v4, self);

  return v16;
}

- (id)discardStatement
{
  v5 = objc_msgSend_version(self, a2, v2, v3, v4);
  v10 = objc_msgSend_discardStatement(v5, v6, v7, v8, v9);

  return v10;
}

- (id)diffEffects:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_debugEffects(self, v5, v6, v7, v8);
  v14 = objc_msgSend_mutableCopy(v9, v10, v11, v12, v13);

  v19 = objc_msgSend_debugEffects(v4, v15, v16, v17, v18);
  objc_msgSend_minusSet_(v14, v20, v21, v22, v23, v19);

  v28 = objc_msgSend_copy(v14, v24, v25, v26, v27);

  return v28;
}

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end