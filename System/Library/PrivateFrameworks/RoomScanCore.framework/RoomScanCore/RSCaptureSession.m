@interface RSCaptureSession
- (RSCaptureSession)init;
- (RSCaptureSessionDelegate)delegate;
- (id).cxx_construct;
- (id)exportAsset;
- (id)generateFloorPlanWithKeyframes:(id)a3 objects:(id)a4;
- (id)getDebugInfo;
- (id)standardizeFloorPlan:(id)a3;
- (void)_processInfoThermalStateDidChangeNotification:(id)a3;
- (void)dealloc;
- (void)runWithConfiguration:(id)a3;
- (void)setUpInternalDumpWithLogDir:(id)a3 enable:(BOOL)a4;
- (void)stop;
- (void)updateWithFrame:(id)a3;
- (void)updateWithKeyframes:(id)a3;
- (void)updateWithObjects:(id)a3;
@end

@implementation RSCaptureSession

- (id).cxx_construct
{
  *(self + 25) = 850045863;
  *(self + 13) = 0u;
  *(self + 14) = 0u;
  *(self + 15) = 0u;
  *(self + 32) = 0;
  return self;
}

- (RSCaptureSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(self + 35);

  return WeakRetained;
}

- (void)dealloc
{
  v13 = *MEMORY[0x277D85DE8];
  if (qword_27FF0C0B0 != -1)
  {
    dispatch_once(&qword_27FF0C0B0, &unk_2874EE1A0);
  }

  v3 = qword_27FF0C0A8;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v12 = self;
    _os_log_impl(&dword_2621C3000, v3, OS_LOG_TYPE_INFO, "%{public}@: dealloc", buf, 0xCu);
  }

  v6 = *(self + 14);
  if (v6)
  {
    dispatch_source_cancel(v6);
  }

  v7 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v4, v5);
  objc_msgSend_removeObserver_name_object_(v7, v8, self, *MEMORY[0x277CCA600], 0);

  v10.receiver = self;
  v10.super_class = RSCaptureSession;
  [(RSCaptureSession *)&v10 dealloc];
  v9 = *MEMORY[0x277D85DE8];
}

- (id)standardizeFloorPlan:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sub_26229CF80(v15);
  v8 = objc_msgSend_copy(v4, v6, v7, v5);
  v9 = sub_2621CD3A4(*(*(self + 2) + 72));
  sub_262241864(v15, v8, v9, *(*(self + 2) + 56) + 1968);

  v10 = sub_2621F6A6C(*(self + 2), *(self + 13), v8);
  objc_msgSend_updateObjects_(v8, v11, v10);

  sub_262241820(v17);
  v12 = __p;
  __p = 0;
  if (v12)
  {
    operator delete(v12);
  }

  sub_26229D160(v15);

  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)exportAsset
{
  v3 = sub_2621F6B40(*(self + 2));
  v6 = objc_msgSend_floorPlan(v3, v4, v5);
  objc_msgSend_updateObjects_(v6, v7, *(self + 13));

  return v3;
}

- (id)generateFloorPlanWithKeyframes:(id)a3 objects:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = v6;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v24, v28, 16);
  if (v12)
  {
    v13 = *v25;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        v16 = *(self + 4);
        v17 = objc_msgSend_identifier(v15, v10, v11, v24);
        objc_msgSend_setObject_forKeyedSubscript_(v16, v18, v15, v17);
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v24, v28, 16);
    }

    while (v12);
  }

  objc_storeStrong(self + 13, a4);
  v19 = sub_2621EEA88(*(self + 2), *(self + 4), *(self + 13));
  sub_2621ECCF8(*(self + 19), v19);
  if (v7)
  {
    v20 = sub_2621F6A6C(*(self + 2), *(self + 13), v19);
    objc_msgSend_updateObjects_(v19, v21, v20);
  }

  v22 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)setUpInternalDumpWithLogDir:(id)a3 enable:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v8 = *(self + 2);
  if (v8)
  {
    *(v8 + 184) = v4;
  }

  v9 = *(self + 19);
  v12 = v7;
  if (v9)
  {
    objc_storeStrong((v9 + 24), a3);
    *(v9 + 177) = v4;
    if (v12)
    {
      if (v4)
      {
        v11 = objc_msgSend_stringByAppendingPathComponent_(v12, v10, @"Live");
        sub_2621EB460(v9, v11);
      }
    }
  }
}

