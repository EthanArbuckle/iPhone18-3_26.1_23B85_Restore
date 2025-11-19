void sub_1000012E8(id a1)
{
  v1 = PLLogSignpostReader();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_10000A9E8(v1, v2, v3, v4, v5, v6, v7, v8);
  }

  v9 = dispatch_time(0, 60000000000);
  dispatch_after(v9, &_dispatch_main_q, &stru_100014408);
}

void sub_100001354(id a1)
{
  v1 = PLLogSignpostReader();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Requesting exit in invalidation handler...", v2, 2u);
  }

  xpc_transaction_exit_clean();
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = getpid();
  v4 = PLLogSignpostReader();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10000AA5C(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  proc_disable_cpumon();
  NSLog(@"In the main of the XPCSignpostReader Service");
  v11 = objc_opt_new();
  v12 = +[NSXPCListener serviceListener];
  [v12 setDelegate:v11];
  [v12 resume];

  return 5000;
}

void sub_100001464(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 8u);
}

double sub_100001790(uint64_t a1, void *a2)
{
  [a2 durationSeconds];
  v4 = *(a1 + 32);
  result = *(v4 + 48) + (v3 * 1000.0);
  *(v4 + 48) = result;
  return result;
}

double sub_100001ABC(uint64_t a1, void *a2)
{
  [a2 durationSeconds];
  v4 = *(a1 + 32);
  result = *(v4 + 48) + (v3 * 1000.0);
  *(v4 + 48) = result;
  return result;
}

void sub_100001EF8(id a1)
{
  v1 = PLLogSignpostReader();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "SIGTERM handler invoked!", v2, 2u);
  }

  exit(0);
}

id PLLogSignpostReader()
{
  if (qword_100019450 != -1)
  {
    sub_10000AAC8();
  }

  v1 = qword_100019448;

  return v1;
}

void sub_100001F9C(id a1)
{
  qword_100019448 = os_log_create("com.apple.PerfPowerServicesSignpostReader", "");

  _objc_release_x1();
}

void sub_100003354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

float sub_100003370(uint64_t a1, void *a2)
{
  [a2 durationSeconds];
  result = v3 * 1000.0;
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

void sub_100004744(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = +[NSMutableDictionary dictionary];
  v8 = [*(*(a1 + 32) + 72) objectForKeyedSubscript:v6];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_1000048AC;
  v14 = &unk_100014538;
  v15 = v7;
  v9 = v7;
  [v8 enumerateKeysAndObjectsUsingBlock:&v11];

  v16[0] = @"appSignpostDurations";
  v16[1] = @"appSignpostMetrics";
  v17[0] = v5;
  v17[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2, v11, v12, v13, v14];
  [*(a1 + 40) setObject:v10 forKey:v6];
}

void sub_1000048AC(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 getMetricDictionary];
  [v4 setObject:v6 forKey:v5];
}

void sub_100004E78(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v5;
      v8 = v6;
      if ([v8 count])
      {
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v9 = v8;
        v10 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v10)
        {
          v11 = v10;
          v16 = v8;
          v17 = v6;
          v18 = v5;
          v12 = *v20;
          do
          {
            for (i = 0; i != v11; i = i + 1)
            {
              if (*v20 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v19 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [*(a1 + 32) addSubsystem:v7 category:v14];
                v15 = PLLogSignpostReader();
                if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412546;
                  v24 = v7;
                  v25 = 2112;
                  v26 = v14;
                  _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "adding %@,%@ to signpost allowlist", buf, 0x16u);
                }
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v11);
          v6 = v17;
          v5 = v18;
          v8 = v16;
        }
      }

      else
      {
        [*(a1 + 32) addSubsystem:v7 category:0];
        v9 = PLLogSignpostReader();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          sub_10000B074();
        }
      }
    }
  }
}

void sub_100005378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000053A4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000053BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 argument];
  v5 = [v4 type];

  if (v5 == 3)
  {
    v6 = [v3 placeholderTokens];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000549C;
    v9[3] = &unk_1000145B0;
    v11 = *(a1 + 32);
    v7 = v3;
    v8 = *(a1 + 40);
    v10 = v7;
    v12 = v8;
    [v6 enumerateObjectsUsingBlock:v9];
  }
}

