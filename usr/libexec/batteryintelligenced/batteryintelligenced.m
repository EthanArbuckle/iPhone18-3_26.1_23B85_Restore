uint64_t sub_1000012C4(int a1, void *a2, _BYTE *a3, int a4)
{
  result = 3758097118;
  if (a1)
  {
    if (a2)
    {
      bzero(a2, *a3);
      v36 = 0;
      v35 = 0u;
      v34 = 0u;
      v33 = 0u;
      v32 = 0u;
      v31 = 0u;
      v30 = 0u;
      v29 = 0u;
      v28 = 0u;
      v27 = 0u;
      v26 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0;
      BYTE6(v28) = 9;
      v25 = a1;
      result = sub_100001604(&v25, &v14);
      if (!result)
      {
        v9 = BYTE8(v16);
        if (BYTE8(v16))
        {
          goto LABEL_6;
        }

        BYTE6(v28) = 5;
        v25 = a1;
        DWORD2(v27) = HIDWORD(v15);
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0;
        result = sub_100001604(&v25, &v14);
        v9 = BYTE8(v16);
        if (BYTE8(v16))
        {
LABEL_6:
          if (v9 == 132)
          {
            return 3758097136;
          }

          else
          {
            return 3758097097;
          }
        }

        else
        {
          LODWORD(v10) = *a3;
          if (DWORD2(v27) < v10)
          {
            LODWORD(v10) = BYTE8(v27);
            *a3 = BYTE8(v27);
          }

          if (v10)
          {
            v11 = 0;
            v12 = -1;
            do
            {
              v13 = v12 + v10;
              if (!a4)
              {
                v13 = v11;
              }

              *(a2 + v11++) = *(&v17 + v13);
              v10 = *a3;
              --v12;
            }

            while (v11 < v10);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100001484(int a1, const void *a2, unsigned int a3)
{
  if (!a1)
  {
    return 3758097118;
  }

  v23 = 0;
  memset(v22, 0, sizeof(v22));
  v21 = 0u;
  v20 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0;
  v22[6] = 9;
  v19 = a1;
  result = sub_100001604(&v19, &v8);
  if (!result)
  {
    if (BYTE8(v10))
    {
      if (BYTE8(v10) == 132)
      {
        return 3758097136;
      }

      else
      {
        return 3758097097;
      }
    }

    else
    {
      v22[6] = 6;
      v19 = a1;
      DWORD2(v21) = HIDWORD(v9);
      if (a2 && a3)
      {
        if (a3 >= 0x20)
        {
          v7 = 32;
        }

        else
        {
          v7 = a3;
        }

        memcpy(&v22[12], a2, (v7 - 1) + 1);
      }

      v18 = 0;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v8 = 0u;
      v9 = 0u;
      LODWORD(result) = sub_100001604(&v19, &v8);
      if (BYTE8(v10))
      {
        return 3758097097;
      }

      else
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_100001604(const void *a1, void *a2)
{
  outputStructCnt = 168;
  connect = 0;
  v4 = IOServiceMatching("AppleSMC");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v4);
  if (!MatchingService)
  {
    return 3758097084;
  }

  v6 = IOServiceOpen(MatchingService, mach_task_self_, 1u, &connect);
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = connect == 0;
  }

  if (!v7)
  {
    v6 = IOConnectCallMethod(connect, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    if (!v6)
    {
      v6 = IOConnectCallStructMethod(connect, 2u, a1, 0xA8uLL, a2, &outputStructCnt);
    }

    if (connect)
    {
      IOConnectCallMethod(connect, 1u, 0, 0, 0, 0, 0, 0, 0, 0);
      IOServiceClose(connect);
    }
  }

  return v6;
}

void sub_10000176C(id a1)
{
  qword_100057870 = objc_alloc_init(BatteryAlgorithmsInit);

  _objc_release_x1();
}

void sub_100001F70(uint64_t a1)
{
  v2 = [NSSet setWithArray:&off_10004CAA8];
  v3 = [PPSTimeSeriesRequest alloc];
  v4 = [NSPredicate predicateWithFormat:@"(subsystem == 'BatteryDataCollection' AND category == 'BDC_SBC')"];
  v5 = [v3 initWithMetrics:v2 predicate:v4 timeFilter:0 limitCount:105120 offsetCount:0];

  v103 = +[NSMutableArray array];
  if (v5)
  {
    v110 = 0;
    v6 = PerfPowerServicesGetData();
    v91 = v6;
    v94 = 0;
    if (v94)
    {
      v7 = qword_100057880;
      if (os_log_type_enabled(qword_100057880, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v114 = v94;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Error from PPSGetData %@", buf, 0xCu);
      }

      v8 = +[NSNull null];
    }

    else
    {
      v88 = v5;
      v89 = a1;
      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      obj = v6;
      v10 = [obj countByEnumeratingWithState:&v106 objects:buf count:16];
      if (v10)
      {
        v11 = v10;
        v100 = *v107;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v107 != v100)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v106 + 1) + 8 * i);
            v14 = [v13 metricKeysAndValues];
            v15 = +[NSMutableDictionary dictionary];
            v16 = [v14 objectForKeyedSubscript:@"Voltage"];
            [v15 setObject:v16 forKeyedSubscript:@"Voltage"];

            v17 = [v14 objectForKeyedSubscript:@"Amperage"];
            [v15 setObject:v17 forKeyedSubscript:@"Amperage"];

            v18 = [v14 objectForKeyedSubscript:@"PresentDOD0"];
            [v15 setObject:v18 forKeyedSubscript:@"PresentDOD0"];

            v19 = [v14 objectForKeyedSubscript:@"VirtualTemperature"];
            [v15 setObject:v19 forKeyedSubscript:@"VirtualTemperature"];

            [v13 epochTimestamp];
            v20 = [NSNumber numberWithDouble:?];
            [v15 setObject:v20 forKeyedSubscript:@"Timestamp"];

            v21 = qword_100057890;
            if (*&qword_100057890 == 0.0)
            {
              [v13 epochTimestamp];
              qword_100057890 = v21;
            }

            [v103 addObject:{v15, *&v21}];
          }

          v11 = [obj countByEnumeratingWithState:&v106 objects:buf count:16];
        }

        while (v11);
      }

      v8 = v103;
      a1 = v89;
      v5 = v88;
    }
  }

  else
  {
    v9 = qword_100057880;
    if (os_log_type_enabled(qword_100057880, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Failed to allocated PPS request object", buf, 2u);
    }

    v8 = +[NSNull null];
  }

  v22 = *(a1 + 32);
  v23 = *(v22 + 24);
  *(v22 + 24) = v8;

  v24 = [NSSet setWithArray:&off_10004CAC0];
  v25 = [PPSTimeSeriesRequest alloc];
  v26 = [NSPredicate predicateWithFormat:@"(subsystem == 'BatteryDataCollection' AND category == 'BDC_OBC')"];
  v27 = +[NSDate now];
  v28 = [v27 dateByAddingTimeInterval:-31536000.0];
  v29 = [[NSDateInterval alloc] initWithStartDate:v28 endDate:v27];

  v30 = v24;
  v31 = [v25 initWithMetrics:v24 predicate:v26 timeFilter:v29 limitCount:3000 offsetCount:0];

  v104 = +[NSMutableArray array];
  if (v31)
  {
    v110 = 0;
    v32 = PerfPowerServicesGetData();
    v33 = v110;
    v101 = v33;
    if (v33)
    {
      v34 = v33;
      v35 = qword_100057880;
      if (os_log_type_enabled(qword_100057880, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v114 = v34;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Error from PPSGetData %@", buf, 0xCu);
      }

      v36 = +[NSNull null];
      v37 = &IOConnectCallMethod_ptr;
    }

    else
    {
      v95 = v31;
      obja = v24;
      v92 = v32;
      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      v39 = v32;
      v40 = [v39 countByEnumeratingWithState:&v106 objects:buf count:16];
      if (v40)
      {
        v41 = v40;
        v42 = 0;
        v43 = *v107;
        do
        {
          v44 = 0;
          v45 = v42;
          do
          {
            if (*v107 != v43)
            {
              objc_enumerationMutation(v39);
            }

            v46 = *(*(&v106 + 1) + 8 * v44);
            v47 = [v46 metricKeysAndValues];
            v48 = [v47 objectForKeyedSubscript:@"VacVoltageLimit"];
            v42 = [v48 intValue];

            if (v45 != v42)
            {
              v49 = +[NSMutableDictionary dictionary];
              v50 = [v47 objectForKeyedSubscript:@"VacVoltageLimit"];
              [v49 setObject:v50 forKeyedSubscript:@"VacVoltageLimit"];

              [v46 epochTimestamp];
              v51 = [NSNumber numberWithDouble:?];
              [v49 setObject:v51 forKeyedSubscript:@"Timestamp"];

              [v104 addObject:v49];
            }

            v44 = v44 + 1;
            v45 = v42;
          }

          while (v41 != v44);
          v41 = [v39 countByEnumeratingWithState:&v106 objects:buf count:16];
        }

        while (v41);
      }

      v36 = v104;
      v32 = v92;
      v37 = &IOConnectCallMethod_ptr;
      v31 = v95;
      v30 = obja;
    }
  }

  else
  {
    v38 = qword_100057880;
    if (os_log_type_enabled(qword_100057880, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Failed to allocated PPS request object", buf, 2u);
    }

    v36 = +[NSNull null];
    v37 = &IOConnectCallMethod_ptr;
  }

  v52 = *(a1 + 32);
  v53 = *(v52 + 32);
  *(v52 + 32) = v36;

  v54 = [v37[197] setWithArray:&off_10004CAD8];
  if (*&qword_100057890 == 0.0)
  {
    v55 = qword_100057880;
    if (os_log_type_enabled(qword_100057880, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "We need a valid SBC data timestamp to proceed", buf, 2u);
    }

    v56 = +[NSNull null];
  }

  else
  {
    objb = v54;
    v57 = [PPSTimeSeriesRequest alloc];
    v58 = [NSPredicate predicateWithFormat:@"(subsystem == 'BatteryDataCollection' AND category == 'BDC_Daily')"];
    v59 = [NSDate dateWithTimeIntervalSince1970:*&qword_100057890];
    v60 = [NSDate dateWithTimeInterval:v59 sinceDate:604800.0];
    v61 = [NSDate dateWithTimeInterval:v59 sinceDate:-604800.0];
    v62 = [[NSDateInterval alloc] initWithStartDate:v61 endDate:v60];

    v63 = v57;
    v54 = objb;
    v64 = [v63 initWithMetrics:objb predicate:v58 timeFilter:v62 limitCount:50 offsetCount:0];

    v105 = +[NSMutableArray array];
    if (v64)
    {
      v110 = 0;
      v65 = PerfPowerServicesGetData();
      v66 = v110;
      if (v66)
      {
        v67 = qword_100057880;
        if (os_log_type_enabled(qword_100057880, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v114 = v66;
          _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "Error from PPSGetData %@", buf, 0xCu);
        }

        v56 = +[NSNull null];
      }

      else
      {
        v90 = a1;
        v93 = v65;
        v96 = v64;
        v108 = 0u;
        v109 = 0u;
        v106 = 0u;
        v107 = 0u;
        v102 = v65;
        v69 = [v102 countByEnumeratingWithState:&v106 objects:buf count:16];
        if (v69)
        {
          v70 = v69;
          v71 = *v107;
          do
          {
            for (j = 0; j != v70; j = j + 1)
            {
              if (*v107 != v71)
              {
                objc_enumerationMutation(v102);
              }

              v73 = *(*(&v106 + 1) + 8 * j);
              v74 = +[NSMutableDictionary dictionary];
              v75 = [v73 metricKeysAndValues];
              v76 = [v75 objectForKeyedSubscript:@"TimeAtHighSoc"];
              [v74 setObject:v76 forKeyedSubscript:@"TimeAtHighSoc"];

              v77 = [v75 objectForKeyedSubscript:@"CycleCount"];
              [v74 setObject:v77 forKeyedSubscript:@"CycleCount"];

              [v73 epochTimestamp];
              v78 = [NSNumber numberWithDouble:?];
              [v74 setObject:v78 forKeyedSubscript:@"Timestamp"];

              [v105 addObject:v74];
            }

            v70 = [v102 countByEnumeratingWithState:&v106 objects:buf count:16];
          }

          while (v70);
        }

        v56 = v105;
        a1 = v90;
        v65 = v93;
        v64 = v96;
        v54 = objb;
        v66 = 0;
      }
    }

    else
    {
      v68 = qword_100057880;
      if (os_log_type_enabled(qword_100057880, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "Failed to allocated PPS request object", buf, 2u);
      }

      v56 = +[NSNull null];
    }
  }

  v79 = *(a1 + 32);
  v80 = *(v79 + 40);
  *(v79 + 40) = v56;

  v111[0] = @"sbcStreamData";
  v81 = [*(a1 + 32) sbcData];
  v112[0] = v81;
  v111[1] = @"obcStreamData";
  v82 = [*(a1 + 32) obcData];
  v112[1] = v82;
  v111[2] = @"dailyStreamData";
  v83 = [*(a1 + 32) dailyData];
  v112[2] = v83;
  v111[3] = @"smcData";
  v84 = [*(a1 + 32) smcKeys];
  v112[3] = v84;
  v85 = [NSDictionary dictionaryWithObjects:v112 forKeys:v111 count:4];
  v86 = *(a1 + 32);
  v87 = *(v86 + 64);
  *(v86 + 64) = v85;
}

id sub_100002C7C(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = +[NSNull null];
  }

  v4 = v3;

  return v4;
}

void sub_100002CD8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t sub_100002DA0(uint64_t a1)
{
  qword_100057898 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_10000488C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1000048B8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t sub_100004980(uint64_t a1)
{
  qword_1000578A8 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_100006424(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t sub_1000064E4(uint64_t a1)
{
  qword_1000578C0 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

int64_t sub_100007E7C(id a1, NSURL *a2, NSURL *a3)
{
  v9 = 0;
  v4 = a3;
  [(NSURL *)a2 getResourceValue:&v9 forKey:NSURLCreationDateKey error:0];
  v8 = 0;
  v5 = v9;
  [(NSURL *)v4 getResourceValue:&v8 forKey:NSURLCreationDateKey error:0];

  v6 = [v5 compare:v8];
  return v6;
}

id sub_100008EB4(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a4;
  v10 = v8;
  v11 = [NSPredicate predicateWithFormat:@"(subsystem == 'BatteryIntelligence' AND category == 'BatteryHealthDelta' AND model_name == %@ AND prediction_duration == %@)", v7, a3];
  if (v9)
  {
    v12 = [NSPredicate predicateWithFormat:@"prediction_output_name == %@ ", v9];
    v26[0] = v11;
    v26[1] = v12;
    v13 = [NSArray arrayWithObjects:v26 count:2];
    v14 = [NSCompoundPredicate andPredicateWithSubpredicates:v13];

    v11 = v14;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10002F0E4();
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v15 = [v10 startDate];
    v16 = [v10 endDate];
    *buf = 138412546;
    v23 = v15;
    v24 = 2112;
    v25 = v16;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Fetching past predictions in range %@ - %@", buf, 0x16u);
  }

  v17 = [[PPSTimeSeriesRequest alloc] initWithMetrics:0 predicate:v11 timeFilter:v10 limitCount:100 offsetCount:0];
  if (!v17)
  {
    v20 = 0;
    goto LABEL_23;
  }

  v18 = PerfPowerServicesGetData();
  v19 = 0;
  if (v19)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002F154();
    }

LABEL_21:
    v20 = 0;
    goto LABEL_22;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10002F1CC();
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10002F23C(v18);
    if (!v18)
    {
LABEL_19:
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10002F2B0(v7, v10);
      }

      goto LABEL_21;
    }
  }

  else if (!v18)
  {
    goto LABEL_19;
  }

  if (![v18 count])
  {
    goto LABEL_19;
  }

  v20 = [v18 array];
LABEL_22:

LABEL_23:

  return v20;
}

id sub_100009D5C(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v2 = [v1 integerValue];
      if (v2 < 101)
      {
        if ((v2 & 0x8000000000000000) == 0)
        {
          if (v2)
          {
            v3 = v2 - (v2 - 1) % 0xAu + 4;
          }

          else
          {
            v3 = 5;
          }

          v4 = [NSNumber numberWithInteger:v3];
          goto LABEL_12;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10002F4CC();
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10002F544();
      }
    }
  }

  v4 = 0;
LABEL_12:

  return v4;
}

id sub_100009E5C(uint64_t a1, double a2)
{
  if (a1)
  {
    v2 = [NSNumber numberWithInteger:(floor(a2 / (60 * a1)) * a1)];
  }

  else
  {
    v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      sub_10002F5BC(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    v2 = 0;
  }

  return v2;
}

void sub_100009F20(id a1)
{
  qword_1000578E0 = objc_alloc_init(BatteryAnalysisManager);

  _objc_release_x1();
}

void sub_10000AE0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak((v28 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000AE30(uint64_t a1)
{
  v4 = os_transaction_create();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained submitEstimatorJobWithName:@"batteryAnalysisRunAtPlugin"];
  }
}

void sub_10000BDE8(uint64_t a1)
{
  v2 = os_transaction_create();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = qword_1000578F0;
    if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Running checkChargingStatusChangeAndSetUp.", &v16, 2u);
    }

    v5 = sub_10001FCC4();
    v6 = qword_1000578F0;
    if (v5)
    {
      if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v6;
        v8 = [WeakRetained chargingStatus];
        v16 = 138412546;
        v17 = v8;
        v18 = 2112;
        v19 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Previous charging status: %@, Current charging status: %@", &v16, 0x16u);
      }

      v9 = [WeakRetained chargingStatus];

      if (v9)
      {
        v10 = [WeakRetained chargingStatus];
        v11 = [v10 isEqualToString:v5];

        if (v11)
        {
          v12 = qword_1000578F0;
          if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v16) = 0;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Charging status has not changed.", &v16, 2u);
          }
        }

        else
        {
          [WeakRetained setUpWithNewChargingStatus:v5];
        }
      }

      else
      {
        v13 = qword_1000578F0;
        if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v16) = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "No previous charging status is set. Setting current charging status.", &v16, 2u);
        }

        [WeakRetained setChargingStatus:v5];
        v14 = qword_1000578F8;
        v15 = [WeakRetained chargingStatus];
        [v14 setObject:v15 forKey:@"chargingStatus"];

        if ([v5 isEqualToString:@"Charging"])
        {
          [WeakRetained deviceConnectedSetUp];
        }

        else if ([v5 isEqualToString:@"Disconnected"])
        {
          [WeakRetained deviceDisconnectedSetUp];
        }

        else
        {
          [WeakRetained deviceChargingPausedSetUp];
        }
      }
    }

    else if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_ERROR))
    {
      sub_10002F7E4();
    }
  }
}

