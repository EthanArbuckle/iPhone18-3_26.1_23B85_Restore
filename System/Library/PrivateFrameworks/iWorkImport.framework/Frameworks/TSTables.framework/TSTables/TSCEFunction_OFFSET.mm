@interface TSCEFunction_OFFSET
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
+ (id)offsetReferenceValueWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments outError:(id *)error;
@end

@implementation TSCEFunction_OFFSET

+ (id)offsetReferenceValueWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments outError:(id *)error
{
  contextCopy = context;
  if (!error)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "+[TSCEFunction_OFFSET offsetReferenceValueWithContext:functionSpec:arguments:outError:]", v10, v11);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCELookupReferenceFunctions.mm", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 2213, 0, "invalid nil value for '%{public}s'", "outError");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  v24 = **arguments;
  v26 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v24, v25, contextCopy, spec, 0, error);
  v27 = v26;
  if (*error)
  {
    v28 = v26;
    goto LABEL_10;
  }

  v29 = *(*arguments + 8);
  v31 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v29, v30, contextCopy, spec, 1, error);
  v150._decimal.w[0] = objc_msgSend_decimalRepresentation(v31, v32, v33, v34, v35);
  v150._decimal.w[1] = v36;
  v37 = TSUDecimal::truncateWithRounding(&v150);
  if (*error)
  {
    goto LABEL_8;
  }

  v42 = v37;
  if (v37 <= 999999)
  {
    v148 = *(*arguments + 16);
    v47 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v148, v46, contextCopy, spec, 2, error);
    v147 = v47;
    if (*error)
    {
LABEL_82:
      v119 = v27;
LABEL_83:
      v28 = v119;
LABEL_84:

      goto LABEL_9;
    }

    v150._decimal.w[0] = objc_msgSend_decimalRepresentation(v47, v48, v49, v50, v51);
    v150._decimal.w[1] = v52;
    v53 = TSUDecimal::truncateWithRounding(&v150);
    if (v53 >= 1000)
    {
      v58 = objc_msgSend_functionName(spec, v54, v55, v56, v57);
      *error = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v59, 3, v58, 1, 1, -999.0, 999.0);

      goto LABEL_82;
    }

    v142 = v53;
    if (*(arguments + 1) - *arguments < 0x19uLL)
    {
      v145 = 0;
      goto LABEL_24;
    }

    v143 = *(*arguments + 24);
    if (objc_msgSend_isTokenOrEmptyArg(v143, v60, v61, v62, v63))
    {
      v145 = 0;
      goto LABEL_19;
    }

    v140 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v143, v64, contextCopy, spec, 3, error);
    v150._decimal.w[0] = objc_msgSend_decimalRepresentation(v140, v86, v87, v88, v89);
    v150._decimal.w[1] = v90;
    v145 = TSUDecimal::truncateWithRounding(&v150);
    if (*error)
    {
      goto LABEL_99;
    }

    if (v145)
    {
      if (v145 <= 0xF4240)
      {

LABEL_19:
        if (*(arguments + 1) - *arguments >= 0x21uLL)
        {
          v65 = *(*arguments + 32);
          v143 = v65;
          if (objc_msgSend_isTokenOrEmptyArg(v65, v66, v67, v68, v69))
          {
            v71 = 0;
LABEL_22:

            goto LABEL_25;
          }

          v140 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v65, v70, contextCopy, spec, 4, error);
          v150._decimal.w[0] = objc_msgSend_decimalRepresentation(v140, v100, v101, v102, v103);
          v150._decimal.w[1] = v104;
          v105 = TSUDecimal::truncateWithRounding(&v150);
          if (!*error)
          {
            v71 = v105;
            if (v105)
            {
              if (v105 < 0x3E9u)
              {

                goto LABEL_22;
              }

              v110 = objc_msgSend_functionName(spec, v106, v107, v108, v109);
              v112 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v111, 5, v110, 1, 1, 1.0, 1000.0);
            }

            else
            {
              v110 = objc_msgSend_functionName(spec, v106, v107, v108, v109);
              v112 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_(TSCEError, v123, 5, v110, 1, 1.0);
            }

            *error = v112;
          }

LABEL_99:
          v28 = v27;

          goto LABEL_84;
        }

LABEL_24:
        v71 = 0;
