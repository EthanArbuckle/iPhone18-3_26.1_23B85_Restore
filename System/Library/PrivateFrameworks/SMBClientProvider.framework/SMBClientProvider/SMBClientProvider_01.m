void sub_1000362B8(void *a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100059E50(v3, a1);
  }

  v5 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = [NSString stringWithFormat:@"%@", v3];
  v9 = [NSString stringWithFormat:@"%@%@", a1[9], v3];
  LODWORD(v11) = 0;
  v10 = [v4 internalAddShare:v3 server:v5 password:v6 service:v7 displayName:v8 storageName:v9 existingTags:a1[10] flags:v11];
}

void sub_100036A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

uint64_t sub_100036A88(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100036C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_100036E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_100037018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1000371E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1000373E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

uint64_t sub_100037670(uint64_t a1, int a2)
{
  if (a2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10005A540(a1);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_10003777C(uint64_t a1, int a2)
{
  if (a2 && a2 != 96 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10005A5BC(a1);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_1000378F8(uint64_t a1, int a2)
{
  if (a2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10005A638(a1);
  }

  free(*(a1 + 40));
  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_100037A78(uint64_t a1, int a2)
{
  if (a2 || (v3 = *(a1 + 40), v3[3]))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005A6B4(a1);
    }

    v3 = *(a1 + 40);
  }

  free(v3);
  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_100037BEC(uint64_t a1, int a2)
{
  if (a2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10005A730(a1);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_100037E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100037E44(void *a1, int a2)
{
  *(a1[7] + 12) = 0;
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  if (!a2 && ((v7 = a1[7], *v7 != 268) ? (v8 = *v7 == 0) : (v8 = 1), v8))
  {
    v9 = a1[5];
    v6 = a1 + 5;
    [smb_subr sendChangeNotify:"sendChangeNotify:Param:CompletionHandler:NotifyHandler:" Param:*(v6 - 1) CompletionHandler:? NotifyHandler:?];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10005A7F0();
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10005A874();
    }

    v6 = a1 + 5;
  }

  return (*(*v6 + 16))();
}

void sub_100037F5C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005A8F8(a1);
    }
  }
}

void sub_10003809C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000380B4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (!v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005AB44();
    }

    v8 = *(*(a1 + 32) + 16);
    goto LABEL_9;
  }

  v5 = malloc_type_malloc(0xF8uLL, 0x10800407AD7242AuLL);
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0u;
  *(v5 + 88) = 0u;
  *(v5 + 104) = 0u;
  *(v5 + 120) = 0u;
  *(v5 + 136) = 0u;
  *(v5 + 152) = 0u;
  *(v5 + 168) = 0u;
  *(v5 + 184) = 0u;
  *(v5 + 200) = 0u;
  *(v5 + 216) = 0u;
  *(v5 + 232) = 0u;
  *v5 = 4;
  *(v5 + 12) = xmmword_10006D570;
  *(v5 + 28) = 0x100000001;
  v6 = a1 + 40;
  *(*(*(a1 + 40) + 8) + 24) = [v4 cmpdAddCreate:v5 withName:0 withStreamName:0];
  if (!*(*(*(a1 + 40) + 8) + 24))
  {
    v9 = objc_alloc_init(SMBFileAllInformation);
    if (v9)
    {
      v10 = malloc_type_malloc(0x470uLL, 0x10000402F070C0BuLL);
      bzero(v10 + 1, 0x46EuLL);
      *v10 = 4609;
      *(*(*v6 + 8) + 24) = [v4 cmpdAddQueryInformation:v10 withStreamName:0 forFileAllInfo:v9 withInputBuffer:0 withOutputBuffer:0];
      if (*(*(*v6 + 8) + 24))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10005AA10(a1 + 40);
        }

        free(v5);
        v11 = v10;
      }

      else
      {
        v13 = malloc_type_malloc(0x40uLL, 0x100004022DBA428uLL);
        *v13 = 0u;
        v13[1] = 0u;
        v13[2] = 0u;
        v13[3] = 0u;
        *(*(*v6 + 8) + 24) = [v4 cmpdAddClose:v13 withFlags:0];
        if (!*(*(*v6 + 8) + 24))
        {
          v19[0] = _NSConcreteStackBlock;
          v19[1] = 3221225472;
          v19[2] = sub_100038458;
          v19[3] = &unk_10008E398;
          v24 = v5;
          v25 = v10;
          v26 = v13;
          v15 = *(a1 + 32);
          v16 = *(a1 + 40);
          v22 = v15;
          v23 = v16;
          v20 = v4;
          v17 = v9;
          v18 = *(a1 + 48);
          v21 = v17;
          v27 = v18;
          [v20 sendCmpdRequest:v19];

          goto LABEL_24;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10005AA88(a1 + 40);
        }

        free(v5);
        free(v10);
        v11 = v13;
      }

      free(v11);
      v14 = *(*(*(a1 + 40) + 8) + 24);
      v12 = *(*(a1 + 32) + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10005AB00();
      }

      free(v5);
      v12 = *(*(a1 + 32) + 16);
    }

    v12();
LABEL_24:

    goto LABEL_25;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10005A998(a1 + 40);
  }

  free(v5);
  v7 = *(*(*(a1 + 40) + 8) + 24);
  v8 = *(*(a1 + 32) + 16);
LABEL_9:
  v8();
LABEL_25:
}

uint64_t sub_100038458(uint64_t a1, int a2)
{
  if (!a2)
  {
    *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) cmpdParseCreate:*(a1 + 64)];
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10005AC34(a1 + 56, (a1 + 64));
      }
    }

    else
    {
      *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) cmpdParseQueryInformation:*(a1 + 72) withStreamName:0 forFileAllInfo:*(a1 + 40) withOutputBuffer:0];
      if (!*(*(*(a1 + 56) + 8) + 24))
      {
        *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) cmpdParseClose:*(a1 + 80) withFlags:0];
        if (*(*(*(a1 + 56) + 8) + 24) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10005AD2C(a1 + 56, (a1 + 80));
        }

        v7 = *(a1 + 40);
        if (v7)
        {
          [v7 attributes];
        }

        v8 = *(a1 + 88);
        v8[1] = 0u;
        v8[2] = 0u;
        *v8 = 0u;
        v8[5] = 0u;
        v8[6] = 0u;
        v8[3] = 0u;
        v8[4] = 0u;
        v8[9] = 0u;
        v8[10] = 0u;
        v8[7] = 0u;
        v8[8] = 0u;
        v8[13] = 0u;
        v8[14] = 0u;
        v8[11] = 0u;
        v8[12] = 0u;
        v4 = *(a1 + 64);
        v9 = *(a1 + 88);
        *(v9 + 232) = v4[29];
        *v9 |= 0x40uLL;
        goto LABEL_12;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10005ACB0(a1 + 56, (a1 + 72));
      }
    }

    v4 = *(a1 + 64);
LABEL_12:
    free(v4);
    free(*(a1 + 72));
    free(*(a1 + 80));
    v5 = *(*(*(a1 + 56) + 8) + 24);
    v3 = *(*(a1 + 48) + 16);
    return v3();
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10005ABBC();
  }

  free(*(a1 + 64));
  free(*(a1 + 72));
  free(*(a1 + 80));
  v3 = *(*(a1 + 48) + 16);
  return v3();
}

void sub_100038860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100038B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100038B60(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (!v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005AFEC();
    }

    v8 = *(*(a1 + 56) + 16);
    goto LABEL_9;
  }

  v5 = malloc_type_malloc(0xF8uLL, 0x10800407AD7242AuLL);
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0u;
  *(v5 + 88) = 0u;
  *(v5 + 104) = 0u;
  *(v5 + 120) = 0u;
  *(v5 + 136) = 0u;
  *(v5 + 152) = 0u;
  *(v5 + 168) = 0u;
  *(v5 + 184) = 0u;
  *(v5 + 200) = 0u;
  *(v5 + 216) = 0u;
  *(v5 + 232) = 0u;
  *v5 = 4;
  *(v5 + 12) = xmmword_10006D580;
  *(v5 + 28) = 0x100000001;
  v6 = a1 + 64;
  *(*(*(a1 + 64) + 8) + 24) = [v4 cmpdAddCreate:v5 withName:*(a1 + 32) withStreamName:0];
  if (!*(*(*(a1 + 64) + 8) + 24))
  {
    v9 = [[NSMutableData alloc] initWithCapacity:1024];
    v10 = v9;
    if (v9)
    {
      [v9 setLength:1024];
      v11 = malloc_type_malloc(0x10uLL, 0x100004094CA146DuLL);
      *(v11 + 2) = 0;
      v11[1] = 0;
      *v11 = 805;
      *(v11 + 2) = 32;
      *(*(*(a1 + 64) + 8) + 24) = [v4 cmpdAddQueryDirectory:v11 onDir:*(a1 + 40) returnDataIn:v10];
      if (*(*(*(a1 + 64) + 8) + 24))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10005AF30();
        }

        free(v5);
        v12 = v11;
      }

      else
      {
        v14 = malloc_type_malloc(0x40uLL, 0x100004022DBA428uLL);
        *v14 = 0u;
        v14[1] = 0u;
        v14[2] = 0u;
        v14[3] = 0u;
        *(*(*v6 + 8) + 24) = [v4 cmpdAddClose:v14 withFlags:0];
        if (!*(*(*v6 + 8) + 24))
        {
          v20[0] = _NSConcreteStackBlock;
          v20[1] = 3221225472;
          v20[2] = sub_100038F24;
          v20[3] = &unk_10008E3E8;
          v26 = v5;
          v27 = v11;
          v28 = v14;
          v16 = *(a1 + 56);
          v17 = *(a1 + 64);
          v24 = v16;
          v25 = v17;
          v21 = v4;
          v18 = v10;
          v19 = *(a1 + 72);
          v22 = v18;
          v29 = v19;
          v23 = *(a1 + 48);
          [v21 sendCmpdRequest:v20];

          goto LABEL_24;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10005AF74(a1 + 64);
        }

        free(v5);
        free(v11);
        v12 = v14;
      }

      free(v12);
      v15 = *(*(*(a1 + 64) + 8) + 24);
      v13 = *(*(a1 + 56) + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10005AF30();
      }

      free(v5);
      v13 = *(*(a1 + 56) + 16);
    }

    v13();
LABEL_24:

    goto LABEL_25;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10005AEB8(a1 + 64);
  }

  free(v5);
  v7 = *(*(*(a1 + 64) + 8) + 24);
  v8 = *(*(a1 + 56) + 16);
LABEL_9:
  v8();
LABEL_25:
}

uint64_t sub_100038F24(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = a2;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005B064();
    }

LABEL_4:
    free(*(a1 + 72));
    free(*(a1 + 80));
    free(*(a1 + 88));
    return (*(*(a1 + 56) + 16))(*(a1 + 56), v3, v4, v5, v6, v7, v8, v9, v21, *(&v21 + 1), v22);
  }

  *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 32) cmpdParseCreate:*(a1 + 72)];
  if (*(*(*(a1 + 64) + 8) + 24))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005B0DC(a1 + 64, (a1 + 72));
    }
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 32) cmpdParseQueryDirectory:*(a1 + 80) returnDataIn:*(a1 + 40)];
    v17 = *(*(*(a1 + 64) + 8) + 24);
    if (v17)
    {
      if (v17 != 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10005B218(a1 + 64, (a1 + 80));
      }
    }

    else
    {
      *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 32) cmpdParseClose:*(a1 + 88) withFlags:0];
      if (!*(*(*(a1 + 64) + 8) + 24))
      {
        v26 = 0;
        v25 = 0u;
        v24 = 0u;
        v23 = [*(a1 + 40) mutableBytes];
        LODWORD(v24) = [*(a1 + 40) length];
        *&v25 = *(a1 + 96);
        v18 = [*(a1 + 48) mp];
        v19 = v18;
        if (v18)
        {
          [v18 shareInfo];
          v20 = *(&v21 + 1);
        }

        else
        {
          v20 = 0;
          v22 = 0;
          v21 = 0u;
        }

        *(&v24 + 1) = v20;

        if (sub_100032BB0(&v23))
        {
          [*(a1 + 48) setMaxAccessAttr:*(*(a1 + 72) + 116)];
          v3 = 0;
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_10005B1D4();
          }

          v3 = 72;
        }

        goto LABEL_4;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10005B158(a1 + 64, (a1 + 88));
      }
    }
  }

  free(*(a1 + 72));
  free(*(a1 + 80));
  free(*(a1 + 88));
  return (*(*(a1 + 56) + 16))(*(a1 + 56), *(*(*(a1 + 64) + 8) + 24), v11, v12, v13, v14, v15, v16);
}

void sub_1000393FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100039424(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (!v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005B41C();
    }

    v7 = *(*(a1 + 56) + 16);
    goto LABEL_23;
  }

  v5 = malloc_type_malloc(0xF8uLL, 0x10800407AD7242AuLL);
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0u;
  *(v5 + 88) = 0u;
  *(v5 + 104) = 0u;
  *(v5 + 120) = 0u;
  *(v5 + 136) = 0u;
  *(v5 + 152) = 0u;
  *(v5 + 168) = 0u;
  *(v5 + 184) = 0u;
  *(v5 + 200) = 0u;
  *(v5 + 216) = 0u;
  *(v5 + 232) = 0u;
  *v5 = 4;
  *(v5 + 12) = 0x8000000002;
  *(v5 + 3) = 0x100000007;
  if (*([*(a1 + 32) getSmbFattr] + 30) == 2)
  {
    *(v5 + 5) = 16;
    v6 = 1;
LABEL_9:
    *(v5 + 8) = v6;
    goto LABEL_10;
  }

  *(v5 + 5) = 128;
  if (*([*(a1 + 32) getSmbFattr] + 30) == 5)
  {
    v6 = *(v5 + 8) | 0x200000;
    goto LABEL_9;
  }

LABEL_10:
  v8 = a1 + 64;
  *(*(*(a1 + 64) + 8) + 24) = [v4 cmpdAddCreate:v5 withName:*(a1 + 40) withStreamName:0];
  if (*(*(*(a1 + 64) + 8) + 24))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005B32C(a1 + 64);
    }

    v9 = v5;
  }

  else
  {
    v10 = malloc_type_malloc(0x470uLL, 0x10000402F070C0BuLL);
    bzero(v10 + 2, 0x46EuLL);
    *v10 = 4609;
    *(*(*(a1 + 64) + 8) + 24) = [v4 cmpdAddQueryInformation:v10 withStreamName:0 forFileAllInfo:*(a1 + 48) withInputBuffer:0 withOutputBuffer:0];
    if (*(*(*(a1 + 64) + 8) + 24))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10005B3A4(a1 + 64);
      }

      free(v5);
      v9 = v10;
    }

    else
    {
      v11 = malloc_type_malloc(0x40uLL, 0x100004022DBA428uLL);
      *v11 = 0u;
      v11[1] = 0u;
      v11[2] = 0u;
      v11[3] = 0u;
      *(*(*v8 + 8) + 24) = [v4 cmpdAddClose:v11 withFlags:0];
      if (!*(*(*v8 + 8) + 24))
      {
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_1000397A8;
        v17[3] = &unk_10008E398;
        v22 = v5;
        v23 = v10;
        v24 = v11;
        v13 = *(a1 + 56);
        v14 = *(a1 + 64);
        v20 = v13;
        v21 = v14;
        v18 = v4;
        v15 = *(a1 + 48);
        v16 = *(a1 + 72);
        v19 = v15;
        v25 = v16;
        [v18 sendCmpdRequest:v17];

        goto LABEL_24;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10005B3A4(a1 + 64);
      }

      free(v5);
      free(v10);
      v9 = v11;
    }
  }

  free(v9);
  v12 = *(*(*(a1 + 64) + 8) + 24);
  v7 = *(*(a1 + 56) + 16);
LABEL_23:
  v7();
LABEL_24:
}

uint64_t sub_1000397A8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005B494();
    }

    free(*(a1 + 64));
    free(*(a1 + 72));
    free(*(a1 + 80));
    v3 = *(*(a1 + 48) + 16);
    return v3();
  }

  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) cmpdParseCreate:*(a1 + 64)];
  if (*(*(*(a1 + 56) + 8) + 24))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005B50C(a1 + 56, (a1 + 64));
    }

LABEL_11:
    free(*(a1 + 64));
    free(*(a1 + 72));
    free(*(a1 + 80));
    v4 = *(*(*(a1 + 56) + 8) + 24);
    v3 = *(*(a1 + 48) + 16);
    return v3();
  }

  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) cmpdParseQueryInformation:*(a1 + 72) withStreamName:0 forFileAllInfo:*(a1 + 40) withOutputBuffer:0];
  if (*(*(*(a1 + 56) + 8) + 24))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005B588(a1 + 56, (a1 + 72));
    }

    goto LABEL_11;
  }

  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) cmpdParseClose:*(a1 + 80) withFlags:0];
  if (*(*(*(a1 + 56) + 8) + 24) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10005B604(a1 + 56, (a1 + 80));
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    [v6 attributes];
  }

  v7 = *(a1 + 88);
  v7[1] = 0u;
  v7[2] = 0u;
  *v7 = 0u;
  v7[5] = 0u;
  v7[6] = 0u;
  v7[3] = 0u;
  v7[4] = 0u;
  v7[9] = 0u;
  v7[10] = 0u;
  v7[7] = 0u;
  v7[8] = 0u;
  v7[13] = 0u;
  v7[14] = 0u;
  v7[11] = 0u;
  v7[12] = 0u;
  v8 = *(a1 + 64);
  v9 = *(a1 + 88);
  *(v9 + 232) = v8[29];
  *v9 |= 0x40uLL;
  free(v8);
  free(*(a1 + 72));
  free(*(a1 + 80));
  v3 = *(*(a1 + 48) + 16);
  return v3();
}

void sub_100039DC4(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (!v5 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10005B718(a1);
  }

  free(*(a1 + 40));
  *(*(a1 + 48) + 16) = a2;
  (*(*(a1 + 32) + 16))();
}

void sub_10003A07C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (!v5 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10005B824(a1);
  }

  free(*(a1 + 40));
  *(*(a1 + 48) + 16) = a2;
  (*(*(a1 + 32) + 16))();
}

void sub_10003A368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003A38C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (!v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005BA98();
    }

    v8 = *(*(a1 + 56) + 16);
    goto LABEL_12;
  }

  v5 = malloc_type_malloc(0xF8uLL, 0x10800407AD7242AuLL);
  v6 = v5;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 232) = 0u;
  *(v5 + 216) = 0u;
  *(v5 + 200) = 0u;
  *(v5 + 184) = 0u;
  *(v5 + 168) = 0u;
  *(v5 + 152) = 0u;
  *(v5 + 136) = 0u;
  *(v5 + 120) = 0u;
  *(v5 + 104) = 0u;
  *(v5 + 88) = 0u;
  *(v5 + 72) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 40) = 0u;
  *v5 = 5;
  *(v5 + 12) = 0x8000000002;
  *(v5 + 3) = 0x200000007;
  if (*(a1 + 80) == 2)
  {
    *(v5 + 8) = 1;
    v7 = 16;
  }

  else
  {
    v7 = 128;
  }

  *(v5 + 5) = v7;
  v9 = a1 + 64;
  *(*(*(a1 + 64) + 8) + 24) = [v4 cmpdAddCreate:v5 withName:*(a1 + 32) withStreamName:0];
  if (!*(*(*(a1 + 64) + 8) + 24))
  {
    v11 = objc_alloc_init(SMBFileAllInformation);
    if (v11)
    {
      v12 = malloc_type_malloc(0x470uLL, 0x10000402F070C0BuLL);
      bzero(v12 + 1, 0x46EuLL);
      *v12 = 4609;
      *(*(*v9 + 8) + 24) = [v4 cmpdAddQueryInformation:v12 withStreamName:0 forFileAllInfo:v11 withInputBuffer:0 withOutputBuffer:0];
      if (*(*(*v9 + 8) + 24))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10005B9DC(a1 + 64);
        }

        free(v6);
        v13 = v12;
      }

      else
      {
        v15 = malloc_type_malloc(0x40uLL, 0x100004022DBA428uLL);
        *v15 = 0u;
        v15[1] = 0u;
        v15[2] = 0u;
        v15[3] = 0u;
        *(*(*v9 + 8) + 24) = [v4 cmpdAddClose:v15 withFlags:0];
        if (!*(*(*v9 + 8) + 24))
        {
          v22[0] = _NSConcreteStackBlock;
          v22[1] = 3221225472;
          v22[2] = sub_10003A7A0;
          v22[3] = &unk_10008E4B0;
          v27 = v6;
          v28 = v12;
          v29 = v15;
          *&v17 = *(a1 + 56);
          *(&v17 + 1) = *(a1 + 64);
          v21 = v17;
          v23 = v4;
          v24 = v11;
          v18 = *(a1 + 40);
          v19 = *(a1 + 48);
          *&v20 = v18;
          *(&v20 + 1) = v19;
          v26 = v21;
          v25 = v20;
          v31 = *(a1 + 80);
          v30 = *(a1 + 72);
          [v23 sendCmpdRequest:v22];

          goto LABEL_27;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10005B9DC(a1 + 64);
        }

        free(v6);
        free(v12);
        v13 = v15;
      }

      free(v13);
      v16 = *(*(*(a1 + 64) + 8) + 24);
      v14 = *(*(a1 + 56) + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10005BA54();
      }

      free(v6);
      v14 = *(*(a1 + 56) + 16);
    }

    v14();
LABEL_27:

    goto LABEL_28;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10005B964(a1 + 64);
  }

  free(v6);
  v10 = *(*(*(a1 + 64) + 8) + 24);
  v8 = *(*(a1 + 56) + 16);
LABEL_12:
  v8();
LABEL_28:
}

void sub_10003A7A0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005BB10();
    }

    free(*(a1 + 80));
    free(*(a1 + 88));
    free(*(a1 + 96));
    v3 = *(*(a1 + 64) + 16);
LABEL_9:
    v3();
    return;
  }

  *(*(*(a1 + 72) + 8) + 24) = [*(a1 + 32) cmpdParseCreate:*(a1 + 80)];
  if (*(*(*(a1 + 72) + 8) + 24))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005BB88(a1 + 72, (a1 + 80));
    }

    free(*(a1 + 80));
    free(*(a1 + 88));
    free(*(a1 + 96));
    v4 = *(*(*(a1 + 72) + 8) + 24);
    v3 = *(*(a1 + 64) + 16);
    goto LABEL_9;
  }

  v5 = [*(a1 + 32) cmpdParseQueryInformation:*(a1 + 88) withStreamName:0 forFileAllInfo:*(a1 + 40) withOutputBuffer:0];
  v6 = [*(a1 + 32) cmpdParseClose:*(a1 + 96) withFlags:0];
  if (!v5)
  {
    if (v6 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005BC80(a1, (a1 + 96));
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v10 = *(a1 + 40);
    if (v10)
    {
      [v10 attributes];
    }

    v11 = *(a1 + 104);
    v12 = v30;
    v13 = v32;
    v11[1] = v31;
    v11[2] = v13;
    *v11 = v12;
    v14 = v33;
    v15 = v34;
    v16 = v36;
    v11[5] = v35;
    v11[6] = v16;
    v11[3] = v14;
    v11[4] = v15;
    v17 = v37;
    v18 = v38;
    v19 = v40;
    v11[9] = v39;
    v11[10] = v19;
    v11[7] = v17;
    v11[8] = v18;
    v20 = v41;
    v21 = v42;
    v22 = v44;
    v11[13] = v43;
    v11[14] = v22;
    v11[11] = v20;
    v11[12] = v21;
    v23 = *(a1 + 80);
    v24 = *(a1 + 104);
    *(v24 + 232) = v23[29];
    *v24 |= 0x40uLL;
    free(v23);
    free(*(a1 + 88));
    free(*(a1 + 96));
    v3 = *(*(a1 + 64) + 16);
    goto LABEL_9;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10005BC04((a1 + 88));
  }

  free(*(a1 + 80));
  free(*(a1 + 88));
  free(*(a1 + 96));
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 112);
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10003AAF0;
  v25[3] = &unk_10008E488;
  v26 = v7;
  v27 = *(a1 + 56);
  v28 = *(a1 + 64);
  v29 = v5;
  [smb_subr deleteNameInParent:v26 DeleteName:v8 FileType:v9 CompletionHandler:v25];
}

