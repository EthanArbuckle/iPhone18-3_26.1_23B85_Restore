@interface TSCEFunction_CONVERT
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_CONVERT

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = **a5;
  v182[0] = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, a3, a4, 0, v182);
  v11 = v182[0];
  if (v11)
  {
    v15 = v11;
    v16 = objc_msgSend_raiseErrorOrConvert_(a3, v12, v11, v13, v14);
    goto LABEL_35;
  }

  v17 = *(*a5 + 8);
  v181 = 0;
  v19 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v17, v18, a3, a4, 1, &v181);
  v20 = v181;
  if (!v20)
  {
    v24 = *(*a5 + 16);
    v180 = 0;
    v175 = v24;
    v176 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v24, v25, a3, a4, 2, &v180);
    v15 = v180;
    if (v15)
    {
      v16 = objc_msgSend_raiseErrorOrConvert_(a3, v26, v15, v27, v28);
LABEL_33:

      goto LABEL_34;
    }

    v29 = objc_msgSend_prefixedUnitForString_(TSCEUnitRegistry, v26, v19, v27, v28);
    v33 = v29;
    v34 = v29;
    if (v29 >= 0x10000 && v29 != 0)
    {
      v173 = HIWORD(v29);
      if (v29 == 9 || (objc_msgSend_unitIsMetric_(TSCEUnitRegistry, v30, v173, v31, v32) & 1) != 0)
      {
        v41 = objc_msgSend_prefixedUnitForString_(TSCEUnitRegistry, v30, v176, v31, v32);
        v45 = v41;
        if (v41 < 0x10000 || !v41)
        {
          v36 = objc_msgSend_invalidUnitStringError_(TSCEError, v42, v176, v43, v44);
          v40 = objc_msgSend_raiseErrorOrConvert_(a3, v72, v36, v73, v74);
          goto LABEL_31;
        }

        v172 = HIWORD(v41);
        v168 = v41;
        if (v41 == 9 || (v46 = v41, IsMetric = objc_msgSend_unitIsMetric_(TSCEUnitRegistry, v42, v172, v43, v44), v45 = v46, (IsMetric & 1) != 0))
        {
          v170 = v45;
          v169 = objc_msgSend_dimensionForUnit_(TSCEUnitRegistry, v42, v173, v43, v44);
          if (objc_msgSend_hasUnits(v10, v48, v49, v50, v51))
          {
            v171 = v10;
            v167 = objc_msgSend_unit(v171, v56, v57, v58, v59);
            v68 = objc_msgSend_unit(v171, v60, v61, v62, v63);
            v70 = v173 == 6 && v34 == 12;
            v166 = v70;
            if (v167 == 6)
            {
              if (v173 == 6 && v34 == 9)
              {
                goto LABEL_29;
              }
            }

            else if (v173 == objc_msgSend_unit(v171, v64, v65, v66, v67))
            {
LABEL_29:
              v71 = 0;
LABEL_46:
              if ((objc_msgSend_dimension(v171, v64, v65, v66, v67) | v169) != 0 || v71)
              {
                v113 = objc_msgSend_functionName(a4, v109, v110, v111, v112);
                v117 = objc_msgSend_differentDimensionsErrorForFunctionName_(TSCEError, v114, v113, v115, v116);
                v118 = v171;
                v16 = objc_msgSend_raiseErrorOrConvert_(a3, v119, v117, v120, v121);

LABEL_48:
                goto LABEL_33;
              }

              if (v172 == 1)
              {
                v118 = v171;
                TSUDecimal::operator=();
                v179[0] = objc_msgSend_decimalRepresentation(v171, v122, v123, v124, v125);
                v179[1] = v126;
                v127 = objc_msgSend_convertInNumber_outNumber_fromUnit_toUnit_(TSCEUnitRegistry, v126, v179, &v178, v33, v170);
                v113 = v127;
                if (v127)
                {
                  if (objc_msgSend_errorType(v127, v128, v129, v130, v131) == 81)
                  {
                    v174 = objc_msgSend_functionName(a4, v132, v133, v134, v135);
                    v139 = objc_msgSend_differentDimensionsErrorForFunctionName_(TSCEError, v136, v174, v137, v138);
                    v16 = objc_msgSend_raiseErrorOrConvert_(a3, v140, v139, v141, v142);
                  }

                  else
                  {
                    v16 = objc_msgSend_raiseErrorOrConvert_(a3, v132, v113, v134, v135);
                  }

                  goto LABEL_48;
                }

                v16 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v128, &v178, v130, v131);
              }

              else
              {
                if (v172 == 6 && v168 == 12)
                {
                  v146 = [TSCENumberValue alloc];
                  v151 = objc_msgSend_rawDecimalValue(v171, v147, v148, v149, v150);
                  v154 = objc_msgSend_initWithDecimal_baseUnit_(v146, v152, v151, 7, v153);
                }

                else
                {
                  v155 = [TSCENumberValue alloc];
                  v160 = objc_msgSend_rawDecimalValue(v171, v156, v157, v158, v159);
                  v154 = objc_msgSend_initWithDecimal_baseUnit_(v155, v161, v160, v172, v162);
                }

                v16 = v154;
                v118 = v171;
              }

LABEL_62:
              if (v8)
              {
                objc_msgSend_formatWithContext_(v8, v143, a3, v144, v145);
              }

              else
              {
                memset(&v177, 0, sizeof(v177));
              }

              TSCEFormat::TSCEFormat(&v178, &v177);
              objc_msgSend_setFormat_(v16, v163, &v178, v164, v165);
              goto LABEL_33;
            }

            v71 = v68 != 7 || !v166;
            goto LABEL_46;
          }

          v178._tskFormat = objc_msgSend_decimalRepresentation(v10, v52, v53, v54, v55);
          *&v178._formatType = v84;
          TSUDecimal::operator=();
          v86 = objc_msgSend_convertInNumber_outNumber_fromUnit_toUnit_(TSCEUnitRegistry, v85, &v178, v179, v33, v170);
          v36 = v86;
          if (!v86)
          {
            v16 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v87, v179, v89, v90);
            goto LABEL_62;
          }

          if (objc_msgSend_errorType(v86, v87, v88, v89, v90) == 81)
          {
            v95 = objc_msgSend_functionName(a4, v91, v92, v93, v94);
            v99 = objc_msgSend_differentDimensionsErrorForFunctionName_(TSCEError, v96, v95, v97, v98);
            v16 = objc_msgSend_raiseErrorOrConvert_(a3, v100, v99, v101, v102);

            goto LABEL_32;
          }

          v40 = objc_msgSend_raiseErrorOrConvert_(a3, v91, v36, v93, v94);
LABEL_31:
          v16 = v40;
LABEL_32:

          goto LABEL_33;
        }

        v36 = objc_msgSend_substringFromIndex_(v176, v42, 1, v43, v44);
        v79 = objc_msgSend_nonMetricUnitPrefixErrorForUnitString_(TSCEError, v103, v36, v104, v105);
        v83 = objc_msgSend_raiseErrorOrConvert_(a3, v106, v79, v107, v108);
      }

      else
      {
        v36 = objc_msgSend_substringFromIndex_(v19, v30, 1, v31, v32);
        v79 = objc_msgSend_nonMetricUnitPrefixErrorForUnitString_(TSCEError, v76, v36, v77, v78);
        v83 = objc_msgSend_raiseErrorOrConvert_(a3, v80, v79, v81, v82);
      }

      v16 = v83;

      goto LABEL_32;
    }

    v36 = objc_msgSend_invalidUnitStringError_(TSCEError, v30, v19, v31, v32);
    v40 = objc_msgSend_raiseErrorOrConvert_(a3, v37, v36, v38, v39);
    goto LABEL_31;
  }

  v15 = v20;
  v16 = objc_msgSend_raiseErrorOrConvert_(a3, v21, v20, v22, v23);
LABEL_34:

LABEL_35:

  return v16;
}

@end