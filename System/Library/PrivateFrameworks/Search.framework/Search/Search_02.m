void sub_100059034(void *a1)
{
  v1 = *(a1[4] + 8);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000590C8;
  v3[3] = &unk_100092290;
  v2 = a1[5];
  v5 = a1[6];
  v4 = v2;
  dispatch_async(v1, v3);
}

void sub_1000590C8(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = +[SPFeedbackSender feedbackListeners];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 supportsFeedbackType:*(a1 + 40)])
        {
          v8 = [v7 feedbackListener];
          [v8 didRankSections:*(a1 + 32)];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

void sub_100059650(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_10005AB08()
{
  if (v0)
  {
    objc_end_catch();
  }

  JUMPOUT(0x10005AA04);
}

void sub_10005AB20(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x10005AB2CLL);
}

void sub_10005AB34(uint64_t a1)
{
  [*(a1 + 32) storeCompletedSearch:*(a1 + 40) withSections:*(*(a1 + 40) + 208)];
  v2 = SPLogForSPLogCategoryDefault();
  v3 = v2;
  if (gSPLogDebugAsDefault)
  {
    v4 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v4 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v2, v4))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "#query parsec sending results", buf, 2u);
  }

  [*(a1 + 32) externalID];
  kdebug_trace();
  v5 = SPLogForSPLogCategoryTelemetry();
  v6 = [*(a1 + 32) externalID];
  if (v6)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      *v8 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, v7, "parsecLatency", " enableTelemetry=YES ", v8, 2u);
    }
  }
}

void sub_10005ADE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000066D4(va);
  _Unwind_Resume(a1);
}

void sub_10005AE08(uint64_t a1)
{
  sub_100017E38(*(a1 + 32), "cancel", "parsec", *(*(a1 + 40) + 232));
  v2 = *(*(a1 + 40) + 200);
  if (v2)
  {
    [v2 invalidateHandler];
    v3 = *(a1 + 40);
    v4 = *(v3 + 208);
    *(v3 + 208) = 0;

    v5 = *(a1 + 40);
    v6 = *(v5 + 200);
    *(v5 + 200) = 0;
  }

  v7 = +[SDController workQueue];
  v8 = qos_class_self();
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10005AF48;
  v12[3] = &unk_100091EA8;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v13 = v9;
  v14 = v10;
  v11 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v8, 0, v12);
  tracing_dispatch_async();

  if ((*(*(a1 + 40) + 122) & 1) == 0)
  {
    atomic_fetch_add(dword_1000A8900, 0xFFFFFFFF);
  }
}

void sub_10005AF48(uint64_t a1)
{
  if (([*(a1 + 32) cancelled] & 1) == 0)
  {
    [*(a1 + 32) storeCompletedSearch:*(a1 + 40) withSections:0];
  }

  v2 = SPLogForSPLogCategoryDefault();
  v3 = v2;
  if (gSPLogDebugAsDefault)
  {
    v4 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v4 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v2, v4))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "#query parsec sending cancel", v5, 2u);
  }
}

void sub_10005B114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000066D4(va);
  _Unwind_Resume(a1);
}

void sub_10005B12C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 121) & 1) == 0)
  {
    v3 = *(a1 + 40);
    if (v3 == *(v1 + 200))
    {
      v4 = [v3 category_stats];
      v5 = *(a1 + 32);
      v6 = *(v5 + 136);
      *(v5 + 136) = v4;

      v7 = [*(a1 + 40) server_features];
      v8 = *(a1 + 32);
      v9 = *(v8 + 144);
      *(v8 + 144) = v7;

      *(*(a1 + 32) + 123) = 1;
      v10 = PRSLogCategoryDefault();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        sub_10006398C(v10);
      }

      v1 = *(a1 + 32);
    }

    if (*(v1 + 123) == 1)
    {
      v11 = +[SDController workQueue];
      v12 = *(a1 + 32);
      tracing_dispatch_async();
    }
  }
}

void sub_10005B254(uint64_t a1)
{
  v2 = [*(a1 + 32) resultPipe];
  [v2 storeWillComplete:*(a1 + 32)];
}

void sub_10005B4DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000066D4(va);
  _Unwind_Resume(a1);
}

id sub_10005C424(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v4 count])
  {
    v5 = objc_msgSend([NSMutableString alloc], "initWithFormat:", @"FieldMatch(%@, "), v3;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      v10 = @"%@";
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [v5 appendFormat:v10, *(*(&v13 + 1) + 8 * i)];
          v10 = @", %@";
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        v10 = @", %@";
      }

      while (v8);
    }

    [v5 appendString:@""]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_10005C5B0(id a1)
{
  v3[0] = NSFileProtectionComplete;
  v3[1] = NSFileProtectionCompleteUnlessOpen;
  v3[2] = NSFileProtectionCompleteWhenUserInactive;
  v3[3] = NSFileProtectionCompleteUntilFirstUserAuthentication;
  v1 = [NSArray arrayWithObjects:v3 count:4];
  v2 = qword_1000A8908;
  qword_1000A8908 = v1;
}

