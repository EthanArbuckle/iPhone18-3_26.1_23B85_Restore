@interface TSCEFunction_QUARTILE_EXC
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_QUARTILE_EXC

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = **a5;
  v37 = 0;
  v9 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v8, a2, a3, a4, 0, 1, &v37);
  v10 = v37;
  if (v10)
  {
    v14 = v10;
    v15 = objc_msgSend_raiseErrorOrConvert_(a3, v11, v10, v12, v13);
  }

  else
  {
    v16 = *(*a5 + 8);
    v36 = 0;
    v18 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v16, v17, a3, a4, 1, &v36);
    v14 = v36;
    objc_msgSend_integer(v18, v19, v20, v21, v22);
    if (v14)
    {
      v15 = objc_msgSend_raiseErrorOrConvert_(a3, v23, v14, v24, v25);
    }

    else
    {
      TSUDecimal::operator=();
      v15 = objc_msgSend_computeWithVector_functionSpec_vector_percentile_isExclusive_ignoreError_(TSCEFunction_PERCENTILE, v26, a3, a4, v9, &v35, 1, 0);
      if (v9)
      {
        objc_msgSend_formatWithContext_(v9, v27, a3, v28, v29);
      }

      else
      {
        memset(&v34, 0, sizeof(v34));
      }

      TSCEFormat::TSCEFormat(&v35, &v34);
      objc_msgSend_setFormat_(v15, v30, &v35, v31, v32);
    }
  }

  return v15;
}

@end