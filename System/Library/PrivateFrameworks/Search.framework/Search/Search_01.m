void sub_10003BE4C(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x510], 8);
  _Block_object_dispose(&STACK[0x570], 8);
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose(&STACK[0x590], 8);
  _Block_object_dispose(&STACK[0x5B0], 8);
  _Block_object_dispose(&STACK[0x650], 8);
  _Block_object_dispose(&STACK[0x688], 8);
  sub_1000066D4(&STACK[0x6C0]);
  _Unwind_Resume(a1);
}

void sub_10003C134(id a1)
{
  v5 = PRSRankingQueryIndexDictionary();
  v1 = [v5 objectForKeyedSubscript:PRSRankingDisplayNameExactMatch];
  v2 = [v1 integerValue];
  v3 = 1 << v2;
  if ((v2 & 0x40) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = 1 << v2;
  }

  if ((v2 & 0x40) == 0)
  {
    v3 = 0;
  }

  qword_1000A8510 |= v4;
  *algn_1000A8518 |= v3;
}

void sub_10003C1C4(id a1)
{
  v3[0] = NSFileProtectionComplete;
  v3[1] = NSFileProtectionCompleteUnlessOpen;
  v3[2] = NSFileProtectionCompleteWhenUserInactive;
  v3[3] = NSFileProtectionCompleteUntilFirstUserAuthentication;
  v1 = [NSArray arrayWithObjects:v3 count:4];
  v2 = qword_1000A8528;
  qword_1000A8528 = v1;
}

uint64_t sub_10003C26C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_10003C288(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_10003C2BC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = a6;
  v10 = si_tracing_current_span();
  v11 = *(v10 + 16);
  v61 = *v10;
  v62 = v11;
  v63 = *(v10 + 32);
  v12 = *(a1 + 88);
  *v10 = *(a1 + 72);
  *(v10 + 16) = v12;
  *(v10 + 32) = *(a1 + 104);
  v13 = [NSString stringWithFormat:@"SPCoreSpotlightDatastore results handler (%@)", v9];
  v14 = *(v10 + 16);
  v58 = *v10;
  v59 = v14;
  v60 = *(v10 + 32);
  v15 = *v10;
  spanid = si_tracing_calc_next_spanid();
  v17 = *(v10 + 8);
  v18 = *(v10 + 24);
  v19 = [v13 UTF8String];
  *v10 = v15;
  *(v10 + 8) = spanid;
  *(v10 + 16) = v17;
  *(v10 + 24) = v18;
  *(v10 + 28) = 102;
  *(v10 + 32) = v19;
  si_tracing_log_span_begin();
  v20 = SPLogForSPLogCategoryDefault();
  v21 = v20;
  if (gSPLogDebugAsDefault)
  {
    v22 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v22 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v20, v22))
  {
    *buf = 67109120;
    LODWORD(v65) = qos_class_self();
    _os_log_impl(&_mh_execute_header, v21, v22, "QOS resultsHandler: %d", buf, 8u);
  }

  if (a2 <= 7)
  {
    if ((a2 - 1) >= 2)
    {
      if (!a2)
      {
        if ([*(a1 + 32) cancelled])
        {
          v31 = SPLogForSPLogCategoryQuery();
          v32 = v31;
          if (gSPLogDebugAsDefault)
          {
            v33 = OS_LOG_TYPE_DEFAULT;
          }

          else
          {
            v33 = OS_LOG_TYPE_DEBUG;
          }

          if (!os_log_type_enabled(v31, v33))
          {
            goto LABEL_54;
          }

          *buf = 0;
          v34 = "#query corespotlight cancel 2";
          goto LABEL_53;
        }

        goto LABEL_55;
      }
    }

    else if ([v9 isEqualToString:@"Priority"] && (objc_msgSend(*(a1 + 32), "isPhotosSearch") & 1) == 0)
    {
      v23 = SSPriorityIndexDelayMilliseconds();
      Current = CFAbsoluteTimeGetCurrent();
      [*(a1 + 32) storeStartTime];
      v25 = v23 / 1000.0;
      v27 = Current - v26;
      if (v27 >= v25)
      {
        v28 = [[NSError alloc] initWithDomain:@"MainCSIndexTimedOut" code:95208 userInfo:0];
        (*(*(*(*(a1 + 48) + 8) + 40) + 16))();
      }

      else
      {
        [*(a1 + 40) setPriorityIndexFinishedInTime:1];
        v28 = [*(a1 + 40) timeoutTimer];
        v29 = v25 - v27;
        if (v28)
        {
          v30 = dispatch_time(0, (v29 * 1000000000.0));
          dispatch_source_set_timer(v28, v30, 0xFFFFFFFFFFFFFFFFLL, (v25 / 5.0 * 1000000000.0));
        }

        else
        {
          v43 = +[SPCoreSpotlightIndexer sharedInstance];
          v44 = [v43 indexQueue];

          if (v44)
          {
            v28 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v44);
            [*(a1 + 40) setTimeoutTimer:v28];
            handler[0] = _NSConcreteStackBlock;
            handler[1] = 3221225472;
            handler[2] = sub_10003CA34;
            handler[3] = &unk_100093468;
            handler[4] = *(a1 + 48);
            dispatch_source_set_event_handler(v28, handler);
            v45 = dispatch_time(0, (v29 * 1000000000.0));
            dispatch_source_set_timer(v28, v45, 0xFFFFFFFFFFFFFFFFLL, (v25 / 5.0 * 1000000000.0));
            dispatch_activate(v28);
          }

          else
          {
            v46 = SPLogForSPLogCategoryDefault();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
            {
              sub_1000632EC(v46);
            }

            v47 = [[NSError alloc] initWithDomain:@"MainCSIndexTimedOut" code:95208 userInfo:0];
            (*(*(*(*(a1 + 48) + 8) + 40) + 16))();

            v28 = 0;
          }
        }
      }
    }

    goto LABEL_47;
  }

  if (a2 != 8)
  {
    if (a2 == 9)
    {
      [*(a1 + 32) addMatchInfo:a5];
      goto LABEL_55;
    }

LABEL_47:
    if ([*(a1 + 32) cancelled])
    {
      v48 = SPLogForSPLogCategoryQuery();
      v32 = v48;
      if (gSPLogDebugAsDefault)
      {
        v33 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        v33 = OS_LOG_TYPE_DEBUG;
      }

      if (!os_log_type_enabled(v48, v33))
      {
        goto LABEL_54;
      }

      *buf = 0;
      v34 = "#query corespotlight cancel 1";
LABEL_53:
      _os_log_impl(&_mh_execute_header, v32, v33, v34, buf, 2u);
LABEL_54:

      [*(a1 + 40) finish];
      goto LABEL_55;
    }

    goto LABEL_55;
  }

  if ([*(a1 + 32) cancelled])
  {
    v35 = SPLogForSPLogCategoryQuery();
    v32 = v35;
    if (gSPLogDebugAsDefault)
    {
      v33 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v33 = OS_LOG_TYPE_DEBUG;
    }

    if (!os_log_type_enabled(v35, v33))
    {
      goto LABEL_54;
    }

    *buf = 0;
    v34 = "#query corespotlight cancel completions";
    goto LABEL_53;
  }

  v36 = SPLogForSPLogCategoryDefault();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    ByteVectorCount = _MDPlistBytesGetByteVectorCount();
    *buf = 134217984;
    v65 = ByteVectorCount;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "CoreSpotlight got completions bytes %lu", buf, 0xCu);
  }

  if (a5)
  {
    ByteVector = _MDPlistBytesGetByteVector();
    [NSData dataWithBytes:ByteVector length:_MDPlistBytesGetByteVectorCount()];
  }

  else
  {
    +[NSData data];
  }
  v39 = ;
  os_unfair_lock_lock(&stru_1000A8538);
  v40 = (*(*(*(a1 + 56) + 8) + 24) & 1) != 0 || _MDPlistBytesGetByteVectorCount() || [*(*(*(a1 + 64) + 8) + 40) count] != 0;
  *(*(*(a1 + 56) + 8) + 24) = v40;
  v41 = [*(a1 + 32) queryContext];
  v42 = [SSSuggestionResultBuilder buildResultsWithCompletionsData:v39 queryContext:v41];

  [*(*(*(a1 + 64) + 8) + 40) addObjectsFromArray:v42];
  os_unfair_lock_unlock(&stru_1000A8538);

LABEL_55:
  v49 = *v10;
  v50 = *(v10 + 8);
  v51 = *(v10 + 16);
  v52 = *(v10 + 24);
  v53 = *(v10 + 28);
  v54 = *(v10 + 32);
  si_tracing_log_span_end();
  v55 = v59;
  *v10 = v58;
  *(v10 + 16) = v55;
  *(v10 + 32) = v60;

  v56 = v62;
  *v10 = v61;
  *(v10 + 16) = v56;
  *(v10 + 32) = v63;
}

void sub_10003C9A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22, uint64_t a23)
{
  sub_1000066D4(&a15);
  v25 = a22;
  *v23 = a21;
  *(v23 + 16) = v25;
  *(v23 + 32) = a23;
  _Unwind_Resume(a1);
}

void sub_10003CA34(uint64_t a1)
{
  v2 = [[NSError alloc] initWithDomain:@"MainCSIndexTimedOut" code:95208 userInfo:0];
  (*(*(*(*(a1 + 32) + 8) + 40) + 16))();
}

void *sub_10003CAB4(uint64_t a1, int a2, unint64_t a3, size_t a4, unint64_t a5, int *a6)
{
  v12 = si_tracing_current_span();
  v13 = *(v12 + 16);
  v130 = *v12;
  v131 = v13;
  v132 = *(v12 + 32);
  v14 = *(a1 + 80);
  *v12 = *(a1 + 64);
  *(v12 + 16) = v14;
  *(v12 + 32) = *(a1 + 96);
  v15 = objc_autoreleasePoolPush();
  v16 = HIDWORD(a3);
  switch(a2)
  {
    case 0:
      v17 = malloc_type_malloc(0x28uLL, 0x1020040C9F8C70BuLL);
      *v17 = atomic_fetch_add(&qword_1000A8540, 1uLL);
      v17[1] = a6;
      *(v17 + 4) = _SIProtectionClass();
      v18 = v17[1];
      *(v17 + 20) = _SIPriority();
      v17[3] = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, &kCFTypeDictionaryValueCallBacks);
      v17[4] = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, &kCFTypeDictionaryValueCallBacks);
      goto LABEL_102;
    case 1:
      CFRelease(*(a3 + 24));
      CFRelease(*(a3 + 32));
      goto LABEL_100;
    case 2:
      v17 = malloc_type_malloc(0x58uLL, 0x10E00406EEDA840uLL);
      *v17 = a6;
      v17[1] = a3;
      *(v17 + 32) = 8;
      *(v17 + 1) = 0u;
      *(v17 + 2) = 0u;
      *(v17 + 3) = 0u;
      v17[9] = malloc_type_calloc(8uLL, 8uLL, 0x2004093837F09uLL);
      v17[10] = 0;
      goto LABEL_102;
    case 3:
      cf = 0;
      v28.i32[1] = 0;
      v127 = 0u;
      *v128 = 0u;
      v29 = *(a3 + 32);
      v30 = *(a3 + 64);
      v127 = *(a3 + 48);
      *v128 = v30;
      v126 = 0u;
      cf = *(a3 + 80);
      v126 = v29;
      *v125 = *(a3 + 16);
      *(a3 + 80) = 0;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0u;
      if ((*v125 & 0x400) == 0)
      {
        v31 = 0;
        goto LABEL_86;
      }

      v28.i32[0] = *v125 & 0x3FF;
      v59 = vcnt_s8(v28);
      v59.i16[0] = vaddlv_u8(v59);
      v31 = *(v128[1] + v59.u32[0]);
      if (!v31 || *(v31 + 20))
      {
LABEL_86:
        v60 = SPLogForSPLogCategoryDefault();
        v61 = v60;
        if (gSPLogDebugAsDefault)
        {
          v62 = OS_LOG_TYPE_DEFAULT;
        }

        else
        {
          v62 = OS_LOG_TYPE_DEBUG;
        }

        if (os_log_type_enabled(v60, v62))
        {
          *buf = 134217984;
          *&buf[4] = v31;
          _os_log_impl(&_mh_execute_header, v61, v62, "Prune no bundle id %p", buf, 0xCu);
        }

        goto LABEL_92;
      }

      v68 = *(v31 + 24);
      if (v68 == 16)
      {
        v69 = [*(v31 + 32) cStringUsingEncoding:4];
      }

      else
      {
        if (v68 != 1)
        {
          goto LABEL_86;
        }

        v69 = *(v31 + 32);
      }

      if (!v69)
      {
        goto LABEL_86;
      }

      v70 = SPLogForSPLogCategoryDefault();
      v71 = v70;
      if (gSPLogDebugAsDefault)
      {
        v72 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        v72 = OS_LOG_TYPE_DEBUG;
      }

      if (os_log_type_enabled(v70, v72))
      {
        *buf = 136315138;
        *&buf[4] = v69;
        _os_log_impl(&_mh_execute_header, v71, v72, "Got result for bundle %s", buf, 0xCu);
      }

      if ((*v125 & 0x1000000000) == 0 || (v73 = vcnt_s8((*v125 & 0xFFFFFFFFFLL)), v73.i16[0] = vaddlv_u8(v73), (v74 = *(v128[1] + v73.u32[0])) == 0) || *(v74 + 32) >= *(a1 + 104))
      {
        v124 = sub_10004B760(*(a3 + 8), v125);
        os_unfair_lock_lock(&stru_1000A853C);
        v75 = NSMapGet(*(a1 + 32), v69);
        if (!v75)
        {
          v75 = CFBinaryHeapCreate(kCFAllocatorDefault, 0, &unk_1000A7FC8, 0);
          NSMapInsert(*(a1 + 32), v69, v75);
          CFRelease(v75);
        }

        heap = v75;
        v120 = strcmp(v69, "com.apple.MobileSMS");
        if (v120)
        {
          v76 = strcmp(v69, "com.apple.mobilemail");
          v77 = (a1 + 112);
          v78 = *(a1 + 112);
          if (v76)
          {
            v79 = strcmp(v69, "com.apple.mobileslideshow");
            HIDWORD(v118) = v79 != 0;
            v119 = 0;
            v117 = v79 == 0;
            LODWORD(v118) = v117;
          }

          else
          {
            v118 = 0;
            v117 = 0;
            if (!*(*(*(a1 + 56) + 8) + 24))
            {
              v78 *= 5;
            }

            v119 = 1;
          }
        }

        else
        {
          v119 = 0;
          v77 = (a1 + 112);
          v78 = *(a1 + 112);
          v117 = 0;
          v118 = 1;
        }

        if (v78 <= 300 && v78)
        {
          if (v78 < 1)
          {
            goto LABEL_135;
          }
        }

        else
        {
          v80 = SPLogForSPLogCategoryDefault();
          if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
          {
            v81 = *v77;
            *buf = 67109632;
            *&buf[4] = v78;
            *&buf[8] = 1024;
            *&buf[10] = v81;
            v134 = 1024;
            v135 = v78;
            _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "checkCount is %d for query; fetchCount is %d, relaxedCheckCount is %d\n", buf, 0x14u);
          }

          v78 = 300;
        }

        if (CFBinaryHeapGetCount(heap) < v78)
        {
LABEL_135:
          v82 = 0;
          goto LABEL_177;
        }

        Minimum = CFBinaryHeapGetMinimum(heap);
        if (sub_10004D574(v124, Minimum) == 1)
        {
          if (v120)
          {
            if (v117)
            {
              v84 = (Minimum + 64);
              v85 = 3;
            }

            else
            {
              if (v119)
              {
                v85 = 81;
              }

              else
              {
                v85 = 2;
              }

              if (((v119 | BYTE4(v118)) & 1) == 0)
              {
                v89 = 0;
LABEL_175:
                CFBinaryHeapRemoveMinimumValue(heap);
                v82 = 0;
LABEL_176:

LABEL_177:
                if (qword_1000A8528)
                {
                  v100 = a6[4];
                  if (v100 < [qword_1000A8528 count])
                  {
                    v101 = *(a6 + 20);
                    if (v101)
                    {
                      v102 = @"Priority";
                    }

                    else
                    {
                      v102 = [qword_1000A8528 objectAtIndexedSubscript:a6[4]];
                    }

                    sub_10004BD9C(v124, v125, v102);
                    if ((v101 & 1) == 0)
                    {
                    }

                    if ((v82 & 1) == 0)
                    {
                      CFBinaryHeapAddValue(heap, v124);
                    }

                    sub_10004BFA8(0, v124);
                    goto LABEL_187;
                  }

                  v105 = "batch->protectionClass < (int)protectionClasses.count";
                  v106 = 3789;
                }

                else
                {
                  v105 = "protectionClasses";
                  v106 = 3788;
                }

                __assert_rtn("[SPCoreSpotlightDatastore performQuery:isCorrectedQuery:reuseTask:needsFuzzy:pommesRewrite:embeddingsRequery:]_block_invoke", "SPCoreSpotlightDatastore.m", v106, v105);
              }

              v84 = v125;
            }
          }

          else
          {
            v84 = (Minimum + 64);
            v85 = 50;
          }

          v89 = sub_10004BAE0(v84, v85);
          if (v89)
          {
            v94 = NSMapGet(*(a1 + 40), v69);
            if (!v94)
            {
              v94 = sub_1000612C4(v78);
              NSMapInsert(*(a1 + 40), v69, v94);
            }

            *buf = 0;
            v95 = CFHash(v89);
            if (sub_100061384(v94, v95, Minimum, buf))
            {
              if (*buf)
              {
                v96 = NSMapGet(*(a1 + 48), v69);
                if (!v96)
                {
                  v96 = sub_1000612C4(v78);
                  NSMapInsert(*(a1 + 48), v69, v96);
                }

                v97 = CFHash(v89);
                sub_10006141C(v96, v97, *buf);
                sub_10004BFA8(kCFAllocatorDefault, *buf);
              }
            }

            else
            {
              v98 = NSMapGet(*(a1 + 48), v69);
              if (!v98)
              {
                v98 = sub_1000612C4(v78);
                NSMapInsert(*(a1 + 48), v69, v98);
              }

              v99 = CFHash(v89);
              sub_10006141C(v98, v99, Minimum);
            }
          }

          goto LABEL_175;
        }

        if (((v118 | v119 | HIDWORD(v118)) & 1) == 0)
        {
          goto LABEL_156;
        }

        v86 = 3;
        if (!v120)
        {
          v86 = 50;
        }

        v87 = 2;
        if (v119)
        {
          v87 = 81;
        }

        v88 = v118 ? v86 : v87;
        v89 = sub_10004BAE0(v125, v88);
        if (v89)
        {
          v90 = NSMapGet(*(a1 + 40), v69);
          if (!v90)
          {
            v90 = sub_1000612C4(v78);
            NSMapInsert(*(a1 + 40), v69, v90);
          }

          *buf = 0;
          v91 = CFHash(v89);
          if (sub_100061384(v90, v91, v124, buf))
          {
            if (*buf)
            {
              v92 = NSMapGet(*(a1 + 48), v69);
              if (!v92)
              {
                v92 = sub_1000612C4(v78);
                NSMapInsert(*(a1 + 48), v69, v92);
              }

              v93 = CFHash(v89);
              sub_10006141C(v92, v93, *buf);
              sub_10004BFA8(kCFAllocatorDefault, *buf);
            }

LABEL_191:
            v82 = 1;
            goto LABEL_176;
          }

          v103 = NSMapGet(*(a1 + 48), v69);
          if (!v103)
          {
            v103 = sub_1000612C4(v78);
            NSMapInsert(*(a1 + 48), v69, v103);
          }

          v104 = CFHash(v89);
          if (sub_10006141C(v103, v104, v124))
          {
            goto LABEL_191;
          }

          free(v124);
        }

        else
        {
LABEL_156:
          free(v124);
        }

LABEL_187:
        os_unfair_lock_unlock(&stru_1000A853C);
      }

LABEL_92:
      v63 = v128[1];
      if (v128[1])
      {
        v64 = BYTE1(v128[0]);
        if (BYTE1(v128[0]))
        {
          v65 = v128[1];
          do
          {
            sub_10004BE4C(*v65++);
            --v64;
          }

          while (v64);
        }

        free(v63);
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

LABEL_100:
      free(a3);
LABEL_101:
      v17 = 0;
LABEL_102:
      objc_autoreleasePoolPop(v15);
      v66 = v131;
      *v12 = v130;
      *(v12 + 16) = v66;
      *(v12 + 32) = v132;
      return v17;
    case 4:
      v17 = malloc_type_calloc(1uLL, 0x40uLL, 0x10F20407A6C0F06uLL);
      v17[1] = *a6;
      *v17 = 1;
      goto LABEL_102;
    case 5:
      if (*(a3 + 24))
      {
        sub_10003DEA0(a6 + 2, a5, a3);
      }

      else
      {
        sub_10004BE4C(a3);
      }

      goto LABEL_101;
    case 6:
      v33 = malloc_type_calloc(1uLL, 0x50uLL, 0x10F20409211DA8EuLL);
      v17 = v33;
      *(v33 + 1) = *(a6 + 1);
      v34 = 3;
      goto LABEL_40;
    case 7:
      if (*a6 == 2)
      {
        v17 = 0;
        *(a6 + 10) = a3;
        a6[28] = 19;
        goto LABEL_102;
      }

      if (*a6 != 1)
      {
        v116 = SPLogForSPLogCategoryDefault();
        sub_1000633A0(v116);

        __assert_rtn("[SPCoreSpotlightDatastore performQuery:isCorrectedQuery:reuseTask:needsFuzzy:pommesRewrite:embeddingsRequery:]_block_invoke", "SPCoreSpotlightDatastore.m", 3843, "0");
      }

      a6[5] = 3;
      a6[6] = *(a3 + 64);
      v32 = *(a3 + 48);
      *(a6 + 2) = *(a3 + 32);
      *(a6 + 3) = v32;
      *(a6 + 4) = *(a3 + 16);
      goto LABEL_100;
    case 8:
      v17 = malloc_type_calloc(1uLL, 0x18uLL, 0x1020040F89CB87BuLL);
      v17[1] = *(a6 + 1);
      *v17 = 4;
      v17[2] = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
      goto LABEL_102;
    case 9:
      if (*a6 == 2)
      {
        *(a6 + 10) = *(a3 + 16);
        a6[28] = 17;
      }

      else
      {
        if (*a6 != 1)
        {
          v115 = SPLogForSPLogCategoryDefault();
          sub_100063330(v115);

          __assert_rtn("[SPCoreSpotlightDatastore performQuery:isCorrectedQuery:reuseTask:needsFuzzy:pommesRewrite:embeddingsRequery:]_block_invoke", "SPCoreSpotlightDatastore.m", 3885, "0");
        }

        *(a6 + 5) = 0x1100000004;
        v27 = *(a3 + 16);
        *(a6 + 4) = v27;
        CFDictionarySetValue(*(*(a3 + 8) + 32), a4, v27);
      }

      goto LABEL_100;
    case 10:
      v111 = SPLogForSPLogCategoryDefault();
      v108 = v111;
      if (gSPLogDebugAsDefault)
      {
        v112 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        v112 = OS_LOG_TYPE_DEBUG;
      }

      if (os_log_type_enabled(v111, v112))
      {
        *v125 = 0;
        _os_log_impl(&_mh_execute_header, v108, v112, "ERROR: In 'performQuery', Handling for a Dictonary Container has not yet been implemented", v125, 2u);
      }

      v110 = 3996;
      goto LABEL_214;
    case 11:
      v107 = SPLogForSPLogCategoryDefault();
      v108 = v107;
      if (gSPLogDebugAsDefault)
      {
        v109 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        v109 = OS_LOG_TYPE_DEBUG;
      }

      if (os_log_type_enabled(v107, v109))
      {
        *v125 = 0;
        _os_log_impl(&_mh_execute_header, v108, v109, "ERROR: In 'performQuery', Handling for a Dictonary Container has not yet been implemented", v125, 2u);
      }

      v110 = 4004;
      goto LABEL_214;
    case 12:
      v33 = malloc_type_calloc(1uLL, 0x80uLL, 0x10F204051DD1B44uLL);
      v17 = v33;
      *(v33 + 1) = *(a6 + 1);
      v34 = 2;
LABEL_40:
      *v33 = v34;
      goto LABEL_102;
    case 13:
      v17 = 0;
      *(a6 + 5) = 0x1500000002;
      *(a6 + 4) = a3;
      goto LABEL_102;
    case 14:
      v113 = SPLogForSPLogCategoryDefault();
      v108 = v113;
      if (gSPLogDebugAsDefault)
      {
        v114 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        v114 = OS_LOG_TYPE_DEBUG;
      }

      if (os_log_type_enabled(v113, v114))
      {
        *v125 = 0;
        _os_log_impl(&_mh_execute_header, v108, v114, "ERROR: In 'performQuery', Handling for a Event Key Container has not yet been implemented", v125, 2u);
      }

      v110 = 4017;
LABEL_214:

      __assert_rtn("[SPCoreSpotlightDatastore performQuery:isCorrectedQuery:reuseTask:needsFuzzy:pommesRewrite:embeddingsRequery:]_block_invoke", "SPCoreSpotlightDatastore.m", v110, "0");
    case 15:
      a4 = 0;
      v16 = 0;
      LODWORD(v23) = 0;
      LOWORD(v20) = 0;
      v17 = 0;
      LOBYTE(a3) = a3 & 1;
      v21 = 14;
      goto LABEL_37;
    case 16:
      a4 = 0;
      v16 = 0;
      LODWORD(v23) = 0;
      LOWORD(v20) = 0;
      v17 = 0;
      v21 = 5;
      goto LABEL_37;
    case 17:
      a4 = 0;
      v16 = 0;
      LODWORD(v23) = 0;
      v17 = 0;
      v20 = a3 >> 8;
      v21 = 4;
      goto LABEL_42;
    case 18:
      a4 = 0;
      v16 = 0;
      v17 = 0;
      v23 = (a3 >> 16);
      v20 = a3 >> 8;
      v21 = 3;
      goto LABEL_31;
    case 19:
      a4 = 0;
      v17 = 0;
      v23 = (a3 >> 16);
      v20 = a3 >> 8;
      v21 = 2;
      goto LABEL_45;
    case 20:
      a4 = 0;
      v16 = 0;
      LODWORD(v23) = 0;
      LOWORD(v20) = 0;
      v17 = 0;
      v21 = 10;
LABEL_37:
      v22 = 1;
      goto LABEL_51;
    case 21:
      a4 = 0;
      v16 = 0;
      LODWORD(v23) = 0;
      v17 = 0;
      v20 = a3 >> 8;
      v21 = 9;
LABEL_42:
      v22 = 2;
      goto LABEL_51;
    case 22:
      a4 = 0;
      v16 = 0;
      v17 = 0;
      v23 = (a3 >> 16);
      v20 = a3 >> 8;
      v21 = 8;
      goto LABEL_31;
    case 23:
      a4 = 0;
      v17 = 0;
      v23 = (a3 >> 16);
      v20 = a3 >> 8;
      v21 = 7;
      goto LABEL_45;
    case 24:
      v17 = 0;
      v23 = (a3 >> 16);
      v20 = a3 >> 8;
      v21 = 6;
      v22 = 16;
      goto LABEL_51;
    case 25:
      a4 = 0;
      v17 = 0;
      v23 = (a3 >> 16);
      v20 = a3 >> 8;
      v21 = 13;
      goto LABEL_45;
    case 26:
      a4 = 0;
      v16 = 0;
      v17 = 0;
      v23 = (a3 >> 16);
      v20 = a3 >> 8;
      v21 = 11;
LABEL_31:
      v22 = 4;
      goto LABEL_51;
    case 27:
      a4 = 0;
      v17 = 0;
      v23 = (a3 >> 16);
      v20 = a3 >> 8;
      v21 = 12;
LABEL_45:
      v22 = 8;
      goto LABEL_51;
    case 28:
      v26 = strdup(a3);
      goto LABEL_25;
    case 29:
      v26 = strndup(a3, a4);
LABEL_25:
      a4 = 0;
      v17 = 0;
      v20 = v26 >> 8;
      v23 = (v26 >> 16);
      v16 = HIDWORD(v26);
      v21 = 1;
      v22 = 8;
      goto LABEL_50;
    case 30:
      v24 = *(*(a6 + 1) + 24);
      if (!v24)
      {
        goto LABEL_8;
      }

      Value = CFDictionaryGetValue(v24, a4);
      v17 = Value;
      if (!Value)
      {
        goto LABEL_102;
      }

      v26 = CFRetain(Value);
      v22 = 0;
      a4 = 0;
      v20 = v26 >> 8;
      v23 = (v26 >> 16);
      v16 = HIDWORD(v26);
      v21 = 16;
LABEL_50:
      LOBYTE(a3) = v26;
LABEL_51:
      v36 = *a6;
      if (*a6 > 3)
      {
        if (v36 == 4)
        {
          if (v21 == 16)
          {
            CFArrayAppendValue(*(a6 + 2), (a3 | (v20 << 8) | (v23 << 16) | (v16 << 32)));
            CFRelease((a3 | (v20 << 8) | (v23 << 16) | (v16 << 32)));
          }

          else if (v21 == 15)
          {
            __assert_rtn("[SPCoreSpotlightDatastore performQuery:isCorrectedQuery:reuseTask:needsFuzzy:pommesRewrite:embeddingsRequery:]_block_invoke", "SPCoreSpotlightDatastore.m", 4168, "0");
          }

          goto LABEL_102;
        }

        if (v36 == 5)
        {
          v41 = a6[4];
          if (*(a6 + 4) == v41)
          {
            if (v41)
            {
              v42 = 2 * v41;
              *(a6 + 4) = v42;
              *(a6 + 5) = malloc_type_realloc(*(a6 + 5), v42 * v22, 0x1DAC99AAuLL);
              if (a6[16] != v21)
              {
                v43 = "array->valtype == type";
                v44 = 4116;
LABEL_65:
                __assert_rtn("[SPCoreSpotlightDatastore performQuery:isCorrectedQuery:reuseTask:needsFuzzy:pommesRewrite:embeddingsRequery:]_block_invoke", "SPCoreSpotlightDatastore.m", v44, v43);
              }
            }

            else
            {
              *(a6 + 4) = 4;
              *(a6 + 5) = malloc_type_malloc(4 * v22, 0x9BBDE17uLL);
              a6[16] = v21;
            }
          }

          v43 = "0";
          v44 = 4153;
          switch(v21)
          {
            case 1:
            case 12:
            case 13:
LABEL_78:
              v46 = *(a6 + 5);
              v47 = a6[4];
              a6[4] = v47 + 1;
              *(v46 + 8 * v47) = a3 | (v20 << 8) | (v23 << 16) | (v16 << 32);
              goto LABEL_102;
            case 2:
            case 7:
LABEL_81:
              v52 = *(a6 + 5);
              v53 = a6[4];
              a6[4] = v53 + 1;
              v54 = (v52 + 8 * v53);
              *v54 = a3 | (v20 << 8) | (v23 << 16);
              v54[1] = v16;
              goto LABEL_102;
            case 3:
            case 8:
            case 11:
LABEL_79:
              v48 = *(a6 + 5);
              v49 = a6[4];
              a6[4] = v49 + 1;
              *(v48 + 4 * v49) = a3 | (v20 << 8) | (v23 << 16);
              goto LABEL_102;
            case 4:
            case 9:
LABEL_82:
              v55 = *(a6 + 5);
              v56 = a6[4];
              a6[4] = v56 + 1;
              *(v55 + 2 * v56) = a3 | (v20 << 8);
              goto LABEL_102;
            case 5:
            case 10:
LABEL_80:
              v50 = *(a6 + 5);
              v51 = a6[4];
              a6[4] = v51 + 1;
              *(v50 + v51) = a3;
              goto LABEL_102;
            case 14:
LABEL_83:
              v57 = *(a6 + 5);
              v58 = a6[4];
              a6[4] = v58 + 1;
              *(v57 + v58) = a3 & 1;
              goto LABEL_102;
            case 15:
              goto LABEL_65;
            default:
              goto LABEL_102;
          }
        }
      }

      else
      {
        if (v36 == 2)
        {
          v45 = a3 | (v20 << 8) | (v23 << 16);
          if (*(a6 + 20) == 1)
          {
            a6[20] = v45;
            a6[21] = v16;
            *(a6 + 12) = 0;
            *(a6 + 13) = 0;
            *(a6 + 11) = a4;
            a6[28] = v21;
          }

          else
          {
            a6[8] = v45;
            a6[9] = v16;
            *(a6 + 6) = 0;
            *(a6 + 7) = 0;
            *(a6 + 5) = a4;
            a6[16] = v21;
            *(a6 + 20) = 1;
          }

          goto LABEL_102;
        }

        if (v36 == 3)
        {
          v37 = a6[4];
          if (*(a6 + 4) == v37)
          {
            if (v37)
            {
              v38 = 2 * v37;
              *(a6 + 4) = v38;
              *(a6 + 5) = malloc_type_realloc(*(a6 + 5), v38 * v22, 0x5EFFBEB8uLL);
              if (a6[16] != v21)
              {
                v39 = "array->valtype == type";
                v40 = 4065;
LABEL_58:
                __assert_rtn("[SPCoreSpotlightDatastore performQuery:isCorrectedQuery:reuseTask:needsFuzzy:pommesRewrite:embeddingsRequery:]_block_invoke", "SPCoreSpotlightDatastore.m", v40, v39);
              }
            }

            else
            {
              *(a6 + 4) = 4;
              *(a6 + 5) = malloc_type_malloc(4 * v22, 0xC4ED7BBDuLL);
              a6[16] = v21;
            }
          }

          v39 = "0";
          v40 = 4102;
          switch(v21)
          {
            case 1:
            case 12:
            case 13:
              goto LABEL_78;
            case 2:
            case 7:
              goto LABEL_81;
            case 3:
            case 8:
            case 11:
              goto LABEL_79;
            case 4:
            case 9:
              goto LABEL_82;
            case 5:
            case 10:
              goto LABEL_80;
            case 14:
              goto LABEL_83;
            case 15:
              goto LABEL_58;
            default:
              goto LABEL_102;
          }
        }
      }

      a6[8] = a3 | (v20 << 8) | (v23 << 16);
      a6[9] = v16;
      *(a6 + 6) = 0;
      *(a6 + 7) = 0;
      *(a6 + 5) = a4;
      a6[6] = v21;
      goto LABEL_102;
    case 31:
      a3 = CFStringCreateWithCString(kCFAllocatorDefault, a3, 0x8000100u);
      CFDictionarySetValue(*(*(a6 + 1) + 24), a4, a3);
      v22 = 0;
      a4 = 0;
      v17 = 0;
      v20 = a3 >> 8;
      v23 = (a3 >> 16);
      v16 = HIDWORD(a3);
      v21 = 16;
      goto LABEL_51;
    case 32:
      v35 = CFDictionaryGetValue(*(*(a6 + 1) + 32), a4);
      v17 = v35;
      if (!v35)
      {
        goto LABEL_102;
      }

      v26 = CFRetain(v35);
      v22 = 0;
      a4 = 0;
      v20 = v26 >> 8;
      v23 = (v26 >> 16);
      v16 = HIDWORD(v26);
      v21 = 17;
      goto LABEL_50;
    case 33:
      v23 = malloc_type_malloc(a4, 0x5236D819uLL);
      v16 = HIDWORD(a4);
      heapa = (a4 >> 16);
      v123 = v15;
      v19 = a4;
      v20 = a4 >> 8;
      memcpy(v23, a3, a4);
      v17 = 0;
      v21 = 15;
      v22 = 8;
      a4 = v23;
      LODWORD(v23) = heapa;
      LOBYTE(a3) = v19;
      v15 = v123;
      goto LABEL_51;
    default:
LABEL_8:
      v22 = 0;
      v21 = 0;
      a4 = 0;
      v16 = 0;
      LODWORD(v23) = 0;
      LOWORD(v20) = 0;
      LOBYTE(a3) = 0;
      v17 = 0;
      goto LABEL_51;
  }
}

