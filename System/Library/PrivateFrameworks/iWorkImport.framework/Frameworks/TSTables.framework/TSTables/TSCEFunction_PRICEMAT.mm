@interface TSCEFunction_PRICEMAT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_PRICEMAT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v184 = 0;
  v185 = 0;
  v186 = 0;
  v8 = **arguments;
  v12 = v8;
  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v9, context, v10, v11);
  }

  else
  {
    memset(&v183, 0, sizeof(v183));
  }

  sub_22114F414(&v184, &v183);
  v182 = 0;
  v14 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v12, v13, context, spec, 0, &v182);
  v19 = v182;
  if (v19)
  {
    v20 = objc_msgSend_raiseErrorOrConvert_(context, v15, v19, v17, v18);
    goto LABEL_63;
  }

  if (v14)
  {
    v21 = objc_msgSend_gregorianCalendar(TSCECalendar, v15, v16, v17, v18);
    v25 = objc_msgSend_clearOffTime_(v21, v22, v14, v23, v24);
    v26 = *(*arguments + 8);
    v30 = v26;
    if (v26)
    {
      objc_msgSend_formatWithContext_(v26, v27, context, v28, v29);
    }

    else
    {
      memset(&v183, 0, sizeof(v183));
    }

    sub_22114F414(&v184, &v183);
    v181 = 0;
    v37 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v30, v36, context, spec, 1, &v181);
    v19 = v181;
    if (v19)
    {
      v20 = objc_msgSend_raiseErrorOrConvert_(context, v38, v19, v40, v41);
LABEL_61:

      goto LABEL_62;
    }

    if (!v37)
    {
      v46 = objc_msgSend_functionName(spec, v38, v39, v40, v41);
      v166 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v47, v46, 2, v48);
      v20 = objc_msgSend_raiseErrorOrConvert_(context, v49, v166, v50, v51);
      v19 = 0;
LABEL_60:

      goto LABEL_61;
    }

    v164 = objc_msgSend_clearOffTime_(v21, v38, v37, v40, v41);
    v42 = *(*arguments + 16);
    v166 = v42;
    if (v42)
    {
      objc_msgSend_formatWithContext_(v42, v43, context, v44, v45);
    }

    else
    {
      memset(&v183, 0, sizeof(v183));
    }

    sub_22114F414(&v184, &v183);
    v180 = 0;
    v165 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v166, v52, context, spec, 2, &v180);
    v19 = v180;
    if (v19)
    {
      v20 = objc_msgSend_raiseErrorOrConvert_(context, v53, v19, v54, v55);
      v46 = v164;
      v56 = v165;
LABEL_59:

      goto LABEL_60;
    }

    if (!v165)
    {
      v162 = objc_msgSend_functionName(spec, v53, 0, v54, v55);
      v46 = v164;
      v56 = 0;
      v163 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v61, v162, 3, v62);
      v20 = objc_msgSend_raiseErrorOrConvert_(context, v63, v163, v64, v65);
      v19 = 0;