uint64_t sub_10000549C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  if ([v12 containsString:@"name="])
  {
    if ([v12 isEqualToString:@"name=sx"])
    {
      v6 = 40;
    }

    else
    {
      if (![v12 isEqualToString:@"name=sy"])
      {
LABEL_7:
        *a4 = 1;
        goto LABEL_8;
      }

      v6 = 48;
    }

    v7 = [*(a1 + 32) argument];
    v8 = [v7 argumentObject];
    v9 = *(*(a1 + v6) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    goto LABEL_7;
  }

LABEL_8:

  return _objc_release_x1();
}

uint64_t sub_1000058D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 category];
  v5 = [v3 name];
  v6 = [v3 beginEvent];
  v7 = [v6 processName];

  v8 = [v3 endEvent];
  v9 = [v8 processName];
  v10 = [v9 isEqualToString:v7];

  if ((v10 & 1) == 0)
  {
    v11 = PLLogSignpostReader();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_10000B2C4(v7, v3);
    }
  }

  [v3 durationSeconds];
  v13 = 0;
  if (v4 && v5 && v7)
  {
    v14 = v12;
    v15 = [*(a1 + 32) objectForKey:v4];

    if (!v15)
    {
      v16 = objc_alloc_init(NSMutableDictionary);
      [*(a1 + 32) setObject:v16 forKeyedSubscript:v4];
    }

    v17 = [*(a1 + 32) objectForKeyedSubscript:v4];
    v18 = [v17 objectForKey:v5];

    if (!v18)
    {
      v19 = objc_alloc_init(NSMutableDictionary);
      v20 = [*(a1 + 32) objectForKeyedSubscript:v4];
      [v20 setObject:v19 forKeyedSubscript:v5];
    }

    v21 = v14;
    if ([v4 isEqualToString:@"ScrollView"])
    {
      if (([v5 isEqualToString:@"Scroll_Dragging"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"Scroll_Deceleration") & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"Scroll_Animating"))
      {
        v22 = PLLogSignpostReader();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          sub_10000B37C();
        }

        v23 = [v3 number2Name];
        if (v23)
        {
          v24 = [v3 number2Value];
          [v24 doubleValue];
          v26 = v25;

          v27 = [*(a1 + 32) objectForKeyedSubscript:v4];
          v28 = [v27 objectForKeyedSubscript:v5];
          v29 = [v28 objectForKey:v7];

          if (!v29)
          {
            v30 = objc_alloc_init(NSMutableDictionary);
            v31 = [*(a1 + 32) objectForKeyedSubscript:v4];
            v32 = [v31 objectForKeyedSubscript:v5];
            [v32 setObject:v30 forKeyedSubscript:v7];
          }

          v33 = [*(a1 + 40) getScrollDirectionForSignpostInterval:v3];
          if (!v33)
          {
            v53 = 0;
            v13 = 0;
LABEL_34:

            goto LABEL_35;
          }

          v88 = v23;
          v34 = [*(a1 + 32) objectForKeyedSubscript:v4];
          v35 = [v34 objectForKeyedSubscript:v5];
          v36 = [v35 objectForKeyedSubscript:v7];
          v37 = [v36 objectForKey:v33];

          if (!v37)
          {
            v38 = objc_alloc_init(NSMutableDictionary);
            v39 = [*(a1 + 32) objectForKeyedSubscript:v4];
            v40 = [v39 objectForKeyedSubscript:v5];
            v41 = [v40 objectForKeyedSubscript:v7];
            [v41 setObject:v38 forKeyedSubscript:v33];

            v42 = [*(a1 + 32) objectForKeyedSubscript:v4];
            v43 = [v42 objectForKeyedSubscript:v5];
            v44 = [v43 objectForKeyedSubscript:v7];
            v45 = [v44 objectForKeyedSubscript:v33];
            [v45 setObject:&off_100015A58 forKeyedSubscript:v88];

            v46 = [*(a1 + 32) objectForKeyedSubscript:v4];
            v47 = [v46 objectForKeyedSubscript:v5];
            v48 = [v47 objectForKeyedSubscript:v7];
            v49 = [v48 objectForKeyedSubscript:v33];
            [v49 setObject:&off_100015A10 forKeyedSubscript:@"Count"];
          }

          v86 = a1;
          v50 = [*(a1 + 32) objectForKeyedSubscript:v4];
          v51 = [v50 objectForKeyedSubscript:v5];
          v52 = [v51 objectForKeyedSubscript:v7];
          v53 = [v52 objectForKeyedSubscript:v33];

          v54 = [v53 objectForKeyedSubscript:v88];
          [v54 doubleValue];
          v56 = [NSNumber numberWithDouble:v26 + v55];
          [v53 setObject:v56 forKeyedSubscript:v88];
          goto LABEL_28;
        }
      }

      else
      {
        v23 = 0;
      }

      v33 = 0;
      v53 = 0;
      goto LABEL_32;
    }

    v57 = [*(a1 + 32) objectForKeyedSubscript:v4];
    v58 = [v57 objectForKeyedSubscript:v5];
    v59 = [v58 objectForKey:v7];

    if (!v59)
    {
      v60 = objc_alloc_init(NSMutableDictionary);
      v61 = [*(a1 + 32) objectForKeyedSubscript:v4];
      v62 = [v61 objectForKeyedSubscript:v5];
      [v62 setObject:v60 forKeyedSubscript:v7];

      v63 = [*(a1 + 32) objectForKeyedSubscript:v4];
      v64 = [v63 objectForKeyedSubscript:v5];
      v65 = [v64 objectForKeyedSubscript:v7];
      [v65 setObject:&off_100015A58 forKeyedSubscript:@"Duration"];

      v66 = [*(a1 + 32) objectForKeyedSubscript:v4];
      v67 = [v66 objectForKeyedSubscript:v5];
      v68 = [v67 objectForKeyedSubscript:v7];
      [v68 setObject:&off_100015A10 forKeyedSubscript:@"Count"];
    }

    v86 = a1;
    v69 = [*(a1 + 32) objectForKeyedSubscript:v4];
    v70 = [v69 objectForKeyedSubscript:v5];
    v53 = [v70 objectForKeyedSubscript:v7];

    v54 = [v53 objectForKeyedSubscript:@"Duration"];
    [v54 doubleValue];
    v56 = [NSNumber numberWithDouble:v71 + v21];
    [v53 setObject:v56 forKeyedSubscript:@"Duration"];
    v88 = 0;
    v33 = 0;