void sub_10000C1E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000C20C(uint64_t a1)
{
  v2 = os_transaction_create();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = qword_1000578F0;
    if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "com.apple.system.powersources.chargingiconography";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received notification for %s.", &v10, 0xCu);
    }

    v5 = sub_10001FCC4();
    v6 = qword_1000578F0;
    if (v5)
    {
      if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 32);
        v8 = v6;
        v9 = [v7 chargingStatus];
        v10 = 138412546;
        v11 = v9;
        v12 = 2112;
        v13 = v5;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Previous charging status: %@, Current charging status: %@", &v10, 0x16u);
      }

      [WeakRetained setUpWithNewChargingStatus:v5];
    }

    else if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_ERROR))
    {
      sub_10002F7E4();
    }
  }
}

void sub_10000C450(uint64_t a1)
{
  v2 = os_transaction_create();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = qword_1000578F0;
    if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Running checkChargeLimitChangeAndSetUp.", v6, 2u);
    }

    v5 = sub_10001FA0C();
    [WeakRetained setUpWithNewChargeLimit:{objc_msgSend(v5, "integerValue")}];
  }
}

void sub_10000C650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000C678(uint64_t a1)
{
  v2 = os_transaction_create();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = qword_1000578F0;
    if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = @"com.apple.powerui.mclstatuschanged";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received notification for %@.", &v6, 0xCu);
    }

    v5 = sub_10001FA0C();
    [WeakRetained setUpWithNewChargeLimit:{objc_msgSend(v5, "integerValue")}];
  }
}

void sub_10000C81C(uint64_t a1)
{
  v2 = os_transaction_create();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = qword_1000578F0;
    if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Running checkExternalConnectedChangeAndSetUp.", v5, 2u);
    }

    [WeakRetained setUpForChangeInExternalConnected];
  }
}

void sub_10000C9F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000CA20(uint64_t a1)
{
  v2 = os_transaction_create();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = qword_1000578F0;
    if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "com.apple.system.powersources.source";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received notification for %s.", &v5, 0xCu);
    }

    [WeakRetained setUpForChangeInExternalConnected];
  }
}

void sub_10000CD30(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_10000CD4C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) collectionQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000CE44;
  v10[3] = &unk_100048848;
  objc_copyWeak(&v14, (a1 + 40));
  v11 = v5;
  v12 = v6;
  v13 = *(a1 + 32);
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);

  objc_destroyWeak(&v14);
}

void sub_10000CE44(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = os_transaction_create();
    v4 = qword_1000578F0;
    if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v14 = 138412546;
      v15 = v5;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Context store registration fired with registrationID and info: %@, %@", &v14, 0x16u);
    }

    v7 = sub_10001E8F4();
    v8 = *(a1 + 48);
    v9 = [NSNumber numberWithUnsignedInt:v7];
    v10 = [v8 enumForEndSOC:v9];

    if (v10)
    {
      v11 = 1 << v10;
      if (([WeakRetained caMetricsComputedBitMask] & v11) != 0)
      {
        v12 = qword_1000578F0;
        if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 67109120;
          LODWORD(v15) = v7;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "CA metrics already computed for the endSOC: %u", &v14, 8u);
        }
      }

      else
      {
        v13 = [NSNumber numberWithUnsignedInt:v7];
        [WeakRetained computeAndSendCoreAnalyticsMetricsForEndSOC:v13];

        [WeakRetained setCaMetricsComputedBitMask:{objc_msgSend(WeakRetained, "caMetricsComputedBitMask") | v11}];
        [qword_1000578F8 setInteger:objc_msgSend(*(a1 + 48) forKey:{"caMetricsComputedBitMask"), @"caMetricsComputedBitMask"}];
      }
    }

    else if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_ERROR))
    {
      sub_10002F9A4();
    }
  }
}

void sub_10000D098(id a1)
{
  v3[0] = &off_10004D2B8;
  v3[1] = &off_10004D2E8;
  v4[0] = &off_10004D2D0;
  v4[1] = &off_10004D300;
  v3[2] = &off_10004D318;
  v3[3] = &off_10004D348;
  v4[2] = &off_10004D330;
  v4[3] = &off_10004D360;
  v3[4] = &off_10004D378;
  v4[4] = &off_10004D390;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:5];
  v2 = qword_1000578D0;
  qword_1000578D0 = v1;
}

void sub_10000D238(id a1)
{
  v3[0] = &off_10004D2D0;
  v3[1] = &off_10004D300;
  v4[0] = &off_10004D3A8;
  v4[1] = &off_10004D3C0;
  v3[2] = &off_10004D330;
  v3[3] = &off_10004D360;
  v4[2] = &off_10004D3C0;
  v4[3] = &off_10004D3C0;
  v3[4] = &off_10004D390;
  v4[4] = &off_10004D3C0;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:5];
  v2 = qword_1000578D8;
  qword_1000578D8 = v1;
}

void sub_10000E42C(uint64_t a1)
{
  v2 = os_transaction_create();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    v7 = *(a1 + 32);
    v8 = BIBatteryAnalysisErrorDomain;
    v9 = 7;
LABEL_9:
    v10 = [NSError errorWithDomain:v8 code:v9 userInfo:0];
    (*(v7 + 16))(v7, 0, v10);

    goto LABEL_17;
  }

  if ((IOPSDrawingUnlimitedPower() & 1) == 0)
  {
    v7 = *(a1 + 32);
    v8 = BIBatteryAnalysisErrorDomain;
    v9 = 5;
    goto LABEL_9;
  }

  [WeakRetained deleteAllAlarms];
  v4 = qword_1000578F0;
  if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Deleted all the existing xpc alarms as estimate is manually updated.", &v17, 2u);
  }

  if (*(a1 + 48) == 1)
  {
    v5 = sub_10001FA0C();
    v6 = [v5 integerValue];
  }

  else
  {
    v6 = 80;
  }

  v11 = sub_10001E8F4();
  if ([WeakRetained slowAdapterDetected])
  {
    v12 = 4;
  }

  else
  {
    v12 = 3;
  }

  v13 = +[BatteryAnalysisService sharedInstance];
  [v13 updateEstimate:*(a1 + 48) forTarget:v11 atStartSOC:v6 withEndSOC:0 confidenceScore:1 isFirstEstimate:v12 isEstimateOverridden:*(a1 + 56) andAdditionalInformation:1.0];

  v14 = qword_1000578F0;
  if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 48);
    v16 = *(a1 + 56);
    v17 = 134218240;
    v18 = v15;
    v19 = 2048;
    v20 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Successfully updated target: %ld with estimate: %.02f.", &v17, 0x16u);
  }

  [WeakRetained postNotificationForBatteryAnalysisTarget:*(a1 + 48)];
  [WeakRetained setIsEstimateOveridden:1];
  [qword_1000578F8 setBool:objc_msgSend(WeakRetained forKey:{"isEstimateOveridden"), @"isEstimateOverridden"}];
  (*(*(a1 + 32) + 16))();
LABEL_17:
}

void sub_10000E780(uint64_t a1)
{
  v2 = os_transaction_create();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    v4 = *(a1 + 32);
    v5 = BIBatteryAnalysisErrorDomain;
    v6 = 7;
    goto LABEL_7;
  }

  if ((IOPSDrawingUnlimitedPower() & 1) == 0)
  {
    v4 = *(a1 + 32);
    v5 = BIBatteryAnalysisErrorDomain;
    v6 = 5;
    goto LABEL_7;
  }

  if ([WeakRetained isEstimateOveridden])
  {
    v4 = *(a1 + 32);
    v5 = BIBatteryAnalysisErrorDomain;
    v6 = 6;
LABEL_7:
    v7 = [NSError errorWithDomain:v5 code:v6 userInfo:0];
    (*(v4 + 16))(v4, 0, v7);

    goto LABEL_8;
  }

  v11 = 0;
  v8 = [WeakRetained tryEstimatorRunWithName:@"batteryAnalysisAdhocRun" withError:&v11];
  v9 = v11;
  v10 = qword_1000578F0;
  if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Adhoc run successful: %i", buf, 8u);
  }

  (*(*(a1 + 32) + 16))();

LABEL_8:
}

void sub_10000ECD0(uint64_t a1)
{
  v2 = os_transaction_create();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if ([*(a1 + 32) isEqualToString:@"batteryAnalysisRunAtPlugin"] && objc_msgSend(WeakRetained, "isFirstEstimateComputed"))
    {
      v4 = qword_1000578F0;
      if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
      {
        v5 = 138412290;
        v6 = @"batteryAnalysisRunAtPlugin";
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ job is already run. Skipping this job.", &v5, 0xCu);
      }
    }

    else
    {
      [WeakRetained tryEstimatorRunWithName:*(a1 + 32) withError:0];
    }
  }
}

void sub_100010304(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

uint64_t sub_1000104B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_100057918 = objc_alloc_init(objc_opt_class());

  return _objc_release_x1();
}

void sub_1000107DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000107F8(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&to, (a1 + 32));
  v4 = objc_loadWeakRetained(&to);

  if (v3 && v4)
  {
    v5 = objc_loadWeakRetained(&to);
    v6 = [v5 log];

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10002FE0C(v3, v6);
    }
  }

  objc_destroyWeak(&to);
}

void sub_100010BEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100010C08(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&to, (a1 + 32));
  v4 = objc_loadWeakRetained(&to);

  if (v3 && v4)
  {
    v5 = objc_loadWeakRetained(&to);
    v6 = [v5 log];

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10002FE0C(v3, v6);
    }
  }

  objc_destroyWeak(&to);
}

void start()
{
  if (_set_user_dir_suffix())
  {
    v0 = +[BIMGUtility isiPhone];
    v1 = +[BIMGUtility isWatch];
    v2 = objc_autoreleasePoolPush();
    v3 = sub_10001DEC4("main");
    v4 = qword_100057930;
    qword_100057930 = v3;

    v5 = _os_feature_enabled_impl();
    byte_100057939 = v5;
    v6 = qword_100057930;
    if (os_log_type_enabled(qword_100057930, OS_LOG_TYPE_DEFAULT))
    {
      if (v5)
      {
        v7 = "Enabled";
      }

      else
      {
        v7 = "Disabled";
      }

      *buf = 136315138;
      v29 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FF: AllTasks %s", buf, 0xCu);
    }

    v8 = _os_feature_enabled_impl();
    byte_10005793A = v8;
    v9 = qword_100057930;
    if (os_log_type_enabled(qword_100057930, OS_LOG_TYPE_DEFAULT))
    {
      if (v8)
      {
        v10 = "Enabled";
      }

      else
      {
        v10 = "Disabled";
      }

      *buf = 136315138;
      v29 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "FF: AppleSoftGaugingAllAlgorithms %s", buf, 0xCu);
    }

    v11 = _os_feature_enabled_impl();
    byte_10005793B = v11;
    v12 = qword_100057930;
    if (os_log_type_enabled(qword_100057930, OS_LOG_TYPE_DEFAULT))
    {
      if (v11)
      {
        v13 = "Enabled";
      }

      else
      {
        v13 = "Disabled";
      }

      *buf = 136315138;
      v29 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "FF: BatteryHealthForecastModel %s", buf, 0xCu);
    }

    v14 = _os_feature_enabled_impl();
    byte_10005793C = v14;
    v15 = qword_100057930;
    if (os_log_type_enabled(qword_100057930, OS_LOG_TYPE_DEFAULT))
    {
      if (v14)
      {
        v16 = "Enabled";
      }

      else
      {
        v16 = "Disabled";
      }

      *buf = 136315138;
      v29 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "FF: OCVDriftModel %s", buf, 0xCu);
    }

    v17 = _os_feature_enabled_impl();
    byte_100057938 = v17;
    v18 = qword_100057930;
    if (os_log_type_enabled(qword_100057930, OS_LOG_TYPE_DEFAULT))
    {
      if (v17)
      {
        v19 = "Enabled";
      }

      else
      {
        v19 = "Disabled";
      }

      *buf = 136315138;
      v29 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "FF: TimeTo80EstimatorModel %s", buf, 0xCu);
    }

    xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, &stru_100048990);
    xpc_set_event_stream_handler("com.apple.alarm", &_dispatch_main_q, &stru_1000489B0);

    if (byte_100057938 == 1 && byte_100057939 == 1)
    {
      v20 = +[BatteryAnalysisManager sharedInstance];
      v21 = [v20 start];

      v22 = qword_100057930;
      if (v21)
      {
        if (os_log_type_enabled(qword_100057930, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Started BatteryAnalysisManager.", buf, 2u);
        }
      }

      else if (os_log_type_enabled(qword_100057930, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to start BatteryAnalysisManager.", buf, 2u);
      }

      v23 = +[BatteryAnalysisService sharedInstance];
      [v23 start];
    }

    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100013D04;
    handler[3] = &unk_1000489D0;
    v26 = v0;
    v27 = v1;
    xpc_activity_register("com.apple.batteryintelligenced.dailytask", XPC_ACTIVITY_CHECK_IN, handler);
    objc_autoreleasePoolPop(v2);
    CFRunLoopRun();
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v24 = *__error();
    *buf = 67109120;
    LODWORD(v29) = v24;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to set tmp dir suffix: %{darwin.errno}d", buf, 8u);
  }

  exit(1);
}

void sub_100013B34(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = [BIXPCAlarm getNameForEvent:v2];
    v4 = qword_100057930;
    if (os_log_type_enabled(qword_100057930, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "XPC alarm triggered for %@", &v9, 0xCu);
    }

    v5 = [v3 containsString:@"batteryAnalysis"];
    [BIXPCAlarm handleAlarmForEvent:v2];
    v6 = qword_100057930;
    if (v5)
    {
      if (os_log_type_enabled(qword_100057930, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138412290;
        v10 = v3;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Acknowledged %@", &v9, 0xCu);
      }

      v7 = +[BatteryAnalysisManager sharedInstance];
      [v7 submitEstimatorJobWithName:v3];
    }

    else if (os_log_type_enabled(qword_100057930, OS_LOG_TYPE_FAULT))
    {
      sub_100030458(v3, v6);
    }
  }

  else
  {
    v8 = qword_100057930;
    if (os_log_type_enabled(qword_100057930, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "xpc_object event is nil", &v9, 2u);
    }
  }
}

void sub_100013D04(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  state = xpc_activity_get_state(v3);
  if (state != 2)
  {
    if (!state)
    {
      v6 = qword_100057930;
      if (os_log_type_enabled(qword_100057930, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Activity check-in, not ready to run!", buf, 2u);
      }
    }

    goto LABEL_26;
  }

  v7 = qword_100057930;
  if (os_log_type_enabled(qword_100057930, OS_LOG_TYPE_DEFAULT))
  {
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Activity run!", v22, 2u);
  }

  if (*(a1 + 32) == 1)
  {
    if (byte_100057939)
    {
      if (byte_10005793B == 1)
      {
        v8 = +[NSUserDefaults standardUserDefaults];
        if (!v8)
        {
          v9 = qword_100057930;
          if (os_log_type_enabled(qword_100057930, OS_LOG_TYPE_ERROR))
          {
            sub_1000304D0(v9);
          }
        }

        v10 = [NSString stringWithUTF8String:"OverrideParams"];
        v11 = [v8 objectForKey:v10];

        v12 = +[CombinedHealthSequencePredictor sharedPredictor];
        [v12 predictAndRecordWithParams:v11];

        v13 = +[HealthStateEstimationPredictor sharedPredictor];
        [v13 predictAndRecordWithParams:v11];
      }

      if (byte_10005793C == 1)
      {
        v14 = +[NSUserDefaults standardUserDefaults];
        if (!v14)
        {
          v15 = qword_100057930;
          if (os_log_type_enabled(qword_100057930, OS_LOG_TYPE_ERROR))
          {
            sub_1000304D0(v15);
          }
        }

        v16 = [NSString stringWithUTF8String:"OverrideParams"];
        v17 = [v14 objectForKey:v16];

        v18 = +[OcvDriftEstimator sharedPredictor];
        [v18 predictAndRecordWithParams:v17];
      }
    }

    else
    {
      v20 = qword_100057930;
      if (os_log_type_enabled(qword_100057930, OS_LOG_TYPE_DEFAULT))
      {
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "All tasks disabled!", v24, 2u);
      }
    }

    goto LABEL_25;
  }

  if (*(a1 + 33) == 1)
  {
LABEL_25:
    sub_10001400C();
    goto LABEL_26;
  }

  v19 = qword_100057930;
  if (os_log_type_enabled(qword_100057930, OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Unregistering activity since this is not an iPhone or a watch!", v21, 2u);
  }

  xpc_activity_unregister("com.apple.batteryintelligenced.dailytask");
LABEL_26:
  objc_autoreleasePoolPop(v4);
}

void sub_10001400C()
{
  if (byte_100057939)
  {
    if (byte_10005793A == 1)
    {
      v0 = qword_100057930;
      if (os_log_type_enabled(qword_100057930, OS_LOG_TYPE_DEFAULT))
      {
        *v2 = 0;
        _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "ASG enabled!", v2, 2u);
      }

      sub_100019738();
    }
  }

  else
  {
    v1 = qword_100057930;
    if (os_log_type_enabled(qword_100057930, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "All tasks disabled!", buf, 2u);
    }
  }
}

void sub_100014118(id a1)
{
  qword_100057940 = objc_alloc_init(BIFeatures);

  _objc_release_x1();
}

