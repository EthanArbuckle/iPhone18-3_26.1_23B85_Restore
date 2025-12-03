@interface TSCH3DShaderVariable
+ (TSCH3DShaderVariable)variableWithName:(id)name type:(id)type precision:(id)precision arraySize:(unint64_t)size shaderType:(TSCH3DShaderType)shaderType isSpecial:(BOOL)special generic:(id)generic;
- (BOOL)isTexture;
- (NSString)commonShaderType;
- (TSCH3DShaderType)initialLinkType;
- (TSCH3DShaderVariable)initWithName:(id)name type:(id)type precision:(id)precision arraySize:(unint64_t)size shaderType:(TSCH3DShaderType)shaderType isSpecial:(BOOL)special generic:(id)generic;
- (id)description;
- (id)variableAtIndex:(unint64_t)index;
- (unint64_t)componentCount;
@end

@implementation TSCH3DShaderVariable

+ (TSCH3DShaderVariable)variableWithName:(id)name type:(id)type precision:(id)precision arraySize:(unint64_t)size shaderType:(TSCH3DShaderType)shaderType isSpecial:(BOOL)special generic:(id)generic
{
  specialCopy = special;
  nameCopy = name;
  typeCopy = type;
  precisionCopy = precision;
  genericCopy = generic;
  v19 = [self alloc];
  isSpecial_generic = objc_msgSend_initWithName_type_precision_arraySize_shaderType_isSpecial_generic_(v19, v20, v21, v22, v23, nameCopy, typeCopy, precisionCopy, size, shaderType._value, specialCopy, genericCopy);

  return isSpecial_generic;
}

- (TSCH3DShaderVariable)initWithName:(id)name type:(id)type precision:(id)precision arraySize:(unint64_t)size shaderType:(TSCH3DShaderType)shaderType isSpecial:(BOOL)special generic:(id)generic
{
  nameCopy = name;
  typeCopy = type;
  precisionCopy = precision;
  genericCopy = generic;
  v39.receiver = self;
  v39.super_class = TSCH3DShaderVariable;
  v18 = [(TSCH3DShaderVariable *)&v39 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_name, name);
    objc_storeStrong(&v19->_type, type);
    objc_storeStrong(&v19->_precision, precision);
    v19->_arraySize = size;
    v19->_shaderType = shaderType;
    v19->_isSpecial = special;
    objc_storeStrong(&v19->_genericName, generic);
    v19->_componentCount = 0x7FFFFFFFFFFFFFFFLL;
    if (v19->_arraySize)
    {
      v25 = objc_msgSend_array(MEMORY[0x277CBEB18], v20, v21, v22, v23, typeCopy, nameCopy);
      if (v19->_arraySize)
      {
        v29 = 0;
        do
        {
          v30 = objc_msgSend_variableWithParentVariable_index_(TSCH3DShaderArrayElementVariable, v24, v26, v27, v28, v19, v29);
          objc_msgSend_addObject_(v25, v31, v32, v33, v34, v30);

          ++v29;
        }

        while (v29 < v19->_arraySize);
      }

      elements = v19->_elements;
      v19->_elements = v25;
    }
  }

  return v19;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v25.receiver = self;
  v25.super_class = TSCH3DShaderVariable;
  v4 = [(TSCH3DShaderVariable *)&v25 description];
  name = self->_name;
  type = self->_type;
  precision = self->_precision;
  arraySize = self->_arraySize;
  v13 = sub_27619B234(&self->_shaderType, v9, v10, v11, v12);
  v18 = objc_msgSend_name(self->_genericName, v14, v15, v16, v17);
  v23 = objc_msgSend_stringWithFormat_(v3, v19, v20, v21, v22, @"%@(%@, %@, %@, %lu, %@, %@)", v4, name, type, precision, arraySize, v13, v18);

  return v23;
}

- (BOOL)isTexture
{
  v6 = objc_msgSend_type(self, a2, v2, v3, v4);
  if (objc_msgSend_isEqual_(v6, v7, v8, v9, v10, @"sampler2D"))
  {
    isEqual = 1;
  }

  else
  {
    v16 = objc_msgSend_type(self, v11, v12, v13, v14);
    isEqual = objc_msgSend_isEqual_(v16, v17, v18, v19, v20, @"sampler3D");
  }

  return isEqual;
}

- (NSString)commonShaderType
{
  v6 = objc_msgSend_precision(self, a2, v2, v3, v4);
  v11 = objc_msgSend_type(self, v7, v8, v9, v10);
  if (objc_msgSend_length(v6, v12, v13, v14, v15))
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v16, v17, v18, v19, @"tsch_%@_%@", v6, v11);
  }

  else
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v16, v17, v18, v19, @"tsch_%@", v11);
  }
  v20 = ;

  return v20;
}

- (unint64_t)componentCount
{
  result = self->_componentCount;
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = objc_msgSend_type(self, a2, v2, v3, v4);
    if (objc_msgSend_hasPrefix_(v7, v8, v9, v10, v11, @"vec"))
    {
      v16 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v7, v12, v13, v14, v15, @"vec", &stru_288528678);
      v21 = objc_msgSend_integerValue(v16, v17, v18, v19, v20);
    }

    else
    {
      if (!objc_msgSend_hasPrefix_(v7, v12, v13, v14, v15, @"mat"))
      {
        if (objc_msgSend_isEqual_(v7, v22, v23, v24, v25, @"float") & 1) != 0 || (objc_msgSend_isEqual_(v7, v50, v51, v52, v53, @"BOOL"))
        {
          v21 = 1;
          goto LABEL_11;
        }

        v58 = MEMORY[0x277D81150];
        v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, v55, v56, v57, "[TSCH3DShaderVariable componentCount]");
        v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, v61, v62, v63, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderVariable.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v58, v65, v66, v67, v68, v59, v64, 143, 0, "Unsupported variable type %@", v7);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v69, v70, v71, v72);
        v21 = 0;
        goto LABEL_7;
      }

      v16 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v7, v22, v23, v24, v25, @"mat", &stru_288528678);
      v30 = objc_msgSend_integerValue(v16, v26, v27, v28, v29);
      v21 = v30 * v30;
    }

    if ((v21 - 1) < 0x10)
    {
LABEL_11:
      self->_componentCount = v21 & ~(v21 >> 63);

      return self->_componentCount;
    }

LABEL_7:
    v35 = MEMORY[0x277D81150];
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, v32, v33, v34, "[TSCH3DShaderVariable componentCount]");
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, v38, v39, v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderVariable.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v42, v43, v44, v45, v36, v41, 146, 0, "Invalid component count %lu for type %@", v21, v7);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47, v48, v49);
    goto LABEL_11;
  }

  return result;
}

- (TSCH3DShaderType)initialLinkType
{
  if (self->_shaderType._value == 3)
  {
    return 0;
  }

  else
  {
    return self->_shaderType;
  }
}

- (id)variableAtIndex:(unint64_t)index
{
  if (!objc_msgSend_arraySize(self, a2, v3, v4, v5))
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCH3DShaderVariable variableAtIndex:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DShaderVariable.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 158, 0, "cannot get element on non-array variable %@ index %lu", self, index);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  elements = self->_elements;

  return objc_msgSend_objectAtIndexedSubscript_(elements, v8, v9, v10, v11, index);
}

@end