void sub_100000F78(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_transaction_create();
  v5 = objc_autoreleasePoolPush();
  string = xpc_dictionary_get_string(v3, _xpc_event_key_name);
  if (string)
  {
    v7 = *(a1 + 32);
    v8 = [NSString stringWithUTF8String:string];
    [v7 handleIOKitEvent:v8];
  }

  else
  {
    v9 = +[_ANELog daemon];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10001F798(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  objc_autoreleasePoolPop(v5);
}

uint64_t sub_100001240(uint64_t a1)
{
  result = [*(a1 + 32) programInstance];
  if (result)
  {
    [*(a1 + 32) setRefcount:{objc_msgSend(*(a1 + 32), "refcount") - 1}];
    result = [*(a1 + 32) refcount];
    if (result >= 1)
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }
  }

  return result;
}

id sub_100001384(uint64_t a1)
{
  result = [*(a1 + 32) programInstance];
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = [v3 refcount] + 1;

    return [v3 setRefcount:v4];
  }

  return result;
}

void sub_100001764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = _ANEProgramForLoad;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100001A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_100001AA8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001AC0(uint64_t a1)
{
  v2 = [_ANEProgramCacheKey programCacheKeyWithModel:*(a1 + 32) bundleID:*(a1 + 40)];
  v3 = [NSString stringWithFormat:@"%p", *(a1 + 48)];
  v4 = [qword_1000364D8 objectForKeyedSubscript:v3];
  if (!v4)
  {
    v4 = [&__NSDictionary0__struct mutableCopy];
    [qword_1000364D8 setObject:? forKeyedSubscript:?];
  }

  v5 = [v4 objectForKeyedSubscript:v2];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v8 = objc_opt_new();
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    [v4 setObject:*(*(*(a1 + 56) + 8) + 40) forKeyedSubscript:v2];
  }

  v11 = +[_ANELog daemon];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = NSStringFromSelector(*(a1 + 64));
    v13 = *(*(*(a1 + 56) + 8) + 40);
    *buf = 138413314;
    v15 = v12;
    v16 = 2112;
    v17 = v3;
    v18 = 2112;
    v19 = v2;
    v20 = 2112;
    v21 = v4;
    v22 = 2112;
    v23 = v13;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%@: connStr=%@ : cacheKey=%@ : dict=%@ : p=%@", buf, 0x34u);
  }
}

void sub_100001DE8(uint64_t a1)
{
  v22 = [_ANEProgramCacheKey programCacheKeyWithModel:*(a1 + 32) bundleID:*(a1 + 40)];
  v21 = [NSString stringWithFormat:@"%p", *(a1 + 48)];
  v2 = [qword_1000364D8 objectForKeyedSubscript:?];
  v3 = +[_ANELog daemon];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v19 = NSStringFromSelector(*(a1 + 56));
    *buf = 138413058;
    v27 = v19;
    v28 = 2112;
    v29 = v21;
    v30 = 2112;
    v31 = v22;
    v32 = 2112;
    v33 = v2;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%@: connStr=%@ : cacheKey=%@ : dict=%@", buf, 0x2Au);
  }

  if (v2)
  {
    v4 = [v2 objectForKeyedSubscript:v22];
    v5 = [v4 removeCachedReference];
    v6 = [v4 isNewInstance];
    v7 = @"modelUnload";
    if (v6)
    {
      v7 = @"newInstanceModelUnload";
    }

    v20 = v7;
    if (v6)
    {
      v8 = @"newInstanceUnloaded";
    }

    else
    {
      v8 = @"modelUnloaded";
    }

    v9 = [*(a1 + 32) modelURL];
    v10 = *(a1 + 32);
    if (v9)
    {
      [v10 modelURL];
    }

    else
    {
      [v10 sourceURL];
    }
    v11 = ;
    v23 = &stru_100030B88;
    v12 = [_ANEStrings trimmedModelPath:v11 trimmedPath:&v23];
    v13 = v23;

    v14 = *(a1 + 40);
    v24[0] = @"csIdentity";
    v24[1] = @"modelURL";
    v25[0] = v14;
    v25[1] = v13;
    v24[2] = @"privacy_score";
    v15 = [NSNumber numberWithBool:v12];
    v25[2] = v15;
    v24[3] = @"programHandle";
    v16 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v4 programHandle]);
    v25[3] = v16;
    v24[4] = v8;
    v17 = [NSNumber numberWithBool:v5];
    v25[4] = v17;
    v18 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:5];
    [_ANEDataReporter reportTelemetryToPPS:v20 playload:v18];

    if (v5)
    {
      [v2 removeObjectForKey:v22];
    }
  }
}

void sub_100002270(uint64_t a1)
{
  v2 = [NSString stringWithFormat:@"%p", *(a1 + 32)];
  v3 = +[_ANELog daemon];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = NSStringFromSelector(*(a1 + 40));
    sub_10001D1E8(v4, v2, buf, v3);
  }

  v5 = [qword_1000364D8 objectForKeyedSubscript:v2];
  [v5 enumerateKeysAndObjectsUsingBlock:&stru_1000306F0];
  [qword_1000364D8 removeObjectForKey:v2];
}

void sub_10000246C(uint64_t a1)
{
  v3 = [NSString stringWithFormat:@"%p", *(a1 + 32)];
  v2 = [qword_1000364D8 objectForKeyedSubscript:?];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count];
}