NSString *__cdecl sub_1000143B4(id a1, NSNumber *a2)
{
  v2 = a2;
  if ([(NSNumber *)v2 unsignedIntValue]<= 0x63)
  {
    v3 = 10 * ([(NSNumber *)v2 unsignedIntValue]/ 0xA);
  }

  else
  {
    v3 = 90;
  }

  v4 = [NSNumber numberWithUnsignedInt:v3];
  v5 = [NSString stringWithFormat:@"%@s", v4];

  return v5;
}

NSString *__cdecl sub_10001446C(id a1, NSNumber *a2)
{
  [(NSNumber *)a2 floatValue];
  v3 = v2 / 100.0;
  if (v3 <= 20.0)
  {
    v4 = @"LT20t";
  }

  else if (v3 <= 40.0)
  {
    v5 = 2 * (v3 * 0.5);
    v6 = floorf(v3);
    if (v6)
    {
      v7 = 2 * (v3 * 0.5);
    }

    else
    {
      v7 = v5 - 2;
    }

    if (v6 == v3)
    {
      v8 = v7;
    }

    else
    {
      v8 = v5;
    }

    v9 = [NSNumber numberWithUnsignedInt:v8];
    v4 = [NSString stringWithFormat:@"%@t", v9];
  }

  else
  {
    v4 = @"GT40t";
  }

  return v4;
}

NSString *__cdecl sub_100014554(id a1, NSNumber *a2)
{
  [(NSNumber *)a2 floatValue];
  if (v2 <= -0.5)
  {
    v3 = @"LT-5c";
  }

  else if (v2 <= 0.5)
  {
    v4 = vcvtps_s32_f32((v2 + -0.1) * 10.0);
    v5 = v2 * 10.0;
    v6 = floorf(v5);
    v8 = v4 == v5 && v6 == v5;
    v3 = [NSString stringWithFormat:@"%d%c", v4 - v8, 99];
  }

  else
  {
    v3 = @"GT5c";
  }

  return v3;
}

id sub_100014824(uint64_t a1)
{
  v2 = +[BDCSchema sharedBDCSchema];
  dword_100057958 = [v2 columnIndexForColumnName:@"timestamp" atVersion:*(a1 + 32)];

  v3 = objc_alloc_init(NSDateFormatter);
  v4 = qword_100057960;
  qword_100057960 = v3;

  v5 = qword_100057960;

  return [v5 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
}

void sub_100015A24(uint64_t a1)
{
  bzero(*(*(*(a1 + 32) + 8) + 24), *(a1 + 40));
  if (*(a1 + 48))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      *(*(*(*(a1 + 32) + 8) + 24) + v2 + 4) = 0x80000000;
      *(*(*(*(a1 + 32) + 8) + 24) + v2 + 8) = 0x7FFFFFFF;
      ++v3;
      v2 += 20;
    }

    while (v3 < *(a1 + 48));
  }
}

uint64_t sub_100015BF4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100015C0C(uint64_t a1)
{
  v2 = [*(a1 + 32) _copyHistogramsOfTypes:*(a1 + 40) withBinners:*(a1 + 48) withParams:*(a1 + 56)];
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_100016648(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(*(*(a1 + 32) + 8), OS_LOG_TYPE_DEBUG))
  {
    sub_100030A9C();
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v4 = v3;
  v56 = [v4 countByEnumeratingWithState:&v70 objects:v78 count:16];
  v6 = 0;
  if (v56)
  {
    v55 = *v71;
    *&v5 = 67109376;
    v53 = v5;
    v54 = v4;
    do
    {
      for (i = 0; i != v56; i = i + 1)
      {
        if (*v71 != v55)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v70 + 1) + 8 * i);
        v9 = [v4 objectForKeyedSubscript:{v8, v53}];
        v10 = [v9 objectForKeyedSubscript:@"NumSegments"];

        if ([v10 unsignedIntValue] >= 0x31)
        {
          v11 = *(*(a1 + 32) + 8);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v49 = v11;
            v50 = [v10 unsignedIntValue];
            *buf = v53;
            *v77 = v50;
            *&v77[4] = 1024;
            *&v77[6] = 48;
            _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "Skipping NULL segments. Recevied %u, threshold %u ", buf, 0xEu);
          }

          v10 = &off_10004D438;
        }

        v57 = v10;
        if ([v8 isEqualToString:@"uisoc"])
        {
          v12 = *(a1 + 40);
          v13 = [v4 objectForKeyedSubscript:v8];
          v14 = [v13 objectForKeyedSubscript:@"PrevSegmentVal"];
          v15 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v10 unsignedIntValue] - 1);
          v69 = v6;
          v16 = [v12 insertValue:v14 thisManyTimes:v15 error:&v69];
          v17 = v69;

          if (v16)
          {
            v18 = *(a1 + 40);
            v19 = [v4 objectForKeyedSubscript:v8];
            v20 = [v19 objectForKeyedSubscript:@"CurrSegmentVal"];
            v68 = v17;
            LOBYTE(v18) = [v18 insertValue:v20 error:&v68];
            v6 = v68;

            v4 = v54;
            v17 = v6;
            if (v18)
            {
              goto LABEL_53;
            }
          }

          else
          {
          }

          v34 = *(*(a1 + 32) + 8);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *v77 = v17;
            _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Failed to add uisoc %@", buf, 0xCu);
          }

          v6 = v17;
        }

        else
        {
          if ([v8 isEqualToString:@"temp"])
          {
            v21 = [v4 objectForKeyedSubscript:v8];
            v22 = [v21 mutableCopy];

            if ([v10 unsignedIntValue] >= 5)
            {
              v23 = *(*(a1 + 32) + 8);
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                v51 = v23;
                v52 = [v10 unsignedIntValue];
                *buf = v53;
                *v77 = v52;
                *&v77[4] = 1024;
                *&v77[6] = 4;
                _os_log_error_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Skipping NULL temperature segments. Received %u, threshold %u ", buf, 0xEu);
              }

              [v22 setObject:&off_10004D438 forKeyedSubscript:@"NumSegments"];
            }

            v24 = sub_100016DC0(v22);
            v64 = 0u;
            v65 = 0u;
            v66 = 0u;
            v67 = 0u;
            v25 = v24;
            v26 = [v25 countByEnumeratingWithState:&v64 objects:v75 count:16];
            if (v26)
            {
              v27 = v26;
              v28 = *v65;
              while (2)
              {
                v29 = 0;
                v30 = v6;
                do
                {
                  if (*v65 != v28)
                  {
                    objc_enumerationMutation(v25);
                  }

                  v31 = *(*(&v64 + 1) + 8 * v29);
                  v32 = *(a1 + 48);
                  v63 = v30;
                  v33 = [v32 insertValue:v31 error:&v63];
                  v6 = v63;

                  if ((v33 & 1) == 0)
                  {
                    v46 = *(*(a1 + 32) + 8);
                    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      *v77 = v6;
                      _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "Failed to add temp %@", buf, 0xCu);
                    }

                    goto LABEL_46;
                  }

                  v29 = v29 + 1;
                  v30 = v6;
                }

                while (v27 != v29);
                v27 = [v25 countByEnumeratingWithState:&v64 objects:v75 count:16];
                if (v27)
                {
                  continue;
                }

                break;
              }
            }

LABEL_46:

LABEL_52:
            v4 = v54;
            goto LABEL_53;
          }

          if ([v8 isEqualToString:@"amperage"])
          {
            v35 = [v4 objectForKeyedSubscript:v8];
            v36 = sub_100016DC0(v35);

            v61 = 0u;
            v62 = 0u;
            v59 = 0u;
            v60 = 0u;
            v22 = v36;
            v37 = [v22 countByEnumeratingWithState:&v59 objects:v74 count:16];
            if (v37)
            {
              v38 = v37;
              v39 = *v60;
              while (2)
              {
                v40 = 0;
                v41 = v6;
                do
                {
                  if (*v60 != v39)
                  {
                    objc_enumerationMutation(v22);
                  }

                  [*(*(&v59 + 1) + 8 * v40) floatValue];
                  v42 = *(a1 + 56);
                  *&v44 = v43 / *(a1 + 64);
                  v45 = [NSNumber numberWithFloat:v44];
                  v58 = v41;
                  LOBYTE(v42) = [v42 insertValue:v45 error:&v58];
                  v6 = v58;

                  if ((v42 & 1) == 0)
                  {
                    v48 = *(*(a1 + 32) + 8);
                    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      *v77 = v6;
                      _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Failed to add c-rate %@", buf, 0xCu);
                    }

                    goto LABEL_51;
                  }

                  v40 = v40 + 1;
                  v41 = v6;
                }

                while (v38 != v40);
                v38 = [v22 countByEnumeratingWithState:&v59 objects:v74 count:16];
                if (v38)
                {
                  continue;
                }

                break;
              }
            }

LABEL_51:

            goto LABEL_52;
          }

          v47 = *(*(a1 + 32) + 8);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *v77 = v8;
            _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "Unknown key %@ in resampled callback", buf, 0xCu);
          }
        }

LABEL_53:
      }

      v56 = [v4 countByEnumeratingWithState:&v70 objects:v78 count:16];
    }

    while (v56);
  }
}

id sub_100016DC0(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSMutableArray);
  v3 = [v1 objectForKeyedSubscript:@"NumSegments"];
  v4 = [v3 intValue];

  if (v4 == 1)
  {
    v5 = [v1 objectForKeyedSubscript:@"CurrSegmentVal"];
    [v2 addObject:v5];
  }

  else
  {
    v6 = [v1 objectForKeyedSubscript:@"PrevSegmentVal"];
    [v6 floatValue];
    v8 = v7;

    v9 = [v1 objectForKeyedSubscript:@"CurrSegmentVal"];
    [v9 floatValue];
    v11 = v10;

    *&v12 = v11 - v8;
    if (v11 < v8)
    {
      *&v12 = v8 - v11;
    }

    v13 = *&v12 / v4;
    if (v11 >= v8)
    {
      v14 = v13;
    }

    else
    {
      v14 = -v13;
    }

    if (v4)
    {
      for (i = 1; i <= v4; ++i)
      {
        *&v12 = v8 + (i * v14);
        v16 = [NSNumber numberWithFloat:v12];
        [v2 addObject:v16];
      }
    }
  }

  return v2;
}

_BYTE *sub_100019164(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void sub_100019174(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

void sub_10001918C(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

void sub_1000191BC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100019738()
{
  v0 = os_log_create("com.apple.batteryintelligence", "BatteryAlgorithmsHelper");
  v1 = qword_100057970;
  qword_100057970 = v0;

  v252 = @"algorithmName";
  v253 = @"SampleAlgorithm";
  v2 = [NSDictionary dictionaryWithObjects:&v253 forKeys:&v252 count:1];
  v254[0] = v2;
  v251[0] = @"OnDeviceACAM";
  v250[0] = @"algorithmName";
  v250[1] = @"algorithmTargetEnBlock";
  v3 = objc_retainBlock(off_100057788[0]);
  v251[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v251 forKeys:v250 count:2];
  v254[1] = v4;
  v249[0] = @"AdaptiveOCV";
  v248[0] = @"algorithmName";
  v248[1] = @"algorithmTargetEnBlock";
  v5 = objc_retainBlock(off_100057790[0]);
  v249[1] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v249 forKeys:v248 count:2];
  v254[2] = v6;
  v247[0] = @"CafeSwell";
  v246[0] = @"algorithmName";
  v246[1] = @"algorithmTargetEnBlock";
  v7 = objc_retainBlock(off_100057798[0]);
  v247[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v247 forKeys:v246 count:2];
  v254[3] = v8;
  v245[0] = @"AugmentedBatteryHealth";
  v244[0] = @"algorithmName";
  v244[1] = @"algorithmTargetEnBlock";
  v9 = objc_retainBlock(off_1000577A0);
  v245[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v245 forKeys:v244 count:2];
  v254[4] = v10;
  v11 = [NSArray arrayWithObjects:v254 count:5];

  if (!qword_100057968 || ![qword_100057968 count])
  {
    v12 = +[NSMutableArray array];
    v13 = qword_100057968;
    qword_100057968 = v12;
  }

  obj = v11;
  if ((byte_100057979 & 1) == 0)
  {
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v14 = [obj countByEnumeratingWithState:&v263 objects:v280 count:16];
    if (!v14)
    {
      goto LABEL_19;
    }

    v15 = v14;
    v16 = *v264;
    while (1)
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v264 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v263 + 1) + 8 * i);
        v19 = [v18 objectForKeyedSubscript:@"algorithmTargetEnBlock"];
        v20 = v19;
        if (v19 && (*(v19 + 16))(v19))
        {
          byte_100057978 = 1;
          v21 = [v18 objectForKeyedSubscript:@"algorithmName"];
          v22 = objc_alloc_init(BatteryAlgorithmsRunner);
          v23 = +[NSMutableDictionary dictionary];
          [v23 setObject:v22 forKeyedSubscript:@"algorithmObject"];
          [v23 setObject:v21 forKeyedSubscript:@"algorithmName"];
          [qword_100057968 addObject:v23];

          v24 = qword_100057970;
          if (!os_log_type_enabled(qword_100057970, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_17;
          }

          v25 = v24;
          v26 = [v18 objectForKeyedSubscript:@"algorithmName"];
          *buf = 138412290;
          v256 = v26;
          v27 = v25;
          v28 = "Algorithms %@ enabled";
        }

        else
        {
          v29 = qword_100057970;
          if (!os_log_type_enabled(qword_100057970, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_17;
          }

          v25 = v29;
          v26 = [v18 objectForKeyedSubscript:@"algorithmName"];
          *buf = 138412290;
          v256 = v26;
          v27 = v25;
          v28 = "Algorithms %@ NOT enabled";
        }

        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v28, buf, 0xCu);

LABEL_17:
      }

      v15 = [obj countByEnumeratingWithState:&v263 objects:v280 count:16];
      if (!v15)
      {
LABEL_19:
        byte_100057979 = 1;
        break;
      }
    }
  }

  p_vtable = battery_analysis_tt80_model_7gzamb2979Input.vtable;
  if (byte_100057978 == 1)
  {

LABEL_22:
    v31 = sub_10001DEB8();
    v32 = [v31 stringByAppendingFormat:@"%@%@", @"/", @"com.apple.batteryintelligence.batteryalgorithms"];
    v33 = +[NSFileManager defaultManager];
    *v280 = 0;
    v34 = [v33 createDirectoryAtPath:v32 withIntermediateDirectories:1 attributes:0 error:v280];
    v35 = *v280;

    if (v34)
    {
    }

    else
    {
      v38 = qword_100057970;
      if (os_log_type_enabled(qword_100057970, OS_LOG_TYPE_ERROR))
      {
        sub_100031448(v32, v35, v38);
      }

      if (os_log_type_enabled(qword_100057970, OS_LOG_TYPE_ERROR))
      {
        sub_1000314D0();
      }
    }

    v211 = +[BatteryAlgorithmsInit sharedInstance];
    v235 = 0u;
    v236 = 0u;
    v237 = 0u;
    v238 = 0u;
    v230 = qword_100057968;
    v39 = [v230 countByEnumeratingWithState:&v235 objects:v243 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v236;
      do
      {
        for (j = 0; j != v40; j = j + 1)
        {
          if (*v236 != v41)
          {
            objc_enumerationMutation(v230);
          }

          v43 = *(*(&v235 + 1) + 8 * j);
          v44 = [v43 objectForKeyedSubscript:@"algorithmName"];
          v45 = qword_100057970;
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            *v280 = 138412290;
            *&v280[4] = v44;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "[%@] Algorithm found", v280, 0xCu);
          }

          v46 = [v43 objectForKeyedSubscript:@"algorithmObject"];
          if ([v46 initDone])
          {
            v47 = qword_100057970;
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
            {
              *v280 = 138412290;
              *&v280[4] = v44;
              _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "[%@] Init done already. Skipping init", v280, 0xCu);
            }

LABEL_53:

            goto LABEL_54;
          }

          [v46 setAlgorithmClassName:v44];
          v48 = [NSString stringWithFormat:@"AppleSoftGauging%@", v44];
          [v48 UTF8String];
          v49 = _os_feature_enabled_impl();

          [v46 setFeatureFlagEn:v49];
          LOBYTE(v49) = [v46 featureFlagEn];
          v47 = qword_100057970;
          v50 = os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);
          if ((v49 & 1) == 0)
          {
            if (v50)
            {
              *v280 = 138412290;
              *&v280[4] = v44;
              _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Feature Disabled for %@. Move on", v280, 0xCu);
            }

            p_vtable = battery_analysis_tt80_model_7gzamb2979Input.vtable;
            goto LABEL_53;
          }

          if (v50)
          {
            *v280 = 138412290;
            *&v280[4] = v44;
            _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "[%@] Algorithm is enabled", v280, 0xCu);
          }

          v51 = [v46 algoStateData];
          v52 = [v211 preInitData];
          [v52 setObject:v51 forKeyedSubscript:@"savedAlgoState"];

          p_vtable = battery_analysis_tt80_model_7gzamb2979Input.vtable;
          v53 = qword_100057970;
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            *v280 = 138412290;
            *&v280[4] = v44;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "[%@] Call Algorithm init", v280, 0xCu);
          }

          v54 = [v211 preInitData];
          [v46 algoRunnerInitWithData:v54];

          if ([v46 freshInitRequested])
          {
            v55 = qword_100057970;
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
            {
              *v280 = 138412290;
              *&v280[4] = v44;
              _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "[%@] Fresh init needed", v280, 0xCu);
            }

            [v211 fullInitDataRead];
            v47 = [v211 fullInitData];
            [v46 algoRunnerFreshInitWithData:v47];
            goto LABEL_53;
          }

