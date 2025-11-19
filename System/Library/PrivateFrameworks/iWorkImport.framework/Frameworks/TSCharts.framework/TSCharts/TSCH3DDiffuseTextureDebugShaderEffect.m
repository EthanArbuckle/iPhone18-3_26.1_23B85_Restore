@interface TSCH3DDiffuseTextureDebugShaderEffect
- (id)variableDiffuseTexture;
- (void)addVariables:(id)a3;
- (void)injectCommonShaderInto:(id)a3 context:(id)a4;
@end

@implementation TSCH3DDiffuseTextureDebugShaderEffect

- (id)variableDiffuseTexture
{
  v2 = objc_opt_class();

  return objc_msgSend_variableTexture(v2, v3, v4, v5, v6);
}

- (void)addVariables:(id)a3
{
  v17 = a3;
  objc_msgSend_addAttributeVariable_(v17, v4, v5, v6, v7, qword_280A465D8);
  v12 = objc_msgSend_variableDiffuseTexture(self, v8, v9, v10, v11);
  objc_msgSend_addUniformVariable_(v17, v13, v14, v15, v16, v12);
}

- (void)injectCommonShaderInto:(id)a3 context:(id)a4
{
  v44 = a3;
  v6 = a4;
  v11 = objc_msgSend_variableDiffuseTexture(self, v7, v8, v9, v10);
  v16 = objc_msgSend_textureFunctionNameForVariable_projective_(v6, v12, v13, v14, v15, v11, 0);

  v17 = qword_280A465D0;
  v22 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v18, v19, v20, v21, @"%@(@@, @@.xy)", v16);
  v27 = objc_msgSend_variableDiffuseTexture(self, v23, v24, v25, v26);
  objc_msgSend_addDeclaration_statement_(v44, v28, v29, v30, v31, v17, v22, v27, qword_280A465D8);

  objc_msgSend_addDeclaration_statement_(v44, v32, v33, v34, v35, qword_280A465A8, @"@@", qword_280A465D0);
  objc_msgSend_addOutcome_statement_(v44, v36, v37, v38, v39, qword_280A464B8, @"@@", qword_280A465A8);
  objc_msgSend_addConclusion_statement_(v44, v40, v41, v42, v43, qword_280A46758, @"tsch_vec4(1.0, @@.gb, 1.0)", qword_280A464B8);
}

@end