uint64_t sub_10003AAF0(uint64_t a1, int a2)
{
  if (a2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10005BD38();
  }

  v3 = *(a1 + 56);
  return (*(*(a1 + 48) + 16))();
}

uint64_t sub_10003ADC4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005BE70();
    }
  }

  else
  {
    v3 = *(a1 + 40);
    *(v3 + 120) = 2;
    *v3 |= 1uLL;
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_10003AE38(uint64_t a1, int a2)
{
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005BEE8(a1);
    }

    v3 = [*(a1 + 32) mp];
    v4 = [v3 pd];
    v5 = [*(a1 + 32) mp];
    v6 = [v5 shareID];
    v7 = *(a1 + 32);
    v8 = *(a1 + 48);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10003AFB8;
    v11[3] = &unk_10008CC40;
    v12 = v7;
    v13 = *(a1 + 40);
    [smb_subr queryNodeAttr:v4 ShareID:v6 QueryNode:v12 QueryStream:0 FAttrs:v8 CompletionHandler:v11];
  }

  else
  {
    v9 = *(a1 + 40);
    v10 = *(*(a1 + 40) + 16);

    v10();
  }
}

uint64_t sub_10003AFB8(uint64_t a1, int a2)
{
  if (a2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10005BF7C(a1);
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_10003B2EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003B314(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = malloc_type_malloc(0xF8uLL, 0x10800407AD7242AuLL);
    *(v5 + 24) = 0u;
    *(v5 + 8) = 0u;
    *(v5 + 40) = 0u;
    *(v5 + 56) = 0u;
    *(v5 + 72) = 0u;
    *(v5 + 88) = 0u;
    *(v5 + 104) = 0u;
    *(v5 + 120) = 0u;
    *(v5 + 136) = 0u;
    *(v5 + 152) = 0u;
    *(v5 + 168) = 0u;
    *(v5 + 184) = 0u;
    *(v5 + 200) = 0u;
    *(v5 + 216) = 0u;
    *(v5 + 232) = 0u;
    *v5 = 1;
    *(v5 + 7) = 2;
    *(v5 + 12) = xmmword_10006D590;
    v6 = a1 + 72;
    *(*(*(a1 + 72) + 8) + 24) = [v4 cmpdAddCreate:v5 withName:*(a1 + 32) withStreamName:0];
    if (*(*(*(a1 + 72) + 8) + 24))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10005C0E8(a1 + 72);
      }

      v7 = v5;
    }

    else
    {
      v9 = malloc_type_malloc(0x60uLL, 0x1000040718B784FuLL);
      *v9 = 0u;
      v9[1] = 0u;
      v9[2] = 0u;
      v9[3] = 0u;
      v9[4] = 0u;
      v9[5] = 0u;
      *(v9 + 1) = 589988;
      *(*(*(a1 + 72) + 8) + 24) = [v4 cmpdAddIoctl:v9 setReparsePoint:*(a1 + 40)];
      if (*(*(*(a1 + 72) + 8) + 24))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10005C160(a1 + 72);
        }

        free(v5);
        v7 = v9;
      }

      else
      {
        v10 = malloc_type_malloc(0x40uLL, 0x100004022DBA428uLL);
        *v10 = 0u;
        v10[1] = 0u;
        v10[2] = 0u;
        v10[3] = 0u;
        *(*(*v6 + 8) + 24) = [v4 cmpdAddClose:v10 withFlags:0];
        if (!*(*(*v6 + 8) + 24))
        {
          v16[0] = _NSConcreteStackBlock;
          v16[1] = 3221225472;
          v16[2] = sub_10003B66C;
          v16[3] = &unk_10008E550;
          v23 = v5;
          v24 = v9;
          v25 = v10;
          v12 = *(a1 + 64);
          v13 = *(a1 + 72);
          v21 = v12;
          v22 = v13;
          v17 = v4;
          v18 = *(a1 + 48);
          v19 = *(a1 + 56);
          v14 = *(a1 + 32);
          v15 = *(a1 + 80);
          v20 = v14;
          v26 = v15;
          [v17 sendCmpdRequest:v16];

          goto LABEL_19;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10005C1D8(a1 + 72);
        }

        free(v5);
        free(v9);
        v7 = v10;
      }
    }

    free(v7);
    v11 = *(*(*(a1 + 72) + 8) + 24);
    v8 = *(*(a1 + 64) + 16);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005C250();
    }

    v8 = *(*(a1 + 64) + 16);
  }

  v8();
LABEL_19:
}

void sub_10003B66C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005C2C8();
    }

LABEL_7:
    free(*(a1 + 80));
    free(*(a1 + 88));
    free(*(a1 + 96));
    v4 = *(*(*(a1 + 72) + 8) + 24);
    (*(*(a1 + 64) + 16))();
    return;
  }

  v3 = a1 + 72;
  *(*(*(a1 + 72) + 8) + 24) = [*(a1 + 32) cmpdParseCreate:*(a1 + 80)];
  if (*(*(*(a1 + 72) + 8) + 24))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005C340(a1 + 72, (a1 + 80));
    }

    goto LABEL_7;
  }

  *(*(*(a1 + 72) + 8) + 24) = [*(a1 + 32) cmpdParseIoctl:*(a1 + 88) reparsePoint:0 sendInputBuffer:0 rcvOutputBuffer:0];
  if (!*(*(*(a1 + 72) + 8) + 24))
  {
    *(*(*(a1 + 72) + 8) + 24) = [*(a1 + 32) cmpdParseClose:*(a1 + 96) withFlags:0];
    if (*(*(*(a1 + 72) + 8) + 24) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005C49C(a1 + 72, (a1 + 96));
    }

    *(*(*(a1 + 72) + 8) + 24) = [*(a1 + 32) resetCmpdRequest];
    if (*(*(*(a1 + 72) + 8) + 24))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10005C518(a1 + 72);
      }

      goto LABEL_7;
    }

    v13 = *(a1 + 80);
    *(v13 + 240) = 0;
    *(v13 + 208) = 0u;
    *(v13 + 224) = 0u;
    *(v13 + 176) = 0u;
    *(v13 + 192) = 0u;
    *(v13 + 144) = 0u;
    *(v13 + 160) = 0u;
    *(v13 + 112) = 0u;
    *(v13 + 128) = 0u;
    *(v13 + 80) = 0u;
    *(v13 + 96) = 0u;
    *(v13 + 48) = 0u;
    *(v13 + 64) = 0u;
    *(v13 + 16) = 0u;
    *(v13 + 32) = 0u;
    *v13 = 0u;
    v14 = *(a1 + 80);
    *v14 = 1;
    *(v14 + 12) = xmmword_10006D5A0;
    v15 = *(v14 + 32) | 0x200000;
    *(v14 + 28) = 1;
    *(v14 + 32) = v15;
    v16 = *(a1 + 56);
    *(*(*(a1 + 72) + 8) + 24) = [*(a1 + 32) cmpdAddCreate:? withName:? withStreamName:?];
    if (*(*(*(a1 + 72) + 8) + 24))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10005C0E8(a1 + 72);
      }

      goto LABEL_7;
    }

    v17 = objc_alloc_init(SMBFileAllInformation);
    if (v17)
    {
      v18 = malloc_type_malloc(0x470uLL, 0x10000402F070C0BuLL);
      bzero(v18 + 1, 0x46EuLL);
      *v18 = 4609;
      *(*(*(a1 + 72) + 8) + 24) = [*(a1 + 32) cmpdAddQueryInformation:v18 withStreamName:0 forFileAllInfo:v17 withInputBuffer:0 withOutputBuffer:0];
      if (*(*(*(a1 + 72) + 8) + 24))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10005C590(a1 + 72);
        }
      }

      else
      {
        v20 = *(a1 + 96);
        v20[2] = 0u;
        v20[3] = 0u;
        *v20 = 0u;
        v20[1] = 0u;
        *(*(*(a1 + 72) + 8) + 24) = [*(a1 + 32) cmpdAddClose:*(a1 + 96) withFlags:0];
        if (!*(*(*(a1 + 72) + 8) + 24))
        {
          v22 = *(a1 + 32);
          v28[0] = _NSConcreteStackBlock;
          v28[1] = 3221225472;
          v28[2] = sub_10003BCC0;
          v28[3] = &unk_10008E528;
          v33 = *(a1 + 80);
          v23 = *(a1 + 96);
          v34 = v18;
          v35 = v23;
          v24 = *(a1 + 64);
          v25 = *(a1 + 72);
          v31 = v24;
          v32 = v25;
          v29 = *(a1 + 32);
          v26 = v17;
          v27 = *(a1 + 104);
          v30 = v26;
          v36 = v27;
          [v22 sendCmpdRequest:v28];

          goto LABEL_37;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10005C1D8(a1 + 72);
        }
      }

      free(*(a1 + 80));
      free(*(a1 + 88));
      free(v18);
      free(*(a1 + 96));
      v21 = *(*(*(a1 + 72) + 8) + 24);
      v19 = *(*(a1 + 64) + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10005C608();
      }

      free(*(a1 + 80));
      free(*(a1 + 88));
      free(*(a1 + 96));
      v19 = *(*(a1 + 64) + 16);
    }

    v19();
LABEL_37:

    return;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10005C3BC(a1, a1 + 72, a1 + 88);
  }

  if (*(*(*v3 + 8) + 24) == 13 || *(*(a1 + 88) + 12) == -1073741727)
  {
    v5 = [*(a1 + 40) mp];
    v6 = [v5 shareType];

    if (v6 != 7)
    {
      *(*(*v3 + 8) + 24) = 45;
    }
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_10003BC44;
  v37[3] = &unk_10008E500;
  v9 = v7;
  v10 = *(a1 + 48);
  v40 = *(a1 + 80);
  v41 = *(a1 + 96);
  *&v11 = *(a1 + 64);
  *(&v11 + 1) = *(a1 + 72);
  *&v12 = v9;
  *(&v12 + 1) = v10;
  v38 = v12;
  v39 = v11;
  [smb_subr deleteNameInParent:v9 DeleteName:v8 FileType:1 CompletionHandler:v37];
}

uint64_t sub_10003BC44(uint64_t a1, int a2)
{
  if (a2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10005C64C();
  }

  free(*(a1 + 64));
  free(*(a1 + 72));
  free(*(a1 + 80));
  v3 = *(*(*(a1 + 56) + 8) + 24);
  return (*(*(a1 + 48) + 16))();
}

uint64_t sub_10003BCC0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005C6F4();
    }
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) cmpdParseCreate:*(a1 + 64)];
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10005C340(a1 + 56, (a1 + 64));
      }
    }

    else
    {
      *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) cmpdParseQueryInformation:*(a1 + 80) withStreamName:0 forFileAllInfo:*(a1 + 40) withOutputBuffer:0];
      if (*(*(*(a1 + 56) + 8) + 24))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10005C76C(a1 + 56, (a1 + 80));
        }
      }

      else
      {
        *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) cmpdParseClose:*(a1 + 88) withFlags:0];
        if (*(*(*(a1 + 56) + 8) + 24) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10005C49C(a1 + 56, (a1 + 88));
        }

        v3 = *(a1 + 40);
        if (v3)
        {
          [v3 attributes];
        }

        v4 = *(a1 + 96);
        v4[1] = 0u;
        v4[2] = 0u;
        *v4 = 0u;
        v4[5] = 0u;
        v4[6] = 0u;
        v4[3] = 0u;
        v4[4] = 0u;
        v4[9] = 0u;
        v4[10] = 0u;
        v4[7] = 0u;
        v4[8] = 0u;
        v4[13] = 0u;
        v4[14] = 0u;
        v4[11] = 0u;
        v4[12] = 0u;
      }
    }
  }

  free(*(a1 + 64));
  free(*(a1 + 72));
  free(*(a1 + 80));
  free(*(a1 + 88));
  v5 = *(*(*(a1 + 56) + 8) + 24);
  return (*(*(a1 + 48) + 16))();
}

void sub_10003C15C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003C180(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (!v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005C9E4();
    }

    v8 = *(*(a1 + 40) + 16);
    goto LABEL_9;
  }

  v5 = malloc_type_malloc(0xF8uLL, 0x10800407AD7242AuLL);
  *(v5 + 24) = 0u;
  *(v5 + 8) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0u;
  *(v5 + 88) = 0u;
  *(v5 + 104) = 0u;
  *(v5 + 120) = 0u;
  *(v5 + 136) = 0u;
  *(v5 + 152) = 0u;
  *(v5 + 168) = 0u;
  *(v5 + 184) = 0u;
  *(v5 + 200) = 0u;
  *(v5 + 216) = 0u;
  *(v5 + 232) = 0u;
  *v5 = 1;
  *(v5 + 7) = 2;
  *(v5 + 12) = xmmword_10006D5B0;
  v6 = a1 + 48;
  *(*(*(a1 + 48) + 8) + 24) = [v4 cmpdAddCreate:v5 withName:*(a1 + 32) withStreamName:0];
  if (!*(*(*(a1 + 48) + 8) + 24))
  {
    v9 = malloc_type_malloc(0x20uLL, 0x1010040BA4D407CuLL);
    *v9 = 0u;
    v9[1] = 0u;
    *(v9 + 4) = 1067;
    v10 = [[NSData alloc] initWithBytes:*(a1 + 56) length:1067];
    free(*(a1 + 56));
    *(*(*(a1 + 48) + 8) + 24) = [v4 cmpdAddWrite:v9 fromBuffer:v10];
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10005C8B0(a1 + 48);
      }

      free(v5);
      free(v9);
      v11 = *(*(*(a1 + 48) + 8) + 24);
      (*(*(a1 + 40) + 16))();
      goto LABEL_29;
    }

    v12 = objc_alloc_init(SMBFileAllInformation);
    if (v12)
    {
      v13 = malloc_type_malloc(0x470uLL, 0x10000402F070C0BuLL);
      bzero(v13 + 1, 0x46EuLL);
      *v13 = 4609;
      *(*(*v6 + 8) + 24) = [v4 cmpdAddQueryInformation:v13 withStreamName:0 forFileAllInfo:v12 withInputBuffer:0 withOutputBuffer:0];
      if (*(*(*v6 + 8) + 24))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10005C928(a1 + 48);
        }

        free(v5);
        free(v9);
        v14 = v13;
      }

      else
      {
        v16 = malloc_type_malloc(0x40uLL, 0x100004022DBA428uLL);
        *v16 = 0u;
        v16[1] = 0u;
        v16[2] = 0u;
        v16[3] = 0u;
        *(*(*v6 + 8) + 24) = [v4 cmpdAddClose:v16 withFlags:0];
        if (!*(*(*v6 + 8) + 24))
        {
          v22[0] = _NSConcreteStackBlock;
          v22[1] = 3221225472;
          v22[2] = sub_10003C610;
          v22[3] = &unk_10008E528;
          v27 = v5;
          v28 = v9;
          v29 = v13;
          v30 = v16;
          v18 = *(a1 + 40);
          v19 = *(a1 + 48);
          v25 = v18;
          v26 = v19;
          v23 = v4;
          v20 = v12;
          v21 = *(a1 + 64);
          v24 = v20;
          v31 = v21;
          [v23 sendCmpdRequest:v22];

          goto LABEL_28;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10005C928(a1 + 48);
        }

        free(v5);
        free(v9);
        free(v13);
        v14 = v16;
      }

      free(v14);
      v17 = *(*(*(a1 + 48) + 8) + 24);
      v15 = *(*(a1 + 40) + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10005C9A0();
      }

      free(v5);
      free(v9);
      v15 = *(*(a1 + 40) + 16);
    }

    v15();
LABEL_28:

LABEL_29:
    goto LABEL_30;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10005C8B0(a1 + 48);
  }

  free(v5);
  v7 = *(*(*(a1 + 48) + 8) + 24);
  v8 = *(*(a1 + 40) + 16);
LABEL_9:
  v8();
LABEL_30:
}

uint64_t sub_10003C610(uint64_t a1, int a2)
{
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005CA5C();
    }
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) cmpdParseCreate:*(a1 + 64)];
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10005CAD4(a1 + 56, (a1 + 64));
      }
    }

    else
    {
      *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) cmpdParseWrite:*(a1 + 72)];
      if (*(*(*(a1 + 56) + 8) + 24))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10005CB50(a1 + 56, (a1 + 72));
        }
      }

      else
      {
        *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) cmpdParseQueryInformation:*(a1 + 80) withStreamName:0 forFileAllInfo:*(a1 + 40) withOutputBuffer:0];
        if (*(*(*(a1 + 56) + 8) + 24))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_10005CBCC(a1 + 56, (a1 + 80));
          }
        }

        else
        {
          *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) cmpdParseClose:*(a1 + 88) withFlags:0];
          if (*(*(*(a1 + 56) + 8) + 24) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_10005CC48(a1 + 56, (a1 + 88));
          }

          v3 = *(a1 + 40);
          if (v3)
          {
            [v3 attributes];
          }

          v4 = *(a1 + 96);
          v4[1] = 0u;
          v4[2] = 0u;
          *v4 = 0u;
          v4[5] = 0u;
          v4[6] = 0u;
          v4[3] = 0u;
          v4[4] = 0u;
          v4[9] = 0u;
          v4[10] = 0u;
          v4[7] = 0u;
          v4[8] = 0u;
          v4[13] = 0u;
          v4[14] = 0u;
          v4[11] = 0u;
          v4[12] = 0u;
        }
      }
    }
  }

  free(*(a1 + 64));
  free(*(a1 + 72));
  free(*(a1 + 80));
  free(*(a1 + 88));
  v5 = *(*(*(a1 + 56) + 8) + 24);
  return (*(*(a1 + 48) + 16))();
}

void sub_10003CCA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003CCD0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = malloc_type_malloc(0xF8uLL, 0x10800407AD7242AuLL);
    *(v5 + 8) = 0u;
    *(v5 + 24) = 0u;
    *(v5 + 40) = 0u;
    *(v5 + 56) = 0u;
    *(v5 + 72) = 0u;
    *(v5 + 88) = 0u;
    *(v5 + 104) = 0u;
    *(v5 + 120) = 0u;
    *(v5 + 136) = 0u;
    *(v5 + 152) = 0u;
    *(v5 + 168) = 0u;
    *(v5 + 184) = 0u;
    *(v5 + 200) = 0u;
    *(v5 + 216) = 0u;
    *(v5 + 232) = 0u;
    *v5 = 1;
    *(v5 + 12) = xmmword_10006D5C0;
    *(v5 + 28) = 0x20000000000001;
    v6 = a1 + 56;
    *(*(*(a1 + 56) + 8) + 24) = [v4 cmpdAddCreate:v5 withName:*(a1 + 32) withStreamName:0];
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10005CE08(a1 + 56);
      }

      v7 = v5;
    }

    else
    {
      v9 = malloc_type_malloc(0x60uLL, 0x1000040718B784FuLL);
      *v9 = 0u;
      v9[1] = 0u;
      v9[2] = 0u;
      v9[3] = 0u;
      v9[4] = 0u;
      v9[5] = 0u;
      *(v9 + 1) = 589992;
      *(*(*(a1 + 56) + 8) + 24) = [v4 cmpdAddIoctl:v9 getReparsePoint:*(a1 + 40)];
      if (*(*(*(a1 + 56) + 8) + 24))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10005CE80(a1 + 56);
        }

        free(v5);
        v7 = v9;
      }

      else
      {
        v10 = malloc_type_malloc(0x40uLL, 0x100004022DBA428uLL);
        *v10 = 0u;
        v10[1] = 0u;
        v10[2] = 0u;
        v10[3] = 0u;
        *(*(*v6 + 8) + 24) = [v4 cmpdAddClose:v10 withFlags:0];
        if (!*(*(*v6 + 8) + 24))
        {
          v14[0] = _NSConcreteStackBlock;
          v14[1] = 3221225472;
          v14[2] = sub_10003D000;
          v14[3] = &unk_10008E5F0;
          v19 = v5;
          v20 = v9;
          v21 = v10;
          v12 = *(a1 + 48);
          v13 = *(a1 + 56);
          v17 = v12;
          v18 = v13;
          v15 = v4;
          v16 = *(a1 + 40);
          [v15 sendCmpdRequest:v14];

          goto LABEL_19;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10005CEF8(a1 + 56);
        }

        free(v5);
        free(v9);
        v7 = v10;
      }
    }

    free(v7);
    v11 = *(*(*(a1 + 56) + 8) + 24);
    v8 = *(*(a1 + 48) + 16);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005CF70();
    }

    v8 = *(*(a1 + 48) + 16);
  }

  v8();
LABEL_19:
}

uint64_t sub_10003D000(uint64_t a1, int a2)
{
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005CFE8();
    }

LABEL_10:
    free(*(a1 + 64));
    free(*(a1 + 72));
    free(*(a1 + 80));
    v3 = *(*(*(a1 + 56) + 8) + 24);
    v4 = *(*(a1 + 48) + 16);
    return v4();
  }

  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) cmpdParseCreate:*(a1 + 64)];
  if (*(*(*(a1 + 56) + 8) + 24))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005D060(a1 + 56, (a1 + 64));
    }

    goto LABEL_10;
  }

  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) cmpdParseIoctl:*(a1 + 72) reparsePoint:*(a1 + 40) sendInputBuffer:0 rcvOutputBuffer:0];
  if (*(*(*(a1 + 56) + 8) + 24))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005D0DC(a1 + 56, (a1 + 72));
    }

    goto LABEL_10;
  }

  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) cmpdParseClose:*(a1 + 80) withFlags:0];
  if (*(*(*(a1 + 56) + 8) + 24) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10005D158(a1 + 56, (a1 + 80));
  }

  free(*(a1 + 64));
  free(*(a1 + 72));
  free(*(a1 + 80));
  v6 = *(*(*(a1 + 56) + 8) + 24);
  v7 = *(a1 + 40);
  v4 = *(*(a1 + 48) + 16);
  return v4();
}

void sub_10003D424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003D448(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = malloc_type_malloc(0xF8uLL, 0x10800407AD7242AuLL);
    *v5 = 0u;
    v5[1] = 0u;
    v5[2] = 0u;
    v5[3] = 0u;
    v5[4] = 0u;
    v5[5] = 0u;
    v5[6] = 0u;
    v5[7] = 0u;
    v5[8] = 0u;
    v5[9] = 0u;
    v5[10] = 0u;
    v5[11] = 0u;
    v5[12] = 0u;
    v5[13] = 0u;
    v5[14] = 0u;
    *(v5 + 30) = 0;
    *(v5 + 7) = 1;
    *(v5 + 12) = xmmword_10006D5D0;
    v6 = a1 + 56;
    *(*(*(a1 + 56) + 8) + 24) = [v4 cmpdAddCreate:v5 withName:*(a1 + 32) withStreamName:0];
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10005D264(a1 + 56);
      }

      v7 = v5;
    }

    else
    {
      v9 = malloc_type_malloc(0x20uLL, 0x1010040BA4D407CuLL);
      *v9 = 0u;
      v9[1] = 0u;
      *(v9 + 4) = 1067;
      *(v9 + 1) = [*(a1 + 40) bytes];
      *(*(*(a1 + 56) + 8) + 24) = [v4 cmpdAddRead:v9 intoBuffer:*(a1 + 40)];
      if (*(*(*(a1 + 56) + 8) + 24))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10005D2DC(a1 + 56);
        }

        free(v5);
        v7 = v9;
      }

      else
      {
        v10 = malloc_type_malloc(0x40uLL, 0x100004022DBA428uLL);
        *v10 = 0u;
        v10[1] = 0u;
        v10[2] = 0u;
        v10[3] = 0u;
        *(*(*v6 + 8) + 24) = [v4 cmpdAddClose:v10 withFlags:0];
        if (!*(*(*v6 + 8) + 24))
        {
          v14[0] = _NSConcreteStackBlock;
          v14[1] = 3221225472;
          v14[2] = sub_10003D758;
          v14[3] = &unk_10008E5F0;
          v19 = v5;
          v20 = v9;
          v21 = v10;
          v12 = *(a1 + 48);
          v13 = *(a1 + 56);
          v17 = v12;
          v18 = v13;
          v15 = v4;
          v16 = *(a1 + 40);
          [v15 sendCmpdRequest:v14];

          goto LABEL_19;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10005D354(a1 + 56);
        }

        free(v5);
        free(v9);
        v7 = v10;
      }
    }

    free(v7);
    v11 = *(*(*(a1 + 56) + 8) + 24);
    v8 = *(*(a1 + 48) + 16);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005D3CC();
    }

    v8 = *(*(a1 + 48) + 16);
  }

  v8();
