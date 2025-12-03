@interface TSCH3DShaderArrayElementVariable
+ (id)variableWithParentVariable:(id)variable index:(unint64_t)index;
- (TSCH3DShaderArrayElementVariable)initWithParentVariable:(id)variable index:(unint64_t)index;
@end

@implementation TSCH3DShaderArrayElementVariable

+ (id)variableWithParentVariable:(id)variable index:(unint64_t)index
{
  variableCopy = variable;
  v7 = [self alloc];
  v12 = objc_msgSend_initWithParentVariable_index_(v7, v8, v9, v10, v11, variableCopy, index);

  return v12;
}

- (TSCH3DShaderArrayElementVariable)initWithParentVariable:(id)variable index:(unint64_t)index
{
  variableCopy = variable;
  v7 = MEMORY[0x277CCACA8];
  v12 = objc_msgSend_name(variableCopy, v8, v9, v10, v11);
  v17 = objc_msgSend_stringWithFormat_(v7, v13, v14, v15, v16, @"%@%lu", v12, index);
  v22 = objc_msgSend_type(variableCopy, v18, v19, v20, v21);
  v27 = objc_msgSend_precision(variableCopy, v23, v24, v25, v26);
  v32 = objc_msgSend_shaderType(variableCopy, v28, v29, v30, v31);
  isSpecial = objc_msgSend_isSpecial(variableCopy, v33, v34, v35, v36);
  v42 = objc_msgSend_genericName(variableCopy, v38, v39, v40, v41);
  v45.receiver = self;
  v45.super_class = TSCH3DShaderArrayElementVariable;
  v43 = [(TSCH3DShaderVariable *)&v45 initWithName:v17 type:v22 precision:v27 arraySize:0 shaderType:v32 isSpecial:isSpecial generic:v42];

  if (v43)
  {
    objc_storeWeak(&v43->_parent, variableCopy);
    v43->_index = index;
  }

  return v43;
}

@end