void sub_2762417A0(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v21 = objc_msgSend_g_genericToSpecificPropertyMapPie(*(a1 + 32), a2, a3, a4, a5);
  v10 = objc_msgSend_g_genericToSpecificPropertyMapDonut(*(a1 + 32), v6, v7, v8, v9);
  v11 = objc_alloc_init(MEMORY[0x277D81208]);
  v12 = qword_280A46D70;
  qword_280A46D70 = v11;

  objc_msgSend_applyFromIntToIntDictionary_(qword_280A46D70, v13, v14, v15, v16, v21);
  objc_msgSend_applyFromIntToIntDictionary_(qword_280A46D70, v17, v18, v19, v20, v10);
}

void sub_2762418A0()
{
  v0 = objc_alloc_init(TSCHPieElementBuilder);
  v1 = qword_280A46D88;
  qword_280A46D88 = v0;
}

void sub_276241CC4(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v22[3] = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_tsch_numberWithStyleProperty_(MEMORY[0x277CCABB0], a5, a1, a2, a3, 1189);
  v10 = objc_msgSend_tsch_numberWithStyleProperty_(MEMORY[0x277CCABB0], v6, v7, v8, v9, 1185, v5);
  v22[1] = v10;
  v15 = objc_msgSend_tsch_numberWithStyleProperty_(MEMORY[0x277CCABB0], v11, v12, v13, v14, 1184);
  v22[2] = v15;
  v20 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v16, v17, v18, v19, v22, 3);
  v21 = qword_280A46D90;
  qword_280A46D90 = v20;
}

void sub_276241D9C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_276241E14()
{
  v0 = objc_alloc_init(TSCHScatterElementBuilder);
  v1 = qword_280A46DA8;
  qword_280A46DA8 = v0;
}

void sub_2762422C4()
{
  v0 = objc_alloc_init(TSCHBarElementBuilder);
  v1 = qword_280A46DB8;
  qword_280A46DB8 = v0;
}

void sub_276242740(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D81208]);
  v3 = qword_280A46DC0;
  qword_280A46DC0 = v2;

  v4 = qword_280A46DC0;
  v20.receiver = *(a1 + 32);
  v20.super_class = TSCHChartSeriesTypeColumn;
  v5 = objc_msgSendSuper2(&v20, sel_genericToSpecificPropertyMap);
  objc_msgSend_applyFromIntToIntDictionary_(v4, v6, v7, v8, v9, v5);

  v10 = qword_280A46DC0;
  v15 = objc_msgSend_g_genericToSpecificPropertyMapColumn(*(a1 + 32), v11, v12, v13, v14);
  objc_msgSend_applyFromIntToIntDictionary_(v10, v16, v17, v18, v19, v15);
}

void sub_276242854()
{
  v0 = objc_alloc_init(TSCHColumnElementBuilder);
  v1 = qword_280A46DD8;
  qword_280A46DD8 = v0;
}

void sub_276242B48()
{
  v0 = objc_alloc_init(TSCHLineElementBuilder);
  v1 = qword_280A46DE8;
  qword_280A46DE8 = v0;
}

void sub_276242BC8(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v22[3] = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_tsch_numberWithStyleProperty_(MEMORY[0x277CCABB0], a5, a1, a2, a3, 1184);
  v10 = objc_msgSend_tsch_numberWithStyleProperty_(MEMORY[0x277CCABB0], v6, v7, v8, v9, 1189, v5);
  v22[1] = v10;
  v15 = objc_msgSend_tsch_numberWithStyleProperty_(MEMORY[0x277CCABB0], v11, v12, v13, v14, 1185);
  v22[2] = v15;
  v20 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v16, v17, v18, v19, v22, 3);
  v21 = qword_280A46DF0;
  qword_280A46DF0 = v20;
}

void sub_276242CA0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_276242F10()
{
  v0 = objc_alloc_init(TSCHAreaElementBuilder);
  v1 = qword_280A46E08;
  qword_280A46E08 = v0;
}

void sub_2762432E0(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D81208]);
  v3 = qword_280A46E10;
  qword_280A46E10 = v2;

  v4 = qword_280A46E10;
  v20.receiver = *(a1 + 32);
  v20.super_class = TSCHChartSeriesTypeStackedColumn;
  v5 = objc_msgSendSuper2(&v20, sel_genericToSpecificPropertyMap);
  objc_msgSend_applyFromIntToIntDictionary_(v4, v6, v7, v8, v9, v5);

  v10 = qword_280A46E10;
  v15 = objc_msgSend_g_genericToSpecificPropertyMapStackedColumn(*(a1 + 32), v11, v12, v13, v14);
  objc_msgSend_applyFromIntToIntDictionary_(v10, v16, v17, v18, v19, v15);
}

double sub_2762433B4(unint64_t a1, uint64_t a2, int a3, void *a4, double a5)
{
  v9 = a4;
  v14 = objc_msgSend_model(v9, v10, v11, v12, v13);
  v19 = v14;
  if (v9 && v14 && objc_msgSend_numberOfSeries(v14, v15, v16, v17, v18) >= a1)
  {
    if (a1)
    {
      v36 = a1 - 1;
      while (1)
      {
        v37 = objc_msgSend_seriesAtIndex_(v19, v15, v16, v17, v18, v36);
        objc_msgSend_unitSpaceValueForSeries_groupIndex_(v9, v38, v39, v40, v41, v37, a2);
        v43 = v42;
        v44 = v42 >= a5 ? 1 : a3;
        v45 = v42 >= a5 ? a3 : 0;
        if (v44 != 1 || (v45 & 1) != 0)
        {
          break;
        }

        if (--v36 >= a1)
        {
          goto LABEL_5;
        }
      }

      a5 = v43;
    }
  }

  else
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "double TSCHBeginValueStacked(NSUInteger, NSUInteger, double, BOOL, TSCHChartAxis *__strong)");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartSeriesType.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v27, v28, v29, v30, v21, v26, 2365, 0, "Bad arguments to TSCHBeginValueStacked");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
  }

LABEL_5:

  return a5;
}

double sub_27624356C(void *a1, unint64_t a2, int a3, void *a4)
{
  v7 = a1;
  v9 = a4;
  v131 = v9;
  if (a3)
  {
    v13 = objc_msgSend_numberOfValues(v7, v8, v10, v11, v12);
    if (v7 && v9 && v13 > a2)
    {
      v18 = objc_msgSend_valueForAxisID_valueIndex_(v7, v14, v15, v16, v17, v9, a2);
      goto LABEL_10;
    }

LABEL_33:
    v111 = MEMORY[0x277D81150];
    v112 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "double TSCHBeginDataValueStacked(TSCHChartSeries *__strong, NSUInteger, BOOL, TSCHChartAxisID *__strong)");
    v117 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v113, v114, v115, v116, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartSeriesType.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v111, v118, v119, v120, v121, v112, v117, 2388, 0, "Bad arguments to TSCHBeginDataValueStacked");

    v30 = 0.0;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v122, v123, v124, v125);
    goto LABEL_36;
  }

  v23 = objc_msgSend_model(v7, v8, v10, v11, v12);
  v28 = objc_msgSend_numberOfGroupsInSeries_(v23, v24, v25, v26, v27, v7);

  if (!v7 || !v9 || v28 <= a2)
  {
    goto LABEL_33;
  }

  v18 = objc_msgSend_valueForAxisID_groupIndex_(v7, v14, v15, v16, v17, v9, a2);
LABEL_10:
  v29 = v18;
  v30 = 0.0;
  if (v18)
  {
    v130 = v18;
    objc_msgSend_doubleValue(v18, v19, v20, v21, v22);
    v34 = v33;
    v35 = fabs(v33);
    if (v35 != INFINITY)
    {
      v128 = v7;
      v36 = objc_msgSend_seriesIndex(v7, v31, v35, INFINITY, v32);
      v41 = objc_msgSend_model(v7, v37, v38, v39, v40);
      v46 = objc_msgSend_chartInfo(v41, v42, v43, v44, v45);
      v51 = objc_msgSend_chartType(v46, v47, v48, v49, v50);

      v127 = v51;
      v129 = objc_msgSend_stackingSignRule(v51, v52, v53, v54, v55);
      if (!v129)
      {
        v60 = MEMORY[0x277D81150];
        v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, v57, v58, v59, "double TSCHBeginDataValueStacked(TSCHChartSeries *__strong, NSUInteger, BOOL, TSCHChartAxisID *__strong)");
        v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, v63, v64, v65, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartSeriesType.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v60, v67, v68, v69, v70, v61, v66, 2408, 0, "Stacked chart types must have a sign rule for cross series summation.");

        v29 = v130;
        v9 = v131;
        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v71, v72, v73, v74);
      }

      if (v36)
      {
        v75 = 0;
        do
        {
          v76 = v41;
          v77 = objc_msgSend_seriesAtIndex_(v41, v56, v57, v58, v59, v75);
          v82 = v77;
          if (a3)
          {
            objc_msgSend_valueForAxisID_valueIndex_(v77, v78, v79, v80, v81, v9, a2);
          }

          else
          {
            objc_msgSend_valueForAxisID_groupIndex_(v77, v78, v79, v80, v81, v9, a2);
          }
          v83 = ;
          v88 = v83;
          if (v83)
          {
            objc_msgSend_doubleValue(v83, v84, v85, v86, v87);
            if ((*&v90 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              if (v129 == 2)
              {
                v30 = v30 + v90;
              }

              else if (v129 == 1)
              {
                v93 = v90 < 0.0;
                v94 = v90 >= 0.0;
                if (v34 < 0.0)
                {
                  v94 = 0;
                }

                else
                {
                  v93 = 0;
                }

                v95 = v30 + v90;
                if (v93 || v94)
                {
                  v30 = v95;
                }
              }

              else
              {
                v96 = MEMORY[0x277D81150];
                v97 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v89, v90, v91, v92, "double TSCHBeginDataValueStacked(TSCHChartSeries *__strong, NSUInteger, BOOL, TSCHChartAxisID *__strong)");
                v102 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v98, v99, v100, v101, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartSeriesType.mm");
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v96, v103, v104, v105, v106, v97, v102, 2425, 0, "Unknown sign rule for stacked chart.");

                v7 = v128;
                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v107, v108, v109, v110);
              }
            }
          }

          ++v75;
          v29 = v130;
          v9 = v131;
          v41 = v76;
        }

        while (v36 != v75);
      }
    }
  }

LABEL_36:
  return v30;
}

void sub_276243AD8()
{
  v0 = objc_alloc_init(TSCHStackedColumnElementBuilder);
  v1 = qword_280A46E28;
  qword_280A46E28 = v0;
}

void sub_276243EDC(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D81208]);
  v3 = qword_280A46E30;
  qword_280A46E30 = v2;

  v4 = qword_280A46E30;
  v20.receiver = *(a1 + 32);
  v20.super_class = TSCHChartSeriesTypeStackedBar;
  v5 = objc_msgSendSuper2(&v20, sel_genericToSpecificPropertyMap);
  objc_msgSend_applyFromIntToIntDictionary_(v4, v6, v7, v8, v9, v5);

  v10 = qword_280A46E30;
  v15 = objc_msgSend_g_genericToSpecificPropertyMapStackedBar(*(a1 + 32), v11, v12, v13, v14);
  objc_msgSend_applyFromIntToIntDictionary_(v10, v16, v17, v18, v19, v15);
}

void sub_276244064()
{
  v0 = objc_alloc_init(TSCHStackedBarElementBuilder);
  v1 = qword_280A46E48;
  qword_280A46E48 = v0;
}

void sub_2762442F4(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D81208]);
  v3 = qword_280A46E50;
  qword_280A46E50 = v2;

  v4 = qword_280A46E50;
  v20.receiver = *(a1 + 32);
  v20.super_class = TSCHChartSeriesTypeStackedArea;
  v5 = objc_msgSendSuper2(&v20, sel_genericToSpecificPropertyMap);
  objc_msgSend_applyFromIntToIntDictionary_(v4, v6, v7, v8, v9, v5);

  v10 = qword_280A46E50;
  v15 = objc_msgSend_g_genericToSpecificPropertyMapStackedArea(*(a1 + 32), v11, v12, v13, v14);
  objc_msgSend_applyFromIntToIntDictionary_(v10, v16, v17, v18, v19, v15);
}

void sub_276244428()
{
  v0 = objc_alloc_init(TSCHStackedAreaElementBuilder);
  v1 = qword_280A46E68;
  qword_280A46E68 = v0;
}

void sub_27624456C(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D81208]);
  v3 = qword_280A46E70;
  qword_280A46E70 = v2;

  v4 = qword_280A46E70;
  v20.receiver = *(a1 + 32);
  v20.super_class = TSCHChartSeriesTypeMixedColumn;
  v5 = objc_msgSendSuper2(&v20, sel_genericToSpecificPropertyMap);
  objc_msgSend_applyFromIntToIntDictionary_(v4, v6, v7, v8, v9, v5);

  v10 = qword_280A46E70;
  v15 = objc_msgSend_g_genericToSpecificPropertyMapMixedColumn(*(a1 + 32), v11, v12, v13, v14);
  objc_msgSend_applyFromIntToIntDictionary_(v10, v16, v17, v18, v19, v15);
}

void sub_27624473C(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D81208]);
  v3 = qword_280A46E80;
  qword_280A46E80 = v2;

  v4 = qword_280A46E80;
  v20.receiver = *(a1 + 32);
  v20.super_class = TSCHChartSeriesTypeMixedLine;
  v5 = objc_msgSendSuper2(&v20, sel_genericToSpecificPropertyMap);
  objc_msgSend_applyFromIntToIntDictionary_(v4, v6, v7, v8, v9, v5);

  v10 = qword_280A46E80;
  v15 = objc_msgSend_g_genericToSpecificPropertyMapMixedLine(*(a1 + 32), v11, v12, v13, v14);
  objc_msgSend_applyFromIntToIntDictionary_(v10, v16, v17, v18, v19, v15);
}

void sub_276244928(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D81208]);
  v3 = qword_280A46E90;
  qword_280A46E90 = v2;

  v4 = qword_280A46E90;
  v20.receiver = *(a1 + 32);
  v20.super_class = TSCHChartSeriesTypeMixedArea;
  v5 = objc_msgSendSuper2(&v20, sel_genericToSpecificPropertyMap);
  objc_msgSend_applyFromIntToIntDictionary_(v4, v6, v7, v8, v9, v5);

  v10 = qword_280A46E90;
  v15 = objc_msgSend_g_genericToSpecificPropertyMapMixedArea(*(a1 + 32), v11, v12, v13, v14);
  objc_msgSend_applyFromIntToIntDictionary_(v10, v16, v17, v18, v19, v15);
}

void sub_276244C20()
{
  v0 = objc_alloc_init(TSCHBubbleElementBuilder);
  v1 = qword_280A46EA8;
  qword_280A46EA8 = v0;
}

void sub_276244CEC(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_tsch_numberWithStyleProperty_(MEMORY[0x277CCABB0], a5, a1, a2, a3, 1185);
  v17[0] = v5;
  v10 = objc_msgSend_tsch_numberWithStyleProperty_(MEMORY[0x277CCABB0], v6, v7, v8, v9, 1189);
  v17[1] = v10;
  v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, v12, v13, v14, v17, 2);
  v16 = qword_280A46EB0;
  qword_280A46EB0 = v15;
}

void sub_276244FD4(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D81208]);
  v3 = qword_280A46EC0;
  qword_280A46EC0 = v2;

  v4 = qword_280A46EC0;
  v20.receiver = *(a1 + 32);
  v20.super_class = TSCHChartSeriesTypeRadarArea;
  v5 = objc_msgSendSuper2(&v20, sel_genericToSpecificPropertyMap);
  objc_msgSend_applyFromIntToIntDictionary_(v4, v6, v7, v8, v9, v5);

  v10 = qword_280A46EC0;
  v15 = objc_msgSend_g_genericToSpecificPropertyMapRadarArea(*(a1 + 32), v11, v12, v13, v14);
  objc_msgSend_applyFromIntToIntDictionary_(v10, v16, v17, v18, v19, v15);
}

void sub_2762450E4()
{
  v0 = objc_alloc_init(TSCHRadarAreaElementBuilder);
  v1 = qword_280A46ED8;
  qword_280A46ED8 = v0;
}

void sub_2762453B4(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D81208]);
  v3 = qword_280A46EE0;
  qword_280A46EE0 = v2;

  v4 = qword_280A46EE0;
  v20.receiver = *(a1 + 32);
  v20.super_class = TSCHChartSeriesTypeColumn3D;
  v5 = objc_msgSendSuper2(&v20, sel_genericToSpecificPropertyMap);
  objc_msgSend_applyFromIntToIntDictionary_(v4, v6, v7, v8, v9, v5);

  v10 = qword_280A46EE0;
  v15 = objc_msgSend_g_genericToSpecificPropertyMap3DColumn(*(a1 + 32), v11, v12, v13, v14);
  objc_msgSend_applyFromIntToIntDictionary_(v10, v16, v17, v18, v19, v15);
}

void sub_276245590(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D81208]);
  v3 = qword_280A46EF0;
  qword_280A46EF0 = v2;

  v4 = qword_280A46EF0;
  v20.receiver = *(a1 + 32);
  v20.super_class = TSCHChartSeriesTypeStackedColumn3D;
  v5 = objc_msgSendSuper2(&v20, sel_genericToSpecificPropertyMap);
  objc_msgSend_applyFromIntToIntDictionary_(v4, v6, v7, v8, v9, v5);

  v10 = qword_280A46EF0;
  v15 = objc_msgSend_g_genericToSpecificPropertyMap3DStackedColumn(*(a1 + 32), v11, v12, v13, v14);
  objc_msgSend_applyFromIntToIntDictionary_(v10, v16, v17, v18, v19, v15);
}

void sub_27624576C(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D81208]);
  v3 = qword_280A46F00;
  qword_280A46F00 = v2;

  v4 = qword_280A46F00;
  v20.receiver = *(a1 + 32);
  v20.super_class = TSCHChartSeriesTypeBar3D;
  v5 = objc_msgSendSuper2(&v20, sel_genericToSpecificPropertyMap);
  objc_msgSend_applyFromIntToIntDictionary_(v4, v6, v7, v8, v9, v5);

  v10 = qword_280A46F00;
  v15 = objc_msgSend_g_genericToSpecificPropertyMap3DBar(*(a1 + 32), v11, v12, v13, v14);
  objc_msgSend_applyFromIntToIntDictionary_(v10, v16, v17, v18, v19, v15);
}

void sub_276245948(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D81208]);
  v3 = qword_280A46F10;
  qword_280A46F10 = v2;

  v4 = qword_280A46F10;
  v20.receiver = *(a1 + 32);
  v20.super_class = TSCHChartSeriesTypeStackedBar3D;
  v5 = objc_msgSendSuper2(&v20, sel_genericToSpecificPropertyMap);
  objc_msgSend_applyFromIntToIntDictionary_(v4, v6, v7, v8, v9, v5);

  v10 = qword_280A46F10;
  v15 = objc_msgSend_g_genericToSpecificPropertyMap3DStackedBar(*(a1 + 32), v11, v12, v13, v14);
  objc_msgSend_applyFromIntToIntDictionary_(v10, v16, v17, v18, v19, v15);
}

void sub_276245B2C(uint64_t a1)
{
  v22.receiver = *(a1 + 32);
  v22.super_class = TSCHChartSeriesTypeLine3D;
  v1 = objc_msgSendSuper2(&v22, sel_propertiesForReferenceColors);
  v6 = objc_msgSend_mutableCopy(v1, v2, v3, v4, v5);

  v11 = objc_msgSend_tsch_numberWithStyleProperty_(MEMORY[0x277CCABB0], v7, v8, v9, v10, 1160);
  objc_msgSend_insertObject_atIndex_(v6, v12, v13, v14, v15, v11, 0);

  v20 = objc_msgSend_copy(v6, v16, v17, v18, v19);
  v21 = qword_280A46F20;
  qword_280A46F20 = v20;
}

void sub_276245BCC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_276245CA0(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D81208]);
  v3 = qword_280A46F30;
  qword_280A46F30 = v2;

  v4 = qword_280A46F30;
  v20.receiver = *(a1 + 32);
  v20.super_class = TSCHChartSeriesTypeLine3D;
  v5 = objc_msgSendSuper2(&v20, sel_genericToSpecificPropertyMap);
  objc_msgSend_applyFromIntToIntDictionary_(v4, v6, v7, v8, v9, v5);

  v10 = qword_280A46F30;
  v15 = objc_msgSend_g_genericToSpecificPropertyMap3DLine(*(a1 + 32), v11, v12, v13, v14);
  objc_msgSend_applyFromIntToIntDictionary_(v10, v16, v17, v18, v19, v15);
}

void sub_276245E7C(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D81208]);
  v3 = qword_280A46F40;
  qword_280A46F40 = v2;

  v4 = qword_280A46F40;
  v20.receiver = *(a1 + 32);
  v20.super_class = TSCHChartSeriesTypeArea3D;
  v5 = objc_msgSendSuper2(&v20, sel_genericToSpecificPropertyMap);
  objc_msgSend_applyFromIntToIntDictionary_(v4, v6, v7, v8, v9, v5);

  v10 = qword_280A46F40;
  v15 = objc_msgSend_g_genericToSpecificPropertyMap3DArea(*(a1 + 32), v11, v12, v13, v14);
  objc_msgSend_applyFromIntToIntDictionary_(v10, v16, v17, v18, v19, v15);
}

void sub_276246060(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D81208]);
  v3 = qword_280A46F50;
  qword_280A46F50 = v2;

  v4 = qword_280A46F50;
  v20.receiver = *(a1 + 32);
  v20.super_class = TSCHChartSeriesTypeStackedArea3D;
  v5 = objc_msgSendSuper2(&v20, sel_genericToSpecificPropertyMap);
  objc_msgSend_applyFromIntToIntDictionary_(v4, v6, v7, v8, v9, v5);

  v10 = qword_280A46F50;
  v15 = objc_msgSend_g_genericToSpecificPropertyMap3DStackedArea(*(a1 + 32), v11, v12, v13, v14);
  objc_msgSend_applyFromIntToIntDictionary_(v10, v16, v17, v18, v19, v15);
}

void sub_276246224(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2762462EC(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D81208]);
  v3 = qword_280A46F60;
  qword_280A46F60 = v2;

  v4 = qword_280A46F60;
  v20.receiver = *(a1 + 32);
  v20.super_class = TSCHChartSeriesTypePie3D;
  v5 = objc_msgSendSuper2(&v20, sel_genericToSpecificPropertyMap);
  objc_msgSend_applyFromIntToIntDictionary_(v4, v6, v7, v8, v9, v5);

  v10 = qword_280A46F60;
  v15 = objc_msgSend_g_genericToSpecificPropertyMap3DPie(*(a1 + 32), v11, v12, v13, v14);
  objc_msgSend_applyFromIntToIntDictionary_(v10, v16, v17, v18, v19, v15);
}

void sub_2762464B0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_276246578(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D81208]);
  v3 = qword_280A46F70;
  qword_280A46F70 = v2;

  v4 = qword_280A46F70;
  v20.receiver = *(a1 + 32);
  v20.super_class = TSCHChartSeriesTypeDonut3D;
  v5 = objc_msgSendSuper2(&v20, sel_genericToSpecificPropertyMap);
  objc_msgSend_applyFromIntToIntDictionary_(v4, v6, v7, v8, v9, v5);

  v10 = qword_280A46F70;
  v15 = objc_msgSend_g_genericToSpecificPropertyMap3DDonut(*(a1 + 32), v11, v12, v13, v14);
  objc_msgSend_applyFromIntToIntDictionary_(v10, v16, v17, v18, v19, v15);
}

void sub_276246E60()
{
  v0 = objc_alloc_init(TSCHChartTypePie);
  v1 = qword_280A46F88;
  qword_280A46F88 = v0;
}

void sub_276246EE0()
{
  v0 = objc_alloc_init(TSCHChartTypeDonut);
  v1 = qword_280A46F98;
  qword_280A46F98 = v0;
}

void sub_276246F60()
{
  v0 = objc_alloc_init(TSCHChartTypeBar);
  v1 = qword_280A46FA8;
  qword_280A46FA8 = v0;
}

void sub_276246FE0()
{
  v0 = objc_alloc_init(TSCHChartTypeColumn);
  v1 = qword_280A46FB8;
  qword_280A46FB8 = v0;
}

void sub_276247060()
{
  v0 = objc_alloc_init(TSCHChartTypeLine);
  v1 = qword_280A46FC8;
  qword_280A46FC8 = v0;
}

void sub_2762470E0()
{
  v0 = objc_alloc_init(TSCHChartTypeArea);
  v1 = qword_280A46FD8;
  qword_280A46FD8 = v0;
}

void sub_276247160()
{
  v0 = objc_alloc_init(TSCHChartTypeScatter);
  v1 = qword_280A46FE8;
  qword_280A46FE8 = v0;
}

void sub_2762471E0()
{
  v0 = objc_alloc_init(TSCHChartTypeStackedBar);
  v1 = qword_280A46FF8;
  qword_280A46FF8 = v0;
}

void sub_276247260()
{
  v0 = objc_alloc_init(TSCHChartTypeStackedColumn);
  v1 = qword_280A47008;
  qword_280A47008 = v0;
}

void sub_2762472E0()
{
  v0 = objc_alloc_init(TSCHChartTypeStackedArea);
  v1 = qword_280A47018;
  qword_280A47018 = v0;
}

void sub_276247360()
{
  v0 = objc_alloc_init(TSCHChartTypeMixed);
  v1 = qword_280A47028;
  qword_280A47028 = v0;
}

void sub_2762473E0()
{
  v0 = objc_alloc_init(TSCHChartTypeTwoAxis);
  v1 = qword_280A47038;
  qword_280A47038 = v0;
}

void sub_276247460()
{
  v0 = objc_alloc_init(TSCHChartTypeBubble);
  v1 = qword_280A47048;
  qword_280A47048 = v0;
}

void sub_2762474E0()
{
  v0 = objc_alloc_init(TSCHChartTypeMultipleChartsSelected);
  v1 = qword_280A47058;
  qword_280A47058 = v0;
}

void sub_276247560()
{
  v0 = objc_alloc_init(TSCHChartTypeMultipleChartsSelected2D);
  v1 = qword_280A47068;
  qword_280A47068 = v0;
}

void sub_2762475E0()
{
  v0 = objc_alloc_init(TSCHChartTypeColumn3D);
  v1 = qword_280A47078;
  qword_280A47078 = v0;
}

void sub_276247660()
{
  v0 = objc_alloc_init(TSCHChartTypeLine3D);
  v1 = qword_280A47088;
  qword_280A47088 = v0;
}

void sub_2762476E0()
{
  v0 = objc_alloc_init(TSCHChartTypeArea3D);
  v1 = qword_280A47098;
  qword_280A47098 = v0;
}

void sub_276247760()
{
  v0 = objc_alloc_init(TSCHChartTypeStackedArea3D);
  v1 = qword_280A470A8;
  qword_280A470A8 = v0;
}

void sub_2762477E0()
{
  v0 = objc_alloc_init(TSCHChartTypePie3D);
  v1 = qword_280A470B8;
  qword_280A470B8 = v0;
}

void sub_276247860()
{
  v0 = objc_alloc_init(TSCHChartTypeDonut3D);
  v1 = qword_280A470C8;
  qword_280A470C8 = v0;
}

void sub_2762478E0()
{
  v0 = objc_alloc_init(TSCHChartTypeStackedColumn3D);
  v1 = qword_280A470D8;
  qword_280A470D8 = v0;
}

void sub_276247960()
{
  v0 = objc_alloc_init(TSCHChartTypeBar3D);
  v1 = qword_280A470E8;
  qword_280A470E8 = v0;
}

void sub_2762479E0()
{
  v0 = objc_alloc_init(TSCHChartTypeStackedBar3D);
  v1 = qword_280A470F8;
  qword_280A470F8 = v0;
}

void sub_276247A60()
{
  v0 = objc_alloc_init(TSCHChartTypeMultipleChartsSelected3D);
  v1 = qword_280A47108;
  qword_280A47108 = v0;
}

void sub_276247AE0()
{
  v0 = objc_alloc_init(TSCHChartTypeMultiDataColumn);
  v1 = qword_280A47118;
  qword_280A47118 = v0;
}

void sub_276247B60()
{
  v0 = objc_alloc_init(TSCHChartTypeMultiDataBar);
  v1 = qword_280A47128;
  qword_280A47128 = v0;
}

void sub_276247BE0()
{
  v0 = objc_alloc_init(TSCHChartTypeMultiDataScatter);
  v1 = qword_280A47138;
  qword_280A47138 = v0;
}

void sub_276247C60()
{
  v0 = objc_alloc_init(TSCHChartTypeMultiDataBubble);
  v1 = qword_280A47148;
  qword_280A47148 = v0;
}

void sub_276247F0C(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = objc_msgSend_set(MEMORY[0x277CBEB58], a2, a3, a4, a5);
  outCount = 0;
  v7 = objc_opt_class();
  Class = object_getClass(v7);
  v9 = class_copyMethodList(Class, &outCount);
  v14 = outCount;
  v45 = v9;
  if (outCount)
  {
    v15 = v9;
    do
    {
      Name = method_getName(*v15);
      if (!sel_isEqual(*(a1 + 32), Name))
      {
        v17 = NSStringFromSelector(Name);
        if (objc_msgSend_hasPrefix_(v17, v18, v19, v20, v21, @"_", v45) & 1) == 0 && ((objc_msgSend_hasSuffix_(v17, v22, v23, v24, v25, @"Chart") & 1) != 0 || (objc_msgSend_hasSuffix_(v17, v26, v27, v28, v29, @"Chart3D")))
        {
          objc_opt_class();
          v30 = objc_opt_class();
          v35 = objc_msgSend_methodForSelector_(v30, v31, v32, v33, v34, Name);
          v36 = objc_opt_class();
          v37 = v35(v36, Name);
          v38 = TSUDynamicCast();

          if (v38)
          {
            objc_msgSend_addObject_(v6, v39, v40, v41, v42, v38);
          }
        }
      }

      ++v15;
      --v14;
    }

    while (v14);
    goto LABEL_14;
  }

  if (v9)
  {
LABEL_14:
    free(v45);
  }

  v43 = objc_msgSend_copy(v6, v10, v11, v12, v13, v45);
  v44 = qword_280A47150;
  qword_280A47150 = v43;
}

void sub_276248180(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_allChartTypes(*(a1 + 32), a2, a3, a4, a5);
  v10 = objc_msgSend_set(MEMORY[0x277CBEB58], v6, v7, v8, v9);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v11 = v5;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, v13, v14, v15, &v30, v34, 16);
  if (v17)
  {
    v21 = *v31;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v31 != v21)
        {
          objc_enumerationMutation(v11);
        }

        v23 = *(*(&v30 + 1) + 8 * i);
        if (objc_msgSend_is3D(v23, v16, v18, v19, v20, v30))
        {
          objc_msgSend_addObject_(v10, v16, v18, v19, v20, v23);
        }
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v16, v18, v19, v20, &v30, v34, 16);
    }

    while (v17);
  }

  v28 = objc_msgSend_copy(v10, v24, v25, v26, v27);
  v29 = qword_280A47160;
  qword_280A47160 = v28;
}

id sub_27624B840(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CCABB8]);
  objc_msgSend_setNumberStyle_(v2, v3, v4, v5, v6, 1);
  objc_msgSend_setMaximumFractionDigits_(v2, v7, v8, v9, v10, 0);
  v15 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v11, v12, v13, v14, a1);
  v20 = objc_msgSend_stringFromNumber_(v2, v16, v17, v18, v19, v15);

  return v20;
}

