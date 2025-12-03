@interface TSCEFunction_MINIFS
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_MINIFS

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v9 = **arguments;
  v26 = 0;
  v10 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v9, a2, context, spec, 0, 1, &v26);
  v11 = v26;
  if (v11)
  {
    v16 = v11;
    v17 = objc_msgSend_raiseErrorOrConvert_(context, v12, v11, v14, v15);
  }

  else
  {
    v18 = objc_msgSend_dimensions(v10, v12, v13, v14, v15);
    v25 = 0;
    v20 = objc_msgSend_vectorCriterionPairsWithContext_functionSpec_arguments_dimensions_skipFirst_skipLast_outError_(self, v19, context, spec, arguments, v18, 1, 0, &v25);
    v16 = v25;
    if (v16)
    {
      objc_msgSend_raiseErrorOrConvert_(context, v21, v16, v22, v23);
    }

    else
    {
      objc_msgSend_extremumIfs_functionSpec_maxVector_criteria_isMax_(TSCEFunction_MAXIFS, v21, context, spec, v10, v20, 0);
    }
    v17 = ;
  }

  return v17;
}

@end