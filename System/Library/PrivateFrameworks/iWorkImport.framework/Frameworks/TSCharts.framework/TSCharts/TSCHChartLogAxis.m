@interface TSCHChartLogAxis
- (double)doubleModelToAxisValue:(double)a3 forSeries:(id)a4;
- (double)interceptForAxis:(id)a3;
- (double)unitSpaceValueForDataSpaceValue:(double)a3 min:(double)a4 max:(double)a5;
- (double)validateUserMaxForDouble:(double)a3;
- (double)validateUserMinForDouble:(double)result;
- (id)computeMajorGridlinesFromMinMaxInAnalysis:(id)a3;
- (id)computeMinorGridlinesFromMajorGridlinesInAnalysis:(id)a3;
- (id)p_orthogonalAxis;
- (id)userMax;
- (id)userMin;
- (void)adjustMinMaxForDataRangeInAnalysis:(id)a3;
- (void)updateGridValueTypeInterceptInAnalysis:(id)a3;
@end

@implementation TSCHChartLogAxis

- (id)p_orthogonalAxis
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_axisID(self, a2, v2, v3, v4);
  v11 = objc_msgSend_model(self, v7, v8, v9, v10);
  v16 = objc_msgSend_axisList(v11, v12, v13, v14, v15);

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v17 = v16;
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, v19, v20, v21, &v37, v41, 16);
  if (v23)
  {
    v27 = *v38;
    while (2)
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v38 != v27)
        {
          objc_enumerationMutation(v17);
        }

        v29 = *(*(&v37 + 1) + 8 * i);
        v30 = objc_msgSend_axisID(v29, v22, v24, v25, v26, v37);
        v35 = objc_msgSend_intersectsAxisID_(v30, v31, v32, v33, v34, v6);

        if (v35)
        {
          v23 = v29;
          goto LABEL_11;
        }
      }

      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v22, v24, v25, v26, &v37, v41, 16);
      if (v23)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v23;
}

- (double)interceptForAxis:(id)a3
{
  v4 = a3;
  v9 = v4;
  v10 = NAN;
  if (v4 && v4 != self)
  {
    v11 = objc_msgSend_model(self, v5, v6, v7, v8);
    v16 = objc_msgSend_model(v9, v12, v13, v14, v15);

    if (v11 == v16)
    {
      v21 = objc_msgSend_axisID(self, v17, v18, v19, v20);
      v26 = objc_msgSend_axisID(v9, v22, v23, v24, v25);
      v31 = objc_msgSend_intersectsAxisID_(v21, v27, v28, v29, v30, v26);

      if (v31)
      {
        v10 = 1.0;
      }

      else
      {
        v10 = NAN;
      }
    }

    else
    {
      v10 = NAN;
    }
  }

  return v10;
}

- (double)doubleModelToAxisValue:(double)a3 forSeries:(id)a4
{
  objc_msgSend_axisInterceptPosition(self, a2, a3, v4, v5, a4);
  v8 = a3 - v7;
  log(v8);
  return v8;
}

- (void)updateGridValueTypeInterceptInAnalysis:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TSCHChartLogAxis;
  [(TSCHChartAxis *)&v13 updateGridValueTypeInterceptInAnalysis:v4];
  if (objc_msgSend_gridValueType(v4, v5, v6, v7, v8) == 2)
  {
    objc_msgSend_updateAxisDateInterceptInAnalysis_(self, v9, v10, v11, v12, v4);
  }
}

