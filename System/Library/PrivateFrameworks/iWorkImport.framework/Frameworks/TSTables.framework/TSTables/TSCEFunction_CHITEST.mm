@interface TSCEFunction_CHITEST
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_CHITEST

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v186[0] = 0;
  v9 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v8, a2, context, spec, 0, 1, v186);
  v10 = v186[0];
  if (v10)
  {
    v14 = v10;
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v11, v10, v12, v13);
    goto LABEL_75;
  }

  v16 = *(*arguments + 8);
  v185 = 0;
  v17 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v16, v11, context, spec, 1, 1, &v185);
  v18 = v185;
  if (!v18)
  {
    v23 = objc_msgSend_dimensions(v17, v19, v20, v21, v22);
    v28 = objc_msgSend_dimensions(v9, v24, v25, v26, v27);
    v33 = HIDWORD(v23);
    v34 = HIDWORD(v28);
    v35 = HIDWORD(v23) == 1 || v23 == 1;
    if (v35 && (v34 != 1 ? (v36 = v28 == 1) : (v36 = 1), v36))
    {
      v37 = objc_msgSend_count(v9, v29, v30, v31, v32);
      if (v37 != objc_msgSend_count(v17, v38, v39, v40, v41))
      {
        v42 = objc_msgSend_functionName(spec, v29, v30, v31, v32);
        v46 = objc_msgSend_differentNumberOfDataPointsErrorForFunctionName_(TSCEError, v43, v42, v44, v45);
        v50 = objc_msgSend_raiseErrorOrConvert_(context, v47, v46, v48, v49);
LABEL_56:
        v15 = v50;

        v14 = 0;
        goto LABEL_74;
      }
    }

    else if (v33 != v34 || v23 != v28)
    {
      v42 = objc_msgSend_functionName(spec, v29, v30, v31, v32);
      v46 = objc_msgSend_rangeSizeMismatchErrorForFunctionName_(TSCEError, v52, v42, v53, v54);
      v50 = objc_msgSend_raiseErrorOrConvert_(context, v55, v46, v56, v57);
      goto LABEL_56;
    }

    if (v33 != 1 || v23 != 1)
    {
      if (v23 >> 33)
      {
        v59 = HIDWORD(v23) - 1;
      }

      else
      {
        v59 = 1;
      }

      if (v23 <= 1)
      {
        v60 = 1;
      }

      else
      {
        v60 = v23 - 1;
      }

      v61 = objc_msgSend_count(v17, v29, v30, v31, v32);
      v179[0] = context;
      v179[1] = spec;
      v180 = 0;
      v181[0] = 0;
      *(v181 + 7) = 0;
      v182 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
      v183 = 0;
      v184 = 0;
      v168 = v179[0];
      v173[0] = v168;
      v173[1] = spec;
      v174 = 0;
      v175[0] = 1;
      *(v175 + 7) = 0;
      v176 = v182;
      v177 = 0;
      v178 = 0;
      if (v61)
      {
        v66 = 0;
        v167 = 0;
        v165 = v59 * v60;
        v67 = 0.0;
        while (1)
        {
          v68 = objc_msgSend_valueAtIndex_accessContext_(v9, v62, v66, v179, v65);
          v71 = objc_msgSend_valueAtIndex_accessContext_(v17, v69, v66, v173, v70);
          if (objc_msgSend_isError(v68, v72, v73, v74, v75))
          {
            break;
          }

          if (objc_msgSend_isError(v71, v76, v77, v78, v79))
          {
            v135 = objc_msgSend_errorWithContext_(v71, v80, v168, v82, v83);
            v139 = objc_msgSend_raiseErrorOrConvert_(v168, v140, v135, v141, v142);
            goto LABEL_61;
          }

          v88 = (objc_msgSend_isNil(v68, v80, v81, v82, v83) & 1) == 0 && objc_msgSend_deepType_(v68, v84, v168, v86, v87) == 5;
          v92 = 1.0;
          if ((objc_msgSend_isNil(v71, v84, v85, v86, v87) & 1) != 0 || (objc_msgSend_deepType_(v71, v89, v168, v90, v91) == 5 ? (v94 = v88) : (v94 = 0), !v94))
          {
            v117 = 1.0;
          }

          else
          {
            v95 = v61;
            v172 = 0;
            v166 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v68, v93, v168, spec, 0, &v172);
            v96 = v172;
            v171 = v96;
            v98 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v71, v97, v168, spec, 1, &v171);
            v14 = v171;

            if (v14)
            {
              v15 = objc_msgSend_raiseErrorOrConvert_(v168, v99, v14, v101, v102);
              goto LABEL_66;
            }

            if (objc_msgSend_hasUnits(v166, v99, v100, v101, v102))
            {
              v143 = objc_msgSend_functionName(spec, v103, v104, v105, v106);
              v146 = objc_msgSend_unitsNotAllowedErrorForFunctionName_argumentNumber_(TSCEError, v144, v143, 1, v145);
              v150 = objc_msgSend_raiseErrorOrConvert_(v168, v147, v146, v148, v149);
              goto LABEL_65;
            }

            if (objc_msgSend_hasUnits(v98, v103, v104, v105, v106))
            {
              v143 = objc_msgSend_functionName(spec, v107, v108, v109, v110);
              v146 = objc_msgSend_unitsNotAllowedErrorForFunctionName_argumentNumber_(TSCEError, v151, v143, 2, v152);
              v150 = objc_msgSend_raiseErrorOrConvert_(v168, v153, v146, v154, v155);
LABEL_65:
              v15 = v150;

LABEL_66:
              v135 = v166;
              goto LABEL_71;
            }

            objc_msgSend_doubleRepresentation(v166, v107, v108, v109, v110);
            v92 = v111;
            objc_msgSend_doubleRepresentation(v98, v112, v113, v114, v115);
            v117 = v116;

            if (v117 == 0.0)
            {
              v135 = objc_msgSend_divideByZeroError(TSCEError, v118, v119, v120, v121);
              v139 = objc_msgSend_raiseErrorOrConvert_(v168, v156, v135, v157, v158);
              goto LABEL_61;
            }

            if (v117 < 0.0)
            {
              v135 = objc_msgSend_functionName(spec, v118, v119, v120, v121);
              v98 = objc_msgSend_negativeArrayValueErrorForFunctionName_argumentNumber_(TSCEError, v159, v135, 2, v160);
              v15 = objc_msgSend_raiseErrorOrConvert_(v168, v161, v98, v162, v163);
              v14 = 0;
LABEL_71:

LABEL_72:
              goto LABEL_73;
            }

            ++v167;
            v61 = v95;
          }

          v67 = v67 + (v92 - v117) * (v92 - v117) / v117;

          if (v61 == ++v66)
          {
            if (!v167)
            {
              goto LABEL_57;
            }

            pthread_mutex_lock(&stru_27CFB4098);
            v122.n128_f64[0] = v165;
            v123.n128_f64[0] = v67;
            sub_2213BCC9C(v122, v123);
            pthread_mutex_unlock(&stru_27CFB4098);
            TSUDecimal::operator=();
            if (v17)
            {
              objc_msgSend_formatWithContext_(v17, v124, v168, v125, v126);
            }

            else
            {
              memset(v169, 0, sizeof(v169));
            }

            v15 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v124, v170, v169, v126);
            goto LABEL_58;
          }
        }

        v135 = objc_msgSend_errorWithContext_(v68, v76, v168, v78, v79);
        v139 = objc_msgSend_raiseErrorOrConvert_(v168, v136, v135, v137, v138);
LABEL_61:
        v15 = v139;
        v14 = 0;
        goto LABEL_72;
      }

LABEL_57:
      v131 = objc_msgSend_divideByZeroError(TSCEError, v62, v63, v64, v65);
      v15 = objc_msgSend_raiseErrorOrConvert_(v168, v132, v131, v133, v134);

LABEL_58:
      v14 = 0;
LABEL_73:

      goto LABEL_74;
    }

    v42 = objc_msgSend_functionName(spec, v29, v30, v31, v32);
    v46 = objc_msgSend_notEnoughInputsErrorForFunctionName_argumentNumber_required_(TSCEError, v127, v42, 1, 2);
    v50 = objc_msgSend_raiseErrorOrConvert_(context, v128, v46, v129, v130);
    goto LABEL_56;
  }

  v14 = v18;
  v15 = objc_msgSend_raiseErrorOrConvert_(context, v19, v18, v21, v22);
LABEL_74:

LABEL_75:

  return v15;
}

@end