@interface TSCEFunction_MAX
+ (id)extremum:(id)a3 functionSpec:(id)a4 arg:(id)a5 index:(int)a6 isMax:(BOOL)a7 isA:(BOOL)a8;
@end

@implementation TSCEFunction_MAX

+ (id)extremum:(id)a3 functionSpec:(id)a4 arg:(id)a5 index:(int)a6 isMax:(BOOL)a7 isA:(BOOL)a8
{
  v8 = a8;
  v176 = a7;
  v9 = *&a6;
  v12 = a3;
  v200[0] = 0;
  v172 = a5;
  v174 = v12;
  v178 = a4;
  v14 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v172, v13, v12, a4, v9, 1, v200);
  v15 = v200[0];
  if (v15)
  {
    v20 = v15;
    v21 = objc_msgSend_raiseErrorOrConvert_(v12, v16, v15, v18, v19);
    goto LABEL_89;
  }

  v173 = objc_msgSend_zero(TSCENumberValue, v16, v17, v18, v19);
  v177 = objc_msgSend_count(v14, v22, v23, v24, v25);
  v26 = v12;
  v193[0] = v26;
  v193[1] = a4;
  v194 = 0;
  v195 = v9;
  *v196 = 0;
  v197 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v198 = 0;
  v199 = 0;
  v35 = objc_msgSend_hidingActionMask(v26, v27, v28, v29, v30);
  *&v196[3] = v35 != 0;
  v192[0] = 0;
  v192[1] = 0;
  v191 = v192;
  if (!v177)
  {
LABEL_77:
    v21 = objc_msgSend_zero(TSCENumberValue, v31, v32, v33, v34);
    v20 = 0;
    v145 = 0;
    goto LABEL_88;
  }

  v36 = 0;
  v169 = 0;
  v171 = 0;
  do
  {
    v37 = v14;
    v38 = objc_msgSend_valueAtIndex_accessContext_(v14, v31, v36, v193, v34);
    v43 = objc_msgSend_nativeType(v38, v39, v40, v41, v42);
    if (v43 == 1 || v43 == 16)
    {
      v49 = objc_msgSend_extremum_functionSpec_arg_index_isMax_isA_(a1, v44, v26, v178, v38, v9, v176, v8);

      v38 = v49;
    }

    if (v35)
    {
      if ((v196[6] & v35) != 0)
      {
        goto LABEL_55;
      }

      if ((v35 & 0x40) != 0 && (objc_msgSend_isNil(v38, v44, v45, v46, v47) & 1) == 0)
      {
        if (objc_msgSend_isThunk(v38, v44, v45, v46, v47))
        {
          v54 = objc_msgSend_unwrapThunk_(v26, v50, v38, v52, v53);

          v38 = v54;
        }

        if (objc_msgSend_isReferenceValue(v38, v50, v51, v52, v53))
        {
          v190 = 0;
          v55 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v38, v44, v26, v178, v9, &v190);
          v56 = v190;
          if (v56)
          {
            v20 = v56;
            v21 = objc_msgSend_raiseErrorOrConvert_(v26, v57, v56, v59, v60);
            goto LABEL_85;
          }

          *&v183 = objc_msgSend_tableUID(v55, v57, v58, v59, v60);
          *(&v183 + 1) = v61;
          objc_msgSend_subtotalPrecedentForTableUID_(TSCEHauntedOwner, v61, &v183, v62, v63);
          v188._coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
          v188._coordsForOwnerUid.__tree_.__size_ = 0;
          v188._coordsForOwnerUid.__tree_.__begin_node_ = &v188._coordsForOwnerUid.__tree_.__end_node_;
          v68 = objc_msgSend_tableUID(v55, v64, v65, v66, v67);
          for (i = v192[0]; i; i = *i)
          {
            if (__PAIR128__(v69, v68) >= *(i + 2))
            {
              if (i[5] >= v69 && i[4] >= v68)
              {
                *&v183 = objc_msgSend_tableUID(v55, v69, v70, v71, v72);
                *(&v183 + 1) = v140;
                v141 = sub_22121D288(&v191, &v183);
                TSCECellRefSet::operator=(&v188, v141);
                goto LABEL_29;
              }

              ++i;
            }
          }

          v74 = objc_msgSend_calcEngine(v26, v69, v70, v71, v72);
          v78 = v74;
          if (v74)
          {
            objc_msgSend_cellDependentsOfCell_(v74, v75, v189, v76, v77);
          }

          else
          {
            v183 = 0uLL;
            *v184 = 0;
          }

          TSCECellRefSet::operator=(&v188, &v183);
          sub_22107C800(&v183, *(&v183 + 1));

          *&v183 = objc_msgSend_tableUID(v55, v79, v80, v81, v82);
          *(&v183 + 1) = v83;
          TSCECellRefSet::TSCECellRefSet(v184, &v188);
          sub_22121E5E0(&v191, &v183);
          sub_22107C800(v184, *&v184[8]);
LABEL_29:
          if (v55)
          {
            objc_msgSend_anyRef(v55, v84, v85, v86, v87);
            v88 = *(&v183 + 1);
            v89 = *(&v186 + 1);
          }

          else
          {
            v89 = 0;
            v88 = 0;
            v185 = 0u;
            v186 = 0u;
            memset(v184, 0, sizeof(v184));
            v183 = 0u;
          }

          v187.coordinate = v88;
          v187._tableUID = *&v184[8];

          v90 = TSCECellRefSet::containsCellRef(&v188, &v187);
          sub_22107C800(&v188, v188._coordsForOwnerUid.__tree_.__end_node_.__left_);

          if (v90)
          {
            goto LABEL_55;
          }
        }
      }
    }

    if (objc_msgSend_isError(v38, v44, v45, v46, v47))
    {
      goto LABEL_72;
    }

    if (objc_msgSend_isNil(v38, v91, v92, v93, v94))
    {
      goto LABEL_55;
    }

    v98 = v8;
    v99 = objc_msgSend_deepType_(v38, v95, v26, v96, v97);
    v101 = v99;
    if (v99 > 8u)
    {
      if (v99 == 10)
      {
        goto LABEL_55;
      }

      if (v99 == 9)
      {
LABEL_72:
        v55 = objc_msgSend_errorWithContext_(v38, v91, v26, v93, v94);
        v21 = objc_msgSend_raiseErrorOrConvert_(v26, v142, v55, v143, v144);
        v20 = 0;
        goto LABEL_85;
      }

LABEL_41:
      if (!v8 || v99 != 2)
      {
        if (v99 == 3)
        {
          if (v169)
          {
LABEL_78:
            v55 = objc_msgSend_functionName(v178, v91, v100, v93, v94);
            v158 = objc_msgSend_mixedTypeManipulationErrorForFunctionName_(TSCEError, v146, v55, v147, v148);
            v21 = objc_msgSend_raiseErrorOrConvert_(v26, v149, v158, v150, v151);
            v20 = 0;
            goto LABEL_84;
          }

          if (v171)
          {
            v116 = 0;
          }

          else
          {
            v181 = 0;
            v127 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v38, v91, v26, v178, v9, &v181);
            v116 = v181;
            v171 = v127;
          }

          if (v176)
          {
            v180 = v116;
            v128 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v38, v91, v26, v178, v9, &v180);
            v20 = v180;

            v170 = v128;
            objc_msgSend_laterDate_(v171, v129, v128, v130, v131);
          }

          else
          {
            v179 = v116;
            v132 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v38, v91, v26, v178, v9, &v179);
            v20 = v179;

            v170 = v132;
            objc_msgSend_earlierDate_(v171, v133, v132, v134, v135);
          }
          v136 = ;
          v8 = v98;

          if (v20)
          {
            v21 = objc_msgSend_raiseErrorOrConvert_(v26, v137, v20, v138, v139);
            v171 = v136;
LABEL_86:

            v14 = v37;
LABEL_87:
            v145 = v171;
            goto LABEL_88;
          }

          v169 = 0;
          v171 = v136;
        }

        else
        {
          v117 = MEMORY[0x277D81150];
          v168 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v91, "+[TSCEFunction_MAX extremum:functionSpec:arg:index:isMax:isA:]", v93, v94);
          v121 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v118, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStatisticalFunctions.mm", v119, v120);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v117, v122, v168, v121, 3711, 0, "Unexpected value type in array needs handling: %d", v101);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v123, v124, v125, v126);
          v8 = v98;
        }

        goto LABEL_55;
      }

      goto LABEL_43;
    }

    if (!v99)
    {
      goto LABEL_55;
    }

    if (v99 != 5)
    {
      goto LABEL_41;
    }

