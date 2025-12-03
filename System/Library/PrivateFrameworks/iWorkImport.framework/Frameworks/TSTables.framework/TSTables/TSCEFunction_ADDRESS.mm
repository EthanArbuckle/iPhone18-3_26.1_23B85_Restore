@interface TSCEFunction_ADDRESS
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_ADDRESS

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v159 = 0;
  v160 = 0;
  v161 = 0;
  v8 = **arguments;
  v12 = v8;
  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v9, context, v10, v11);
  }

  else
  {
    memset(&v158, 0, sizeof(v158));
  }

  sub_22114F414(&v159, &v158);
  v157 = 0;
  v14 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v12, v13, context, spec, 0, &v157);
  v15 = v157;
  if (v15)
  {
    v20 = v15;
    v21 = objc_msgSend_raiseErrorOrConvert_(context, v16, v15, v18, v19);
    goto LABEL_86;
  }

  v158._tskFormat = objc_msgSend_decimalRepresentation(v14, v16, v17, v18, v19);
  *&v158._formatType = v22;
  v23 = TSUDecimal::truncateWithRounding(&v158);
  v24 = *(*arguments + 8);
  v28 = v24;
  if (v24)
  {
    objc_msgSend_formatWithContext_(v24, v25, context, v26, v27);
  }

  else
  {
    memset(&v158, 0, sizeof(v158));
  }

  sub_22114F414(&v159, &v158);
  v156 = 0;
  v30 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v28, v29, context, spec, 1, &v156);
  v31 = v156;
  if (!v31)
  {
    v150 = v30;
    v151 = v28;
    v158._tskFormat = objc_msgSend_decimalRepresentation(v30, v32, v33, v34, v35);
    *&v158._formatType = v36;
    v149 = TSUDecimal::truncateWithRounding(&v158);
    v152 = v23;
    if (*(arguments + 1) - *arguments >= 0x11uLL)
    {
      v41 = *(*arguments + 16);
      if ((objc_msgSend_isTokenOrEmptyArg(v41, v42, v43, v44, v45) & 1) != 0 || objc_msgSend_nativeType(v41, v46, v47, v48, v49) == 10)
      {
      }

      else
      {
        v155 = 0;
        v94 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v41, v50, context, spec, 2, &v155);
        v20 = v155;
        v148 = objc_msgSend_trunc(v94, v95, v96, v97, v98);

        if (v20)
        {
          v21 = objc_msgSend_raiseErrorOrConvert_(context, v99, v20, v100, v101);

          goto LABEL_84;
        }

        if (v41)
        {
          objc_msgSend_formatWithContext_(v41, v99, context, v100, v101);
        }

        else
        {
          memset(&v158, 0, sizeof(v158));
        }

        sub_22114F414(&v159, &v158);
        TSUDecimal::operator=();
        v146 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v108, &v158, v109, v110);
        v144 = objc_msgSend_mod_(v148, v111, v146, v112, v113);

        v118 = objc_msgSend_integer(v144, v114, v115, v116, v117);
        v119 = v41;
        if (v118)
        {
          v120 = v118;
        }

        else
        {
          v120 = 4;
        }

        if (v120 <= 4)
        {
          v51 = 7u >> v120;
          v52 = 0xBu >> v120;
          goto LABEL_16;
        }
      }
    }

    LOBYTE(v51) = 1;
    LOBYTE(v52) = 1;