LABEL_28:

    v72 = [v53 objectForKeyedSubscript:@"Count"];
    v73 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v72 intValue] + 1);
    [v53 setObject:v73 forKeyedSubscript:@"Count"];

    a1 = v86;
    v23 = v88;
LABEL_32:
    v74 = PLLogSignpostReader();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
    {
      v76 = &stru_1000149D0;
      if (v33)
      {
        v76 = v33;
      }

      v81 = v76;
      v87 = [*(a1 + 32) objectForKeyedSubscript:v4];
      v84 = [v87 objectForKeyedSubscript:v5];
      v83 = [v84 objectForKeyedSubscript:v7];
      v77 = [v83 objectForKeyedSubscript:@"Duration"];
      v82 = [*(a1 + 32) objectForKeyedSubscript:v4];
      [v82 objectForKeyedSubscript:v5];
      v85 = v33;
      v78 = v89 = v23;
      v79 = [v78 objectForKeyedSubscript:v7];
      v80 = [v79 objectForKeyedSubscript:@"Count"];
      *buf = 138413826;
      v91 = v4;
      v92 = 2112;
      v93 = v5;
      v94 = 2112;
      v95 = v7;
      v96 = 2112;
      v97 = v81;
      v98 = 2048;
      v99 = v21;
      v100 = 2112;
      v101 = v77;
      v102 = 2112;
      v103 = v80;
      _os_log_debug_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEBUG, "Got signpostInterval %@,%@,%@,%@: %.3f (total = %@) (count = %@)", buf, 0x48u);

      v23 = v89;
      v33 = v85;
    }

    v13 = 1;
    goto LABEL_34;
  }

LABEL_35:

  return v13;
}

uint64_t sub_100007124(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 subsystem];
  v6 = [v3 category];
  LOBYTE(v4) = [v4 passesSubsystem:v5 category:v6];

  if (v4)
  {
    if (*(a1 + 80) == 1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [*(a1 + 40) signpostAnimationIntervalData:v3 forTaskingConfig:*(a1 + 48)];
    }

    else
    {
      v7 = [*(a1 + 40) signpostIntervalData:v3 forTaskingConfig:*(a1 + 48)];
    }

    v12 = v7;
    [*(a1 + 56) addObject:v7];

    if ([*(a1 + 56) count] >= 0xC8)
    {
      *(*(*(a1 + 72) + 8) + 24) = [*(a1 + 40) writeSignpostFile:*(a1 + 64) withOrder:*(*(*(a1 + 72) + 8) + 24) withData:*(a1 + 56)];
    }
  }

  else
  {
    v8 = PLLogSignpostReader();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v3 subsystem];
      v10 = [v3 category];
      v11 = [v3 name];
      v14 = 138412802;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Skipping parsing-only signpost '%@::%@::%@'", &v14, 0x20u);
    }
  }

  return 1;
}

