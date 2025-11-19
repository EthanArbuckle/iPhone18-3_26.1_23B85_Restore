@interface TSDFPSCounter
- (TSDFPSCounter)init;
- (double)p_standardDeviationFromArray:(id)a3 mean:(double)a4;
- (id)formatInfoForLog:(id)a3 identifier:(id)a4 type:(id)a5 testName:(id)a6 direction:(id)a7 duration:(double)a8 slide:(int64_t)a9;
- (id)p_fpsInfo;
- (id)p_fpsSummaryStringIncludingGraph:(BOOL)a3;
- (id)p_modeFromArray:(id)a3;
- (void)addFrame;
- (void)addFrameAtDrawTime:(double)a3 duration:(double)a4;
- (void)addSample:(id)a3;
- (void)reset;
@end

@implementation TSDFPSCounter

- (TSDFPSCounter)init
{
  v6.receiver = self;
  v6.super_class = TSDFPSCounter;
  v2 = [(TSDFPSCounter *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    sampleArray = v2->_sampleArray;
    v2->_sampleArray = v3;
  }

  return v2;
}

- (void)reset
{
  self->_startTimeInterval = 0.0;
  self->_endTimeInterval = 0.0;
  objc_msgSend_removeAllObjects(self->_sampleArray, a2, v2);
}

- (void)addFrame
{
  objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x277CBEAA8], a2, v2);

  MEMORY[0x2821F9670](self, sel_addFrameAtDrawTime_duration_, v4);
}

- (void)addFrameAtDrawTime:(double)a3 duration:(double)a4
{
  v7 = objc_msgSend_sampleWithTime_duration_(TSDFPSCounterSample, a2, v4, a3, a4);
  objc_msgSend_addSample_(self, v6, v7);
}

- (void)addSample:(id)a3
{
  v9 = a3;
  if (self->_startTimeInterval == 0.0)
  {
    objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x277CBEAA8], v4, v5);
    self->_startTimeInterval = v6;
  }

  objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x277CBEAA8], v4, v5);
  self->_endTimeInterval = v7;
  objc_msgSend_addObject_(self->_sampleArray, v8, v9);
}