void sub_10003DDE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __int128 a25, __int128 a26, uint64_t a27)
{
  *v27 = a25;
  *(v27 + 16) = a26;
  *(v27 + 32) = a27;
  _Unwind_Resume(a1);
}

void **sub_10003DEA0(void **result, unint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(result + 49);
  if (v6 == *(result + 48))
  {
    *(result + 48) = 2 * v6;
    result = reallocf(result[7], 16 * (v6 & 0x7F));
    v5[7] = result;
  }

  v7 = 1 << a2;
  if (a2 <= 63)
  {
    *v5 = (*v5 | v7);
LABEL_11:
    v8 = v5[7];
    v9 = v6 + 1;
    goto LABEL_12;
  }

  if (a2 <= 0x7F)
  {
    v5[1] = (v5[1] | v7);
    goto LABEL_11;
  }

  if (a2 <= 0xBF)
  {
    v5[2] = (v5[2] | v7);
    goto LABEL_11;
  }

  if (a2 <= 0xFF)
  {
    v5[3] = (v5[3] | v7);
    goto LABEL_11;
  }

  v9 = v6 + 1;
  if (a2 > 0x13F)
  {
    v5[5] = (v5[5] | v7);
  }

  else
  {
    v5[4] = (v5[4] | v7);
  }

  v8 = v5[7];
LABEL_12:
  *(v5 + 49) = v9;
  v8[v6] = a3;
  return result;
}

void sub_10003DFA8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 domain];
  if (v4)
  {
    v5 = [v3 domain];
    v6 = [v5 isEqualToString:@"MainCSIndexTimedOut"];
  }

  else
  {
    v6 = 0;
  }

  v7 = si_tracing_current_span();
  v8 = *(v7 + 16);
  v87 = *v7;
  v88 = v8;
  v89 = *(v7 + 32);
  v9 = *(a1 + 328);
  *v7 = *(a1 + 312);
  *(v7 + 16) = v9;
  *(v7 + 32) = *(a1 + 344);
  if (v6)
  {
    v10 = [@"SPCoreSpotlightDatastore rankAndSendResultsHandler" stringByAppendingString:@" (Priority)"];
  }

  else
  {
    v10 = @"SPCoreSpotlightDatastore rankAndSendResultsHandler";
  }

  v11 = *(v7 + 16);
  v84 = *v7;
  v85 = v11;
  v86 = *(v7 + 32);
  v12 = *v7;
  spanid = si_tracing_calc_next_spanid();
  v14 = *(v7 + 8);
  v15 = *(v7 + 24);
  v16 = [(__CFString *)v10 UTF8String];
  *v7 = v12;
  *(v7 + 8) = spanid;
  *(v7 + 16) = v14;
  *(v7 + 24) = v15;
  *(v7 + 28) = 102;
  *(v7 + 32) = v16;
  si_tracing_log_span_begin();
  WeakRetained = objc_loadWeakRetained((a1 + 296));
  v18 = objc_loadWeakRetained((a1 + 304));
  v19 = v18;
  if (WeakRetained && v18)
  {
    v53 = *(a1 + 48);
    objc_copyWeak(&v78, (a1 + 296));
    objc_copyWeak(v79, (a1 + 304));
    v56 = v3;
    v80 = v6;
    v20 = *(a1 + 56);
    v21 = *(a1 + 64);
    v22 = *(a1 + 72);
    v23 = *(a1 + 80);
    *&v24 = v22;
    *(&v24 + 1) = v23;
    *&v25 = v20;
    *(&v25 + 1) = v21;
    v57 = v25;
    v58 = v24;
    v26 = *(a1 + 88);
    v74 = *(a1 + 248);
    v79[1] = *(a1 + 352);
    v27 = *(a1 + 96);
    v28 = *(a1 + 104);
    v29 = *(a1 + 112);
    *&v30 = v28;
    *(&v30 + 1) = v29;
    *&v31 = v26;
    *(&v31 + 1) = v27;
    v59 = v31;
    v60 = v30;
    v32 = *(a1 + 120);
    v33 = *(a1 + 128);
    v34 = *(a1 + 136);
    v75 = *(a1 + 256);
    v35 = *(a1 + 144);
    *&v36 = v34;
    *(&v36 + 1) = v35;
    *&v37 = v32;
    *(&v37 + 1) = v33;
    v61 = v37;
    v62 = v36;
    v38 = *(a1 + 152);
    v39 = *(a1 + 160);
    v40 = *(a1 + 168);
    v41 = *(a1 + 264);
    v79[2] = *(a1 + 360);
    v42 = *(a1 + 176);
    *&v43 = v38;
    *(&v43 + 1) = v39;
    v63 = v43;
    v64 = v40;
    v81 = *(a1 + 376);
    v65 = *(a1 + 184);
    v66 = *(a1 + 48);
    v82 = *(a1 + 378);
    v83 = *(a1 + 379);
    v54 = *(a1 + 32);
    v55 = *(a1 + 40);
    v67 = *(a1 + 192);
    v68 = *(a1 + 200);
    v69 = *(a1 + 208);
    v70 = *(a1 + 216);
    v44 = *(a1 + 224);
    v76 = *(a1 + 272);
    v71 = v44;
    v77 = *(a1 + 288);
    v72 = *(a1 + 232);
    v73 = *(a1 + 240);
    v79[3] = *(a1 + 368);
    tracing_dispatch_async();

    objc_destroyWeak(v79);
    objc_destroyWeak(&v78);
  }

  v45 = *v7;
  v46 = *(v7 + 8);
  v47 = *(v7 + 16);
  v48 = *(v7 + 24);
  v49 = *(v7 + 28);
  v50 = *(v7 + 32);
  si_tracing_log_span_end();
  v51 = v85;
  *v7 = v84;
  *(v7 + 16) = v51;
  *(v7 + 32) = v86;

  v52 = v88;
  *v7 = v87;
  *(v7 + 16) = v52;
  *(v7 + 32) = v89;
}

void sub_10003E4A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 312));
  objc_destroyWeak((v2 + 304));
  sub_1000066D4(v3 - 192);
  v5 = *(v3 - 128);
  *v1 = *(v3 - 144);
  *(v1 + 16) = v5;
  *(v1 + 32) = *(v3 - 112);
  _Unwind_Resume(a1);
}

void sub_10003E4EC()
{
  v0 = __chkstk_darwin();
  WeakRetained = objc_loadWeakRetained((v0 + 304));
  v203 = objc_loadWeakRetained((v0 + 312));
  v206 = objc_alloc_init(NSMutableSet);
  if (*(v0 + 48) && *(v0 + 344) != 1 || ([WeakRetained cancelled] & 1) != 0)
  {
    goto LABEL_205;
  }

  os_unfair_lock_lock(&stru_1000A853C);
  memset(&enumerator, 0, sizeof(enumerator));
  NSEnumerateMapTable(&enumerator, *(v0 + 56));
  value = 0;
  key = 0;
  if (!NSNextMapEnumeratorPair(&enumerator, &key, &value))
  {
    goto LABEL_195;
  }

  v213 = SSEventBundleIdentifier;
  __s2 = SPApplicationBundleIdGeneralApplicationCStr;
  v207 = PRSRankingSettingsBundleString;
  v200 = SSMessagesBundleIdentifier;
  v201 = PRSRankingMessagesBundleString;
  v199 = PRSRankingNotesBundleString;
  v197 = PRSRankingDocumentsAppBundleString;
  v198 = PRSRankingPhotosAppBundleString;
  v196 = PRSRankingLocalFilesBundleString;
  v195 = PRSRankingFilesBundleString;
  v202 = SSPhotosBundleIdentifier;
  v194 = PRSRankingFileProviderFilesBundleString;
  do
  {
    v1 = NSMapGet(*(v0 + 64), key);
    v2 = NSMapGet(*(v0 + 72), key);
    v3 = [NSString alloc];
    v222 = [v3 initWithCString:key encoding:4];
    if (*(v0 + 344) == 1)
    {
      if (![(__CFString *)v222 isEqualToString:@"com.apple.searchd.engagement"])
      {
LABEL_31:
        [v206 addObject:v222];
        goto LABEL_32;
      }

      v4 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Found com.apple.searchd.engagement", buf, 2u);
      }

      Count = CFBinaryHeapGetCount(value);
      bzero(buf, 0x2000uLL);
      if (Count < 1025)
      {
        CFBinaryHeapGetValues(value, buf);
        if (Count < 1)
        {
LABEL_28:
          v15 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *v292 = 0;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Found no exact-match on previous engagement", v292, 2u);
          }

          goto LABEL_31;
        }

        v6 = buf;
      }

      else
      {
        v6 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
        CFBinaryHeapGetValues(value, v6);
      }

      v7 = 0;
      do
      {
        v8 = v6[v7];
        if (v8)
        {
          v11 = (v8 + 2);
          v9 = v8[2];
          v10 = *(v11 + 1);
          v13 = (v9 | v10) == 0;
          v12 = qword_1000A8510 & v9 | *algn_1000A8518 & v10;
          v13 = v13 || v12 == 0;
          v14 = !v13;
        }

        else
        {
          v14 = 0;
        }

        ++v7;
      }

      while (v7 < Count && (v14 & 1) == 0);
      if (v6 != buf)
      {
        free(v6);
      }

      if (v14)
      {

        NSEndMapTableEnumeration(&enumerator);
        os_unfair_lock_unlock(&stru_1000A853C);
        if (*(v0 + 344) != 1)
        {
          goto LABEL_205;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Delay returning results; previous engagement of non-priority result found", buf, 2u);
        }

        goto LABEL_266;
      }

      goto LABEL_28;
    }

LABEL_32:
    v16 = CFBinaryHeapGetCount(value);
    v17 = sub_100061498(v1);
    v18 = v16 + v17 + sub_100061498(v2);
    if (!v18)
    {
      goto LABEL_194;
    }

    v19 = buf;
    bzero(buf, 0x2000uLL);
    v214 = v18;
    if (v18 >= 1025)
    {
      v19 = malloc_type_malloc(8 * v18, 0x80040B8603338uLL);
    }

    v217 = v19;
    CFBinaryHeapGetValues(value, v19);
    *v292 = 0;
    *&v292[8] = v292;
    *&v292[16] = 0x2020000000;
    *&v292[24] = 0;
    v284[0] = _NSConcreteStackBlock;
    v284[1] = 3221225472;
    v284[2] = sub_1000407C8;
    v284[3] = &unk_1000934E0;
    v284[6] = v16;
    v284[5] = v19;
    v284[4] = v292;
    sub_1000614D0(v1, v284);
    _Block_object_dispose(v292, 8);
    *v292 = 0;
    *&v292[8] = v292;
    *&v292[16] = 0x2020000000;
    *&v292[24] = 0;
    v283[0] = _NSConcreteStackBlock;
    v283[1] = 3221225472;
    v283[2] = sub_1000407F8;
    v283[3] = &unk_100093508;
    v283[6] = v17;
    v283[7] = v16;
    v283[5] = v19;
    v283[4] = v292;
    sub_1000614D0(v2, v283);
    _Block_object_dispose(v292, 8);
    v20 = SPL1Threshold();
    v210 = v21;
    v211 = v20;
    v22 = v18;
    if (v18 < 1)
    {
      goto LABEL_191;
    }

    v23 = 0;
    v24 = v19;
    while (1)
    {
      v25 = v24[v23];
      if (v25)
      {
        break;
      }

LABEL_166:
      if (++v23 == v22)
      {
        goto LABEL_192;
      }
    }

    v218 = *(v25 + 1);
    v221 = *(v25 + 4);
    if (!strcmp(key, "com.apple.spotlight.category"))
    {
      v26 = sub_10004C1A4(v25 + 64, 68);
      v27 = sub_10004C4F4(v25 + 64, 67);
      v28 = objc_opt_new();
      if (v26)
      {
        if ([v26 count])
        {
          if (v27)
          {
            v29 = [v27 count];
            if (v29 == [v26 count])
            {
              if ([v26 count])
              {
                v30 = 0;
                do
                {
                  v31 = [v26 objectAtIndex:v30];
                  v32 = [v31 isEqualToString:*(v0 + 80)];

                  if (v32)
                  {
                    v33 = [v27 objectAtIndex:v30];
                    [v28 addObject:v33];
                  }

                  ++v30;
                }

                while ([v26 count] > v30);
              }

              if ([v28 count])
              {
                v34 = [v203 rankingInfo];
                v35 = [v34 categoryEngagements];
                v36 = sub_10004BAE0(v25 + 64, 2);
                [v35 setValue:v28 forKey:v36];
              }
            }
          }
        }
      }
    }

    v37 = SPLogForSPLogCategoryDefault();
    v38 = v37;
    if (gSPLogDebugAsDefault)
    {
      v39 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v39 = OS_LOG_TYPE_DEBUG;
    }

    if (os_log_type_enabled(v37, v39))
    {
      *v292 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "2", v292, 2u);
    }

    if ([WeakRetained cancelled])
    {
      goto LABEL_190;
    }

    obj = sub_10004BAE0(v25 + 64, 0);
    if (_os_feature_enabled_impl() && [(__CFString *)v222 isEqualToString:v213])
    {
      v40 = v213;

      obj = v40;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      oslog = SPLogForSPLogCategoryDefault();
      v45 = gSPLogInfoAsDefault;
      if (os_log_type_enabled(oslog, ((gSPLogInfoAsDefault & 1) == 0)))
      {
        v46 = sub_10004BAE0(v25 + 64, 2);
        *v292 = 138412546;
        *&v292[4] = v46;
        *&v292[12] = 2112;
        *&v292[14] = v222;
        _os_log_impl(&_mh_execute_header, oslog, ((v45 & 1) == 0), "No UTI type for CoreSpotlight result, identifier:%@, bundleID:%@", v292, 0x16u);
      }

      goto LABEL_165;
    }

    v41 = key;
    if (!strcmp(key, __s2))
    {
      v42 = *(v0 + 88);
      v43 = sub_10004BAE0(v25 + 64, 2);
      LOBYTE(v42) = [v42 containsObject:v43];

      if (v42)
      {
        oslog = SPLogForSPLogCategoryDefault();
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          v44 = sub_10004BAE0(v25 + 64, 2);
          *v292 = 138412290;
          *&v292[4] = v44;
          _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Skipping disabled app %@", v292, 0xCu);
        }

        goto LABEL_165;
      }

      v41 = key;
    }

    if (!strcmp(v41, "com.apple.shortcuts"))
    {
      v47 = *(v0 + 88);
      v48 = sub_10004BAE0(v25 + 64, 72);
      LODWORD(v47) = [v47 containsObject:v48];

      if (v47)
      {
        oslog = SPLogForSPLogCategoryDefault();
        v49 = gSPLogInfoAsDefault;
        if (os_log_type_enabled(oslog, ((gSPLogInfoAsDefault & 1) == 0)))
        {
          v50 = sub_10004BAE0(v25 + 64, 72);
          *v292 = 138412290;
          *&v292[4] = v50;
          _os_log_impl(&_mh_execute_header, oslog, ((v49 & 1) == 0), "Skipping shortcut for disabled app %@", v292, 0xCu);
        }

        goto LABEL_165;
      }
    }

    oslog = sub_10004BAE0(v25 + 64, 83);
    if (![oslog length]|| (*(v25 + 65) & 8) != 0 || ([(__CFString *)v222 isEqualToString:v200]& 1) != 0)
    {
      v51 = sub_10004BAE0(v25 + 64, 11);

      if (v51)
      {
        v52 = sub_10004BAE0(v25 + 64, 87);
        v53 = [v52 isEqualToString:off_1000A7FB8[0]];

        if (v53)
        {
          goto LABEL_165;
        }
      }
    }

    else
    {
      v54 = off_1000A7FB0[0];

      v222 = v54;
    }

    if ([(__CFString *)v222 isEqualToString:v207])
    {
      if ([obj isEqualToString:@"com.apple.Preferences.thirdPartyApp"])
      {
        v55 = sub_10004BAE0(v25 + 64, 93);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v56 = *(*(*(v0 + 256) + 8) + 40);
          if (!v56)
          {
            v57 = SPFastApplicationsGetNoBuild();
            v58 = [v57 allKeys];
            v59 = [NSSet setWithArray:v58];
            v60 = *(*(v0 + 256) + 8);
            v61 = *(v60 + 40);
            *(v60 + 40) = v59;

            v56 = *(*(*(v0 + 256) + 8) + 40);
            if (!v56)
            {
              v62 = SPCopyVisibleApps();
              v63 = *(*(v0 + 256) + 8);
              v64 = *(v63 + 40);
              *(v63 + 40) = v62;

              v56 = *(*(*(v0 + 256) + 8) + 40);
            }
          }

          if (([v56 containsObject:v55] & 1) == 0)
          {
            v65 = SPLogForSPLogCategoryDefault();
            v66 = v65;
            if (gSPLogDebugAsDefault)
            {
              v67 = OS_LOG_TYPE_DEFAULT;
            }

            else
            {
              v67 = OS_LOG_TYPE_DEBUG;
            }

            if (!os_log_type_enabled(v65, v67))
            {
              goto LABEL_177;
            }

            *v292 = 138412290;
            *&v292[4] = v55;
            v68 = v66;
            v69 = v67;
            v70 = "skipping for not installed app %@";
LABEL_176:
            _os_log_impl(&_mh_execute_header, v68, v69, v70, v292, 0xCu);
LABEL_177:

LABEL_165:
            v24 = v217;
            v22 = v214;
            goto LABEL_166;
          }
        }
      }

      else
      {
        v55 = sub_10004BAE0(v25 + 64, 2);
        v71 = *(*(*(v0 + 256) + 8) + 40);
        if (!v71)
        {
          v72 = SPFastApplicationsGetNoBuild();
          v73 = [v72 allKeys];
          v74 = [NSSet setWithArray:v73];
          v75 = *(*(v0 + 256) + 8);
          v76 = *(v75 + 40);
          *(v75 + 40) = v74;

          v71 = *(*(*(v0 + 256) + 8) + 40);
          if (!v71)
          {
            v77 = SPCopyVisibleApps();
            v78 = *(*(v0 + 256) + 8);
            v79 = *(v78 + 40);
            *(v78 + 40) = v77;

            v71 = *(*(*(v0 + 256) + 8) + 40);
          }
        }

        if (([v71 containsObject:@"com.apple.news"] & 1) == 0 && ((objc_msgSend(v55, "hasPrefix:", @"prefs:root=NEWS") & 1) != 0 || (objc_msgSend(v55, "hasPrefix:", @"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/com.apple.Dataclass.News") & 1) != 0 || objc_msgSend(v55, "hasPrefix:", @"prefs:root=DEVELOPER_SETTINGS#NEWS_TESTING")))
        {
          v115 = SPLogForSPLogCategoryDefault();
          v66 = v115;
          if (gSPLogDebugAsDefault)
          {
            v116 = OS_LOG_TYPE_DEFAULT;
          }

          else
          {
            v116 = OS_LOG_TYPE_DEBUG;
          }

          if (!os_log_type_enabled(v115, v116))
          {
            goto LABEL_177;
          }

          *v292 = 136315138;
          *&v292[4] = "com.apple.news";
          v68 = v66;
          v69 = v116;
          v70 = "skipping for not installed app %s";
          goto LABEL_176;
        }
      }
    }

    if (([WeakRetained cancelled] & 1) == 0)
    {
      if (*(v0 + 320))
      {
        v80 = 0;
        v81 = 0;
        do
        {
          if ([*(v0 + 96) containsIndex:v81])
          {
            if (v81 > 63)
            {
              if (v81 > 0x7F)
              {
                if (v81 > 0xBF)
                {
                  if (v81 > 0xFF)
                  {
                    v82 = v81 > 0x13F ? *(v25 + 13) : *(v25 + 12);
                  }

                  else
                  {
                    v82 = *(v25 + 11);
                  }
                }

                else
                {
                  v82 = *(v25 + 10);
                }
              }

              else
              {
                v82 = *(v25 + 9);
              }
            }

            else
            {
              v82 = *(v25 + 8);
            }

            if ((v82 & (1 << v81)) != 0)
            {
              ++v80;
            }
          }

          ++v81;
        }

        while (v81 < *(v0 + 320));
      }

      v215 = SSCompactRankingAttrsAlloc();
      if (*(v0 + 320))
      {
        v83 = 0;
        do
        {
          if ([*(v0 + 96) containsIndex:v83])
          {
            if (v83 > 63)
            {
              if (v83 > 0x7F)
              {
                if (v83 > 0xBF)
                {
                  if (v83 > 0xFF)
                  {
                    v84 = v83 > 0x13F ? *(v25 + 13) : *(v25 + 12);
                  }

                  else
                  {
                    v84 = *(v25 + 11);
                  }
                }

                else
                {
                  v84 = *(v25 + 10);
                }
              }

              else
              {
                v84 = *(v25 + 9);
              }
            }

            else
            {
              v84 = *(v25 + 8);
            }

            if ((v84 & (1 << v83)) != 0)
            {
              v85 = sub_10004CED8(v25 + 64, v83);
              if (v85)
              {
                SSCompactRankingAttrsInsertValue();
              }
            }
          }

          ++v83;
        }

        while (v83 < *(v0 + 320));
      }

      v220 = [[PRSRankingItem alloc] initWithAttrs:v215];
      v86 = SPLogForSPLogCategoryDefault();
      v87 = gSPLogInfoAsDefault;
      if (os_log_type_enabled(v86, ((gSPLogInfoAsDefault & 1) == 0)))
      {
        v204 = *(v0 + 344);
        v205 = v87;
        v88 = [*(v0 + 104) queryID];
        v209 = [v220 sectionBundleIdentifier];
        v208 = [v220 identifier];
        v89 = [v220 bundleIDType];
        v90 = [v220 L2FeatureVector];
        [v90 indexScore];
        v92 = v91;
        v93 = [v220 L2FeatureVector];
        v94 = [v93 indexScore];
        v95 = SSCompactRankingAttrsGetCount();
        *v292 = 67111426;
        *&v292[4] = v204;
        *&v292[8] = 2048;
        *&v292[10] = v88;
        *&v292[18] = 2112;
        *&v292[20] = v209;
        *&v292[28] = 2112;
        *&v292[30] = v208;
        v293 = 2048;
        v294 = v89;
        v295 = 2048;
        v296 = v92;
        v297 = 2048;
        v298 = v94;
        v299 = 2048;
        v300 = v220;
        v301 = 2048;
        v302 = v215;
        v303 = 2048;
        v304 = v95;
        _os_log_impl(&_mh_execute_header, v86, ((v205 & 1) == 0), "### (%d) [%ld] rankingItem %@ %@ 0x%16.16llx 0x%16.16llx%16.16llx (%p, %p, %lu)", v292, 0x62u);
      }

      *v292 = 0;
      v96 = sub_10004BFD4(v25 + 64, 88, v292);
      v97 = sub_10004BAE0(v25 + 64, 10);
      v98 = sub_10004CED8(v25 + 64, 177);
      if (!v98 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [v98 integerValue] < 1 || (objc_msgSend(v97, "isEqualToString:", v198) & 1) != 0)
      {
        v99 = 0;
        v216 = 0;
        if (v96)
        {
LABEL_140:
          if (*v292 == 6)
          {
            if ([oslog length])
            {
              [v220 setSectionBundleIdentifier:v97];
            }

            [*(v0 + 112) setRenderEngagementFeaturesForItemAsShorts:v220 counts:v96 isRender:1 bundleDict:*(v0 + 120)];
            [*(v0 + 112) setRenderEngagementFeaturesForItemAsShorts:v99 counts:v96 isRender:1 bundleDict:*(v0 + 120)];
          }
        }

LABEL_144:
        v100 = sub_10004BFD4(v25 + 64, 89, v292);
        if (v100 && *v292 == 6)
        {
          if ([oslog length])
          {
            [v220 setSectionBundleIdentifier:v97];
          }

          [*(v0 + 112) setRenderEngagementFeaturesForItemAsShorts:v220 counts:v100 isRender:0 bundleDict:*(v0 + 120)];
          [*(v0 + 112) setRenderEngagementFeaturesForItemAsShorts:v99 counts:v100 isRender:0 bundleDict:*(v0 + 120)];
        }

        v101 = [[SPSearchTopHitResult alloc] initWithRankingItem:v220 clientData:v25];
        [(SPTopHitResult *)v101 setScore:v218];
        v102 = [NSDate dateWithTimeIntervalSinceReferenceDate:*(v25 + 5)];
        [(SPTopHitResult *)v101 setInterestingDate:v102];

        [(SPTopHitResult *)v101 setBundleID:v222];
        [(SPTopHitResult *)v101 setDataclass:v221];
        if (v218 < __PAIR128__(v210, v211))
        {
          [v220 setEligibleForDemotion:1];
        }

        if ([obj hasPrefix:@"com.apple.siri."])
        {
          v103 = [(SPTopHitResult *)v101 rankingItem];
          v104 = [v103 L2FeatureVector];
          [v104 setIsSiriAction:1];
        }

        v105 = [*(v0 + 128) objectForKey:v222];
        if (!v105)
        {
          v105 = objc_opt_new();
          [v105 setDomain:1];
          [v105 setBundleIdentifier:v222];
          [*(v0 + 128) setObject:v105 forKey:v222];
        }

        [v105 addResults:v101];
        [*(v0 + 136) addObject:v101];
        ++*(*(*(v0 + 264) + 8) + 24);
        if (v216)
        {
          v106 = [[SPSearchTopHitResult alloc] initWithRankingItem:v99 clientData:v25];
          [(SPTopHitResult *)v106 setScore:v218];
          v107 = [(SPTopHitResult *)v101 interestingDate];
          [(SPTopHitResult *)v106 setInterestingDate:v107];

          [(SPTopHitResult *)v106 setBundleID:v202];
          [(SPTopHitResult *)v106 setDataclass:v221];
          [v99 setEligibleForDemotion:{objc_msgSend(v220, "eligibleForDemotion")}];
          v108 = [v97 isEqualToString:v201];
          v109 = (v0 + 144);
          if ((v108 & 1) == 0)
          {
            v110 = [v97 isEqualToString:v199];
            v109 = (v0 + 152);
            if ((v110 & 1) == 0)
            {
              v111 = [v97 isEqualToString:v197];
              v109 = (v0 + 160);
              if ((v111 & 1) == 0)
              {
                v112 = [v97 isEqualToString:v196];
                v109 = (v0 + 160);
                if ((v112 & 1) == 0)
                {
                  v113 = [v97 isEqualToString:v195];
                  v109 = (v0 + 160);
                  if ((v113 & 1) == 0)
                  {
                    v114 = [v97 isEqualToString:v194];
                    v109 = (v0 + 168);
                    if (v114)
                    {
                      v109 = (v0 + 160);
                    }
                  }
                }
              }
            }
          }

          [*v109 addResults:v106];
          [*(v0 + 136) addObject:v106];
          ++*(*(*(v0 + 264) + 8) + 24);
        }

        goto LABEL_165;
      }

      if ([v97 isEqualToString:v201])
      {
        v117 = 0x4000000;
        goto LABEL_186;
      }

      if ([v97 isEqualToString:v199])
      {
        v117 = 0x8000000;
        goto LABEL_186;
      }

      if (([v97 isEqualToString:v197] & 1) != 0 || (objc_msgSend(v97, "isEqualToString:", v196) & 1) != 0 || objc_msgSend(v97, "isEqualToString:", v195))
      {
        v117 = 0x10000000;
LABEL_186:
        [v220 setBundleIDType:v117];
      }

      [v220 setBundleIDType:{objc_msgSend(v220, "bundleIDType") | 0x2000000}];
      v99 = [[PRSRankingItem alloc] initWithAttrs:SSCompactRankingAttrsCopy()];
      [v99 setBundleIDType:{objc_msgSend(v220, "bundleIDType")}];
      [v99 setSectionBundleIdentifier:v202];
      v216 = 1;
      if (v96)
      {
        goto LABEL_140;
      }

      goto LABEL_144;
    }

