@interface TSDGLTextureParameter
+ (id)stringWithCurrentTextureParameters;
+ (id)textureParameterWithPName:(unsigned int)name floatParameter:(double)parameter;
+ (id)textureParameterWithPName:(unsigned int)name floatParameters:(double *)parameters count:(unint64_t)count;
+ (id)textureParameterWithPName:(unsigned int)name floatParameters:(double *)parameters count:(unint64_t)count target:(unsigned int)target;
+ (id)textureParameterWithPName:(unsigned int)name integerParameter:(int)parameter;
+ (id)textureParameterWithPName:(unsigned int)name integerParameters:(int *)parameters count:(unint64_t)count;
+ (id)textureParameterWithPName:(unsigned int)name integerParameters:(int *)parameters count:(unint64_t)count target:(unsigned int)target;
- (TSDGLTextureParameter)initWithPName:(unsigned int)name paramCount:(unint64_t)count intData:(int *)data floatData:(double *)floatData target:(unsigned int)target;
- (void)dealloc;
- (void)setGLTextureParameter;
@end

@implementation TSDGLTextureParameter

+ (id)stringWithCurrentTextureParameters
{
  if (qword_280A4C2F8 != -1)
  {
    sub_276808CE0();
  }

  v2 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], a2, 4);
  for (i = 0; i != 16; i += 4)
  {
    params = 0;
    v4 = *(&xmmword_280A4C2E0 + i);
    glGetTexParameteriv(0xDE1u, *(&xmmword_280A4C2E0 + i), &params);
    v5 = qword_280A4C2F0;
    v7 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v6, params);
    v9 = objc_msgSend_objectForKeyedSubscript_(v5, v8, v7);
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = @"UNKNOWN!";
    }

    v12 = MEMORY[0x277CCACA8];
    v13 = qword_280A4C2F0;
    v14 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v10, v4);
    v16 = objc_msgSend_objectForKeyedSubscript_(v13, v15, v14);
    v18 = objc_msgSend_stringWithFormat_(v12, v17, @"%@:%@", v16, v11);
    objc_msgSend_addObject_(v2, v19, v18);
  }

  return objc_msgSend_componentsJoinedByString_(v2, v20, @", ");
}

- (TSDGLTextureParameter)initWithPName:(unsigned int)name paramCount:(unint64_t)count intData:(int *)data floatData:(double *)floatData target:(unsigned int)target
{
  if (!count)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDGLTextureParameter initWithPName:paramCount:intData:floatData:target:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDGLFrameBuffer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 113, 0, "paramCount == 0!");
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
  }

  if (!(data | floatData))
  {
    v27 = MEMORY[0x277D81150];
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDGLTextureParameter initWithPName:paramCount:intData:floatData:target:]");
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDGLFrameBuffer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v31, v28, v30, 114, 0, "intData and floatData are both NULL!");
    goto LABEL_8;
  }

  if (data && floatData)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDGLTextureParameter initWithPName:paramCount:intData:floatData:target:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDGLFrameBuffer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v24, v21, v23, 115, 0, "intData and floatData are both non-NULL!");
LABEL_8:
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
  }

  v37.receiver = self;
  v37.super_class = TSDGLTextureParameter;
  v32 = [(TSDGLTextureParameter *)&v37 init];
  v33 = v32;
  if (v32)
  {
    v32->_pname = name;
    v32->_paramCount = count;
    if (data)
    {
      v34 = malloc_type_calloc(4uLL, count, 0x51BD4484uLL);
      v33->_intData = v34;
      memcpy(v34, data, 4 * count);
    }

    if (floatData)
    {
      v35 = malloc_type_calloc(4uLL, count, 0x6297AE5EuLL);
      v33->_floatData = v35;
      memcpy(v35, floatData, 8 * count);
    }

    v33->_target = target;
  }

  return v33;
}

- (void)dealloc
{
  free(self->_intData);
  free(self->_floatData);
  v3.receiver = self;
  v3.super_class = TSDGLTextureParameter;
  [(TSDGLTextureParameter *)&v3 dealloc];
}

+ (id)textureParameterWithPName:(unsigned int)name integerParameter:(int)parameter
{
  v4 = *&name;
  parameterCopy = parameter;
  v5 = objc_alloc(objc_opt_class());
  return objc_msgSend_initWithPName_paramCount_intData_floatData_target_(v5, v6, v4, 1, &parameterCopy, 0, 3553);
}

+ (id)textureParameterWithPName:(unsigned int)name integerParameters:(int *)parameters count:(unint64_t)count
{
  v7 = *&name;
  v8 = objc_alloc(objc_opt_class());
  v10 = objc_msgSend_initWithPName_paramCount_intData_floatData_target_(v8, v9, v7, count, parameters, 0, 3553);

  return v10;
}

+ (id)textureParameterWithPName:(unsigned int)name integerParameters:(int *)parameters count:(unint64_t)count target:(unsigned int)target
{
  v6 = *&target;
  v9 = *&name;
  v10 = objc_alloc(objc_opt_class());
  v12 = objc_msgSend_initWithPName_paramCount_intData_floatData_target_(v10, v11, v9, count, parameters, 0, v6);

  return v12;
}

+ (id)textureParameterWithPName:(unsigned int)name floatParameter:(double)parameter
{
  v4 = *&name;
  parameterCopy = parameter;
  v5 = objc_alloc(objc_opt_class());
  return objc_msgSend_initWithPName_paramCount_intData_floatData_target_(v5, v6, v4, 1, 0, &parameterCopy, 3553);
}

+ (id)textureParameterWithPName:(unsigned int)name floatParameters:(double *)parameters count:(unint64_t)count
{
  v7 = *&name;
  v8 = objc_alloc(objc_opt_class());
  v10 = objc_msgSend_initWithPName_paramCount_intData_floatData_target_(v8, v9, v7, count, 0, parameters, 3553);

  return v10;
}

+ (id)textureParameterWithPName:(unsigned int)name floatParameters:(double *)parameters count:(unint64_t)count target:(unsigned int)target
{
  v6 = *&target;
  v9 = *&name;
  v10 = objc_alloc(objc_opt_class());
  v12 = objc_msgSend_initWithPName_paramCount_intData_floatData_target_(v10, v11, v9, count, 0, parameters, v6);

  return v12;
}

- (void)setGLTextureParameter
{
  intData = self->_intData;
  if (intData)
  {
    glTexParameteriv(self->_target, self->_pname, intData);
  }

  floatData = self->_floatData;
  if (floatData)
  {
    target = self->_target;
    pname = self->_pname;

    glTexParameterfv(target, pname, floatData);
  }
}

@end