LABEL_16:
    v145 = v52;
    v147 = v51;
    if (*(arguments + 1) - *arguments < 0x19uLL)
    {
      v62 = 1;
LABEL_22:
      if ((v51 | v62))
      {
        v63 = 1;
      }

      else
      {
        v63 = -999999;
      }

      if ((v51 | v62))
      {
        v64 = 1000000;
      }

      else
      {
        v64 = 999999;
      }

      if ((v52 | v62))
      {
        v65 = 1;
      }

      else
      {
        v65 = -999;
      }

      if ((v52 | v62))
      {
        v66 = 1000;
      }

      else
      {
        v66 = 999;
      }

      if (v152 < v63 || v152 > v64)
      {
        v82 = objc_msgSend_functionName(spec, v37, v38, v39, v40);
        v83 = v64;
        v30 = v150;
        v41 = v82;
        v85 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v84, 1, v82, 1, 1, v63, v83);
        v28 = v151;
        v89 = objc_msgSend_raiseErrorOrConvert_(context, v86, v85, v87, v88);
      }

      else
      {
        if (v149 >= v65 && v149 <= v66)
        {
          v41 = objc_msgSend_stringWithCapacity_(MEMORY[0x277CCAB68], v37, 10, v39, v40);
          v30 = v150;
          v28 = v151;
          if (*(arguments + 1) - *arguments >= 0x21uLL)
          {
            v70 = *(*arguments + 32);
            if ((objc_msgSend_isTokenOrEmptyArg(v70, v71, v72, v73, v74) & 1) == 0 && objc_msgSend_nativeType(v70, v75, v76, v77, v78) != 10)
            {
              if (v70)
              {
                objc_msgSend_formatWithContext_(v70, v79, context, v80, v81);
              }

              else
              {
                memset(&v158, 0, sizeof(v158));
              }

              sub_22114F414(&v159, &v158);
              v153 = 0;
              v122 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v70, v121, context, spec, 4, &v153);
              v20 = v153;
              objc_msgSend_appendString_(v41, v123, v122, v124, v125);

              if (v20)
              {
                v21 = objc_msgSend_raiseErrorOrConvert_(context, v126, v20, v127, v128);

                goto LABEL_84;
              }

              objc_msgSend_appendString_(v41, v126, @"::", v127, v128);
            }
          }

          if (v62)
          {
            v129 = NSStringFromTSUCellCoord();
            objc_msgSend_appendString_(v41, v130, v129, v131, v132);
          }

          else
          {
            objc_msgSend_appendString_(v41, v67, @"R", v68, v69);
            if (v152)
            {
              if (v147)
              {
                v136 = &stru_2834BADA0;
              }

              else
              {
                v136 = @"[";
              }

              if (v147)
              {
                objc_msgSend_appendFormat_(v41, v133, @"%@%i%@", v134, v135, v136, v152, &stru_2834BADA0);
              }

              else
              {
                objc_msgSend_appendFormat_(v41, v133, @"%@%i%@", v134, v135, v136, v152, @"]");
              }
            }

            objc_msgSend_appendString_(v41, v133, @"C", v134, v135);
            if (v149)
            {
              if (v145)
              {
                v140 = &stru_2834BADA0;
              }

              else
              {
                v140 = @"[";
              }

              if (v145)
              {
                objc_msgSend_appendFormat_(v41, v137, @"%@%i%@", v138, v139, v140, v149, &stru_2834BADA0);
              }

              else
              {
                objc_msgSend_appendFormat_(v41, v137, @"%@%i%@", v138, v139, v140, v149, @"]");
              }
            }
          }

          sub_221256020(&v159, &v158);
          v21 = objc_msgSend_stringValue_format_(TSCEStringValue, v141, v41, &v158, v142);
LABEL_83:
          v20 = 0;
          goto LABEL_84;
        }

        v41 = objc_msgSend_functionName(spec, v37, v38, v39, v40);
        v28 = v151;
        v85 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v90, 2, v41, 1, 1, v65, v66);
        v30 = v150;
        v89 = objc_msgSend_raiseErrorOrConvert_(context, v91, v85, v92, v93);
      }

      v21 = v89;

      goto LABEL_83;
    }

    v41 = *(*arguments + 24);
    if ((objc_msgSend_isTokenOrEmptyArg(v41, v53, v54, v55, v56) & 1) != 0 || objc_msgSend_nativeType(v41, v57, v58, v59, v60) == 10)
    {
      v62 = 1;
LABEL_20:

      LOBYTE(v52) = v145;
      LOBYTE(v51) = v147;
      goto LABEL_22;
    }

    v154 = 0;
    v62 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v41, v61, context, spec, 3, &v154);
    v20 = v154;
    if (v41)
    {
      objc_msgSend_formatWithContext_(v41, v102, context, v103, v104);
    }

    else
    {
      memset(&v158, 0, sizeof(v158));
    }

    sub_22114F414(&v159, &v158);
    if (!v20)
    {
      goto LABEL_20;
    }

    v21 = objc_msgSend_raiseErrorOrConvert_(context, v105, v20, v106, v107);
LABEL_84:

    goto LABEL_85;
  }

  v20 = v31;
  v21 = objc_msgSend_raiseErrorOrConvert_(context, v32, v31, v34, v35);
LABEL_85:

LABEL_86:
  if (v159)
  {
    v160 = v159;
    operator delete(v159);
  }

  return v21;
}

@end