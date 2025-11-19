@interface TSCH3DOnePassBlurShaderEffect
+ (id)variableBlurTexCoord;
+ (id)variablePixelSize;
- (id)variableBlurTexCoord;
- (id)variablePixelSize;
- (id)variableTexture;
- (void)addVariables:(id)a3;
- (void)injectCommonShaderInto:(id)a3 context:(id)a4;
- (void)uploadData:(id)a3 effectsStates:(id)a4;
@end

@implementation TSCH3DOnePassBlurShaderEffect

+ (id)variableBlurTexCoord
{
  if (qword_280A47BF8 != -1)
  {
    sub_2764A87E8();
  }

  v3 = qword_280A47BF0;

  return v3;
}

- (id)variableBlurTexCoord
{
  v2 = objc_opt_class();

  return objc_msgSend_variableBlurTexCoord(v2, v3, v4, v5, v6);
}

+ (id)variablePixelSize
{
  if (qword_280A47C08 != -1)
  {
    sub_2764A87FC();
  }

  v3 = qword_280A47C00;

  return v3;
}

- (id)variablePixelSize
{
  v2 = objc_opt_class();

  return objc_msgSend_variablePixelSize(v2, v3, v4, v5, v6);
}

- (id)variableTexture
{
  v2 = objc_opt_class();

  return objc_msgSend_variableTexture(v2, v3, v4, v5, v6);
}

- (void)addVariables:(id)a3
{
  v26 = a3;
  objc_msgSend_addAttributeVariable_(v26, v4, v5, v6, v7, qword_280A465D8);
  v12 = objc_msgSend_variableTexture(self, v8, v9, v10, v11);
  objc_msgSend_addUniformVariable_(v26, v13, v14, v15, v16, v12);

  v21 = objc_msgSend_variablePixelSize(self, v17, v18, v19, v20);
  objc_msgSend_addUniformVariable_(v26, v22, v23, v24, v25, v21);
}

- (void)injectCommonShaderInto:(id)a3 context:(id)a4
{
  v93 = a3;
  v92 = a4;
  if ((atomic_load_explicit(qword_280A47C10, memory_order_acquire) & 1) == 0)
  {
    sub_2764A8810();
  }

  objc_msgSend_addVertexDeclarationWithFormat_(v93, v6, v7, v8, v9, @"tsch_mediump_vec2 tc = @@.xy;", qword_280A465D8);
  v14 = 0;
  v15 = &xmmword_280A47C20 + 1;
  do
  {
    v16 = objc_msgSend_variableBlurTexCoord(self, v10, v11, v12, v13);
    v21 = objc_msgSend_variableAtIndex_(v16, v17, v18, v19, v20, v14);
    v24 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v22, *(v15 - 1), *v15, v23, @"tc + tsch_vec2(%.1f, %.1f) * @@", *(v15 - 1), *v15);
    v29 = objc_msgSend_variablePixelSize(self, v25, v26, v27, v28);
    objc_msgSend_addVertexDeclaration_statement_(v93, v30, v31, v32, v33, v21, v24, v29);

    ++v14;
    v15 += 2;
  }

  while (v14 != 8);
  v34 = objc_msgSend_variableTexture(self, v10, v11, v12, v13);
  v39 = objc_msgSend_textureFunctionNameForVariable_projective_(v92, v35, v36, v37, v38, v34, 0);

  v44 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v40, v41, v42, v43, @"const tsch_mediump_float weight = 1.0/%f", 0x4022000000000000);;
  objc_msgSend_addFragmentDeclaration_(v93, v45, v46, v47, v48, v44);

  v53 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v49, v50, v51, v52, @"tsch_mediump_vec4 blurColor = %@(@@, @@.xy)", v39);
  v58 = objc_msgSend_variableTexture(self, v54, v55, v56, v57);
  objc_msgSend_addFragmentDeclarationWithFormat_(v93, v59, v60, v61, v62, v53, v58, qword_280A465D8);

  for (i = 0; i != 8; ++i)
  {
    v68 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v63, v64, v65, v66, @"blurColor.a += %@(@@, @@).a", v39);;
    v73 = objc_msgSend_variableTexture(self, v69, v70, v71, v72);
    v78 = objc_msgSend_variableBlurTexCoord(self, v74, v75, v76, v77);
    v83 = objc_msgSend_variableAtIndex_(v78, v79, v80, v81, v82, i);
    objc_msgSend_addFragmentDeclarationWithFormat_(v93, v84, v85, v86, v87, v68, v73, v83);
  }

  objc_msgSend_addFragmentDeclaration_(v93, v63, v64, v65, v66, @"blurColor.a *= weight;");
  objc_msgSend_addConclusion_statement_(v93, v88, v89, v90, v91, qword_280A46758, @"blurColor");
}

- (void)uploadData:(id)a3 effectsStates:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = objc_msgSend_stateSharingID(TSCH3DOnePassBlurShaderEffect, v8, v9, v10, v11);
  sub_276359CC4(v7, v12, &v22);

  v17 = objc_msgSend_variablePixelSize(self, v13, v14, v15, v16);
  objc_msgSend_uniform_vec2_(v6, v18, v19, v20, v21, v17, &v22);
}

@end