LABEL_19:
}

void sub_10003D758(uint64_t a1, int a2)
{
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005D444();
    }

LABEL_4:
    free(*(a1 + 64));
    free(*(a1 + 72));
    free(*(a1 + 80));
    v3 = *(*(a1 + 48) + 16);
LABEL_12:
    v3();
    return;
  }

  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) cmpdParseCreate:*(a1 + 64)];
  if (*(*(*(a1 + 56) + 8) + 24))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005D4BC(a1 + 56, (a1 + 64));
    }

LABEL_11:
    free(*(a1 + 64));
    free(*(a1 + 72));
    free(*(a1 + 80));
    v4 = *(*(*(a1 + 56) + 8) + 24);
    v3 = *(*(a1 + 48) + 16);
    goto LABEL_12;
  }

  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) cmpdParseRead:*(a1 + 72) intoBuffer:*(a1 + 40)];
  if (*(*(*(a1 + 56) + 8) + 24))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005D538(a1 + 56, (a1 + 72));
    }

    goto LABEL_11;
  }

  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) cmpdParseClose:*(a1 + 80) withFlags:0];
  if (*(*(*(a1 + 56) + 8) + 24) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10005D5B4(a1 + 56, (a1 + 80));
  }

  if (*(*(a1 + 72) + 28) <= 0x42Au)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005D6A8((a1 + 72));
    }

    goto LABEL_4;
  }

  v5 = [*(a1 + 40) bytes];
  v6 = *(*(a1 + 72) + 28);
  v9 = 0;
  v7 = sub_1000332CC(v5, v6, &v9);
  v8 = v9;
  if (v7 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10005D630();
  }

  free(*(a1 + 64));
  free(*(a1 + 72));
  free(*(a1 + 80));
  (*(*(a1 + 48) + 16))();
}

void sub_10003DC90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003DCB4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = malloc_type_malloc(0xF8uLL, 0x10800407AD7242AuLL);
    *v5 = 0u;
    v5[1] = 0u;
    v5[2] = 0u;
    v5[3] = 0u;
    v5[4] = 0u;
    v5[5] = 0u;
    v5[6] = 0u;
    v5[7] = 0u;
    v5[8] = 0u;
    v5[9] = 0u;
    v5[10] = 0u;
    v5[11] = 0u;
    v5[12] = 0u;
    v5[13] = 0u;
    v5[14] = 0u;
    *(v5 + 30) = 0;
    *(v5 + 7) = 1;
    *(v5 + 12) = xmmword_10006D5D0;
    v6 = a1 + 56;
    *(*(*(a1 + 56) + 8) + 24) = [v4 cmpdAddCreate:v5 withName:*(a1 + 32) withStreamName:0];
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10005D7B4(a1 + 56);
      }

      v7 = v5;
    }

    else
    {
      v9 = malloc_type_malloc(0x20uLL, 0x1010040BA4D407CuLL);
      *v9 = 0u;
      v9[1] = 0u;
      *(v9 + 4) = 1067;
      *(v9 + 1) = [*(a1 + 40) bytes];
      *(*(*(a1 + 56) + 8) + 24) = [v4 cmpdAddRead:v9 intoBuffer:*(a1 + 40)];
      if (*(*(*(a1 + 56) + 8) + 24))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10005D82C(a1 + 56);
        }

        free(v5);
        v7 = v9;
      }

      else
      {
        v10 = malloc_type_malloc(0x40uLL, 0x100004022DBA428uLL);
        *v10 = 0u;
        v10[1] = 0u;
        v10[2] = 0u;
        v10[3] = 0u;
        *(*(*v6 + 8) + 24) = [v4 cmpdAddClose:v10 withFlags:0];
        if (!*(*(*v6 + 8) + 24))
        {
          v14[0] = _NSConcreteStackBlock;
          v14[1] = 3221225472;
          v14[2] = sub_10003DFC8;
          v14[3] = &unk_10008E5F0;
          v19 = v5;
          v20 = v9;
          v21 = v10;
          v12 = *(a1 + 48);
          v13 = *(a1 + 56);
          v17 = v12;
          v18 = v13;
          v15 = v4;
          v16 = *(a1 + 40);
          [v15 sendCmpdRequest:v14];

          goto LABEL_19;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10005D8A4(a1 + 56);
        }

        free(v5);
        free(v9);
        v7 = v10;
      }
    }

    free(v7);
    v11 = *(*(*(a1 + 56) + 8) + 24);
    v8 = *(*(a1 + 48) + 16);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005D91C();
    }

    v8 = *(*(a1 + 48) + 16);
  }

  v8();
LABEL_19:
}

void sub_10003DFC8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005D994();
    }

LABEL_4:
    free(*(a1 + 64));
    free(*(a1 + 72));
    free(*(a1 + 80));
    v3 = *(*(a1 + 48) + 16);
LABEL_12:
    v3();
    return;
  }

  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) cmpdParseCreate:*(a1 + 64)];
  if (*(*(*(a1 + 56) + 8) + 24))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005DA0C(a1 + 56, (a1 + 64));
    }

LABEL_11:
    free(*(a1 + 64));
    free(*(a1 + 72));
    free(*(a1 + 80));
    v4 = *(*(*(a1 + 56) + 8) + 24);
    v3 = *(*(a1 + 48) + 16);
    goto LABEL_12;
  }

  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) cmpdParseRead:*(a1 + 72) intoBuffer:*(a1 + 40)];
  if (*(*(*(a1 + 56) + 8) + 24))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005DA88(a1 + 56, (a1 + 72));
    }

    goto LABEL_11;
  }

  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) cmpdParseClose:*(a1 + 80) withFlags:0];
  if (*(*(*(a1 + 56) + 8) + 24) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10005DB04(a1 + 56, (a1 + 80));
  }

  if (*(*(a1 + 72) + 28) <= 0x42Au)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005DB80((a1 + 72));
    }

    goto LABEL_4;
  }

  v5 = [*(a1 + 40) bytes];
  v6 = *(*(a1 + 72) + 28);
  v8 = 0;
  sub_1000332CC(v5, v6, &v8);
  v7 = v8;
  (*(*(a1 + 48) + 16))();
}

void sub_10003E490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003E4B4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (!v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005DDB0();
    }

    v7 = *(*(a1 + 56) + 16);
    goto LABEL_23;
  }

  v5 = malloc_type_malloc(0xF8uLL, 0x10800407AD7242AuLL);
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 2) = 0u;
  *(v5 + 3) = 0u;
  *(v5 + 4) = 0u;
  *(v5 + 5) = 0u;
  *(v5 + 6) = 0u;
  *(v5 + 7) = 0u;
  *(v5 + 8) = 0u;
  *(v5 + 9) = 0u;
  *(v5 + 10) = 0u;
  *(v5 + 11) = 0u;
  *(v5 + 12) = 0u;
  *(v5 + 13) = 0u;
  *(v5 + 14) = 0u;
  *(v5 + 30) = 0;
  *(v5 + 12) = 0x10008000000002;
  *(v5 + 3) = 0x100000007;
  if (*([*(a1 + 32) getSmbFattr] + 30) == 2)
  {
    *(v5 + 5) = 16;
    v6 = 1;
LABEL_9:
    *(v5 + 8) = v6;
    goto LABEL_10;
  }

  *(v5 + 5) = 128;
  if (*([*(a1 + 32) getSmbFattr] + 30) == 5)
  {
    v6 = *(v5 + 8) | 0x200000;
    goto LABEL_9;
  }

LABEL_10:
  v8 = a1 + 64;
  *(*(*(a1 + 64) + 8) + 24) = [v4 cmpdAddCreate:v5 withName:*(a1 + 40) withStreamName:0];
  if (*(*(*(a1 + 64) + 8) + 24))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005DC48(a1 + 64);
    }

    v9 = v5;
  }

  else
  {
    v10 = malloc_type_malloc(0x470uLL, 0x10000402F070C0BuLL);
    bzero(v10 + 2, 0x46EuLL);
    *v10 = 5633;
    *(*(*(a1 + 64) + 8) + 24) = [v4 cmpdAddQueryInformation:v10 withStreamName:0 forFileAllInfo:0 withInputBuffer:0 withOutputBuffer:*(a1 + 48)];
    if (*(*(*(a1 + 64) + 8) + 24))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10005DCC0(a1 + 64);
      }

      free(v5);
      v9 = v10;
    }

    else
    {
      v11 = malloc_type_malloc(0x40uLL, 0x100004022DBA428uLL);
      *v11 = 0u;
      v11[1] = 0u;
      v11[2] = 0u;
      v11[3] = 0u;
      *(*(*v8 + 8) + 24) = [v4 cmpdAddClose:v11 withFlags:0];
      if (!*(*(*v8 + 8) + 24))
      {
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_10003E814;
        v15[3] = &unk_10008E5F0;
        v20 = v5;
        v21 = v10;
        v22 = v11;
        v13 = *(a1 + 56);
        v14 = *(a1 + 64);
        v18 = v13;
        v19 = v14;
        v16 = v4;
        v17 = *(a1 + 48);
        [v16 sendCmpdRequest:v15];

        goto LABEL_24;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10005DD38(a1 + 64);
      }

      free(v5);
      free(v10);
      v9 = v11;
    }
  }

  free(v9);
  v12 = *(*(*(a1 + 64) + 8) + 24);
  v7 = *(*(a1 + 56) + 16);
LABEL_23:
  v7();
LABEL_24:
}

uint64_t sub_10003E814(uint64_t a1, int a2)
{
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005DE28();
    }

    free(*(a1 + 64));
    free(*(a1 + 72));
    free(*(a1 + 80));
    v3 = *(*(a1 + 48) + 16);
    return v3();
  }

  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) cmpdParseCreate:*(a1 + 64)];
  if (*(*(*(a1 + 56) + 8) + 24))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005DEA0(a1 + 56, (a1 + 64));
    }

LABEL_11:
    free(*(a1 + 64));
    free(*(a1 + 72));
    free(*(a1 + 80));
    v4 = *(*(*(a1 + 56) + 8) + 24);
    v3 = *(*(a1 + 48) + 16);
    return v3();
  }

  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) cmpdParseQueryInformation:*(a1 + 72) withStreamName:0 forFileAllInfo:0 withOutputBuffer:*(a1 + 40)];
  if (*(*(*(a1 + 56) + 8) + 24))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005DF1C(a1 + 56, (a1 + 72));
    }

    goto LABEL_11;
  }

  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) cmpdParseClose:*(a1 + 80) withFlags:0];
  if (*(*(*(a1 + 56) + 8) + 24) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10005DF98(a1 + 56, (a1 + 80));
  }

  free(*(a1 + 64));
  free(*(a1 + 72));
  free(*(a1 + 80));
  v6 = *(*(*(a1 + 56) + 8) + 24);
  v7 = *(a1 + 40);
  v3 = *(*(a1 + 48) + 16);
  return v3();
}

void sub_10003EC94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_10003ECD0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (!v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005E1C8();
    }

    v7 = *(*(a1 + 56) + 16);
    goto LABEL_23;
  }

  v5 = malloc_type_malloc(0xF8uLL, 0x10800407AD7242AuLL);
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 2) = 0u;
  *(v5 + 3) = 0u;
  *(v5 + 4) = 0u;
  *(v5 + 5) = 0u;
  *(v5 + 6) = 0u;
  *(v5 + 7) = 0u;
  *(v5 + 8) = 0u;
  *(v5 + 9) = 0u;
  *(v5 + 10) = 0u;
  *(v5 + 11) = 0u;
  *(v5 + 12) = 0u;
  *(v5 + 13) = 0u;
  *(v5 + 14) = 0u;
  *(v5 + 30) = 0;
  *(v5 + 12) = 0x10008000000002;
  *(v5 + 3) = 0x100000007;
  if (*([*(a1 + 32) getSmbFattr] + 30) == 2)
  {
    *(v5 + 5) = 16;
    v6 = 1;
LABEL_9:
    *(v5 + 8) = v6;
    goto LABEL_10;
  }

  *(v5 + 5) = 128;
  if (*([*(a1 + 32) getSmbFattr] + 30) == 5)
  {
    v6 = *(v5 + 8) | 0x200000;
    goto LABEL_9;
  }

LABEL_10:
  v8 = a1 + 64;
  *(*(*(a1 + 64) + 8) + 24) = [v4 cmpdAddCreate:v5 withName:*(a1 + 40) withStreamName:0];
  if (*(*(*(a1 + 64) + 8) + 24))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005E060(a1 + 64);
    }

    v9 = v5;
  }

  else
  {
    v10 = malloc_type_malloc(0x470uLL, 0x10000402F070C0BuLL);
    bzero(v10 + 2, 0x46EuLL);
    *v10 = 5633;
    *(*(*(a1 + 64) + 8) + 24) = [v4 cmpdAddQueryInformation:v10 withStreamName:*(a1 + 48) forFileAllInfo:0 withInputBuffer:0 withOutputBuffer:0];
    if (*(*(*(a1 + 64) + 8) + 24))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10005E0D8(a1 + 64);
      }

      free(v5);
      v9 = v10;
    }

    else
    {
      v11 = malloc_type_malloc(0x40uLL, 0x100004022DBA428uLL);
      *v11 = 0u;
      v11[1] = 0u;
      v11[2] = 0u;
      v11[3] = 0u;
      *(*(*v8 + 8) + 24) = [v4 cmpdAddClose:v11 withFlags:0];
      if (!*(*(*v8 + 8) + 24))
      {
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_10003F03C;
        v15[3] = &unk_10008E668;
        v21 = v5;
        v22 = v10;
        v23 = v11;
        v13 = *(a1 + 56);
        v14 = *(a1 + 64);
        v18 = v13;
        v19 = v14;
        v16 = v4;
        v17 = *(a1 + 48);
        v20 = *(a1 + 72);
        [v16 sendCmpdRequest:v15];

        goto LABEL_24;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10005E150(a1 + 64);
      }

      free(v5);
      free(v10);
      v9 = v11;
    }
  }

  free(v9);
  v12 = *(*(*(a1 + 64) + 8) + 24);
  v7 = *(*(a1 + 56) + 16);
LABEL_23:
  v7();
LABEL_24:
}

uint64_t sub_10003F03C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005E240();
    }

    free(*(a1 + 80));
    free(*(a1 + 88));
    free(*(a1 + 96));
    v3 = *(*(a1 + 48) + 16);
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) cmpdParseCreate:*(a1 + 80)];
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10005E2B8(a1 + 56, (a1 + 80));
      }

      free(*(a1 + 80));
      free(*(a1 + 88));
      free(*(a1 + 96));
      v4 = *(*(*(a1 + 56) + 8) + 24);
      v3 = *(*(a1 + 48) + 16);
    }

    else
    {
      *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) cmpdParseQueryInformation:*(a1 + 88) withStreamName:*(a1 + 40) forFileAllInfo:0 withOutputBuffer:0];
      v6 = *(a1 + 88);
      *(*(*(a1 + 64) + 8) + 24) = *(v6 + 1088);
      *(*(*(a1 + 72) + 8) + 24) = *(v6 + 1108);
      if (*(*(*(a1 + 56) + 8) + 24))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10005E334(a1 + 56, (a1 + 88));
        }

        free(*(a1 + 80));
        free(*(a1 + 88));
        free(*(a1 + 96));
        v7 = *(*(*(a1 + 56) + 8) + 24);
        v8 = *(*(*(a1 + 64) + 8) + 24);
        v9 = *(*(*(a1 + 72) + 8) + 24);
        v3 = *(*(a1 + 48) + 16);
      }

      else
      {
        *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) cmpdParseClose:*(a1 + 96) withFlags:0];
        if (*(*(*(a1 + 56) + 8) + 24) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10005E3B0(a1 + 56, (a1 + 96));
        }

        free(*(a1 + 80));
        free(*(a1 + 88));
        free(*(a1 + 96));
        v10 = *(*(*(a1 + 64) + 8) + 24);
        v11 = *(*(*(a1 + 72) + 8) + 24);
        v3 = *(*(a1 + 48) + 16);
      }
    }
  }

  return v3();
}

void sub_10003F6A8(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = *(a1 + 64);
    v7 = v6[13];
    free(v6);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10003F9EC;
    v24[3] = &unk_10008E708;
    v8 = v5;
    v25 = v8;
    v26 = *(a1 + 32);
    v27 = *(a1 + 40);
    v28 = *(a1 + 56);
    v9 = objc_retainBlock(v24);
    if ([*(a1 + 48) length] >= v7)
    {
      v18 = malloc_type_malloc(0x20uLL, 0x1010040BA4D407CuLL);
      v10 = *(a1 + 32);
      v11 = *(a1 + 48);
      v12 = *(a1 + 72);
      v13 = [v11 length];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10003FB74;
      v19[3] = &unk_10008E708;
      v20 = *(a1 + 48);
      v21 = *(a1 + 32);
      v22 = *(a1 + 40);
      v23 = v9;
      LODWORD(v17) = 0;
      [smb_subr readNodeStreamChunk:v10 FileNode:v8 ReadBuffer:v11 MaxReadXferLen:v12 StreamOffset:0 rdparamPtr:v18 result:v17 bytesRead:0 bytesRemain:v13 pass:0 reply:v19];
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        v14 = [*(a1 + 32) name];
        v15 = *(a1 + 40);
        v16 = [*(a1 + 48) length];
        *buf = 138413058;
        v30 = v14;
        v31 = 2112;
        v32 = v15;
        v33 = 2048;
        v34 = v16;
        v35 = 2048;
        v36 = v7;
        _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "readNodeStreamChunks: np: %@, stream: %@, readBufLen: %lu, streamEOF: %llu error: ERANGE", buf, 0x2Au);
      }

      (v9[2])(v9, 34, v7);
    }
  }

  else
  {
    if (a2 != 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005E4BC();
    }

    free(*(a1 + 64));
    (*(*(a1 + 56) + 16))();
  }
}

void sub_10003F9EC(uint64_t a1, int a2, uint64_t a3)
{
  v6 = malloc_type_malloc(0x40uLL, 0x100004022DBA428uLL);
  *v6 = 0u;
  v6[1] = 0u;
  v6[2] = 0u;
  v6[3] = 0u;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003FB00;
  v8[3] = &unk_10008E6E0;
  v7 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v12 = v6;
  v14 = a2;
  v11 = *(a1 + 56);
  v13 = a3;
  [smb_subr sendClose:v7 Param:v6 GetPostAttrs:0 CompletionHandler:v8];
}

uint64_t sub_10003FB00(uint64_t a1, int a2)
{
  if (a2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10005E564();
  }

  free(*(a1 + 56));
  v3 = *(a1 + 64);
  *(a1 + 72);
  return (*(*(a1 + 48) + 16))();
}

uint64_t sub_10003FB74(uint64_t a1, int a2, id a3)
{
  if ([*(a1 + 32) length] != a3 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v7 = [*(a1 + 40) name];
    v8 = *(a1 + 48);
    v9 = [*(a1 + 32) length];
    v10 = 138413314;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v9;
    v18 = 1024;
    v19 = a2;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "readNodeStreamChunks: np: %@, stream: %@, read: %lu, bufLen: %lu error: %d", &v10, 0x30u);
  }

  return (*(*(a1 + 56) + 16))();
}

void sub_10003FE08(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10005E60C(a1);
  }

  v2 = *(a1 + 72);
  if (v2 && !*(a1 + 112))
  {
    if (v2 >= *(a1 + 104))
    {
      v5 = *(a1 + 104);
    }

    else
    {
      v5 = *(a1 + 72);
    }

    v6 = [*(a1 + 40) bytes] + *(a1 + 108);
    v7 = *(a1 + 80);
    *v7 = 0u;
    v7[1] = 0u;
    *(*(a1 + 80) + 8) = v6;
    v8 = *(a1 + 80);
    *(v8 + 16) = v5;
    *v8 = *(a1 + 108);
    v9 = *(a1 + 48);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10003FFD4;
    v19[3] = &unk_10008E758;
    v10 = *(a1 + 32);
    v11 = *(a1 + 80);
    v22 = *(a1 + 88);
    v23 = v5;
    v28 = *(a1 + 108);
    v12 = *(a1 + 96);
    v24 = v11;
    v25 = v12;
    v13 = *(a1 + 48);
    v14 = *(a1 + 40);
    v29 = *(a1 + 104);
    v15 = *(a1 + 56);
    v26 = *(a1 + 64);
    v16 = v15;
    *&v17 = v14;
    *(&v17 + 1) = v16;
    *&v18 = v10;
    *(&v18 + 1) = v13;
    v20 = v18;
    v21 = v17;
    v27 = *(a1 + 72);
    [smb_subr sendRead:v9 Param:v8 ReadBuf:0 CompletionHandler:v19];
  }

  else
  {
    free(*(a1 + 80));
    v3 = *(a1 + 112);
    v4 = *(a1 + 64);
    (*(*(a1 + 56) + 16))();
  }
}

id sub_10003FFD4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005E6A8();
    }

    LODWORD(v6) = a2;
    return [*(a1 + 88) readNodeStreamChunk:*(a1 + 32) FileNode:*(a1 + 40) ReadBuffer:*(a1 + 48) MaxReadXferLen:*(a1 + 116) StreamOffset:*(a1 + 112) rdparamPtr:*(a1 + 80) result:v6 bytesRead:*(a1 + 96) bytesRemain:0 pass:*(a1 + 64) reply:*(a1 + 56)];
  }

  else
  {
    v5 = *(a1 + 80);
    LODWORD(v6) = 0;
    return [*(a1 + 88) readNodeStreamChunk:*(a1 + 32) FileNode:*(a1 + 40) ReadBuffer:*(a1 + 48) MaxReadXferLen:*(a1 + 116) StreamOffset:(*(v5 + 28) + *(a1 + 112)) rdparamPtr:v5 result:v6 bytesRead:*(a1 + 96) + *(v5 + 28) bytesRemain:*(a1 + 104) - *(v5 + 28) pass:*(a1 + 64) reply:*(a1 + 56)];
  }
}

void sub_1000402F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004031C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = malloc_type_malloc(0xF8uLL, 0x10800407AD7242AuLL);
    *v5 = 0u;
    v5[1] = 0u;
    v5[2] = 0u;
    v5[3] = 0u;
    v5[4] = 0u;
    v5[5] = 0u;
    v5[6] = 0u;
    v5[7] = 0u;
    v5[8] = 0u;
    v5[9] = 0u;
    v5[10] = 0u;
    v5[11] = 0u;
    v5[12] = 0u;
    v5[13] = 0u;
    v5[14] = 0u;
    *(v5 + 30) = 0;
    *(v5 + 7) = 1;
    *(v5 + 12) = xmmword_10006D5E0;
    if (*([*(a1 + 32) getSmbFattr] + 30) == 5)
    {
      *(v5 + 8) |= 0x200000u;
    }

    v6 = a1 + 72;
    *(*(*(a1 + 72) + 8) + 24) = [v4 cmpdAddCreate:v5 withName:*(a1 + 40) withStreamName:*(a1 + 48)];
    if (*(*(*(a1 + 72) + 8) + 24))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10005E798(a1 + 72);
      }

      v7 = v5;
    }

    else
    {
      v9 = malloc_type_malloc(0x20uLL, 0x1010040BA4D407CuLL);
      *v9 = 0u;
      v9[1] = 0u;
      *(v9 + 1) = [*(a1 + 56) bytes];
      *(v9 + 4) = [*(a1 + 56) length];
      *(*(*(a1 + 72) + 8) + 24) = [v4 cmpdAddRead:v9 intoBuffer:*(a1 + 56)];
      if (*(*(*(a1 + 72) + 8) + 24))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10005E810(a1 + 72);
        }

        free(v5);
        v7 = v9;
      }

      else
      {
        v10 = malloc_type_malloc(0x40uLL, 0x100004022DBA428uLL);
        *v10 = 0u;
        v10[1] = 0u;
        v10[2] = 0u;
        v10[3] = 0u;
        *(*(*v6 + 8) + 24) = [v4 cmpdAddClose:v10 withFlags:0];
        if (!*(*(*v6 + 8) + 24))
        {
          v14[0] = _NSConcreteStackBlock;
          v14[1] = 3221225472;
          v14[2] = sub_10004064C;
          v14[3] = &unk_10008E5F0;
          v19 = v5;
          v20 = v9;
          v21 = v10;
          v12 = *(a1 + 64);
          v13 = *(a1 + 72);
          v17 = v12;
          v18 = v13;
          v15 = v4;
          v16 = *(a1 + 56);
          [v15 sendCmpdRequest:v14];

          goto LABEL_21;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10005E888(a1 + 72);
        }

        free(v5);
        free(v9);
        v7 = v10;
      }
    }

    free(v7);
    v11 = *(*(*(a1 + 72) + 8) + 24);
    v8 = *(*(a1 + 64) + 16);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005E900();
    }

    v8 = *(*(a1 + 64) + 16);
  }

  v8();
