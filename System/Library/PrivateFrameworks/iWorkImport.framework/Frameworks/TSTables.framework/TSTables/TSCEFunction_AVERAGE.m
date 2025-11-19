@interface TSCEFunction_AVERAGE
+ (id)averageOfVector:(id)a3 functionSpec:(id)a4 argVector:(id)a5 argumentIndex:(int)a6;
+ (id)averageOfVector:(id)a3 functionSpec:(id)a4 argVector:(id)a5 argumentIndex:(int)a6 criteria:(id)a7 criteriaVectorIndex:(int)a8 ignoreError:(BOOL)a9;
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_AVERAGE

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v7 = **a5;
  v23 = 0;
  v8 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v7, a2, a3, a4, 0, 1, &v23);
  v12 = v23;
  if (v12)
  {
    v13 = objc_msgSend_raiseErrorOrConvert_(a3, v9, v12, v10, v11);
  }

  else
  {
    v13 = objc_msgSend_averageOfVector_functionSpec_argVector_argumentIndex_(TSCEFunction_AVERAGE, v9, a3, a4, v8, 0);
    if (v8)
    {
      objc_msgSend_formatWithContext_(v8, v14, a3, v15, v16);
    }

    else
    {
      memset(&v21, 0, sizeof(v21));
    }

    TSCEFormat::TSCEFormat(&v22, &v21);
    objc_msgSend_setFormat_(v13, v17, &v22, v18, v19);
  }

  return v13;
}

+ (id)averageOfVector:(id)a3 functionSpec:(id)a4 argVector:(id)a5 argumentIndex:(int)a6
{
  v8 = 0;
  v6 = objc_msgSend_averageOfVector_functionSpec_argVector_argumentIndex_criteria_criteriaVectorIndex_ignoreError_(TSCEFunction_AVERAGE, a2, a3, a4, a5, *&a6, 0, 0, v8);

  return v6;
}

