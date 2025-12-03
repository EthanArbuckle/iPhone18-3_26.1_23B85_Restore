@interface TSCH3DVertexShaderEffect
- (void)injectCommonShaderInto:(id)into context:(id)context;
@end

@implementation TSCH3DVertexShaderEffect

- (void)injectCommonShaderInto:(id)into context:(id)context
{
  intoCopy = into;
  objc_msgSend_addTemporary_statement_(intoCopy, v4, v5, v6, v7, qword_280A46490, @"@@ * tsch_vec4(@@, 1.0)", qword_280A464D8, qword_280A46550);
  objc_msgSend_addTemporary_statement_(intoCopy, v8, v9, v10, v11, qword_280A46498, @"@@.xyz / @@.w", qword_280A46490, qword_280A46490);
  objc_msgSend_addConclusion_statement_(intoCopy, v12, v13, v14, v15, qword_280A46750, @"@@ * tsch_vec4(@@, 1.0)", qword_280A464E0, qword_280A46550);
}

@end