void sub_100002B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, void *a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, void *a31, void *a32, void *a33, void *a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, id a48, char a49)
{
  _Block_object_dispose(&a43, 8);

  _Block_object_dispose(&a49, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100002C88(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100002CA0(uint64_t a1)
{
  if ([*(a1 + 32) programInstance])
  {
    return;
  }

  v2 = *(a1 + 40);
  if (!v2 || ![v2 length])
  {
    v12 = +[_ANELog daemon];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v73 = NSStringFromSelector(*(a1 + 104));
      v74 = *(a1 + 40);
      *v106 = 138412802;
      *&v106[4] = v73;
      *&v106[12] = 2112;
      *&v106[14] = v74;
      v107 = 2048;
      v108 = [v74 length];
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%@: No Cached Model Data : %@ : %lu ", v106, 0x20u);
    }

    v13 = NSStringFromSelector(*(a1 + 104));
    v14 = [_ANEErrors programLoadErrorForMethod:v13 code:2];
    v15 = *(*(a1 + 88) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    goto LABEL_14;
  }

  v3 = [*(a1 + 32) controller];
  v4 = [v3 device];

  if (!v4)
  {
    v17 = +[_ANELog daemon];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(*(a1 + 104));
      objc_claimAutoreleasedReturnValue();
      sub_10001D4A0();
    }

    v18 = NSStringFromSelector(*(a1 + 104));
    v19 = [_ANEErrors programLoadErrorForMethod:v18 code:3];
    v20 = *(*(a1 + 88) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;

    goto LABEL_14;
  }

  v5 = [*(a1 + 32) txn];

  if (!v5)
  {
    v6 = [*(a1 + 48) csIdentity];
    v7 = [*(a1 + 48) processIdentifier];
    v8 = [*(a1 + 48) modelIdentifier];
    v9 = [NSString stringWithFormat:@"%@.%d.%@", v6, v7, v8];

    [v9 UTF8String];
    v10 = os_transaction_create();
    [*(a1 + 32) setTxn:v10];
  }

  if ([*(a1 + 56) length] >= 0x400)
  {
    v11 = +[_ANELog daemon];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(*(a1 + 104));
      objc_claimAutoreleasedReturnValue();
      [*(a1 + 56) length];
      sub_10001D448();
    }

    goto LABEL_14;
  }

  bzero(&v106[16], 0xD60uLL);
  *v106 = [*(a1 + 40) bytes];
  *&v106[8] = [*(a1 + 40) length];
  v106[16] = *(a1 + 132);
  v116 = *(a1 + 120);
  strlcpy(v119, [*(a1 + 56) UTF8String], 0x400uLL);
  v22 = [*(a1 + 48) teamIdentity];
  [_ANEHashEncoding copySHA256For:v22 toBuffer:&v106[17]];

  v23 = [*(a1 + 48) csIdentity];
  [_ANEHashEncoding copySHA256For:v23 toBuffer:v109];

  v24 = *(a1 + 64);
  v25 = *(a1 + 128);
  v111 = *(a1 + 124);
  if (*(a1 + 133))
  {
    v26 = 16;
  }

  else
  {
    v26 = 0;
  }

  v110 = v26;
  *&v109[35] = v25;
  v112 = *(a1 + 112);
  v27 = [v24 UTF8String];
  v28 = [*(a1 + 64) length];
  if (v28 < 0x100)
  {
    memcpy(v113, v27, v28);
  }

  else
  {
    v29 = +[_ANELog daemon];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(*(a1 + 104));
      objc_claimAutoreleasedReturnValue();
      sub_10001D2A4();
    }

    v30 = v27[8];
    v31 = v27[9];
    v32 = v27[11];
    v113[10] = v27[10];
    v113[11] = v32;
    v33 = v27[12];
    v34 = v27[13];
    v35 = v27[14];
    *&v114[15] = *(v27 + 239);
    v113[13] = v34;
    *v114 = v35;
    v113[12] = v33;
    v36 = *v27;
    v37 = v27[1];
    v38 = v27[2];
    v113[3] = v27[3];
    v113[2] = v38;
    v113[1] = v37;
    v113[0] = v36;
    v39 = v27[4];
    v40 = v27[5];
    v41 = v27[6];
    v113[7] = v27[7];
    v113[6] = v41;
    v113[5] = v40;
    v113[4] = v39;
    v113[9] = v31;
    v113[8] = v30;
    v115 = 0;
  }

  v42 = *(a1 + 72);
  if (v42)
  {
    v43 = [v42 UTF8String];
    v44 = [*(a1 + 72) length];
    if (v44 < 0x400)
    {
      memcpy(v118, v43, v44);
      v46 = +[_ANELog daemon];
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        v88 = NSStringFromSelector(*(a1 + 104));
        *buf = 138412802;
        *&buf[4] = v88;
        *&buf[12] = 2080;
        *&buf[14] = v43;
        *&buf[22] = 2048;
        *&buf[24] = v44;
        _os_log_debug_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEBUG, "%@: aotCacheUrlIdentifier is %s with len %lu", buf, 0x20u);
      }
    }

    else
    {
      v45 = +[_ANELog daemon];
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(*(a1 + 104));
        objc_claimAutoreleasedReturnValue();
        sub_10001D300();
      }

      memcpy(v118, v43, 0x3FFuLL);
      v118[1023] = 0;
    }
  }

  v47 = [*(a1 + 80) UTF8String];
  v48 = [*(a1 + 80) length];
  if (v48 < 0x400)
  {
    memcpy(v117, v47, v48);
  }

  else
  {
    v49 = +[_ANELog daemon];
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(*(a1 + 104));
      objc_claimAutoreleasedReturnValue();
      sub_10001D350();
    }

    memcpy(v117, v47, 0x3FFuLL);
    v117[1023] = 0;
  }

  v50 = +[_ANELog daemon];
  if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
  {
    v51 = NSStringFromSelector(*(a1 + 104));
    v52 = *(a1 + 128);
    *buf = 138412802;
    *&buf[4] = v51;
    *&buf[12] = 1024;
    *&buf[14] = 280;
    *&buf[18] = 1024;
    *&buf[20] = v52;
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "%@ %d Stats mask value: %u ", buf, 0x18u);
  }

  v119[1024] = *(a1 + 134);
  v53 = [*(a1 + 32) controller];
  v54 = [v53 device];
  if (!v54 || !*v54)
  {

    v55 = 2;
    goto LABEL_59;
  }

  v55 = (*(*v54 + 16))(v54, v106, *(a1 + 32) + 56);

  if (v55)
  {
LABEL_59:
    v68 = +[_ANELog daemon];
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(*(a1 + 104));
      objc_claimAutoreleasedReturnValue();
      sub_10001D3F0();
    }

    [_ANEDataReporter reportErrorMsg:0 status:v55];
    [*(a1 + 32) setProgramInstance:0];
    v69 = NSStringFromSelector(*(a1 + 104));
    v70 = [_ANEErrors programLoadErrorForMethod:v69 code:(v55 << 16) | 4];
    v71 = *(*(a1 + 88) + 8);
    v72 = *(v71 + 40);
    *(v71 + 40) = v70;

    goto LABEL_14;
  }

  if (![*(a1 + 32) programInstance])
  {
    v55 = 0;
    goto LABEL_59;
  }

  if (!*([*(a1 + 32) programInstance] + 2))
  {
    v56 = +[_ANELog daemon];
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(*(a1 + 104));
      objc_claimAutoreleasedReturnValue();
      sub_10001D3A0();
    }
  }

  v57 = +[_ANELog daemon];
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
  {
    v89 = NSStringFromSelector(*(a1 + 104));
    v90 = **([*(a1 + 32) programInstance] + 6);
    v91 = *([*(a1 + 32) programInstance] + 2);
    v92 = **([*(a1 + 32) programInstance] + 11);
    *buf = 138413314;
    *&buf[4] = v89;
    *&buf[12] = 1024;
    *&buf[14] = 302;
    *&buf[18] = 2048;
    *&buf[20] = v90;
    *&buf[28] = 2048;
    *&buf[30] = v91;
    *&buf[38] = 2048;
    v98 = v92;
    _os_log_debug_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEBUG, "%@: %d Input[0] size %zu Inter size %zu output[0] size %zu", buf, 0x30u);
  }

  if (*(a1 + 135))
  {
    goto LABEL_53;
  }

  memset(buf, 0, 32);
  v75 = [_ANEQoSMapper programPriorityForQoS:*(a1 + 124)];
  v76 = *(a1 + 124);
  *&buf[4] = 0;
  *&buf[8] = v76;
  *buf = v75;
  buf[12] = 1;
  *&buf[16] = [*(a1 + 32) intermediateBufferHandle];
  buf[24] = *(a1 + 136);
  v77 = [*(a1 + 32) programInstance];
  if (!v77 || !*v77)
  {
    v78 = 2;
LABEL_68:
    v79 = +[_ANELog daemon];
    if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
    {
      v93 = NSStringFromSelector(*(a1 + 104));
      v94 = [*(a1 + 32) programInstance];
      *v100 = 138412802;
      v101 = v93;
      v102 = 2048;
      v103 = v94;
      v104 = 1024;
      v105 = v78;
      _os_log_error_impl(&_mh_execute_header, v79, OS_LOG_TYPE_ERROR, "%@: Could not prepare ANE program=%p : ret=0x%x", v100, 0x1Cu);
    }

    [_ANEDataReporter reportErrorMsg:0 status:v78];
    v80 = [*(a1 + 32) programInstance];
    if (v80 && *v80)
    {
      v81 = (*(*v80 + 24))();
      if (!v81)
      {
        v82 = 5;
LABEL_78:
        [*(a1 + 32) setProgramInstance:0];
        v84 = NSStringFromSelector(*(a1 + 104));
        v85 = [_ANEErrors programLoadErrorForMethod:v84 code:v82];
        v86 = *(*(a1 + 88) + 8);
        v87 = *(v86 + 40);
        *(v86 + 40) = v85;

LABEL_14:
        *(*(*(a1 + 96) + 8) + 24) = 0;
        return;
      }
    }

    else
    {
      v81 = 2;
    }

    v83 = +[_ANELog daemon];
    if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
    {
      v95 = NSStringFromSelector(*(a1 + 104));
      v96 = [*(a1 + 32) programInstance];
      *v100 = 138412802;
      v101 = v95;
      v102 = 2048;
      v103 = v96;
      v104 = 1024;
      v105 = v81;
      _os_log_error_impl(&_mh_execute_header, v83, OS_LOG_TYPE_ERROR, "%@: Could not destroy ANE program=%p : ret=0x%x", v100, 0x1Cu);
    }

    v82 = (v81 << 16) | 5;
    goto LABEL_78;
  }

  v78 = (**v77)();
  if (v78)
  {
    goto LABEL_68;
  }

