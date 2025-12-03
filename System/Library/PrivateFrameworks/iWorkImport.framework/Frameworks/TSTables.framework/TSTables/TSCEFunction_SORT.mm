@interface TSCEFunction_SORT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_SORT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v221[0] = 0;
  v9 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v8, a2, context, spec, 0, 0, v221);
  v10 = v221[0];
  v196 = v9;
  if (v10)
  {
    v15 = v10;
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v11, v10, v13, v14);
    goto LABEL_3;
  }

  v220 = objc_msgSend_dimensions(v9, v11, v12, v13, v14);
  if (!(v220.height * v220.width))
  {
    v30 = objc_msgSend_emptyArrayError(TSCEError, v18, v19, v20, v21);
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v31, v30, v32, v33);

    v15 = 0;
    goto LABEL_3;
  }

  v22 = *arguments;
  v23 = *(arguments + 1) - *arguments;
  if (v23 < 0x19)
  {
    v195 = 0;
  }

  else
  {
    v24 = v22[3];
    if (objc_msgSend_isTokenOrEmptyArg(v24, v25, v26, v27, v28))
    {
      v195 = 0;
    }

    else
    {
      v219 = 0;
      v195 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v24, v29, context, spec, 3, &v219);
      v34 = v219;
      if (v34)
      {
        v15 = v34;
        v16 = objc_msgSend_raiseErrorOrConvert_(context, v35, v34, v36, v37);

        goto LABEL_3;
      }
    }

    v22 = *arguments;
    v23 = *(arguments + 1) - *arguments;
  }

  v216 = 0;
  v217 = 0;
  v218 = 0;
  if (v23 <= 8)
  {
LABEL_19:
    LODWORD(v208) = 0;
    sub_2210C47D0(&v216, &v208);
LABEL_20:
    v51 = 0;
    __p = 0;
    v205 = 0;
    v206 = 0;
    if (*(arguments + 1) - *arguments >= 0x11uLL)
    {
      v52 = *(*arguments + 16);
      if ((objc_msgSend_isTokenOrEmptyArg(v52, v53, v54, v55, v56) & 1) == 0 && objc_msgSend_deepType_(v52, v57, context, v58, v59) != 10)
      {
        v203 = 0;
        v64 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v52, v60, context, spec, 2, 0, &v203);
        v118 = v203;
        if (v118)
        {
          v15 = v118;
          v16 = objc_msgSend_raiseErrorOrConvert_(context, v119, v118, v121, v122);
LABEL_45:

          if (__p)
          {
            v205 = __p;
            operator delete(__p);
          }

          goto LABEL_47;
        }

        v145 = objc_msgSend_count(v64, v119, v120, v121, v122);
        if (v145)
        {
          v146 = 0;
          contextCopy = context;
          v208 = contextCopy;
          specCopy2 = spec;
          v210 = 0;
          v211[0] = 2;
          *(v211 + 7) = 0;
          v212 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
          v213 = 0;
          v214 = 0;
          while (1)
          {
            v149 = objc_msgSend_valueAtIndex_accessContext_(v64, v147, v146, &v208, v148);
            v202 = 0;
            v151 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v149, v150, contextCopy, spec, 1, &v202);
            v15 = v202;
            v156 = objc_msgSend_integer(v151, v152, v153, v154, v155);

            if (v15)
            {
              v16 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v157, v15, v159, v160);
              goto LABEL_83;
            }

            if (v156 != 1 && v156 != -1)
            {
              break;
            }

            v201 = v156;
            sub_2211531C0(&__p, &v201);

            if (v145 == ++v146)
            {

              goto LABEL_71;
            }
          }

          v171 = objc_msgSend_functionName(spec, v157, v158, v159, v160);
          v174 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v172, v171, 2, v173);
          v16 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v175, v174, v176, v177);

LABEL_83:
          goto LABEL_45;
        }