void sub_100007310(id *a1, void *a2)
{
  v3 = a2;
  v4 = PLLogSignpostReader();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [a1[4] name];
    *buf = 138412290;
    v66 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[WR] Completing workflow event tracker for workflow '%@'...", buf, 0xCu);
  }

  v43 = [a1[5] workflowDataForEventTracker:v3];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v40 = v3;
  obj = [v3 allSignpostTrackers];
  v44 = [obj countByEnumeratingWithState:&v59 objects:v70 count:16];
  if (v44)
  {
    v42 = *v60;
    do
    {
      v6 = 0;
      do
      {
        if (*v60 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v45 = v6;
        v7 = *(*(&v59 + 1) + 8 * v6);
        v8 = [v43 mutableCopy];
        v9 = [a1[5] workflowDataForSignpostTracker:v7];
        [v8 addEntriesFromDictionary:v9];

        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v46 = v7;
        v10 = [v7 emits];
        v11 = [v10 countByEnumeratingWithState:&v55 objects:v69 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v56;
          do
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v56 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v55 + 1) + 8 * i);
              v16 = [v8 mutableCopy];
              v17 = [a1[5] workflowDataForWREvent:v15];
              [v16 addEntriesFromDictionary:v17];

              v18 = PLLogSignpostReader();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                v19 = [a1[4] name];
                *buf = 138412546;
                v66 = v19;
                v67 = 2112;
                v68 = v16;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[WR] Event processed for workflow '%@': %@", buf, 0x16u);
              }

              [a1[6] addObject:v16];
            }

            v12 = [v10 countByEnumeratingWithState:&v55 objects:v69 count:16];
          }

          while (v12);
        }

        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v20 = [v46 intervals];
        v21 = [v20 countByEnumeratingWithState:&v51 objects:v64 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v52;
          do
          {
            for (j = 0; j != v22; j = j + 1)
            {
              if (*v52 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v25 = *(*(&v51 + 1) + 8 * j);
              v26 = [v8 mutableCopy];
              v27 = [a1[5] workflowDataForWRInterval:v25];
              [v26 addEntriesFromDictionary:v27];

              v28 = PLLogSignpostReader();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                v29 = [a1[4] name];
                *buf = 138412546;
                v66 = v29;
                v67 = 2112;
                v68 = v26;
                _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[WR] Interval processed for workflow '%@': %@", buf, 0x16u);
              }

              [a1[6] addObject:v26];
            }

            v22 = [v20 countByEnumeratingWithState:&v51 objects:v64 count:16];
          }

          while (v22);
        }

        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v30 = [v46 incompleteIntervalStarts];
        v31 = [v30 countByEnumeratingWithState:&v47 objects:v63 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v48;
          do
          {
            for (k = 0; k != v32; k = k + 1)
            {
              if (*v48 != v33)
              {
                objc_enumerationMutation(v30);
              }

              v35 = *(*(&v47 + 1) + 8 * k);
              v36 = [v8 mutableCopy];
              v37 = [a1[5] workflowDataForWRIncompleteInterval:v35];
              [v36 addEntriesFromDictionary:v37];

              v38 = PLLogSignpostReader();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
              {
                v39 = [a1[4] name];
                *buf = 138412546;
                v66 = v39;
                v67 = 2112;
                v68 = v36;
                _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "[WR] Incomplete Interval processed for workflow '%@': %@", buf, 0x16u);
              }

              [a1[6] addObject:v36];
            }

            v32 = [v30 countByEnumeratingWithState:&v47 objects:v63 count:16];
          }

          while (v32);
        }

        v6 = v45 + 1;
      }

      while ((v45 + 1) != v44);
      v44 = [obj countByEnumeratingWithState:&v59 objects:v70 count:16];
    }

    while (v44);
  }
}