LABEL_21:
}

uint64_t sub_10004064C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005E978();
    }

LABEL_11:
    free(*(a1 + 64));
    free(*(a1 + 72));
    free(*(a1 + 80));
    v6 = *(*(a1 + 48) + 16);
    return v6();
  }

  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) cmpdParseCreate:*(a1 + 64)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 24);
  if (v4)
  {
    if (v4 == 2)
    {
      *(v3 + 24) = 93;
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005EB80(a1 + 56, (a1 + 64));
    }

LABEL_17:
    free(*(a1 + 64));
    free(*(a1 + 72));
    free(*(a1 + 80));
    v7 = *(*(*(a1 + 56) + 8) + 24);
    v6 = *(*(a1 + 48) + 16);
    return v6();
  }

  v5 = *(*(a1 + 64) + 104);
  if ([*(a1 + 40) length] < v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10005EAE8((a1 + 40));
    }

    goto LABEL_11;
  }

  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) cmpdParseRead:*(a1 + 72) intoBuffer:*(a1 + 40)];
  if (*(*(*(a1 + 56) + 8) + 24))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005E9F0(a1 + 56, (a1 + 72));
    }

    goto LABEL_17;
  }

  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) cmpdParseClose:*(a1 + 80) withFlags:0];
  if (*(*(*(a1 + 56) + 8) + 24) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10005EA6C(a1 + 56, (a1 + 80));
  }

  [*(a1 + 40) setLength:*(*(a1 + 72) + 28)];
  free(*(a1 + 64));
  free(*(a1 + 72));
  free(*(a1 + 80));
  v6 = *(*(a1 + 48) + 16);
  return v6();
}

void sub_100040D48(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    free(*(a1 + 64));
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100040F98;
    v21[3] = &unk_10008E7F8;
    v6 = v5;
    v22 = v6;
    v23 = *(a1 + 32);
    v24 = *(a1 + 40);
    v25 = *(a1 + 56);
    v7 = objc_retainBlock(v21);
    v15 = malloc_type_malloc(0x20uLL, 0x1010040BA4D407CuLL);
    v8 = *(a1 + 72);
    v9 = *(a1 + 32);
    v10 = *(a1 + 48);
    v11 = *(a1 + 80);
    v12 = [v10 length];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100041114;
    v16[3] = &unk_10008E708;
    v17 = *(a1 + 48);
    v18 = *(a1 + 32);
    v19 = *(a1 + 40);
    v20 = v7;
    v13 = v7;
    LODWORD(v14) = 0;
    [v8 writeNodeStreamChunk:v9 FileNode:v6 WriteBuffer:v10 MaxWriteXferLen:v11 StreamOffset:0 wrparamPtr:v15 result:v14 bytesWritten:0 bytesRemain:v12 pass:0 reply:v16];
  }

  else
  {
    if (a2 != 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005ED0C();
    }

    free(*(a1 + 64));
    (*(*(a1 + 56) + 16))();
  }
}

void sub_100040F98(uint64_t a1, int a2)
{
  v4 = malloc_type_malloc(0x40uLL, 0x100004022DBA428uLL);
  *v4 = 0u;
  v4[1] = 0u;
  v4[2] = 0u;
  v4[3] = 0u;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000410A4;
  v6[3] = &unk_10008E7D0;
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = v4;
  v11 = a2;
  v9 = *(a1 + 56);
  [smb_subr sendClose:v5 Param:v4 GetPostAttrs:0 CompletionHandler:v6];
}

uint64_t sub_1000410A4(uint64_t a1, int a2)
{
  if (a2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10005EDB4();
  }

  free(*(a1 + 56));
  *(a1 + 64);
  return (*(*(a1 + 48) + 16))();
}

uint64_t sub_100041114(uint64_t a1, int a2, id a3)
{
  if ([*(a1 + 32) length] != a3 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v7 = [*(a1 + 40) name];
    v8 = *(a1 + 48);
    v9 = [*(a1 + 32) length];
    v10 = 138413314;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v9;
    v18 = 1024;
    v19 = a2;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "writeNodeStreamChunks: np: %@, stream: %@, written: %lu, bufLen: %lu error: %d", &v10, 0x30u);
  }

  return (*(*(a1 + 56) + 16))();
}

void sub_1000413A4(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10005EE5C(a1);
  }

  v2 = *(a1 + 72);
  if (v2 && !*(a1 + 112))
  {
    if (v2 >= *(a1 + 104))
    {
      v5 = *(a1 + 104);
    }

    else
    {
      v5 = *(a1 + 72);
    }

    v6 = [*(a1 + 40) bytes] + *(a1 + 64);
    v7 = [NSData dataWithBytesNoCopy:v6 length:v5 freeWhenDone:0];
    v8 = *(a1 + 80);
    *v8 = 0u;
    v8[1] = 0u;
    *(*(a1 + 80) + 8) = v6;
    v9 = *(a1 + 80);
    *(v9 + 16) = v5;
    *v9 = *(a1 + 108);
    v10 = *(a1 + 48);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100041594;
    v20[3] = &unk_10008E758;
    v11 = *(a1 + 32);
    v12 = *(a1 + 80);
    v23 = *(a1 + 88);
    v24 = v5;
    v29 = *(a1 + 108);
    v13 = *(a1 + 96);
    v25 = v12;
    v26 = v13;
    v14 = *(a1 + 48);
    v15 = *(a1 + 40);
    v30 = *(a1 + 104);
    v16 = *(a1 + 56);
    v27 = *(a1 + 64);
    v17 = v16;
    *&v18 = v15;
    *(&v18 + 1) = v17;
    *&v19 = v11;
    *(&v19 + 1) = v14;
    v21 = v19;
    v22 = v18;
    v28 = *(a1 + 72);
    [smb_subr sendWrite:v10 Param:v9 WriteBuf:v7 CompletionHandler:v20];
  }

  else
  {
    free(*(a1 + 80));
    v3 = *(a1 + 112);
    v4 = *(a1 + 64);
    (*(*(a1 + 56) + 16))();
  }
}

id sub_100041594(uint64_t a1, int a2)
{
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005EEF8();
    }

    LODWORD(v6) = a2;
    return [*(a1 + 88) writeNodeStreamChunk:*(a1 + 32) FileNode:*(a1 + 40) WriteBuffer:*(a1 + 48) MaxWriteXferLen:*(a1 + 116) StreamOffset:*(a1 + 112) wrparamPtr:*(a1 + 80) result:v6 bytesWritten:*(a1 + 96) bytesRemain:0 pass:*(a1 + 64) reply:*(a1 + 56)];
  }

  else
  {
    v5 = *(a1 + 80);
    LODWORD(v6) = 0;
    return [*(a1 + 88) writeNodeStreamChunk:*(a1 + 32) FileNode:*(a1 + 40) WriteBuffer:*(a1 + 48) MaxWriteXferLen:*(a1 + 116) StreamOffset:(*(v5 + 28) + *(a1 + 112)) wrparamPtr:v5 result:v6 bytesWritten:*(a1 + 96) + *(v5 + 28) bytesRemain:*(a1 + 104) - *(v5 + 28) pass:*(a1 + 64) + 1 reply:*(a1 + 56)];
  }
}

void sub_1000418C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000418EC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = malloc_type_malloc(0xF8uLL, 0x10800407AD7242AuLL);
    *v5 = 0u;
    *(v5 + 1) = 0u;
    *(v5 + 2) = 0u;
    *(v5 + 3) = 0u;
    *(v5 + 4) = 0u;
    *(v5 + 5) = 0u;
    *(v5 + 6) = 0u;
    *(v5 + 7) = 0u;
    *(v5 + 8) = 0u;
    *(v5 + 9) = 0u;
    *(v5 + 10) = 0u;
    *(v5 + 11) = 0u;
    *(v5 + 12) = 0u;
    *(v5 + 13) = 0u;
    *(v5 + 14) = 0u;
    *(v5 + 30) = 0;
    *(v5 + 12) = 0x200000002;
    *(v5 + 5) = 128;
    if (*([*(a1 + 32) getSmbFattr] + 30) == 5)
    {
      *(v5 + 8) |= 0x200000u;
    }

    v6 = *(a1 + 80);
    if (v6 >= 3)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10005EFE8((a1 + 80));
      }

      v9 = *(*(a1 + 64) + 16);
    }

    else
    {
      *(v5 + 7) = dword_10006D600[v6];
      v7 = a1 + 72;
      *(*(*(a1 + 72) + 8) + 24) = [v4 cmpdAddCreate:v5 withName:*(a1 + 40) withStreamName:*(a1 + 48)];
      if (*(*(*(a1 + 72) + 8) + 24))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10005F064(a1 + 72);
        }

        v8 = v5;
      }

      else
      {
        v10 = malloc_type_malloc(0x20uLL, 0x1010040BA4D407CuLL);
        *v10 = 0u;
        v10[1] = 0u;
        *(v10 + 1) = [*(a1 + 56) bytes];
        *(v10 + 4) = [*(a1 + 56) length];
        *v10 = 0;
        *(*(*(a1 + 72) + 8) + 24) = [v4 cmpdAddWrite:v10 fromBuffer:*(a1 + 56)];
        if (*(*(*(a1 + 72) + 8) + 24))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_10005F0DC(a1 + 72);
          }

          free(v5);
          v8 = v10;
        }

        else
        {
          v11 = malloc_type_malloc(0x40uLL, 0x100004022DBA428uLL);
          *v11 = 0u;
          v11[1] = 0u;
          v11[2] = 0u;
          v11[3] = 0u;
          *(*(*v7 + 8) + 24) = [v4 cmpdAddClose:v11 withFlags:0];
          if (!*(*(*v7 + 8) + 24))
          {
            v15[0] = _NSConcreteStackBlock;
            v15[1] = 3221225472;
            v15[2] = sub_100041C50;
            v15[3] = &unk_10008E848;
            v19 = v5;
            v20 = v10;
            v21 = v11;
            v13 = *(a1 + 64);
            v14 = *(a1 + 72);
            v17 = v13;
            v18 = v14;
            v16 = v4;
            [v16 sendCmpdRequest:v15];

            goto LABEL_25;
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_10005F154(a1 + 72);
          }

          free(v5);
          free(v10);
          v8 = v11;
        }
      }

      free(v8);
      v12 = *(*(*(a1 + 72) + 8) + 24);
      v9 = *(*(a1 + 64) + 16);
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005F1CC();
    }

    v9 = *(*(a1 + 64) + 16);
  }

  v9();
LABEL_25:
}

uint64_t sub_100041C50(uint64_t a1, int a2)
{
  if (!a2)
  {
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) cmpdParseCreate:*(a1 + 56)];
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 24);
    if (v5)
    {
      if (v5 == 2)
      {
        *(v4 + 24) = 93;
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10005F3B4(a1 + 48, (a1 + 56));
      }
    }

    else
    {
      *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) cmpdParseWrite:*(a1 + 64)];
      if (!*(*(*(a1 + 48) + 8) + 24))
      {
        *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) cmpdParseClose:*(a1 + 72) withFlags:0];
        if (*(*(*(a1 + 48) + 8) + 24) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10005F338(a1 + 48, (a1 + 72));
        }

        goto LABEL_4;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10005F2BC(a1 + 48, (a1 + 64));
      }
    }

    free(*(a1 + 56));
    free(*(a1 + 64));
    free(*(a1 + 72));
    v6 = *(*(*(a1 + 48) + 8) + 24);
    v3 = *(*(a1 + 40) + 16);
    return v3();
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10005F244();
  }

LABEL_4:
  free(*(a1 + 56));
  free(*(a1 + 64));
  free(*(a1 + 72));
  v3 = *(*(a1 + 40) + 16);
  return v3();
}

void sub_100042080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000420A4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = malloc_type_malloc(0xF8uLL, 0x10800407AD7242AuLL);
    *v5 = 0u;
    *(v5 + 1) = 0u;
    *(v5 + 2) = 0u;
    *(v5 + 3) = 0u;
    *(v5 + 4) = 0u;
    *(v5 + 5) = 0u;
    *(v5 + 6) = 0u;
    *(v5 + 7) = 0u;
    *(v5 + 8) = 0u;
    *(v5 + 9) = 0u;
    *(v5 + 10) = 0u;
    *(v5 + 11) = 0u;
    *(v5 + 12) = 0u;
    *(v5 + 13) = 0u;
    *(v5 + 14) = 0u;
    *(v5 + 30) = 0;
    *(v5 + 12) = 0x11000000000002;
    *(v5 + 5) = 128;
    *(v5 + 7) = 1;
    if (*([*(a1 + 32) getSmbFattr] + 30) == 5)
    {
      *(v5 + 8) |= 0x200000u;
    }

    v6 = a1 + 64;
    *(*(*(a1 + 64) + 8) + 24) = [v4 cmpdAddCreate:v5 withName:*(a1 + 40) withStreamName:*(a1 + 48)];
    if (*(*(*(a1 + 64) + 8) + 24))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10005F47C(a1 + 64);
      }

      v7 = v5;
    }

    else
    {
      v9 = malloc_type_malloc(0x58uLL, 0x1000040DCA60672uLL);
      *v9 = 0u;
      v9[1] = 0u;
      v9[2] = 0u;
      v9[3] = 0u;
      v9[4] = 0u;
      *(v9 + 10) = 0;
      *(v9 + 2) = 3329;
      *(v9 + 4) = 1;
      *(*(*v6 + 8) + 24) = [v4 cmpdAddSetInformation:v9 withInputBuffer:0 withRenameTarget:0];
      if (*(*(*v6 + 8) + 24))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10005F4F4((a1 + 32), (a1 + 48), a1 + 64);
        }

        free(v5);
        v7 = v9;
      }

      else
      {
        v10 = malloc_type_malloc(0x40uLL, 0x100004022DBA428uLL);
        *v10 = 0u;
        v10[1] = 0u;
        v10[2] = 0u;
        v10[3] = 0u;
        *(*(*v6 + 8) + 24) = [v4 cmpdAddClose:v10 withFlags:0];
        if (!*(*(*v6 + 8) + 24))
        {
          v14[0] = _NSConcreteStackBlock;
          v14[1] = 3221225472;
          v14[2] = sub_1000423DC;
          v14[3] = &unk_10008E848;
          v18 = v5;
          v19 = v9;
          v20 = v10;
          v12 = *(a1 + 56);
          v13 = *(a1 + 64);
          v16 = v12;
          v17 = v13;
          v15 = v4;
          [v15 sendCmpdRequest:v14];

          goto LABEL_21;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10005F5AC(a1 + 64);
        }

        free(v5);
        free(v9);
        v7 = v10;
      }
    }

    free(v7);
    v11 = *(*(*(a1 + 64) + 8) + 24);
    v8 = *(*(a1 + 56) + 16);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005F624();
    }

    v8 = *(*(a1 + 56) + 16);
  }

  v8();
LABEL_21:
}

uint64_t sub_1000423DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) cmpdParseCreate:*(a1 + 56)];
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 24);
    if (v5)
    {
      if (v5 == 2)
      {
        *(v4 + 24) = 93;
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10005F80C(a1 + 48, (a1 + 56));
      }
    }

    else
    {
      *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) cmpdParseSetInformation:*(a1 + 64)];
      if (!*(*(*(a1 + 48) + 8) + 24))
      {
        *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) cmpdParseClose:*(a1 + 72) withFlags:0];
        if (*(*(*(a1 + 48) + 8) + 24) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10005F790(a1 + 48, (a1 + 72));
        }

        goto LABEL_4;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10005F714(a1 + 48, (a1 + 64));
      }
    }

    free(*(a1 + 56));
    free(*(a1 + 64));
    free(*(a1 + 72));
    v6 = *(*(*(a1 + 48) + 8) + 24);
    v3 = *(*(a1 + 40) + 16);
    return v3();
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10005F69C();
  }

LABEL_4:
  free(*(a1 + 56));
  free(*(a1 + 64));
  free(*(a1 + 72));
  v3 = *(*(a1 + 40) + 16);
  return v3();
}

void sub_10004274C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10005F888(a1);
  }

  free(*(a1 + 40));
  (*(*(a1 + 32) + 16))();
}

uint64_t sub_1000428CC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 != 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005F904(a1);
    }

    free(*(a1 + 40));
    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    free(*(a1 + 40));
    v4 = *(*(a1 + 32) + 16);

    return v4();
  }
}

uint64_t sub_100042A3C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005F980(a1);
    }

    free(*(a1 + 40));
    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    free(*(a1 + 40));
    v4 = *(*(a1 + 32) + 16);

    return v4();
  }
}

void sub_100042BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100042BD8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = malloc_type_malloc(0xF8uLL, 0x10800407AD7242AuLL);
    *v5 = 0u;
    *(v5 + 1) = 0u;
    *(v5 + 2) = 0u;
    *(v5 + 3) = 0u;
    *(v5 + 4) = 0u;
    *(v5 + 5) = 0u;
    *(v5 + 6) = 0u;
    *(v5 + 7) = 0u;
    *(v5 + 8) = 0u;
    *(v5 + 9) = 0u;
    *(v5 + 10) = 0u;
    *(v5 + 11) = 0u;
    *(v5 + 12) = 0u;
    *(v5 + 13) = 0u;
    *(v5 + 14) = 0u;
    *(v5 + 30) = 0;
    *(v5 + 12) = xmmword_10006D5F0;
    *(v5 + 28) = 0x100000001;
    v6 = a1 + 40;
    *(*(*(a1 + 40) + 8) + 24) = [v4 cmpdAddCreate:v5 withName:0 withStreamName:0];
    if (*(*(*(a1 + 40) + 8) + 24))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10005F9FC(a1 + 40);
      }

      v7 = v5;
    }

    else
    {
      v9 = malloc_type_malloc(0x470uLL, 0x10000402F070C0BuLL);
      bzero(v9 + 2, 0x46EuLL);
      *v9 = 770;
      *(*(*v6 + 8) + 24) = [v4 cmpdAddQueryInformation:v9 withStreamName:0 forFileAllInfo:0 withInputBuffer:0 withOutputBuffer:0];
      if (*(*(*v6 + 8) + 24))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10005FA74(a1 + 40);
        }

        free(v5);
        v7 = v9;
      }

      else
      {
        v10 = malloc_type_malloc(0x40uLL, 0x100004022DBA428uLL);
        *v10 = 0u;
        v10[1] = 0u;
        v10[2] = 0u;
        v10[3] = 0u;
        *(*(*v6 + 8) + 24) = [v4 cmpdAddClose:v10 withFlags:0];
        if (!*(*(*v6 + 8) + 24))
        {
          v14[0] = _NSConcreteStackBlock;
          v14[1] = 3221225472;
          v14[2] = sub_100042ED0;
          v14[3] = &unk_10008E848;
          v18 = v5;
          v19 = v9;
          v20 = v10;
          v12 = *(a1 + 32);
          v13 = *(a1 + 40);
          v16 = v12;
          v17 = v13;
          v15 = v4;
          [v15 sendCmpdRequest:v14];

          goto LABEL_19;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10005FA74(a1 + 40);
        }

        free(v5);
        free(v9);
        v7 = v10;
      }
    }

    free(v7);
    v11 = *(*(*(a1 + 40) + 8) + 24);
    v8 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005FAEC();
    }

    v8 = *(*(a1 + 32) + 16);
  }

  v8();
LABEL_19:
}

uint64_t sub_100042ED0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005FB64();
    }

    free(*(a1 + 56));
    free(*(a1 + 64));
    free(*(a1 + 72));
    v3 = *(*(a1 + 40) + 16);
    return v3();
  }

  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) cmpdParseCreate:*(a1 + 56)];
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005B50C(a1 + 48, (a1 + 56));
    }

LABEL_11:
    free(*(a1 + 56));
    free(*(a1 + 64));
    free(*(a1 + 72));
    v4 = *(*(*(a1 + 48) + 8) + 24);
    v3 = *(*(a1 + 40) + 16);
    return v3();
  }

  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) cmpdParseQueryInformation:*(a1 + 64) withStreamName:0 forFileAllInfo:0 withOutputBuffer:0];
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005B588(a1 + 48, (a1 + 64));
    }

    goto LABEL_11;
  }

  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) cmpdParseClose:*(a1 + 72) withFlags:0];
  if (*(*(*(a1 + 48) + 8) + 24) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10005B604(a1 + 48, (a1 + 72));
  }

  v6 = malloc_type_malloc(0x38uLL, 0x100004021716A34uLL);
  if (v6)
  {
    v7 = v6;
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    v10 = (*(v9 + 1072) * *(v9 + 1076));
    v11 = *(v9 + 1056);
    v12 = *(v9 + 1064);
    v7[1] = v11 * v10;
    v7[2] = v12 * v10;
    v7[3] = v12 * v10;
    v7[4] = v11 * v10 - v12 * v10;
    v7[5] = v11;
    v7[6] = v12;
    free(v8);
    free(*(a1 + 64));
    free(*(a1 + 72));
    v3 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005FBDC();
    }

    v3 = *(*(a1 + 40) + 16);
  }

  return v3();
}

void sub_100043370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100043394(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (!v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005FE1C(a1);
    }

    v8 = *(*(a1 + 48) + 16);
    goto LABEL_23;
  }

  v5 = malloc_type_malloc(0xF8uLL, 0x10800407AD7242AuLL);
  v6 = v5;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 2) = 0u;
  *(v5 + 3) = 0u;
  *(v5 + 4) = 0u;
  *(v5 + 5) = 0u;
  *(v5 + 6) = 0u;
  *(v5 + 7) = 0u;
  *(v5 + 8) = 0u;
  *(v5 + 9) = 0u;
  *(v5 + 10) = 0u;
  *(v5 + 11) = 0u;
  *(v5 + 12) = 0u;
  *(v5 + 13) = 0u;
  *(v5 + 14) = 0u;
  *(v5 + 30) = 0;
  *(v5 + 12) = 0x10400000002;
  *(v5 + 3) = 0x100000007;
  if (*(a1 + 72) == 2)
  {
    *(v5 + 5) = 16;
    v7 = 1;
LABEL_9:
    *(v5 + 8) = v7;
    goto LABEL_10;
  }

  *(v5 + 5) = 128;
  if (*(a1 + 72) == 5)
  {
    v7 = 0x200000;
    goto LABEL_9;
  }

