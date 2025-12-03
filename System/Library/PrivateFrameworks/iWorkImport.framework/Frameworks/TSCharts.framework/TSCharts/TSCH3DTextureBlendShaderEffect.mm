@interface TSCH3DTextureBlendShaderEffect
+ (id)_singletonAlloc;
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)effect;
+ (id)variableBlendFactor;
+ (id)variableBlendTexture;
+ (void)setBlendFactor:(float)factor unit:(int64_t)unit effectsStates:(id)states;
- (id)variableBlendFactor;
- (id)variableBlendTexture;
- (void)addVariables:(id)variables;
- (void)injectCommonShaderInto:(id)into context:(id)context;
- (void)uploadData:(id)data effectsStates:(id)states;
@end

@implementation TSCH3DTextureBlendShaderEffect

+ (id)_singletonAlloc
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___TSCH3DTextureBlendShaderEffect;
  return objc_msgSendSuper2(&v3, sel_allocWithZone_, 0);
}

+ (id)effect
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_27636F3BC;
  block[3] = &unk_27A6B6250;
  block[4] = self;
  if (qword_280A47CA8 != -1)
  {
    dispatch_once(&qword_280A47CA8, block);
  }

  v2 = qword_280A47CA0;

  return v2;
}

+ (id)allocWithZone:(_NSZone *)zone
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "+[TSCH3DTextureBlendShaderEffect allocWithZone:]");
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTextureBlendShaderEffect.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 35, 0, "Don't alloc a singleton");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  return 0;
}

+ (id)variableBlendFactor
{
  if (qword_280A47CB8 != -1)
  {
    sub_2764A8968();
  }

  v3 = qword_280A47CB0;

  return v3;
}

- (id)variableBlendFactor
{
  v2 = objc_opt_class();

  return objc_msgSend_variableBlendFactor(v2, v3, v4, v5, v6);
}

+ (id)variableBlendTexture
{
  if (qword_280A47CC8[0] != -1)
  {
    sub_2764A897C();
  }

  v3 = qword_280A47CC0;

  return v3;
}

- (id)variableBlendTexture
{
  v2 = objc_opt_class();

  return objc_msgSend_variableBlendTexture(v2, v3, v4, v5, v6);
}

+ (void)setBlendFactor:(float)factor unit:(int64_t)unit effectsStates:(id)states
{
  statesCopy = states;
  *&v23 = factor;
  v12 = objc_msgSend_stateSharingID(TSCH3DTextureBlendShaderEffect, v8, v9, v10, v11, v23, unit);
  v13 = statesCopy;
  v18 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v14, v15, v16, v17, &v23, "{TextureBlendShaderEffectState=fq}");
  objc_msgSend_setValueState_forKey_(v13, v19, v20, v21, v22, v18, v12);
}

- (void)addVariables:(id)variables
{
  variablesCopy = variables;
  v8 = objc_msgSend_variableBlendFactor(self, v4, v5, v6, v7);
  objc_msgSend_addUniformVariable_(variablesCopy, v9, v10, v11, v12, v8);

  v17 = objc_msgSend_variableBlendTexture(self, v13, v14, v15, v16);
  objc_msgSend_addUniformVariable_(variablesCopy, v18, v19, v20, v21, v17);

  objc_msgSend_addAttributeVariable_(variablesCopy, v22, v23, v24, v25, qword_280A465D8);
}

- (void)injectCommonShaderInto:(id)into context:(id)context
{
  intoCopy = into;
  contextCopy = context;
  v11 = objc_msgSend_variableBlendTexture(self, v7, v8, v9, v10);
  v16 = objc_msgSend_textureFunctionNameForVariable_projective_(contextCopy, v12, v13, v14, v15, v11, 0);

  v17 = qword_280A464B8;
  v22 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v18, v19, v20, v21, @"@@ * (1.0 - @@) + %@(@@, @@.xy) * @@", v16);
  v23 = qword_280A464B8;
  v28 = objc_msgSend_variableBlendFactor(self, v24, v25, v26, v27);
  v33 = objc_msgSend_variableBlendTexture(self, v29, v30, v31, v32);
  v34 = qword_280A465D8;
  v39 = objc_msgSend_variableBlendFactor(self, v35, v36, v37, v38);
  objc_msgSend_addOutcome_statement_(intoCopy, v40, v41, v42, v43, v17, v22, v23, v28, v33, v34, v39);
}

- (void)uploadData:(id)data effectsStates:(id)states
{
  dataCopy = data;
  statesCopy = states;
  v12 = objc_msgSend_stateSharingID(TSCH3DTextureBlendShaderEffect, v8, v9, v10, v11);
  v76 = 0;
  v77 = 0;
  v17 = objc_msgSend_valueStateForKey_(statesCopy, v13, v14, v15, v16, v12);
  v18 = v17;
  if (v17)
  {
    v19 = v17;
    v24 = objc_msgSend_objCType(v19, v20, v21, v22, v23);
    if (strcmp(v24, "{TextureBlendShaderEffectState=fq}") || (sizep = 0, NSGetSizeAndAlignment(v24, &sizep, 0), sizep != 16))
    {
      v29 = MEMORY[0x277D81150];
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "T TSCH3D::CTypeFromEffectsStates(TSCH3DShaderEffectsStates *__strong, __unsafe_unretained Class) [T = (anonymous namespace)::TextureBlendShaderEffectState]");
      v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, v32, v33, v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderEffectsStates.h");
      v36 = v18;
      v41 = objc_msgSend_objCType(v36, v37, v38, v39, v40);
      v42 = v18;
      v47 = objc_msgSend_objCType(v42, v43, v44, v45, v46);
      sizep = 0;
      NSGetSizeAndAlignment(v47, &sizep, 0);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v48, v49, v50, v51, v30, v35, 88, 0, "type mismatch between objCType %s size %lu and template %s size %zu", v41, sizep, "{TextureBlendShaderEffectState=fq}", 16);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v52, v53, v54, v55);
    }

    objc_msgSend_getValue_(v18, v25, v26, v27, v28, &v76);
  }

  v57 = v76;
  v56 = v77;

  v62 = objc_msgSend_variableBlendFactor(self, v58, v59, v60, v61);
  LODWORD(v76) = v57;
  objc_msgSend_uniform_vec1_(dataCopy, v63, v64, v65, v66, v62, &v76);

  v71 = objc_msgSend_variableBlendTexture(self, v67, v68, v69, v70);
  LODWORD(v76) = v56;
  objc_msgSend_uniform_ivec1_(dataCopy, v72, v73, v74, v75, v71, &v76);
}

@end