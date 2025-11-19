@interface TSCEFunction_XLOOKUP
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
+ (id)evaluateForSingleUserNodeWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
+ (int)binarySearch:(id)a3 functionSpec:(id)a4 userNodeValue:(id)a5 userNodeType:(char)a6 lookupVector:(id)a7 max:(int)a8 lookupDirectionIsVertical:(BOOL)a9 findNextSmallest:(BOOL)a10 findNextLargest:(BOOL)a11 isBinarySearchDescending:(BOOL)a12 outError:(id *)a13;
+ (int)lookupValue:(id)a3 functionSpec:(id)a4 userNodeValue:(id)a5 lookupVector:(id)a6 matchModeArgIndex:(int)a7 matchMode:(int64_t)a8 searchMode:(int64_t)a9 outError:(id *)a10;
+ (int)regularSearch:(id)a3 functionSpec:(id)a4 userNodeValue:(id)a5 userNodeType:(char)a6 lookupVector:(id)a7 max:(int)a8 lookupDirectionIsVertical:(BOOL)a9 findNextSmallest:(BOOL)a10 findNextLargest:(BOOL)a11 isWildcardSearch:(BOOL)a12 isSearchModeReverse:(BOOL)a13 matcher:(id)a14 outError:(id *)a15;
@end

@implementation TSCEFunction_XLOOKUP

+ (int)lookupValue:(id)a3 functionSpec:(id)a4 userNodeValue:(id)a5 lookupVector:(id)a6 matchModeArgIndex:(int)a7 matchMode:(int64_t)a8 searchMode:(int64_t)a9 outError:(id *)a10
{
  v16 = a3;
  v17 = a5;
  v18 = a6;
  v26 = objc_msgSend_deepType_(v17, v19, v16, v20, v21);
  if (v26 == 9)
  {
    v27 = objc_msgSend_errorWithContext_(v17, v22, v16, v24, v25);
LABEL_3:
    v28 = 0;
    *a10 = v27;
    goto LABEL_18;
  }

  if (objc_msgSend_gridKind(v18, v22, v23, v24, v25) == 1 && objc_msgSend_count(v18, v29, v30, v31, v32) != 1)
  {
    v27 = objc_msgSend_argumentSetUsedOutOfContextError(TSCEError, v29, v30, v31, v32);
    goto LABEL_3;
  }

  v65 = a1;
  v33 = objc_msgSend_dimensions(v18, v29, v30, v31, v32);
  v38 = v33;
  v39 = HIDWORD(v33);
  if (HIDWORD(v33) != 1 && v33 != 1)
  {
    v40 = objc_msgSend_functionName(a4, v34, v35, v36, v37);
    v43 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v41, v40, 2, v42);
LABEL_17:
    *a10 = v43;

    v28 = 0;
    goto LABEL_18;
  }

  if (a8 == 2 && (a9 == 2 || a9 == -2) || (isRegexString = objc_msgSend_isRegexString(v17, v34, v35, v36, v37), a8 != 2) && ((isRegexString ^ 1) & 1) == 0)
  {
    v40 = objc_msgSend_functionName(a4, v34, v35, v36, v37);
    v43 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v45, v40, (a7 + 1), v46);
    goto LABEL_17;
  }

  v48 = a8 == 2 && v26 == 7;
  v49 = v48;
  v63 = v49;
  if (v48)
  {
    if (isRegexString)
    {
      v64 = objc_msgSend_asString_outError_(v17, v34, v16, a10, v37);
      isCaseSensitiveRegexString = objc_msgSend_isCaseSensitiveRegexString(v17, v50, v51, v52, v53);
      objc_msgSend_regexMatcherWithRegexString_caseSensitive_outError_(TSCERegexMatcher, v55, v64, isCaseSensitiveRegexString, a10);
    }

    else
    {
      v64 = objc_msgSend_asString_outError_(v17, v34, v16, a10, v37);
      objc_msgSend_regexMatcherWithStringMatch_outError_(TSCERegexMatcher, v57, v64, a10, v58);
    }
    v56 = ;
  }

  else
  {
    v56 = 0;
  }

  if (*a10)
  {
    v28 = 0;
  }

  else
  {
    if (v38 == 1)
    {
      v59 = v39;
    }

    else
    {
      v59 = v38;
    }

    if (a9 == 2 || a9 == -2)
    {
      HIBYTE(v62) = a9 == -2;
      BYTE2(v62) = a8 == 1;
      BYTE1(v62) = a8 == -1;
      LOBYTE(v62) = v38 == 1;
      isBinarySearchDescending_outError = objc_msgSend_binarySearch_functionSpec_userNodeValue_userNodeType_lookupVector_max_lookupDirectionIsVertical_findNextSmallest_findNextLargest_isBinarySearchDescending_outError_(v65, v34, v16, a4, v17, v26, v18, v59, v62, a10);
    }

    else
    {
      BYTE4(v61) = a9 == -1;
      BYTE3(v61) = v63;
      BYTE2(v61) = a8 == 1;
      BYTE1(v61) = a8 == -1;
      LOBYTE(v61) = v38 == 1;
      isBinarySearchDescending_outError = objc_msgSend_regularSearch_functionSpec_userNodeValue_userNodeType_lookupVector_max_lookupDirectionIsVertical_findNextSmallest_findNextLargest_isWildcardSearch_isSearchModeReverse_matcher_outError_(v65, v34, v16, a4, v17, v26, v18, v59, v61, v56, a10);
    }

    v28 = isBinarySearchDescending_outError;
  }