LABEL_53:
  [*(a1 + 32) setProgramHandle:*(*(*(a1 + 32) + 56) + 112)];
  if (![*(a1 + 32) intermediateBufferHandle])
  {
    [*(a1 + 32) setIntermediateBufferHandle:*(*(*(a1 + 32) + 56) + 152)];
  }

  v58 = (a1 + 32);
  [*(a1 + 32) setQueueDepth:127];
  [*v58 setNumInputs:*(*(*v58 + 7) + 32)];
  [*v58 setNumOutputs:*(*(*v58 + 7) + 72)];
  [*(a1 + 32) setRefcount:1];
  [*(a1 + 32) setWiredMemory:{objc_msgSend(*(a1 + 40), "length") + *(objc_msgSend(*(a1 + 32), "programInstance") + 2)}];
  v59 = +[_ANELog daemon];
  if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
  {
    v60 = NSStringFromSelector(*(a1 + 104));
    v61 = [*(a1 + 32) programHandle];
    v62 = *(a1 + 32);
    v63 = *(v62[7] + 144);
    v64 = [v62 numInputs];
    v65 = [*(a1 + 32) numOutputs];
    v66 = [*(a1 + 32) queueDepth];
    v67 = [*(a1 + 32) wiredMemory];
    *buf = 138413826;
    *&buf[4] = v60;
    *&buf[12] = 2048;
    *&buf[14] = v61;
    *&buf[22] = 1024;
    *&buf[24] = v63;
    *&buf[28] = 1024;
    *&buf[30] = v64;
    *&buf[34] = 1024;
    *&buf[36] = v65;
    LOWORD(v98) = 1024;
    *(&v98 + 2) = v66;
    HIWORD(v98) = 2048;
    v99 = v67;
    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_INFO, "%@: programHandle=%llu : queueDepth=%d : numInputs=%d : numOutputs=%d : adjustedQueueDepth=%d : wiredMemory=%ld", buf, 0x38u);
  }
}

void sub_100003F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, void *a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36, char a37)
{
  _Block_object_dispose(&a31, 8);

  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

void sub_100004000(uint64_t a1)
{
  if ([*(a1 + 32) programInstance])
  {
    v2 = +[_ANELog daemon];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(*(a1 + 80));
      objc_claimAutoreleasedReturnValue();
      [*(a1 + 32) programInstance];
      sub_10001D4E4();
    }
  }

  else
  {
    v3 = [*(a1 + 32) controller];
    v4 = [v3 device];

    if (v4)
    {
      v5 = [*(a1 + 32) txn];

      if (!v5)
      {
        v6 = [*(a1 + 40) csIdentity];
        v7 = [*(a1 + 40) processIdentifier];
        v8 = [*(a1 + 40) modelIdentifier];
        v9 = [NSString stringWithFormat:@"%@.%d.%@", v6, v7, v8];

        [v9 UTF8String];
        v10 = os_transaction_create();
        [*(a1 + 32) setTxn:v10];
      }

      operator new();
    }

    v11 = +[_ANELog daemon];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(*(a1 + 80));
      objc_claimAutoreleasedReturnValue();
      sub_10001D4A0();
    }

    v12 = NSStringFromSelector(*(a1 + 80));
    v13 = [_ANEErrors programLoadNewInstanceErrorForMethod:v12 code:3];
    v14 = *(*(a1 + 64) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    *(*(*(a1 + 72) + 8) + 24) = 0;
  }
}

void sub_1000058B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100005928(uint64_t a1)
{
  result = [*(a1 + 32) programInstance];
  if (result)
  {
    v3 = [*(a1 + 32) programInstance];
    if (v3 && *v3)
    {
      v4 = (*(*v3 + 24))(v3);
      if (!v4)
      {
LABEL_10:
        v7 = *(a1 + 32);
        v6 = (a1 + 32);
        [v7 setProgramInstance:0];
        [*v6 setRefcount:0];
        return [*v6 setTxn:0];
      }
    }

    else
    {
      v4 = 2;
    }

    v5 = +[_ANELog daemon];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(*(a1 + 48));
      objc_claimAutoreleasedReturnValue();
      sub_10001D5F8();
    }

    [_ANEDataReporter reportErrorMsg:0 status:v4];
    *(*(*(a1 + 40) + 8) + 24) = 0;
    goto LABEL_10;
  }

  return result;
}

void sub_100006E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  for (i = 8216; i != 24; i -= 32)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100007178(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a2 = a4;
  *(a2 + 4) = result;
  *(a2 + 12) = 2048;
  *(a2 + 14) = a3;
  return result;
}

uint64_t sub_1000071B0(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

uint64_t sub_1000071D4(uint64_t result, float a2, uint64_t a3, uint64_t a4)
{
  *a4 = a2;
  *(a4 + 4) = result;
  return result;
}

void sub_1000071E0(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_debug_impl(a1, a4, OS_LOG_TYPE_DEBUG, a2, a3, 0x16u);
}

void sub_1000071FC(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void sub_100007AEC(uint64_t a1)
{
  [*(a1 + 32) UTF8String];
  v3 = os_transaction_create();
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 40) removeStaleModels];
  objc_autoreleasePoolPop(v2);
}