void *sub_10005C658(uint64_t a1, int a2, unint64_t a3, size_t a4, unint64_t a5, int *a6)
{
  v12 = objc_autoreleasePoolPush();
  v13 = HIDWORD(a3);
  switch(a2)
  {
    case 0:
      v14 = malloc_type_malloc(0x28uLL, 0x1020040C9F8C70BuLL);
      *v14 = atomic_fetch_add(&qword_1000A8920, 1uLL);
      v14[1] = a6;
      *(v14 + 4) = _SIProtectionClass();
      v15 = v14[1];
      *(v14 + 20) = _SIPriority();
      v14[3] = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, &kCFTypeDictionaryValueCallBacks);
      v14[4] = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, &kCFTypeDictionaryValueCallBacks);
      goto LABEL_105;
    case 1:
      CFRelease(*(a3 + 24));
      v35 = *(a3 + 32);
      goto LABEL_34;
    case 2:
      v14 = malloc_type_malloc(0x58uLL, 0x10E00406EEDA840uLL);
      *v14 = a6;
      v14[1] = a3;
      *(v14 + 32) = 8;
      *(v14 + 1) = 0u;
      *(v14 + 2) = 0u;
      *(v14 + 3) = 0u;
      v14[9] = malloc_type_calloc(8uLL, 8uLL, 0x2004093837F09uLL);
      v14[10] = 0;
      goto LABEL_105;
    case 3:
      v28 = *(a3 + 32);
      v26 = *(a3 + 48);
      v27 = *(a3 + 64);
      v72 = *(a3 + 80);
      v70[2] = v26;
      *v71 = v27;
      v70[1] = v28;
      v70[0] = *(a3 + 16);
      *(a3 + 80) = 0;
      DWORD1(v28) = 0;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      if ((v70[0] & 0x400) == 0)
      {
        goto LABEL_22;
      }

      LODWORD(v28) = v70[0] & 0x3FF;
      v29 = vcnt_s8(*&v28);
      v29.i16[0] = vaddlv_u8(v29);
      v30 = *(v71[1] + v29.u32[0]);
      if (!v30 || *(v30 + 20))
      {
        goto LABEL_22;
      }

      v61 = *(v30 + 24);
      if (v61 == 16)
      {
        v62 = [*(v30 + 32) cStringUsingEncoding:4];
      }

      else
      {
        if (v61 != 1)
        {
          goto LABEL_22;
        }

        v62 = *(v30 + 32);
      }

      if (v62)
      {
        if ((*&v70[0] & 0x1000000000) == 0 || (v63 = vcnt_s8((*&v70[0] & 0xFFFFFFFFFLL)), v63.i16[0] = vaddlv_u8(v63), (v64 = *(v71[1] + v63.u32[0])) == 0) || *(v64 + 32) >= *(a1 + 40))
        {
          v65 = sub_10004B760(*(a3 + 8), v70);
          os_unfair_lock_lock(&unk_1000A8918);
          v66 = NSMapGet(*(a1 + 32), v62);
          if (!v66)
          {
            v66 = CFBinaryHeapCreate(kCFAllocatorDefault, 0, &unk_1000A7FC8, 0);
            NSMapInsert(*(a1 + 32), v62, v66);
            CFRelease(v66);
          }

          if (!qword_1000A8908)
          {
            sub_100063B00();
          }

          v67 = a6[4];
          if (v67 >= [qword_1000A8908 count])
          {
            sub_100063AD4();
          }

          if (*(a6 + 20) == 1)
          {
            sub_10004BD9C(v65, v70, @"Priority");
          }

          else
          {
            v68 = [qword_1000A8908 objectAtIndexedSubscript:a6[4]];
            sub_10004BD9C(v65, v70, v68);
          }

          CFBinaryHeapAddValue(v66, v65);
          sub_10004BFA8(0, v65);
          os_unfair_lock_unlock(&unk_1000A8918);
        }
      }

LABEL_22:
      v31 = v71[1];
      if (v71[1])
      {
        v32 = BYTE1(v71[0]);
        if (BYTE1(v71[0]))
        {
          v33 = v71[1];
          do
          {
            v34 = *v33++;
            sub_10004BE4C(v34);
            --v32;
          }

          while (v32);
        }

        free(v31);
      }

      v35 = v72;
      if (v72)
      {
LABEL_34:
        CFRelease(v35);
      }

      goto LABEL_103;
    case 4:
      v14 = malloc_type_calloc(1uLL, 0x40uLL, 0x10F20407A6C0F06uLL);
      v14[1] = *a6;
      *v14 = 1;
      goto LABEL_105;
    case 5:
      if (*(a3 + 24))
      {
        sub_10003DEA0(a6 + 2, a5, a3);
      }

      else
      {
        sub_10004BE4C(a3);
      }

      goto LABEL_104;
    case 6:
      v38 = malloc_type_calloc(1uLL, 0x50uLL, 0x10F20409211DA8EuLL);
      v14 = v38;
      *(v38 + 1) = *(a6 + 1);
      v39 = 3;
      goto LABEL_48;
    case 7:
      if (*a6 == 2)
      {
        v14 = 0;
        *(a6 + 10) = a3;
        a6[28] = 19;
      }

      else
      {
        if (*a6 != 1)
        {
          sub_100063AA8();
        }

        v36 = *(a3 + 64);
        a6[5] = 3;
        a6[6] = v36;
        v37 = *(a3 + 48);
        *(a6 + 2) = *(a3 + 32);
        *(a6 + 3) = v37;
        *(a6 + 4) = *(a3 + 16);
LABEL_103:
        free(a3);
LABEL_104:
        v14 = 0;
      }

      goto LABEL_105;
    case 8:
      v14 = malloc_type_calloc(1uLL, 0x18uLL, 0x1020040F89CB87BuLL);
      v14[1] = *(a6 + 1);
      *v14 = 4;
      v14[2] = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
      goto LABEL_105;
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
          sub_100063A7C();
        }

        *(a6 + 5) = 0x1100000004;
        v25 = *(a3 + 16);
        *(a6 + 4) = v25;
        CFDictionarySetValue(*(*(a3 + 8) + 32), a4, v25);
      }

      goto LABEL_103;
    case 10:
      sub_100063A50();
    case 11:
      sub_100063A24();
    case 12:
      v38 = malloc_type_calloc(1uLL, 0x80uLL, 0x10F204051DD1B44uLL);
      v14 = v38;
      *(v38 + 1) = *(a6 + 1);
      v39 = 2;