- (id)getDebugInfo
{
  v44 = *MEMORY[0x277D85DE8];
  v38 = *(self + 120);
  *(self + 120) = 1;
  v4 = *(self + 19);
  v5 = objc_msgSend_dictionaryRepresentation(*(self + 1), a2, v2);
  v7 = sub_2621EEB10(*(self + 2), v6);
  v8 = v5;
  v9 = v7;
  v11 = v9;
  if (v4)
  {
    if (*(v4 + 177) == 1)
    {
      v12 = objc_msgSend_objectForKeyedSubscript_(v9, v10, @"floorPlanDebug");
      v17 = objc_msgSend_array(MEMORY[0x277CBEB18], v13, v14);
      for (i = 0; i < objc_msgSend_count(*(v4 + 40), v15, v16); ++i)
      {
        v21 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v19, v20);
        v23 = objc_msgSend_objectAtIndexedSubscript_(*(v4 + 40), v22, i);
        objc_msgSend_addEntriesFromDictionary_(v21, v24, v23);

        v26 = objc_msgSend_objectAtIndexedSubscript_(v12, v25, i);
        objc_msgSend_addEntriesFromDictionary_(v21, v27, v26);

        objc_msgSend_addObject_(v17, v28, v21);
      }

      v29 = *(v4 + 16);
      v30 = dispatch_time(0, 30000000000);
      dispatch_group_wait(v29, v30);
      v39[0] = @"config";
      v39[1] = @"keyframeDebug";
      v31 = *(v4 + 32);
      v40[0] = v8;
      v40[1] = v31;
      v40[2] = v17;
      v39[2] = @"floorPlanDebug";
      v39[3] = @"coachingDebug";
      v41 = *(v4 + 48);
      v39[4] = @"driftDebug";
      v39[5] = @"sysDebug";
      v42 = *(v4 + 64);
      v39[6] = @"firstARFrameTime";
      v34 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v32, v33, *(v4 + 72));
      v43 = v34;
      v4 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v35, v40, v39, 7);
    }

    else
    {
      v4 = MEMORY[0x277CBEC10];
    }
  }

  *(self + 120) = v38;
  v36 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)stop
{
  v19 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  *(self + 120) = 1;
  if (qword_27FF0C0B0 != -1)
  {
    dispatch_once(&qword_27FF0C0B0, &unk_2874EE1A0);
  }

  v3 = qword_27FF0C0A8;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = self;
    _os_log_impl(&dword_2621C3000, v3, OS_LOG_TYPE_INFO, "%{public}@: listen to available memory stop", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v15 = 0x3032000000;
  v16 = sub_2622A4460;
  v17 = sub_2622A4470;
  v18 = objc_msgSend_array(MEMORY[0x277CBEA60], v4, v5);
  v6 = *(self + 33);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2622A4478;
  block[3] = &unk_279B307E0;
  objc_copyWeak(&v12, &location);
  block[4] = &buf;
  dispatch_sync(v6, block);
  v7 = *(self + 3);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2622A44F4;
  v9[3] = &unk_279B307E0;
  objc_copyWeak(&v10, &location);
  v9[4] = &buf;
  dispatch_async(v7, v9);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  _Block_object_dispose(&buf, 8);

  objc_destroyWeak(&location);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateWithFrame:(id)a3
{
  v4 = a3;
  v5 = *(self + 19);
  v35 = v4;
  if (v5 && *(v5 + 177) == 1 && *(v5 + 72) == 0.0)
  {
    objc_msgSend_timestamp(v35, v6, v7);
    *(v5 + 72) = v8;
  }

  if (objc_msgSend_isBoundaryRefinementEnabled(*(self + 1), v9, v10))
  {
    std::mutex::lock((self + 200));
    objc_msgSend_removeLastObject(*(self + 24), v13, v14);
    objc_msgSend_addObject_(*(self + 24), v15, v35);
    std::mutex::unlock((self + 200));
  }

  if ((objc_msgSend_isTextCoachingEnabled(*(self + 1), v11, v12, v35) & 1) != 0 || objc_msgSend_isDriftDetectionEnabled(*(self + 1), v16, v17))
  {
    v18 = v36;
    if (!dispatch_semaphore_wait(*(self + 17), 0xFFFFFFFFFFFFFFFELL))
    {
      v21 = objc_msgSend_date(MEMORY[0x277CBEAA8], v19, v20);
      objc_msgSend_timeIntervalSinceDate_(v21, v22, *(self + 9));
      v24 = v23;
      v25 = *(self + 1);
      if (v25)
      {
        v26 = *(v25 + 40);
      }

      else
      {
        v26 = 0.0;
      }

      v27 = 1.0 / v26;

      if (v24 >= v27)
      {
        objc_initWeak(&location, self);
        from[0] = 0;
        from[1] = from;
        from[2] = 0x3032000000;
        from[3] = sub_2622A4460;
        from[4] = sub_2622A4470;
        v47 = objc_msgSend_array(MEMORY[0x277CBEA60], v28, v29);
        v30 = *(self + 33);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_2622A4B00;
        block[3] = &unk_279B307E0;
        objc_copyWeak(&v45, &location);
        block[4] = from;
        dispatch_sync(v30, block);
        v31 = *(self + 7);
        v37 = MEMORY[0x277D85DD0];
        v38 = 3221225472;
        v39 = sub_2622A4B7C;
        v40 = &unk_279B30808;
        objc_copyWeak(&v43, &location);
        v42[0] = self;
        v42[1] = from;
        v41 = v18;
        dispatch_async(v31, &v37);

        objc_destroyWeak(&v43);
        objc_destroyWeak(&v45);
        _Block_object_dispose(from, 8);

        objc_destroyWeak(&location);
      }

      else
      {
        dispatch_semaphore_signal(*(self + 17));
      }
    }
  }

  v32 = *(self + 1);
  if (v32 && *(v32 + 23) == 1)
  {
    v33 = v36;
    if ((sub_2622A4A00(self, v33) & 1) != 0 && !dispatch_semaphore_wait(*(self + 18), 0xFFFFFFFFFFFFFFFELL))
    {
      objc_initWeak(from, self);
      v34 = *(self + 11);
      v37 = MEMORY[0x277D85DD0];
      v38 = 3221225472;
      v39 = sub_2622A4A88;
      v40 = &unk_279B30790;
      objc_copyWeak(v42, from);
      v41 = v33;
      dispatch_async(v34, &v37);

      objc_destroyWeak(v42);
      objc_destroyWeak(from);
    }
  }
}

- (void)updateWithObjects:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = *(self + 33);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2622A7E1C;
  block[3] = &unk_279B30790;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)updateWithKeyframes:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = *(self + 33);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2622A81EC;
  block[3] = &unk_279B30790;
  objc_copyWeak(&v34, &location);
  v6 = v4;
  v33 = v6;
  dispatch_async(v5, block);
  if (objc_msgSend_isLiveResultEnabled(*(self + 1), v7, v8))
  {
    if (dispatch_semaphore_wait(*(self + 16), 0xFFFFFFFFFFFFFFFELL))
    {
      sub_2621EB520(*(self + 19), v6, 1);
    }

    else
    {
      v11 = objc_msgSend_date(MEMORY[0x277CBEAA8], v9, v10);
      objc_msgSend_timeIntervalSinceDate_(v11, v12, *(self + 6));
      v14 = v13;
      v17 = 1.0 / objc_msgSend_maxFramerate(*(self + 1), v15, v16);

      if (v14 >= v17)
      {
        v30[0] = 0;
        v30[1] = v30;
        v30[2] = 0x3032000000;
        v30[3] = sub_2622A4460;
        v30[4] = sub_2622A4470;
        v31 = objc_msgSend_dictionary(MEMORY[0x277CBEAC0], v18, v19);
        v28[0] = 0;
        v28[1] = v28;
        v28[2] = 0x3032000000;
        v28[3] = sub_2622A4460;
        v28[4] = sub_2622A4470;
        v29 = objc_msgSend_array(MEMORY[0x277CBEA60], v20, v21);
        v22 = *(self + 33);
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = sub_2622A8360;
        v26[3] = &unk_279B307B8;
        objc_copyWeak(&v27, &location);
        v26[4] = v30;
        v26[5] = v28;
        dispatch_sync(v22, v26);
        v23 = *(self + 3);
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = sub_2622A83FC;
        v24[3] = &unk_279B307B8;
        objc_copyWeak(&v25, &location);
        v24[4] = v30;
        v24[5] = v28;
        dispatch_async(v23, v24);
        objc_destroyWeak(&v25);
        objc_destroyWeak(&v27);
        _Block_object_dispose(v28, 8);

        _Block_object_dispose(v30, 8);
      }

      else
      {
        sub_2621EB520(*(self + 19), v6, 1);
        dispatch_semaphore_signal(*(self + 16));
      }
    }
  }

  objc_destroyWeak(&v34);
  objc_destroyWeak(&location);
}

