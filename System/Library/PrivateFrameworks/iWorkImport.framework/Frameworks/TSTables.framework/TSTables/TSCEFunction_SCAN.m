@interface TSCEFunction_SCAN
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_SCAN

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = **a5;
  v9 = *(*a5 + 16);
  v140[0] = 0;
  v11 = objc_msgSend_asFunctorValue_functionSpec_argumentIndex_outError_(v9, v10, a3, a4, 2, v140);
  v16 = v140[0];
  if (v16)
  {
    v17 = objc_msgSend_raiseErrorOrConvert_(a3, v12, v16, v14, v15);
    goto LABEL_33;
  }

  v124 = v11;
  v22 = objc_msgSend_functor(v11, v12, v13, v14, v15);
  if (v22->_numArgs != 2)
  {
    v27 = objc_msgSend_functionName(a4, v18, v19, v20, v21);
    v16 = objc_msgSend_wrongArityForLambdaError_providedArity_expectedArity_(TSCEError, v28, v27, v22->_numArgs + 1, 3);

    v17 = objc_msgSend_raiseErrorOrConvert_(a3, v29, v16, v30, v31);
    goto LABEL_33;
  }

  v23 = *(*a5 + 8);
  v139 = 0;
  v125 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v23, v18, a3, a4, 1, 0, &v139);
  v16 = v139;
  if (!v16)
  {
    v32 = v8;
    v138 = v32;
    isTokenOrEmptyArg = objc_msgSend_isTokenOrEmptyArg(v32, v33, v34, v35, v36);
    if (objc_msgSend_isError(v32, v38, v39, v40, v41))
    {
      v46 = objc_msgSend_asErrorValue(v32, v42, v43, v44, v45);
      v51 = objc_msgSend_error(v46, v47, v48, v49, v50);

      if (objc_msgSend_errorType(v51, v52, v53, v54, v55) == 135)
      {
        v56 = v138;
        v138 = 0;
      }

      else
      {
        if (v51)
        {
          v17 = objc_msgSend_raiseErrorOrConvert_(a3, v42, v51, v44, v45);

          v11 = v124;
LABEL_31:

          goto LABEL_32;
        }

        if ((isTokenOrEmptyArg & 1) == 0)
        {
LABEL_12:
          v137 = objc_msgSend_dimensions(v125, v42, v43, v44, v45, v9, v8);
          v59 = objc_opt_new();
          v62 = a3;
          v131[0] = v62;
          v131[1] = a4;
          v132 = 0;
          v133[0] = 1;
          *(v133 + 7) = 0;
          v134 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
          v135 = 0;
          v136 = 0;
          v130 = 0;
          do
          {
            memset(v129, 0, sizeof(v129));
            v128 = objc_msgSend_valueAtGridCoord_accessContext_(v125, v60, *&v130, v131, v61);
            sub_221179A54(v129, &v138);
            sub_221179A54(v129, &v128);
            v63 = TSCEFunctor::evaluateWithArgs(v22, v62, v129);
            v64 = v138;
            v138 = v63;

            v68 = objc_msgSend_errorWithContext_(v138, v65, v62, v66, v67);
            v73 = v68;
            if (v68 && objc_msgSend_errorType(v68, v69, v70, v71, v72) == 168)
            {
              v76 = objc_msgSend_functionName(a4, v69, v74, v75, v72);
              v80 = objc_msgSend_evaluationRecursingTooDeepError_(TSCEError, v77, v76, v78, v79);
              v84 = objc_msgSend_errorValue_(TSCEErrorValue, v81, v80, v82, v83);
              v85 = v138;
              v138 = v84;
            }

            objc_msgSend_setValue_atCoord_(v59, v69, v138, &v130, v72);
            v130 = TSCEGridDimensions::nextCoordRowMajorOrder(&v137, &v130);
            isRichTextValue = objc_msgSend_isRichTextValue(v138, v86, v87, v88, v89);
            if (v130.column == 0x7FFFFFFF)
            {
              v95 = 0;
            }

            else
            {
              v95 = isRichTextValue;
            }

            if (v95 == 1 && v130.row != 0x7FFFFFFF)
            {
              v96 = objc_msgSend_asRichTextValue(v138, v91, v92, v93, v94);
              v101 = v96;
              if (v96)
              {
                objc_msgSend_asRawRichTextStorage(v96, v97, v98, v99, v100);
              }

              else
              {
                v126 = 0uLL;
                *&v127 = 0;
              }

              v102 = sub_2210771B0(&v126, v97, v98, v99, v100);
              v106 = objc_msgSend_copyStorageUnpersisted_(TSCEUnpersistedStorage, v103, v102, v104, v105);

              if (v138)
              {
                objc_msgSend_format(v138, v107, v108, v109, v110);
              }

              else
              {
                v126 = 0u;
                v127 = 0u;
              }

              v111 = objc_msgSend_richTextValue_format_(TSCERichTextValue, v107, v106, &v126, v110);
              v112 = v138;
              v138 = v111;
            }

            *&v126 = v129;
            sub_22107C2C0(&v126);
          }

          while (v130.column != 0x7FFFFFFF && v130.row != 0x7FFFFFFF);
          v113 = [TSCEDenseGrid alloc];
          v117 = objc_msgSend_initWithValueGrid_(v113, v114, v59, v115, v116);
          v11 = v124;
          v17 = objc_msgSend_gridValue_(TSCEGridValue, v118, v117, v119, v120);

          v9 = v122;
          v8 = v123;
          goto LABEL_31;
        }
      }
    }

    else if (!isTokenOrEmptyArg)
    {
      goto LABEL_12;
    }

    v57 = objc_msgSend_emptyCellValue(TSCEEmptyCellValue, v42, v43, v44, v45);
    v58 = v138;
    v138 = v57;

    goto LABEL_12;
  }

  v17 = objc_msgSend_raiseErrorOrConvert_(a3, v24, v16, v25, v26);
LABEL_32:

LABEL_33:

  return v17;
}

@end