LABEL_10:
  v9 = a1 + 56;
  *(*(*(a1 + 56) + 8) + 24) = [v4 cmpdAddCreate:v5 withName:*(a1 + 40) withStreamName:0];
  if (*(*(*(a1 + 56) + 8) + 24))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005FC6C(a1, (a1 + 56));
    }

    v10 = v6;
  }

  else
  {
    v11 = malloc_type_malloc(0x58uLL, 0x1000040DCA60672uLL);
    *(v11 + 10) = 0;
    *(v11 + 3) = 0u;
    *(v11 + 4) = 0u;
    *(v11 + 1) = 0u;
    *(v11 + 2) = 0u;
    *v11 = 0u;
    *(v11 + 2) = 1025;
    v12 = *(a1 + 64);
    v13 = *v12;
    v14 = v12[1];
    *(v11 + 9) = *(v12 + 4);
    *(v11 + 56) = v14;
    *(v11 + 40) = v13;
    *(*(*(a1 + 56) + 8) + 24) = [v4 cmpdAddSetInformation:v11 withInputBuffer:0 withRenameTarget:0];
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10005FD08(a1, (a1 + 56));
      }

      free(v6);
      v10 = v11;
    }

    else
    {
      v15 = malloc_type_malloc(0x40uLL, 0x100004022DBA428uLL);
      *v15 = 0u;
      v15[1] = 0u;
      v15[2] = 0u;
      v15[3] = 0u;
      *(*(*v9 + 8) + 24) = [v4 cmpdAddClose:v15 withFlags:0];
      if (!*(*(*v9 + 8) + 24))
      {
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_1000436E4;
        v19[3] = &unk_10008E848;
        v23 = v6;
        v24 = v11;
        v25 = v15;
        v17 = *(a1 + 48);
        v18 = *(a1 + 56);
        v21 = v17;
        v22 = v18;
        v20 = v4;
        [v20 sendCmpdRequest:v19];

        goto LABEL_24;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10005FDA4(a1 + 56);
      }

      free(v6);
      free(v11);
      v10 = v15;
    }
  }

  free(v10);
  v16 = *(*(*(a1 + 56) + 8) + 24);
  v8 = *(*(a1 + 48) + 16);
LABEL_23:
  v8();
LABEL_24:
}

uint64_t sub_1000436E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) cmpdParseCreate:*(a1 + 56)];
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10005FF28(a1 + 48, (a1 + 56));
      }
    }

    else
    {
      *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) cmpdParseSetInformation:*(a1 + 64)];
      if (!*(*(*(a1 + 48) + 8) + 24))
      {
        *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) cmpdParseClose:*(a1 + 72) withFlags:0];
        if (*(*(*(a1 + 48) + 8) + 24) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100060020(a1 + 48, (a1 + 72));
        }

        goto LABEL_4;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10005FFA4(a1 + 48, (a1 + 64));
      }
    }

    free(*(a1 + 56));
    free(*(a1 + 64));
    free(*(a1 + 72));
    v4 = *(*(*(a1 + 48) + 8) + 24);
    v3 = *(*(a1 + 40) + 16);
    return v3();
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10005FEB0();
  }

LABEL_4:
  free(*(a1 + 56));
  free(*(a1 + 64));
  free(*(a1 + 72));
  v3 = *(*(a1 + 40) + 16);
  return v3();
}

void sub_100043AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100043B10(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (!v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100060298(a1);
    }

    v8 = *(*(a1 + 48) + 16);
    goto LABEL_23;
  }

  v5 = malloc_type_malloc(0xF8uLL, 0x10800407AD7242AuLL);
  v6 = v5;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 2) = 0u;
  *(v5 + 3) = 0u;
  *(v5 + 4) = 0u;
  *(v5 + 5) = 0u;
  *(v5 + 6) = 0u;
  *(v5 + 7) = 0u;
  *(v5 + 8) = 0u;
  *(v5 + 9) = 0u;
  *(v5 + 10) = 0u;
  *(v5 + 11) = 0u;
  *(v5 + 12) = 0u;
  *(v5 + 13) = 0u;
  *(v5 + 14) = 0u;
  *(v5 + 30) = 0;
  *(v5 + 12) = 0x600000002;
  *(v5 + 3) = 0x100000007;
  if (*(a1 + 72) == 2)
  {
    *(v5 + 5) = 16;
    v7 = 1;
LABEL_9:
    *(v5 + 8) = v7;
    goto LABEL_10;
  }

  *(v5 + 5) = 128;
  if (*(a1 + 72) == 5)
  {
    v7 = 0x200000;
    goto LABEL_9;
  }

LABEL_10:
  v9 = a1 + 56;
  *(*(*(a1 + 56) + 8) + 24) = [v4 cmpdAddCreate:v5 withName:*(a1 + 40) withStreamName:0];
  if (*(*(*(a1 + 56) + 8) + 24))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000600E8(a1, (a1 + 56));
    }

    v10 = v6;
  }

  else
  {
    v11 = malloc_type_malloc(0x58uLL, 0x1000040DCA60672uLL);
    *v11 = 0u;
    v11[1] = 0u;
    v11[2] = 0u;
    v11[3] = 0u;
    v11[4] = 0u;
    *(v11 + 10) = 0;
    *(v11 + 2) = 5121;
    *(v11 + 4) = *(a1 + 64);
    *(*(*(a1 + 56) + 8) + 24) = [v4 cmpdAddSetInformation:v11 withInputBuffer:0 withRenameTarget:0];
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100060184(a1, (a1 + 56));
      }

      free(v6);
      v10 = v11;
    }

    else
    {
      v12 = malloc_type_malloc(0x40uLL, 0x100004022DBA428uLL);
      *v12 = 0u;
      v12[1] = 0u;
      v12[2] = 0u;
      v12[3] = 0u;
      *(*(*v9 + 8) + 24) = [v4 cmpdAddClose:v12 withFlags:0];
      if (!*(*(*v9 + 8) + 24))
      {
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_100043E50;
        v16[3] = &unk_10008E848;
        v20 = v6;
        v21 = v11;
        v22 = v12;
        v14 = *(a1 + 48);
        v15 = *(a1 + 56);
        v18 = v14;
        v19 = v15;
        v17 = v4;
        [v17 sendCmpdRequest:v16];

        goto LABEL_24;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100060220(a1 + 56);
      }

      free(v6);
      free(v11);
      v10 = v12;
    }
  }

  free(v10);
  v13 = *(*(*(a1 + 56) + 8) + 24);
  v8 = *(*(a1 + 48) + 16);
LABEL_23:
  v8();
LABEL_24:
}

uint64_t sub_100043E50(uint64_t a1, int a2)
{
  if (!a2)
  {
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) cmpdParseCreate:*(a1 + 56)];
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000603A4(a1 + 48, (a1 + 56));
      }
    }

    else
    {
      *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) cmpdParseSetInformation:*(a1 + 64)];
      if (!*(*(*(a1 + 48) + 8) + 24))
      {
        *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) cmpdParseClose:*(a1 + 72) withFlags:0];
        if (*(*(*(a1 + 48) + 8) + 24) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10006049C(a1 + 48, (a1 + 72));
        }

        goto LABEL_4;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100060420(a1 + 48, (a1 + 64));
      }
    }

    free(*(a1 + 56));
    free(*(a1 + 64));
    free(*(a1 + 72));
    v4 = *(*(*(a1 + 48) + 8) + 24);
    v3 = *(*(a1 + 40) + 16);
    return v3();
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006032C();
  }

LABEL_4:
  free(*(a1 + 56));
  free(*(a1 + 64));
  free(*(a1 + 72));
  v3 = *(*(a1 + 40) + 16);
  return v3();
}

void sub_100044248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004426C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (!v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10006071C();
    }

    v8 = *(*(a1 + 56) + 16);
    goto LABEL_23;
  }

  v5 = malloc_type_malloc(0xF8uLL, 0x10800407AD7242AuLL);
  v6 = v5;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 2) = 0u;
  *(v5 + 3) = 0u;
  *(v5 + 4) = 0u;
  *(v5 + 5) = 0u;
  *(v5 + 6) = 0u;
  *(v5 + 7) = 0u;
  *(v5 + 8) = 0u;
  *(v5 + 9) = 0u;
  *(v5 + 10) = 0u;
  *(v5 + 11) = 0u;
  *(v5 + 12) = 0u;
  *(v5 + 13) = 0u;
  *(v5 + 14) = 0u;
  *(v5 + 30) = 0;
  *(v5 + 12) = 0x11000000000002;
  *(v5 + 3) = 0x100000007;
  if (*(a1 + 72) == 2)
  {
    *(v5 + 5) = 16;
    v7 = 1;
LABEL_9:
    *(v5 + 8) = v7;
    goto LABEL_10;
  }

  *(v5 + 5) = 128;
  if (*(a1 + 72) == 5)
  {
    v7 = 0x200000;
    goto LABEL_9;
  }

LABEL_10:
  v9 = a1 + 64;
  *(*(*(a1 + 64) + 8) + 24) = [v4 cmpdAddCreate:v5 withName:*(a1 + 48) withStreamName:0];
  if (*(*(*(a1 + 64) + 8) + 24))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100060564();
    }

    v10 = v6;
  }

  else
  {
    v11 = malloc_type_malloc(0x58uLL, 0x1000040DCA60672uLL);
    *v11 = 0u;
    v11[1] = 0u;
    v11[2] = 0u;
    v11[3] = 0u;
    v11[4] = 0u;
    *(v11 + 10) = 0;
    *(v11 + 2) = 3329;
    *(v11 + 4) = 1;
    *(*(*v9 + 8) + 24) = [v4 cmpdAddSetInformation:v11 withInputBuffer:0 withRenameTarget:0];
    if (*(*(*v9 + 8) + 24))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100060604();
      }

      free(v6);
      v10 = v11;
    }

    else
    {
      v12 = malloc_type_malloc(0x40uLL, 0x100004022DBA428uLL);
      *v12 = 0u;
      v12[1] = 0u;
      v12[2] = 0u;
      v12[3] = 0u;
      *(*(*v9 + 8) + 24) = [v4 cmpdAddClose:v12 withFlags:0];
      if (!*(*(*v9 + 8) + 24))
      {
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_1000445AC;
        v16[3] = &unk_10008E848;
        v20 = v6;
        v21 = v11;
        v22 = v12;
        v14 = *(a1 + 56);
        v15 = *(a1 + 64);
        v18 = v14;
        v19 = v15;
        v17 = v4;
        [v17 sendCmpdRequest:v16];

        goto LABEL_24;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000606A4(a1 + 64);
      }

      free(v6);
      free(v11);
      v10 = v12;
    }
  }

  free(v10);
  v13 = *(*(*(a1 + 64) + 8) + 24);
  v8 = *(*(a1 + 56) + 16);
LABEL_23:
  v8();
LABEL_24:
}

uint64_t sub_1000445AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) cmpdParseCreate:*(a1 + 56)];
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10006083C(a1 + 48, (a1 + 56));
      }
    }

    else
    {
      *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) cmpdParseSetInformation:*(a1 + 64)];
      if (!*(*(*(a1 + 48) + 8) + 24))
      {
        *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) cmpdParseClose:*(a1 + 72) withFlags:0];
        if (*(*(*(a1 + 48) + 8) + 24) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100060934(a1 + 48, (a1 + 72));
        }

        goto LABEL_4;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000608B8(a1 + 48, (a1 + 64));
      }
    }

    free(*(a1 + 56));
    free(*(a1 + 64));
    free(*(a1 + 72));
    v4 = *(*(*(a1 + 48) + 8) + 24);
    v3 = *(*(a1 + 40) + 16);
    return v3();
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000607C4();
  }

LABEL_4:
  free(*(a1 + 56));
  free(*(a1 + 64));
  free(*(a1 + 72));
  v3 = *(*(a1 + 40) + 16);
  return v3();
}

void sub_100044B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100044B48(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (!v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100060C54(a1);
    }

    v8 = *(*(a1 + 64) + 16);
    goto LABEL_23;
  }

  v5 = malloc_type_malloc(0xF8uLL, 0x10800407AD7242AuLL);
  v6 = v5;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 2) = 0u;
  *(v5 + 3) = 0u;
  *(v5 + 4) = 0u;
  *(v5 + 5) = 0u;
  *(v5 + 6) = 0u;
  *(v5 + 7) = 0u;
  *(v5 + 8) = 0u;
  *(v5 + 9) = 0u;
  *(v5 + 10) = 0u;
  *(v5 + 11) = 0u;
  *(v5 + 12) = 0u;
  *(v5 + 13) = 0u;
  *(v5 + 14) = 0u;
  *(v5 + 30) = 0;
  *(v5 + 12) = 0x11000000000002;
  *(v5 + 3) = 0x100000007;
  if (*(a1 + 80) == 2)
  {
    *(v5 + 5) = 16;
    v7 = 1;
LABEL_9:
    *(v5 + 8) = v7;
    goto LABEL_10;
  }

  *(v5 + 5) = 128;
  if (*(a1 + 80) == 5)
  {
    v7 = 0x200000;
    goto LABEL_9;
  }

LABEL_10:
  v9 = a1 + 72;
  *(*(*(a1 + 72) + 8) + 24) = [v4 cmpdAddCreate:v5 withName:*(a1 + 48) withStreamName:0];
  if (*(*(*(a1 + 72) + 8) + 24))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100060A9C();
    }

    v10 = v6;
  }

  else
  {
    v11 = malloc_type_malloc(0x58uLL, 0x1000040DCA60672uLL);
    v11[10] = 0;
    *v11 = 0u;
    *(v11 + 1) = 0u;
    *(v11 + 2) = 0u;
    *(v11 + 3) = 0u;
    *(v11 + 4) = 0u;
    *(v11 + 2) = 2561;
    *(v11 + 20) = 1;
    *(*(*(a1 + 72) + 8) + 24) = [v4 cmpdAddSetInformation:v11 withInputBuffer:0 withRenameTarget:*(a1 + 56)];
    if (*(*(*(a1 + 72) + 8) + 24))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100060B3C();
      }

      free(v6);
      v10 = v11;
    }

    else
    {
      v12 = malloc_type_malloc(0x40uLL, 0x100004022DBA428uLL);
      *v12 = 0u;
      v12[1] = 0u;
      v12[2] = 0u;
      v12[3] = 0u;
      *(*(*v9 + 8) + 24) = [v4 cmpdAddClose:v12 withFlags:0];
      if (!*(*(*v9 + 8) + 24))
      {
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_100044E88;
        v16[3] = &unk_10008E848;
        v20 = v6;
        v21 = v11;
        v22 = v12;
        v14 = *(a1 + 64);
        v15 = *(a1 + 72);
        v18 = v14;
        v19 = v15;
        v17 = v4;
        [v17 sendCmpdRequest:v16];

        goto LABEL_24;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100060BDC(a1 + 72);
      }

      free(v6);
      free(v11);
      v10 = v12;
    }
  }

  free(v10);
  v13 = *(*(*(a1 + 72) + 8) + 24);
  v8 = *(*(a1 + 64) + 16);
LABEL_23:
  v8();
LABEL_24:
}

uint64_t sub_100044E88(uint64_t a1, int a2)
{
  if (!a2)
  {
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) cmpdParseCreate:*(a1 + 56)];
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100060D64(a1 + 48, (a1 + 56));
      }
    }

    else
    {
      *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) cmpdParseSetInformation:*(a1 + 64)];
      if (!*(*(*(a1 + 48) + 8) + 24))
      {
        *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) cmpdParseClose:*(a1 + 72) withFlags:0];
        if (*(*(*(a1 + 48) + 8) + 24) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100060E5C(a1 + 48, (a1 + 72));
        }

        goto LABEL_4;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100060DE0(a1 + 48, (a1 + 64));
      }
    }

    free(*(a1 + 56));
    free(*(a1 + 64));
    free(*(a1 + 72));
    v4 = *(*(*(a1 + 48) + 8) + 24);
    v3 = *(*(a1 + 40) + 16);
    return v3();
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100060CEC();
  }

LABEL_4:
  free(*(a1 + 56));
  free(*(a1 + 64));
  free(*(a1 + 72));
  v3 = *(*(a1 + 40) + 16);
  return v3();
}

void sub_10004526C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100045290(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (!v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100061014();
    }

    v7 = *(*(a1 + 48) + 16);
    goto LABEL_19;
  }

  v5 = malloc_type_malloc(0xF8uLL, 0x10800407AD7242AuLL);
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0u;
  *(v5 + 88) = 0u;
  *(v5 + 104) = 0u;
  *(v5 + 120) = 0u;
  *(v5 + 136) = 0u;
  *(v5 + 152) = 0u;
  *(v5 + 168) = 0u;
  *(v5 + 184) = 0u;
  *(v5 + 200) = 0u;
  *(v5 + 216) = 0u;
  *(v5 + 232) = 0u;
  *v5 = 4;
  *(v5 + 12) = 0x8000000002;
  *(v5 + 3) = 0x100000007;
  if ([*(a1 + 32) isDir])
  {
    *(v5 + 5) = 16;
    v6 = 1;
LABEL_9:
    *(v5 + 8) = v6;
    goto LABEL_10;
  }

  *(v5 + 5) = 128;
  if ([*(a1 + 32) isSymlink])
  {
    v6 = *(v5 + 8) | 0x200000;
    goto LABEL_9;
  }

LABEL_10:
  v8 = (a1 + 56);
  *(*(*(a1 + 56) + 8) + 24) = [v4 cmpdAddCreate:v5 withName:*(a1 + 40) withStreamName:0];
  if (*(*(*(a1 + 56) + 8) + 24))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100060F24(a1 + 56);
    }

    v9 = v5;
  }

  else
  {
    v10 = malloc_type_malloc(0x40uLL, 0x100004022DBA428uLL);
    *v10 = 0u;
    v10[1] = 0u;
    v10[2] = 0u;
    v10[3] = 0u;
    *(*(*v8 + 8) + 24) = [v4 cmpdAddClose:v10 withFlags:0];
    v11 = *v8;
    if (!*(*(*v8 + 8) + 24))
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100045540;
      v13[3] = &unk_10008E960;
      v16 = v11;
      v17 = v5;
      v18 = v10;
      v15 = *(a1 + 48);
      v14 = v4;
      [v14 sendCmpdRequest:v13];

      goto LABEL_20;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100060F9C(a1 + 56);
    }

    free(v5);
    v9 = v10;
  }

  free(v9);
  v12 = *(*(*(a1 + 56) + 8) + 24);
  v7 = *(*(a1 + 48) + 16);
LABEL_19:
  v7();
LABEL_20:
}

uint64_t sub_100045540(uint64_t a1)
{
  v2 = a1 + 48;
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10006108C(v2);
    }

LABEL_7:
    free(*(a1 + 56));
    goto LABEL_8;
  }

  v3 = (a1 + 56);
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) cmpdParseCreate:*(a1 + 56)];
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100061104(v2, (a1 + 56));
    }

    goto LABEL_7;
  }

  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) cmpdParseClose:*(a1 + 64) withFlags:0];
  if (*(*(*(a1 + 48) + 8) + 24) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100061180(v2, (a1 + 64));
  }

  v6 = *(*v3 + 29);
  free(*v3);
LABEL_8:
  free(*(a1 + 64));
  v4 = *(*(*(a1 + 48) + 8) + 24);
  return (*(*(a1 + 40) + 16))();
}

uint64_t sub_100045A08@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *(v3 - 8) = a3;
  v4 = *(*(*result + 8) + 24);
  v5 = *a2;
  return result;
}

uint64_t *sub_100045AA4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

uint64_t sub_100045AC0(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2080;
  *(a3 + 14) = a2;
  return result;
}

uint64_t sub_100045B4C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 40);
  return result;
}

void sub_100045B74()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 112);
  v4 = *(*(v0 + 80) + 24);
}

void sub_100045B98()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 108);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 112);
}

id sub_100045E38(void *a1, const void *a2, int a3, int *a4)
{
  v7 = a1;
  v416 = 0;
  v415 = 0;
  v413 = 0;
  v414 = 0;
  v412 = 0;
  v411 = 0;
  v425[0] = 0;
  v425[1] = 0;
  v410 = 0;
  *a4 = 0;
  v8 = sub_100046E3C(v7, 1432, 1432);
  v9 = v8;
  if (!v8)
  {
    v10 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v10)
    {
      sub_1000627F4(v10, v11, v12, v13, v14, v15, v16, v17);
    }

    goto LABEL_32;
  }

  if (!sub_100046F90(v8, 5))
  {
    v20 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v20)
    {
      sub_100061280(v20, v21, v22, v23, v24, v25, v26, v27);
    }

    goto LABEL_80;
  }

  if (!sub_100046F90(v9, 0))
  {
    v28 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v28)
    {
      sub_1000612BC(v28, v29, v30, v31, v32, v33, v34, v35);
    }

    goto LABEL_80;
  }

  if (!sub_100046F90(v9, 11))
  {
    v36 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v36)
    {
      sub_1000612F8(v36, v37, v38, v39, v40, v41, v42, v43);
    }

    goto LABEL_80;
  }

  if (!sub_100046F90(v9, 3))
  {
    v44 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v44)
    {
      sub_100061334(v44, v45, v46, v47, v48, v49, v50, v51);
    }

    goto LABEL_80;
  }

  if (!sub_100046F90(v9, 16))
  {
    v52 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v52)
    {
      sub_100061370(v52, v53, v54, v55, v56, v57, v58, v59);
    }

    goto LABEL_80;
  }

  if (!sub_100046F90(v9, 0))
  {
    v60 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v60)
    {
      sub_1000613AC(v60, v61, v62, v63, v64, v65, v66, v67);
    }

    goto LABEL_80;
  }

  if (!sub_100047020(v9, 0))
  {
    v68 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v68)
    {
      sub_1000613E8(v68, v69, v70, v71, v72, v73, v74, v75);
    }

    goto LABEL_80;
  }

  if (!sub_100047020(v9, 72))
  {
    v76 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v76)
    {
      sub_100061424(v76, v77, v78, v79, v80, v81, v82, v83);
    }

    goto LABEL_80;
  }

  if (!sub_100047020(v9, 0))
  {
    v84 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v84)
    {
      sub_100061460(v84, v85, v86, v87, v88, v89, v90, v91);
    }

    goto LABEL_80;
  }

  if (!sub_1000470B4(v9, [v9 call_id]))
  {
    v92 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v92)
    {
      sub_10006149C(v92, v93, v94, v95, v96, v97, v98, v99);
    }

    goto LABEL_80;
  }

  if (!sub_100047020(v9, 4096))
  {
    v100 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v100)
    {
      sub_1000614D8(v100, v101, v102, v103, v104, v105, v106, v107);
    }

    goto LABEL_80;
  }

  if (!sub_100047020(v9, 4096))
  {
    v108 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v108)
    {
      sub_100061514(v108, v109, v110, v111, v112, v113, v114, v115);
    }

    goto LABEL_80;
  }

  if (!sub_1000470B4(v9, 0))
  {
    v116 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v116)
    {
      sub_100061550(v116, v117, v118, v119, v120, v121, v122, v123);
    }

    goto LABEL_80;
  }

  if (!sub_100046F90(v9, 1))
  {
    v124 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v124)
    {
      sub_10006158C(v124, v125, v126, v127, v128, v129, v130, v131);
    }

    goto LABEL_80;
  }

  if (!sub_100046F90(v9, 0))
  {
    v132 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v132)
    {
      sub_1000615C8(v132, v133, v134, v135, v136, v137, v138, v139);
    }

    goto LABEL_80;
  }

  if (!sub_100047020(v9, 0))
  {
    v140 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v140)
    {
      sub_100061604(v140, v141, v142, v143, v144, v145, v146, v147);
    }

    goto LABEL_80;
  }

  if (!sub_100047020(v9, 0))
  {
    v148 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v148)
    {
      sub_100061640(v148, v149, v150, v151, v152, v153, v154, v155);
    }

    goto LABEL_80;
  }

  if (!sub_100046F90(v9, 1))
  {
    v156 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v156)
    {
      sub_10006167C(v156, v157, v158, v159, v160, v161, v162, v163);
    }

    goto LABEL_80;
  }

  if (!sub_100046F90(v9, 0))
  {
    v164 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v164)
    {
      sub_1000616B8(v164, v165, v166, v167, v168, v169, v170, v171);
    }

    goto LABEL_80;
  }

  if (!sub_100047148(v9, a2, 0x10u))
  {
    v172 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v172)
    {
      sub_1000616F4(v172, v173, v174, v175, v176, v177, v178, v179);
    }

    goto LABEL_80;
  }

  if (!sub_1000470B4(v9, a3))
  {
    v180 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v180)
    {
      sub_100061730(v180, v181, v182, v183, v184, v185, v186, v187);
    }

    goto LABEL_80;
  }

  if (!sub_100047148(v9, &unk_1000954A0, 0x10u))
  {
    v188 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v188)
    {
      sub_10006176C(v188, v189, v190, v191, v192, v193, v194, v195);
    }

    goto LABEL_80;
  }

  if (!sub_1000470B4(v9, 2))
  {
    v196 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v196)
    {
      sub_1000617A8(v196, v197, v198, v199, v200, v201, v202, v203);
    }