LABEL_43:
    if (v171)
    {
      goto LABEL_78;
    }

    v182 = 0;
    v55 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v38, v91, v26, v178, v9, &v182);
    v20 = v182;
    if (v20)
    {
      v21 = objc_msgSend_raiseErrorOrConvert_(v26, v102, v20, v104, v105);
      v171 = 0;
      goto LABEL_85;
    }

    if (v169)
    {
      if ((objc_msgSend_isNil(v55, v102, v103, v104, v105) & 1) == 0)
      {
        if ((objc_msgSend_dimensionsMatchModuloCurrency_(v55, v106, v173, v107, v108) & 1) == 0)
        {
          v158 = objc_msgSend_functionName(v178, v109, v110, v111, v112);
          v162 = objc_msgSend_mixedTypeManipulationErrorForFunctionName_(TSCEError, v152, v158, v153, v154);
          v166 = objc_msgSend_raiseErrorOrConvert_(v26, v155, v162, v156, v157);
LABEL_83:
          v21 = v166;

          v171 = 0;
LABEL_84:

LABEL_85:
          goto LABEL_86;
        }

        if ((objc_msgSend_areCurrenciesMatched_(v55, v109, v173, v111, v112) & 1) == 0)
        {
          v158 = objc_msgSend_functionName(v178, v106, v113, v107, v108);
          v162 = objc_msgSend_mismatchedCurrenciesErrorForFunctionName_(TSCEError, v159, v158, v160, v161);
          v166 = objc_msgSend_raiseErrorOrConvert_(v26, v163, v162, v164, v165);
          goto LABEL_83;
        }
      }
    }

    else
    {
      v114 = v55;

      v173 = v114;
    }

    if (v176)
    {
      objc_msgSend_max_(v173, v106, v55, v107, v108);
    }

    else
    {
      objc_msgSend_min_(v173, v106, v55, v107, v108);
    }
    v115 = ;

    v171 = 0;
    v169 = 1;
    v173 = v115;
LABEL_55:

    ++v36;
    v14 = v37;
  }

  while (v36 != v177);
  if (v171)
  {
    if (v37)
    {
      objc_msgSend_formatWithContext_(v37, v31, v26, v33, v34);
    }

    else
    {
      v183 = 0u;
      *v184 = 0u;
    }

    v21 = objc_msgSend_dateValue_format_(TSCEDateValue, v31, v171, &v183, v34);
    v20 = 0;
    goto LABEL_87;
  }

  if ((v169 & 1) == 0)
  {
    goto LABEL_77;
  }

  v21 = v173;
  v20 = 0;
  v145 = 0;
  v173 = v21;
LABEL_88:
  sub_22121E580(&v191, v192[0]);

LABEL_89:

  return v21;
}

@end