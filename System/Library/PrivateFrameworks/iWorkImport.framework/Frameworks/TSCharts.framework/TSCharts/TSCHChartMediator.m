@interface TSCHChartMediator
+ (id)propertiesThatInvalidateMediator;
- (BOOL)preferSeriesToValues;
- (TSCHChartInfo)chartInfo;
- (TSCHChartMediator)initWithChartInfo:(id)a3;
- (TSCHNotifyOnModify)objectToNotify;
- (id)copyWithZone:(_NSZone *)a3;
- (id)p_errorBarDataForSeries:(unint64_t)a3 withSpec:(id *)a4 updateType:(int)a5;
- (unint64_t)p_gridSeriesIndexForRemoteSeriesIndex:(unint64_t)a3;
- (unint64_t)p_remoteSeriesIndexForGridSeriesIndex:(unint64_t)a3;
- (void)loadFromArchive:(const void *)a3;
- (void)saveToArchive:(void *)a3;
- (void)updateGridWithSpec:(id *)a3;
- (void)willModify;
@end

@implementation TSCHChartMediator

- (void)loadFromArchive:(const void *)a3
{
  remoteSeriesIndexForGridSeriesIndex = self->_remoteSeriesIndexForGridSeriesIndex;
  if (remoteSeriesIndexForGridSeriesIndex)
  {
    v6 = remoteSeriesIndexForGridSeriesIndex;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277D81208]);
  }

  v7 = self->_remoteSeriesIndexForGridSeriesIndex;
  self->_remoteSeriesIndexForGridSeriesIndex = v6;

  gridSeriesIndexForRemoteSeriesIndex = self->_gridSeriesIndexForRemoteSeriesIndex;
  if (gridSeriesIndexForRemoteSeriesIndex)
  {
    v9 = gridSeriesIndexForRemoteSeriesIndex;
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x277D81208]);
  }

  v10 = self->_gridSeriesIndexForRemoteSeriesIndex;
  self->_gridSeriesIndexForRemoteSeriesIndex = v9;

  v15 = *(a3 + 6);
  if (v15 != *(a3 + 10))
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "[TSCHChartMediator(Archiving) loadFromArchive:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartMediator_Archiving.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v24, v25, v26, v17, v22, 37, 0, "Different number of indexes in the different arrays.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
    v15 = *(a3 + 6);
  }

  if ((v15 & 0x80000000) != 0)
  {
    v45 = MEMORY[0x277D81150];
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "[TSCHChartMediator(Archiving) loadFromArchive:]");
    v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, v48, v49, v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartMediator_Archiving.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v52, v53, v54, v55, v46, v51, 38, 0, "Out-of-bounds type assignment was clamped to min");

    v60 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v60, v56, v57, v58, v59);
  }

  else
  {
    if (v15 != 1)
    {
      if (!v15)
      {
        return;
      }

      v31 = v15;
      goto LABEL_15;
    }

    if (**(a3 + 4) != -1)
    {
      v31 = 1;
LABEL_15:
      for (i = 0; i != v31; ++i)
      {
        v33 = *(*(a3 + 6) + 4 * i);
        v34 = *(*(a3 + 4) + 4 * i);
        objc_msgSend_setInt_forKey_(self->_remoteSeriesIndexForGridSeriesIndex, v11, v12, v13, v14, v33, v34);
        objc_msgSend_setInt_forKey_(self->_gridSeriesIndexForRemoteSeriesIndex, v35, v36, v37, v38, v34, v33);
      }

      return;
    }

    v39 = **(a3 + 6);
    if (v39)
    {
      for (j = 0; j != v39; ++j)
      {
        objc_msgSend_setInt_forKey_(self->_remoteSeriesIndexForGridSeriesIndex, v11, v12, v13, v14, j, j);
        objc_msgSend_setInt_forKey_(self->_gridSeriesIndexForRemoteSeriesIndex, v41, v42, v43, v44, j, j);
      }
    }
  }
}