LABEL_54:
        }

        v40 = [v230 countByEnumeratingWithState:&v235 objects:v243 count:16];
      }

      while (v40);
    }

    v239 = 0u;
    v240 = 0u;
    v241 = 0u;
    v242 = 0u;
    v56 = qword_100057968;
    v57 = [v56 countByEnumeratingWithState:&v239 objects:buf count:16];
    if (v57)
    {
      v58 = v57;
      v222 = *v240;
      v206 = v56;
      do
      {
        v59 = 0;
        v207 = v58;
        do
        {
          if (*v240 != v222)
          {
            objc_enumerationMutation(v56);
          }

          v60 = [*(*(&v239 + 1) + 8 * v59) objectForKeyedSubscript:@"algorithmObject"];
          v61 = p_vtable[302];
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            v62 = v61;
            [v60 AlgorithmClassName];
            v64 = v63 = v60;
            *v280 = 138412290;
            *&v280[4] = v64;
            _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "[%@] Attempt to run", v280, 0xCu);

            v60 = v63;
          }

          if (([v60 featureFlagEn] & 1) == 0)
          {
            v88 = p_vtable[302];
            if (!os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_184;
            }

            v89 = v88;
            [v60 AlgorithmClassName];
            v91 = v90 = v60;
            *v280 = 138412290;
            *&v280[4] = v91;
            v92 = v89;
            v93 = "[%@] Feature Flag disabled. Skipping";
LABEL_85:
            _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, v93, v280, 0xCu);

            v60 = v90;
            goto LABEL_184;
          }

          if (([v60 initDone] & 1) == 0)
          {
            v94 = p_vtable[302];
            if (!os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_184;
            }

            v89 = v94;
            [v60 AlgorithmClassName];
            v91 = v90 = v60;
            *v280 = 138412290;
            *&v280[4] = v91;
            v92 = v89;
            v93 = "[%@] Init is still pending. Skipping";
            goto LABEL_85;
          }

          v210 = v60;
          v223 = v60;
          v65 = [v223 algorithmObject];
          v66 = objc_opt_respondsToSelector();

          if ((v66 & 1) == 0)
          {
            goto LABEL_128;
          }

          v67 = p_vtable[302];
          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
          {
            v68 = v67;
            v69 = [v223 AlgorithmClassName];
            *v280 = 138412290;
            *&v280[4] = v69;
            _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "[%@] We have a PreRun function implemented", v280, 0xCu);
          }

          v70 = [v223 runMetaData];
          v71 = [v70 objectForKey:@"LastRunDate"];

          v72 = +[NSDate now];
          v261[0] = @"streamLastRunDate";
          v73 = v71;
          if (!v71)
          {
            v73 = +[NSNull null];
          }

          v261[1] = @"streamCurrentDate";
          v262[0] = v73;
          v231 = v72;
          v262[1] = v72;
          v74 = [NSDictionary dictionaryWithObjects:v262 forKeys:v261 count:2];
          if (!v71)
          {
          }

          v75 = [v223 algoPreRunnerWithData:v74];
          v76 = [v223 AlgorithmClassName];
          v77 = v75;
          v78 = v74;
          v79 = v76;
          v233 = v78;
          if (!v77 || ![v77 count])
          {
            v95 = p_vtable[302];
            if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
            {
              *v271 = 138412290;
              *&v271[4] = v79;
              v96 = v95;
              v97 = "[%@] Prerun returned empty";
              v98 = 12;
              goto LABEL_118;
            }

LABEL_122:

LABEL_123:
            v130 = p_vtable[302];
            if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
            {
              sub_1000315B8(&v257, v130, v223, &v258);
            }

            v87 = 0;
LABEL_126:
            v56 = v206;
            goto LABEL_127;
          }

          if (sub_10001B7E4(@"streamSkipRun", v77))
          {
            v80 = [v77 objectForKeyedSubscript:@"streamSkipRun"];
            v81 = [v80 BOOLValue];
            v82 = p_vtable;
            v83 = v81;
            v84 = v82[302];
            v85 = os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT);
            if (v83)
            {
              if (v85)
              {
                *v271 = 0;
                _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "Skipping run since the interface asked us to skip it", v271, 2u);
              }

              p_vtable = battery_analysis_tt80_model_7gzamb2979Input.vtable;
              v86 = qword_100057970;
              if (os_log_type_enabled(qword_100057970, OS_LOG_TYPE_ERROR))
              {
                sub_100031544(&v259, v86, v223, &v260);
              }

              LODWORD(v76) = 0;
              v87 = 1;
              goto LABEL_126;
            }

            if (v85)
            {
              *v271 = 0;
              _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "Skip run key exists but the value is not true.. continue to run..", v271, 2u);
            }

            p_vtable = battery_analysis_tt80_model_7gzamb2979Input.vtable;
          }

          v279 = 0u;
          v278 = 0u;
          v277 = 0u;
          v276 = 0u;
          v99 = [&off_10004CC70 countByEnumeratingWithState:&v276 objects:v280 count:16];
          if (!v99)
          {
            goto LABEL_99;
          }

          v100 = v99;
          v101 = *v277;
          do
          {
            for (k = 0; k != v100; k = k + 1)
            {
              if (*v277 != v101)
              {
                objc_enumerationMutation(&off_10004CC70);
              }

              v76 = *(*(&v276 + 1) + 8 * k);
              if (!sub_10001B7E4(v76, v77))
              {
                v123 = p_vtable[302];
                v78 = v233;
                if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
                {
                  *v271 = 138412546;
                  *&v271[4] = v79;
                  v272 = 2112;
                  v273 = v76;
                  v96 = v123;
                  v97 = "[%@] returned invalid stream check for key %@";
                  v98 = 22;
LABEL_118:
                  _os_log_error_impl(&_mh_execute_header, v96, OS_LOG_TYPE_ERROR, v97, v271, v98);
                }

                goto LABEL_122;
              }
            }

            v100 = [&off_10004CC70 countByEnumeratingWithState:&v276 objects:v280 count:16];
          }

          while (v100);
LABEL_99:
          v103 = [v233 objectForKeyedSubscript:@"streamCurrentDate"];
          v76 = [v77 objectForKeyedSubscript:@"streamDateStart"];
          v104 = [v103 compare:v76];

          if (v104 == -1)
          {
            p_vtable = battery_analysis_tt80_model_7gzamb2979Input.vtable;
            v124 = qword_100057970;
            v78 = v233;
            if (!os_log_type_enabled(qword_100057970, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_122;
            }

            v125 = v124;
            v76 = [v233 objectForKeyedSubscript:@"streamCurrentDate"];
            v126 = [v77 objectForKeyedSubscript:@"streamDateStart"];
            *v271 = 138412802;
            *&v271[4] = v79;
            v272 = 2112;
            v273 = v76;
            v274 = 2112;
            v275 = v126;
            v127 = v125;
            v128 = "[%@] Current date[%@] must be greater than stream start date %@";
LABEL_211:
            _os_log_error_impl(&_mh_execute_header, v127, OS_LOG_TYPE_ERROR, v128, v271, 0x20u);

            p_vtable = (battery_analysis_tt80_model_7gzamb2979Input + 24);
            goto LABEL_122;
          }

          v105 = [v77 objectForKeyedSubscript:@"streamDateEnd"];
          v76 = [v77 objectForKeyedSubscript:@"streamDateStart"];
          v106 = [v105 compare:v76];

          if (v106 == -1)
          {
            p_vtable = battery_analysis_tt80_model_7gzamb2979Input.vtable;
            v129 = qword_100057970;
            v78 = v233;
            if (!os_log_type_enabled(qword_100057970, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_122;
            }

            v125 = v129;
            v76 = [v77 objectForKeyedSubscript:@"streamDateEnd"];
            v126 = [v77 objectForKeyedSubscript:@"streamDateStart"];
            *v271 = 138412802;
            *&v271[4] = v79;
            v272 = 2112;
            v273 = v76;
            v274 = 2112;
            v275 = v126;
            v127 = v125;
            v128 = "[%@] Stream end date[%@] must be greater than stream start date %@";
            goto LABEL_211;
          }

          v107 = [v77 objectForKeyedSubscript:@"streamRequest"];
          v267 = 0u;
          v268 = 0u;
          v269 = 0u;
          v270 = 0u;
          v76 = v107;
          v108 = [v76 countByEnumeratingWithState:&v267 objects:&v263 count:16];
          if (!v108)
          {
            goto LABEL_111;
          }

          v109 = v108;
          v110 = *v268;
          while (2)
          {
            v111 = 0;
            while (2)
            {
              if (*v268 != v110)
              {
                objc_enumerationMutation(v76);
              }

              v112 = *(*(&v267 + 1) + 8 * v111);
              if (([&off_10004CC40 containsObject:v112] & 1) == 0 && (objc_msgSend(&off_10004CC58, "containsObject:", v112) & 1) == 0)
              {
                v190 = qword_100057970;
                if (!os_log_type_enabled(qword_100057970, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_192;
                }

                *v271 = 138412546;
                *&v271[4] = v79;
                v272 = 2112;
                v273 = v112;
                v188 = v190;
                v189 = "[%@] Invalid Stream name %@";
                goto LABEL_213;
              }

              if (!sub_10001B7E4(v112, v76))
              {
                v187 = qword_100057970;
                if (!os_log_type_enabled(qword_100057970, OS_LOG_TYPE_ERROR))
                {
LABEL_192:

                  p_vtable = (battery_analysis_tt80_model_7gzamb2979Input + 24);
                  goto LABEL_123;
                }

                *v271 = 138412546;
                *&v271[4] = v79;
                v272 = 2112;
                v273 = v112;
                v188 = v187;
                v189 = "[%@] Invalid Stream data %@";
LABEL_213:
                _os_log_error_impl(&_mh_execute_header, v188, OS_LOG_TYPE_ERROR, v189, v271, 0x16u);
                goto LABEL_192;
              }

              if (v109 != ++v111)
              {
                continue;
              }

              break;
            }

            v109 = [v76 countByEnumeratingWithState:&v267 objects:&v263 count:16];
            if (v109)
            {
              continue;
            }

            break;
          }

LABEL_111:

          v113 = v223;
          v114 = v77;
          v115 = &off_10004D4F8;
          if (sub_10001B7E4(@"streamPaginate", v114))
          {
            v115 = [v114 objectForKeyedSubscript:@"streamPaginate"];
          }

          v116 = [v114 objectForKeyedSubscript:@"streamDateStart"];
          v76 = [v114 objectForKeyedSubscript:@"streamDateEnd"];
          v224 = v114;
          v117 = [v114 objectForKeyedSubscript:@"streamRequest"];
          v220 = v115;
          p_vtable = battery_analysis_tt80_model_7gzamb2979Input.vtable;
          if ([v115 BOOLValue])
          {
            v118 = v113;
            v213 = v117;
            v226 = v117;
            v216 = v116;
            v119 = v116;
            v214 = v76;
            v120 = v76;
            v121 = [v119 dateByAddingTimeInterval:86400.0];
            v228 = v120;
            if ([v228 compare:v121] == -1)
            {
              v194 = qword_100057970;
              if (os_log_type_enabled(qword_100057970, OS_LOG_TYPE_DEFAULT))
              {
                *v280 = 138412546;
                *&v280[4] = v121;
                *&v280[12] = 2112;
                *&v280[14] = v228;
                _os_log_impl(&_mh_execute_header, v194, OS_LOG_TYPE_DEFAULT, "[Mult] dateTill [%@] >= today [%@]. Truncate", v280, 0x16u);
              }

              v122 = v228;
              v195 = v228;

              v121 = v195;
            }

            else
            {
              v122 = v228;
            }

            v219 = v113;
            if ([v122 compare:v119] == 1)
            {
              v196 = 0;
              do
              {
                v197 = qword_100057970;
                if (os_log_type_enabled(qword_100057970, OS_LOG_TYPE_DEFAULT))
                {
                  *v280 = 67109634;
                  *&v280[4] = v196;
                  *&v280[8] = 2112;
                  *&v280[10] = v119;
                  *&v280[18] = 2112;
                  *&v280[20] = v121;
                  _os_log_impl(&_mh_execute_header, v197, OS_LOG_TYPE_DEFAULT, "[Mult] Running chunk #%d from [%@] to [%@]", v280, 0x1Cu);
                  ++v196;
                }

                sub_10001B884(v118, v226, v119, v121);
                v198 = [v119 dateByAddingTimeInterval:86400.0];

                v199 = [v121 dateByAddingTimeInterval:86400.0];

                if ([v228 compare:v199] != 1)
                {
                  v200 = v198;
                  v201 = qword_100057970;
                  if (os_log_type_enabled(qword_100057970, OS_LOG_TYPE_DEFAULT))
                  {
                    *v280 = 138412546;
                    *&v280[4] = v199;
                    *&v280[12] = 2112;
                    *&v280[14] = v228;
                    _os_log_impl(&_mh_execute_header, v201, OS_LOG_TYPE_DEFAULT, "[Mult] dateTill [%@] is > than today [%@]. Truncate", v280, 0x16u);
                  }

                  v202 = v228;

                  v199 = v202;
                  v198 = v200;
                }

                v119 = v198;
                v121 = v199;
              }

              while ([v228 compare:v198] == 1);
            }

            else
            {
              v199 = v121;
              v198 = v119;
            }

            LODWORD(v76) = 0;
            p_vtable = (battery_analysis_tt80_model_7gzamb2979Input + 24);
            v56 = v206;
            v193 = v216;
            v113 = v219;
            v192 = v213;
            v191 = v214;
          }

          else
          {
            v191 = v76;
            LODWORD(v76) = sub_10001B884(v113, v117, v116, v76);
            v192 = v117;
            v193 = v116;
            v56 = v206;
          }

          v87 = 1;
LABEL_127:

          if ((v87 & 1) == 0)
          {
LABEL_128:
            v131 = p_vtable[302];
            if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
            {
              v132 = v131;
              v133 = [v223 AlgorithmClassName];
              *v280 = 138412290;
              *&v280[4] = v133;
              _os_log_impl(&_mh_execute_header, v132, OS_LOG_TYPE_DEFAULT, "[%@] Using Fall back run method", v280, 0xCu);
            }

            v134 = v223;
            v135 = +[NSDate now];
            v229 = v134;
            v136 = [v134 runMetaData];
            v137 = [v136 objectForKey:@"LastRunDate"];

            v212 = sub_10001C454();
            if (!v137)
            {
              v137 = [v135 dateByAddingTimeInterval:-2592000.0];
              v138 = p_vtable[302];
              if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
              {
                *v280 = 0;
                _os_log_impl(&_mh_execute_header, v138, OS_LOG_TYPE_DEFAULT, "We could not determine when was the last time we ran, pick last 30 days", v280, 2u);
              }
            }

            v139 = p_vtable[302];
            if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
            {
              *v280 = 138412290;
              *&v280[4] = v137;
              _os_log_impl(&_mh_execute_header, v139, OS_LOG_TYPE_DEFAULT, "Last time we ran till [%@]", v280, 0xCu);
            }

            v140 = v137;
            v227 = v135;
            if ([v135 compare:v140] == -1)
            {
              v179 = p_vtable[302];
              if (os_log_type_enabled(v179, OS_LOG_TYPE_ERROR))
              {
                *v280 = 138412546;
                *&v280[4] = v140;
                *&v280[12] = 2112;
                *&v280[14] = v135;
                _os_log_error_impl(&_mh_execute_header, v179, OS_LOG_TYPE_ERROR, "dateFrom [%@] is greater than today [%@]. Cannot Continue", v280, 0x16u);
              }

              LODWORD(v76) = -84;
              v180 = v140;
            }

            else
            {
              v141 = [v140 dateByAddingTimeInterval:86400.0];
              if ([v135 compare:v141] == -1)
              {
                v142 = p_vtable[302];
                if (os_log_type_enabled(v142, OS_LOG_TYPE_DEFAULT))
                {
                  *v280 = 138412546;
                  *&v280[4] = v141;
                  *&v280[12] = 2112;
                  *&v280[14] = v135;
                  _os_log_impl(&_mh_execute_header, v142, OS_LOG_TYPE_DEFAULT, "dateTill [%@] >= today [%@]. Truncate", v280, 0x16u);
                }

                v143 = v135;

                v141 = v143;
              }

              v144 = p_vtable[302];
              if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
              {
                *v280 = 138412546;
                *&v280[4] = v140;
                *&v280[12] = 2112;
                *&v280[14] = v135;
                _os_log_impl(&_mh_execute_header, v144, OS_LOG_TYPE_DEFAULT, "Total data to process [%@] to [%@]", v280, 0x16u);
              }

              v205 = v140;
              if ([v135 compare:v140] == 1)
              {
                v225 = 0;
                v145 = v140;
                v208 = v59;
                while (1)
                {
                  v146 = p_vtable[302];
                  if (os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT))
                  {
                    *v280 = 67109634;
                    *&v280[4] = v225;
                    *&v280[8] = 2112;
                    *&v280[10] = v145;
                    *&v280[18] = 2112;
                    *&v280[20] = v141;
                    _os_log_impl(&_mh_execute_header, v146, OS_LOG_TYPE_DEFAULT, "Running chunk #%d from [%@] to [%@]", v280, 0x1Cu);
                    ++v225;
                  }

                  v232 = v141;
                  v234 = v145;
                  v147 = [[NSDateInterval alloc] initWithStartDate:v145 endDate:v141];
                  v148 = [NSSet setWithArray:&off_10004CC88];
                  v149 = [PPSTimeSeriesRequest alloc];
                  v150 = [NSPredicate predicateWithFormat:@"(subsystem == 'BatteryDataCollection' AND category == 'BDC_AMA' AND (AlgoTemperature >= 0 OR AlgoTemperature < 0))"];
                  v151 = [v149 initWithMetrics:v148 predicate:v150 timeFilter:v147 limitCount:86400 offsetCount:0];

                  v152 = +[NSMutableArray array];
                  if (v151)
                  {
                    *v271 = 0;
                    v153 = PerfPowerServicesGetData();
                    v154 = *v271;
                    if (v154)
                    {
                      v155 = +[NSNull null];
                    }

                    else
                    {
                      v215 = v153;
                      v217 = v151;
                      v218 = v148;
                      v221 = v147;
                      v265 = 0u;
                      v266 = 0u;
                      v263 = 0u;
                      v264 = 0u;
                      v156 = v153;
                      v157 = [v156 countByEnumeratingWithState:&v263 objects:v280 count:16];
                      if (v157)
                      {
                        v158 = v157;
                        v159 = *v264;
                        do
                        {
                          for (m = 0; m != v158; m = m + 1)
                          {
                            if (*v264 != v159)
                            {
                              objc_enumerationMutation(v156);
                            }

                            v161 = *(*(&v263 + 1) + 8 * m);
                            v162 = [v161 metricKeysAndValues];
                            v163 = +[NSMutableDictionary dictionary];
                            v164 = [v162 objectForKeyedSubscript:@"Voltage"];
                            [v163 setObject:v164 forKeyedSubscript:@"Voltage"];

                            v165 = [v162 objectForKeyedSubscript:@"InstantAmperage"];
                            [v163 setObject:v165 forKeyedSubscript:@"InstantAmperage"];

                            v166 = [v162 objectForKeyedSubscript:@"PresentDOD"];
                            [v163 setObject:v166 forKeyedSubscript:@"PresentDOD"];

                            v167 = [v162 objectForKeyedSubscript:@"VirtualTemperature"];
                            [v163 setObject:v167 forKeyedSubscript:@"VirtualTemperature"];

                            [v161 epochTimestamp];
                            v168 = [NSNumber numberWithDouble:?];
                            [v163 setObject:v168 forKeyedSubscript:@"Timestamp"];

                            [v152 addObject:v163];
                          }

                          v158 = [v156 countByEnumeratingWithState:&v263 objects:v280 count:16];
                        }

                        while (v158);
                      }

                      v155 = v152;
                      p_vtable = battery_analysis_tt80_model_7gzamb2979Input.vtable;
                      v59 = v208;
                      v148 = v218;
                      v147 = v221;
                      v153 = v215;
                      v151 = v217;
                      v154 = 0;
                    }
                  }

                  else
                  {
                    v155 = +[NSNull null];
                  }

                  v169 = v147;
                  v170 = v227;
                  if (!v155)
                  {
                    goto LABEL_165;
                  }

                  v171 = +[NSNull null];
                  if ([v155 isEqual:v171])
                  {
                    goto LABEL_164;
                  }

                  v172 = [v155 count];

                  if (v172)
                  {
                    break;
                  }

LABEL_165:
                  v174 = [v229 runMetaData];
                  [v174 setValue:v232 forKey:@"LastRunDate"];

                  v175 = [v234 dateByAddingTimeInterval:86400.0];

                  v176 = [v232 dateByAddingTimeInterval:86400.0];

                  if ([v170 compare:v176] != 1)
                  {
                    v177 = p_vtable[302];
                    if (os_log_type_enabled(v177, OS_LOG_TYPE_DEFAULT))
                    {
                      *v280 = 138412546;
                      *&v280[4] = v176;
                      *&v280[12] = 2112;
                      *&v280[14] = v170;
                      _os_log_impl(&_mh_execute_header, v177, OS_LOG_TYPE_DEFAULT, "dateTill [%@] is > than today [%@]. Truncate", v280, 0x16u);
                    }

                    v178 = v170;

                    v176 = v178;
                  }

                  v145 = v175;
                  v141 = v176;
                  if ([v170 compare:v175] != 1)
                  {
                    goto LABEL_175;
                  }
                }

                *&v267 = @"amaStreamData";
                *(&v267 + 1) = @"smcData";
                *&v276 = v155;
                *(&v276 + 1) = v212;
                v171 = [NSDictionary dictionaryWithObjects:&v276 forKeys:&v267 count:2];
                v173 = [v229 algoRunnerExecuteWithData:v171];
                if (v173)
                {
                  LODWORD(v76) = v173;
                  v186 = p_vtable[302];
                  if (os_log_type_enabled(v186, OS_LOG_TYPE_ERROR))
                  {
                    *v280 = 67109120;
                    *&v280[4] = v76;
                    _os_log_error_impl(&_mh_execute_header, v186, OS_LOG_TYPE_ERROR, "Unable to execute run function %d", v280, 8u);
                  }

                  v176 = v232;
                  goto LABEL_176;
                }

                v170 = v227;
LABEL_164:

                goto LABEL_165;
              }

              v176 = v141;
              v175 = v140;
LABEL_175:
              v169 = [v229 runMetaData];
              [v169 setValue:v176 forKey:@"LastRunDate"];
              LODWORD(v76) = 0;
              v234 = v175;
LABEL_176:

              v140 = v205;
              v56 = v206;
              v180 = v234;
            }
          }

          v58 = v207;
          v60 = v210;
          if (!v76)
          {
            v181 = p_vtable[302];
            if (os_log_type_enabled(v181, OS_LOG_TYPE_DEFAULT))
            {
              v182 = v181;
              v183 = [v223 AlgorithmClassName];
              *v280 = 138412290;
              *&v280[4] = v183;
              _os_log_impl(&_mh_execute_header, v182, OS_LOG_TYPE_DEFAULT, "[%@] Done running", v280, 0xCu);

              v181 = p_vtable[302];
            }

            if (os_log_type_enabled(v181, OS_LOG_TYPE_DEFAULT))
            {
              v184 = v181;
              v185 = [v223 AlgorithmClassName];
              *v280 = 138412290;
              *&v280[4] = v185;
              _os_log_impl(&_mh_execute_header, v184, OS_LOG_TYPE_DEFAULT, "[%@] Calling output ", v280, 0xCu);
            }

            [v223 algoRunnerStoreOutput];
            v58 = v207;
          }

LABEL_184:

          v59 = v59 + 1;
        }

        while (v59 != v58);
        v203 = [v56 countByEnumeratingWithState:&v239 objects:buf count:16];
        v58 = v203;
      }

      while (v203);
    }

    v204 = v211;
    goto LABEL_217;
  }

  v36 = qword_100057970;
  if (os_log_type_enabled(qword_100057970, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "None of the Algorithms are enabled", buf, 2u);
    v37 = byte_100057978;

    if (v37 != 1)
    {
      goto LABEL_218;
    }

    goto LABEL_22;
  }

  v204 = obj;