void sub_100008478(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

void sub_1000086E8(uint64_t a1, void *a2)
{
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (state)
  {
    if (state == 2)
    {
      *&v24 = 0;
      *(&v24 + 1) = &v24;
      v25 = 0x2020000000;
      v26 = xpc_activity_set_state(v3, 4);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000089C4;
      v16[3] = &unk_100030830;
      v17 = *(a1 + 32);
      v18 = v3;
      v19 = &v24;
      v5 = objc_retainBlock(v16);
      v6 = +[_ANELog daemon];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [*(a1 + 32) name];
        v8 = *(*(&v24 + 1) + 24);
        *buf = 138412546;
        v21 = v7;
        v22 = 1024;
        v23 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Running activity %@, extended=%d", buf, 0x12u);
      }

      if (*(*(&v24 + 1) + 24) == 1)
      {
        v9 = [*(a1 + 32) queue];
        dispatch_async(v9, v5);
      }

      else
      {
        (v5[2])(v5);
      }

      _Block_object_dispose(&v24, 8);
    }
  }

  else
  {
    v10 = +[_ANELog daemon];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [*(a1 + 32) name];
      LODWORD(v24) = 138412290;
      *(&v24 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Checking-in activity %@", &v24, 0xCu);
    }

    v12 = xpc_activity_copy_criteria(v3);
    if (!v12 || ([*(a1 + 32) executionCriteria], v13 = objc_claimAutoreleasedReturnValue(), v14 = xpc_equal(v12, v13), v13, !v14))
    {
      v15 = [*(a1 + 32) executionCriteria];
      xpc_activity_set_criteria(v3, v15);
    }
  }
}

void sub_10000899C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000089C4(uint64_t a1)
{
  getpid();
  proc_set_cpumon_params();
  v2 = [*(a1 + 32) name];
  [v2 UTF8String];
  v3 = os_transaction_create();

  v4 = objc_autoreleasePoolPush();
  v5 = [*(a1 + 32) handler];
  v5[2]();

  objc_autoreleasePoolPop(v4);
  getpid();
  proc_set_cpumon_defaults();
  xpc_activity_set_state(*(a1 + 40), 5);
  v6 = +[_ANELog daemon];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [*(a1 + 32) name];
    v8 = *(*(*(a1 + 48) + 8) + 24);
    v9 = 138412546;
    v10 = v7;
    v11 = 1024;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Done running activity %@, extended=%d", &v9, 0x12u);
  }
}

void sub_100009210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100009248(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = +[_ANELog daemon];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10001D83C(a1, WeakRetained);
  }

  if (WeakRetained)
  {
    [_ANEProgramCache removeAllProgramsForConnection:WeakRetained];
  }
}

void sub_1000092CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = +[_ANELog daemon];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10001D8F0(a1, WeakRetained);
  }

  if (WeakRetained)
  {
    [_ANEProgramCache removeAllProgramsForConnection:WeakRetained];
  }
}

void sub_100009424(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x26u);
}

void sub_1000097F4(uint64_t a1)
{
  v2 = os_transaction_create();
  v3 = objc_autoreleasePoolPush();
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(a1 + 40) doCleanupDirectory:{*(*(&v9 + 1) + 8 * v8), v9}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  objc_autoreleasePoolPop(v3);
}

void sub_1000099A4(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("com.apple.aned.storageAsyncIO", v1);
  v3 = qword_1000364F0;
  qword_1000364F0 = v2;

  qword_1000364F8 = +[_ANELog daemon];

  _objc_release_x1();
}

void sub_10000A398(void *a1)
{
  v2 = mach_continuous_time();
  v3 = os_signpost_id_generate(qword_1000364F8);
  v15 = 0;
  v16 = 0;
  LODWORD(v16) = a1[17];
  v4 = *(*(a1[4] + 8) + 24);
  kdebug_trace();
  if (fcntl(*(*(a1[4] + 8) + 24), 44, &v15) == -1)
  {
    v5 = qword_1000364F8;
    if (os_log_type_enabled(qword_1000364F8, OS_LOG_TYPE_INFO))
    {
      v6 = a1[23];
      v7 = v5;
      v8 = NSStringFromSelector(v6);
      v9 = *__error();
      v10 = __error();
      v11 = strerror(*v10);
      *buf = 138412802;
      *v18 = v8;
      *&v18[8] = 1024;
      *&v18[10] = v9;
      v19 = 2080;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%@: fcntl(F_RDADVISE). errno=%d : %s", buf, 0x1Cu);
    }
  }

  v12 = *(*(a1[4] + 8) + 24);
  kdebug_trace();
  v13 = qword_1000364F8;
  v14 = v13;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 67109376;
    *v18 = v16;
    *&v18[4] = 2050;
    *&v18[6] = v2;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_EVENT, v3, "_ANED_MODEL_READ_ADVISE", "size=%d\n %{public, signpost.description:begin_time}llu ", buf, 0x12u);
  }
}

void sub_10000A5A8(uint64_t a1, void *a2, size_t a3)
{
  if (munmap(a2, a3) == -1)
  {
    v6 = qword_1000364F8;
    if (os_log_type_enabled(qword_1000364F8, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = v6;
      v9 = NSStringFromSelector(v7);
      v10 = *(a1 + 40);
      v11 = *__error();
      v12 = __error();
      v13 = strerror(*v12);
      v14 = 138413570;
      v15 = v9;
      v16 = 2080;
      v17 = v10;
      v18 = 2048;
      v19 = a2;
      v20 = 2048;
      v21 = a3;
      v22 = 1024;
      v23 = v11;
      v24 = 2080;
      v25 = v13;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@: munmap(%s) failed. bytes=%p : len=%lu errno=%d : %s", &v14, 0x3Au);
    }
  }
}

void sub_10000ACA8(void *a1)
{
  v2 = mach_continuous_time();
  v3 = os_signpost_id_generate(qword_1000364F8);
  v15 = 0;
  v16 = 0;
  LODWORD(v16) = a1[17];
  v4 = *(*(a1[4] + 8) + 24);
  kdebug_trace();
  if (fcntl(*(*(a1[4] + 8) + 24), 44, &v15) == -1)
  {
    v5 = qword_1000364F8;
    if (os_log_type_enabled(qword_1000364F8, OS_LOG_TYPE_INFO))
    {
      v6 = a1[23];
      v7 = v5;
      v8 = NSStringFromSelector(v6);
      v9 = *__error();
      v10 = __error();
      v11 = strerror(*v10);
      *buf = 138412802;
      *v18 = v8;
      *&v18[8] = 1024;
      *&v18[10] = v9;
      v19 = 2080;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%@: fcntl(F_RDADVISE). errno=%d : %s", buf, 0x1Cu);
    }
  }

  v12 = *(*(a1[4] + 8) + 24);
  kdebug_trace();
  v13 = qword_1000364F8;
  v14 = v13;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 67109376;
    *v18 = v16;
    *&v18[4] = 2050;
    *&v18[6] = v2;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_EVENT, v3, "_ANED_WEIGHT_READ_ADVISE", "size=%d\n %{public, signpost.description:begin_time}llu ", buf, 0x12u);
  }
}