- (void)saveToArchive:(void *)a3
{
  v9 = objc_msgSend_keyEnumerator(self->_remoteSeriesIndexForGridSeriesIndex, a2, v3, v4, v5);
  if (v9)
  {
    while (1)
    {
      Key = objc_msgSend_nextKey(v9, v8, v10, v11, v12);
      if (Key == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (Key != objc_msgSend_intForKey_(self->_remoteSeriesIndexForGridSeriesIndex, v8, v10, v11, v12, Key))
      {
        *(a3 + 6) = 0;
        *(a3 + 10) = 0;
        goto LABEL_10;
      }
    }
  }

  *(a3 + 6) = 0;
  *(a3 + 10) = 0;
  v14 = objc_msgSend_chartInfo(self, v8, v10, v11, v12);
  v19 = objc_msgSend_model(v14, v15, v16, v17, v18);

  if (v19)
  {
    v20 = objc_msgSend_count(self->_remoteSeriesIndexForGridSeriesIndex, v8, v10, v11, v12);
    v25 = v20;
    if (HIDWORD(v20))
    {
      v34 = MEMORY[0x277D81150];
      v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, "[TSCHChartMediator(Archiving) saveToArchive:]");
      v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, v37, v38, v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartMediator_Archiving.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v41, v42, v43, v44, v35, v40, 80, 0, "Out-of-bounds type assignment was clamped to max");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47, v48);
      v25 = -1;
    }

    v26 = *(a3 + 6);
    if (v26 == *(a3 + 7))
    {
      v27 = v26 + 1;
      sub_2762E9624(a3 + 6, v26 + 1);
      *(*(a3 + 4) + 4 * v26) = -1;
    }

    else
    {
      *(*(a3 + 4) + 4 * v26) = -1;
      v27 = v26 + 1;
    }

    *(a3 + 6) = v27;
    v32 = *(a3 + 10);
    if (v32 == *(a3 + 11))
    {
      v33 = v32 + 1;
      sub_2762E9624(a3 + 10, v32 + 1);
      *(*(a3 + 6) + 4 * v32) = v25;
    }

    else
    {
      *(*(a3 + 6) + 4 * v32) = v25;
      v33 = v32 + 1;
    }

    *(a3 + 10) = v33;
  }

  else
  {
LABEL_10:
    v28 = objc_msgSend_allKeys(self->_remoteSeriesIndexForGridSeriesIndex, v8, v10, v11, v12);
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = sub_2762E9348;
    v49[3] = &unk_27A6B9588;
    v49[4] = self;
    v49[5] = a3;
    objc_msgSend_enumerateIndexesUsingBlock_(v28, v29, COERCE_DOUBLE(3221225472), v30, v31, v49);
  }
}

- (TSCHChartMediator)initWithChartInfo:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = TSCHChartMediator;
  v5 = [(TSCHChartMediator *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_chartInfo, v4);
    v7 = objc_alloc_init(MEMORY[0x277D81208]);
    remoteSeriesIndexForGridSeriesIndex = v6->_remoteSeriesIndexForGridSeriesIndex;
    v6->_remoteSeriesIndexForGridSeriesIndex = v7;

    v9 = objc_alloc_init(MEMORY[0x277D81208]);
    gridSeriesIndexForRemoteSeriesIndex = v6->_gridSeriesIndexForRemoteSeriesIndex;
    v6->_gridSeriesIndexForRemoteSeriesIndex = v9;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(objc_opt_class());
  if (v5)
  {
    v9 = objc_msgSend_chartInfo(self, v4, v6, v7, v8);
    objc_msgSend_setChartInfo_(v5, v10, v11, v12, v13, v9);

    v18 = objc_msgSend_objectToNotify(self, v14, v15, v16, v17);
    objc_msgSend_setObjectToNotify_(v5, v19, v20, v21, v22, v18);

    v27 = objc_msgSend_copy(self->_gridSeriesIndexForRemoteSeriesIndex, v23, v24, v25, v26);
    v28 = v5[4];
    v5[4] = v27;

    v33 = objc_msgSend_copy(self->_remoteSeriesIndexForGridSeriesIndex, v29, v30, v31, v32);
    v34 = v5[3];
    v5[3] = v33;
  }

  return v5;
}

- (void)willModify
{
  v6 = objc_msgSend_chartInfo(self, a2, v2, v3, v4);
  objc_msgSend_willModify(v6, v7, v8, v9, v10);

  v19 = objc_msgSend_objectToNotify(self, v11, v12, v13, v14);
  objc_msgSend_willModify(v19, v15, v16, v17, v18);
}

