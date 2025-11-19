int main(int argc, const char **argv, const char **envp)
{
  v3 = getpid();
  v4 = PPSLogSignpostService();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100007620(v3, v4);
  }

  proc_disable_cpumon();
  v5 = +[NSXPCListener serviceListener];
  v6 = objc_opt_new();
  [v5 setDelegate:v6];
  [v5 resume];

  return 5000;
}

id PPSLogSignpostService()
{
  if (qword_100015758 != -1)
  {
    sub_100007698();
  }

  v1 = qword_100015750;

  return v1;
}

void sub_1000011C8(id a1)
{
  qword_100015750 = os_log_create("com.apple.perfpowerservices.signpost", "service");

  _objc_release_x1();
}

uint64_t IsInternalBuild()
{
  if (qword_100015768 != -1)
  {
    sub_1000076AC();
  }

  return byte_100015760;
}

void sub_1000013FC(uint64_t a1)
{
  if (*(*(a1 + 32) + 8) != 1)
  {
    v5 = [*(a1 + 40) type];
    if (v5 == 1)
    {
      v17 = PPSLogSignpostService();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [*(a1 + 40) description];
        *buf = 138412290;
        v37 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Performing time-series task: '%@'", buf, 0xCu);
      }

      v19 = PPSLogSignpostService();
      if (os_signpost_enabled(v19))
      {
        v20 = [*(a1 + 40) description];
        *buf = 138412290;
        v37 = v20;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "TimeSeriesTask", "%@", buf, 0xCu);
      }

      v10 = [[PPSSignpostTimeSeriesTask alloc] initWithRequest:*(a1 + 40)];
      v21 = *(a1 + 32);
      v34 = 0;
      v12 = [(PPSSignpostTimeSeriesTask *)v10 perform:v21 + 8 withStopDate:&v34];
      v13 = v34;
      v14 = PPSLogSignpostService();
      if (os_signpost_enabled(v14))
      {
        v15 = [*(a1 + 40) description];
        *buf = 138412290;
        v37 = v15;
        v16 = "TimeSeriesTask";
        goto LABEL_19;
      }
    }

    else
    {
      if (v5)
      {
        v12 = 0;
LABEL_23:
        v13 = [*(a1 + 40) startDate];
LABEL_24:
        v29 = *(a1 + 32);
        v30 = *(a1 + 40);
        v4 = v13;
        LOBYTE(v33) = v12;
        AnalyticsSendEventLazy();
        if ((v12 & 1) == 0)
        {
          v27 = *(a1 + 48);
          v28 = [*(a1 + 40) startDate];
          (*(v27 + 16))(v27, 0, v28);

LABEL_32:
          goto LABEL_33;
        }

        v22 = [*(a1 + 40) endDate];
        v23 = [v4 laterDate:v22];
        v24 = [*(a1 + 40) endDate];
        if (v23 == v24)
        {
        }

        else
        {
          v25 = *(*(a1 + 32) + 8);

          if ((v25 & 1) == 0)
          {
            v26 = *(*(a1 + 48) + 16);
LABEL_31:
            v26();
            goto LABEL_32;
          }
        }

        v26 = *(*(a1 + 48) + 16);
        goto LABEL_31;
      }

      v6 = PPSLogSignpostService();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [*(a1 + 40) description];
        *buf = 138412290;
        v37 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Performing testing task: '%@'", buf, 0xCu);
      }

      v8 = PPSLogSignpostService();
      if (os_signpost_enabled(v8))
      {
        v9 = [*(a1 + 40) description];
        *buf = 138412290;
        v37 = v9;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "XCTestTask", "%@", buf, 0xCu);
      }

      v10 = [[PPSSignpostTestingTask alloc] initWithRequest:*(a1 + 40)];
      v11 = *(a1 + 32);
      v35 = 0;
      v12 = [(PPSSignpostTimeSeriesTask *)v10 perform:v11 + 8 withStopDate:&v35];
      v13 = v35;
      v14 = PPSLogSignpostService();
      if (os_signpost_enabled(v14))
      {
        v15 = [*(a1 + 40) description];
        *buf = 138412290;
        v37 = v15;
        v16 = "XCTestTask";
LABEL_19:
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, v16, "%@", buf, 0xCu);
      }
    }

    if (v13)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v2 = PPSLogSignpostService();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Expired before processing occurred. Skipping signpost collection...", buf, 2u);
  }

  v3 = *(a1 + 48);
  v4 = [*(a1 + 40) startDate];
  (*(v3 + 16))(v3, 0, v4);