LABEL_25:
        if (objc_msgSend_isRange(v27, v54, v55, v56, v57))
        {
          v76 = objc_msgSend_range(v27, v72, v73, v74, v75);
          v81 = v77;
        }

        else
        {
          v76 = objc_msgSend_range(v27, v72, v73, v74, v75);
          v81 = 0x7FFF7FFFFFFFLL;
        }

        v82 = v76 & 0xFFFF00000000;
        v83 = v81 & 0xFFFF00000000;
        if (v76 != 0x7FFFFFFFLL && v82 == 0x7FFF00000000 && v83 == 0x7FFF00000000)
        {
          v84 = HIWORD(v76);
          if (v81 != 0x7FFFFFFF)
          {
            if (v145)
            {
              if (v145 + v76 - 1000001 < 0xFFF0BDC0)
              {
                goto LABEL_81;
              }

              v81 = v81 & 0xFFFF7FFF00000000 | (v145 + v76 - 1);
            }

            v144 = v71;
            if (v71)
            {
              LOWORD(v85) = 0;
              v81 = v81 & 0xFFFF0000FFFFFFFFLL | ((v71 - 1) << 32);
              v99 = 1;
            }

            else
            {
              v99 = 1;
              LOWORD(v85) = 0x7FFF;
            }

LABEL_78:
            v114 = (v76 + v42);
            if (v114 > 0xF423F)
            {
              goto LABEL_81;
            }

            v138 = (v85 << 32) | (v84 << 48);
            v115 = v81;
            v141 = v84;
            v146 = v81;
            v116 = v85;
            v139 = v99;
            v117 = sub_22110E12C(v138 | v76, v115);
            v118 = v114;
            LOWORD(v85) = v116;
            v84 = v141;
            if (v117 && (v42 + v146) > 0xF423F)
            {
              goto LABEL_81;
            }

            if (v146 == 0x7FFFFFFF)
            {
              v120 = 0;
            }

            else
            {
              v120 = v42;
            }

            v81 = v146 & 0xFFFFFFFF00000000 | (v120 + v146);
            if (v144)
            {
              v121 = 0;
            }

            else
            {
              v121 = v139;
            }

            if (v121 == 1)
            {
              if (v142)
              {
                goto LABEL_81;
              }

              v122 = v138;
LABEL_109:
              v129 = v122 | v118;
              v130 = v122 | v118;
              if ((sub_221471680(v122 | v118, v81) & 1) == 0)
              {
                if (v81 == 0x7FFFFFFF)
                {
                  if ((v81 & 0x101FFFF00000000) == 0x7FFF00000000)
                  {
                    v130 = v129;
                  }

                  else
                  {
                    v130 = v81;
                  }
                }

                else
                {
                  v130 = v81;
                }
              }

              v131 = [TSCEReferenceValue alloc];
              v136 = objc_msgSend_tableUID(v27, v132, v133, v134, v135);
              v150._decimal.w[0] = v129;
              v150._decimal.w[1] = v130;
              v151 = v136;
              v152 = v137;
              v149 = 0;
              v119 = objc_msgSend_initWithContext_rangeRef_preserveFlags_(v131, v137, contextCopy, &v150, &v149);
              goto LABEL_83;
            }

LABEL_101:
            if (v142 + v85 > 0x3E7)
            {
              goto LABEL_81;
            }

            v124 = v84 << 48;
            v125 = v85;
            v126 = v118;
            v127 = sub_22110E12C((v84 << 48) | (v85 << 32) | v118, v81);
            v118 = v126;
            if (v127 && v142 + WORD2(v81) >= 1000)
            {
              goto LABEL_81;
            }

            if (WORD2(v81) == 0x7FFF)
            {
              v128 = 0;
            }

            else
            {
              v128 = v142;
            }

            v81 = v81 & 0xFFFF0000FFFFFFFFLL | ((v128 + WORD2(v81)) << 32);
            v122 = v124 | ((v125 + v142) << 32);
            goto LABEL_109;
          }

          LOWORD(v85) = 0x7FFF;
        }

        else
        {
          v85 = HIDWORD(v76);
          v84 = HIWORD(v76);
          if (v76 == 0x7FFFFFFFLL && v82 != 0x7FFF00000000 && v83 != 0x7FFF00000000)
          {
            if (v81 == 0x7FFFFFFF)
            {
              if (v145)
              {
                v81 = v81 & 0xFFFFFFFF00000000 | (v145 - 1);
              }

              if (v71)
              {
                if (WORD2(v76) + v71 >= 0x3E9)
                {
                  goto LABEL_81;
                }

                v81 = v81 & 0xFFFF00007FFFFFFFLL | ((v71 + WORD2(v76) - 1) << 32);
              }

              if (!v145)
              {
                if (v42)
                {
                  goto LABEL_81;
                }

                LODWORD(v118) = 0x7FFFFFFF;
                goto LABEL_101;
              }

              v144 = v71;
              LODWORD(v76) = 0;
              goto LABEL_77;
            }

            LODWORD(v76) = 0x7FFFFFFF;
          }
        }

        if (v145)
        {
          if (v76 + v145 - 1000001 < 0xFFF0BDC0)
          {
            goto LABEL_81;
          }

          v81 = v81 & 0xFFFFFFFF00000000 | (v76 + v145 - 1);
          if (!v71)
          {
            v144 = v71;
            if (v83 == 0x7FFF00000000)
            {
              v99 = 0;
              v81 = v81 & 0xFFFF00007FFFFFFFLL | (v85 << 32);
              goto LABEL_78;
            }

            goto LABEL_77;
          }
        }

        else if (!v71)
        {
          v144 = v71;
          goto LABEL_77;
        }

        v98 = v81;
        if (v85 + v71 < 0x3E9)
        {
          v81 = v81 & 0xFFFF0000FFFFFFFFLL | ((v71 + v85 - 1) << 32);
          v144 = v71;
          if (!v145 && ((v71 + v85 - 1) == 0x7FFF || v98 == 0x7FFFFFFFLL))
          {
            v99 = 0;
            v81 = v81 & 0xFFFFFFFF00000000 | v76;
            goto LABEL_78;
          }

LABEL_77:
          v99 = 0;
          goto LABEL_78;
        }