LABEL_18:
  return v28;
}

+ (int)binarySearch:(id)a3 functionSpec:(id)a4 userNodeValue:(id)a5 userNodeType:(char)a6 lookupVector:(id)a7 max:(int)a8 lookupDirectionIsVertical:(BOOL)a9 findNextSmallest:(BOOL)a10 findNextLargest:(BOOL)a11 isBinarySearchDescending:(BOOL)a12 outError:(id *)a13
{
  v15 = a6;
  v18 = a3;
  v66 = a5;
  v67 = a7;
  IsEmptyWithContext = objc_msgSend_valueIsEmptyWithContext_(v66, v19, v18, v20, v21);
  if (v15 == 10)
  {
    v27 = 1;
  }

  else
  {
    v27 = IsEmptyWithContext;
  }

  if (v27)
  {
    v28 = -1;
  }

  else
  {
    v64 = v18;
    v65 = objc_msgSend_nilValue(TSCENilValue, v23, v24, v25, v26);
    v29 = v18;
    v68[0] = v29;
    v68[1] = 0;
    v28 = -1;
    v69 = 0;
    v70[0] = 0xFFFFFFFFLL;
    *(v70 + 7) = 0;
    v71 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v72 = 0;
    v73 = 0;
    if (a8 >= 1)
    {
      v32 = v29;
      v63 = a4;
      v33 = 0;
      v28 = -1;
      while (1)
      {
        v34 = (a8 + v33) >> 1;
        if (a9)
        {
          objc_msgSend_resolvedValueAtGridCoord_accessContext_(v67, v30, v34 << 32, v68, v31, v63);
        }

        else
        {
          objc_msgSend_resolvedValueAtGridCoord_accessContext_(v67, v30, (a8 + v33) >> 1, v68, v31, v63);
        }
        v35 = ;
        v43 = objc_msgSend_deepType_(v35, v36, v32, v37, v38);
        if (v43 == 9 || objc_msgSend_valueIsEmptyWithContext_(v35, v39, v32, v41, v42))
        {
          break;
        }

        v44 = v15 == 3 && v43 == 5 || v15 == 5 && v43 == 3;
        v46 = objc_msgSend_compareValuesForLookupLeft_right_context_outError_(TSCEValue, v39, v66, v35, v32, a13);
        if (*a13)
        {
          goto LABEL_54;
        }

        if (v46 == 1)
        {
          v54 = v43 == v15 || v44;
          if (a10 && v54)
          {
            if (objc_msgSend_isNil(v65, v47, v48, v49, v50))
            {
              v56 = v35;

              v28 = (a8 + v33) >> 1;
              v65 = v56;
            }

            else
            {
              if (objc_msgSend_compareValuesForLookupLeft_right_context_outError_(TSCEValue, v55, v65, v35, v32, a13) == -1)
              {
                v57 = v35;

                v28 = (a8 + v33) >> 1;
                v65 = v57;
              }

              if (*a13)
              {
                goto LABEL_54;
              }
            }
          }

          if (a12)
          {
            a8 = (a8 + v33) >> 1;
          }

          else
          {
            v33 = v34 + 1;
          }
        }

        else
        {
          if (!v46)
          {
            goto LABEL_55;
          }

          v51 = v43 == v15 || v44;
          if (a11 && v51)
          {
            if (objc_msgSend_isNil(v65, v47, v48, v49, v50))
            {
              v53 = v35;

              v28 = (a8 + v33) >> 1;
              v65 = v53;
            }

            else
            {
              if (objc_msgSend_compareValuesForLookupLeft_right_context_outError_(TSCEValue, v52, v65, v35, v32, a13) == 1)
              {
                v58 = v35;

                v28 = (a8 + v33) >> 1;
                v65 = v58;
              }

              if (*a13)
              {
                goto LABEL_54;
              }
            }
          }

          if (a12)
          {
            v33 = v34 + 1;
          }

          else
          {
            a8 = (a8 + v33) >> 1;
          }
        }

        if (v33 >= a8)
        {
          goto LABEL_56;
        }
      }

      v59 = objc_msgSend_functionName(v63, v39, v40, v41, v42);
      *a13 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v60, v59, 2, v61);

LABEL_54:
      LODWORD(v34) = 0;
LABEL_55:

      v28 = v34;
    }

LABEL_56:

    v18 = v64;
  }

  return v28;
}

