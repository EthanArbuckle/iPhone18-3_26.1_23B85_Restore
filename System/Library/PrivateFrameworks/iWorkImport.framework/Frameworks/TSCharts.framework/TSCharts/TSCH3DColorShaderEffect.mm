@interface TSCH3DColorShaderEffect
- (void)injectCommonShaderInto:(id)into context:(id)context;
@end

@implementation TSCH3DColorShaderEffect

- (void)injectCommonShaderInto:(id)into context:(id)context
{
  intoCopy = into;
  objc_msgSend_addFragmentOutcome_statement_(intoCopy, v4, v5, v6, v7, qword_280A464B8, @"tsch_vec4(tsch_vec3(0.66), 1.0)");
  objc_msgSend_addConclusion_statement_(intoCopy, v8, v9, v10, v11, qword_280A46758, @"@@", qword_280A464B8);
}

@end