- (void)runWithConfiguration:(id)a3
{
  v184 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_copy(v4, v5, v6);
  v8 = *(self + 1);
  *(self + 1) = v7;

  objc_msgSend_clear(*(self + 2), v9, v10);
  v11 = *(self + 2);
  isWindowDoorDetectionEnabled = objc_msgSend_isWindowDoorDetectionEnabled(*(self + 1), v12, v13);
  objc_msgSend_setDoorWindowEnable_(v11, v15, isWindowDoorDetectionEnabled);
  v16 = *(self + 2);
  isObjectBeautificationEnabled = objc_msgSend_isObjectBeautificationEnabled(*(self + 1), v17, v18);
  objc_msgSend_setObjectBeautificationEnable_(v16, v20, isObjectBeautificationEnabled);
  v21 = *(self + 2);
  isStandardizationEnabled = objc_msgSend_isStandardizationEnabled(*(self + 1), v22, v23);
  objc_msgSend_setStandardizationEnable_(v21, v25, isStandardizationEnabled);
  v26 = *(self + 2);
  isMarkerCoachingEnabled = objc_msgSend_isMarkerCoachingEnabled(*(self + 1), v27, v28);
  if (v26)
  {
    *(v26 + 136) = isMarkerCoachingEnabled;
  }

  v32 = *(self + 2);
  isDoorWindowBeautificationEnabled = objc_msgSend_isDoorWindowBeautificationEnabled(*(self + 1), v30, v31);
  if (v32)
  {
    v36 = *(v32 + 40);
    if (v36)
    {
      v37 = *(v36 + 568);
      if (v37)
      {
        *(v37 + 1433) = isDoorWindowBeautificationEnabled;
      }
    }
  }

  v38 = *(self + 1);
  v39 = *(self + 2);
  if (v38)
  {
    v40 = v38[24];
    if (!v39)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v40 = 0;
    if (!v39)
    {
      goto LABEL_11;
    }
  }

  v41 = *(v39 + 32);
  if (v41)
  {
    *(v41 + 1968) = v40 & 1;
    v38 = *(self + 1);
    v39 = *(self + 2);
  }

LABEL_11:
  isNonUniformHeightEnabled = objc_msgSend_isNonUniformHeightEnabled(v38, v34, v35);
  if (v39)
  {
    v45 = *(v39 + 96);
    if (v45)
    {
      *(v45 + 400) = isNonUniformHeightEnabled;
    }
  }

  v46 = *(self + 2);
  isOpeningReplaceOpendoorEnabled = objc_msgSend_isOpeningReplaceOpendoorEnabled(*(self + 1), v43, v44);
  if (v46)
  {
    *(v46 + 161) = isOpeningReplaceOpendoorEnabled;
  }

  v50 = *(self + 2);
  isOpendoorReplaceOpeningEnabled = objc_msgSend_isOpendoorReplaceOpeningEnabled(*(self + 1), v48, v49);
  if (v50)
  {
    *(v50 + 162) = isOpendoorReplaceOpeningEnabled;
  }

  v54 = *(self + 2);
  isDoorReplaceOpeningEnabled = objc_msgSend_isDoorReplaceOpeningEnabled(*(self + 1), v52, v53);
  if (v54)
  {
    *(v54 + 163) = isDoorReplaceOpeningEnabled;
  }

  v58 = *(self + 2);
  isBayWindowRecessedAreaEnabled = objc_msgSend_isBayWindowRecessedAreaEnabled(*(self + 1), v56, v57);
  if (v58)
  {
    *(v58 + 164) = isBayWindowRecessedAreaEnabled;
  }

  v61 = *(self + 1);
  if (v61)
  {
    LOBYTE(v61) = *(v61 + 25);
  }

  objc_msgSend_setUniformHeightPolygonEnable_(*(self + 2), v60, v61 & 1);
  v64 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v62, v63);
  v65 = *(self + 4);
  *(self + 4) = v64;

  v68 = objc_msgSend_array(MEMORY[0x277CBEA60], v66, v67);
  v69 = *(self + 5);
  *(self + 5) = v68;

  v72 = objc_msgSend_array(MEMORY[0x277CBEB18], v70, v71);
  v73 = *(self + 24);
  *(self + 24) = v72;

  v74 = objc_alloc_init(RSFloorPlan);
  v75 = *(self + 12);
  *(self + 12) = v74;

  v78 = objc_msgSend_array(MEMORY[0x277CBEA60], v76, v77);
  v79 = *(self + 13);
  *(self + 13) = v78;

  v80 = *(self + 8);
  isOnboardingEnabled = objc_msgSend_isOnboardingEnabled(v4, v81, v82);
  if (v80)
  {
    *(v80 + 928) = isOnboardingEnabled;
  }

  v86 = *(self + 8);
  if (v86)
  {
    sub_26230BD80(v86 + 16);
    sub_26230C4DC((v86 + 288));
    v87 = *(v86 + 528);
    v88 = *(v86 + 536);
    *(v86 + 560) = 0;
    v89 = (v88 - v87) >> 3;
    if (v89 >= 3)
    {
      do
      {
        operator delete(*v87);
        v87 = (*(v86 + 528) + 8);
        *(v86 + 528) = v87;
        v89 = (*(v86 + 536) - v87) >> 3;
      }

      while (v89 > 2);
    }

    if (v89 == 1)
    {
      v90 = 512;
    }

    else
    {
      if (v89 != 2)
      {
        goto LABEL_34;
      }

      v90 = 1024;
    }

    *(v86 + 552) = v90;
LABEL_34:
    v91 = *(v86 + 480);
    v92 = *(v86 + 488);
    *(v86 + 512) = 0;
    v93 = (v92 - v91) >> 3;
    if (v93 >= 3)
    {
      do
      {
        operator delete(*v91);
        v94 = *(v86 + 488);
        v91 = (*(v86 + 480) + 8);
        *(v86 + 480) = v91;
        v93 = (v94 - v91) >> 3;
      }

      while (v93 > 2);
    }

    if (v93 == 1)
    {
      v95 = 512;
    }

    else
    {
      if (v93 != 2)
      {
        goto LABEL_41;
      }

      v95 = 1024;
    }

    *(v86 + 504) = v95;
LABEL_41:
    *(v86 + 568) = 0;
    v96 = *(v86 + 784);
    *(v86 + 784) = 0;

    v97 = *(v86 + 776);
    *(v86 + 776) = 0;

    v98 = *(v86 + 688);
    v99 = *(v86 + 696);
    *(v86 + 720) = 0;
    v100 = (v99 - v98) >> 3;
    if (v100 >= 3)
    {
      do
      {
        operator delete(*v98);
        v98 = (*(v86 + 688) + 8);
        *(v86 + 688) = v98;
        v100 = (*(v86 + 696) - v98) >> 3;
      }

      while (v100 > 2);
    }

    if (v100 == 1)
    {
      v101 = 512;
    }

    else
    {
      if (v100 != 2)
      {
        goto LABEL_48;
      }

      v101 = 1024;
    }

    *(v86 + 712) = v101;
LABEL_48:
    v102 = *(v86 + 736);
    v103 = *(v86 + 744);
    *(v86 + 768) = 0;
    v104 = (v103 - v102) >> 3;
    if (v104 >= 3)
    {
      do
      {
        operator delete(*v102);
        v102 = (*(v86 + 736) + 8);
        *(v86 + 736) = v102;
        v104 = (*(v86 + 744) - v102) >> 3;
      }

      while (v104 > 2);
    }

    if (v104 == 1)
    {
      v105 = 512;
    }

    else
    {
      if (v104 != 2)
      {
LABEL_55:
        *(v86 + 840) = *(v86 + 832);
        v106 = *(v86 + 888);
        *(v86 + 888) = 0;

        v107 = *(v86 + 896);
        *(v86 + 896) = 0;

        v108 = [RSTextCoachingSignal alloc];
        if (v108)
        {
          v108 = sub_2622E743C(v108, -1, 1.0);
        }

        v109 = *(v86 + 856);
        *(v86 + 856) = v108;

        v110 = [RSTextCoachingSignal alloc];
        if (v110)
        {
          v110 = sub_2622E743C(v110, -1, 1.0);
        }

        v111 = *(v86 + 864);
        *(v86 + 864) = v110;

        v112 = *(v86 + 872);
        *(v86 + 872) = 0;

        v113 = *(v86 + 912);
        *(v86 + 912) = 0;

        v114 = *(v86 + 904);
        *(v86 + 904) = 0;

        v115 = 3;
        if (*(v86 + 928))
        {
          v115 = -1;
        }

        *(v86 + 1000) = v115;
        goto LABEL_62;
      }

      v105 = 1024;
    }

    *(v86 + 760) = v105;
    goto LABEL_55;
  }

