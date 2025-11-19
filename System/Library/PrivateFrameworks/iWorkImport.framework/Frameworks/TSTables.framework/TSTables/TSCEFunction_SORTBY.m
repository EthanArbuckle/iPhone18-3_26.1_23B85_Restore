@interface TSCEFunction_SORTBY
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
+ (id)shuffleMapForSortDirections:(id)a3 unsortedTags:(id)a4 sortDirections:(const void *)a5;
@end

@implementation TSCEFunction_SORTBY

+ (id)shuffleMapForSortDirections:(id)a3 unsortedTags:(id)a4 sortDirections:(const void *)a5
{
  v7 = a3;
  v8 = a4;
  v13 = objc_msgSend_locale(v7, v9, v10, v11, v12);
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = sub_221213F6C;
  v45[3] = &unk_278461608;
  v45[4] = a5;
  v45[5] = v13;
  v17 = objc_msgSend_sortedArrayUsingComparator_(v8, v14, v45, v15, v16);
  v22 = objc_msgSend_count(v8, v18, v19, v20, v21);
  v23 = objc_alloc(MEMORY[0x277D806D0]);
  started = objc_msgSend_initWithStartIndex_endIndex_(v23, v24, 0, v22 - 1, v25);
  v31 = objc_msgSend_mapping(started, v27, v28, v29, v30);
  if (v22)
  {
    v35 = v31;
    v36 = 0;
    v37 = v22;
    do
    {
      v38 = objc_msgSend_objectAtIndexedSubscript_(v17, v32, v36, v33, v34);
      v43 = objc_msgSend_columnOrRowIndex(v38, v39, v40, v41, v42);

      *(*v35 + 4 * v43) = v36++;
    }

    while (v37 != v36);
  }

  return started;
}

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = **a5;
  v173[0] = 0;
  v9 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v8, a2, a3, a4, 0, 0, v173);
  v10 = v173[0];
  if (v10)
  {
    v15 = v10;
    v16 = objc_msgSend_raiseErrorOrConvert_(a3, v11, v10, v13, v14);
  }

  else
  {
    v17 = objc_msgSend_dimensions(v9, v11, v12, v13, v14);
    if (HIDWORD(v17) * v17)
    {
      v170 = 0;
      v171 = 0;
      v172 = 0;
      v167 = 0;
      v168 = 0;
      v169 = 0;
      v22 = (*(a5 + 1) - *a5) >> 3;
      if (v22 < 2)
      {
LABEL_34:
        v16 = v9;
      }

      else
      {
        v156 = HIDWORD(v17);
        v157 = v17;
        v23 = 0;
        v158 = v9;
        do
        {
          v24 = *(*a5 + 8 * v23 + 8);
          if (objc_msgSend_isError(v24, v25, v26, v27, v28))
          {
            v16 = v24;
            v15 = 0;
            goto LABEL_39;
          }

          if ((objc_msgSend_isTokenOrEmptyArg(v24, v29, v30, v31, v32) & 1) == 0)
          {
            v34 = *(*a5 + 8 * v23 + 8);
            v165 = 0;
            v35 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v34, v33, a3, a4, (v23 + 1), 0, &v165);
            v36 = v165;
            v166 = v35;
            if (v36)
            {
              v15 = v36;
              v16 = objc_msgSend_raiseErrorOrConvert_(a3, v37, v36, v38, v39);
              goto LABEL_38;
            }

            sub_22121488C(&v170, &v166);
            if (v23 + 2 >= ((*(a5 + 1) - *a5) >> 3))
            {
              v163 = 1;
              sub_2211531C0(&v167, &v163);
            }

            else
            {
              v40 = *(*a5 + 8 * v23 + 16);
              if (objc_msgSend_isTokenOrEmptyArg(v40, v41, v42, v43, v44))
              {
                v163 = 1;
                sub_2211531C0(&v167, &v163);
              }

              else if (objc_msgSend_deepType_(v40, v45, a3, v46, v47) != 10)
              {
                v164 = 0;
                v49 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v40, v48, a3, a4, (v23 + 2), &v164);
                v15 = v164;
                v54 = objc_msgSend_integer(v49, v50, v51, v52, v53);

                if (v15)
                {
                  v16 = objc_msgSend_raiseErrorOrConvert_(a3, v55, v15, v57, v58);
                  v9 = v158;
                  goto LABEL_66;
                }

                if (v54 != 1 && v54 != -1)
                {
                  v147 = objc_msgSend_functionName(a4, v55, v56, v57, v58);
                  v9 = v158;
                  v150 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v148, v147, v23 + 2, v149);
                  v16 = objc_msgSend_raiseErrorOrConvert_(a3, v151, v150, v152, v153);

LABEL_66:
LABEL_38:

LABEL_39:
                  goto LABEL_40;
                }

                v163 = v54;
                sub_2211531C0(&v167, &v163);
                v9 = v158;
              }
            }
          }

          v23 += 2;
        }

        while (v23 + 1 < v22);
        v63 = v157;
        if (v170 == v171)
        {
          goto LABEL_34;
        }

        v64 = objc_msgSend_dimensions(*v170, v59, v60, v61, v62);
        v68 = v64 >> 33 == 0;
        v69 = (v64 & 0xFFFFFFFE) != 0;
        v70 = v68 && v69;
        if (v68 && v69)
        {
          v71 = 1;
        }

        else
        {
          v63 = 1;
          v71 = v156;
        }

        v72 = v170;
        v73 = v171;
        while (v72 != v73)
        {
          v74 = *v72;
          v79 = objc_msgSend_dimensions(v74, v75, v76, v77, v78);
          if (v63 != v79 || v71 != HIDWORD(v79))
          {
            v139 = objc_msgSend_functionName(a4, v80, v81, v82, v83);
            v143 = objc_msgSend_rangeSizeMismatchErrorForFunctionName_(TSCEError, v140, v139, v141, v142);
            v16 = objc_msgSend_raiseErrorOrConvert_(a3, v144, v143, v145, v146);

            goto LABEL_35;
          }

          ++v72;
        }

        v154 = objc_msgSend_asValueGrid_(v9, v65, a3, v66, v67);
        if (v70)
        {
          v90 = v157;
        }

        else
        {
          v90 = v156;
        }

        v92 = v167;
        v91 = v168;
        v93 = objc_alloc(MEMORY[0x277CBEB18]);
        v98 = objc_msgSend_initWithCapacity_(v93, v94, v90, v95, v96);
        v99 = v91 - v92;
        if (v90)
        {
          v100 = 0;
          do
          {
            v101 = [TSTTableSortTag alloc];
            v105 = objc_msgSend_initWithNumberOfSortRules_(v101, v102, v91 - v92, v103, v104);
            objc_msgSend_setColumnOrRowIndex_(v105, v106, v100, v107, v108);
            objc_msgSend_addObject_(v98, v109, v105, v110, v111);

            v100 = (v100 + 1);
          }

          while (v90 != v100);
        }

        if (v91 != v92)
        {
          v112 = 0;
          if (v99 <= 1)
          {
            v113 = 1;
          }

          else
          {
            v113 = v99;
          }

          do
          {
            v114 = v170[v112];
            v118 = objc_msgSend_asValueGrid_(v114, v115, a3, v116, v117);
            objc_msgSend_deepResolveInPlace_(v118, v119, a3, v120, v121);
            if (v70)
            {
              v161[0] = MEMORY[0x277D85DD0];
              v161[1] = 3221225472;
              v161[2] = sub_221214980;
              v161[3] = &unk_2784615E8;
              v162[0] = v98;
              v162[1] = a3;
              v162[2] = v112;
              objc_msgSend_enumerateValuesForRow_usingBlock_(v118, v122, 0, v161, v123);
              v124 = v162;
            }

            else
            {
              v159[0] = MEMORY[0x277D85DD0];
              v159[1] = 3221225472;
              v159[2] = sub_221214A3C;
              v159[3] = &unk_2784615E8;
              v160[0] = v98;
              v160[1] = a3;
              v160[2] = v112;
              objc_msgSend_enumerateValuesForColumn_usingBlock_(v118, v125, 0, v159, v126);
              v124 = v160;
            }

            ++v112;
          }

          while (v113 != v112);
        }

        v130 = objc_msgSend_shuffleMapForSortDirections_unsortedTags_sortDirections_(TSCEFunction_SORTBY, v97, a3, v98, &v167, v154);
        v9 = v158;
        if (v70)
        {
          objc_msgSend_rearrangeColumnsWithMapping_(v155, v127, v130, v128, v129);
        }

        else
        {
          objc_msgSend_rearrangeRowsWithMapping_(v155, v127, v130, v128, v129);
        }

        v131 = [TSCEDenseGrid alloc];
        v135 = objc_msgSend_initWithValueGrid_(v131, v132, v155, v133, v134);
        v16 = objc_msgSend_gridValue_(TSCEGridValue, v136, v135, v137, v138);
      }

LABEL_35:
      v15 = 0;
LABEL_40:
      if (v167)
      {
        v168 = v167;
        operator delete(v167);
      }

      v167 = &v170;
      sub_22107C2C0(&v167);
    }

    else
    {
      v85 = objc_msgSend_emptyArrayError(TSCEError, v18, v19, v20, v21);
      v16 = objc_msgSend_raiseErrorOrConvert_(a3, v86, v85, v87, v88);

      v15 = 0;
    }
  }

  return v16;
}

@end