uint64_t sub_1000078A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v20 = a1;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v23 objects:v35 count:16];
  if (v4)
  {
    v5 = v4;
    v22 = *v24;
    do
    {
      v6 = 0;
      do
      {
        if (*v24 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v23 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        v9 = [v7 workflow];
        v10 = [v9 allowListForAllSignposts];
        v11 = [v3 subsystem];
        v12 = [v3 category];
        v13 = [v10 passesSubsystem:v11 category:v12];

        if (v13)
        {
          v14 = PLLogSignpostReader();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            v15 = [v3 subsystem];
            v16 = [v3 category];
            v17 = [v7 workflow];
            v18 = [v17 name];
            *buf = 138413058;
            v28 = v15;
            v29 = 2112;
            v30 = v16;
            v31 = 2112;
            v32 = v18;
            v33 = 2112;
            v34 = v3;
            _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "[WR] Processing signpost object (%@:%@) for workflow '%@': %@", buf, 0x2Au);
          }

          [v7 handleSignpost:v3];
        }

        objc_autoreleasePoolPop(v8);
        v6 = v6 + 1;
      }

      while (v5 != v6);
      v5 = [obj countByEnumeratingWithState:&v23 objects:v35 count:16];
    }

    while (v5);
  }

  if ([*(v20 + 40) count] >= 0xC8)
  {
    *(*(*(v20 + 64) + 8) + 24) = [*(v20 + 48) writeSignpostFile:*(v20 + 56) withOrder:*(*(*(v20 + 64) + 8) + 24) withData:*(v20 + 40)];
  }

  return 1;
}

uint64_t sub_100007B40(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = [v3 subsystem];
  v6 = [v3 category];
  LODWORD(v4) = [v4 passesSubsystem:v5 category:v6];

  if (v4)
  {
    (*(a1[6] + 16))();
  }

  v7 = a1[5];
  v8 = [v3 subsystem];
  v9 = [v3 category];
  LODWORD(v7) = [v7 passesSubsystem:v8 category:v9];

  if (v7)
  {
    (*(a1[7] + 16))();
  }

  return 1;
}

uint64_t sub_100007C2C(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v15 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    do
    {
      v5 = 0;
      do
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v9 + 1) + 8 * v5);
        v7 = PLLogSignpostReader();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          sub_10000B6BC(v13, v6, &v14, v7);
        }

        [v6 reset];
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v9 objects:v15 count:16];
    }

    while (v3);
  }

  return 1;
}

void sub_1000095D4(id a1)
{
  v1 = MGCopyAnswerWithError();
  byte_100019460 = [v1 isEqual:@"iPad"];
}

BOOL sub_1000098AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 beginEvent];
  v5 = [v4 name];
  v6 = [v5 isEqualToString:@"HangInterval"];

  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) objectForKeyedSubscript:@"hangDurations"];
    [v7 updateHangsData:v8 withInterval:v3];
  }

  v9 = [*(a1 + 40) objectForKeyedSubscript:@"hangDurations"];
  v10 = [v9 count];
  if (v10 >= 0x5DD)
  {
    v11 = PLLogSignpostReader();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[RAPID] Exceeded max hang signpost count", v13, 2u);
    }
  }

  return v10 < 0x5DD;
}

void sub_10000A2D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_10000A31C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    xdata = v4;
    length = xpc_data_get_length(v4);
    v4 = xdata;
    if (length >= 5)
    {
      bytes_ptr = xpc_data_get_bytes_ptr(xdata);
      v4 = xdata;
      if (*bytes_ptr != 835010577 || (++*(*(*(a1 + 40) + 8) + 24), (*(a1 + 64) & 1) != 0) || (HIDWORD(v7) = -858993459 * *(*(*(a1 + 40) + 8) + 24), LODWORD(v7) = HIDWORD(v7), (v7 >> 1) <= 0x19999999))
      {
        ++*(*(*(a1 + 48) + 8) + 24);
        v8 = *(a1 + 56) - kCFAbsoluteTimeIntervalSince1970;
        v9 = *(a1 + 32);
        v10 = [[NSData alloc] initWithBytes:bytes_ptr length:length];
        [v9 addMicrostackshotsFromData:v10 ofTypes:17 inTimeRangeStart:0xFFFFFFFFLL end:0 onlyPid:0.0 onlyTid:v8];

        v4 = xdata;
      }
    }
  }
}

void sub_10000A578(id a1)
{
  info = 0;
  if (mach_timebase_info(&info))
  {
    _os_assumes_log();
    v1 = 1.0;
  }

  else
  {
    v1 = (info.numer / info.denom);
  }

  qword_100019478 = *&v1;
}

void sub_10000A7F0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_10000A80C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_10000A838(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%{public}@: Connection attempt from %{public}@", &v3, 0x16u);
}

