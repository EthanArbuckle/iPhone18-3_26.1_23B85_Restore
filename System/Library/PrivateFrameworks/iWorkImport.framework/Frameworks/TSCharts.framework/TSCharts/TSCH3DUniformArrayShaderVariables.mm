@interface TSCH3DUniformArrayShaderVariables
+ (id)variablesWithPrefix:(id)prefix arraySize:(unint64_t)size;
- (TSCH3DUniformArrayShaderVariables)initWithPrefix:(id)prefix arraySize:(unint64_t)size;
- (id)p_formatVariableName:(id)name;
- (id)variableAtIndex:(unint64_t)index name:(id)name;
- (id)variableForName:(id)name;
- (void)addArrayName:(id)name type:(id)type;
- (void)addUniformsToShaderProgram:(id)program size:(unint64_t)size;
@end

@implementation TSCH3DUniformArrayShaderVariables

+ (id)variablesWithPrefix:(id)prefix arraySize:(unint64_t)size
{
  prefixCopy = prefix;
  v7 = [self alloc];
  v12 = objc_msgSend_initWithPrefix_arraySize_(v7, v8, v9, v10, v11, prefixCopy, size);

  return v12;
}

- (TSCH3DUniformArrayShaderVariables)initWithPrefix:(id)prefix arraySize:(unint64_t)size
{
  prefixCopy = prefix;
  v13.receiver = self;
  v13.super_class = TSCH3DUniformArrayShaderVariables;
  v8 = [(TSCH3DUniformArrayShaderVariables *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_prefix, prefix);
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    variables = v9->_variables;
    v9->_variables = v10;

    v9->_arraySize = size;
  }

  return v9;
}

- (id)variableForName:(id)name
{
  v7 = objc_msgSend_objectForKey_(self->_variables, a2, v3, v4, v5, name);
  if (!v7)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, "[TSCH3DUniformArrayShaderVariables variableForName:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DUniformArrayShaderVariables.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 39, 0, "invalid nil value for '%{public}s'", "result");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  return v7;
}

- (id)p_formatVariableName:(id)name
{
  v6 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, v3, v4, v5, @"%@%@", self->_prefix, name);

  return v6;
}

- (void)addArrayName:(id)name type:(id)type
{
  nameCopy = name;
  typeCopy = type;
  v11 = objc_msgSend_p_formatVariableName_(self, v7, v8, v9, v10, nameCopy);
  v16 = objc_msgSend_variableWithName_type_precision_arraySize_shaderType_isSpecial_generic_(TSCH3DShaderVariable, v12, v13, v14, v15, v11, typeCopy, @"mediump", self->_arraySize, 3, 0, 0);

  objc_msgSend_setVariable_forName_(self, v17, v18, v19, v20, v16, nameCopy);
}

- (id)variableAtIndex:(unint64_t)index name:(id)name
{
  v9 = objc_msgSend_variableForName_(self, a2, v4, v5, v6, name);
  if (!v9)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v10, v11, v12, "[TSCH3DUniformArrayShaderVariables variableAtIndex:name:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DUniformArrayShaderVariables.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 67, 0, "invalid nil value for '%{public}s'", "array");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  v28 = objc_msgSend_variableAtIndex_(v9, v8, v10, v11, v12, index);

  return v28;
}

- (void)addUniformsToShaderProgram:(id)program size:(unint64_t)size
{
  v35 = *MEMORY[0x277D85DE8];
  programCopy = program;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = self->_variables;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, v9, v10, v11, &v30, v34, 16);
  if (v13)
  {
    v17 = *v31;
    do
    {
      v18 = 0;
      do
      {
        if (*v31 != v17)
        {
          objc_enumerationMutation(v7);
        }

        v20 = objc_msgSend_objectForKey_(self->_variables, v12, v14, v15, v16, *(*(&v30 + 1) + 8 * v18), v30);
        if (size)
        {
          v24 = 0;
          do
          {
            v25 = objc_msgSend_variableAtIndex_(v20, v19, v21, v22, v23, v24);
            objc_msgSend_addUniformVariable_(programCopy, v26, v27, v28, v29, v25);

            ++v24;
          }

          while (size != v24);
        }

        ++v18;
      }

      while (v18 != v13);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v12, v14, v15, v16, &v30, v34, 16);
    }

    while (v13);
  }
}

@end