void sub_10000AEB8(uint64_t a1, void *a2, size_t a3)
{
  if (munmap(a2, a3) == -1)
  {
    v6 = qword_1000364F8;
    if (os_log_type_enabled(qword_1000364F8, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = v6;
      v9 = NSStringFromSelector(v7);
      v10 = *(a1 + 40);
      v11 = *__error();
      v12 = __error();
      v13 = strerror(*v12);
      v14 = 138413570;
      v15 = v9;
      v16 = 2080;
      v17 = v10;
      v18 = 2048;
      v19 = a2;
      v20 = 2048;
      v21 = a3;
      v22 = 1024;
      v23 = v11;
      v24 = 2080;
      v25 = v13;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@: munmap(%s) failed. bytes=%p : len=%lu errno=%d : %s", &v14, 0x3Au);
    }
  }
}

uint64_t sub_10000C21C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = qword_1000364F8;
  if (os_log_type_enabled(qword_1000364F8, OS_LOG_TYPE_ERROR))
  {
    v9 = *(a1 + 32);
    v10 = v7;
    v11 = NSStringFromSelector(v9);
    v12 = 138412802;
    v13 = v11;
    v14 = 2112;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@: URL=%@ : error=%@", &v12, 0x20u);
  }

  return 1;
}

void sub_10000D780(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0x16u);
}

void sub_10000D7C4(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("com.apple.aned.modelCacheAsyncIO", v1);
  v3 = qword_100036508;
  qword_100036508 = v2;

  qword_100036510 = +[_ANELog daemon];

  _objc_release_x1();
}

void sub_10000DF34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000DF68(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000DF80(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 copy];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [v5 copy];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

void sub_10000F0FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100036510;
  if (os_log_type_enabled(qword_100036510, OS_LOG_TYPE_ERROR))
  {
    sub_10001E158(a1, v4, v3);
  }
}

void sub_10000F15C(uint64_t a1, uint64_t a2)
{
  v4 = qword_100036510;
  if (os_log_type_enabled(qword_100036510, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = NSStringFromSelector(v5);
    v8 = [NSNumber numberWithBool:a2];
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%@: status=%@", &v9, 0x16u);
  }
}

void sub_10000F32C(uint64_t a1)
{
  [*(a1 + 32) UTF8String];
  v3 = os_transaction_create();
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 40) startDanglingModelGC];
  objc_autoreleasePoolPop(v2);
}

uint64_t sub_10000FEE8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = qword_100036510;
  if (os_log_type_enabled(qword_100036510, OS_LOG_TYPE_ERROR))
  {
    v9 = *(a1 + 32);
    v10 = v7;
    v11 = NSStringFromSelector(v9);
    v12 = 138412802;
    v13 = v11;
    v14 = 2112;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@: URL=%@ : error=%@", &v12, 0x20u);
  }

  return 0;
}

void sub_100010104(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_100010218(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_100011DD8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100012FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  _Block_object_dispose(&a21, 8);

  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100013134(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001314C(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = [v12 copy];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [v5 copy];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

void sub_10001B458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17)
{
  _Block_object_dispose((v21 - 144), 8);

  _Unwind_Resume(a1);
}

void sub_10001B608(uint64_t a1, char a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  *(*(*(a1 + 40) + 8) + 24) = a2;
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    [*(a1 + 32) setCacheURLIdentifier:v10];
  }

  else
  {
    v12 = qword_100036518;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = NSStringFromSelector(*(a1 + 56));
      v15 = *(a1 + 32);
      v16 = 138413314;
      v17 = v14;
      v18 = 2112;
      v19 = v15;
      v20 = 2112;
      v21 = v9;
      v22 = 2112;
      v23 = v11;
      v24 = 2112;
      v25 = v10;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@: Compilation failed. model=%@ : attr=%@ : err=%@ : cacheURLIdentifier=%@", &v16, 0x34u);
    }

    if (v11)
    {
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), a5);
    }
  }

  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v13 = 2;
  }

  else
  {
    v13 = 5;
  }

  [*(a1 + 32) updateModelAttributes:v9 state:v13];
}

void sub_10001C940(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(qword_100036518, OS_LOG_TYPE_ERROR))
  {
    sub_10001F4C0(a1);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, 0, &__NSDictionary0__struct, 0, v3);
  }
}

void sub_10001C9D8(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = [v12 copy];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [v5 copy];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

void sub_10001CA7C(uint64_t a1, int a2, void *a3, void *a4)
{
  v8 = a3;
  v9 = a4;
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  v10 = qword_100036518;
  if (a2)
  {
    if (os_log_type_enabled(qword_100036518, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      *v16 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Compilation success: attr=%@", &v15, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100036518, OS_LOG_TYPE_ERROR))
    {
      sub_10001F544();
    }

    if (v9)
    {
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), a4);
    }
  }

  [*(a1 + 32) string_id];
  kdebug_trace();
  v11 = qword_100036518;
  v12 = v11;
  v13 = *(a1 + 64);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v14 = [*(a1 + 32) string_id];
    v15 = 67109632;
    *v16 = a2;
    *&v16[4] = 1024;
    *&v16[6] = 2;
    v17 = 2048;
    v18 = v14;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_EVENT, v13, "_ANED_MODEL_COMPILE_CONT", "%u %u model.string_id:%llu", &v15, 0x18u);
  }
}

uint64_t sub_10001CD50(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  return result;
}

uint64_t sub_10001CD84(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  *(a2 + 12) = 2112;
  return result;
}

uint64_t sub_10001CD98(uint64_t result, float a2)
{
  *v2 = a2;
  *(v2 + 4) = result;
  *(v2 + 12) = 2112;
  *(v2 + 14) = v3;
  return result;
}

void sub_10001CDD4(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x16u);
}

void sub_10001CE00(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, a5, 0x16u);
}

void sub_10001CE1C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

id sub_10001CE38(id a1)
{

  return a1;
}

uint64_t sub_10001CE54(uint64_t result, char a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 1024;
  *(a3 + 14) = a2 & 1;
  return result;
}

void start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_transaction_create();
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10001CFC4;
  handler[3] = &unk_100030858;
  v2 = objc_opt_new();
  handler[4] = v2;
  xpc_set_event_stream_handler("com.apple.distnoted.matching", &_dispatch_main_q, handler);
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_100000F78;
  v8 = &unk_100030858;
  v3 = v2;
  v9 = v3;
  xpc_set_event_stream_handler("com.apple.iokit.matching", &_dispatch_main_q, &v5);

  signal(15, 1);
  v4 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, &_dispatch_main_q);

  dispatch_source_set_event_handler(v4, &stru_100030AC8);
  dispatch_resume(v4);
  [v3 start];
  dispatch_main();
}

