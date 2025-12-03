@interface TSCEFunction_SUBSTITUTE
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_SUBSTITUTE

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v10 = v8;
  v152 = 0;
  if (v8)
  {
    objc_msgSend_asRichTextStorage_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v152);
    v11 = v152;
  }

  else
  {
    v11 = 0;
    v153 = 0;
    v154 = 0;
    v155 = 0;
  }

  v151 = v11;
  v12 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v10, v9, context, spec, 0, &v151);
  v13 = v151;

  if (v13)
  {
    v17 = objc_msgSend_raiseErrorOrConvert_(context, v14, v13, v15, v16);
    goto LABEL_43;
  }

  v18 = *(*arguments + 8);
  v150 = 0;
  v140 = v18;
  v141 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v18, v19, context, spec, 1, &v150);
  v13 = v150;
  isRegexString = objc_msgSend_isRegexString(v18, v20, v21, v22, v23);
  if (!v13)
  {
    v28 = isRegexString;
    v139 = *(*arguments + 16);
    if (*(arguments + 1) - *arguments < 0x19uLL)
    {
      v42 = 0;
LABEL_13:
      v47 = objc_msgSend_length(v12, v29, v30, v31, v32);
      memset(v148, 0, 19);
      if (v28)
      {
        v48 = objc_msgSend_asStringValue(v140, v43, v44, v45, v46);
        isCaseSensitiveRegex = objc_msgSend_isCaseSensitiveRegex(v48, v49, v50, v51, v52);
        v147 = 0;
        v55 = objc_msgSend_regexMatcherWithRegexString_caseSensitive_outError_(TSCERegexMatcher, v54, v141, isCaseSensitiveRegex, &v147);
        v56 = v147;
        if (v56)
        {
          v13 = v56;
          v17 = objc_msgSend_raiseErrorOrConvert_(context, v57, v56, v58, v59);
LABEL_36:

          goto LABEL_37;
        }

        v146 = 0;
        v101 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v139, v57, context, spec, 2, &v146);
        v13 = v146;
        if (v13)
        {
          v17 = objc_msgSend_raiseErrorOrConvert_(context, v102, v13, v103, v104);

          goto LABEL_36;
        }

        v110 = objc_msgSend_matchesInString_options_range_(v55, v102, v12, 0, 0, v47);
        if (objc_msgSend_count(v110, v111, v112, v113, v114) >= v42)
        {
          if (v42)
          {
            v124 = objc_msgSend_objectAtIndex_(v110, v115, v42 - 1, v117, v118);
            v129 = objc_msgSend_range(v124, v125, v126, v127, v128);
            v131 = objc_msgSend_stringByReplacingMatchesInString_options_range_withTemplate_(v55, v130, v12, 0, v129, v130, v101);
          }

          else
          {
            v132 = objc_msgSend_length(v12, v115, v116, v117, v118);
            v131 = objc_msgSend_stringByReplacingMatchesInString_options_range_withTemplate_(v55, v133, v12, 0, 0, v132, v101);
          }

          sub_221077074(&v143);
          v134 = v143;
          v143 = 0;
          v135 = v148[0]._decimal.w[0];
          v148[0]._decimal.w[0] = v134;

          v136 = v144;
          v144 = 0;
          v137 = v148[0]._decimal.w[1];
          v148[0]._decimal.w[1] = v136;

          LOWORD(v148[1]._decimal.w[0]) = v145;
          BYTE2(v148[1]._decimal.w[0]) = BYTE2(v145);
        }

        else
        {
          sub_221077078(&v153, v115, v116, v117, v118, &v143);
          v119 = v143;
          v143 = 0;
          v120 = v148[0]._decimal.w[0];
          v148[0]._decimal.w[0] = v119;

          v121 = v144;
          v144 = 0;
          v122 = v148[0]._decimal.w[1];
          v148[0]._decimal.w[1] = v121;

          LOWORD(v148[1]._decimal.w[0]) = v145;
          BYTE2(v148[1]._decimal.w[0]) = BYTE2(v145);
        }
      }

      else
      {
        sub_221077078(&v153, v43, v44, v45, v46, &v143);
        v60 = v143;
        v143 = 0;
        v61 = v148[0]._decimal.w[0];
        v148[0]._decimal.w[0] = v60;

        v62 = v144;
        v144 = 0;
        v63 = v148[0]._decimal.w[1];
        v148[0]._decimal.w[1] = v62;

        LOWORD(v148[1]._decimal.w[0]) = v145;
        BYTE2(v148[1]._decimal.w[0]) = BYTE2(v145);

        v142 = 0;
        if (v139)
        {
          objc_msgSend_asRichTextStorage_functionSpec_argumentIndex_outError_(v139, v64, context, spec, 2, &v142);
          v68 = v142;
          if (v68)
          {
            v13 = v68;
            v17 = objc_msgSend_raiseErrorOrConvert_(context, v64, v68, v66, v67);

LABEL_37:
LABEL_41:

            goto LABEL_42;
          }
        }

        else
        {
          v143 = 0;
          v144 = 0;
          v145 = 0;
        }

        v79 = sub_221078910(&v143, v64, v65, v66, v67);
        v84 = objc_msgSend_length(v141, v80, v81, v82, v83);
        v86 = 0;
        v87 = 0;
        v88 = 0;
        v138 = v79 - v84;
        if (v42)
        {
LABEL_23:
          if (v87 < v42)
          {
            goto LABEL_24;
          }
        }

        else
        {
LABEL_24:
          while (v47)
          {
            v93 = objc_msgSend_rangeOfString_options_range_(v12, v85, v141, 0, v88, v47);
            if (v93 == 0x7FFFFFFFFFFFFFFFLL)
            {
              break;
            }

            v94 = v89;
            if (!v89)
            {
              break;
            }

            v96 = objc_msgSend_length(v12, v89, v90, v91, v92);
            if (!v42 || v42 - 1 == v87)
            {
              sub_221077D90(v148, (v93 + v86), v94, &v143, v95);
              v86 += v138;
            }

            v88 = v93 + v94;
            v47 = v96 - (v93 + v94);
            ++v87;
            if (v42)
            {
              goto LABEL_23;
            }
          }
        }
      }

      v17 = sub_2210789F4(v148, v97, v98, v99, v100);
      v13 = 0;
      goto LABEL_37;
    }

    v33 = *(*arguments + 24);
    if (objc_msgSend_isTokenOrEmptyArg(v33, v34, v35, v36, v37))
    {
      v42 = 0;
LABEL_11:

      goto LABEL_13;
    }

    if (objc_msgSend_isEmptyArg(v33, v38, v39, v40, v41))
    {
      v73 = objc_msgSend_functionName(spec, v69, v70, v71, v72);
      v75 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_(TSCEError, v74, 4, v73, 1, 1.0);
      v17 = objc_msgSend_raiseErrorOrConvert_(context, v76, v75, v77, v78);

      v13 = 0;
    }

    else
    {
      v149 = 0;
      v73 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v33, v69, context, spec, 3, &v149);
      v13 = v149;
      if (!v13)
      {
        v148[0]._decimal.w[0] = objc_msgSend_decimalRepresentation(v73, v105, v106, v107, v108);
        v148[0]._decimal.w[1] = v123;
        v42 = TSUDecimal::truncateWithRounding(v148);

        goto LABEL_11;
      }

      v17 = objc_msgSend_raiseErrorOrConvert_(context, v105, v13, v107, v108);
    }

    goto LABEL_41;
  }

  v17 = objc_msgSend_raiseErrorOrConvert_(context, v25, v13, v26, v27);
LABEL_42:

LABEL_43:

  return v17;
}

@end