+ (int)regularSearch:(id)a3 functionSpec:(id)a4 userNodeValue:(id)a5 userNodeType:(char)a6 lookupVector:(id)a7 max:(int)a8 lookupDirectionIsVertical:(BOOL)a9 findNextSmallest:(BOOL)a10 findNextLargest:(BOOL)a11 isWildcardSearch:(BOOL)a12 isSearchModeReverse:(BOOL)a13 matcher:(id)a14 outError:(id *)a15
{
  v70 = a6;
  v18 = a3;
  v19 = a5;
  v72 = a7;
  v67 = a14;
  v68 = v19;
  v69 = objc_msgSend_nilValue(TSCENilValue, v20, v21, v22, v23);
  v24 = v18;
  v73[0] = v24;
  v73[1] = 0;
  v74 = 0;
  v75[0] = 0xFFFFFFFFLL;
  *(v75 + 7) = 0;
  v76 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v77 = 0;
  v78 = 0;
  IsEmptyWithContext = objc_msgSend_valueIsEmptyWithContext_(v19, v25, v24, v26, v27);
  if (v70 == 10)
  {
    v31 = 1;
  }

  else
  {
    v31 = IsEmptyWithContext;
  }

  v71 = v31;
  v32 = a8 - 1;
  if (a8 < 1)
  {
    LODWORD(v35) = -1;
    goto LABEL_61;
  }

  v33 = 0;
  v34 = 0xFFFFFFFFLL;
  while (1)
  {
    if (a13)
    {
      v35 = v32;
    }

    else
    {
      v35 = v33;
    }

    if (a9)
    {
      objc_msgSend_resolvedValueAtGridCoord_accessContext_(v72, v29, v35 << 32, v73, v30);
    }

    else
    {
      objc_msgSend_resolvedValueAtGridCoord_accessContext_(v72, v29, v35, v73, v30);
    }
    v36 = ;
    v40 = objc_msgSend_deepType_(v36, v37, v24, v38, v39);
    v44 = v40;
    if (v40 == 9)
    {
      goto LABEL_22;
    }

    if (v71)
    {
      v45 = objc_msgSend_valueIsEmptyWithContext_(v36, v41, v24, v42, v43);
      if (v44 == 10)
      {
        v46 = 1;
      }

      else
      {
        v46 = v45;
      }

      if (v46)
      {
LABEL_57:
        v65 = 1;
        goto LABEL_59;
      }

      goto LABEL_22;
    }

    if (a12)
    {
      break;
    }

    v52 = v70 == 3 && v40 == 5 || v70 == 5 && v40 == 3;
    v54 = objc_msgSend_compareValuesForLookupLeft_right_context_outError_(TSCEValue, v41, v19, v36, v24, a15);
    if (*a15)
    {
      goto LABEL_58;
    }

    if (v54 == 1)
    {
      v62 = v44 == v70 || v52;
      if (!a10 || !v62)
      {
        goto LABEL_22;
      }

      if (objc_msgSend_isNil(v69, v55, v56, v57, v58))
      {
LABEL_51:
        v64 = v36;

        v69 = v64;
        goto LABEL_23;
      }

      if (objc_msgSend_compareValuesForLookupLeft_right_context_outError_(TSCEValue, v63, v69, v36, v24, a15) == -1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      if (!v54)
      {
        goto LABEL_57;
      }

      v59 = v44 == v70 || v52;
      if (!a11 || !v59)
      {
        goto LABEL_22;
      }

      if (objc_msgSend_isNil(v69, v55, v56, v57, v58))
      {
        goto LABEL_51;
      }

      if (objc_msgSend_compareValuesForLookupLeft_right_context_outError_(TSCEValue, v60, v69, v36, v24, a15) == 1)
      {
LABEL_44:
        v61 = v36;

        v69 = v61;
        goto LABEL_54;
      }
    }

    v35 = v34;
LABEL_54:
    if (*a15)
    {
      v65 = 0;
      goto LABEL_59;
    }

LABEL_23:

    ++v33;
    --v32;
    v34 = v35;
    if (v32 == -1)
    {
      goto LABEL_61;
    }
  }

  v47 = objc_msgSend_asString_outError_(v36, v41, v24, a15, v43);
  v51 = objc_msgSend_containsMatchInString_(v67, v48, v47, v49, v50);

  if (v51)
  {
    goto LABEL_57;
  }

  if (!*a15)
  {
LABEL_22:
    v35 = v34;
    goto LABEL_23;
  }

LABEL_58:
  v65 = 0;
  LODWORD(v35) = v34;
LABEL_59:

  if (!v65)
  {
    LODWORD(v35) = 0;
  }

LABEL_61:

  return v35;
}

+ (id)evaluateForSingleUserNodeWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v7 = a3;
  sub_2212B7230(v236, 3uLL);
  v8 = **a5;
  v12 = v8;
  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v9, v7, v10, v11);
  }

  else
  {
    v226 = 0u;
    *v227 = 0u;
  }

  sub_22114F414(v236, &v226);
  v13 = *(*a5 + 8);
  v235 = 0;
  v15 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v13, v14, v7, a4, 1, 1, &v235);
  v16 = v235;
  if (v16)
  {
    v20 = v16;
    v21 = objc_msgSend_raiseErrorOrConvert_(v7, v17, v16, v18, v19);
    goto LABEL_101;
  }

  if (v13)
  {
    objc_msgSend_formatWithContext_(v13, v17, v7, v18, v19);
  }

  else
  {
    v226 = 0u;
    *v227 = 0u;
  }

  sub_22114F414(v236, &v226);
  v22 = *(*a5 + 16);
  v234 = 0;
  v221 = v22;
  v222 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v22, v23, v7, a4, 2, 1, &v234);
  v24 = v234;
  if (!v24)
  {
    if (v221)
    {
      objc_msgSend_formatWithContext_(v221, v25, v7, v26, v27);
    }

    else
    {
      v226 = 0u;
      *v227 = 0u;
    }

    sub_22114F414(v236, &v226);
    if ((objc_msgSend_isReferenceValue(v13, v28, v29, v30, v31) & 1) == 0 && !objc_msgSend_isReferenceValue(v221, v32, v33, v34, v35))
    {
      goto LABEL_19;
    }

    v233 = 0;
    v39 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v13, v32, v7, a4, 1, &v233);
    v40 = v233;
    if (v40)
    {
      v45 = v40;

      v39 = v45;
LABEL_18:

LABEL_19:
      if (objc_msgSend_gridKind(v222, v32, v36, v37, v38) != 1 || objc_msgSend_count(v222, v46, v47, v48, v49) == 1)
      {
        if (*(a5 + 1) - *a5 < 0x19uLL)
        {
          v55 = 0;
          v50 = 0;
        }

        else
        {
          v50 = *(*a5 + 24);
          if (objc_msgSend_isTokenOrEmptyArg(v50, v51, v52, v53, v54))
          {
            v55 = 0;
          }

          else
          {
            v60 = objc_msgSend_deepType_(v50, v46, v7, v48, v49);
            v55 = v60 != 12 && v60 != 10;
          }
        }

        v220 = v50;
        if (*(a5 + 1) - *a5 < 0x21uLL)
        {
          v71 = 0;
          v80 = 1;
          goto LABEL_46;
        }

        v62 = *(*a5 + 32);
        if ((objc_msgSend_isTokenOrEmptyArg(v62, v63, v64, v65, v66) & 1) != 0 || objc_msgSend_deepType_(v62, v67, v7, v68, v69) == 10)
        {
          v71 = 0;
        }

        else
        {
          v217 = v55;
          v230 = 0;
          v162 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v62, v70, v7, a4, 4, &v230);
          v20 = v230;
          v167 = objc_msgSend_integer(v162, v163, v164, v165, v166);

          if (v20)
          {
            goto LABEL_85;
          }

          if ((v167 - 3) <= 0xFFFFFFFB)
          {
            v178 = objc_msgSend_functionName(a4, v168, v169, v170, v171);
            v181 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v179, v178, 5, v180);
            v185 = objc_msgSend_raiseErrorOrConvert_(v7, v182, v181, v183, v184);
            goto LABEL_114;
          }

          v71 = v167;
          v55 = v217;
        }

        if (*(a5 + 1) - *a5 < 0x29uLL)
        {
          v80 = 1;
          goto LABEL_45;
        }

        v62 = *(*a5 + 40);
        if ((objc_msgSend_isTokenOrEmptyArg(v62, v72, v73, v74, v75) & 1) != 0 || objc_msgSend_deepType_(v62, v76, v7, v77, v78) == 10)
        {
          v80 = 1;
LABEL_42:

LABEL_45:
          v50 = v220;
LABEL_46:
          v219 = objc_msgSend_dimensions(v15, v46, v47, v48, v49);
          v85 = objc_msgSend_dimensions(v222, v81, v82, v83, v84);
          v90 = v85;
          v91 = HIDWORD(v85) == HIDWORD(v219);
          if (v219 != 1)
          {
            v91 = v219 == v85;
          }

          if (!v91)
          {
            v62 = objc_msgSend_functionName(a4, v86, v87, v88, v89);
            v98 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v96, v62, 3, v97);
            v21 = objc_msgSend_raiseErrorOrConvert_(v7, v99, v98, v100, v101);

LABEL_97:
            v20 = 0;
            goto LABEL_98;
          }

          v214 = HIDWORD(v85);
          v228 = 0;
          matched = objc_msgSend_lookupValue_functionSpec_userNodeValue_lookupVector_matchModeArgIndex_matchMode_searchMode_outError_(TSCEFunction_XLOOKUP, v86, v7, a4, v12, v15, 4, v71, v80, &v228);
          v92 = v228;
          if (v92)
          {
            v20 = v92;
            v21 = objc_msgSend_raiseErrorOrConvert_(v7, v93, v92, v94, v95);
LABEL_99:

            goto LABEL_100;
          }

          v122 = v7;
          v226 = v122;
          v227[0] = 0;
          v227[1] = 0xFFFFFFFFLL;
          *(&v227[1] + 7) = 0;
          *&v227[3] = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
          v227[5] = 0;
          v227[6] = 0;
          if (matched == -1)
          {
            if (!v55)
            {
              v186 = v122;
              v187 = objc_msgSend_functionName(a4, v123, v124, v125, v126);
              v191 = objc_msgSend_valueNotAvailableErrorForFunctionName_(TSCEError, v188, v187, v189, v190);
              v21 = objc_msgSend_raiseErrorOrConvert_(v186, v192, v191, v193, v194);

              v62 = 0;
LABEL_96:

              goto LABEL_97;
            }

            v195 = v50;
          }

          else
          {
            v127 = objc_msgSend_nativeType(v222, v123, v124, v125, v126);
            v128 = v222;
            v133 = v128;
            if (v127 == 6 || v127 == 1)
            {
              v216 = v90;
              memset(&v231, 0, 24);
              v134 = objc_msgSend_dimensions(v128, v129, v130, v131, v132);
              v237[0] = v134;
              v137 = HIDWORD(v134);
              if (HIDWORD(v134))
              {
                v138 = 0;
                do
                {
                  if (v134)
                  {
                    v139 = 0;
                    do
                    {
                      v225 = objc_msgSend_valueAtGridCoord_accessContext_(v133, v135, (v138 << 32) | v139, &v226, v136);
                      if (objc_msgSend_isReferenceValue(v225, v140, v141, v142, v143))
                      {
                        v148 = objc_msgSend_asReferenceValue(v225, v144, v145, v146, v147);
                        objc_msgSend_setIsOutputOfAFunction_(v148, v149, 1, v150, v151);
                        v152 = v148;
                        v224 = v152;
                        sub_2210ED5B8(&v231, &v224);
                      }

                      else
                      {
                        sub_221179A54(&v231, &v225);
                      }

                      ++v139;
                      LODWORD(v134) = v237[0];
                    }

                    while (LODWORD(v237[0]) > v139);
                    v137 = HIDWORD(v237[0]);
                  }

                  ++v138;
                }

                while (v138 < v137);
              }

              v153 = [TSCEDenseGrid alloc];
              isFlattened_dimensions = objc_msgSend_initWithValues_gridKind_isFlattened_dimensions_(v153, v154, &v231, 0, 0, v237);
              objc_msgSend_gridValue_(TSCEGridValue, v156, isFlattened_dimensions, v157, v158);
              v159 = v90 = v216;

              v237[0] = &v231;
              sub_22107C2C0(v237);
              v133 = v159;
            }

            if (v219 == 1)
            {
              v160 = matched << 32;
              if (v90 == 1)
              {
                objc_msgSend_valueAtGridCoord_accessContext_(v133, v129, v160, &v226, v214);
              }

              else
              {
                objc_msgSend_subGridValueAtGridCoord_width_height_accessContext_(v133, v129, v160, v90, 1, &v226);
              }
            }

            else if (v214 == 1)
            {
              objc_msgSend_valueAtGridCoord_accessContext_(v133, v129, matched, &v226, 1);
            }

            else
            {
              objc_msgSend_subGridValueAtGridCoord_width_height_accessContext_(v133, v129, matched, 1, v214, &v226);
            }
            v161 = ;
            v195 = v161;
          }

          if (!v195)
          {
            v195 = objc_msgSend_nilValue(TSCENilValue, v196, v197, v198, v199);
          }

          sub_221256020(v236, &v223);
          TSCEFormat::TSCEFormat(&v231, &v223);
          objc_msgSend_setFormat_(v195, v200, &v231, v201, v202);
          v62 = v195;
          v21 = v62;
          goto LABEL_96;
        }

        v218 = v55;
        v229 = 0;
        v172 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v62, v79, v7, a4, 5, &v229);
        v20 = v229;
        LODWORD(v80) = objc_msgSend_integer(v172, v173, v174, v175, v176);

        if (v20)
        {
LABEL_85:
          v21 = objc_msgSend_raiseErrorOrConvert_(v7, v168, v20, v170, v171);
LABEL_98:

          v50 = v220;
          goto LABEL_99;
        }

        if (v80 && (v80 - 3) > 0xFFFFFFFA)
        {
          v80 = v80;
          v55 = v218;
          goto LABEL_42;
        }

        v178 = objc_msgSend_functionName(a4, v168, v177, v170, v171);
        v181 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v209, v178, 6, v210);
        v185 = objc_msgSend_raiseErrorOrConvert_(v7, v211, v181, v212, v213);