void sub_10001CFC4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_transaction_create();
  string = xpc_dictionary_get_string(v3, _xpc_event_key_name);
  if (string)
  {
    v6 = string;
    v7 = xpc_dictionary_get_value(v3, "UserInfo");
    v8 = v7;
    if (v7)
    {
      if (xpc_get_type(v7) == &_xpc_type_dictionary)
      {
        v9 = _CFXPCCreateCFObjectFromXPCObject();
        if (v9)
        {
          v31 = *(a1 + 32);
          v32 = [NSString stringWithUTF8String:v6];
          [v31 handleLaunchServicesEvent:v32 userInfo:v9];
        }

        else
        {
          v33 = +[_ANELog daemon];
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            sub_10001F630(v33, v34, v35, v36, v37, v38, v39, v40);
          }
        }
      }

      else
      {
        v9 = +[_ANELog daemon];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_10001F5B8(v9, v10, v11, v12, v13, v14, v15, v16);
        }
      }
    }

    else
    {
      v9 = +[_ANELog daemon];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10001F6A8(v9, v24, v25, v26, v27, v28, v29, v30);
      }
    }
  }

  else
  {
    v8 = +[_ANELog daemon];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10001F720(v8, v17, v18, v19, v20, v21, v22, v23);
    }
  }
}

void sub_10001D164(id a1)
{
  v1 = +[_ANELog daemon];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Got SIGTERM; Exiting...", v2, 2u);
  }

  exit(0);
}

void sub_10001D1CC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_10001D1E8(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%@: connStr=%@", buf, 0x16u);
}

void sub_10001D250()
{
  sub_1000071A0();
  v2 = *v1;
  sub_1000071D4(v3, 5.778e-34, v1, v4);
  *(v5 + 12) = 2048;
  *(v5 + 14) = v6;
  sub_1000071E0(&_mh_execute_header, "%@: Destroying the program=%p", v7, v8);
}

void sub_10001D2A4()
{
  sub_100007190();
  sub_100007178(v1, v2, v3, 5.7781e-34);
  *(v4 + 22) = 1024;
  *(v4 + 24) = 255;
  sub_1000071C8();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x1Cu);
}

void sub_10001D300()
{
  sub_100007190();
  v4 = sub_100007178(v1, v2, v3, 5.7781e-34);
  sub_100007218(v4, v5);
  sub_1000071C8();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x1Cu);
}

void sub_10001D350()
{
  sub_100007190();
  v4 = sub_100007178(v1, v2, v3, 5.7781e-34);
  sub_100007218(v4, v5);
  sub_1000071C8();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x1Cu);
}

void sub_10001D3A0()
{
  sub_1000071BC();
  sub_1000071B0(v1, v2, 5.7779e-34);
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%@: Intermediate buffer size is 0 !!!", v4, 0xCu);
}

void sub_10001D3F0()
{
  sub_100007190();
  sub_1000071B0(v1, v2, 5.778e-34);
  *(v3 + 12) = 1024;
  *(v3 + 14) = v4;
  sub_1000071C8();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x12u);
}

void sub_10001D448()
{
  sub_100007190();
  sub_100007178(v1, v2, v3, 5.7781e-34);
  *(v4 + 22) = v5;
  *(v4 + 24) = 1024;
  sub_1000071C8();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x20u);
}

void sub_10001D4A0()
{
  sub_1000071BC();
  sub_1000071B0(v1, v2, 5.7779e-34);
  sub_1000071FC(&_mh_execute_header, v3, v4, "%@: ANE device not open", v5);
}

void sub_10001D4E4()
{
  sub_1000071A0();
  sub_1000071D4(v1, 5.778e-34, v2, v3);
  *(v4 + 12) = 2048;
  *(v4 + 14) = v5;
  sub_1000071E0(&_mh_execute_header, "%@:programInstance:%p", v6, v7);
}

void sub_10001D534(void *a1, void *a2, uint64_t a3)
{
  sub_1000071D4(a1, 5.778e-34, a2, a3);
  *(v5 + 12) = 2112;
  *(v5 + 14) = v6;
  sub_1000071E0(&_mh_execute_header, "%@:instanceName:%@", v7, v8);
}

void sub_10001D594()
{
  sub_1000071A0();
  v2 = *(*(*v1 + 8) + 40);
  sub_1000071D4(v3, 5.778e-34, v1, v4);
  *(v5 + 12) = 2112;
  *(v5 + 14) = v6;
  sub_1000071C8();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x16u);
}

void sub_10001D5F8()
{
  sub_100007190();
  sub_1000071B0(v1, v2, 5.778e-34);
  *(v3 + 12) = 1024;
  *(v3 + 14) = v4;
  sub_1000071C8();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x12u);
}

void sub_10001D650()
{
  sub_1000071A0();
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 72);
  v5 = *(v1 + 96);
  v6 = *(v1 + 144);
  sub_1000071D4(v7, 5.7785e-34, v1, v8);
  *(v9 + 12) = 2048;
  *(v9 + 14) = v10;
  *(v9 + 22) = 1024;
  *(v9 + 24) = v11;
  *(v9 + 28) = 1024;
  *(v9 + 30) = v12;
  *(v9 + 34) = 1024;
  *(v9 + 36) = v13;
  *(v9 + 40) = 1024;
  *(v9 + 42) = v14;
  _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%@: intermediateBufferSize=%zu : numInputs=%d : numOutputs=%d : numProcedures=%d queueDepth=%d", v15, 0x2Eu);
}

void sub_10001D6E4()
{
  sub_1000071A0();
  v2 = *(v1 + 104);
  sub_1000071D4(v3, 5.778e-34, v1, v4);
  *(v5 + 12) = 2048;
  *(v5 + 14) = v6;
  sub_1000071E0(&_mh_execute_header, "%@: procedures=%p", v7, v8);
}

void sub_10001D738()
{
  sub_1000071BC();
  sub_1000071B0(v1, v2, 5.7779e-34);
  sub_1000071FC(&_mh_execute_header, v3, v4, "%@: ANEProgramChainingPrepare() Failed", v5);
}

void sub_10001D77C(void *a1, void *a2, NSObject *a3)
{
  v5 = [a1 processIdentifier];
  v6 = [a2 entitlementString];
  v7[0] = 67109378;
  v7[1] = v5;
  v8 = 2112;
  v9 = v6;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Rejecting XPC connection requests from client(%d) : missing entitlement(%@)", v7, 0x12u);
}

void sub_10001D83C(uint64_t a1, void *a2)
{
  v4 = NSStringFromSelector(*(a1 + 48));
  v5 = [*(a1 + 32) serviceName];
  [a2 processIdentifier];
  sub_1000093F8();
  sub_100009424(&_mh_execute_header, v6, v7, "%@: interruptHandler : %@ : %d : %@", v8, v9, v10, v11, v12);
}

void sub_10001D8F0(uint64_t a1, void *a2)
{
  v4 = NSStringFromSelector(*(a1 + 48));
  v5 = [*(a1 + 32) serviceName];
  [a2 processIdentifier];
  sub_1000093F8();
  sub_100009424(&_mh_execute_header, v6, v7, "%@: invalidationHandler : %@ : %d : %@", v8, v9, v10, v11, v12);
}

void sub_10001D9B8(void *a1, const char *a2, uint64_t a3)
{
  v5 = a1;
  v6 = NSStringFromSelector(a2);
  sub_10000D76C();
  v9 = a3;
  sub_10000D780(&_mh_execute_header, v5, v7, "%@: modelFilePath=%@", v8);
}