LABEL_217:

LABEL_218:
}

BOOL sub_10001B7E4(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v4 objectForKey:v3];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:v3];
    v7 = +[NSNull null];
    v8 = v6 != v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_10001B884(void *a1, void *a2, void *a3, void *a4)
{
  v88 = a1;
  v7 = a2;
  v8 = a3;
  v95 = a4;
  v9 = &IOConnectCallMethod_ptr;
  v90 = +[NSMutableDictionary dictionary];
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  obj = v7;
  v96 = [obj countByEnumeratingWithState:&v117 objects:v134 count:16];
  if (v96)
  {
    v94 = *v118;
    v89 = v8;
    do
    {
      v10 = 0;
      do
      {
        if (*v118 != v94)
        {
          objc_enumerationMutation(obj);
        }

        v101 = v10;
        v11 = *(*(&v117 + 1) + 8 * v10);
        [&off_10004CC40 containsObject:v11];
        v100 = [obj objectForKeyedSubscript:v11];
        v12 = [NSSet setWithArray:?];
        v13 = v8;
        v14 = v95;
        v15 = v11;
        v16 = v12;
        v98 = v14;
        v99 = v13;
        v102 = [[NSDateInterval alloc] initWithStartDate:v13 endDate:v14];
        v103 = v15;
        v17 = v16;
        v18 = +[NSMutableArray array];
        v136 = 0u;
        v137 = 0u;
        v138 = 0u;
        v139 = 0u;
        v113 = v17;
        v19 = [v113 countByEnumeratingWithState:&v136 objects:v140 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v137;
          do
          {
            for (i = 0; i != v20; i = i + 1)
            {
              if (*v137 != v21)
              {
                objc_enumerationMutation(v113);
              }

              v23 = [NSPredicate predicateWithFormat:@"%K != NULL", *(*(&v136 + 1) + 8 * i)];
              if (v23)
              {
                [v18 addObject:v23];
              }
            }

            v20 = [v113 countByEnumeratingWithState:&v136 objects:v140 count:16];
          }

          while (v20);
        }

        if ([v18 count])
        {
          v24 = [NSCompoundPredicate andPredicateWithSubpredicates:v18];
          v25 = v103;
          v26 = PPSCreateSubsystemCategoryPredicate();
        }

        else
        {
          v26 = 0;
          v25 = v103;
        }

        v27 = v113;
        if (!v26)
        {
          v31 = +[NSNull null];
          v32 = v103;
LABEL_24:
          v34 = v99;
          goto LABEL_79;
        }

        v28 = [[PPSTimeSeriesRequest alloc] initWithMetrics:v113 predicate:v26 timeFilter:v102];
        if (!v28)
        {
          v31 = +[NSNull null];
          v32 = v103;
          v27 = v113;
          goto LABEL_24;
        }

        v29 = v28;
        v104 = +[NSMutableArray array];
        v133 = 0;
        v93 = v29;
        v30 = PerfPowerServicesGetData();
        v91 = v30;
        v92 = v133;
        if (v92)
        {
          v31 = +[NSNull null];
          v32 = v103;
          v33 = v104;
          v27 = v113;
          goto LABEL_78;
        }

        v107 = [v113 allObjects];
        v129 = 0u;
        v130 = 0u;
        v131 = 0u;
        v132 = 0u;
        v35 = v30;
        v108 = [v35 countByEnumeratingWithState:&v129 objects:v140 count:16];
        if (!v108)
        {

          v38 = 0;
          v37 = 0;
          goto LABEL_76;
        }

        v36 = 0;
        v37 = 0;
        v38 = 0;
        v105 = v35;
        v106 = *v130;
        v39 = 0.0;
        v109 = v26;
        do
        {
          v40 = 0;
          do
          {
            if (*v130 != v106)
            {
              objc_enumerationMutation(v105);
            }

            v111 = *(*(&v129 + 1) + 8 * v40);
            v112 = v40;
            v41 = [v111 metricKeysAndValues];
            v42 = v9[194];
            if (v36 == 1)
            {
              v43 = [v42 dictionaryWithDictionary:v38];

              v38 = [v9[194] dictionary];
              v116 = 1;
              v37 = v43;
            }

            else
            {
              v44 = [v42 dictionary];

              v116 = 0;
              v37 = 0;
              v39 = 0.0;
              v38 = v44;
            }

            v127 = 0u;
            v128 = 0u;
            v125 = 0u;
            v126 = 0u;
            v45 = v107;
            v46 = [v45 countByEnumeratingWithState:&v125 objects:&v136 count:16];
            if (!v46)
            {

              v26 = v109;
              goto LABEL_53;
            }

            v47 = v46;
            v115 = v38;
            v110 = v37;
            v48 = *v126;
            v114 = 1;
            do
            {
              for (j = 0; j != v47; j = j + 1)
              {
                if (*v126 != v48)
                {
                  objc_enumerationMutation(v45);
                }

                v50 = *(*(&v125 + 1) + 8 * j);
                v51 = [v41 objectForKeyedSubscript:v50];
                if (v51)
                {
                  v52 = v51;
                  v53 = v45;
                  v54 = [v41 objectForKeyedSubscript:v50];
                  v55 = +[NSNull null];
                  v56 = [v54 isEqual:v55];

                  if ((v56 & 1) == 0)
                  {
                    v57 = [v41 objectForKeyedSubscript:v50];
                    objc_opt_class();
                    isKindOfClass = objc_opt_isKindOfClass();

                    v59 = [v41 objectForKeyedSubscript:v50];
                    if (isKindOfClass & 1) != 0 || (objc_opt_class(), v60 = objc_opt_isKindOfClass(), v59, [v41 objectForKeyedSubscript:v50], v59 = objc_claimAutoreleasedReturnValue(), (v60))
                    {
                      [v115 setObject:v59 forKeyedSubscript:v50];

                      v114 = 0;
                      ++v116;
                    }

                    else
                    {
                      objc_opt_class();
                      v61 = objc_opt_isKindOfClass();

                      v62 = [v41 objectForKeyedSubscript:v50];
                      if ((v61 & 1) == 0)
                      {
                        objc_opt_class();
                        v63 = objc_opt_isKindOfClass();

                        v62 = [v41 objectForKeyedSubscript:v50];
                        if ((v63 & 1) == 0)
                        {
                          objc_opt_class();
                          objc_opt_isKindOfClass();

                          v62 = [v41 objectForKeyedSubscript:v50];
                        }
                      }

                      [v115 setObject:v62 forKeyedSubscript:v50];

                      v116 = 0;
                      v114 = 0;
                    }
                  }

                  v45 = v53;
                }
              }

              v47 = [v45 countByEnumeratingWithState:&v125 objects:&v136 count:16];
            }

            while (v47);

            v26 = v109;
            if (v114)
            {
              v9 = &IOConnectCallMethod_ptr;
              v37 = v110;
              v38 = v115;
LABEL_53:
              v36 = v116;
              goto LABEL_69;
            }

            v36 = v116;
            v9 = &IOConnectCallMethod_ptr;
            v38 = v115;
            if (v116 == 2)
            {
              v65 = [NSNumber numberWithDouble:v39];
              [v110 setObject:v65 forKeyedSubscript:@"Timestamp"];

              [v104 addObject:v110];
              v36 = 0;
              v37 = 0;
              v39 = 0.0;
            }

            else
            {
              v37 = v110;
              if (v116 == 1)
              {
                [v111 epochTimestamp];
                v39 = v64;
                goto LABEL_69;
              }
            }

            [v111 epochTimestamp];
            v66 = [NSNumber numberWithDouble:?];
            [v115 setObject:v66 forKeyedSubscript:@"Timestamp"];

            if (v37)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v67 = v36;
                v123 = 0u;
                v124 = 0u;
                v121 = 0u;
                v122 = 0u;
                v68 = v37;
                v69 = v37;
                v70 = [v69 countByEnumeratingWithState:&v121 objects:v135 count:16];
                if (v70)
                {
                  v71 = v70;
                  v72 = *v122;
                  do
                  {
                    for (k = 0; k != v71; k = k + 1)
                    {
                      if (*v122 != v72)
                      {
                        objc_enumerationMutation(v69);
                      }

                      v74 = *(*(&v121 + 1) + 8 * k);
                      v75 = [v69 objectForKeyedSubscript:v74];
                      [v115 setObject:v75 forKeyedSubscript:v74];
                    }

                    v71 = [v69 countByEnumeratingWithState:&v121 objects:v135 count:16];
                  }

                  while (v71);
                }

                v26 = v109;
                v37 = v68;
                v38 = v115;
                v36 = v67;
              }
            }

            [v104 addObject:v38];
LABEL_69:

            v40 = v112 + 1;
          }

          while ((v112 + 1) != v108);
          v108 = [v105 countByEnumeratingWithState:&v129 objects:v140 count:16];
        }

        while (v108);

        if (v37)
        {
          v8 = v89;
          if (v36 == 1)
          {
            v76 = [NSNumber numberWithDouble:v39];
            [v37 setObject:v76 forKeyedSubscript:@"Timestamp"];

            v77 = v104;
            [v104 addObject:v37];
            goto LABEL_77;
          }
        }

        else
        {
          v8 = v89;
        }

LABEL_76:
        v77 = v104;
LABEL_77:
        v31 = v77;

        v32 = v103;
        v27 = v113;
        v33 = v77;
LABEL_78:
        v34 = v99;

LABEL_79:
        if (v31)
        {
          v78 = +[NSNull null];
          if ([v31 isEqual:v78])
          {
          }

          else
          {
            v79 = [v31 count];

            if (v79)
            {
              [v90 setObject:v31 forKeyedSubscript:v103];
            }
          }
        }

        v10 = v101 + 1;
      }

      while ((v101 + 1) != v96);
      v96 = [obj countByEnumeratingWithState:&v117 objects:v134 count:16];
    }

    while (v96);
  }

  v80 = sub_10001C454();
  if (!v80)
  {
    goto LABEL_93;
  }

  v81 = +[NSNull null];
  if ([v80 isEqual:v81])
  {

LABEL_93:
    v85 = 0xFFFFFFFFLL;
    goto LABEL_94;
  }

  v82 = [v80 count];

  if (!v82)
  {
    goto LABEL_93;
  }

  [v90 setObject:v80 forKeyedSubscript:@"smcData"];
  v83 = v88;
  v84 = [v88 algoRunnerExecuteWithData:v90];
  if (!v84)
  {
    v87 = [v88 runMetaData];
    [v87 setValue:v95 forKey:@"LastRunDate"];

    v85 = 0;
    goto LABEL_95;
  }

  v85 = v84;
  if (os_log_type_enabled(qword_100057970, OS_LOG_TYPE_ERROR))
  {
    sub_10003162C();
  }

LABEL_94:
  v83 = v88;
LABEL_95:

  return v85;
}

id sub_10001C454()
{
  v0 = sub_10001E58C();
  v1 = v0;
  if (v0)
  {
    v2 = [v0 objectForKey:@"BatteryData"];
    if (sub_10001F830(v2) || (sub_10001F914(v2) & 1) == 0)
    {
      if (os_log_type_enabled(qword_100057970, OS_LOG_TYPE_ERROR))
      {
        sub_100031718();
      }

      v15 = 0;
    }

    else
    {
      v3 = [v1 objectForKey:@"ChargerData"];
      if (sub_10001F830(v3) || (sub_10001F914(v3) & 1) == 0)
      {
        if (os_log_type_enabled(qword_100057970, OS_LOG_TYPE_ERROR))
        {
          sub_1000316DC();
        }

        v15 = 0;
      }

      else
      {
        v4 = [v2 objectForKey:@"LifetimeData"];
        if (sub_10001F830(v4) || (sub_10001F914(v4) & 1) == 0)
        {
          if (os_log_type_enabled(qword_100057970, OS_LOG_TYPE_ERROR))
          {
            sub_1000316A0();
          }

          v15 = 0;
        }

        else
        {
          v5 = [v3 objectForKey:@"VacVoltageLimit"];
          v19 = sub_100002C7C(v5);

          v6 = [v1 objectForKey:@"CycleCount"];
          v20 = sub_100002C7C(v6);

          v7 = [v4 objectForKey:@"TotalOperatingTime"];
          v8 = sub_100002C7C(v7);

          v9 = [v4 objectForKey:@"CycleCountLastQmax"];
          v18 = sub_100002C7C(v9);

          v10 = [v2 objectForKey:@"DateOfFirstUse"];
          v17 = sub_100002C7C(v10);

          v11 = [v4 objectForKey:@"TimeAtHighSoc"];
          v12 = sub_100002C7C(v11);

          v13 = [v2 objectForKey:@"AlgoCycleCountDbgData"];
          v14 = sub_100002C7C(v13);

          v21[0] = @"VacVoltageLimit";
          v21[1] = @"CycleCount";
          v22[0] = v19;
          v22[1] = v20;
          v21[2] = @"TotalOperatingTime";
          v21[3] = @"CycleCountLastQmax";
          v22[2] = v8;
          v22[3] = v18;
          v21[4] = @"DateOfFirstUse";
          v21[5] = @"TimeAtHighSoc";
          v22[4] = v17;
          v22[5] = v12;
          v21[6] = @"AlgoCycleCountDbgData";
          v22[6] = v14;
          v15 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:7];
        }
      }
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100057970, OS_LOG_TYPE_ERROR))
    {
      sub_100031754();
    }

    v15 = 0;
  }

  return v15;
}

