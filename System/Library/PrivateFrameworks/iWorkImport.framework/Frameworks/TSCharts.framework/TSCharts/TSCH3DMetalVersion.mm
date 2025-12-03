@interface TSCH3DMetalVersion
+ (id)_singletonAlloc;
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)version;
- (BOOL)isShaderGenerationFromContext:(id)context equalToContext:(id)toContext;
- (id)additionalConclusionsForShaderType:(TSCH3DShaderType)type;
- (id)preprocessorDefinitions;
- (id)textureFunctionPrefixForVariable:(id)variable context:(id)context;
- (id)textureUsagesForContext:(id)context;
@end

@implementation TSCH3DMetalVersion

+ (id)_singletonAlloc
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___TSCH3DMetalVersion;
  return objc_msgSendSuper2(&v3, sel_allocWithZone_, 0);
}

+ (id)version
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276239A2C;
  block[3] = &unk_27A6B6250;
  block[4] = self;
  if (qword_280A46B98 != -1)
  {
    dispatch_once(&qword_280A46B98, block);
  }

  v2 = qword_280A46B90;

  return v2;
}

+ (id)allocWithZone:(_NSZone *)zone
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "+[TSCH3DMetalVersion allocWithZone:]");
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DMetalVersion.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 21, 0, "Don't alloc a singleton");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  return 0;
}

- (id)textureUsagesForContext:(id)context
{
  v45 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v8 = objc_msgSend_textureVariables(contextCopy, v5, 0.0, v6, v7);
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, v10, v11, v12, &v40, v44, 16);
  if (v14)
  {
    v18 = *v41;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v41 != v18)
        {
          objc_enumerationMutation(v8);
        }

        v20 = *(*(&v40 + 1) + 8 * i);
        if (contextCopy)
        {
          objc_msgSend_textureAttributesForVariable_(contextCopy, v13, v15, v16, v17, *(*(&v40 + 1) + 8 * i));
          objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v21, v22, v23, v24, v36, v36, v37, v38, v39);
        }

        else
        {
          LODWORD(v39) = 0;
          objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v13, v15, v16, v17, 0, 0, 0, 0, v39);
        }
        v25 = ;
        objc_msgSend_setObject_forKeyedSubscript_(v4, v26, v27, v28, v29, v25, v20);
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v13, v15, v16, v17, &v40, v44, 16);
    }

    while (v14);
  }

  v34 = objc_msgSend_copy(v4, v30, v31, v32, v33);

  return v34;
}

- (BOOL)isShaderGenerationFromContext:(id)context equalToContext:(id)toContext
{
  contextCopy = context;
  toContextCopy = toContext;
  v24.receiver = self;
  v24.super_class = TSCH3DMetalVersion;
  if ([(TSCH3DVersion *)&v24 isShaderGenerationFromContext:contextCopy equalToContext:toContextCopy])
  {
    v12 = objc_msgSend_textureUsagesForContext_(self, v8, v9, v10, v11, contextCopy);
    v17 = objc_msgSend_textureUsagesForContext_(self, v13, v14, v15, v16, toContextCopy);
    isEqual = objc_msgSend_isEqual_(v12, v18, v19, v20, v21, v17);
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (id)textureFunctionPrefixForVariable:(id)variable context:(id)context
{
  variableCopy = variable;
  contextCopy = context;
  v11 = contextCopy;
  if (contextCopy)
  {
    objc_msgSend_textureAttributesForVariable_(contextCopy, v7, v8, v9, v10, variableCopy);
    if (v30)
    {
      v12 = @"fboTexture2D";
    }

    else
    {
      v12 = @"texture2D";
    }

    v13 = v12;
  }

  else
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCH3DMetalVersion textureFunctionPrefixForVariable:context:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DMetalVersion.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 102, 0, "invalid nil value for '%{public}s'", "context");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
    v13 = @"texture2D";
  }

  return v13;
}

- (id)preprocessorDefinitions
{
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_msgSend_shaderTypeDefinitions(self, a2, v2, v3, v4);
  v11 = objc_msgSend_stringWithFormat_(v5, v7, v8, v9, v10, @"#include <metal_stdlib>\n#include <simd/simd.h>\n\nusing namespace metal\n\n#pragma clang diagnostic push\n#pragma clang diagnostic ignored -Wunused-variable\n#pragma clang diagnostic ignored -Wunused-function\n#pragma clang diagnostic ignored -Wlogical-op-parentheses\n%@\n", v6);;

  return v11;
}

- (id)additionalConclusionsForShaderType:(TSCH3DShaderType)type
{
  if (LODWORD(type._value) == 2)
  {
    return @"return FragColor;";
  }

  else
  {
    return @"return dat;";
  }
}

@end