void sub_27624C184(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_27624C5D8(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_set(MEMORY[0x277CBEB58], a2, a3, a4, a5);
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  v10 = objc_msgSend_allChartTypes(*(a1 + 32), v7, 0.0, v8, v9, 0, 0);
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, v12, v13, v14, &v39, v43, 16);
  if (v15)
  {
    v16 = *v40;
    do
    {
      v17 = 0;
      do
      {
        if (*v40 != v16)
        {
          objc_enumerationMutation(v10);
        }

        objc_opt_class();
        v18 = TSUDynamicCast();
        v23 = v18;
        if (v18)
        {
          v24 = objc_msgSend_animationFilters(v18, v19, v20, v21, v22);
          objc_msgSend_unionSet_(v6, v25, v26, v27, v28, v24);
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v29, v30, v31, v32, &v39, v43, 16);
    }

    while (v15);
  }

  v37 = objc_msgSend_copy(v6, v33, v34, v35, v36);
  v38 = qword_280A47170;
  qword_280A47170 = v37;
}

void sub_27624E8F8(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D81208]);
  v3 = qword_280A47180;
  qword_280A47180 = v2;

  v4 = qword_280A47180;
  v10.receiver = *(a1 + 32);
  v10.super_class = TSCHChartTypeMultiDataColumn;
  v5 = objc_msgSendSuper2(&v10, sel_p_genericToSpecificPropertyMap);
  objc_msgSend_applyFromIntToIntDictionary_(v4, v6, v7, v8, v9, v5);
}

void sub_27624EB88(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D81208]);
  v3 = qword_280A47190;
  qword_280A47190 = v2;

  v4 = qword_280A47190;
  v10.receiver = *(a1 + 32);
  v10.super_class = TSCHChartTypeMultiDataBar;
  v5 = objc_msgSendSuper2(&v10, sel_p_genericToSpecificPropertyMap);
  objc_msgSend_applyFromIntToIntDictionary_(v4, v6, v7, v8, v9, v5);
}

void sub_27624EE18(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D81208]);
  v3 = qword_280A471A0;
  qword_280A471A0 = v2;

  v4 = qword_280A471A0;
  v10.receiver = *(a1 + 32);
  v10.super_class = TSCHChartTypeMultiDataScatter;
  v5 = objc_msgSendSuper2(&v10, sel_p_genericToSpecificPropertyMap);
  objc_msgSend_applyFromIntToIntDictionary_(v4, v6, v7, v8, v9, v5);
}

void sub_27624F1F4(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D81208]);
  v3 = qword_280A471B0;
  qword_280A471B0 = v2;

  v4 = qword_280A471B0;
  v10.receiver = *(a1 + 32);
  v10.super_class = TSCHChartTypeMultiDataBubble;
  v5 = objc_msgSendSuper2(&v10, sel_p_genericToSpecificPropertyMap);
  objc_msgSend_applyFromIntToIntDictionary_(v4, v6, v7, v8, v9, v5);
}

double sub_276256200(uint64_t a1, void *a2)
{
  if ((*(a1 + 72) & 1) == 0)
  {
    return *MEMORY[0x277CBF3A8];
  }

  v3 = a2;
  objc_msgSend_offset(v3, v4, v5, v6, v7);
  v9 = fabs(v8);
  objc_msgSend_radius(v3, v10, v8, v11, v12);
  v14 = v13;

  v15 = -(v9 + fabs(v14));
  v21 = CGRectInset(*(a1 + 32), v15, v15);
  v21.origin.x = v21.size.width + v21.size.width;
  v21.origin.y = 0.0;
  v16 = CGContextConvertSizeToDeviceSpace(*(a1 + 64), v21.origin);
  v20.width = ceil(v16.width);
  v20.height = ceil(v16.height);
  v17 = CGContextConvertSizeToUserSpace(*(a1 + 64), v20);
  width = v17.width;
  CGContextClipToRectSafe();
  CGContextTranslateCTM(*(a1 + 64), -v17.width, v17.height);
  return width;
}

uint64_t sub_2762562F4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_27625630C(uint64_t a1, uint64_t a2)
{
  CGContextSaveGState(*(a1 + 80));
  v8 = objc_msgSend_barModelCacheForSeries_(*(a1 + 32), v4, v5, v6, v7, a2);
  v13 = objc_msgSend_series(v8, v9, v10, v11, v12);
  v14 = objc_opt_class();
  if (objc_msgSend_renderSeriesForClass_(v13, v15, v16, v17, v18, v14))
  {
    objc_opt_class();
    v23 = objc_msgSend_seriesType(v13, v19, v20, v21, v22);
    v28 = objc_msgSend_elementBuilder(v23, v24, v25, v26, v27);
    v29 = TSUDynamicCast();

    if (v29)
    {
      if (*(a1 + 192))
      {
        goto LABEL_16;
      }

      v34 = *(a1 + 193);
      if (v34)
      {
        v35 = 0;
      }

      else
      {
        v35 = objc_msgSend_shadow(v8, v30, v31, v32, v33);
      }

      objc_storeStrong((*(*(a1 + 72) + 8) + 40), v35);
      if ((v34 & 1) == 0)
      {
      }

      v44 = objc_msgSend_hasShadow_(TSCHStyleUtilities, v36, v37, v38, v39, *(*(*(a1 + 72) + 8) + 40)) ? objc_msgSend_shadowsEnabled(*(a1 + 48), v40, v41, v42, v43) : 0;
      (*(*(a1 + 64) + 16))();
      if (!v44)
      {
LABEL_16:
        v49 = 0;
      }

      else
      {
        if ((*(a1 + 194) & 1) == 0)
        {
          v45 = v31;
          v46 = v32;
          v47 = sub_27631FD2C(*(a1 + 80), v30, v31, v32, v33);
          objc_msgSend_applyToContext_viewScale_flipped_extraOffset_(*(*(*(a1 + 72) + 8) + 40), v48, *(a1 + 88), v45, v46, *(a1 + 80), v47);
        }

        v49 = 1;
      }

      objc_msgSend_opacity(v8, v30, v31, v32, v33);
      CGContextSetAlpha(*(a1 + 80), v50);
      v55 = objc_msgSend_p_strokeForSeriesIndex_withContext_(*(a1 + 40), v51, v52, v53, v54, a2, *(a1 + 80));
      v60 = objc_msgSend_fill(v8, v56, v57, v58, v59);
      v108 = 0;
      v109 = 0;
      v107 = 0;
      v65 = objc_msgSend_renderGroupIndexSetForSeriesIndex_(*(a1 + 48), v61, v62, v63, v64, a2);
      v70 = objc_msgSend_countOfBarRectsForSeries_forGroups_forBodyLayout_outNewGroupIndexArray_outNewElementRectsArray_outNewClipRectsArray_(v29, v66, v67, v68, v69, v13, v65, *(*(a1 + 40) + 8), &v107, &v109, &v108);
      v85 = v29;

      v71 = v109;
      v72 = v107;
      if (v70 && v109 && (v73 = v108) != 0 && v107)
      {
        v105[0] = 0;
        v105[1] = v105;
        v105[2] = 0x3032000000;
        v105[3] = sub_2762562F4;
        v105[4] = sub_276256304;
        v106 = 0;
        v74 = v49;
        v75 = *(a1 + 40);
        v84 = *(a1 + 80);
        v86[0] = MEMORY[0x277D85DD0];
        v86[1] = 3221225472;
        v86[2] = sub_2762567E8;
        v86[3] = &unk_27A6B6E98;
        v76 = *(a1 + 72);
        v77 = *(a1 + 112);
        v95 = *(a1 + 96);
        v96 = v77;
        v103 = *(a1 + 192);
        v104 = v74;
        v97 = v84;
        v78 = *(a1 + 144);
        v98 = *(a1 + 128);
        v99 = v78;
        v93 = v76;
        v86[4] = v75;
        v87 = v8;
        v88 = v55;
        v94 = v105;
        v79 = *(a1 + 176);
        v100 = *(a1 + 160);
        v101 = v79;
        v89 = v60;
        v90 = *(a1 + 32);
        v102 = *(a1 + 88);
        v91 = v13;
        v92 = *(a1 + 56);
        objc_msgSend_enumerateElementsForSeries_context_elementCount_groupIndexes_elementRects_clipRects_forBlock_(v75, v80, v81, v82, v83, v91, v84, v70, v72, v71, v73, v86);
        v29 = v85;
        if (v107)
        {
          free(v107);
        }

        if (v109)
        {
          free(v109);
        }

        if (v108)
        {
          free(v108);
        }

        _Block_object_dispose(v105, 8);
      }

      else
      {
        if (v107)
        {
          free(v107);
          v71 = v109;
        }

        if (v71)
        {
          free(v71);
        }

        v29 = v85;
        if (v108)
        {
          free(v108);
        }
      }
    }
  }

  CGContextRestoreGState(*(a1 + 80));
}

void sub_2762567E8(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, double a8, double a9, double a10, double a11, CGFloat a12, CGFloat a13, CGFloat a14, CGFloat a15, CGFloat a16, CGFloat a17, CGFloat a18, CGFloat a19)
{
  if (!CGRectIsNull(*&a2))
  {
    if (*(*(*(a1 + 88) + 8) + 40) && (!objc_msgSend_hasShadow_(TSCHStyleUtilities, v22, v23, v24, v25) ? (objc_msgSend_defaultShadow(MEMORY[0x277D803A8], v26, v27, v28, v29), v30 = objc_claimAutoreleasedReturnValue()) : (v30 = *(*(*(a1 + 88) + 8) + 40)), (v31 = v30) != 0))
    {
      v204.origin.x = a12;
      v204.origin.y = a13;
      v204.size.width = a14;
      v204.size.height = a15;
      v218.origin.x = a16;
      v218.origin.y = a17;
      v218.size.width = a18;
      v218.size.height = a19;
      v205 = CGRectUnion(v204, v218);
      objc_msgSend_shadowBoundsForRect_(v31, v32, v205.origin.x, v205.origin.y, v205.size.width, v205.size.height);
      x = v33;
      y = v35;
      width = v37;
      height = v39;
    }

    else
    {
      v206.origin.x = a12;
      v206.origin.y = a13;
      v206.size.width = a14;
      v206.size.height = a15;
      v219.origin.x = a16;
      v219.origin.y = a17;
      v219.size.width = a18;
      v219.size.height = a19;
      v207 = CGRectUnion(v206, v219);
      x = v207.origin.x;
      y = v207.origin.y;
      width = v207.size.width;
      height = v207.size.height;
      v31 = 0;
    }

    v208.origin.x = x;
    v208.origin.y = y;
    v208.size.width = width;
    v208.size.height = height;
    if (!CGRectIntersectsRect(v208, *(a1 + 104)))
    {
      goto LABEL_66;
    }

    v209.origin.x = x;
    v209.origin.y = y;
    v209.size.width = width;
    v209.size.height = height;
    v210 = CGRectIntersection(v209, *(a1 + 104));
    if ((*(a1 + 216) & 1) != 0 || *(a1 + 217) != 1)
    {
      v189 = 0;
    }

    else
    {
      CGContextBeginTransparencyLayerWithRect(*(a1 + 136), v210, 0);
      v189 = 1;
    }

    CGContextSaveGState(*(a1 + 136));
    CGContextClipToRectSafe();
    v211.origin.x = a12;
    v211.origin.y = a13;
    v211.size.width = a14;
    v211.size.height = a15;
    v212 = CGRectStandardize(v211);
    v41 = v212.origin.x;
    v42 = v212.origin.y;
    v187 = *(MEMORY[0x277CBF398] + 16);
    v188 = *MEMORY[0x277CBF398];
    v202 = *MEMORY[0x277CBF398];
    *v203 = v187;
    v192 = v212.size.height;
    v193 = v212.size.width;
    v44 = objc_msgSend_newCGLayerForUserSpaceRect_inContext_outUserSpaceLayerBounds_(TSCHRenderUtilities, v43, v212.origin.x, v212.origin.y, v212.size.width, *(a1 + 136), &v202);
    v45 = v44;
    if (v44 && (c = CGLayerGetContext(v44)) != 0)
    {
      TSDCGContextShouldRenderHDRContent();
      TSDCGContextSetShouldRenderHDRContent();
      v46 = 0;
    }

    else
    {
      c = 0;
      v46 = 1;
    }

    v48 = sub_2762A1E88(*(a1 + 136), v193, v192);
    v51 = v48;
    v52 = v49;
    if (!*(*(a1 + 32) + 24))
    {
      v48 = v49;
    }

    v190 = v48;
    if (!v45)
    {
      v53 = MEMORY[0x277D81150];
      v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, v48, v49, v50, "[TSCHChartBarElementsRenderer p_drawBars:visible:]_block_invoke_2");
      v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, v56, v57, v58, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartBarElementsRenderer.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v60, v61, v62, v63, v54, v59, 339, 0, "invalid NULL value for fillLayer");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v64, v65, v66, v67);
    }

    if (v46)
    {
      v68 = MEMORY[0x277D81150];
      v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, v48, v49, v50, "[TSCHChartBarElementsRenderer p_drawBars:visible:]_block_invoke_2");
      v74 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, v71, v72, v73, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartBarElementsRenderer.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v68, v75, v76, v77, v78, v69, v74, 340, 0, "invalid NULL value for fillLayerContext");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v79, v80, v81, v82);
    }

    v200 = 0u;
    v201 = 0u;
    objc_msgSend_barElementsRendererValueRangeForModelCache_groupIndex_(TSCHRenderUtilities, v47, 0.0, v49, v50, *(a1 + 40), a7);
    if (objc_msgSend_shouldRender(*(a1 + 48), v83, v84, v85, v86) && !*(*(*(a1 + 96) + 8) + 40))
    {
      v185 = v42;
      v91 = v41;
      objc_msgSend_width(*(a1 + 48), v87, v88, v89, v90);
      v93 = v92;
      objc_msgSend_width(*(a1 + 48), v94, v92, v95, v96);
      v99 = sub_2762A1E88(*(a1 + 136), v93 + v93, v97 + v97);
      if (*(*(a1 + 32) + 24))
      {
        v101 = v51;
      }

      else
      {
        v101 = v52;
      }

      if (v101 <= v99)
      {
        v102 = 1;
      }

      else
      {
        v100 = fabs(v99 * 0.000000999999997);
        v99 = vabdd_f64(v101, v99);
        v102 = v99 < v100;
      }

      v41 = v91;
      v103 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v98, v99, v101, v100, v102);
      v42 = v185;
      v104 = *(*(a1 + 96) + 8);
      v105 = *(v104 + 40);
      *(v104 + 40) = v103;
    }

    v220.origin.x = x;
    v220.origin.y = y;
    v220.size.width = width;
    v220.size.height = height;
    v213 = CGRectIntersection(*(a1 + 176), v220);
    if (CGRectIsNull(v213))
    {
LABEL_61:
      if (objc_msgSend_shouldRender(*(a1 + 48), v106, v107, v108, v109) && (objc_msgSend_BOOLValue(*(*(*(a1 + 96) + 8) + 40), v179, v180, v181, v182) & 1) == 0)
      {
        LOBYTE(v183) = v190 <= 1.5;
        objc_msgSend_renderElementStroke_intoContext_usingElementRenderRect_inGroupIndex_series_relativelyPositive_stackRects_forceRoundedCornersOff_(*(a1 + 32), v179, *&v202, *(&v202 + 1), v203[0], *(a1 + 48), c, a7, *(a1 + 72), 0, *(a1 + 80), v203[1], v183);
      }

      LOBYTE(v183) = v190 <= 1.5;
      objc_msgSend_p_drawLayer_intoContext_contextRect_groupIndex_series_relativelyPositive_stackRects_forceRoundedCornersOff_(*(a1 + 32), v179, v41, v42, v193, v45, *(a1 + 136), a7, *(a1 + 72), 0, *(a1 + 80), v192, v183);
      CGLayerRelease(v45);
      CGContextRestoreGState(*(a1 + 136));
      if (v189)
      {
        CGContextEndTransparencyLayer(*(a1 + 136));
      }

LABEL_66:

      return;
    }

    objc_opt_class();
    v110 = TSUDynamicCast();
    if (objc_msgSend_isMultiData(*(a1 + 64), v111, v112, v113, v114) && BYTE8(v201) != *(*(a1 + 32) + 24) && v110 && objc_msgSend_technique(v110, v115, v116, v117, v118) == 2)
    {
      objc_msgSend_fillSize(v110, v115, v116, v117, v118);
      if (TSUSizeIsEmpty())
      {
LABEL_60:

        goto LABEL_61;
      }

      v198 = 0u;
      v199 = 0u;
      v196 = 0u;
      v197 = 0u;
      v120 = sub_27628C4A4(c, &v196);
      v123 = *(a1 + 32);
      if (!v123[1])
      {
        v184 = MEMORY[0x277D81150];
        v186 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v119, v120, v121, v122, "[TSCHChartBarElementsRenderer p_drawBars:visible:]_block_invoke_2");
        v128 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v124, v125, v126, v127, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartBarElementsRenderer.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v184, v129, v130, v131, v132, v186, v128, 363, 0, "invalid nil value for '%{public}s'", "_layoutItem");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v133, v134, v135, v136);
        v123 = *(a1 + 32);
      }

      v195[0] = v188;
      v195[1] = v187;
      objc_msgSend_rootedLayoutRect(v123[1], v119, *&v187, *&v188, v122);
      v137 = *(a1 + 40);
      v138 = *(a1 + 48);
      v194[0] = v196;
      v194[1] = v197;
      v194[2] = v198;
      v194[3] = v199;
      objc_msgSend_renderingElementFrameForBarElementFrame_groupIndex_modelCache_stroke_viewScale_contextInfo_returningFillRect_strokeRect_(v123, v139, v140, v141, v142, a7, v137, v138, v194, v195, 0);
      TSUCeilSize();
      TSURectWithOriginAndSize();
      v215 = CGContextConvertRectToDeviceSpace(c, v214);
      v143 = v215.origin.x;
      v144 = v215.origin.y;
      sub_27628CEF8();
      v216.size.width = v145;
      v216.size.height = v146;
      v216.origin.x = v143;
      v216.origin.y = v144;
      v217 = CGContextConvertRectToUserSpace(c, v216);
      v147 = *(*(a1 + 32) + 24);
      if (v147 == 1)
      {
        v148 = v41;
      }

      else
      {
        v148 = v41 - (v217.size.width - v193);
      }

      if (v147 == 1)
      {
        v149 = v42 - (v217.size.height - v192);
      }

      else
      {
        v149 = v42;
      }

      if (v147 == 1)
      {
        v150 = v193;
      }

      else
      {
        v150 = v217.size.width;
      }

      if (v147 == 1)
      {
        v151 = v217.size.height;
      }

      else
      {
        v151 = v192;
      }

      CGContextSaveGState(c);
      CGContextClipToRectSafe();
      if (objc_msgSend_BOOLValue(*(*(*(a1 + 96) + 8) + 40), v152, v153, v154, v155))
      {
        v160 = MEMORY[0x277D801F8];
        v161 = objc_msgSend_color(*(a1 + 48), v156, v157, v158, v159);
        v166 = objc_msgSend_colorWithColor_(v160, v162, v163, v164, v165, v161);
      }

      else
      {
        v166 = sub_2762A1EB8(*(a1 + 56), c, v148, v149, v150, v151);
      }

      objc_msgSend_drawFill_inContext_frame_(TSCHRenderUtilities, v167, v148, v149, v150, v166, c, v151);
      CGContextRestoreGState(c);
    }

    else
    {
      if (objc_msgSend_BOOLValue(*(*(*(a1 + 96) + 8) + 40), v115, v116, v117, v118))
      {
        v172 = MEMORY[0x277D801F8];
        v173 = objc_msgSend_color(*(a1 + 48), v168, v169, v170, v171);
        v166 = objc_msgSend_colorWithColor_(v172, v174, v175, v176, v177, v173);
      }

      else
      {
        v166 = sub_2762A1EB8(*(a1 + 56), c, *&v202, *(&v202 + 1), v203[0], v203[1]);
      }

      objc_msgSend_drawFill_inContext_frame_(TSCHRenderUtilities, v178, *&v202, *(&v202 + 1), v203[0], v166, c, v203[1]);
    }

    goto LABEL_60;
  }
}

void sub_276257170(CGContext *a1, uint64_t a2, int a3)
{
  CGContextBeginPath(a1);
  CGContextAddPathSafe();
  if (a3)
  {
    CGContextEOClip(a1);
  }

  else
  {
    CGContextClip(a1);
  }

  CGContextBeginPath(a1);
}

void sub_276257C24(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v7 = objc_msgSend_barModelCacheForSeries_(*(a1 + 32), a2, a3, a4, a5, a2);
  v12 = objc_msgSend_series(v7, v8, v9, v10, v11);
  v17 = objc_msgSend_paragraphStyle(v7, v13, v14, v15, v16);
  v22 = objc_msgSend_renderGroupIndexSetForSeriesIndex_(*(a1 + 40), v18, v19, v20, v21, a2);
  v27 = objc_msgSend_seriesType(v12, v23, v24, v25, v26);
  v32 = objc_msgSend_elementBuilder(v27, v28, v29, v30, v31);

  v42 = 0;
  v43 = 0;
  v33 = *(a1 + 48);
  v41 = 0;
  v38 = objc_msgSend_countOfLabelsForSeries_forGroups_forBodyLayout_outNewTransforms_outNewElementSizes_outNewClipRects_outNewStrings_(v32, v34, v35, v36, v37, v12, v22, v33, &v43, 0, &v42, &v41);
  v39 = v41;
  objc_msgSend_p_renderLabelsWithLabelCount_transforms_clipRects_strings_context_tLayerRect_groupedShadows_groupedTransparencyLayerOpened_textEngine_paragraphStyle_viewScale_(*(a1 + 56), v40, *(a1 + 88), *(a1 + 96), *(a1 + 104), v38, v43, v42, v39, *(a1 + 80), *(a1 + 128), *(a1 + 112), *(a1 + 120), *(*(a1 + 72) + 8) + 24, *(a1 + 64), v17);
  if (v43)
  {
    free(v43);
  }

  if (v42)
  {
    free(v42);
  }
}

void sub_276257D74(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v7 = objc_msgSend_barModelCacheForSeries_(*(a1 + 32), a2, a3, a4, a5, a2);
  v12 = objc_msgSend_series(v7, v8, v9, v10, v11);
  v17 = objc_msgSend_renderGroupIndexSetForSeriesIndex_(*(a1 + 40), v13, v14, v15, v16, a2);
  v22 = objc_msgSend_seriesType(v12, v18, v19, v20, v21);
  v27 = objc_msgSend_elementBuilder(v22, v23, v24, v25, v26);

  objc_opt_class();
  v32 = objc_msgSend_valueAxis(v7, v28, v29, v30, v31);
  v33 = TSUDynamicCast();

  v38 = objc_msgSend_groupIndexesWhereSeriesIsLastSeries_fromRenderGroupIndexSet_(v33, v34, v35, v36, v37, v12, v17);
  if (objc_msgSend_count(v38, v39, v40, v41, v42))
  {
    v47 = objc_msgSend_intValueForProperty_defaultValue_(*(a1 + 48), v43, v44, v45, v46, 1121, 0);
    v52 = objc_msgSend_paragraphStyleAtIndex_(*(a1 + 48), v48, v49, v50, v51, v47);
    v62 = 0;
    v63 = 0;
    v53 = *(a1 + 56);
    v61 = 0;
    v58 = objc_msgSend_countOfSummaryLabelsForGroups_forBodyLayout_outNewTransforms_outNewElementSizes_outNewClipRects_outNewStrings_(v27, v54, v55, v56, v57, v38, v53, &v63, 0, &v62, &v61);
    v59 = v61;
    objc_msgSend_p_renderLabelsWithLabelCount_transforms_clipRects_strings_context_tLayerRect_groupedShadows_groupedTransparencyLayerOpened_textEngine_paragraphStyle_viewScale_(*(a1 + 64), v60, *(a1 + 96), *(a1 + 104), *(a1 + 112), v58, v63, v62, v59, *(a1 + 88), *(a1 + 136), *(a1 + 120), *(a1 + 128), *(*(a1 + 80) + 8) + 24, *(a1 + 72), v52);
    if (v63)
    {
      free(v63);
    }

    if (v62)
    {
      free(v62);
    }
  }
}

void sub_276258744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27625ADEC(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v7 = objc_msgSend_seriesAtIndex_(*(a1 + 32), a2, a3, a4, a5, a2);
  objc_opt_class();
  v12 = objc_msgSend_seriesType(v7, v8, v9, v10, v11);
  v17 = objc_msgSend_elementBuilder(v12, v13, v14, v15, v16);
  v18 = TSUDynamicCast();

  if (!v18)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "[TSCHChartAbstractLineElementsRenderer symbolTransformsForRenderingElements]_block_invoke");
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartLineElementsRenderer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v30, v31, v32, v33, v24, v29, 203, 0, "invalid nil value for '%{public}s'", "elementBuilder");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
  }

  v57 = 0;
  v58 = 0;
  v38 = objc_msgSend_renderGroupIndexSetForSeriesIndex_(*(a1 + 40), v19, v20, v21, v22, a2);
  v43 = objc_msgSend_countOfPointsForSeries_forGroups_forBodyLayout_outElementSize_outClipRect_outUnitSymbolPath_outNewTransformArray_outNewGroupIndexArray_(v18, v39, v40, v41, v42, v7, v38, *(a1 + 48), 0, 0, &v57, &v58, 0);

  if (v43)
  {
    v45 = 0;
    do
    {
      v46 = *(a1 + 56);
      v47 = *(v58 + v45);
      v48 = *(v58 + v45 + 32);
      v55 = *(v58 + v45 + 16);
      v56 = v48;
      v54 = v47;
      v49 = objc_msgSend_valueWithCGAffineTransform_(MEMORY[0x277CCAE60], v44, *&v47, *&v55, *&v48, &v54);
      objc_msgSend_addObject_(v46, v50, v51, v52, v53, v49);

      v45 += 48;
      --v43;
    }

    while (v43);
  }

  if (v58)
  {
    free(v58);
  }
}

