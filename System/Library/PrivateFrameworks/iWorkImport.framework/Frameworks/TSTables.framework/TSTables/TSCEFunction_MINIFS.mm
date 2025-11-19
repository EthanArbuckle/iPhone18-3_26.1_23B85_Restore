@interface TSCEFunction_MINIFS
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_MINIFS

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v9 = **a5;
  v26 = 0;
  v10 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v9, a2, a3, a4, 0, 1, &v26);
  v11 = v26;
  if (v11)
  {
    v16 = v11;
    v17 = objc_msgSend_raiseErrorOrConvert_(a3, v12, v11, v14, v15);
  }

  else
  {
    v18 = objc_msgSend_dimensions(v10, v12, v13, v14, v15);
    v25 = 0;
    v20 = objc_msgSend_vectorCriterionPairsWithContext_functionSpec_arguments_dimensions_skipFirst_skipLast_outError_(a1, v19, a3, a4, a5, v18, 1, 0, &v25);
    v16 = v25;
    if (v16)
    {
      objc_msgSend_raiseErrorOrConvert_(a3, v21, v16, v22, v23);
    }

    else
    {
      objc_msgSend_extremumIfs_functionSpec_maxVector_criteria_isMax_(TSCEFunction_MAXIFS, v21, a3, a4, v10, v20, 0);
    }
    v17 = ;
  }

  return v17;
}

@end