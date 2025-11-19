@interface TSCEFunction_op_ExplicitIntersection
+ (BOOL)hasValidNontrivialIntersection:(const TSCERangeRef *)a3 containingCellRef:(TSCECellRef *)a4 calcEngine:(id)a5;
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_op_ExplicitIntersection

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v7 = **a5;
  v12 = objc_msgSend_intersectionRangeContext(a3, v8, v9, v10, v11);
  v17 = objc_msgSend_nativeType(v7, v13, v14, v15, v16);
  if (v17 == 1)
  {
    v35 = objc_msgSend_asGridValue(v7, v18, v19, v20, v21);
    if (objc_msgSend_gridKind(v35, v36, v37, v38, v39) == 2)
    {
      v44 = objc_msgSend_abstractBackingGrid(v35, v40, v41, v42, v43);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v52 = objc_msgSend_apparentReference_(v44, v45, a3, v46, v47);
        if (a3)
        {
          objc_msgSend_containingCellRef(a3, v48, v49, v50, v51);
        }

        else
        {
          v59 = 0;
          v60 = 0;
          v61 = 0;
        }

        v30 = objc_msgSend_intersectionWithHostCellRef_rangeContext_evaluationContext_(v52, v48, &v59, v12, a3);

        v7 = v30;
      }

      else
      {
        v30 = 0;
      }
    }

    else
    {
      v59 = a3;
      v60 = a4;
      v61 = 0;
      v62[0] = 0;
      *(v62 + 7) = 0;
      v63 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
      v64 = 0;
      v65 = 0;
      v30 = objc_msgSend_valueAtIndex_accessContext_(v35, v53, 0, &v59, v54);

      v7 = v30;
    }

    if (!v30)
    {
      goto LABEL_23;
    }

LABEL_22:
    objc_msgSend_addDynamicPrecedent_(a3, v55, v30, v56, v57);
    goto LABEL_23;
  }

  if (v17 == 6)
  {
    v22 = objc_msgSend_asReferenceValue(v7, v18, v19, v20, v21);
    if (a3)
    {
      objc_msgSend_containingCellRef(a3, v31, v32, v33, v34);
    }

    else
    {
      v59 = 0;
      v60 = 0;
      v61 = 0;
    }

    v30 = objc_msgSend_intersectionWithHostCellRef_rangeContext_evaluationContext_(v22, v31, &v59, v12, a3);
  }

  else
  {
    if (v17 != 16)
    {
      v30 = 0;
      goto LABEL_23;
    }

    v22 = objc_msgSend_asValueGridValue(v7, v18, v19, v20, v21);
    v27 = objc_msgSend_valueGrid(v22, v23, v24, v25, v26);
    v30 = objc_msgSend_intersectionWithEvalContext_rangeContext_(v27, v28, a3, v12, v29);
  }

  v7 = v30;
  if (v30)
  {
    goto LABEL_22;
  }

LABEL_23:

  return v7;
}

+ (BOOL)hasValidNontrivialIntersection:(const TSCERangeRef *)a3 containingCellRef:(TSCECellRef *)a4 calcEngine:(id)a5
{
  v7 = a5;
  v11 = objc_msgSend_tableResolverWrapperForTableUID_(v7, v8, &a3->_tableUID, v9, v10);
  if (v11 && !TSCERangeRef::isSingleCell(a3))
  {
    v13 = [TSCEEvalRef alloc];
    topLeft = a3->range._topLeft;
    bottomRight = a3->range._bottomRight;
    v23 = topLeft;
    v21 = 15;
    v16 = objc_msgSend_initWithTableResolver_topLeft_bottomRight_preserveFlags_(v13, v15, v11, &v23, &bottomRight, &v21);
    v19 = objc_msgSend_intersectionWithHostCellRef_rangeContext_(v16, v17, a4, 1, v18);
    v12 = v19 != 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end