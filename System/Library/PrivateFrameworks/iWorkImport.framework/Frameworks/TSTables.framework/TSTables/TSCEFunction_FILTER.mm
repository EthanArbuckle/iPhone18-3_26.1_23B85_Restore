@interface TSCEFunction_FILTER
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_FILTER

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v7 = a3;
  v8 = **a5;
  v180[0] = 0;
  v9 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v8, a2, a3, a4, 0, 0, v180);
  v10 = v180[0];
  v11 = *(*a5 + 8);
  v179 = v10;
  v13 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v11, v12, v7, a4, 1, 0, &v179);
  v14 = v179;

  if (v14)
  {
    v19 = objc_msgSend_raiseErrorOrConvert_(v7, v15, v14, v17, v18);
    goto LABEL_64;
  }

  v20 = objc_msgSend_dimensions(v9, v15, v16, v17, v18);
  v25 = objc_msgSend_dimensions(v13, v21, v22, v23, v24);
  v30 = v25;
  v31 = HIDWORD(v20);
  v32 = HIDWORD(v20) == HIDWORD(v25) && v25 == 1;
  v33 = v32;
  if (v32 || (v20 == v25 ? (v34 = HIDWORD(v25) == 1) : (v34 = 0), v34))
  {
    v147 = a5;
    v155 = HIDWORD(v25);
    if (HIDWORD(v20) * v20)
    {
      v43 = HIDWORD(v25) * v25 == 0;
    }

    else
    {
      v43 = 1;
    }

    v44 = v43;
    v35 = objc_opt_new();
    v154 = objc_msgSend_gridKind(v9, v45, v46, v47, v48);
    v153 = v20;
    v144 = v33;
    v159 = v44;
    if (v154 == 2)
    {
      v157 = v13;
      v178 = 0;
      v53 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v9, v49, v7, a4, 0, &v178);
      v14 = v178;
      v58 = objc_msgSend_calcEngine(v7, v54, v55, v56, v57);
      *&v162 = objc_msgSend_tableUID(v53, v59, v60, v61, v62);
      *(&v162 + 1) = v63;
      v66 = objc_msgSend_tableResolverForTableUID_(v58, v63, &v162, v64, v65);

      v74 = objc_msgSend_argumentSpecForIndex_(a4, v67, 0, v68, v69);
      if (v53)
      {
        objc_msgSend_rangeRef(v53, v70, v71, v72, v73);
      }

      else
      {
        v162 = 0u;
        v163 = 0u;
      }

      v76 = objc_msgSend_rangeContext(v74, v70, v71, v72, v73);
      v79 = objc_msgSend_apparentRangeForRange_rangeContext_(v66, v77, &v162, v76, v78);
      v149 = v80;
      v75 = v79;
      v151 = objc_msgSend_tableUID(v53, v80, v81, v82, v83);
      v152 = v84;
      v143 = HIDWORD(v75);
      v150 = HIWORD(v75);

      v13 = v157;
    }

    else
    {
      v151 = 0;
      v152 = 0;
      v14 = 0;
      LOWORD(v143) = 0x7FFF;
      LODWORD(v75) = 0x7FFFFFFF;
      v149 = 0x7FFF7FFFFFFFLL;
      LOWORD(v150) = 0;
    }

    if (v159)
    {
      goto LABEL_58;
    }

    v160 = v7;
    v172[0] = v160;
    v172[1] = a4;
    v173 = 0;
    v174[0] = 1;
    *(v174 + 7) = 0;
    v175 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v176 = 0;
    v177 = 0;
    v148 = v7;
    if (v144)
    {
      v171 = 0;
      if (!v155)
      {
        v87 = v14;
LABEL_53:
        v14 = v87;
        goto LABEL_56;
      }

      v146 = v75;
      v102 = 0;
      v103 = 0;
      v158 = v13;
      while (1)
      {
        v89 = objc_msgSend_valueAtGridCoord_accessContext_(v13, v85, v103 << 32, v172, v86);
        v170 = v14;
        v105 = objc_msgSend_asStrictBoolean_functionSpec_argumentIndex_outError_(v89, v104, v160, a4, 1, &v170);
        v92 = v170;

        if (v92)
        {
          break;
        }

        if (v105)
        {
          if (v154 == 2)
          {
            LOWORD(v162) = 1;
            DWORD2(v162) = v146 + v103;
            WORD6(v162) = v143;
            HIWORD(v162) = v150;
            LODWORD(v163) = v146 + v103;
            DWORD1(v163) = HIDWORD(v149);
            *(&v163 + 1) = v151;
            v164 = v152;
            v165 = 0;
            v169 = 0;
            v166 = 0;
            v167 = 0;
            v168 = 0;
            objc_msgSend_addCalculatedPrecedent_(v160, v106, &v162, v107, v108);
          }

          if (v153)
          {
            v109 = v153;
            v110 = v102;
            do
            {
              LODWORD(v171) = v110;
              v111 = objc_msgSend_valueAtGridCoord_accessContext_(v9, v106, v110, v172, v108);
              objc_msgSend_setValue_atCoord_(v35, v112, v111, &v171, v113);

              ++v110;
              --v109;
            }

            while (v109);
          }

          ++HIDWORD(v171);
          v7 = v148;
        }

        v87 = 0;
        v14 = 0;
        ++v103;
        v102 += 0x100000000;
        v13 = v158;
        if (v103 == v155)
        {
          goto LABEL_53;
        }
      }

      v142 = objc_msgSend_raiseErrorOrConvert_(v160, v106, v92, v107, v108);
    }

    else
    {
      v171 = 0;
      if (!v30)
      {
        v101 = v14;
LABEL_55:
        v14 = v101;
LABEL_56:

        if (objc_msgSend_count(v35, v114, v115, v116, v117))
        {
          v118 = [TSCEDenseGrid alloc];
          v122 = objc_msgSend_initWithValueGrid_(v118, v119, v35, v120, v121);
          v126 = objc_msgSend_gridValue_(TSCEGridValue, v123, v122, v124, v125);
          goto LABEL_62;
        }

LABEL_58:
        if (v147[1] - *v147 >= 0x11uLL)
        {
          v122 = *(*v147 + 16);
          if ((objc_msgSend_isTokenOrEmptyArg(v122, v127, v128, v129, v130) & 1) == 0)
          {
            v138 = objc_msgSend_deepType_(v122, v131, v7, v132, v133);
            if (v138 != 10 && v138)
            {
              v126 = v122;
            }

            else
            {
              v126 = objc_msgSend_stringValue_(TSCEStringValue, v139, &stru_2834BADA0, v140, v141);
            }

            goto LABEL_62;
          }
        }

        v122 = objc_msgSend_emptyArrayError(TSCEError, v49, v50, v51, v52);
        v126 = objc_msgSend_raiseErrorOrConvert_(v7, v134, v122, v135, v136);
LABEL_62:
        v19 = v126;

        goto LABEL_63;
      }

      v145 = v75;
      v88 = 0;
      v156 = v30;
      v158 = v13;
      while (1)
      {
        v89 = objc_msgSend_valueAtGridCoord_accessContext_(v13, v85, v88, v172, v86);
        v161 = v14;
        v91 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v89, v90, v160, a4, 1, &v161);
        v92 = v161;

        if (v92)
        {
          break;
        }

        if (v91)
        {
          if (v154 == 2)
          {
            LOWORD(v162) = 1;
            DWORD2(v162) = v145;
            WORD6(v162) = v88;
            HIWORD(v162) = v150;
            LODWORD(v163) = v149;
            WORD2(v163) = v88;
            WORD3(v163) = HIWORD(v149);
            *(&v163 + 1) = v151;
            v164 = v152;
            v165 = 0;
            v169 = 0;
            v166 = 0;
            v167 = 0;
            v168 = 0;
            objc_msgSend_addCalculatedPrecedent_(v160, v93, &v162, v94, v95);
          }

          if (v31)
          {
            v96 = 0;
            v97 = v88;
            do
            {
              HIDWORD(v171) = v96;
              v98 = objc_msgSend_valueAtGridCoord_accessContext_(v9, v93, v97, v172, v95);
              objc_msgSend_setValue_atCoord_(v35, v99, v98, &v171, v100);

              ++v96;
              v97 += 0x100000000;
            }

            while (v31 != v96);
          }

          LODWORD(v171) = v171 + 1;
        }

        v101 = 0;
        v14 = 0;
        ++v88;
        v13 = v158;
        if (v88 == v156)
        {
          goto LABEL_55;
        }
      }

      v142 = objc_msgSend_raiseErrorOrConvert_(v160, v93, v92, v94, v95);
    }

    v19 = v142;

    v13 = v158;
    v14 = v92;
    goto LABEL_63;
  }

  v35 = objc_msgSend_functionName(a4, v26, v27, v28, v29);
  v39 = objc_msgSend_differentNumberOfElementsErrorForFunctionName_(TSCEError, v36, v35, v37, v38);
  v19 = objc_msgSend_raiseErrorOrConvert_(v7, v40, v39, v41, v42);

  v14 = 0;
LABEL_63:

LABEL_64:

  return v19;
}

@end