- (id)p_fpsSummaryStringIncludingGraph:(BOOL)a3
{
  v3 = a3;
  v116 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc(MEMORY[0x277CCAB68]);
  v7 = objc_msgSend_initWithString_(v5, v6, &stru_28857D120);
  v10 = objc_msgSend_mutableCopy(self->_sampleArray, v8, v9);
  if (objc_msgSend_count(v10, v11, v12))
  {
    if (objc_msgSend_count(v10, v13, v14) == 1)
    {
      objc_msgSend_appendFormat_(v7, v15, @"FPS(avg): %0.0f", self->_frameCount / (self->_endTimeInterval - self->_startTimeInterval));
      goto LABEL_52;
    }

    if (v3)
    {
      objc_msgSend_appendString_(v7, v15, @"\n===== FPS LOGGING BEGIN =====\n");
    }

    objc_msgSend_sortUsingComparator_(v10, v15, &unk_288574F08);
    v18 = objc_msgSend_firstObject(v10, v16, v17);
    objc_msgSend_time(v18, v19, v20);
    v22 = v21;

    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    v23 = v10;
    v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v111, v115, 16);
    if (v25)
    {
      v28 = v25;
      v29 = 0;
      v30 = *v112;
      v31 = 1.79769313e308;
      v32 = v22;
      v33 = 0.0;
      v109 = 0.0;
      v110 = 1.79769313e308;
      v34 = 0.0;
      v35 = 0.0;
      v105 = *v112;
      do
      {
        v36 = 0;
        v106 = v28;
        do
        {
          if (*v112 != v30)
          {
            objc_enumerationMutation(v23);
          }

          v37 = *(*(&v111 + 1) + 8 * v36);
          objc_msgSend_time(v37, v26, v27);
          if (v38 != v22 || (objc_msgSend_duration(v37, v26, v27), v39 != 0.0))
          {
            objc_msgSend_time(v37, v26, v27);
            v43 = v42 - v32;
            v44 = 0.0;
            if (v43 > 0.0)
            {
              v44 = 1.0 / v43;
              if (v31 >= 1.0 / v43)
              {
                v31 = 1.0 / v43;
              }

              if (v35 < v44)
              {
                v35 = 1.0 / v43;
              }

              v34 = v34 + v44;
              v29 += fmax(round(v43 * 60.0) + -1.0, 0.0);
            }

            objc_msgSend_duration(v37, v40, v41);
            if (v47 != 0.0)
            {
              objc_msgSend_duration(v37, v45, v46);
              v51 = v110;
              if (v110 >= v50)
              {
                v51 = v50;
              }

              v110 = v51;
              objc_msgSend_duration(v37, v48, v49);
              v55 = v109;
              if (v109 < v54)
              {
                v55 = v54;
              }

              v109 = v55;
              objc_msgSend_duration(v37, v52, v53);
              v33 = v33 + v56;
            }

            if (v3)
            {
              v107 = v34;
              v108 = v35;
              v57 = v29;
              v58 = v31;
              v59 = v33;
              v60 = v23;
              v61 = v3;
              if (v44 / 120.0 <= 1.0)
              {
                v62 = v44 / 120.0;
              }

              else
              {
                v62 = 1.0;
              }

              v63 = 0.0;
              v64 = -7;
              v65 = &stru_28857D120;
              while (1)
              {
                v66 = v65;
                if (v62 <= v63 / 7.0)
                {
                  goto LABEL_34;
                }

                if (v64 == -1)
                {
                  v67 = @"*";
                  goto LABEL_35;
                }

                v67 = @"*";
                if (v62 >= (v64 + 8) / 7.0)
                {
LABEL_34:
                  v67 = @" ";
                }

LABEL_35:
                v63 = v63 + 1.0;
                v65 = objc_msgSend_stringByAppendingString_(v65, v45, v67);

                if (__CFADD__(v64++, 1))
                {
                  v70 = MEMORY[0x277CCACA8];
                  objc_msgSend_time(v37, v45, v68);
                  v73 = objc_msgSend_stringWithFormat_(v70, v72, @"FPS(%0.2f): |%@| %0.0f", v71 - v22, v65, *&v44);
                  objc_msgSend_duration(v37, v74, v75);
                  if (v78 == 0.0)
                  {
                    v86 = &stru_28857D120;
                  }

                  else
                  {
                    v79 = MEMORY[0x277CCACA8];
                    objc_msgSend_duration(v37, v76, v77);
                    v81 = v80 * 1000.0;
                    objc_msgSend_duration(v37, v82, v83);
                    v86 = objc_msgSend_stringWithFormat_(v79, v85, @" ... duration:%2.0fms (%4.0f FPS)", *&v81, 1.0 / v84);
                  }

                  v33 = v59;
                  v31 = v58;
                  objc_msgSend_appendFormat_(v7, v76, @"%@%@\n", v73, v86);

                  v3 = v61;
                  v23 = v60;
                  v34 = v107;
                  v35 = v108;
                  v29 = v57;
                  v30 = v105;
                  v28 = v106;
                  break;
                }
              }
            }

            objc_msgSend_time(v37, v45, v46);
            v32 = v87;
          }

          ++v36;
        }

        while (v36 != v28);
        v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v26, &v111, v115, 16);
      }

      while (v28);
      v88 = v110 * 1000.0;
      v89 = v109 * 1000.0;
    }

    else
    {
      v29 = 0;
      v33 = 0.0;
      v31 = 1.79769313e308;
      v88 = INFINITY;
      v89 = 0.0;
      v34 = 0.0;
      v35 = 0.0;
    }

    v92 = v34 / objc_msgSend_count(v23, v90, v91);
    v95 = objc_msgSend_count(v23, v93, v94);
    objc_msgSend_appendFormat_(v7, v96, @"FPS(min/avg/max): %0.0f/%0.0f/%0.0f (%d frames)(%d dropped)", *&v31, *&v92, *&v35, (v95 - 1), v29);
    if (v33 > 0.0)
    {
      v99 = v33 / objc_msgSend_count(v23, v97, v98) * 1000.0;
      v102 = objc_msgSend_count(v23, v100, v101);
      objc_msgSend_appendFormat_(v7, v103, @"\nDuration(min/avg/max): %0.0f/%0.0f/%0.0fms (%d frames)", *&v88, *&v99, *&v89, (v102 - 1));
    }

    if (v3)
    {
      objc_msgSend_appendString_(v7, v97, @"\n=============================");
    }
  }

  else
  {
    objc_msgSend_appendString_(v7, v13, @"FPSCounter error: not enough frames");
  }

