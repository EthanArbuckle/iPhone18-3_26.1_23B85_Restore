@interface TSCEFunction_SUBTOTAL
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_SUBTOTAL

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  if ((objc_msgSend_deepType_(v8, v9, context, v10, v11) & 0xFFFFFFFD) != 5)
  {
    v17 = objc_msgSend_functionName(spec, v12, v13, v14, v15);
    v30 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v28, v17, 1, v29);
    v27 = objc_msgSend_raiseErrorOrConvert_(context, v31, v30, v32, v33);

    goto LABEL_5;
  }

  v169 = 0;
  v16 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v12, context, spec, 0, &v169);
  v17 = v169;
  v22 = objc_msgSend_integer(v16, v18, v19, v20, v21);

  if (v17)
  {
    v27 = objc_msgSend_raiseErrorOrConvert_(context, v23, v17, v25, v26);
LABEL_5:

    goto LABEL_6;
  }

  if (v22 >= 1 && v22 <= 0x6F && (v22 - 12) > 0x58)
  {
    v35 = *(*arguments + 8);
    v168 = 0;
    v144 = v35;
    v37 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v35, v36, context, spec, 1, 1, &v168);
    v38 = v168;
    v145 = v37;
    if (v38)
    {
      v17 = v38;
      v27 = objc_msgSend_raiseErrorOrConvert_(context, v39, v38, v41, v42);
LABEL_83:

      goto LABEL_5;
    }

    v143 = objc_msgSend_hidingActionMask(context, v39, v40, v41, v42);
    if (v22 <= 0x64)
    {
      objc_msgSend_setHidingActionMask_(context, v50, 66, v51, v52);
    }

    else
    {
      objc_msgSend_setHidingActionMask_(context, v50, 67, v51, v52);
    }

    v167[0] = 0;
    v167[1] = 0;
    v166 = v167;
    v57 = objc_msgSend_count(v37, v53, v54, v55, v56);
    contextCopy = context;
    v160[0] = contextCopy;
    v160[1] = spec;
    v161 = 0;
    v162[0] = 1;
    *(v162 + 7) = 0;
    v163 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v164 = 0;
    v165 = 0;
    if (v57)
    {
      for (i = 0; i != v57; ++i)
      {
        v62 = objc_msgSend_valueAtIndex_accessContext_(v37, v58, i, v160, v60);
        if (objc_msgSend_isReferenceValue(v62, v63, v64, v65, v66))
        {
          v159 = 0;
          v68 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v62, v67, contextCopy, spec, 1, &v159);
          v69 = v159;
          if (v69)
          {
            v17 = v69;
            v27 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v70, v69, v72, v73);

            v37 = v145;
            goto LABEL_82;
          }

          v74 = objc_msgSend_tableUID(v68, v70, v71, v72, v73);
          for (j = v167[0]; j; j = *j)
          {
            if (__PAIR128__(v75, v74) >= *(j + 2))
            {
              if (j[5] >= v75 && j[4] >= v74)
              {
                goto LABEL_30;
              }

              ++j;
            }
          }

          *v152 = objc_msgSend_tableUID(v68, v75, v76, v77, v78);
          *&v152[8] = v80;
          sub_2216CDCE0(&v166, v152);
          *v152 = objc_msgSend_tableUID(v68, v81, v82, v83, v84);
          *&v152[8] = v85;
          objc_msgSend_filteringChangedPrecedentForTableUID_(TSCEHauntedOwner, v85, v152, v86, v87);
          *v152 = 0;
          TSCERangeRef::TSCERangeRef(&v170, &v158);
          *&v152[8] = v170;
          v153 = 0;
          v157 = 0;
          v154 = 0;
          v155 = 0;
          v156 = 0;
          objc_msgSend_addCalculatedPrecedent_(contextCopy, v88, v152, v89, v90);

          if (v22 >= 0x65)
          {
            *v152 = objc_msgSend_tableUID(v68, v91, v92, v93, v94);
            *&v152[8] = v95;
            objc_msgSend_userHiddenChangedPrecedentForTableUID_(TSCEHauntedOwner, v95, v152, v96, v97);
            *v152 = 0;
            TSCERangeRef::TSCERangeRef(&v170, &v151);
            *&v152[8] = v170;
            v153 = 0;
            v157 = 0;
            v154 = 0;
            v155 = 0;
            v156 = 0;
            objc_msgSend_addCalculatedPrecedent_(contextCopy, v98, v152, v99, v100);
          }

LABEL_30:

          v37 = v145;
        }
      }
    }

    v27 = 0;
    v101 = 1;
    if (v22 > 100)
    {
      if (v22 > 105)
      {
        if (v22 <= 108)
        {
          if (v22 != 106)
          {
            if (v22 != 107)
            {
LABEL_42:
              v102 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v58, 142, v59, v60);
              v103 = sub_22121D2C8(contextCopy, v102, *(*arguments + 8), 1, 1, 0, 0, 0);
LABEL_67:
              v27 = v103;
              goto LABEL_68;
            }

LABEL_66:
            v123 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v58, 140, v59, v60);
            v103 = sub_22121D2C8(contextCopy, v123, *(*arguments + 8), 1, 0, 0, 0, 0);
            goto LABEL_67;
          }

LABEL_70:
          v126 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v58, 113, v59, v60);
          v27 = objc_msgSend_getResultWithVector_context_functionSpec_index_(TSCEFunction_PRODUCT, v127, v37, contextCopy, v126, 1);
          if (v144)
          {
            objc_msgSend_formatWithContext_(v144, v128, contextCopy, v129, v130);
          }

          else
          {
            memset(&v148, 0, sizeof(v148));
          }

          TSCEFormat::TSCEFormat(v152, &v148);
          objc_msgSend_setFormat_(v27, v140, v152, v141, v142);
          goto LABEL_68;
        }

        if (v22 != 109)
        {
          if (v22 != 110)
          {
LABEL_58:
            v106 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v58, 162, v59, v60);
            v108 = objc_msgSend_getResultWithVector_context_functionSpec_index_(TSCEFunction_VARP, v107, v37, contextCopy, v106, 1);
LABEL_73:
            v27 = v108;
            goto LABEL_74;
          }

