@interface TSCEFunction_YEAR
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_YEAR

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v7 = **a5;
  v34 = 0;
  v9 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v7, v8, a3, a4, 0, &v34);
  v14 = v34;
  if (v14)
  {
    v15 = objc_msgSend_raiseErrorOrConvert_(a3, v10, v14, v12, v13);
  }

  else
  {
    v16 = objc_msgSend_gregorianCalendar(TSCECalendar, v10, v11, v12, v13);
    v17 = MEMORY[0x277D80680];
    v22 = objc_msgSend_locale(a3, v18, v19, v20, v21);
    v25 = objc_msgSend_defaultFormatWithFormatType_locale_(v17, v23, 256, v22, v24);

    objc_msgSend_extractYear_(v16, v26, v9, v27, v28);
    TSUDecimal::operator=();
    TSCEFormat::TSCEFormat(&v32, v25, 0);
    v15 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v29, v33, &v32, v30);
  }

  return v15;
}

@end