LABEL_52:

  return v7;
}

- (id)formatInfoForLog:(id)a3 identifier:(id)a4 type:(id)a5 testName:(id)a6 direction:(id)a7 duration:(double)a8 slide:(int64_t)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v23 = objc_msgSend_p_fpsInfo(self, v21, v22);
  v26 = v23;
  v27 = 0;
  if (v19)
  {
    if (v23)
    {
      v27 = objc_msgSend_mutableCopy(v23, v24, v25);
      objc_msgSend_removeObjectForKey_(v27, v28, @"array");
      objc_msgSend_setObject_forKeyedSubscript_(v27, v29, v16, @"name");
      objc_msgSend_setObject_forKeyedSubscript_(v27, v30, v18, @"type");
      v32 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v31, a9);
      objc_msgSend_setObject_forKeyedSubscript_(v27, v33, v32, @"slide");

      v36 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v34, v35, a8);
      objc_msgSend_setObject_forKeyedSubscript_(v27, v37, v36, @"duration");

      objc_msgSend_setObject_forKeyedSubscript_(v27, v38, v17, @"identifier");
      objc_msgSend_setObject_forKeyedSubscript_(v27, v39, v19, @"testName");
      if (v20)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v27, v40, v20, @"direction");
      }
    }
  }

  return v27;
}

- (id)p_modeFromArray:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v5 = objc_msgSend_setWithArray_(MEMORY[0x277CCA940], v4, v3);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v19, v23, 16);
  if (v7)
  {
    v9 = v7;
    v10 = 0;
    v11 = 0;
    v12 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v5);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        v15 = objc_msgSend_countForObject_(v5, v8, v14);
        if (v15 > v11)
        {
          v16 = v15;
          v17 = v14;

          v10 = v17;
          v11 = v16;
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v19, v23, 16);
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (double)p_standardDeviationFromArray:(id)a3 mean:(double)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v17, v21, 16);
  if (v7)
  {
    v10 = v7;
    v11 = *v18;
    v12 = 0.0;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v5);
        }

        objc_msgSend_doubleValue(*(*(&v17 + 1) + 8 * i), v8, v9);
        v12 = v12 + (v14 - a4) * (v14 - a4);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v17, v21, 16);
    }

    while (v10);
  }

  else
  {
    v12 = 0.0;
  }

  v15 = objc_msgSend_count(v5, v8, v9);

  return sqrt(v12 / (v15 - 1));
}