LABEL_33:
}

id sub_100001948(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = [NSNumber numberWithBool:*(*(a1 + 32) + 8)];
  [v2 setObject:v3 forKeyedSubscript:@"DidExpire"];

  v4 = [*(a1 + 40) sourceURL];
  v5 = [NSNumber numberWithInt:v4 == 0];
  [v2 setObject:v5 forKeyedSubscript:@"IsSystemLogArchive"];

  v6 = *(a1 + 48);
  v7 = [*(a1 + 40) startDate];
  [v6 timeIntervalSinceDate:v7];
  v8 = [NSNumber numberWithDouble:?];
  [v2 setObject:v8 forKeyedSubscript:@"ProcessingDuration"];

  v9 = [NSNumber numberWithBool:*(a1 + 56)];
  [v2 setObject:v9 forKeyedSubscript:@"Success"];

  v10 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [*(a1 + 40) type]);
  [v2 setObject:v10 forKeyedSubscript:@"Type"];

  v11 = [*(a1 + 40) uuid];
  v12 = [v11 UUIDString];
  [v2 setObject:v12 forKeyedSubscript:@"UUID"];

  return v2;
}

id PPSLogSignpostTestingTask()
{
  if (qword_100015778 != -1)
  {
    sub_1000076C0();
  }

  v1 = qword_100015770;

  return v1;
}

void sub_100001B5C(id a1)
{
  qword_100015770 = os_log_create("com.apple.perfpowerservices.signpost", "testing-task");

  _objc_release_x1();
}

void sub_100002E34(id a1)
{
  v1 = MGGetStringAnswer();
  if ([v1 hasSuffix:@"DEV"])
  {
    byte_100015930 = 1;
  }
}

void sub_100002F34(id a1)
{
  qword_100015950 = MGGetStringAnswer();

  _objc_release_x1();
}

void sub_100002FB4(id a1)
{
  qword_100015960 = MGGetStringAnswer();

  _objc_release_x1();
}

void sub_100003034(id a1)
{
  qword_100015970 = MGGetStringAnswer();

  _objc_release_x1();
}

void sub_1000030B4(id a1)
{
  qword_100015980 = MGGetStringAnswer();

  _objc_release_x1();
}

void sub_100003194(id a1)
{
  v3 = MobileGestalt_get_current_device();
  v1 = MobileGestalt_copy_hwModelDescriptionForPowerPerf_obj();
  v2 = qword_100015990;
  qword_100015990 = v1;
}

void sub_10000322C(id a1)
{
  qword_1000159A0 = MGGetStringAnswer();

  _objc_release_x1();
}

void sub_1000032AC(id a1)
{
  qword_1000159B0 = MGGetStringAnswer();

  _objc_release_x1();
}

void sub_10000332C(id a1)
{
  v3 = MobileGestalt_get_current_device();
  v1 = MobileGestalt_copy_productTypeDescForPowerPerf_obj();
  v2 = qword_1000159C0;
  qword_1000159C0 = v1;
}

void sub_1000033C4(id a1)
{
  qword_1000159D0 = MGGetStringAnswer();

  _objc_release_x1();
}

id PPSLogAPFS()
{
  if (qword_100015A00 != -1)
  {
    sub_100007AFC();
  }

  v1 = qword_1000159F8;

  return v1;
}

void sub_100003538(id a1)
{
  qword_1000159F8 = os_log_create("com.apple.powerlog", "apfs");

  _objc_release_x1();
}

void sub_1000038F0(id a1)
{
  v1 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/filesystems");
  if (v1)
  {
    v2 = v1;
    CFProperty = IORegistryEntryCreateCFProperty(v1, @"e-apfs", kCFAllocatorDefault, 0);
    if (CFProperty)
    {
      CFRelease(CFProperty);
      byte_100015A08 = 1;
    }

    IOObjectRelease(v2);
  }
}

void sub_100003A94(id a1)
{
  v5 = 1;
  v1 = container_system_group_path_for_identifier();
  if (v1)
  {
    v2 = v1;
    v3 = [NSString stringWithUTF8String:v1];
    v4 = off_100015748;
    off_100015748 = v3;

    free(v2);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100007B38(&v5);
  }
}

id PPSLogSignpostTimeSeriesTask()
{
  if (qword_100015A28 != -1)
  {
    sub_100007BBC();
  }

  v1 = qword_100015A20;

  return v1;
}

