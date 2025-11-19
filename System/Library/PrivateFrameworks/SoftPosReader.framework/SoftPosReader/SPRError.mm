@interface SPRError
+ (id)errorWithCode:(int64_t)a3 reason:(id)a4 underlyingError:(id)a5;
+ (id)failureForCode:(int64_t)a3;
@end

@implementation SPRError

+ (id)failureForCode:(int64_t)a3
{
  if (qword_2803D4010 != -1)
  {
    sub_26AA7E158();
  }

  v6 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], a2, a3, v3, v4);
  v13 = objc_msgSend_objectForKeyedSubscript_(qword_2803D4018, v7, v6, v8, v9);
  if (!v13)
  {
    v13 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"SPRError#%ld", v11, v12, a3);
  }

  return v13;
}

+ (id)errorWithCode:(int64_t)a3 reason:(id)a4 underlyingError:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = objc_opt_new();
  v13 = objc_msgSend_failureForCode_(SPRError, v10, a3, v11, v12);
  objc_msgSend_setObject_forKeyedSubscript_(v9, v14, v13, *MEMORY[0x277CCA460], v15);

  objc_msgSend_setObject_forKeyedSubscript_(v9, v16, v8, *MEMORY[0x277CCA470], v17);
  objc_msgSend_setObject_forKeyedSubscript_(v9, v18, v7, *MEMORY[0x277CCA7E8], v19);

  v21 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v20, @"SoftPosReader", a3, v9);

  return v21;
}

@end