- (id)p_fpsInfo
{
  v144 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_mutableCopy(self->_sampleArray, a2, v2);
  if (objc_msgSend_count(v4, v5, v6) >= 2)
  {
    objc_msgSend_sortUsingComparator_(v4, v7, &unk_288574F28);
    v11 = objc_msgSend_firstObject(v4, v9, v10);
    objc_msgSend_time(v11, v12, v13);
    v15 = v14;

    v18 = objc_msgSend_array(MEMORY[0x277CBEB18], v16, v17);
    v137 = 0u;
    v138 = 0u;
    v139 = 0u;
    v140 = 0u;
    v136 = v4;
    v19 = v4;
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v137, v143, 16);
    v24 = 0.0;
    v25 = 0.0;
    if (v21)
    {
      v26 = v21;
      v27 = *v138;
      v28 = v15;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v138 != v27)
          {
            objc_enumerationMutation(v19);
          }

          v30 = *(*(&v137 + 1) + 8 * i);
          objc_msgSend_time(v30, v22, v23);
          if (v31 != v15)
          {
            objc_msgSend_time(v30, v22, v23);
            v33 = v32 - v28;
            if (v33 > 0.00333333333)
            {
              v34 = 1.0 / v33;
              v25 = v25 + v34;
              v35 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v22, v23, round(v34 * 100.0) / 100.0);
              objc_msgSend_addObject_(v18, v36, v35);

              objc_msgSend_time(v30, v37, v38);
              v28 = v39;
            }
          }
        }

        v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v137, v143, 16);
      }

      while (v26);
    }

    objc_msgSend_sortUsingSelector_(v18, v40, sel_compare_);
    v43 = objc_msgSend_firstObject(v18, v41, v42);
    objc_msgSend_doubleValue(v43, v44, v45);
    v135 = v46;

    v49 = objc_msgSend_lastObject(v18, v47, v48);
    objc_msgSend_doubleValue(v49, v50, v51);
    v53 = v52;

    v56 = objc_msgSend_firstObject(v19, v54, v55);
    objc_msgSend_time(v56, v57, v58);
    v60 = v59;

    v63 = objc_msgSend_lastObject(v19, v61, v62);
    objc_msgSend_time(v63, v64, v65);
    v67 = v66;

    if (v60 != v67)
    {
      v24 = (objc_msgSend_count(v19, v68, v69) - 1) / (v67 - v60);
    }

    v70 = v24;
    v71 = v25 / objc_msgSend_count(v18, v68, v69);
    v74 = objc_msgSend_count(v18, v72, v73);
    v76 = objc_msgSend_objectAtIndexedSubscript_(v18, v75, v74 >> 1);
    objc_msgSend_doubleValue(v76, v77, v78);
    v80 = v79;

    if ((objc_msgSend_count(v18, v81, v82) & 1) == 0)
    {
      v85 = objc_msgSend_count(v18, v83, v84);
      v87 = objc_msgSend_objectAtIndexedSubscript_(v18, v86, (v85 >> 1) - 1);
      objc_msgSend_doubleValue(v87, v88, v89);
      v80 = (v80 + v90) * 0.5;
    }

    v91 = objc_msgSend_p_modeFromArray_(self, v83, v18);
    objc_msgSend_doubleValue(v91, v92, v93);
    v95 = v94;

    objc_msgSend_p_standardDeviationFromArray_mean_(self, v96, v18, v71);
    v98 = v97;
    v132 = MEMORY[0x277CBEB38];
    v141[0] = @"fps";
    v134 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v99, v100, v70);
    v142[0] = v134;
    v141[1] = @"mean";
    v133 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v101, v102, v71);
    v142[1] = v133;
    v141[2] = @"min";
    v105 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v103, v104, v135);
    v142[2] = v105;
    v141[3] = @"max";
    v108 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v106, v107, v53);
    v142[3] = v108;
    v141[4] = @"median";
    v111 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v109, v110, v80);
    v142[4] = v111;
    v141[5] = @"mode";
    v114 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v112, v113, v95);
    v142[5] = v114;
    v141[6] = @"stddev";
    v117 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v115, v116, v98);
    v142[6] = v117;
    v141[7] = @"fpsDuration";
    v120 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v118, v119, v67 - v60);
    v142[7] = v120;
    v141[8] = @"fpsSampleCount";
    v121 = MEMORY[0x277CCABB0];
    v124 = objc_msgSend_count(v19, v122, v123);
    v126 = objc_msgSend_numberWithUnsignedInteger_(v121, v125, v124);
    v142[8] = v126;
    v128 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v127, v142, v141, 9);
    v8 = objc_msgSend_dictionaryWithDictionary_(v132, v129, v128);

    objc_msgSend_setObject_forKeyedSubscript_(v8, v130, v18, @"array");
    v4 = v136;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end