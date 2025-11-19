@interface TSCH3DNormalShaderEffect
- (void)uploadData:(id)a3 effectsStates:(id)a4;
- (void)uploadData:(id)a3 effectsStates:(id)a4 updateCurrentStates:(id)a5;
@end

@implementation TSCH3DNormalShaderEffect

- (void)uploadData:(id)a3 effectsStates:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = objc_msgSend_stateSharingID(self, v8, v9, v10, v11);
  sub_2761A0B34(v7, v12, v32);

  if ((v32[0] & 1) == 0)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "[TSCH3DNormalShaderEffect uploadData:effectsStates:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DNormalShaderEffect.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 26, 0, "should not upload data when change flag is false");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
  }

  objc_msgSend_uniform_mat3_(v6, v13, v14, v15, v16, qword_280A46508, &v33);
}

- (void)uploadData:(id)a3 effectsStates:(id)a4 updateCurrentStates:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15 = objc_msgSend_stateSharingID(self, v11, v12, v13, v14);
  sub_2761A0B34(v9, v15, v17);

  if (v17[0])
  {
    v16.receiver = self;
    v16.super_class = TSCH3DNormalShaderEffect;
    [(TSCH3DShaderEffect *)&v16 uploadData:v8 effectsStates:v9 updateCurrentStates:v10];
  }
}

@end