@interface TSCH3DColorShaderEffect
- (void)injectCommonShaderInto:(id)a3 context:(id)a4;
@end

@implementation TSCH3DColorShaderEffect

- (void)injectCommonShaderInto:(id)a3 context:(id)a4
{
  v12 = a3;
  objc_msgSend_addFragmentOutcome_statement_(v12, v4, v5, v6, v7, qword_280A464B8, @"tsch_vec4(tsch_vec3(0.66), 1.0)");
  objc_msgSend_addConclusion_statement_(v12, v8, v9, v10, v11, qword_280A46758, @"@@", qword_280A464B8);
}

@end