void sub_100003B70(id a1)
{
  v1 = os_log_create("com.apple.perfpowerservices.signpost", "time-series-task");
  qword_100015A20 = v1;

  _objc_release_x1(v1);
}

void sub_100004424(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak(&STACK[0x200]);
  _Unwind_Resume(a1);
}

BOOL sub_100004448(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) firstSignpostDate];

  if (!v4)
  {
    v5 = [v3 beginDate];
    [*(a1 + 32) setFirstSignpostDate:v5];
  }

  v6 = [v3 beginDate];
  [*(a1 + 32) setLastSignpostDate:v6];

  v7 = [*(a1 + 32) allowlistForPersistence];
  v8 = [v3 subsystem];
  v9 = [v3 category];
  v10 = [v7 passesSubsystem:v8 category:v9];

  if (v10)
  {
    if ([*(a1 + 32) allowGlitches] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v11 = [*(a1 + 32) timeSeries];
      v12 = [PPSSignpostTimeSeriesTask _signpostAnimiationIntervalData:v3];
    }

    else
    {
      v11 = [*(a1 + 32) timeSeries];
      v12 = [PPSSignpostTimeSeriesTask _signpostIntervalData:v3];
    }

    v17 = v12;
    [v11 addObject:v12];

    [*(a1 + 32) setSignpostIntervalCount:{objc_msgSend(*(a1 + 32), "signpostIntervalCount") + 1}];
    v18 = [*(a1 + 32) timeSeries];
    v19 = [v18 count];

    if (v19 >= 0xC8)
    {
      [*(a1 + 32) _flushTimeSeries];
      [*(a1 + 32) setFirstSignpostDate:0];
    }
  }

  else
  {
    v13 = PPSLogSignpostTimeSeriesTask();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [v3 subsystem];
      v15 = [v3 category];
      v16 = [v3 name];
      v23 = 138412802;
      v24 = v14;
      v25 = 2112;
      v26 = v15;
      v27 = 2112;
      v28 = v16;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Skipping parsing-only signpost '%@::%@::%@'", &v23, 0x20u);
    }
  }

  v20 = *(a1 + 40);
  if (v20)
  {
    v21 = *v20 == 0;
  }

  else
  {
    v21 = 1;
  }

  return v21;
}

void sub_100004704(uint64_t a1)
{
  v2 = [*(a1 + 32) timeSeries];
  v3 = [v2 count];

  if (v3)
  {
    v4 = *(a1 + 32);

    [v4 _flushTimeSeries];
  }
}