LABEL_71:
      }

      v51 = (v205 - __p) >> 3;
    }

    for (i = v217 - v216; v51 < (v217 - v216) >> 2; i = v217 - v216)
    {
      v208 = 1;
      sub_2211531C0(&__p, &v208);
      v51 = (v205 - __p) >> 3;
    }

    if (v51 <= i >> 2)
    {
      v192 = objc_msgSend_asValueGrid_(v196, v47, context, v49, v50);
      objc_msgSend_deepResolveInPlace_(v192, v68, context, v69, v70);
      p_height = &v220;
      if (!v195)
      {
        p_height = &v220.height;
      }

      width = p_height->width;
      v74 = v216;
      v73 = v217;
      v75 = objc_alloc(MEMORY[0x277CBEB18]);
      v64 = objc_msgSend_initWithCapacity_(v75, v76, width, v77, v78);
      v80 = v73 - v74;
      if (width)
      {
        v81 = 0;
        do
        {
          v82 = [TSTTableSortTag alloc];
          v86 = objc_msgSend_initWithNumberOfSortRules_(v82, v83, v73 - v74, v84, v85);
          objc_msgSend_setColumnOrRowIndex_(v86, v87, v81, v88, v89);
          objc_msgSend_addObject_(v64, v90, v86, v91, v92);

          v81 = (v81 + 1);
        }

        while (width != v81);
      }

      if (v73 != v74)
      {
        v93 = 0;
        if (v80 <= 1)
        {
          v80 = 1;
        }

        do
        {
          v94 = *&v216[4 * v93];
          if (v195)
          {
            v199[0] = MEMORY[0x277D85DD0];
            v199[1] = 3221225472;
            v199[2] = sub_221213C50;
            v199[3] = &unk_2784615E8;
            v200[0] = v64;
            v200[1] = context;
            v200[2] = v93;
            objc_msgSend_enumerateValuesForRow_usingBlock_(v192, v95, v94, v199, v96);
            v97 = v200;
          }

          else
          {
            v197[0] = MEMORY[0x277D85DD0];
            v197[1] = 3221225472;
            v197[2] = sub_221213D0C;
            v197[3] = &unk_2784615E8;
            v198[0] = v64;
            v198[1] = context;
            v198[2] = v93;
            objc_msgSend_enumerateValuesForColumn_usingBlock_(v192, v98, v94, v197, v99);
            v97 = v198;
          }

          ++v93;
        }

        while (v80 != v93);
      }

      v103 = objc_msgSend_shuffleMapForSortDirections_unsortedTags_sortDirections_(TSCEFunction_SORTBY, v79, context, v64, &__p);
      v52 = v192;
      if (v195)
      {
        objc_msgSend_rearrangeColumnsWithMapping_(v192, v100, v103, v101, v102);
      }

      else
      {
        objc_msgSend_rearrangeRowsWithMapping_(v192, v100, v103, v101, v102);
      }

      v104 = [TSCEDenseGrid alloc];
      v108 = objc_msgSend_initWithValueGrid_(v104, v105, v192, v106, v107);
      v16 = objc_msgSend_gridValue_(TSCEGridValue, v109, v108, v110, v111);
    }

    else
    {
      v52 = objc_msgSend_functionName(spec, v47, v48, v49, v50);
      v64 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v62, v52, 2, v63);
      v16 = objc_msgSend_raiseErrorOrConvert_(context, v65, v64, v66, v67);
    }

    v15 = 0;
    goto LABEL_45;
  }

  v38 = v22[1];
  if ((objc_msgSend_isTokenOrEmptyArg(v38, v39, v40, v41, v42) & 1) != 0 || objc_msgSend_deepType_(v38, v43, context, v44, v45) == 10)
  {
LABEL_18:

    if (v216 != v217)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v215 = 0;
  v112 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v38, v46, context, spec, 1, 0, &v215);
  v113 = v215;
  if (!v113)
  {
    v123 = objc_msgSend_count(v112, v114, v115, v116, v117);
    if (!v123)
    {
LABEL_63:

      goto LABEL_18;
    }

    v124 = 0;
    contextCopy2 = context;
    v208 = contextCopy2;
    specCopy2 = spec;
    v210 = 0;
    v211[0] = 1;
    *(v211 + 7) = 0;
    v212 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v213 = 0;
    v214 = 0;
    while (1)
    {
      v127 = v112;
      v128 = objc_msgSend_valueAtIndex_accessContext_(v112, v125, v124, &v208, v126, contextCopy2);
      v207 = 0;
      v193 = v128;
      v130 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v128, v129, contextCopy2, spec, 1, &v207);
      v15 = v207;
      v135 = objc_msgSend_integer(v130, v131, v132, v133, v134);

      if (v15)
      {
        v139 = v193;
        v16 = objc_msgSend_raiseErrorOrConvert_(contextCopy2, v136, v15, v137, v138);
        goto LABEL_87;
      }

      LODWORD(__p) = 0;
      v139 = v193;
      if (v195)
      {
        v140 = TSCEGridDimensions::rowIndexForOneBasedIndex(&v220, v135, 1);
      }

      else
      {
        v140 = TSCEGridDimensions::columnIndexForOneBasedIndex(&v220, v135, 1);
      }

      LODWORD(__p) = v140;
      if (v135 < 0)
      {
        v162 = v220.width;
        height = v220.height;
        v164 = objc_msgSend_functionName(spec, v141, v142, v143, v144);
        if (v195)
        {
          v165 = height;
        }

        else
        {
          v165 = v162;
        }

        v166 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v163, 2, v164, 1, 1, 1.0, v165);
        v170 = objc_msgSend_raiseErrorOrConvert_(contextCopy2, v167, v166, v168, v169);
        goto LABEL_78;
      }

      if (v140 == 0x7FFFFFFF)
      {
        break;
      }

      sub_2210C47D0(&v216, &__p);

      ++v124;
      v112 = v127;
      if (v123 == v124)
      {

        goto LABEL_63;
      }
    }

    if (v195)
    {
      if (v220.height == 1)
      {
        goto LABEL_85;
      }

      v164 = objc_msgSend_functionName(spec, v141, v142, v143, v144);
      LODWORD(v181) = v220.height;
      v166 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v182, 2, v164, 1, 1, 1.0, v181);
      v170 = objc_msgSend_raiseErrorOrConvert_(contextCopy2, v183, v166, v184, v185);
    }

    else
    {
      if (v220.width == 1)
      {
LABEL_85:
        v164 = objc_msgSend_oneDimensionArrayIndexOutOfBoundsError(TSCEError, v141, v142, v143, v144);
        v16 = objc_msgSend_raiseErrorOrConvert_(contextCopy2, v178, v164, v179, v180);
LABEL_86:

LABEL_87:
        v112 = v127;
        goto LABEL_88;
      }

      v164 = objc_msgSend_functionName(spec, v141, v142, v143, v144);
      LODWORD(v186) = v220.width;
      v166 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v187, 2, v164, 1, 1, 1.0, v186);
      v170 = objc_msgSend_raiseErrorOrConvert_(contextCopy2, v188, v166, v189, v190);
    }

LABEL_78:
    v16 = v170;

    goto LABEL_86;
  }

  v15 = v113;
  v16 = objc_msgSend_raiseErrorOrConvert_(context, v114, v113, v116, v117);
LABEL_88:

LABEL_47:
  if (v216)
  {
    v217 = v216;
    operator delete(v216);
  }

LABEL_3:

  return v16;
}

@end