LABEL_48:
      *v38 = v39;
      goto LABEL_105;
    case 13:
      v14 = 0;
      *(a6 + 5) = 0x1500000002;
      *(a6 + 4) = a3;
      goto LABEL_105;
    case 14:
      sub_1000639F8();
    case 15:
      v18 = 0;
      a4 = 0;
      v13 = 0;
      LODWORD(v21) = 0;
      LOWORD(v16) = 0;
      v14 = 0;
      LOBYTE(a3) = a3 & 1;
      v19 = 14;
      goto LABEL_45;
    case 16:
      v18 = 0;
      a4 = 0;
      v13 = 0;
      LODWORD(v21) = 0;
      LOWORD(v16) = 0;
      v14 = 0;
      v19 = 5;
      goto LABEL_45;
    case 17:
      v18 = 0;
      a4 = 0;
      v13 = 0;
      LODWORD(v21) = 0;
      v14 = 0;
      v16 = a3 >> 8;
      v19 = 4;
      goto LABEL_50;
    case 18:
      v18 = 0;
      a4 = 0;
      v13 = 0;
      v14 = 0;
      v21 = (a3 >> 16);
      v16 = a3 >> 8;
      v19 = 3;
      goto LABEL_39;
    case 19:
      v18 = 0;
      a4 = 0;
      v14 = 0;
      v21 = (a3 >> 16);
      v16 = a3 >> 8;
      v19 = 2;
      goto LABEL_53;
    case 20:
      v18 = 0;
      a4 = 0;
      v13 = 0;
      LODWORD(v21) = 0;
      LOWORD(v16) = 0;
      v14 = 0;
      v19 = 10;
LABEL_45:
      v20 = 1;
      goto LABEL_59;
    case 21:
      v18 = 0;
      a4 = 0;
      v13 = 0;
      LODWORD(v21) = 0;
      v14 = 0;
      v16 = a3 >> 8;
      v19 = 9;
LABEL_50:
      v20 = 2;
      goto LABEL_59;
    case 22:
      v18 = 0;
      a4 = 0;
      v13 = 0;
      v14 = 0;
      v21 = (a3 >> 16);
      v16 = a3 >> 8;
      v19 = 8;
      goto LABEL_39;
    case 23:
      v18 = 0;
      a4 = 0;
      v14 = 0;
      v21 = (a3 >> 16);
      v16 = a3 >> 8;
      v19 = 7;
      goto LABEL_53;
    case 24:
      v18 = 0;
      v14 = 0;
      v21 = (a3 >> 16);
      v16 = a3 >> 8;
      v19 = 6;
      v20 = 16;
      goto LABEL_59;
    case 25:
      v18 = 0;
      a4 = 0;
      v14 = 0;
      v21 = (a3 >> 16);
      v16 = a3 >> 8;
      v19 = 13;
      goto LABEL_53;
    case 26:
      v18 = 0;
      a4 = 0;
      v13 = 0;
      v14 = 0;
      v21 = (a3 >> 16);
      v16 = a3 >> 8;
      v19 = 11;
LABEL_39:
      v20 = 4;
      goto LABEL_59;
    case 27:
      v18 = 0;
      a4 = 0;
      v14 = 0;
      v21 = (a3 >> 16);
      v16 = a3 >> 8;
      v19 = 12;
LABEL_53:
      v20 = 8;
      goto LABEL_59;
    case 28:
      v24 = strdup(a3);
      v18 = 0;
      a4 = 0;
      v14 = 0;
      v16 = v24 >> 8;
      v21 = (v24 >> 16);
      v13 = HIDWORD(v24);
      v19 = 1;
      v20 = 8;
      goto LABEL_58;
    case 29:
      v24 = strndup(a3, a4);
      v18 = 0;
      a4 = 0;
      v14 = 0;
      v16 = v24 >> 8;
      v21 = (v24 >> 16);
      v13 = HIDWORD(v24);
      v19 = 1;
      v20 = 8;
      goto LABEL_58;
    case 30:
      v22 = *(*(a6 + 1) + 24);
      if (!v22)
      {
        goto LABEL_8;
      }

      Value = CFDictionaryGetValue(v22, a4);
      v14 = Value;
      if (!Value)
      {
        goto LABEL_105;
      }

      v24 = CFRetain(Value);
      v20 = 0;
      a4 = 0;
      v16 = v24 >> 8;
      v21 = (v24 >> 16);
      v13 = HIDWORD(v24);
      v19 = 16;
      v18 = 1;
LABEL_58:
      LOBYTE(a3) = v24;