+ (id)averageOfVector:(id)a3 functionSpec:(id)a4 argVector:(id)a5 argumentIndex:(int)a6 criteria:(id)a7 criteriaVectorIndex:(int)a8 ignoreError:(BOOL)a9
{
  v13 = a3;
  v14 = a5;
  v188 = a7;
  v182 = v14;
  v19 = objc_msgSend_zero(TSCENumberValue, v15, v16, v17, v18);
  v24 = objc_msgSend_count(v14, v20, v21, v22, v23);
  v212[0] = v13;
  v212[1] = a4;
  v213 = 0;
  v214 = a6;
  *v215 = 0;
  v216 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v217 = 0;
  v218 = 0;
  v29 = objc_msgSend_hidingActionMask(v212[0], v25, v26, v27, v28);
  *&v215[3] = v29 != 0;
  v187 = v212[0];
  v205[0] = v187;
  v205[1] = a4;
  v206 = 0;
  v207 = a8;
  v208[0] = 0;
  *(v208 + 3) = 0;
  v209 = v216;
  v210 = 0;
  v211 = 0;
  v204[0] = 0;
  v204[1] = 0;
  v203 = v204;
  if (!v24)
  {
    v140 = 0;
LABEL_61:
    v56 = objc_msgSend_divideByZeroError(TSCEError, v30, v31, v32, v33);
    v144 = objc_msgSend_raiseErrorOrConvert_(v187, v145, v56, v146, v147);
LABEL_62:
    v148 = v144;
    v104 = 0;
    goto LABEL_63;
  }

  v180 = a4;
  v181 = v19;
  v183 = 0;
  v186 = 0;
  v184 = 0;
  v34 = 0;
  v179 = v13;
  v35 = 0.0;
  while (1)
  {
    v36 = objc_msgSend_valueAtIndexPassesCriteria_index_criteria_(TSCEGridValue, v30, v205, v34, v188, v179);
    v41 = objc_msgSend_nilValue(TSCENilValue, v37, v38, v39, v40);
    v46 = v41;
    if (v36)
    {
      if (a9)
      {
        v47 = objc_msgSend_valueAtIndex_accessContext_(v14, v42, v34, v212, v45);

        if (objc_msgSend_isError(v47, v48, v49, v50, v51))
        {
          goto LABEL_11;
        }
      }

      else
      {
        v47 = objc_msgSend_valueAtIndex_accessContext_(v14, v42, v34, v212, v45);

        if (objc_msgSend_isError(v47, v52, v53, v54, v55))
        {
          v150 = objc_msgSend_errorWithContext_(v47, v42, v187, v44, v45);
          v19 = v181;
          v140 = v186;
          v148 = objc_msgSend_raiseErrorOrConvert_(v187, v151, v150, v152, v153);

          v104 = 0;
          v56 = v47;
          goto LABEL_63;
        }
      }
    }

    else
    {
      v47 = v41;
    }

    if (!v29)
    {
      goto LABEL_26;
    }

    if ((v215[6] & v29) != 0)
    {
      goto LABEL_11;
    }

    if (v29 & 0x40) == 0 || (objc_msgSend_isNil(v47, v42, v43, v44, v45))
    {
      goto LABEL_26;
    }

    if (objc_msgSend_isThunk(v47, v42, v43, v44, v45))
    {
      v61 = objc_msgSend_unwrapThunk_(v187, v57, v47, v59, v60);

      v47 = v61;
    }

    if (objc_msgSend_isReferenceValue(v47, v57, v58, v59, v60))
    {
      v202 = 0;
      v62 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v47, v42, v187, v180, a6, &v202);
      v63 = v202;
      if (v63)
      {
        v104 = v63;
        v148 = objc_msgSend_raiseErrorOrConvert_(v187, v64, v63, v66, v67);

        v56 = v47;
        v19 = v181;
        v140 = v186;
        goto LABEL_63;
      }

      *&v195 = objc_msgSend_tableUID(v62, v64, v65, v66, v67);
      *(&v195 + 1) = v68;
      objc_msgSend_subtotalPrecedentForTableUID_(TSCEHauntedOwner, v68, &v195, v69, v70);
      v200._coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
      v200._coordsForOwnerUid.__tree_.__size_ = 0;
      v200._coordsForOwnerUid.__tree_.__begin_node_ = &v200._coordsForOwnerUid.__tree_.__end_node_;
      v75 = objc_msgSend_tableUID(v62, v71, v72, v73, v74);
      for (i = v204[0]; i; i = *i)
      {
        if (__PAIR128__(v76, v75) >= *(i + 2))
        {
          if (i[5] >= v76 && i[4] >= v75)
          {
            *&v195 = objc_msgSend_tableUID(v62, v76, v77, v78, v79);
            *(&v195 + 1) = v138;
            v139 = sub_22121D288(&v203, &v195);
            TSCECellRefSet::operator=(&v200, v139);
            goto LABEL_50;
          }

          ++i;
        }
      }

      v81 = objc_msgSend_calcEngine(v187, v76, v77, v78, v79);
      v85 = v81;
      if (v81)
      {
        objc_msgSend_cellDependentsOfCell_(v81, v82, v201, v83, v84);
      }

      else
      {
        v195 = 0uLL;
        *v196 = 0;
      }

      TSCECellRefSet::operator=(&v200, &v195);
      sub_22107C800(&v195, *(&v195 + 1));

      *&v195 = objc_msgSend_tableUID(v62, v126, v127, v128, v129);
      *(&v195 + 1) = v130;
      TSCECellRefSet::TSCECellRefSet(v196, &v200);
      sub_22121E5E0(&v203, &v195);
      sub_22107C800(v196, *&v196[8]);
LABEL_50:
      if (v62)
      {
        objc_msgSend_anyRef(v62, v131, v132, v133, v134);
        v135 = *(&v195 + 1);
        v136 = *(&v198 + 1);
      }

      else
      {
        v136 = 0;
        v135 = 0;
        v197 = 0u;
        v198 = 0u;
        memset(v196, 0, sizeof(v196));
        v195 = 0u;
      }

      v199.coordinate = v135;
      v199._tableUID = *&v196[8];

      v137 = TSCECellRefSet::containsCellRef(&v200, &v199);
      sub_22107C800(&v200, v200._coordsForOwnerUid.__tree_.__end_node_.__left_);

      v56 = v47;
      if (v137)
      {
LABEL_11:
        v56 = v47;
        goto LABEL_46;
      }
    }

    else
    {
LABEL_26:
      v56 = v47;
    }

    if ((objc_msgSend_isNil(v56, v42, v43, v44, v45) & 1) != 0 || !v36)
    {
      goto LABEL_46;
    }

    v89 = objc_msgSend_deepType_(v56, v86, v187, v87, v88);
    if (v89 != 3)
    {
      if (v89 == 5)
      {
        if (v186)
        {
          goto LABEL_70;
        }

        ++v184;
        if ((v183 & 1) == 0)
        {
          v194 = 0;
          v117 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v56, v90, v187, v180, a6, &v194);
          v104 = v194;

          if (v104)
          {
            v140 = 0;
            v148 = objc_msgSend_raiseErrorOrConvert_(v187, v118, v104, v119, v120);
            v19 = v117;
            goto LABEL_80;
          }

          v186 = 0;
          v183 = 1;
          v181 = v117;
          goto LABEL_45;
        }

        v193 = 0;
        v94 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v56, v90, v187, v180, a6, &v193);
        v95 = v193;
        if (v95)
        {
          v104 = v95;
          v19 = v181;
          v148 = objc_msgSend_raiseErrorOrConvert_(v187, v96, v95, v97, v98);
        }

        else if (objc_msgSend_dimensionsMatchModuloCurrency_(v181, v96, v94, v97, v98))
        {
          v192 = 0;
          v103 = objc_msgSend_add_functionSpec_outError_(v181, v99, v94, v180, &v192);
          v104 = v192;

          if (!v104)
          {

            v186 = 0;
            v183 = 1;
            v181 = v103;
            goto LABEL_45;
          }

          v148 = objc_msgSend_raiseErrorOrConvert_(v187, v105, v104, v106, v107);
          v19 = v103;
        }

        else
        {
          v19 = v181;
          v171 = objc_msgSend_functionName(v180, v99, v100, v101, v102);
          v175 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v172, v171, v173, v174);
          v148 = objc_msgSend_raiseErrorOrConvert_(v187, v176, v175, v177, v178);

          v104 = 0;
        }

        v14 = v182;