LABEL_114:
        v21 = v185;

        goto LABEL_98;
      }

      v50 = objc_msgSend_argumentSetUsedOutOfContextError(TSCEError, v46, v47, v48, v49);
      v59 = objc_msgSend_raiseErrorOrConvert_(v7, v56, v50, v57, v58);
LABEL_59:
      v21 = v59;
      v20 = 0;
      goto LABEL_99;
    }

    if (v39)
    {
      objc_msgSend_rangeRef(v39, v41, v42, v43, v44);
    }

    else
    {
      v226 = 0u;
      *v227 = 0u;
    }

    v102 = objc_msgSend_calcEngine(v7, v41, v42, v43, v44);
    IsValidIncludingSheet = objc_msgSend_referenceIsValidIncludingSheet_(v102, v103, &v226, v104, v105);

    if (IsValidIncludingSheet)
    {
      if ((objc_msgSend_isReferenceValue(v221, v107, v108, v109, v110) & 1) == 0)
      {
        goto LABEL_18;
      }

      v232 = 0;
      v112 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v221, v111, v7, a4, 2, &v232);
      v113 = v232;
      if (v113)
      {
        v118 = v113;

        v39 = v118;
        goto LABEL_18;
      }

      if (v112)
      {
        objc_msgSend_rangeRef(v112, v114, v115, v116, v117);
      }

      else
      {
        memset(&v231, 0, sizeof(v231));
      }

      v204 = objc_msgSend_calcEngine(v7, v114, v115, v116, v117);
      v208 = objc_msgSend_referenceIsValidIncludingSheet_(v204, v205, &v231, v206, v207);

      if (v208)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }

    v50 = objc_msgSend_invalidReferenceError(TSCEError, v32, v36, v37, v38);
    v59 = objc_msgSend_raiseErrorOrConvert_(v7, v119, v50, v120, v121);
    goto LABEL_59;
  }

  v20 = v24;
  v21 = objc_msgSend_raiseErrorOrConvert_(v7, v25, v24, v26, v27);
