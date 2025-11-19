@interface TSCEFunction_CODE
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_CODE

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v7 = **a5;
  v45 = 0;
  v9 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v7, v8, a3, a4, 0, &v45);
  v14 = v45;
  if (v14)
  {
    v15 = objc_msgSend_raiseErrorOrConvert_(a3, v10, v14, v12, v13);
  }

  else
  {
    if (v9 && objc_msgSend_length(v9, v10, v11, v12, v13))
    {
      v16 = sub_22157EFF8(v9, 1);
      v19 = objc_msgSend_substringWithRange_(v9, v17, 0, v16, v18);
      v23 = objc_msgSend_dataUsingEncoding_(v19, v20, 2617245952, v21, v22);
      v24 = v23;
      objc_msgSend_bytes(v24, v25, v26, v27, v28);
      objc_msgSend_length(v23, v29, v30, v31, v32);
      TSUDecimal::operator=();
      TSCEFormat::TSCEFormat(v43, 256);
      v41 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v39, v44, v43, v40);
    }

    else
    {
      v19 = objc_msgSend_functionName(a4, v10, v11, v12, v13);
      v23 = objc_msgSend_nonEmptyStringRequiredErrorForFunctionName_(TSCEError, v33, v19, v34, v35);
      v41 = objc_msgSend_raiseErrorOrConvert_(a3, v36, v23, v37, v38);
    }

    v15 = v41;
  }

  return v15;
}

@end