LABEL_69:
          v124 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v58, 160, v59, v60);
          v108 = objc_msgSend_getResultWithVector_context_functionSpec_index_(TSCEFunction_VAR, v125, v37, contextCopy, v124, 1);
          goto LABEL_73;
        }

LABEL_72:
        v131 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v58, 168, v59, v60);
        v108 = objc_msgSend_getResultWithVector_context_functionSpec_index_(TSCEFunction_SUM, v132, v37, contextCopy, v131, 1);
        goto LABEL_73;
      }

      if (v22 > 102)
      {
        if (v22 != 103)
        {
          if (v22 != 104)
          {
LABEL_51:
            v104 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v58, 88, v59, v60);
            v103 = objc_msgSend_extremum_functionSpec_arg_index_isMax_isA_(TSCEFunction_MAX, v105, contextCopy, v104, *(*arguments + 8), 1, 0, 0);
            goto LABEL_67;
          }

LABEL_63:
          v114 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v58, 84, v59, v60);
          v103 = objc_msgSend_extremum_functionSpec_arg_index_isMax_isA_(TSCEFunction_MAX, v115, contextCopy, v114, *(*arguments + 8), 1, 1, 0);
          goto LABEL_67;
        }

        goto LABEL_64;
      }

      if (v22 != 101)
      {
LABEL_62:
        v109 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v58, 30, v59, v60);
        v27 = objc_msgSend_getResultWithVector_context_functionSpec_index_countBehavior_(TSCEFunction_COUNT, v110, v37, contextCopy, v109, 1, 0);
        TSCEFormat::TSCEFormat(&v150, 256);
        TSCEFormat::TSCEFormat(v152, &v150);
        objc_msgSend_setFormat_(v27, v111, v152, v112, v113);
LABEL_68:
        v101 = 0;
        goto LABEL_74;
      }
    }

    else
    {
      if (v22 > 5)
      {
        if (v22 <= 8)
        {
          if (v22 != 6)
          {
            if (v22 != 7)
            {
              goto LABEL_42;
            }

            goto LABEL_66;
          }

          goto LABEL_70;
        }

        if (v22 != 9)
        {
          if (v22 != 10)
          {
            if (v22 != 11)
            {
LABEL_74:
              objc_msgSend_setHidingActionMask_(contextCopy, v58, v143, v59, v60);
              if (!v27)
              {
                v27 = objc_msgSend_nilValue(TSCENilValue, v133, v134, v135, v136);
              }

              if (v101)
              {
                if (v37)
                {
                  objc_msgSend_formatWithContext_(v37, v133, contextCopy, v135, v136);
                }

                else
                {
                  memset(&v147, 0, sizeof(v147));
                }

                TSCEFormat::TSCEFormat(v152, &v147);
                objc_msgSend_setFormat_(v27, v137, v152, v138, v139);
              }

              v17 = 0;
LABEL_82:

              sub_2210BC9F8(&v166, v167[0]);
              goto LABEL_83;
            }

            goto LABEL_58;
          }

          goto LABEL_69;
        }

        goto LABEL_72;
      }

      if (v22 > 2)
      {
        if (v22 != 3)
        {
          if (v22 != 4)
          {
            goto LABEL_51;
          }

          goto LABEL_63;
        }

LABEL_64:
        v116 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v58, 31, v59, v60);
        v27 = objc_msgSend_getResultWithVector_context_functionSpec_index_countBehavior_(TSCEFunction_COUNT, v117, v37, contextCopy, v116, 1, 1);
        TSCEFormat::TSCEFormat(&v149, 256);
        TSCEFormat::TSCEFormat(v152, &v149);
        objc_msgSend_setFormat_(v27, v118, v152, v119, v120);
        goto LABEL_68;
      }

      if (v22 != 1)
      {
        goto LABEL_62;
      }
    }

    v121 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v58, 15, v59, v60);
    v108 = objc_msgSend_averageOfVector_functionSpec_argVector_argumentIndex_(TSCEFunction_AVERAGE, v122, contextCopy, v121, v37, 1);
    goto LABEL_73;
  }

  v43 = objc_msgSend_functionName(spec, v23, v24, v25, v26);
  v46 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v44, v43, 1, v45);
  v27 = objc_msgSend_raiseErrorOrConvert_(context, v47, v46, v48, v49);

LABEL_6:

  return v27;
}

@end