LABEL_80:
    v18 = 0;
    v19 = 1;
    goto LABEL_81;
  }

  if ((sub_1000471E8(v9) & 1) == 0)
  {
    v18 = 0;
    v19 = 2;
    goto LABEL_81;
  }

  if (!sub_10004753C(v9))
  {
    v205 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v205)
    {
      sub_1000617E4(v205, v206, v207, v208, v209, v210, v211, v212);
    }

    v18 = 0;
    v19 = 3;
    goto LABEL_81;
  }

  if ([v9 in_len] <= 0xF)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100062778(v9);
    }

LABEL_97:
    v18 = 0;
    v19 = 4;
    goto LABEL_81;
  }

  if (!sub_1000477A0(v9, &v416 + 1))
  {
    v213 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v213)
    {
      sub_100061820(v213, v214, v215, v216, v217, v218, v219, v220);
    }

    goto LABEL_97;
  }

  if (HIBYTE(v416) != 5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10006185C();
    }

    goto LABEL_100;
  }

  if (!sub_1000477A0(v9, &v416 + 1))
  {
    v221 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v221)
    {
      sub_1000618D8(v221, v222, v223, v224, v225, v226, v227, v228);
    }

    goto LABEL_97;
  }

  if (HIBYTE(v416))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100061914();
    }

LABEL_100:
    v18 = 0;
    v19 = 9;
    goto LABEL_81;
  }

  if (!sub_1000477A0(v9, &v416))
  {
    v237 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v237)
    {
      sub_100061990(v237, v238, v239, v240, v241, v242, v243, v244);
    }

    goto LABEL_97;
  }

  if (!sub_1000477A0(v9, &v415 + 1))
  {
    v245 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v245)
    {
      sub_1000619CC(v245, v246, v247, v248, v249, v250, v251, v252);
    }

    goto LABEL_97;
  }

  if ((v415 & 0x100) == 0)
  {
    v229 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v229)
    {
      sub_10006273C(v229, v230, v231, v232, v233, v234, v235, v236);
    }

LABEL_108:
    v18 = 0;
    v19 = 8;
    goto LABEL_81;
  }

  if ((v415 & 0x200) != 0)
  {
    [v9 setIn_lastfrag:1];
  }

  else
  {
    v253 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v253)
    {
      sub_100061A08(v253, v254, v255, v256, v257, v258, v259, v260);
    }
  }

  if (!sub_100047834(v9, &v411 + 1))
  {
    v262 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v262)
    {
      sub_100061A44(v262, v263, v264, v265, v266, v267, v268, v269);
    }

    goto LABEL_97;
  }

  v261 = BYTE4(v411);
  [v9 setIn_ndr:HIDWORD(v411)];
  if (v261 >= 0x10u && (v261 & 0xF0) != 0x10)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100061A80();
    }

    v18 = 0;
    v19 = 5;
    goto LABEL_81;
  }

  if (v261 <= 0xFu)
  {
    v270 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v270)
    {
      sub_100061AFC(v270, v271, v272, v273, v274, v275, v276, v277);
    }
  }

  if ((v261 & 0xF) != 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100061B38();
    }

    v18 = 0;
    v19 = 6;
    goto LABEL_81;
  }

  if (!sub_1000478CC(v9, &v414))
  {
    v279 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v279)
    {
      sub_100061BB4(v279, v280, v281, v282, v283, v284, v285, v286);
    }

    goto LABEL_97;
  }

  v278 = v414;
  if (v414 <= 0xFu)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000626A4(v278, v9);
    }

    goto LABEL_108;
  }

  [v9 setIn_fbtbd:v414];
  if (!sub_1000478CC(v9, &v414 + 1))
  {
    v287 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v287)
    {
      sub_100061BF0(v287, v288, v289, v290, v291, v292, v293, v294);
    }

    goto LABEL_97;
  }

  if (HIWORD(v414))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100061C2C();
    }

    goto LABEL_108;
  }

  if (!sub_100047834(v9, &v412))
  {
    v295 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v295)
    {
      sub_100061CA8(v295, v296, v297, v298, v299, v300, v301, v302);
    }

    goto LABEL_97;
  }

  if (v412)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100061CE4();
    }

    v18 = 0;
    v19 = 7;
    goto LABEL_81;
  }

  if (v416 != 12)
  {
    if (v416 == 13)
    {
      v303 = sub_1000478CC(v9, &v414 + 1);
      v304 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (v303)
      {
        if (v304)
        {
          sub_100061D98(&v414 + 1);
        }

        v18 = 0;
        v19 = 12;
      }

      else
      {
        if (v304)
        {
          sub_100061D5C(v304, v305, v306, v307, v308, v309, v310, v311);
        }

        v18 = 0;
        v19 = 11;
      }
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100062628();
      }

      v18 = 0;
      v19 = 10;
    }

    goto LABEL_81;
  }

  if (!sub_1000478CC(v9, &v414 + 1))
  {
    v316 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v316)
    {
      sub_100061E14(v316, v317, v318, v319, v320, v321, v322, v323);
    }

    goto LABEL_97;
  }

  [v9 setIn_max_xmit_frag:HIWORD(v414)];
  if (!sub_1000478CC(v9, &v414 + 1))
  {
    v324 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v324)
    {
      sub_100061E50(v324, v325, v326, v327, v328, v329, v330, v331);
    }

    goto LABEL_97;
  }

  [v9 setIn_max_recv_frag:HIWORD(v414)];
  [v9 setNegotiated_max_xmit_frag:4096];
  v312 = [v9 negotiated_max_xmit_frag];
  if (v312 > [v9 in_max_recv_frag])
  {
    [v9 setNegotiated_max_xmit_frag:{objc_msgSend(v9, "in_max_recv_frag")}];
  }

  [v9 setNegotiated_max_recv_frag:4096];
  v313 = [v9 negotiated_max_recv_frag];
  if (v313 > [v9 in_max_xmit_frag])
  {
    [v9 setNegotiated_max_recv_frag:{objc_msgSend(v9, "in_max_xmit_frag")}];
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100061E8C(v9);
  }

  if (!sub_100047834(v9, &v410))
  {
    v332 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v332)
    {
      sub_100061F2C(v332, v333, v334, v335, v336, v337, v338, v339);
    }

    goto LABEL_97;
  }

  [v9 setAssoc_group_id:0];
  if (!sub_1000478CC(v9, &v414 + 1))
  {
    v340 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v340)
    {
      sub_100061F68(v340, v341, v342, v343, v344, v345, v346, v347);
    }

    goto LABEL_97;
  }

  [v9 setSec_addr_len:HIWORD(v414)];
  v314 = [v9 in_finger];
  v315 = [v9 sec_addr_len] + v314;
  if (v315 > [v9 in_len])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100062588(v9);
    }

    goto LABEL_97;
  }

  if (![v9 sec_addr_len])
  {
    v348 = 26;
LABEL_190:
    v349 = [v9 sec_addr_len] & 3;
    if (v349 != 2)
    {
      v350 = 0;
      v351 = v349 ^ 2;
      v348 = v348 - v351 + 4;
      v352 = v351 | 0xFFFFFFFC;
      while (sub_1000477A0(v9, &v416 + 1))
      {
        if (v352 == --v350)
        {
          goto LABEL_194;
        }
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10006209C();
      }

      goto LABEL_97;
    }

LABEL_194:
    if (!sub_1000477A0(v9, &v415))
    {
      v371 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (v371)
      {
        sub_10006211C(v371, v372, v373, v374, v375, v376, v377, v378);
      }

      goto LABEL_97;
    }

    if (!sub_1000477A0(v9, &v416 + 1))
    {
      v379 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (v379)
      {
        sub_100062158(v379, v380, v381, v382, v383, v384, v385, v386);
      }

      goto LABEL_97;
    }

    if (!sub_1000478CC(v9, &v414 + 1))
    {
      v387 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (v387)
      {
        sub_100062194(v387, v388, v389, v390, v391, v392, v393, v394);
      }

      goto LABEL_97;
    }

    v354 = v415;
    if (v415 < 2u)
    {
      if (!v415)
      {
LABEL_243:
        v401 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
        if (v401)
        {
          sub_100062478(v401, v402, v403, v404, v405, v406, v407, v408);
        }

        v18 = 0;
        v19 = 15;
        goto LABEL_81;
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000621D0();
    }

    v395 = 0;
    v396 = 0;
    v397 = v348 + 24 * v354;
    *&v353 = 67109632;
    v409 = v353;
    do
    {
      if (!sub_1000478CC(v9, &v413 + 1))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10006224C();
        }

        goto LABEL_97;
      }

      if (!sub_1000478CC(v9, &v413))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_1000622C4();
        }

        goto LABEL_97;
      }

      if (!sub_100047964(v9, v425, 0x10u))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10006233C();
        }

        goto LABEL_97;
      }

      if (!sub_100047834(v9, &v411))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_1000623B4();
        }

        goto LABEL_97;
      }

      v398 = HIWORD(v413);
      if (HIWORD(v413))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = v409;
          v418 = v395;
          v419 = 1024;
          v420 = v398;
          v421 = 1024;
          v422 = v413;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "rpc_bind_interface: bind_ack, context rejected, p_result_list[%u]: result: %u, reason: %u\n", buf, 0x14u);
        }
      }

      else if (sub_10004A9AC(v425, &unk_1000954A0))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10006242C(v423, v395, &v424);
        }
      }

      else
      {
        v399 = v411;
        if (v411 != 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109376;
          v418 = v395;
          v419 = 1024;
          v420 = v399;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "rpc_bind_interface: bind_ack p_result_list[%u]: ctx_version not NDR_VERS_2,  got: %u\n", buf, 0xEu);
        }

        v396 = 1;
      }

      ++v395;
    }

    while (v354 != v395);
    if ((v396 & 1) == 0)
    {
      goto LABEL_243;
    }

    if (v397 + 4 != [v9 in_fbtbd])
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000624B4(v9);
      }

      goto LABEL_108;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100062544();
    }

    v400 = sub_100047E8C(v7, [v9 negotiated:v409 max:? xmit:?frag], objc_msgSend(v9, "negotiated_max_recv_frag"));
    v18 = v400;
    if (v400)
    {
      [v400 setAssoc_group_id:v410];
      [v18 setContext_id:0];
      goto LABEL_82;
    }

    goto LABEL_33;
  }

  [v9 setSec_addr:{malloc_type_calloc(1uLL, objc_msgSend(v9, "sec_addr_len"), 0xF0B1D375uLL)}];
  if ([v9 sec_addr])
  {
    if (!sub_100047964(v9, [v9 sec_addr], objc_msgSend(v9, "sec_addr_len")))
    {
      v363 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (v363)
      {
        sub_100061FA4(v363, v364, v365, v366, v367, v368, v369, v370);
      }

      goto LABEL_97;
    }

    v348 = [v9 sec_addr_len] + 26;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100061FE0(v9);
    }

    goto LABEL_190;
  }

  v355 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  if (v355)
  {
    sub_100062060(v355, v356, v357, v358, v359, v360, v361, v362);
  }

LABEL_32:
  v18 = 0;
LABEL_33:
  v19 = 13;
LABEL_81:
  *a4 = v19;
LABEL_82:

  return v18;
}

bindrecStream *sub_100046E3C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = objc_alloc_init(bindrecStream);
  if (!v6)
  {
    v8 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v8)
    {
      sub_1000628A8(v8, v9, v10, v11, v12, v13, v14, v15);
    }

LABEL_12:
    v7 = 0;
    goto LABEL_13;
  }

  v7 = v6;
  [(bindrecStream *)v6 setTctx:v5];
  [(bindrecStream *)v7 setIn_max_recv_frag:a3];
  [(bindrecStream *)v7 setIn_max_xmit_frag:a2];
  [(bindrecStream *)v7 setSend_size:a2];
  [(bindrecStream *)v7 setRecv_size:a3];
  [(bindrecStream *)v7 setOut_base:malloc_type_malloc(a2, 0xA6B2D7FAuLL)];
  if ([(bindrecStream *)v7 out_base])
  {
    [(bindrecStream *)v7 setIn_base:malloc_type_malloc(a3, 0x17FF66DFuLL)];
    if ([(bindrecStream *)v7 in_base])
    {
      [(bindrecStream *)v7 setIn_lastfrag:0];
      goto LABEL_13;
    }

    v24 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v24)
    {
      sub_100062830(v24, v25, v26, v27, v28, v29, v30, v31);
    }

    goto LABEL_12;
  }

  v16 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  if (v16)
  {
    sub_10006286C(v16, v17, v18, v19, v20, v21, v22, v23);
  }

LABEL_13:

  return v7;
}

BOOL sub_100046F90(void *a1, char a2)
{
  v3 = a1;
  v4 = [v3 out_finger];
  v5 = [v3 send_size];
  if (v4 < v5)
  {
    v6 = [v3 out_base];
    v6[[v3 out_finger]] = a2;
    [v3 setOut_finger:{objc_msgSend(v3, "out_finger") + 1}];
  }

  return v4 < v5;
}

BOOL sub_100047020(void *a1, __int16 a2)
{
  v3 = a1;
  v4 = [v3 out_finger] + 2;
  v5 = [v3 send_size];
  if (v4 <= v5)
  {
    v6 = [v3 out_base];
    *&v6[[v3 out_finger]] = a2;
    [v3 setOut_finger:{objc_msgSend(v3, "out_finger") + 2}];
  }

  return v4 <= v5;
}

BOOL sub_1000470B4(void *a1, int a2)
{
  v3 = a1;
  v4 = [v3 out_finger] + 4;
  v5 = [v3 send_size];
  if (v4 <= v5)
  {
    v6 = [v3 out_base];
    *&v6[[v3 out_finger]] = a2;
    [v3 setOut_finger:{objc_msgSend(v3, "out_finger") + 4}];
  }

  return v4 <= v5;
}

BOOL sub_100047148(void *a1, const void *a2, unsigned int a3)
{
  v5 = a1;
  v6 = [v5 out_finger] + a3;
  v7 = [v5 send_size];
  if (v6 <= v7)
  {
    memmove([v5 out_base] + objc_msgSend(v5, "out_finger"), a2, a3);
    [v5 setOut_finger:{objc_msgSend(v5, "out_finger") + a3}];
  }

  return v6 <= v7;
}

uint64_t sub_1000471E8(void *a1)
{
  v1 = a1;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v2 = malloc_type_malloc(0x20uLL, 0x1010040BA4D407CuLL);
  *v2 = 0u;
  v2[1] = 0u;
  v3 = [v1 out_finger];
  v20 = v1;
  v4 = dispatch_group_create();
  if (v3)
  {
    v6 = 0;
    v7 = 0;
    v19 = v22;
    v8 = 1;
    *&v5 = 67109632;
    v18 = v5;
    while (1)
    {
      v9 = +[NSData dataWithBytesNoCopy:length:freeWhenDone:](NSData, "dataWithBytesNoCopy:length:freeWhenDone:", [v20 out_base] + v7, v3, 0);

      *(v2 + 4) = v3;
      dispatch_group_enter(v4);
      v10 = [v20 tctx];
      v11 = [v10 fidCtx];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v22[0] = sub_100047A64;
      v22[1] = &unk_10008C740;
      v24 = &v25;
      v12 = v4;
      v23 = v12;
      [smb_subr sendWrite:v11 Param:v2 WriteBuf:v9 CompletionHandler:v21];

      dispatch_group_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
      if (*(v26 + 6))
      {
        break;
      }

      v13 = *(v2 + 7);
      v7 += v13;
      v3 -= v13;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        *buf = v18;
        v30 = v8;
        v31 = 1024;
        v32 = v7;
        v33 = 1024;
        v34 = v3;
        _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "bindrec_flush: After pass: %u, nwritten: %u, nremain: %u\n", buf, 0x14u);
      }

      ++v8;
      v6 = v9;
      if (!v3)
      {
        goto LABEL_9;
      }
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v16 = *(v26 + 6);
      v17 = *(v2 + 6);
      *buf = 67109888;
      v30 = v3;
      v31 = 1024;
      v32 = v7;
      v33 = 1024;
      v34 = v16;
      v35 = 1024;
      v36 = v17;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "bindrec_flush: sendWrite error, nremain: %u, nwritten: %u, error: %d, ntstatus: 0x%x\n", buf, 0x1Au);
    }

    v14 = 0;
  }

  else
  {
    v9 = 0;
LABEL_9:
    [v20 setOut_finger:0];
    v14 = 1;
  }

  free(v2);
  _Block_object_dispose(&v25, 8);

  return v14;
}

void sub_100047518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_10004753C(void *a1)
{
  v1 = a1;
  v20 = 0;
  v21[0] = &v20;
  v21[1] = 0x4010000000;
  v21[2] = "";
  v22 = 0u;
  v23 = 0u;
  v17 = 0;
  v18[0] = &v17;
  v18[1] = 0x2020000000;
  v19 = 0;
  v2 = malloc_type_malloc(0x20uLL, 0x1010040BA4D407CuLL);
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 1) = [v1 in_base];
  *(v2 + 4) = [v1 recv_size];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_1000628E4(v2 + 4);
  }

  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  v4 = [v1 tctx];
  v5 = [v4 fidCtx];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100047A04;
  v12 = &unk_10008E9B0;
  v14 = &v20;
  v15 = &v17;
  v16 = v2;
  v6 = v3;
  v13 = v6;
  [smb_subr sendRead:v5 Param:v2 ReadBuf:0 CompletionHandler:&v9];

  dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v7 = *(v18[0] + 24);
  if (v7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100062960(v18, v21);
    }
  }

  else
  {
    [v1 setIn_finger:{0, v9, v10, v11, v12}];
    [v1 setIn_len:*(v21[0] + 60)];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_1000629F0(v21);
    }
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v20, 8);

  return v7 == 0;
}

void sub_10004777C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

BOOL sub_1000477A0(void *a1, _BYTE *a2)
{
  v3 = a1;
  v4 = [v3 in_finger];
  v5 = [v3 in_len];
  if (v4 < v5)
  {
    v6 = [v3 in_base];
    *a2 = v6[[v3 in_finger]];
    [v3 setIn_finger:{objc_msgSend(v3, "in_finger") + 1}];
  }

  return v4 < v5;
}

BOOL sub_100047834(void *a1, _DWORD *a2)
{
  v3 = a1;
  v4 = [v3 in_finger] + 4;
  v5 = [v3 in_len];
  if (v4 <= v5)
  {
    v6 = [v3 in_base];
    *a2 = *&v6[[v3 in_finger]];
    [v3 setIn_finger:{objc_msgSend(v3, "in_finger") + 4}];
  }

  return v4 <= v5;
}

BOOL sub_1000478CC(void *a1, _WORD *a2)
{
  v3 = a1;
  v4 = [v3 in_finger] + 2;
  v5 = [v3 in_len];
  if (v4 <= v5)
  {
    v6 = [v3 in_base];
    *a2 = *&v6[[v3 in_finger]];
    [v3 setIn_finger:{objc_msgSend(v3, "in_finger") + 2}];
  }

  return v4 <= v5;
}

BOOL sub_100047964(void *a1, void *a2, unsigned int a3)
{
  v5 = a1;
  v6 = [v5 in_finger] + a3;
  v7 = [v5 in_len];
  if (v6 <= v7)
  {
    memmove(a2, [v5 in_base] + objc_msgSend(v5, "in_finger"), a3);
    [v5 setIn_finger:{objc_msgSend(v5, "in_finger") + a3}];
  }

  return v6 <= v7;
}

void sub_100047A04(uint64_t a1, int a2)
{
  v4 = *(*(a1 + 40) + 8);
  v5 = *(a1 + 56);
  v6 = v5[1];
  *(v4 + 32) = *v5;
  *(v4 + 48) = v6;
  free(*(a1 + 56));
  *(*(*(a1 + 48) + 8) + 24) = a2;
  v7 = *(a1 + 32);

  dispatch_group_leave(v7);
}

void sub_100047A78(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

ndrrecStream *sub_100047E8C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = objc_alloc_init(ndrrecStream);
  if (v6)
  {
    v7 = v6;
    [(ndrrecStream *)v6 setTctx:v5];
    [(ndrrecStream *)v7 setSend_size:a2];
    [(ndrrecStream *)v7 setOut_base:malloc_type_calloc(1uLL, [(ndrrecStream *)v7 send_size], 0x63C73C05uLL)];
    if ([(ndrrecStream *)v7 out_base])
    {
      v8 = [(ndrrecStream *)v7 out_base];
      *v8 = 5;
      v8[2] = 0;
      *(v8 + 1) = 16;
      [(ndrrecStream *)v7 setOut_finger:24];
      [(ndrrecStream *)v7 setRecv_size:a3];
      [(ndrrecStream *)v7 setIn_base:malloc_type_malloc([(ndrrecStream *)v7 recv_size], 0xEFD9AF8uLL)];
      if ([(ndrrecStream *)v7 in_base])
      {
        goto LABEL_12;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100062A70();
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100062AB4();
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100062AF8();
  }

  v7 = 0;
LABEL_12:

  return v7;
}

uint64_t sub_100047FFC(void *a1, _BYTE *a2)
{
  v3 = a1;
  v8 = 0;
  if ([v3 in_fbtbc])
  {
    v4 = [v3 in_finger] + 1;
    if (v4 <= [v3 in_len])
    {
      v6 = [v3 in_base];
      *a2 = v6[[v3 in_finger]];
      [v3 setIn_finger:{objc_msgSend(v3, "in_finger") + 1}];
      [v3 setIn_fbtbc:{objc_msgSend(v3, "in_fbtbc") - 1}];
      goto LABEL_7;
    }
  }

  if (sub_1000480D4(v3, &v8, 1u))
  {
    *a2 = v8;
LABEL_7:
    v5 = 1;
    goto LABEL_8;
  }

  v5 = 0;
LABEL_8:

  return v5;
}

uint64_t sub_1000480D4(void *a1, char *a2, unsigned int a3)
{
  v5 = a1;
  if (a3)
  {
    do
    {
      for (i = v5; ; i = v8)
      {
        v7 = [i in_fbtbc];
        if (v7)
        {
          break;
        }

        if ([v5 in_lastfrag])
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_100063190(a3);
          }

          goto LABEL_61;
        }

        v8 = v5;
        v19 = 0;
        v20 = 0;
        v18 = 0;
        v17 = 0;
        v16 = 0;
        if ((sub_100048D78(v8, &v19, 0x10u) & 1) == 0)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_100062B3C();
          }

LABEL_60:

LABEL_61:
          v13 = 0;
          goto LABEL_62;
        }

        [v8 setIn_lastfrag:(BYTE3(v19) >> 1) & 1];
        if (v19 != 5)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_100062B80();
          }

          goto LABEL_60;
        }

        if (BYTE1(v19))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_100062BFC();
          }

          goto LABEL_60;
        }

        [v8 setIn_ndr:HIDWORD(v19)];
        if (BYTE4(v19) >= 0x10u && (BYTE4(v19) & 0xF0) != 0x10)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_100062C78();
          }

          goto LABEL_60;
        }

        if ((v19 & 0xF00000000) != 0)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_100062CF4();
          }

          goto LABEL_60;
        }

        if (WORD1(v20))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_100062D70();
          }

          goto LABEL_60;
        }

        if (BYTE4(v19) != 16)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_100062DEC();
          }

          goto LABEL_60;
        }

        v9 = HIDWORD(v20);
        if (v9 != [v8 call_id_counter])
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_100062E30(v8, &v20 + 1);
          }

          goto LABEL_60;
        }

        [v8 setIn_fbtbc:v20 - 16];
        v10 = BYTE2(v19);
        if ((BYTE2(v19) & 0xFE) == 2)
        {
          if ((sub_100048D78(v8, &v18, 4u) & 1) == 0)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_100062F1C();
            }

            goto LABEL_60;
          }

          [v8 setIn_fbtbc:{objc_msgSend(v8, "in_fbtbc") - 4}];
          if ((sub_100048D78(v8, &v17, 2u) & 1) == 0)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_100062F60();
            }

            goto LABEL_60;
          }

          [v8 setIn_fbtbc:{objc_msgSend(v8, "in_fbtbc") - 2}];
          v11 = v17;
          if (v11 != [v8 context_id])
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_100062FA4(v8, &v17);
            }

            goto LABEL_60;
          }

          if ((sub_100048D78(v8, &v16, 1u) & 1) == 0)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_100063040();
            }

            goto LABEL_60;
          }

          [v8 setIn_fbtbc:{objc_msgSend(v8, "in_fbtbc") - 1}];
          if (sub_100048D78(v8, &v16, 1u))
          {
            [v8 setIn_fbtbc:{objc_msgSend(v8, "in_fbtbc") - 1}];
            if (BYTE2(v19) == 3)
            {
              v15 = sub_100048D78(v8, &v18, 4u);
              if (v15)
              {
                [v8 setIn_fbtbc:{objc_msgSend(v8, "in_fbtbc") - 4}];
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  sub_100063114(&v18);
                }
              }

              else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                sub_1000630D0();
              }

              goto LABEL_60;
            }
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_100063084(v23, &v24);
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100062ECC(buf, v10, v22);
        }
      }

      if (v7 >= a3)
      {
        v12 = a3;
      }

      else
      {
        v12 = v7;
      }

      v13 = sub_100048D78(v5, a2, v12);
      if (!v13)
      {
        break;
      }

      a2 += v12;
      [v5 setIn_fbtbc:{objc_msgSend(v5, "in_fbtbc") - v12}];
      a3 -= v12;
    }

    while (a3);
  }

  else
  {
    v13 = 1;
  }