void sub_10001C7E4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v5, OS_LOG_TYPE_ERROR, a4, v4, 0xCu);
}

uint64_t sub_10001C8A4(uint64_t a1)
{
  qword_100057980 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

id sub_10001D668()
{
  if (qword_100057998 != -1)
  {
    sub_10003193C();
  }

  v1 = qword_100057990;

  return v1;
}

void sub_10001D7E4(id a1)
{
  qword_100057990 = sub_10001DEC4("BIXPCAlarm");

  _objc_release_x1();
}

uint64_t sub_10001D8C4(uint64_t a1)
{
  qword_1000579A0 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

char *sub_10001DEC4(char *category)
{
  if (category)
  {
    category = os_log_create("com.apple.batteryintelligence", category);
    v1 = vars8;
  }

  return category;
}

NSDate *sub_10001DEFC(void *a1, unsigned int a2)
{
  [a1 timeIntervalSince1970];
  v4 = floor(v3 / a2) * a2;

  return [NSDate dateWithTimeIntervalSince1970:v4];
}

id sub_10001DF54(unint64_t a1)
{
  if (a1 < 0x14 && ((0xC07FFu >> a1) & 1) != 0)
  {
    v1 = [@"/var/db/Battery/BI" stringByAppendingFormat:@"%@%@", @"/", off_100048E90[a1]];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100031950();
    }

    v1 = 0;
  }

  return v1;
}

id sub_10001DFFC(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [NSURL fileURLWithPath:v4 isDirectory:0];
  v6 = +[NSFileManager defaultManager];
  if ([v6 fileExistsAtPath:v4])
  {
    v14 = 0;
    v7 = [v6 removeItemAtURL:v5 error:&v14];
    v8 = v14;
    if ((v7 & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000319C8();
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_10001E150(v3);
  v13 = v8;
  v10 = [v9 writeToURL:v5 error:&v13];
  v11 = v13;

  if ((v10 & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100031A40();
  }

  return v10;
}

id sub_10001E150(void *a1)
{
  v1 = a1;
  if (sub_10001F78C(v1))
  {
    goto LABEL_2;
  }

  if (sub_10001F914(v1))
  {
    v3 = +[NSMutableDictionary dictionary];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v4 = v1;
    v5 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v23;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v22 + 1) + 8 * i);
          v10 = [v4 objectForKeyedSubscript:v9];
          v11 = sub_10001E150(v10);

          if (v11)
          {
            [v3 setObject:v11 forKeyedSubscript:v9];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v6);
    }

LABEL_24:

    v2 = [v3 copy];
    goto LABEL_25;
  }

  if (sub_10001F8C8(v1))
  {
    v3 = +[NSMutableArray array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v4 = v1;
    v12 = [v4 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      do
      {
        for (j = 0; j != v13; j = j + 1)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v4);
          }

          v16 = sub_10001E150(*(*(&v18 + 1) + 8 * j));
          if (v16)
          {
            [v3 addObject:{v16, v18}];
          }
        }

        v13 = [v4 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v13);
    }

    goto LABEL_24;
  }

  if (sub_10001F78C(v1))
  {
LABEL_2:
    v2 = 0;
    goto LABEL_25;
  }

  v2 = v1;
LABEL_25:

  return v2;
}

id sub_10001E3BC(void *a1, unint64_t a2)
{
  v3 = a1;
  v4 = sub_10001DF54(a2);
  if (v4)
  {
    v5 = sub_10001DFFC(v3, v4);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100031AB8();
    }

    v5 = 0;
  }

  return v5;
}

uint64_t sub_10001E444()
{
  if (qword_1000579B8 != -1)
  {
    sub_100031B30();
  }

  return byte_1000579B0;
}

id sub_10001E4AC(void *a1)
{
  v1 = a1;
  v2 = [NSURL fileURLWithPath:v1 isDirectory:0];
  v7 = 0;
  v3 = [[NSDictionary alloc] initWithContentsOfURL:v2 error:&v7];
  v4 = v7;
  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100031B44();
    }

    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  return v5;
}

const __CFDictionary *sub_10001E58C()
{
  properties = 0;
  MatchingService = dword_100057A08;
  if (dword_100057A08)
  {
    goto LABEL_13;
  }

  v1 = IOServiceMatching("IOPMPowerSource");
  if (!v1)
  {
    goto LABEL_5;
  }

  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v1);
  dword_100057A08 = MatchingService;
  if (MatchingService)
  {
LABEL_13:
    if (IORegistryEntryCreateCFProperties(MatchingService, &properties, kCFAllocatorDefault, 0))
    {
      v1 = 0;
    }

    else
    {
      v1 = properties;
    }
  }

  else
  {
    v1 = 0;
  }

LABEL_5:

  return v1;
}

id sub_10001E628()
{
  size = 0;
  v0 = sysctlbyname("hw.targettype", 0, &size, 0, 0);
  if (v0)
  {
    sub_100031BBC(v0, &v7);
  }

  else
  {
    v1 = malloc_type_malloc(size, 0x100004077774924uLL);
    if (v1)
    {
      v2 = v1;
      v3 = sysctlbyname("hw.targettype", v1, &size, 0, 0);
      if (v3)
      {
        sub_100031C64(v3, &v7);
        v4 = v7;
      }

      else
      {
        v4 = [NSString stringWithUTF8String:v2];
      }

      free(v2);
      goto LABEL_6;
    }

    sub_100031D0C(&v7);
  }

  v4 = v7;
LABEL_6:

  return v4;
}

id sub_10001E710()
{
  TypeID = CFDictionaryGetTypeID();
  result = sub_10001E788(@"BatteryData", TypeID);
  if (result)
  {
    v2 = result;
    v3 = [result objectForKeyedSubscript:@"Qmax"];
    v4 = [v3 firstObject];
    v5 = [v4 unsignedIntValue];

    return v5;
  }

  return result;
}

const void *sub_10001E788(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = IOServiceMatching("AppleSmartBattery");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v4);
  if (!MatchingService)
  {
    sub_100031D70(v12);
    v8 = *v12;
    goto LABEL_11;
  }

  v6 = MatchingService;
  CFProperty = IORegistryEntryCreateCFProperty(MatchingService, v3, kCFAllocatorDefault, 0);
  v8 = CFProperty;
  if (!CFProperty)
  {
    v9 = 0;
    goto LABEL_6;
  }

  v9 = CFGetTypeID(CFProperty);
  if (v9 != a2)
  {
LABEL_6:
    v10 = sub_10001EFF4();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v12 = 138412802;
      *&v12[4] = v3;
      v13 = 2048;
      v14 = v9;
      v15 = 2048;
      v16 = a2;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "copyValueForKeyFromIOPMPowerSource: For key %@ Value of type %lu. Expected type %lu ", v12, 0x20u);
    }

    if (v8)
    {
      CFRelease(v8);
      v8 = 0;
    }
  }

  IOObjectRelease(v6);
LABEL_11:

  return v8;
}

id sub_10001E92C()
{
  TypeID = CFNumberGetTypeID();
  result = sub_10001E788(@"NominalChargeCapacity", TypeID);
  if (result)
  {
    v2 = result;
    v3 = [result unsignedIntValue];

    return v3;
  }

  return result;
}

id sub_10001E974()
{
  TypeID = CFDictionaryGetTypeID();
  v1 = sub_10001E788(@"BatteryData", TypeID);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 objectForKeyedSubscript:@"WeightedRa"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 unsignedIntValue];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v3 firstObject];
      v4 = [v5 unsignedIntValue];
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100031DDC();
      }

      v4 = 0;
    }
  }

  return v4;
}

uint64_t sub_10001EA68()
{
  if (qword_1000579D0 != -1)
  {
    sub_100031E6C();
  }

  return dword_1000579C8;
}

void sub_10001EAA0(id a1)
{
  TypeID = CFNumberGetTypeID();
  v2 = sub_10001E788(@"DesignCapacity", TypeID);
  if (v2)
  {
    v3 = v2;
    dword_1000579C8 = [v2 unsignedIntValue];
  }
}

uint64_t sub_10001EB04()
{
  TypeID = CFDictionaryGetTypeID();
  v1 = sub_10001E788(@"BatteryData", TypeID);
  if (v1)
  {
    v2 = v1;
    v3 = [v1 objectForKeyedSubscript:@"LifetimeData"];
    v4 = [v3 objectForKeyedSubscript:@"TotalOperatingTime"];

    dword_1000579D8 = [v4 unsignedIntValue];
  }

  return dword_1000579D8;
}

uint64_t sub_10001EB8C()
{
  TypeID = CFNumberGetTypeID();
  v1 = sub_10001E788(@"CycleCount", TypeID);
  if (v1)
  {
    v2 = v1;
    dword_1000579DC = [v1 unsignedIntValue];
  }

  return dword_1000579DC;
}

uint64_t sub_10001EBD8()
{
  TypeID = CFDictionaryGetTypeID();
  v1 = sub_10001E788(@"BatteryData", TypeID);
  if (v1)
  {
    v2 = v1;
    v3 = [v1 objectForKeyedSubscript:@"AlgoChemID"];
    dword_1000579E0 = [v3 unsignedIntValue];
  }

  return dword_1000579E0;
}

uint64_t sub_10001EC44()
{
  TypeID = CFDictionaryGetTypeID();
  v1 = sub_10001E788(@"BatteryData", TypeID);
  if (v1)
  {
    v2 = v1;
    v3 = [v1 objectForKeyedSubscript:@"LifetimeData"];
    v4 = [v3 objectForKeyedSubscript:@"MaximumTemperature"];

    word_1000579E4 = [v4 unsignedIntValue];
  }

  return word_1000579E4;
}

BOOL sub_10001ECCC(_WORD *a1, unsigned __int8 *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    TypeID = CFStringGetTypeID();
    v6 = sub_10001E788(@"Serial", TypeID);
    if (v6)
    {
      v7 = v6;
      v8 = IOPSGetYearAndWeekOfManufactureFromBatterySerial();
      v2 = v8 != 0;
      CFRelease(v7);
      if (v8)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          sub_100031EC4();
        }

        v9 = [0 substringWithRange:{0, 1}];
        v10 = [0 substringWithRange:{1, 2}];
        v18 = v9;
        v11 = [v9 integerValue];
        v12 = [v10 integerValue];
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          sub_100031F40(v12, v11);
        }

        v13 = +[NSCalendar currentCalendar];
        v14 = +[NSDate now];
        v15 = [v13 component:4 fromDate:v14];

        if (v11 <= v15 % 0xAu)
        {
          v16 = v15 - v15 % 0xAu;
        }

        else
        {
          v16 = v15 - v15 % 0xAu - 10;
        }

        *a1 = v16 + v11;
        *a2 = v12;
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100031E80();
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

id sub_10001EEC4()
{
  TypeID = CFDictionaryGetTypeID();
  v1 = sub_10001E788(@"AdapterDetails", TypeID);
  if (v1)
  {
    v2 = v1;
    v3 = [v1 objectForKeyedSubscript:@"AdapterPowerTier"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_10001EF30()
{
  TypeID = CFDictionaryGetTypeID();
  v1 = sub_10001E788(@"AdapterDetails", TypeID);
  if (!v1)
  {
    v3 = 0;
    goto LABEL_5;
  }

  v2 = v1;
  v3 = [v1 objectForKeyedSubscript:@"IsWireless"];
  if ([v3 integerValue] < 2)
  {

LABEL_5:
    v3 = v3;
    v4 = v3;
    goto LABEL_9;
  }

  v5 = sub_10001EFF4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    sub_100031FD0(v5);
  }

  v4 = 0;
LABEL_9:

  return v4;
}

id sub_10001EFF4()
{
  if (qword_100057A10 != -1)
  {
    sub_100032014();
  }

  v1 = qword_1000579C0;

  return v1;
}

id sub_10001F038(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 count])
  {
    v3 = [v2 sortedArrayUsingSelector:"compare:"];
    v4 = [v3 objectAtIndex:{(objc_msgSend(v2, "count") - 1) >> 1}];
  }

  else
  {
    v4 = +[NSNull null];
  }

  return v4;
}

id sub_10001F0E0(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 count])
  {
    v3 = [v2 sortedArrayUsingSelector:"compare:"];
    v4 = [v3 lastObject];
  }

  else
  {
    v4 = +[NSNull null];
  }

  return v4;
}

id sub_10001F174(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 count])
  {
    v3 = [v2 sortedArrayUsingSelector:"compare:"];
    v4 = [v3 firstObject];
  }

  else
  {
    v4 = +[NSNull null];
  }

  return v4;
}

id sub_10001F208(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = +[NSCalendar currentCalendar];
  v12 = 0;
  [v5 rangeOfUnit:16 startDate:&v12 interval:0 forDate:v4];

  v6 = v12;
  v11 = 0;
  [v5 rangeOfUnit:16 startDate:&v11 interval:0 forDate:v3];

  v7 = v11;
  v8 = [v5 components:16 fromDate:v6 toDate:v7 options:0];
  v9 = [v8 day];

  return v9;
}

id sub_10001F2F8(void *a1)
{
  v1 = a1;
  if (qword_1000579D0 != -1)
  {
    sub_100031E6C();
  }

  v2 = dword_1000579C8;
  if ([v1 isEqualToString:@"nccp"])
  {
    v3 = sub_10001E92C();
LABEL_7:
    *&v4 = v3 / v2;
LABEL_8:
    v5 = [NSNumber numberWithFloat:v4];
    goto LABEL_9;
  }

  if ([v1 isEqualToString:@"qmaxp"])
  {
    v3 = sub_10001E710();
    goto LABEL_7;
  }

  if ([v1 isEqualToString:@"wra"])
  {
    *&v4 = sub_10001E974();
    goto LABEL_8;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100032028();
  }

  v5 = 0;
LABEL_9:

  return v5;
}

id sub_10001F3FC(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 modelDescription];
  v6 = [v5 metadata];

  if (v6)
  {
    v7 = [v3 modelDescription];
    v8 = [v7 metadata];
    v9 = [v8 objectForKeyedSubscript:MLModelVersionStringKey];

    v10 = [v3 modelDescription];
    v11 = [v10 predictedFeatureName];

    v12 = [v3 modelDescription];
    v13 = v12;
    if (v11)
    {
      v14 = [v12 predictedFeatureName];
      v15 = [v14 copy];
LABEL_9:
      v18 = v15;

      v20[0] = @"mlModel";
      v20[1] = @"version";
      v21[0] = v3;
      v21[1] = v9;
      v20[2] = @"predictedFeatureNames";
      v21[2] = v18;
      v16 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:3];

      goto LABEL_10;
    }

    v17 = [v12 outputDescriptionsByName];

    if (v17)
    {
      v13 = [v3 modelDescription];
      v14 = [v13 outputDescriptionsByName];
      v15 = [v14 allKeys];
      goto LABEL_9;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000320A0();
    }

    v16 = 0;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100032118();
    }

    v16 = 0;
    v9 = &stru_1000499A0;
  }

LABEL_10:

  return v16;
}

id sub_10001F62C(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 pathForResource:v3 ofType:@"mlmodelc"];
  if (v4)
  {
    v5 = [NSURL fileURLWithPath:v4];
    v6 = [MLModel modelWithContentsOfURL:v5 error:0];

    if (v6)
    {
      v7 = sub_10001F3FC(v6, v3);

      goto LABEL_9;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100032190();
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100032208();
  }

  v7 = 0;
LABEL_9:

  return v7;
}

__darwin_time_t sub_10001F754()
{
  v1.tv_sec = 0;
  v1.tv_nsec = 0;
  clock_gettime(_CLOCK_MONOTONIC_RAW, &v1);
  return v1.tv_sec;
}

uint64_t sub_10001F78C(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 1;
  }

  return isKindOfClass & 1;
}

BOOL sub_10001F7E4(void *a1)
{
  v1 = a1;
  v2 = (sub_10001F78C(v1) & 1) != 0 || [v1 length] == 0;

  return v2;
}

BOOL sub_10001F830(void *a1)
{
  v1 = a1;
  v2 = (sub_10001F78C(v1) & 1) != 0 || [v1 count] == 0;

  return v2;
}