- (void)adjustMinMaxForDataRangeInAnalysis:(id)a3
{
  v4 = a3;
  objc_msgSend_min(v4, v5, v6, v7, v8);
  v10 = v9;
  v89.receiver = self;
  v89.super_class = TSCHChartLogAxis;
  [(TSCHChartValueAxis *)&v89 adjustMinMaxForDataRangeInAnalysis:v4];
  objc_msgSend_min(v4, v11, v12, v13, v14);
  if (v16 <= 0.0)
  {
    objc_msgSend_setMin_(v4, v15, fmin(v10, 1.0), v17, v18);
    objc_msgSend_min(v4, v19, v20, v21, v22);
    objc_msgSend_validateUserMinForDouble_(self, v23, v24, v25, v26);
    objc_msgSend_setMin_(v4, v27, v28, v29, v30);
  }

  objc_msgSend_max(v4, v15, v16, v17, v18);
  objc_msgSend_validateUserMaxForDouble_(self, v31, v32, v33, v34);
  objc_msgSend_setMax_(v4, v35, v36, v37, v38);
  objc_msgSend_min(v4, v39, v40, v41, v42);
  if (v44 <= 0.0)
  {
    v47 = MEMORY[0x277D81150];
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v44, v45, v46, "[TSCHChartLogAxis adjustMinMaxForDataRangeInAnalysis:]");
    v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, v50, v51, v52, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartLogAxis.m");
    objc_msgSend_min(v4, v54, v55, v56, v57);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v58, v59, v60, v61, v48, v53, 101, 0, "invalid calculated log min: %f", *&v59);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v62, v63, v64, v65);
  }

  objc_msgSend_max(v4, v43, v44, v45, v46);
  if (v67 <= 0.0)
  {
    v70 = MEMORY[0x277D81150];
    v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, v67, v68, v69, "[TSCHChartLogAxis adjustMinMaxForDataRangeInAnalysis:]");
    v76 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v72, v73, v74, v75, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartLogAxis.m");
    objc_msgSend_max(v4, v77, v78, v79, v80);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v70, v81, v82, v83, v84, v71, v76, 102, 0, "invalid calculated log max: %f", *&v82);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v85, v86, v87, v88);
  }
}

