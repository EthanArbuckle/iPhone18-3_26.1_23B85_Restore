@interface TSCH3DGaussianBlurShaderEffect
+ (id)variableAccum;
+ (id)variableTapUnit;
+ (void)setTapUnit:(tvec2<float>)a3 effectsStates:(id)a4;
- (TSCH3DGaussianBlurShaderEffect)init;
- (id)variableAccum;
- (id)variableTapUnit;
- (id)variableTexture;
- (void)addVariables:(id)a3;
- (void)injectCommonShaderInto:(id)a3 context:(id)a4;
- (void)uploadData:(id)a3 effectsStates:(id)a4;
@end

@implementation TSCH3DGaussianBlurShaderEffect

+ (id)variableAccum
{
  if (qword_280A47C68 != -1)
  {
    sub_2764A8918();
  }

  v3 = qword_280A47C60;

  return v3;
}

- (id)variableAccum
{
  v2 = objc_opt_class();

  return objc_msgSend_variableAccum(v2, v3, v4, v5, v6);
}

+ (id)variableTapUnit
{
  if (qword_280A47C78 != -1)
  {
    sub_2764A892C();
  }

  v3 = qword_280A47C70;

  return v3;
}

- (id)variableTapUnit
{
  v2 = objc_opt_class();

  return objc_msgSend_variableTapUnit(v2, v3, v4, v5, v6);
}

- (TSCH3DGaussianBlurShaderEffect)init
{
  v11.receiver = self;
  v11.super_class = TSCH3DGaussianBlurShaderEffect;
  v2 = [(TSCH3DGaussianBlurShaderEffect *)&v11 init];
  if (v2)
  {
    v3 = [TSCH3DShaderVariable alloc];
    isSpecial_generic = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v3, v4, v5, v6, v7, @"SamplingTexcoords", @"vec2", @"mediump", 4, 3, 0, 0);
    samplingTexcoords = v2->_samplingTexcoords;
    v2->_samplingTexcoords = isSpecial_generic;
  }

  return v2;
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

  v21 = objc_msgSend_variableTapUnit(self, v17, v18, v19, v20);
  objc_msgSend_addUniformVariable_(v26, v22, v23, v24, v25, v21);
}

- (void)injectCommonShaderInto:(id)a3 context:(id)a4
{
  v97 = a3;
  v6 = a4;
  v11 = objc_msgSend_variableAccum(self, v7, v8, v9, v10);
  v96 = objc_msgSend_variableTapUnit(self, v12, v13, v14, v15);
  v20 = objc_msgSend_variableTexture(self, v16, v17, v18, v19);
  v94 = v6;
  v25 = objc_msgSend_textureFunctionNameForVariable_projective_(v6, v21, v22, v23, v24, v20, 0);

  v95 = v25;
  v30 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v26, v27, v28, v29, @"%@(@@, @@.xy) * %.8f", v25, 0x3FCD0F38C0000000);
  v31 = MEMORY[0x277CBEA60];
  v36 = objc_msgSend_variableTexture(self, v32, v33, v34, v35);
  v41 = objc_msgSend_arrayWithObjects_(v31, v37, v38, v39, v40, v36, qword_280A465D8, 0);
  objc_msgSend_assignVariable_statement_substitutes_type_toSection_(v97, v42, v43, v44, v45, v11, v30, v41, 2, 0);

  v50 = -1;
  v51 = 1;
  do
  {
    v52 = 0;
    v53 = v51;
    v54 = v50 + 1;
    do
    {
      v55 = *(&unk_2764D70E0 + v52 + 4);
      v57 = objc_msgSend_variableAtIndex_(self->_samplingTexcoords, v46, v47, v48, v49, v54);
      v60 = -v55;
      if ((v53 & 1) == 0)
      {
        v60 = v55;
      }

      v61 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v56, v60, v58, v59, @"@@.xy + @@ * %.8f", v60);
      v66 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v62, v63, v64, v65, qword_280A465D8, v96, 0);
      objc_msgSend_assignVariable_statement_substitutes_type_toSection_(v97, v67, v68, v69, v70, v57, v61, v66, 1, 4);

      v74 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v71, *(&unk_2764D70EC + v52 + 4), v72, v73, @"@@ + %@(@@, @@) * %.8f", v95, *(&unk_2764D70EC + v52 + 4));
      v75 = MEMORY[0x277CBEA60];
      v80 = objc_msgSend_variableTexture(self, v76, v77, v78, v79);
      v85 = objc_msgSend_arrayWithObjects_(v75, v81, v82, v83, v84, v11, v80, v57, 0);
      objc_msgSend_assignVariable_statement_substitutes_type_toSection_(v97, v86, v87, v88, v89, v11, v74, v85, 2, 0);

      v52 += 4;
      ++v54;
    }

    while (v52 != 8);
    v51 = 0;
    v50 = 1;
  }

  while ((v53 & 1) != 0);
  objc_msgSend_addOutcome_statement_(v97, v46, v47, v48, v49, qword_280A464B8, @"@@", v11);
  objc_msgSend_addConclusion_statement_(v97, v90, v91, v92, v93, qword_280A46758, @"@@", qword_280A464B8);
}

- (void)uploadData:(id)a3 effectsStates:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = objc_msgSend_stateSharingID(TSCH3DGaussianBlurShaderEffect, v8, v9, v10, v11);
  sub_2761AC6E8(v7, v12, &v25, v13, v14, v15);

  v20 = objc_msgSend_variableTapUnit(self, v16, v17, v18, v19);
  objc_msgSend_uniform_vec2_(v6, v21, v22, v23, v24, v20, &v25);
}

+ (void)setTapUnit:(tvec2<float>)a3 effectsStates:(id)a4
{
  v10 = a4;
  v9 = objc_msgSend_stateSharingID(TSCH3DGaussianBlurShaderEffect, v5, v6, v7, v8);
  sub_2761AC2E4(v10, v9, *&a3);
}

@end