LABEL_190:
LABEL_191:
    v24 = v217;
LABEL_192:
    if (v24 != buf)
    {
      free(v24);
    }

LABEL_194:
  }

  while (NSNextMapEnumeratorPair(&enumerator, &key, &value));
LABEL_195:
  NSEndMapTableEnumeration(&enumerator);
  if (*(v0 + 344))
  {
    v281 = 0u;
    v282 = 0u;
    v279 = 0u;
    v280 = 0u;
    v118 = v206;
    v119 = [v118 countByEnumeratingWithState:&v279 objects:v291 count:16];
    if (v119)
    {
      v120 = *v280;
      do
      {
        for (i = 0; i != v119; i = i + 1)
        {
          if (*v280 != v120)
          {
            objc_enumerationMutation(v118);
          }

          NSMapRemove(*(v0 + 56), [*(*(&v279 + 1) + 8 * i) cStringUsingEncoding:4]);
        }

        v119 = [v118 countByEnumeratingWithState:&v279 objects:v291 count:16];
      }

      while (v119);
    }
  }

  os_unfair_lock_unlock(&stru_1000A853C);
LABEL_205:
  if ([WeakRetained cancelled])
  {
    goto LABEL_266;
  }

  if ((*(v0 + 328) & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
LABEL_231:
    if ((*(v0 + 344) & 1) == 0)
    {
      v123 = *(v0 + 168);
      v124 = [*(v0 + 144) results];
      [v123 addResultsFromArray:v124];

      v125 = *(v0 + 168);
      v126 = [*(v0 + 152) results];
      [v125 addResultsFromArray:v126];

      v127 = *(v0 + 168);
      v128 = [*(v0 + 160) results];
      [v127 addResultsFromArray:v128];

      [*(v0 + 144) setResults:0];
      [*(v0 + 152) setResults:0];
      [*(v0 + 160) setResults:0];
    }

    v129 = [*(v0 + 128) allValues];
    v130 = [WeakRetained queryIdent];
    v131 = [WeakRetained queryContext];
    v132 = [v131 searchString];
    [SSRankingUtilities logSections:v129 message:@"L1 performQuery" queryId:v130 query:v132];

    if ([WeakRetained cancelled])
    {
      v133 = SPLogForSPLogCategoryTelemetry();
      v134 = [WeakRetained externalID];
      if (v134 && os_signpost_enabled(v133))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v133, OS_SIGNPOST_EVENT, v134, "coreSpotlightCancel", " enableTelemetry=YES ", buf, 2u);
      }

      v135 = [v203 resultPipe];
      sub_10001DAE0(v135, "canceled", "corespotlight", *(*(*(v0 + 296) + 8) + 32), "rankprep", *(*(*(v0 + 296) + 8) + 40), "resultprep", *(*(*(v0 + 296) + 8) + 48), 0, 0);
    }

    else
    {
      if (*(v0 + 344) == 1)
      {
        v136 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v129, "count")}];
        v137 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v129, "count")}];
        v260 = 0u;
        v261 = 0u;
        v258 = 0u;
        v259 = 0u;
        v138 = v129;
        v139 = [v138 countByEnumeratingWithState:&v258 objects:v289 count:16];
        if (v139)
        {
          v140 = *v259;
          do
          {
            for (j = 0; j != v139; j = j + 1)
            {
              if (*v259 != v140)
              {
                objc_enumerationMutation(v138);
              }

              v142 = *(*(&v258 + 1) + 8 * j);
              v143 = [v142 bundleIdentifier];
              if (sub_100040C3C(v143))
              {
                v144 = [v142 mutableDeepCopy];
                [v137 addObject:v144];

                [v136 addObject:v143];
              }
            }

            v139 = [v138 countByEnumeratingWithState:&v258 objects:v289 count:16];
          }

          while (v139);
        }

        v145 = v137;
        if (![v145 count])
        {

LABEL_265:
          goto LABEL_266;
        }

        v256 = 0u;
        v257 = 0u;
        v254 = 0u;
        v255 = 0u;
        v146 = v136;
        v147 = [v146 countByEnumeratingWithState:&v254 objects:v288 count:16];
        if (v147)
        {
          v148 = *v255;
          do
          {
            for (k = 0; k != v147; k = k + 1)
            {
              if (*v255 != v148)
              {
                objc_enumerationMutation(v146);
              }

              v150 = *(*(&v254 + 1) + 8 * k);
              if (sub_100040C3C(v150))
              {
                v151 = [qword_1000A8460 containsObject:v150];
                v152 = *(v0 + 128);
                if (v151)
                {
                  v153 = [v152 objectForKey:v150];
                  v154 = [v153 resultSet];
                  [v154 removeAllObjects];
                }

                else
                {
                  [v152 removeObjectForKey:v150];
                }
              }
            }

            v147 = [v146 countByEnumeratingWithState:&v254 objects:v288 count:16];
          }

          while (v147);
        }
      }

      else
      {
        v145 = v129;
      }

      v155 = [*(v0 + 136) copy];
      dispatch_suspend(*(v0 + 192));
      v156 = +[SDController rankQueue];
      v157 = qos_class_self();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100040CB4;
      block[3] = &unk_100093580;
      v158 = WeakRetained;
      v159 = *(v0 + 176);
      v227 = v158;
      v228 = v159;
      v229 = *(v0 + 80);
      v230 = *(v0 + 184);
      v251 = *(v0 + 347);
      v252 = *(v0 + 348);
      v253 = *(v0 + 344);
      v160 = *(v0 + 40);
      block[4] = *(v0 + 32);
      block[5] = v160;
      v231 = *(v0 + 200);
      v232 = *(v0 + 208);
      v233 = *(v0 + 216);
      v234 = *(v0 + 144);
      v235 = *(v0 + 152);
      v236 = *(v0 + 160);
      v237 = *(v0 + 224);
      v238 = *(v0 + 232);
      v135 = v145;
      v239 = v135;
      v161 = v155;
      v162 = *(v0 + 280);
      v240 = v161;
      v247 = v162;
      v241 = v203;
      v163 = *(v0 + 112);
      v164 = *(v0 + 288);
      v242 = v163;
      v248 = v164;
      v165 = *(v0 + 104);
      v166 = *(v0 + 296);
      v243 = v165;
      v249 = v166;
      v244 = *(v0 + 240);
      v245 = *(v0 + 248);
      v250 = *(v0 + 336);
      v246 = *(v0 + 192);
      v167 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v157, 0, block);
      tracing_dispatch_async();

      [v158 externalID];
      v168 = *(v0 + 176);
      v169 = [objc_opt_class() description];
      v170 = [NSNumber numberWithLong:*(*(*(v0 + 264) + 8) + 24)];
      SDTraceAdd();
    }

    v145 = SPLogForSPLogCategoryQuery();
    v171 = gSPLogInfoAsDefault;
    if (os_log_type_enabled(v145, ((gSPLogInfoAsDefault & 1) == 0)))
    {
      v172 = *(*(*(v0 + 264) + 8) + 24);
      *buf = 134217984;
      *&buf[4] = v172;
      _os_log_impl(&_mh_execute_header, v145, ((v171 & 1) == 0), "CoreSpotlight query finished with %ld results", buf, 0xCu);
    }

    goto LABEL_265;
  }

  if (*(*(*(v0 + 264) + 8) + 24) || (*(*(*(v0 + 272) + 8) + 24) & 1) != 0 || ([WeakRetained isRewrite] & 1) != 0 || (objc_msgSend(WeakRetained, "cancelled") & 1) != 0 || (*(v0 + 344) & 1) != 0)
  {
LABEL_215:
    if ((*(v0 + 345) & 1) == 0 && !*(*(*(v0 + 264) + 8) + 24) && (*(v0 + 346) & 1) == 0 && [WeakRetained needsReRunForFuzzy] && (objc_msgSend(WeakRetained, "cancelled") & 1) == 0 && (objc_msgSend(WeakRetained, "isCJK") & 1) == 0 && (objc_msgSend(*(v0 + 104), "pommes") & 1) == 0 && *(v0 + 80) && (*(v0 + 344) & 1) == 0)
    {
      [WeakRetained setNeedsReRunForFuzzy:0];
      v193 = [*(v0 + 176) performQuery:WeakRetained isCorrectedQuery:0 reuseTask:v203 needsFuzzy:0 pommesRewrite:0 embeddingsRequery:1];
      goto LABEL_266;
    }

    if ((*(v0 + 345) & 1) == 0 && !*(*(*(v0 + 264) + 8) + 24) && (*(v0 + 346) & 1) == 0 && ([WeakRetained needsReRunForFuzzy] & 1) == 0 && (objc_msgSend(WeakRetained, "cancelled") & 1) == 0 && (objc_msgSend(WeakRetained, "isCJK") & 1) == 0 && (*(v0 + 344) & 1) == 0)
    {
      [WeakRetained setNeedsReRunForFuzzy:1];
      if ([*(v0 + 104) pommes])
      {
        v176 = [WeakRetained copyMatchInfo];
        v177 = +[NSMutableDictionary dictionary];
        v277 = 0u;
        v278 = 0u;
        v275 = 0u;
        v276 = 0u;
        obja = v176;
        v178 = [obja countByEnumeratingWithState:&v275 objects:v290 count:16];
        if (v178)
        {
          v179 = *v276;
          do
          {
            for (m = 0; m != v178; m = m + 1)
            {
              if (*v276 != v179)
              {
                objc_enumerationMutation(obja);
              }

              v181 = *(*(&v275 + 1) + 8 * m);

              _MDPlistGetRootPlistObjectFromPlist();
              v270 = _NSConcreteStackBlock;
              v271 = 3221225472;
              v272 = sub_10004082C;
              v273 = &unk_100093530;
              v274 = v177;
              _MDPlistDictionaryIterate();
              CFRelease(v181);
            }

            v178 = [obja countByEnumeratingWithState:&v275 objects:v290 count:16];
          }

          while (v178);
        }

        v182 = SPLogForSPLogCategoryDefault();
        v183 = gSPLogInfoAsDefault;
        if (os_log_type_enabled(v182, ((gSPLogInfoAsDefault & 1) == 0)))
        {
          v184 = [*(v0 + 104) queryID];
          *buf = 134217984;
          *&buf[4] = v184;
          _os_log_impl(&_mh_execute_header, v182, ((v183 & 1) == 0), "[qid=%ld][rewrite] Fetching Spotlight rewrite candidates.", buf, 0xCu);
        }

        v185 = si_tracing_current_span();
        v186 = *(v185 + 16);
        *buf = *v185;
        v306 = v186;
        v307 = *(v185 + 32);
        v187 = +[SPCoreSpotlightIndexer sharedInstance];
        v188 = *(v0 + 104);
        v189 = *(v0 + 184);
        v262[0] = _NSConcreteStackBlock;
        v262[1] = 3221225472;
        v262[2] = sub_100040914;
        v262[3] = &unk_100093558;
        objc_copyWeak(&v265, (v0 + 304));
        objc_copyWeak(&v266, (v0 + 312));
        v267 = *buf;
        v268 = v306;
        v269 = v307;
        v190 = *(v0 + 104);
        v191 = *(v0 + 176);
        v263 = v190;
        v264 = v191;
        [v187 rewriteQueryWithQueryString:v189 context:v188 matchInfo:v177 rewriteHandler:v262];

        objc_destroyWeak(&v266);
        objc_destroyWeak(&v265);
      }

      else
      {
        v192 = [*(v0 + 176) performQuery:WeakRetained isCorrectedQuery:0 reuseTask:v203 needsFuzzy:1 pommesRewrite:0 embeddingsRequery:0];
      }

      goto LABEL_266;
    }

    goto LABEL_231;
  }

  v122 = [WeakRetained waitForQueryCorrections];
  if (![v122 count] || objc_msgSend(WeakRetained, "previousQueryKind") == 10)
  {

    goto LABEL_215;
  }

  v173 = *(v0 + 176);
  v174 = [v122 firstObject];
  v175 = [v174 suggestion];
  [v173 performQueryRewriteForQuery:WeakRetained withCorrection:v175 task:v203];

LABEL_266:
}

void sub_10004078C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v1 + 48));
  _Unwind_Resume(a1);
}

void sub_10004082C(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v14 = *a4;
  v15 = *(a4 + 2);
  IntValue = _MDPlistNumberGetIntValue();
  v7 = *(a1 + 32);
  v8 = [NSString stringWithUTF8String:a2, v14, v15];
  v9 = [v7 objectForKeyedSubscript:v8];
  v10 = [v9 longLongValue];

  v11 = [NSNumber numberWithLongLong:&v10[IntValue]];
  v12 = *(a1 + 32);
  v13 = [NSString stringWithUTF8String:a2];
  [v12 setObject:v11 forKeyedSubscript:v13];
}

void sub_100040914(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = objc_loadWeakRetained((a1 + 56));
  v9 = v8;
  if (WeakRetained && v8)
  {
    v10 = si_tracing_current_span();
    v34 = *v10;
    v35 = *(v10 + 16);
    v36 = *(v10 + 32);
    v11 = *(a1 + 80);
    *v10 = *(a1 + 64);
    *(v10 + 16) = v11;
    *(v10 + 32) = *(a1 + 96);
    v31 = *(a1 + 64);
    v32 = *(a1 + 80);
    v33 = *(a1 + 96);
    v12 = *v10;
    spanid = si_tracing_calc_next_spanid();
    v14 = *(v10 + 8);
    v15 = *(v10 + 24);
    *v10 = v12;
    *(v10 + 8) = spanid;
    *(v10 + 16) = v14;
    *(v10 + 28) = 102;
    *(v10 + 32) = "SPCoreSpotlightIndexer rewriteHandler";
    si_tracing_log_span_begin();
    if (v6)
    {
      v16 = SPLogForSPLogCategoryDefault();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100063410(v6, buf, [*(a1 + 32) queryID], v16);
      }
    }

    else
    {
      if ([v5 count])
      {
        v18 = SPLogForSPLogCategoryDefault();
        v19 = gSPLogInfoAsDefault;
        if (os_log_type_enabled(v18, ((gSPLogInfoAsDefault & 1) == 0)))
        {
          v20 = [*(a1 + 32) queryID];
          *buf = 134217984;
          v38 = v20;
          _os_log_impl(&_mh_execute_header, v18, ((v19 & 1) == 0), "[qid=%ld][rewrite] Fetching Spotlight rewrite candidates finished.", buf, 0xCu);
        }

        v21 = *(a1 + 40);
        v22 = [v5 firstObject];
        v23 = [v21 performQuery:WeakRetained isCorrectedQuery:0 reuseTask:v9 needsFuzzy:1 pommesRewrite:v22 embeddingsRequery:0];

        goto LABEL_11;
      }

      v16 = SPLogForSPLogCategoryDefault();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v30 = [*(a1 + 32) queryID];
        *buf = 134217984;
        v38 = v30;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[qid=%ld][rewrite] No rewrite candidates for Spotlight query.", buf, 0xCu);
      }
    }

    v17 = [*(a1 + 40) performQuery:WeakRetained isCorrectedQuery:0 reuseTask:v9 needsFuzzy:1 pommesRewrite:0 embeddingsRequery:0];
LABEL_11:
    v24 = *v10;
    v25 = *(v10 + 8);
    v26 = *(v10 + 16);
    v27 = *(v10 + 24);
    v28 = *(v10 + 28);
    v29 = *(v10 + 32);
    si_tracing_log_span_end();
    *v10 = v34;
    *(v10 + 16) = v35;
    *(v10 + 32) = v36;
  }
}

void sub_100040BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, __int128 a16, uint64_t a17)
{
  sub_1000066D4(&a9);
  v19 = a16;
  *v17 = a15;
  *(v17 + 16) = v19;
  *(v17 + 32) = a17;
  _Unwind_Resume(a1);
}

uint64_t sub_100040C3C(void *a1)
{
  v1 = a1;
  if (v1 && ([qword_1000A8468 containsObject:v1] & 1) == 0)
  {
    if (qword_1000A8470 && SSPriorityIndexLimitBundles())
    {
      v2 = [qword_1000A8470 containsObject:v1];
    }

    else
    {
      v2 = 1;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_100040CB4(uint64_t a1)
{
  v1 = si_tracing_current_span();
  v193 = *v1;
  v194 = *(v1 + 16);
  v195 = *(v1 + 32);
  v177 = v1;
  v2 = *v1;
  spanid = si_tracing_calc_next_spanid();
  v4 = *(v177 + 8);
  v5 = *(v177 + 24);
  *v177 = v2;
  *(v177 + 8) = spanid;
  *(v177 + 16) = v4;
  *(v177 + 28) = 102;
  *(v177 + 32) = "SPCoreSpotlightDatastore ranking";
  si_tracing_log_span_begin();
  if (([*(a1 + 48) cancelled] & 1) == 0)
  {
    v6 = *(a1 + 64);
    v7 = *(a1 + 72);
    v144 = *(a1 + 242);
    v145 = *(a1 + 241);
    v148 = *(a1 + 240);
    v149 = *(a1 + 243);
    v146 = *(a1 + 32);
    v147 = *(a1 + 40);
    v8 = *(a1 + 80);
    v9 = *(a1 + 88);
    v11 = *(a1 + 96);
    v10 = *(a1 + 104);
    v13 = *(a1 + 112);
    v12 = *(a1 + 120);
    v14 = *(a1 + 128);
    v15 = *(a1 + 136);
    v174 = *(a1 + 144);
    v180 = *(a1 + 152);
    v172 = *(*(*(a1 + 208) + 8) + 40);
    v182 = *(a1 + 48);
    v178 = *(a1 + 160);
    v169 = *(*(a1 + 216) + 8);
    v150 = *(*(a1 + 224) + 8);
    v184 = *(a1 + 176);
    objb = *(a1 + 168);
    v189 = *(a1 + 184);
    v191 = *(a1 + 192);
    v16 = *(a1 + 232);
    v166 = *(a1 + 56);
    v154 = v6;
    v153 = v7;
    v152 = v8;
    v151 = v9;
    v155 = v11;
    v156 = v10;
    v157 = v13;
    v158 = v12;
    v159 = v14;
    v160 = v15;
    v171 = v174;
    v165 = v180;
    v173 = v172;
    v161 = v178;
    v17 = v182;
    v168 = objb;
    v164 = v184;
    v162 = v189;
    v163 = v191;
    v175 = v17;
    v18 = [v17 queryIdent];
    v19 = [v17 queryContext];
    v20 = [v19 searchString];
    [SSRankingUtilities logSections:v171 message:@"L1 rankLocalItems" queryId:v18 query:v20];

    v21 = [v175 queryContext];
    [v168 parseQUQuery:v21];

    v22 = SPLogForSPLogCategoryRanking();
    v23 = [v175 externalID];
    if (v23 && os_signpost_enabled(v22))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_INTERVAL_BEGIN, v23, "coreSpotlightRankingLatency", &unk_100079B12, buf, 2u);
    }

    v24 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
    v298 = 0;
    v299 = &v298;
    v300 = 0x3032000000;
    v301 = sub_10003C26C;
    v302 = sub_10003C27C;
    v303 = objc_alloc_init(NSMutableDictionary);
    v292 = 0;
    v293 = &v292;
    v294 = 0x3032000000;
    v295 = sub_10003C26C;
    v296 = sub_10003C27C;
    v297 = objc_alloc_init(NSMutableDictionary);
    v290[0] = 0;
    v290[1] = v290;
    v290[2] = 0x3032000000;
    v290[3] = sub_10003C26C;
    v290[4] = sub_10003C27C;
    v291 = 0;
    v286 = 0;
    v287 = &v286;
    v288 = 0x2020000000;
    v289 = [v165 count];
    if (!v287[3])
    {
      if (v149)
      {
LABEL_117:
        _Block_object_dispose(&v286, 8);
        _Block_object_dispose(v290, 8);

        _Block_object_dispose(&v292, 8);
        _Block_object_dispose(&v298, 8);

        goto LABEL_118;
      }

      os_unfair_lock_lock(&stru_1000A8538);
      if (v173)
      {
        v46 = [v173 copy];
        [v161 setSuggestionResults:v46];
      }

      os_unfair_lock_unlock(&stru_1000A8538);
      v47 = [v161 suggestionResults];
      [v161 finishWithSections:0 suggestionResults:v47];
LABEL_116:

      goto LABEL_117;
    }

    v25 = [NSMutableArray alloc];
    v179 = [v25 initWithCapacity:v287[3]];
    [v175 externalID];
    kdebug_trace();
    v26 = [v171 count];
    v285 = 0;
    v284 = 0;
    v283 = 0;
    [objc_opt_class() modifyBatchSize:&v285 batchIncrement:&v284 batches:&v283 withSectionsCount:v26];
    v27 = [NSMutableArray alloc];
    v28 = [v27 initWithCapacity:v283];
    if (v26)
    {
      v29 = v26;
      do
      {
        [v28 addObject:kCFNull];
        --v29;
      }

      while (v29);
    }

    v30 = dispatch_get_global_queue(33, 0);
    v269 = _NSConcreteStackBlock;
    v270 = 3221225472;
    v271 = sub_100048A28;
    v272 = &unk_100093848;
    v31 = v175;
    v273 = v31;
    v280 = v285;
    v281 = v26;
    v32 = v171;
    v274 = v32;
    v278 = v290;
    obj = v168;
    v275 = obj;
    v282 = v169 + 24;
    v33 = v164;
    v276 = v33;
    v279 = &v286;
    v190 = v28;
    v277 = v190;
    tracing_dispatch_apply();

    if (v26)
    {
      for (i = 0; i != v26; ++i)
      {
        v35 = [v190 objectAtIndexedSubscript:i];
        if (v35 != kCFNull)
        {
          v36 = [v190 objectAtIndexedSubscript:i];
          [v179 addObjectsFromArray:v36];
        }
      }
    }

    [v31 externalID];
    kdebug_trace();
    *(v150 + 40) = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - v24;
    if ([v31 cancelled])
    {
LABEL_115:

      v47 = v179;
      goto LABEL_116;
    }

    v192 = objc_opt_new();
    v268 = 0u;
    v267 = 0u;
    v266 = 0u;
    v265 = 0u;
    v37 = v179;
    v38 = [v37 countByEnumeratingWithState:&v265 objects:v315 count:16];
    if (v38)
    {
      v39 = 0;
      v40 = *v266;
      do
      {
        for (j = 0; j != v38; j = j + 1)
        {
          if (*v266 != v40)
          {
            objc_enumerationMutation(v37);
          }

          if (*(*(&v265 + 1) + 8 * j) == kCFNull)
          {
            [v192 addIndex:v39];
          }

          ++v39;
        }

        v38 = [v37 countByEnumeratingWithState:&v265 objects:v315 count:16];
      }

      while (v38);
    }

    v42 = v32;
    [v37 removeObjectsAtIndexes:v192];
    [v31 externalID];
    kdebug_trace();
    v43 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
    v44 = [v33 fetchAttributes];
    if ([v44 containsObject:MDItemPhotosL2Signals])
    {
      v45 = 1;
    }

    else
    {
      v45 = [v33 fetchl2Signals];
    }

    v48 = v166[8];
    SPL2Threshold();
    LOBYTE(v139) = 0;
    [obj updateScoresForPreparedItems:v37 isCJK:(v48 >> 1) & 1 clientBundleID:0 thresholdValue:0 queryNodeMatchInfo:v45 collectL2Signals:0 isCardSearch:v139 isDocumentSearch:?];
    [v162 setNanosecondInterval:clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - v43];
    [v163 setNanosecondInterval:(*(v169 + 24) * 1000000000.0)];
    v49 = +[SPFeedbackProxy sharedProxy];
    v50 = [v31 queryIdent];
    v51 = [v31 connection];
    v52 = [v51 bundleID];
    [v49 sendFeedbackType:21 feedback:v163 queryId:v50 clientID:v52];

    [v31 externalID];
    kdebug_trace();
    v53 = +[SPFeedbackProxy sharedProxy];
    v54 = [v31 queryIdent];
    v55 = [v31 connection];
    v56 = [v55 bundleID];
    [v53 sendFeedbackType:21 feedback:v162 queryId:v54 clientID:v56];

    if ([v31 cancelled])
    {
LABEL_114:

      goto LABEL_115;
    }

    v57 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
    v263[0] = 0;
    v263[1] = v263;
    v263[2] = 0x3032000000;
    v263[3] = sub_10003C26C;
    v263[4] = sub_10003C27C;
    v264 = 0;
    v254 = _NSConcreteStackBlock;
    v255 = 3221225472;
    v256 = sub_10004976C;
    v257 = &unk_1000928D8;
    v58 = v31;
    v258 = v58;
    v261 = v285;
    v262 = v26;
    v59 = v42;
    v259 = v59;
    v60 = v166;
    v260 = v60;
    tracing_dispatch_apply();
    if ([v58 cancelled])
    {
LABEL_113:

      _Block_object_dispose(v263, 8);
      goto LABEL_114;
    }

    *buf = _NSConcreteStackBlock;
    v232 = 3221225472;
    v233 = sub_10004A084;
    v234 = &unk_1000938C0;
    v170 = v58;
    v235 = v170;
    v249 = v285;
    v250 = v26;
    v61 = v59;
    v236 = v61;
    v251 = v16;
    v237 = v154;
    v252 = v148;
    v253 = v149;
    v62 = v161;
    v238 = v62;
    v239 = v155;
    v240 = v156;
    v241 = v157;
    v242 = v158;
    v243 = v160;
    v244 = v159;
    v245 = &v292;
    v246 = &v298;
    v247 = v263;
    v248 = v290;
    tracing_dispatch_apply();
    if ([v170 cancelled])
    {
LABEL_112:

      goto LABEL_113;
    }

    v143 = v62;
    if ([v293[5] count])
    {
      v140 = v61;
      v141 = v60;
      v142 = v57;
      v63 = [v293[5] keysSortedByValueUsingComparator:&stru_1000938E0];
      v64 = [v63 mutableCopy];

      v65 = [v299[5] keysSortedByValueUsingComparator:&stru_100093900];
      v66 = [v65 mutableCopy];

      v67 = [NSMutableArray alloc];
      v185 = [v67 initWithCapacity:{objc_msgSend(v299[5], "count")}];
      v68 = [NSMutableArray alloc];
      v167 = [v68 initWithCapacity:{objc_msgSend(v293[5], "count")}];
      v229 = 0u;
      v230 = 0u;
      v227 = 0u;
      v228 = 0u;
      obja = v66;
      v69 = 0;
      v70 = [obja countByEnumeratingWithState:&v227 objects:v314 count:16];
      if (v70)
      {
        v71 = *v228;
        do
        {
          for (k = 0; k != v70; k = k + 1)
          {
            if (*v228 != v71)
            {
              objc_enumerationMutation(obja);
            }

            v73 = [v299[5] objectForKeyedSubscript:*(*(&v227 + 1) + 8 * k)];
            [v185 addObject:v73];
            if (!v69)
            {
              v69 = objc_alloc_init(NSMutableSet);
            }

            v74 = [v73 title];
            v75 = [v74 text];

            if (v75)
            {
              v76 = [v73 title];
              v77 = [v76 text];
              v78 = [v77 lowercaseString];
              [v69 addObject:v78];
            }
          }

          v70 = [obja countByEnumeratingWithState:&v227 objects:v314 count:16];
        }

        while (v70);
      }

      [v152 setResults:v185];
      v225 = 0u;
      v226 = 0u;
      v223 = 0u;
      v224 = 0u;
      v183 = v64;
      v79 = [v183 countByEnumeratingWithState:&v223 objects:&v310 count:16];
      if (v79)
      {
        v80 = *v224;
        v181 = SSSectionIdentifierPeopleSuggestions;
        do
        {
          for (m = 0; m != v79; m = m + 1)
          {
            if (*v224 != v80)
            {
              objc_enumerationMutation(v183);
            }

            v82 = [v293[5] objectForKeyedSubscript:*(*(&v223 + 1) + 8 * m)];
            v83 = [v82 title];
            v84 = [v83 text];
            v85 = [v84 lowercaseString];

            v86 = [v82 sectionBundleIdentifier];
            v87 = v86;
            if (v86)
            {
              v88 = [v86 isEqual:v181];
            }

            else
            {
              v88 = 0;
            }

            v89 = [v82 contactIdentifier];

            if (v89)
            {
              if ([obja count])
              {
                v90 = v299[5];
                v91 = [v82 contactIdentifier];
                v92 = [v90 objectForKeyedSubscript:v91];

                if (v92)
                {
                  v93 = [v82 personIdentifier];
                  [v92 setPersonIdentifier:v93];

                  v94 = [v82 personQueryIdentifier];
                  [v92 setPersonQueryIdentifier:v94];

                  v95 = (v88 & 1) != 0 ? 1 : [v92 hasTextContentMatch];
                  [v92 setHasTextContentMatch:v95];
                  [v82 rankingScore];
                  [v92 setRankingScore:?];
                  [v92 setType:37];
                  if ([v92 hasTextContentMatch])
                  {
                    v99 = [v170 queryContext];
                    v100 = [SSSuggestionResultBuilder buildResultWithResult:v92 queryContext:v99];

                    os_unfair_lock_lock(&stru_1000A8538);
                    [v173 addObject:v100];
                    os_unfair_lock_unlock(&stru_1000A8538);
                  }
                }

                goto LABEL_68;
              }
            }

            else if ([v69 containsObject:v85])
            {
              goto LABEL_68;
            }

            [v82 rankingScore];
            if (v96 > 0.0)
            {
              if (v88)
              {
                v97 = [v170 queryContext];
                v98 = [SSSuggestionResultBuilder buildResultWithResult:v82 queryContext:v97];

                os_unfair_lock_lock(&stru_1000A8538);
                [v173 addObject:v98];
                os_unfair_lock_unlock(&stru_1000A8538);
              }

              [v167 addObject:v82];
            }

LABEL_68:
          }

          v79 = [v183 countByEnumeratingWithState:&v223 objects:&v310 count:16];
        }

        while (v79);
      }

      [v151 setResults:v167];
    }

    else
    {
      if (![v299[5] count])
      {
LABEL_81:
        if (v149)
        {
          v107 = v61;
        }

        else
        {
          v107 = [objc_opt_class() removedDuplicatePhotosSectionsFromSections:v61 isPhotosScopedSearch:v145];
        }

        v108 = v107;
        v109 = [v107 count];
        [objc_opt_class() modifyBatchSize:&v285 batchIncrement:&v284 batches:&v283 withSectionsCount:v109];
        v211 = _NSConcreteStackBlock;
        v212 = 3221225472;
        v213 = sub_10004AFDC;
        v214 = &unk_100093928;
        v217 = v170;
        v221 = v285;
        v222 = v109;
        v218 = v108;
        v219 = v60;
        v220 = v153;
        v216 = v147;
        v215 = v146;
        tracing_dispatch_apply();
        v200 = _NSConcreteStackBlock;
        v201 = 3221225472;
        v202 = sub_10004B160;
        v203 = &unk_100093950;
        v110 = v217;
        v204 = v110;
        v209 = v285;
        v210 = v109;
        v111 = v218;
        v205 = v111;
        v112 = v143;
        v206 = v112;
        v207 = v290;
        v208 = v263;
        tracing_dispatch_apply();
        *(v150 + 48) = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - v57;
        v113 = [v112 resultPipe];
        if ([v110 cancelled])
        {
          v114 = "canceled";
        }

        else
        {
          v114 = "finished";
        }

        v115 = sub_10001DAE0(v113, v114, "corespotlight", *(v150 + 32), "rankprep", *(v150 + 40), "resultprep", *(v150 + 48), 0, 0);

        v116 = SPLogForSPLogCategoryQuery();
        v117 = gSPLogInfoAsDefault;
        if (os_log_type_enabled(v116, ((gSPLogInfoAsDefault & 1) == 0)))
        {
          v118 = objc_opt_class();
          v119 = [v110 cancelled];
          v120 = "";
          *v304 = 138412802;
          v305 = v118;
          if (v119)
          {
            v120 = " canceled";
          }

          v306 = 2048;
          v307 = v115 / 1000000000.0;
          v308 = 2080;
          v309 = v120;
          _os_log_impl(&_mh_execute_header, v116, ((v117 & 1) == 0), "- Datastore %@ time %g%s", v304, 0x20u);
        }

        if ([v110 cancelled])
        {
          v121 = SPLogForSPLogCategoryTelemetry();
          v122 = [v110 externalID];
          if (v122 && os_signpost_enabled(v121))
          {
            *v304 = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v121, OS_SIGNPOST_EVENT, v122, "coreSpotlightCancel", " enableTelemetry=YES ", v304, 2u);
          }
        }

        else
        {
          if (v109)
          {
            [v110 setPrefersLocalUserTypedSuggestion:(v144 | v148) ^ 1u];
          }

          os_unfair_lock_lock(&stru_1000A8538);
          if (v173)
          {
            v123 = [v173 copy];
            [v112 setSuggestionResults:v123];
          }

          os_unfair_lock_unlock(&stru_1000A8538);
          if (v149)
          {
            v121 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v111, "count")}];
            v198 = 0u;
            v199 = 0u;
            v196 = 0u;
            v197 = 0u;
            v124 = v111;
            v125 = [v124 countByEnumeratingWithState:&v196 objects:v304 count:16];
            if (v125)
            {
              v126 = *v197;
              do
              {
                for (n = 0; n != v125; n = n + 1)
                {
                  if (*v197 != v126)
                  {
                    objc_enumerationMutation(v124);
                  }

                  v128 = *(*(&v196 + 1) + 8 * n);
                  v129 = [v128 bundleIdentifier];
                  if (sub_100040C3C(v129))
                  {
                    v130 = [v128 mutableDeepCopy];
                    [v121 addObject:v130];
                  }
                }

                v125 = [v124 countByEnumeratingWithState:&v196 objects:v304 count:16];
              }

              while (v125);
            }

            v131 = [v112 suggestionResults];
            [v112 progressWithSections:v121 suggestionResults:v131];
          }

          else
          {
            v121 = [v112 suggestionResults];
            [v112 finishWithSections:v111 suggestionResults:v121];
          }
        }

        goto LABEL_112;
      }

      v140 = v61;
      v141 = v60;
      v142 = v57;
      v101 = [NSMutableArray alloc];
      v183 = [v101 initWithCapacity:{objc_msgSend(v299[5], "count")}];
      v313 = 0u;
      v312 = 0u;
      v311 = 0u;
      v310 = 0u;
      v102 = v299[5];
      v103 = [v102 countByEnumeratingWithState:&v310 objects:v314 count:16];
      if (v103)
      {
        v104 = *v311;
        do
        {
          for (ii = 0; ii != v103; ii = ii + 1)
          {
            if (*v311 != v104)
            {
              objc_enumerationMutation(v102);
            }

            v106 = [v299[5] objectForKeyedSubscript:*(*(&v310 + 1) + 8 * ii)];
            [v183 addObject:v106];
          }

          v103 = [v102 countByEnumeratingWithState:&v310 objects:v314 count:16];
        }

        while (v103);
      }

      [v152 setResults:v183];
    }

    v60 = v141;
    v57 = v142;
    v61 = v140;
    goto LABEL_81;
  }

