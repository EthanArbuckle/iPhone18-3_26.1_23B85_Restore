@interface TSCEFunction_SUMIF
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_SUMIF

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = **a5;
  v163[0] = 0;
  v141 = a4;
  v10 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v8, v9, a3, a4, 0, 1, v163);
  v15 = v163[0];
  if (v15)
  {
    v16 = objc_msgSend_raiseErrorOrConvert_(a3, v11, v15, v13, v14);
    goto LABEL_53;
  }

  if (objc_msgSend_gridKind(v10, v11, v12, v13, v14) != 2)
  {
    goto LABEL_11;
  }

  v162 = 0;
  v18 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v10, v17, a3, a4, 0, &v162);
  v15 = v162;
  if (!v15)
  {
    v27 = objc_msgSend_calcEngine(a3, v19, v20, v21, v22);
    if (v18)
    {
      objc_msgSend_rangeRef(v18, v23, v24, v25, v26);
    }

    else
    {
      v153 = 0u;
      *v154 = 0u;
    }

    IsWithinTable = objc_msgSend_rangeIsWithinTable_(v27, v23, &v153, v25, v26);

    if ((IsWithinTable & 1) == 0)
    {
      v45 = objc_msgSend_invalidReferenceError(TSCEError, v29, v30, v31, v32);
      v52 = objc_msgSend_raiseErrorOrConvert_(a3, v58, v45, v59, v60);
      goto LABEL_22;
    }

LABEL_11:
    v18 = *(*a5 + 8);
    if (*(a5 + 1) - *a5 < 0x11uLL || (objc_msgSend_isTokenOrEmptyArg(*(*a5 + 16), v33, v34, v35, v36) & 1) != 0)
    {
      v38 = v10;
      v140 = 0;
      goto LABEL_14;
    }

    v50 = *(*a5 + 16);
    v161 = 0;
    v45 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v50, v37, a3, v141, 2, 1, &v161);
    v51 = v161;
    if (!v51)
    {
      v140 = 2;
      v38 = v45;
LABEL_14:
      v43 = v38;
      v45 = v38;
      if (objc_msgSend_gridKind(v38, v39, v40, v41, v42) == 2)
      {
        v160 = 0;
        v142 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v43, v44, a3, v141, 0, &v160);
        v15 = v160;
        if (v15)
        {
          goto LABEL_28;
        }

        v57 = objc_msgSend_calcEngine(a3, v46, v47, v48, v49);
        if (v142)
        {
          objc_msgSend_rangeRef(v142, v53, v54, v55, v56);
        }

        else
        {
          v153 = 0u;
          *v154 = 0u;
        }

        v61 = objc_msgSend_rangeIsWithinTable_(v57, v53, &v153, v55, v56);

        if ((v61 & 1) == 0)
        {
          v109 = objc_msgSend_invalidReferenceError(TSCEError, v62, v63, v64, v65);
          v16 = objc_msgSend_raiseErrorOrConvert_(a3, v110, v109, v111, v112);
          goto LABEL_49;
        }
      }

      v159 = 0;
      v142 = objc_msgSend_logicalTestWithCriterion_evaluationContext_functionSpec_outError_(TSCELogicalTest, v44, v18, a3, v141, &v159);
      v15 = v159;
      if (v15)
      {
LABEL_28:
        v16 = objc_msgSend_raiseErrorOrConvert_(a3, v46, v15, v48, v49);
LABEL_50:

        goto LABEL_51;
      }

      if (objc_msgSend_count(v10, v46, v66, v48, v49))
      {
        if (objc_msgSend_count(v45, v67, v68, v69, v70))
        {
          v75 = objc_msgSend_dimensions(v45, v71, v72, v73, v74);
          v80 = objc_msgSend_dimensions(v10, v76, v77, v78, v79);
          if (v75 == v80)
          {
            v137 = HIDWORD(v75);
            if (HIDWORD(v75) == HIDWORD(v80))
            {
              v136 = v75;
              v139 = v45;
              v131 = v18;
              v133 = v8;
              v138 = objc_alloc_init(TSCESumAccumulator);
              *&v153 = a3;
              *(&v153 + 1) = v141;
              *v154 = 0;
              *&v154[8] = 0;
              v154[12] = 1;
              *&v154[13] = 0;
              v155 = 0;
              v135 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
              v156 = v135;
              v157 = 0;
              v158 = 0;
              v85 = v153;
              v15 = 0;
              v144[0] = v85;
              v144[1] = v141;
              v145 = 0;
              v146 = 0;
              v147 = 1;
              v148 = 0;
              v149 = 0;
              v150 = v135;
              v151 = 0;
              v152 = 0;
              if (v137)
              {
                v89 = v85;
                v90 = 0;
                v91 = 0;
                v15 = 0;
                do
                {
                  v92 = v136;
                  v93 = v90;
                  if (v136)
                  {
                    do
                    {
                      v94 = v10;
                      v95 = objc_msgSend_valueAtGridCoord_accessContext_(v10, v86, v93, &v153, v88, v131, v133);
                      v143 = v15;
                      v98 = objc_msgSend_compare_outError_(v142, v96, v95, &v143, v97);
                      v99 = v143;

                      if (v98)
                      {
                        v146 = v140;
                        v100 = v145;
                        v145 = 0;

                        v103 = objc_msgSend_valueAtGridCoord_accessContext_(v139, v101, v93, v144, v102);
                        v107 = objc_msgSend_deepType_(v103, v104, v89, v105, v106);
                        if (v107 == 5 || v107 == 3)
                        {
                          objc_msgSend_addValue_evaluationContext_functionSpec_(v138, v108, v103, v89, v141);
                        }
                      }

                      ++v93;
                      v15 = v99;
                      --v92;
                      v10 = v94;
                    }

                    while (v92);
                  }

                  ++v91;
                  v90 += 0x100000000;
                }

                while (v91 != v137);
              }

              v109 = v138;
              v16 = objc_msgSend_resultForFunction_(v138, v86, v141, v87, v88, v131, v133);

              v18 = v132;
              v8 = v134;
              v45 = v139;
              goto LABEL_49;
            }
          }

          v113 = objc_msgSend_functionName(v141, v81, v82, v83, v84);
          v115 = objc_msgSend_rangeSizeMismatchErrorForFunctionName_(TSCEError, v124, v113, v125, v126);
          v119 = objc_msgSend_raiseErrorOrConvert_(a3, v127, v115, v128, v129);
        }

        else
        {
          v113 = objc_msgSend_functionName(v141, v71, v72, v73, v74);
          v115 = objc_msgSend_notEnoughInputsErrorForFunctionName_argumentNumber_required_(TSCEError, v120, v113, 3, 1);
          v119 = objc_msgSend_raiseErrorOrConvert_(a3, v121, v115, v122, v123);
        }
      }

      else
      {
        v113 = objc_msgSend_functionName(v141, v67, v68, v69, v70);
        v115 = objc_msgSend_notEnoughInputsErrorForFunctionName_argumentNumber_required_(TSCEError, v114, v113, 1, 1);
        v119 = objc_msgSend_raiseErrorOrConvert_(a3, v116, v115, v117, v118);
      }

      v16 = v119;

      v15 = 0;
      v109 = v113;
LABEL_49:

      goto LABEL_50;
    }

    v15 = v51;
    v52 = objc_msgSend_raiseErrorOrConvert_(a3, v39, v51, v41, v42);
LABEL_22:
    v16 = v52;
LABEL_51:

    goto LABEL_52;
  }

  v16 = objc_msgSend_raiseErrorOrConvert_(a3, v19, v15, v21, v22);
LABEL_52:

LABEL_53:

  return v16;
}

@end