void sub_10000A8C0(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Process %d does not have read entitlement!", v2, 8u);
}

void sub_10000AB44(void *a1)
{
  v2 = [a1 endEvent];
  v3 = [v2 processName];
  v4 = [a1 number1Value];
  sub_10000A82C();
  sub_10000A7D4();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_10000AC0C(void *a1, NSObject *a2)
{
  v4 = [a1 endEvent];
  v5 = [v4 processName];
  v6 = [a1 string2Value];
  v7 = [v6 isEqualToString:@"YES"];
  v8 = @"Background";
  if (v7)
  {
    v8 = @"Foreground";
  }

  v9 = 138412546;
  v10 = v5;
  v11 = 2112;
  v12 = v8;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Process: %@ is a %@ Extended Launch", &v9, 0x16u);
}

void sub_10000AD04(void *a1)
{
  v2 = [a1 endEvent];
  v3 = [v2 processName];
  v4 = [a1 number1Value];
  sub_10000A82C();
  sub_10000A7D4();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_10000ADCC(void *a1)
{
  v1 = [a1 endEvent];
  v2 = [v1 processName];
  sub_10000A7E4();
  sub_10000A7D4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10000AE70(void *a1)
{
  v1 = [a1 endEvent];
  v2 = [v1 processName];
  sub_10000A7E4();
  sub_10000A7D4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10000AF14(void *a1)
{
  v1 = [a1 beginEvent];
  v2 = [v1 name];
  sub_10000A7E4();
  sub_10000A82C();
  sub_10000A7D4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10000AFC4(void *a1)
{
  if (a1)
  {
    v1 = [a1 localizedDescription];
    [v1 UTF8String];
  }

  sub_10000A7E4();
  sub_10000A80C(&_mh_execute_header, v3, v4, "## Unable to serialize to %s", v5, v6, v7, v8, v9);
  if (a1)
  {
  }
}

void sub_10000B214(void *a1)
{
  if (a1)
  {
    v1 = [a1 localizedDescription];
    [v1 UTF8String];
  }

  sub_10000A7E4();
  sub_10000A80C(&_mh_execute_header, v3, v4, "Unable to process signpost: %s", v5, v6, v7, v8, v9);
  if (a1)
  {
  }
}

void sub_10000B2C4(uint64_t a1, void *a2)
{
  v2 = [a2 endEvent];
  v3 = [v2 processName];
  sub_10000A82C();
  sub_10000A7D4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10000B4B4(void *a1, uint8_t *buf, void *a3, os_log_t log)
{
  *buf = 138412290;
  *a3 = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[WR] Setting up tracker for workflow '%@'...", buf, 0xCu);
}

void sub_10000B6BC(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 workflow];
  v8 = [v7 name];
  *a1 = 138412290;
  *a3 = v8;
  _os_log_debug_impl(&_mh_execute_header, a4, OS_LOG_TYPE_DEBUG, "[WR] Resetting event tracker for workflow '%@' due to device reboot", a1, 0xCu);
}

void sub_10000B74C(void *a1, NSObject *a2)
{
  v4 = [a1 objectForKeyedSubscript:@"Category"];
  v5 = [a1 objectForKeyedSubscript:@"Name"];
  v6 = [a1 objectForKeyedSubscript:@"EndProcessName"];
  if (v6)
  {
    v7 = @"EndProcessName";
  }

  else
  {
    v7 = @"BeginProcessName";
  }

  v8 = [a1 objectForKeyedSubscript:v7];
  v11 = 138412802;
  v12 = v4;
  sub_10000A82C();
  v13 = v5;
  v14 = v9;
  v15 = v10;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Got signpostInterval %@_%@: %@", &v11, 0x20u);
}

void sub_10000B8B4(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 localizedDescription];
  sub_10000A7E4();
  sub_10000A82C();
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failed to create tag file: %@ (%@)", v6, 0x16u);
}

void sub_10000B95C(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = 138412802;
  v6 = a1;
  v7 = 2048;
  v8 = [a2 code];
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Could not remove %@.Error [%ld] %@ ", &v5, 0x20u);
}

void sub_10000BA90(void *a1)
{
  if (a1)
  {
    v1 = [a1 localizedDescription];
    [v1 UTF8String];
  }

  sub_10000A7E4();
  sub_10000A80C(&_mh_execute_header, v3, v4, "[RAPID] Unable to serialize signpost: %s", v5, v6, v7, v8, v9);
  if (a1)
  {
  }
}