LABEL_118:
  dispatch_resume(*(a1 + 200));
  v132 = *v177;
  v133 = *(v177 + 8);
  v134 = *(v177 + 16);
  v135 = *(v177 + 24);
  v136 = *(v177 + 28);
  v137 = *(v177 + 32);
  result = si_tracing_log_span_end();
  *v177 = v193;
  *(v177 + 16) = v194;
  *(v177 + 32) = v195;
  return result;
}

void sub_100042510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&STACK[0x400], 8);
  _Block_object_dispose(&STACK[0x500], 8);
  _Block_object_dispose(&STACK[0x520], 8);
  _Block_object_dispose(&STACK[0x550], 8);
  _Block_object_dispose(&STACK[0x580], 8);
  sub_1000066D4(&a51);
  _Unwind_Resume(a1);
}

void sub_100042660(uint64_t a1, void *a2)
{
  v19 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = objc_loadWeakRetained((a1 + 48));
  v5 = si_tracing_current_span();
  v23 = *v5;
  v24 = *(v5 + 16);
  v25 = *(v5 + 32);
  v6 = *(a1 + 72);
  *v5 = *(a1 + 56);
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a1 + 88);
  v20 = *(a1 + 56);
  v21 = *(a1 + 72);
  v22 = *(a1 + 88);
  v7 = *v5;
  spanid = si_tracing_calc_next_spanid();
  v9 = *(v5 + 8);
  v10 = *(v5 + 24);
  *v5 = v7;
  *(v5 + 8) = spanid;
  *(v5 + 16) = v9;
  *(v5 + 28) = 102;
  *(v5 + 32) = "SPCoreSpotlightDatastore completionHandler";
  si_tracing_log_span_begin();
  if (WeakRetained[56] == 1)
  {
    v11 = [v4 timeoutTimer];
    v12 = v11;
    if (v11)
    {
      dispatch_source_cancel(v11);
      [v4 setTimeoutTimer:0];
    }
  }

  (*(*(*(*(a1 + 32) + 8) + 40) + 16))();
  v13 = *v5;
  v14 = *(v5 + 8);
  v15 = *(v5 + 16);
  v16 = *(v5 + 24);
  v17 = *(v5 + 28);
  v18 = *(v5 + 32);
  si_tracing_log_span_end();
  *v5 = v23;
  *(v5 + 16) = v24;
  *(v5 + 32) = v25;
}

void sub_1000427D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19)
{
  sub_1000066D4(&a11);
  v21 = a18;
  *v19 = a17;
  *(v19 + 16) = v21;
  *(v19 + 32) = a19;
  _Unwind_Resume(a1);
}

void sub_100044F94(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x790], 8);
  _Block_object_dispose(&STACK[0x7C0], 8);
  _Unwind_Resume(a1);
}

void sub_1000451D8(void *a1, void *a2, void *a3)
{
  v24 = a2;
  v5 = a3;
  [v5 count];
  Mutable = _MDStoreOIDArrayCreateMutable();
  v7 = _MDPlistBytesCreateMutable();
  v27 = Mutable;
  _MDStoreOIDArrayBeginSequence();
  _MDPlistBytesBeginPlist();
  _MDPlistBytesBeginArray();
  _MDPlistBytesAddNull();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v5;
  v28 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v28)
  {
    v26 = *v37;
    do
    {
      v8 = 0;
      do
      {
        if (*v37 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v29 = v8;
        v9 = *(*(&v36 + 1) + 8 * v8);
        [v9 oid];
        _MDPlistBytesBeginArray();
        v10 = [v9 bundleID];
        v31 = SSPommesRankingForSectionBundle();

        v30 = [v9 clientData];
        v11 = [v30 count];
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v12 = *(*(a1[5] + 8) + 40);
        v13 = [v12 countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v33;
          do
          {
            v16 = 0;
            do
            {
              if (*v33 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = [*(*(&v32 + 1) + 8 * v16) integerValue];
              if ((v17 & 0x8000000000000000) != 0 || v17 >= v11)
              {
                v19 = kCFNull;
LABEL_17:
                v20 = v19;
                goto LABEL_27;
              }

              if (v17 == *(*(a1[6] + 8) + 24))
              {
                if (!v31)
                {
                  [v9 scoreL1];
                  v19 = [NSNumber numberWithFloat:?];
                  goto LABEL_17;
                }

                v18 = [v9 rankingItem];
                [v18 pommesL1Score];
                goto LABEL_25;
              }

              if (v17 == *(*(a1[7] + 8) + 24))
              {
                v21 = [v9 rankingItem];
                v18 = v21;
                if (v31)
                {
                  [v21 l2Score];
                }

                else
                {
                  [v21 score];
                }

LABEL_25:
                v22 = [NSNumber numberWithFloat:?];
                goto LABEL_26;
              }

              if (v17 != *(*(a1[8] + 8) + 24))
              {
                v19 = [v30 objectAtIndexedSubscript:v17];
                goto LABEL_17;
              }

              v18 = [v9 rankingItem];
              v22 = [v18 l2Signals];
LABEL_26:
              v20 = v22;

LABEL_27:
              __MDPlistBytesAddObject();

              v16 = v16 + 1;
            }

            while (v14 != v16);
            v23 = [v12 countByEnumeratingWithState:&v32 objects:v40 count:16];
            v14 = v23;
          }

          while (v23);
        }

        _MDPlistBytesEndArray();
        _MDStoreOIDArrayAddOID();

        v8 = v29 + 1;
      }

      while ((v29 + 1) != v28);
      v28 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v28);
  }

  _MDPlistBytesEndArray();
  _MDPlistBytesEndPlist();
  _MDStoreOIDArrayEndSequence();
  (*(a1[4] + 16))();
  CFRelease(v7);
  CFRelease(v27);
}

void sub_1000455E0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  kdebug_trace();
  v6 = *(*(*(a1 + 64) + 8) + 40);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100045730;
  v14[3] = &unk_100093668;
  v7 = *(a1 + 32);
  v8 = *(a1 + 80);
  v17 = vextq_s8(*(a1 + 64), *(a1 + 64), 8uLL);
  v18 = v8;
  v9 = *(a1 + 40);
  v20 = *(a1 + 96);
  v10 = *(a1 + 48);
  v21 = *(a1 + 97);
  v11 = *(a1 + 56);
  *&v12 = v10;
  *(&v12 + 1) = v11;
  *&v13 = v7;
  *(&v13 + 1) = v9;
  v15 = v13;
  v16 = v12;
  v19 = a3;
  [v6 enumerateTopHitResultsByBundle:v5 addingToItems:0 withHandler:v14];
}

void sub_100045730(uint64_t a1, void *a2, void *a3, void *a4)
{
  v39 = a2;
  v7 = a3;
  v36 = a4;
  [*(a1 + 32) prepareItemsForL1Ranking:? inBundle:?];
  v37 = v7;
  v8 = [v7 mutableCopy];
  obj = *(*(*(a1 + 64) + 8) + 40);
  objc_sync_enter(obj);
  v9 = [*(*(*(a1 + 64) + 8) + 40) objectForKeyedSubscript:v39];
  v10 = [v9 objectForKeyedSubscript:@"sparse"];
  [v8 addObjectsFromArray:v10];

  v11 = [*(*(*(a1 + 64) + 8) + 40) objectForKeyedSubscript:v39];
  v12 = [v11 objectForKeyedSubscript:@"dense"];
  [v8 addObjectsFromArray:v12];

  v13 = [*(*(*(a1 + 64) + 8) + 40) objectForKeyedSubscript:v39];
  v14 = [v13 objectForKeyedSubscript:@"hybrid"];
  [v8 addObjectsFromArray:v14];

  v15 = *(a1 + 80);
  v16 = *(*(*(a1 + 72) + 8) + 40);
  v17 = *(a1 + 88);
  v18 = [*(a1 + 40) userQuery];
  v19 = [*(a1 + 40) queryID];
  LOBYTE(v14) = *(a1 + 104);
  v20 = *(a1 + 48);
  v21 = *(a1 + 105);
  [*(a1 + 32) currentTime];
  LOBYTE(v35) = v21;
  LOBYTE(v34) = v14;
  v22 = [v16 selectFromBatch:v8 withBundle:v39 rankCount:v15 maxCount:v17 userQuery:v18 queryID:v19 isCJK:v34 clientBundle:v20 isKeyboardCJK:v35 currentTime:?];

  [*(*(*(a1 + 64) + 8) + 40) setObject:v22 forKeyedSubscript:v39];
  objc_sync_exit(obj);

  v23 = [v8 objectEnumerator];
  v24 = [v23 nextObject];
  if (v24)
  {
    v25 = v24;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 1;
    while (1)
    {
      v30 = [v25 dataclass];

      if (!v29)
      {
        break;
      }

      if (v26 && ![v26 isEqualToString:v30])
      {
        goto LABEL_8;
      }

      ++v28;
LABEL_10:

      v33 = v30;
      v25 = [v23 nextObject];
      v29 = v25 != 0;
      v26 = v33;
      if (!v25)
      {
        v26 = v33;
        if (!v28)
        {

          goto LABEL_13;
        }
      }
    }

    if (!v26)
    {
      sub_10006347C();
    }

LABEL_8:
    v31 = [v8 subarrayWithRange:{v27, v28}];
    if (![v31 count])
    {
      sub_1000634A8();
    }

    v32 = *(a1 + 96);
    (*(*(a1 + 56) + 16))();
    v27 += v28;
    v28 = v29;

    goto LABEL_10;
  }

LABEL_13:
}

void sub_100045A7C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  kdebug_trace();
  v6 = *(*(*(a1 + 64) + 8) + 40);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100045BD4;
  v13[3] = &unk_1000936B8;
  v7 = *(a1 + 32);
  v18 = *(a1 + 80);
  v8 = *(a1 + 40);
  v16 = *(a1 + 64);
  v9 = *(a1 + 48);
  v17 = *(a1 + 72);
  v20 = *(a1 + 88);
  v10 = *(a1 + 56);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  *&v12 = v7;
  *(&v12 + 1) = v8;
  v14 = v12;
  v15 = v11;
  v19 = a3;
  [v6 enumerateTopHitResultsByBundle:v5 addingToItems:0 withHandler:v13];
}

void sub_100045BD4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v47 = a2;
  v7 = a3;
  v43 = a4;
  [*(a1 + 32) setTopHitMaxCount:*(a1 + 80)];
  v8 = [*(a1 + 40) fetchAttributes];
  v45 = [v8 containsObject:MDItemPhotosL2Signals];

  v44 = v7;
  v9 = [v7 mutableCopy];
  v10 = *(*(*(a1 + 64) + 8) + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 80);
  v13 = *(a1 + 32);
  v14 = [*(a1 + 40) userQuery];
  v15 = [*(a1 + 40) queryID];
  v16 = *(*(*(a1 + 72) + 8) + 40);
  LOWORD(v7) = *(a1 + 96);
  BYTE3(v42) = v45;
  BYTE2(v42) = [*(a1 + 40) privateQuery];
  LOWORD(v42) = v7;
  v17 = [v10 rankBatch:v9 withRanker:v13 withBundle:v47 clientBundle:v11 maxCount:v12 userQuery:v14 queryID:v15 rankingConfiguration:v16 isCJK:v42 isKeyboardCJK:? privateQuery:? collectL2Signals:?];

  [v9 addObjectsFromArray:v17];
  v18 = [v9 objectEnumerator];
  v19 = [v18 nextObject];
  v46 = v17;
  if (v19)
  {
    v20 = v19;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 1;
    while (1)
    {
      v25 = [v20 dataclass];

      if (!v24)
      {
        break;
      }

      if (v21 && ![v21 isEqualToString:v25])
      {
        goto LABEL_8;
      }

      ++v23;
LABEL_10:

      v28 = v25;
      v20 = [v18 nextObject];
      v24 = v20 != 0;
      v21 = v28;
      if (!v20)
      {
        v21 = v28;
        if (!v23)
        {

          v17 = v46;
          goto LABEL_13;
        }
      }
    }

    if (!v21)
    {
      sub_1000634D4();
    }

LABEL_8:
    v26 = [v9 subarrayWithRange:{v22, v23}];
    if (![v26 count])
    {
      sub_100063500();
    }

    v27 = *(a1 + 88);
    (*(*(a1 + 56) + 16))();
    v22 += v23;
    v23 = v24;

    goto LABEL_10;
  }

LABEL_13:
  if (byte_1000A8488 == 1 && [v17 count])
  {
    v29 = objc_opt_new();
    v30 = objc_opt_new();
    [v29 setArrayOfRankingItems:v30];
    v31 = [v17 objectAtIndexedSubscript:0];
    v32 = [v31 bundleID];
    [v29 setBundleIdentifier:v32];

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v33 = v17;
    v34 = [v33 countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v49;
      do
      {
        for (i = 0; i != v35; i = i + 1)
        {
          if (*v49 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = [*(*(&v48 + 1) + 8 * i) rankingItem];
          [v30 addObject:v38];
        }

        v35 = [v33 countByEnumeratingWithState:&v48 objects:v53 count:16];
      }

      while (v35);
    }

    v39 = +[SDTTRSupport getSharedInstance];
    v40 = [*(a1 + 40) userQuery];
    v52 = v29;
    v41 = [NSArray arrayWithObjects:&v52 count:1];
    [v39 dumpTTRDebugFilesForQuery:v40 sections:v41 enableKeyLogRanking:0];

    v17 = v46;
  }

  kdebug_trace();
}

void sub_10004600C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v35 = a6;
  if (a2 > 6)
  {
    switch(a2)
    {
      case 7:
        _MDStoreOIDArrayGetVectorCount();
        v44 = *(a1 + 72);
        _MDStoreOIDArrayApplyBlock();
        v13 = *(*(*(a1 + 72) + 8) + 40);
        v14 = objc_opt_new();
        v15 = *(*(a1 + 72) + 8);
        v16 = *(v15 + 40);
        *(v15 + 40) = v14;

        (*(*(a1 + 48) + 16))();
        goto LABEL_29;
      case 8:
        v12 = *(*(a1 + 40) + 16);
        break;
      case 9:
        v12 = *(*(a1 + 40) + 16);
        break;
      default:
        goto LABEL_12;
    }

LABEL_28:
    v12();
    goto LABEL_29;
  }

  switch(a2)
  {
    case 0:
      goto LABEL_5;
    case 2:
      v12 = *(*(a1 + 40) + 16);
      goto LABEL_28;
    case 6:
LABEL_5:
      if (([*(*(*(a1 + 80) + 8) + 40) canceled] & 1) == 0)
      {
        _MDStoreOIDArrayGetVectorCount();
        v38 = *(a1 + 88);
        v39 = *(a1 + 104);
        v40 = *(a1 + 120);
        v41 = *(a1 + 136);
        v42 = *(a1 + 152);
        v37 = v35;
        v43 = *(a1 + 72);
        _MDStoreOIDArrayApplyBlock();
        v8 = *(*(*(a1 + 72) + 8) + 40);
        v9 = objc_opt_new();
        v10 = *(*(a1 + 72) + 8);
        v11 = *(v10 + 40);
        *(v10 + 40) = v9;

        (*(*(a1 + 56) + 16))();
        *(*(*(a1 + 160) + 8) + 24) += [v8 count];
      }

      goto LABEL_29;
  }

LABEL_12:
  v34 = *(*(*(a1 + 64) + 8) + 40);
  objc_sync_enter(v34);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = *(*(*(a1 + 64) + 8) + 40);
  v17 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v17)
  {
    v18 = *v46;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v46 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v45 + 1) + 8 * i);
        v21 = objc_alloc_init(NSMutableArray);
        v22 = [*(*(*(a1 + 64) + 8) + 40) objectForKeyedSubscript:v20];
        v23 = [v22 objectForKeyedSubscript:@"sparse"];

        if (v23)
        {
          v24 = [*(*(*(a1 + 64) + 8) + 40) objectForKeyedSubscript:v20];
          v25 = [v24 objectForKeyedSubscript:@"sparse"];
          [v21 addObjectsFromArray:v25];
        }

        v26 = [*(*(*(a1 + 64) + 8) + 40) objectForKeyedSubscript:{v20, v34}];
        v27 = [v26 objectForKeyedSubscript:@"dense"];

        if (v27)
        {
          v28 = [*(*(*(a1 + 64) + 8) + 40) objectForKeyedSubscript:v20];
          v29 = [v28 objectForKeyedSubscript:@"dense"];
          [v21 addObjectsFromArray:v29];
        }

        v30 = [*(*(*(a1 + 64) + 8) + 40) objectForKeyedSubscript:v20];
        v31 = [v30 objectForKeyedSubscript:@"hybrid"];

        if (v31)
        {
          v32 = [*(*(*(a1 + 64) + 8) + 40) objectForKeyedSubscript:v20];
          v33 = [v32 objectForKeyedSubscript:@"hybrid"];
          [v21 addObjectsFromArray:v33];
        }

        (*(*(a1 + 32) + 16))();
      }

      v17 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v17);
  }

  objc_sync_exit(v34);
LABEL_29:
}

void sub_1000465C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  if (a5 >= 2)
  {
    v6 = (a4 + 8);
    v7 = a5 - 1;
    do
    {
      v8 = objc_opt_new();
      v9 = *v6++;
      [v8 setOid:v9];
      [*(*(*(a1 + 32) + 8) + 40) addObject:v8];

      --v7;
    }

    while (v7);
  }
}

void sub_100046640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 120);
  v7 = _MDPlistBytesCopyChildPlistBytesAtIndex();
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v25[3] = 1;
  v15[0] = _NSConcreteStackBlock;
  v8 = *(a1 + 40);
  v9 = *(*(*(a1 + 40) + 8) + 24);
  v15[1] = 3221225472;
  v15[2] = sub_100046790;
  v15[3] = &unk_100093730;
  v17 = v25;
  v10 = *(a1 + 56);
  v18 = v8;
  v19 = v10;
  v11 = *(a1 + 88);
  v20 = *(a1 + 72);
  v21 = v11;
  v12 = *(a1 + 104);
  v24 = a4;
  v22 = v12;
  v13 = *(a1 + 32);
  v14 = *(a1 + 112);
  v16 = v13;
  v23 = v14;
  [v7 enumerateQueryResults:v9 stringCache:0 usingBlock:v15];
  if (v7)
  {
    CFRelease(v7);
  }

  _Block_object_dispose(v25, 8);
}

void sub_100046790(void *a1, uint64_t a2)
{
  v2 = a1[16];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 24);
  *(v3 + 24) = v4 + 1;
  v5 = *(v2 + 8 * v4);
  if (v5)
  {
    v37 = v5;
    v8 = [[NSMutableArray alloc] initWithCapacity:399];
    v9 = 0;
    v38 = 0;
    v39 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    do
    {
      if (v11 >= *(*(a1[6] + 8) + 24))
      {
        goto LABEL_35;
      }

      v14 = *(a2 + 8 * v11);
      if (v11 == *(*(a1[7] + 8) + 24))
      {
        objc_opt_class();
        v15 = (objc_opt_isKindOfClass() & 1) != 0 ? v14 : 0;
        v16 = v15;

        v10 = v16;
      }

      else if (v11 == *(*(a1[8] + 8) + 24))
      {
        objc_opt_class();
        v17 = (objc_opt_isKindOfClass() & 1) != 0 ? v14 : 0;
        v18 = v17;

        v9 = v18;
      }

      else if (v11 == *(*(a1[9] + 8) + 24))
      {
        ranking_index_score_init();
      }

      else if (v11 == *(*(a1[10] + 8) + 24))
      {
        objc_opt_class();
        v19 = (objc_opt_isKindOfClass() & 1) != 0 ? v14 : 0;
        v20 = v19;

        v39 = v20;
      }

      else if (v11 == *(*(a1[11] + 8) + 24))
      {
        objc_opt_class();
        v21 = (objc_opt_isKindOfClass() & 1) != 0 ? v14 : 0;
        v22 = v21;

        v38 = v22;
      }

      else if (v11 == *(*(a1[12] + 8) + 24))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(__CFNull *)v14 floatValue];
          v13 = v23;
        }
      }

      if (v14)
      {
        [v8 addObject:v14];
        if (v14 != kCFNull)
        {
          v24 = *(*(a1[13] + 8) + 24);
          if (*v24 > v11 && (v24[(v11 >> 6) + 1] & (1 << v11)) != 0)
          {
            ++v12;
          }
        }
      }

      else
      {
LABEL_35:
        v14 = kCFNull;
        [v8 addObject:v14];
      }

      ++v11;
    }

    while (v11 != 399);
    v25 = SSCompactRankingAttrsAlloc();
    for (i = 0; i != 399; ++i)
    {
      v27 = [v8 objectAtIndexedSubscript:{i, v37}];
      if (v27 != kCFNull)
      {
        v28 = *(*(a1[13] + 8) + 24);
        if (*v28 > i && ((v28[(i >> 6) + 1] >> i) & 1) != 0)
        {
          v29 = qword_1000A84B0;
          v30 = [*(*(a1[14] + 8) + 40) objectAtIndexedSubscript:i];
          [v29 indexOfObject:v30];

          SSCompactRankingAttrsInsertValue();
        }
      }
    }

    if (v9)
    {
      v31 = [SPCSTopHitResult alloc];
      v32 = [[PRSRankingItem alloc] initWithAttrs:v25];
      v33 = [(SPCSTopHitResult *)v31 initWithRankingItem:v32 clientData:v8];

      [v33 setOid:v37];
      v34 = v38;
      [v33 setThreadId:v38];
      [v33 setInterestingDate:v10];
      [v33 setScore:0, 0];
      [v33 setBundleID:v9];
      [v33 setDataclass:a1[4]];
      [v33 setType:2];
      v35 = v39;
      [v33 setIdentifier:v39];
      LODWORD(v36) = v13;
      [v33 setScoreL1:v36];
      [*(*(a1[15] + 8) + 40) addObject:v33];
    }

    else
    {
      v33 = SPLogForSPLogCategoryDefault();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v41 = v37;
        v42 = 2048;
        v43 = v37;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "*warn* Missing bundleID for oid:0x%llx(%lld)", buf, 0x16u);
      }

      v34 = v38;
      v35 = v39;
    }
  }
}