LABEL_59:
      v41 = *a6;
      if (*a6 > 3)
      {
        if (v41 == 4)
        {
          if (v18)
          {
            CFArrayAppendValue(*(a6 + 2), (a3 | (v16 << 8) | (v21 << 16) | (v13 << 32)));
            CFRelease((a3 | (v16 << 8) | (v21 << 16) | (v13 << 32)));
          }

          goto LABEL_105;
        }

        if (v41 != 5)
        {
LABEL_72:
          a6[8] = a3 | (v16 << 8) | (v21 << 16);
          a6[9] = v13;
          *(a6 + 6) = 0;
          *(a6 + 7) = 0;
          *(a6 + 5) = a4;
          a6[6] = v19;
          goto LABEL_105;
        }

        v44 = a6[4];
        if (*(a6 + 4) == v44)
        {
          if (v44)
          {
            v45 = 2 * v44;
            *(a6 + 4) = v45;
            *(a6 + 5) = malloc_type_realloc(*(a6 + 5), v45 * v20, 0xE3FA53CCuLL);
            if (a6[16] != v19)
            {
              sub_100063B2C();
            }
          }

          else
          {
            *(a6 + 4) = 4;
            *(a6 + 5) = malloc_type_malloc(4 * v20, 0xBEE88035uLL);
            a6[16] = v19;
          }
        }

        if (v19 > 8)
        {
          if (v19 <= 11)
          {
            if (v19 == 9)
            {
              goto LABEL_92;
            }

            if (v19 == 10)
            {
LABEL_91:
              v47 = *(a6 + 5);
              v48 = a6[4];
              a6[4] = v48 + 1;
              *(v47 + v48) = a3;
              goto LABEL_105;
            }

            goto LABEL_100;
          }

          if ((v19 - 12) >= 2)
          {
            if (v19 == 14)
            {
LABEL_109:
              v59 = *(a6 + 5);
              v60 = a6[4];
              a6[4] = v60 + 1;
              *(v59 + v60) = a3 & 1;
            }

            goto LABEL_105;
          }
        }

        else
        {
          if (v19 > 3)
          {
            if (v19 <= 6)
            {
              if (v19 != 4)
              {
                if (v19 != 5)
                {
                  goto LABEL_105;
                }

                goto LABEL_91;
              }

LABEL_92:
              v49 = *(a6 + 5);
              v50 = a6[4];
              a6[4] = v50 + 1;
              *(v49 + 2 * v50) = a3 | (v16 << 8);
              goto LABEL_105;
            }

            if (v19 != 7)
            {
LABEL_100:
              v53 = *(a6 + 5);
              v54 = a6[4];
              a6[4] = v54 + 1;
              *(v53 + 4 * v54) = a3 | (v16 << 8) | (v21 << 16);
              goto LABEL_105;
            }

LABEL_101:
            v55 = *(a6 + 5);
            v56 = a6[4];
            a6[4] = v56 + 1;
            v57 = (v55 + 8 * v56);
            *v57 = a3 | (v16 << 8) | (v21 << 16);
            v57[1] = v13;
            goto LABEL_105;
          }

          if (v19 != 1)
          {
            if (v19 != 2)
            {
              if (v19 != 3)
              {
                goto LABEL_105;
              }

              goto LABEL_100;
            }

            goto LABEL_101;
          }
        }

LABEL_98:
        v51 = *(a6 + 5);
        v52 = a6[4];
        a6[4] = v52 + 1;
        *(v51 + 8 * v52) = a3 | (v16 << 8) | (v21 << 16) | (v13 << 32);
        goto LABEL_105;
      }

      if (v41 != 2)
      {
        if (v41 == 3)
        {
          v42 = a6[4];
          if (*(a6 + 4) == v42)
          {
            if (v42)
            {
              v43 = 2 * v42;
              *(a6 + 4) = v43;
              *(a6 + 5) = malloc_type_realloc(*(a6 + 5), v43 * v20, 0x944C7475uLL);
              if (a6[16] != v19)
              {
                sub_100063B58();
              }
            }

            else
            {
              *(a6 + 4) = 4;
              *(a6 + 5) = malloc_type_malloc(4 * v20, 0xFC6CF1D0uLL);
              a6[16] = v19;
            }
          }

          switch(v19)
          {
            case 1:
            case 12:
            case 13:
              goto LABEL_98;
            case 2:
            case 7:
              goto LABEL_101;
            case 3:
            case 8:
            case 11:
              goto LABEL_100;
            case 4:
            case 9:
              goto LABEL_92;
            case 5:
            case 10:
              goto LABEL_91;
            case 14:
              goto LABEL_109;
            case 15:
              sub_100063B84();
            default:
              goto LABEL_105;
          }
        }

        goto LABEL_72;
      }

      v46 = a3 | (v16 << 8) | (v21 << 16);
      if (*(a6 + 20) == 1)
      {
        a6[20] = v46;
        a6[21] = v13;
        *(a6 + 12) = 0;
        *(a6 + 13) = 0;
        *(a6 + 11) = a4;
        a6[28] = v19;
      }

      else
      {
        a6[8] = v46;
        a6[9] = v13;
        *(a6 + 6) = 0;
        *(a6 + 7) = 0;
        *(a6 + 5) = a4;
        a6[16] = v19;
        *(a6 + 20) = 1;
      }