void sub_100004770(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = &selRef_notifyExpired;
  v5 = [PPSSignpostTimeSeriesTask _workflowEventTrackerData:v3];
  v70 = [v5 mutableCopy];

  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v67 = v3;
  obj = [v3 allSignpostTrackers];
  v71 = [obj countByEnumeratingWithState:&v99 objects:v116 count:16];
  if (v71)
  {
    v69 = *v100;
    do
    {
      v6 = 0;
      do
      {
        if (*v100 != v69)
        {
          objc_enumerationMutation(obj);
        }

        v72 = v6;
        v7 = *(*(&v99 + 1) + 8 * v6);
        v8 = [v70 mutableCopy];
        v9 = [v4 + 162 _workflowSignpostTrackerData:v7];
        [v8 addEntriesFromDictionary:v9];

        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        v73 = v7;
        v83 = [v7 emits];
        v10 = [v83 countByEnumeratingWithState:&v95 objects:v115 count:16];
        v86 = v8;
        if (v10)
        {
          v11 = v10;
          v12 = *v96;
          v77 = *v96;
          do
          {
            v13 = 0;
            v80 = v11;
            do
            {
              if (*v96 != v12)
              {
                objc_enumerationMutation(v83);
              }

              v14 = *(*(&v95 + 1) + 8 * v13);
              v15 = [v8 mutableCopy];
              v16 = [v4 + 162 _workflowEventData:v14];
              [v15 addEntriesFromDictionary:v16];

              v17 = PPSLogSignpostTimeSeriesTask();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                v18 = [*(a1 + 32) name];
                v19 = [v15 objectForKeyedSubscript:@"Subsystem"];
                v20 = [v15 objectForKeyedSubscript:@"Category"];
                v21 = [v15 objectForKeyedSubscript:@"Name"];
                v22 = [v14 date];
                *buf = 138413314;
                v106 = v18;
                v107 = 2112;
                v108 = v19;
                v109 = 2112;
                v110 = v20;
                v111 = 2112;
                v112 = v21;
                v113 = 2112;
                v114 = v22;
                _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Generated WR emit data for workflow '%@': '%@::%@::%@' (%@)", buf, 0x34u);

                v12 = v77;
                v8 = v86;

                v4 = &selRef_notifyExpired;
                v11 = v80;
              }

              v23 = [*(a1 + 40) timeSeries];
              [v23 addObject:v15];

              v24 = [*(a1 + 40) firstSignpostDate];

              if (!v24)
              {
                v25 = [v14 date];
                [*(a1 + 40) setFirstSignpostDate:v25];
              }

              v26 = [v14 date];
              [*(a1 + 40) setLastSignpostDate:v26];

              [*(a1 + 40) setWrEventCount:{objc_msgSend(*(a1 + 40), "wrEventCount") + 1}];
              v27 = [*(a1 + 40) timeSeries];
              v28 = [v27 count];

              if (v28 >= 0xC8)
              {
                [*(a1 + 40) _flushTimeSeries];
                [*(a1 + 40) setFirstSignpostDate:0];
              }

              v13 = v13 + 1;
            }

            while (v11 != v13);
            v11 = [v83 countByEnumeratingWithState:&v95 objects:v115 count:16];
          }

          while (v11);
        }

        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        v75 = [v73 intervals];
        v84 = [v75 countByEnumeratingWithState:&v91 objects:v104 count:16];
        if (v84)
        {
          v29 = *v92;
          v74 = *v92;
          do
          {
            for (i = 0; i != v84; i = i + 1)
            {
              if (*v92 != v29)
              {
                objc_enumerationMutation(v75);
              }

              v31 = *(*(&v91 + 1) + 8 * i);
              v32 = [v8 mutableCopy];
              v33 = [v4 + 162 _workflowIntervalData:v31];
              [v32 addEntriesFromDictionary:v33];

              v34 = PPSLogSignpostTimeSeriesTask();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
                v78 = [*(a1 + 32) name];
                v35 = [v32 objectForKeyedSubscript:@"Subsystem"];
                v36 = [v32 objectForKeyedSubscript:@"Category"];
                v37 = [v32 objectForKeyedSubscript:@"Name"];
                [v31 start];
                v38 = v81 = v31;
                v39 = [v38 date];
                *buf = 138413314;
                v106 = v78;
                v107 = 2112;
                v108 = v35;
                v40 = v35;
                v109 = 2112;
                v110 = v36;
                v111 = 2112;
                v112 = v37;
                v113 = 2112;
                v114 = v39;
                _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Generated WR incomplete interval data for workflow '%@': '%@::%@::%@' (%@)", buf, 0x34u);

                v29 = v74;
                v31 = v81;

                v8 = v86;
                v4 = &selRef_notifyExpired;
              }

              v41 = [*(a1 + 40) timeSeries];
              [v41 addObject:v32];

              v42 = [*(a1 + 40) firstSignpostDate];

              if (!v42)
              {
                v43 = [v31 start];
                [v43 date];
                v45 = v44 = v31;
                [*(a1 + 40) setFirstSignpostDate:v45];

                v31 = v44;
              }

              v46 = [v31 start];
              v47 = [v46 date];
              [*(a1 + 40) setLastSignpostDate:v47];

              [*(a1 + 40) setWrIntervalCount:{objc_msgSend(*(a1 + 40), "wrIntervalCount") + 1}];
              v48 = [*(a1 + 40) timeSeries];
              v49 = [v48 count];

              if (v49 >= 0xC8)
              {
                [*(a1 + 40) _flushTimeSeries];
                [*(a1 + 40) setFirstSignpostDate:0];
              }
            }

            v84 = [v75 countByEnumeratingWithState:&v91 objects:v104 count:16];
          }

          while (v84);
        }

        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v79 = [v73 incompleteIntervalStarts];
        v50 = [v79 countByEnumeratingWithState:&v87 objects:v103 count:16];
        if (v50)
        {
          v51 = v50;
          v85 = *v88;
          do
          {
            v52 = 0;
            v76 = v51;
            do
            {
              if (*v88 != v85)
              {
                objc_enumerationMutation(v79);
              }

              v53 = *(*(&v87 + 1) + 8 * v52);
              v54 = [v8 mutableCopy];
              v55 = [v4 + 162 _workflowIncompleteIntervalData:v53];
              [v54 addEntriesFromDictionary:v55];

              v56 = PPSLogSignpostTimeSeriesTask();
              if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
              {
                v82 = [*(a1 + 32) name];
                v57 = [v54 objectForKeyedSubscript:@"Subsystem"];
                v58 = [v54 objectForKeyedSubscript:@"Category"];
                v59 = [v54 objectForKeyedSubscript:@"Name"];
                v60 = [v53 date];
                *buf = 138413314;
                v106 = v82;
                v107 = 2112;
                v108 = v57;
                v109 = 2112;
                v110 = v58;
                v111 = 2112;
                v112 = v59;
                v113 = 2112;
                v114 = v60;
                _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Generated WR incomplete interval data for workflow '%@': '%@::%@::%@' (%@)", buf, 0x34u);

                v51 = v76;
                v8 = v86;

                v4 = &selRef_notifyExpired;
              }

              v61 = [*(a1 + 40) timeSeries];
              [v61 addObject:v54];

              v62 = [*(a1 + 40) firstSignpostDate];

              if (!v62)
              {
                v63 = [v53 date];
                [*(a1 + 40) setFirstSignpostDate:v63];
              }

              v64 = [v53 date];
              [*(a1 + 40) setLastSignpostDate:v64];

              [*(a1 + 40) setWrIncompleteIntervalCount:{objc_msgSend(*(a1 + 40), "wrIncompleteIntervalCount") + 1}];
              v65 = [*(a1 + 40) timeSeries];
              v66 = [v65 count];

              if (v66 >= 0xC8)
              {
                [*(a1 + 40) _flushTimeSeries];
                [*(a1 + 40) setFirstSignpostDate:0];
              }

              v52 = v52 + 1;
            }

            while (v51 != v52);
            v51 = [v79 countByEnumeratingWithState:&v87 objects:v103 count:16];
          }

          while (v51);
        }

        v6 = v72 + 1;
      }

      while ((v72 + 1) != v71);
      v71 = [obj countByEnumeratingWithState:&v99 objects:v116 count:16];
    }

    while (v71);
  }
}