- (id)computeMajorGridlinesFromMinMaxInAnalysis:(id)a3
{
  v4 = a3;
  objc_msgSend_min(v4, v5, v6, v7, v8);
  v10 = v9;
  objc_msgSend_max(v4, v11, v9, v12, v13);
  v15 = v14;
  v19 = objc_msgSend_p_orthogonalAxis(self, v16, v14, v17, v18);
  objc_msgSend_interceptForAxis_(self, v20, v21, v22, v23, v19);
  v25 = v24;

  v30 = objc_msgSend_userMax(self, v26, v27, v28, v29);

  v35 = objc_msgSend_userMin(self, v31, v32, v33, v34);

  v40 = objc_msgSend_intValueForProperty_defaultValue_(self, v36, v37, v38, v39, 1044, 0);
  v41 = v40 & ~(v40 >> 31);
  v42 = log(v25);
  objc_msgSend_max(v4, v43, v42, v44, v45);
  v49 = 1.0;
  v97 = v50 > 0.0;
  v51 = 1.0;
  if (v97)
  {
    objc_msgSend_max(v4, v46, 1.0, v47, v48);
  }

  v52 = log(v51);
  v53 = v52 - v42;
  objc_msgSend_min(v4, v54, v52, v55, v56);
  if (v58 > 0.0)
  {
    objc_msgSend_min(v4, v57, v58, v59, v60);
    v49 = v61;
  }

  v63 = log(v49) - v42;
  if (v53 < 0.0 || v63 < 0.0)
  {
    if (v53 >= 0.0 || v63 >= 0.0)
    {
      if (v53 < 0.0 || v63 >= 0.0)
      {
        if (!(v30 | v35))
        {
          v112 = MEMORY[0x277D81150];
          v113 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, v63, v64, v65, "[TSCHChartLogAxis computeMajorGridlinesFromMinMaxInAnalysis:]");
          v118 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v114, v115, v116, v117, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartLogAxis.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v112, v119, v120, v121, v122, v113, v118, 146, 0, "We shouldn't be here");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v123, v124, v125, v126);
          v66 = 1;
LABEL_89:
          v127 = 1.0;
          v128 = 0;
          v67 = 1.0;
          if (v15 > 1.0)
          {
            v63 = 10.0;
            do
            {
              v67 = v67 * 10.0;
              ++v128;
            }

            while (v67 < v15);
          }

          v129 = 0;
          if (v10 < 1.0)
          {
            v127 = 1.0;
            v63 = 10.0;
            do
            {
              v127 = v127 / 10.0;
              ++v129;
            }

            while (v127 > v10);
          }

          if (v66)
          {
            v130 = v128;
          }

          else
          {
            v130 = v129;
          }

          if (v130 <= 1)
          {
            v131 = 1;
          }

          else
          {
            v131 = v130;
          }

          if (v131 >= 0xA)
          {
            v131 = 10;
          }

          if (v40 >= 1)
          {
            v132 = v40 & ~(v40 >> 31);
          }

          else
          {
            v132 = v131;
          }

          v72 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v62, v63, v64, v65, 2 * v132 + 3);
          if (v25 >= v10 && v25 <= v15)
          {
            v133 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v71, v25, v74, v75);
            objc_msgSend_addObject_(v72, v134, v135, v136, v137, v133);
          }

          v138 = v132 - v130;
          if (v132 > v130)
          {
            do
            {
              if (v66)
              {
                v67 = v67 * 10.0;
              }

              else
              {
                v127 = v127 / 10.0;
              }

              --v138;
            }

            while (v138);
            v130 = v132;
          }

          v68 = 1.0;
          v139 = 1.0;
          v140 = v130 / v132;
          if (v67 > 1.0)
          {
            v141 = 0;
            do
            {
              if (v132 <= v130)
              {
                v142 = 0;
                do
                {
                  v139 = v139 * 10.0;
                  ++v142;
                }

                while (v142 < v140);
              }

              v143 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v71, v139, v74, v75);
              objc_msgSend_addObject_(v72, v144, v145, v146, v147, v143);

              ++v141;
            }

            while (v141 < v132 && v139 < v67);
          }

          if (v67 < v139)
          {
            v67 = v139;
          }

          if (v127 < 1.0)
          {
            v148 = 0;
            v149 = 1.0;
            do
            {
              if (v132 <= v130)
              {
                v150 = 0;
                do
                {
                  ++v150;
                  v149 = v149 / 10.0;
                }

                while (v150 < v140);
              }

              v151 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v71, v149, v74, v75);
              objc_msgSend_addObject_(v72, v152, v153, v154, v155, v151);

              ++v148;
            }

            while (v148 < v132 && v149 > v127);
            if (v149 <= v127)
            {
              v68 = v149;
            }

            else
            {
              v68 = v127;
            }
          }

          goto LABEL_134;
        }

        v66 = 1;
      }

      else
      {
        v64 = fabs(v53);
        v63 = fabs(v63);
        v66 = v64 >= v63;
        if (!(v30 | v35))
        {
          goto LABEL_89;
        }
      }
    }

    else
    {
      v66 = 0;
      if (!(v30 | v35))
      {
        goto LABEL_89;
      }
    }
  }

  else
  {
    v66 = 1;
    if (!(v30 | v35))
    {
      goto LABEL_89;
    }
  }

  v67 = 1.0;
  if (v10 < 1.0)
  {
    v63 = 10.0;
    do
    {
      v67 = v67 / 10.0;
    }

    while (v67 > v10);
  }

  if (v67 < v15)
  {
    v63 = 10.0;
    do
    {
      v67 = v67 * 10.0;
    }

    while (v67 < v15);
  }

  v68 = v67;
  if (v67 > v10)
  {
    v63 = 10.0;
    v68 = v67;
    do
    {
      v68 = v68 / 10.0;
    }

    while (v68 > v10);
  }

  v69 = 0;
  if (v67 > v68)
  {
    v63 = 10.0;
    v64 = v67;
    do
    {
      v64 = v64 / 10.0;
      ++v69;
    }

    while (v64 > v68);
  }

  if (v69 <= 1)
  {
    v70 = 1;
  }

  else
  {
    v70 = v69;
  }

  if (v70 >= 0xA)
  {
    v70 = 10;
  }

  if (v40 < 1)
  {
    v41 = v70;
  }

  v72 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v62, v63, v64, v65, 2 * v41 + 3);
  if (v25 >= v10 && v25 <= v15)
  {
    v76 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v71, v25, v74, v75);
    objc_msgSend_addObject_(v72, v77, v78, v79, v80, v76);
  }

  v81 = v41 - v69;
  if (v41 <= v69)
  {
    if (v41 <= 1)
    {
      v82 = 1;
    }

    else
    {
      v82 = v41;
    }

    v83 = v69 / v82;
    if (v66)
    {
      goto LABEL_55;
    }
  }

  else
  {
    if (v35 && !v30)
    {
      do
      {
        v67 = v67 * 10.0;
        --v81;
      }

      while (v81);
      v69 = v41;
      goto LABEL_47;
    }

    if (v35 || !v30)
    {
      if (v35 != 0 && v30 != 0)
      {
LABEL_47:
        if (v69 <= 1)
        {
          v82 = 1;
        }

        else
        {
          v82 = v69;
        }

        v83 = v69 / v82;
LABEL_55:
        if (v68 != v25)
        {
          v84 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v71, v68, v74, v75);
          objc_msgSend_addObject_(v72, v85, v86, v87, v88, v84);
        }

        if (v68 < v67)
        {
          v89 = 0;
          v90 = v68;
          do
          {
            v91 = v83;
            if (v83 >= 1)
            {
              do
              {
                v90 = v90 * 10.0;
                --v91;
              }

              while (v91);
            }

            if (v90 != v25)
            {
              v92 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v71, v90, v74, v75);
              objc_msgSend_addObject_(v72, v93, v94, v95, v96, v92);

              ++v89;
            }

            v97 = v90 < v67 && v89 < v82;
          }

          while (v97);
        }

        goto LABEL_134;
      }

      v164 = MEMORY[0x277D81150];
      v165 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v71, v73, v74, v75, "[TSCHChartLogAxis computeMajorGridlinesFromMinMaxInAnalysis:]");
      v170 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v166, v167, v168, v169, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartLogAxis.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v164, v171, v172, v173, v174, v165, v170, 300, 0, "This code was only meant to deal with user min max cases");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v175, v176, v177, v178);
      if (v41 <= 1)
      {
        v82 = 1;
      }

      else
      {
        v82 = v41;
      }

      v83 = v69 / v82;
      if (v66)
      {
        goto LABEL_55;
      }
    }

    else
    {
      do
      {
        v68 = v68 / 10.0;
        --v81;
      }

      while (v81);
      if (v41 <= 1)
      {
        v82 = 1;
      }

      else
      {
        v82 = v41;
      }

      v83 = v41 / v82;
    }
  }

  if (v67 != v25)
  {
    v98 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v71, v67, v74, v75);
    objc_msgSend_addObject_(v72, v99, v100, v101, v102, v98);
  }

  if (v67 > v68)
  {
    v103 = 0;
    v104 = v67;
    do
    {
      v105 = v83;
      if (v83 >= 1)
      {
        do
        {
          v104 = v104 / 10.0;
          --v105;
        }

        while (v105);
      }

      if (v104 != v25)
      {
        v106 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v71, v104, v74, v75);
        objc_msgSend_addObject_(v72, v107, v108, v109, v110, v106);

        ++v103;
      }
    }

    while (v104 > v68 && v103 < v82);
  }