LABEL_105:
      objc_autoreleasePoolPop(v12);
      return v14;
    case 31:
      a3 = CFStringCreateWithCString(kCFAllocatorDefault, a3, 0x8000100u);
      CFDictionarySetValue(*(*(a6 + 1) + 24), a4, a3);
      v20 = 0;
      a4 = 0;
      v14 = 0;
      v16 = a3 >> 8;
      v21 = (a3 >> 16);
      v13 = HIDWORD(a3);
      v19 = 16;
      v18 = 1;
      goto LABEL_59;
    case 32:
      v40 = CFDictionaryGetValue(*(*(a6 + 1) + 32), a4);
      v14 = v40;
      if (!v40)
      {
        goto LABEL_105;
      }

      v24 = CFRetain(v40);
      v20 = 0;
      v18 = 0;
      a4 = 0;
      v16 = v24 >> 8;
      v21 = (v24 >> 16);
      v13 = HIDWORD(v24);
      v19 = 17;
      goto LABEL_58;
    case 33:
      v13 = HIDWORD(a4);
      v69 = a4;
      v16 = a4 >> 8;
      v17 = a4 >> 16;
      v21 = malloc_type_malloc(a4, 0x15940C90uLL);
      memcpy(v21, a3, a4);
      v18 = 0;
      v14 = 0;
      v19 = 15;
      v20 = 8;
      a4 = v21;
      LODWORD(v21) = v17;
      LOBYTE(a3) = v69;
      goto LABEL_59;
    default:
LABEL_8:
      v20 = 0;
      v18 = 0;
      v19 = 0;
      a4 = 0;
      v13 = 0;
      LODWORD(v21) = 0;
      LOWORD(v16) = 0;
      LOBYTE(a3) = 0;
      v14 = 0;
      goto LABEL_59;
  }
}

void sub_10005D244(uint64_t a1)
{
  memset(&enumerator, 0, sizeof(enumerator));
  NSEnumerateMapTable(&enumerator, *(a1 + 32));
  key = 0;
  value = 0;
  if (NSNextMapEnumeratorPair(&enumerator, &key, &value))
  {
    v47 = 0;
    while (1)
    {
      Count = CFBinaryHeapGetCount(value);
      v3 = [NSString alloc];
      v48 = [v3 initWithCString:key encoding:4];
      v42 = &v42;
      __chkstk_darwin(v48);
      v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v5, v4);
      CFBinaryHeapGetValues(value, v5);
      v6 = SPL1Threshold();
      v43 = v7;
      v44 = v6;
      if (Count >= 1)
      {
        break;
      }

LABEL_62:

      if (!NSNextMapEnumeratorPair(&enumerator, &key, &value))
      {
        goto LABEL_65;
      }
    }

    v8 = 0;
    v45 = v5;
    v46 = Count;
    while (1)
    {
      v9 = *&v5[8 * v8];
      v11 = *(v9 + 16);
      v10 = *(v9 + 24);
      v12 = *(v9 + 32);
      v13 = sub_10004BAE0(v9 + 64, 0);
      objc_opt_class();
      v50 = v13;
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v17 = v50;
LABEL_61:

      if (++v8 == Count)
      {
        goto LABEL_62;
      }
    }

    v49 = v12;
    if (*(a1 + 80))
    {
      v14 = 0;
      v15 = 0;
      do
      {
        if ([*(a1 + 40) containsIndex:v15])
        {
          if (v15 > 63)
          {
            if (v15 > 0x7F)
            {
              if (v15 > 0xBF)
              {
                if (v15 > 0xFF)
                {
                  v16 = v15 > 0x13F ? *(v9 + 104) : *(v9 + 96);
                }

                else
                {
                  v16 = *(v9 + 88);
                }
              }

              else
              {
                v16 = *(v9 + 80);
              }
            }

            else
            {
              v16 = *(v9 + 72);
            }
          }

          else
          {
            v16 = *(v9 + 64);
          }

          if ((v16 & (1 << v15)) != 0)
          {
            ++v14;
          }
        }

        ++v15;
      }

      while (v15 < *(a1 + 80));
    }

    v18 = SSCompactRankingAttrsAlloc();
    if (*(a1 + 80))
    {
      v19 = 0;
      do
      {
        if ([*(a1 + 40) containsIndex:v19])
        {
          if (v19 > 0x3F)
          {
            if (v19 > 0x7F)
            {
              if (v19 > 0xBF)
              {
                if (v19 > 0xFF)
                {
                  v20 = v19 > 0x13F ? *(v9 + 104) : *(v9 + 96);
                }

                else
                {
                  v20 = *(v9 + 88);
                }
              }

              else
              {
                v20 = *(v9 + 80);
              }
            }

            else
            {
              v20 = *(v9 + 72);
            }
          }

          else
          {
            v20 = *(v9 + 64);
          }

          if ((v20 & (1 << v19)) != 0)
          {
            sub_10004C718(v9 + 64, v19);
            v21 = sub_10004CED8(v9 + 64, v19);
            if (v21)
            {
              SSCompactRankingAttrsInsertValue();
            }
          }
        }

        ++v19;
      }

      while (*(a1 + 80) > v19);
    }

    v22 = [[PRSRankingItem alloc] initWithAttrs:v18 isServerAlternativeResult:1];
    v23 = v48;
    if (([v48 isEqualToString:@"com.apple.application"] & 1) == 0)
    {
      goto LABEL_48;
    }

    v24 = *(a1 + 48);
    v25 = [v22 identifier];
    if ([v24 containsObject:v25])
    {
      v26 = *(a1 + 56);
      v27 = [v22 identifier];
      LOBYTE(v26) = [v26 containsObject:v27];

      if ((v26 & 1) == 0)
      {
        v28 = *(a1 + 56);
        v29 = [v22 identifier];
        [v28 addObject:v29];

        v23 = v48;
LABEL_48:
        *buf = 0;
        sub_10004BFD4(v9 + 64, 88, buf);
        v30 = sub_10004BAE0(v9 + 64, 10);
        sub_10004BFD4(v9 + 64, 89, buf);
        v31 = [[SPSearchTopHitResult alloc] initWithRankingItem:v22 clientData:v9];
        [(SPTopHitResult *)v31 setScore:v11, v10];
        v32 = [NSDate dateWithTimeIntervalSinceReferenceDate:*(v9 + 40)];
        [(SPTopHitResult *)v31 setInterestingDate:v32];

        [(SPTopHitResult *)v31 setBundleID:v23];
        [(SPTopHitResult *)v31 setDataclass:v49];
        if (__PAIR128__(v10, v11) < __PAIR128__(v43, v44))
        {
          [v22 setEligibleForDemotion:1];
        }

        v17 = v50;
        if ([v50 hasPrefix:@"com.apple.siri."])
        {
          v33 = [(SPTopHitResult *)v31 rankingItem];
          v34 = [v33 L2FeatureVector];
          [v34 setIsSiriAction:1];

          v23 = v48;
        }

        v35 = [*(a1 + 64) objectForKey:v23];
        if (!v35)
        {
          v35 = objc_opt_new();
          [v35 setDomain:1];
          v36 = v48;
          [v35 setBundleIdentifier:v48];
          if ([v36 isEqualToString:@"com.apple.application"])
          {
            v37 = [NSBundle bundleForClass:objc_opt_class()];
            v38 = [v37 localizedStringForKey:@"DOMAIN_APPLICATION" value:&stru_100094040 table:@"Search"];
            [v35 setTitle:v38];

            v17 = v50;
          }

          else
          {
            v37 = [SDLocUtilities displayNameForBundleIdentifer:v36];
            [v35 setTitle:v37];
          }

          [*(a1 + 64) setObject:v35 forKey:v36];
        }

        [v35 addResults:v31];
        ++v47;

        v5 = v45;
        goto LABEL_60;
      }
    }

    else
    {
    }

    v5 = v45;
    v17 = v50;
LABEL_60:

    Count = v46;
    v12 = v49;
    goto LABEL_61;
  }

  v47 = 0;