BOOL sub_10000510C(uint64_t a1, void *a2)
{
  v3 = a2;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v17 = a1;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v19 = *v21;
    do
    {
      v6 = 0;
      do
      {
        if (*v21 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v20 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        v9 = [v7 workflow];
        v10 = [v9 allowListForAllSignposts];
        v11 = [v3 subsystem];
        v12 = [v3 category];
        v13 = [v10 passesSubsystem:v11 category:v12];

        if (v13)
        {
          [v7 handleSignpost:v3];
        }

        objc_autoreleasePoolPop(v8);
        v6 = v6 + 1;
      }

      while (v5 != v6);
      v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }

  v14 = *(v17 + 40);
  if (v14)
  {
    v15 = *v14 == 0;
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

BOOL sub_1000052C8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _workflowAllowlist];
  v6 = [v4 subsystem];
  v7 = [v4 category];
  v8 = [v5 passesSubsystem:v6 category:v7];

  v9 = 48;
  if (v8)
  {
    v9 = 40;
  }

  (*(*(a1 + v9) + 16))();

  v10 = *(a1 + 56);
  return !v10 || *v10 == 0;
}

BOOL sub_100005398(uint64_t a1)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v14;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v13 + 1) + 8 * i);
        v7 = PPSLogSignpostTimeSeriesTask();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [v6 workflow];
          v9 = [v8 name];
          *buf = 138412290;
          v18 = v9;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Resetting event tracker for workflow '%@' due to device reboot...", buf, 0xCu);
        }

        [v6 reset];
      }

      v3 = [v1 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v3);
  }

  v10 = *(a1 + 40);
  return !v10 || *v10 == 0;
}