uint64_t sub_27625B750(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_27625B768(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v9 = objc_msgSend_renderGroupIndexSetForSeriesIndex_(*(a1 + 32), v5, v6, v7, v8, a2);
  v235[0] = 0;
  if (objc_msgSend_count(v9, v10, v11, v12, v13))
  {
    v18 = objc_msgSend_seriesAtIndex_(*(a1 + 40), v14, v15, v16, v17, a2);
    if (!objc_msgSend_renderSeriesForClass_(v18, v19, v20, v21, v22, *(a1 + 72)) || !objc_msgSend_renderElements(*(a1 + 32), v23, v24, v25, v26))
    {
LABEL_82:

      goto LABEL_83;
    }

    v212 = v4;
    v216 = a2;
    v31 = objc_msgSend_lineAreaModelCacheForSeries_(*(a1 + 40), v27, v28, v29, v30, a2);
    objc_opt_class();
    v36 = objc_msgSend_seriesType(v18, v32, v33, v34, v35);
    v41 = objc_msgSend_elementBuilder(v36, v37, v38, v39, v40);
    v42 = TSUDynamicCast();

    if (!v42)
    {
      v47 = MEMORY[0x277D81150];
      v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v44, v45, v46, "[TSCHChartAbstractLineElementsRenderer p_renderIntoContext:visible:]_block_invoke");
      v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, v50, v51, v52, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartLineElementsRenderer.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v54, v55, v56, v57, v48, v53, 340, 0, "invalid nil value for '%{public}s'", "elementBuilder");

      v42 = 0;
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v58, v59, v60, v61);
    }

    if (*(a1 + 152))
    {
      v217 = 0;
    }

    else
    {
      v217 = objc_msgSend_seriesShadow(v31, v43, v44, v45, v46);
    }

    v62 = *MEMORY[0x277CBF398];
    v63 = *(MEMORY[0x277CBF398] + 16);
    v234.origin = *MEMORY[0x277CBF398];
    v234.size = v63;
    v233 = 0;
    v64 = 0uLL;
    memset(&v232[4], 0, 48);
    if (v42)
    {
      v220 = v63;
      *contexta = v62;
      objc_msgSend_transformForRenderingSeriesElementTopStrokeForSeries_forGroups_forBodyLayout_outElementSize_outClipRect_outNewElementPath_(v42, v43, v62.x, v63.width, 0.0, v18, v9, *(a1 + 48), 0, &v234, &v233);
      *v232 = *contexta;
      *&v232[2] = v220;
      path = 0;
      memset(&v230, 0, sizeof(v230));
      objc_msgSend_transformForRenderingSeriesElementForSeries_forGroups_forBodyLayout_outElementSize_outClipRect_outNewElementPath_(v42, v65, 0.0, *contexta, v66, v18, v9, *(a1 + 48), 0, v232, &path);
      v63 = v220;
      v62 = *contexta;
    }

    else
    {
      *v232 = v62;
      *&v232[2] = v63;
      path = 0;
      memset(&v230, 0, sizeof(v230));
    }

    v229.origin = v62;
    v229.size = v63;
    v227 = 0;
    v228 = 0;
    v226 = 0;
    v67 = objc_msgSend_countOfPointsForSeries_forGroups_forBodyLayout_outElementSize_outClipRect_outUnitSymbolPath_outNewTransformArray_outNewGroupIndexArray_(v42, v43, v62.x, v63.width, *&v64, v18, v9, *(a1 + 48), 0, &v229, &v228, &v227, &v226);
    v72 = objc_msgSend_showLabelsInFront(v31, v68, v69, v70, v71);
    if (v226)
    {
      v77 = v72;
    }

    else
    {
      v77 = 1;
    }

    v221 = v77;
    if (((objc_msgSend_renderLabels(*(a1 + 32), v73, v74, v75, v76) & 1) != 0 || !v221) && objc_msgSend_showValueLabels(v31, v78, v79, v80, v81))
    {
      if (!*(*(*(a1 + 64) + 8) + 40))
      {
        v82 = objc_alloc_init(MEMORY[0x277CCAB58]);
        v83 = *(*(a1 + 64) + 8);
        v84 = *(v83 + 40);
        *(v83 + 40) = v82;
      }

      if (v221)
      {
        objc_msgSend_addIndex_(*(*(*(a1 + 64) + 8) + 40), v78, v79, v80, v81, v216);
      }
    }

    v213 = objc_msgSend_seriesFill(v31, v78, v79, v80, v81);
    v89 = objc_msgSend_seriesStroke(v31, v85, v86, v87, v88);
    if (*(a1 + 152) == 1)
    {
      v94 = v89;
      if (v89 && (objc_msgSend_shouldRender(v89, v90, v91, v92, v93) & 1) != 0)
      {
        v214 = v94;
      }

      else
      {
        v95 = MEMORY[0x277D803C0];
        v96 = objc_msgSend_blackColor(MEMORY[0x277D81180], v90, v91, v92, v93);
        v100 = objc_msgSend_strokeWithColor_width_(v95, v97, 1.0, v98, v99, v96);

        v214 = v100;
      }
    }

    else
    {
      v214 = v89;
    }

    v101 = objc_msgSend_seriesType(v18, v90, v91, v92, v93);
    v102 = v18;
    v107 = objc_msgSend_intValueForProperty_defaultValue_(v102, v103, v104, v105, v106, 1179, 0);
    v208 = v101;
    v113 = objc_msgSend_defaultSymbolType(v101, v108, v109, v110, v111);
    if (v107)
    {
      v113 = objc_msgSend_intValueForProperty_defaultValue_(v102, v112, v114, v115, v116, 1190, v113);
    }

    LODWORD(v121) = 1;
    if (path && v213 && objc_msgSend_symbolTypeIsClosed_(v42, v117, v118, v119, v120, v113) && !CGRectIsNull(*v232) && !CGPathIsEmpty(path))
    {
      objc_msgSend_p_setupContextForRendering_layerRect_modelCache_shadow_outDidEnableTransparencyLayer_(*(a1 + 56), v117, *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 80), v31, v217, v235, *(a1 + 112));
      memset(&v225, 0, sizeof(v225));
      v123 = *(a1 + 56);
      if (v123)
      {
        v124 = *(a1 + 80);
        transform = v230;
        objc_msgSend_p_adjustTransformForAADefeatInContext_inTransform_forSeriesShape_inBodyBounds_(v123, v122, *(a1 + 120), *(a1 + 128), *(a1 + 136), v124, &transform, path, *(a1 + 144));
      }

      CGContextSaveGState(*(a1 + 80));
      sub_27628CB34(*(a1 + 80), *(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 144), 0.0);
      CGContextClipToRectSafe();
      v125 = *(a1 + 80);
      transform = v225;
      CGContextConcatCTM(v125, &transform);
      CGContextClipToRectSafe();
      objc_msgSend_drawFill_inContext_path_(TSCHRenderUtilities, v126, v127, v128, v129, v213, *(a1 + 80), path);
      if (*(a1 + 152) == 1)
      {
        objc_msgSend_paintPath_inContext_(v214, v130, v131, v132, v133, path, *(a1 + 80));
      }

      CGContextRestoreGState(*(a1 + 80));
      LODWORD(v121) = 0;
    }

    v135 = objc_msgSend_lineType(v31, v117, v118, v119, v120);
    v209 = v42;
    if (v214 && objc_msgSend_shouldRender(v214, v134, v136, v137, v138) && v135)
    {
      v139 = v67;
      if (v233 && !CGRectIsNull(v234) && !CGPathIsEmpty(v233))
      {
        if (v121)
        {
          objc_msgSend_p_setupContextForRendering_layerRect_modelCache_shadow_outDidEnableTransparencyLayer_(*(a1 + 56), v134, *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 80), v31, v217, v235, *(a1 + 112));
        }

        CGContextSaveGState(*(a1 + 80));
        v225 = *&v232[4];
        v236 = CGRectApplyAffineTransform(v234, &v225);
        x = v236.origin.x;
        y = v236.origin.y;
        width = v236.size.width;
        height = v236.size.height;
        if (!CGRectIsNull(v229) && v135 == 2)
        {
          v237.origin.x = x;
          v237.origin.y = y;
          v237.size.width = width;
          v237.size.height = height;
          CGRectInset(v237, -v229.size.width, -v229.size.height);
        }

        CGContextClipToRectSafe();
        objc_msgSend_p_clipOutSymbolsInContext_withTransformArray_withCount_forSeries_(*(a1 + 56), v144, v145, v146, v147, *(a1 + 80), v227, v67, v102);
        CGContextBeginPath(*(a1 + 80));
        v148 = *(a1 + 80);
        v225 = *&v232[4];
        CGContextConcatCTM(v148, &v225);
        objc_msgSend_applyToContext_(v214, v149, v150, v151, v152, *(a1 + 80));
        CGContextAddPathSafe();
        CGContextStrokePath(*(a1 + 80));
        CGContextRestoreGState(*(a1 + 80));
        LODWORD(v121) = 0;
      }
    }

    else
    {
      v139 = v67;
    }

    v153 = objc_msgSend_symbolFill(v31, v134, v136, v137, v138);
    v218 = objc_msgSend_symbolStroke(v31, v154, v155, v156, v157);
    v211 = v9;
    if (*(a1 + 152) == 1)
    {
      if (v218 && (objc_msgSend_shouldRender(v218, v158, v159, v160, v161) & 1) != 0)
      {
        goto LABEL_60;
      }

      if (v121)
      {
        objc_msgSend_p_setupContextForRendering_layerRect_modelCache_shadow_outDidEnableTransparencyLayer_(*(a1 + 56), v158, *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 80), v31, v217, v235, *(a1 + 112));
      }

      v162 = MEMORY[0x277D803C0];
      v121 = objc_msgSend_blackColor(MEMORY[0x277D81180], v158, v159, v160, v161);
      v166 = objc_msgSend_strokeWithColor_width_(v162, v163, 1.0, v164, v165, v121);

      LOBYTE(v121) = 0;
      v218 = v166;
    }

    if (!v218)
    {
      v218 = 0;
      shouldRender = 0;
LABEL_62:
      v210 = v18;
      if (v227 && v139)
      {
        v168 = 0;
        v169 = 0;
        v215 = v139;
        do
        {
          context = objc_autoreleasePoolPush();
          if (v121)
          {
            objc_msgSend_p_setupContextForRendering_layerRect_modelCache_shadow_outDidEnableTransparencyLayer_(*(a1 + 56), v170, *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 80), v31, v217, v235, *(a1 + 112));
          }

          memset(&v225.c, 0, 32);
          *&v225.a = 0u;
          v172 = *(v227 + v168 + 16);
          v171 = *(v227 + v168 + 32);
          *&v225.a = *(v227 + v168);
          *&v225.c = v172;
          *&v225.tx = v171;
          CGContextSaveGState(*(a1 + 80));
          CopyByTransformingPathSafe = CGPathCreateCopyByTransformingPathSafe();
          v178 = CopyByTransformingPathSafe;
          if (v153)
          {
            PathBoundingBox = CGPathGetPathBoundingBox(CopyByTransformingPathSafe);
            v239 = CGContextConvertRectToDeviceSpace(*(a1 + 80), PathBoundingBox);
            objc_msgSend_integralFillRenderingRectFromElementRect_(TSCHRenderUtilities, v179, v239.origin.x, v239.origin.y, v239.size.width, v239.size.height);
            v241 = CGContextConvertRectToUserSpace(*(a1 + 80), v240);
            v180 = v241.origin.x;
            v181 = v241.origin.y;
            v182 = v241.size.width;
            v183 = v241.size.height;
            CGContextSaveGState(*(a1 + 80));
            CGContextBeginPath(*(a1 + 80));
            CGContextAddPathSafe();
            CGContextClip(*(a1 + 80));
            v184 = sub_2762A1EB8(v153, *(a1 + 80), v180, v181, v182, v183);

            objc_msgSend_drawFill_inContext_frame_(TSCHRenderUtilities, v185, v180, v181, v182, v184, *(a1 + 80), v183);
            CGContextRestoreGState(*(a1 + 80));
            v153 = v184;
          }

          if (shouldRender)
          {
            objc_msgSend_applyToContext_(v218, v174, v175, v176, v177, *(a1 + 80));
            CGContextBeginPath(*(a1 + 80));
            CGContextAddPathSafe();
            CGContextStrokePath(*(a1 + 80));
          }

          CGPathRelease(v178);
          if ((v221 & 1) == 0)
          {
            v190 = *(a1 + 80);
            v191 = shouldRender;
            v192 = v31;
            v193 = *(a1 + 40);
            v219 = v153;
            v195 = *(a1 + 48);
            v194 = *(a1 + 56);
            objc_msgSend_indexSetWithIndex_(MEMORY[0x277CCAA78], v186, v187, v188, v189, *(v226 + v169));
            v197 = v196 = v168;
            v198 = v193;
            v31 = v192;
            shouldRender = v191;
            v199 = v195;
            v139 = v215;
            v153 = v219;
            objc_msgSend_p_renderLabelsIntoContext_seriesIndex_model_modelCache_bodyLayoutItem_groupIndexSet_(v194, v200, v201, v202, v203, v190, v216, v198, v31, v199, v197);

            v168 = v196;
          }

          CGContextRestoreGState(*(a1 + 80));
          objc_autoreleasePoolPop(context);
          LOBYTE(v121) = 0;
          if (!v227)
          {
            break;
          }

          ++v169;
          v168 += 48;
        }

        while (v169 < v139);
      }

      CGPathRelease(path);
      CGPathRelease(v233);
      if (v227)
      {
        free(v227);
        v227 = 0;
      }

      v18 = v210;
      v9 = v211;
      if (v226)
      {
        free(v226);
        v226 = 0;
      }

      if ((v121 & 1) == 0)
      {
        objc_msgSend_p_finishContextAfterRendering_modelCache_didEnableTransparencyLayer_(*(a1 + 56), v204, v205, v206, v207, *(a1 + 80), v31, v235[0]);
      }

      v4 = v212;
      goto LABEL_82;
    }

LABEL_60:
    shouldRender = objc_msgSend_shouldRender(v218, v158, v159, v160, v161);
    goto LABEL_62;
  }

LABEL_83:

  objc_autoreleasePoolPop(v4);
}

void sub_27625C178(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v28 = objc_msgSend_seriesAtIndex_(*(a1 + 32), a2, a3, a4, a5, a2);
  if (objc_msgSend_renderSeriesForClass_(v28, v7, v8, v9, v10, *(a1 + 64)))
  {
    v15 = objc_msgSend_lineAreaModelCacheForSeries_(*(a1 + 32), v11, v12, v13, v14, a2);
    if (objc_msgSend_showValueLabels(v15, v16, v17, v18, v19) && ((objc_msgSend_showLabelsInFront(v15, v20, v21, v22, v23) & 1) != 0 || objc_msgSend_requireSeparateLabelLayer(*(a1 + 40), v24, v25, v26, v27)))
    {
      objc_msgSend_p_renderLabelsIntoContext_seriesIndex_model_modelCache_bodyLayoutItem_groupIndexSet_(*(a1 + 48), v24, v25, v26, v27, *(a1 + 72), a2, *(a1 + 32), v15, *(a1 + 56), 0);
    }
  }
}

void sub_27625C234(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v7 = objc_msgSend_seriesAtIndex_(*(a1 + 32), a2, a3, a4, a5, a2);
  v12 = objc_msgSend_model(v7, v8, v9, v10, v11);
  v17 = objc_msgSend_chart(v12, v13, v14, v15, v16);

  v22 = objc_msgSend_seriesType(v7, v18, v19, v20, v21);
  v27 = objc_msgSend_elementBuilder(v22, v23, v24, v25, v26);

  objc_opt_class();
  v32 = objc_msgSend_layoutItem(*(a1 + 40), v28, v29, v30, v31);
  v33 = TSUDynamicCast();

  v38 = objc_msgSend_renderGroupIndexSetForSeriesIndex_(*(a1 + 48), v34, v35, v36, v37, a2);
  objc_opt_class();
  v43 = objc_msgSend_axisForAxisType_(v7, v39, v40, v41, v42, 2);
  v44 = TSUDynamicCast();

  v49 = objc_msgSend_groupIndexesWhereSeriesIsLastSeries_fromRenderGroupIndexSet_(v44, v45, v46, v47, v48, v7, v38);
  if (objc_msgSend_count(v49, v50, v51, v52, v53))
  {
    v85 = v44;
    v86 = v38;
    v58 = objc_msgSend_intValueForProperty_defaultValue_(v17, v54, v55, v56, v57, 1121, 0);
    v89 = v17;
    v84 = objc_msgSend_paragraphStyleAtIndex_(v17, v59, v60, v61, v62, v58);
    v91 = 0;
    v92 = 0;
    v90 = 0;
    v87 = v33;
    v88 = v27;
    v67 = objc_msgSend_countOfSummaryLabelsForGroups_forBodyLayout_outNewTransforms_outNewElementSizes_outNewClipRects_outNewStrings_(v27, v63, v64, v65, v66, v49, v33, &v92, 0, &v91, &v90);
    v68 = v90;
    v69 = *(a1 + 40);
    v71 = v91;
    v70 = v92;
    v72 = *(a1 + 56);
    v77 = objc_msgSend_sharedText(TSCHText, v73, v74, v75, v76);
    objc_msgSend_viewScale(*(a1 + 40), v78, v79, v80, v81);
    objc_msgSend_p_renderLabelsWithLabelCount_transforms_clipRects_strings_context_tLayerRect_textEngine_paragraphStyle_viewScale_(v69, v82, *(a1 + 64), *(a1 + 72), *(a1 + 80), v67, v70, v71, v68, v72, v77, *(a1 + 88), v83, v84);

    if (v92)
    {
      free(v92);
    }

    if (v91)
    {
      free(v91);
    }

    v27 = v88;
    v17 = v89;
    v38 = v86;
    v33 = v87;
    v44 = v85;
  }
}

void sub_27625DA84(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (objc_msgSend_p_shouldRenderSeriesIndex_(*(a1 + 32), v5, v6, v7, v8, a2))
  {
    v13 = objc_msgSend_pieSeriesModelCacheForSeries_(*(a1 + 40), v9, v10, v11, v12, a2);
    v18 = objc_msgSend_series(v13, v14, v15, v16, v17);
    objc_opt_class();
    v23 = objc_msgSend_seriesType(v18, v19, v20, v21, v22);
    v28 = objc_msgSend_elementBuilder(v23, v24, v25, v26, v27);
    v29 = TSUDynamicCast();

    if (!v13 || !v29)
    {
      goto LABEL_41;
    }

    v204 = *MEMORY[0x277CBF3A8];
    v184 = v204;
    v188 = *(MEMORY[0x277CBF398] + 16);
    v203.origin = *MEMORY[0x277CBF398];
    origin = v203.origin;
    v203.size = v188;
    v202 = *MEMORY[0x277CBF348];
    v181 = v202;
    v176 = *(MEMORY[0x277CBF2C0] + 16);
    v199 = *MEMORY[0x277CBF2C0];
    v178 = v199;
    v200 = v176;
    v201 = *(MEMORY[0x277CBF2C0] + 32);
    v175 = v201;
    v32 = objc_msgSend_newElementPathInBody_forSeries_outTransform_outElementSize_outClipRect_outWedgeCenterPoint_outSelectionKnobLocations_withInnerRadius_(v29, v30, *&v201, v176.width, v31, *(a1 + 48), v18, &v199, &v204, &v203, &v202, 0, &unk_28856ECF0);
    v197.size = v188;
    v198 = v184;
    v196 = v181;
    v197.origin = origin;
    v193 = v178;
    v194 = v176;
    v195 = v175;
    v34 = objc_msgSend_chartInfo(*(a1 + 40), v33, *&v175, v176.width, origin.x);
    v39 = objc_msgSend_valueForProperty_(v34, v35, v36, v37, v38, 1103);

    v44 = objc_msgSend_newElementPathInBody_forSeries_outTransform_outElementSize_outClipRect_outWedgeCenterPoint_outSelectionKnobLocations_withInnerRadius_(v29, v40, v41, v42, v43, *(a1 + 48), v18, &v193, &v198, &v197, &v196, 0, v39);
    v45 = *(a1 + 64);
    v190 = v193;
    v191 = v194;
    v192 = v195;
    v46 = sub_27625E1DC(v45, &v190, v44);
    v47 = *(a1 + 64);
    v190 = v199;
    v191 = v200;
    v192 = v201;
    v48 = sub_27625E1DC(v47, &v190, v32);
    CGPathGetPathBoundingBox(v46);
    PathBoundingBox = CGPathGetPathBoundingBox(v48);
    x = PathBoundingBox.origin.x;
    y = PathBoundingBox.origin.y;
    width = PathBoundingBox.size.width;
    height = PathBoundingBox.size.height;
    if ((TSUNearlyContainsRect() & 1) == 0)
    {
      v185 = v4;
      v182 = v29;
      v179 = v18;
      v57 = v32;
      v58 = v46;
      v59 = MEMORY[0x277D81150];
      v60 = v39;
      objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, v54, v55, v56, "[TSCHChartRadialElementsRenderer p_renderIntoContext:visible:]_block_invoke");
      v62 = v61 = v48;
      v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, v64, v65, v66, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartRadialElementsRenderer.m");
      v68 = v59;
      v46 = v58;
      v32 = v57;
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v68, v69, v70, v71, v72, v62, v67, 424, 0, "fullWedgePathBounds does not contain wedgePathBounds");

      v39 = v60;
      v48 = v61;
      v18 = v179;
      v29 = v182;
      v4 = v185;
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v73, v74, v75, v76);
    }

    CGPathRelease(v44);
    CGPathRelease(v32);
    if (v46)
    {
      IsNull = CGRectIsNull(v197);
      if (v48 && !IsNull && !CGRectIsNull(v203))
      {
        v82 = objc_msgSend_seriesStroke(v13, v78, v79, v80, v81);
        v88 = objc_msgSend_seriesFill(v13, v83, v84, v85, v86);
        v177 = v46;
        if (*(a1 + 120) != 1 || v82 && (objc_msgSend_shouldRender(v82, v87, v89, v90, v91) & 1) != 0)
        {
          v183 = v82;
        }

        else
        {
          v92 = MEMORY[0x277D803C0];
          objc_msgSend_blackColor(MEMORY[0x277D81180], v87, v89, v90, v91);
          v93 = v186 = v48;
          v97 = objc_msgSend_strokeWithColor_width_(v92, v94, 1.0, v95, v96, v93);

          v48 = v186;
          v183 = v97;
        }

        v98 = v48;
        v99 = 1.0;
        if ((*(a1 + 120) & 1) == 0)
        {
          objc_msgSend_seriesOpacity(v13, v87, 1.0, v90, v91);
        }

        v180 = v99;
        v100 = objc_msgSend_chartInfo(*(a1 + 32), v87, v99, v90, v91);
        objc_msgSend_rootedLayoutRect(*(a1 + 48), v101, v102, v103, v104);
        v106 = v105;
        v108 = v107;
        v110 = v109;
        v112 = v111;
        v114 = objc_msgSend_chartInfo(*(a1 + 32), v113, v105, v107, v109);
        objc_msgSend_maximumExplosion(v114, v115, v116, v117, v118);
        LODWORD(v120) = v119;
        objc_msgSend_radiusForFrame_withMaxExplosion_(v100, v121, v106, v108, v110, v112, v120);
        v123 = v122;

        v124 = sub_2762A1E88(*(a1 + 64), v123, v123);
        objc_msgSend_endAngle(v13, v125, v124, v126, v127);
        v129 = v128;
        objc_msgSend_startAngle(v13, v130, v128, v131, v132);
        v134 = v129 - v133;
        if (v134 < 0.0)
        {
          v134 = -v134;
        }

        v187 = sub_2762A1F9C(v88, v124 * v134 * 0.5);

        if (*(a1 + 121) == 1)
        {
          CGContextSaveGState(*(a1 + 64));
          v141 = v177;
          v142 = v98;
          if ((*(a1 + 122) & 1) == 0 && (*(a1 + 120) & 1) == 0)
          {
            v143 = objc_msgSend_seriesShadow(v13, v137, v138, v139, v140);
            v144 = *(a1 + 64);
            v145 = *(a1 + 72);
            v150 = sub_27631FD2C(v144, v146, v147, v148, v149);
            v151 = v144;
            v142 = v98;
            objc_msgSend_applyToContext_viewScale_flipped_(v143, v152, v145, v153, v154, v151, v150);

            v141 = v177;
            CGContextBeginTransparencyLayerWithRect(*(a1 + 64), *(a1 + 80), 0);
          }

          v155 = v183;
          objc_msgSend_p_drawWedgePathIntoContext_path_fill_stroke_opacity_withinBounds_(*(a1 + 32), v137, v180, x, y, *(a1 + 64), v141, v187, v183, width, height);
          if ((*(a1 + 122) & 1) == 0 && (*(a1 + 120) & 1) == 0)
          {
            CGContextEndTransparencyLayer(*(a1 + 64));
          }

          CGContextRestoreGState(*(a1 + 64));
        }

        else
        {
          v190 = origin;
          v191 = v188;
          v141 = v177;
          v142 = v98;
          if (*(a1 + 120))
          {
            v156 = 0;
            v157 = objc_msgSend_p_newPreRenderedImageWithContext_wedgePath_fullWedgePath_fill_stroke_shadow_outUserSpaceLayerBounds_(*(a1 + 32), v135, v188.width, origin.x, v136, *(a1 + 64), v177, v142, v187, v183, 0, &v190);
          }

          else
          {
            v156 = objc_msgSend_seriesShadow(v13, v135, v188.width, origin.x, v136);
            v157 = objc_msgSend_p_newPreRenderedImageWithContext_wedgePath_fullWedgePath_fill_stroke_shadow_outUserSpaceLayerBounds_(*(a1 + 32), v162, v163, v164, v165, *(a1 + 64), v177, v142, v187, v183, v156, &v190);
          }

          v166 = v157;
          if (*(a1 + 122) == 1)
          {
            if (objc_msgSend_renderElementsShadowOnly(*(a1 + 56), v158, v159, v160, v161))
            {
              objc_msgSend_p_drawOnlyShadow_forImage_intoRect_intoContext_atViewScale_usingBlendMode_opacity_(*(a1 + 32), v167, v190.x, v190.y, v191.width, v156, v166, *(a1 + 64), 0, v191.height, *(a1 + 72), v180);
            }

            else
            {
              objc_msgSend_renderElementsWithoutShadows(*(a1 + 56), v167, v168, v169, v170);
              objc_msgSend_p_drawOnlyShapeImage_intoRect_intoContext_usingBlendMode_opacity_(*(a1 + 32), v174, v190.x, v190.y, v191.width, v166, *(a1 + 64), 27, v191.height, v180);
            }
          }

          else
          {
            objc_msgSend_p_drawOnlyShadow_forImage_intoRect_intoContext_atViewScale_usingBlendMode_opacity_(*(a1 + 32), v158, v190.x, v190.y, v191.width, v156, v157, *(a1 + 112), 0, v191.height, *(a1 + 72), v180);
            objc_msgSend_p_drawOnlyShadow_forImage_intoRect_intoContext_atViewScale_usingBlendMode_opacity_(*(a1 + 32), v171, v190.x, v190.y, v191.width, v156, v166, *(a1 + 64), 23, v191.height, *(a1 + 72), v180);
            objc_msgSend_p_drawOnlyShapeImage_intoRect_intoContext_usingBlendMode_opacity_(*(a1 + 32), v172, v190.x, v190.y, v191.width, v166, *(a1 + 64), 27, v191.height, v180);
            objc_msgSend_p_drawOnlyShapeImage_intoRect_intoContext_usingBlendMode_opacity_(*(a1 + 32), v173, v190.x, v190.y, v191.width, v166, *(a1 + 112), 23, v191.height, v180);
          }

          CGLayerRelease(v166);

          v155 = v183;
        }

        CGPathRelease(v141);
        CGPathRelease(v142);

        goto LABEL_40;
      }

      CGPathRelease(v46);
    }

    if (v48)
    {
      CGPathRelease(v48);
    }

LABEL_40:

LABEL_41:
  }

  objc_autoreleasePoolPop(v4);
}

CGMutablePathRef sub_27625E1DC(CGContext *a1, _OWORD *a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v4 = a2[1];
  *&v21.a = *a2;
  *&v21.c = v4;
  *&v21.tx = a2[2];
  if (a1)
  {
    a = v21.a;
    b = v21.b;
    c = v21.c;
    d = v21.d;
    tx = v21.tx;
    ty = v21.ty;
    TSURectWithOriginAndSize();
    sub_27628CB34(a1, v11, v12, v13, v14, 0.0);
    v19 = v21;
    CGAffineTransformInvert(&v20, &v19);
    TSUSubtractPoints();
    v20.a = a;
    v20.b = b;
    v20.c = c;
    v20.d = d;
    v20.tx = tx;
    v20.ty = ty;
    CGAffineTransformTranslate(&v21, &v20, v15, v16);
  }

  Mutable = CGPathCreateMutable();
  CGPathAddPathSafe();
  return Mutable;
}

void sub_27625E308(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  if (objc_msgSend_p_shouldRenderSeriesIndex_(*(a1 + 32), a2, a3, a4, a5, a2))
  {
    v11 = objc_msgSend_wedgeLayoutInfosInChartCoordinateSpaceForSeriesIndex(*(a1 + 40), v7, v8, v9, v10);
    v16 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v12, v13, v14, v15, a2);
    v21 = objc_msgSend_objectForKeyedSubscript_(v11, v17, v18, v19, v20, v16);

    v26 = objc_msgSend_model(*(a1 + 32), v22, v23, v24, v25);
    v31 = objc_msgSend_seriesAtIndex_(v26, v27, v28, v29, v30, a2);

    v36 = objc_msgSend_objectValueForProperty_(v31, v32, v33, v34, v35, 1133);
    v42 = objc_msgSend_stroke(MEMORY[0x277D803C0], v37, v38, v39, v40);
    v214 = v36;
    if (!v36)
    {
      v46 = MEMORY[0x277D803C0];
      v47 = objc_msgSend_blackColor(MEMORY[0x277D81180], v41, v43, v44, v45);
      v214 = objc_msgSend_strokeWithColor_width_(v46, v48, 0.5, v49, v50, v47);
    }

    objc_msgSend_viewScale(*(a1 + 32), v41, v43, v44, v45);
    v52 = v51;
    TSDCGContextAssociatedScreenScale();
    v54 = v52 * v53;
    *&v54 = v54;
    v55 = *(a1 + 40);
    v216 = 0;
    v217[0] = 0;
    v215 = v42;
    started = objc_msgSend_newPathsForRenderingCalloutLineForSeries_outStartLineEndPath_outEndLineEndPath_stroke_outStroke_context_contextScale_(v55, v56, v54, v57, v58, a2, v217, &v216, v214, &v215, *(a1 + 56));
    v60 = v217[0];
    v61 = v216;
    v62 = v215;

    v213 = v60;
    if (started)
    {
      v207 = objc_msgSend_objectValueForProperty_(v31, v63, v64, v65, v66, 1132);
      v71 = objc_msgSend_objectValueForProperty_(v31, v67, v68, v69, v70, 1131);
      v209 = *(a1 + 56);
      v211 = *(a1 + 32);
      v72 = started;
      v208 = objc_msgSend_CGPath(v72, v73, v74, v75, v76);
      v77 = v60;
      v206 = objc_msgSend_CGPath(v77, v78, v79, v80, v81);
      v82 = v61;
      v87 = v31;
      v88 = v21;
      v89 = objc_msgSend_CGPath(v82, v83, v84, v85, v86);
      isFilled = objc_msgSend_isFilled(v207, v90, v91, v92, v93);
      v99 = objc_msgSend_isFilled(v71, v95, v96, v97, v98);
      v100 = v89;
      v21 = v88;
      v31 = v87;
      objc_msgSend_p_drawLinePathsIntoContext_linePath_tailPath_headPath_fillTail_fillHead_stroke_(v211, v101, v102, v103, v104, v209, v208, v206, v100, isFilled, v99, v62);
    }

    v210 = v61;
    v212 = v62;
    v105 = objc_msgSend_pieSeriesModelCacheForSeries_(*(a1 + 48), v63, v64, v65, v66, a2);
    v110 = objc_msgSend_paragraphStyle(v105, v106, v107, v108, v109);
    v115 = objc_msgSend_intValueForProperty_defaultValue_(v31, v111, v112, v113, v114, 1138, 2);
    v120 = objc_msgSend_chartInfo(v31, v116, v117, v118, v119);
    v125 = v120;
    if (v115 || (objc_msgSend_chartType(v120, v121, v122, v123, v124), v126 = objc_claimAutoreleasedReturnValue(), v131 = objc_msgSend_supportsInnerRadius(v126, v127, v128, v129, v130), v126, v131))
    {
      objc_msgSend_combinedLabelRectMidpointInChartCoordinateSpace(v21, v121, v122, v123, v124);
      v136 = objc_msgSend_wedgeElement(v21, v132, v133, v134, v135);
      objc_msgSend_pointAtWedgeTipInChartCoordinateSpace(v136, v137, v138, v139, v140);
      TSUDistance();
      v142 = v141;

      v147 = objc_msgSend_wedgeElement(v21, v143, v144, v145, v146);
      objc_msgSend_radius(v147, v148, v149, v150, v151);
      v153 = v152;

      if (v142 >= v153)
      {
        v175 = 1169;
      }

      else
      {
        v158 = objc_msgSend_chartType(v125, v154, v155, v156, v157);
        v163 = objc_msgSend_supportsInnerRadius(v158, v159, v160, v161, v162);

        if (v163)
        {
          v164 = objc_msgSend_valueForProperty_(v125, v154, v155, v156, v157, 1103);
          objc_msgSend_floatValue(v164, v165, v166, v167, v168);
          v173 = v172;
          v174 = v153 * v173;
          v175 = 1169;
          if (v142 > v153 * v173)
          {
            objc_msgSend_combinedLabelRectInChartCoordinateSpace(v21, v169, v173, v170, v171);
            v177 = v176;
            v179 = v178;
            v181 = v180;
            v183 = v182;
            v185 = objc_msgSend_wedgeElement(v21, v184, v176, v178, v180);
            objc_msgSend_pointAtWedgeTipInChartCoordinateSpace(v185, v186, v187, v188, v189);
            v191 = v190;
            v193 = v192;

            objc_msgSend_p_calculateIntersectionAreaForRectangle_circleCenter_circleRadius_(*(a1 + 32), v194, v177, v179, v181, v183, v191, v193, v153);
            v196 = v195;
            objc_msgSend_p_calculateIntersectionAreaForRectangle_circleCenter_circleRadius_(*(a1 + 32), v197, v177, v179, v181, v183, v191, v193, v174);
            if (v196 - v198 >= v181 * v183 * 0.65)
            {
              v175 = 1164;
            }

            else
            {
              v175 = 1169;
            }
          }
        }

        else
        {
          v175 = 1164;
        }
      }

      v199 = v213;
      v200 = objc_msgSend_intValueForProperty_defaultValue_(v31, v154, v155, v156, v157, v175, 0);
      v205 = objc_msgSend_paragraphStyleAtIndex_(v125, v201, v202, v203, v204, v200);

      v110 = v205;
    }

    else
    {
      v199 = v213;
    }

    objc_msgSend_renderLabelsWithWedgeLayoutInfo_paragraphStyle_context_(*(a1 + 32), v121, v122, v123, v124, v21, v110, *(a1 + 56));
  }
}

void sub_27625EFC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27625EFE0(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), a2, a3, a4, a5, a2);
  objc_opt_class();
  v11 = objc_msgSend_seriesType(v6, v7, v8, v9, v10);
  v16 = objc_msgSend_elementBuilder(v11, v12, v13, v14, v15);
  v17 = TSUDynamicCast();

  if (v17)
  {
    v46 = 0;
    v22 = objc_msgSend_countOfElementsInSeries_forGroups_forBodyLayout_outNewElementBounds_outNewClipRects_outNewElementPaths_outSelectionKnobLocations_forHighlightPath_(v17, v18, v19, v20, v21, v6, 0, *(a1 + 40), 0, &v46, 0, 0, 0);
    v44 = 0;
    v45 = 0;
    v27 = objc_msgSend_countOfLabelsForSeries_forGroups_forBodyLayout_outNewTransforms_outNewElementSizes_outNewClipRects_outNewStrings_(v17, v23, v24, v25, v26, v6, 0, *(a1 + 40), &v44, 0, &v45, 0);
    if (v22)
    {
      v28 = 0;
      do
      {
        if (CGRectIsNull(*(*(*(a1 + 48) + 8) + 32)))
        {
          v29 = *(v46 + v28);
          v30 = *(v46 + v28 + 16);
        }

        else
        {
          *&v29 = CGRectUnion(*(*(*(a1 + 48) + 8) + 32), *(v46 + v28));
          *(&v30 + 1) = v31;
          *(&v29 + 1) = v32;
        }

        v33 = *(*(a1 + 48) + 8);
        *(v33 + 32) = v29;
        *(v33 + 48) = v30;
        v28 += 32;
        --v22;
      }

      while (v22);
    }

    if (v27)
    {
      v34 = 0;
      v35 = 0;
      do
      {
        v47 = *(v45 + v34);
        v36 = *(v44 + v35);
        v37 = *(v44 + v35 + 32);
        *&v43.c = *(v44 + v35 + 16);
        *&v43.tx = v37;
        *&v43.a = v36;
        v48 = CGRectApplyAffineTransform(v47, &v43);
        x = v48.origin.x;
        y = v48.origin.y;
        width = v48.size.width;
        height = v48.size.height;
        if (!CGRectIsNull(*(*(*(a1 + 48) + 8) + 32)))
        {
          v50.origin.x = x;
          v50.origin.y = y;
          v50.size.width = width;
          v50.size.height = height;
          v49 = CGRectUnion(*(*(*(a1 + 48) + 8) + 32), v50);
          x = v49.origin.x;
          y = v49.origin.y;
          width = v49.size.width;
          height = v49.size.height;
        }

        v42 = *(*(a1 + 48) + 8);
        v42[4] = x;
        v42[5] = y;
        v42[6] = width;
        v42[7] = height;
        v35 += 48;
        v34 += 32;
        --v27;
      }

      while (v27);
    }

    if (v46)
    {
      free(v46);
    }

    if (v45)
    {
      free(v45);
    }

    if (v44)
    {
      free(v44);
    }
  }
}

