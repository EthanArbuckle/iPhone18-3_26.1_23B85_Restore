@interface TSCH3DLightingPackageShaderEffect
- (void)injectCommonShaderInto:(id)a3 context:(id)a4;
@end

@implementation TSCH3DLightingPackageShaderEffect

- (void)injectCommonShaderInto:(id)a3 context:(id)a4
{
  v24 = a3;
  objc_msgSend_addDeclaration_type_statement_(v24, v4, v5, v6, v7, qword_280A46450, 1, @"tsch_vec4(tsch_vec3(0.2), 1.0)");
  objc_msgSend_addDeclaration_type_statement_(v24, v8, v9, v10, v11, qword_280A46440, 1, @"tsch_vec4(tsch_vec3(0.2), 1.0)");
  objc_msgSend_addDeclaration_type_statement_(v24, v12, v13, v14, v15, qword_280A46448, 1, @"tsch_vec4(0.0)");
  objc_msgSend_addDeclaration_type_statement_(v24, v16, v17, v18, v19, qword_280A465B8, 1, @"tsch_vec4(0.0)");
  objc_msgSend_addDeclaration_type_statement_(v24, v20, v21, v22, v23, qword_280A46648, 1, @"tsch_vec4(0.0)");
}

@end