void sub_100046C94(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SPLogForSPLogCategoryQuery();
  v5 = v4;
  if (gSPLogDebugAsDefault)
  {
    v6 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v6 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v4, v6))
  {
    v7 = [*(*(*(a1 + 112) + 8) + 40) count];
    *buf = 134218242;
    v148 = v7;
    v149 = 2112;
    v150 = v3;
    _os_log_impl(&_mh_execute_header, v5, v6, "Finished topHit query, resultsCount:%lu, error:%@", buf, 0x16u);
  }

  if (v3)
  {
    (*(*(a1 + 88) + 16))();
    goto LABEL_21;
  }

  if ([SDPommesFeature usingPommesRankingForClientBundle:*(a1 + 32)])
  {
    v8 = os_transaction_create();
    v9 = objc_autoreleasePoolPush();
    v10 = SPLogForSPLogCategoryDefault();
    v11 = v10;
    if (gSPLogDebugAsDefault)
    {
      v12 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v12 = OS_LOG_TYPE_DEBUG;
    }

    if (!os_log_type_enabled(v10, v12))
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (*(*(*(a1 + 120) + 8) + 24) || !*(a1 + 48))
  {
    v8 = os_transaction_create();
    v9 = objc_autoreleasePoolPush();
    v13 = SPLogForSPLogCategoryDefault();
    v11 = v13;
    if (gSPLogDebugAsDefault)
    {
      v12 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v12 = OS_LOG_TYPE_DEBUG;
    }

    if (!os_log_type_enabled(v13, v12))
    {
      goto LABEL_20;
    }

LABEL_19:
    v14 = objc_retainBlock(*(a1 + 88));
    *buf = 138412290;
    v148 = v14;
    _os_log_impl(&_mh_execute_header, v11, v12, "Finished completing %@", buf, 0xCu);

LABEL_20:
    (*(*(a1 + 96) + 16))();
    (*(*(a1 + 88) + 16))();
    [*(a1 + 40) deactivate];
    objc_autoreleasePoolPop(v9);
    v15 = objc_opt_self();

    goto LABEL_21;
  }

  [*(a1 + 56) setMaxCount:*(a1 + 256)];
  [*(a1 + 56) setGrouped:*(a1 + 256) != 0];
  v16 = *(a1 + 64);
  v17 = *(a1 + 32);
  v18 = *(a1 + 272);
  v19 = *(a1 + 48);
  *(&v114 + 1) = [*(a1 + 56) disableNLP];
  LOBYTE(v114) = v18;
  v20 = [v16 _topHitQueryParametersForSearchString:v19 searchEntities:&__NSArray0__struct contextIdentifier:v17 queryKind:11 needsFuzzy:1 checkForMath:0 isCJK:v114 disableNLP:11 disableOCR:*(a1 + 32) previousQueryKind:*(a1 + 72) clientBundle:objc_msgSend(*(a1 + 56) keyboardLanguage:"queryID") queryID:?];
  v21 = *(*(a1 + 128) + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v20;

  v23 = [*(*(*(a1 + 128) + 8) + 40) objectForKeyedSubscript:@"query"];
  v24 = [v23 mutableCopy];

  objc_storeStrong((*(*(a1 + 136) + 8) + 40), v24);
  [*(a1 + 40) setIsFuzzySearch:1];
  v25 = *(*(a1 + 144) + 8);
  v26 = *(v25 + 40);
  *(v25 + 40) = 0;

  v117 = v24;
  if (*(a1 + 273) == 1)
  {
    os_unfair_lock_lock(&unk_1000A84B8);
    v27 = qword_1000A8438;
    v118 = qword_1000A84A0;
    v28 = v27;
    os_unfair_lock_unlock(&unk_1000A84B8);
    v29 = qword_1000A8428;
    v30 = qword_1000A8430;
    v32 = *(a1 + 32);
    v31 = *(a1 + 40);
    v33 = *(*(*(a1 + 136) + 8) + 40);
    v34 = *(a1 + 48);
    v35 = [*(a1 + 56) keyboardLanguage];
    v36 = [v31 rankingConfigurationWithMeContact:v29 emailAddresses:v30 phoneFavorites:v28 vipList:v118 clientBundle:v32 spotlightQuery:v33 userQuery:v34 tokenString:0 queryKind:11 flags:0 keyboardLanguage:v35];
    v37 = *(*(a1 + 144) + 8);
    v38 = *(v37 + 40);
    *(v37 + 40) = v36;
  }

  else
  {
    v40 = *(a1 + 32);
    v39 = *(a1 + 40);
    v41 = *(*(*(a1 + 136) + 8) + 40);
    v42 = *(a1 + 48);
    v28 = [*(a1 + 56) keyboardLanguage];
    v43 = [v39 rankingConfigurationWithMeContact:0 emailAddresses:0 phoneFavorites:0 vipList:0 clientBundle:v40 spotlightQuery:v41 userQuery:v42 tokenString:0 queryKind:11 flags:0 keyboardLanguage:v28];
    v44 = *(*(a1 + 144) + 8);
    v35 = *(v44 + 40);
    *(v44 + 40) = v43;
  }

  v45 = [*(*(*(a1 + 144) + 8) + 40) rankingQueries];
  v46 = *(*(a1 + 152) + 8);
  v47 = *(v46 + 40);
  *(v46 + 40) = v45;

  [*(a1 + 56) setParseUserQuery:0];
  [*(a1 + 56) setRankingQueries:*(*(*(a1 + 152) + 8) + 40)];
  [*(a1 + 56) setStrongRankingQueryCount:{objc_msgSend(*(*(*(a1 + 144) + 8) + 40), "strongRankingQueryCount")}];
  [*(a1 + 56) setDominantRankingQueryCount:{objc_msgSend(*(*(*(a1 + 144) + 8) + 40), "dominantRankingQueryCount")}];
  [*(a1 + 56) setDominatedRankingQueryCount:{objc_msgSend(*(*(*(a1 + 144) + 8) + 40), "dominatedRankingQueryCount")}];
  [*(a1 + 56) setShortcutBit:{objc_msgSend(*(*(*(a1 + 144) + 8) + 40), "shortcutBit")}];
  [*(a1 + 56) setHighMatchBit:{objc_msgSend(*(*(*(a1 + 144) + 8) + 40), "highMatchBit")}];
  [*(a1 + 56) setLowMatchBit:{objc_msgSend(*(*(*(a1 + 144) + 8) + 40), "lowMatchBit")}];
  [*(a1 + 56) setHighRecencyBit:{objc_msgSend(*(*(*(a1 + 144) + 8) + 40), "highRecencyBit")}];
  [*(a1 + 56) setLowRecencyBit:{objc_msgSend(*(*(*(a1 + 144) + 8) + 40), "lowRecencyBit")}];
  v48 = [*(*(*(a1 + 144) + 8) + 40) requiredAttributes];
  v49 = [v48 array];
  v50 = *(*(a1 + 160) + 8);
  v51 = *(v50 + 40);
  *(v50 + 40) = v49;

  v52 = *(a1 + 64);
  v53 = objc_opt_class();
  v54 = [*(a1 + 56) fetchAttributes];
  v55 = [v53 _makeUniqueFetchAttributesWithAttributes:v54 extraAttributes:*(*(*(a1 + 160) + 8) + 40)];
  [*(a1 + 56) setFetchAttributes:v55];

  v56 = [*(a1 + 56) fetchAttributes];
  v57 = *(*(a1 + 168) + 8);
  v58 = *(v57 + 40);
  *(v57 + 40) = v56;

  *(*(*(a1 + 176) + 8) + 24) = [*(*(*(a1 + 168) + 8) + 40) count];
  v59 = objc_opt_new();
  v60 = *(*(a1 + 112) + 8);
  v61 = *(v60 + 40);
  *(v60 + 40) = v59;

  v62 = [[NSMutableData alloc] initWithLength:(8 * *(*(*(a1 + 176) + 8) + 24) + 504) >> 6];
  v63 = *(*(a1 + 184) + 8);
  v64 = *(v63 + 40);
  *(v63 + 40) = v62;

  *(*(*(a1 + 192) + 8) + 24) = [*(*(*(a1 + 184) + 8) + 40) mutableBytes];
  v65 = *(*(*(a1 + 192) + 8) + 24);
  v66 = *(*(*(a1 + 176) + 8) + 24);
  *v65 = v66;
  bzero(v65 + 1, (8 * v66 + 504) >> 6);
  *(*(*(a1 + 200) + 8) + 24) = 0x7FFFFFFFFFFFFFFFLL;
  *(*(*(a1 + 208) + 8) + 24) = 0x7FFFFFFFFFFFFFFFLL;
  *(*(*(a1 + 216) + 8) + 24) = 0x7FFFFFFFFFFFFFFFLL;
  *(*(*(a1 + 224) + 8) + 24) = 0x7FFFFFFFFFFFFFFFLL;
  *(*(*(a1 + 232) + 8) + 24) = 0x7FFFFFFFFFFFFFFFLL;
  *(*(*(a1 + 240) + 8) + 24) = 0x7FFFFFFFFFFFFFFFLL;
  if (*(*(*(a1 + 176) + 8) + 24))
  {
    v67 = 0;
    v68 = MDItemContentCreationDate;
    v69 = MDItemBundleID;
    v116 = MDMailConversationID;
    v115 = MDQueryResultScoreL1;
    do
    {
      v70 = [*(*(*(a1 + 144) + 8) + 40) requiredAttributes];
      v71 = [*(*(*(a1 + 168) + 8) + 40) objectAtIndexedSubscript:v67];
      v72 = [v70 containsObject:v71];

      if (v72)
      {
        v73 = *(*(*(a1 + 192) + 8) + 24);
        if (*v73 > v67)
        {
          v73[(v67 >> 6) + 1] |= 1 << v67;
        }
      }

      v74 = [*(*(*(a1 + 168) + 8) + 40) objectAtIndexedSubscript:v67];
      v75 = [v74 isEqualToString:v68];

      v76 = a1 + 200;
      if (v75)
      {
        goto LABEL_37;
      }

      v77 = [*(*(*(a1 + 168) + 8) + 40) objectAtIndexedSubscript:v67];
      v78 = [v77 isEqualToString:v69];

      v76 = a1 + 208;
      if (v78)
      {
        goto LABEL_37;
      }

      v79 = [*(*(*(a1 + 168) + 8) + 40) objectAtIndexedSubscript:v67];
      v80 = [v79 isEqualToString:@"kMDQueryResultNewMatchedExtraQueriesField"];

      v76 = a1 + 216;
      if (v80)
      {
        goto LABEL_37;
      }

      v81 = [*(*(*(a1 + 168) + 8) + 40) objectAtIndexedSubscript:v67];
      v82 = [v81 isEqualToString:@"_kMDItemExternalID"];

      v76 = a1 + 224;
      if (v82)
      {
        goto LABEL_37;
      }

      v83 = [*(*(*(a1 + 168) + 8) + 40) objectAtIndexedSubscript:v67];
      v84 = [v83 isEqualToString:v116];

      v76 = a1 + 232;
      if ((v84 & 1) != 0 || ([*(*(*(a1 + 168) + 8) + 40) objectAtIndexedSubscript:v67], v85 = objc_claimAutoreleasedReturnValue(), v86 = objc_msgSend(v85, "isEqualToString:", v115), v85, v76 = a1 + 240, v86))
      {
LABEL_37:
        *(*(*v76 + 8) + 24) = v67;
      }

      ++v67;
    }

    while (v67 < *(*(*(a1 + 176) + 8) + 24));
  }

  v87 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [*(a1 + 80) count]);
  v88 = *(*(a1 + 248) + 8);
  v89 = *(v88 + 40);
  *(v88 + 40) = v87;

  v90 = [NSOrderedSet orderedSetWithArray:*(*(*(a1 + 168) + 8) + 40)];
  v142 = 0u;
  v143 = 0u;
  v144 = 0u;
  v145 = 0u;
  v91 = *(a1 + 80);
  v92 = [v91 countByEnumeratingWithState:&v142 objects:v146 count:16];
  if (v92)
  {
    v93 = v92;
    v94 = *v143;
    do
    {
      for (i = 0; i != v93; i = i + 1)
      {
        if (*v143 != v94)
        {
          objc_enumerationMutation(v91);
        }

        v96 = [v90 indexOfObject:*(*(&v142 + 1) + 8 * i)];
        v97 = *(*(*(a1 + 248) + 8) + 40);
        v98 = [NSNumber numberWithInteger:v96];
        [v97 addObject:v98];
      }

      v93 = [v91 countByEnumeratingWithState:&v142 objects:v146 count:16];
    }

    while (v93);
  }

  v99 = +[SPCoreSpotlightIndexer sharedInstance];
  v100 = *(*(*(a1 + 136) + 8) + 40);
  v101 = *(a1 + 56);
  v119[0] = _NSConcreteStackBlock;
  v119[1] = 3221225472;
  v119[2] = sub_1000479BC;
  v119[3] = &unk_1000937D0;
  v102 = *(a1 + 104);
  v128 = *(a1 + 112);
  v103 = *(a1 + 88);
  v104 = *(a1 + 120);
  v125 = v103;
  v129 = v104;
  v105 = *(a1 + 48);
  v106 = *(a1 + 56);
  v139 = *(a1 + 264);
  v107 = *(a1 + 40);
  v130 = *(a1 + 128);
  *&v108 = v107;
  *(&v108 + 1) = *(a1 + 64);
  *&v109 = v105;
  *(&v109 + 1) = v106;
  v120 = v109;
  v121 = v108;
  v122 = *(a1 + 32);
  v140 = *(a1 + 272);
  v110 = *(a1 + 72);
  v141 = *(a1 + 273);
  v131 = *(a1 + 136);
  v132 = *(a1 + 152);
  v133 = *(a1 + 168);
  v134 = *(a1 + 184);
  v135 = *(a1 + 200);
  v136 = *(a1 + 216);
  v137 = *(a1 + 232);
  v111 = *(a1 + 248);
  v123 = v110;
  v138 = v111;
  v124 = *(a1 + 80);
  v126 = *(a1 + 104);
  v127 = *(a1 + 96);
  v112 = [v99 taskForTopHitQueryWithQueryString:v100 queryContext:v101 eventHandler:0 resultsHandler:v102 completionHandler:v119];

  v113 = +[SPCoreSpotlightIndexer sharedInstance];
  [v113 startQueryTask:v112];

LABEL_21:
}

void sub_1000479BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SPLogForSPLogCategoryQuery();
  v5 = v4;
  if (gSPLogDebugAsDefault)
  {
    v6 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v6 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v4, v6))
  {
    v7 = [*(*(*(a1 + 112) + 8) + 40) count];
    *buf = 134218242;
    v137 = v7;
    v138 = 2112;
    v139 = v3;
    _os_log_impl(&_mh_execute_header, v5, v6, "Finished topHit query, resultsCount:%lu, error:%@", buf, 0x16u);
  }

  if (v3)
  {
    (*(*(a1 + 88) + 16))();
  }

  else if (*(*(*(a1 + 120) + 8) + 24) || !*(a1 + 32) || ([*(a1 + 40) queryEmbedding], v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
  {
    v8 = os_transaction_create();
    v9 = objc_autoreleasePoolPush();
    v10 = SPLogForSPLogCategoryDefault();
    v11 = v10;
    if (gSPLogDebugAsDefault)
    {
      v12 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v12 = OS_LOG_TYPE_DEBUG;
    }

    if (os_log_type_enabled(v10, v12))
    {
      v13 = objc_retainBlock(*(a1 + 88));
      *buf = 138412290;
      v137 = v13;
      _os_log_impl(&_mh_execute_header, v11, v12, "Finished completing %@", buf, 0xCu);
    }

    (*(*(a1 + 104) + 16))();
    (*(*(a1 + 88) + 16))();
    [*(a1 + 48) deactivate];
    objc_autoreleasePoolPop(v9);
    v14 = objc_opt_self();
  }

  else
  {
    [*(a1 + 40) setMaxCount:*(a1 + 256)];
    [*(a1 + 40) setGrouped:*(a1 + 256) != 0];
    v16 = [[NSMutableArray alloc] initWithCapacity:5];
    v17 = *(a1 + 48);
    v134 = v16;
    v18 = [v17 requery:&v134];
    v19 = v134;

    if (v18)
    {
      [*(a1 + 48) resetWithSearchString:v18];
      v20 = *(a1 + 56);
      v21 = *(a1 + 64);
      v22 = *(a1 + 264);
      *(&v119 + 1) = [*(a1 + 40) disableNLP];
      LOBYTE(v119) = v22;
      v23 = [v20 _topHitQueryParametersForSearchString:v18 searchEntities:&__NSArray0__struct contextIdentifier:v21 queryKind:11 needsFuzzy:0 checkForMath:0 isCJK:v119 disableNLP:11 disableOCR:*(a1 + 64) previousQueryKind:*(a1 + 72) clientBundle:objc_msgSend(*(a1 + 40) keyboardLanguage:"queryID") queryID:?];
      v24 = *(*(a1 + 128) + 8);
      v25 = *(v24 + 40);
      *(v24 + 40) = v23;

      v26 = [*(*(*(a1 + 128) + 8) + 40) objectForKeyedSubscript:@"query"];
      v27 = [v26 mutableCopy];

      if ([v19 count])
      {
        v28 = [v19 componentsJoinedByString:@" || "];
        v29 = [NSString stringWithFormat:@"(%@ || %@)", v27, v28];
        v30 = *(*(a1 + 136) + 8);
        v31 = *(v30 + 40);
        *(v30 + 40) = v29;
      }

      else
      {
        v39 = *(*(a1 + 136) + 8);
        v40 = v27;
        v28 = *(v39 + 40);
        *(v39 + 40) = v40;
      }

      v41 = *(*(a1 + 144) + 8);
      v42 = *(v41 + 40);
      *(v41 + 40) = 0;

      v123 = v19;
      v122 = v27;
      if (*(a1 + 265) == 1)
      {
        os_unfair_lock_lock(&unk_1000A84B8);
        v43 = qword_1000A8438;
        v124 = qword_1000A84A0;
        v44 = v43;
        os_unfair_lock_unlock(&unk_1000A84B8);
        v45 = qword_1000A8428;
        v46 = qword_1000A8430;
        v47 = *(a1 + 64);
        v48 = *(*(*(a1 + 136) + 8) + 40);
        v49 = *(a1 + 48);
        v50 = [*(a1 + 40) keyboardLanguage];
        v51 = [v49 rankingConfigurationWithMeContact:v45 emailAddresses:v46 phoneFavorites:v44 vipList:v124 clientBundle:v47 spotlightQuery:v48 userQuery:v18 tokenString:0 queryKind:11 flags:0 keyboardLanguage:v50];
        v52 = *(*(a1 + 144) + 8);
        v53 = *(v52 + 40);
        *(v52 + 40) = v51;
      }

      else
      {
        v54 = *(a1 + 64);
        v55 = *(*(*(a1 + 136) + 8) + 40);
        v56 = *(a1 + 48);
        v44 = [*(a1 + 40) keyboardLanguage];
        v57 = [v56 rankingConfigurationWithMeContact:0 emailAddresses:0 phoneFavorites:0 vipList:0 clientBundle:v54 spotlightQuery:v55 userQuery:v18 tokenString:0 queryKind:11 flags:0 keyboardLanguage:v44];
        v58 = *(*(a1 + 144) + 8);
        v50 = *(v58 + 40);
        *(v58 + 40) = v57;
      }

      v59 = [*(*(*(a1 + 144) + 8) + 40) rankingQueries];
      v60 = *(*(a1 + 152) + 8);
      v61 = *(v60 + 40);
      *(v60 + 40) = v59;

      [*(a1 + 40) setParseUserQuery:0];
      [*(a1 + 40) setRankingQueries:*(*(*(a1 + 152) + 8) + 40)];
      [*(a1 + 40) setStrongRankingQueryCount:{objc_msgSend(*(*(*(a1 + 144) + 8) + 40), "strongRankingQueryCount")}];
      [*(a1 + 40) setDominantRankingQueryCount:{objc_msgSend(*(*(*(a1 + 144) + 8) + 40), "dominantRankingQueryCount")}];
      [*(a1 + 40) setDominatedRankingQueryCount:{objc_msgSend(*(*(*(a1 + 144) + 8) + 40), "dominatedRankingQueryCount")}];
      [*(a1 + 40) setShortcutBit:{objc_msgSend(*(*(*(a1 + 144) + 8) + 40), "shortcutBit")}];
      [*(a1 + 40) setHighMatchBit:{objc_msgSend(*(*(*(a1 + 144) + 8) + 40), "highMatchBit")}];
      [*(a1 + 40) setLowMatchBit:{objc_msgSend(*(*(*(a1 + 144) + 8) + 40), "lowMatchBit")}];
      [*(a1 + 40) setHighRecencyBit:{objc_msgSend(*(*(*(a1 + 144) + 8) + 40), "highRecencyBit")}];
      [*(a1 + 40) setLowRecencyBit:{objc_msgSend(*(*(*(a1 + 144) + 8) + 40), "lowRecencyBit")}];
      v62 = [*(*(*(a1 + 144) + 8) + 40) requiredAttributes];
      v63 = [v62 array];
      v64 = *(*(a1 + 160) + 8);
      v65 = *(v64 + 40);
      *(v64 + 40) = v63;

      v66 = *(a1 + 56);
      v67 = objc_opt_class();
      v68 = [*(a1 + 40) fetchAttributes];
      v69 = [v67 _makeUniqueFetchAttributesWithAttributes:v68 extraAttributes:*(*(*(a1 + 160) + 8) + 40)];
      [*(a1 + 40) setFetchAttributes:v69];

      v70 = [*(a1 + 40) fetchAttributes];
      v71 = *(*(a1 + 168) + 8);
      v72 = *(v71 + 40);
      *(v71 + 40) = v70;

      *(*(*(a1 + 176) + 8) + 24) = [*(*(*(a1 + 168) + 8) + 40) count];
      v73 = objc_opt_new();
      v74 = *(*(a1 + 112) + 8);
      v75 = *(v74 + 40);
      *(v74 + 40) = v73;

      v76 = [[NSMutableData alloc] initWithLength:(8 * *(*(*(a1 + 176) + 8) + 24) + 504) >> 6];
      v77 = *(*(a1 + 184) + 8);
      v78 = *(v77 + 40);
      *(v77 + 40) = v76;

      *(*(*(a1 + 192) + 8) + 24) = [*(*(*(a1 + 184) + 8) + 40) mutableBytes];
      v79 = *(*(*(a1 + 192) + 8) + 24);
      v80 = *(*(*(a1 + 176) + 8) + 24);
      *v79 = v80;
      bzero(v79 + 1, (8 * v80 + 504) >> 6);
      *(*(*(a1 + 200) + 8) + 24) = 0x7FFFFFFFFFFFFFFFLL;
      *(*(*(a1 + 208) + 8) + 24) = 0x7FFFFFFFFFFFFFFFLL;
      *(*(*(a1 + 216) + 8) + 24) = 0x7FFFFFFFFFFFFFFFLL;
      *(*(*(a1 + 224) + 8) + 24) = 0x7FFFFFFFFFFFFFFFLL;
      *(*(*(a1 + 232) + 8) + 24) = 0x7FFFFFFFFFFFFFFFLL;
      *(*(*(a1 + 240) + 8) + 24) = 0x7FFFFFFFFFFFFFFFLL;
      if (*(*(*(a1 + 176) + 8) + 24))
      {
        v81 = 0;
        v82 = MDItemContentCreationDate;
        v83 = MDItemBundleID;
        v121 = MDMailConversationID;
        v120 = MDQueryResultScoreL1;
        do
        {
          v84 = [*(*(*(a1 + 144) + 8) + 40) requiredAttributes];
          v85 = [*(*(*(a1 + 168) + 8) + 40) objectAtIndexedSubscript:v81];
          v86 = [v84 containsObject:v85];

          if (v86)
          {
            v87 = *(*(*(a1 + 192) + 8) + 24);
            if (*v87 > v81)
            {
              v87[(v81 >> 6) + 1] |= 1 << v81;
            }
          }

          v88 = [*(*(*(a1 + 168) + 8) + 40) objectAtIndexedSubscript:v81];
          v89 = [v88 isEqualToString:v82];

          v90 = a1 + 200;
          if (v89)
          {
            goto LABEL_42;
          }

          v91 = [*(*(*(a1 + 168) + 8) + 40) objectAtIndexedSubscript:v81];
          v92 = [v91 isEqualToString:v83];

          v90 = a1 + 208;
          if (v92)
          {
            goto LABEL_42;
          }

          v93 = [*(*(*(a1 + 168) + 8) + 40) objectAtIndexedSubscript:v81];
          v94 = [v93 isEqualToString:@"kMDQueryResultNewMatchedExtraQueriesField"];

          v90 = a1 + 216;
          if (v94)
          {
            goto LABEL_42;
          }

          v95 = [*(*(*(a1 + 168) + 8) + 40) objectAtIndexedSubscript:v81];
          v96 = [v95 isEqualToString:@"_kMDItemExternalID"];

          v90 = a1 + 224;
          if (v96)
          {
            goto LABEL_42;
          }

          v97 = [*(*(*(a1 + 168) + 8) + 40) objectAtIndexedSubscript:v81];
          v98 = [v97 isEqualToString:v121];

          v90 = a1 + 232;
          if ((v98 & 1) != 0 || ([*(*(*(a1 + 168) + 8) + 40) objectAtIndexedSubscript:v81], v99 = objc_claimAutoreleasedReturnValue(), v100 = objc_msgSend(v99, "isEqualToString:", v120), v99, v90 = a1 + 240, v100))
          {
LABEL_42:
            *(*(*v90 + 8) + 24) = v81;
          }

          ++v81;
        }

        while (v81 < *(*(*(a1 + 176) + 8) + 24));
      }

      v101 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [*(a1 + 80) count]);
      v102 = *(*(a1 + 248) + 8);
      v103 = *(v102 + 40);
      *(v102 + 40) = v101;

      v104 = [NSOrderedSet orderedSetWithArray:*(*(*(a1 + 168) + 8) + 40)];
      v130 = 0u;
      v131 = 0u;
      v132 = 0u;
      v133 = 0u;
      v105 = *(a1 + 80);
      v106 = [v105 countByEnumeratingWithState:&v130 objects:v135 count:16];
      if (v106)
      {
        v107 = v106;
        v108 = *v131;
        do
        {
          for (i = 0; i != v107; i = i + 1)
          {
            if (*v131 != v108)
            {
              objc_enumerationMutation(v105);
            }

            v110 = [v104 indexOfObject:*(*(&v130 + 1) + 8 * i)];
            v111 = *(*(*(a1 + 248) + 8) + 40);
            v112 = [NSNumber numberWithInteger:v110];
            [v111 addObject:v112];
          }

          v107 = [v105 countByEnumeratingWithState:&v130 objects:v135 count:16];
        }

        while (v107);
      }

      v113 = +[SPCoreSpotlightIndexer sharedInstance];
      v114 = *(*(*(a1 + 136) + 8) + 40);
      v115 = *(a1 + 40);
      v125[0] = _NSConcreteStackBlock;
      v125[1] = 3221225472;
      v125[2] = sub_100048710;
      v125[3] = &unk_1000937A8;
      v129 = *(a1 + 112);
      v116 = *(a1 + 96);
      v127 = *(a1 + 88);
      v128 = *(a1 + 104);
      v126 = *(a1 + 48);
      v117 = [v113 taskForTopHitQueryWithQueryString:v114 queryContext:v115 eventHandler:0 resultsHandler:v116 completionHandler:v125];

      v118 = +[SPCoreSpotlightIndexer sharedInstance];
      [v118 startQueryTask:v117];

      v19 = v123;
      v32 = v122;
    }

    else
    {
      v32 = os_transaction_create();
      v33 = objc_autoreleasePoolPush();
      v34 = SPLogForSPLogCategoryDefault();
      v35 = v34;
      if (gSPLogDebugAsDefault)
      {
        v36 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        v36 = OS_LOG_TYPE_DEBUG;
      }

      if (os_log_type_enabled(v34, v36))
      {
        v37 = objc_retainBlock(*(a1 + 88));
        *buf = 138412290;
        v137 = v37;
        _os_log_impl(&_mh_execute_header, v35, v36, "Finished completing %@", buf, 0xCu);
      }

      (*(*(a1 + 104) + 16))();
      (*(*(a1 + 88) + 16))();
      [*(a1 + 48) deactivate];
      objc_autoreleasePoolPop(v33);
      v38 = objc_opt_self();
    }
  }
}