id sub_276261320(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc(objc_opt_class());
  v13 = objc_msgSend_context(a1, v9, v10, v11, v12);
  v18 = objc_msgSend_propertyMap(v7, v14, v15, v16, v17);

  isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v8, v19, v20, v21, v22, v13, 0, v18, 0);
  objc_msgSend_addStyle_withIdentifier_(a1, v24, v25, v26, v27, isVariation, v6);

  return isVariation;
}

void sub_2762638E0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v14 = objc_msgSend_mutableCopy(a3, v6, v7, v8, v9);
  objc_msgSend_setObject_forKeyedSubscript_(*(*(a1 + 32) + 160), v10, v11, v12, v13, v14, v5);
}

void sub_276263954(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v14 = objc_msgSend_mutableCopy(a3, v6, v7, v8, v9);
  objc_msgSend_setObject_forKeyedSubscript_(*(*(a1 + 32) + 152), v10, v11, v12, v13, v14, v5);
}

id sub_276263BE4(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if (!v5)
  {
    v13 = 0;
    goto LABEL_25;
  }

  v7 = v5;
  v8 = v6;
  if (NSClassFromString(&cfstr_Tspobject.isa))
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v14 = objc_opt_class();
    if (!v14)
    {
      goto LABEL_18;
    }

    v15 = v14;
    do
    {
      v16 = NSStringFromClass(v15);
      isEqualToString = objc_msgSend_isEqualToString_(@"TSPObject", v17, v18, v19, v20, v16);

      v26 = objc_msgSend_superclass(v15, v22, v23, v24, v25);
      if (isEqualToString)
      {
        break;
      }

      v15 = v26;
    }

    while (v26);
    if (!isEqualToString)
    {
LABEL_18:
      v57 = objc_msgSend_conformsToProtocol_(v7, v9, v10, v11, v12, &unk_28856FD90);

      if (v57)
      {
        goto LABEL_19;
      }

LABEL_22:
      v62 = v7;
      goto LABEL_23;
    }
  }

  objc_opt_class();
  v27 = TSUDynamicCast();
  v32 = v27;
  if (!v8 || (objc_msgSend_context(v27, v28, v29, v30, v31), v33 = objc_claimAutoreleasedReturnValue(), v33, v33 == v8))
  {

    goto LABEL_22;
  }

  if ((objc_msgSend_conformsToProtocol_(v32, v34, v35, v36, v37, &unk_2885A4520) & 1) == 0 && (objc_opt_respondsToSelector() & 1) == 0 && (objc_opt_respondsToSelector() & 1) == 0)
  {
    v42 = MEMORY[0x277D81150];
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, v39, v40, v41, "BOOL p_retainInsteadOfCopy(id  _Nonnull __strong, TSPObjectContext * _Nonnull __strong)");
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, v45, v46, v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v49, v50, v51, v52, v43, v48, 729, 0, "Attempting to copy an object that is not a TSPCopying adopter, and doesn't provide an alternate method for copying that we know about.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54, v55, v56);
  }

LABEL_19:
  if (objc_opt_respondsToSelector())
  {
    v62 = objc_msgSend_copyFlattenedWithContext_(v7, v58, v59, v60, v61, v8);
    goto LABEL_23;
  }

  if ((objc_msgSend_conformsToProtocol_(v7, v58, v59, v60, v61, &unk_2885A4520) & 1) == 0 && (objc_opt_respondsToSelector() & 1) == 0)
  {
    v62 = objc_msgSend_copyWithZone_(v7, v83, v84, v85, v86, a2);
LABEL_23:
    v13 = v62;
    if (v62)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (v8)
  {
    v62 = objc_msgSend_copyWithContext_(v7, v83, v84, v85, v86, v8);
    goto LABEL_23;
  }

  v87 = objc_msgSend_context(v7, v83, v84, v85, v86);
  v13 = objc_msgSend_copyWithContext_(v7, v88, v89, v90, v91, v87);

  if (!v13)
  {
LABEL_24:
    v67 = MEMORY[0x277D81150];
    v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, v64, v65, v66, "id  _Nonnull p_retainOrCopyWithZoneOrContext(id  _Nonnull __strong, NSZone * _Nullable, TSPObjectContext * _Nullable __strong)");
    v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, v70, v71, v72, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v67, v74, v75, v76, v77, v68, v73, 768, 0, "invalid nil value for '%{public}s'", "retVal");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v78, v79, v80, v81);
  }

LABEL_25:

  return v13;
}

TSCHChartStyle *__cdecl sub_27626740C(TSCHChartInfo *self, SEL a2)
{
  v3 = objc_opt_class();
  style = self->_style;

  return sub_2762CD788(v3, style);
}

void sub_276267B24(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D80AA8]);
  v22 = objc_msgSend_initWithProperties_(v2, v3, v4, v5, v6, 1578, 1445, 1264, 1349, 1579, 1467, 16, 17, 0);
  v11 = objc_msgSend_paragraphStylePropertiesChartsUse(*(a1 + 32), v7, v8, v9, v10);
  objc_msgSend_addProperties_(v22, v12, v13, v14, v15, v11);

  v20 = objc_msgSend_copy(v22, v16, v17, v18, v19);
  v21 = qword_280A471C0;
  qword_280A471C0 = v20;
}

void sub_276267C20(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v5 = objc_msgSend_properties(MEMORY[0x277D80DB0], a5, a1, a2, a3);
  v20 = objc_msgSend_mutableCopy(v5, v6, v7, v8, v9);

  objc_msgSend_addProperty_(v20, v10, v11, v12, v13, 86);
  v18 = objc_msgSend_copy(v20, v14, v15, v16, v17);
  v19 = qword_280A471D0;
  qword_280A471D0 = v18;
}

void sub_276267CE0(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v27 = objc_msgSend_propertySet(MEMORY[0x277D80AA8], a5, a1, a2, a3);
  objc_msgSend_addProperty_(v27, v5, v6, v7, v8, 1258);
  objc_msgSend_addProperty_(v27, v9, v10, v11, v12, 1432);
  objc_msgSend_addProperty_(v27, v13, v14, v15, v16, 1433);
  objc_msgSend_addProperty_(v27, v17, v18, v19, v20, 1354);
  v25 = objc_msgSend_copy(v27, v21, v22, v23, v24);
  v26 = qword_280A471E0;
  qword_280A471E0 = v25;
}

void sub_276267DAC(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v23 = objc_msgSend_propertySet(MEMORY[0x277D80AA8], a5, a1, a2, a3);
  objc_msgSend_addProperty_(v23, v5, v6, v7, v8, 1235);
  objc_msgSend_addProperty_(v23, v9, v10, v11, v12, 1371);
  objc_msgSend_addProperty_(v23, v13, v14, v15, v16, 1352);
  v21 = objc_msgSend_copy(v23, v17, v18, v19, v20);
  v22 = qword_280A471F0;
  qword_280A471F0 = v21;
}

void sub_276267F30(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v5 = objc_msgSend_propertySetByAddingPropertiesFromSet_(*(a1 + 32), a2, a3, a4, a5, *(a1 + 40));
  v6 = qword_280A47200;
  qword_280A47200 = v5;
}

void sub_276267FB4(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v23 = objc_msgSend_propertySet(MEMORY[0x277D80AA8], a5, a1, a2, a3);
  objc_msgSend_addProperty_(v23, v5, v6, v7, v8, 1259);
  objc_msgSend_addProperty_(v23, v9, v10, v11, v12, 1434);
  objc_msgSend_addProperty_(v23, v13, v14, v15, v16, 1355);
  v21 = objc_msgSend_copy(v23, v17, v18, v19, v20);
  v22 = qword_280A47210;
  qword_280A47210 = v21;
}

id sub_276269510(void *a1, void *a2, unint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v11 = objc_msgSend_count(v5, v7, v8, v9, v10);
  v17 = objc_msgSend_count(v6, v12, v13, v14, v15);
  if (!v11)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v18, v19, v20, "TSCHChartSeriesStyle * _Nullable TSCHSeriesStyleForSeriesIndex(NSArray<NSObject *> * _Nullable __strong, NSArray<NSObject *> * _Nullable __strong, NSUInteger)");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v28, v29, v30, v31, v22, v27, 2321, 0, "No theme styles for this chart... how odd.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35);
  }

  if (v17 <= a3)
  {
    v36 = 0;
  }

  else
  {
    v36 = objc_msgSend_objectAtIndexedSubscript_(v6, v16, v18, v19, v20, a3);
    if (v36)
    {
      v37 = objc_msgSend_null(MEMORY[0x277CBEB68], v16, v18, v19, v20);
      isEqual = objc_msgSend_isEqual_(v37, v38, v39, v40, v41, v36);

      if (!isEqual)
      {
        v43 = objc_opt_class();
        v44 = sub_2762CD788(v43, v36);
        if (v44)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }
    }
  }

  if (!v11 || (objc_msgSend_objectAtIndexedSubscript_(v5, v16, v18, v19, v20, a3 % v11), v45 = objc_claimAutoreleasedReturnValue(), v46 = objc_opt_class(), sub_2762CD788(v46, v45), v44 = objc_claimAutoreleasedReturnValue(), v45, !v44))
  {
LABEL_11:
    v47 = MEMORY[0x277D81150];
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v18, v19, v20, "TSCHChartSeriesStyle * _Nullable TSCHSeriesStyleForSeriesIndex(NSArray<NSObject *> * _Nullable __strong, NSArray<NSObject *> * _Nullable __strong, NSUInteger)");
    v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, v50, v51, v52, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v54, v55, v56, v57, v48, v53, 2341, 0, "invalid nil value for '%{public}s'", "retVal");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v58, v59, v60, v61);
    v44 = 0;
  }

LABEL_12:

  return v44;
}

void sub_27626AD74(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v73[6] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D812A8];
  v72 = objc_msgSend_chartTypePlaceholderForDefault3DScaleProperty(TSCHChartType, a5, a1, a2, a3);
  v71 = objc_msgSend_pairWithFirst_second_(v5, v6, v7, v8, v9, v72, &unk_28856C050);
  v73[0] = v71;
  v10 = MEMORY[0x277D812A8];
  v70 = objc_msgSend_columnChart3D(TSCHChartType, v11, v12, v13, v14);
  v19 = objc_msgSend_pairWithFirst_second_(v10, v15, v16, v17, v18, v70, &unk_28856C068);
  v73[1] = v19;
  v20 = MEMORY[0x277D812A8];
  v25 = objc_msgSend_barChart3D(TSCHChartType, v21, v22, v23, v24);
  v30 = objc_msgSend_pairWithFirst_second_(v20, v26, v27, v28, v29, v25, &unk_28856C080);
  v73[2] = v30;
  v31 = MEMORY[0x277D812A8];
  v36 = objc_msgSend_lineChart3D(TSCHChartType, v32, v33, v34, v35);
  v41 = objc_msgSend_pairWithFirst_second_(v31, v37, v38, v39, v40, v36, &unk_28856C098);
  v73[3] = v41;
  v42 = MEMORY[0x277D812A8];
  v47 = objc_msgSend_areaChart3D(TSCHChartType, v43, v44, v45, v46);
  v52 = objc_msgSend_pairWithFirst_second_(v42, v48, v49, v50, v51, v47, &unk_28856C0B0);
  v73[4] = v52;
  v53 = MEMORY[0x277D812A8];
  v58 = objc_msgSend_pieChart3D(TSCHChartType, v54, v55, v56, v57);
  v63 = objc_msgSend_pairWithFirst_second_(v53, v59, v60, v61, v62, v58, &unk_28856C0C8);
  v73[5] = v63;
  v68 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v64, v65, v66, v67, v73, 6);
  v69 = qword_280A47220;
  qword_280A47220 = v68;
}

uint64_t sub_27626B504(void *a1, void *a2, unint64_t a3, int a4)
{
  v7 = a1;
  v8 = a2;
  if (objc_msgSend_count(v8, v9, v10, v11, v12) <= a3)
  {
    if (v7)
    {
      isKindOfClass = 0;
    }

    else
    {
      isKindOfClass = a4;
    }

    if (!v7 && (a4 & 1) == 0)
    {
      isKindOfClass = objc_msgSend_count(v8, v13, v14, v15, v16) == a3;
    }
  }

  else
  {
    v17 = objc_msgSend_objectAtIndexedSubscript_(v8, v13, v14, v15, v16, a3);
    v18 = v17;
    if (a4)
    {
      if (v17 == v7)
      {
        isKindOfClass = 1;
      }

      else if (v7)
      {
        isKindOfClass = 0;
      }

      else
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
      }
    }

    else
    {
      if (v7)
      {
        v20 = v17 == v7;
      }

      else
      {
        v20 = 1;
      }

      isKindOfClass = v20;
    }
  }

  return isKindOfClass & 1;
}

void sub_27626B5EC(void *a1, void *a2, unint64_t a3, int a4)
{
  v80 = a1;
  v7 = a2;
  v12 = v7;
  if (!v7)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "void TSCHApplyNewValueToArrayAtIndex(id  _Nullable __strong, NSMutableArray<TSSStyle *> * _Nonnull __strong, NSUInteger, BOOL)");
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v30, v31, v32, v33, v24, v29, 2816, 0, "Can't replace something in a nil array");
    goto LABEL_7;
  }

  if (!a4)
  {
    v38 = objc_msgSend_count(v7, v8, v9, v10, v11);
    v17 = v80;
    if (v80)
    {
      if (v38 > a3)
      {
LABEL_10:
        objc_msgSend_replaceObjectAtIndex_withObject_(v12, v17, v14, v15, v16, a3, v17);
        goto LABEL_22;
      }

      if (objc_msgSend_count(v12, v80, v14, v15, v16) == a3)
      {
        goto LABEL_17;
      }

      v71 = MEMORY[0x277D81150];
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, v40, v41, v42, "void TSCHApplyNewValueToArrayAtIndex(id  _Nullable __strong, NSMutableArray<TSSStyle *> * _Nonnull __strong, NSUInteger, BOOL)");
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v72, v73, v74, v75, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v71, v76, v77, v78, v79, v24, v29, 2841, 0, "Error condition");
    }

    else
    {
      if (v38 - 1 == a3)
      {
        objc_msgSend_removeLastObject(v12, 0, v14, v15, v16);
        goto LABEL_22;
      }

      v62 = MEMORY[0x277D81150];
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], 0, v14, v15, v16, "void TSCHApplyNewValueToArrayAtIndex(id  _Nullable __strong, NSMutableArray<TSSStyle *> * _Nonnull __strong, NSUInteger, BOOL)");
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, v64, v65, v66, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v62, v67, v68, v69, v70, v24, v29, 2848, 0, "Error condition");
    }

LABEL_7:

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
    goto LABEL_22;
  }

  if (objc_msgSend_count(v7, v8, v9, v10, v11) > a3)
  {
    v17 = v80;
    if (!v80)
    {
      v18 = objc_msgSend_null(MEMORY[0x277CBEB68], 0, v14, v15, v16);
      objc_msgSend_replaceObjectAtIndex_withObject_(v12, v19, v20, v21, v22, a3, v18);

      goto LABEL_22;
    }

    goto LABEL_10;
  }

  if (objc_msgSend_count(v12, v13, v14, v15, v16) == a3)
  {
    if (!v80)
    {
      goto LABEL_22;
    }

LABEL_17:
    objc_msgSend_addObject_(v12, v39, v40, v41, v42, v80);
    goto LABEL_22;
  }

  if (v80)
  {
    if (objc_msgSend_count(v12, v39, v40, v41, v42) <= a3)
    {
      do
      {
        v47 = v12;
        objc_opt_class();
        v48 = TSUCheckedDynamicCast();

        v53 = objc_msgSend_null(MEMORY[0x277CBEB68], v49, v50, v51, v52);
        objc_msgSend_addObject_(v48, v54, v55, v56, v57, v53);
      }

      while (objc_msgSend_count(v47, v58, v59, v60, v61) <= a3);
    }

    objc_msgSend_replaceObjectAtIndex_withObject_(v12, v43, v44, v45, v46, a3, v80);
  }

LABEL_22:
}

void sub_27626BB88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27626BBA4(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_27626BC90;
  v15[3] = &unk_27A6B70A0;
  v16 = *(a1 + 32);
  v8 = v7;
  v17 = v8;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v18 = v9;
  v19 = v10;
  objc_msgSend_enumerateObjectsUsingBlock_(a3, v11, v12, v13, v14, v15);
  if (a4)
  {
    *a4 = *(*(*(a1 + 48) + 8) + 24) ^ 1;
  }
}

void sub_27626BC90(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v154 = a2;
  v10 = objc_msgSend_uuid(v154, v6, v7, v8, v9);

  if (!v10)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "[TSCHChartInfo p_refLineNonStyleMapIsValid]_block_invoke_2");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v22, v23, v24, v25, v16, v21, 2924, 0, "invalid nil value for '%{public}s'", "nsi.uuid");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  v30 = objc_msgSend_nonStyle(v154, v11, v12, v13, v14);

  if (!v30)
  {
    v35 = MEMORY[0x277D81150];
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, v32, v33, v34, "[TSCHChartInfo p_refLineNonStyleMapIsValid]_block_invoke_2");
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, v38, v39, v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v42, v43, v44, v45, v36, v41, 2925, 0, "invalid nil value for '%{public}s'", "nsi.nonStyle");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47, v48, v49);
  }

  v50 = a1[4];
  v51 = objc_msgSend_uuid(v154, v31, v32, v33, v34);
  v56 = objc_msgSend_containsObject_(v50, v52, v53, v54, v55, v51);

  v152 = v56;
  if (v56)
  {
    v61 = MEMORY[0x277D81150];
    v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, v58, v59, v60, "[TSCHChartInfo p_refLineNonStyleMapIsValid]_block_invoke_2");
    v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, v64, v65, v66, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
    v68 = a1[5];
    objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v69, v70, v71, v72, a3);
    v74 = v73 = a3;
    v79 = objc_msgSend_uuid(v154, v75, v76, v77, v78);
    v84 = objc_msgSend_UUIDString(v79, v80, v81, v82, v83);
    v89 = objc_msgSend_nonStyle(v154, v85, v86, v87, v88);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v61, v90, v91, v92, v93, v62, v67, 2928, 0, "Duplicate uuid for axis: %@ index: %@ uuid: %@ nonStyle: %@", v68, v74, v84, v89);

    a3 = v73;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v94, v95, v96, v97);
  }

  v98 = a1[6];
  v99 = objc_msgSend_nonStyle(v154, v57, v58, v59, v60);
  v104 = objc_msgSend_containsObject_(v98, v100, v101, v102, v103, v99);

  if (v104)
  {
    v109 = MEMORY[0x277D81150];
    v110 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v105, v106, v107, v108, "[TSCHChartInfo p_refLineNonStyleMapIsValid]_block_invoke_2");
    v115 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v111, v112, v113, v114, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo.m");
    v116 = a1[5];
    v121 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v117, v118, v119, v120, a3);
    v126 = objc_msgSend_uuid(v154, v122, v123, v124, v125);
    v131 = objc_msgSend_UUIDString(v126, v127, v128, v129, v130);
    v136 = objc_msgSend_nonStyle(v154, v132, v133, v134, v135);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v109, v137, v138, v139, v140, v110, v115, 2931, 0, "Duplicate nonStyle for axis: %@ index: %@ uuid: %@ nonStyle: %@", v116, v121, v131, v136);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v141, v142, v143, v144);
  }

  v145 = *(a1[7] + 8);
  if (*(v145 + 24) == 1)
  {
    v147 = objc_msgSend_uuid(v154, v105, v106, v107, v108);
    if (v147)
    {
      v151 = objc_msgSend_nonStyle(v154, v146, v148, v149, v150);
      *(*(a1[7] + 8) + 24) = (v151 != 0) & ((v152 | v104) ^ 1);
    }

    else
    {
      *(*(a1[7] + 8) + 24) = 0;
    }
  }

  else
  {
    *(v145 + 24) = 0;
  }

  if (a4)
  {
    *a4 = *(*(a1[7] + 8) + 24) ^ 1;
  }
}

void sub_27626C26C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_27626C284(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_27626C29C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v24 = a2;
  v10 = objc_msgSend_nonStyle(v24, v6, v7, v8, v9);
  v11 = *(a1 + 32);

  if (v10 == v11)
  {
    v16 = objc_msgSend_uuid(v24, v12, v13, v14, v15);
    v21 = objc_msgSend_copy(v16, v17, v18, v19, v20);
    v22 = *(*(a1 + 40) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = v21;

    if (a4)
    {
      *a4 = 1;
    }
  }
}

void sub_27626F648(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  v8 = objc_msgSend_boxedValueForProperty_(*(a1 + 32), v4, v5, v6, v7, a2);
  v41 = TSUDynamicCast();

  v13 = v41;
  if (v41)
  {
    objc_msgSend_width(v41, v9, v10, v11, v12);
    v13 = v41;
    if (v15 > 1.0)
    {
      v18 = objc_msgSend_mutableCopy(v41, v14, v15, v16, v17);
      objc_msgSend_width(v18, v19, v20, v21, v22);
      v25 = *(a1 + 48);
      v27 = v26 * v25;
      if (v27 < 1.0)
      {
        v27 = 1.0;
      }

      objc_msgSend_setWidth_(v18, v23, v27, v25, v24);
      objc_msgSend_width(v18, v28, v29, v30, v31);
      v33 = v32;
      objc_msgSend_width(v41, v34, v32, v35, v36);
      if (v33 != v38)
      {
        v40 = vabdd_f64(v33, v38);
        if (v40 >= 0.00999999978)
        {
          objc_msgSend_setObject_forProperty_(*(a1 + 40), v37, v40, 0.00999999978, v39, v18, a2);
        }
      }

      v13 = v41;
    }
  }
}

uint64_t sub_276270FA8(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = objc_opt_class();
  v7 = sub_2762CD788(v6, v4);
  v8 = objc_opt_class();
  v9 = sub_2762CD788(v8, v5);
  v14 = v9;
  if (v7)
  {
    v15 = v9 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    isEqual = objc_msgSend_isEqual_(v4, v10, v11, v12, v13, v5);
  }

  else
  {
    isEqual = objc_msgSend_hasEqualPropertyValues_(v7, v10, v11, v12, v13, v9);
  }

  v17 = isEqual;

  return v17;
}

uint64_t sub_27627105C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11 = objc_msgSend_count(v5, v7, v8, v9, v10);
  if (v11 == objc_msgSend_count(v6, v12, v13, v14, v15))
  {
    v20 = objc_msgSend_count(v5, v16, v17, v18, v19);
    if (v20)
    {
      v25 = 0;
      v26 = v20 - 1;
      do
      {
        v27 = *(a1 + 32);
        v28 = objc_msgSend_objectAtIndexedSubscript_(v5, v21, v22, v23, v24, v25);
        v33 = objc_msgSend_objectAtIndexedSubscript_(v6, v29, v30, v31, v32, v25);
        v34 = (*(v27 + 16))(v27, v28, v33);

        if (v34)
        {
          v35 = v26 == v25;
        }

        else
        {
          v35 = 1;
        }

        ++v25;
      }

      while (!v35);
    }

    else
    {
      v34 = 1;
    }
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

void sub_276273CD4(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v27 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = objc_msgSend_renderers(*(a1 + 32), a2, 0.0, a4, a5, 0);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, v8, v9, v10, &v22, v26, 16);
  if (v11)
  {
    v16 = v11;
    v17 = *v23;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v6);
        }

        v19 = *(*(&v22 + 1) + 8 * i);
        v20 = *(a1 + 32);
        v21 = v20[27];
        if (objc_msgSend_shouldUseRenderer_(v20, v12, v13, v14, v15, v19) && (v21 != 5 || objc_msgSend_supportsSeparateLabelsRenderPass(v19, v12, v13, v14, v15)))
        {
          objc_msgSend_renderIntoContext_visible_(v19, v12, *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 40), *(a1 + 72));
        }
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v12, v13, v14, v15, &v22, v26, 16);
    }

    while (v16);
  }
}

void sub_276274064(void **a1, const char *a2, double a3, double a4, double a5)
{
  v7 = objc_msgSend_intForKey_(a1[4], a2, a3, a4, a5, a2);
  objc_opt_class();
  v12 = objc_msgSend_valueForProperty_(a1[5], v8, v9, v10, v11, v7);
  v17 = TSUDynamicCast();

  objc_msgSend_p_listenForDataChangesIfAppropriateForFill_forProperty_(a1[6], v13, v14, v15, v16, v17, a2);
}

void sub_276274368(void **a1, const char *a2, double a3, double a4, double a5)
{
  v6 = objc_msgSend_intForKey_(a1[4], a2, a3, a4, a5, a2);
  objc_opt_class();
  v11 = objc_msgSend_valueForProperty_(a1[5], v7, v8, v9, v10, v6);
  v21 = TSUDynamicCast();

  v17 = objc_msgSend_imageData(v21, v12, v13, v14, v15);
  if (v17)
  {
    objc_msgSend_addObject_(a1[6], v16, v18, v19, v20, v17);
  }
}

uint64_t sub_276274848(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = *(a1 + 48);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (v6)
  {
    return objc_msgSend_addFinalTexture_forStage_(v7, a2, a3, a4, a5, a2, v8);
  }

  else
  {
    return objc_msgSend_addRenderable_forStage_(v7, a2, a3, a4, a5, a2, v8);
  }
}

void sub_276274CF8(uint64_t a1, CGContext *a2)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  IsPrintContext = TSDCGContextIsPrintContext();
  v9 = objc_msgSend_canvas(*(a1 + 32), v5, v6, v7, v8);
  isPrinting = objc_msgSend_isPrinting(v9, v10, v11, v12, v13);

  if (IsPrintContext != isPrinting)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "[TSCHChartRep renderChunkInBounds:textureSet:description:]_block_invoke");
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartRep.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v26, v27, v28, v29, v20, v25, 1755, 0, "Context and canvas disagree about printing.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
  }

  HasBackgroundsSuppressed = TSDCGContextHasBackgroundsSuppressed();
  v39 = objc_msgSend_canvas(*(a1 + 32), v35, v36, v37, v38);
  shouldSuppressBackgrounds = objc_msgSend_shouldSuppressBackgrounds(v39, v40, v41, v42, v43);

  if (HasBackgroundsSuppressed != shouldSuppressBackgrounds)
  {
    v49 = MEMORY[0x277D81150];
    v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, v46, v47, v48, "[TSCHChartRep renderChunkInBounds:textureSet:description:]_block_invoke");
    v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, v52, v53, v54, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartRep.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v56, v57, v58, v59, v50, v55, 1756, 0, "Context and canvas disagree about suppressing backgrounds.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v60, v61, v62, v63);
  }

  sub_27631FDD8(a2, 0, v46, v47, v48);
  sub_2763200F8(a2);
  CGContextTranslateCTM(a2, -*(a1 + 40), -*(a1 + 48));
  objc_msgSend_viewScale(*(a1 + 32), v64, v65, v66, v67);
  v69 = v68;
  objc_msgSend_viewScale(*(a1 + 32), v70, v68, v71, v72);
  CGContextScaleCTM(a2, v69, v73);
  v74 = *(a1 + 72);
  *&transform.a = *(a1 + 56);
  *&transform.c = v74;
  *&transform.tx = *(a1 + 88);
  CGContextConcatCTM(a2, &transform);
  v168 = objc_msgSend_currentChunk(*(a1 + 32), v75, v76, v77, v78);
  v79 = *(a1 + 32);
  v166 = *(v79 + 112);
  v167 = *(v79 + 100);
  v164 = *(v79 + 102);
  v165 = *(v79 + 101);
  v163 = objc_msgSend_textureDeliveryStyle(v79, v80, v81, v82, v83);
  v84 = *(a1 + 32);
  v162 = v84[104];
  v89 = objc_msgSend_chartLayout(v84, v85, v86, v87, v88);
  v161 = objc_msgSend_dataSetIndex(v89, v90, v91, v92, v93);

  v160 = objc_msgSend_textureStage(*(a1 + 32), v94, v95, v96, v97);
  *(*(a1 + 32) + 152) = *(a1 + 104);
  *(*(a1 + 32) + 100) = *(a1 + 140);
  *(*(a1 + 32) + 112) = *(a1 + 136);
  *(*(a1 + 32) + 101) = *(a1 + 141);
  *(*(a1 + 32) + 102) = *(a1 + 142);
  objc_msgSend_setTextureDeliveryStyle_(*(a1 + 32), v98, v99, v100, v101, *(a1 + 112));
  *(*(a1 + 32) + 104) = *(a1 + 143);
  v102 = *(a1 + 120);
  v107 = objc_msgSend_chartLayout(*(a1 + 32), v103, v104, v105, v106);
  objc_msgSend_setDataSetIndex_(v107, v108, v109, v110, v111, v102);

  objc_msgSend_setTextureStage_(*(a1 + 32), v112, v113, v114, v115, *(a1 + 128));
  v120 = objc_msgSend_chartInfo(*(a1 + 32), v116, v117, v118, v119);
  v125 = objc_msgSend_chunkManager(v120, v121, v122, v123, v124);
  v130 = objc_msgSend_chartDeliveryStyle(*(a1 + 32), v126, v127, v128, v129);
  objc_msgSend_updateCache_(v125, v131, v132, v133, v134, v130);

  objc_msgSend_drawInContext_(*(a1 + 32), v135, v136, v137, v138, a2);
  *(*(a1 + 32) + 152) = v168;
  *(*(a1 + 32) + 100) = v167;
  *(*(a1 + 32) + 112) = v166;
  *(*(a1 + 32) + 101) = v165;
  *(*(a1 + 32) + 102) = v164;
  objc_msgSend_setTextureDeliveryStyle_(*(a1 + 32), v139, v140, v141, v142, v163);
  *(*(a1 + 32) + 104) = v162;
  v147 = objc_msgSend_chartLayout(*(a1 + 32), v143, v144, v145, v146);
  objc_msgSend_setDataSetIndex_(v147, v148, v149, v150, v151, v161);

  objc_msgSend_setTextureStage_(*(a1 + 32), v152, v153, v154, v155, v160);
  sub_27631FF58(a2, v156, v157, v158, v159);
  objc_sync_exit(obj);
}

double sub_276276FD0(double a1, double a2, double a3, double a4, double a5)
{
  if (a3 >= a5)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = (a5 - a3) * -0.5;
  }

  v6 = (a5 - a4) * -0.5;
  if (a4 >= a5)
  {
    v6 = 0.0;
  }

  *&result = CGRectInset(*&a1, v5, v6);
  return result;
}

void sub_276277CC4()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v5 = objc_msgSend_initWithProperties_(v0, v1, v2, v3, v4, 1317, 1318, 1321, 1348, 1349, 1350, 1361, 1362, 1298, 1308, 1299, 1301, 1312, 1311, 1310, 1313, 1309, 1314, 1335, 1334, 1343, 1345, 1339, 1327, 1322, 1323, 1324, 1326, 1328, 1329, 1330, 1325, 1339, 1336, 1358, 1354, 1357, 1356, 1237, 1241, 1242, 1240, 1245, 1243, 1244, 1251, 1250, 1258, 1260, 1264, 1266, 1265, 1271, 1272, 1270, 1273, 1276, 1274);
  v6 = qword_280A47230;
  qword_280A47230 = v5;
}

