@interface TSCEFunction_LEN
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_LEN

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v33 = 0;
  v9 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v7, v8, context, spec, 0, &v33);
  v13 = v33;
  if (v13)
  {
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v10, v13, v11, v12);
  }

  else
  {
    v15 = v9;
    v35[0] = 0;
    v35[1] = v35;
    v35[2] = 0x2020000000;
    v35[3] = 0;
    v18 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v15, v16, @"\u200E", &stru_2834BADA0, v17);

    v21 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v18, v19, @"\u200F", &stru_2834BADA0, v20);

    v26 = objc_msgSend_length(v21, v22, v23, v24, v25);
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = sub_221587F4C;
    v34[3] = &unk_278464D58;
    v34[4] = v35;
    objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v21, v27, 0, v26, 2, v34);
    _Block_object_dispose(v35, 8);

    TSUDecimal::operator=();
    TSCEFormat::TSCEFormat(v34, 256);
    v14 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v28, &v32, v34, v29);
  }

  v30 = v14;

  return v30;
}

@end