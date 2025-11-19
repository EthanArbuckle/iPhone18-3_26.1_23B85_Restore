@interface TSCH3DStrokePatternShaderEffect
+ (id)variableStrokeTexture;
- (id)variableStrokeTexture;
- (void)addVariables:(id)a3;
- (void)injectCommonShaderInto:(id)a3 context:(id)a4;
- (void)uploadData:(id)a3 effectsStates:(id)a4;
@end

@implementation TSCH3DStrokePatternShaderEffect

+ (id)variableStrokeTexture
{
  if (qword_280A46B00 != -1)
  {
    sub_2764A6E90();
  }

  v3 = qword_280A46AF8;

  return v3;
}

- (id)variableStrokeTexture
{
  v2 = objc_opt_class();

  return objc_msgSend_variableStrokeTexture(v2, v3, v4, v5, v6);
}

- (void)addVariables:(id)a3
{
  v13 = a3;
  v8 = objc_msgSend_variableStrokeTexture(self, v4, v5, v6, v7);
  objc_msgSend_addUniformVariable_(v13, v9, v10, v11, v12, v8);
}

- (void)injectCommonShaderInto:(id)a3 context:(id)a4
{
  v41 = a3;
  v6 = a4;
  v11 = objc_msgSend_variablePrefilterLineColor(TSCH3DPrefilteredLineShaderEffect, v7, v8, v9, v10);
  v16 = objc_msgSend_variablePrefilterBoxTextureCoordinate(TSCH3DPrefilteredLineShaderEffect, v12, v13, v14, v15);
  v21 = objc_msgSend_variableStrokeTexture(self, v17, v18, v19, v20);
  v26 = objc_msgSend_textureFunctionNameForVariable_projective_(v6, v22, v23, v24, v25, v21, 0);

  v31 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v27, v28, v29, v30, @"tsch_vec4(@@.rgb, @@.a*%@(@@, fract(@@.yz)).a)", v26);
  v36 = objc_msgSend_variableStrokeTexture(self, v32, v33, v34, v35);
  objc_msgSend_addFragmentDeclaration_statement_(v41, v37, v38, v39, v40, v11, v31, v11, v11, v36, v16);
}

- (void)uploadData:(id)a3 effectsStates:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = objc_msgSend_stateSharingID(self, v8, v9, v10, v11);
  v13 = sub_27621645C(v7, v12);

  v18 = objc_msgSend_variableStrokeTexture(self, v14, v15, v16, v17);
  v23 = v13;
  objc_msgSend_uniform_ivec1_(v6, v19, v20, v21, v22, v18, &v23);
}

@end