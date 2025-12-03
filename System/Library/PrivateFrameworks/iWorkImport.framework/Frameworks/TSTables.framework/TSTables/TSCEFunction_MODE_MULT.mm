@interface TSCEFunction_MODE_MULT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_MODE_MULT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v182[0] = 0;
  v8 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v7, a2, context, spec, 0, 1, v182);
  v9 = v182[0];
  v164 = v8;
  if (v9)
  {
    v14 = v9;
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v10, v9, v12, v13);
    goto LABEL_52;
  }

  v163 = objc_msgSend_array(MEMORY[0x277CBEB18], v10, v11, v12, v13);
  v20 = objc_msgSend_zero(TSCENumberValue, v16, v17, v18, v19);
  v25 = objc_msgSend_count(v8, v21, v22, v23, v24);
  contextCopy = context;
  v176[0] = contextCopy;
  v176[1] = spec;
  v177 = 0;
  v178[0] = 0;
  *(v178 + 7) = 0;
  v179 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v180 = 0;
  v181 = 0;
  if (!v25)
  {
    v73 = 0;
LABEL_23:
    v172 = 0;
    v173 = 0;
    v51 = objc_msgSend_modeArrayForArray_context_functionSpec_originalArray_outError_(TSCEFunction_MODE, v26, v163, contextCopy, spec, &v173, &v172);
    v33 = v173;
    v89 = v172;
    v161 = v89;
    if (v89)
    {
      v15 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v90, v89, v92, v93);
    }

    else
    {
      v162 = objc_msgSend_count(v33, v90, v91, v92, v93);
      memset(v171, 0, sizeof(v171));
      if (objc_msgSend_count(v51, v97, v98, v99, v100) == 1)
      {
        v109 = objc_msgSend_objectAtIndex_(v51, v101, 0, v103, v104);
        if (v73)
        {
          v170 = objc_msgSend_dateValue_(TSCEDateValue, v105, v109, v107, v108);
          sub_2210ED5B8(v171, &v170);
          v110 = v170;
        }

        else
        {
          objc_msgSend_doubleValue(v109, v105, v106, v107, v108);
          TSUDecimal::operator=();
          v169 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v134, v166, v135, v136);
          sub_2210ED5B8(v171, &v169);
          v110 = v169;
        }
      }

      else if (v162)
      {
        for (i = 0; i != v162; ++i)
        {
          for (j = 0; j < objc_msgSend_count(v51, v101, v102, v103, v104); ++j)
          {
            v113 = objc_msgSend_objectAtIndex_(v33, v101, i, v103, v104);
            v117 = objc_msgSend_objectAtIndex_(v51, v114, j, v115, v116);
            isEqual = objc_msgSend_isEqual_(v113, v118, v117, v119, v120);

            if (isEqual)
            {
              v126 = objc_msgSend_objectAtIndex_(v51, v101, j, v103, v104);
              if (v73)
              {
                v168 = objc_msgSend_dateValue_(TSCEDateValue, v122, v126, v124, v125);
                sub_2210ED5B8(v171, &v168);
                v127 = v168;
              }

              else
              {
                objc_msgSend_doubleValue(v126, v122, v123, v124, v125);
                TSUDecimal::operator=();
                v167 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v128, v166, v129, v130);
                sub_2210ED5B8(v171, &v167);
                v127 = v167;
              }

              objc_msgSend_removeObjectAtIndex_(v51, v131, j, v132, v133);
              break;
            }
          }
        }
      }

      v137 = [TSCEDenseGrid alloc];
      v144 = objc_msgSend_initWithValues_(v137, v138, v171, v139, v140);
      if (v164)
      {
        objc_msgSend_formatWithContext_(v164, v141, contextCopy, v142, v143);
      }

      else
      {
        memset(v166, 0, sizeof(v166));
      }

      v15 = objc_msgSend_gridValue_format_(TSCEGridValue, v141, v144, v166, v143);

      *&v166[0] = v171;
      sub_22107C2C0(v166);
    }

    v31 = v20;
    v30 = v73;
    goto LABEL_50;
  }

  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = v20;
  v32 = v164;
  while (1)
  {
    v33 = objc_msgSend_valueAtIndex_accessContext_(v32, v26, v28, v176, v27);
    if (objc_msgSend_isError(v33, v34, v35, v36, v37))
    {
      v51 = objc_msgSend_errorWithContext_(v33, v38, contextCopy, v39, v40);
      v15 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v94, v51, v95, v96);
      goto LABEL_49;
    }

    v41 = objc_msgSend_deepType_(v33, v38, contextCopy, v39, v40);
    if (objc_msgSend_isNil(v33, v42, v43, v44, v45))
    {
      goto LABEL_18;
    }

    if (v41 == 3)
    {
      v50 = contextCopy;
      if ((v29 & 1) == 0)
      {
        v174 = 0;
        v73 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v33, v46, contextCopy, spec, 0, &v174);
        v74 = v174;

        if (v74)
        {
          v15 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v75, v74, v76, v77);
          v161 = v74;
          goto LABEL_51;
        }

        objc_msgSend_addObject_(v163, v75, v73, v76, v77);
        v29 = 0;
        goto LABEL_19;
      }

LABEL_48:
      v51 = objc_msgSend_functionName(spec, v46, v47, v48, v49);
      v148 = objc_msgSend_mixedTypeManipulationErrorForFunctionName_(TSCEError, v145, v51, v146, v147);
      v15 = objc_msgSend_raiseErrorOrConvert_(v50, v149, v148, v150, v151);

LABEL_49:
      v161 = 0;
      goto LABEL_50;
    }

    if (v41 != 5)
    {
      v78 = MEMORY[0x277D81150];
      v79 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "+[TSCEFunction_MODE_MULT evaluateForArgsWithContext:functionSpec:arguments:]", v48, v49);
      v83 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v80, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStatisticalFunctions.mm", v81, v82);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v78, v84, v79, v83, 4277, 0, "Have to set the type of vector appropriately.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v85, v86, v87, v88);
LABEL_18:
      v73 = v30;
LABEL_19:
      v20 = v31;
      goto LABEL_20;
    }

    v50 = contextCopy;
    if (v30)
    {
      goto LABEL_48;
    }

    v175 = 0;
    v51 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v33, v46, contextCopy, spec, 0, &v175);
    v55 = v175;
    if (v55)
    {
      v15 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v52, v55, v53, v54);
      v161 = v55;
      goto LABEL_58;
    }

    if ((v29 & 1) != 0 && (objc_msgSend_dimensionsMatchModuloCurrency_(v31, v52, v51, v53, v54) & 1) == 0)
    {
      break;
    }

    v20 = v51;

    v60 = MEMORY[0x277CCABB0];
    objc_msgSend_rawDoubleValue(v20, v61, v62, v63, v64);
    v69 = objc_msgSend_numberWithDouble_(v60, v65, v66, v67, v68);
    objc_msgSend_addObject_(v163, v70, v69, v71, v72);

    v73 = 0;
    v29 = 1;
LABEL_20:

    ++v28;
    v31 = v20;
    v30 = v73;
    v32 = v164;
    if (v25 == v28)
    {
      goto LABEL_23;
    }
  }

  v153 = objc_msgSend_functionName(spec, v56, v57, v58, v59);
  v157 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v154, v153, v155, v156);
  v161 = 0;
  v15 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v158, v157, v159, v160);

LABEL_58:
  v30 = 0;
LABEL_50:

  v73 = v30;
LABEL_51:

  v8 = v164;
  v14 = v161;
LABEL_52:

  return v15;
}

@end