id sub_100005540(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = +[NSMutableDictionary dictionary];
  v3 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [WeakRetained[3] type]);
  [v2 setObject:v3 forKeyedSubscript:@"Type"];

  v4 = [WeakRetained[3] uuid];
  v5 = [v4 UUIDString];
  [v2 setObject:v5 forKeyedSubscript:@"UUID"];

  v6 = [NSNumber numberWithInteger:WeakRetained[9]];
  [v2 setObject:v6 forKeyedSubscript:@"AnimationIntervalCount"];

  v7 = [NSNumber numberWithInteger:WeakRetained[10]];
  [v2 setObject:v7 forKeyedSubscript:@"OutputFileCount"];

  v8 = [NSNumber numberWithInteger:WeakRetained[11]];
  [v2 setObject:v8 forKeyedSubscript:@"SignpostIntervalCount"];

  v9 = [NSNumber numberWithInteger:WeakRetained[15]];
  [v2 setObject:v9 forKeyedSubscript:@"TimeSeriesSize"];

  v10 = [NSNumber numberWithInteger:WeakRetained[14]];
  [v2 setObject:v10 forKeyedSubscript:@"WREventCount"];

  v11 = [NSNumber numberWithInteger:WeakRetained[12]];
  [v2 setObject:v11 forKeyedSubscript:@"WRIntervalCount"];

  v12 = [NSNumber numberWithInteger:WeakRetained[13]];
  [v2 setObject:v12 forKeyedSubscript:@"WRIncompleteIntervalCount"];

  return v2;
}

id sub_1000058A4(uint64_t a1)
{
  v2 = objc_alloc_init(SignpostSupportSubsystemCategoryAllowlist);
  v3 = qword_100015A38;
  qword_100015A38 = v2;

  [qword_100015A38 addSubsystem:@"com.apple.FrontBoard" category:@"AppLaunch"];
  [qword_100015A38 addSubsystem:@"com.apple.UIKit" category:@"AppLifecycle"];
  [qword_100015A38 addSubsystem:@"com.apple.app_launch_measurement" category:@"ApplicationLaunch"];
  [qword_100015A38 addSubsystem:@"com.apple.hangtracer" category:@"always_on_hang"];
  if ([*(a1 + 32) allowGlitches])
  {
    [qword_100015A38 addSubsystem:@"com.apple.Foundation" category:@"NSProcessInfoInteractionTracking"];
  }

  result = IsInternalBuild();
  if (result)
  {
    [qword_100015A38 addSubsystem:@"com.apple.signpost_emitter" category:@"emitter_category"];
    v5 = qword_100015A38;

    return [v5 addSubsystem:@"com.apple.metrickit.log" category:0];
  }

  return result;
}

void sub_1000059F4(id a1)
{
  v1 = objc_alloc_init(SignpostSupportSubsystemCategoryAllowlist);
  v2 = qword_100015A48;
  qword_100015A48 = v1;

  v3 = qword_100015A48;

  [SignpostCAInstrumentationProcessor addNeededSCToAllowlist:v3];
}

void sub_100005A8C(id a1)
{
  v1 = objc_alloc_init(SignpostSupportSubsystemCategoryAllowlist);
  v2 = qword_100015A58;
  qword_100015A58 = v1;

  v3 = +[WRWorkflow allWorkflows];
  [v3 enumerateObjectsUsingBlock:&stru_100010BD0];
}

void sub_100005AF8(id a1, WRWorkflow *a2, unint64_t a3, BOOL *a4)
{
  v6 = a2;
  if ([(WRWorkflow *)v6 contextualTelemetryEnabled])
  {
    v4 = qword_100015A58;
    v5 = [(WRWorkflow *)v6 allowListForAllSignposts];
    [v4 addAllowlist:v5];
  }
}

void sub_100007514(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_100007530(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Process %d does not have read entitlement!", v2, 8u);
}

void sub_1000075A8(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Process %d has read entitlement!", v2, 8u);
}

void sub_100007620(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Disabling CPU exceptions for PID %d", v2, 8u);
}

void sub_1000076D4(os_log_t log, double a2)
{
  v2 = 134217984;
  v3 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to see expiration, waited %f second(s)...", &v2, 0xCu);
}

void sub_100007750(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Marked stop date: %@", &v2, 0xCu);
}

void sub_100007B38(uint64_t *a1)
{
  v1 = *a1;
  v2 = 134217984;
  v3 = v1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Error fetching group container systemgroup.com.apple.powerlog : %llu", &v2, 0xCu);
}

void sub_100007BD0(id *a1, void *a2, NSObject *a3)
{
  v5 = [*a1 description];
  v6 = [a2 localizedDescription];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failed to collect signposts from log archive for time-series task: '%@' (%@)", &v7, 0x16u);
}

void sub_100007CFC(void *a1, NSObject *a2)
{
  v3 = [a1 lastPathComponent];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to modify creation date of signpost file '%@'", &v4, 0xCu);
}