void sub_27627B084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

__n128 sub_27627B0C4(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

void sub_27627B0D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 40) + 8);
  v5 = v4[6];
  v6 = v4[7];
  v7 = v4[8];
  v8 = v4[9];
  v27 = v3;
  objc_msgSend_p_calcDrawingRectForModel_(*(a1 + 32), v9, v10, v11, v12);
  v32.origin.x = v13;
  v32.origin.y = v14;
  v32.size.width = v15;
  v32.size.height = v16;
  v29.origin.x = v5;
  v29.origin.y = v6;
  v29.size.width = v7;
  v29.size.height = v8;
  v30 = CGRectUnion(v29, v32);
  *(*(*(a1 + 40) + 8) + 48) = v30;
  v17 = *(*(a1 + 48) + 8);
  v18 = v17[6];
  v19 = v17[7];
  v20 = v17[8];
  v21 = v17[9];
  objc_msgSend_p_calcDrawingRectForReferenceLinesForModel_(*(a1 + 32), v22, v30.origin.x, v30.origin.y, v30.size.width, v27);
  v33.origin.x = v23;
  v33.origin.y = v24;
  v33.size.width = v25;
  v33.size.height = v26;
  v31.origin.x = v18;
  v31.origin.y = v19;
  v31.size.width = v20;
  v31.size.height = v21;
  *(*(*(a1 + 48) + 8) + 48) = CGRectUnion(v31, v33);
}

void sub_27627D330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43)
{
  _Block_object_dispose(&a27, 8);
  if (__p)
  {
    a34 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&a36, 8);
  if (a42)
  {
    a43 = a42;
    operator delete(a42);
  }

  _Block_object_dispose((v43 - 160), 8);
  v45 = *(v43 - 112);
  if (v45)
  {
    *(v43 - 104) = v45;
    operator delete(v45);
  }

  _Unwind_Resume(a1);
}

__n128 sub_27627D3F4(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_27627D418(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

__n128 sub_27627D430(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_27627D454(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_27627D46C(uint64_t a1, const char *a2, unint64_t a3, double a4, double a5, double a6)
{
  v10 = objc_msgSend_seriesAtIndex_(*(a1 + 32), a2, a4, a5, a6, a2);
  if (!*(a1 + 40) || *(a1 + 80) <= a3 || (objc_opt_class(), objc_msgSend_objectAtIndexedSubscript_(*(a1 + 40), v14, v15, v16, v17, a3), v18 = objc_claimAutoreleasedReturnValue(), TSUDynamicCast(), v19 = objc_claimAutoreleasedReturnValue(), v18, !v19))
  {
    v19 = objc_msgSend_allGroupsIndexSetForSeries_(*(a1 + 32), v9, v11, v12, v13, v10);
  }

  v20 = objc_msgSend_seriesAtIndex_(*(a1 + 32), v9, v11, v12, v13, a2);
  v25 = objc_msgSend_seriesType(v20, v21, v22, v23, v24);
  v30 = objc_msgSend_elementBuilder(v25, v26, v27, v28, v29);

  v66 = 0;
  v67 = 0;
  v65 = 0;
  if (*(a1 + 88))
  {
    v35 = &v67;
  }

  else
  {
    v35 = 0;
  }

  if (*(a1 + 96))
  {
    v36 = &v66;
  }

  else
  {
    v36 = 0;
  }

  if (*(a1 + 104))
  {
    v37 = &v65;
  }

  else
  {
    v37 = 0;
  }

  v38 = objc_msgSend_countOfElementsInSeries_forGroups_forBodyLayout_outNewElementBounds_outNewClipRects_outNewElementPaths_outSelectionKnobLocations_forHighlightPath_(v30, v31, v32, v33, v34, v10, v19, *(a1 + 48), v35, v36, v37, 0, 0);
  if (!v38)
  {
    v61 = v65;
    if (!v65)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  v62 = v30;
  v63 = v19;
  v64 = v10;
  v39 = 0;
  v40 = 0;
  v41 = MEMORY[0x277CBF398];
  do
  {
    if (v65)
    {
      v42 = *(v65 + v40);
    }

    else
    {
      v42 = 0;
    }

    v43 = *(*(a1 + 56) + 8);
    v45 = v43[7];
    v44 = v43[8];
    if (v45 >= v44)
    {
      v47 = v43[6];
      v48 = (v45 - v47) >> 3;
      if ((v48 + 1) >> 61)
      {
        sub_276161760();
      }

      v49 = v44 - v47;
      v50 = v49 >> 2;
      if (v49 >> 2 <= (v48 + 1))
      {
        v50 = v48 + 1;
      }

      if (v49 >= 0x7FFFFFFFFFFFFFF8)
      {
        v51 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v51 = v50;
      }

      if (v51)
      {
        sub_276282880((v43 + 6), v51);
      }

      v52 = (8 * v48);
      *v52 = v42;
      v46 = 8 * v48 + 8;
      v53 = v43[6];
      v54 = v43[7] - v53;
      v55 = v52 - v54;
      memcpy(v52 - v54, v53, v54);
      v56 = v43[6];
      v43[6] = v55;
      v43[7] = v46;
      v43[8] = 0;
      if (v56)
      {
        operator delete(v56);
      }
    }

    else
    {
      *v45 = v42;
      v46 = (v45 + 1);
    }

    v43[7] = v46;
    if (v67)
    {
      v57 = v67 + v39;
    }

    else
    {
      v57 = v41;
    }

    sub_27627D7DC(*(*(a1 + 64) + 8) + 48, v57);
    if (v66)
    {
      v58 = v66 + v39;
    }

    else
    {
      v58 = v41;
    }

    sub_27627D7DC(*(*(a1 + 72) + 8) + 48, v58);
    ++v40;
    v39 += 32;
  }

  while (v38 != v40);
  v10 = v64;
  v30 = v62;
  v19 = v63;
  if (v65)
  {
    for (i = 0; i != v38; ++i)
    {
      v60 = *(v65 + i);
      if (v60)
      {
        CGPathRelease(v60);
      }
    }

    v61 = v65;
LABEL_45:
    free(v61);
  }

LABEL_46:
  if (v67)
  {
    free(v67);
  }

  if (v66)
  {
    free(v66);
  }
}

void sub_27627D7DC(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      sub_276161760();
    }

    v10 = v5 - *a1;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_2762828C8(a1, v11);
    }

    v12 = (32 * v8);
    v13 = a2[1];
    *v12 = *a2;
    v12[1] = v13;
    v7 = 32 * v8 + 32;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy(v12 - v14, *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = (v4 + 2);
  }

  *(a1 + 8) = v7;
}

uint64_t sub_2762825CC(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v5;
  v12 = objc_msgSend_seriesType(v6, v8, v9, v10, v11);
  v17 = objc_msgSend_mixedLineSeries(TSCHChartSeriesType, v13, v14, v15, v16);
  if (objc_msgSend_isEqual_(v12, v18, v19, v20, v21, v17))
  {
    isEqual = 3;
  }

  else
  {
    v27 = objc_msgSend_seriesType(v6, v22, v23, v24, v25);
    v32 = objc_msgSend_mixedColumnSeries(TSCHChartSeriesType, v28, v29, v30, v31);
    if (objc_msgSend_isEqual_(v27, v33, v34, v35, v36, v32))
    {
      isEqual = 2;
    }

    else
    {
      v41 = objc_msgSend_seriesType(v6, v37, v38, v39, v40);
      v46 = objc_msgSend_mixedAreaSeries(TSCHChartSeriesType, v42, v43, v44, v45);
      isEqual = objc_msgSend_isEqual_(v41, v47, v48, v49, v50, v46);
    }
  }

  v55 = objc_msgSend_seriesType(v7, v51, v52, v53, v54);
  v60 = objc_msgSend_mixedLineSeries(TSCHChartSeriesType, v56, v57, v58, v59);
  if (objc_msgSend_isEqual_(v55, v61, v62, v63, v64, v60))
  {
    v69 = 3;
  }

  else
  {
    v70 = objc_msgSend_seriesType(v7, v65, v66, v67, v68);
    v75 = objc_msgSend_mixedColumnSeries(TSCHChartSeriesType, v71, v72, v73, v74);
    if (objc_msgSend_isEqual_(v70, v76, v77, v78, v79, v75))
    {
      v69 = 2;
    }

    else
    {
      v84 = objc_msgSend_seriesType(v7, v80, v81, v82, v83);
      v89 = objc_msgSend_mixedAreaSeries(TSCHChartSeriesType, v85, v86, v87, v88);
      v69 = objc_msgSend_isEqual_(v84, v90, v91, v92, v93, v89);
    }
  }

  if (isEqual == v69)
  {
    v98 = objc_msgSend_seriesIndex(v6, v94, v95, v96, v97);
    v103 = objc_msgSend_seriesIndex(v7, v99, v100, v101, v102);
    v104 = -1;
    if (v103 <= v98)
    {
      v104 = 1;
    }

    if (v98 == v103)
    {
      v105 = 0;
    }

    else
    {
      v105 = v104;
    }
  }

  else if (v69 < isEqual)
  {
    v105 = -1;
  }

  else
  {
    v105 = 1;
  }

  return v105;
}

void sub_2762827F4(_Unwind_Exception *a1)
{
  v9 = v5;

  _Unwind_Resume(a1);
}

void sub_276282880(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_2761617D0();
}

void sub_2762828C8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_2761617D0();
}

void sub_276283170(CGFloat *a1, CGFloat *a2, void *a3, CGFloat *a4)
{
  TSURectWithSize();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  TSUSubtractPoints();
  TSURectWithOriginAndSize();
  v49 = v17;
  v50 = v16;
  v43 = v19;
  v44 = v18;
  TSUSubtractPoints();
  TSURectWithOriginAndSize();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = v9;
  v51.origin.x = v9;
  v28 = v27;
  v47 = v15;
  v51.origin.y = v11;
  v48 = v13;
  v51.size.width = v13;
  v51.size.height = v15;
  v53.origin.x = v21;
  v53.origin.y = v23;
  v53.size.width = v28;
  v53.size.height = v25;
  v52 = CGRectUnion(v51, v53);
  v29 = v25;
  if (*MEMORY[0x277CBF3A8] == v28 && *(MEMORY[0x277CBF3A8] + 8) == v25)
  {
    v21 = *MEMORY[0x277CBF3A0];
    v23 = *(MEMORY[0x277CBF3A0] + 8);
    v28 = *(MEMORY[0x277CBF3A0] + 16);
    v29 = *(MEMORY[0x277CBF3A0] + 24);
    height = v15;
    width = v13;
    v52.origin.x = v26;
    v33 = v11;
    v52.origin.y = v11;
  }

  else
  {
    width = v52.size.width;
    height = v52.size.height;
    v33 = v11;
  }

  if (*MEMORY[0x277CBF348] != v52.origin.x || *(MEMORY[0x277CBF348] + 8) != v52.origin.y)
  {
    v45 = height;
    v46 = width;
    v35 = v29;
    TSUSubtractPoints();
    v37 = v36;
    v33 = v38;
    TSUSubtractPoints();
    v49 = v40;
    v50 = v39;
    TSUSubtractPoints();
    v29 = v35;
    height = v45;
    width = v46;
    v26 = v37;
    v21 = v41;
    v23 = v42;
  }

  if (a4)
  {
    *a4 = v21;
    a4[1] = v23;
    a4[2] = v28;
    a4[3] = v29;
  }

  if (a3)
  {
    *a3 = v50;
    a3[1] = v49;
    a3[2] = v44;
    a3[3] = v43;
  }

  if (a2)
  {
    *a2 = v26;
    a2[1] = v33;
    a2[2] = v48;
    a2[3] = v47;
  }

  if (a1)
  {
    *a1 = width;
    a1[1] = height;
  }
}

void sub_2762833A4(CGFloat *a1, CGFloat *a2, void *a3, CGFloat *a4)
{
  TSUCenterOfRect();
  TSUAddPoints();
  TSURectWithOriginAndSize();

  sub_276283170(a1, a2, a3, a4);
}

uint64_t sub_27628348C(uint64_t result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12 = result;
  if (a2)
  {
    *a2 = a11;
    a2[1] = a12;
  }

  if (result)
  {
    TSUCenterOfRect();
    result = TSUSubtractPoints();
    *v12 = v13;
    v12[1] = v14;
  }

  return result;
}

uint64_t sub_276283878(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (objc_msgSend_isEqual_(v4, v6, v7, v8, v9, v5) && sub_2762839BC((a1 + 8), (a2 + 8)))
  {
    v10 = *(a1 + 40) - *(a1 + 32);
    v11 = *(a2 + 40) - *(a2 + 32);

    if (v10 == v11)
    {
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_2762839BC(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 - *a1 != a2[1] - *a2)
  {
    return 0;
  }

  if (v3 == v2)
  {
    return 1;
  }

  v6 = 0;
  v7 = 0;
  do
  {
    v8 = *(v2 + v6);
    v9 = *(*a2 + v6);
    isEqual = objc_msgSend_isEqual_(v8, v10, v11, v12, v13, v9);

    if ((isEqual & 1) == 0)
    {
      break;
    }

    ++v7;
    v2 = *a1;
    v6 += 48;
  }

  while (v7 < 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4));
  return isEqual;
}

void sub_276285AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_276285AE0(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  v17 = 0;
  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = (*(v10 + 16))(v10, v6, *(a1 + 32), &v17);
    if (!v6 || (v11 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (!v6)
  {
    goto LABEL_8;
  }

  if ((objc_msgSend_containsObject_(*(a1 + 32), v5, v7, v8, v9, v6) & 1) == 0)
  {
    objc_msgSend_addObject_(*(a1 + 32), v12, v13, v14, v15, v6);
  }

LABEL_8:
  v16 = v17;
  if (v17 == 1)
  {
    if (a3)
    {
      *a3 = 1;
    }

    *(*(*(a1 + 48) + 8) + 24) = v16;
  }
}

void sub_276285CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_276285CC8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_276285CE0(uint64_t a1, void *a2, double a3, double a4, double a5)
{
  v17 = objc_msgSend_subselectionKnobPositionsForSelection_(a2, a2, a3, a4, a5, *(a1 + 32));
  if (objc_msgSend_count(v17, v6, v7, v8, v9))
  {
    v13 = *(*(*(a1 + 40) + 8) + 40);
    if (v13)
    {
      objc_msgSend_addEntriesFromDictionary_(v13, v17, v10, v11, v12, v17);
    }

    else
    {
      v14 = objc_msgSend_mutableCopy(v17, v17, v10, v11, v12);
      v15 = *(*(a1 + 40) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;
    }
  }
}

void sub_276285E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_276285E9C(uint64_t a1, void *a2, double a3, double a4, double a5)
{
  v17 = objc_msgSend_subselectionHaloPositionsForSelections_(a2, a2, a3, a4, a5, *(a1 + 32));
  if (objc_msgSend_count(v17, v6, v7, v8, v9))
  {
    v13 = *(*(*(a1 + 40) + 8) + 40);
    if (v13)
    {
      objc_msgSend_addEntriesFromDictionary_(v13, v17, v10, v11, v12, v17);
    }

    else
    {
      v14 = objc_msgSend_mutableCopy(v17, v17, v10, v11, v12);
      v15 = *(*(a1 + 40) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;
    }
  }
}

void sub_276285FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_276286014(uint64_t a1, void *a2, double a3, double a4, double a5)
{
  v6 = objc_msgSend_newDragAndDropHighlightPathForSelection_(a2, a2, a3, a4, a5, *(a1 + 32));
  if (v6)
  {
    v7 = v6;
    if (!CGPathIsEmpty(v6))
    {
      v8 = *(*(a1 + 40) + 8);
      Mutable = *(v8 + 24);
      if (!Mutable)
      {
        Mutable = CGPathCreateMutable();
        v8 = *(*(a1 + 40) + 8);
      }

      *(v8 + 24) = Mutable;
      CGPathAddPathSafe();
    }

    CGPathRelease(v7);
  }
}

id sub_27628AB2C(void *a1, void *a2, int a3, void *a4, int a5, int a6)
{
  v11 = a1;
  v12 = a2;
  v14 = a4;
  if (v11)
  {
    objc_msgSend_doubleValue(v11, v13, v15, v16, v17);
    v19 = fabs(v18);
    v20 = __fpclassifyd(trunc(v19 * 1.0e12));
    v24 = 1.0e12;
    if (v19 <= 1.0e12)
    {
      v24 = 0.0000001;
      v25 = v19 < 0.0000001 && v20 != 3;
    }

    else
    {
      v25 = 1;
    }

    if (v20 == 3)
    {
      objc_msgSend_doubleValue(v11, v21, v24, v22, v23);
      if (v19 != v28)
      {

        v11 = &unk_28856ED50;
      }
    }

    v29 = objc_alloc_init(MEMORY[0x277CCABB8]);
    v34 = v29;
    if (v25)
    {
      objc_msgSend_setFormatterBehavior_(v29, v30, v31, v32, v33, 1040);
      objc_msgSend_setNumberStyle_(v34, v35, v36, v37, v38, 4);
    }

    else
    {
      v44 = objc_msgSend_stringWithCapacity_(MEMORY[0x277CCAB68], v30, v31, v32, v33, 10);
      if (a3)
      {
        v48 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v43, v45, v46, v47, @"#%@##", @",");
        objc_msgSend_appendString_(v44, v49, v50, v51, v52, v48);
      }

      objc_msgSend_appendString_(v44, v43, v45, v46, v47, @"0");
      if (a5 >= 1)
      {
        objc_msgSend_appendString_(v44, v53, v54, v55, v56, @".");
        if (!a6)
        {
          v57 = @"#";
          goto LABEL_22;
        }

        v57 = @"0";
        objc_msgSend_appendString_(v44, v53, v54, v55, v56, @"0");
        while (--a5)
        {
LABEL_22:
          objc_msgSend_appendString_(v44, v53, v54, v55, v56, v57);
        }
      }

      objc_msgSend_setPositiveFormat_(v34, v53, v54, v55, v56, v44);
      objc_msgSend_setNegativeFormat_(v34, v58, v59, v60, v61, v44);
    }

    if (v12 | v14)
    {
      v63 = objc_msgSend_stringWithCapacity_(MEMORY[0x277CCAB68], v39, v40, v41, v42, 10);
      if (v12)
      {
        v67 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v62, v64, v65, v66, v12);
        v72 = objc_msgSend_length(v67, v68, v69, v70, v71);
        objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v67, v73, v74, v75, v76, @"%", @"%%", 2, 0, v72);
        objc_msgSend_appendString_(v63, v77, v78, v79, v80, v67);
      }

      objc_msgSend_appendString_(v63, v62, v64, v65, v66, @"%@");
      if (v14)
      {
        v85 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v81, v82, v83, v84, v14);
        v90 = objc_msgSend_length(v85, v86, v87, v88, v89);
        objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v85, v91, v92, v93, v94, @"%", @"%%", 2, 0, v90);
        objc_msgSend_appendString_(v63, v95, v96, v97, v98, v85);
      }

      v99 = MEMORY[0x277CCACA8];
      v100 = objc_msgSend_stringForObjectValue_(v34, v81, v82, v83, v84, v11);
      v26 = objc_msgSend_stringWithFormat_(v99, v101, v102, v103, v104, v63, v100);
    }

    else
    {
      v26 = objc_msgSend_stringForObjectValue_(v34, v39, v40, v41, v42, v11);
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

uint64_t sub_27628AE54(void *a1, signed int a2)
{
  v3 = a1;
  v9 = objc_msgSend_objectEnumerator(v3, v4, v5, v6, v7);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v112 = 0x7FFFFFFF;
  while (1)
  {
    v16 = v14;
    v14 = objc_msgSend_nextObject(v9, v8, v10, v11, v12);

    if (!v14)
    {
      break;
    }

    v21 = objc_msgSend_null(MEMORY[0x277CBEB68], v17, v18, v19, v20);
    isEqual = objc_msgSend_isEqual_(v14, v22, v23, v24, v25, v21);

    if ((isEqual & 1) == 0)
    {
      v111 = v15;
      v27 = v13;
      v28 = MEMORY[0x277CCA980];
      v29 = objc_msgSend_stringValue(v14, v8, v10, v11, v12);
      v34 = objc_msgSend_decimalNumberWithString_(v28, v30, v31, v32, v33, v29);

      v110 = v34;
      v39 = objc_msgSend_stringValue(v34, v35, v36, v37, v38);
      v44 = objc_msgSend_componentsSeparatedByString_(v39, v40, v41, v42, v43, @".");
      v49 = objc_msgSend_count(v44, v45, v46, v47, v48);

      if (v49 < 2)
      {
        v59 = v39;
        v13 = v27;
      }

      else
      {
        v54 = objc_msgSend_componentsSeparatedByString_(v39, v50, v51, v52, v53, @".");
        v59 = objc_msgSend_objectAtIndexedSubscript_(v54, v55, v56, v57, v58, 1);

        if (objc_msgSend_hasPrefix_(v59, v60, v61, v62, v63, @"0") && objc_msgSend_characterAtIndex_(v59, v64, v65, v66, v67, 0) == 48)
        {
          v68 = 0;
          do
          {
            ++v68;
          }

          while (objc_msgSend_characterAtIndex_(v59, v64, v65, v66, v67, v68) == 48);
        }

        else
        {
          LODWORD(v68) = 0;
        }

        if (v68 > v27)
        {
          LODWORD(v27) = v68;
        }

        if (v68 >= v112)
        {
          v69 = v112;
        }

        else
        {
          v69 = v68;
        }

        v112 = v69;
        v108 = v27;
        v109 = a2;
        if ((objc_msgSend_length(v59, v64, v65, v66, v67) - v68) <= a2)
        {
          v74 = objc_msgSend_length(v59, v70, v71, v72, v73);
        }

        else
        {
          v74 = v68 + a2;
        }

        v75 = sub_27628AB2C(v14, 0, 0, 0, v74, 0);
        v76 = objc_alloc_init(MEMORY[0x277CCABB8]);
        v81 = objc_msgSend_decimalSeparator(v76, v77, v78, v79, v80);
        v86 = v81;
        if (v81)
        {
          objc_msgSend_componentsSeparatedByString_(v75, v82, v83, v84, v85, v81);
        }

        else
        {
          objc_msgSend_componentsSeparatedByString_(v75, v82, v83, v84, v85, @".");
        }
        v87 = ;
        v92 = objc_msgSend_count(v87, v88, v89, v90, v91);
        v96 = 0.0;
        if (v92 >= 2)
        {
          objc_msgSend_objectAtIndexedSubscript_(v87, v93, 0.0, v94, v95, 1);
          v97 = v106 = v75;
          v107 = v3;
          v102 = objc_msgSend_length(v97, v98, v99, v100, v101);

          if (v74 >= v102)
          {
            v103 = v102;
          }

          else
          {
            v103 = v74;
          }

          v75 = v106;
          v3 = v107;
          v96 = v103;
        }

        v111 = fmaxf(v111, v96);

        v13 = v108;
        a2 = v109;
      }

      v15 = v111;
    }
  }

  if (v13 - v112 <= 5)
  {
    v104 = v15;
  }

  else
  {
    v104 = a2;
  }

  return v104;
}

double sub_27628B14C(uint64_t a1, const char *a2, double a3, __n128 a4, double a5)
{
  v5 = a3;
  if (a3 < 0.0 && a1 != 2)
  {
    return -sub_27628B250(a1, a2, fabs(a3), a4, a5);
  }

  if (a1 == 3)
  {
    a3 = sub_27628B650(a3, a4.n128_f64[0]);
  }

  else if (a1 == 2)
  {
    a3 = sub_27628B850(a3, a4.n128_f64[0], a5, a1, a2);
  }

  else
  {
    v7 = a3;
    if (a1 != 1)
    {
      goto LABEL_13;
    }

    a3 = sub_27628B47C(a3, a4.n128_f64[0]);
  }

  v7 = a3;
LABEL_13:
  if (v7 > v5)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a3, a4.n128_f64[0], a5, "double TSCHMathRoundDownWithRange(double, double, TSCHChartGridValueType)");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHMathUtilities.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 244, 0, "Round down rounded up!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  return v7;
}

double sub_27628B250(uint64_t a1, const char *a2, double a3, __n128 a4, double a5)
{
  v5 = a4.n128_u64[0];
  if (a3 < 0.0 && a1 != 2)
  {
    return -sub_27628B14C(fabs(a3), a4);
  }

  switch(a1)
  {
    case 3:
      v48 = sub_27628BD5C(a3, a4.n128_f64[0]);
      v23 = v48;
      if (v48 >= a3)
      {
        return v23;
      }

      v51 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, v48, v49, v50, "double TSCHMathRoundUpWithRange(double, double, TSCHChartGridValueType)");
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, v53, v54, v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHMathUtilities.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v51, v56, v57, v58, v59, v13, v18, 262, 0, "duration value rounded down instead of up. value: %{public}f, range: %{public}f, result: %{public}f", *&a3, v5, *&v23);
LABEL_16:

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v60, v61, v62, v63);
      return v23;
    case 2:
      v23 = sub_27628BF3C(a3, a4.n128_f64[0], a5, a1, a2);
      v27 = objc_msgSend_distantFuture(MEMORY[0x277CBEAA8], v24, v23, v25, v26);
      objc_msgSend_timeIntervalSinceReferenceDate(v27, v28, v29, v30, v31);
      v33 = v32;

      if (v23 < a3 && v33 > a3)
      {
        v38 = MEMORY[0x277D81150];
        v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, v35, v36, v37, "double TSCHMathRoundUpWithRange(double, double, TSCHChartGridValueType)");
        v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, v40, v41, v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHMathUtilities.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v43, v44, v45, v46, v13, v18, 266, 0, "date value rounded down instead of up. value: %{public}f, range: %{public}f, result: %{public}f, distantFutureToReferenceDate: %{public}f", *&a3, v5, *&v23, *&v33);
        goto LABEL_16;
      }

      break;
    case 1:
      v9 = sub_27628BBB4(a3, a4.n128_f64[0]);
      v23 = v9;
      if (v9 < a3)
      {
        v12 = MEMORY[0x277D81150];
        v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "double TSCHMathRoundUpWithRange(double, double, TSCHChartGridValueType)");
        v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHMathUtilities.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 259, 0, "number value rounded down instead of up. value: %{public}f, range: %{public}f, result: %{public}f", *&a3, v5, *&v23);
        goto LABEL_16;
      }

      break;
    default:
      return a3;
  }

  return v23;
}

double sub_27628B47C(double a1, double a2)
{
  v3 = fmin(fabs(a2), a1);
  v4 = 0.0;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000001 || ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || (*&v3 & 0x7FFFFFFFFFFFFFFFuLL) - 1 <= 0xFFFFFFFFFFFFELL)
  {
    v7 = fabs(v3);
    if (v7 >= 1.0)
    {
      for (i = v7 * 0.1; i >= 1.0; i = i * 0.1)
      {
        v4 = v4 + -1.0;
      }
    }

    else
    {
      do
      {
        v7 = v7 * 10.0;
        v4 = v4 + 1.0;
      }

      while (v7 < 1.0);
    }
  }

  v10 = __exp10(-v4);
  if (v10 == 0.0)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "double p_roundDownPowerOf10WithRange(double, double)");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHMathUtilities.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 610, 0, "divide by zero");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
    v10 = 1.0;
  }

  v28 = trunc(v3 / v10);
  v29 = 5.0;
  if (v28 >= 2.0)
  {
    v29 = 1.0;
    if (v28 < 5.0)
    {
      v29 = 2.0;
    }
  }

  v30 = a1 / v29;
  v31 = v10 / v29;
  if (v10 <= v30)
  {
    v32 = v10;
  }

  else
  {
    v32 = v31;
  }

  v33 = a1 - fmod(a1, v32);
  if (v32 >= 1.0)
  {
    if (v33 >= a1)
    {
      v33 = v33 - v32;
    }
  }

  else if ((v33 / v32) >= (a1 / v32))
  {
    v33 = v33 - v32;
  }

  return fmax(v33, 0.0);
}

double sub_27628B650(double a1, double a2)
{
  v2 = floor(a1 / 604800.0);
  v3 = a1 - v2 * 604800.0;
  v4 = floor(v3 / 86400.0);
  v5 = v3 - v4 * 86400.0;
  v6 = floor(v5 / 3600.0);
  v7 = v5 - v6 * 3600.0;
  v8 = floor(v7 / 60.0);
  v9 = v7 - v8 * 60.0;
  v10 = floor(v9);
  v11 = v9 - v10;
  if (v11 <= 0.0)
  {
    if (v10 <= 0.0)
    {
      if (v8 <= 0.0)
      {
        if (v6 <= 0.0)
        {
          if (v4 > 0.0)
          {
            v24 = a2 / 86400.0;
            v25 = v4 + -2.0;
            if (v24 > 0.0)
            {
              v25 = v4 - v24;
            }

            v26 = floor(v4 * 0.5);
            v27 = v26 + v26;
            v28 = v27 + -2.0;
            if (v4 - v27 != 0.0)
            {
              v28 = v27;
            }

            if (v24 >= 2.0)
            {
              v4 = v28;
            }

            else
            {
              v4 = v25;
            }
          }
        }

        else
        {
          v18 = a2 / 3600.0;
          v19 = v6 + -2.0;
          if (v18 > 0.0)
          {
            v19 = v6 - v18;
          }

          v20 = floor(v6 * 0.5);
          v21 = v20 + v20;
          v22 = v21 + -2.0;
          if (v6 - v21 != 0.0)
          {
            v22 = v21;
          }

          if (v18 >= 2.0)
          {
            v6 = v22;
          }

          else
          {
            v6 = v19;
          }
        }
      }

      else
      {
        v15 = a2 / 60.0;
        if (v15 >= 5.0)
        {
          v23 = floor(v8 / 5.0) * 5.0;
          if (v8 - v23 == 0.0)
          {
            v8 = v23 + -5.0;
          }

          else
          {
            v8 = v23;
          }
        }

        else
        {
          v13 = v15 <= 0.0;
          v16 = v8 - v15;
          if (v13)
          {
            v8 = v8 + -5.0;
          }

          else
          {
            v8 = v16;
          }
        }
      }
    }

    else if (a2 >= 5.0)
    {
      v17 = floor(v10 / 5.0) * 5.0;
      if (v10 - v17 == 0.0)
      {
        v10 = v17 + -5.0;
      }

      else
      {
        v10 = v17;
      }
    }

    else
    {
      v13 = a2 <= 0.0;
      v14 = v10 - a2;
      if (v13)
      {
        v10 = v10 + -5.0;
      }

      else
      {
        v10 = v14;
      }
    }
  }

  else
  {
    v11 = sub_27628B47C(v11, a2);
  }

  return v11 + v10 + v4 * 86400.0 + v2 * 604800.0 + v6 * 3600.0 + v8 * 60.0;
}

