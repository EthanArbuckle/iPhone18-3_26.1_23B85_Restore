@interface TSCEFunction_PERCENTILE_EXC
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_PERCENTILE_EXC

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = *(*a5 + 8);
  v36 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, a3, a4, 1, &v36);
  v11 = v36;
  v35[0] = objc_msgSend_decimalRepresentation(v10, v12, v13, v14, v15);
  v35[1] = v16;
  if (v11)
  {
    v19 = objc_msgSend_raiseErrorOrConvert_(a3, v16, v11, v17, v18);
  }

  else
  {
    v20 = **a5;
    v34 = 0;
    v21 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v20, v16, a3, a4, 0, 1, &v34);
    v11 = v34;
    if (v11)
    {
      v19 = objc_msgSend_raiseErrorOrConvert_(a3, v22, v11, v23, v24);
    }

    else
    {
      v19 = objc_msgSend_computeWithVector_functionSpec_vector_percentile_isExclusive_ignoreError_(TSCEFunction_PERCENTILE, v22, a3, a4, v21, v35, 1, 0);
      if (v21)
      {
        objc_msgSend_formatWithContext_(v21, v25, a3, v26, v27);
      }

      else
      {
        memset(&v32, 0, sizeof(v32));
      }

      TSCEFormat::TSCEFormat(&v33, &v32);
      objc_msgSend_setFormat_(v19, v28, &v33, v29, v30);
    }
  }

  return v19;
}

@end