LABEL_62:
  v116 = *(self + 10);
  if (v116)
  {
    *(v116 + 20) = 0;
    *(v116 + 16) = 0;
    *(v116 + 104) = xmmword_2623A7620;
    *(v116 + 120) = (*(v116 + 64) + 1.0);
    *(v116 + 128) = 0;
    v118 = *(v116 + 24);
    for (i = *(v116 + 32); i != v118; sub_262232668(i))
    {
      i -= 144;
    }

    *(v116 + 32) = v118;
  }

  v119 = *(self + 19);
  if (v119)
  {
    v120 = objc_msgSend_array(MEMORY[0x277CBEB18], v84, v85);
    v121 = *(v119 + 32);
    *(v119 + 32) = v120;

    v124 = objc_msgSend_array(MEMORY[0x277CBEB18], v122, v123);
    v125 = *(v119 + 40);
    *(v119 + 40) = v124;

    v128 = objc_msgSend_array(MEMORY[0x277CBEB18], v126, v127);
    v129 = *(v119 + 48);
    *(v119 + 48) = v128;

    v132 = objc_msgSend_array(MEMORY[0x277CBEB18], v130, v131);
    v133 = *(v119 + 56);
    *(v119 + 56) = v132;

    v136 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v134, v135);
    v137 = *(v119 + 88);
    *(v119 + 88) = v136;

    v140 = objc_msgSend_array(MEMORY[0x277CBEB18], v138, v139);
    v141 = *(v119 + 64);
    *(v119 + 64) = v140;

    v144 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v142, v143);
    v146 = objc_msgSend_BOOLForKey_(v144, v145, @"com.apple.roomscancore.debug_info_image_dump");

    *(v119 + 178) = v146;
    v149 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v147, v148);
    v151 = objc_msgSend_BOOLForKey_(v149, v150, @"com.apple.roomscancore.debug_info_image_dump");

    *(v119 + 179) = v151;
    v154 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v152, v153);
    v156 = objc_msgSend_BOOLForKey_(v154, v155, @"com.apple.roomscancore.debug_info_arframe_dump");

    *(v119 + 176) = v156;
    v159 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v157, v158);
    objc_msgSend_doubleForKey_(v159, v160, @"com.apple.roomscancore.debug_info_max_keyframe_fps");
    *(v119 + 96) = v161;

    *(v119 + 72) = 0;
    v162 = MEMORY[0x277D860B8];
    v163 = *(MEMORY[0x277D860B8] + 16);
    *(v119 + 112) = *MEMORY[0x277D860B8];
    *(v119 + 128) = v163;
    v164 = *(v162 + 48);
    *(v119 + 144) = *(v162 + 32);
    *(v119 + 160) = v164;
    v165 = *(v119 + 104);
    *(v119 + 104) = 0;

    v166 = *(v119 + 80);
    *(v119 + 80) = 0;
  }

  v167 = *(self + 23);
  if (v167)
  {
    v168 = v167[1];
    if (v168)
    {
      sub_26225CE48(*(v168 + 136));
      v169 = *(v168 + 160);
      *(v168 + 128) = v168 + 136;
      *(v168 + 136) = 0;
      *(v168 + 144) = 0;
      sub_26225CDF4(v169);
      *(v168 + 160) = 0;
      *(v168 + 168) = 0;
      *(v168 + 152) = v168 + 160;
      v170 = *(v168 + 120);
      if (v170 && v170[22])
      {
        v171 = v170[21];
        if (v171)
        {
          do
          {
            v172 = *v171;
            operator delete(v171);
            v171 = v172;
          }

          while (v172);
        }

        v170[21] = 0;
        v173 = v170[20];
        if (v173)
        {
          for (j = 0; j != v173; ++j)
          {
            *(v170[19] + 8 * j) = 0;
          }
        }

        v170[22] = 0;
      }

      *(v168 + 208) = 0;
    }

    v175 = v167[3];
    v176 = MEMORY[0x277CBEBF8];
    v167[3] = MEMORY[0x277CBEBF8];

    v177 = v167[4];
    v167[4] = v176;

    v178 = objc_alloc_init(RSFloorPlan);
    v179 = v167[5];
    v167[5] = v178;
  }

  *(self + 120) = 0;
  if (qword_27FF0C0B0 != -1)
  {
    dispatch_once(&qword_27FF0C0B0, &unk_2874EE1A0);
  }

  v180 = qword_27FF0C0A8;
  if (os_log_type_enabled(v180, OS_LOG_TYPE_INFO))
  {
    v182 = 138543362;
    v183 = self;
    _os_log_impl(&dword_2621C3000, v180, OS_LOG_TYPE_INFO, "%{public}@: Listen to available memory start", &v182, 0xCu);
  }

  v181 = *MEMORY[0x277D85DE8];
}