double sub_27628B850(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v7 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x277CBEAA8], a5, a1, a2, a3);
  v12 = objc_msgSend_currentCalendar(MEMORY[0x277CBEA80], v8, v9, v10, v11);
  v17 = objc_msgSend_timeZoneForSecondsFromGMT_(MEMORY[0x277CBEBB0], v13, v14, v15, v16, 0);
  objc_msgSend_setTimeZone_(v12, v18, v19, v20, v21, v17);

  v26 = objc_msgSend_components_fromDate_(v12, v22, v23, v24, v25, 240, v7);
  v27 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  v32 = objc_msgSend_day(v26, v28, v29, v30, v31);
  v37 = objc_msgSend_hour(v26, v33, v34, v35, v36);
  v42 = objc_msgSend_minute(v26, v38, v39, v40, v41);
  v47 = objc_msgSend_second(v26, v43, v44, v45, v46);
  if (v47 < 1)
  {
    if (v42 < 1)
    {
      if (v37 < 1)
      {
        if (v32 >= 1)
        {
          v65 = v32;
          v66 = v32 + -2.0;
          if (a2 / 86400.0 > 0.0)
          {
            v66 = v32 - a2 / 86400.0;
          }

          v67 = floor(v65 * 0.5);
          v68 = v67 + v67;
          v69 = v68 + -2.0;
          if (v68 != v65)
          {
            v69 = v68;
          }

          if (a2 / 86400.0 >= 2.0)
          {
            objc_msgSend_setDay_(v27, v48, v69 - v65, v69, 2.0, (v69 - v65), v69);
          }

          else
          {
            objc_msgSend_setDay_(v27, v48, v66 - v65, v66, 2.0, (v66 - v65), v69);
          }
        }
      }

      else
      {
        v60 = v37;
        v61 = v37 + -2.0;
        if (a2 / 3600.0 > 0.0)
        {
          v61 = v37 - a2 / 3600.0;
        }

        v62 = floor(v60 * 0.5);
        v63 = v62 + v62;
        v64 = v63 + -2.0;
        if (v63 != v60)
        {
          v64 = v63;
        }

        if (a2 / 3600.0 >= 2.0)
        {
          objc_msgSend_setHour_(v27, v48, v64 - v60, v64, 2.0, (v64 - v60), v64);
        }

        else
        {
          objc_msgSend_setHour_(v27, v48, v61 - v60, v61, 2.0, (v61 - v60), v64);
        }
      }
    }

    else
    {
      v56 = v42;
      v57 = v42 + -5.0;
      if (a2 / 60.0 > 0.0)
      {
        v57 = v42 - a2 / 60.0;
      }

      v58 = floor(v56 / 5.0) * 5.0;
      v59 = v58 + -5.0;
      if (v58 != v56)
      {
        v59 = v58;
      }

      if (a2 / 60.0 >= 5.0)
      {
        objc_msgSend_setMinute_(v27, v48, v59 - v56, v59, 5.0, (v59 - v56), v59);
      }

      else
      {
        objc_msgSend_setMinute_(v27, v48, v57 - v56, v57, 5.0, (v57 - v56), v59);
      }
    }
  }

  else
  {
    v52 = v47;
    v53 = v47 + -5.0;
    if (a2 > 0.0)
    {
      v53 = v47 - a2;
    }

    v54 = floor(v52 / 5.0) * 5.0;
    v55 = v54 + -5.0;
    if (v54 != v52)
    {
      v55 = v54;
    }

    if (a2 >= 5.0)
    {
      objc_msgSend_setSecond_(v27, v48, v55 - v52, v55, v55, (v55 - v52));
    }

    else
    {
      objc_msgSend_setSecond_(v27, v48, v53 - v52, v53, v55, (v53 - v52));
    }
  }

  v70 = objc_msgSend_dateByAddingComponents_toDate_options_(v12, v48, v49, v50, v51, v27, v7, 0);

  objc_msgSend_timeIntervalSinceReferenceDate(v70, v71, v72, v73, v74);
  v76 = v75;
  if (a2 > 0.0 && (a1 - v75) / a2 < 0.01)
  {
    v77 = a2 * 0.03;
    if (a2 >= 60.0)
    {
      v78 = 3600.0;
      if (a2 >= 3600.0)
      {
        if (a2 >= 86400.0)
        {
          v80 = floor(v77 / 86400.0);
          v78 = v80 * 86400.0;
          if (v80 <= 0.0)
          {
            v78 = 86400.0;
          }

          goto LABEL_49;
        }
      }

      else
      {
        v78 = 60.0;
      }

      v79 = floor(v77 / v78);
      if (v79 > 0.0)
      {
        v78 = v79 * v78;
      }
    }

    else
    {
      v78 = 1.0;
      if (v77 >= 1.0)
      {
        v78 = floor(v77);
      }
    }

LABEL_49:
    v76 = v76 - v78;
  }

  return v76;
}

double sub_27628BBB4(double a1, double a2)
{
  v3 = fmin(fabs(a2), a1);
  v4 = 0.0;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000001 || ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || (*&v3 & 0x7FFFFFFFFFFFFFFFuLL) - 1 <= 0xFFFFFFFFFFFFELL)
  {
    v7 = fabs(v3);
    if (v7 >= 1.0)
    {
      for (i = v7 * 0.1; i >= 1.0; i = i * 0.1)
      {
        v4 = v4 + -1.0;
      }
    }

    else
    {
      do
      {
        v7 = v7 * 10.0;
        v4 = v4 + 1.0;
      }

      while (v7 < 1.0);
    }
  }

  v10 = __exp10(-v4);
  if (v10 == 0.0)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "double p_roundUpPowerOf10WithRange(double, double)");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHMathUtilities.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 430, 0, "divide by zero");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
    v10 = 1.0;
  }

  v28 = trunc(v3 / v10);
  v29 = 5.0;
  if (v28 >= 2.0)
  {
    v29 = 1.0;
    if (v28 < 5.0)
    {
      v29 = 2.0;
    }
  }

  v30 = a1 / v29;
  v31 = v10 / v29;
  if (v10 <= v30)
  {
    v32 = v10;
  }

  else
  {
    v32 = v31;
  }

  v33 = a1 - fmod(a1, v32);
  if (v33 < a1)
  {
    v33 = v32 + v33;
  }

  return fmax(v33, 0.0);
}

double sub_27628BD5C(double a1, double a2)
{
  v2 = floor(a1 / 604800.0);
  v3 = a1 - v2 * 604800.0;
  v4 = floor(v3 / 86400.0);
  v5 = v3 - v4 * 86400.0;
  v6 = floor(v5 / 3600.0);
  v7 = v5 - v6 * 3600.0;
  v8 = floor(v7 / 60.0);
  v9 = v7 - v8 * 60.0;
  v10 = floor(v9);
  v11 = v9 - v10;
  if (v11 <= 0.0)
  {
    if (v10 <= 0.0)
    {
      if (v8 <= 0.0)
      {
        if (v6 <= 0.0)
        {
          v17 = a2 / 86400.0;
          v18 = floor(v4 * 0.5);
          v19 = v18 + v18;
          v20 = v19 + floor(v4 - v19 + v4 - v19);
          if (v4 - v19 > 0.0)
          {
            v19 = v20;
          }

          if (v4 <= 0.0)
          {
            v19 = v4;
          }

          if (v17 > 2.0)
          {
            v4 = v19;
          }
        }

        else if (a2 / 3600.0 > 2.0)
        {
          v15 = floor(v6 * 0.5);
          v16 = v15 + v15;
          if (v6 - v16 <= 0.0)
          {
            v6 = v16;
          }

          else
          {
            v6 = v16 + floor(v6 - v16 + v6 - v16);
          }
        }
      }

      else if (a2 / 60.0 > 5.0)
      {
        v14 = floor(v8 / 5.0);
        if (v8 - v14 * 5.0 <= 0.0)
        {
          v8 = v14 * 5.0;
        }

        else
        {
          v8 = v14 * 5.0 + floor((v8 - v14 * 5.0) * 5.0);
        }
      }
    }

    else if (a2 > 5.0)
    {
      v13 = floor(v10 / 5.0) * 5.0;
      if (v10 - v13 <= 0.0)
      {
        v10 = v13;
      }

      else
      {
        v10 = v13 + floor((v10 - v13) * 5.0);
      }
    }
  }

  else
  {
    v11 = sub_27628BBB4(v11, a2);
  }

  return v11 + v10 + v4 * 86400.0 + v2 * 604800.0 + v6 * 3600.0 + v8 * 60.0;
}

double sub_27628BF3C(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v6 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x277CBEAA8], a5, a1, a2, a3);
  v11 = objc_msgSend_currentCalendar(MEMORY[0x277CBEA80], v7, v8, v9, v10);
  v16 = objc_msgSend_timeZoneForSecondsFromGMT_(MEMORY[0x277CBEBB0], v12, v13, v14, v15, 0);
  objc_msgSend_setTimeZone_(v11, v17, v18, v19, v20, v16);

  v25 = objc_msgSend_components_fromDate_(v11, v21, v22, v23, v24, 240, v6);
  v26 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  v31 = objc_msgSend_day(v25, v27, v28, v29, v30);
  v36 = objc_msgSend_hour(v25, v32, v33, v34, v35);
  v41 = objc_msgSend_minute(v25, v37, v38, v39, v40);
  v46 = objc_msgSend_second(v25, v42, v43, v44, v45);
  if (v46 < 1)
  {
    if (v41 < 1)
    {
      if (v36 < 1)
      {
        if (v31 >= 1)
        {
          v61 = v31;
          v62 = 2.0;
          v63 = v31;
          if (a2 / 86400.0 > 2.0)
          {
            v64 = floor(v61 * 0.5);
            v63 = v64 + v64;
            v62 = v61 - v63;
            if (v61 - v63 > 0.0)
            {
              v62 = floor(v62 + v62);
              v63 = v63 + v62;
            }
          }

          objc_msgSend_setDay_(v26, v47, v63 - v61, v63, v62, (v63 - v61));
        }
      }

      else
      {
        v57 = v36;
        v58 = 2.0;
        v59 = v36;
        if (a2 / 3600.0 > 2.0)
        {
          v60 = floor(v57 * 0.5);
          v59 = v60 + v60;
          v58 = v57 - v59;
          if (v57 - v59 > 0.0)
          {
            v58 = floor(v58 + v58);
            v59 = v59 + v58;
          }
        }

        objc_msgSend_setHour_(v26, v47, v59 - v57, v59, v58, (v59 - v57));
      }
    }

    else
    {
      v54 = v41;
      v55 = 5.0;
      v56 = v41;
      if (a2 / 60.0 > 5.0)
      {
        v56 = floor(v54 / 5.0) * 5.0;
        v55 = v54 - v56;
        if (v54 - v56 > 0.0)
        {
          v55 = floor(v55 * 5.0);
          v56 = v56 + v55;
        }
      }

      objc_msgSend_setMinute_(v26, v47, v56 - v54, v56, v55, (v56 - v54));
    }
  }

  else
  {
    v51 = v46;
    v52 = 5.0;
    v53 = v46;
    if (a2 > 5.0)
    {
      v53 = floor(v51 / 5.0) * 5.0;
      v52 = v51 - v53;
      if (v51 - v53 > 0.0)
      {
        v52 = floor(v52 * 5.0);
        v53 = v53 + v52;
      }
    }

    objc_msgSend_setSecond_(v26, v47, v53 - v51, v53, v52, (v53 - v51));
  }

  v65 = objc_msgSend_dateByAddingComponents_toDate_options_(v11, v47, v48, v49, v50, v26, v6, 0);

  objc_msgSend_timeIntervalSinceReferenceDate(v65, v66, v67, v68, v69);
  v71 = v70;

  return v71;
}

float sub_27628C1E0(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v5 = *&a5;
  LODWORD(a5) = LODWORD(a4);
  LODWORD(a4) = 1135869952;
  return sub_27628C1F4(a3, a4, a5, v5, a1, a2);
}

float sub_27628C1F4(double a1, double a2, double a3, float a4, uint64_t a5, const char *a6)
{
  v7 = *&a3;
  v8 = *&a2;
  v9 = *&a1;
  v10 = vabds_f32(a4, *&a3);
  if (*&a3 >= a4)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a6, a1, a2, a3, "float p_NormalizeAngle(float, float, float, float)");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHMathUtilities.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 305, 0, "min must be smaller than max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
    if (v10 >= v8)
    {
      v26 = MEMORY[0x277D81150];
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a6, a1, a2, a3, "float p_NormalizeAngle(float, float, float, float)");
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHMathUtilities.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v33, v34, v35, v36, v27, v32, 316, 0, "min must be smaller than max");
LABEL_8:

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v82, v83, v84, v85);
      return v9;
    }

LABEL_5:
    v37 = MEMORY[0x277D81150];
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a6, a1, a2, a3, "float p_NormalizeAngle(float, float, float, float)");
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, v40, v41, v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHMathUtilities.m");
    v44 = v10;
    v45 = v8;
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v46, v47, v48, v49, v38, v43, 306, 0, "the range defined by min / max (%f) must be atleast size (%f) wide", *&v44, *&v45);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51, v52, v53);
    if (v7 >= a4)
    {
      v58 = MEMORY[0x277D81150];
      v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, v55, v56, v57, "float p_NormalizeAngle(float, float, float, float)");
      v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, v61, v62, v63, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHMathUtilities.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v58, v65, v66, v67, v68, v59, v64, 316, 0, "min must be smaller than max");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v69, v70, v71, v72);
    }

    v73 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, v55, v56, v57, "float p_NormalizeAngle(float, float, float, float)");
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v74, v75, v76, v77, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHMathUtilities.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v73, v78, v79, v80, v81, v27, v32, 317, 0, "the range defined by min / max (%f) must be atleast size (%f) wide", *&v44, *&v45);
    goto LABEL_8;
  }

  if (v10 < *&a2)
  {
    goto LABEL_5;
  }

  while (v9 < *&a3)
  {
    v9 = v9 + *&a2;
  }

  while (v9 > a4)
  {
    v9 = v9 - *&a2;
  }

  return v9;
}

float sub_27628C490(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v5 = *&a5;
  LODWORD(a5) = LODWORD(a4);
  LODWORD(a4) = 1086918619;
  return sub_27628C1F4(a3, a4, a5, v5, a1, a2);
}

CGFloat sub_27628C4A4@<D0>(CGContext *a1@<X0>, _OWORD *a2@<X8>)
{
  memset(&v6, 0, sizeof(v6));
  CGContextGetUserSpaceToDeviceSpaceTransform(&v6, a1);
  v5 = *MEMORY[0x277CBF348];
  TSDCGContextHasTileOffset();
  v3 = *&v6.c;
  *a2 = *&v6.a;
  a2[1] = v3;
  result = v6.tx;
  a2[2] = *&v6.tx;
  a2[3] = v5;
  return result;
}

__n128 sub_27628C514@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  v4 = *MEMORY[0x277CBF348];
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

uint64_t sub_27628C534(__int128 *a1, double a2, double a3, double a4, double a5, double a6)
{
  v6 = a1[1];
  v9[0] = *a1;
  v9[1] = v6;
  v7 = a1[3];
  v9[2] = a1[2];
  v9[3] = v7;
  return sub_27628C568(v9, a2, a3, a4, a5, a6);
}

uint64_t sub_27628C568(__int128 *a1, double a2, double a3, double a4, double a5, double a6)
{
  result = CGRectIsNull(*&a2);
  if (!result)
  {
    *&v24 = a2;
    *(&v24 + 1) = a3;
    v23[0] = a2 + a4;
    v23[1] = a3;
    v22[0] = a2;
    v22[1] = a3 + a5;
    v13 = a1[1];
    v17 = *a1;
    v18 = v13;
    v14 = a1[3];
    v19 = a1[2];
    v20 = v14;
    v21 = v24;
    sub_27628C6F8(&v17, &v24, v23, 2, a6);
    v15 = a1[1];
    v17 = *a1;
    v18 = v15;
    v16 = a1[3];
    v19 = a1[2];
    v20 = v16;
    return sub_27628C6F8(&v17, &v21, v22, 2, a6);
  }

  return result;
}

uint64_t sub_27628C654(CGContext *a1, double *a2, double *a3, int a4, double a5)
{
  memset(&v13, 0, sizeof(v13));
  CGContextGetUserSpaceToDeviceSpaceTransform(&v13, a1);
  v12 = *MEMORY[0x277CBF348];
  TSDCGContextHasTileOffset();
  v10 = v13;
  v11 = v12;
  return sub_27628C6F8(&v10.a, a2, a3, a4, a5);
}

uint64_t sub_27628C6F8(double *a1, double *a2, double *a3, int a4, double a5)
{
  a = *a1;
  b = a1[1];
  c = a1[2];
  d = a1[3];
  tx = a1[4];
  v15 = a1[5];
  memset(&v69, 0, sizeof(v69));
  v68.a = a;
  v68.b = b;
  v68.c = c;
  v68.d = d;
  v68.tx = tx;
  v68.ty = v15;
  result = CGAffineTransformInvert(&v69, &v68);
  v17 = vabdd_f64(*a2, *a3);
  v18 = vabdd_f64(a2[1], a3[1]);
  if (v18 < 0.001 != v17 < 0.001)
  {
    v59 = a5;
    v60 = a2[1];
    v61 = *a2;
    v62 = a3[1];
    v63 = *a3;
    v64 = v15;
    v65 = v17;
    v66 = v18;
    v19 = a1[6];
    v20 = a1[7];
    result = TSUNearlyEqualPoints();
    if (result)
    {
      ty = v64;
    }

    else
    {
      v67.a = a;
      v67.b = b;
      v67.c = c;
      v67.d = d;
      v67.tx = tx;
      v67.ty = v64;
      CGAffineTransformTranslate(&v68, &v67, v20 * v69.c + v69.a * v19, v20 * v69.d + v69.b * v19);
      a = v68.a;
      b = v68.b;
      c = v68.c;
      d = v68.d;
      tx = v68.tx;
      ty = v68.ty;
      v67 = v68;
      result = CGAffineTransformInvert(&v68, &v67);
      v69 = v68;
    }

    v22 = v59;
    v23 = fabs(c * v59 + a * v59);
    v24 = fabs(d * v59 + b * v59);
    if (v23 == v24)
    {
      goto LABEL_11;
    }

    v25 = fabs(v24 * 0.000000999999997);
    v26 = vabdd_f64(v23, v24);
    if (v65 < 0.001)
    {
      v22 = v23;
    }

    if (v66 >= 0.001)
    {
      v24 = v22;
    }

    if (v26 < v25)
    {
LABEL_11:
      v24 = v23;
    }

    v27 = v24;
    v28 = fabsf(v27);
    v29 = v28 - floorf(v28);
    v30 = v27 >= 0.0 || v29 > 0.5;
    if (v30 && (v27 >= 0.0 ? (v31 = v29 < 0.5) : (v31 = 1), v31))
    {
      v32 = floorf(v27);
    }

    else
    {
      v32 = ceilf(v27);
    }

    if (v32)
    {
      v33 = 1;
    }

    else
    {
      v33 = v24 < 0.05;
    }

    v34 = v32 & 1;
    v35 = tx + v60 * c + a * v61;
    v36 = ty + v60 * d + b * v61;
    v37 = tx + v62 * c + a * v63;
    v38 = ty + v62 * d + b * v63;
    if (v33 && v34 == 0)
    {
      v40 = 0;
      v41 = 0;
    }

    else
    {
      v40 = a4 == 2;
      v41 = v66 < 0.001 && a4 == 2;
      if (v65 >= 0.001)
      {
        v40 = 0;
      }

      else
      {
        v41 = 1;
      }

      if (v41)
      {
        v35 = v35 + 0.5;
        v37 = v37 + 0.5;
      }

      if (v66 < 0.001 || v40)
      {
        v36 = v36 + 0.5;
        v38 = v38 + 0.5;
        v40 = 1;
      }
    }

    v42 = fabs(v35);
    *&v42 = v42 - floor(v42);
    v43 = *&v42;
    if ((v35 >= 0.0 || v43 > 0.49) && (v35 < 0.0 || v43 < 0.49))
    {
      v44 = floor(v35);
    }

    else
    {
      v44 = ceil(v35);
    }

    v45 = fabs(v36);
    *&v45 = v45 - floor(v45);
    v46 = *&v45;
    if ((v36 >= 0.0 || v46 > 0.49) && (v36 < 0.0 || v46 < 0.49))
    {
      v47 = floor(v36);
    }

    else
    {
      v47 = ceil(v36);
    }

    v48 = fabs(v37);
    *&v48 = v48 - floor(v48);
    v49 = *&v48;
    if ((v37 >= 0.0 || v49 > 0.49) && (v37 < 0.0 || v49 < 0.49))
    {
      v50 = floor(v37);
    }

    else
    {
      v50 = ceil(v37);
    }

    v51 = fabs(v38);
    *&v51 = v51 - floor(v51);
    v52 = *&v51;
    if ((v38 >= 0.0 || v52 > 0.49) && (v38 < 0.0 || v52 < 0.49))
    {
      v53 = floor(v38);
    }

    else
    {
      v53 = ceil(v38);
    }

    if (v41)
    {
      v44 = v44 + -0.5;
      v50 = v50 + -0.5;
    }

    if (v40)
    {
      v47 = v47 + -0.5;
      v53 = v53 + -0.5;
    }

    v54 = v69.ty;
    v55 = v69.tx + v47 * v69.c + v69.a * v44;
    v56 = v69.ty + v47 * v69.d + v69.b * v44;
    v57 = v69.tx + v53 * v69.c + v69.a * v50;
    v58 = v53 * v69.d + v69.b * v50;
    *a2 = v55;
    a2[1] = v56;
    *a3 = v57;
    a3[1] = v54 + v58;
  }

  return result;
}

uint64_t sub_27628CB34(CGContext *a1, double a2, double a3, double a4, double a5, double a6)
{
  memset(&v15, 0, sizeof(v15));
  CGContextGetUserSpaceToDeviceSpaceTransform(&v15, a1);
  v14 = *MEMORY[0x277CBF348];
  TSDCGContextHasTileOffset();
  v12 = v15;
  v13 = v14;
  return sub_27628C568(&v12, a2, a3, a4, a5, a6);
}

uint64_t sub_27628CBE8(uint64_t result, char *a2, unint64_t a3, unsigned int a4, int a5, double a6, double a7, double a8)
{
  v13 = result;
  if (a4 >= 3)
  {
    v25 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a6, a7, a8, "void TSCHDefeatAALinePoints(CGContextRef, CGPoint *, NSUInteger, TSCHLinePathType, CGFloat, CGLineCap)");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHGeometry.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v30, v31, v32, v33, v15, v20, 256, 0, "unknown aaLineType (%ld)", a4);
  }

  else
  {
    if (a4 != 2 || (a3 & 1) == 0)
    {
      goto LABEL_7;
    }

    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a6, a7, a8, "void TSCHDefeatAALinePoints(CGContextRef, CGPoint *, NSUInteger, TSCHLinePathType, CGFloat, CGLineCap)");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHGeometry.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 259, 0, "expected an even number of points for segmented drawing");
  }

  result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
LABEL_7:
  if (a3 >= 2)
  {
    v38 = *a2;
    v39 = &a2[16 * a3];
    v46 = *(v39 - 1);
    v47 = v38;
    v40 = 1;
    v41 = a4 == 2 ? 2 : 1;
    v42 = a2;
    do
    {
      result = sub_27628C654(v13, v42, v42 + 2, a5, a6);
      v40 += v41;
      v42 += 2 * v41;
    }

    while (v40 < a3);
    if (a4 == 1)
    {
      v43 = *(&v47 + 1);
      v44 = *(&v46 + 1);
      v45 = vabdd_f64(*&v47, *&v46) < 0.001 || *&v47 == *&v46;
      result = sub_27628C654(v13, &v47, &v46, a5, a6);
      if (v43 == v44 || vabdd_f64(v43, v44) < 0.001)
      {
        *(a2 + 1) = *(&v47 + 1);
        *(v39 - 1) = *(&v46 + 1);
      }

      if (v45)
      {
        *a2 = v47;
        *(v39 - 2) = v46;
      }
    }
  }

  return result;
}

double sub_27628CEB4(double a1, double a2, double a3, double a4)
{
  v4 = 0.0001;
  if (a3 >= 0.0001)
  {
    v5 = 0.0001;
  }

  else
  {
    v5 = 0.0;
  }

  if (a4 < 0.0001)
  {
    v4 = 0.0;
  }

  v8 = CGRectInset(*&a1, v5, v4);

  *&result = CGRectIntegral(v8);
  return result;
}

CGAffineTransform *sub_27628CF0C@<X0>(CGAffineTransform *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = MEMORY[0x277CBF2C0];
  v5 = *(MEMORY[0x277CBF2C0] + 16);
  *a3 = *MEMORY[0x277CBF2C0];
  *(a3 + 16) = v5;
  *(a3 + 32) = *(v4 + 32);
  if (a2)
  {
    v6 = a2;
    p_a = &result->a;
    do
    {
      v8 = *(a3 + 16);
      *&t1.a = *a3;
      *&t1.c = v8;
      *&t1.tx = *(a3 + 32);
      v9 = p_a[1];
      *&v10.a = *p_a;
      *&v10.c = v9;
      *&v10.tx = p_a[2];
      result = CGAffineTransformConcat(a3, &t1, &v10);
      p_a += 3;
      --v6;
    }

    while (v6);
  }

  return result;
}

id sub_27628EC28(unint64_t a1, unint64_t a2, void *a3)
{
  v6 = a3;
  v10 = a2 - 2;
  if (a2 <= 2)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "TSCHDownsampleData *TSCHDownsampleDataUsingTriangles(NSUInteger, NSUInteger, CGPoint (^__strong)(NSUInteger))");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHDownsampler.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 104, 0, "Need to downsample to at least 3 points");
LABEL_33:

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v174, v175, v176, v177);
    v182 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v178, v179, v180, v181, 0, a1);
    v187 = objc_msgSend_dataWithIndexSet_(TSCHDownsampleData, v183, v184, v185, v186, v182);
    goto LABEL_40;
  }

  if (a2 >= a1)
  {
    v165 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "TSCHDownsampleData *TSCHDownsampleDataUsingTriangles(NSUInteger, NSUInteger, CGPoint (^__strong)(NSUInteger))");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v166, v167, v168, v169, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHDownsampler.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v165, v170, v171, v172, v173, v12, v17, 108, 0, "Need to downsample to fewer points");
    goto LABEL_33;
  }

  v268 = a2;
  v22 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v5, v7, v8, v9);
  v27 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v23, v24, v25, v26);
  v32 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v28, v29, v30, v31);
  v33 = v6[2](v6, 0);
  v35 = v34;
  v36 = v32;
  v37 = v27;
  v274 = v22;
  objc_msgSend_addIndex_(v22, v38, v39, v40, v41, 0);
  v46 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v42, v43, v44, v45, 0);
  v51 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v47, v48, v49, v50, 0);
  objc_msgSend_setObject_forKeyedSubscript_(v37, v52, v53, v54, v55, v46, v51);
  v272 = v37;

  v60 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v56, v57, v58, v59, 0);
  v65 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v61, v62, v63, v64, 0);
  objc_msgSend_setObject_forKeyedSubscript_(v36, v66, v67, v68, v69, v60, v65);
  v273 = v36;

  v72 = (a1 - 2) / v10;
  v271 = a1;
  v73 = a1 - 1;
  v74 = 1;
  v75 = vcvtad_u64_f64(v72);
  v77 = *MEMORY[0x277CBF348];
  v76 = *(MEMORY[0x277CBF348] + 8);
  v277 = 1;
  v78 = v72;
  v79 = 1;
  v269 = v73;
  v270 = v72;
  while (v79 != v73)
  {
    if (v79 > v75)
    {
      if (v79 != v75 + 1)
      {
        v80 = MEMORY[0x277D81150];
        v81 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, v76, v77, v71, "TSCHDownsampleData *TSCHDownsampleDataUsingTriangles(NSUInteger, NSUInteger, CGPoint (^__strong)(NSUInteger))");
        v86 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v82, v83, v84, v85, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHDownsampler.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v80, v87, v88, v89, v90, v81, v86, 137, 0, "Bucket calculation wrong");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v91, v92, v93, v94);
      }

      v78 = v72 + v78;
      v75 = vcvtad_u64_f64(v78);
      v277 = v79;
    }

    v95 = v75 + 1;
    v276 = v75;
    v96 = vcvtad_u64_f64(v72 + v78) - v75;
    if (v75 + 1 == v73)
    {
      v97 = 1;
    }

    else
    {
      v97 = v96;
    }

    if (v97)
    {
      v98 = v97;
      v99 = v75 + 1;
      do
      {
        v6[2](v6, v99);
        TSUAddPoints();
        ++v99;
        --v98;
      }

      while (v98);
    }

    else
    {
      v100 = MEMORY[0x277D81150];
      v101 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, v72 + v78, v77, v71, "CGPoint TSCHAveragePointValueForIndexes(NSRange, CGPoint (^__strong)(NSUInteger))");
      v106 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v102, v103, v104, v105, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHDownsampler.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v100, v107, v108, v109, v110, v101, v106, 82, 0, "Expected a nonzero range");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v111, v112, v113, v114);
    }

    TSUMultiplyPointScalar();
    if (v95 == v277)
    {
      goto LABEL_34;
    }

    v119 = v116;
    v120 = v117;
    v275 = v78;
    v121 = -(v33 * v117);
    v122 = -v116;
    v123 = v95 - v277 <= 1 ? 1 : v95 - v277;
    v124 = v79 + v123;
    v125 = -1.0;
    v126 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v127 = v6[2](v6, v79);
      v118 = v121 + v33 * v128 + v127 * v120;
      v117 = (v118 - v127 * v35 + v119 * v35 + v122 * v128) * 0.5;
      v116 = -v117;
      if (v117 >= 0.0)
      {
        v116 = v117;
      }

      if (v116 > v125)
      {
        v125 = v116;
        v126 = v79;
      }

      ++v79;
      --v123;
    }

    while (v123);
    v72 = v270;
    v78 = v275;
    if (v126 == 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_34:
      v188 = MEMORY[0x277D81150];
      v189 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v115, v116, v117, v118, "TSCHDownsampleData *TSCHDownsampleDataUsingTriangles(NSUInteger, NSUInteger, CGPoint (^__strong)(NSUInteger))");
      v194 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v190, v191, v192, v193, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHDownsampler.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v188, v195, v196, v197, v198, v189, v194, 166, 0, "Did not select a representative point");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v199, v200, v201, v202);
      v207 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v203, v204, v205, v206, 0, v271);
      v187 = objc_msgSend_dataWithIndexSet_(TSCHDownsampleData, v208, v209, v210, v211, v207);

      v212 = v273;
      v182 = v274;
      v213 = v272;
      goto LABEL_39;
    }

    v33 = v6[2](v6, v126);
    v35 = v129;
    v130 = v273;
    v131 = v272;
    objc_msgSend_addIndex_(v274, v132, v133, v134, v135, v126);
    v140 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v136, v137, v138, v139, v126);
    v145 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v141, v142, v143, v144, v74);
    objc_msgSend_setObject_forKeyedSubscript_(v131, v146, v147, v148, v149, v140, v145);

    v154 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v150, v151, v152, v153, v74);
    v159 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v155, v156, v157, v158, v126);
    objc_msgSend_setObject_forKeyedSubscript_(v130, v160, v161, v162, v163, v154, v159);

    ++v74;
    v79 = v124;
    v164 = v124 >= v271;
    v73 = v269;
    v75 = v276;
    if (v164)
    {
      goto LABEL_36;
    }
  }

  v6[2](v6, v73);
  v214 = v273;
  v215 = v272;
  objc_msgSend_addIndex_(v274, v216, v217, v218, v219, v73);
  v224 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v220, v221, v222, v223, v73);
  v229 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v225, v226, v227, v228, v74);
  objc_msgSend_setObject_forKeyedSubscript_(v215, v230, v231, v232, v233, v224, v229);

  v238 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v234, v235, v236, v237, v74);
  v243 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v239, v240, v241, v242, v73);
  objc_msgSend_setObject_forKeyedSubscript_(v214, v244, v245, v246, v247, v238, v243);

