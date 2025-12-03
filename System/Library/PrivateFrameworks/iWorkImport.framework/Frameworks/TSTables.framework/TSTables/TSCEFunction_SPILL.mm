@interface TSCEFunction_SPILL
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_SPILL

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  tableUID = 0;
  v84 = 0x7FFF7FFFFFFFLL;
  if (*(arguments + 1) != *arguments)
  {
    v7 = **arguments;
    if (objc_msgSend_isReferenceValue(v7, v8, v9, v10, v11))
    {
      v83 = 0;
      v13 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v7, v12, context, spec, 0, &v83);
      v18 = v83;
      if (!v18)
      {
        if (v13)
        {
          objc_msgSend_rangeRef(v13, v14, v15, v16, v17);
        }

        else
        {
          memset(&v82, 0, sizeof(v82));
        }

        if (TSCERangeRef::isSingleCell(&v82))
        {
          tableUID = v82._tableUID;
          v84 = *&v82.range._topLeft & 0xFFFFFFFFFFFFLL;
        }
      }
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;
    if (context)
    {
      goto LABEL_14;
    }

LABEL_7:
    topLeft = 0;
    memset(&v82, 0, 24);
    goto LABEL_15;
  }

  v19 = 0;
  if (!context)
  {
    goto LABEL_7;
  }

LABEL_14:
  objc_msgSend_containingCellRef(context, a2, context, spec, arguments);
  topLeft = v82.range._topLeft;
LABEL_15:
  v22 = v84 == topLeft.row;
  v21 = (*&topLeft ^ v84) & 0x101FFFF00000000;
  v22 = v22 && v21 == 0;
  if (v22 && tableUID == *&v82.range._bottomRight.row)
  {
    tableUID = 0;
    v84 = 0x7FFF7FFFFFFFLL;
  }

  else if (v84 != 0x7FFFFFFF && (v84 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v23 = tableUID;
    if (tableUID != 0uLL && v23 == *objc_msgSend_containingTable(context, a2, context, spec, arguments))
    {
      v24 = objc_msgSend_calcEngine(context, a2, context, spec, arguments);
      v81.origin = 0;
      v81.size = 0;
      v80 = 0;
      v27 = objc_msgSend_cachedSpillRangeForSpillingOriginCellRef_outError_(v24, v25, &v84, &v80, v26);
      v29 = v28;
      v30 = v80;
      v81.origin = v27;
      v81.size = v29;
      v35 = objc_msgSend_calcEngine(context, v31, v32, v33, v34);
      v44 = objc_msgSend_dependencyTracker(v35, v36, v37, v38, v39);
      if (context)
      {
        objc_msgSend_containingCellRef(context, v40, v41, v42, v43);
      }

      else
      {
        memset(&v82, 0, 24);
      }

      HasThisCellPrecedent_precedent = objc_msgSend_cellHasThisCellPrecedent_precedent_(v44, v40, &v82, &v84, v43);

      v50 = *objc_msgSend_containingCell(context, v46, v47, v48, v49);
      if (TSUCellRect::contains(&v81, v50) & HasThisCellPrecedent_precedent)
      {
        if (v30 && objc_msgSend_errorType(v30, v51, v52, v53, v54) == 7)
        {
          v55 = v30;
        }

        else
        {
          v55 = objc_msgSend_spillFunctionPreserveContentError(TSCEError, v51, v52, v53, v54);

          if (context)
          {
            objc_msgSend_containingCellRef(context, v59, v60, v61, v62);
          }

          else
          {
            memset(&v82, 0, 24);
          }

          v19 = objc_msgSend_errorForCell_(v24, v59, &v82, v61, v62);
          if (objc_msgSend_isCircularReferenceError(v19, v63, v64, v65, v66))
          {
            if (context)
            {
              objc_msgSend_containingCellRef(context, v67, v68, v69, v70);
            }

            else
            {
              memset(&v82, 0, 24);
            }

            if ((objc_msgSend_cellIsInACycle_(v24, v67, &v82, v69, v70) & 1) == 0)
            {
              if (context)
              {
                objc_msgSend_containingCellRef(context, v71, v72, v73, v74);
              }

              else
              {
                memset(&v82, 0, 24);
              }

              objc_msgSend_clearErrorAndWarningsForCell_(v24, v71, &v82, v73, v74);
              objc_msgSend_markCellRefAsDirty_(v24, v75, &v84, v76, v77);
            }
          }
        }
      }

      else
      {
        v55 = objc_msgSend_spillFunctionDeleteFormulaError(TSCEError, v51, v52, v53, v54);

        if ((HasThisCellPrecedent_precedent & 1) == 0)
        {
          objc_msgSend_markCellRefAsDirty_(v24, v56, &v84, v57, v58);
        }
      }

      v19 = v55;
    }
  }

  if (!v19)
  {
    v19 = objc_msgSend_spillFunctionDeleteFormulaError(TSCEError, a2, context, spec, arguments);
  }

  v78 = objc_msgSend_errorValue_(TSCEErrorValue, a2, v19, spec, arguments);

  return v78;
}

@end