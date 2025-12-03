@interface TSCEFunction_op_Colon
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
+ (id)evaluateWithContext:(id)context relativeTractRef:(id)ref;
@end

@implementation TSCEFunction_op_Colon

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v9 = *(*arguments + 8);
  v61 = 0;
  v11 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v9, v10, context, spec, 1, &v61);
  v12 = v61;
  v60 = v12;
  v14 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v8, v13, context, spec, 0, &v60);
  v15 = v60;

  if (v15)
  {
    isOutputOfAFunction = objc_msgSend_raiseErrorOrConvert_(context, v16, v15, v18, v19);
  }

  else
  {
    v59 = 0;
    v21 = objc_msgSend_evalRef(v14, v16, v17, v18, v19);
    v26 = objc_msgSend_evalRef(v11, v22, v23, v24, v25);
    v28 = objc_msgSend_mergeLeftRef_rightRef_outError_(TSCEEvalRef, v27, v21, v26, &v59);

    if (v59)
    {
      v33 = objc_msgSend_invalidReferenceError(TSCEError, v29, v30, v31, v32);
      isOutputOfAFunction = objc_msgSend_raiseErrorOrConvert_(context, v34, v33, v35, v36);
    }

    else
    {
      v37 = objc_msgSend_preserveFlags(v14, v29, v30, v31, v32);
      v58 = objc_msgSend_preserveFlags(v11, v38, v39, v40, v41) & 0xC | v37 & 3;
      v42 = [TSCEReferenceValue alloc];
      v47 = objc_msgSend_containingCell(context, v43, v44, v45, v46);
      isOutputOfAFunction = objc_msgSend_initWithEvalRef_hostCell_preserveFlags_permitsAccessInsideMergeRegions_isOutputOfAFunction_(v42, v48, v28, v47, &v58, 0, 0);
      if ((objc_msgSend_isOutputOfAFunction(v14, v49, v50, v51, v52) & 1) != 0 || objc_msgSend_isOutputOfAFunction(v11, v53, v54, v55, v56))
      {
        objc_msgSend_setIsOutputOfAFunction_(isOutputOfAFunction, v53, 1, v55, v56);
      }
    }
  }

  return isOutputOfAFunction;
}

+ (id)evaluateWithContext:(id)context relativeTractRef:(id)ref
{
  contextCopy = context;
  refCopy = ref;
  v63 = 0;
  v11 = objc_msgSend_containingCell(contextCopy, v7, v8, v9, v10);
  v14 = objc_msgSend_absoluteCellTractRefForHostCell_offTable_(refCopy, v12, v11, &v63, v13);
  v62 = 0uLL;
  if (objc_msgSend_hasTableUID(refCopy, v15, v16, v17, v18))
  {
    *&v62 = objc_msgSend_tableUID(refCopy, v19, v20, v21, v22);
    *(&v62 + 1) = v23;
  }

  else
  {
    v62 = *objc_msgSend_containingTable(contextCopy, v19, v20, v21, v22);
  }

  if (v63)
  {
    goto LABEL_5;
  }

  v32 = objc_msgSend_calcEngine(contextCopy, v23, v24, v25, v26);
  v36 = objc_msgSend_tableResolverWrapperForTableUID_(v32, v33, &v62, v34, v35);

  if (v36)
  {
    v41 = [TSCEEvalRef alloc];
    if (v14)
    {
      objc_msgSend_cppCellTractRef(v14, v37, v38, v39, v40);
    }

    else
    {
      v61 = 0;
      v60 = 0u;
      memset(&v59, 0, sizeof(v59));
      memset(&v58, 0, sizeof(v58));
    }

    v27 = objc_msgSend_initWithTableResolver_tractRefCore_(v41, v37, v36, &v58, v40);
    TSUIndexSet::~TSUIndexSet(&v59);
    TSUIndexSet::~TSUIndexSet(&v58);
    v45 = [TSCEReferenceValue alloc];
    v50 = objc_msgSend_containingCell(contextCopy, v46, v47, v48, v49);
    *&v58 = objc_msgSend_preserveFlags(v14, v51, v52, v53, v54);
    isOutputOfAFunction = objc_msgSend_initWithEvalRef_hostCell_preserveFlags_permitsAccessInsideMergeRegions_isOutputOfAFunction_(v45, v55, v27, v50, &v58, 0, 0);
    goto LABEL_13;
  }

  if (v63)
  {
LABEL_5:
    v27 = objc_msgSend_invalidReferenceError(TSCEError, v23, v24, v25, v26);
    isOutputOfAFunction = objc_msgSend_errorValue_(TSCEErrorValue, v28, v27, v29, v30);
  }

  else
  {
    v27 = objc_msgSend_referenceToNonexistentTableError_(TSCEError, v23, v62, *(&v62 + 1), v26);
    isOutputOfAFunction = objc_msgSend_errorValue_(TSCEErrorValue, v42, v27, v43, v44);
  }

LABEL_13:
  v56 = isOutputOfAFunction;

  return v56;
}

@end