LABEL_58:

      goto LABEL_59;
    }

    v162 = objc_msgSend_clearOffTime_(v21, v53, v165, v54, v55);
    v57 = *(*arguments + 24);
    v163 = v57;
    if (v57)
    {
      objc_msgSend_formatWithContext_(v57, v58, context, v59, v60);
    }

    else
    {
      memset(&v183, 0, sizeof(v183));
    }

    sub_22114F414(&v184, &v183);
    v179 = 0;
    v67 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v163, v66, context, spec, 3, &v179);
    v19 = v179;
    v161 = v67;
    v178[1] = objc_msgSend_decimalRepresentation(v67, v68, v69, v70, v71);
    v178[2] = v72;
    if (v19)
    {
      v20 = objc_msgSend_raiseErrorOrConvert_(context, v72, v19, v73, v74);
      v46 = v164;
      v56 = v165;
LABEL_57:

      goto LABEL_58;
    }

    v75 = *(*arguments + 32);
    v160 = v75;
    if (v75)
    {
      objc_msgSend_formatWithContext_(v75, v76, context, v77, v78);
    }

    else
    {
      memset(&v183, 0, sizeof(v183));
    }

    sub_22114F414(&v184, &v183);
    v178[0] = 0;
    v80 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v160, v79, context, spec, 4, v178);
    v19 = v178[0];
    v159 = v80;
    v177[1] = objc_msgSend_decimalRepresentation(v80, v81, v82, v83, v84);
    v177[2] = v85;
    if (v19)
    {
      v88 = objc_msgSend_raiseErrorOrConvert_(context, v85, v19, v86, v87);
LABEL_32:
      v20 = v88;
LABEL_56:
      v46 = v164;
      v56 = v165;

      goto LABEL_57;
    }

    if (*(arguments + 1) - *arguments < 0x29uLL)
    {
      v97 = 0;
    }

    else
    {
      v89 = *(*arguments + 40);
      if (objc_msgSend_isTokenOrEmptyArg(v89, v90, v91, v92, v93))
      {
        v97 = 0;
      }

      else
      {
        v158 = v89;
        if (v89)
        {
          objc_msgSend_formatWithContext_(v89, v94, context, v95, v96);
        }

        else
        {
          memset(&v183, 0, sizeof(v183));
        }

        sub_22114F414(&v184, &v183);
        v177[0] = 0;
        v99 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v89, v98, context, spec, 5, v177);
        v19 = v177[0];
        v104 = objc_msgSend_trunc(v99, v100, v101, v102, v103);

        v183._tskFormat = objc_msgSend_decimalRepresentation(v104, v105, v106, v107, v108);
        *&v183._formatType = v109;
        v110 = TSUDecimal::truncateWithRounding(&v183);
        if (v19)
        {
          v20 = objc_msgSend_raiseErrorOrConvert_(context, v111, v19, v112, v113);

          goto LABEL_56;
        }

        v97 = v110;

        v89 = v158;
      }
    }

    if (objc_msgSend_compare_(v25, v85, v164, v86, v87) == 1 || !objc_msgSend_compare_(v25, v114, v164, v116, v117))
    {
      v132 = objc_msgSend_functionName(spec, v114, v115, v116, v117);
      v134 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v133, v132, 1, 2, 1, 0);
      v138 = objc_msgSend_raiseErrorOrConvert_(context, v135, v134, v136, v137);
    }

    else if (objc_msgSend_compare_(v164, v114, v162, v116, v117) == -1 || !objc_msgSend_compare_(v164, v118, v162, v120, v121))
    {
      v132 = objc_msgSend_functionName(spec, v118, v119, v120, v121);
      v134 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v139, v132, 2, 3, 0, 0);
      v138 = objc_msgSend_raiseErrorOrConvert_(context, v140, v134, v141, v142);
    }

    else
    {
      if (objc_msgSend_compare_(v25, v118, v162, v120, v121) != -1 && objc_msgSend_compare_(v25, v122, v162, v124, v125))
      {
        v176 = 0;
        sub_2214A45C0(v162, v25, v97, &v176);
        v126 = v176;
        TSUDecimal::operator=();
        v174 = v126;
        sub_2214A452C(v25, v164, v97, &v174);
        v127 = v174;

        TSUDecimal::operator=();
        v172 = v127;
        sub_2214A452C(v162, v164, v97, &v172);
        v128 = v172;

        TSUDecimal::operator=();
        v170 = v128;
        sub_2214A452C(v162, v25, v97, &v170);
        v19 = v170;

        TSUDecimal::operator=();
        if (v19)
        {
          v88 = objc_msgSend_raiseErrorOrConvert_(context, v129, v19, v130, v131);
        }

        else
        {
          TSUDecimal::operator=();
          *&v183._tskFormat = v173;
          TSUDecimal::operator/=();
          TSUDecimal::operator*=();
          tskFormat = v183._tskFormat;
          v148 = *&v183._formatType;
          TSUDecimal::operator=();
          v183._tskFormat = tskFormat;
          *&v183._formatType = v148;
          TSUDecimal::operator*=();
          *&v183._tskFormat = v169;
          TSUDecimal::operator+=();
          v151 = v183._tskFormat;
          v150 = *&v183._formatType;
          TSUDecimal::operator=();
          *&v183._tskFormat = v175;
          TSUDecimal::operator/=();
          TSUDecimal::operator*=();
          *&v183._tskFormat = v167;
          TSUDecimal::operator+=();
          v183._tskFormat = v151;
          *&v183._formatType = v150;
          TSUDecimal::operator/=();
          v153 = v183._tskFormat;
          v152 = *&v183._formatType;
          *&v183._tskFormat = v171;
          TSUDecimal::operator/=();
          TSUDecimal::operator*=();
          v155 = v183._tskFormat;
          v154 = *&v183._formatType;
          TSUDecimal::operator=();
          v183._tskFormat = v155;
          *&v183._formatType = v154;
          TSUDecimal::operator*=();
          v169 = *&v183._tskFormat;
          v183._tskFormat = v153;
          *&v183._formatType = v152;
          TSUDecimal::operator-=();
          v168[0] = v183._tskFormat;
          v168[1] = *&v183._formatType;
          sub_221256020(&v184, &v183);
          v88 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v156, v168, &v183, v157);
        }

        goto LABEL_32;
      }

      v132 = objc_msgSend_functionName(spec, v122, v123, v124, v125);
      v134 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v143, v132, 1, 3, 0, 0);
      v138 = objc_msgSend_raiseErrorOrConvert_(context, v144, v134, v145, v146);
    }

    v20 = v138;

    v19 = 0;
    goto LABEL_56;
  }

  v25 = objc_msgSend_functionName(spec, v15, v16, v17, v18);
  v30 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v31, v25, 1, v32);
  v20 = objc_msgSend_raiseErrorOrConvert_(context, v33, v30, v34, v35);
  v19 = 0;
LABEL_62:

LABEL_63:
  if (v184)
  {
    v185 = v184;
    operator delete(v184);
  }

  return v20;
}

@end