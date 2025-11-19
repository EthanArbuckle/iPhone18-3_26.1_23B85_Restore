@interface TSCH3DPrefilteredLineShaderEffect
+ (id)variablePrefilterBox;
+ (id)variablePrefilterBoxTexture;
+ (id)variablePrefilterBoxTextureCoordinate;
+ (id)variablePrefilterLineColor;
- (id)variablePrefilterBox;
- (id)variablePrefilterBoxTexture;
- (id)variablePrefilterBoxTextureCoordinate;
- (id)variablePrefilterLineColor;
- (void)addVariables:(id)a3;
- (void)injectCommonShaderInto:(id)a3 context:(id)a4;
- (void)uploadData:(id)a3 effectsStates:(id)a4;
@end

@implementation TSCH3DPrefilteredLineShaderEffect

+ (id)variablePrefilterBox
{
  if (qword_280A46AB0 != -1)
  {
    sub_2764A6E2C();
  }

  v3 = qword_280A46AA8;

  return v3;
}

- (id)variablePrefilterBox
{
  v2 = objc_opt_class();

  return objc_msgSend_variablePrefilterBox(v2, v3, v4, v5, v6);
}

+ (id)variablePrefilterBoxTexture
{
  if (qword_280A46AC0 != -1)
  {
    sub_2764A6E40();
  }

  v3 = qword_280A46AB8;

  return v3;
}

- (id)variablePrefilterBoxTexture
{
  v2 = objc_opt_class();

  return objc_msgSend_variablePrefilterBoxTexture(v2, v3, v4, v5, v6);
}

+ (id)variablePrefilterBoxTextureCoordinate
{
  if (qword_280A46AD0 != -1)
  {
    sub_2764A6E54();
  }

  v3 = qword_280A46AC8;

  return v3;
}

- (id)variablePrefilterBoxTextureCoordinate
{
  v2 = objc_opt_class();

  return objc_msgSend_variablePrefilterBoxTextureCoordinate(v2, v3, v4, v5, v6);
}

+ (id)variablePrefilterLineColor
{
  if (qword_280A46AE0 != -1)
  {
    sub_2764A6E68();
  }

  v3 = qword_280A46AD8;

  return v3;
}

- (id)variablePrefilterLineColor
{
  v2 = objc_opt_class();

  return objc_msgSend_variablePrefilterLineColor(v2, v3, v4, v5, v6);
}

- (void)addVariables:(id)a3
{
  v31 = a3;
  v8 = objc_msgSend_variablePrefilterBox(self, v4, v5, v6, v7);
  objc_msgSend_addAttributeVariable_(v31, v9, v10, v11, v12, v8);

  v17 = objc_msgSend_variablePrefilterBoxTexture(self, v13, v14, v15, v16);
  objc_msgSend_addUniformVariable_(v31, v18, v19, v20, v21, v17);

  v26 = objc_msgSend_variablePrefilterBoxTextureCoordinate(self, v22, v23, v24, v25);
  objc_msgSend_addAttributeVariable_(v31, v27, v28, v29, v30, v26);
}

- (void)injectCommonShaderInto:(id)a3 context:(id)a4
{
  v53 = a3;
  v6 = a4;
  objc_msgSend_addFunctionString_name_(v53, v7, v8, v9, v10, @"tsch_mediump_vec2 prefilterPosition(tsch_mediump_vec2 tc, tsch_mediump_vec4 box) {\n  return -min(tc - box.xy, box.zw - tc) / box.xy;\n}\n", @"prefilterPosition");
  v15 = objc_msgSend_variablePrefilterBoxTexture(self, v11, v12, v13, v14);
  v20 = objc_msgSend_variablePrefilterBoxTextureCoordinate(self, v16, v17, v18, v19);
  v25 = objc_msgSend_variablePrefilterBox(self, v21, v22, v23, v24);
  v30 = objc_msgSend_variablePrefilterLineColor(self, v26, v27, v28, v29);
  v35 = objc_msgSend_textureFunctionNameForVariable_projective_(v6, v31, v32, v33, v34, v15, 0);
  objc_msgSend_addFragmentDeclarationWithFormat_(v53, v36, v37, v38, v39, @"tsch_mediump_vec2 prefilterpos = prefilterPosition(@@.xy,@@);\n", v20, v25);
  v44 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v40, v41, v42, v43, @"tsch_mediump_float prefilteralpha = %@(@@, tsch_vec2(0.0,prefilterpos.x)).r * %@(@@, tsch_vec2(0.0,prefilterpos.y)).r\n", v35, v35);;
  objc_msgSend_addFragmentDeclarationWithFormat_(v53, v45, v46, v47, v48, v44, v15, v15);

  objc_msgSend_addFragmentDeclaration_statement_(v53, v49, v50, v51, v52, v30, @"tsch_vec4(tsch_vec3(1.0), prefilteralpha)");
}

- (void)uploadData:(id)a3 effectsStates:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = objc_msgSend_stateSharingID(self, v8, v9, v10, v11);
  v13 = sub_27621645C(v7, v12);

  v18 = objc_msgSend_variablePrefilterBoxTexture(self, v14, v15, v16, v17);
  v23 = v13;
  objc_msgSend_uniform_ivec1_(v6, v19, v20, v21, v22, v18, &v23);
}

@end