- (void)_processInfoThermalStateDidChangeNotification:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_processInfo(MEMORY[0x277CCAC38], a2, a3);
  v7 = objc_msgSend_thermalState(v4, v5, v6);

  if (qword_27FF0C0B0 != -1)
  {
    dispatch_once(&qword_27FF0C0B0, &unk_2874EE1A0);
  }

  v8 = qword_27FF0C0A8;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v18 = 134217984;
    v19 = v7;
    _os_log_impl(&dword_2621C3000, v8, OS_LOG_TYPE_INFO, "Thermal state info in notification: %ld", &v18, 0xCu);
  }

  if (v7 == 3)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v18) = 0;
      _os_log_error_impl(&dword_2621C3000, v8, OS_LOG_TYPE_ERROR, "RSError: kRSError_Runtime_CriticalThermalState", &v18, 2u);
    }

    v11 = objc_msgSend_delegate(self, v9, v10);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v15 = objc_msgSend_delegate(self, v13, v14);
      objc_msgSend_session_didFailWithError_(v15, v16, self, -3);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (RSCaptureSession)init
{
  v61.receiver = self;
  v61.super_class = RSCaptureSession;
  v2 = [(RSCaptureSession *)&v61 init];
  if (!v2)
  {
LABEL_6:
    v58 = v2;
    goto LABEL_12;
  }

  v3 = objc_alloc_init(RSOnlineFloorPlanGenerator);
  v4 = *(v2 + 2);
  *(v2 + 2) = v3;

  if (*(v2 + 2))
  {
    v5 = dispatch_semaphore_create(1);
    v6 = *(v2 + 16);
    *(v2 + 16) = v5;

    v7 = sub_262240718();
    v8 = *(v2 + 20);
    *(v2 + 20) = v7;

    v9 = sub_262240540("com.apple.RoomScanCore.onlineFloorPlanGeneration", *(v2 + 20));
    v10 = *(v2 + 3);
    *(v2 + 3) = v9;

    v11 = objc_alloc_init(RSScanCoaching);
    v12 = *(v2 + 8);
    *(v2 + 8) = v11;

    v13 = dispatch_semaphore_create(1);
    v14 = *(v2 + 17);
    *(v2 + 17) = v13;

    v15 = sub_262240718();
    v16 = *(v2 + 21);
    *(v2 + 21) = v15;

    v17 = sub_262240540("com.apple.RoomScanCore.Coaching", *(v2 + 21));
    v18 = *(v2 + 7);
    *(v2 + 7) = v17;

    v19 = objc_alloc_init(RSDriftDetection);
    v20 = *(v2 + 10);
    *(v2 + 10) = v19;

    v21 = dispatch_semaphore_create(1);
    v22 = *(v2 + 18);
    *(v2 + 18) = v21;

    v23 = sub_262240718();
    v24 = *(v2 + 22);
    *(v2 + 22) = v23;

    v25 = sub_262240540("com.apple.RoomScanCore.mirrorPoint", *(v2 + 22));
    v26 = *(v2 + 11);
    *(v2 + 11) = v25;

    v27 = objc_alloc_init(RSFloorPlanBoundaryRefinement);
    v28 = *(v2 + 23);
    *(v2 + 23) = v27;

    v31 = objc_msgSend_array(MEMORY[0x277CBEB18], v29, v30);
    v32 = *(v2 + 24);
    *(v2 + 24) = v31;

    v33 = objc_alloc_init(RSFloorPlan);
    v34 = *(v2 + 12);
    *(v2 + 12) = v33;

    v37 = objc_msgSend_array(MEMORY[0x277CBEA60], v35, v36);
    v38 = *(v2 + 13);
    *(v2 + 13) = v37;

    *(v2 + 120) = 1;
    v41 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v39, v40);
    objc_msgSend_addObserver_selector_name_object_(v41, v42, v2, sel__processInfoThermalStateDidChangeNotification_, *MEMORY[0x277CCA600], 0);

    v43 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v2 + 33));
    v44 = *(v2 + 14);
    *(v2 + 14) = v43;

    dispatch_source_set_timer(*(v2 + 14), 0, 0x77359400uLL, 0);
    objc_initWeak(&location, v2);
    v45 = objc_alloc(MEMORY[0x277CBEBD0]);
    v47 = objc_msgSend_initWithSuiteName_(v45, v46, @"com.apple.RoomScanCore");
    objc_msgSend_doubleForKey_(v47, v48, @"RSMemory_load_thr");
    v50 = v49;

    if (v50 == 0.0)
    {
      v50 = 1073741820.0;
    }

    v51 = *(v2 + 14);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = sub_2622AB06C;
    handler[3] = &unk_279B30768;
    objc_copyWeak(v63, &location);
    v63[1] = *&v50;
    dispatch_source_set_event_handler(v51, handler);
    dispatch_resume(*(v2 + 14));
    objc_destroyWeak(v63);
    objc_destroyWeak(&location);
    v52 = objc_alloc_init(RSInternalInfoDumper);
    v53 = *(v2 + 19);
    *(v2 + 19) = v52;

    v54 = sub_262240718();
    v55 = *(v2 + 34);
    *(v2 + 34) = v54;

    v56 = sub_262240540("com.apple.RoomScanCore.readWrite", *(v2 + 34));
    v57 = *(v2 + 33);
    *(v2 + 33) = v56;

    goto LABEL_6;
  }

  if (qword_27FF0C0B0 != -1)
  {
    dispatch_once(&qword_27FF0C0B0, &unk_2874EE1A0);
  }

  v59 = qword_27FF0C0A8;
  if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
  {
    LOWORD(handler[0]) = 0;
    _os_log_error_impl(&dword_2621C3000, v59, OS_LOG_TYPE_ERROR, "Online floorplan generator init failed", handler, 2u);
  }

  v58 = 0;
LABEL_12:

  return v58;
}

@end