LABEL_65:
  dispatch_group_leave(*(a1 + 72));
  v39 = CFAbsoluteTimeGetCurrent() - *(a1 + 88);
  v40 = SPLogForSPLogCategoryDefault();
  v41 = v40;
  if (v39 * 1000000000.0 <= 500000000.0)
  {
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v39;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Local copy query took %lf seconds", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    sub_100063BB0(v47, v41, v39);
  }
}

void sub_10005E608(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v8 bundleIdentifier];
        if (!v9 || ([*(a1 + 40) containsObject:v9] & 1) == 0)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v10 = *(a1 + 48);
  if ((*(v10 + 121) & 1) == 0)
  {
    if (*(a1 + 56) == *(v10 + 200))
    {
      v11 = PRSLogCategoryDefault();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_100063CC8(v2);
      }

      v12 = [*(a1 + 56) feedbackQueryIdentifier];
      v13 = *(a1 + 48);
      v14 = *(v13 + 152);
      *(v13 + 152) = v12;

      objc_storeStrong((*(a1 + 48) + 208), v2);
      v10 = *(a1 + 48);
    }

    if (*(v10 + 208) || !*(v10 + 200))
    {
      [v10 finished];
    }
  }
}

void sub_10005FC50(uint64_t a1, void *a2, void *a3, void *a4, void *a5, int a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = SPLogForSPLogCategoryDefault();
  v16 = v15;
  if (gSPLogDebugAsDefault)
  {
    v17 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v17 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v15, v17))
  {
    v20 = 138412546;
    v21 = v11;
    v22 = 2112;
    v23 = v12;
    _os_log_impl(&_mh_execute_header, v16, v17, "Got FTE reply - fteString %@, learnMore %@", &v20, 0x16u);
  }

  if (a6)
  {
    v18 = *(a1 + 32);
    v19 = *(v18 + 72);
    *(v18 + 72) = 0;

    [*(a1 + 32) setupSearchSession];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10005FFA4(uint64_t a1)
{
  v2 = objc_alloc_init(SPParsecFeedbackProxy);
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  v5 = [*(*(a1 + 32) + 72) listener];
  [*(*(a1 + 32) + 8) setListener:v5];
}

id sub_100060020(char *a1, void *a2)
{
  keys = a1;
  v4 = a2;
  v2 = xpc_dictionary_create(&keys, &v4, 1uLL);

  return v2;
}

void sub_100061130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000066D4(va);
  _Unwind_Resume(a1);
}

void sub_100061280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000066D4(va);
  _Unwind_Resume(a1);
}

void sub_1000612A4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

unsigned int *sub_1000612C4(unsigned int a1)
{
  v2 = malloc_type_calloc(1uLL, (16 * a1) | 8, 0x1000040D9BFD5C6uLL);
  v3 = v2;
  v7[1] = 0;
  *v2 = a1;
  if (a1)
  {
    v4 = 0;
    v5 = v2 + 2;
    do
    {
      sub_10006166C(v5, v7);
      ++v4;
      v5 += 2;
    }

    while (v4 < *v3);
  }

  return v3;
}

void sub_100061354(unsigned int *a1)
{
  if (a1)
  {
    v1 = sub_1000615F8(a1);

    free(v1);
  }
}