- (id)p_errorBarDataForSeries:(unint64_t)a3 withSpec:(id *)a4 updateType:(int)a5
{
  v8 = *&a5;
  v11 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v5, v6, v7);
  v32 = 0;
  v30 = 0;
  v31 = a3;
  v12 = (a4->var1)(a4->var2, v8, &v31, &v32, &v30, 0);
  v13 = v30;
  v18 = v13;
  if (v12)
  {
    do
    {
      if (v32 != 1 || v18 == 0)
      {
        v20 = objc_msgSend_null(MEMORY[0x277CBEB68], v14, v15, v16, v17);
        objc_msgSend_addObject_(v11, v21, v22, v23, v24, v20);
      }

      else
      {
        objc_msgSend_addObject_(v11, v14, v15, v16, v17, v18);
      }

      var1 = a4->var1;
      var2 = a4->var2;
      v30 = v18;
      v27 = var1(var2, v8, &v31, &v32, &v30, 0);
      v28 = v30;

      v18 = v28;
    }

    while ((v27 & 1) != 0);
  }

  else
  {
    v28 = v13;
  }

  return v11;
}

- (void)updateGridWithSpec:(id *)a3
{
  v8 = objc_msgSend_chartInfo(self, a2, v3, v4, v5);
  if ((objc_msgSend_isPhantom(self, v9, v10, v11, v12) & 1) != 0 || !v8)
  {
    goto LABEL_68;
  }

  objc_msgSend_willModify(self, v13, v14, v15, v16);
  objc_msgSend_removeAllInts(self->_remoteSeriesIndexForGridSeriesIndex, v17, v18, v19, v20);
  objc_msgSend_removeAllInts(self->_gridSeriesIndexForRemoteSeriesIndex, v21, v22, v23, v24);
  var0 = a3->var0;
  var1 = a3->var1;
  var2 = a3->var2;
  v32 = objc_msgSend_model(v8, v28, v29, v30, v31);
  v37 = objc_msgSend_grid(v32, v33, v34, v35, v36);
  v38 = objc_alloc_init(TSCHChartGrid);
  objc_msgSend_incrementTransitionLevel(v38, v39, v40, v41, v42);
  objc_msgSend_incrementTransitionLevel(v37, v43, v44, v45, v46);
  v240 = var0;
  v247 = var0 == objc_msgSend_numberOfColumns(v37, v47, v48, v49, v50) && var0 != objc_msgSend_numberOfRows(v37, v51, v52, v53, v54);
  while (objc_msgSend_numberOfColumns(v38, v51, v52, v53, v54))
  {
    objc_msgSend_removeColumn_(v38, v55, v56, v57, v58, 0);
  }

  v249 = v37;
  v238 = v8;
  v239 = self;
  while (objc_msgSend_numberOfRows(v38, v55, v56, v57, v58, v238))
  {
    objc_msgSend_removeRow_(v38, v59, v60, v61, v62, 0);
  }

  v246 = objc_msgSend_array(MEMORY[0x277CBEB18], v59, v60, v61, v62);
  v258[0] = 0;
  v63 = (var1)(var2, 1, 0, 0, 0, v258);
  v65 = v258[0];
  if (v63)
  {
    do
    {
      if (v65)
      {
        v69 = v65;
      }

      else
      {
        v69 = &stru_288528678;
      }

      v70 = v69;

      objc_msgSend_addObject_(v246, v71, v72, v73, v74, v70);
      v258[0] = v70;
      v75 = (var1)(var2, 1, 0, 0, 0, v258);
      v65 = v258[0];
    }

    while ((v75 & 1) != 0);
  }

  v245 = objc_msgSend_array(MEMORY[0x277CBEB18], v64, v66, v67, v68);
  v257 = v65;
  v76 = (var1)(var2, 2, 0, 0, 0, &v257);
  v77 = v257;

  if (v76)
  {
    do
    {
      if (v77)
      {
        v82 = v77;
      }

      else
      {
        v82 = &stru_288528678;
      }

      v83 = v82;

      objc_msgSend_addObject_(v245, v84, v85, v86, v87, v83);
      v257 = v83;
      v88 = (var1)(var2, 2, 0, 0, 0, &v257);
      v77 = v257;
    }

    while ((v88 & 1) != 0);
  }

  v250 = var1;
  v251 = var2;
  v242 = v32;
  v89 = var0;
  v90 = 0;
  if (!v240)
  {
    v93 = v249;
    goto LABEL_59;
  }

  v91 = 0;
  v92 = 0;
  v93 = v249;
  do
  {
    v256 = 0;
    v243 = v92;
    v252 = v92;
    v94 = objc_msgSend_numberOfRows(v38, v78, v79, v80, v81);
    v99 = objc_msgSend_numberOfColumns(v38, v95, v96, v97, v98);
    v255 = 0;
    v100 = (var1)(v251, 0, &v252, &v256, &v255, 0);
    v101 = v255;
    v106 = v101;
    if (!v100)
    {
      v151 = v101;
      goto LABEL_55;
    }

    v241 = v100;
    v107 = 0;
    do
    {
      if (v94 != v91)
      {
        v112 = v77;
        v113 = v249;
        goto LABEL_36;
      }

      v112 = &stru_288528678;
      v113 = v249;
      if (v91 < objc_msgSend_count(v246, v102, v103, v104, v105))
      {
        v112 = objc_msgSend_objectAtIndexedSubscript_(v246, v108, v109, v110, v111, v91);
      }

      if (v247)
      {
        if (v91 >= objc_msgSend_numberOfColumns(v249, v114, v115, v116, v117))
        {
          goto LABEL_34;
        }

        v122 = objc_msgSend_columnIdForColumn_(v249, v118, v119, v120, v121, v91);
      }

      else
      {
        if (v91 >= objc_msgSend_numberOfRows(v249, v114, v115, v116, v117))
        {
LABEL_34:
          v122 = objc_msgSend_createUUID(v38, v118, v119, v120, v121);
          goto LABEL_35;
        }

        v122 = objc_msgSend_rowIdForRow_(v249, v118, v119, v120, v121, v91);
      }

LABEL_35:
      v123 = v122;

      objc_msgSend_insertRow_withName_withId_(v38, v124, v125, v126, v127, v91, v112, v123);
      v94 = objc_msgSend_numberOfRows(v38, v128, v129, v130, v131);
      v90 = v123;
LABEL_36:
      if (v107 != v99)
      {
        v77 = v112;
        goto LABEL_47;
      }

      v77 = &stru_288528678;
      if (v107 < objc_msgSend_count(v245, v102, v103, v104, v105))
      {
        v77 = objc_msgSend_objectAtIndexedSubscript_(v245, v132, v133, v134, v135, v107);
      }

      if (v247)
      {
        if (v107 >= objc_msgSend_numberOfRows(v113, v136, v137, v138, v139))
        {
          goto LABEL_45;
        }

        v144 = objc_msgSend_rowIdForRow_(v113, v140, v141, v142, v143, v107);
      }

      else
      {
        if (v107 >= objc_msgSend_numberOfColumns(v113, v136, v137, v138, v139))
        {
LABEL_45:
          v144 = objc_msgSend_createUUID(v38, v140, v141, v142, v143);
          goto LABEL_46;
        }

        v144 = objc_msgSend_columnIdForColumn_(v113, v140, v141, v142, v143, v107);
      }

LABEL_46:
      v145 = v144;

      objc_msgSend_insertColumn_withName_withId_(v38, v146, v147, v148, v149, v107, v77, v145);
      v99 = v107 + 1;
      v90 = v145;
LABEL_47:
      if (v256)
      {
        objc_msgSend_setValue_forRow_column_(v38, v102, v103, v104, v105, v106, v91, v107);
      }

      else
      {
        objc_msgSend_setValue_forRow_column_(v38, v102, v103, v104, v105, 0, v91, v107);
      }

      ++v107;
      v255 = v106;
      v150 = v250(v251, 0, &v252, &v256, &v255, 0);
      v151 = v255;

      v106 = v151;
    }

    while ((v150 & 1) != 0);
    v89 = v240;
    if (v241)
    {
      v152 = v243;
      objc_msgSend_setInt_forKey_(v239->_remoteSeriesIndexForGridSeriesIndex, v102, v103, v104, v105, v243, v91);
      objc_msgSend_setInt_forKey_(v239->_gridSeriesIndexForRemoteSeriesIndex, v153, v154, v155, v156, v91++, v243);
      v93 = v249;
      goto LABEL_56;
    }

    v93 = v249;
LABEL_55:
    v152 = v243;
LABEL_56:

    v92 = v152 + 1;
    var1 = v250;
  }

  while (v92 != v89);
LABEL_59:
  objc_msgSend_setDirection_(v38, v78, v79, v80, v81, 1);
  objc_msgSend_setDirty_(v38, v157, v158, v159, v160, 1);
  v169 = v242;
  if ((objc_msgSend_contentsEqualToGrid_(v38, v161, v162, v163, v164, v93) & 1) == 0)
  {
    objc_msgSend_setGrid_(v242, v165, v166, v167, v168, v38);
  }

  objc_msgSend_decrementTransitionLevel(v38, v165, v166, v167, v168);
  objc_msgSend_decrementTransitionLevel(v249, v170, v171, v172, v173);
  objc_msgSend_invalidateModel(v242, v174, v175, v176, v177);
  v182 = objc_msgSend_numberOfSeries(v242, v178, v179, v180, v181);
  if (v89 >= v182)
  {
    v187 = v182;
  }

  else
  {
    v187 = v89;
  }

  v188 = v239;
  v189 = v250;
  v190 = v251;
  if (v187)
  {
    v191 = v89;
    v192 = 0;
    v244 = v187;
    do
    {
      v248 = objc_msgSend_seriesAtIndex_(v169, v183, v184, v185, v186, v192);
      objc_opt_class();
      v197 = objc_msgSend_nonstyle(v248, v193, v194, v195, v196);
      v198 = TSUDynamicCast();

      v252 = v191;
      v253 = v189;
      v254 = v190;
      v203 = objc_msgSend_p_errorBarDataForSeries_withSpec_updateType_(v188, v199, v200, v201, v202, v192, &v252, 3);
      objc_msgSend_setValue_forProperty_(v198, v204, v205, v206, v207, v203, 1384);
      v252 = v191;
      v253 = v189;
      v254 = v190;
      objc_msgSend_p_errorBarDataForSeries_withSpec_updateType_(v188, v208, v209, v210, v211, v192, &v252, 4);
      v212 = v189;
      v213 = v191;
      v215 = v214 = v188;

      objc_msgSend_setValue_forProperty_(v198, v216, v217, v218, v219, v215, 1382);
      v252 = v213;
      v253 = v212;
      v254 = v251;
      v224 = objc_msgSend_p_errorBarDataForSeries_withSpec_updateType_(v214, v220, v221, v222, v223, v192, &v252, 5);

      objc_msgSend_setValue_forProperty_(v198, v225, v226, v227, v228, v224, 1385);
      v252 = v213;
      v253 = v212;
      v254 = v251;
      v233 = objc_msgSend_p_errorBarDataForSeries_withSpec_updateType_(v214, v229, v230, v231, v232, v192, &v252, 6);

      v169 = v242;
      objc_msgSend_setValue_forProperty_(v198, v234, v235, v236, v237, v233, 1383);

      v188 = v214;
      v191 = v213;
      v189 = v212;
      v190 = v251;
      ++v192;
    }

    while (v244 != v192);
  }

  v8 = v238;
LABEL_68:
}