LABEL_62:

  return v13;
}

uint64_t sub_1000485A8(void *a1, char a2)
{
  v3 = a1;
  v4 = [v3 out_finger];
  if (v4 < [v3 send_size] || (v5 = 0, sub_10004863C(v3, 0)))
  {
    v6 = [v3 out_base];
    v6[[v3 out_finger]] = a2;
    [v3 setOut_finger:{objc_msgSend(v3, "out_finger") + 1}];
    v5 = 1;
  }

  return v5;
}

uint64_t sub_10004863C(void *a1, int a2)
{
  v3 = a1;
  v4 = [v3 out_base];
  v4[3] = 0;
  if (([v3 out_first_frag_sent] & 1) == 0)
  {
    v4[3] |= 1u;
    [v3 setOut_first_frag_sent:1];
  }

  if (a2)
  {
    v4[3] |= 2u;
  }

  *(v4 + 4) = [v3 out_finger];
  *(v4 + 5) = 0;
  [v3 setCall_id_counter:{objc_msgSend(v3, "call_id_counter") + 1}];
  *(v4 + 3) = [v3 call_id_counter];
  *(v4 + 4) = [v3 out_finger] - 24;
  *(v4 + 10) = [v3 context_id];
  *(v4 + 11) = [v3 opnum];
  v5 = v3;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v6 = dispatch_group_create();
  v7 = malloc_type_malloc(0x20uLL, 0x1010040BA4D407CuLL);
  *v7 = 0u;
  v7[1] = 0u;
  v8 = [v5 out_finger];
  v25 = v5;
  if (v8)
  {
    v10 = 0;
    v11 = 0;
    v24 = v27;
    v12 = 1;
    *&v9 = 67109632;
    v23 = v9;
    while (1)
    {
      v13 = +[NSData dataWithBytesNoCopy:length:freeWhenDone:](NSData, "dataWithBytesNoCopy:length:freeWhenDone:", [v25 out_base] + v11, v8, 0);

      *(v7 + 4) = v8;
      dispatch_group_enter(v6);
      v14 = [v25 tctx];
      v15 = [v14 fidCtx];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v27[0] = sub_10004928C;
      v27[1] = &unk_10008C740;
      v29 = &v30;
      v16 = v6;
      v28 = v16;
      [smb_subr sendWrite:v15 Param:v7 WriteBuf:v13 CompletionHandler:v26];

      dispatch_group_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
      v17 = *(v31 + 6);
      if (v17)
      {
        break;
      }

      v18 = *(v7 + 7);
      v11 += v18;
      v8 -= v18;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        *buf = v23;
        v35 = v12;
        v36 = 1024;
        v37 = v11;
        v38 = 1024;
        v39 = v8;
        _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "transport_flush: After pass: %u, nwritten: %u, nremain: %u", buf, 0x14u);
      }

      ++v12;
      v10 = v13;
      if (!v8)
      {
        goto LABEL_13;
      }
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v22 = *(v7 + 6);
      *buf = 67109888;
      v35 = v8;
      v36 = 1024;
      v37 = v11;
      v38 = 1024;
      v39 = v17;
      v40 = 1024;
      v41 = v22;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "transport_flush: sendWrite error, nremain: %u, nwritten: %u, error: %d, ntstatus: 0x%x", buf, 0x1Au);
    }

    _Block_object_dispose(&v30, 8);
    v20 = 0;
  }

  else
  {
    v13 = 0;
LABEL_13:
    free(v7);
    v19 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100063210(buf, [v25 out_finger]);
    }

    _Block_object_dispose(&v30, 8);
    [v25 setOut_finger:24];
    v20 = 1;
  }

  return v20;
}

void sub_100048A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100048A90(void *a1, _WORD *a2)
{
  v3 = a1;
  v8 = 0;
  if ([v3 in_fbtbc] >= 2)
  {
    v4 = [v3 in_finger] + 2;
    if (v4 <= [v3 in_len])
    {
      v6 = [v3 in_base];
      *a2 = *&v6[[v3 in_finger]];
      [v3 setIn_finger:{objc_msgSend(v3, "in_finger") + 2}];
      [v3 setIn_fbtbc:{objc_msgSend(v3, "in_fbtbc") - 2}];
      goto LABEL_7;
    }
  }

  if (sub_1000480D4(v3, &v8, 2u))
  {
    *a2 = v8;
LABEL_7:
    v5 = 1;
    goto LABEL_8;
  }

  v5 = 0;
LABEL_8:

  return v5;
}

uint64_t sub_100048B6C(void *a1, __int16 a2)
{
  v3 = a1;
  v4 = [v3 out_finger] + 2;
  if (v4 <= [v3 send_size] || (v5 = 0, sub_10004863C(v3, 0)))
  {
    v6 = [v3 out_base];
    *&v6[[v3 out_finger]] = a2;
    [v3 setOut_finger:{objc_msgSend(v3, "out_finger") + 2}];
    v5 = 1;
  }

  return v5;
}

uint64_t sub_100048C04(void *a1, _DWORD *a2)
{
  v3 = a1;
  v8 = 0;
  if ([v3 in_fbtbc] >= 4)
  {
    v4 = [v3 in_finger] + 4;
    if (v4 <= [v3 in_len])
    {
      v6 = [v3 in_base];
      *a2 = *&v6[[v3 in_finger]];
      [v3 setIn_finger:{objc_msgSend(v3, "in_finger") + 4}];
      [v3 setIn_fbtbc:{objc_msgSend(v3, "in_fbtbc") - 4}];
      goto LABEL_7;
    }
  }

  if (sub_1000480D4(v3, &v8, 4u))
  {
    *a2 = v8;
LABEL_7:
    v5 = 1;
    goto LABEL_8;
  }

  v5 = 0;
LABEL_8:

  return v5;
}

uint64_t sub_100048CE0(void *a1, int a2)
{
  v3 = a1;
  v4 = [v3 out_finger] + 4;
  if (v4 <= [v3 send_size] || (v5 = 0, sub_10004863C(v3, 0)))
  {
    v6 = [v3 out_base];
    *&v6[[v3 out_finger]] = a2;
    [v3 setOut_finger:{objc_msgSend(v3, "out_finger") + 4}];
    v5 = 1;
  }

  return v5;
}

uint64_t sub_100048D78(void *a1, char *a2, unsigned int a3)
{
  v4 = a1;
  if (a3)
  {
    v21 = a3;
    do
    {
      while (1)
      {
        v5 = [v4 in_len];
        v6 = [v4 in_finger];
        v7 = v5 - v6;
        if (v5 == v6)
        {
          break;
        }

        if (v21 >= v7)
        {
          v17 = v7;
        }

        else
        {
          v17 = v21;
        }

        memmove(a2, [v4 in_base] + objc_msgSend(v4, "in_finger"), v17);
        [v4 setIn_finger:{objc_msgSend(v4, "in_finger") + v17}];
        a2 += v17;
        v21 -= v17;
        if (!v21)
        {
          goto LABEL_16;
        }
      }

      v8 = v4;
      v32 = 0;
      v33 = &v32;
      v34 = 0x4010000000;
      v35 = "";
      v36 = 0u;
      v37 = 0u;
      v28 = 0;
      v29 = &v28;
      v30 = 0x2020000000;
      v31 = 0;
      v9 = dispatch_group_create();
      v10 = malloc_type_malloc(0x20uLL, 0x1010040BA4D407CuLL);
      *v10 = 0u;
      v10[1] = 0u;
      *(v10 + 1) = [v8 in_base];
      *(v10 + 4) = [v8 recv_size];
      dispatch_group_enter(v9);
      v11 = [v8 tctx];
      v12 = [v11 fidCtx];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100049234;
      v23[3] = &unk_10008E9B0;
      v25 = &v28;
      v26 = &v32;
      v27 = v10;
      v13 = v9;
      v24 = v13;
      [smb_subr sendRead:v12 Param:v10 ReadBuf:0 CompletionHandler:v23];

      dispatch_group_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
      v14 = *(v29 + 6);
      if (v14)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v15 = *(v33 + 14);
          *buf = 67109376;
          v41 = v14;
          v42 = 1024;
          v43 = v15;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "fill_input_buf: sendRead error: %d, ntstatus: 0x%x\n", buf, 0xEu);
        }
      }

      else
      {
        [v8 setIn_finger:0];
        [v8 setIn_len:*(v33 + 15)];
        v16 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          sub_10006325C(v38, [v8 in_len], v39);
        }
      }

      _Block_object_dispose(&v28, 8);
      _Block_object_dispose(&v32, 8);
    }

    while (!v14);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000632A8();
    }

    v18 = 0;
  }

  else
  {
LABEL_16:
    v18 = 1;
  }

  return v18;
}

void sub_100049114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100049144(void *a1, char *a2, unsigned int a3)
{
  v5 = a1;
  if (a3)
  {
    while (1)
    {
      v6 = [v5 send_size];
      v7 = [v5 out_finger];
      v8 = v6 - v7;
      if (v6 != v7)
      {
        if (a3 >= v8)
        {
          v9 = v8;
        }

        else
        {
          v9 = a3;
        }

        memmove([v5 out_base] + objc_msgSend(v5, "out_finger"), a2, v9);
        [v5 setOut_finger:{objc_msgSend(v5, "out_finger") + v9}];
        a2 += v9;
        a3 -= v9;
      }

      v10 = [v5 out_finger];
      if (v10 == [v5 send_size] && !sub_10004863C(v5, 0))
      {
        break;
      }

      if (!a3)
      {
        goto LABEL_10;
      }
    }

    v11 = 0;
  }

  else
  {
LABEL_10:
    v11 = 1;
  }

  return v11;
}

void sub_100049234(uint64_t a1, int a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  v3 = *(a1 + 56);
  v4 = *(*(a1 + 48) + 8);
  v5 = v3[1];
  *(v4 + 32) = *v3;
  *(v4 + 48) = v5;
  free(*(a1 + 56));
  v6 = *(a1 + 32);

  dispatch_group_leave(v6);
}

void *sub_100049470(void *a1)
{
  v1 = a1;
  v13 = 0;
  v2 = [transportCtx alloc];
  v3 = [v1 pd];
  v4 = [v1 serverName];
  v5 = -[transportCtx initWithPiston:ServerName:ServerMaxRead:ServerMaxWrite:ServerMaxTransact:ShareID:](v2, "initWithPiston:ServerName:ServerMaxRead:ServerMaxWrite:ServerMaxTransact:ShareID:", v3, v4, [v1 serverMaxRead], objc_msgSend(v1, "serverMaxWrite"), objc_msgSend(v1, "serverMaxTransact"), objc_msgSend(v1, "shareID"));

  if (v5)
  {
    v6 = sub_10004967C(v5, @"srvsvc");
    v12 = v6;
    if (v6)
    {
      v7 = v6;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100063338();
      }

      v8 = 0;
    }

    else
    {
      v9 = sub_100045E38(v5, &unk_1000954C0, dword_1000954E0, &v13);
      if (v9)
      {
        v10 = [v1 serverName];
        v8 = sub_1000499A4(v9, [v10 UTF8String], &v12);

        if (!v8)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_1000633B0(&v12);
          }

          v8 = 0;
        }
      }

      else
      {
        sub_10004A9F8(v13, "Failed to bind to srvsvc interface:");
        v8 = 0;
        v12 = sub_10004ACAC(v13);
      }

      sub_100049CEC(v5);
      v7 = v12;
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100063428();
    }

    v8 = 0;
    v7 = 12;
  }

  [v1 setStatus:v7];

  return v8;
}

uint64_t sub_10004967C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v30 = 0;
  v31[0] = &v30;
  v31[1] = 0x11810000000;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v31[2] = "";
  v47 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_100049E58;
  v27 = sub_100049E68;
  v28 = 0;
  v20 = 0;
  v21[0] = &v20;
  v21[1] = 0x2020000000;
  v22 = 0;
  v5 = dispatch_group_create();
  v6 = malloc_type_malloc(0xF8uLL, 0x10800407AD7242AuLL);
  *v6 = 0u;
  v6[1] = 0u;
  *(v6 + 30) = 0;
  v6[13] = 0u;
  v6[14] = 0u;
  v6[11] = 0u;
  v6[12] = 0u;
  v6[9] = 0u;
  v6[10] = 0u;
  v6[7] = 0u;
  v6[8] = 0u;
  v6[5] = 0u;
  v6[6] = 0u;
  v6[3] = 0u;
  v6[4] = 0u;
  v6[2] = 0u;
  *(v6 + 12) = xmmword_10006D620;
  *(v6 + 7) = 1;
  dispatch_group_enter(v5);
  v7 = [v3 pd];
  v8 = [v3 shareID];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100049E70;
  v14[3] = &unk_10008C808;
  v16 = &v20;
  v17 = &v23;
  v18 = &v30;
  v19 = v6;
  v9 = v5;
  v15 = v9;
  [smb_subr sendCreateFile:v7 ShareID:v8 FileName:v4 StreamName:0 Param:v6 CompletionHandler:v14];

  dispatch_group_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  if (v24[5])
  {
    [v3 setFidCtx:?];
  }

  else
  {
    v10 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v11 = v4;
      sub_10006346C([v4 UTF8String], v21, v31, buf);
    }
  }

  v12 = *(v21[0] + 24);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v23, 8);

  _Block_object_dispose(&v30, 8);
  return v12;
}

void sub_100049968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void *sub_1000499A4(void *a1, const char *a2, _DWORD *a3)
{
  v5 = a1;
  v11 = 0;
  v12 = 0;
  sub_100047FF4(v5, 15);
  v10 = sub_10004ACD0(a2, &v12, &v11 + 1, &v11);
  if (v10)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000634DC();
    }

    goto LABEL_50;
  }

  if ((sub_100048CE0(v5, 1) & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100063554();
    }

    goto LABEL_50;
  }

  if ((sub_100048CE0(v5, v11) & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100063598();
    }

    goto LABEL_50;
  }

  if ((sub_100048CE0(v5, 0) & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000635DC();
    }

    goto LABEL_50;
  }

  if ((sub_100048CE0(v5, v11) & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100063620();
    }

    goto LABEL_50;
  }

  if ((sub_100049144(v5, v12, HIDWORD(v11)) & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100063664();
  }

  if ((v11 & 0x300000000) != 0)
  {
    v6 = 0;
    v7 = BYTE4(v11) & 3 | 0xFFFFFFFC;
    while ((sub_1000485A8(v5, 0) & 1) != 0)
    {
      if (v7 == --v6)
      {
        goto LABEL_15;
      }
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000636A8();
    }

    goto LABEL_50;
  }

LABEL_15:
  if ((sub_100048CE0(v5, 1) & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100063720();
    }

    goto LABEL_50;
  }

  if ((sub_100048CE0(v5, 1) & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100063764();
    }

    goto LABEL_50;
  }

  if ((sub_100048CE0(v5, 1) & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000637A8();
    }

    goto LABEL_50;
  }

  if ((sub_100048CE0(v5, 0) & 1) == 0)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_50;
    }

LABEL_41:
    sub_1000637EC();
    goto LABEL_50;
  }

  if ((sub_100048CE0(v5, 0) & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100063830();
    }

    goto LABEL_50;
  }

  if ((sub_100048CE0(v5, -1) & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100063874();
    }

    goto LABEL_50;
  }

  if ((sub_100048CE0(v5, 0) & 1) == 0)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_50;
    }

    goto LABEL_41;
  }

  if (sub_10004922C(v5))
  {
    v8 = sub_100049F4C(v5, &v10);
    goto LABEL_51;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000638B8();
  }

LABEL_50:
  v8 = 0;
LABEL_51:
  if (v12)
  {
    free(v12);
  }

  *a3 = v10;

  return v8;
}

uint64_t sub_100049CEC(void *a1)
{
  v1 = a1;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v2 = dispatch_group_create();
  v3 = malloc_type_malloc(0x40uLL, 0x100004022DBA428uLL);
  v3[2] = 0u;
  v3[3] = 0u;
  *v3 = 0u;
  v3[1] = 0u;
  dispatch_group_enter(v2);
  v4 = [v1 fidCtx];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100049F38;
  v8[3] = &unk_10008C740;
  v10 = &v11;
  v5 = v2;
  v9 = v5;
  [smb_subr sendClose:v4 Param:v3 GetPostAttrs:0 CompletionHandler:v8];

  dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  free(v3);
  v6 = *(v12 + 6);

  _Block_object_dispose(&v11, 8);
  return v6;
}

void sub_100049E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100049E58(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100049E70(uint64_t a1, int a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v19 = obj;
  v5 = *(a1 + 64);
  v6 = *(*(a1 + 56) + 8);
  v8 = v5[13];
  v7 = v5[14];
  v9 = v5[12];
  *(v6 + 272) = *(v5 + 30);
  *(v6 + 240) = v8;
  *(v6 + 256) = v7;
  *(v6 + 224) = v9;
  v10 = v5[11];
  v12 = v5[8];
  v11 = v5[9];
  *(v6 + 192) = v5[10];
  *(v6 + 208) = v10;
  *(v6 + 160) = v12;
  *(v6 + 176) = v11;
  v13 = v5[7];
  v15 = v5[4];
  v14 = v5[5];
  *(v6 + 128) = v5[6];
  *(v6 + 144) = v13;
  *(v6 + 96) = v15;
  *(v6 + 112) = v14;
  v16 = *v5;
  v17 = v5[1];
  v18 = v5[3];
  *(v6 + 64) = v5[2];
  *(v6 + 80) = v18;
  *(v6 + 32) = v16;
  *(v6 + 48) = v17;
  free(*(a1 + 64));
  dispatch_group_leave(*(a1 + 32));
}

void *sub_100049F4C(void *a1, int *a2)
{
  v3 = a1;
  v21 = 0;
  count = 0;
  v20 = 0;
  if ((sub_100048C04(v3, &count) & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000638FC();
    }

    goto LABEL_34;
  }

  if (count != 1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100063940(&count);
    }

    goto LABEL_37;
  }

  if ((sub_100048C04(v3, &count) & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000639B8();
    }

    goto LABEL_34;
  }

  if (count != 1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000639FC(&count);
    }

    goto LABEL_37;
  }

  if ((sub_100048C04(v3, &count) & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100063A74();
    }

    goto LABEL_34;
  }

  if (!count)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100064324();
    }

    goto LABEL_37;
  }

  if ((sub_100048C04(v3, &count + 1) & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100063AB8();
    }

    goto LABEL_34;
  }

  if (!HIDWORD(count))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000642E0();
    }

    goto LABEL_37;
  }

  if ((sub_100048C04(v3, &count) & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100063AFC();
    }

    goto LABEL_34;
  }

  if (!count)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10006429C();
    }

LABEL_37:
    v5 = 0;
    v14 = 72;
    goto LABEL_38;
  }

  if ((sub_100048C04(v3, &count) & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100063B40();
    }

LABEL_34:
    v5 = 0;
    v14 = 5;
    goto LABEL_38;
  }

  if (count != HIDWORD(count) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100063B84(&count, &count + 1);
  }

  v4 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040D5A9D86FuLL);
  if (!v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100064258();
    }

    goto LABEL_62;
  }

  v5 = v4;
  v6 = malloc_type_calloc(HIDWORD(count), 0x18uLL, 0x101004023BA6C86uLL);
  v5[1] = v6;
  if (!v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100064214();
    }

    free(v5);
LABEL_62:
    v5 = 0;
    v14 = 12;
    goto LABEL_38;
  }

  v7 = HIDWORD(count);
  *v5 = HIDWORD(count);
  if (v7)
  {
    v8 = 0;
    v9 = 8;
    while (1)
    {
      if ((sub_100048C04(v3, &count) & 1) == 0)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100063C10();
        }

        goto LABEL_86;
      }

      if (!count)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100063F58();
        }

        goto LABEL_89;
      }

      if ((sub_100048C04(v3, &count) & 1) == 0)
      {
        break;
      }

      *(v5[1] + v9) = count;
      if ((sub_100048C04(v3, &count) & 1) == 0)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100063D00();
        }

LABEL_86:
        v14 = 5;
        goto LABEL_90;
      }

      if (!count)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100063EE0();
        }

LABEL_89:
        v14 = 72;
        goto LABEL_90;
      }

      ++v8;
      v9 += 24;
      if (v8 >= HIDWORD(count))
      {
        if (!HIDWORD(count))
        {
          goto LABEL_63;
        }

        v10 = 0;
        v11 = 0;
        while (1)
        {
          v20 = 0;
          v21 = 0;
          v12 = sub_10004A578(v3, v11, &v21, &v20);
          if (v12)
          {
            break;
          }

          if (!v20)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_100063E68();
            }

            goto LABEL_89;
          }

          *(v5[1] + v10) = v21;
          v20 = 0;
          v21 = 0;
          v13 = sub_10004A578(v3, v11, &v21, &v20);
          if (v13)
          {
            v14 = v13;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_100063DF0();
            }

            goto LABEL_90;
          }

          *(v5[1] + v10 + 16) = v21;
          ++v11;
          v10 += 24;
          if (v11 >= HIDWORD(count))
          {
            v14 = 0;
            goto LABEL_64;
          }
        }

        v14 = v12;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100063D78();
        }

LABEL_90:
        sub_10004A84C(v5);
        v5 = 0;
        goto LABEL_38;
      }
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100063C88();
    }

    goto LABEL_86;
  }

LABEL_63:
  v14 = 5;
LABEL_64:
  if ((sub_100048C04(v3, &count) & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100063FD0();
    }

    goto LABEL_90;
  }

  if ((sub_100048C04(v3, &count) & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100064014();
    }

    goto LABEL_90;
  }

  if (count)
  {
    v16 = sub_100048C04(v3, &count);
    v17 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if ((v16 & 1) == 0)
    {
      if (v17)
      {
        sub_100064058();
      }

      goto LABEL_90;
    }

    if (v17)
    {
      sub_10006409C(&count);
    }
  }

  if ((sub_100048C04(v3, &count) & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100064114();
    }

    goto LABEL_90;
  }

  v18 = count;
  v19 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  if (v18)
  {
    if (v19)
    {
      sub_100064158(&count);
    }

    goto LABEL_90;
  }

  if (v19)
  {
    sub_1000641D0();
  }

  v14 = 0;