uint64_t sub_10001F87C(void *a1)
{
  v1 = a1;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t sub_10001F8C8(void *a1)
{
  v1 = a1;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t sub_10001F914(void *a1)
{
  v1 = a1;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

id sub_10001F960()
{
  if (qword_1000579F0 != -1)
  {
    sub_100032280();
  }

  v1 = qword_1000579E8;

  return v1;
}

void sub_10001F9A4(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_1000579E8;
  qword_1000579E8 = v1;

  [qword_1000579E8 setUnitsStyle:2];
  v3 = qword_1000579E8;
  v4 = [qword_1000579E8 allowedUnits] | 0x60;

  [v3 setAllowedUnits:v4];
}

NSObject *sub_10001FA0C()
{
  v0 = IOPSCopyBatteryLevelLimits();
  if (sub_10001F78C(v0))
  {
    v1 = sub_10001EFF4();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "getCurrentSystemChargeLimit: There is no charge limit set.", buf, 2u);
    }

    v2 = &off_10004D5D0;
    goto LABEL_29;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = v0;
  v1 = v0;
  v3 = [v1 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
LABEL_7:
    v6 = 0;
    while (1)
    {
      if (*v17 != v5)
      {
        objc_enumerationMutation(v1);
      }

      v7 = *(*(&v16 + 1) + 8 * v6);
      if ((sub_10001F914(v7) & 1) == 0)
      {
        v8 = sub_10001EFF4();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
        {
          sub_100032294(buf, &buf[1]);
        }

        goto LABEL_22;
      }

      v8 = [v7 objectForKeyedSubscript:@"chargeSocLimitOwner"];
      if ((sub_10001F87C(v8) & 1) == 0)
      {
        break;
      }

      if ([v8 isEqualToNumber:&off_10004D528])
      {
        v2 = [v7 objectForKeyedSubscript:@"chargeSocLimitSoc"];
        if (sub_10001F87C(v2))
        {

          goto LABEL_28;
        }

        v9 = sub_10001EFF4();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          sub_1000322EC(&v12, v13);
        }

        goto LABEL_21;
      }

LABEL_22:

      if (v4 == ++v6)
      {
        v4 = [v1 countByEnumeratingWithState:&v16 objects:v21 count:16];
        if (v4)
        {
          goto LABEL_7;
        }

        goto LABEL_24;
      }
    }

    v2 = sub_10001EFF4();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1000322C0(&v14, v15);
    }

LABEL_21:

    goto LABEL_22;
  }

LABEL_24:

  v1 = sub_10001EFF4();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    sub_100032318(v1);
  }

  v2 = &off_10004D5D0;
LABEL_28:
  v0 = v11;
LABEL_29:

  return v2;
}

id sub_10001FCC4()
{
  if (IOPSCopyChargeStatus())
  {
    v0 = sub_10001EFF4();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      sub_10003235C();
    }
  }

  else
  {
    v0 = 0;
    if (!sub_10001F830(0))
    {
      v1 = [0 objectForKeyedSubscript:@"chargeStatus"];

      if (v1)
      {
        v2 = [0 objectForKeyedSubscript:@"chargeStatus"];
        goto LABEL_11;
      }

      v3 = sub_10001EFF4();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
      {
        sub_1000323D0(v3);
      }
    }
  }

  v2 = 0;
LABEL_11:

  return v2;
}

id sub_10001FDB4()
{
  if (qword_100057A00 != -1)
  {
    sub_10003244C();
  }

  v0 = qword_1000579F8;
  if (qword_1000579F8)
  {
    v0 = [qword_1000579F8 UUIDString];
  }

  return v0;
}

void sub_10001FE04(id a1)
{
  *in = 0u;
  memset(v6, 0, sizeof(v6));
  v3 = 37;
  if (!sysctlbyname("kern.bootsessionuuid", in, &v3, 0, 0))
  {
    v6[20] = 0;
    memset(uu, 0, sizeof(uu));
    if (!uuid_parse(in, uu))
    {
      v1 = [[NSUUID alloc] initWithUUIDBytes:uu];
      v2 = qword_1000579F8;
      qword_1000579F8 = v1;
    }
  }
}

void sub_10001FEBC(id a1)
{
  qword_1000579C0 = os_log_create("com.apple.batteryintelligence", "BIUtilities");

  _objc_release_x1();
}

void sub_10001FF10(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, a5, 2u);
}

uint64_t sub_100020398(uint64_t a1)
{
  qword_100057A18 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_100023320(id a1)
{
  v1 = sub_10001DEC4("BatteryAnalysisService");
  v2 = qword_100057A38;
  qword_100057A38 = v1;

  v3 = objc_alloc_init(BatteryAnalysisService);
  v4 = qword_100057A28;
  qword_100057A28 = v3;

  v5 = qword_100057A38;
  if (os_log_type_enabled(qword_100057A38, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Started BatteryAnalysisService sharedInstance", v6, 2u);
  }
}

void sub_100023CBC(uint64_t a1)
{
  v2 = os_transaction_create();
  if (*(a1 + 40))
  {
    v3 = objc_alloc_init(BIBatteryAnalysisOutput);
    if (([BIBatteryAnalysisSharedResources isTargetValid:*(a1 + 48)]& 1) != 0)
    {
      v4 = +[BIBatteryAnalysisSharedResources sharedTargetDetails];
      v5 = [NSNumber numberWithInteger:*(a1 + 48)];
      v6 = [v4 objectForKey:v5];

      v7 = [*(a1 + 32) targetOutputs];
      v8 = [v6 friendlyName];
      v9 = [v7 objectForKey:v8];

      if (v9)
      {
        v10 = sub_10001F784();
        v11 = (v10 - [v9 lastUpdatedMonotonicTime]) / 1000000000.0;
        v12 = [v9 estimateObj];
        [v12 estimate];
        v14 = v13;

        if (v11 <= 0.0)
        {
          [v3 setAdditionalInformation:2];
        }

        else
        {
          [v3 setSocAtEstimateTime:sub_10001E8F4()];
          [v3 setEstimate:v14 - v11];
          v15 = [v9 estimateObj];
          [v3 setEndSOC:{objc_msgSend(v15, "endSOC")}];

          v16 = [v9 estimateObj];
          [v16 confidenceScore];
          [v3 setConfidenceScore:?];

          v17 = [v9 estimateObj];
          [v3 setAdditionalInformation:{objc_msgSend(v17, "additionalInformation")}];

          v18 = [v9 estimateObj];
          [v3 setIsFirstEstimate:{objc_msgSend(v18, "isFirstEstimate")}];

          v19 = [v9 estimateObj];
          [v3 setIsEstimateOverridden:{objc_msgSend(v19, "isEstimateOverridden")}];
        }

        v26 = qword_100057A38;
        if (os_log_type_enabled(qword_100057A38, OS_LOG_TYPE_DEFAULT))
        {
          v27 = v26;
          v28 = [v6 friendlyName];
          v29 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 additionalInformation]);
          v30 = 138412802;
          v31 = v28;
          v32 = 2112;
          v33 = v3;
          v34 = 2112;
          v35 = v29;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Sent BIBatteryAnalysisOutput for %@ target - output: %@, additional information: %@.", &v30, 0x20u);
        }

        (*(*(a1 + 40) + 16))();
      }

      else
      {
        [v3 setAdditionalInformation:2];
        v23 = qword_100057A38;
        if (os_log_type_enabled(qword_100057A38, OS_LOG_TYPE_DEBUG))
        {
          sub_100032EAC(v23, v6);
        }

        v24 = *(a1 + 40);
        v25 = [NSError errorWithDomain:BIBatteryAnalysisErrorDomain code:3 userInfo:0];
        (*(v24 + 16))(v24, v3, v25);
      }
    }

    else
    {
      [v3 setAdditionalInformation:2];
      v21 = qword_100057A38;
      if (os_log_type_enabled(qword_100057A38, OS_LOG_TYPE_DEBUG))
      {
        sub_100032DF4((a1 + 48), v21);
      }

      v22 = *(a1 + 40);
      v6 = [NSError errorWithDomain:BIBatteryAnalysisErrorDomain code:1 userInfo:0];
      (*(v22 + 16))(v22, v3, v6);
    }
  }

  else
  {
    v20 = qword_100057A38;
    if (os_log_type_enabled(qword_100057A38, OS_LOG_TYPE_ERROR))
    {
      sub_100032F50(a1, v20);
    }
  }
}

void sub_1000241A0(uint64_t a1)
{
  v2 = os_transaction_create();
  v3 = (a1 + 40);
  if (([BIBatteryAnalysisSharedResources isTargetValid:*(a1 + 40)]& 1) != 0)
  {
    v4 = objc_alloc_init(BIBatteryAnalysisContainer);
    v5 = objc_alloc_init(BIBatteryAnalysisOutput);
    [v5 setEstimate:*(a1 + 48)];
    [v5 setSocAtEstimateTime:*(a1 + 56)];
    [v5 setEndSOC:*(a1 + 64)];
    [v5 setConfidenceScore:*(a1 + 72)];
    [v5 setIsFirstEstimate:*(a1 + 88)];
    [v5 setIsEstimateOverridden:*(a1 + 89)];
    [v5 setAdditionalInformation:*(a1 + 80)];
    [v4 setEstimateObj:v5];
    [v4 setLastUpdatedMonotonicTime:sub_10001F784()];
    v6 = +[BIBatteryAnalysisSharedResources sharedTargetDetails];
    v7 = [NSNumber numberWithInteger:*(a1 + 40)];
    v8 = [v6 objectForKey:v7];

    v9 = *(*(a1 + 32) + 16);
    v10 = [v8 friendlyName];
    [v9 setObject:v4 forKey:v10];

    v23 = 0;
    v11 = [NSKeyedArchiver archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v23];
    v12 = v23;
    if (v12)
    {
      v13 = qword_100057A38;
      if (os_log_type_enabled(qword_100057A38, OS_LOG_TYPE_ERROR))
      {
        sub_1000330F8(v13, v8, v12);
      }
    }

    else
    {
      v15 = qword_100057A40;
      v16 = [v8 friendlyName];
      [v15 setObject:v11 forKey:v16];

      v17 = qword_100057A38;
      if (os_log_type_enabled(qword_100057A38, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *v3;
        v19 = v17;
        v20 = [NSNumber numberWithInteger:v18];
        v21 = [v4 estimateObj];
        v22 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v21 additionalInformation]);
        *buf = 138412802;
        v25 = v20;
        v26 = 2112;
        v27 = v4;
        v28 = 2112;
        v29 = v22;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Estimate for %@ target updated - output: %@, additional information: %@", buf, 0x20u);
      }
    }
  }

  else
  {
    v14 = qword_100057A38;
    if (os_log_type_enabled(qword_100057A38, OS_LOG_TYPE_ERROR))
    {
      sub_100033008((a1 + 40), v14);
    }
  }
}

void sub_10002454C(uint64_t a1)
{
  v26 = os_transaction_create();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v2 = &IOConnectCallMethod_ptr;
  obj = +[BIBatteryAnalysisSharedResources sharedTargetDetails];
  v29 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v29)
  {
    v3 = *v32;
    v28 = a1;
    do
    {
      for (i = 0; i != v29; i = i + 1)
      {
        if (*v32 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v31 + 1) + 8 * i);
        v6 = [v2[144] sharedTargetDetails];
        v7 = [v6 objectForKey:v5];

        v8 = *(*(a1 + 32) + 16);
        v9 = [v7 friendlyName];
        v10 = [v8 objectForKey:v9];

        if (v10)
        {
          v11 = *(a1 + 40);
          v12 = [v10 estimateObj];
          [v12 setAdditionalInformation:v11];

          v30 = 0;
          v13 = [NSKeyedArchiver archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v30];
          v14 = v30;
          if (v14)
          {
            v15 = qword_100057A38;
            if (os_log_type_enabled(qword_100057A38, OS_LOG_TYPE_ERROR))
            {
              v16 = v15;
              v17 = [v7 friendlyName];
              *buf = 138412546;
              v36 = v17;
              v37 = 2112;
              v38 = v14;
              _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "updateAdditionalInformationForAllTarget error: Could not encode the object and update defaults for %@ target with error: %@", buf, 0x16u);
            }
          }

          else
          {
            v19 = qword_100057A40;
            [v7 friendlyName];
            v21 = v20 = v3;
            [v19 setObject:v13 forKey:v21];

            v3 = v20;
            v22 = qword_100057A38;
            if (os_log_type_enabled(qword_100057A38, OS_LOG_TYPE_DEFAULT))
            {
              v23 = *(v28 + 40);
              v24 = v22;
              v3 = v20;
              v25 = [NSNumber numberWithInteger:v23];
              *buf = 138412546;
              v36 = v5;
              v37 = 2112;
              v38 = v25;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Target %@ updated with additional information: %@", buf, 0x16u);

              v2 = &IOConnectCallMethod_ptr;
            }
          }

          a1 = v28;
        }

        else
        {
          v18 = qword_100057A38;
          if (os_log_type_enabled(qword_100057A38, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v36 = v5;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Estimates do not exist within the defaults for target %@", buf, 0xCu);
          }
        }
      }

      v29 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v29);
  }
}

