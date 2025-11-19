@interface TSCEFunction_op_SpillRange
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_op_SpillRange

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  tableUID = 0;
  v59 = 0x7FFF7FFFFFFFLL;
  v7 = **a5;
  v58 = 0;
  v9 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v7, v8, a3, a4, 0, &v58);
  v14 = v58;
  if (v14)
  {
    v15 = objc_msgSend_raiseErrorOrConvert_(a3, v10, v14, v12, v13);
    goto LABEL_19;
  }

  if (v9)
  {
    objc_msgSend_rangeRef(v9, v10, v11, v12, v13);
  }

  else
  {
    memset(&v57, 0, sizeof(v57));
  }

  if (TSCERangeRef::isSingleCell(&v57))
  {
    topLeft = v57.range._topLeft;
    tableUID = v57._tableUID;
    v59 = v57.range._topLeft;
  }

  else
  {
    topLeft = v59;
  }

  if (topLeft.row != 0x7FFFFFFF && (*&topLeft & 0xFFFF00000000) != 0x7FFF00000000 && tableUID != 0uLL)
  {
    v21 = objc_msgSend_calcEngine(a3, v16, v17, v18, v19);
    if (objc_msgSend_isArrayFormulaCell_(v21, v22, &v59, v23, v24))
    {
      v56 = tableUID;
      if (tableUID == 0uLL)
      {
        v56 = *objc_msgSend_containingTable(a3, v25, v26, v27, v28);
      }

      *v49 = v59;
      objc_msgSend_spillChangedPrecedentForTableUID_spillOrigin_(TSCESpillOwner, v25, &v56, v49, v28);
      *v49 = 0;
      TSCERangeRef::TSCERangeRef(&v61, &v55);
      *&v49[8] = v61;
      v50 = 0;
      v54 = 0;
      v51 = 0;
      v52 = 0;
      v53 = 0;
      objc_msgSend_addCalculatedPrecedent_(a3, v29, v49, v30, v31);

      v61.range._topLeft = objc_msgSend_spillingRangeForFormulaAt_(v21, v32, &v59, v33, v34);
      v61.range._bottomRight = v35;
      v48 = tableUID;
      TSCERangeRef::TSCERangeRef(v49, &v61, &v48);
      v57 = *v49;
      *v49 = 1;
      *&v49[8] = v57;
      v50 = 0;
      v54 = 0;
      v51 = 0;
      v52 = 0;
      v53 = 0;
      objc_msgSend_addCalculatedPrecedent_(a3, v36, v49, v37, v38);

      v39 = [TSCEReferenceValue alloc];
      v49[0] = 0;
      v15 = objc_msgSend_initWithContext_rangeRef_preserveFlags_(v39, v40, a3, &v57, v49);
      objc_msgSend_setPermitsAccessInsideMergeRegions_(v15, v41, 1, v42, v43);
      goto LABEL_18;
    }
  }

  v21 = objc_msgSend_invalidReferenceError(TSCEError, v16, v17, v18, v19);
  v15 = objc_msgSend_raiseErrorOrConvert_(a3, v44, v21, v45, v46);
LABEL_18:

LABEL_19:

  return v15;
}

@end