void sub_10001DA68(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%@: +updateAccessTimeForFilePath:%@ failed", buf, 0x16u);
}

void sub_10001DAD0(void *a1, const char *a2, uint64_t a3)
{
  v5 = a1;
  v6 = NSStringFromSelector(a2);
  sub_10000D76C();
  v9 = a3;
  sub_10000D780(&_mh_execute_header, v5, v7, "%@: weightFilePath=%@", v8);
}

void sub_10001DB80(void *a1, const char *a2, uint64_t a3)
{
  v5 = a1;
  v6 = NSStringFromSelector(a2);
  sub_10000D76C();
  v9 = a3;
  sub_10000D780(&_mh_execute_header, v5, v7, "%@: filePath=%@", v8);
}

void sub_10001DC2C(void *a1, const char *a2, uint64_t a3)
{
  v5 = a1;
  v6 = NSStringFromSelector(a2);
  sub_10000D76C();
  v9 = a3;
  sub_10000D780(&_mh_execute_header, v5, v7, "%@: Skipping update for filePath=%@", v8);
}

void sub_10001DCD8(void *a1, const char *a2)
{
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%@: +setAccessTime:forFilePath failed", &v5, 0xCu);
}

void sub_10001DD80()
{
  sub_10000D76C();
  v3 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Failed to remove %@ : error=%@", v2, 0x16u);
}

void sub_10001DDFC(uint64_t a1, uint64_t *a2, NSObject *a3)
{
  v3 = *a2;
  v4 = 136315394;
  v5 = a1;
  v6 = 2048;
  v7 = v3;
  sub_10000D780(&_mh_execute_header, a3, a3, "Mark %s as purgeable (flags 0x%llx)", &v4);
}

void sub_10001DE80(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *__error();
  v5 = 136315394;
  v6 = a1;
  v7 = 1024;
  v8 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Fail to open %s %{darwin.errno}d", &v5, 0x12u);
}

void sub_10001DF3C(void *a1, const char *a2)
{
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  sub_10000FFF8();
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%@: nil currentConnection", v5, 0xCu);
}

void sub_10001DFE4(void *a1, const char *a2, uint64_t a3)
{
  v5 = a1;
  v6 = NSStringFromSelector(a2);
  sub_10000FFF8();
  v8 = 2112;
  v9 = a3;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%@: FAILED creating %@", v7, 0x16u);
}

void sub_10001E0A0(void *a1, const char *a2)
{
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  sub_10000FFF8();
  v6 = 2112;
  v7 = @"com.apple.private.ANEStorageMaintainer";
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%@: Could not create connection to %@", v5, 0x16u);
}

void sub_10001E158(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = NSStringFromSelector(v5);
  v8 = *(a1 + 32);
  sub_10000FFF8();
  v11 = 2112;
  v12 = v9;
  v13 = 2112;
  v14 = a3;
  _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%@: Could not create connection to %@ : error=%@", v10, 0x20u);
}