LABEL_81:
        *error = objc_msgSend_invalidReferenceError(TSCEError, v77, v78, v79, v80);
        goto LABEL_82;
      }

      v95 = objc_msgSend_functionName(spec, v91, v92, v93, v94);
      v97 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v96, 4, v95, 1, 1, 1.0, 1000000.0);
    }

    else
    {
      v95 = objc_msgSend_functionName(spec, v91, v92, v93, v94);
      v97 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_(TSCEError, v113, 4, v95, 1, 1.0);
    }

    *error = v97;

    goto LABEL_99;
  }

  v43 = objc_msgSend_functionName(spec, v38, v39, v40, v41);
  *error = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v44, 2, v43, 1, 1, 4293967300.0, 999999.0);

LABEL_8:
  v28 = v27;
LABEL_9:

LABEL_10:

  return v28;
}

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  __p = 0;
  v70 = 0;
  v71 = 0;
  v8 = **arguments;
  if (objc_msgSend_isReferenceValue(v8, v9, v10, v11, v12))
  {
    v17 = objc_msgSend_asReferenceValue(v8, v13, v14, v15, v16);
    v20 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(v17, v18, context, 0, v19);
    v24 = v20;
    if (v20)
    {
      objc_msgSend_formatWithContext_(v20, v21, context, v22, v23);
    }

    else
    {
      memset(&v68, 0, sizeof(v68));
    }

    sub_22114F414(&__p, &v68);
  }

  else
  {
    if (v8)
    {
      objc_msgSend_formatWithContext_(v8, v13, context, v15, v16);
    }

    else
    {
      memset(&v68, 0, sizeof(v68));
    }

    sub_22114F414(&__p, &v68);
  }

  v25 = *(*arguments + 8);
  v29 = v25;
  if (v25)
  {
    objc_msgSend_formatWithContext_(v25, v26, context, v27, v28);
  }

  else
  {
    memset(&v68, 0, sizeof(v68));
  }

  sub_22114F414(&__p, &v68);
  v30 = *(*arguments + 16);
  v34 = v30;
  if (v30)
  {
    objc_msgSend_formatWithContext_(v30, v31, context, v32, v33);
  }

  else
  {
    memset(&v68, 0, sizeof(v68));
  }

  sub_22114F414(&__p, &v68);
  if (*(arguments + 1) - *arguments >= 0x19uLL)
  {
    v36 = *(*arguments + 24);
    if ((objc_msgSend_isTokenOrEmptyArg(v36, v37, v38, v39, v40) & 1) == 0)
    {
      if (v36)
      {
        objc_msgSend_formatWithContext_(v36, v41, context, v42, v43);
      }

      else
      {
        memset(&v68, 0, sizeof(v68));
      }

      sub_22114F414(&__p, &v68);
    }

    if (*(arguments + 1) - *arguments >= 0x21uLL)
    {
      v44 = *(*arguments + 32);
      if ((objc_msgSend_isTokenOrEmptyArg(v44, v45, v46, v47, v48) & 1) == 0)
      {
        if (v44)
        {
          objc_msgSend_formatWithContext_(v44, v49, context, v50, v51);
        }

        else
        {
          memset(&v68, 0, sizeof(v68));
        }

        sub_22114F414(&__p, &v68);
      }
    }
  }

  v67 = 0;
  v52 = objc_msgSend_offsetReferenceValueWithContext_functionSpec_arguments_outError_(TSCEFunction_OFFSET, v35, context, spec, arguments, &v67);
  v53 = v67;
  objc_msgSend_setIsOutputOfAFunction_(v52, v54, 1, v55, v56);
  if (v53)
  {
    v60 = objc_msgSend_raiseErrorOrConvert_(context, v57, v53, v58, v59);
  }

  else
  {
    sub_221256020(&__p, &v66);
    TSCEFormat::TSCEFormat(&v68, &v66);
    objc_msgSend_setFormat_(v52, v61, &v68, v62, v63);
    v60 = v52;
  }

  v64 = v60;

  if (__p)
  {
    v70 = __p;
    operator delete(__p);
  }

  return v64;
}

@end