void sub_100024FE0(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[battery_analysis_ttl_model_7ssi6t5tb5 alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_1000252A8(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [battery_analysis_ttl_model_7ssi6t5tb5Output alloc];
    v7 = [v12 featureValueForName:@"ttl_prediction"];
    v8 = [v7 multiArrayValue];
    v9 = [(battery_analysis_ttl_model_7ssi6t5tb5Output *)v6 initWithTtl_prediction:v8];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

void sub_100025480(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [battery_analysis_ttl_model_7ssi6t5tb5Output alloc];
    v7 = [v12 featureValueForName:@"ttl_prediction"];
    v8 = [v7 multiArrayValue];
    v9 = [(battery_analysis_ttl_model_7ssi6t5tb5Output *)v6 initWithTtl_prediction:v8];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

void sub_100025E2C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[battery_analysis_tt80_model_bkwqiw7f79 alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_1000260F4(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [battery_analysis_tt80_model_bkwqiw7f79Output alloc];
    v7 = [v12 featureValueForName:@"tt80_prediction"];
    v8 = [v7 multiArrayValue];
    v9 = [(battery_analysis_tt80_model_bkwqiw7f79Output *)v6 initWithTt80_prediction:v8];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

void sub_1000262CC(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [battery_analysis_tt80_model_bkwqiw7f79Output alloc];
    v7 = [v12 featureValueForName:@"tt80_prediction"];
    v8 = [v7 multiArrayValue];
    v9 = [(battery_analysis_tt80_model_bkwqiw7f79Output *)v6 initWithTt80_prediction:v8];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

void sub_100026C78(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[ocv_drift_model alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_100026F40(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [ocv_drift_modelOutput alloc];
    v7 = [v12 featureValueForName:@"Prediction"];
    v8 = [v7 multiArrayValue];
    v9 = [(ocv_drift_modelOutput *)v6 initWithPrediction:v8];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

void sub_100027118(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [ocv_drift_modelOutput alloc];
    v7 = [v12 featureValueForName:@"Prediction"];
    v8 = [v7 multiArrayValue];
    v9 = [(ocv_drift_modelOutput *)v6 initWithPrediction:v8];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

void sub_100027AC4(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[battery_analysis_tt80_model_xtgs7ejyqa alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_100027D8C(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [battery_analysis_tt80_model_xtgs7ejyqaOutput alloc];
    v7 = [v12 featureValueForName:@"tt80_prediction"];
    v8 = [v7 multiArrayValue];
    v9 = [(battery_analysis_tt80_model_xtgs7ejyqaOutput *)v6 initWithTt80_prediction:v8];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

void sub_100027F64(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [battery_analysis_tt80_model_xtgs7ejyqaOutput alloc];
    v7 = [v12 featureValueForName:@"tt80_prediction"];
    v8 = [v7 multiArrayValue];
    v9 = [(battery_analysis_tt80_model_xtgs7ejyqaOutput *)v6 initWithTt80_prediction:v8];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

void sub_100028910(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[battery_analysis_tt80_model_7gzamb2979 alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_100028BD8(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [battery_analysis_tt80_model_7gzamb2979Output alloc];
    v7 = [v12 featureValueForName:@"tt80_prediction"];
    v8 = [v7 multiArrayValue];
    v9 = [(battery_analysis_tt80_model_7gzamb2979Output *)v6 initWithTt80_prediction:v8];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

void sub_100028DB0(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [battery_analysis_tt80_model_7gzamb2979Output alloc];
    v7 = [v12 featureValueForName:@"tt80_prediction"];
    v8 = [v7 multiArrayValue];
    v9 = [(battery_analysis_tt80_model_7gzamb2979Output *)v6 initWithTt80_prediction:v8];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

void sub_1000299E8(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[nccp_wra_qmaxp_seq_model alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_100029D9C(uint64_t a1, void *a2, void *a3)
{
  v21 = a2;
  if (v21)
  {
    v20 = a3;
    v5 = [nccp_wra_qmaxp_seq_modelOutput alloc];
    v19 = [v21 featureValueForName:@"nccp_wra_qmaxp_q10_forecast"];
    v6 = [v19 multiArrayValue];
    v7 = [v21 featureValueForName:@"nccp_wra_qmaxp_q25_forecast"];
    v8 = [v7 multiArrayValue];
    v9 = [v21 featureValueForName:@"nccp_wra_qmaxp_q50_forecast"];
    v10 = [v9 multiArrayValue];
    v11 = [v21 featureValueForName:@"nccp_wra_qmaxp_q75_forecast"];
    v12 = [v11 multiArrayValue];
    [v21 featureValueForName:@"nccp_wra_qmaxp_q90_forecast"];
    v13 = v18 = a1;
    v14 = [v13 multiArrayValue];
    v15 = [(nccp_wra_qmaxp_seq_modelOutput *)v5 initWithNccp_wra_qmaxp_q10_forecast:v6 nccp_wra_qmaxp_q25_forecast:v8 nccp_wra_qmaxp_q50_forecast:v10 nccp_wra_qmaxp_q75_forecast:v12 nccp_wra_qmaxp_q90_forecast:v14];

    (*(*(v18 + 32) + 16))();
  }

  else
  {
    v16 = *(a1 + 32);
    v17 = *(v16 + 16);
    v15 = a3;
    v17(v16, 0, v15);
  }
}

void sub_10002A054(uint64_t a1, void *a2, void *a3)
{
  v21 = a2;
  if (v21)
  {
    v20 = a3;
    v5 = [nccp_wra_qmaxp_seq_modelOutput alloc];
    v19 = [v21 featureValueForName:@"nccp_wra_qmaxp_q10_forecast"];
    v6 = [v19 multiArrayValue];
    v7 = [v21 featureValueForName:@"nccp_wra_qmaxp_q25_forecast"];
    v8 = [v7 multiArrayValue];
    v9 = [v21 featureValueForName:@"nccp_wra_qmaxp_q50_forecast"];
    v10 = [v9 multiArrayValue];
    v11 = [v21 featureValueForName:@"nccp_wra_qmaxp_q75_forecast"];
    v12 = [v11 multiArrayValue];
    [v21 featureValueForName:@"nccp_wra_qmaxp_q90_forecast"];
    v13 = v18 = a1;
    v14 = [v13 multiArrayValue];
    v15 = [(nccp_wra_qmaxp_seq_modelOutput *)v5 initWithNccp_wra_qmaxp_q10_forecast:v6 nccp_wra_qmaxp_q25_forecast:v8 nccp_wra_qmaxp_q50_forecast:v10 nccp_wra_qmaxp_q75_forecast:v12 nccp_wra_qmaxp_q90_forecast:v14];

    (*(*(v18 + 32) + 16))();
  }

  else
  {
    v16 = *(a1 + 32);
    v17 = *(v16 + 16);
    v15 = a3;
    v17(v16, 0, v15);
  }
}

void sub_10002ABD8(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[battery_analysis_ttl_model_k5wmzvi5mm alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_10002AEA0(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [battery_analysis_ttl_model_k5wmzvi5mmOutput alloc];
    v7 = [v12 featureValueForName:@"ttl_prediction"];
    v8 = [v7 multiArrayValue];
    v9 = [(battery_analysis_ttl_model_k5wmzvi5mmOutput *)v6 initWithTtl_prediction:v8];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

void sub_10002B078(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [battery_analysis_ttl_model_k5wmzvi5mmOutput alloc];
    v7 = [v12 featureValueForName:@"ttl_prediction"];
    v8 = [v7 multiArrayValue];
    v9 = [(battery_analysis_ttl_model_k5wmzvi5mmOutput *)v6 initWithTtl_prediction:v8];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

void sub_10002BA24(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[tt80_lstm_regression alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_10002BCEC(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [tt80_lstm_regressionOutput alloc];
    v7 = [v12 featureValueForName:@"tt80_prediction_in_hrs"];
    v8 = [v7 multiArrayValue];
    v9 = [(tt80_lstm_regressionOutput *)v6 initWithTt80_prediction_in_hrs:v8];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

void sub_10002BEC4(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [tt80_lstm_regressionOutput alloc];
    v7 = [v12 featureValueForName:@"tt80_prediction_in_hrs"];
    v8 = [v7 multiArrayValue];
    v9 = [(tt80_lstm_regressionOutput *)v6 initWithTt80_prediction_in_hrs:v8];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

void sub_10002C870(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[battery_analysis_tt80_model_6t6qz674si alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_10002CB38(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [battery_analysis_tt80_model_6t6qz674siOutput alloc];
    v7 = [v12 featureValueForName:@"tt80_prediction"];
    v8 = [v7 multiArrayValue];
    v9 = [(battery_analysis_tt80_model_6t6qz674siOutput *)v6 initWithTt80_prediction:v8];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

void sub_10002CD10(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [battery_analysis_tt80_model_6t6qz674siOutput alloc];
    v7 = [v12 featureValueForName:@"tt80_prediction"];
    v8 = [v7 multiArrayValue];
    v9 = [(battery_analysis_tt80_model_6t6qz674siOutput *)v6 initWithTt80_prediction:v8];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

void sub_10002D75C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[state_estimation_model alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_10002DA24(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [state_estimation_modelOutput alloc];
    v7 = [v12 featureValueForName:@"health_state_estimation"];
    v8 = [v7 multiArrayValue];
    v9 = [(state_estimation_modelOutput *)v6 initWithHealth_state_estimation:v8];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

void sub_10002DBFC(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [state_estimation_modelOutput alloc];
    v7 = [v12 featureValueForName:@"health_state_estimation"];
    v8 = [v7 multiArrayValue];
    v9 = [(state_estimation_modelOutput *)v6 initWithHealth_state_estimation:v8];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

void sub_10002E06C(void *a1)
{
  v2 = a1;
  v3 = [sub_1000048D4() name];
  sub_1000048AC();
  sub_10000488C(&_mh_execute_header, v4, v5, "Failed at reading metadata for %@", v6, v7, v8, v9, v10);
}

void sub_10002E0FC(void *a1)
{
  v2 = a1;
  v3 = [sub_1000048D4() name];
  sub_1000048AC();
  sub_10000488C(&_mh_execute_header, v4, v5, "Failed at reading predicted feature name for %@", v6, v7, v8, v9, v10);
}

void sub_10002E18C(void *a1)
{
  v2 = a1;
  v3 = [sub_1000048D4() name];
  sub_1000048AC();
  sub_10000488C(&_mh_execute_header, v4, v5, "ML model file for %@ not found", v6, v7, v8, v9, v10);
}

void sub_10002E21C(void *a1)
{
  v2 = a1;
  v3 = [sub_1000048D4() name];
  sub_1000048AC();
  sub_10000488C(&_mh_execute_header, v4, v5, "Asset path for %@ not found", v6, v7, v8, v9, v10);
}

void sub_10002E3C4(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a2 name];
  sub_1000048AC();
  v8 = 2112;
  v9 = a3;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Could not get model predictions for %@ for %@", v7, 0x16u);
}

void sub_10002E480(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 objectForKey:@"health_metric"];
  sub_1000048AC();
  sub_10000488C(&_mh_execute_header, v5, v6, "Unable to get current value for metric: %@", v7, v8, v9, v10, v11);
}

void sub_10002E5C8()
{
  sub_100002CF4();
  sub_100005C54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002E648(os_log_t log)
{
  v1 = 138412290;
  v2 = qword_1000578B8;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Last feature gen date %@", &v1, 0xCu);
}

void sub_10002E6CC()
{
  sub_1000048AC();
  sub_100005C54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10002E73C()
{
  sub_100002CF4();
  sub_100005C54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002E778()
{
  sub_100002CF4();
  sub_100005C54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002E7B4()
{
  sub_1000048AC();
  sub_100005C54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10002E824()
{
  sub_1000048AC();
  sub_100005C54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10002E894()
{
  sub_100002CF4();
  sub_100005C54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002E8D0()
{
  sub_1000048AC();
  sub_100005C54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10002E940()
{
  sub_100002CF4();
  sub_100005C54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002EA90(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Logging PPS data for current health state prediction (t=0 days).", buf, 2u);
}

void sub_10002EAD0(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Comparing against current gauge values for CA logging.", buf, 2u);
}

void sub_10002EB84(uint8_t *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 absoluteURL];
  *a1 = 138412290;
  *a4 = v8;
  _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Found %@", a1, 0xCu);
}

void sub_10002EC08()
{
  sub_1000048AC();
  sub_100005C54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10002EC78()
{
  sub_100002CF4();
  sub_100005C54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002ECB4()
{
  sub_1000048AC();
  sub_100005C54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10002ED24(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "No data for this range", buf, 2u);
}

void sub_10002ED64()
{
  sub_100002CF4();
  sub_100005C54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002EDE0()
{
  sub_100002CF4();
  sub_100005C54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002EE1C()
{
  sub_1000048AC();
  v3 = 1024;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "File %@ Row count %u", v2, 0x12u);
}

void sub_10002EEA0()
{
  sub_100002CF4();
  sub_100005C54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002EEDC()
{
  sub_100002CF4();
  sub_100005C54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002EF18()
{
  sub_100002CF4();
  sub_100005C54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002F024()
{
  sub_1000048AC();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "Array %@ Median %@", v2, 0x16u);
}

void sub_10002F0A8()
{
  sub_100002CF4();
  sub_100005C54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002F154()
{
  sub_1000048AC();
  sub_100005C54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10002F23C(void *a1)
{
  [a1 count];
  sub_1000048AC();
  sub_1000048B8(&_mh_execute_header, &_os_log_default, v1, "Length of response %lu", v2, v3, v4, v5, v6);
}

void sub_10002F2B0(uint64_t a1, void *a2)
{
  v3 = [a2 startDate];
  v9 = [a2 endDate];
  sub_100005C54();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

void sub_10002F4CC()
{
  sub_1000048AC();
  sub_100005C54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10002F544()
{
  sub_1000048AC();
  sub_100005C54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10002F6E4(void *a1, void *a2)
{
  v3 = a1;
  [a2 processIdentifier];
  sub_100010320();
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Rejected new connection from pid %d. Not entitled.", v4, 8u);
}

void sub_10002F818()
{
  sub_100010320();
  sub_100005C54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10002F89C()
{
  sub_100010320();
  sub_100005C54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10002F920()
{
  sub_100010320();
  sub_100005C54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10002FA34()
{
  sub_1000048AC();
  sub_10001032C();
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "Using adjusted endSOC: %@ (+%ld)", v1, 0x16u);
}

void sub_10002FAAC()
{
  sub_1000048AC();
  sub_10001032C();
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "Using adjusted endSOC: %@ (-%ld)", v1, 0x16u);
}

void sub_10002FC64()
{
  sub_1000048AC();
  sub_100005C54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10002FE0C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Posted notification with error: %@", &v2, 0xCu);
}

void sub_10002FECC(int a1, int a2, os_log_t log)
{
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 1024;
  v5 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to write data to SMC key:%x rc:0x%x\n", v3, 0xEu);
}

void sub_10002FF54(unsigned __int8 a1, NSObject *a2)
{
  v2[0] = 67109376;
  v2[1] = a1;
  v3 = 2048;
  v4 = 4;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Invalid SMC key length:%d expected length:%lu\n", v2, 0x12u);
}

void sub_100030020(void *a1, NSObject *a2)
{
  [a1 count];
  sub_1000048AC();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Expected inputShape to have 3 dimensions, but got: %lu", v3, 0xCu);
}

void sub_1000300A8()
{
  sub_1000048AC();
  sub_100005C54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100030118(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 134218242;
  v4 = a2;
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Invalid input shape. Dimension %lu has size: %@ which is invalid.", &v3, 0x16u);
}

void sub_1000301A0(uint8_t *a1, void *a2, unsigned int *a3, NSObject *a4)
{
  v7 = [a2 intValue];
  *a1 = 67109120;
  *a3 = v7;
  _os_log_debug_impl(&_mh_execute_header, a4, OS_LOG_TYPE_DEBUG, "Feature dimension cannot be negative, but found %d, skipping..", a1, 8u);
}

void sub_10003020C(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Processing multiarray with # features = %i", v2, 8u);
}

void sub_100030284()
{
  sub_1000048AC();
  sub_100005C54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000302F4(int a1, int a2, os_log_t log)
{
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 1024;
  v5 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Processing multiarray with numTimeSteps = %i, # features = %i", v3, 0xEu);
}

void sub_1000303BC(void *a1, uint64_t a2, NSObject *a3)
{
  v4 = 134218240;
  v5 = a2;
  v6 = 2048;
  v7 = [a1 count];
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Can't create subarray starting at startIndex %lu when there are only %lu elements in the full arrays.", &v4, 0x16u);
}

void sub_100030458(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "No handler present for xpc alarm with event name:%@", &v2, 0xCu);
}

void sub_100030674(void *a1, void *a2)
{
  v3 = a1;
  object_getClassName(a2);
  sub_1000048AC();
  sub_10000488C(&_mh_execute_header, v4, v5, "Unsupported class type for entry %s", v6, v7, v8, v9, v10);
}

void sub_100030830(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to allocate DataSumAndCount array for %lu elements", buf, 0xCu);
}

void sub_100030914(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Design capacity %u", v2, 8u);
}

void sub_100030B38()
{
  sub_1000048AC();
  sub_1000191AC();
  sub_10001918C(&_mh_execute_header, v0, v1, "%@ is not of class NSNumber. Returning default value: %ld");
}

void sub_100030BA4()
{
  sub_1000048AC();
  sub_1000191AC();
  sub_100006424(&_mh_execute_header, v0, v1, "Dictionary is empty for key %@. Returning default value %ld.");
}

void sub_100030FB0()
{
  sub_1000048AC();
  v3 = 1024;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "Using device manufactureDate: %@ to compute age. Using designCapacity: %u to compute nccp/qmaxp.", v2, 0x12u);
}

void sub_100031034(void *a1, void *a2)
{
  v3 = a1;
  [a2 count];
  sub_100019150();
  v5 = a2;
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "allData (count = %lu) \n %@", v4, 0x16u);
}

void sub_100031138(void *a1, void *a2)
{
  v3 = a1;
  [a2 count];
  sub_1000048AC();
  sub_10000488C(&_mh_execute_header, v4, v5, "At least one of NCCpValues/WRaValues/QMaxpValues/cycleCountValues/ageValues had zero values added after iterating through allData (allData size= %lu)", v6, v7, v8, v9, v10);
}

void sub_100031228(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a2 allKeys];
  sub_100019150();
  v8 = a3;
  _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Multiarray generated from %@ has shape: %@", v7, 0x16u);
}

void sub_100031448(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to create dir at %@ with err %@", &v3, 0x16u);
}

void sub_100031544(_DWORD *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 AlgorithmClassName];
  *a1 = 138412290;
  *a4 = v8;
  sub_10001C7E4(&_mh_execute_header, v9, v10, "[%@] We have a request to skip");
}

void sub_1000315B8(_DWORD *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 AlgorithmClassName];
  *a1 = 138412290;
  *a4 = v8;
  sub_10001C7E4(&_mh_execute_header, v9, v10, "[%@] Invalid Data request");
}

void sub_1000316A0()
{
  sub_100002CF4();
  sub_100005C54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000316DC()
{
  sub_100002CF4();
  sub_100005C54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100031718()
{
  sub_100002CF4();
  sub_100005C54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100031754()
{
  sub_100002CF4();
  sub_100005C54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100031804()
{
  sub_1000048AC();
  sub_100005C54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100031950()
{
  sub_1000048AC();
  sub_100005C54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000319C8()
{
  sub_10000640C();
  sub_100005C54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100031A40()
{
  sub_10000640C();
  sub_100005C54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100031AB8()
{
  sub_1000048AC();
  sub_100005C54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100031B44()
{
  sub_10000640C();
  sub_100005C54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100031BBC(uint64_t a1, void *a2)
{
  if (os_log_type_enabled(qword_1000579C0, OS_LOG_TYPE_DEFAULT))
  {
    sub_10001FF00();
    _os_log_impl(v3, v4, v5, v6, v7, 8u);
  }

  *a2 = 0;
}

void sub_100031C64(uint64_t a1, void *a2)
{
  if (os_log_type_enabled(qword_1000579C0, OS_LOG_TYPE_DEFAULT))
  {
    sub_10001FF00();
    _os_log_impl(v3, v4, v5, v6, v7, 8u);
  }

  *a2 = 0;
}

void sub_100031D0C(void *a1)
{
  if (os_log_type_enabled(qword_1000579C0, OS_LOG_TYPE_DEFAULT))
  {
    sub_10001FF00();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_100031D70(void *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100005C54();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_100031DDC()
{
  objc_opt_class();
  sub_1000048AC();
  v1 = v0;
  sub_100005C54();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100031F40(unsigned __int8 a1, int a2)
{
  v2[0] = 67109376;
  v2[1] = a2;
  v3 = 1024;
  v4 = a1;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Year digit %u Week digits %u", v2, 0xEu);
}

void sub_100032028()
{
  sub_1000048AC();
  sub_100005C54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000320A0()
{
  sub_1000048AC();
  sub_100005C54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100032118()
{
  sub_1000048AC();
  sub_100005C54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100032190()
{
  sub_1000048AC();
  sub_100005C54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100032208()
{
  sub_1000048AC();
  sub_100005C54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000323D0(os_log_t log)
{
  v1[0] = 67109120;
  v1[1] = 0;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "getChargingStatus: Error in fetching charging status %d", v1, 8u);
}

void sub_100032460(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Could not create ppsId for %@", &v2, 0xCu);
}

void sub_100032580(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not send data to core analytics for event: %@", &v2, 0xCu);
}

void sub_10003266C()
{
  sub_1000048AC();
  sub_100005C54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100032744()
{
  sub_1000048AC();
  sub_100005C54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000327B4()
{
  sub_1000048AC();
  sub_100005C54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100032824(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a2 objectAtIndexedSubscript:a3];
  sub_1000048AC();
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Key %@ does not exist in inputDict. Unable to obtain value. Returning", v7, 0xCu);
}

void sub_100032AAC(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a2 friendlyName];
  sub_1000048AC();
  v8 = 2112;
  v9 = a3;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error while generating features for %@ target: %@", v7, 0x16u);
}

void sub_100032C04()
{
  sub_1000048AC();
  sub_100005C54();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100032D58(void *a1, void *a2)
{
  v3 = a1;
  v4[0] = 67109120;
  v4[1] = [a2 processIdentifier];
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "BatteryAnalysisService: rejected new connection from pid %d. Not entitled", v4, 8u);
}

void sub_100032DF4(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a2;
  v4 = [NSNumber numberWithInteger:v2];
  sub_1000048AC();
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Invalid target: %@", v5, 0xCu);
}

void sub_100032EAC(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 friendlyName];
  sub_1000048AC();
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "BIBatteryAnalysisOutput for %@ target is not available.", v5, 0xCu);
}

void sub_100032F50(uint64_t a1, void *a2)
{
  v2 = *(a1 + 48);
  v3 = a2;
  v4 = [NSNumber numberWithInteger:v2];
  sub_1000048AC();
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "XPC handler is nil/invalid for target: %@. Client disconnected or connection invalid. Cannot deliver response.", v5, 0xCu);
}

void sub_100033008(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a2;
  v4 = [NSNumber numberWithInteger:v2];
  v5 = +[BIBatteryAnalysisSharedResources sharedTargetDetails];
  v6 = [v5 allKeys];
  v7 = 138412546;
  v8 = v4;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Estimate not updated. Invalid target: %@, Valid targets are: %@", &v7, 0x16u);
}

void sub_1000330F8(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a2 friendlyName];
  sub_1000048AC();
  v8 = 2112;
  v9 = a3;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "updateEstimate error: Could not encode the object and update defaults for %@ target with error: %@", v7, 0x16u);
}