void sub_1000010C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000010D8(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 != 0);
  }

  return result;
}

void sub_10000116C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 owner];
  [v4 updateSceneClientSettings:v3];
}

void sub_100001384()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = off_100008748;
  v9 = off_100008748;
  if (!off_100008748)
  {
    v1 = sub_100001980();
    v7[3] = dlsym(v1, "_UIArbiterLog");
    off_100008748 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = v0();

    v3 = v2;
  }

  else
  {
    v4 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"os_log_t _Local_UIArbiterLog(void)"];
    [v4 handleFailureInFunction:v5 file:@"_UIKeyboardManagement.m" lineNumber:16 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1000014D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_100001930(uint64_t a1)
{
  v2 = sub_100001980();
  result = dlsym(v2, "_UIKeyboardArbiter_SceneIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100008738 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100001980()
{
  v4[0] = 0;
  if (!qword_100008740)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100001AD4;
    v4[4] = &unk_100004258;
    v4[5] = v4;
    v5 = off_100004240;
    v6 = 0;
    qword_100008740 = _sl_dlopen();
  }

  v0 = qword_100008740;
  if (!qword_100008740)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"void *KeyboardArbiterLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"_UIKeyboardManagement.m" lineNumber:15 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_100001AD4(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100008740 = result;
  return result;
}

void *sub_100001B48(uint64_t a1)
{
  v2 = sub_100001980();
  result = dlsym(v2, "_UIArbiterLog");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100008748 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t start()
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2050000000;
  v0 = qword_100008758;
  v21 = qword_100008758;
  if (!qword_100008758)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100001DC8;
    v17[3] = &unk_100004220;
    v17[4] = &v18;
    sub_100001DC8(v17);
    v0 = v19[3];
  }

  v1 = v0;
  _Block_object_dispose(&v18, 8);
  v2 = [v0 alloc];
  v3 = objc_opt_new();
  v4 = [v2 initWithLink:v3];

  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100001D98;
  v15 = &unk_100004280;
  v16 = v4;
  v5 = qword_100008768;
  v6 = v4;
  if (v5 != -1)
  {
    dispatch_once(&qword_100008768, &stru_1000042D8);
  }

  v7 = [&v12 copy];
  v8 = qword_100008750;
  v9 = objc_retainBlock(v7);
  v10 = [NSNumber numberWithInt:31, v12, v13, v14, v15];
  [v8 setObject:v9 forKey:v10];

  signal(31, sub_100002068);
  [v6 resume];

  return 1;
}

void sub_100001D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_100001DC8(uint64_t a1)
{
  v6[0] = 0;
  if (!qword_100008760)
  {
    v6[1] = _NSConcreteStackBlock;
    v6[2] = 3221225472;
    v6[3] = sub_100001FB4;
    v6[4] = &unk_100004258;
    v6[5] = v6;
    v7 = off_1000042A0;
    v8 = 0;
    qword_100008760 = _sl_dlopen();
  }

  if (!qword_100008760)
  {
    v3 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"void *KeyboardArbiterLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"main.m" lineNumber:15 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("_UIKeyboardArbiter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"Class get_UIKeyboardArbiterClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"main.m" lineNumber:16 description:{@"Unable to find class %s", "_UIKeyboardArbiter"}];

LABEL_10:
    __break(1u);
  }

  qword_100008758 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100001FB4(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100008760 = result;
  return result;
}

void sub_100002028(id a1)
{
  qword_100008750 = +[NSMutableDictionary dictionary];

  _objc_release_x1();
}

void sub_100002068(uint64_t a1)
{
  v2 = qword_100008750;
  v3 = [NSNumber numberWithInt:a1];
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    v4[2]();
  }

  else
  {
    NSLog(@"Unexpected signal %i", a1);
  }
}