LABEL_36:
  v182 = v274;
  if (objc_msgSend_count(v274, v70, v76, v77, v71) != v268)
  {
    v252 = MEMORY[0x277D81150];
    v253 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v248, v249, v250, v251, "TSCHDownsampleData *TSCHDownsampleDataUsingTriangles(NSUInteger, NSUInteger, CGPoint (^__strong)(NSUInteger))");
    v258 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v254, v255, v256, v257, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHDownsampler.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v252, v259, v260, v261, v262, v253, v258, 177, 0, "Unexpected downsampled index set count");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v263, v264, v265, v266);
  }

  v213 = v272;
  v212 = v273;
  v187 = objc_msgSend_dataWithIndexSet_indexToPositionMap_positionToIndexMap_(TSCHDownsampleData, v248, v249, v250, v251, v274, v273, v272);
LABEL_39:

LABEL_40:

  return v187;
}

double sub_27628F448(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  v8 = v7;
  if (!v6)
  {
    v16 = a2;
    if (!v7)
    {
      goto LABEL_18;
    }

    goto LABEL_11;
  }

  objc_opt_class();
  v9 = TSUDynamicCast();
  v14 = v9;
  if (v9)
  {
    objc_msgSend_totalForValueIndex_(v9, v10, v11, v12, v13, a2);
    v16 = v15;
  }

  else
  {
    objc_opt_class();
    v17 = TSUDynamicCast();
    v22 = v17;
    if (v17)
    {
      objc_msgSend_totalForValueIndex_(v17, v18, v19, v20, v21, a2);
      v16 = v23;
    }

    else
    {
      v24 = MEMORY[0x277D81150];
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "double TSCHStackedDownsampleValueForElementIndex(TSCHChartValueAxis *__strong, NSUInteger)");
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHDownsampler.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v31, v32, v33, v34, v25, v30, 46, 0, "unexpected axis type");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37, v38);
      v16 = 0.0;
    }
  }

  if (v8)
  {
LABEL_11:
    v39 = v8;
    objc_opt_class();
    v40 = TSUDynamicCast();
    v45 = v40;
    if (v40)
    {
      objc_msgSend_totalForValueIndex_(v40, v41, v42, v43, v44, a2);
    }

    else
    {
      objc_opt_class();
      v46 = TSUDynamicCast();
      v51 = v46;
      if (v46)
      {
        objc_msgSend_totalForValueIndex_(v46, v47, v48, v49, v50, a2);
      }

      else
      {
        v52 = MEMORY[0x277D81150];
        v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, v48, v49, v50, "double TSCHStackedDownsampleValueForElementIndex(TSCHChartValueAxis *__strong, NSUInteger)");
        v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, v55, v56, v57, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHDownsampler.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v52, v59, v60, v61, v62, v53, v58, 46, 0, "unexpected axis type");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v63, v64, v65, v66);
      }
    }
  }

LABEL_18:

  return v16;
}

double sub_27628F6A8(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  v12 = v7;
  if (v6)
  {
    v13 = objc_msgSend_valueForAxis_valueIndex_(v5, v8, v9, v10, v11, v6, a2);
    v18 = v13;
    if (v13)
    {
      objc_msgSend_doubleValue(v13, v14, v15, v16, v17);
      v20 = v19;
    }

    else
    {
      v20 = 0.0;
    }

    if (!v12)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v20 = a2;
    if (!v7)
    {
      goto LABEL_11;
    }
  }

  v21 = v5;
  v26 = objc_msgSend_valueForAxis_valueIndex_(v21, v22, v23, v24, v25, v12, a2);
  v31 = v26;
  if (v26)
  {
    objc_msgSend_doubleValue(v26, v27, v28, v29, v30);
  }

LABEL_11:
  return v20;
}

double sub_27628F994(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  v12 = objc_msgSend_valueForAxis_valueIndex_(v5, v8, v9, v10, v11, v6, a2);
  v17 = v12;
  if (v12)
  {
    objc_msgSend_doubleValue(v12, v13, v14, v15, v16);
    v19 = v18;
  }

  else
  {
    v19 = 0.0;
  }

  v20 = a2;
  v25 = objc_msgSend_model(v5, v21, v22, v23, v24);
  v30 = objc_msgSend_numberOfValues(v25, v26, v27, v28, v29);
  objc_msgSend_unitSpaceValueForCountSpaceValue_min_count_(v7, v31, v20, 0.0, v30);
  v33 = v32;

  v34 = v19 * __sincos_stret((v33 + v33) * 3.14159265 + -1.57079633).__cosval;
  return v34;
}

double sub_276297280(void *a1)
{
  v1 = a1;
  objc_msgSend_referenceLineAxisValue(v1, v2, v3, v4, v5);
  v10 = v7;
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v11 = objc_msgSend_axis(v1, v6, v7, v8, v9);
    objc_msgSend_unitSpaceValueForDataSpaceValue_(v11, v12, v10, v13, v14);
    v10 = v15;
  }

  return v10;
}

void sub_276297B0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, void *a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *__p, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a56)
  {
    operator delete(a56);
  }

  if (a59)
  {
    operator delete(a59);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_276297C38(uint64_t result, _BYTE *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 == v5 << 6)
  {
    if ((v4 + 1) < 0)
    {
      sub_276161760();
    }

    v6 = v5 << 7;
    if (v6 <= (v4 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v4 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v4 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    result = sub_276299E50(result, v7);
    v4 = v3[1];
  }

  v3[1] = v4 + 1;
  v8 = *v3;
  v9 = v4 >> 6;
  v10 = 1 << v4;
  if (*a2 == 1)
  {
    v11 = *(v8 + 8 * v9) | v10;
  }

  else
  {
    v11 = *(v8 + 8 * v9) & ~v10;
  }

  *(v8 + 8 * v9) = v11;
  return result;
}

void sub_276298798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, void *a47, void *a48)
{
  if (STACK[0x208])
  {
    operator delete(STACK[0x208]);
  }

  v49 = STACK[0x220];
  if (STACK[0x220])
  {
    STACK[0x228] = v49;
    operator delete(v49);
  }

  v50 = STACK[0x238];
  if (STACK[0x238])
  {
    STACK[0x240] = v50;
    operator delete(v50);
  }

  v51 = STACK[0x250];
  if (STACK[0x250])
  {
    STACK[0x258] = v51;
    operator delete(v51);
  }

  v52 = STACK[0x268];
  if (STACK[0x268])
  {
    STACK[0x270] = v52;
    operator delete(v52);
  }

  _Unwind_Resume(a1);
}

void sub_276298934(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    v10 = v9 + 1;
    if (v9 + 1 > 0x555555555555555)
    {
      sub_276161760();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      sub_27629A1B8(a1, v12);
    }

    v13 = 48 * v9;
    v14 = *a2;
    v15 = a2[2];
    *(v13 + 16) = a2[1];
    *(v13 + 32) = v15;
    *v13 = v14;
    v8 = 48 * v9 + 48;
    v16 = *(a1 + 8) - *a1;
    v17 = v13 - v16;
    memcpy((v13 - v16), *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[2];
    v4[1] = a2[1];
    v4[2] = v7;
    *v4 = v6;
    v8 = (v4 + 3);
  }

  *(a1 + 8) = v8;
}

void sub_276298A3C(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_276161760();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_27616222C(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_276299B3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, void *a20, void *a21, uint64_t a22, void *a23, void *a24, void *a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  v63 = *(v61 - 256);
  if (v63)
  {
    *(v61 - 248) = v63;
    operator delete(v63);
  }

  v64 = *(v61 - 232);
  if (v64)
  {
    *(v61 - 224) = v64;
    operator delete(v64);
  }

  v65 = *(v61 - 208);
  if (v65)
  {
    *(v61 - 200) = v65;
    operator delete(v65);
  }

  v66 = *(v61 - 184);
  if (v66)
  {
    *(v61 - 176) = v66;
    operator delete(v66);
  }

  _Unwind_Resume(a1);
}

void sub_276299D70(const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_276161760();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_2761AAC20(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t sub_276299E50(uint64_t result, unint64_t a2)
{
  if (a2 > *(result + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      sub_276299F0C(&v2, a2);
    }

    sub_276161760();
  }

  return result;
}

void sub_276299EF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_276299F0C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    sub_2761AAC20(a1, v2);
  }

  sub_276161760();
}

void sub_276299F50(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[1];
  v7 = v6 + a4;
  a1[1] = v6 + a4;
  if (!v6 || ((v7 - 1) ^ (v6 - 1)) >= 0x40)
  {
    if (v7 >= 0x41)
    {
      v8 = (v7 - 1) >> 6;
    }

    else
    {
      v8 = 0;
    }

    *(*a1 + 8 * v8) = 0;
  }

  v20 = v4;
  v21 = v5;
  v9 = *(a2 + 8);
  v10 = *a3;
  v11 = *(a3 + 8);
  v12 = *a1 + 8 * (v6 >> 6);
  v18 = *a2;
  v19 = v9;
  v16 = v10;
  v17 = v11;
  v14 = v12;
  v15 = v6 & 0x3F;
  sub_276299FF4(&v18, &v16, &v14, &v13);
}

void sub_276299FF4(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = *(a2 + 2);
  v16 = *a1;
  v17 = v5;
  v14 = v6;
  v15 = v7;
  v8 = *(a3 + 2);
  v12 = *a3;
  v13 = v8;
  sub_27629A084(&v16, &v14, &v12, &v18);
  v9 = v19;
  v10 = v20;
  v11 = v21;
  *a4 = v18;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
}

void sub_27629A084(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a3 + 8);
  if (*a1 != *a2 || v5 != *(a2 + 8))
  {
    do
    {
      v8 = *a3;
      v9 = 1 << v6;
      if ((*v4 >> v5))
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      if (v5 == 63)
      {
        v11 = 0;
        *a1 = ++v4;
      }

      else
      {
        v11 = v5 + 1;
      }

      *(a1 + 8) = v11;
      v12 = *(a3 + 8);
      if (v12 == 63)
      {
        v6 = 0;
        *a3 += 8;
        v4 = *a1;
      }

      else
      {
        v6 = v12 + 1;
      }

      *(a3 + 8) = v6;
      v5 = *(a1 + 8);
    }

    while (v4 != *a2 || v5 != *(a2 + 8));
  }

  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = *a3;
  *(a4 + 24) = v6;
}

uint64_t sub_27629A154@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = *(result + 8);
  v6 = *a2;
  v7 = *(a2 + 8);
  if (*result != *a2 || v5 != v7)
  {
    v9 = *a2;
    do
    {
      *a3++ = (*v4 >> v5) & 1;
      if (v5 == 63)
      {
        v9 = v6;
      }

      v4 += v5 == 63;
      if (v5 == 63)
      {
        v5 = 0;
      }

      else
      {
        ++v5;
      }
    }

    while (v4 != v9 || v5 != v7);
    v5 = v7;
  }

  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = a3;
  return result;
}

void sub_27629A1B8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_2761617D0();
}

uint64_t sub_27629E0DC(void *a1, const char *a2, double a3, double a4, double a5)
{
  v5 = objc_msgSend_pathType(a1, a2, a3, a4, a5);
  v10 = objc_msgSend_referenceLineLabelType(TSCHSelectionPathType, v6, v7, v8, v9);
  isEqual = objc_msgSend_isEqual_(v5, v11, v12, v13, v14, v10);

  if (isEqual)
  {
    v20 = 1;
  }

  else
  {
    v21 = objc_msgSend_referenceLineValueLabelType(TSCHSelectionPathType, v16, v17, v18, v19);
    v26 = objc_msgSend_isEqual_(v5, v22, v23, v24, v25, v21);

    if (v26)
    {
      v20 = 2;
    }

    else
    {
      v20 = 0;
    }
  }

  return v20;
}

void sub_27629E8F4(void *a1, uint64_t a2)
{
  v3 = a1;
  v8 = *(a2 + 8);
  v9 = *a2;
  if (*a2 <= 1)
  {
    if (v9)
    {
      if (v9 != 1)
      {
        goto LABEL_13;
      }

      *&v5 = *v8;
      *&v6 = v8[1];
      *&v11 = *v8;
      *(&v11 + 1) = v6;
      v10 = @"\tlineto (%g, %g)\n";
    }

    else
    {
      *&v5 = *v8;
      *&v6 = v8[1];
      *&v11 = *v8;
      *(&v11 + 1) = v6;
      v10 = @"\tmoveto (%g, %g)\n";
    }
  }

  else
  {
    switch(v9)
    {
      case 2:
        v5 = *v8;
        *&v6 = v8[2];
        v7 = v8[3];
        *&v12 = v6;
        *(&v12 + 1) = v7;
        v11 = *v8;
        v10 = @"\tquadto (%g, %g) (%g, %g)\n";
        break;
      case 3:
        v5 = *v8;
        v6 = *(v8 + 1);
        v7 = v8[4];
        v13 = v7;
        v14 = *(v8 + 5);
        v11 = *v8;
        v12 = v6;
        v10 = @"\tcurveto (%g, %g) (%g, %g) (%g, %g)\n";
        break;
      case 4:
        v10 = @"\tclosepath\n";
        break;
      default:
        goto LABEL_13;
    }
  }

  v15 = v3;
  objc_msgSend_appendFormat_(v3, v4, *&v5, *&v6, v7, v10, v11, v12, *&v13, v14);
  v3 = v15;
LABEL_13:
}

uint64_t sub_2762A0DC0(uint64_t a1, uint64_t a2)
{
  v4 = 100 * a2;
  v5 = 100 * a2 + 100;
  do
  {
    (*(*(a1 + 32) + 16))();
    v6 = (*(a1 + 40) + 16 * a2);
    result = TSUSizeMax();
    *v6 = v8;
    v6[1] = v9;
    ++v4;
  }

  while (v4 < v5);
  return result;
}

BOOL sub_2762A1784(uint64_t a1, float64x2_t *a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v64[5] = *MEMORY[0x277D85DE8];
  v15 = *(a1 + 16);
  v61 = *a1;
  v62[0] = v15;
  v62[1] = *(a1 + 32);
  sub_2762A1A0C(&v61, &v63, a3, a4, a5, a6);
  v16 = a2[1];
  v60[0] = *a2;
  v60[1] = v16;
  v60[2] = a2[2];
  sub_2762A1A0C(v60, &v61, a7, a8, a9, a10);
  v17 = 0;
  while (v17 != 4)
  {
    v18 = &v63 + v17;
    v19 = v18->f64[0];
    v20 = v18->f64[1];
    v21 = &v63 + (++v17 & 3);
    v22 = v21->f64[0] - v19;
    v23 = v21->f64[1] - v20;
    v24 = sqrt(v22 * v22 + v23 * v23);
    v25 = -v23 / v24;
    v26 = v22 / v24;
    v27 = v63.f64[1] * (v22 / v24) + v25 * v63.f64[0];
    v28 = v64;
    v29 = 3;
    v30 = v27;
    do
    {
      v31 = v26 * *v28 + v25 * *(v28 - 1);
      if (v30 >= v31)
      {
        v30 = v26 * *v28 + v25 * *(v28 - 1);
      }

      if (v27 < v31)
      {
        v27 = v26 * *v28 + v25 * *(v28 - 1);
      }

      v28 += 2;
      --v29;
    }

    while (v29);
    v32 = v26 * v61.f64[1] + v25 * v61.f64[0];
    v33 = v62 + 1;
    v34 = 3;
    v35 = v32;
    do
    {
      v36 = v26 * *v33 + v25 * *(v33 - 1);
      if (v35 >= v36)
      {
        v35 = v26 * *v33 + v25 * *(v33 - 1);
      }

      if (v32 < v36)
      {
        v32 = v26 * *v33 + v25 * *(v33 - 1);
      }

      v33 += 2;
      --v34;
    }

    while (v34);
    if (v35 > v27 || v30 > v32)
    {
      return 0;
    }
  }

  v39 = 0;
  do
  {
    result = v39 == 4;
    if (v39 == 4)
    {
      break;
    }

    v40 = &v61 + v39;
    v41 = v40->f64[0];
    v42 = v40->f64[1];
    v43 = &v61 + (++v39 & 3);
    v44 = v43->f64[0] - v41;
    v45 = v43->f64[1] - v42;
    v46 = sqrt(v44 * v44 + v45 * v45);
    v47 = -v45 / v46;
    v48 = v44 / v46;
    v49 = v63.f64[1] * (v44 / v46) + v47 * v63.f64[0];
    v50 = v64;
    v51 = 3;
    v52 = v49;
    do
    {
      v53 = v48 * *v50 + v47 * *(v50 - 1);
      if (v52 >= v53)
      {
        v52 = v48 * *v50 + v47 * *(v50 - 1);
      }

      if (v49 < v53)
      {
        v49 = v48 * *v50 + v47 * *(v50 - 1);
      }

      v50 += 2;
      --v51;
    }

    while (v51);
    v54 = v48 * v61.f64[1] + v47 * v61.f64[0];
    v55 = v62 + 1;
    v56 = 3;
    v57 = v54;
    do
    {
      v58 = v48 * *v55 + v47 * *(v55 - 1);
      if (v57 >= v58)
      {
        v57 = v48 * *v55 + v47 * *(v55 - 1);
      }

      if (v54 < v58)
      {
        v54 = v48 * *v55 + v47 * *(v55 - 1);
      }

      v55 += 2;
      --v56;
    }

    while (v56);
  }

  while (v57 <= v49 && v52 <= v54);
  return result;
}

float64x2_t sub_2762A1A0C(float64x2_t *a1, float64x2_t *a2, double a3, double a4, double a5, double a6)
{
  *a2 = vaddq_f64(a1[2], vmlaq_n_f64(vmulq_n_f64(a1[1], a4), *a1, a3));
  v6 = a3 + a5;
  a2[1] = vaddq_f64(a1[2], vmlaq_n_f64(vmulq_n_f64(a1[1], a4), *a1, v6));
  v7 = a4 + a6;
  a2[2] = vaddq_f64(a1[2], vmlaq_n_f64(vmulq_n_f64(a1[1], v7), *a1, v6));
  result = vaddq_f64(a1[2], vmlaq_n_f64(vmulq_n_f64(a1[1], v7), *a1, v6 - a5));
  a2[3] = result;
  return result;
}

CGFloat sub_2762A1A7C(_OWORD *a1, CGFloat a2, CGFloat a3)
{
  v6.size.height = a3;
  v6.size.width = a2;
  v6.origin.x = *MEMORY[0x277CBF348];
  v6.origin.y = *(MEMORY[0x277CBF348] + 8);
  v3 = a1[1];
  *&v5.a = *a1;
  *&v5.c = v3;
  *&v5.tx = a1[2];
  v7 = CGRectApplyAffineTransform(v6, &v5);
  return v7.size.width;
}

CGPath *sub_2762A1ACC(uint64_t a1, unint64_t a2, char a3)
{
  Mutable = CGPathCreateMutable();
  if (a2 >= 3)
  {
    v7 = a1 + 24;
    CGPathMoveToPointSafe();
    v8 = a2 - 1;
    do
    {
      CGPathAddLineToPointSafe();
      v7 += 16;
      --v8;
    }

    while (v8);
    if (a3)
    {
      CGPathCloseSubpath(Mutable);
    }
  }

  return Mutable;
}

CGPathRef sub_2762A1B4C(uint64_t a1, const char *a2, double a3, double a4, double a5, double a6)
{
  v32[2] = *MEMORY[0x277D85DE8];
  v10 = objc_msgSend_bezierPathWithCGPath_(MEMORY[0x277D81160], a2, a3, a4, a5, a1);
  v12 = objc_msgSend_bezierPathWithRect_(MEMORY[0x277D81160], v11, a3, a4, a5, a6);
  v13 = MEMORY[0x277D81160];
  v32[0] = v10;
  v32[1] = v12;
  v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v14, v15, v16, v17, v32, 2);
  v23 = objc_msgSend_intersectBezierPaths_(v13, v19, v20, v21, v22, v18);

  v24 = v23;
  v29 = objc_msgSend_CGPath(v24, v25, v26, v27, v28);
  v30 = CGPathRetain(v29);

  return v30;
}

const CGPath *sub_2762A1C64(int a1, int a2, int a3, int a4, double a5, double a6, double a7, double a8, double a9)
{
  v53 = CGRectStandardize(*&a5);
  if (a1)
  {
    width = v53.size.width;
  }

  else
  {
    width = v53.size.height;
  }

  v16 = width * 0.5;
  if (!a2)
  {
    v16 = width;
  }

  if (a1)
  {
    height = v53.size.height;
  }

  else
  {
    height = v53.size.width;
  }

  v18 = v16 * a9;
  if (a1)
  {
    v19 = v53.size.width;
  }

  else
  {
    v19 = v16 * a9;
  }

  if (height < v18)
  {
    v53.size.width = v19;
  }

  if (((height < v18) & a1) != 0)
  {
    v53.size.height = v18;
  }

  v20 = fabs(width) * 0.5 * a9;
  v21 = 0.0;
  if (a3)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0.0;
  }

  if (!a3)
  {
    v21 = v20;
  }

  if (a1)
  {
    v23 = v21;
  }

  else
  {
    v23 = v22;
  }

  v24 = v22;
  if (a1)
  {
    v25 = v22;
  }

  else
  {
    v25 = v21;
  }

  if (a2)
  {
    v26 = v23;
  }

  else
  {
    v26 = v20;
  }

  if (a2)
  {
    v27 = v21;
  }

  else
  {
    v27 = v20;
  }

  if (a2)
  {
    v28 = v24;
  }

  else
  {
    v28 = v20;
  }

  if (a2)
  {
    v20 = v25;
  }

  v29 = objc_msgSend_bezierPathWithRoundedRect_upperRightRadius_lowerRightRadius_lowerLeftRadius_upperLeftRadius_useLegacyCorners_keepNoOpElements_(MEMORY[0x277D81160], v14, v53.origin.x, v53.origin.y, v53.size.width, 0, a4 ^ 1u, v53.size.height, v28, v26, v27, v20);
  v30 = v29;
  v35 = objc_msgSend_CGPath(v30, v31, v32, v33, v34);
  v36 = CGPathRetain(v35);

  if (height < v18)
  {
    CGPathGetBoundingBox(v36);
    TSUCenterOfRect();
    v38 = v37;
    v40 = v39;
    v41 = height / v18;
    v42 = *(MEMORY[0x277CBF2C0] + 16);
    *&v52.a = *MEMORY[0x277CBF2C0];
    *&v52.c = v42;
    *&v52.tx = *(MEMORY[0x277CBF2C0] + 32);
    *&v51.a = *&v52.a;
    *&v51.c = v42;
    *&v51.tx = *&v52.tx;
    v43 = (v18 - height) * 0.5;
    if (a1)
    {
      CGAffineTransformMakeScale(&v50, 1.0, v41);
      CGAffineTransformTranslate(&v52, &v50, -v38, -v40);
      v44 = v40 - v43;
      v45 = v38;
    }

    else
    {
      CGAffineTransformMakeScale(&v50, v41, 1.0);
      CGAffineTransformTranslate(&v52, &v50, -v38, -v40);
      v45 = v38 - v43;
      v44 = v40;
    }

    CGAffineTransformMakeTranslation(&v51, v45, v44);
    t1 = v52;
    memset(&v50, 0, sizeof(v50));
    v48 = v51;
    CGAffineTransformConcat(&v50, &t1, &v48);
    CopyByTransformingPathSafe = CGPathCreateCopyByTransformingPathSafe();
    CGPathRelease(v36);
    return CopyByTransformingPathSafe;
  }

  return v36;
}

CGFloat sub_2762A1E88(CGContext *a1, double a2, double a3)
{
  result = CGContextConvertSizeToDeviceSpace(a1, *&a2).width;
  if (result < 0.0)
  {
    return -result;
  }

  return result;
}

id sub_2762A1EB8(void *a1, CGContext *a2, double a3, double a4, CGFloat a5, CGFloat a6)
{
  v9 = a1;
  v29.width = a5;
  v29.height = a6;
  v13 = CGContextConvertSizeToDeviceSpace(a2, v29);
  height = v13.height;
  width = v13.width;
  if (v13.width < 0.0)
  {
    width = -v13.width;
  }

  if (v13.height < 0.0)
  {
    height = -v13.height;
  }

  v14 = width < 4.0 || height < 4.0;
  if (v14 && (objc_msgSend_referenceColor(v9, v10, width, height, 4.0), v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
  {
    v20 = MEMORY[0x277D801F8];
    v21 = objc_msgSend_referenceColor(v9, v16, v17, v18, v19);
    v26 = objc_msgSend_colorWithColor_(v20, v22, v23, v24, v25, v21);
  }

  else
  {
    v26 = v9;
  }

  return v26;
}

id sub_2762A1F9C(void *a1, double a2)
{
  v3 = a1;
  v7 = v3;
  if (a2 < 4.0 && (objc_msgSend_referenceColor(v3, v4, 4.0, v5, v6), v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v13 = MEMORY[0x277D801F8];
    v14 = objc_msgSend_referenceColor(v7, v9, v10, v11, v12);
    v19 = objc_msgSend_colorWithColor_(v13, v15, v16, v17, v18, v14);
  }

  else
  {
    v19 = v7;
  }

  return v19;
}

const CGPath *sub_2762A204C(uint64_t a1, void *a2, void *a3, int a4, int a5)
{
  v9 = MEMORY[0x277CCABB0];
  v10 = a3;
  v11 = a2;
  v16 = objc_msgSend_numberWithUnsignedInteger_(v9, v12, v13, v14, v15, a1);
  v21 = objc_msgSend_objectForKey_(v11, v17, v18, v19, v20, v16);

  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  objc_msgSend_getValue_(v21, v22, 0.0, v23, v24, &v41);
  v25 = v41;
  v26 = v42;
  v31 = objc_msgSend_intValueForProperty_defaultValue_(v10, v27, v28, v29, v30, 1110, 0);
  v36 = (~v43 & 3) != 0 && v31 != 0;
  objc_msgSend_floatValueForProperty_defaultValue_(v10, v32, 0.0, v33, v34, 1111);
  v38 = v37;

  v39 = sub_2762A1C64(a5, v36, a4, 1, *&v25, *(&v25 + 1), *&v26, *(&v26 + 1), v38);
  return v39;
}

void sub_2762A2FC0(uint64_t a1, const char *a2, uint64_t a3, double a4, double a5, double a6)
{
  v8 = objc_msgSend_valueForAxis_groupIndex_(*(a1 + 32), a2, a4, a5, a6, *(a1 + 40), a2);
  if (v8)
  {
    v15 = v8;
    objc_msgSend_doubleValue(v8, v9, v10, v11, v12);
    v8 = v15;
    v14 = v13 - *(a1 + 56);
  }

  else
  {
    v14 = 0.0;
  }

  *(*(a1 + 48) + 8 * a3) = v14;
  *(*(a1 + 64) + a3) = v14 >= *(a1 + 72);
}

void sub_2762A304C(uint64_t a1, const char *a2, uint64_t a3, double a4, double a5, double a6)
{
  v8 = objc_msgSend_valueForAxis_groupIndex_(*(a1 + 32), a2, a4, a5, a6, *(a1 + 40), a2);
  if (v8)
  {
    v15 = v8;
    objc_msgSend_doubleValue(v8, v9, v10, v11, v12);
    v8 = v15;
    v14 = v13 - *(a1 + 48);
    if ((((v14 >= *(a1 + 56)) ^ *(*(a1 + 64) + a3)) & 1) == 0)
    {
      *(*(a1 + 72) + 8 * a3) = v14 + *(*(a1 + 72) + 8 * a3);
    }
  }
}

uint64_t sub_2762A35A0(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v5 = *(a1 + 32);
  v7 = objc_msgSend_valueIndexAtGroupIndex_(*(a1 + 40), a2, a3, a4, a5, a2);

  return objc_msgSend_addIndex_(v5, v6, v8, v9, v10, v7);
}

uint64_t sub_2762A35E0(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v5 = *(a1 + 32);
  v7 = objc_msgSend_groupIndexOfValueIndex_(*(a1 + 40), a2, a3, a4, a5, a2);

  return objc_msgSend_addIndex_(v5, v6, v8, v9, v10, v7);
}

void sub_2762A44A8(uint64_t a1, const char *a2, uint64_t a3, double a4, double a5, double a6)
{
  v8 = objc_msgSend_valueForAxis_groupIndex_(*(a1 + 32), a2, a4, a5, a6, *(a1 + 40), a2);
  if (v8)
  {
    v23 = v8;
    v13 = objc_msgSend_null(MEMORY[0x277CBEB68], v9, v10, v11, v12);

    v8 = v23;
    if (v23 != v13)
    {
      objc_msgSend_doubleValue(v23, v14, v15, v16, v17);
      v8 = v23;
      if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        objc_msgSend_doubleModelToAxisValue_forSeries_(*(a1 + 40), v18, v19, v20, v21, *(a1 + 48));
        v8 = v23;
        *(*(a1 + 56) + 8 * a3) = v22 + *(*(a1 + 56) + 8 * a3);
      }
    }
  }
}

double sub_2762A4568(uint64_t a1, const char *a2, uint64_t a3, double a4, double a5, double a6)
{
  objc_msgSend_totalForGroupIndex_series_(*(a1 + 32), a2, a4, a5, a6, a2, *(a1 + 40));
  if (v8 == 0.0)
  {
    v8 = NAN;
  }

  v9 = *(a1 + 48);
  result = *(v9 + 8 * a3) / v8;
  *(v9 + 8 * a3) = result;
  return result;
}

void sub_2762A4600(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v5 = objc_msgSend_numberFormatWithFormatType_decimalPlaces_showThousandsSeparator_(TSCHNumberFormat, a5, a1, a2, a3, 258, 253, 1);
  v6 = qword_280A47240;
  qword_280A47240 = v5;
}

uint64_t sub_2762A5ADC(uint64_t result)
{
  if ((result - 1) >= 4)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return result;
  }
}

void __C(void *a1)
{
  v125 = a1;
  if (qword_280A47250 != -1)
  {
    sub_2764A770C();
  }

  v1 = sub_27647BB1C();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v125, v2, v3, v4, v5, 5000, v1, *off_2812EE5D0, "TSCHChartDrawableInfo");
  v6 = sub_2764809D0();
  google::protobuf::internal::AssignDescriptors();
  v11 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v125, v7, v8, v9, v10, 5002, v6, off_2812EE5D0[8], "TSCHDeprecatedChartGridForUpgrade");
  v12 = TSCH::ChartMediatorArchive::default_instance(v11);
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v125, v13, v14, v15, v16, 5004, v12, off_2812ED048[28], "TSCHPersistentChartMediator");
  v17 = sub_276483AE4();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v125, v18, v19, v20, v21, 5010, v17, off_2812EE5D0[12], "TSCHChartStyle");
  v22 = sub_27648FF30();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v125, v23, v24, v25, v26, 5011, v22, off_2812EE5D0[24], "TSCHChartSeriesStyle");
  v27 = sub_27648AB7C();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v125, v28, v29, v30, v31, 5012, v27, off_2812EE5D0[20], "TSCHChartAxisStyle");
  v32 = sub_27648974C();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v125, v33, v34, v35, v36, 5013, v32, off_2812EE5D0[16], "TSCHLegendStyle");
  v37 = sub_276487254();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v125, v38, v39, v40, v41, 5014, v37, off_2812EE5D0[14], "TSCHChartNonStyle");
  v42 = sub_276499268();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v125, v43, v44, v45, v46, 5015, v42, off_2812EE5D0[26], "TSCHChartSeriesNonStyle");
  v47 = sub_27648DEC8();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v125, v48, v49, v50, v51, 5016, v47, off_2812EE5D0[22], "TSCHChartAxisNonStyle");
  v52 = sub_27648A45C();
  google::protobuf::internal::AssignDescriptors();
  v57 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v125, v53, v54, v55, v56, 5017, v52, off_2812EE5D0[18], "TSCHLegendNonStyle");
  v58 = TSCH::ChartStylePreset::default_instance(v57);
  google::protobuf::internal::AssignDescriptors();
  v63 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v125, v59, v60, v61, v62, 5020, v58, off_2812ED048[32], "TSCHChartStylePreset");
  v64 = TSCH::ChartDrawableArchive::default_instance(v63);
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v125, v65, v66, v67, v68, 5021, v64, *off_2812ED048, "TSCHChartDrawableInfo");
  v69 = sub_276401C90();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v125, v70, v71, v72, v73, 5022, v69, off_2812ED2B8[8], "TSCHChartStyle");
  v74 = sub_2764023B4();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v125, v75, v76, v77, v78, 5023, v74, off_2812ED2B8[10], "TSCHChartNonStyle");
  v79 = sub_276402A24();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v125, v80, v81, v82, v83, 5024, v79, off_2812ED2B8[12], "TSCHLegendStyle");
  v84 = sub_276403094();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v125, v85, v86, v87, v88, 5025, v84, off_2812ED2B8[14], "TSCHLegendNonStyle");
  v89 = sub_276403704();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v125, v90, v91, v92, v93, 5026, v89, off_2812ED2B8[16], "TSCHChartAxisStyle");
  v94 = sub_276403D74();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v125, v95, v96, v97, v98, 5027, v94, off_2812ED2B8[18], "TSCHChartAxisNonStyle");
  v99 = sub_2764043E4();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v125, v100, v101, v102, v103, 5028, v99, off_2812ED2B8[20], "TSCHChartSeriesStyle");
  v104 = sub_276404A54();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v125, v105, v106, v107, v108, 5029, v104, off_2812ED2B8[22], "TSCHChartSeriesNonStyle");
  v109 = sub_276405DA8();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v125, v110, v111, v112, v113, 5030, v109, off_2812ED2B8[28], "TSCHReferenceLineStyle");
  v114 = sub_276406418();
  google::protobuf::internal::AssignDescriptors();
  v119 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v125, v115, v116, v117, v118, 5031, v114, off_2812ED2B8[30], "TSCHReferenceLineNonStyle");
  v120 = TSCH::ChartSelectionArchive::default_instance(v119);
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v125, v121, v122, v123, v124, 5145, v120, off_2812ED048[48], "TSCHArchivedSelection");
}

