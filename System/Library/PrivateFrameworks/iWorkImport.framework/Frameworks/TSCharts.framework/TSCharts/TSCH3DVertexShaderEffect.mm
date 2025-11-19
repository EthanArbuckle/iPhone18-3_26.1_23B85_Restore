@interface TSCH3DVertexShaderEffect
- (void)injectCommonShaderInto:(id)a3 context:(id)a4;
@end

@implementation TSCH3DVertexShaderEffect

- (void)injectCommonShaderInto:(id)a3 context:(id)a4
{
  v16 = a3;
  objc_msgSend_addTemporary_statement_(v16, v4, v5, v6, v7, qword_280A46490, @"@@ * tsch_vec4(@@, 1.0)", qword_280A464D8, qword_280A46550);
  objc_msgSend_addTemporary_statement_(v16, v8, v9, v10, v11, qword_280A46498, @"@@.xyz / @@.w", qword_280A46490, qword_280A46490);
  objc_msgSend_addConclusion_statement_(v16, v12, v13, v14, v15, qword_280A46750, @"@@ * tsch_vec4(@@, 1.0)", qword_280A464E0, qword_280A46550);
}

@end