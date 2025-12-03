@interface TSCH3DVersion
- (BOOL)isEqual:(id)equal;
- (BOOL)isShaderGenerationFromContext:(id)context equalToContext:(id)toContext;
- (id)textureFunctionNameForVariable:(id)variable projective:(BOOL)projective context:(id)context;
- (unint64_t)hash;
@end

@implementation TSCH3DVersion

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return objc_msgSend_hash(v2, v3, v4, v5, v6);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  LOBYTE(v4) = objc_msgSend_isEqual_(v4, v6, v7, v8, v9, v5);

  return v4;
}

- (BOOL)isShaderGenerationFromContext:(id)context equalToContext:(id)toContext
{
  contextCopy = context;
  toContextCopy = toContext;
  v11 = toContextCopy;
  if (!contextCopy)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCH3DVersion isShaderGenerationFromContext:equalToContext:]");
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DVersion.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v26, v27, v28, v29, v20, v25, 29, 0, "invalid nil value for '%{public}s'", "context");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
    if (v11)
    {
LABEL_6:
      v18 = 0;
      goto LABEL_7;
    }

LABEL_5:
    v34 = MEMORY[0x277D81150];
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCH3DVersion isShaderGenerationFromContext:equalToContext:]");
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, v37, v38, v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DVersion.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v41, v42, v43, v44, v35, v40, 30, 0, "invalid nil value for '%{public}s'", "other");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47, v48);
    goto LABEL_6;
  }

  if (!toContextCopy)
  {
    goto LABEL_5;
  }

  v12 = objc_msgSend_state(contextCopy, v7, v8, v9, v10);
  v17 = objc_msgSend_state(v11, v13, v14, v15, v16);
  v18 = sub_276283878(v12, v17);
LABEL_7:

  return v18;
}

- (id)textureFunctionNameForVariable:(id)variable projective:(BOOL)projective context:(id)context
{
  projectiveCopy = projective;
  v10 = objc_msgSend_textureFunctionPrefixForVariable_context_(self, a2, v5, v6, v7, variable, context);
  if (projectiveCopy)
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v9, v11, v12, v13, @"%@%@", v10, @"Proj");
  }

  else
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v9, v11, v12, v13, @"%@%@", v10, &stru_288528678);
  }
  v14 = ;

  return v14;
}

@end