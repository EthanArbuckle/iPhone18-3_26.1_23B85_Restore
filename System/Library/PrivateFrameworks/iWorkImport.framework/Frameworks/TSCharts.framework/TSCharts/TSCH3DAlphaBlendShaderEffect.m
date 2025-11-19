@interface TSCH3DAlphaBlendShaderEffect
+ (id)_singletonAlloc;
+ (id)allocWithZone:(_NSZone *)a3;
+ (id)effect;
+ (id)variableAlphaBlendValue;
+ (void)setChartAlpha:(float)a3 effectsStates:(id)a4;
+ (void)setElementAlpha:(float)a3 effectsStates:(id)a4;
- (id)variableAlphaBlendValue;
- (void)addVariables:(id)a3;
- (void)injectCommonShaderInto:(id)a3 context:(id)a4;
- (void)uploadData:(id)a3 effectsStates:(id)a4;
@end

@implementation TSCH3DAlphaBlendShaderEffect

+ (id)_singletonAlloc
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___TSCH3DAlphaBlendShaderEffect;
  return objc_msgSendSuper2(&v3, sel_allocWithZone_, 0);
}

+ (id)effect
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2761ABEAC;
  block[3] = &unk_27A6B6250;
  block[4] = a1;
  if (qword_280A468E0 != -1)
  {
    dispatch_once(&qword_280A468E0, block);
  }

  v2 = qword_280A468D8;

  return v2;
}

+ (id)allocWithZone:(_NSZone *)a3
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "+[TSCH3DAlphaBlendShaderEffect allocWithZone:]");
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DAlphaBlendShaderEffect.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 27, 0, "Don't alloc a singleton");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  return 0;
}

+ (id)variableAlphaBlendValue
{
  if (qword_280A468F0 != -1)
  {
    sub_2764A6B5C();
  }

  v3 = qword_280A468E8;

  return v3;
}

- (id)variableAlphaBlendValue
{
  v2 = objc_opt_class();

  return objc_msgSend_variableAlphaBlendValue(v2, v3, v4, v5, v6);
}

+ (void)setElementAlpha:(float)a3 effectsStates:(id)a4
{
  v5 = a4;
  v10 = objc_msgSend_stateSharingID(TSCH3DAlphaBlendShaderEffect, v6, v7, v8, v9);
  __asm { FMOV            V0.2S, #1.0 }

  v23 = _D0;
  sub_27618E84C(v5, v10, &v23, &v24, v16, v17);

  *&v24 = a3;
  v22 = objc_msgSend_stateSharingID(TSCH3DAlphaBlendShaderEffect, v18, v19, v20, v21);
  sub_2761AC2E4(v5, v22, &v24);
}

+ (void)setChartAlpha:(float)a3 effectsStates:(id)a4
{
  v5 = a4;
  v10 = objc_msgSend_stateSharingID(TSCH3DAlphaBlendShaderEffect, v6, v7, v8, v9);
  __asm { FMOV            V0.2S, #1.0 }

  v23 = _D0;
  sub_27618E84C(v5, v10, &v23, &v24, v16, v17);

  *(&v24 + 1) = a3;
  v22 = objc_msgSend_stateSharingID(TSCH3DAlphaBlendShaderEffect, v18, v19, v20, v21);
  sub_2761AC2E4(v5, v22, &v24);
}

- (void)addVariables:(id)a3
{
  v33 = a3;
  v8 = objc_msgSend_variableAlphaBlendValue(self, v4, v5, v6, v7);

  if (!v8)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "[TSCH3DAlphaBlendShaderEffect addVariables:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DAlphaBlendShaderEffect.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 47, 0, "invalid nil value for '%{public}s'", "self.variableAlphaBlendValue");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  v28 = objc_msgSend_variableAlphaBlendValue(self, v9, v10, v11, v12);
  objc_msgSend_addUniformVariable_(v33, v29, v30, v31, v32, v28);
}

- (void)injectCommonShaderInto:(id)a3 context:(id)a4
{
  v15 = a3;
  v5 = qword_280A464B8;
  v10 = objc_msgSend_variableAlphaBlendValue(self, v6, v7, v8, v9);
  objc_msgSend_addOutcome_statement_(v15, v11, v12, v13, v14, v5, @"tsch_vec4(@@.rgb, @@.a * @@)", v5, v5, v10);
}

- (void)uploadData:(id)a3 effectsStates:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = objc_msgSend_stateSharingID(TSCH3DAlphaBlendShaderEffect, v8, v9, v10, v11);
  sub_2761AC6E8(v7, v12, &v26, v13, v14, v15);

  v20 = objc_msgSend_variableAlphaBlendValue(self, v16, v17, v18, v19);
  LODWORD(v21) = HIDWORD(v26);
  *&v22 = *&v26 * *(&v26 + 1);
  v25 = *&v26 * *(&v26 + 1);
  objc_msgSend_uniform_vec1_(v6, v23, v22, v21, v24, v20, &v25);
}

@end