uint64_t sub_2762A6FB0()
{
  v0 = MEMORY[0x277D80248];
  objc_opt_class();

  return MEMORY[0x2821F9670](v0, sel_registerSubclass_, v1, v2, v3);
}

id sub_2762A6FF8(int a1, const char *a2, double a3, double a4, double a5)
{
  switch(a1)
  {
    case 1:
      v6 = objc_msgSend_columnChart(TSCHChartType, a2, a3, a4, a5);
      if (!v6)
      {
        goto LABEL_55;
      }

      break;
    case 2:
      v6 = objc_msgSend_barChart(TSCHChartType, a2, a3, a4, a5);
      if (!v6)
      {
        goto LABEL_55;
      }

      break;
    case 3:
      v6 = objc_msgSend_lineChart(TSCHChartType, a2, a3, a4, a5);
      if (!v6)
      {
        goto LABEL_55;
      }

      break;
    case 4:
      v6 = objc_msgSend_areaChart(TSCHChartType, a2, a3, a4, a5);
      if (!v6)
      {
        goto LABEL_55;
      }

      break;
    case 5:
      v6 = objc_msgSend_pieChart(TSCHChartType, a2, a3, a4, a5);
      if (!v6)
      {
        goto LABEL_55;
      }

      break;
    case 6:
      v6 = objc_msgSend_stackedColumnChart(TSCHChartType, a2, a3, a4, a5);
      if (!v6)
      {
        goto LABEL_55;
      }

      break;
    case 7:
      v6 = objc_msgSend_stackedBarChart(TSCHChartType, a2, a3, a4, a5);
      if (!v6)
      {
        goto LABEL_55;
      }

      break;
    case 8:
      v6 = objc_msgSend_stackedAreaChart(TSCHChartType, a2, a3, a4, a5);
      if (!v6)
      {
        goto LABEL_55;
      }

      break;
    case 9:
      v6 = objc_msgSend_scatterChart(TSCHChartType, a2, a3, a4, a5);
      if (!v6)
      {
        goto LABEL_55;
      }

      break;
    case 10:
      v6 = objc_msgSend_mixedChart(TSCHChartType, a2, a3, a4, a5);
      if (!v6)
      {
        goto LABEL_55;
      }

      break;
    case 11:
      v6 = objc_msgSend_twoYAxisChart(TSCHChartType, a2, a3, a4, a5);
      if (!v6)
      {
        goto LABEL_55;
      }

      break;
    case 12:
      v6 = objc_msgSend_columnChart3D(TSCHChartType, a2, a3, a4, a5);
      if (!v6)
      {
        goto LABEL_55;
      }

      break;
    case 13:
      v6 = objc_msgSend_barChart3D(TSCHChartType, a2, a3, a4, a5);
      if (!v6)
      {
        goto LABEL_55;
      }

      break;
    case 14:
      v6 = objc_msgSend_lineChart3D(TSCHChartType, a2, a3, a4, a5);
      if (!v6)
      {
        goto LABEL_55;
      }

      break;
    case 15:
      v6 = objc_msgSend_areaChart3D(TSCHChartType, a2, a3, a4, a5);
      if (!v6)
      {
        goto LABEL_55;
      }

      break;
    case 16:
      v6 = objc_msgSend_pieChart3D(TSCHChartType, a2, a3, a4, a5);
      if (!v6)
      {
        goto LABEL_55;
      }

      break;
    case 17:
      v6 = objc_msgSend_stackedColumnChart3D(TSCHChartType, a2, a3, a4, a5);
      if (!v6)
      {
        goto LABEL_55;
      }

      break;
    case 18:
      v6 = objc_msgSend_stackedBarChart3D(TSCHChartType, a2, a3, a4, a5);
      if (!v6)
      {
        goto LABEL_55;
      }

      break;
    case 19:
      v6 = objc_msgSend_stackedAreaChart3D(TSCHChartType, a2, a3, a4, a5);
      if (!v6)
      {
        goto LABEL_55;
      }

      break;
    case 20:
      v6 = objc_msgSend_multiDataColumnChart(TSCHChartType, a2, a3, a4, a5);
      if (!v6)
      {
        goto LABEL_55;
      }

      break;
    case 21:
      v6 = objc_msgSend_multiDataBarChart(TSCHChartType, a2, a3, a4, a5);
      if (!v6)
      {
        goto LABEL_55;
      }

      break;
    case 22:
      v6 = objc_msgSend_bubbleChart(TSCHChartType, a2, a3, a4, a5);
      if (!v6)
      {
        goto LABEL_55;
      }

      break;
    case 23:
      v6 = objc_msgSend_multiDataScatterChart(TSCHChartType, a2, a3, a4, a5);
      if (!v6)
      {
        goto LABEL_55;
      }

      break;
    case 24:
      v6 = objc_msgSend_multiDataBubbleChart(TSCHChartType, a2, a3, a4, a5);
      if (!v6)
      {
        goto LABEL_55;
      }

      break;
    case 25:
      v6 = objc_msgSend_donutChart(TSCHChartType, a2, a3, a4, a5);
      if (!v6)
      {
        goto LABEL_55;
      }

      break;
    case 26:
      v6 = objc_msgSend_donutChart3D(TSCHChartType, a2, a3, a4, a5);
      if (!v6)
      {
        goto LABEL_55;
      }

      break;
    case 27:
      v6 = objc_msgSend_radarChart(TSCHChartType, a2, a3, a4, a5);
      if (!v6)
      {
        goto LABEL_55;
      }

      break;
    default:
LABEL_55:
      v7 = MEMORY[0x277D81150];
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a3, a4, a5, "TSCHChartType *TSCHArchivedToNativeChartType(const TSCH::ChartType)");
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHArchiveUtilities.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 127, 0, "No native chart type found for archived chart type %lu", a1);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
      v6 = 0;
      break;
  }

  return v6;
}

uint64_t sub_2762A73F0(void *a1)
{
  v1 = a1;
  v6 = objc_msgSend_columnChart(TSCHChartType, v2, v3, v4, v5);

  if (v6 == v1)
  {
    v156 = 1;
  }

  else
  {
    v11 = objc_msgSend_barChart(TSCHChartType, v7, v8, v9, v10);

    if (v11 == v1)
    {
      v156 = 2;
    }

    else
    {
      v16 = objc_msgSend_lineChart(TSCHChartType, v12, v13, v14, v15);

      if (v16 == v1)
      {
        v156 = 3;
      }

      else
      {
        v21 = objc_msgSend_areaChart(TSCHChartType, v17, v18, v19, v20);

        if (v21 == v1)
        {
          v156 = 4;
        }

        else
        {
          v26 = objc_msgSend_pieChart(TSCHChartType, v22, v23, v24, v25);

          if (v26 == v1)
          {
            v156 = 5;
          }

          else
          {
            v31 = objc_msgSend_donutChart(TSCHChartType, v27, v28, v29, v30);

            if (v31 == v1)
            {
              v156 = 25;
            }

            else
            {
              v36 = objc_msgSend_stackedColumnChart(TSCHChartType, v32, v33, v34, v35);

              if (v36 == v1)
              {
                v156 = 6;
              }

              else
              {
                v41 = objc_msgSend_stackedBarChart(TSCHChartType, v37, v38, v39, v40);

                if (v41 == v1)
                {
                  v156 = 7;
                }

                else
                {
                  v46 = objc_msgSend_stackedAreaChart(TSCHChartType, v42, v43, v44, v45);

                  if (v46 == v1)
                  {
                    v156 = 8;
                  }

                  else
                  {
                    v51 = objc_msgSend_scatterChart(TSCHChartType, v47, v48, v49, v50);

                    if (v51 == v1)
                    {
                      v156 = 9;
                    }

                    else
                    {
                      v56 = objc_msgSend_mixedChart(TSCHChartType, v52, v53, v54, v55);

                      if (v56 == v1)
                      {
                        v156 = 10;
                      }

                      else
                      {
                        v61 = objc_msgSend_twoYAxisChart(TSCHChartType, v57, v58, v59, v60);

                        if (v61 == v1)
                        {
                          v156 = 11;
                        }

                        else
                        {
                          v66 = objc_msgSend_radarChart(TSCHChartType, v62, v63, v64, v65);

                          if (v66 == v1)
                          {
                            v156 = 27;
                          }

                          else
                          {
                            v71 = objc_msgSend_columnChart3D(TSCHChartType, v67, v68, v69, v70);

                            if (v71 == v1)
                            {
                              v156 = 12;
                            }

                            else
                            {
                              v76 = objc_msgSend_barChart3D(TSCHChartType, v72, v73, v74, v75);

                              if (v76 == v1)
                              {
                                v156 = 13;
                              }

                              else
                              {
                                v81 = objc_msgSend_lineChart3D(TSCHChartType, v77, v78, v79, v80);

                                if (v81 == v1)
                                {
                                  v156 = 14;
                                }

                                else
                                {
                                  v86 = objc_msgSend_areaChart3D(TSCHChartType, v82, v83, v84, v85);

                                  if (v86 == v1)
                                  {
                                    v156 = 15;
                                  }

                                  else
                                  {
                                    v91 = objc_msgSend_pieChart3D(TSCHChartType, v87, v88, v89, v90);

                                    if (v91 == v1)
                                    {
                                      v156 = 16;
                                    }

                                    else
                                    {
                                      v96 = objc_msgSend_donutChart3D(TSCHChartType, v92, v93, v94, v95);

                                      if (v96 == v1)
                                      {
                                        v156 = 26;
                                      }

                                      else
                                      {
                                        v101 = objc_msgSend_stackedColumnChart3D(TSCHChartType, v97, v98, v99, v100);

                                        if (v101 == v1)
                                        {
                                          v156 = 17;
                                        }

                                        else
                                        {
                                          v106 = objc_msgSend_stackedBarChart3D(TSCHChartType, v102, v103, v104, v105);

                                          if (v106 == v1)
                                          {
                                            v156 = 18;
                                          }

                                          else
                                          {
                                            v111 = objc_msgSend_stackedAreaChart3D(TSCHChartType, v107, v108, v109, v110);

                                            if (v111 == v1)
                                            {
                                              v156 = 19;
                                            }

                                            else
                                            {
                                              v116 = objc_msgSend_multiDataColumnChart(TSCHChartType, v112, v113, v114, v115);

                                              if (v116 == v1)
                                              {
                                                v156 = 20;
                                              }

                                              else
                                              {
                                                v121 = objc_msgSend_multiDataBarChart(TSCHChartType, v117, v118, v119, v120);

                                                if (v121 == v1)
                                                {
                                                  v156 = 21;
                                                }

                                                else
                                                {
                                                  v126 = objc_msgSend_bubbleChart(TSCHChartType, v122, v123, v124, v125);

                                                  if (v126 == v1)
                                                  {
                                                    v156 = 22;
                                                  }

                                                  else
                                                  {
                                                    v131 = objc_msgSend_multiDataScatterChart(TSCHChartType, v127, v128, v129, v130);

                                                    if (v131 == v1)
                                                    {
                                                      v156 = 23;
                                                    }

                                                    else
                                                    {
                                                      v136 = objc_msgSend_multiDataBubbleChart(TSCHChartType, v132, v133, v134, v135);

                                                      if (v136 == v1)
                                                      {
                                                        v156 = 24;
                                                      }

                                                      else
                                                      {
                                                        v141 = MEMORY[0x277D81150];
                                                        v142 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v137, v138, v139, v140, "TSCH::ChartType TSCHNativeToArchivedChartType(TSCHChartType *__strong)");
                                                        v147 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v143, v144, v145, v146, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHArchiveUtilities.mm");
                                                        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v141, v148, v149, v150, v151, v142, v147, 190, 0, "No archivable chart type found for native chart type %@", v1);

                                                        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v152, v153, v154, v155);
                                                        v156 = 0;
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v156;
}

uint64_t sub_2762A78A0(int a1)
{
  if (a1 == 100)
  {
    v1 = 100;
  }

  else
  {
    v1 = -1;
  }

  if (a1 == 16)
  {
    v2 = 16;
  }

  else
  {
    v2 = v1;
  }

  if (a1 == 10)
  {
    v3 = 10;
  }

  else
  {
    v3 = v2;
  }

  if (a1 == 8)
  {
    v4 = 8;
  }

  else
  {
    v4 = -1;
  }

  if (a1 == 4)
  {
    v5 = 4;
  }

  else
  {
    v5 = v4;
  }

  if (a1 <= 9)
  {
    v3 = v5;
  }

  if (a1 == 2)
  {
    v6 = 2;
  }

  else
  {
    v6 = -1;
  }

  if (!a1)
  {
    v6 = 0;
  }

  if (a1 == -2)
  {
    v7 = -2;
  }

  else
  {
    v7 = -1;
  }

  if (a1 == -3)
  {
    v7 = -3;
  }

  if (a1 >= 0)
  {
    v7 = v6;
  }

  if (a1 > 3)
  {
    return v3;
  }

  return v7;
}

double sub_2762A792C(uint64_t a1)
{
  v1 = MEMORY[0x277D809F0];
  if (*(a1 + 24))
  {
    v1 = *(a1 + 24);
  }

  return *(v1 + 24);
}

float sub_2762A796C(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = *(a1 + 16) | 1;
  *(a1 + 16) = v10;
  v11 = *(a1 + 24);
  if (!v11)
  {
    v12 = *(a1 + 8);
    if (v12)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
    }

    v11 = MEMORY[0x277C97B60](v12);
    *(a1 + 24) = v11;
    v10 = *(a1 + 16);
  }

  *(a1 + 16) = v10 | 2;
  v13 = *(a1 + 32);
  if (!v13)
  {
    v14 = *(a1 + 8);
    if (v14)
    {
      v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
    }

    v13 = MEMORY[0x277C97B30](v14);
    *(a1 + 32) = v13;
  }

  v15 = a2;
  v16 = a3;
  *(v11 + 16) |= 3u;
  *(v11 + 24) = v15;
  *(v11 + 28) = v16;
  result = a4;
  v18 = a5;
  *(v13 + 16) |= 3u;
  *(v13 + 24) = result;
  *(v13 + 28) = v18;
  return result;
}

void sub_2762A7A40(uint64_t a1, uint64_t a2, void *a3)
{
  v43 = a3;
  if (objc_msgSend_containsProperty_(v43, v5, v6, v7, v8, a1))
  {
    objc_opt_class();
    v13 = objc_msgSend_boxedObjectForProperty_(v43, v9, v10, v11, v12, a1);
    v14 = TSUCheckedDynamicCast();

    if (v14)
    {
      v20 = objc_msgSend_upgradedNumberFormatFromPreUFFOrUnity1_0(v14, v15, v16, v17, v18);
      if (!v20)
      {
        v24 = MEMORY[0x277D81150];
        v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v21, v22, v23, "void TSCHConvert1_0NumberFormatPropertyToNumberFormatPropertyInMap(TSSProperty, TSSProperty, TSSPropertyMap *__strong)");
        v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHArchiveUtilities.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v31, v32, v33, v34, v25, v30, 310, 0, "invalid nil value for '%{public}s'", "upgradeNumberFormat");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37, v38);
      }

      objc_msgSend_removeValueForProperty_(v43, v19, v21, v22, v23, a1);
      if (v20)
      {
        objc_msgSend_setBoxedObject_forProperty_(v43, v39, v40, v41, v42, v20, a2);
      }
    }

    else
    {
      v20 = 0;
    }
  }
}

id sub_2762A7C10(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_msgSend_containsProperty_(v3, v4, v5, v6, v7, a1))
  {
    objc_opt_class();
    v12 = objc_msgSend_objectForProperty_(v3, v8, v9, v10, v11, a1);
    v13 = TSUCheckedDynamicCast();

    if (objc_msgSend_isCustom(v13, v14, v15, v16, v17))
    {
      v22 = objc_msgSend_defaultDecimalNumberFormat(TSCHNumberFormat, v18, v19, v20, v21);
      v27 = objc_msgSend_mutableCopy(v22, v23, v24, v25, v26);

      v32 = objc_msgSend_prefixString(v13, v28, v29, v30, v31);
      objc_msgSend_setPrefixString_(v27, v33, v34, v35, v36, v32);

      v41 = objc_msgSend_suffixString(v13, v37, v38, v39, v40);
      objc_msgSend_setSuffixString_(v27, v42, v43, v44, v45, v41);

      v50 = objc_msgSend_copy(v27, v46, v47, v48, v49);
    }

    else
    {
      v50 = v13;
    }
  }

  else
  {
    v50 = 0;
  }

  return v50;
}

void sub_2762A7D38(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_2762A7D98(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = a3;
  if (objc_msgSend_containsProperty_(v19, v5, v6, v7, v8, a1))
  {
    objc_opt_class();
    v13 = objc_msgSend_boxedObjectForProperty_(v19, v9, v10, v11, v12, a1);
    v14 = TSUCheckedDynamicCast();

    if (v14)
    {
      objc_msgSend_setBoxedObject_forProperty_(v19, v15, v16, v17, v18, v14, a2);
    }
  }
}

id sub_2762A7E78(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (objc_msgSend_containsProperty_(v5, v7, v8, v9, v10, a1))
  {
    objc_opt_class();
    v15 = objc_msgSend_objectForProperty_(v5, v11, v12, v13, v14, a1);
    v16 = TSUCheckedDynamicCast();

    if (objc_msgSend_isCustom(v16, v17, v18, v19, v20))
    {
      v25 = objc_msgSend_defaultDateFormat_(TSCHTimeBasedFormat, v21, v22, v23, v24, v6);
    }

    else
    {
      v25 = v16;
    }

    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

void sub_2762A7F58(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2762A7F8C(void *a1, uint64_t a2)
{
  v3 = a1;
  v8 = v3;
  if (v3)
  {
    objc_msgSend_encodeToArchive_(v3, v4, v5, v6, v7, a2);
  }

  else
  {
    *(a2 + 40) |= 0x100u;
    *(a2 + 144) = 0;
  }
}

id sub_2762A8004(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = *(a1 + 144) & ((*(a1 + 40) << 23) >> 31);
  v7 = &off_27A6B5BA8;
  if (objc_msgSend_supportsFormatType_(TSCHTimeBasedFormat, a2, a3, a4, a5, v6) & 1) != 0 || (v7 = off_27A6B5B78, (objc_msgSend_supportsFormatType_(TSCHNumberFormat, v8, v9, v10, v11, v6)))
  {
    v12 = objc_msgSend_instanceWithArchive_unarchiver_(*v7, v8, v9, v10, v11, a1, 0);
    if (v12)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "id<TSCHDataFormatterPersistableStyleObject> TSCHDataFormatLoadFromArchive(const TSK::FormatStructArchive &)");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHArchiveUtilities.mm");
    v24 = NSStringForTSUFormatType();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v25, v26, v27, v28, v18, v23, 377, 0, "format type %@ is not supported while archiving.", v24);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
  }

  v33 = MEMORY[0x277D81150];
  v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "id<TSCHDataFormatterPersistableStyleObject> TSCHDataFormatLoadFromArchive(const TSK::FormatStructArchive &)");
  v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v36, v37, v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHArchiveUtilities.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v40, v41, v42, v43, v34, v39, 379, 0, "invalid nil value for '%{public}s'", "styleObject");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46, v47);
  v12 = 0;
LABEL_7:

  return v12;
}

void sub_2762A81A8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_2762A81DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = objc_alloc(MEMORY[0x277CBEB18]);
  v11 = objc_msgSend_tsch_initWithArchive_unarchiver_(v6, v7, v8, v9, v10, a3, v5);

  return v11;
}

void sub_2762A8248(void *a1, uint64_t a2, uint64_t a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = a1;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, v6, v7, v8, &v30, v34, 16);
  if (v10)
  {
    v14 = *v31;
    do
    {
      v15 = 0;
      do
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(v4);
        }

        v16 = *(*(&v30 + 1) + 8 * v15);
        if (v16)
        {
          v17 = objc_msgSend_null(MEMORY[0x277CBEB68], v9, v11, v12, v13, v30);
          if (objc_msgSend_isEqual_(v16, v18, v19, v20, v21, v17))
          {
            v26 = 0x7FF8000000000000;
          }

          else
          {
            objc_msgSend_doubleValue(v16, v22, v23, v24, v25);
            v26 = v27;
          }
        }

        else
        {
          v26 = 0x7FF8000000000000;
        }

        v28 = *(a3 + 16);
        if (v28 == *(a3 + 20))
        {
          v29 = v28 + 1;
          sub_2762A9574((a3 + 16), v28 + 1);
          *(*(a3 + 24) + 8 * v28) = v26;
        }

        else
        {
          *(*(a3 + 24) + 8 * v28) = v26;
          v29 = v28 + 1;
        }

        *(a3 + 16) = v29;
        ++v15;
      }

      while (v10 != v15);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v9, v11, v12, v13, &v30, v34, 16);
    }

    while (v10);
  }
}

uint64_t sub_2762A8400(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = objc_alloc(MEMORY[0x277CBEB18]);
  v12 = objc_msgSend_initWithCapacity_(v6, v7, v8, v9, v10, v5);
  if (v5 >= 1)
  {
    v16 = 0;
    v17 = 8 * v5;
    do
    {
      v18 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v11, *(*(a3 + 24) + v16), v14, v15);
      objc_msgSend_addObject_(v12, v19, v20, v21, v22, v18);

      v16 += 8;
    }

    while (v17 != v16);
  }

  v23 = objc_msgSend_initWithArray_(a1, v11, v13, v14, v15, v12);

  return v23;
}

id sub_2762A84E8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = objc_alloc(MEMORY[0x277CCABB0]);
  v11 = objc_msgSend_tsch_initWithArchive_unarchiver_(v6, v7, v8, v9, v10, a3, v5);

  return v11;
}

uint64_t sub_2762A8554(void *a1, const char *a2, uint64_t a3, double a4, double a5, double a6)
{
  result = objc_msgSend_doubleValue(a1, a2, a4, a5, a6);
  *(a3 + 16) |= 1u;
  *(a3 + 24) = v8;
  return result;
}

uint64_t sub_2762A8588(void *a1, const char *a2, uint64_t a3, double a4, double a5, double a6)
{
  if (*(a3 + 16))
  {
    v8 = *(a3 + 24);

    return objc_msgSend_initWithDouble_(a1, a2, v8, a5, a6);
  }

  else
  {

    return 0;
  }
}

void sub_2762A85C8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v12 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();
  v10 = v5;
  if (v5)
  {
    objc_msgSend_doubleValue(v5, v6, v7, v8, v9);
    *(a4 + 16) |= 1u;
    *(a4 + 24) = v11;
  }

  else
  {
    *(a4 + 24) = 0;
    *(a4 + 16) &= ~1u;
  }
}

id sub_2762A867C(double a1, double a2, double a3, uint64_t a4, const char *a5, uint64_t a6)
{
  if (*(a6 + 16))
  {
    objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], a5, *(a6 + 24), a2, a3);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], a5, a1, a2, a3);
  }
  v6 = ;

  return v6;
}

void sub_2762A8FF0(void *a1, uint64_t a2, uint64_t a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v4 = a1;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, v6, v7, v8, &v31, v35, 16);
  if (v9)
  {
    v10 = *v32;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(v4);
        }

        v13 = TSUProtocolCast();
        v17 = *(a3 + 32);
        if (!v17)
        {
          goto LABEL_11;
        }

        v18 = *(a3 + 24);
        v19 = *v17;
        if (v18 < *v17)
        {
          *(a3 + 24) = v18 + 1;
          objc_msgSend_saveGridValue_toArchive_(TSCHChartGridValue, v12, v14, v15, v16, v13, *&v17[2 * v18 + 2], &unk_2885724B0);
          goto LABEL_13;
        }

        if (v19 == *(a3 + 28))
        {
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 16));
          v17 = *(a3 + 32);
          v19 = *v17;
        }

        *v17 = v19 + 1;
        v20 = sub_276407010(*(a3 + 16));
        v21 = *(a3 + 24);
        v22 = *(a3 + 32) + 8 * v21;
        *(a3 + 24) = v21 + 1;
        *(v22 + 8) = v20;
        objc_msgSend_saveGridValue_toArchive_(TSCHChartGridValue, v23, v24, v25, v26, v13, v20, &unk_2885724B0);
LABEL_13:
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v27, v28, v29, v30, &v31, v35, 16);
    }

    while (v9);
  }
}

uint64_t sub_2762A91CC(void *a1, const char *a2, uint64_t a3, double a4, double a5, double a6)
{
  v8 = *(a3 + 24);
  v10 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, a4, a5, a6);
  if (v8 >= 1)
  {
    v14 = 8;
    do
    {
      v15 = objc_msgSend_instanceWithArchive_(TSCHChartGridValue, v9, v11, v12, v13, *(*(a3 + 32) + v14));
      objc_msgSend_addObject_(v10, v16, v17, v18, v19, v15);

      v14 += 8;
      --v8;
    }

    while (v8);
  }

  v20 = objc_msgSend_initWithArray_(a1, v9, v11, v12, v13, v10);

  return v20;
}

void sub_2762A92B0(void *a1, uint64_t a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v4 = a1;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, v6, v7, v8, &v31, v35, 16);
  if (v9)
  {
    v10 = *v32;
    do
    {
      v11 = 0;
      do
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(v4);
        }

        objc_opt_class();
        v13 = TSUCheckedDynamicCast();
        v17 = a3[2];
        if (!v17)
        {
          goto LABEL_11;
        }

        v18 = *(a3 + 2);
        v19 = *v17;
        if (v18 < *v17)
        {
          *(a3 + 2) = v18 + 1;
          objc_msgSend_tsch_saveTSCHChartGridValuesToProtobufGridRow_(v13, v12, v14, v15, v16, *&v17[2 * v18 + 2], v31);
          goto LABEL_13;
        }

        if (v19 == *(a3 + 3))
        {
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a3);
          v17 = a3[2];
          v19 = *v17;
        }

        *v17 = v19 + 1;
        v20 = sub_276407088(*a3);
        v21 = *(a3 + 2);
        v22 = a3[2] + 8 * v21;
        *(a3 + 2) = v21 + 1;
        *(v22 + 8) = v20;
        objc_msgSend_tsch_saveTSCHChartGridValuesToProtobufGridRow_(v13, v23, v24, v25, v26, v20, v31);
LABEL_13:

        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v27, v28, v29, v30, &v31, v35, 16);
    }

    while (v9);
  }
}

uint64_t sub_2762A9478(void *a1, const char *a2, uint64_t a3, double a4, double a5, double a6)
{
  v8 = *(a3 + 8);
  v10 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, a4, a5, a6);
  if (v8 >= 1)
  {
    v14 = 8;
    do
    {
      v15 = objc_alloc(MEMORY[0x277CBEA60]);
      inited = objc_msgSend_tsch_initTSCHChartGridValuesWithProtobufGridRow_(v15, v16, v17, v18, v19, *(*(a3 + 16) + v14));
      v25 = objc_msgSend_mutableCopy(inited, v21, v22, v23, v24);
      objc_msgSend_addObject_(v10, v26, v27, v28, v29, v25);

      v14 += 8;
      --v8;
    }

    while (v8);
  }

  v30 = objc_msgSend_initWithArray_(a1, v9, v11, v12, v13, v10);

  return v30;
}

void sub_2762A9574(unsigned int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  if (v2 < 1)
  {
    v4 = *(a1 + 1);
    v5 = 0;
    if (!v2)
    {
      if (a2 < 4)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v4 = *(a1 + 1);
    v5 = (v4 - 8);
  }

  v4 = *(v4 - 8);
  if (a2 < 4)
  {
LABEL_6:
    v6 = 4;
    goto LABEL_13;
  }

  if (v2 > 0x3FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    goto LABEL_13;
  }

LABEL_10:
  v7 = 2 * v2;
  if (v7 <= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = v7;
  }

LABEL_13:
  v8 = 8 * v6;
  if (v4)
  {
    sub_2762A9678(v4, v8 + 8);
  }

  else
  {
    v9 = operator new(v8 + 8);
  }

  *v9 = v4;
  v10 = v9 + 1;
  a1[1] = v6;
  *(a1 + 1) = v10;
  v11 = *a1;
  if (v11 >= 1)
  {
    memcpy(v10, v5 + 1, 8 * v11);
  }

  if (v5 && !*v5)
  {

    operator delete(v5);
  }
}

void sub_2762A9678(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_2764A7720(a1, (a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  JUMPOUT(0x277C97C70);
}

void sub_2762A98E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2762A9900(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  result = objc_msgSend_p_calcMinSizeForModel_(*(a1 + 32), a2, a3, a4, a5, a2);
  v9 = *(*(a1 + 40) + 8);
  if (*(v9 + 40) >= v8)
  {
    v8 = *(v9 + 40);
  }

  *(v9 + 40) = v8;
  v10 = *(*(a1 + 40) + 8);
  if (*(v10 + 32) >= v7)
  {
    v7 = *(v10 + 32);
  }

  *(v10 + 32) = v7;
  return result;
}

void sub_2762A9DD8(void *a1, uint64_t a2, void *a3, void *a4)
{
  v14 = a1;
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_class();
  objc_msgSend_readReferenceMessage_class_protocol_completion_(v14, v10, v11, v12, v13, a2, v9, v7, v8);
}

void sub_2762A9E84(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(a1 + 32) + 208), a2);
  v24 = v4;
  v9 = objc_msgSend_mediator(v24, v5, v6, v7, v8);
  objc_msgSend_setMediator_(*(*(a1 + 32) + 200), v10, v11, v12, v13, v9);

  v14 = *(*(a1 + 32) + 200);
  v19 = objc_msgSend_mediator(v14, v15, v16, v17, v18);
  objc_msgSend_setChartInfo_(v19, v20, v21, v22, v23, v14);
}

void sub_2762AA8C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11)
{
  _Block_object_dispose((v16 - 152), 8);

  _Unwind_Resume(a1);
}