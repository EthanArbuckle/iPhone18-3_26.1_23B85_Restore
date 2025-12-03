@interface TSCEFunction_VDB
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_VDB

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = objc_msgSend_calcEngine(context, a2, context, spec, arguments);
  sub_221327DF4(v175, spec, v8);

  v9 = **arguments;
  v174 = 0;
  v11 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v10, context, spec, 0, &v174);
  v12 = v174;
  sub_2213188C0(v175, v11);
  v173._decimal.w[0] = objc_msgSend_decimalRepresentation(v11, v13, v14, v15, v16);
  v173._decimal.w[1] = v17;
  v18 = *(*arguments + 8);
  v172 = v12;
  v20 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v18, v19, context, spec, 1, &v172);
  v21 = v172;

  sub_2213188C0(v175, v20);
  v171[1] = objc_msgSend_decimalRepresentation(v20, v22, v23, v24, v25);
  v171[2] = v26;
  if (v21)
  {
    v29 = objc_msgSend_raiseErrorOrConvert_(context, v26, v21, v27, v28);
    goto LABEL_29;
  }

  if (v176)
  {
    v29 = objc_msgSend_raiseErrorOrConvert_(context, v26, v176, v27, v28);
    v21 = 0;
    goto LABEL_29;
  }

  v30 = *(*arguments + 16);
  v171[0] = 0;
  v150 = v18;
  v151 = v9;
  v32 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v30, v31, context, spec, 2, v171);
  v33 = v30;
  v34 = v171[0];
  v153 = v32;
  v170._decimal.w[0] = objc_msgSend_decimalRepresentation(v32, v35, v36, v37, v38);
  v170._decimal.w[1] = v39;
  v40 = *(*arguments + 24);
  v169 = v34;
  v149 = v40;
  v42 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v40, v41, context, spec, 3, &v169);
  v43 = v169;

  v148 = v42;
  objc_msgSend_doubleRepresentation(v42, v44, v45, v46, v47);
  v49 = v48;
  v50 = *(*arguments + 32);
  v168 = v43;
  v51 = v50;
  v53 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v50, v52, context, spec, 4, &v168);
  v21 = v168;

  v152 = v53;
  v54 = v53;
  v55 = v153;
  v56 = v33;
  objc_msgSend_doubleRepresentation(v54, v57, v58, v59, v60);
  if (v21)
  {
    v29 = objc_msgSend_raiseErrorOrConvert_(context, v61, v21, v62, v63);
  }

  else
  {
    v65 = v64;
    TSUDecimal::operator=();
    if (*(arguments + 1) - *arguments < 0x29uLL)
    {
      v80 = 0;
    }

    else
    {
      v66 = *(*arguments + 40);
      if ((objc_msgSend_isTokenOrEmptyArg(v66, v67, v68, v69, v70) & 1) == 0)
      {
        v166 = 0;
        v72 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v66, v71, context, spec, 5, &v166);
        v21 = v166;
        v167._decimal.w[0] = objc_msgSend_decimalRepresentation(v72, v73, v74, v75, v76);
        v167._decimal.w[1] = v77;
        if (v21)
        {
          v29 = objc_msgSend_raiseErrorOrConvert_(context, v77, v21, v78, v79);

          v56 = v33;
          v55 = v153;
          goto LABEL_27;
        }

        v56 = v33;
      }

      if (*(arguments + 1) - *arguments < 0x31uLL)
      {
        v80 = 0;
        v55 = v153;
      }

      else
      {
        v81 = *(*arguments + 48);
        v55 = v153;
        if (objc_msgSend_isTokenOrEmptyArg(v81, v82, v83, v84, v85))
        {
          v80 = 0;
        }

        else
        {
          v165 = 0;
          v80 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v81, v86, context, spec, 6, &v165);
          v87 = v165;
          if (v87)
          {
            v21 = v87;
            v29 = objc_msgSend_raiseErrorOrConvert_(context, v88, v87, v89, v90);

            goto LABEL_27;
          }
        }
      }
    }

    TSUDecimal::operator=();
    if (TSUDecimal::operator<())
    {
      v95 = objc_msgSend_functionName(spec, v91, v92, v93, v94);
      v97 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v96, v95, 3, 5, 0, 1);
      v101 = objc_msgSend_raiseErrorOrConvert_(context, v98, v97, v99, v100);
    }

    else
    {
      TSUDecimal::operator=();
      if (TSUDecimal::operator<())
      {
        v95 = objc_msgSend_functionName(spec, v102, v103, v104, v105);
        v97 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v106, v95, 3, 4, 0, 1);
        v101 = objc_msgSend_raiseErrorOrConvert_(context, v107, v97, v108, v109);
      }

      else
      {
        if (v49 <= v65)
        {
          v114 = v152;
          TSUDecimal::operator=();
          if (TSUDecimal::operator<())
          {
            if (!((v49 >= 1.0) | v80 & 1) && v49 != v65)
            {
              v177 = v173;
              TSUDecimal::operator-=();
              v164 = v177;
            }

            v116 = [TSCENumberValue alloc];
            v121 = sub_2213189D8(v175, v117, v118, v119, v120);
            v124 = objc_msgSend_initWithDecimal_baseUnit_(v116, v122, &v164, v121, v123);
          }

          else
          {
            v177 = v167;
            TSUDecimal::operator/=();
            v163 = v177;
            TSUDecimal::operator=();
            TSUDecimal::operator=();
            TSUDecimal::operator=();
            TSUDecimal::operator=();
            if (v65 + 1.0 > 1.0)
            {
              v125 = 0;
              v126 = 0;
              v127 = ceil(v49);
              v128 = ceil(v65);
              v129 = 2;
              v130 = 1.0;
              v146 = v51;
              v147 = v56;
              do
              {
                if (v126)
                {
                  v126 = 1;
                }

                else
                {
                  v177 = v173;
                  TSUDecimal::operator-=();
                  TSUDecimal::operator-=();
                  v131 = v177;
                  TSUDecimal::operator=();
                  v177 = v170;
                  TSUDecimal::operator-=();
                  v132 = v177._decimal.w[1];
                  v133 = v177._decimal.w[0];
                  TSUDecimal::operator=();
                  v177 = __PAIR128__(v132, v133);
                  TSUDecimal::operator+=();
                  v157 = v177;
                  v177 = v131;
                  TSUDecimal::operator/=();
                  v158 = v177;
                  TSUDecimal::operator=();
                  v177 = v155;
                  TSUDecimal::operator-=();
                  v156 = v177;
                  v51 = v146;
                  v56 = v147;
                  v55 = v153;
                  TSUDecimal::operator=();
                  TSUDecimal::doubleValue(&v156);
                  v135 = v134;
                  TSUDecimal::doubleValue(&v154);
                  pow(v135, v136);
                  TSUDecimal::operator=();
                  v157 = v177;
                  v177 = v173;
                  TSUDecimal::operator*=();
                  TSUDecimal::operator*=();
                  v159 = v177;
                  TSUDecimal::operator=();
                  v177 = v155;
                  TSUDecimal::operator-=();
                  v156 = v177;
                  v177 = v173;
                  TSUDecimal::operator*=();
                  v160 = v177;
                  if (v125)
                  {
                    TSUDecimal::operator=();
                    v177 = v173;
                    TSUDecimal::operator-=();
                    v160 = v177;
                  }

                  v177 = v173;
                  TSUDecimal::operator-=();
                  TSUDecimal::operator-=();
                  v156 = v177;
                  if ((TSUDecimal::operator<=() & 1) == 0)
                  {
                    v177 = v173;
                    TSUDecimal::operator-=();
                    TSUDecimal::operator-=();
                    v159 = v177;
                    v125 = 1;
                  }

                  v137 = TSUDecimal::operator<=() | v80;
                  if ((v137 & 1) == 0)
                  {
                    v159 = v158;
                  }

                  v126 = v137 ^ 1;
                }

                if (v127 == v130)
                {
                  TSUDecimal::operator=();
                  v177 = v157;
                  TSUDecimal::operator*=();
                  v158 = v177;
                  v177 = v160;
                  TSUDecimal::operator+=();
                  v162 = v177;
                }

                if (v128 == v130)
                {
                  TSUDecimal::operator=();
                  v177 = v157;
                  TSUDecimal::operator*=();
                  v158 = v177;
                  v177 = v160;
                  TSUDecimal::operator+=();
                  v161 = v177;
                }

                TSUDecimal::operator+=();
                v130 = v129++;
              }

              while (v65 + 1.0 > v130);
            }

            v177 = v161;
            TSUDecimal::operator-=();
            v164 = v177;
            v114 = v152;
            v138 = [TSCENumberValue alloc];
            v143 = sub_2213189D8(v175, v139, v140, v141, v142);
            v124 = objc_msgSend_initWithDecimal_baseUnit_(v138, v144, &v164, v143, v145);
          }

          v29 = v124;
          v21 = 0;
          goto LABEL_28;
        }

        v95 = objc_msgSend_functionName(spec, v102, v103, v104, v105);
        v97 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v110, v95, 4, 5, 1, 1);
        v101 = objc_msgSend_raiseErrorOrConvert_(context, v111, v97, v112, v113);
      }
    }

    v29 = v101;

    v21 = 0;
  }

LABEL_27:
  v114 = v152;
LABEL_28:

  v18 = v150;
  v9 = v151;
LABEL_29:

  return v29;
}

@end