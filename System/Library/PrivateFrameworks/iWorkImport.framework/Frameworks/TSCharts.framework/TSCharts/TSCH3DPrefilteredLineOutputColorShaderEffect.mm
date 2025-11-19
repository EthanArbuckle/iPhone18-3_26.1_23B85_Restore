@interface TSCH3DPrefilteredLineOutputColorShaderEffect
+ (id)variablePrefilterStrokeColor;
- (id)variablePrefilterStrokeColor;
- (void)addVariables:(id)a3;
- (void)injectCommonShaderInto:(id)a3 context:(id)a4;
- (void)uploadData:(id)a3 effectsStates:(id)a4;
@end

@implementation TSCH3DPrefilteredLineOutputColorShaderEffect

+ (id)variablePrefilterStrokeColor
{
  if (qword_280A46AF0 != -1)
  {
    sub_2764A6E7C();
  }

  v3 = qword_280A46AE8;

  return v3;
}

- (id)variablePrefilterStrokeColor
{
  v2 = objc_opt_class();

  return objc_msgSend_variablePrefilterStrokeColor(v2, v3, v4, v5, v6);
}

- (void)addVariables:(id)a3
{
  v13 = a3;
  v8 = objc_msgSend_variablePrefilterStrokeColor(self, v4, v5, v6, v7);
  objc_msgSend_addUniformVariable_(v13, v9, v10, v11, v12, v8);
}

- (void)injectCommonShaderInto:(id)a3 context:(id)a4
{
  v23 = a3;
  v9 = objc_msgSend_variablePrefilterLineColor(TSCH3DPrefilteredLineShaderEffect, v5, v6, v7, v8);
  v14 = objc_msgSend_variablePrefilterStrokeColor(self, v10, v11, v12, v13);
  objc_msgSend_addOutcome_statement_(v23, v15, v16, v17, v18, qword_280A464B8, @"@@ * @@", v9, v14);
  objc_msgSend_addConclusion_statement_(v23, v19, v20, v21, v22, qword_280A46758, @"@@", qword_280A464B8);
}

- (void)uploadData:(id)a3 effectsStates:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = objc_msgSend_stateSharingID(self, v8, v9, v10, v11);
  sub_276216950(v7, v12, v22);

  v17 = objc_msgSend_variablePrefilterStrokeColor(self, v13, v14, v15, v16);
  objc_msgSend_uniform_vec4_(v6, v18, v19, v20, v21, v17, v22);
}

@end