LABEL_100:

LABEL_101:
  if (v236[0])
  {
    v236[1] = v236[0];
    operator delete(v236[0]);
  }

  return v21;
}

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v9 = **a5;
  v14 = objc_msgSend_nativeType(v9, v10, v11, v12, v13);
  if (v14 == 1 || v14 == 16)
  {
    v73[0] = 0;
    v17 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v9, v15, a3, a4, 0, 1, v73);
    v18 = v73[0];
    v61 = v17;
    if (v18)
    {
      v22 = v18;
      v23 = objc_msgSend_raiseErrorOrConvert_(a3, v19, v18, v20, v21);
    }

    else
    {
      memset(location, 0, sizeof(location));
      sub_2213F5020(location, *a5, *(a5 + 1), (*(a5 + 1) - *a5) >> 3);
      v71 = objc_msgSend_dimensions(v17, v24, v25, v26, v27);
      v30 = a3;
      v65[0] = v30;
      v65[1] = 0;
      v66 = 0;
      v67[0] = 0xFFFFFFFFLL;
      *(v67 + 7) = 0;
      v68 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
      v69 = 0;
      v70 = 0;
      if (v71.height > 1 || v71.width >= 2)
      {
        v64 = 0;
        v60 = v9;
        v62 = objc_opt_new();
        v22 = 0;
        do
        {
          v36 = objc_msgSend_valueAtGridCoord_accessContext_(v17, v34, *&v64, v65, v35, v60);
          objc_storeStrong(location[0], v36);
          v38 = objc_msgSend_evaluateForSingleUserNodeWithContext_functionSpec_arguments_(a1, v37, v30, a4, location);
          v43 = objc_msgSend_nativeType(v38, v39, v40, v41, v42);
          if (v43 == 1 || v43 == 16)
          {
            v63 = v22;
            v46 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v38, v44, v30, a4, 0, 1, &v63);
            v47 = v63;

            v50 = objc_msgSend_valueAtIndex_accessContext_(v46, v48, 0, v65, v49);

            v22 = v47;
            v38 = v50;
            v17 = v61;
          }

          objc_msgSend_setValue_atCoord_(v62, v44, v38, &v64, v45);
          v64 = TSCEGridDimensions::nextCoordRowMajorOrder(&v71, &v64);
        }

        while (v64.column != 0x7FFFFFFF && v64.row != 0x7FFFFFFF);
        v51 = [TSCEDenseGrid alloc];
        v55 = objc_msgSend_initWithValueGrid_(v51, v52, v62, v53, v54);
        v9 = v60;
        v23 = objc_msgSend_gridValue_(TSCEGridValue, v56, v55, v57, v58);
      }

      else
      {
        v31 = objc_msgSend_valueAtIndex_accessContext_(v17, v28, 0, v65, v29);
        v32 = *location[0];
        *location[0] = v31;

        v23 = objc_msgSend_evaluateForSingleUserNodeWithContext_functionSpec_arguments_(a1, v33, v30, a4, location);
        v22 = 0;
      }

      v65[0] = location;
      sub_22107C2C0(v65);
    }
  }

  else
  {
    v23 = objc_msgSend_evaluateForSingleUserNodeWithContext_functionSpec_arguments_(a1, v15, a3, a4, a5);
  }

  return v23;
}

@end