LABEL_38:
  *a2 = v14;

  return v5;
}

uint64_t sub_10004A578(void *a1, uint64_t a2, void *a3, _DWORD *a4)
{
  v6 = a1;
  memset(numBytes, 0, sizeof(numBytes));
  v18 = 0;
  v17 = 0;
  if ((sub_100048C04(v6, &numBytes[2]) & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100064368();
    }

    goto LABEL_17;
  }

  if ((sub_100048C04(v6, &numBytes[2]) & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000643E0();
    }

    goto LABEL_17;
  }

  if ((sub_100048C04(v6, numBytes) & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100064458();
    }

    goto LABEL_17;
  }

  if (!numBytes[0])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10006472C(numBytes);
    }

    v11 = 72;
    goto LABEL_18;
  }

  v7 = 2 * numBytes[0];
  numBytes[0] = v7;
  if (v7 <= 2)
  {
    v11 = 0;
    if (!v7)
    {
      *a3 = v17;
      *a4 = numBytes[1];
      goto LABEL_18;
    }

    while ((sub_100047FFC(v6, &v18) & 1) != 0)
    {
      LODWORD(v11) = v11 + 1;
      v13 = numBytes[0];
      if (v11 >= numBytes[0])
      {
        v9 = 0;
        goto LABEL_35;
      }
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000644D0();
    }

    goto LABEL_17;
  }

  v8 = malloc_type_calloc(1uLL, v7, 0xB798758AuLL);
  if (!v8)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000646B4();
    }

    v11 = 12;
    goto LABEL_18;
  }

  v9 = v8;
  if ((sub_1000480D4(v6, v8, numBytes[0]) & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100064548(numBytes);
    }

LABEL_17:
    v11 = 5;
    goto LABEL_18;
  }

  v10 = sub_100032DB4(v9, numBytes[0], &v17, &numBytes[1]);
  if (v10)
  {
    v11 = v10;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000645C4();
    }

    goto LABEL_18;
  }

  v13 = numBytes[0];
LABEL_35:
  v14 = v13 & 3;
  if (v14)
  {
    v15 = 0;
    v16 = v14 | 0xFFFFFFFC;
    while ((sub_100047FFC(v6, &v18) & 1) != 0)
    {
      if (v16 == --v15)
      {
        goto LABEL_39;
      }
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10006463C();
    }

    goto LABEL_17;
  }

LABEL_39:
  *a3 = v17;
  *a4 = numBytes[1];
  if (v9)
  {
    free(v9);
  }

  v11 = 0;
LABEL_18:

  return v11;
}

void sub_10004A84C(unsigned int *a1)
{
  if (*a1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(a1 + 1);
      v5 = *(v4 + v2);
      if (v5)
      {
        free(v5);
        v4 = *(a1 + 1);
      }

      v6 = *(v4 + v2 + 16);
      if (v6)
      {
        free(v6);
      }

      ++v3;
      v2 += 24;
    }

    while (v3 < *a1);
  }

  free(*(a1 + 1));

  free(a1);
}

void sub_10004A8E4(unsigned int *a1, uint64_t a2)
{
  if (a2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000647A8();
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100064824(a1);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100064898(a1);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006490C(a1);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100064980(a1);
  }
}

void sub_10004A9F8(int a1, uint64_t a2)
{
  if (a2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000647A8();
  }

  switch(a1)
  {
    case 0:
      v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (v3)
      {
        sub_10006524C(v3, v4, v5, v6, v7, v8, v9, v10);
      }

      break;
    case 1:
      v91 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (v91)
      {
        sub_1000651D4(v91, v92, v93, v94, v95, v96, v97, v98);
      }

      break;
    case 2:
      v59 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (v59)
      {
        sub_10006515C(v59, v60, v61, v62, v63, v64, v65, v66);
      }

      break;
    case 3:
      v75 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (v75)
      {
        sub_1000650E4(v75, v76, v77, v78, v79, v80, v81, v82);
      }

      break;
    case 4:
      v35 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (v35)
      {
        sub_10006506C(v35, v36, v37, v38, v39, v40, v41, v42);
      }

      break;
    case 5:
      v107 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (v107)
      {
        sub_100064FF4(v107, v108, v109, v110, v111, v112, v113, v114);
      }

      break;
    case 6:
      v123 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (v123)
      {
        sub_100064F7C(v123, v124, v125, v126, v127, v128, v129, v130);
      }

      break;
    case 7:
      v83 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (v83)
      {
        sub_100064F04(v83, v84, v85, v86, v87, v88, v89, v90);
      }

      break;
    case 8:
      v139 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (v139)
      {
        sub_100064E8C(v139, v140, v141, v142, v143, v144, v145, v146);
      }

      break;
    case 9:
      v51 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (v51)
      {
        sub_100064E14(v51, v52, v53, v54, v55, v56, v57, v58);
      }

      break;
    case 10:
      v131 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (v131)
      {
        sub_100064D9C(v131, v132, v133, v134, v135, v136, v137, v138);
      }

      break;
    case 11:
      v27 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (v27)
      {
        sub_100064D24(v27, v28, v29, v30, v31, v32, v33, v34);
      }

      break;
    case 12:
      v43 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (v43)
      {
        sub_100064CAC(v43, v44, v45, v46, v47, v48, v49, v50);
      }

      break;
    case 13:
      v115 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (v115)
      {
        sub_100064C34(v115, v116, v117, v118, v119, v120, v121, v122);
      }

      break;
    case 14:
      v19 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (v19)
      {
        sub_100064BBC(v19, v20, v21, v22, v23, v24, v25, v26);
      }

      break;
    case 15:
      v67 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (v67)
      {
        sub_100064B44(v67, v68, v69, v70, v71, v72, v73, v74);
      }

      break;
    case 16:
      v11 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (v11)
      {
        sub_100064ACC(v11, v12, v13, v14, v15, v16, v17, v18);
      }

      break;
    case 17:
      v99 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (v99)
      {
        sub_100064A54(v99, v100, v101, v102, v103, v104, v105, v106);
      }

      break;
    default:
      return;
  }
}

uint64_t sub_10004ACAC(int a1)
{
  if ((a1 - 1) > 0x10)
  {
    return 0;
  }

  else
  {
    return dword_10006D638[a1 - 1];
  }
}

uint64_t sub_10004ACD0(const char *a1, UInt8 **a2, _DWORD *a3, _DWORD *a4)
{
  v8 = strnlen(a1, 0x300uLL);
  v9 = malloc_type_malloc(v8 + 3, 0x1DA3907CuLL);
  if (v9)
  {
    v10 = v9;
    *v9 = 23644;
    strncpy(v9 + 2, a1, v8 + 1);
    v11 = sub_100032F68(v10, a2, a3, a4, 1);
    free(v10);
    return v11;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000652C0();
    }

    return 12;
  }
}

void sub_10004AD90(const char *a1, unsigned __int8 *a2, unsigned int a3)
{
  if (a1)
  {
    puts(a1);
  }

  v5 = a3 & 7;
  if (a3 >= 8)
  {
    v6 = a3 >> 3;
    do
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v7 = *a2;
        v8 = a2[1];
        v9 = a2[2];
        v10 = a2[3];
        v11 = a2[4];
        v12 = a2[5];
        v13 = a2[6];
        v14 = a2[7];
        *buf = 67110912;
        v16 = v7;
        v17 = 1024;
        v18 = v8;
        v19 = 1024;
        v20 = v9;
        v21 = 1024;
        v22 = v10;
        v23 = 1024;
        v24 = v11;
        v25 = 1024;
        v26 = v12;
        v27 = 1024;
        v28 = v13;
        v29 = 1024;
        v30 = v14;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%02x %02x %02x %02x %02x %02x %02x %02x\n", buf, 0x32u);
      }

      a2 += 8;
      --v6;
    }

    while (v6);
  }

  if ((a3 & 7) != 0)
  {
    do
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100065344(buf, a2, &v16);
      }

      ++a2;
      --v5;
    }

    while (v5);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100065394();
    }
  }
}

void sub_10004AF44(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void sub_10004B49C(unsigned int *a1, void *a2)
{
  v3 = a2;
  v4 = *a1;
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 8;
    do
    {
      v9 = *(a1 + 1);
      v10 = (v9 + v8 - 8);
      if (*v10)
      {
        v11 = *(v9 + v8) & 0xF;
        v12 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
        if (v11)
        {
          if (v12)
          {
            sub_100065618(v14, v11, v15);
          }
        }

        else
        {
          if (v12)
          {
            sub_100065664(buf, v10, &v17);
          }

          v13 = [[NSString alloc] initWithUTF8String:*v10];

          [v3 addObject:v13];
          ++v6;
          v7 = v13;
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_1000656B4(v18, v5, &v19);
      }

      ++v5;
      v8 += 24;
    }

    while (v4 != v5);
  }
}

void sub_10004B60C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 containsString:@"$"])
  {
    [*(a1 + 32) addObject:v3];
  }
}

void sub_10004B66C(int *a1)
{
  v6 = *a1;
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_10004B700(void *a1)
{
  [a1 processIdentifier];
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10004B91C(int *a1)
{
  v6 = *a1;
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10004B9E0()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10004BA58()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10004BADC()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10004BB54(uint64_t *a1)
{
  v1 = *a1;
  sub_10000427C();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10004BBD0(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 56);
  v3 = *(*(*a2 + 8) + 24);
  sub_10000427C();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

void sub_10004BC68(void *a1, char a2, _DWORD *a3)
{
  v6 = [a1 name];
  if (a2)
  {
    bzero(a3, 0xF0uLL);
  }

  else
  {
    [a1 attributes];
    v7 = a3[30];
  }

  sub_100002178();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x12u);
}

void sub_10004BD44()
{
  sub_100004270();
  sub_100004248();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10004BE48(uint64_t a1)
{
  sub_100004260(a1);
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10004BEC0(uint64_t a1)
{
  sub_100004260(a1);
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10004BF38(uint64_t a1)
{
  sub_100004260(a1);
  sub_100004270();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10004C07C()
{
  sub_100004254();
  sub_100004248();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10004C0F4()
{
  sub_100004254();
  sub_100004248();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10004C1F4(uint64_t *a1)
{
  v1 = *a1;
  sub_10000427C();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10004C27C()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10004C2F4(uint64_t *a1)
{
  v1 = *a1;
  sub_10000427C();
  sub_100004248();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10004C3B4(uint64_t a1, int *a2)
{
  [*(a1 + 32) entryIndex];
  v8 = *a2;
  sub_100002178();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_10004C454(uint64_t a1, uint8_t *buf, int a3)
{
  v3 = *(*a1 + 24);
  *buf = 67109376;
  *(buf + 1) = a3;
  *(buf + 4) = 1024;
  *(buf + 10) = v3;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "pipeOpen: channel: %u, waitOnPipe error: %d\n", buf, 0xEu);
}

void sub_10004C4B4(uint64_t a1, int a2, uint64_t a3)
{
  *a1 = 67109120;
  *(a1 + 4) = a2;
  sub_100008F44(&_mh_execute_header, &_os_log_default, a3, "pipeOpen: channel: %u, warning, pipe is already open\n", a1);
}

void sub_10004C4F8(uint64_t a1, uint64_t a2)
{
  sub_100008F30(a1, a2);
  sub_100008F0C(v3, v4, v5, v6, 1.5048e-36);
  sub_100008FAC(&_mh_execute_header, &_os_log_default, v7, "pipeWait: cannot wait, channel: %u pipe %@, sendPipeWait error: %d\n", v8);
}

void sub_10004C544(uint64_t a1, uint64_t a2)
{
  sub_100008F30(a1, a2);
  sub_100008F0C(v3, v4, v5, v6, 1.5048e-36);
  sub_100008FAC(&_mh_execute_header, &_os_log_default, v7, "pipeClose: channel: %u pipe %@, sendClose error: %d\n", v8);
}

void sub_10004C590(void *a1, uint64_t a2, int a3)
{
  sub_100008F94(a1, a2, a3, 1.5047e-36);
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "pipeTransceive: channel: %u pipe %@ is not open", v4, 0x12u);
}

void sub_10004C5E8(uint64_t a1, uint64_t a2)
{
  sub_100008F30(a1, a2);
  sub_100008F0C(v3, v4, v5, v6, 1.5048e-36);
  sub_100008FAC(&_mh_execute_header, &_os_log_default, v7, "pipeTransceive: channel: %u pipe %@, sendPipeTransceive error: %d", v8);
}

void sub_10004C634(void *a1, uint64_t a2, int a3)
{
  sub_100008F94(a1, a2, a3, 1.5047e-36);
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "pipeWrite: channel: %u pipe %@ is not open", v4, 0x12u);
}

void sub_10004C68C(uint64_t a1, uint64_t a2)
{
  sub_100008F30(a1, a2);
  sub_100008F0C(v3, v4, v5, v6, 1.5048e-36);
  sub_100008FAC(&_mh_execute_header, &_os_log_default, v7, "pipeWrite: channel: %u pipe %@, sendWrite error: %d", v8);
}

void sub_10004CB04()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10004CC48()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10004CD04()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10004CD7C()
{
  sub_100008EC4();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10004CDF4()
{
  sub_100008EC4();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10004CE6C()
{
  sub_100008EC4();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10004CEE4()
{
  sub_100008EC4();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10004CF5C()
{
  sub_100008EC4();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10004CFD4(unsigned int *a1)
{
  v1 = *a1;
  sub_100008EF4();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_10004D050()
{
  sub_100008EC4();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10004D0C8(void *a1)
{
  [a1 qStatus];
  sub_100008EDC();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xEu);
}

void sub_10004D150()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10004D1C8()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10004D240()
{
  sub_100008EC4();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10004D2B8()
{
  sub_100008EC4();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10004D330()
{
  sub_100008EC4();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10004D3A8()
{
  sub_100008EC4();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10004D420()
{
  sub_100008EC4();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10004D498()
{
  sub_100008EC4();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10004D510(unsigned int *a1)
{
  v1 = *a1;
  sub_100008EF4();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_10004D58C()
{
  sub_100008EC4();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10004D604(void *a1)
{
  [a1 qStatus];
  sub_100008EDC();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xEu);
}

void sub_10004D68C()
{
  sub_100008EC4();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10004D704()
{
  sub_100008EC4();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10004D77C()
{
  sub_100008EC4();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10004D7F4()
{
  sub_100008EC4();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10004D86C()
{
  sub_100008EC4();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10004D8E4()
{
  sub_100008EC4();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10004D95C(unsigned int *a1)
{
  v1 = *a1;
  sub_100008EF4();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_10004D9D8()
{
  sub_100008EC4();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10004DA50(void *a1)
{
  [a1 qStatus];
  sub_100008EDC();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xEu);
}

void sub_10004DAD8()
{
  sub_100008EC4();
  sub_100008F7C();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x14u);
}

void sub_10004DB54()
{
  sub_100008EC4();
  sub_100008F7C();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x14u);
}

void sub_10004DBD0()
{
  sub_100008EC4();
  sub_100008F7C();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x14u);
}

void sub_10004DC4C(void *a1)
{
  v1 = [a1 whdr];
  [v1 status];
  sub_100008F5C();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x14u);
}

void sub_10004DCF0()
{
  sub_100008EC4();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10004DD68()
{
  sub_100008EC4();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10004DDE0()
{
  sub_100008EC4();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10004DE58()
{
  sub_100008EF4();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10004DED4()
{
  sub_100008EC4();
  sub_100008F7C();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x14u);
}

void sub_10004DF50()
{
  sub_100008EC4();
  sub_100008F7C();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x14u);
}

void sub_10004DFCC()
{
  sub_100008EC4();
  sub_100008F7C();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x14u);
}

void sub_10004E048(void *a1)
{
  v1 = [a1 whdr];
  [v1 status];
  sub_100008F5C();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x14u);
}

void sub_10004E0EC()
{
  sub_100008EC4();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10004E164()
{
  sub_100008EF4();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10004E1E0()
{
  sub_100008EF4();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10004E25C()
{
  sub_100008EC4();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10004E2D4()
{
  sub_100008EC4();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10004E34C()
{
  sub_100008EC4();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10004E3C4(void *a1)
{
  v1 = [a1 whdr];
  [v1 status];
  sub_100008EDC();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_10004E45C()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10004E4D4()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10004E54C()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10004E5C4()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10004E63C()
{
  sub_100008EC4();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10004E6B4()
{
  sub_100008EC4();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10004E72C(void *a1)
{
  v1 = [a1 whdr];
  [v1 status];
  sub_100008EDC();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_10004E7C4()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10004E83C()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10004E8B4()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10004E92C()
{
  sub_100008EC4();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10004E9A4()
{
  sub_100008EC4();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10004EA1C()
{
  sub_100008EC4();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10004EA94(void *a1)
{
  [a1 msgid];
  sub_100008EDC();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xEu);
}

void sub_10004EB1C(void *a1)
{
  [a1 status];
  sub_100008EDC();
  sub_100002178();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xEu);
}

void sub_10004EBA4()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10004EC1C()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10004EC94()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10004ED0C()
{
  sub_100008EC4();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10004ED84()
{
  sub_100008EC4();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10004EDFC()
{
  sub_100008EC4();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10004EE74()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10004EEEC()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10004EF64()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10004EFDC()
{
  sub_100008EC4();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10004F054()
{
  sub_100008EC4();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10004F0CC()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10004F144()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10004F1BC()
{
  sub_100008EC4();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10004F234()
{
  sub_100008EC4();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10004F2AC()
{
  sub_100008EC4();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10004F324(void *a1)
{
  v1 = [a1 whdr];
  [v1 status];
  sub_100008EDC();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_10004F3BC(void *a1)
{
  v1 = [a1 whdr];
  [v1 status];
  sub_100008EDC();
  sub_100004248();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_10004F454()
{
  sub_100004254();
  sub_100004248();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10004F4CC()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10004F544()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10004F5BC()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10004F634()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10004F6AC()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10004F724()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10004F79C()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10004F814()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10004F88C()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10004F904()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10004F97C()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10004FB74(uint64_t a1)
{
  v6 = *(a1 + 24);
  sub_100004248();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10004FBF4(uint64_t a1)
{
  v6 = *(a1 + 12);
  sub_100004248();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10004FC74(unsigned int *a1)
{
  v1 = *a1;
  sub_100008EF4();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_10004FCF0()
{
  sub_10002AB08();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004FDAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_100008EF4();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_10004FE28(unsigned int *a1)
{
  v1 = *a1;
  sub_100008EF4();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_10004FEA4()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10004FF1C(unsigned int *a1)
{
  v1 = *a1;
  sub_100008EF4();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_10004FF98(uint64_t a1)
{
  v6 = *(a1 + 16);
  sub_100004248();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100050018(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 24);
  sub_10002AAF4();
  sub_100004248();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_10005009C(void *a1)
{
  v1 = [a1 shareName];
  sub_10002AB08();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10005012C()
{
  sub_100004254();
  sub_100002178();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005022C(void *a1)
{
  [a1 serverName];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_10002ABD4() shareName];
  sub_10002A9C0();
  sub_100004248();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000502D0(void *a1)
{
  [a1 serverName];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_10002ABD4() shareName];
  sub_10002A9C0();
  sub_100002178();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100050374(id *a1)
{
  [*a1 shareName];
  objc_claimAutoreleasedReturnValue();
  sub_10002ABE0();
  sub_10002AA94();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_10005041C(uint64_t a1)
{
  v1 = [sub_10002ACE8(a1) shareName];
  sub_10002AB3C();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1000504C0(id *a1)
{
  [*a1 shareName];
  objc_claimAutoreleasedReturnValue();
  sub_10002AC54();
  v3 = *(v2 + 180);
  sub_10002AA94();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_100050574(uint64_t a1)
{
  [sub_10002ACE8(a1) serverName];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_10002AD44() shareName];
  sub_10002A9C0();
  sub_100002178();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100050618()
{
  sub_10002AB30();
  [*v2 serverName];
  objc_claimAutoreleasedReturnValue();
  [sub_10002ACDC() shareName];
  objc_claimAutoreleasedReturnValue();
  sub_10002ABE0();
  sub_10002AA94();
  sub_100002178();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_1000506D0()
{
  sub_10002AB30();
  [*v2 serverName];
  objc_claimAutoreleasedReturnValue();
  [sub_10002ACDC() shareName];
  objc_claimAutoreleasedReturnValue();
  sub_10002ABE0();
  sub_10002AA94();
  sub_100002178();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void sub_100050788(uint64_t a1)
{
  [sub_10002ACE8(a1) serverName];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_10002AD44() shareName];
  sub_10002A9C0();
  sub_100002178();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10005082C(void *a1)
{
  [a1 serverName];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_10002ABD4() shareName];
  sub_10002A9C0();
  sub_100002178();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000508D0(void *a1)
{
  [a1 serverName];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_10002ABD4() shareName];
  sub_10002A9C0();
  sub_100002178();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100050974(void *a1)
{
  [a1 serverName];
  objc_claimAutoreleasedReturnValue();
  v3 = [sub_10002ABD4() shareName];
  [a1 openFileCounter];
  sub_10002A9D8();
  sub_10002AD24();
  sub_100004248();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);
}

void sub_100050A2C(void *a1)
{
  [a1 serverName];
  objc_claimAutoreleasedReturnValue();
  v3 = [sub_10002ABD4() shareName];
  [a1 pendingChangeNotifyCount];
  sub_10002A9D8();
  sub_10002AD24();
  sub_100004248();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);
}

void sub_100050AE4(void *a1)
{
  [a1 serverName];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_10002ABD4() shareName];
  sub_10002A9C0();
  sub_100002178();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100050B88(void *a1)
{
  [a1 serverName];
  objc_claimAutoreleasedReturnValue();
  v3 = [sub_10002ABD4() shareName];
  [a1 connState];
  sub_10002A9D8();
  sub_10002AB48();
  sub_100004248();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_100050C48()
{
  sub_10002AB30();
  [*v3 serverName];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_10002ACDC() shareName];
  v5 = *v0;
  [*v1 openFileCounter];
  sub_10002AA60();
  sub_10002ACC0();
  sub_100004248();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x2Au);
}

void sub_100050D08()
{
  sub_10002AB30();
  [*v3 serverName];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_10002ACDC() shareName];
  v5 = *v0;
  [*v1 pendingChangeNotifyCount];
  sub_10002AA60();
  sub_10002ACC0();
  sub_100002178();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x2Au);
}

void sub_100050DC8(uint64_t a1)
{
  [sub_10002ACE8(a1) serverName];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_10002AD44() shareName];
  sub_10002A9C0();
  sub_100002178();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100050EB0()
{
  sub_10002AA74();
  sub_10002A8CC(v2, v3, v4, v5, 5.7781e-34);
  sub_10002ABF4(&_mh_execute_header, &_os_log_default, v6, "invalidateFileNodesForConnection: server: %@, share: %@, checkServerConnection error: %d", v7);
}

void sub_100050F00(void *a1)
{
  [a1 serverName];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_10002ABD4() shareName];
  sub_10002A9C0();
  sub_100002178();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100050FA4()
{
  sub_10002AB30();
  v2 = [v1 serverName];
  v3 = [v0 shareName];
  sub_10002A94C();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void sub_100051054()
{
  sub_10002AA74();
  sub_10002A8CC(v2, v3, v4, v5, 5.7781e-34);
  sub_10002ABF4(&_mh_execute_header, &_os_log_default, v6, "LILookup: server: %@, share: %@, checkServerConnection error: %d", v7);
}

void sub_1000511AC()
{
  sub_10002AB30();
  [sub_10002AB14(v1) name];
  objc_claimAutoreleasedReturnValue();
  sub_10002AB60();
  sub_10002A8F0();
  sub_100002178();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_10005124C(uint64_t a1, uint64_t *a2)
{
  v3 = [sub_10002AAE0(a1) name];
  v4 = *a2;
  sub_10002A970();
  sub_100002178();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_1000512E8(uint64_t a1)
{
  v2 = [sub_10002AB24(*(a1 + 72)) name];
  v3 = *(a1 + 32);
  sub_10002A970();
  sub_10002AB48();
  sub_100002178();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x1Cu);
}