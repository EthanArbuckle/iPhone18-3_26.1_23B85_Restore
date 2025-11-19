@interface TSCH3DLightUniformArrayShaderVariables
- (id)variableAtIndex:(unint64_t)a3 name:(id)a4;
- (void)initializeArrayVariables;
- (void)initializePrefix:(id)a3;
@end

@implementation TSCH3DLightUniformArrayShaderVariables

- (void)initializePrefix:(id)a3
{
  v34 = a3;
  if (self->_variables)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v5, v6, v7, "[TSCH3DLightUniformArrayShaderVariables initializePrefix:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLightUniformArrayShaderVariables.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 29, 0, "expected nil value for '%{public}s'", "_variables");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  v23 = [TSCH3DUniformArrayShaderVariables alloc];
  v28 = objc_msgSend_initWithPrefix_arraySize_(v23, v24, v25, v26, v27, v34, 8);
  variables = self->_variables;
  self->_variables = v28;

  objc_msgSend_initializeArrayVariables(self, v30, v31, v32, v33);
}

- (void)initializeArrayVariables
{
  objc_msgSend_addArrayName_type_(self->_variables, a2, v2, v3, v4, @"Attenuation", @"vec3");
  objc_msgSend_addArrayName_type_(self->_variables, v6, v7, v8, v9, @"AmbientColor", @"vec4");
  objc_msgSend_addArrayName_type_(self->_variables, v10, v11, v12, v13, @"DiffuseColor", @"vec4");
  variables = self->_variables;

  objc_msgSend_addArrayName_type_(variables, v14, v15, v16, v17, @"SpecularColor", @"vec4");
}

- (id)variableAtIndex:(unint64_t)a3 name:(id)a4
{
  v7 = objc_msgSend_variableAtIndex_name_(self->_variables, a2, v4, v5, v6, a3, a4);

  return v7;
}

@end