void sub_100048710(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SPLogForSPLogCategoryQuery();
  v5 = v4;
  if (gSPLogDebugAsDefault)
  {
    v6 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v6 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v4, v6))
  {
    v7 = [*(*(*(a1 + 56) + 8) + 40) count];
    v15 = 134218242;
    v16 = v7;
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&_mh_execute_header, v5, v6, "Finished topHit query, resultsCount:%lu, error:%@", &v15, 0x16u);
  }

  if (v3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = os_transaction_create();
    v9 = objc_autoreleasePoolPush();
    v10 = SPLogForSPLogCategoryDefault();
    v11 = v10;
    if (gSPLogDebugAsDefault)
    {
      v12 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v12 = OS_LOG_TYPE_DEBUG;
    }

    if (os_log_type_enabled(v10, v12))
    {
      v13 = objc_retainBlock(*(a1 + 40));
      v15 = 138412290;
      v16 = v13;
      _os_log_impl(&_mh_execute_header, v11, v12, "Finished completing %@", &v15, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
    (*(*(a1 + 40) + 16))();
    [*(a1 + 32) deactivate];
    objc_autoreleasePoolPop(v9);
    v14 = objc_opt_self();
  }
}

uint64_t sub_100048A28(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  result = [*(a1 + 32) cancelled];
  if ((result & 1) == 0)
  {
    v5 = si_tracing_current_span();
    v6 = *(v5 + 16);
    v128 = *v5;
    v129 = v6;
    v130 = *(v5 + 32);
    v7 = *v5;
    spanid = si_tracing_calc_next_spanid();
    v9 = *(v5 + 8);
    v10 = *(v5 + 24);
    *v5 = v7;
    *(v5 + 8) = spanid;
    *(v5 + 16) = v9;
    *(v5 + 28) = 102;
    *(v5 + 32) = "SPCoreSpotlightDatastore rank batch";
    si_tracing_log_span_begin();
    v104 = v5;
    context = objc_autoreleasePoolPush();
    v12 = *(v3 + 88);
    v13 = v12 * a2;
    v14 = v12 * a2 + v12;
    if (v14 >= *(v3 + 96))
    {
      v14 = *(v3 + 96);
    }

    v106 = v14;
    if (v13 < v14)
    {
      v105 = PRSRankingMailBundleString;
      v102 = v123;
      v103 = PRSRankingMessagesBundleString;
      *&v11 = 67109378;
      v100 = v11;
      v119 = v3;
      do
      {
        v108 = v13;
        v15 = [*(v3 + 40) objectAtIndexedSubscript:{v100, context, v102}];
        v16 = [v15 bundleIdentifier];
        obj = v15;
        IsSyndicatedPhotos = SSSectionIsSyndicatedPhotos();
        v18 = objc_opt_new();
        if ([v16 isEqualToString:off_1000A7FB0[0]])
        {
          objc_storeStrong((*(*(v119 + 72) + 8) + 40), obj);
        }

        v126 = 0u;
        v127 = 0u;
        v124 = 0u;
        v125 = 0u;
        v19 = [obj results];
        v20 = [v19 countByEnumeratingWithState:&v124 objects:v139 count:16];
        if (v20)
        {
          v21 = *v125;
          do
          {
            for (i = 0; i != v20; i = i + 1)
            {
              if (*v125 != v21)
              {
                objc_enumerationMutation(v19);
              }

              v23 = *(*(&v124 + 1) + 8 * i);
              v24 = [v23 rankingItem];

              if (v24)
              {
                v25 = [v23 rankingItem];
                [v25 setSectionBundleIdentifier:v16];

                v26 = [v23 rankingItem];
                [v18 addObject:v26];
              }
            }

            v20 = [v19 countByEnumeratingWithState:&v124 objects:v139 count:16];
          }

          while (v20);
        }

        if ([*(v119 + 32) cancelled])
        {

          break;
        }

        Current = CFAbsoluteTimeGetCurrent();
        v28 = *(v119 + 48);
        v29 = [obj bundleIdentifier];
        [v28 prepareItems:v18 inBundle:v29];

        **(v119 + 104) = CFAbsoluteTimeGetCurrent() - Current + **(v119 + 104);
        if (IsSyndicatedPhotos)
        {
          v110 = objc_opt_new();
          v109 = objc_opt_new();
          v30 = [obj resultsCount];
          v31 = [obj resultSet];
          v117 = [*(v119 + 48) isNLSearch];
          if ([*(v119 + 48) queryTermCount])
          {
            v32 = v30 == 0;
          }

          else
          {
            v32 = 1;
          }

          v33 = !v32;
          v113 = v33;
          v120 = v30;
          if (!v32)
          {
            v34 = 0;
            while (1)
            {
              v35 = [v31 objectAtIndex:v34];
              v36 = [v35 rankingItem];
              v37 = v36;
              if (v36)
              {
                v38 = [v36 L2FeatureVector];
                [v38 scoreForFeature:1929];
                v40 = v39;

                if (v40 == 1.0)
                {
                  break;
                }
              }

              if (v120 == ++v34)
              {
                v113 = 0;
                goto LABEL_33;
              }
            }

            v30 = v120;
          }

          if (v30)
          {
LABEL_33:
            v41 = 0;
            v111 = 0;
            v112 = 0;
            v42 = 0;
            v107 = v31;
            do
            {
              v43 = [v31 objectAtIndex:v42];
              v44 = [v43 rankingItem];
              v45 = [v44 L2FeatureVector];
              [v45 scoreForFeature:2392];
              v47 = v46;

              if (v44)
              {
                v48 = [v44 L2FeatureVector];
                [v48 scoreForFeature:1929];
                v50 = v49;

                v51 = [v44 L2FeatureVector];
                [v51 scoreForFeature:2380];
                v53 = v52;

                if (v47 == 1.0)
                {
                  v54 = v117;
                }

                else
                {
                  v54 = 0;
                }

                if (!((v113 ^ 1) & 1 | (v50 == 1.0)) && (v54 & 1) == 0 || (v50 == 1.0 ? (v60 = 1) : (v60 = v113), (v60 & 1) == 0 && v53 != 1.0 && ([v44 photosExactMatch] & 1) == 0 && ((objc_msgSend(v44, "photosMatch") | v54) & 1) == 0))
                {
                  if ([*(v119 + 56) pommes])
                  {
                    v55 = SPLogForSPLogCategoryDefault();
                    v56 = gSPLogInfoAsDefault;
                    if (os_log_type_enabled(v55, ((gSPLogInfoAsDefault & 1) == 0)))
                    {
                      v57 = [v44 identifier];
                      v58 = [v44 photosExactMatch];
                      v59 = [v44 photosMatch];
                      *buf = 138413314;
                      *&buf[4] = v57;
                      *&buf[12] = 1024;
                      *&buf[14] = v58;
                      *&buf[18] = 1024;
                      *&buf[20] = v59;
                      *v136 = 2048;
                      *&v136[2] = v47;
                      v137 = 1024;
                      v138 = v117;
                      _os_log_impl(&_mh_execute_header, v55, ((v56 & 1) == 0), "#####=== [Pommes Ranking] photo filtering ignored id:%@ exact:%d match:%d nl:%.0f isNL:%d", buf, 0x28u);

                      v31 = v107;
                    }
                  }

                  else
                  {
                    [v110 addIndex:v42];
                    [v109 addIndex:v41];
                    v55 = SPLogForSPLogCategoryDefault();
                    ++v112;
                    v61 = gSPLogInfoAsDefault;
                    v111 = 1;
                    if (os_log_type_enabled(v55, ((gSPLogInfoAsDefault & 1) == 0)))
                    {
                      v62 = [v44 identifier];
                      v63 = [v44 photosExactMatch];
                      v64 = [v44 photosMatch];
                      *buf = 138413314;
                      *&buf[4] = v62;
                      *&buf[12] = 1024;
                      *&buf[14] = v63;
                      *&buf[18] = 1024;
                      *&buf[20] = v64;
                      *v136 = 2048;
                      *&v136[2] = v47;
                      v137 = 1024;
                      v138 = v117;
                      _os_log_impl(&_mh_execute_header, v55, ((v61 & 1) == 0), "#####=== photo filtered id:%@ exact:%d match:%d nl:%.0f isNL:%d", buf, 0x28u);

                      v31 = v107;
                      v111 = 1;
                    }
                  }
                }

                ++v41;
              }

              ++v42;
            }

            while (v120 != v42);
            if (v111)
            {
              [v18 removeObjectsAtIndexes:v109];
              [v31 removeObjectsAtIndexes:v110];
              *(*(*(v119 + 80) + 8) + 24) -= v112;
            }
          }
        }

        v65 = [obj resultsCount];
        if ([*(v119 + 32) isPeopleSearch])
        {
          if ([v16 isEqualToString:v105])
          {
            if (v65 >= 0xC9)
            {
              goto LABEL_67;
            }
          }

          else
          {
            v66 = [v16 isEqualToString:v103];
            if (v65 > 0xC8)
            {
              v67 = v66;
            }

            else
            {
              v67 = 0;
            }

            if (v67)
            {
LABEL_67:
              v121 = objc_opt_new();
              v118 = objc_opt_new();
              v68 = [obj resultSet];
              v69 = [[NSMutableArray alloc] initWithCapacity:v65];
              v70 = 0;
              do
              {
                v71 = [v68 objectAtIndex:v70];
                v72 = [v71 rankingItem];
                if (v72)
                {
                  [v69 addObject:v72];
                }

                ++v70;
              }

              while (v65 != v70);
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x2020000000;
              [*(v119 + 56) currentTime];
              *v136 = v73;
              v122[0] = _NSConcreteStackBlock;
              v122[1] = 3221225472;
              v123[0] = sub_1000496B0;
              v123[1] = &unk_100093820;
              v123[2] = buf;
              [v69 sortWithOptions:16 usingComparator:v122];
              v74 = [v69 count];
              if (v74 >= 0xC9)
              {
                for (j = 200; j != v74; ++j)
                {
                  v76 = [v69 objectAtIndexedSubscript:j];
                  v77 = [v76 L2FeatureVector];
                  LODWORD(v78) = -915135504;
                  [v77 setOriginalL2Score:v78];
                }
              }

              v79 = 0;
              v116 = 0;
              v80 = 0;
LABEL_75:
              v114 = v80;
              do
              {
                v81 = [v68 objectAtIndex:v79];
                v82 = [v81 rankingItem];
                v83 = v82;
                if (v82)
                {
                  v84 = [v82 L2FeatureVector];
                  [v84 originalL2Score];
                  v86 = v85 == -1000000.0;

                  if (v86)
                  {
                    v87 = [v18 indexOfObject:v83];
                    if (v87 != 0x7FFFFFFFFFFFFFFFLL)
                    {
                      [v121 addIndex:v79];
                      [v118 addIndex:v87];

                      ++v116;
                      v80 = 1;
                      v32 = v65 - 1 == v79++;
                      if (!v32)
                      {
                        goto LABEL_75;
                      }

                      goto LABEL_88;
                    }

                    v88 = SPLogForSPLogCategoryDefault();
                    v89 = gSPLogInfoAsDefault;
                    if (os_log_type_enabled(v88, ((gSPLogInfoAsDefault & 1) == 0)))
                    {
                      *v131 = 0;
                      _os_log_impl(&_mh_execute_header, v88, ((v89 & 1) == 0), "Item to remove not found in array of ranking items", v131, 2u);
                    }
                  }
                }

                ++v79;
              }

              while (v65 != v79);
              if ((v114 & 1) == 0)
              {
                goto LABEL_91;
              }

LABEL_88:
              v90 = SPLogForSPLogCategoryDefault();
              v91 = gSPLogInfoAsDefault;
              if (os_log_type_enabled(v90, ((gSPLogInfoAsDefault & 1) == 0)))
              {
                *v131 = v100;
                v132 = v116;
                v133 = 2112;
                v134 = v16;
                _os_log_impl(&_mh_execute_header, v90, ((v91 & 1) == 0), "Removing %d items from %@", v131, 0x12u);
              }

              [v18 removeObjectsAtIndexes:v118];
              [v68 removeObjectsAtIndexes:v121];
              *(*(*(v119 + 80) + 8) + 24) -= v116;
LABEL_91:
              _Block_object_dispose(buf, 8);
            }
          }
        }

        if ([v18 count])
        {
          v92 = [v18 copy];
          [*(v119 + 64) setObject:v92 atIndexedSubscript:v108];
        }

        [v18 removeAllObjects];

        v13 = v108 + 1;
        v3 = v119;
      }

      while (v108 + 1 != v106);
    }

    objc_autoreleasePoolPop(context);
    v93 = *v104;
    v94 = *(v104 + 8);
    v95 = *(v104 + 16);
    v96 = *(v104 + 24);
    v97 = *(v104 + 28);
    v98 = *(v104 + 32);
    result = si_tracing_log_span_end();
    v99 = v129;
    *v104 = v128;
    *(v104 + 16) = v99;
    *(v104 + 32) = v130;
  }

  return result;
}

void sub_1000495CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  _Block_object_dispose(&a55, 8);
  sub_1000066D4(&a45);
  _Unwind_Resume(a1);
}

uint64_t sub_1000496B0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 interestingDate];
  v7 = [v5 interestingDate];

  [v6 timeIntervalSinceReferenceDate];
  v9 = v8 - *(*(*(a1 + 32) + 8) + 24);
  [v7 timeIntervalSinceReferenceDate];
  v11 = v10 - *(*(*(a1 + 32) + 8) + 24);
  if (v9 <= v11)
  {
    v12 = v9 < v11;
  }

  else
  {
    v12 = -1;
  }

  return v12;
}

uint64_t sub_10004976C(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) cancelled];
  if ((result & 1) == 0)
  {
    v4 = si_tracing_current_span();
    v5 = *(v4 + 16);
    v89 = *v4;
    v90 = v5;
    v91 = *(v4 + 32);
    v6 = *v4;
    spanid = si_tracing_calc_next_spanid();
    v8 = *(v4 + 8);
    v9 = *(v4 + 24);
    *v4 = v6;
    *(v4 + 8) = spanid;
    *(v4 + 16) = v8;
    *(v4 + 28) = 102;
    *(v4 + 32) = "SPCoreSpotlightDatastore handle attachments";
    si_tracing_log_span_begin();
    v61 = v4;
    context = objc_autoreleasePoolPush();
    v10 = *(a1 + 56);
    v11 = v10 * a2;
    v12 = v10 * a2 + v10;
    if (v12 >= *(a1 + 64))
    {
      v12 = *(a1 + 64);
    }

    v63 = v12;
    if (v11 < v12)
    {
      v62 = SSMailBundleIdentifier;
      while (1)
      {
        v64 = v11;
        v66 = [*(a1 + 40) objectAtIndexedSubscript:?];
        v13 = [v66 bundleIdentifier];
        v14 = [v13 isEqualToString:v62];

        if (v14)
        {
          break;
        }

LABEL_48:

        v11 = v64 + 1;
        if (v64 + 1 == v63)
        {
          goto LABEL_49;
        }
      }

      v15 = [v66 results];
      v16 = [v15 copy];

      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      obj = v16;
      v17 = [obj countByEnumeratingWithState:&v85 objects:v93 count:16];
      if (v17)
      {
        v72 = 0;
        v69 = 0;
        v18 = *v86;
        do
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v86 != v18)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v85 + 1) + 8 * i);
            if ((objc_opt_respondsToSelector() & 1) != 0 && [v20 clientData])
            {
              v21 = sub_10004BAE0([v20 clientData] + 64, 15);
              if (v21)
              {
                if (!v69)
                {
                  v69 = +[NSMutableDictionary dictionary];
                  v22 = +[NSMutableDictionary dictionary];

                  v72 = v22;
                }

                v23 = [v20 dataclass];
                v24 = [v69 objectForKeyedSubscript:v23];

                if (!v24)
                {
                  v24 = +[NSMutableArray array];
                  v25 = [v20 dataclass];
                  [v69 setObject:v24 forKeyedSubscript:v25];
                }

                v26 = [v72 objectForKeyedSubscript:v21];
                if (!v26 || (v27 = [v20 score], v29 = v28, v30 = objc_msgSend(v26, "score"), __PAIR128__(v31, v30) < __PAIR128__(v29, v27)))
                {
                  [v72 setObject:v20 forKeyedSubscript:v21];
                  if (v26)
                  {
                    v32 = SPLogForSPLogCategoryDefault();
                    v33 = gSPLogInfoAsDefault;
                    if (os_log_type_enabled(v32, ((gSPLogInfoAsDefault & 1) == 0)))
                    {
                      LOWORD(buf[0]) = 0;
                      _os_log_impl(&_mh_execute_header, v32, ((v33 & 1) == 0), "===^^ RANKING 4 Mail higher ranked replaced", buf, 2u);
                    }
                  }

                  else
                  {
                    [v24 addObject:v21];
                  }
                }
              }
            }
          }

          v17 = [obj countByEnumeratingWithState:&v85 objects:v93 count:16];
        }

        while (v17);

        if (!v69)
        {
          v52 = 0;
          goto LABEL_47;
        }

        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v34 = v69;
        v35 = [v34 countByEnumeratingWithState:&v81 objects:v92 count:16];
        if (v35)
        {
          v65 = *v82;
          v70 = v34;
          do
          {
            v67 = v35;
            for (j = 0; j != v67; j = j + 1)
            {
              if (*v82 != v65)
              {
                objc_enumerationMutation(v70);
              }

              v37 = *(*(&v81 + 1) + 8 * j);
              v38 = [v70 objectForKeyedSubscript:v37];
              v39 = rankingAttributeNameArray();
              v40 = dispatch_group_create();
              dispatch_group_enter(v40);
              objc_initWeak(buf, *(a1 + 48));
              v41 = +[NSMutableArray array];
              v42 = +[NSMutableArray array];
              v43 = +[SPCoreSpotlightIndexer sharedInstance];
              v44 = [v66 bundleIdentifier];
              v73[0] = _NSConcreteStackBlock;
              v73[1] = 3221225472;
              v73[2] = sub_100049EF0;
              v73[3] = &unk_100093870;
              objc_copyWeak(&v79, buf);
              v74 = *(a1 + 32);
              v75 = v72;
              v45 = v41;
              v76 = v45;
              v46 = v42;
              v77 = v46;
              v47 = v40;
              v78 = v47;
              [v43 fetchAttributesForProtectionClass:v37 attributes:v39 bundleID:v44 identifiers:v38 completion:v73];

              v48 = dispatch_time(0, 300000000);
              if (!dispatch_group_wait(v47, v48))
              {
                for (k = 0; [v45 count] > k; ++k)
                {
                  v50 = [v45 objectAtIndexedSubscript:k];
                  v51 = [v46 objectAtIndexedSubscript:k];
                  [v50 attachShadowArray:v51];
                }
              }

              objc_destroyWeak(&v79);
              objc_destroyWeak(buf);
            }

            v34 = v70;
            v35 = [v70 countByEnumeratingWithState:&v81 objects:v92 count:16];
          }

          while (v35);
        }

        v52 = v34;
      }

      else
      {
        v52 = 0;
        v72 = 0;
        v34 = obj;
      }

LABEL_47:
      goto LABEL_48;
    }

LABEL_49:
    objc_autoreleasePoolPop(context);
    v53 = *v61;
    v54 = *(v61 + 8);
    v55 = *(v61 + 16);
    v56 = *(v61 + 24);
    v57 = *(v61 + 28);
    v58 = *(v61 + 32);
    result = si_tracing_log_span_end();
    v59 = v90;
    *v61 = v89;
    *(v61 + 16) = v59;
    *(v61 + 32) = v91;
  }

  return result;
}

void sub_100049EF0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (!WeakRetained)
  {
LABEL_15:
    dispatch_group_leave(*(a1 + 64));
    goto LABEL_16;
  }

  if (([*(a1 + 32) cancelled] & 1) == 0)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          v11 = [*(a1 + 40) objectForKeyedSubscript:{v10, v13}];
          if (v11)
          {
            v12 = [v5 objectForKeyedSubscript:v10];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [*(a1 + 48) addObject:v11];
              [*(a1 + 56) addObject:v12];
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    goto LABEL_15;
  }

LABEL_16:
}

uint64_t sub_10004A084(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) cancelled];
  if ((result & 1) == 0)
  {
    v4 = si_tracing_current_span();
    v5 = *(v4 + 16);
    v123 = *v4;
    v124 = v5;
    v125 = *(v4 + 32);
    v6 = *v4;
    spanid = si_tracing_calc_next_spanid();
    v8 = *(v4 + 8);
    v9 = *(v4 + 24);
    *v4 = v6;
    *(v4 + 8) = spanid;
    *(v4 + 16) = v8;
    *(v4 + 28) = 102;
    *(v4 + 32) = "SPCoreSpotlightDatastore build results";
    si_tracing_log_span_begin();
    v99 = v4;
    context = objc_autoreleasePoolPush();
    v10 = *(a1 + 144);
    v11 = v10 * a2;
    v12 = v10 * a2 + v10;
    if (v12 >= *(a1 + 152))
    {
      v12 = *(a1 + 152);
    }

    v105 = v12;
    if (v11 >= v12)
    {
      goto LABEL_104;
    }

    v113 = SSSectionIdentifierSyndicatedLinks;
    v107 = SSSectionIdentifierSyndicatedPhotos;
    v100 = SSSectionIdentifierSyndicatedPhotosMessages;
    v93 = SSSectionIdentifierSyndicatedPhotosNotes;
    v88 = SSSectionIdentifierSyndicatedPhotosFiles;
    v86 = SSSectionIdentifierSyndicatedPhotosFromPhotos;
    v110 = SSSectionIdentifierUnsupportedSyndicatedContent;
    v104 = SSPeopleBundleIdentifier;
    v102 = SSSectionIdentifierPeopleSuggestions;
    v98 = PRSRankingAppsBundleString;
    v90 = SSContactsBundleIdentifier;
    v89 = PRSRankingFindMyBundleString;
    v87 = PRSRankingPeopleFindMyBundleString;
    v103 = SSMessagesBundleIdentifier;
    v101 = PRSRankingNotesBundleString;
    v97 = PRSRankingLocalFilesBundleString;
    v96 = PRSRankingFilesBundleString;
    v95 = PRSRankingFileProviderFilesBundleString;
    v106 = SSPhotosBundleIdentifier;
    while (1)
    {
      v108 = v11;
      v109 = [*(a1 + 40) objectAtIndexedSubscript:?];
      v111 = [v109 bundleIdentifier];
      if ([v111 isEqualToString:v113] & 1) != 0 || (objc_msgSend(v111, "isEqualToString:", v107) & 1) != 0 || (objc_msgSend(v111, "isEqualToString:", v100) & 1) != 0 || (objc_msgSend(v111, "isEqualToString:", v93) & 1) != 0 || (objc_msgSend(v111, "isEqualToString:", v88) & 1) != 0 || (objc_msgSend(v111, "isEqualToString:", v86))
      {
        goto LABEL_103;
      }

      v13 = [v109 results];
      v14 = [v13 copy];

      v91 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v14, "count")}];
      v94 = objc_opt_new();
      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      obj = v14;
      v15 = [obj countByEnumeratingWithState:&v119 objects:v129 count:16];
      if (!v15)
      {
        goto LABEL_99;
      }

      v114 = *v120;
      do
      {
        v115 = v15;
        for (i = 0; i != v115; i = i + 1)
        {
          if (*v120 != v114)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v119 + 1) + 8 * i);
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            v19 = *(a1 + 160);
            v20 = *(a1 + 48);
            v21 = *(a1 + 168);
            v22 = [*(a1 + 32) queryContext];
            v23 = [v17 resultWithTime:v20 searchString:v21 isCorrectedQuery:v22 withQueryContext:v19];

            v24 = [v17 rankingItem];
            v25 = [v24 L2FeatureVector];
            if (v25)
            {
              v26 = v17 == 0;
            }

            else
            {
              v26 = 1;
            }

            v27 = !v26;

            if (v27)
            {
              v127[0] = @"score";
              [v24 score];
              v28 = [NSNumber numberWithFloat:?];
              v128[0] = v28;
              v127[1] = @"raw score";
              [v24 rawScore];
              v29 = [NSNumber numberWithFloat:?];
              v128[1] = v29;
              v127[2] = @"original score";
              v30 = [v24 L2FeatureVector];
              [v30 originalL2Score];
              v31 = [NSNumber numberWithFloat:?];
              v128[2] = v31;
              v32 = [NSDictionary dictionaryWithObjects:v128 forKeys:v127 count:3];
              [v23 setLocalFeatures:v32];
            }

            v33 = [v17 rankingItem];
            [v33 score];
            [v23 setL2score:?];

            if (!v23)
            {
              goto LABEL_44;
            }
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v24 = 0;
              v23 = 0;
              goto LABEL_45;
            }

            v23 = v17;
            v24 = [v23 rankingItem];
            if (!v23)
            {
              goto LABEL_45;
            }
          }

          if (*(a1 + 169) == 1 && ([v23 protectionClass], v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v34, "isEqualToString:", @"Priority"), v34, v35))
          {
            [v23 setCoreSpotlightIndexUsed:2];
            if ([*(a1 + 56) priorityIndexFinishedInTime])
            {
              v36 = 2;
            }

            else
            {
              v36 = 1;
            }

            [v23 setCoreSpotlightIndexUsedReason:v36];
          }

          else
          {
            [v23 setCoreSpotlightIndexUsed:1];
          }

          [v23 setIsFuzzyMatch:{objc_msgSend(*(a1 + 32), "needsReRunForFuzzy")}];
          v37 = [v23 sectionBundleIdentifier];
          v38 = [v23 resultBundleId];
          if ([v37 isEqual:v113])
          {
            v39 = *(a1 + 64);
            objc_sync_enter(v39);
            [*(a1 + 64) addResults:v23];
            goto LABEL_39;
          }

          if ([v37 isEqual:v110])
          {
            goto LABEL_43;
          }

          if ([v37 isEqual:v107])
          {
            if ([v38 isEqual:v103])
            {
              v40 = [v24 sectionBundleIdentifier];
              v41 = [v40 isEqualToString:v106];

              if (v41)
              {
                v42 = *(a1 + 72);
                objc_sync_enter(v42);
                [*(a1 + 72) addResults:v23];
                goto LABEL_78;
              }
            }

            else
            {
              if ([v38 isEqual:v101])
              {
                v47 = [v24 sectionBundleIdentifier];
                v48 = [v47 isEqualToString:v106];

                if (!v48)
                {
                  goto LABEL_79;
                }

                v42 = *(a1 + 80);
                objc_sync_enter(v42);
                [*(a1 + 80) addResults:v23];
              }

              else
              {
                v126[0] = v97;
                v126[1] = v96;
                v126[2] = v95;
                v54 = [NSArray arrayWithObjects:v126 count:3];
                v55 = [v54 containsObject:v38];

                if (v55)
                {
                  v56 = [v24 sectionBundleIdentifier];
                  v57 = [v56 isEqualToString:v106];

                  if (!v57)
                  {
                    goto LABEL_79;
                  }

                  v42 = *(a1 + 88);
                  objc_sync_enter(v42);
                  [*(a1 + 88) addResults:v23];
                }

                else
                {
                  v42 = *(a1 + 96);
                  objc_sync_enter(v42);
                  [*(a1 + 96) addResults:v23];
                }
              }

LABEL_78:
              objc_sync_exit(v42);
            }

LABEL_79:
            v62 = [v24 sectionBundleIdentifier];
            v63 = [v62 isEqualToString:v106];

            if (v63)
            {
              v39 = *(a1 + 104);
              objc_sync_enter(v39);
              [*(a1 + 104) addResults:v23];
LABEL_39:
              objc_sync_exit(v39);
LABEL_40:
            }

LABEL_43:

            if ((isKindOfClass & 1) == 0)
            {
              goto LABEL_45;
            }

LABEL_44:
            [v17 clearClientData];
            goto LABEL_45;
          }

          if (([v37 isEqual:v104] & 1) != 0 || objc_msgSend(v37, "isEqual:", v102))
          {
            v43 = [v23 personIdentifier];
            if (!v43)
            {
              goto LABEL_43;
            }

            v44 = [v23 personIdentifier];
            v45 = [v44 hasPrefix:@"com.apple.spotlight"];

            if (!v45)
            {
              goto LABEL_43;
            }

            v46 = [v23 personType];
            if (([v46 isEqual:@"ml"] & 1) == 0 && objc_msgSend(v23, "hasTextContentMatch"))
            {

LABEL_76:
              v61 = *(*(*(a1 + 112) + 8) + 40);
              v39 = [v23 personIdentifier];
              [v61 setObject:v23 forKey:v39];
              goto LABEL_40;
            }

            v59 = [*(a1 + 32) queryContext];
            v60 = [v59 isSearchToolClient];

            if (v60)
            {
              goto LABEL_76;
            }

LABEL_89:
            v68 = v37;
            if (v68)
            {
              v39 = v68;
            }

            else
            {
              v39 = @"empty_bundle";
            }

            v69 = [v94 objectForKeyedSubscript:v39];
            v70 = v69;
            if (v69)
            {
              v71 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v69 unsignedIntValue] + 1);
              [v94 setObject:v71 forKeyedSubscript:v39];
            }

            else
            {
              [v94 setObject:&off_100098AE0 forKeyedSubscript:v39];
            }

            goto LABEL_40;
          }

          if (([v37 isEqual:v98] & 1) == 0 && objc_msgSend(v38, "isEqual:", v90))
          {
            if (([v23 hasTextContentMatch] & 1) == 0)
            {
              v49 = [*(a1 + 32) queryContext];
              v50 = [v49 isSearchToolClient];

              if (!v50)
              {
                goto LABEL_89;
              }
            }

            v51 = [v23 contactIdentifier];

            if (v51)
            {
              v52 = *(*(*(a1 + 120) + 8) + 40);
              v53 = [v23 contactIdentifier];
              [v52 setObject:v23 forKey:v53];
            }

LABEL_88:
            [v91 addObject:v23];
            goto LABEL_43;
          }

          v58 = [v23 userActivityRequiredString];
          if (![v58 length])
          {

LABEL_82:
            if (([v37 hasPrefix:@"com.apple"] & 1) == 0)
            {
              if ([SSLocalCEP isLowEngagementBundle:v37])
              {
                if (([SSLocalCEP isAllowlistedBundle:v37]& 1) == 0)
                {
                  v64 = [v23 rankingItem];
                  if (!v64 || ([v23 rankingItem], v65 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v65, "mostRecentTimeToQueryInMinutesWithCurrentTime:topicality:", CFAbsoluteTimeGetCurrent(), 0.0), v67 = v66 >= 129600.0, v65, v64, v67))
                  {
                    if (![v23 hasTextContentMatch])
                    {
                      goto LABEL_89;
                    }
                  }
                }
              }
            }

            goto LABEL_88;
          }

          if ([v111 isEqual:v89] & 1) != 0 || (objc_msgSend(v111, "isEqual:", v87))
          {
          }

          else
          {
            IsSyndicatedPhotos = SSSectionIsSyndicatedPhotos();

            if ((IsSyndicatedPhotos & 1) == 0)
            {
              goto LABEL_82;
            }
          }

LABEL_45:
        }

        v15 = [obj countByEnumeratingWithState:&v119 objects:v129 count:16];
      }

      while (v15);
LABEL_99:

      [v109 setResults:v91];
      v117[0] = _NSConcreteStackBlock;
      v117[1] = 3221225472;
      v117[2] = sub_10004AE38;
      v117[3] = &unk_100093898;
      v118 = *(a1 + 32);
      [v94 enumerateKeysAndObjectsUsingBlock:v117];
      if ([*(a1 + 32) cancelled])
      {

        goto LABEL_104;
      }

      v73 = [v109 bundleIdentifier];
      v74 = [v73 isEqualToString:off_1000A7FB0[0]];

      if (v74)
      {
        v75 = [*(a1 + 56) job];
        v76 = [v75 _docIDsToResultsDictionaryForSection:*(*(*(a1 + 136) + 8) + 40)];
        v77 = *(*(a1 + 128) + 8);
        v78 = *(v77 + 40);
        *(v77 + 40) = v76;
      }

LABEL_103:
      v11 = v108 + 1;
      if (v108 + 1 == v105)
      {
LABEL_104:
        objc_autoreleasePoolPop(context);
        v79 = *v99;
        v80 = *(v99 + 8);
        v81 = *(v99 + 16);
        v82 = *(v99 + 24);
        v83 = *(v99 + 28);
        v84 = *(v99 + 32);
        result = si_tracing_log_span_end();
        v85 = v124;
        *v99 = v123;
        *(v99 + 16) = v85;
        *(v99 + 32) = v125;
        return result;
      }
    }
  }

  return result;
}

void sub_10004AE38(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = SPLogForSPLogCategoryRanking();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) queryIdent];
    v9 = 134218498;
    v10 = v8;
    v11 = 2112;
    v12 = v5;
    v13 = 1024;
    v14 = [v6 unsignedIntValue];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] Filtering qid=%llu section=%@: removed items count=%u", &v9, 0x1Cu);
  }
}

int64_t sub_10004AF2C(id a1, id a2, id a3)
{
  v4 = a3;
  [a2 rankingScore];
  v6 = v5;
  [v4 rankingScore];
  v8 = v7;

  if (v6 <= v8)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

int64_t sub_10004AF84(id a1, id a2, id a3)
{
  v4 = a3;
  [a2 rankingScore];
  v6 = v5;
  [v4 rankingScore];
  v8 = v7;

  if (v6 <= v8)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

__n128 sub_10004AFDC(uint64_t a1, uint64_t a2)
{
  if (([*(a1 + 48) cancelled] & 1) == 0)
  {
    v5 = si_tracing_current_span();
    v24 = *v5;
    v25 = *(v5 + 16);
    v26 = *(v5 + 32);
    v6 = *v5;
    spanid = si_tracing_calc_next_spanid();
    v8 = *(v5 + 8);
    v9 = *(v5 + 24);
    *v5 = v6;
    *(v5 + 8) = spanid;
    *(v5 + 16) = v8;
    *(v5 + 28) = 102;
    *(v5 + 32) = "SPCoreSpotlightDatastore process section";
    si_tracing_log_span_begin();
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 80);
    v12 = v11 * a2;
    v13 = v12 + v11;
    if (v13 >= *(a1 + 88))
    {
      v14 = *(a1 + 88);
    }

    else
    {
      v14 = v13;
    }

    if (v12 < v14)
    {
      do
      {
        if ([*(a1 + 48) cancelled])
        {
          break;
        }

        v15 = [*(a1 + 56) objectAtIndexedSubscript:v12];
        v16 = [v15 results];
        v17 = [v16 count];

        if (v17)
        {
          [*(a1 + 64) processSection:v15 forQuery:*(a1 + 48) rawQuery:*(a1 + 72) usingTopHitThreshold:{*(a1 + 32), *(a1 + 40)}];
        }

        ++v12;
      }

      while (v14 != v12);
    }

    objc_autoreleasePoolPop(v10);
    v18 = *v5;
    v19 = *(v5 + 8);
    v20 = *(v5 + 16);
    v21 = *(v5 + 24);
    v22 = *(v5 + 28);
    v23 = *(v5 + 32);
    si_tracing_log_span_end();
    result = v24;
    *v5 = v24;
    *(v5 + 16) = v25;
    *(v5 + 32) = v26;
  }

  return result;
}

__n128 sub_10004B160(uint64_t a1, uint64_t a2)
{
  if (([*(a1 + 32) cancelled] & 1) == 0)
  {
    v5 = si_tracing_current_span();
    v23 = *v5;
    v24 = *(v5 + 16);
    v25 = *(v5 + 32);
    v6 = *v5;
    spanid = si_tracing_calc_next_spanid();
    v8 = *(v5 + 8);
    v9 = *(v5 + 24);
    *v5 = v6;
    *(v5 + 8) = spanid;
    *(v5 + 16) = v8;
    *(v5 + 28) = 102;
    *(v5 + 32) = "SPCoreSpotlightDatastore filter iCloud dupes";
    si_tracing_log_span_begin();
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 72);
    v12 = v11 * a2;
    v13 = v12 + v11;
    if (v13 >= *(a1 + 80))
    {
      v14 = *(a1 + 80);
    }

    else
    {
      v14 = v13;
    }

    if (v12 < v14)
    {
      do
      {
        if ([*(a1 + 32) cancelled])
        {
          break;
        }

        v15 = [*(a1 + 40) objectAtIndexedSubscript:v12];
        v16 = [*(a1 + 48) job];
        [v16 _filterDuplicateiCloudDriveResultsForSection:v15 iCloudDriveSection:*(*(*(a1 + 56) + 8) + 40) iCloudDriveResultsDictionary:*(*(*(a1 + 64) + 8) + 40)];

        ++v12;
      }

      while (v14 != v12);
    }

    objc_autoreleasePoolPop(v10);
    v17 = *v5;
    v18 = *(v5 + 8);
    v19 = *(v5 + 16);
    v20 = *(v5 + 24);
    v21 = *(v5 + 28);
    v22 = *(v5 + 32);
    si_tracing_log_span_end();
    result = v23;
    *v5 = v23;
    *(v5 + 16) = v24;
    *(v5 + 32) = v25;
  }

  return result;
}