LABEL_78:
        v140 = 0;
        goto LABEL_63;
      }

LABEL_45:
      v14 = v182;
      goto LABEL_46;
    }

    v91 = v187;
    if (v183)
    {
LABEL_70:
      v19 = v181;
      v140 = v186;
      v163 = objc_msgSend_functionName(v180, v90, v91, v92, v93);
      v167 = objc_msgSend_mixedTypeManipulationErrorForFunctionName_(TSCEError, v164, v163, v165, v166);
      v148 = objc_msgSend_raiseErrorOrConvert_(v187, v168, v167, v169, v170);

      v104 = 0;
      goto LABEL_80;
    }

    ++v184;
    if (!v186)
    {
      break;
    }

    v190 = 0;
    v108 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v56, v90, v187, v180, a6, &v190);
    v104 = v190;
    objc_msgSend_timeIntervalSinceDate_(v108, v109, v186, v110, v111);
    v113 = v112;

    v14 = v182;
    if (v104)
    {
      v19 = v181;
      v140 = v186;
      v148 = objc_msgSend_raiseErrorOrConvert_(v187, v114, v104, v115, v116);
      goto LABEL_80;
    }

    v183 = 0;
    v35 = v35 + v113;
LABEL_46:

    if (++v34 == v24)
    {
      v30 = v184;
      if (!v184)
      {
        v19 = v181;
        v140 = v186;
        goto LABEL_61;
      }

      v19 = v181;
      v140 = v186;
      if (v186)
      {
        v56 = objc_msgSend_dateByAddingTimeInterval_(v186, v184, v31, v32, v33, v35 / v184);
        v144 = objc_msgSend_dateValue_(TSCEDateValue, v141, v56, v142, v143);
        goto LABEL_62;
      }

      TSUDecimal::operator=();
      v157 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v154, &v195, v155, v156);
      v189 = 0;
      v56 = objc_msgSend_divide_outError_(v181, v158, v157, &v189, v159);
      v104 = v189;

      if (!v104)
      {
        v56 = v56;
        v140 = 0;
        v148 = v56;
        goto LABEL_63;
      }

      v148 = objc_msgSend_raiseErrorOrConvert_(v187, v160, v104, v161, v162);
      goto LABEL_78;
    }
  }

  v191 = 0;
  v121 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v56, v90, v187, v180, a6, &v191);
  v122 = v191;
  if (!v122)
  {
    v183 = 0;
    v186 = v121;
    goto LABEL_45;
  }

  v104 = v122;
  v19 = v181;
  v148 = objc_msgSend_raiseErrorOrConvert_(v187, v123, v122, v124, v125);
  v140 = v121;
LABEL_80:
  v14 = v182;
LABEL_63:

  sub_22121E580(&v203, v204[0]);

  return v148;
}

@end