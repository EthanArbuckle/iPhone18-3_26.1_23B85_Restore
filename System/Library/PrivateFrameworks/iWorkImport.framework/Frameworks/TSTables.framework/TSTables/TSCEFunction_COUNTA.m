@interface TSCEFunction_COUNTA
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_COUNTA

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v7 = **a5;
  v20 = 0;
  v8 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v7, a2, a3, a4, 0, 0, &v20);
  v12 = v20;
  if (v12)
  {
    v13 = objc_msgSend_raiseErrorOrConvert_(a3, v9, v12, v10, v11);
  }

  else
  {
    v13 = objc_msgSend_getResultWithVector_context_functionSpec_index_countBehavior_(TSCEFunction_COUNT, v9, v8, a3, a4, 0, 1);
    TSCEFormat::TSCEFormat(&v18, 256);
    TSCEFormat::TSCEFormat(&v19, &v18);
    objc_msgSend_setFormat_(v13, v14, &v19, v15, v16);
  }

  return v13;
}

@end