LABEL_134:
  objc_msgSend_setMax_(v4, v71, v67, v74, v75);
  objc_msgSend_setMin_(v4, v156, v68, v157, v158);
  objc_msgSend_sortUsingSelector_(v72, v159, v160, v161, v162, sel_compare_);

  return v72;
}

- (id)computeMinorGridlinesFromMajorGridlinesInAnalysis:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_majorGridLocations(a3, a2, v3, v4, v5);
  v7 = MEMORY[0x277CBEB18];
  v12 = objc_msgSend_count(v6, v8, v9, v10, v11);
  v17 = objc_msgSend_arrayWithCapacity_(v7, v13, v14, v15, v16, 8 * v12);
  v22 = objc_msgSend_lastObject(v6, v18, v19, v20, v21);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v23 = v6;
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, v25, v26, v27, &v46, v50, 16);
  if (v28)
  {
    v33 = v28;
    v34 = *v47;
LABEL_3:
    v35 = 0;
    while (1)
    {
      if (*v47 != v34)
      {
        objc_enumerationMutation(v23);
      }

      v36 = *(*(&v46 + 1) + 8 * v35);
      if (v36 == v22)
      {
        break;
      }

      objc_msgSend_doubleValue(v36, v29, v30, v31, v32, v46);
      v38 = v37;
      for (i = 2; i != 10; ++i)
      {
        v40 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v29, v38 * i, v31, v32);
        objc_msgSend_addObject_(v17, v41, v42, v43, v44, v40);
      }

      if (++v35 == v33)
      {
        v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v29, v30, v31, v32, &v46, v50, 16);
        if (v33)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return v17;
}

