@interface TSCEFunction_AVERAGEA
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_AVERAGEA

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v7 = **a5;
  v139[0] = 0;
  v125 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v7, a2, a3, a4, 0, 1, v139);
  v8 = v139[0];
  if (v8)
  {
    v13 = v8;
    v14 = objc_msgSend_raiseErrorOrConvert_(a3, v9, v8, v11, v12);
    goto LABEL_49;
  }

  v123 = objc_msgSend_zero(TSCENumberValue, v9, v10, v11, v12);
  v19 = objc_msgSend_count(v125, v15, v16, v17, v18);
  v24 = a3;
  v133[0] = v24;
  v133[1] = a4;
  v134 = 0;
  v135[0] = 0;
  *(v135 + 7) = 0;
  v136 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v137 = 0;
  v138 = 0;
  if (v19)
  {
    v25 = 0;
    v26 = 0;
    v124 = 0;
    v27 = 0;
    v28 = 0.0;
    while (1)
    {
      v29 = objc_msgSend_valueAtIndex_accessContext_(v125, v20, v25, v133, v23, v123);
      if (objc_msgSend_isError(v29, v30, v31, v32, v33))
      {
        v55 = objc_msgSend_errorWithContext_(v29, v34, v24, v36, v37);
        v14 = objc_msgSend_raiseErrorOrConvert_(v24, v94, v55, v95, v96);
        goto LABEL_44;
      }

      if ((objc_msgSend_isNil(v29, v34, v35, v36, v37) & 1) == 0)
      {
        v45 = objc_msgSend_deepType_(v29, v38, v24, v39, v40);
        if (v45 > 4)
        {
          if (v45 != 10 && v45 != 5)
          {
LABEL_24:
            v71 = MEMORY[0x277D81150];
            v72 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "+[TSCEFunction_AVERAGEA evaluateForArgsWithContext:functionSpec:arguments:]", v43, v44);
            v76 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v73, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStatisticalFunctions.mm", v74, v75);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v71, v77, v72, v76, 504, 0, "Have to set the type of vector appropriately.");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v78, v79, v80, v81);
            goto LABEL_27;
          }

LABEL_16:
          if (v124)
          {
LABEL_42:
            v55 = objc_msgSend_functionName(a4, v41, v42, v43, v44);
            v108 = objc_msgSend_mixedTypeManipulationErrorForFunctionName_(TSCEError, v116, v55, v117, v118);
            v14 = objc_msgSend_raiseErrorOrConvert_(v24, v119, v108, v120, v121);
LABEL_43:

LABEL_44:
            v13 = 0;
            goto LABEL_45;
          }

          ++v26;
          if (v27)
          {
            v131 = 0;
            v55 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v29, v41, v24, a4, 0, &v131);
            v56 = v131;
            if (v56)
            {
              v13 = v56;
              v14 = objc_msgSend_raiseErrorOrConvert_(v24, v57, v56, v58, v59);
              v124 = 0;
LABEL_45:

              goto LABEL_46;
            }

            if ((objc_msgSend_dimensionsMatchModuloCurrency_(v123, v57, v55, v58, v59) & 1) == 0)
            {
              v108 = objc_msgSend_functionName(a4, v60, v61, v62, v63);
              v112 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v109, v108, v110, v111);
              v14 = objc_msgSend_raiseErrorOrConvert_(v24, v113, v112, v114, v115);

              v124 = 0;
              goto LABEL_43;
            }

            v130 = 0;
            v64 = objc_msgSend_add_functionSpec_outError_(v123, v60, v55, a4, &v130);
            v13 = v130;

            if (v13)
            {
              v14 = objc_msgSend_raiseErrorOrConvert_(v24, v65, v13, v66, v67, v64);
              v123 = v64;
              v124 = 0;
              goto LABEL_45;
            }
          }

          else
          {
            v132 = 0;
            v64 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v29, v41, v24, a4, 0, &v132);
            v13 = v132;

            if (v13)
            {
              v124 = 0;
              v14 = objc_msgSend_raiseErrorOrConvert_(v24, v68, v13, v69, v70);
              goto LABEL_47;
            }
          }

          v123 = v64;
          v124 = 0;
          v27 = 1;
          goto LABEL_27;
        }

        if (v45 == 2)
        {
          goto LABEL_16;
        }

        if (v45 != 3)
        {
          goto LABEL_24;
        }

        if (v27)
        {
          goto LABEL_42;
        }

        ++v26;
        if (v124)
        {
          v128 = 0;
          v46 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v29, v41, v24, a4, 0, &v128);
          v13 = v128;
          objc_msgSend_timeIntervalSinceDate_(v46, v47, v124, v48, v49);
          v51 = v50;

          if (v13)
          {
            v14 = objc_msgSend_raiseErrorOrConvert_(v24, v52, v13, v53, v54);
            goto LABEL_46;
          }

          v27 = 0;
          v28 = v28 + v51;
        }

        else
        {
          v129 = 0;
          v82 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v29, v41, v24, a4, 0, &v129);
          v83 = v129;
          if (v83)
          {
            v13 = v83;
            v14 = objc_msgSend_raiseErrorOrConvert_(v24, v84, v83, v85, v86);
            v124 = v82;
            goto LABEL_46;
          }

          v27 = 0;
          v124 = v82;
        }
      }

LABEL_27:

      if (v19 == ++v25)
      {
        if (!v26)
        {
          v90 = v124;
          goto LABEL_32;
        }

        if (v124)
        {
          v29 = objc_msgSend_dateByAddingTimeInterval_(v124, v20, v21, v22, v23, v28 / v26);
          v14 = objc_msgSend_dateValue_(TSCEDateValue, v87, v29, v88, v89);
          v13 = 0;
          goto LABEL_46;
        }

        TSUDecimal::operator=();
        v100 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v97, v127, v98, v99);
        v126 = 0;
        v14 = objc_msgSend_divide_outError_(v123, v101, v100, &v126, v102);
        v13 = v126;

        v106 = v123;
        if (v13)
        {
          v107 = objc_msgSend_raiseErrorOrConvert_(v24, v103, v13, v104, v105);
        }

        goto LABEL_48;
      }
    }
  }

  v90 = 0;
LABEL_32:
  v29 = objc_msgSend_divideByZeroError(TSCEError, v20, v21, v22, v23, v123);
  v14 = objc_msgSend_raiseErrorOrConvert_(v24, v91, v29, v92, v93);
  v13 = 0;
  v124 = v90;
LABEL_46:
  v64 = v123;
LABEL_47:

  v106 = v64;
LABEL_48:

LABEL_49:

  return v14;
}

@end