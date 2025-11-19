@interface TSCEFunction_AVERAGEIFS
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_AVERAGEIFS

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v9 = **a5;
  v35 = 0;
  v10 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v9, a2, a3, a4, 0, 1, &v35);
  v11 = v35;
  if (v11)
  {
    v16 = v11;
    v17 = objc_msgSend_raiseErrorOrConvert_(a3, v12, v11, v14, v15);
  }

  else
  {
    v18 = objc_msgSend_dimensions(v10, v12, v13, v14, v15);
    v34 = 0;
    v20 = objc_msgSend_vectorCriterionPairsWithContext_functionSpec_arguments_dimensions_skipFirst_skipLast_outError_(a1, v19, a3, a4, a5, v18, 1, 0, &v34);
    v16 = v34;
    if (v16)
    {
      v17 = objc_msgSend_raiseErrorOrConvert_(a3, v21, v16, v22, v23);
    }

    else
    {
      LOBYTE(v31) = 0;
      v17 = objc_msgSend_averageOfVector_functionSpec_argVector_argumentIndex_criteria_criteriaVectorIndex_ignoreError_(TSCEFunction_AVERAGE, v21, a3, a4, v10, 0, v20, 2, v31);
      if (v10)
      {
        objc_msgSend_formatWithContext_(v10, v24, a3, v25, v26);
      }

      else
      {
        memset(&v32, 0, sizeof(v32));
      }

      TSCEFormat::TSCEFormat(&v33, &v32);
      objc_msgSend_setFormat_(v17, v27, &v33, v28, v29);
    }
  }

  return v17;
}

@end