void sub_10004B2FC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

id sub_10004B314()
{
  if (qword_1000A8560 != -1)
  {
    sub_100063558();
  }

  v1 = qword_1000A8558;

  return v1;
}

void sub_10004B358(id a1)
{
  qword_1000A8558 = rankingPrefetchedAttributesArray();

  _objc_release_x1();
}

BOOL sub_10004B610(void *a1)
{
  v1 = a1;
  v2 = [v1 fileProviderIdentifier];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v4 = [v1 fileProviderIdentifier];
    if ([v4 length])
    {
      v5 = [v1 userActivityRequiredString];
      v6 = v5 == 0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

unsigned int *sub_10004B760(uint64_t a1, void *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x90uLL, 0x10E004034F55327uLL);
  atomic_store(1u, v4);
  *(v4 + 7) = a1;
  v5 = vcnt_s8(*a2);
  v5.i16[0] = vaddlv_u8(v5);
  v6 = *(*(a2[7] + 8 * v5.u32[0]) + 40);
  *(v4 + 2) = *(*(a2[7] + 8 * v5.u32[0]) + 32);
  *(v4 + 3) = v6;
  v7 = sub_10004BAE0(a2, 10);
  if (([v7 isEqualToString:@"com.apple.mobilemail"] & 1) == 0)
  {
    v12 = &dword_100072B10;
    v11 = 7;
    while (1)
    {
      v13 = *v12++;
      v14 = sub_10004B890(a2, v13);
      if (v14)
      {
        v10 = *(v14 + 32);
        if (v10 != 0.0)
        {
          goto LABEL_5;
        }
      }

      if (!--v11)
      {
        goto LABEL_10;
      }
    }
  }

  if ((*a2 & 0x100000000) != 0)
  {
    v8 = vcnt_s8(*a2);
    v8.i16[0] = vaddlv_u8(v8);
    v9 = *(a2[7] + 8 * v8.u32[0]);
    if (v9)
    {
      v10 = *(v9 + 32);
      LODWORD(v11) = 1;
LABEL_5:
      v4[12] = v11;
      *(v4 + 5) = v10;
    }
  }

LABEL_10:
  v15 = sub_10004BC14(a2, 145).n64_f64[0];
  *(v4 + 13) = v15;

  return v4;
}

uint64_t sub_10004B890(uint64_t a1, uint64_t a2)
{
  if (a2 > 383)
  {
    return 0;
  }

  v3 = 1 << a2;
  if (a2 > 63)
  {
    if (a2 > 0x7F)
    {
      if (a2 > 0xBF)
      {
        if (a2 > 0xFF)
        {
          if (a2 > 0x13F)
          {
            v28 = *(a1 + 40);
            if ((v28 & v3) == 0)
            {
              return 0;
            }

            v27 = vaddvq_s64(vpadalq_u32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(*(a1 + 8))))), vpaddlq_u16(vpaddlq_u8(vcntq_s8(*(a1 + 24)))))) + vaddlv_u8(vcnt_s8(*a1)) + vaddlv_u8(vcnt_s8((v28 & (v3 - 1))));
          }

          else
          {
            v26 = *(a1 + 32);
            if ((v26 & v3) == 0)
            {
              return 0;
            }

            v27 = vaddlv_u8(vcnt_s8(*a1)) + vaddlv_u8(vcnt_s8((v26 & (v3 - 1)))) + vaddlv_u8(vcnt_s8(*(a1 + 8))) + vaddlv_u8(vcnt_s8(*(a1 + 16))) + vaddlv_u8(vcnt_s8(*(a1 + 24)));
          }

          v25 = *(a1 + 56) + 8 * v27;
          return *v25;
        }

        v17 = *(a1 + 24);
        if ((v17 & v3) != 0)
        {
          v18 = vcnt_s8(*a1);
          v18.i16[0] = vaddlv_u8(v18);
          v19 = v18.i32[0];
          v20 = vcnt_s8(*(a1 + 8));
          v20.i16[0] = vaddlv_u8(v20);
          v21 = v20.i32[0];
          v22 = vcnt_s8(*(a1 + 16));
          v22.i16[0] = vaddlv_u8(v22);
          v23 = v22.i32[0];
          v24 = vcnt_s8((v17 & (v3 - 1)));
          v24.i16[0] = vaddlv_u8(v24);
          v5 = v24.i32[0];
          v6 = *(a1 + 56) + 8 * v19 + 8 * v21 + 8 * v23;
          goto LABEL_15;
        }
      }

      else
      {
        v11 = *(a1 + 16);
        if ((v11 & v3) != 0)
        {
          v12 = vcnt_s8(*a1);
          v12.i16[0] = vaddlv_u8(v12);
          v13 = v12.i32[0];
          v14 = vcnt_s8(*(a1 + 8));
          v14.i16[0] = vaddlv_u8(v14);
          v15 = v14.i32[0];
          v16 = vcnt_s8((v11 & (v3 - 1)));
          v16.i16[0] = vaddlv_u8(v16);
          v5 = v16.i32[0];
          v6 = *(a1 + 56) + 8 * v13 + 8 * v15;
          goto LABEL_15;
        }
      }
    }

    else
    {
      v7 = *(a1 + 8);
      if ((v7 & v3) != 0)
      {
        v8 = vcnt_s8(*a1);
        v8.i16[0] = vaddlv_u8(v8);
        v9 = v8.i32[0];
        v10 = vcnt_s8((v7 & (v3 - 1)));
        v10.i16[0] = vaddlv_u8(v10);
        v5 = v10.i32[0];
        v6 = *(a1 + 56) + 8 * v9;
        goto LABEL_15;
      }
    }

    return 0;
  }

  if ((*a1 & v3) == 0)
  {
    return 0;
  }

  v4 = vcnt_s8((*a1 & (v3 - 1)));
  v4.i16[0] = vaddlv_u8(v4);
  v5 = v4.i32[0];
  v6 = *(a1 + 56);
LABEL_15:
  v25 = v6 + 8 * v5;
  return *v25;
}

_DWORD *sub_10004BAE0(uint64_t a1, CFIndex a2)
{
  if (*(a1 + 64))
  {
    v4 = sub_10004C07C(a1, a2);
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 ? v4 : 0;
    v6 = v5;
    if (v6)
    {
      v7 = v6;
      goto LABEL_22;
    }
  }

  v8 = sub_10004B890(a1, a2);
  if (v8)
  {
    v9 = v8;
    v10 = v8[6];
    if (v10 == 18)
    {
      if (v8[5])
      {
        goto LABEL_16;
      }

      v11 = *(v8 + 4);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v12 = 0;
        goto LABEL_20;
      }
    }

    else
    {
      if (v10 != 16)
      {
        if (v10 == 1 && !v8[5])
        {
          v8 = [[NSString alloc] initWithCString:*(v8 + 4) encoding:4];
          goto LABEL_21;
        }

LABEL_16:
        v8 = 0;
        goto LABEL_21;
      }

      if (v8[5])
      {
        goto LABEL_16;
      }
    }

    v12 = *(v9 + 4);
LABEL_20:
    v8 = v12;
  }

LABEL_21:
  v4 = v8;
LABEL_22:

  return v4;
}

__n64 sub_10004BC14(uint64_t a1, CFIndex a2)
{
  if (*(a1 + 64))
  {
    v4 = sub_10004C07C(a1, a2);
    if (v4)
    {
      v5 = v4;
      valuePtr.n64_u64[0] = 0;
      v6 = CFGetTypeID(v4);
      if (v6 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v5, kCFNumberDoubleType, &valuePtr);
        return valuePtr;
      }

      v8 = CFGetTypeID(v5);
      if (v8 == CFBooleanGetTypeID())
      {
        Value = CFBooleanGetValue(v5);
        result.n64_f64[0] = 1.0;
        if (!Value)
        {
          result.n64_f64[0] = 0.0;
        }

        return result;
      }
    }
  }

  v10 = sub_10004B890(a1, a2);
  result.n64_f64[0] = 0.0;
  if (!v10)
  {
    return result;
  }

  v11 = *(v10 + 24);
  if (v11 <= 7)
  {
    if (v11 <= 3)
    {
      if (v11 != 2)
      {
        if (v11 != 3)
        {
          return result;
        }

        goto LABEL_26;
      }
    }

    else
    {
      if (v11 == 4)
      {
        goto LABEL_29;
      }

      if (v11 == 5)
      {
LABEL_28:
        v12 = *(v10 + 32);
        goto LABEL_30;
      }

      if (v11 != 7)
      {
        return result;
      }
    }

    result.n64_f64[0] = *(v10 + 32);
    return result;
  }

  if (v11 <= 10)
  {
    if (v11 != 8)
    {
      if (v11 != 9)
      {
        goto LABEL_28;
      }

LABEL_29:
      v12 = *(v10 + 32);
      goto LABEL_30;
    }

LABEL_26:
    v12 = *(v10 + 32);
LABEL_30:
    result.n64_f64[0] = v12;
    return result;
  }

  switch(v11)
  {
    case 11:
      result.n64_f64[0] = *(v10 + 32);
      break;
    case 12:
      result.n64_u64[0] = *(v10 + 32);
      break;
    case 14:
      result.n64_u8[0] = *(v10 + 32);
      result.n64_f64[0] = result.n64_u64[0];
      break;
  }

  return result;
}

CFTypeRef sub_10004BD9C(uint64_t a1, uint64_t a2, CFTypeRef cf)
{
  *(a1 + 64) = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  *(a1 + 128) = *(a2 + 64);
  *(a1 + 96) = v4;
  *(a1 + 112) = v5;
  *(a1 + 80) = v3;
  *(a2 + 56) = 0;
  *(a1 + 32) = cf;
  return CFRetain(cf);
}

void sub_10004BDCC(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    v3 = *(a1 + 113);
    if (*(a1 + 113))
    {
      v4 = *(a1 + 120);
      do
      {
        v5 = *v4++;
        sub_10004BE4C(v5);
        --v3;
      }

      while (v3);
    }

    free(v2);
  }

  v6 = *(a1 + 128);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 128) = 0;
  }

  CFRelease(*(a1 + 32));

  free(a1);
}

void sub_10004BE4C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 16) = v2 - 1;
    return;
  }

  v3 = *(a1 + 20);
  if (v3 == 2)
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 64);
    v7 = *(v5 + 48);
    v12 = *(v5 + 32);
    v13 = v7;
    sub_10004D0C4(&v12, v6);
    v8 = *(v5 + 112);
    v9 = *(v5 + 96);
    v12 = *(v5 + 80);
    v13 = v9;
    sub_10004D0C4(&v12, v8);
    v10 = v5;
LABEL_17:
    free(v10);
    goto LABEL_18;
  }

  if (v3 == 3)
  {
    if (*(a1 + 24) == 1 && *(a1 + 32))
    {
      v4 = 0;
      do
      {
        free(*(*(a1 + 40) + 8 * v4++));
      }

      while (*(a1 + 32) > v4);
    }

    goto LABEL_16;
  }

  v11 = *(a1 + 24);
  if ((v11 - 16) < 3)
  {
    CFRelease(*(a1 + 32));
    goto LABEL_18;
  }

  if (v11 == 15)
  {
LABEL_16:
    v10 = *(a1 + 40);
    goto LABEL_17;
  }

  if (v11 == 1)
  {
    v10 = *(a1 + 32);
    goto LABEL_17;
  }

LABEL_18:

  free(a1);
}

void sub_10004BFA8(uint64_t a1, atomic_uint *a2)
{
  if (atomic_fetch_add(a2, 0xFFFFFFFF) == 1)
  {
    sub_10004BDCC(a2);
  }
}

atomic_uint *sub_10004BFC4(uint64_t a1, atomic_uint *a2)
{
  result = a2;
  atomic_fetch_add(a2, 1u);
  return result;
}

uint64_t sub_10004BFD4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_10004B890(a1, a2);
  if (!v4 || *(v4 + 24) != 4 || *(v4 + 20) != 3)
  {
    return 0;
  }

  v5 = *(v4 + 40);
  *a3 = *(v4 + 32);
  return v5;
}

uint64_t sub_10004C028(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_10004B890(a1, a2);
  if (!v4 || *(v4 + 24) != 7 || *(v4 + 20) != 3)
  {
    return 0;
  }

  v5 = *(v4 + 40);
  *a3 = *(v4 + 32);
  return v5;
}

const void *sub_10004C07C(uint64_t a1, CFIndex a2)
{
  if (CFArrayGetCount(*(a1 + 64)) <= a2)
  {
    return 0;
  }

  v4 = *(a1 + 64);

  return CFArrayGetValueAtIndex(v4, a2);
}

id sub_10004C0D8(uint64_t a1, uint64_t a2)
{
  v2 = sub_10004B890(a1, a2);
  if (v2 && *(v2 + 24) == 7 && *(v2 + 20) == 3)
  {
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  for (i = [[NSMutableArray alloc] initWithCapacity:v3]; v3; --v3)
  {
    v6 = [NSNumber alloc];
    v7 = *v4++;
    v8 = [v6 initWithLongLong:v7];
    [i addObject:v8];
  }

  v9 = [i copy];

  return v9;
}

void *sub_10004C1A4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 64) && ((v4 = sub_10004C07C(a1, a2), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? (v5 = 0) : (v5 = v4), (v6 = v5) != 0))
  {
    v7 = v6;
  }

  else
  {
    v8 = sub_10004B890(a1, a2);
    v9 = v8;
    if (v8)
    {
      v10 = *(v8 + 24);
      if (v10 == 17)
      {
        v9 = *(v8 + 32);
      }

      else if (v10 == 1 && *(v8 + 20) == 3)
      {
        v11 = [[NSMutableArray alloc] initWithCapacity:*(v8 + 32)];
        if (v9[4])
        {
          v12 = 0;
          do
          {
            v13 = [[NSString alloc] initWithCString:*(v9[5] + 8 * v12) encoding:4];
            [v11 addObject:v13];

            ++v12;
          }

          while (v12 < v9[4]);
        }

        v9 = [v11 copy];
      }

      else
      {
        v9 = 0;
      }
    }

    v4 = v9;
  }

  return v4;
}

double *sub_10004C300(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 64) && ((v4 = sub_10004C07C(a1, a2), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? (v5 = 0) : (v5 = v4), (v6 = v5) != 0))
  {
    v7 = v6;
  }

  else
  {
    v8 = sub_10004B890(a1, a2);
    if (v8)
    {
      if (*(v8 + 6) == 13 && !*(v8 + 5))
      {
        v8 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:v8[4]];
      }

      else
      {
        v8 = 0;
      }
    }

    v4 = v8;
  }

  return v4;
}

_DWORD *sub_10004C3D8(uint64_t a1, CFIndex a2)
{
  if (*(a1 + 64))
  {
    v4 = sub_10004C07C(a1, a2);
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 ? v4 : 0;
    v6 = v5;
    if (v6)
    {
      v7 = v6;
      goto LABEL_15;
    }
  }

  v8 = sub_10004B890(a1, a2);
  if (v8)
  {
    v9 = v8;
    v10 = v8[6];
    if (v10 == 18)
    {
      if (!v8[5])
      {
        v12 = *(v8 + 4);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = *(v9 + 4);
        }

        else
        {
          v13 = 0;
        }

        v8 = v13;
        goto LABEL_14;
      }
    }

    else if (v10 == 15 && !v8[5])
    {
      v8 = [NSData dataWithBytes:*(v8 + 5) length:*(v8 + 4)];
      goto LABEL_14;
    }

    v8 = 0;
  }

LABEL_14:
  v4 = v8;
LABEL_15:

  return v4;
}

void *sub_10004C4F4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 64) && ((v4 = sub_10004C07C(a1, a2), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? (v5 = 0) : (v5 = v4), (v6 = v5) != 0))
  {
    v7 = v6;
  }

  else
  {
    v8 = sub_10004B890(a1, a2);
    v9 = v8;
    if (v8)
    {
      if (*(v8 + 24) == 13 && *(v8 + 20) == 3)
      {
        v10 = [[NSMutableArray alloc] initWithCapacity:*(v8 + 32)];
        if (v9[4])
        {
          v11 = 0;
          do
          {
            v12 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:*(v9[5] + 8 * v11)];
            [v10 addObject:v12];

            ++v11;
          }

          while (v11 < v9[4]);
        }

        v9 = [v10 copy];
      }

      else
      {
        v9 = 0;
      }
    }

    v4 = v9;
  }

  return v4;
}

uint64_t sub_10004C634(uint64_t a1, CFIndex a2)
{
  if (*(a1 + 64))
  {
    v4 = sub_10004C07C(a1, a2);
    if (v4)
    {
      v5 = v4;
      valuePtr = 0;
      v6 = CFGetTypeID(v4);
      if (v6 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v5, kCFNumberLongLongType, &valuePtr);
        v7 = valuePtr == 0;
        goto LABEL_7;
      }

      v8 = CFGetTypeID(v5);
      if (v8 == CFBooleanGetTypeID())
      {
        v7 = CFBooleanGetValue(v5) == 0;
LABEL_7:
        v9 = !v7;
        return v9 & 1;
      }
    }
  }

  v10 = sub_10004B890(a1, a2);
  if (v10 && *(v10 + 24) == 14 && !*(v10 + 20))
  {
    v9 = *(v10 + 32);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_10004C718(uint64_t a1, uint64_t a2)
{
  v2 = sub_10004B890(a1, a2);
  if (v2)
  {
    return *(v2 + 24);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void *sub_10004C77C(char *a1, double a2)
{
  v2 = a1;
  if (a1)
  {
    switch(*(a1 + 6))
    {
      case 1:
        if (*(a1 + 5) != 3)
        {
          v3 = [[NSString alloc] initWithCString:*(a1 + 4) encoding:4];
          goto LABEL_84;
        }

        v6 = [[NSMutableArray alloc] initWithCapacity:*(a1 + 4)];
        if (v2[4])
        {
          v21 = 0;
          do
          {
            v22 = [[NSString alloc] initWithCString:*(v2[5] + 8 * v21) encoding:4];
            if (v22)
            {
              [v6 addObject:v22];
            }

            ++v21;
          }

          while (v21 < v2[4]);
        }

        goto LABEL_76;
      case 2:
        if (*(a1 + 5) != 3)
        {
          goto LABEL_66;
        }

        v6 = [[NSMutableArray alloc] initWithCapacity:*(a1 + 4)];
        if (v2[4])
        {
          v23 = 0;
          do
          {
            v24 = [NSNumber numberWithLongLong:*(v2[5] + 8 * v23)];
            [v6 addObject:v24];

            ++v23;
          }

          while (v23 < v2[4]);
        }

        goto LABEL_76;
      case 3:
        if (*(a1 + 5) != 3)
        {
          goto LABEL_41;
        }

        v6 = [[NSMutableArray alloc] initWithCapacity:*(a1 + 4)];
        if (v2[4])
        {
          v15 = 0;
          do
          {
            v16 = [NSNumber numberWithInt:*(v2[5] + 4 * v15)];
            [v6 addObject:v16];

            ++v15;
          }

          while (v15 < v2[4]);
        }

        goto LABEL_76;
      case 4:
        if (*(a1 + 5) != 3)
        {
          goto LABEL_77;
        }

        v6 = [[NSMutableArray alloc] initWithCapacity:*(a1 + 4)];
        if (v2[4])
        {
          v17 = 0;
          do
          {
            v18 = [NSNumber numberWithShort:*(v2[5] + 2 * v17)];
            [v6 addObject:v18];

            ++v17;
          }

          while (v17 < v2[4]);
        }

        goto LABEL_76;
      case 5:
        if (*(a1 + 5) != 3)
        {
          goto LABEL_25;
        }

        v6 = [[NSMutableArray alloc] initWithCapacity:*(a1 + 4)];
        if (v2[4])
        {
          v9 = 0;
          do
          {
            v10 = [NSNumber numberWithChar:*(v2[5] + v9)];
            [v6 addObject:v10];

            ++v9;
          }

          while (v9 < v2[4]);
        }

        goto LABEL_76;
      case 6:
        v4 = a1 + 32;
        v5 = 16;
        goto LABEL_55;
      case 7:
        if (*(a1 + 5) != 3)
        {
LABEL_66:
          v3 = [NSNumber numberWithLongLong:*(a1 + 4)];
          goto LABEL_84;
        }

        v6 = [[NSMutableArray alloc] initWithCapacity:*(a1 + 4)];
        if (v2[4])
        {
          v27 = 0;
          do
          {
            v28 = [NSNumber numberWithLongLong:*(v2[5] + 8 * v27)];
            [v6 addObject:v28];

            ++v27;
          }

          while (v27 < v2[4]);
        }

        goto LABEL_76;
      case 8:
        if (*(a1 + 5) != 3)
        {
LABEL_41:
          v3 = [NSNumber numberWithInt:*(a1 + 8)];
          goto LABEL_84;
        }

        v6 = [[NSMutableArray alloc] initWithCapacity:*(a1 + 4)];
        if (v2[4])
        {
          v19 = 0;
          do
          {
            v20 = [NSNumber numberWithInt:*(v2[5] + 4 * v19)];
            [v6 addObject:v20];

            ++v19;
          }

          while (v19 < v2[4]);
        }

        goto LABEL_76;
      case 9:
        if (*(a1 + 5) != 3)
        {
LABEL_77:
          v3 = [NSNumber numberWithShort:*(a1 + 16)];
          goto LABEL_84;
        }

        v6 = [[NSMutableArray alloc] initWithCapacity:*(a1 + 4)];
        if (v2[4])
        {
          v32 = 0;
          do
          {
            v33 = [NSNumber numberWithShort:*(v2[5] + 2 * v32)];
            [v6 addObject:v33];

            ++v32;
          }

          while (v32 < v2[4]);
        }

        goto LABEL_76;
      case 0xA:
        if (*(a1 + 5) != 3)
        {
LABEL_25:
          v3 = [NSNumber numberWithChar:a1[32]];
          goto LABEL_84;
        }

        v6 = [[NSMutableArray alloc] initWithCapacity:*(a1 + 4)];
        if (v2[4])
        {
          v13 = 0;
          do
          {
            v14 = [NSNumber numberWithChar:*(v2[5] + v13)];
            [v6 addObject:v14];

            ++v13;
          }

          while (v13 < v2[4]);
        }

        goto LABEL_76;
      case 0xB:
        if (*(a1 + 5) != 3)
        {
          LODWORD(a2) = *(a1 + 8);
          v3 = [NSNumber numberWithFloat:a2];
          goto LABEL_84;
        }

        v6 = [[NSMutableArray alloc] initWithCapacity:*(a1 + 4)];
        if (v2[4])
        {
          v30 = 0;
          do
          {
            LODWORD(v29) = *(v2[5] + 4 * v30);
            v31 = [NSNumber numberWithFloat:v29];
            [v6 addObject:v31];

            ++v30;
          }

          while (v30 < v2[4]);
        }

        goto LABEL_76;
      case 0xC:
        if (*(a1 + 5) != 3)
        {
          v3 = [NSNumber numberWithDouble:*(a1 + 4)];
          goto LABEL_84;
        }

        v6 = [[NSMutableArray alloc] initWithCapacity:*(a1 + 4)];
        if (v2[4])
        {
          v7 = 0;
          do
          {
            v8 = [NSNumber numberWithDouble:*(v2[5] + 8 * v7)];
            [v6 addObject:v8];

            ++v7;
          }

          while (v7 < v2[4]);
        }

        goto LABEL_76;
      case 0xD:
        if (*(a1 + 5) != 3)
        {
          v3 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:*(a1 + 4)];
          goto LABEL_84;
        }

        v6 = [[NSMutableArray alloc] initWithCapacity:*(a1 + 4)];
        if (v2[4])
        {
          v11 = 0;
          do
          {
            v12 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:*(v2[5] + 8 * v11)];
            [v6 addObject:v12];

            ++v11;
          }

          while (v11 < v2[4]);
        }

        goto LABEL_76;
      case 0xE:
        if (*(a1 + 5) == 3)
        {
          v6 = [[NSMutableArray alloc] initWithCapacity:*(a1 + 4)];
          if (v2[4])
          {
            v25 = 0;
            do
            {
              v26 = [NSNumber numberWithBool:*(v2[5] + v25)];
              [v6 addObject:v26];

              ++v25;
            }

            while (v25 < v2[4]);
          }

LABEL_76:
          v2 = [v6 copy];
        }

        else
        {
          v3 = [NSNumber numberWithBool:a1[32]];
LABEL_84:
          v2 = v3;
        }

        break;
      case 0xF:
        v5 = *(a1 + 4);
        v4 = *(a1 + 5);
LABEL_55:
        v3 = [NSData dataWithBytes:v4 length:v5];
        goto LABEL_84;
      case 0x10:
      case 0x11:
      case 0x12:
        v3 = *(a1 + 4);
        goto LABEL_84;
      default:
        v2 = 0;
        break;
    }
  }

  return v2;
}

const __CFNull *sub_10004CED8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 64) && (v4 = sub_10004C07C(a1, a2)) != 0 && v4 != kCFNull)
  {
    v5 = v4;
  }

  else
  {
    v6 = sub_10004B890(a1, a2);
    v5 = sub_10004C77C(v6, v7);
  }

  return v5;
}

uint64_t sub_10004CF54(uint64_t a1, CFIndex a2)
{
  if (*(a1 + 64))
  {
    v4 = sub_10004C07C(a1, a2);
    if (v4)
    {
      v5 = v4;
      valuePtr = 0;
      v6 = CFGetTypeID(v4);
      if (v6 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v5, kCFNumberLongLongType, &valuePtr);
        return valuePtr;
      }

      v8 = CFGetTypeID(v5);
      if (v8 == CFBooleanGetTypeID())
      {
        return CFBooleanGetValue(v5) != 0;
      }
    }
  }

  result = sub_10004B890(a1, a2);
  if (result)
  {
    v9 = result;
    result = 0;
    v10 = *(v9 + 24);
    if (v10 <= 6)
    {
      if (v10 > 3)
      {
        if (v10 != 4)
        {
          if (v10 != 5)
          {
            return result;
          }

          return *(v9 + 32);
        }

        return *(v9 + 32);
      }

      if (v10 != 2)
      {
        if (v10 != 3)
        {
          return result;
        }

        return *(v9 + 32);
      }
    }

    else
    {
      if (v10 > 8)
      {
        if (v10 != 9)
        {
          if (v10 != 10)
          {
            if (v10 == 14)
            {
              return *(v9 + 32);
            }

            return result;
          }

          return *(v9 + 32);
        }

        return *(v9 + 32);
      }

      if (v10 != 7)
      {
        return *(v9 + 32);
      }
    }

    return *(v9 + 32);
  }

  return result;
}

uint64_t sub_10004D0A4(uint64_t a1, uint64_t a2)
{
  v2 = sub_10004B890(a1, a2);
  v3 = *(v2 + 40);
  return *(v2 + 32);
}

void sub_10004D0C4(uint64_t *a1, int a2)
{
  if ((a2 - 16) >= 3)
  {
    if (a2 != 1)
    {
      if (a2 != 19)
      {
        return;
      }

      v4 = *a1;
      if (*(*a1 + 64) == 1 && *(v4 + 16) >= 1)
      {
        v5 = 0;
        do
        {
          free(*(*(v4 + 40) + 8 * v5++));
        }

        while (v5 < *(v4 + 16));
      }

      free(*(v4 + 40));
    }

    v6 = *a1;

    free(v6);
  }

  else
  {
    v3 = *a1;
    if (*a1)
    {

      CFRelease(v3);
    }
  }
}

const __CFNull *sub_10004D198(uint64_t a1, int a2, uint64_t a3, double a4)
{
  switch(a2)
  {
    case 1:
      v4 = [[NSString alloc] initWithCString:*(*(a1 + 40) + 8 * a3) encoding:4];
      break;
    case 2:
    case 7:
      v4 = [NSNumber numberWithLongLong:*(*(a1 + 40) + 8 * a3)];
      break;
    case 3:
    case 8:
      v4 = [NSNumber numberWithInt:*(*(a1 + 40) + 4 * a3)];
      break;
    case 4:
    case 9:
      v4 = [NSNumber numberWithShort:*(*(a1 + 40) + 2 * a3)];
      break;
    case 5:
    case 10:
      v4 = [NSNumber numberWithChar:*(*(a1 + 40) + a3)];
      break;
    case 11:
      LODWORD(a4) = *(*(a1 + 40) + 4 * a3);
      v4 = [NSNumber numberWithFloat:a4];
      break;
    case 12:
      v4 = [NSNumber numberWithDouble:*(*(a1 + 40) + 8 * a3)];
      break;
    case 13:
      v4 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:*(*(a1 + 40) + 8 * a3)];
      break;
    case 14:
      v4 = [NSNumber numberWithBool:*(*(a1 + 40) + a3)];
      break;
    default:
      v4 = kCFNull;
      break;
  }

  return v4;
}

id sub_10004D308(uint64_t *a1)
{
  v2 = [[NSMutableArray alloc] initWithCapacity:*(*a1 + 32)];
  v4 = *a1;
  v5 = *(*a1 + 64);
  v6 = v5 > 0xE;
  v7 = (1 << v5) & 0x7FBE;
  if (v6 || v7 == 0)
  {
    v11 = 0;
  }

  else
  {
    if (*(v4 + 16))
    {
      v9 = 0;
      do
      {
        v10 = sub_10004D198(v4, *(v4 + 64), v9, v3);
        if (v10)
        {
          [v2 addObject:v10];
        }

        ++v9;
        v4 = *a1;
      }

      while (v9 < *(*a1 + 16));
    }

    v11 = v2;
  }

  return v11;
}

