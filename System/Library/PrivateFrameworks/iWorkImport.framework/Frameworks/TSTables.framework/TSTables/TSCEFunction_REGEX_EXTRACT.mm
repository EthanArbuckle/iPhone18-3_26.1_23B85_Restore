@interface TSCEFunction_REGEX_EXTRACT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_REGEX_EXTRACT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v205 = *MEMORY[0x277D85DE8];
  v8 = **arguments;
  v200[0] = 0;
  v187 = v8;
  v188 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, v200);
  v10 = v200[0];
  if (v10)
  {
    v14 = v10;
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v11, v10, v12, v13);
    goto LABEL_82;
  }

  v16 = *(*arguments + 8);
  v199 = 0;
  v186 = v16;
  v185 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v16, v17, context, spec, 1, &v199);
  v18 = v199;
  if (!v18)
  {
    if (*(arguments + 1) - *arguments < 0x11uLL)
    {
      v29 = 0;
      v28 = 1;
      v30 = -1;
      isTokenOrEmptyArg = 1;
      goto LABEL_17;
    }

    v184 = *(*arguments + 16);
    if (objc_msgSend_isTokenOrEmptyArg(v184, v23, v24, v25, v26))
    {
      v28 = 1;
    }

    else
    {
      v198 = 0;
      v32 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v184, v27, context, spec, 2, &v198);
      v14 = v198;
      if (v14)
      {
        v37 = objc_msgSend_raiseErrorOrConvert_(context, v33, v14, v35, v36);
        goto LABEL_52;
      }

      v38 = objc_msgSend_integer(v32, v33, v34, v35, v36);

      v28 = v38;
    }

    v29 = v28 == 0;
    if (*(arguments + 1) - *arguments < 0x19uLL)
    {
      isTokenOrEmptyArg = 1;
      v30 = -1;
LABEL_17:
      if (objc_msgSend_isRegexString(v186, v19, v20, v21, v22))
      {
        isCaseSensitiveRegexString = objc_msgSend_isCaseSensitiveRegexString(v186, v44, v45, v46, v47);
      }

      else
      {
        isCaseSensitiveRegexString = 1;
      }

      v196 = 0;
      v184 = objc_msgSend_regexMatcherWithRegexString_caseSensitive_outError_(TSCERegexMatcher, v44, v185, isCaseSensitiveRegexString, &v196);
      v14 = v196;
      if (v14)
      {
        v15 = objc_msgSend_raiseErrorOrConvert_(context, v49, v14, v51, v52);
LABEL_80:

        goto LABEL_81;
      }

      v53 = objc_msgSend_length(v188, v49, v50, v51, v52);
      v32 = objc_msgSend_matchesInString_options_range_(v184, v54, v188, 0, 0, v53);
      if (!objc_msgSend_count(v32, v55, v56, v57, v58))
      {
        v80 = objc_msgSend_functionName(spec, v59, v60, v61, v62);
        v82 = objc_msgSend_matchNotFoundErrorForValue_isRegex_afterMatch_previousValueToMatch_previousValueIsRegex_occurrence_matchesFound_functionName_(TSCEError, v81, v185, 1, 0, 0, 0, v28, 0, v80);
        v15 = objc_msgSend_raiseErrorOrConvert_(context, v83, v82, v84, v85);

        goto LABEL_79;
      }

      v63 = objc_msgSend_count(v32, v59, v60, v61, v62);
      if (v28 >= 0)
      {
        v68 = v28;
      }

      else
      {
        v68 = -v28;
      }

      if (v68 > v63)
      {
        v69 = objc_msgSend_count(v32, v64, v65, v66, v67);
        v74 = objc_msgSend_functionName(spec, v70, v71, v72, v73);
        v76 = objc_msgSend_matchNotFoundErrorForValue_isRegex_afterMatch_previousValueToMatch_previousValueIsRegex_occurrence_matchesFound_functionName_(TSCEError, v75, v185, 1, 0, 0, 0, v28, v69, v74);
        v15 = objc_msgSend_raiseErrorOrConvert_(context, v77, v76, v78, v79);

LABEL_79:
        goto LABEL_80;
      }

      if (v28 < 0)
      {
        v121 = objc_msgSend_count(v32, v64, v65, v66, v67) + v28;
        objc_msgSend_objectAtIndex_(v32, v122, v121, v123, v124);
      }

      else
      {
        if (v29)
        {
          v193 = 0;
          v194 = 0;
          v195 = 0;
          v189 = 0u;
          v190 = 0u;
          v191 = 0u;
          v192 = 0u;
          v86 = v32;
          v92 = objc_msgSend_countByEnumeratingWithState_objects_count_(v86, v87, &v189, v204, 16);
          if (v92)
          {
            v93 = *v190;
            do
            {
              for (i = 0; i != v92; ++i)
              {
                if (*v190 != v93)
                {
                  objc_enumerationMutation(v86);
                }

                v95 = objc_msgSend_range(*(*(&v189 + 1) + 8 * i), v88, v89, v90, v91);
                v98 = objc_msgSend_substringWithRange_(v188, v96, v95, v96, v97);
                v102 = objc_msgSend_stringValue_(TSCEStringValue, v99, v98, v100, v101);

                v103 = v194;
                if (v194 >= v195)
                {
                  v105 = v194 - v193;
                  if ((v105 + 1) >> 61)
                  {
                    sub_22107C148();
                  }

                  v106 = (v195 - v193) >> 2;
                  if (v106 <= v105 + 1)
                  {
                    v106 = v105 + 1;
                  }

                  if (v195 - v193 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v107 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v107 = v106;
                  }

                  v203 = &v193;
                  if (v107)
                  {
                    sub_22107C1F0(&v193, v107);
                  }

                  v108 = (8 * v105);
                  *&v201 = 0;
                  *(&v201 + 1) = v108;
                  *(&v202 + 1) = 0;
                  *v108 = v102;
                  *&v202 = v108 + 1;
                  sub_22107C098(&v193, &v201);
                  v104 = v194;
                  sub_22107C26C(&v201);
                }

                else
                {
                  *v103 = v102;
                  v104 = v103 + 1;
                }

                v194 = v104;
              }

              v92 = objc_msgSend_countByEnumeratingWithState_objects_count_(v86, v88, &v189, v204, 16);
            }

            while (v92);
          }

          v109 = [TSCEDenseGrid alloc];
          v113 = objc_msgSend_initWithValues_(v109, v110, &v193, v111, v112);
          v15 = objc_msgSend_gridValue_(TSCEGridValue, v114, v113, v115, v116);

          *&v201 = &v193;
          sub_22107C2C0(&v201);
          goto LABEL_79;
        }

        objc_msgSend_objectAtIndex_(v32, v64, v28 - 1, v66, v67);
      }
      v129 = ;
      v134 = v129;
      if (isTokenOrEmptyArg)
      {
        v135 = objc_msgSend_range(v129, v130, v131, v132, v133);
        v138 = objc_msgSend_substringWithRange_(v188, v136, v135, v136, v137);
      }

      else
      {
        if (!v30 && objc_msgSend_numberOfRanges(v129, v130, v131, v132, v133) >= 2)
        {
          v201 = 0uLL;
          v143 = 1;
          *&v202 = 0;
          while (objc_msgSend_numberOfRanges(v134, v130, v131, v132, v133) > v143)
          {
            v148 = objc_msgSend_rangeAtIndex_(v134, v144, v143, v145, v146);
            v151 = &stru_2834BADA0;
            if (v148 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v151 = objc_msgSend_substringWithRange_(v188, v147, v148, v147, v150);
            }

            v193 = objc_msgSend_stringValue_(TSCEStringValue, v147, v151, v149, v150);
            sub_221587F64(&v201, &v193);

            ++v143;
          }

          v175 = [TSCEDenseGrid alloc];
          v179 = objc_msgSend_initWithValues_(v175, v176, &v201, v177, v178);
          v15 = objc_msgSend_gridValue_(TSCEGridValue, v180, v179, v181, v182);

          v193 = &v201;
          sub_22107C2C0(&v193);
          goto LABEL_78;
        }

        if (objc_msgSend_numberOfRanges(v134, v130, v131, v132, v133) <= v30)
        {
          v157 = objc_msgSend_functionName(spec, v152, v153, v154, v155);
          v162 = objc_msgSend_numberOfRanges(v134, v158, v159, v160, v161);
          v164 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_upperBound_upperBoundInclusive_(TSCEError, v163, 3, v157, 1, v162);
          v15 = objc_msgSend_raiseErrorOrConvert_(context, v165, v164, v166, v167);

LABEL_78:
          goto LABEL_79;
        }

        v156 = objc_msgSend_rangeAtIndex_(v134, v152, v30, v154, v155);
        if (v156 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v142 = &stru_2834BADA0;
          goto LABEL_60;
        }

        v138 = objc_msgSend_substringWithRange_(v188, v139, v156, v139, v141);
      }

      v142 = v138;
LABEL_60:
      if (v187)
      {
        objc_msgSend_formatWithContext_(v187, v139, context, v140, v141);
      }

      else
      {
        v201 = 0u;
        v202 = 0u;
      }

      v15 = objc_msgSend_stringValue_format_(TSCEStringValue, v139, v142, &v201, v141);

      goto LABEL_78;
    }

    v184 = *(*arguments + 24);
    isTokenOrEmptyArg = objc_msgSend_isTokenOrEmptyArg(v184, v39, v40, v41, v42);
    if (isTokenOrEmptyArg)
    {
      v30 = -1;
LABEL_15:

      goto LABEL_17;
    }

    v197 = 0;
    v32 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v184, v43, context, spec, 3, &v197);
    v14 = v197;
    if (!v14)
    {
      LODWORD(v30) = objc_msgSend_integer(v32, v117, v118, v119, v120);
      if ((v30 & 0x80000000) != 0)
      {
        v168 = objc_msgSend_functionName(spec, v125, v126, v127, v128);
        v171 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v169, v168, 4, v170);
        v15 = objc_msgSend_raiseErrorOrConvert_(context, v172, v171, v173, v174);

        goto LABEL_79;
      }

      v30 = v30;
      goto LABEL_15;
    }

    v37 = objc_msgSend_raiseErrorOrConvert_(context, v117, v14, v119, v120);
LABEL_52:
    v15 = v37;
    goto LABEL_79;
  }

  v14 = v18;
  v15 = objc_msgSend_raiseErrorOrConvert_(context, v19, v18, v21, v22);
LABEL_81:

LABEL_82:

  return v15;
}

@end