@interface TSCH3DFixedFunctionShaderEffect
- (void)injectCommonShaderInto:(id)a3 context:(id)a4;
- (void)injectDiffuseToProgram:(id)a3;
@end

@implementation TSCH3DFixedFunctionShaderEffect

- (void)injectDiffuseToProgram:(id)a3
{
  v11 = a3;
  objc_msgSend_addResolution_statement_(v11, v3, v4, v5, v6, qword_280A465C0, @"clamp(tsch_vec4(@@.rgb + @@.rgb + @@.rgb * @@.rgb, @@.a), 0.0, 1.0)", qword_280A46558, qword_280A46438, qword_280A465A8, qword_280A465B8, qword_280A465A8);
  objc_msgSend_addResolution_statement_(v11, v7, v8, v9, v10, qword_280A465A0, @"@@ * @@", qword_280A465D0, qword_280A465C0);
}

- (void)injectCommonShaderInto:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_msgSend_addResolution_statement_(v6, v8, v9, v10, v11, qword_280A46448);
  objc_msgSend_addResolution_statement_(v6, v12, v13, v14, v15, qword_280A465B8);
  objc_msgSend_addResolution_statement_(v6, v16, v17, v18, v19, qword_280A46648);
  v20.receiver = self;
  v20.super_class = TSCH3DFixedFunctionShaderEffect;
  [(TSCH3DPhongLikeShaderEffect *)&v20 injectCommonShaderInto:v6 context:v7];
}

@end