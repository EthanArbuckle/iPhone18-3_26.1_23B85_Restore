void sub_100000DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100001130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_100001148(uint64_t a1)
{
  sub_1000011A0();
  result = objc_getClass("UIApplication");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100002114();
  }

  qword_100008698 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000011A0()
{
  v3[0] = 0;
  if (!qword_1000086A0)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_1000012A0;
    v3[4] = &unk_100004200;
    v3[5] = v3;
    v4 = off_1000041E8;
    v5 = 0;
    qword_1000086A0 = _sl_dlopen();
  }

  v0 = qword_1000086A0;
  v1 = v3[0];
  if (!qword_1000086A0)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_1000012A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1000086A0 = result;
  return result;
}

void *sub_100001314(uint64_t a1)
{
  v2 = sub_1000011A0();
  result = dlsym(v2, "UIApplicationMain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1000086A8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_1000016D8()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1000086B0;
  v7 = qword_1000086B0;
  if (!qword_1000086B0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100001D84;
    v3[3] = &unk_1000041C8;
    v3[4] = &v4;
    sub_100001D84(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1000017A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000017B8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = *(a1 + 32);
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v15 + 1) + 8 * v14) integerValue];
        sandbox_extension_release();
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100001C38(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = *(a1 + 32);
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v15 + 1) + 8 * v14) integerValue];
        sandbox_extension_release();
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }

  (*(*(a1 + 40) + 16))();
}

Class sub_100001D84(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1000086B8)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100001EC8;
    v4[4] = &unk_100004200;
    v4[5] = v4;
    v5 = off_100004298;
    v6 = 0;
    qword_1000086B8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1000086B8)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("WKWebView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10000213C();
  }

  qword_1000086B0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100001EC8(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1000086B8 = result;
  return result;
}

void *sub_100001F3C(uint64_t a1)
{
  v5[0] = 0;
  if (!qword_1000086C8)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_10000207C;
    v5[4] = &unk_100004200;
    v5[5] = v5;
    v6 = off_1000042B0;
    v7 = 0;
    qword_1000086C8 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_1000086C8;
    if (qword_1000086C8)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_1000086C8;
LABEL_5:
  result = dlsym(v2, "_NSReadAttributedStringFromURLOrDataAgent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1000086C0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10000207C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1000086C8 = result;
  return result;
}

void sub_1000020F0()
{
  dlerror();
  abort_report_np();
  sub_100002114();
}