@interface TSCEFunction_COUNTBLANK
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_COUNTBLANK

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  if (objc_msgSend_nativeType(v7, v8, v9, v10, v11) == 9 && (objc_msgSend_errorWithContext_(v7, v12, context, v13, v14), (v17 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v18 = objc_msgSend_raiseErrorOrConvert_(context, v12, v17, v15, v16);
  }

  else
  {
    v29 = 0;
    v19 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v7, v12, context, spec, 0, 0, &v29);
    v17 = v29;
    if (v17)
    {
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v20, v17, v21, v22);
    }

    else
    {
      v18 = objc_msgSend_getResultWithVector_context_functionSpec_index_countBehavior_(TSCEFunction_COUNT, v20, v19, context, spec, 0, 2);
      TSCEFormat::TSCEFormat(&v27, 256);
      TSCEFormat::TSCEFormat(&v28, &v27);
      objc_msgSend_setFormat_(v18, v23, &v28, v24, v25);
    }
  }

  return v18;
}

@end