- (id)userMax
{
  v10.receiver = self;
  v10.super_class = TSCHChartLogAxis;
  v2 = [(TSCHChartValueAxis *)&v10 userMax];
  v7 = v2;
  if (v2)
  {
    objc_msgSend_doubleValue(v2, v3, v4, v5, v6);
    if (v8 <= 0.0)
    {

      v7 = 0;
    }
  }

  return v7;
}

- (id)userMin
{
  v10.receiver = self;
  v10.super_class = TSCHChartLogAxis;
  v2 = [(TSCHChartValueAxis *)&v10 userMin];
  v7 = v2;
  if (v2)
  {
    objc_msgSend_doubleValue(v2, v3, v4, v5, v6);
    if (v8 <= 0.0)
    {

      v7 = 0;
    }
  }

  return v7;
}

- (double)validateUserMinForDouble:(double)result
{
  if (result <= 0.0)
  {
    return 1.0;
  }

  return result;
}

- (double)validateUserMaxForDouble:(double)a3
{
  result = 1.0;
  if (a3 > 0.0)
  {
    result = a3;
    if (a3 > 1.0e307)
    {
      return 1.0e307;
    }
  }

  return result;
}

- (double)unitSpaceValueForDataSpaceValue:(double)a3 min:(double)a4 max:(double)a5
{
  v7 = log(a3);
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v8 = log(a4);
    v10 = log(a5);
    v13 = v10;
    if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v14 = MEMORY[0x277D81150];
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "[TSCHChartLogAxis unitSpaceValueForDataSpaceValue:min:max:]");
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartLogAxis.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 440, 0, "inf/NAN minValue!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
    }

    if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v29 = MEMORY[0x277D81150];
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "[TSCHChartLogAxis unitSpaceValueForDataSpaceValue:min:max:]");
      v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, v32, v33, v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartLogAxis.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v36, v37, v38, v39, v30, v35, 441, 0, "inf/NAN maxValue!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41, v42, v43);
    }

    v44 = v13 - v8;
    if (v44 <= 0.0)
    {
      v45 = MEMORY[0x277D81150];
      v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "[TSCHChartLogAxis unitSpaceValueForDataSpaceValue:min:max:]");
      v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, v48, v49, v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartLogAxis.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v52, v53, v54, v55, v46, v51, 442, 0, "max - min <= 0!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v57, v58, v59);
    }

    return (v7 - v8) / v44;
  }

  return v7;
}

@end