void sub_10001E224()
{
  sub_10001CD68();
  sub_10001CDB0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_10001E2A0(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "convertToDataVaultAsNeeded";
  v4 = 2080;
  v5 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%s: cacheDirectory=%s EXISTS", &v2, 0x16u);
}

void sub_10001E32C()
{
  sub_10001CD68();
  sub_10001CDB0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_10001E3A8()
{
  sub_10001CD68();
  sub_10001CDB0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_10001E424()
{
  sub_10001CD68();
  sub_10001CDB0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_10001E4A0()
{
  sub_10001CD68();
  sub_10001CDB0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_10001E51C()
{
  sub_10001CD68();
  sub_10001CDB0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_10001E598()
{
  sub_1000071BC();
  sub_10001CD84(v1, v2, 5.778e-34);
  *(v3 + 14) = @"com.apple.aned.temporaryFilesMaintenance";
  sub_10001CE00(&_mh_execute_header, v3, v4, "%@: Registering cullingTaskName=%@", v5);
}

void sub_10001E5E8()
{
  sub_1000071BC();
  sub_10001CD84(v1, v2, 5.778e-34);
  *(v3 + 14) = @"com.apple.aned.modelCacheGC";
  sub_10001CE00(&_mh_execute_header, v3, v4, "%@: Registering modelCacheGCTaskName=%@", v5);
}

void sub_10001E638()
{
  sub_1000071BC();
  sub_10001CD84(v1, v2, 5.778e-34);
  *(v3 + 14) = @"com.apple.aned.danglingModelsGC";
  sub_10001CE00(&_mh_execute_header, v3, v4, "%@: Registering danglingModelGCTaskName=%@", v5);
}

void sub_10001E688()
{
  sub_1000071BC();
  sub_10001CD84(v1, v2, 5.778e-34);
  *(v3 + 14) = @"com.apple.aneuserd.temporaryFilesMaintenance";
  sub_10001CE00(&_mh_execute_header, v3, v4, "%@: Registering cullingTaskName=%@", v5);
}

void sub_10001E6D8()
{
  sub_1000071BC();
  sub_10001CD84(v1, v2, 5.778e-34);
  *(v3 + 14) = @"com.apple.aneuserd.modelCacheGC";
  sub_10001CE00(&_mh_execute_header, v3, v4, "%@: Registering modelCacheGCTaskName=%@", v5);
}

void sub_10001E728()
{
  sub_1000071BC();
  sub_10001CD84(v1, v2, 5.778e-34);
  *(v3 + 14) = @"com.apple.aneuserd.danglingModelsGC";
  sub_10001CE00(&_mh_execute_header, v3, v4, "%@: Registering danglingModelGCTaskName=%@", v5);
}

void sub_10001E778()
{
  sub_1000071BC();
  sub_1000071B0(v1, v2, 5.7779e-34);
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%@: userInfo kLSNotificationBundleIDsKey is not NSArray", v4, 0xCu);
}

void sub_10001E7C8()
{
  sub_1000071A0();
  sub_10001CD50(v1, v2, v3, 5.778e-34);
  sub_1000071E0(&_mh_execute_header, "%@: %@", v4, v5);
}

void sub_10001E8DC()
{
  sub_10000FFF8();
  v3 = 1024;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "Received %@ : ANEServicesInit(0, NULL) returned %d", v2, 0x12u);
}

void sub_10001E960()
{
  sub_1000071BC();
  sub_1000071B0(v1, v2, 5.7779e-34);
  sub_1000071FC(&_mh_execute_header, v3, v4, "%@: nil currentConnection", v5);
}

void sub_10001EA74()
{
  sub_1000071A0();
  *v2 = 138412546;
  *(v2 + 4) = v3;
  *(v2 + 12) = 2048;
  *(v2 + 14) = v1 & 1;
  sub_1000071E0(&_mh_execute_header, "%@: -scanAllPartitionsForModel:expunge: returned (%ld) ", v4, v5);
}

void sub_10001EACC()
{
  sub_1000071BC();
  sub_1000071B0(v1, v2, 5.7779e-34);
  sub_1000071FC(&_mh_execute_header, v3, v4, "%@: nil csIdentity", v5);
}

void sub_10001EB10()
{
  sub_1000071A0();
  sub_10001CD50(v1, v2, v3, 5.778e-34);
  sub_10001CDD4(&_mh_execute_header, "%@: shared model in system folder (%@) may not be purged", v4, v5);
}

void sub_10001EBBC()
{
  sub_1000071BC();
  sub_1000071B0(v1, v2, 5.7779e-34);
  sub_1000071FC(&_mh_execute_header, v3, v4, "%@: -scanAllPartitionsForModel:expunge: failed ", v5);
}

void sub_10001EC00()
{
  sub_1000071A0();
  sub_10001CD50(v1, v2, v3, 5.778e-34);
  sub_10001CDD4(&_mh_execute_header, "%@: system model (%@) may not be purged", v4, v5);
}

void sub_10001EC44()
{
  sub_10001CDC0();
  sub_10001CD50(v2, v3, v4, 5.778e-34);
  sub_10001CDD4(&_mh_execute_header, "%@: Invalid model key (%@)", v5, v6);
}

void sub_10001EC8C(void *a1)
{
  v2 = sub_10001CE38(a1);
  sub_10001CD98(v2, 5.7781e-34);
  *(v1 + 22) = 1024;
  *(v1 + 24) = 1;
  sub_10001CDF0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_10001ECF8(void *a1)
{
  v1 = sub_10001CE38(a1);
  sub_10001CD98(v1, 5.778e-34);
  sub_10001CDF0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10001ED54(void *a1)
{
  v1 = sub_10001CE38(a1);
  sub_10001CD98(v1, 5.778e-34);
  sub_10001CDF0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10001EDB0(void *a1)
{
  v1 = sub_10001CE38(a1);
  sub_10001CD98(v1, 5.778e-34);
  sub_10001CDF0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10001EE0C(void *a1)
{
  v1 = sub_10001CE38(a1);
  sub_10001CD98(v1, 5.778e-34);
  sub_10001CDF0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10001EE68()
{
  sub_1000071A0();
  sub_10001CE54(v1, v2, v3, 5.778e-34);
  _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%@: enableLateLatch=%d", v4, 0x12u);
}

void sub_10001EEBC()
{
  sub_1000071A0();
  sub_10001CE54(v1, v2, v3, 5.778e-34);
  _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%@: skipPreparePhase=%d ", v4, 0x12u);
}

void sub_10001EF10()
{
  sub_1000071A0();
  sub_10001CD50(v1, v2, v3, 5.778e-34);
  sub_10001CDD4(&_mh_execute_header, "%@: loadModel failed because inMemoryModelIdentifier contains: .. model=%@", v4, v5);
}

void sub_10001EF54()
{
  sub_1000071A0();
  sub_10001CD50(v1, v2, v3, 5.778e-34);
  sub_10001CDD4(&_mh_execute_header, "%@: loadModel failed because csIdentity contains: ../ model=%@", v4, v5);
}

void sub_10001EF98()
{
  sub_1000071A0();
  sub_10001CD50(v1, v2, v3, 5.778e-34);
  sub_10001CDD4(&_mh_execute_header, "%@: loadModel failed because inMemoryModelIdentifier is NULL: .. model=%@", v4, v5);
}

void sub_10001EFDC()
{
  sub_1000071BC();
  sub_1000071B0(v1, v2, 5.778e-34);
  *(v3 + 12) = 1024;
  *(v3 + 14) = v4;
  _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%@: client(%d) : missing signingIdentifier", v5, 0x12u);
}

void sub_10001F03C()
{
  sub_10001CDC0();
  sub_10001CD50(v2, v3, v4, 5.778e-34);
  sub_1000071E0(&_mh_execute_header, "%@: Internal Build with boot-arg: %@ set to true. Skipping entitlement check", v5, v6);
}

void sub_10001F084()
{
  sub_1000071BC();
  sub_1000071B0(v1, v2, 5.778e-34);
  *(v3 + 12) = 2048;
  *(v3 + 14) = v4;
  sub_1000071E0(&_mh_execute_header, "%@:  intermediateBufferHandle shared: 0x%llu", v5, v6);
}

void sub_10001F0D8()
{
  sub_1000071A0();
  sub_10001CD50(v1, v2, v3, 5.778e-34);
  sub_1000071E0(&_mh_execute_header, "%@:  programForConnection: %@", v4, v5);
}

void sub_10001F11C()
{
  sub_1000071BC();
  sub_10001CD84(v1, v2, 5.778e-34);
  *(v3 + 14) = 0;
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%@: modelIdentifier(%@) : missing base model identifier", v5, 0x16u);
}

void sub_10001F170()
{
  sub_1000071A0();
  sub_10001CD50(v1, v2, v3, 5.778e-34);
  sub_10001CDD4(&_mh_execute_header, "%@: timed out (%@)", v4, v5);
}

void sub_10001F1B4()
{
  sub_1000071BC();
  sub_1000071B0(v1, v2, 5.7779e-34);
  sub_1000071FC(&_mh_execute_header, v3, v4, "%@: nil _ANEModel", v5);
}

void sub_10001F1F8()
{
  sub_1000071A0();
  sub_10001CD50(v1, v2, v3, 5.778e-34);
  sub_1000071E0(&_mh_execute_header, "%@: Checking modelFilePath=%@", v4, v5);
}

void sub_10001F23C()
{
  sub_1000071A0();
  sub_10001CD50(v1, v2, v3, 5.778e-34);
  sub_1000071E0(&_mh_execute_header, "%@: Removing modelFilePath=%@", v4, v5);
}

void sub_10001F280()
{
  sub_1000071A0();
  sub_10001CD50(v1, v2, v3, 5.778e-34);
  sub_10001CDD4(&_mh_execute_header, "%@: Compilation failed because inMemoryModelIdentifier contains: .. model=%@", v4, v5);
}

void sub_10001F32C()
{
  sub_1000071A0();
  sub_10001CD50(v1, v2, v3, 5.778e-34);
  sub_10001CDD4(&_mh_execute_header, "%@: cachedModelFilePath=%@ does not exist", v4, v5);
}

void sub_10001F370()
{
  sub_1000071A0();
  sub_10001CD50(v1, v2, v3, 5.778e-34);
  sub_10001CDD4(&_mh_execute_header, "%@: Compilation failed because csIdentity contains: ../ model=%@", v4, v5);
}

void sub_10001F3B4(os_log_t log)
{
  v1 = 138412290;
  v2 = @"com.apple.ANECompilerService";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "could not create connection to %@", &v1, 0xCu);
}

void sub_10001F438()
{
  sub_1000071A0();
  sub_10001CD50(v1, v2, v3, 5.778e-34);
  sub_10001CDD4(&_mh_execute_header, "%@: CompileModel failed because inMemoryModelIdentifier contains: .. model=%@", v4, v5);
}

void sub_10001F47C()
{
  sub_1000071A0();
  sub_10001CD50(v1, v2, v3, 5.778e-34);
  sub_10001CDD4(&_mh_execute_header, "%@: CompileModel failed because csIdentity contains: ../ model=%@", v4, v5);
}

void sub_10001F4C0(uint64_t a1)
{
  v6 = *(a1 + 32);
  sub_10001CDB0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}