+ (id)propertiesThatInvalidateMediator
{
  if (qword_280A47A30 != -1)
  {
    sub_2764A8668();
  }

  v3 = qword_280A47A28;

  return v3;
}

- (unint64_t)p_remoteSeriesIndexForGridSeriesIndex:(unint64_t)a3
{
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if (objc_msgSend_intIsPresentForKey_outValue_(self->_remoteSeriesIndexForGridSeriesIndex, a2, v3, v4, v5, a3, &v7))
  {
    return v7;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (unint64_t)p_gridSeriesIndexForRemoteSeriesIndex:(unint64_t)a3
{
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if (objc_msgSend_intIsPresentForKey_outValue_(self->_gridSeriesIndexForRemoteSeriesIndex, a2, v3, v4, v5, a3, &v7))
  {
    return v7;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (BOOL)preferSeriesToValues
{
  v5 = objc_msgSend_chartInfo(self, a2, v2, v3, v4);
  v10 = objc_msgSend_chartType(v5, v6, v7, v8, v9);
  v15 = objc_msgSend_supportsMultipleValuesPerSeries(v10, v11, v12, v13, v14);

  return v15 ^ 1;
}

- (TSCHChartInfo)chartInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_chartInfo);

  return WeakRetained;
}

- (TSCHNotifyOnModify)objectToNotify
{
  WeakRetained = objc_loadWeakRetained(&self->_objectToNotify);

  return WeakRetained;
}

@end