uint64_t sub_100061384(unsigned int *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11[0] = a2;
  v11[1] = a3;
  v9 = 0;
  v10 = 0;
  v4 = *a1;
  if (!v4)
  {
    return 0;
  }

  v6 = &a1[4 * ((a2 - 1) % v4)];
  v7 = *(v6 + 2);
  if (v7)
  {
    if (sub_10004D574(v7, a3) != -1 && *(v6 + 1))
    {
      return 0;
    }
  }

  sub_10006166C(&v9, v6 + 1);
  sub_10006166C(v6 + 1, v11);
  *a4 = v10;
  return 1;
}

uint64_t sub_10006141C(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v7[0] = a2;
  v7[1] = a3;
  v3 = *a1;
  if (!v3)
  {
    return 0;
  }

  v4 = &a1[4 * ((a2 - 1) % v3)];
  v5 = *(v4 + 2);
  if (v5)
  {
    if (sub_10004D5E4(v5, a3) != -1 && *(v4 + 1))
    {
      return 0;
    }
  }

  sub_10006166C(v4 + 1, v7);
  return 1;
}

unint64_t sub_100061498(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (v2)
    {
      LODWORD(result) = 0;
      v3 = (v1 + 8);
      do
      {
        v4 = *v3;
        v3 += 2;
        if (v4)
        {
          result = (result + 1);
        }

        else
        {
          result = result;
        }

        --v2;
      }

      while (v2);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1000614D0(unsigned int *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v10 = sub_1000615E4;
    v11 = &unk_100093CD0;
    v12 = v3;
    v5 = v9;
    v6 = *a1;
    if (v6)
    {
      v7 = 0;
      v8 = (a1 + 4);
      do
      {
        if (*(v8 - 1))
        {
          v14 = *v8;
          v10(v5, v13);
          v6 = *a1;
        }

        ++v7;
        v8 += 2;
      }

      while (v7 < v6);
    }
  }
}

unsigned int *sub_1000615F8(unsigned int *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = 0;
    v4 = (a1 + 4);
    do
    {
      if (*(v4 - 1) && *v4)
      {
        sub_10004BFA8(kCFAllocatorDefault, *v4);
        v2 = *a1;
      }

      ++v3;
      v4 += 2;
    }

    while (v3 < v2);
  }

  return a1;
}

void *sub_10006166C(void *a1, void *a2)
{
  if (a1 != a2)
  {
    v4 = a2[1];
    if (v4)
    {
      sub_10004BFC4(kCFAllocatorDefault, v4);
    }

    v5 = a1[1];
    if (v5)
    {
      sub_10004BFA8(kCFAllocatorDefault, v5);
    }

    v6 = a2[1];
    *a1 = *a2;
    a1[1] = v6;
  }

  return a1;
}

void sub_100061A54(uint64_t a1, void *a2)
{
  v3 = a2;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v4 = [v3 results];
  v5 = [v4 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v27;
    do
    {
      v8 = 0;
      do
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v26 + 1) + 8 * v8) setQueryId:{objc_msgSend(*(a1 + 32), "queryIdent")}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v6);
  }

  v9 = +[SDController workQueue];
  v10 = qos_class_self();
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100061C4C;
  v17[3] = &unk_100093CF8;
  v11 = *(a1 + 72);
  v22 = *(a1 + 56);
  v23 = v11;
  v24 = *(a1 + 88);
  v25 = *(a1 + 96);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v18 = v12;
  v19 = v13;
  v20 = v3;
  v21 = v14;
  v15 = v3;
  v16 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v10, 0, v17);
  dispatch_async(v9, v16);
}

double sub_100061C4C(uint64_t a1)
{
  v2 = si_tracing_current_span();
  v3 = *(v2 + 16);
  v34 = *v2;
  v35 = v3;
  v36 = *(v2 + 32);
  v4 = *(a1 + 80);
  *v2 = *(a1 + 64);
  *(v2 + 16) = v4;
  *(v2 + 32) = *(a1 + 96);
  v5 = *(a1 + 80);
  v31 = *(a1 + 64);
  v32 = v5;
  v33 = *(a1 + 96);
  v6 = *v2;
  spanid = si_tracing_calc_next_spanid();
  v8 = *(v2 + 8);
  v9 = *(v2 + 24);
  *v2 = v6;
  *(v2 + 8) = spanid;
  *(v2 + 16) = v8;
  *(v2 + 28) = 102;
  *(v2 + 32) = "SPWorldClockDataStore completion";
  si_tracing_log_span_begin();
  v10 = SPLogForSPLogCategoryTelemetry();
  v11 = v10;
  v12 = *(a1 + 104);
  if (v12 && os_signpost_enabled(v10))
  {
    *v30 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, v12, "worldClockLatency", " enableTelemetry=YES ", v30, 2u);
  }

  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  if (v15)
  {
    v37 = *(a1 + 48);
    v16 = [NSArray arrayWithObjects:&v37 count:1];
  }

  else
  {
    v16 = &__NSArray0__struct;
  }

  [v13 storeCompletedSearch:v14 withSections:v16];
  if (v15)
  {
  }

  v17 = [[SFEndLocalSearchFeedback alloc] initWithStartSearch:*(a1 + 56)];
  v18 = +[SPFeedbackProxy sharedProxy];
  v19 = [*(a1 + 32) queryIdent];
  v20 = [*(a1 + 32) connection];
  v21 = [v20 bundleID];
  [v18 sendFeedbackType:6 feedback:v17 queryId:v19 clientID:v21];

  v22 = *v2;
  v23 = *(v2 + 8);
  v24 = *(v2 + 16);
  v25 = *(v2 + 24);
  v26 = *(v2 + 28);
  v27 = *(v2 + 32);
  si_tracing_log_span_end();
  result = *&v34;
  v29 = v35;
  *v2 = v34;
  *(v2 + 16) = v29;
  *(v2 + 32) = v36;
  return result;
}