double *sub_10004D3E0(double *a1, int a2, double a3)
{
  if (a1)
  {
    switch(a2)
    {
      case 1:
        a1 = [[NSString alloc] initWithCString:*a1 encoding:4];
        break;
      case 2:
      case 7:
        a1 = [NSNumber numberWithLongLong:*a1];
        break;
      case 3:
      case 8:
        a1 = [NSNumber numberWithInt:*a1];
        break;
      case 4:
      case 9:
        a1 = [NSNumber numberWithShort:*a1];
        break;
      case 5:
      case 10:
        a1 = [NSNumber numberWithChar:*a1];
        break;
      case 6:
        v7 = a1;
        v8 = 16;
        goto LABEL_12;
      case 11:
        LODWORD(a3) = *a1;
        a1 = [NSNumber numberWithFloat:a3];
        break;
      case 12:
        a1 = [NSNumber numberWithDouble:*a1];
        break;
      case 13:
        a1 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:*a1];
        break;
      case 14:
        a1 = [NSNumber numberWithBool:*a1];
        break;
      case 15:
        v8 = *a1;
        v7 = *(a1 + 1);
LABEL_12:
        a1 = [NSData dataWithBytes:v7 length:v8, v4, v3, v5];
        break;
      case 16:
      case 17:
      case 18:
        a1 = *a1;
        break;
      case 19:
        a1 = sub_10004D308(a1);
        break;
      default:
        a1 = 0;
        goto LABEL_21;
    }
  }

  else
  {
LABEL_21:
  }

  return a1;
}

uint64_t sub_10004D574(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  if (*(a2 + 16) < __PAIR128__(v2, v3))
  {
    return 1;
  }

  if (__PAIR128__(v2, v3) < *(a2 + 16))
  {
    return -1;
  }

  v5 = *(a1 + 52);
  v6 = *(a2 + 52);
  if (v5 > v6)
  {
    return 1;
  }

  if (v5 < v6)
  {
    return -1;
  }

  v7 = *(a1 + 48);
  v8 = *(a2 + 48);
  if (v7 > v8)
  {
    return 1;
  }

  if (v7 < v8)
  {
    return -1;
  }

  v9 = *(a1 + 40);
  v10 = *(a2 + 40);
  if (v9 > v10)
  {
    return 1;
  }

  if (v9 >= v10)
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

uint64_t sub_10004D5E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(a2 + 40);
  if (v2 >= v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = -1;
  }

  if (v2 > v3)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

void sub_10004EE70(id a1)
{
  v17 = PRSRankingQueryIndexDictionary();
  v1 = [v17 objectForKeyedSubscript:PRSRankingDisplayNameTokenizedPrefixMatch];
  v2 = [v1 integerValue];
  v3 = 1 << v2;
  if ((v2 & 0x40) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = 1 << v2;
  }

  if ((v2 & 0x40) == 0)
  {
    v3 = 0;
  }

  qword_1000A8570 |= v4;
  *algn_1000A8578 |= v3;

  v5 = [v17 objectForKeyedSubscript:PRSRankingAlternateNameExactWordMatch];
  v6 = [v5 integerValue];
  v7 = 1 << v6;
  if ((v6 & 0x40) != 0)
  {
    v8 = 0;
  }

  else
  {
    v8 = 1 << v6;
  }

  if ((v6 & 0x40) == 0)
  {
    v7 = 0;
  }

  qword_1000A8570 |= v8;
  *algn_1000A8578 |= v7;

  v9 = [v17 objectForKeyedSubscript:PRSRankingAlternateNameExactPrefixMatch];
  v10 = [v9 integerValue];
  v11 = 1 << v10;
  if ((v10 & 0x40) != 0)
  {
    v12 = 0;
  }

  else
  {
    v12 = 1 << v10;
  }

  if ((v10 & 0x40) == 0)
  {
    v11 = 0;
  }

  qword_1000A8570 |= v12;
  *algn_1000A8578 |= v11;

  v13 = [v17 objectForKeyedSubscript:PRSRankingAlternateNameExactMatch];
  v14 = [v13 integerValue];
  v15 = 1 << v14;
  if ((v14 & 0x40) != 0)
  {
    v16 = 0;
  }

  else
  {
    v16 = 1 << v14;
  }

  if ((v14 & 0x40) == 0)
  {
    v15 = 0;
  }

  qword_1000A8570 |= v16;
  *algn_1000A8578 |= v15;
}

void sub_10004EFD4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v9 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = *(a1 + 32);
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v16 + 1) + 8 * i);
        if ((([v9 hasPrefix:{v15, v16}] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", v15)) && *(a1 + 56) == ++*(*(*(a1 + 40) + 8) + 24))
        {
          *(*(*(a1 + 48) + 8) + 24) = 1;
          *a7 = 1;
          goto LABEL_13;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

void sub_10004F144(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v9 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = *(a1 + 32);
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v16 + 1) + 8 * i);
        if ((([v9 hasPrefix:{v15, v16}] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", v15)) && *(a1 + 56) == ++*(*(*(a1 + 40) + 8) + 24))
        {
          *(*(*(a1 + 48) + 8) + 24) = 1;
          *a7 = 1;
          goto LABEL_13;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

void sub_10004F7A0(id a1)
{
  v17 = PRSRankingQueryIndexDictionary();
  v1 = [v17 objectForKeyedSubscript:PRSRankingDisplayNameTokenizedPrefixMatch];
  v2 = [v1 integerValue];
  v3 = 1 << v2;
  if ((v2 & 0x40) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = 1 << v2;
  }

  if ((v2 & 0x40) == 0)
  {
    v3 = 0;
  }

  *&xmmword_1000A8590 = v4 | xmmword_1000A8590;
  *(&xmmword_1000A8590 + 1) |= v3;

  v5 = [v17 objectForKeyedSubscript:PRSRankingAlternateNameExactWordMatch];
  v6 = [v5 integerValue];
  v7 = 1 << v6;
  if ((v6 & 0x40) != 0)
  {
    v8 = 0;
  }

  else
  {
    v8 = 1 << v6;
  }

  if ((v6 & 0x40) == 0)
  {
    v7 = 0;
  }

  *&xmmword_1000A8590 = v8 | xmmword_1000A8590;
  *(&xmmword_1000A8590 + 1) |= v7;

  v9 = [v17 objectForKeyedSubscript:PRSRankingAlternateNameExactPrefixMatch];
  v10 = [v9 integerValue];
  v11 = 1 << v10;
  if ((v10 & 0x40) != 0)
  {
    v12 = 0;
  }

  else
  {
    v12 = 1 << v10;
  }

  if ((v10 & 0x40) == 0)
  {
    v11 = 0;
  }

  *&xmmword_1000A8590 = v12 | xmmword_1000A8590;
  *(&xmmword_1000A8590 + 1) |= v11;

  v13 = [v17 objectForKeyedSubscript:PRSRankingAlternateNameExactMatch];
  v14 = [v13 integerValue];
  v15 = 1 << v14;
  if ((v14 & 0x40) != 0)
  {
    v16 = 0;
  }

  else
  {
    v16 = 1 << v14;
  }

  if ((v14 & 0x40) == 0)
  {
    v15 = 0;
  }

  *&xmmword_1000A8590 = v16 | xmmword_1000A8590;
  *(&xmmword_1000A8590 + 1) |= v15;
}

void sub_100050F98(id a1)
{
  v5 = PRSRankingQueryIndexDictionary();
  v1 = [v5 objectForKeyedSubscript:PRSRankingDisplayNameTokenizedPrefixMatch];
  v2 = [v1 integerValue];
  v3 = 1 << v2;
  if ((v2 & 0x40) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = 1 << v2;
  }

  if ((v2 & 0x40) == 0)
  {
    v3 = 0;
  }

  *&xmmword_1000A85B0 = v4 | xmmword_1000A85B0;
  *(&xmmword_1000A85B0 + 1) |= v3;
}

void sub_100051AFC(id a1)
{
  qword_1000A85C8 = objc_alloc_init(NSMutableDictionary);

  _objc_release_x1();
}

void sub_100052298(id a1)
{
  v1 = +[NSMutableCharacterSet whitespaceAndNewlineCharacterSet];
  v2 = qword_1000A85D8;
  qword_1000A85D8 = v1;

  v3 = qword_1000A85D8;

  [v3 addCharactersInRange:{65532, 0xFFFFLL}];
}

void sub_100055E60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location, char a27)
{
  objc_destroyWeak((v27 + 40));
  objc_destroyWeak(&location);
  sub_1000066D4(&a27);
  _Unwind_Resume(a1);
}

void sub_100055EAC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SDController workQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v5 = *(a1 + 64);
  v16 = *(a1 + 48);
  v12[2] = sub_10005600C;
  v12[3] = &unk_100093A60;
  v17 = v5;
  v18 = *(a1 + 80);
  objc_copyWeak(&v15, (a1 + 40));
  v13 = *(a1 + 32);
  v6 = v3;
  v14 = v6;
  v7 = v12;
  v8 = v4;
  v9 = qos_class_self();
  if (v9 < 0x1A)
  {
    v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v7);
  }

  else
  {
    v10 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v9, 0, v7);
  }

  v11 = v10;

  dispatch_async(v8, v11);
  objc_destroyWeak(&v15);
}

double sub_10005600C(uint64_t a1)
{
  v2 = si_tracing_current_span();
  v3 = *(v2 + 16);
  v26 = *v2;
  v27 = v3;
  v28 = *(v2 + 32);
  v4 = *(a1 + 72);
  *v2 = *(a1 + 56);
  *(v2 + 16) = v4;
  *(v2 + 32) = *(a1 + 88);
  v5 = *(a1 + 72);
  v23 = *(a1 + 56);
  v24 = v5;
  v25 = *(a1 + 88);
  v6 = *v2;
  spanid = si_tracing_calc_next_spanid();
  v8 = *(v2 + 8);
  v9 = *(v2 + 24);
  *v2 = v6;
  *(v2 + 8) = spanid;
  *(v2 + 16) = v8;
  *(v2 + 28) = 102;
  *(v2 + 32) = "SPDataDetectorsDataStore completion";
  si_tracing_log_span_begin();
  v10 = SPLogForSPLogCategoryTelemetry();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v12 = [WeakRetained externalID];

  if (v12 && os_signpost_enabled(v10))
  {
    *v22 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, v12, "dataDetectorsLatency", " enableTelemetry=YES ", v22, 2u);
  }

  v13 = objc_loadWeakRetained((a1 + 48));
  [v13 storeCompletedSearch:*(a1 + 32) withSections:*(a1 + 40)];

  v14 = *v2;
  v15 = *(v2 + 8);
  v16 = *(v2 + 16);
  v17 = *(v2 + 24);
  v18 = *(v2 + 28);
  v19 = *(v2 + 32);
  si_tracing_log_span_end();
  result = *&v26;
  v21 = v27;
  *v2 = v26;
  *(v2 + 16) = v21;
  *(v2 + 32) = v28;
  return result;
}

void sub_100056178(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19)
{
  *v19 = a17;
  *(v19 + 16) = a18;
  *(v19 + 32) = a19;
  _Unwind_Resume(exception_object);
}

void sub_100056960(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  _Block_object_dispose((v31 - 160), 8);
  sub_1000066D4(v31 - 128);
  _Unwind_Resume(a1);
}

void sub_1000569D4(id a1)
{
  v1 = [NSBundle bundleForClass:objc_opt_class()];
  v2 = [v1 localizedStringForKey:@"DICTIONARY_DEFINITION_TRIGGER_1" value:&stru_100094040 table:@"Search"];
  v3 = qword_1000A85F0;
  qword_1000A85F0 = v2;

  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v6 localizedStringForKey:@"DICTIONARY_DEFINITION_TRIGGER_2" value:&stru_100094040 table:@"Search"];
  v5 = qword_1000A85F8;
  qword_1000A85F8 = v4;
}

void sub_100056AC8(id a1)
{
  qword_1000A8600 = dispatch_queue_create("dictionary queue", 0);

  _objc_release_x1();
}

double sub_100056B08(uint64_t a1)
{
  v2 = si_tracing_current_span();
  v3 = *(v2 + 16);
  v74 = *v2;
  v75 = v3;
  v76 = *(v2 + 32);
  v4 = *v2;
  spanid = si_tracing_calc_next_spanid();
  v6 = *(v2 + 8);
  v7 = *(v2 + 24);
  *v2 = v4;
  *(v2 + 8) = spanid;
  *(v2 + 16) = v6;
  *(v2 + 28) = 102;
  *(v2 + 32) = "SPDictionaryDataStore lookup";
  si_tracing_log_span_begin();
  v58 = v2;
  v8 = SPLogForSPLogCategoryDefault();
  v9 = v8;
  v64 = a1;
  if (gSPLogDebugAsDefault)
  {
    v10 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v10 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v8, v10))
  {
    v11 = *(a1 + 32);
    v12 = objc_opt_class();
    *buf = 138412546;
    v78 = v12;
    v79 = 1024;
    LODWORD(v80) = qos_class_self();
    _os_log_impl(&_mh_execute_header, v9, v10, "QOS %@ begin: %d", buf, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained((v64 + 64));
  v13 = *(v64 + 40);
  v14 = [*(v64 + 32) store];
  v15 = [v14 dictionaries];
  v16 = objc_opt_class();
  NSStringFromClass(v16);
  v59 = DCSSearchFoundationCopyResultsWithOptions();

  v65 = objc_opt_new();
  v61 = objc_opt_new();
  v17 = v64;
  if ([v59 count])
  {
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    obj = v59;
    v18 = [obj countByEnumeratingWithState:&v70 objects:v81 count:16];
    if (v18)
    {
      v19 = *v71;
      v60 = PRSRankingDictionaryBundleString;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v71 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v70 + 1) + 8 * i);
          v22 = [v21 footnote];
          if (([v65 containsObject:v22] & 1) == 0)
          {
            [v65 addObject:v22];
            [v61 addObject:v21];
            v23 = [WeakRetained queryContext];
            v24 = [v23 searchString];
            [v21 setUserInput:v24];

            [v21 setQueryId:{objc_msgSend(WeakRetained, "queryIdent")}];
            if (*(v64 + 80) == 1)
            {
              [v21 setTopHit:SSSetTopHitWithReasonString()];
            }

            [v21 setType:8];
            [v21 setResultBundleId:v60];
            v25 = [v21 title];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              v27 = [v21 title];
              v28 = [v27 formattedTextPieces];
              if (v28)
              {
                v29 = [v27 formattedTextPieces];
                v30 = [v29 firstObject];
                v31 = [v30 text];
              }

              else
              {
                v31 = [v27 text];
              }
            }

            else
            {
              v27 = [v21 title];
              v31 = [v27 text];
            }

            [v21 setCompletion:v31];
            v32 = objc_opt_new();
            [v32 setSymbolName:@"book.closed.fill"];
            [v32 setIsTemplate:1];
            v33 = [v21 card];
            [v33 setTitleImage:v32];

            v34 = *(v64 + 40);
            v35 = [v21 card];
            [v35 setTitle:v34];
          }
        }

        v18 = [obj countByEnumeratingWithState:&v70 objects:v81 count:16];
      }

      while (v18);
    }

    v36 = objc_opt_new();
    [v36 setMaxInitiallyVisibleResults:1];
    [v36 setBundleIdentifier:PRSRankingDictionaryBundleString];
    v37 = [NSBundle bundleForClass:objc_opt_class()];
    v38 = [v37 localizedStringForKey:@"DOMAIN_DICTIONARY" value:&stru_100094040 table:@"Search"];
    [v36 setTitle:v38];

    [v36 setResults:v61];
    v17 = v64;
  }

  else
  {
    v36 = 0;
  }

  if (*(v17[4] + 24))
  {
    v39 = "canceled";
  }

  else
  {
    v39 = "finished";
  }

  v40 = sub_100017E38(WeakRetained, v39, "dictionary", v17[9]);
  if ((*(v17[4] + 24) & 1) == 0)
  {
    v41 = +[SDController workQueue];
    v69 = v17[7];
    v66 = WeakRetained;
    v67 = v17[4];
    v68 = v36;
    md_tracing_dispatch_async_propagating();
  }

  v42 = SPLogForSPLogCategoryQuery();
  v43 = v42;
  if (gSPLogDebugAsDefault)
  {
    v44 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v44 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v42, v44))
  {
    v45 = *(v64 + 32);
    v46 = objc_opt_class();
    *buf = 138412546;
    v78 = v46;
    v79 = 2048;
    v80 = v40 / 1000000000.0;
    v47 = v46;
    _os_log_impl(&_mh_execute_header, v43, v44, "- Datastore %@ time %g", buf, 0x16u);
  }

  [*(v64 + 32) finishWithClientID:*(v64 + 48)];
  [WeakRetained externalID];
  kdebug_trace();
  v48 = SPLogForSPLogCategoryTelemetry();
  v49 = [WeakRetained externalID];
  if (v49 && os_signpost_enabled(v48))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v48, OS_SIGNPOST_INTERVAL_END, v49, "dictionaryLatency", " enableTelemetry=YES ", buf, 2u);
  }

  v50 = *v58;
  v51 = *(v58 + 8);
  v52 = *(v58 + 16);
  v53 = *(v58 + 24);
  v54 = *(v58 + 28);
  v55 = *(v58 + 32);
  si_tracing_log_span_end();
  result = *&v74;
  v57 = v75;
  *v58 = v74;
  *(v58 + 16) = v57;
  *(v58 + 32) = v76;
  return result;
}

void sub_10005731C(void *a1)
{
  *(*(a1[7] + 8) + 24) = 1;
  v1 = a1[4];
  v2 = a1[5];
  if (a1[6])
  {
    v5 = a1[6];
    v3 = [NSArray arrayWithObjects:&v5 count:1];
    [v1 storeCompletedSearch:v2 withSections:v3];
  }

  else
  {
    v4 = a1[4];

    [v4 storeCompletedSearch:v2 withSections:&__NSArray0__struct];
  }
}

__n128 sub_100057410(uint64_t a1)
{
  v2 = si_tracing_current_span();
  v14 = *v2;
  v15 = *(v2 + 16);
  v16 = *(v2 + 32);
  v3 = *v2;
  spanid = si_tracing_calc_next_spanid();
  v5 = *(v2 + 8);
  v6 = *(v2 + 24);
  *v2 = v3;
  *(v2 + 8) = spanid;
  *(v2 + 16) = v5;
  *(v2 + 28) = 102;
  *(v2 + 32) = "SPDictionaryDataStore completion";
  si_tracing_log_span_begin();
  *(*(*(a1 + 48) + 8) + 24) = 1;
  [*(a1 + 32) storeCompletedSearch:*(a1 + 40) withSections:&__NSArray0__struct];
  v7 = *v2;
  v8 = *(v2 + 8);
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = *(v2 + 28);
  v12 = *(v2 + 32);
  si_tracing_log_span_end();
  result = v14;
  *v2 = v14;
  *(v2 + 16) = v15;
  *(v2 + 32) = v16;
  return result;
}

void sub_100057700(uint64_t a1)
{
  active = DCSCopyActiveDictionaries();
  [*(a1 + 32) setDictionaries:active];
}

void sub_100057954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000066D4(va);
  _Unwind_Resume(a1);
}

void sub_1000579D4()
{
  if (qword_1000A8618 != -1)
  {
    sub_100063620();
  }
}

void sub_100057A00(id a1)
{
  qword_1000A8620 = 0;
  *algn_1000A8628 = "didErrorOccur:";
  qword_1000A8630 = "searchViewDidAppear:";
  unk_1000A8638 = "searchViewDidDisappear:";
  qword_1000A8640 = "cardViewDidDisappear:";
  unk_1000A8648 = "didStartSearch:";
  qword_1000A8650 = "didEndSearch:";
  unk_1000A8658 = "didRankSections:";
  qword_1000A8660 = "didEngageResult:";
  unk_1000A8668 = "didEngageSuggestion:";
  qword_1000A8670 = "didEngageCardSection:";
  unk_1000A8678 = "sendCustomFeedback:";
  qword_1000A8680 = "resultsDidBecomeVisible:";
  unk_1000A8688 = "suggestionsDidBecomeVisible:";
  qword_1000A8690 = "didReceiveResultsAfterTimeout:";
  unk_1000A8698 = "didAppendLateSections:";
  qword_1000A86A0 = "didClearInput:";
  unk_1000A86A8 = "didEngageSection:";
  qword_1000A86B0 = "sectionHeaderDidBecomeVisible:";
  unk_1000A86B8 = "didGradeResultRelevancy:";
  qword_1000A86C0 = "cardViewDidAppear:";
  unk_1000A86C8 = "reportFeedback:queryId:";
  qword_1000A86D0 = "didGoToSite:";
  unk_1000A86D8 = "didGoToSearch:";
  qword_1000A86E0 = "didGradeLookupHintRelevancy:";
  unk_1000A86E8 = "didReportUserResponseFeedback:";
  qword_1000A86F0 = "didPerformCommand:";
  qword_1000A8700 = 0;
  qword_1000A8708 = 0;
  qword_1000A8710 = objc_opt_class();
  qword_1000A8718 = objc_opt_class();
  qword_1000A8720 = objc_opt_class();
  qword_1000A8728 = objc_opt_class();
  qword_1000A8730 = objc_opt_class();
  qword_1000A8738 = objc_opt_class();
  qword_1000A8740 = objc_opt_class();
  qword_1000A8748 = objc_opt_class();
  qword_1000A8750 = objc_opt_class();
  qword_1000A8758 = objc_opt_class();
  qword_1000A8760 = objc_opt_class();
  qword_1000A8768 = objc_opt_class();
  qword_1000A8770 = objc_opt_class();
  qword_1000A8778 = objc_opt_class();
  qword_1000A8780 = objc_opt_class();
  qword_1000A8788 = objc_opt_class();
  qword_1000A8790 = objc_opt_class();
  qword_1000A8798 = objc_opt_class();
  qword_1000A87A8 = objc_opt_class();
  qword_1000A87A0 = objc_opt_class();
  qword_1000A87B0 = objc_opt_class();
  qword_1000A87B8 = objc_opt_class();
  qword_1000A87C0 = objc_opt_class();
  qword_1000A87C8 = objc_opt_class();
  qword_1000A87D0 = objc_opt_class();
  qword_1000A87D8 = objc_opt_class();
  qword_1000A87E8 = 0;
  qword_1000A87F0 = "None";
  *algn_1000A87F8 = "Error";
  qword_1000A8800 = "ViewAppear";
  unk_1000A8808 = "ViewDisappear";
  qword_1000A8810 = "CardViewDisappear";
  unk_1000A8818 = "StartSearch";
  qword_1000A8820 = "EndSearch";
  unk_1000A8828 = "RankSections";
  qword_1000A8830 = "EngageResult";
  unk_1000A8838 = "EngageSuggestion";
  qword_1000A8840 = "DidEngageCardSection";
  unk_1000A8848 = "SendCustomFeedback";
  qword_1000A8850 = "ResultVisible";
  unk_1000A8858 = "SuggestionsVisible";
  qword_1000A8860 = "ReceiveResultsAfterTimeout";
  unk_1000A8868 = "AppendLateSections";
  qword_1000A8870 = "ClearInput";
  unk_1000A8878 = "EngageSection";
  qword_1000A8880 = "SectionHeaderVisible";
  unk_1000A8888 = "GradeResult";
  qword_1000A8890 = "CardViewAppear";
  unk_1000A8898 = "ReportFeedback";
  qword_1000A88A0 = "GoToSite";
  unk_1000A88A8 = "GoToSearch";
  qword_1000A88B0 = "GradeLookup";
  unk_1000A88B8 = "ReportUserResponse";
  qword_1000A88C0 = "Command";
  qword_1000A88D0 = "Invalid";
}

void sub_100058438(id a1)
{
  qword_1000A88E0 = objc_alloc_init(SGSMFeedbackListener);

  _objc_release_x1();
}

id sub_100058600(uint64_t a1)
{
  result = [qword_1000A8610 count];
  if (!result)
  {
    v3 = *(a1 + 32);

    return [v3 _gatherFeedbackListeners];
  }

  return result;
}

void sub_100058874(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    goto LABEL_2;
  }

  v15 = *(a1 + 40);
  if (!v15)
  {
    v2 = 0;
    goto LABEL_2;
  }

  bytes_ptr = xpc_data_get_bytes_ptr(v15);
  if (bytes_ptr)
  {
    v17 = [[NSData alloc] initWithBytesNoCopy:bytes_ptr length:xpc_data_get_length(*(a1 + 40)) freeWhenDone:0];
    if (v17)
    {
      v18 = v17;
      v19 = [NSSet setWithObject:objc_opt_class()];
      v20 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v18 error:0];
      v2 = [v20 decodeObjectOfClasses:v19 forKey:NSKeyedArchiveRootObjectKey];

      if (v2)
      {
        v21 = (a1 + 72);
        v22 = qword_1000A8708[*(a1 + 72)];
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v23 = SPLogForSPLogCategoryFeedback();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            sub_1000636D8(v21, v2);
          }

          goto LABEL_66;
        }

LABEL_2:
        v3 = *(a1 + 40) == 0;
        v4 = SPLogForSPLogCategoryFeedback();
        v5 = v4;
        if (gSPLogDebugAsDefault)
        {
          v6 = OS_LOG_TYPE_DEFAULT;
        }

        else
        {
          v6 = OS_LOG_TYPE_DEBUG;
        }

        v7 = os_log_type_enabled(v4, v6);
        if (v3)
        {
          if (v7)
          {
            v24 = qword_1000A87F0[*(a1 + 72)];
            *buf = 136315394;
            v49 = v24;
            v50 = 2112;
            v51 = v2;
            v11 = "sending feedback (%s) %@";
            v12 = v5;
            v13 = v6;
            v14 = 22;
            goto LABEL_18;
          }
        }

        else if (v7)
        {
          v8 = qword_1000A87F0[*(a1 + 72)];
          length = xpc_data_get_length(*(a1 + 40));
          v10 = *(a1 + 40);
          *buf = 136315906;
          v49 = v8;
          v50 = 2048;
          v51 = length;
          v52 = 2048;
          v53 = v10;
          v54 = 2112;
          v55 = v2;
          v11 = "sending feedback (%s) size %ld %p %@";
          v12 = v5;
          v13 = v6;
          v14 = 42;
LABEL_18:
          _os_log_impl(&_mh_execute_header, v12, v13, v11, buf, v14);
        }

        if (*(a1 + 72) == 7 && (+[SDFeedbackInterceptor sharedInstance], (v25 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v44[0] = _NSConcreteStackBlock;
          v44[1] = 3221225472;
          v44[2] = sub_100059034;
          v44[3] = &unk_100093BA8;
          v26 = *(a1 + 48);
          v27 = *(a1 + 72);
          v45 = v2;
          v46 = v27;
          v44[4] = v26;
          v2 = v2;
          [v25 annotateRankingFeedback:v2 completion:v44];
        }

        else
        {
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v28 = +[SPFeedbackSender feedbackListeners];
          v29 = [v28 countByEnumeratingWithState:&v40 objects:v47 count:16];
          if (v29)
          {
            v30 = *v41;
            do
            {
              for (i = 0; i != v29; i = i + 1)
              {
                if (*v41 != v30)
                {
                  objc_enumerationMutation(v28);
                }

                v32 = *(*(&v40 + 1) + 8 * i);
                v33 = [v32 feedbackListener];
                if ([*(a1 + 48) clientID:*(a1 + 56) supportsFeedbackListener:v33])
                {
                  v34 = [v32 supportsFeedbackType:21];
                  if (*(a1 + 72) == 11)
                  {
                    v35 = 0;
                  }

                  else
                  {
                    v35 = v34;
                  }

                  if (v35 == 1)
                  {
LABEL_32:
                    [v33 reportFeedback:v2 queryId:*(a1 + 80)];
                  }

                  else if ([v32 supportsFeedbackType:?])
                  {
                    switch(*(a1 + 72))
                    {
                      case 1:
                        [v33 didErrorOccur:v2];
                        break;
                      case 2:
                        [v33 searchViewDidAppear:v2];
                        break;
                      case 3:
                        [v33 searchViewDidDisappear:v2];
                        break;
                      case 4:
                        [v33 cardViewDidDisappear:v2];
                        break;
                      case 5:
                        [v33 didStartSearch:v2];
                        break;
                      case 6:
                        [v33 didEndSearch:v2];
                        break;
                      case 7:
                        [v33 didRankSections:v2];
                        break;
                      case 8:
                        [v33 didEngageResult:v2];
                        break;
                      case 9:
                        [v33 didEngageSuggestion:v2];
                        break;
                      case 0xALL:
                        [v33 didEngageCardSection:v2];
                        break;
                      case 0xBLL:
                        [v33 sendCustomFeedback:v2];
                        break;
                      case 0xCLL:
                        [v33 resultsDidBecomeVisible:v2];
                        break;
                      case 0xDLL:
                        [v33 suggestionsDidBecomeVisible:v2];
                        break;
                      case 0xELL:
                        [v33 didReceiveResultsAfterTimeout:v2];
                        break;
                      case 0xFLL:
                        [v33 didAppendLateSections:v2];
                        break;
                      case 0x10:
                        [v33 didClearInput:v2];
                        break;
                      case 0x11:
                        [v33 didEngageSection:v2];
                        break;
                      case 0x12:
                        [v33 sectionHeaderDidBecomeVisible:v2];
                        break;
                      case 0x13:
                        [v33 didGradeResultRelevancy:v2];
                        break;
                      case 0x14:
                        [v33 cardViewDidAppear:v2];
                        break;
                      case 0x15:
                        goto LABEL_32;
                      case 0x16:
                        [v33 didGoToSite:v2];
                        break;
                      case 0x17:
                        [v33 didGoToSearch:v2];
                        break;
                      case 0x18:
                        [v33 didGradeLookupHintRelevancy:v2];
                        break;
                      case 0x19:
                        [v33 didReportUserResponseFeedback:v2];
                        break;
                      case 0x1ALL:
                        [v33 didPerformCommand:v2];
                        break;
                      default:
                        v36 = SPLogForSPLogCategoryFeedback();
                        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
                        {
                          v37 = *(a1 + 72);
                          *buf = 67109120;
                          LODWORD(v49) = v37;
                          _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "*** Error feedback type %d not handled", buf, 8u);
                        }

                        break;
                    }
                  }
                }
              }

              v29 = [v28 countByEnumeratingWithState:&v40 objects:v47 count:16];
            }

            while (v29);
          }

          v38 = *(a1 + 64);
          v39 = objc_opt_self();
        }

        goto LABEL_66;
      }
    }
  }

  v2 = SPLogForSPLogCategoryFeedback();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_10006377C(a1, (a1 + 40));
  }

LABEL_66:
}