void sub_100061E7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19)
{
  *v19 = a17;
  *(v19 + 16) = a18;
  *(v19 + 32) = a19;
  _Unwind_Resume(exception_object);
}

void sub_10006201C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *(a1 + 8);
  *&v3[12] = 2112;
  *&v3[14] = a2;
  sub_100003E50(&_mh_execute_header, a2, a3, "Error serializing property list for %@ %@", *v3, *&v3[8], *&v3[16]);
}

void sub_100062098(uint64_t a1, NSObject *a2)
{
  v4 = 138412290;
  v5 = objc_opt_class();
  v3 = v5;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error, property list is not expected class NSDictionary, instead %@", &v4, 0xCu);
}

void sub_100062130(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = a1;
  *&v3[12] = 2112;
  *&v3[14] = a2;
  sub_100003E50(&_mh_execute_header, a2, a3, "Error, can't load property list for %@ %@", *v3, *&v3[8], *&v3[16]);
}

void sub_100062414()
{
  v0 = +[SPBackupRankingMetadataHandler sharedInstance];
  if (qword_1000A82B0 != -1)
  {
    dispatch_once(&qword_1000A82B0, &stru_100092550);
  }
}

void sub_100062464(void *a1)
{
  if (qword_1000A82C8 && [a1 isEqualToString:PRSRankingContactsBundleString] && qword_1000A82D0 != -1)
  {
    dispatch_once(&qword_1000A82D0, &stru_100092570);
  }
}

void sub_10006250C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"SDController.m" lineNumber:1114 description:{@"count: %d size: %d", a2, 41}];
}

void sub_1000629F8(void *a1, uint64_t a2, NSObject *a3)
{
  v4 = 134218240;
  v5 = a2;
  v6 = 2048;
  v7 = [a1 length];
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "bad app metadata offset:%lld dataLen:%lu", &v4, 0x16u);
}

void sub_100062E7C(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to open backup file, err:%d", v2, 8u);
}

void sub_100062FD8(void *a1)
{
  [a1 code];
  sub_10004B2E4();
  sub_10004B2F0();
  sub_10004B2FC(v1, v2, v3, v4, v5);
}

void sub_100063054(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_10004B2E4();
  sub_10004B2F0();
  sub_10004B2FC(v2, v3, v4, v5, v6);
}

void sub_100063330(NSObject *a1)
{
  if (gSPLogDebugAsDefault)
  {
    v1 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v1 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(a1, v1))
  {
    sub_10004B2F0();
    _os_log_impl(v2, v3, v1, v4, v5, 2u);
  }
}

void sub_1000633A0(NSObject *a1)
{
  if (gSPLogDebugAsDefault)
  {
    v1 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v1 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(a1, v1))
  {
    sub_10004B2F0();
    _os_log_impl(v2, v3, v1, v4, v5, 2u);
  }
}

void sub_100063410(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 134218242;
  *(buf + 4) = a3;
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[qid=%ld][rewrite] Fetching Spotlight rewrite candidates failed: %@", buf, 0x16u);
}

void sub_100063648(uint64_t a1)
{
  v6 = qword_1000A87F0[*(a1 + 72)];
  sub_100059610();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_1000636D8(void *a1, void *a2)
{
  v2 = qword_1000A87F0[*a1];
  v3 = [a2 description];
  sub_100059620();
  sub_100059650(&_mh_execute_header, v4, v5, "*** invalid feedback class for (%s) %@", v6, v7, v8, v9, v10);
}

void sub_10006377C(uint64_t a1, uint64_t *a2)
{
  v7 = qword_1000A87F0[*(a1 + 72)];
  v8 = *a2;
  sub_100059610();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100063810()
{
  sub_100059638();
  sub_100059610();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100063880(uint64_t a1, void *a2)
{
  v2 = qword_1000A87F0[a1];
  v3 = [a2 description];
  sub_100059620();
  sub_100059650(&_mh_execute_header, v4, v5, "*** invalid feedback class for (%s) %@", v6, v7, v8, v9, v10);
}

void sub_10006391C()
{
  sub_100059638();
  sub_100059610();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100063BB0(int a1, NSObject *a2, double a3)
{
  v3[0] = 67109632;
  v3[1] = a1;
  v4 = 2048;
  v5 = a3;
  v6 = 2048;
  v7 = 0x3FE0000000000000;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Local copy query took longer than allowed timeout and missed %d results: took %lf seconds but was allowed %lf", v3, 0x1Cu);
}

void sub_100063C40(void *a1)
{
  v1 = [a1 category_stats];
  sub_1000612A4(&_mh_execute_header, v2, v3, "Category stats: %@", v4, v5, v6, v7, 2u);
}

void sub_100063CC8(void *a1)
{
  v1 = [a1 valueForKey:@"title"];
  sub_1000612A4(&_mh_execute_header, v2, v3, "Got Parsec results: %@", v4, v5, v6, v7, 2u);
}

void sub_100063D58(uint64_t a1, NSObject *a2)
{
  if (*(a1 + 48))
  {
    v2 = "enabled";
  }

  else
  {
    v2 = "disabled";
  }

  v3 = 136315138;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "activate parsec datastore (%s)", &v3, 0xCu);
}