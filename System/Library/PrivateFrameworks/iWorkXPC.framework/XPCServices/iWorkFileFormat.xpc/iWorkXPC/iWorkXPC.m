int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  return 0;
}

void sub_100002140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100002188(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000021A0(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

void sub_1000021E4(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

void sub_1000023EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100002724(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("TSPFileManager.IOCompletion", v3);
  v2 = qword_1001EA9C0;
  qword_1001EA9C0 = v1;
}

void sub_100002AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 184), 8);
  _Block_object_dispose((v32 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_100002B1C(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7 || v8)
  {
    if (v8)
    {
      v14 = *(*(a1 + 56) + 8);
      if (*(v14 + 40))
      {
        goto LABEL_12;
      }

      v15 = v8;
      v16 = *(v14 + 40);
      *(v14 + 40) = v15;
      goto LABEL_11;
    }
  }

  else if (!*(*(*(a1 + 56) + 8) + 40))
  {
    dispatch_group_enter(*(a1 + 32));
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100002CB4;
    v19[3] = &unk_1001C5150;
    v22 = *(a1 + 64);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v12 = *(a1 + 72);
    v20 = v11;
    v13 = *(a1 + 56);
    v23 = v12;
    v24 = v13;
    v21 = *(a1 + 32);
    [v10 writeData:v7 handler:v19];
  }

  if (*(*(*(a1 + 72) + 8) + 24) == 1 && !*(*(*(a1 + 56) + 8) + 40))
  {
    v17 = [NSError errorWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
    v18 = *(*(a1 + 56) + 8);
    v16 = *(v18 + 40);
    *(v18 + 40) = v17;
LABEL_11:
  }

LABEL_12:
  if (a2)
  {
    dispatch_group_leave(*(a1 + 32));
  }
}

void sub_100002CB4(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v13 = v7;
  if (a3)
  {
    *(*(*(a1 + 48) + 8) + 24) += a3;
    [*(a1 + 32) setCompletedUnitCount:*(*(*(a1 + 48) + 8) + 24)];
    v7 = v13;
  }

  if (v7)
  {
    v8 = *(*(a1 + 64) + 8);
    if (*(v8 + 40))
    {
      goto LABEL_10;
    }

    v9 = v7;
    v10 = *(v8 + 40);
    *(v8 + 40) = v9;
    goto LABEL_9;
  }

  if (*(*(*(a1 + 56) + 8) + 24) == 1 && !*(*(*(a1 + 64) + 8) + 40))
  {
    v11 = [NSError errorWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
    v12 = *(*(a1 + 64) + 8);
    v10 = *(v12 + 40);
    *(v12 + 40) = v11;
LABEL_9:

    v7 = v13;
  }

LABEL_10:
  if (a2)
  {
    dispatch_group_leave(*(a1 + 40));
    v7 = v13;
  }
}

void sub_100003110(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100003154(id a1)
{
  UnsafePointer = TSULogCreateCategory("TSPPersistenceLogCat");

  _objc_release_x1();
}

void sub_100003398(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100003D0C(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100003D50(id a1)
{
  UnsafePointer = TSULogCreateCategory("TSPPersistenceLogCat");

  _objc_release_x1();
}

void sub_100003D94(id a1)
{
  UnsafePointer = TSULogCreateCategory("TSPPersistenceLogCat");

  _objc_release_x1();
}

void sub_100003DD8(id a1)
{
  UnsafePointer = TSULogCreateCategory("TSPPersistenceLogCat");

  _objc_release_x1();
}

void sub_100003F58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, objc_super a13)
{
  a13.super_class = TSPPackageWriter;
  [(_Unwind_Exception *)&a13 dealloc];
  _Unwind_Resume(a1);
}

void sub_100003FA0(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100004104(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = *(v1 + 56);
  v2 = (v1 + 56);
  if (!v3)
  {
    objc_storeStrong(v2, *(a1 + 40));
  }
}

void sub_100004438(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10000447C(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100004A10(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100004A54(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100004C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_100004C44(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100004C5C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100005250(id a1)
{
  UnsafePointer = TSULogCreateCategory("TSPPersistenceLogCat");

  _objc_release_x1();
}

void sub_1000056AC(id a1)
{
  UnsafePointer = TSULogCreateCategory("TSPPersistenceLogCat");

  _objc_release_x1();
}

void sub_100005CEC(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100005D30(id a1)
{
  UnsafePointer = TSULogCreateCategory("TSPPersistenceLogCat");

  _objc_release_x1();
}

void sub_100006154(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100006198(id a1)
{
  UnsafePointer = TSULogCreateCategory("TSPPersistenceLogCat");

  _objc_release_x1();
}

void sub_100006434(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v3 = *(*(*(a1 + 40) + 8) + 40);
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v3);
}

void sub_100006614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_100006644(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10000694C(id a1)
{
  UnsafePointer = TSULogCreateCategory("TSPPersistenceLogCat");

  _objc_release_x1();
}

void sub_100006C5C(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100006F40(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100007354(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100007784(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_1000077C8(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100007900(id a1)
{
  TSUDocumentLifecycleCat_log_t = TSULogCreateCategory("TSUDocumentLifecycleCat");

  _objc_release_x1();
}

void sub_100007C0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = TSPSnappyReadChannel;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100007E88(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

uint64_t sub_100007ECC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100007EE4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = *(*(*(a1 + 48) + 8) + 24);
  if (v8 && (*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    (*(*(a1 + 40) + 16))();
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v9 = *(*(*(a1 + 48) + 8) + 24);
  }

  if ((v9 & 1) == 0)
  {
    if (v7)
    {
      v10 = *(*(a1 + 56) + 8);
      v11 = *(v10 + 40);
      if (v11)
      {
        concat = dispatch_data_create_concat(v11, v7);
        v13 = *(*(a1 + 56) + 8);
        v14 = *(v13 + 40);
        *(v13 + 40) = concat;
      }

      else
      {
        v15 = v7;
        v14 = *(v10 + 40);
        *(v10 + 40) = v15;
      }
    }

    v16 = *(*(a1 + 56) + 8);
    obj = *(v16 + 40);
    v17 = [*(a1 + 32) processData:&obj isDone:a2 handler:*(a1 + 40)];
    objc_storeStrong((v16 + 40), obj);
    *(*(*(a1 + 48) + 8) + 24) = v17 ^ 1;
  }
}

void sub_1000084D4(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100008518(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

void sub_10000855C(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

void sub_1000085A0(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

void sub_100008728(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

void sub_10000876C(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

void sub_100008954(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

void sub_100008998(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

void sub_1000089E8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_100008C10(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100008DBC(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_100008E54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = TSPAVAssetResourceLoaderDelegate;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100008F60(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  byte_1001EA9D0 = [v1 BOOLForKey:@"TSPAVAssetResourceLoadingDisableEntireLengthAvailableOnDemand"];
}

void sub_10000906C(uint64_t a1)
{
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    v4 = [*(a1 + 32) contentInformationRequest];
    v2 = [*(*(a1 + 40) + 8) type];
    [v4 setContentType:v2];

    [v4 setContentLength:*(*(a1 + 40) + 16)];
    [v4 setByteRangeAccessSupported:1];
    v3 = [*(a1 + 32) dataRequest];

    if (!v3)
    {
      [*(a1 + 32) finishLoading];
    }
  }
}

void sub_1000091EC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 40))
  {
    dispatch_suspend(*(v2 + 32));
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100009308;
    v8[3] = &unk_1001C5710;
    v8[4] = v3;
    [v3 _provideNextDataBlockToLoadingRequest:v4 completion:v8];
  }

  else
  {
    v5 = *(v2 + 8);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100009314;
    v6[3] = &unk_1001C5738;
    v6[4] = v2;
    v7 = *(a1 + 40);
    [v5 performIOChannelReadWithAccessor:v6];
  }
}

void sub_100009314(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(a1 + 32) + 40), a2);
    dispatch_suspend(*(*(a1 + 32) + 32));
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000093EC;
    v7[3] = &unk_1001C5710;
    v7[4] = v5;
    [v5 _provideNextDataBlockToLoadingRequest:v6 completion:v7];
  }

  else
  {
    [*(a1 + 40) finishLoadingWithError:0];
  }
}

void sub_100009788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

void sub_100009824(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

uint64_t sub_100009868(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100009880(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_1000098C4(uint64_t a1, int a2, void *a3, void *a4)
{
  data2 = a3;
  v7 = a4;
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    if ([*(a1 + 32) isCancelled])
    {
      v8 = *(a1 + 56) + 8;
LABEL_6:
      v11 = *(*v8 + 40);
      *(*v8 + 40) = 0;

LABEL_7:
      (*(*(a1 + 48) + 16))();
      goto LABEL_8;
    }

    if (v7)
    {
      v9 = *(*(a1 + 56) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = 0;

      [*(a1 + 32) finishLoadingWithError:v7];
      v8 = a1 + 40;
      [*(*(a1 + 40) + 40) close];
      goto LABEL_6;
    }

    if (data2)
    {
      concat = dispatch_data_create_concat(*(*(*(a1 + 56) + 8) + 40), data2);
      v13 = *(*(a1 + 56) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = concat;
    }

    if (a2)
    {
      v15 = [*(a1 + 32) dataRequest];
      [v15 respondWithData:*(*(*(a1 + 56) + 8) + 40)];

      v16 = *(*(a1 + 56) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = 0;

      if (*(a1 + 64) <= *(a1 + 72))
      {
        [*(a1 + 32) finishLoading];
        goto LABEL_7;
      }

      [*(a1 + 40) _provideNextDataBlockToLoadingRequest:*(a1 + 32) completion:*(a1 + 48)];
    }
  }

LABEL_8:
}

void sub_100009E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_100009E9C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100009EB4(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100009EF8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [TSPDirectoryPackage componentFileURLForPackageURL:v3 packageLocator:*(a1 + 32)];
  v22 = 0;
  v21 = 0;
  v5 = [v4 getResourceValue:&v22 forKey:NSURLFileSizeKey error:&v21];
  v6 = v22;
  v7 = v21;
  if (v5)
  {
    v20 = 0;
    v19 = 0;
    v8 = [v4 getResourceValue:&v20 forKey:NSURLContentModificationDateKey error:&v19];
    v9 = v20;
    v10 = v19;

    if (v8)
    {
      v11 = -[TSPPackageEntryInfo initWithEncodedLength:lastModificationDate:CRC:]([TSPPackageEntryInfo alloc], "initWithEncodedLength:lastModificationDate:CRC:", [v6 unsignedLongLongValue], v9, 0);
      v12 = *(*(a1 + 40) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;
      goto LABEL_11;
    }

    v7 = v10;
  }

  else
  {
    v9 = 0;
  }

  if (TSUDefaultCat_init_token != -1)
  {
    sub_100150884();
  }

  v13 = TSUDefaultCat_log_t;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = [v4 path];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [v7 domain];
    v18 = [v7 code];
    *buf = 138413314;
    v24 = v14;
    v25 = 2114;
    v26 = v16;
    v27 = 2114;
    v28 = v17;
    v29 = 2048;
    v30 = v18;
    v31 = 2112;
    v32 = v7;
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to retrieve encoded length and last modification date for path: %@. errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", buf, 0x34u);
  }

  v10 = v7;
LABEL_11:
}

void sub_10000A18C(_Unwind_Exception *a1)
{
  v10 = v8;

  _Unwind_Resume(a1);
}

void sub_10000A1F4(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

void sub_10000A4F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_10000A560(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10000A5A4(void *a1, void *a2)
{
  v3 = a2;
  v4 = [TSPDirectoryPackage componentFileURLForPackageURL:v3 packageLocator:a1[4]];
  v5 = [TSUFileIOChannel alloc];
  v6 = *(a1[6] + 8);
  obj = *(v6 + 40);
  v7 = [(TSUFileIOChannel *)v5 initForReadingURL:v4 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  v8 = *(a1[5] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if (!*(*(a1[5] + 8) + 40))
  {
    if (TSUDefaultCat_init_token != -1)
    {
      sub_100150968();
    }

    v10 = TSUDefaultCat_log_t;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(*(a1[6] + 8) + 40);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = [*(*(a1[6] + 8) + 40) domain];
      v15 = [*(*(a1[6] + 8) + 40) code];
      v16 = *(*(a1[6] + 8) + 40);
      *buf = 138413314;
      v19 = v4;
      v20 = 2114;
      v21 = v13;
      v22 = 2114;
      v23 = v14;
      v24 = 2048;
      v25 = v15;
      v26 = 2112;
      v27 = v16;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Can't read %@. errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", buf, 0x34u);
    }
  }
}

void sub_10000A7E4(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

void sub_10000AC08(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

uint64_t sub_10000AC4C(uint64_t a1)
{
  +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    sub_100150A38();
  }

  if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    sub_100150A4C();
  }

  v2 = [NSString stringWithUTF8String:"[TSPDirectoryPackage copyComponent:toPackageURL:packageLocator:zipFileWriter:encryptionKey:canLink:completion:]_block_invoke"];
  v3 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDirectoryPackage.mm"];
  [TSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:116 isFatal:0 description:"Can't get package URL"];

  +[TSUAssertionHandler logBacktraceThrottled];
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void sub_10000AD74(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10000ADB8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    (*(*(a1 + 80) + 16))();
    goto LABEL_22;
  }

  v4 = [TSPDirectoryPackage componentFileURLForPackageURL:v3 packageLocator:*(a1 + 32)];
  v29 = 0;
  v5 = [v4 checkResourceIsReachableAndReturnError:&v29];
  v6 = v29;
  if (v5)
  {
    v7 = [TSPDirectoryPackage componentFileURLForPackageURL:*(a1 + 40) packageLocator:*(a1 + 48)];
    v8 = +[NSFileManager defaultManager];
    v9 = [v7 URLByDeletingLastPathComponent];
    v28 = v6;
    v10 = [v8 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:&v28];
    v11 = v28;

    if (v10)
    {
      v12 = [*(a1 + 56) decryptionKey];
      v13 = *(a1 + 64);
      v14 = *(a1 + 88);
      v27 = v11;
      v15 = [TSPFileManager linkOrCopyItemAtURL:v4 decryptionInfo:v12 toURL:v7 encryptionInfo:v13 canLink:v14 encodedLength:0 error:&v27];
      v6 = v27;

      if (v15)
      {
        v16 = 1;
LABEL_18:

        goto LABEL_19;
      }

      if (TSUDefaultCat_init_token != -1)
      {
        sub_100150B14();
      }

      v17 = TSUDefaultCat_log_t;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        v25 = [v6 domain];
        v26 = [v6 code];
        *buf = 138413570;
        v31 = v4;
        v32 = 2112;
        v33 = v7;
        v34 = 2114;
        v35 = v24;
        v36 = 2114;
        v37 = v25;
        v38 = 2048;
        v39 = v26;
        v40 = 2112;
        v41 = v6;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to copy component file from %@ to %@. errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", buf, 0x3Eu);
      }
    }

    else
    {
      if (TSUDefaultCat_init_token != -1)
      {
        sub_100150AEC();
      }

      v17 = TSUDefaultCat_log_t;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        v21 = [v11 domain];
        v22 = [v11 code];
        *buf = 138413570;
        v31 = v4;
        v32 = 2112;
        v33 = v7;
        v34 = 2114;
        v35 = v20;
        v36 = 2114;
        v37 = v21;
        v38 = 2048;
        v39 = v22;
        v40 = 2112;
        v41 = v11;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to copy component file from %@ to %@ because intermediate directories could not be created. errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", buf, 0x3Eu);
      }

      v6 = v11;
    }

    v16 = 0;
    goto LABEL_18;
  }

  v16 = 0;
LABEL_19:
  v18 = *(a1 + 72);
  if (v18)
  {
    (*(v18 + 16))(v18, v16, v6);
  }

LABEL_22:
}

void sub_10000B228(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

void sub_10000B26C(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

void sub_10000B598(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10000B5DC(void *a1, void *a2)
{
  v3 = [a2 URLByAppendingPathComponent:a1[4]];
  v16 = 0;
  v4 = *(a1[5] + 8);
  obj = 0;
  v5 = [v3 getResourceValue:&v16 forKey:NSURLFileSizeKey error:&obj];
  v6 = v16;
  objc_storeStrong((v4 + 40), obj);
  if (v5)
  {
    v14 = 0;
    v7 = *(a1[5] + 8);
    v13 = 0;
    v8 = [v3 getResourceValue:&v14 forKey:NSURLContentModificationDateKey error:&v13];
    v9 = v14;
    objc_storeStrong((v7 + 40), v13);
    if (v8)
    {
      v10 = -[TSPPackageEntryInfo initWithEncodedLength:lastModificationDate:CRC:]([TSPPackageEntryInfo alloc], "initWithEncodedLength:lastModificationDate:CRC:", [v6 unsignedLongLongValue], v9, 0);
      v11 = *(a1[6] + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;
    }
  }

  else
  {
    v9 = 0;
  }
}

void sub_10000B948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose((v26 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_10000B994(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 URLByAppendingPathComponent:a1[4]];
  v5 = *(a1[6] + 8);
  obj = *(v5 + 40);
  v6 = [NSData dataWithContentsOfURL:v4 options:0 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_10000BB70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_10000BBA8(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 URLByAppendingPathComponent:*(a1 + 32)];
  v4 = [[TSUFileIOChannel alloc] initForReadingURL:v3 error:0];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_10000BD30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000BD60(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 URLByAppendingPathComponent:*(a1 + 32)];
  v13 = 0;
  v5 = [v4 checkResourceIsReachableAndReturnError:&v13];
  v6 = v13;
  v7 = v6;
  *(*(*(a1 + 40) + 8) + 24) = v5;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0 && ([v6 tsu_isNoSuchFileError] & 1) == 0)
  {
    if (TSUDefaultCat_init_token != -1)
    {
      sub_100150BE4();
    }

    v8 = TSUDefaultCat_log_t;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = [v7 domain];
      v12 = [v7 code];
      *buf = 138413314;
      v15 = v3;
      v16 = 2114;
      v17 = v10;
      v18 = 2114;
      v19 = v11;
      v20 = 2048;
      v21 = v12;
      v22 = 2112;
      v23 = v7;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Error checking if resource: %@ is available. errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", buf, 0x34u);
    }
  }
}

void sub_10000BF10(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

void sub_10000BF64(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

void sub_10000C3C0(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10000C414(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x2Cu);
}

void sub_10000C608(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10000C800(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 8);
  if (v3)
  {
    size = dispatch_data_get_size(*(v2 + 8));
    if (a1[6] >= size)
    {
      v5 = size;
    }

    else
    {
      v5 = a1[6];
    }

    if (a1[7] >= size - v5)
    {
      v6 = size - v5;
    }

    else
    {
      v6 = a1[7];
    }

    subrange = dispatch_data_create_subrange(v3, v5, v6);
  }

  else
  {
    subrange = 0;
  }

  v8 = subrange;
  (*(a1[5] + 16))();
}

BOOL sub_10000DDFC(id a1, NSString *a2, int64_t a3, NSDictionary *a4)
{
  v5 = a2;
  v6 = [(NSDictionary *)a4 objectForKeyedSubscript:@"TSPErrorIsTSPError"];
  if ([v6 BOOLValue])
  {
    v7 = 1;
  }

  else
  {
    v7 = [(NSString *)v5 isEqualToString:@"com.apple.iWork.TSPersistence"];
  }

  return v7;
}

BOOL sub_10000DEA8(id a1, NSString *a2, int64_t a3, NSDictionary *a4)
{
  v6 = a2;
  v7 = a4;
  if ((a3 - 11) <= 1 && [(NSString *)v6 isEqualToString:@"com.apple.iWork.TSPersistence"])
  {
    v8 = 1;
  }

  else
  {
    v9 = [(NSDictionary *)v7 objectForKeyedSubscript:@"TSPErrorIsRecoverable"];
    v8 = [v9 BOOLValue];
  }

  return v8;
}

void sub_10000E0AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Block_object_dispose((v20 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000E0E0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000E0F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v14 = a4;
  v5 = [v14 objectForKeyedSubscript:@"TSPErrorHints"];
  v6 = [v5 count];
  if (v6)
  {
    v7 = *(*(a1 + 32) + 8);
    v9 = *(v7 + 40);
    v8 = (v7 + 40);
    if (v9)
    {
      v10 = *(*(*(a1 + 40) + 8) + 40);
      if (!v10)
      {
        v11 = [[NSMutableSet alloc] initWithCapacity:{&v6[objc_msgSend(*(*(*(a1 + 32) + 8) + 40), "count")]}];
        v12 = *(*(a1 + 40) + 8);
        v13 = *(v12 + 40);
        *(v12 + 40) = v11;

        v10 = *(*(*(a1 + 40) + 8) + 40);
      }

      [v10 unionSet:v5];
    }

    else
    {
      objc_storeStrong(v8, v5);
    }
  }
}

BOOL sub_10000E3B8(id a1, NSString *a2, int64_t a3, NSDictionary *a4)
{
  v5 = a2;
  v6 = v5;
  if (a3 == 7)
  {
    v7 = [(NSString *)v5 isEqualToString:@"com.apple.iWork.TSPersistence"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

BOOL sub_10000E428(id a1, NSString *a2, int64_t a3, NSDictionary *a4)
{
  v4 = [(NSDictionary *)a4 objectForKeyedSubscript:@"TSPIsUnsupportedVersionError"];
  v5 = [v4 BOOLValue];

  return v5;
}

BOOL sub_10000E488(id a1, NSString *a2, int64_t a3, NSDictionary *a4)
{
  v4 = [(NSDictionary *)a4 objectForKeyedSubscript:@"TSPIsCorruptZipOfPackageError"];
  v5 = [v4 BOOLValue];

  return v5;
}

BOOL sub_10000E4E8(id a1, NSString *a2, int64_t a3, NSDictionary *a4)
{
  v5 = a2;
  v6 = v5;
  if ((a3 - 9) > 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(NSString *)v5 isEqualToString:@"com.apple.iWork.TSPersistence"];
  }

  return v7;
}

BOOL sub_10000E55C(id a1, NSString *a2, int64_t a3, NSDictionary *a4)
{
  v4 = a4;
  v5 = objc_opt_class();
  v6 = [(NSDictionary *)v4 objectForKeyedSubscript:@"TSPIsDataCorruptionError"];
  v7 = TSUCheckedDynamicCast(v5, v6);
  v8 = [v7 BOOLValue];

  return v8;
}

void sub_10000E5DC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_10000E6F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_10000E710(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, BOOL *a5)
{
  v12 = a4;
  v7 = objc_opt_class();
  v8 = [v12 objectForKeyedSubscript:@"TSPDataValidationReason"];
  v9 = TSUCheckedDynamicCast(v7, v8);
  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  *a5 = *(*(*(a1 + 32) + 8) + 40) != 0;
}

BOOL sub_10000E7F4(id a1, NSString *a2, int64_t a3, NSDictionary *a4)
{
  v4 = a4;
  v5 = objc_opt_class();
  v6 = [(NSDictionary *)v4 objectForKeyedSubscript:@"TSPIsDataDigestMismatchError"];
  v7 = TSUCheckedDynamicCast(v5, v6);
  v8 = [v7 BOOLValue];

  return v8;
}

void sub_10000E874(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_10000E978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_10000E998(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, BOOL *a5)
{
  v12 = a4;
  v7 = objc_opt_class();
  v8 = [v12 objectForKeyedSubscript:@"TSPDataIdentifier"];
  v9 = TSUCheckedDynamicCast(v7, v8);
  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  *a5 = *(*(*(a1 + 32) + 8) + 40) != 0;
}

void sub_10000EB58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_10000EB78(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, BOOL *a5)
{
  v12 = a4;
  v7 = objc_opt_class();
  v8 = [v12 objectForKeyedSubscript:@"TSPExpectedDataDigest"];
  v9 = TSUCheckedDynamicCast(v7, v8);
  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  *a5 = *(*(*(a1 + 32) + 8) + 40) != 0;
}

void sub_10000ED38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_10000ED58(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, BOOL *a5)
{
  v12 = a4;
  v7 = objc_opt_class();
  v8 = [v12 objectForKeyedSubscript:@"TSPActualDataDigest"];
  v9 = TSUCheckedDynamicCast(v7, v8);
  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  *a5 = *(*(*(a1 + 32) + 8) + 40) != 0;
}

BOOL sub_10000EE3C(id a1, NSString *a2, int64_t a3, NSDictionary *a4)
{
  v4 = a4;
  v5 = objc_opt_class();
  v6 = [(NSDictionary *)v4 objectForKeyedSubscript:@"TSPExpectedDataDigestMatch"];
  v7 = TSUCheckedDynamicCast(v5, v6);
  v8 = [v7 BOOLValue];

  return v8;
}

void sub_10000EEBC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

BOOL sub_10000EEF4(id a1, NSString *a2, int64_t a3, NSDictionary *a4)
{
  v4 = a4;
  v5 = objc_opt_class();
  v6 = [(NSDictionary *)v4 objectForKeyedSubscript:@"TSPIsLikelyOSCorruption"];
  v7 = TSUCheckedDynamicCast(v5, v6);
  v8 = [v7 BOOLValue];

  return v8;
}

void sub_10000EF74(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

BOOL sub_10000EFAC(id a1, NSString *a2, int64_t a3, NSDictionary *a4)
{
  v4 = a4;
  v5 = objc_opt_class();
  v6 = [(NSDictionary *)v4 objectForKeyedSubscript:@"TSPIsLikelyZeroBytesCorruption"];
  v7 = TSUCheckedDynamicCast(v5, v6);
  v8 = [v7 BOOLValue];

  return v8;
}

void sub_10000F02C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_10000F140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_10000F160(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, BOOL *a5)
{
  v12 = a4;
  v7 = objc_opt_class();
  v8 = [v12 objectForKeyedSubscript:@"TSPDataCreationTime"];
  v9 = TSUCheckedDynamicCast(v7, v8);
  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  *a5 = *(*(*(a1 + 32) + 8) + 40) != 0;
}

void sub_10000F320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_10000F340(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, BOOL *a5)
{
  v12 = a4;
  v7 = objc_opt_class();
  v8 = [v12 objectForKeyedSubscript:@"TSPDataCreationVersion"];
  v9 = TSUCheckedDynamicCast(v7, v8);
  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  *a5 = *(*(*(a1 + 32) + 8) + 40) != 0;
}

void sub_10000F4F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_10000F510(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, BOOL *a5)
{
  v12 = a4;
  v7 = objc_opt_class();
  v8 = [v12 objectForKeyedSubscript:@"TSPDataLength"];
  v9 = TSUCheckedDynamicCast(v7, v8);
  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  *a5 = *(*(*(a1 + 32) + 8) + 40) != 0;
}

void sub_10000F6D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_10000F6F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, BOOL *a5)
{
  v12 = a4;
  v7 = objc_opt_class();
  v8 = [v12 objectForKeyedSubscript:@"TSPDataType"];
  v9 = TSUCheckedDynamicCast(v7, v8);
  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  *a5 = *(*(*(a1 + 32) + 8) + 40) != 0;
}

void sub_10000FB28(_Unwind_Exception *a1)
{
  sub_10000FBBC(v3);

  _Unwind_Resume(a1);
}

void sub_10000FFA8(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100010124(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_1000102A0(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_1000104A4(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100010794(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100010C24(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100010C68(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

void sub_100010E0C(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100011034(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100011284(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_1000116F0(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100011734(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100011778(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100011824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = TSPCryptoReadChannel;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t sub_10001193C(NSObject *a1, unsigned int a2, int a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  if (!v10)
  {
    v79 = 0;
    v80 = &v79;
    v81 = 0x2020000000;
    v82 = 1;
    v12 = &a1[4];
    v13 = *(a1[4].isa + 4);
    if (v13)
    {
      concat = dispatch_data_create_concat(v13, v9);

      v9 = concat;
    }

    v15 = v9;
    size = dispatch_data_get_size(v9);
    if (size >= 0x14)
    {
      v17 = 20;
    }

    else
    {
      v17 = size;
    }

    v18 = size - v17;
    subrange = dispatch_data_create_subrange(v15, size - v17, v17);
    v20 = *(*v12 + 32);
    *(*v12 + 32) = subrange;

    v9 = dispatch_data_create_subrange(v15, 0, v18);
    v21 = dispatch_data_get_size(v9);
    if (a2 && !v21)
    {
      v22 = &_dispatch_data_empty;
      v23 = &_dispatch_data_empty;
      v24 = *(*v12 + 56);
      if (!v24)
      {
        goto LABEL_57;
      }

      OutputLength = CCCryptorGetOutputLength(v24, 0, 1);
      v26 = OutputLength;
      if (!OutputLength)
      {
        goto LABEL_57;
      }

      v27 = malloc_type_malloc(OutputLength, 0x100004077774924uLL);
      *(v80 + 24) = v27 != 0;
      if (v27)
      {
        goto LABEL_18;
      }

      +[TSUAssertionHandler _atomicIncrementAssertCount];
      if (TSUAssertCat_init_token != -1)
      {
        sub_100151580();
      }

      if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
      {
        sub_1001515A8();
      }

      v28 = [NSString stringWithUTF8String:"[TSPCryptoReadChannel readWithHandler:]_block_invoke"];
      v29 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPCryptoReadChannel.mm"];
      [TSUAssertionHandler handleFailureInFunction:v28 file:v29 lineNumber:122 isFatal:0 description:"Failed to allocate buffer for finalizing decryption"];

      +[TSUAssertionHandler logBacktraceThrottled];
      if (v80[3])
      {
LABEL_18:
        dataOutMoved = 0;
        v30 = CCCryptorFinal(*(*v12 + 56), v27, v26, &dataOutMoved);
        *(v80 + 24) = v30 == 0;
        if (v30)
        {
          +[TSUAssertionHandler _atomicIncrementAssertCount];
          if (TSUAssertCat_init_token != -1)
          {
            sub_100151630();
          }

          if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
          {
            sub_100151658();
          }

          v31 = [NSString stringWithUTF8String:"[TSPCryptoReadChannel readWithHandler:]_block_invoke"];
          v32 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPCryptoReadChannel.mm"];
          [TSUAssertionHandler handleFailureInFunction:v31 file:v32 lineNumber:127 isFatal:0 description:"Finalizing decryption failed: CCCryptorFinal status %i", v30];

          +[TSUAssertionHandler logBacktraceThrottled];
        }

        if (dataOutMoved)
        {
          v22 = dispatch_data_create(v27, dataOutMoved, 0, _dispatch_data_destructor_free);

LABEL_57:
          if (*(*v12 + 64) != 16)
          {
            +[TSUAssertionHandler _atomicIncrementAssertCount];
            if (TSUAssertCat_init_token != -1)
            {
              sub_100151700();
            }

            if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
            {
              sub_100151728(&a1[4]);
            }

            v53 = [NSString stringWithUTF8String:"[TSPCryptoReadChannel readWithHandler:]_block_invoke"];
            v54 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPCryptoReadChannel.mm"];
            [TSUAssertionHandler handleFailureInFunction:v53 file:v54 lineNumber:143 isFatal:0 description:"Failed to read and discard the initial random block; only read %zu bytes", *(*v12 + 64)];

            +[TSUAssertionHandler logBacktraceThrottled];
          }

          (*(a1[5].isa + 2))();

LABEL_88:
          v11 = *(v80 + 24);
          _Block_object_dispose(&v79, 8);
          goto LABEL_89;
        }

        free(v27);
      }

      v22 = &_dispatch_data_empty;
      goto LABEL_57;
    }

    v69 = a2;
    dataOutMoved = 0;
    p_dataOutMoved = &dataOutMoved;
    v77 = 0x2020000000;
    v78 = 0;
    v33 = v21 + 16;
    v34 = malloc_type_malloc(v21 + 16, 0x100004077774924uLL);
    v35 = v34;
    if (v34)
    {
      v36 = dispatch_data_create(v34, v33, 0, _dispatch_data_destructor_free);
      *(v80 + 24) = v36 != 0;
      if (v36)
      {
LABEL_35:
        applier[0] = _NSConcreteStackBlock;
        applier[1] = 3221225472;
        applier[2] = sub_100012738;
        applier[3] = &unk_1001C5EC0;
        applier[4] = *v12;
        applier[5] = &v79;
        applier[7] = v33;
        applier[8] = v35;
        applier[6] = &dataOutMoved;
        dispatch_data_apply(v9, applier);
        if (v80[3])
        {
          v40 = *(*v12 + 64);
          v41 = p_dataOutMoved;
          v42 = 16 - v40 >= p_dataOutMoved[3] ? p_dataOutMoved[3] : 16 - v40;
          *(*v12 + 64) = v42 + v40;
          v43 = v41[3];
          if (v43 != v42 || a3)
          {
            if (a3)
            {
              v73 = 0;
              dataa = v36;
              v44 = CCCryptorGetOutputLength(*(*v12 + 56), 0, 1);
              v45 = v44;
              v68 = a1;
              if (!v44)
              {
                goto LABEL_65;
              }

              v46 = malloc_type_malloc(v44, 0x100004077774924uLL);
              *(v80 + 24) = v46 != 0;
              if (v46)
              {
                goto LABEL_49;
              }

              +[TSUAssertionHandler _atomicIncrementAssertCount];
              if (TSUAssertCat_init_token != -1)
              {
                sub_10015133C();
              }

              if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
              {
                sub_100151364();
              }

              v47 = [NSString stringWithUTF8String:"[TSPCryptoReadChannel readWithHandler:]_block_invoke"];
              v48 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPCryptoReadChannel.mm"];
              [TSUAssertionHandler handleFailureInFunction:v47 file:v48 lineNumber:220 isFatal:0 description:"Failed to allocate buffer for finalizing decryption"];

              +[TSUAssertionHandler logBacktraceThrottled];
              if (v80[3])
              {
LABEL_49:
                v49 = CCCryptorFinal(*(*v12 + 56), v46, v45, &v73);
                *(v80 + 24) = v49 == 0;
                if (v49)
                {
                  +[TSUAssertionHandler _atomicIncrementAssertCount];
                  if (TSUAssertCat_init_token != -1)
                  {
                    sub_1001513EC();
                  }

                  if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
                  {
                    sub_100151414();
                  }

                  v50 = [NSString stringWithUTF8String:"[TSPCryptoReadChannel readWithHandler:]_block_invoke"];
                  v51 = v46;
                  v52 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPCryptoReadChannel.mm"];
                  [TSUAssertionHandler handleFailureInFunction:v50 file:v52 lineNumber:224 isFatal:0 description:"Finalizing decryption failed: CCCryptorFinal status %i", v49];

                  +[TSUAssertionHandler logBacktraceThrottled];
                  v46 = v51;
                }
              }

              else
              {
LABEL_65:
                v46 = 0;
              }

              v67 = v46;
              v56 = *(*v12 + 64);
              if (16 - v56 >= v73)
              {
                v57 = v73;
              }

              else
              {
                v57 = 16 - v56;
              }

              *(*v12 + 64) = v57 + v56;
              if (*(*v12 + 64) != 16)
              {
                +[TSUAssertionHandler _atomicIncrementAssertCount];
                if (TSUAssertCat_init_token != -1)
                {
                  sub_1001514BC();
                }

                if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
                {
                  sub_1001514E4(v12);
                }

                v58 = [NSString stringWithUTF8String:"[TSPCryptoReadChannel readWithHandler:]_block_invoke"];
                v59 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPCryptoReadChannel.mm"];
                [TSUAssertionHandler handleFailureInFunction:v58 file:v59 lineNumber:229 isFatal:0 description:"Failed to read and discard the initial random block; only read %zu bytes", *(*v12 + 64)];

                +[TSUAssertionHandler logBacktraceThrottled];
              }

              v36 = dataa;
              v60 = dispatch_data_create_subrange(dataa, v42, p_dataOutMoved[3] - v42);
              a1 = v68;
              if (v73 == v57)
              {
                v61 = v69;
              }

              else
              {
                v61 = 0;
              }

              (*(v68[5].isa + 2))(v68[5].isa, v61, v60, 0);
              if (v73 == v57)
              {
                if (v67)
                {
                  free(v67);
                }
              }

              else
              {
                destructor[0] = _NSConcreteStackBlock;
                destructor[1] = 3221225472;
                destructor[2] = sub_100012D24;
                destructor[3] = &unk_1001C5F40;
                destructor[4] = v67;
                v62 = dispatch_data_create(&v67[v57], v73 - v57, 0, destructor);
                (*(v68[5].isa + 2))();
              }

              v63 = *(*v12 + 56);
              if (v63)
              {
                CCCryptorRelease(v63);
                *(*v12 + 56) = 0;
              }
            }

            else
            {
              v55 = dispatch_data_create_subrange(v36, v42, v43 - v42);
              (*(a1[5].isa + 2))();
            }
          }
        }

LABEL_85:
        if ((v80[3] & 1) == 0)
        {
          isa = a1[5].isa;
          v65 = [NSError tsp_readCorruptedDocumentErrorWithUserInfo:0];
          (*(isa + 2))(isa, 1, 0, v65);
        }

        _Block_object_dispose(&dataOutMoved, 8);
        goto LABEL_88;
      }
    }

    else
    {
      *(v80 + 24) = 0;
    }

    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015128C();
    }

    data = a1 + 4;
    v37 = a1;
    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_1001512B4();
    }

    v38 = [NSString stringWithUTF8String:"[TSPCryptoReadChannel readWithHandler:]_block_invoke"];
    v39 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPCryptoReadChannel.mm"];
    [TSUAssertionHandler handleFailureInFunction:v38 file:v39 lineNumber:152 isFatal:0 description:"Failed to allocate buffer for decryption"];

    +[TSUAssertionHandler logBacktraceThrottled];
    v36 = 0;
    a1 = v37;
    v12 = data;
    if ((v80[3] & 1) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_35;
  }

  (*(a1[5].isa + 2))();
  v11 = 0;
LABEL_89:

  return v11 & 1;
}

void sub_1000124D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v34 - 136), 8);

  _Unwind_Resume(a1);
}

void sub_100012628(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10001266C(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_1000126B0(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_1000126F4(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

uint64_t sub_100012738(void *a1, void *a2, uint64_t a3, char *a4, unint64_t a5)
{
  v31 = a2;
  while (a5)
  {
    v8 = a1[4];
    if (!*(v8 + 56))
    {
      v11 = v8 + 40;
      v9 = *(v8 + 40);
      v10 = *(v11 + 8);
      v12 = 16 - v10 >= a5 ? a5 : 16 - v10;
      memcpy((v9 + v10), a4, v12);
      *(a1[4] + 48) += v12;
      a4 += v12;
      a5 -= v12;
      v13 = a1[4];
      if (*(v13 + 48) == 16)
      {
        v14 = CCCryptorCreate(1u, 0, 1u, [*(v13 + 16) keyData], objc_msgSend(*(a1[4] + 16), "keyLength"), *(a1[4] + 40), (a1[4] + 56));
        if (v14 || !*(a1[4] + 56))
        {
          v15 = +[TSUAssertionHandler _atomicIncrementAssertCount];
          if (TSUAssertCat_init_token != -1)
          {
            sub_1001517C4();
          }

          v16 = TSUAssertCat_log_t;
          if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
          {
            *buf = 67110146;
            v34 = v15;
            v35 = 2082;
            v36 = "[TSPCryptoReadChannel readWithHandler:]_block_invoke_2";
            v37 = 2082;
            v38 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPCryptoReadChannel.mm";
            v39 = 1024;
            v40 = 171;
            v41 = 1024;
            v42 = v14;
            _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d CCCryptorCreate() failed: %d", buf, 0x28u);
          }

          v17 = [NSString stringWithUTF8String:"[TSPCryptoReadChannel readWithHandler:]_block_invoke"];
          v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPCryptoReadChannel.mm"];
          [TSUAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:171 isFatal:0 description:"CCCryptorCreate() failed: %d", v14];

          +[TSUAssertionHandler logBacktraceThrottled];
          *(*(a1[5] + 8) + 24) = 0;
        }
      }
    }

    if (*(*(a1[5] + 8) + 24) == 1)
    {
      v19 = *(a1[4] + 56);
      if (v19 && a5 != 0)
      {
        dataOutMoved = 0;
        v21 = a1[7];
        if (a5 >= v21 - 16)
        {
          v22 = v21 - 16;
        }

        else
        {
          v22 = a5;
        }

        v23 = *(*(a1[6] + 8) + 24);
        v24 = CCCryptorUpdate(v19, a4, v22, (a1[8] + v23), v21 - v23, &dataOutMoved);
        if (v24)
        {
          v25 = +[TSUAssertionHandler _atomicIncrementAssertCount];
          if (TSUAssertCat_init_token != -1)
          {
            sub_1001517EC();
          }

          v26 = TSUAssertCat_log_t;
          if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
          {
            *buf = 67110146;
            v34 = v25;
            v35 = 2082;
            v36 = "[TSPCryptoReadChannel readWithHandler:]_block_invoke";
            v37 = 2082;
            v38 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPCryptoReadChannel.mm";
            v39 = 1024;
            v40 = 184;
            v41 = 1024;
            v42 = v24;
            _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d CCCryptorUpdate() failed: %d", buf, 0x28u);
          }

          v27 = [NSString stringWithUTF8String:"[TSPCryptoReadChannel readWithHandler:]_block_invoke"];
          v28 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPCryptoReadChannel.mm"];
          [TSUAssertionHandler handleFailureInFunction:v27 file:v28 lineNumber:184 isFatal:0 description:"CCCryptorUpdate() failed: %d", v24];

          +[TSUAssertionHandler logBacktraceThrottled];
          *(*(a1[5] + 8) + 24) = 0;
        }

        a4 += v22;
        a5 -= v22;
        *(*(a1[6] + 8) + 24) += dataOutMoved;
      }
    }
  }

  v29 = *(*(a1[5] + 8) + 24);

  return v29 & 1;
}

void sub_100012BD0(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100012C14(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100012C58(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100012C9C(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100012CE0(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100012F28(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100012F6C(uint64_t a1, int a2, void *a3, void *a4)
{
  data = a3;
  v7 = a4;
  v8 = v7;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    if (v7)
    {
      (*(*(a1 + 40) + 16))();
      *(*(*(a1 + 48) + 8) + 24) = 0;
    }

    else
    {
      size = dispatch_data_get_size(data);
      v10 = size;
      if (!a2 || size)
      {
        v26 = *(*(a1 + 32) + 24);
        v11 = [v26 count];
        if (v10)
        {
          v12 = v11;
          v13 = 0;
          while (1)
          {
            v14 = *(a1 + 32);
            v15 = *(v14 + 72);
            if (v10 - v13 >= v15)
            {
              v16 = *(v14 + 72);
            }

            else
            {
              v16 = v10 - v13;
            }

            *(v14 + 72) = v15 - v16;
            subrange = dispatch_data_create_subrange(data, v13, v16);
            v13 += v16;
            v18 = *(*(a1 + 32) + 80);
            v19 = (v18 == v12) & a2;
            if (v13 != v10)
            {
              v19 = 0;
            }

            v20 = *(*(a1 + 32) + 72) ? v19 : 1;
            v21 = v18 == v12 ? v20 : 0;
            *(*(*(a1 + 48) + 8) + 24) = (*(*(a1 + 40) + 16))(*(a1 + 40), v21, v20, subrange, 0);
            if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
            {
              break;
            }

            if (v18 != v12 && ((v20 ^ 1) & 1) == 0)
            {
              [*(a1 + 32) _resetCryptor];
              v22 = *(a1 + 32);
              v23 = *(v22 + 80) + 1;
              *(v22 + 80) = v23;
              v24 = *(a1 + 32);
              if (v23 >= v12)
              {
                *(v24 + 72) = -1;
              }

              else
              {
                v25 = [v26 objectAtIndexedSubscript:*(v24 + 80)];
                *(*(a1 + 32) + 72) = [v25 encodedLength];
              }
            }

            if (v13 >= v10)
            {
              goto LABEL_29;
            }
          }
        }

LABEL_29:
      }

      else
      {
        *(*(*(a1 + 48) + 8) + 24) = (*(*(a1 + 40) + 16))();
      }
    }
  }
}

void sub_1000132A0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x22u);
}

void sub_1000134E4(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_1000138C0(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100013904(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100013B4C(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

intptr_t sub_100013B90(uint64_t a1)
{
  free(*(a1 + 40));
  v2 = *(a1 + 32);

  return dispatch_semaphore_signal(v2);
}

void sub_10001417C(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_1000141C0(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100014204(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100014248(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_1000142E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = TSPCryptoComponentWriteChannel;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t sub_10001438C(uint64_t a1, void *a2, uint64_t a3, char *a4, unint64_t a5)
{
  v8 = a2;
  if (!*(*(a1 + 32) + 8))
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100151D74();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100151D88();
    }

    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Tried to write data when already closed.", v25, v26, v27, v28, v29, v30, v31, "[TSPCryptoComponentWriteChannel _writeData:isDecryptedData:]_block_invoke");
    v32 = [NSString stringWithUTF8String:"[TSPCryptoComponentWriteChannel _writeData:isDecryptedData:]_block_invoke"];
    v33 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPCryptoComponentWriteChannel.mm"];
    [TSUAssertionHandler handleFailureInFunction:v32 file:v33 lineNumber:170 isFatal:1 description:"Tried to write data when already closed."];

    TSUCrashBreakpoint();
    abort();
  }

  if (a5)
  {
    while (1)
    {
      v9 = *(a1 + 32);
      if (*(v9 + 64) <= 0x8FuLL)
      {
        if (![v9 _resetBuffer])
        {
          break;
        }

        v9 = *(a1 + 32);
      }

      v10 = *(v9 + 472);
      v11 = [*(v9 + 16) preferredBlockSize];
      v12 = *(a1 + 32);
      if (v10 >= v11)
      {
        if (![v12 _finalizeBlockForClosing:0] || !objc_msgSend(*(a1 + 32), "_initializeBlock"))
        {
          break;
        }

        v12 = *(a1 + 32);
        if (*(v12 + 64) <= 0x8FuLL)
        {
          if (![v12 _resetBuffer])
          {
            break;
          }

          v12 = *(a1 + 32);
        }
      }

      v13 = *(v12 + 64);
      v14 = [*(v12 + 16) preferredBlockSize];
      if (a5 >= v13 - 16)
      {
        v15 = (v13 - 16);
      }

      else
      {
        v15 = a5;
      }

      v16 = *(a1 + 32);
      v17 = *(v16 + 472);
      if (v15 >= &v14[-v17])
      {
        v18 = &v14[-v17];
      }

      else
      {
        v18 = v15;
      }

      if (*(a1 + 40) == 1)
      {
        *(v16 + 472) = v18 + v17;
        CCHmacUpdate((*(a1 + 32) + 80), a4, v18);
        v16 = *(a1 + 32);
      }

      dataOutMoved = 0;
      if (CCCryptorUpdate(*(v16 + 72), a4, v18, (*(v16 + 40) + *(v16 + 56)), *(v16 + 64), &dataOutMoved))
      {
        break;
      }

      if (dataOutMoved)
      {
        v19 = *(a1 + 32);
        v20 = *(v19 + 8);
        subrange = dispatch_data_create_subrange(*(v19 + 48), *(v19 + 56), dataOutMoved);
        [v20 writeData:subrange];

        v22 = dataOutMoved;
        *(*(a1 + 32) + 56) += dataOutMoved;
        *(*(a1 + 32) + 64) -= v22;
        *(*(a1 + 32) + 464) += v22;
      }

      a4 += v18;
      a5 -= v18;
      if (!a5)
      {
        goto LABEL_24;
      }
    }

    v23 = 0;
  }

  else
  {
LABEL_24:
    v23 = 1;
  }

  return v23;
}

void sub_100014684(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100014748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_100014E60(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100014EA4(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100014EE8(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100014F2C(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100014F70(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100015010(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x28u);
}

void sub_1000156AC(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_1000159B4(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_1000162CC(id a1)
{
  UnsafePointer = TSULogCreateCategory("TSPPersistenceLogCat");

  _objc_release_x1();
}

void sub_100016310(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

void sub_100016354(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

void sub_100016480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_1000164A0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100016718(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100016B90(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100016D70(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_1000173F8(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10001743C(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100017480(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_1000174C4(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_1000176A0(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100017984(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100017CA8(id a1)
{
  TSUCollaborationManagerCat_log_t = TSULogCreateCategory("TSUCollaborationManagerCat");

  _objc_release_x1();
}

void sub_100017D88(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    v6 = objc_begin_catch(a1);
    if (TSUCollaborationManagerCat_init_token != -1)
    {
      sub_100152948();
    }

    v7 = TSUCollaborationManagerCat_log_t;
    if (os_log_type_enabled(TSUCollaborationManagerCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015295C(v6, v7);
    }

    objc_end_catch();
    JUMPOUT(0x100017D68);
  }

  _Unwind_Resume(a1);
}

void sub_100017E2C(id a1)
{
  TSUCollaborationManagerCat_log_t = TSULogCreateCategory("TSUCollaborationManagerCat");

  _objc_release_x1();
}

void sub_100017EBC(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x2Cu);
}

void sub_100018354(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_1000185A0(id a1)
{
  v55 = 0;
  v1 = [NSRegularExpression regularExpressionWithPattern:@"Index\\/OperationStorage.*\\.iwa" options:0 error:&v55];
  v2 = v55;
  v3 = v2;
  if (!v1)
  {
    v8 = +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100152A10();
    }

    v9 = TSUAssertCat_log_t;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [v3 domain];
      v13 = [v3 code];
      *buf = 67110914;
      v58 = v8;
      v59 = 2082;
      v60 = "+[TSPPackageConverter regularRexpressionsForCachedCollaborationData]_block_invoke";
      v61 = 2082;
      v62 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackageConverter.mm";
      v63 = 1024;
      v64 = 156;
      v65 = 2114;
      v66 = v11;
      v67 = 2114;
      v68 = v12;
      v69 = 2048;
      v70 = v13;
      v71 = 2112;
      v72 = v3;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Failed to create regular expression with error: errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", buf, 0x4Au);
    }

    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = [v3 domain];
    v52 = [v3 code];
    v50 = v16;
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Failed to create regular expression with error: errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", v17, v18, v19, v20, v21, v22, v23, "+[TSPPackageConverter regularRexpressionsForCachedCollaborationData]_block_invoke");

    v24 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[TSPPackageConverter regularRexpressionsForCachedCollaborationData]_block_invoke");
    v25 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackageConverter.mm"];
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    v28 = [v3 domain];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v24, v25, 156, 1, "Failed to create regular expression with error: errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", v27, v28, [v3 code], v3, v50, v52, v3);

    TSUCrashBreakpoint();
LABEL_14:
    abort();
  }

  v54 = 0;
  v4 = [NSRegularExpression regularExpressionWithPattern:@"Index\\/ActivityStream.*\\.iwa" options:0 error:&v54];
  v5 = v54;
  if (!v4)
  {
    v29 = +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_1001529E8();
    }

    v30 = TSUAssertCat_log_t;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      v33 = [v5 domain];
      v34 = [v5 code];
      *buf = 67110914;
      v58 = v29;
      v59 = 2082;
      v60 = "+[TSPPackageConverter regularRexpressionsForCachedCollaborationData]_block_invoke";
      v61 = 2082;
      v62 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackageConverter.mm";
      v63 = 1024;
      v64 = 160;
      v65 = 2114;
      v66 = v32;
      v67 = 2114;
      v68 = v33;
      v69 = 2048;
      v70 = v34;
      v71 = 2112;
      v72 = v5;
      _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Failed to create regular expression with error: errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", buf, 0x4Au);
    }

    v35 = objc_opt_class();
    v36 = NSStringFromClass(v35);
    v37 = [v5 domain];
    v53 = [v5 code];
    v51 = v37;
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Failed to create regular expression with error: errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", v38, v39, v40, v41, v42, v43, v44, "+[TSPPackageConverter regularRexpressionsForCachedCollaborationData]_block_invoke");

    v45 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[TSPPackageConverter regularRexpressionsForCachedCollaborationData]_block_invoke");
    v46 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackageConverter.mm"];
    v47 = objc_opt_class();
    v48 = NSStringFromClass(v47);
    v49 = [v5 domain];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v45, v46, 160, 1, "Failed to create regular expression with error: errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", v48, v49, [v5 code], v5, v51, v53, v5);

    TSUCrashBreakpoint();
    goto LABEL_14;
  }

  v56[0] = v1;
  v56[1] = v4;
  v6 = [NSArray arrayWithObjects:v56 count:2];
  v7 = qword_1001EA9E0;
  qword_1001EA9E0 = v6;
}

void sub_100018C14(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100018C58(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100018F18(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_1000191C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000191F8(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) path:a2 matchesFilter:*(a1 + 40)];
  if (v3)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  return v3 ^ 1;
}

void sub_100019740(_Unwind_Exception *a1)
{
  _Block_object_dispose((v6 - 136), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_100019804(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL sub_10001982C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a6;
  if ([*(a1 + 32) isCancelled])
  {
    v14 = 0;
  }

  else if ([*(a1 + 32) path:v11 matchesFilter:*(a1 + 40)])
  {
    v14 = 1;
  }

  else
  {
    v15 = *(a1 + 32);
    v16 = *(a1 + 48);
    v17 = *(*(a1 + 64) + 8);
    obj = *(v17 + 40);
    v18 = [v15 newWriteChannelAtPath:v11 lastModificationDate:v12 size:a4 CRC:a5 packageWriter:v16 error:&obj];
    objc_storeStrong((v17 + 40), obj);
    if (v18)
    {
      [*(a1 + 56) becomeCurrentWithPendingUnitCount:{objc_msgSend(*(a1 + 56), "tsu_pendingUnitCountForIncompleteProgress:", a4)}];
      v19 = *(*(a1 + 64) + 8);
      v21 = *(v19 + 40);
      v14 = [TSPFileManager copyDataFromReadChannel:v13 decryptionInfo:0 size:a4 toWriteChannel:v18 encryptionInfo:0 encodedLength:0 error:&v21];
      objc_storeStrong((v19 + 40), v21);
      [*(a1 + 56) resignCurrent];
      [v18 close];
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

void sub_100019AD4(id a1)
{
  qword_1001EA9F0 = [@"Index" stringByAppendingString:@"/"];

  _objc_release_x1();
}

void sub_100019B88(id a1)
{
  qword_1001EAA00 = [@"Data" stringByAppendingString:@"/"];

  _objc_release_x1();
}

void sub_100019C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100019C94(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  *(*(*(a1 + 32) + 8) + 24) += [v4 size];
}

void sub_100019E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15)
{
  _Block_object_dispose((v18 - 96), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_100019EB0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [v5 collapsedName];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [v5 name];
  }

  v11 = v10;

  v12 = [v6 collapsedName];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [v6 name];
  }

  v15 = v14;

  v16 = [*(a1 + 32) isDataPath:v11];
  v17 = [*(a1 + 32) isDataPath:v15];
  if (((v16 ^ 1 | v17) & 1) == 0)
  {
    goto LABEL_15;
  }

  if (((v16 | v17 ^ 1) & 1) == 0)
  {
    goto LABEL_16;
  }

  if ((v16 ^ 1 | v17 ^ 1))
  {
    v18 = [*(a1 + 32) isObjectArchivePath:v11];
    v19 = [*(a1 + 32) isObjectArchivePath:v15];
    if (v19 & 1 | ((v18 & 1) == 0))
    {
      if (v18 & 1 | ((v19 & 1) == 0))
      {
        v20 = [v5 offset];
        if (v20 < [v6 offset])
        {
          v21 = -1;
        }

        else
        {
          v21 = 1;
        }

        goto LABEL_20;
      }

LABEL_16:
      v21 = 1;
      goto LABEL_20;
    }

LABEL_15:
    v21 = -1;
    goto LABEL_20;
  }

  v22 = [v5 size];
  if (v22 > [v6 size])
  {
    v21 = -1;
  }

  else
  {
    v21 = 1;
  }

LABEL_20:

  objc_autoreleasePoolPop(v7);
  return v21;
}

void sub_10001A090(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v17 = a2;
  v6 = objc_autoreleasePoolPush();
  v7 = [v17 collapsedName];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [v17 name];
  }

  v10 = v9;

  if ([*(a1 + 32) isCancelled])
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    *a4 = 1;
  }

  else if ([v10 isEqualToString:@"Index.zip"] && objc_msgSend(*(a1 + 32), "packageType") == 2 && (objc_msgSend(*(*(a1 + 32) + 32), "componentZipArchive"), v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    v12 = *(a1 + 32);
    v13 = [v12[4] componentZipArchive];
    [v12 enumeratePackageEntriesWithZipArchive:v13 needsReadChannel:*(a1 + 64) accessor:*(a1 + 48)];
  }

  else if (([*(a1 + 32) isDocumentPropertiesPath:v10] & 1) == 0 && (objc_msgSend(v10, "hasSuffix:", @"/") & 1) == 0)
  {
    if (*(a1 + 64) == 1)
    {
      v14 = [*(a1 + 40) streamReadChannelForEntry:v17 validateCRC:{objc_msgSend(*(a1 + 32), "isObjectArchivePath:", v10)}];
    }

    else
    {
      v14 = 0;
    }

    *(*(*(a1 + 56) + 8) + 24) = *(a1 + 64) ^ 1 | (v14 != 0);
    if (*(*(*(a1 + 56) + 8) + 24) == 1)
    {
      v15 = *(a1 + 48);
      v16 = [v17 lastModificationDate];
      *(*(*(a1 + 56) + 8) + 24) = (*(v15 + 16))(v15, v10, v16, [v17 size], objc_msgSend(v17, "CRC"), v14);

      *a4 = *(*(*(a1 + 56) + 8) + 24) ^ 1;
      [v14 close];
    }

    else
    {
      *a4 = 1;
    }
  }

  objc_autoreleasePoolPop(v6);
}

void sub_10001A504(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10001AEF0(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

void sub_10001AF34(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

void sub_10001AF78(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

int64_t sub_10001B7E4(id a1, NSURL *a2, NSURL *a3)
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(NSURL *)a2 tsu_fileSize];
  v7 = [(NSURL *)v4 tsu_fileSize];
  objc_autoreleasePoolPop(v5);
  if (v6 > v7)
  {
    v8 = -1;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

void sub_10001BC50(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10001C468(id a1)
{
  UnsafePointer = TSULogCreateCategory("TSPPersistenceLogCat");

  _objc_release_x1();
}

void sub_10001C4AC(id a1)
{
  UnsafePointer = TSULogCreateCategory("TSPPersistenceLogCat");

  _objc_release_x1();
}

void sub_10001C4F0(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    if (UnsafePointer != -1)
    {
      sub_100152BF8();
    }

    v3 = UnsafePointer;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      v6 = [v2 domain];
      v7 = [v2 code];
      v8 = [v2 tsp_isRecoverable];
      v9 = [v2 tsp_hintsDescription];
      v10 = v9;
      v11 = &stru_1001D3878;
      v12 = 138544642;
      v13 = v5;
      v14 = 2114;
      if (v8)
      {
        v11 = @"recoverable=YES, ";
      }

      v15 = v6;
      v16 = 2048;
      v17 = v7;
      v18 = 2114;
      v19 = v11;
      v20 = 2114;
      v21 = v9;
      v22 = 2112;
      v23 = v2;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to close the package writer. error=errorClass=%{public}@, domain=%{public}@, code=%zd, %{public}@hints=%{public}@ (%@) ", &v12, 0x3Eu);
    }
  }
}

void sub_10001C6C4(id a1)
{
  UnsafePointer = TSULogCreateCategory("TSPPersistenceLogCat");

  _objc_release_x1();
}

void sub_10001C998(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10001CDE8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 storage];
  v8 = [v7 decryptionInfo];

  v9 = [*(a1 + 32) encryptionKey];
  v10 = UnsafePointer(v8, v9, 0x100000);

  if (v10)
  {
    if (UnsafePointer != -1)
    {
      sub_100152CEC();
    }

    v11 = UnsafePointer;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = [v6 packageLocator];
      sub_100152D00(v12, v13, v11);
    }

    [*(a1 + 40) removeObjectForKey:v5];
  }
}

void sub_10001CF64(id a1)
{
  UnsafePointer = TSULogCreateCategory("TSPPersistenceLogCat");

  _objc_release_x1();
}

void sub_10001CFA8(id a1)
{
  UnsafePointer = TSULogCreateCategory("TSPPersistenceLogCat");

  _objc_release_x1();
}

void sub_10001CFEC(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    if (UnsafePointer != -1)
    {
      sub_100152D58();
    }

    v3 = UnsafePointer;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      v6 = [(NSError *)v2 domain];
      v7 = [(NSError *)v2 code];
      v8 = [(NSError *)v2 tsp_isRecoverable];
      v9 = [(NSError *)v2 tsp_hintsDescription];
      v10 = v9;
      v11 = &stru_1001D3878;
      v12 = 138544642;
      v13 = v5;
      v14 = 2114;
      if (v8)
      {
        v11 = @"recoverable=YES, ";
      }

      v15 = v6;
      v16 = 2048;
      v17 = v7;
      v18 = 2114;
      v19 = v11;
      v20 = 2114;
      v21 = v9;
      v22 = 2112;
      v23 = v2;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to truncate existing zip, errorClass=%{public}@, domain=%{public}@, code=%zd, %{public}@hints=%{public}@ (%@) ", &v12, 0x3Eu);
    }
  }
}

void sub_10001D1C0(id a1)
{
  UnsafePointer = TSULogCreateCategory("TSPPersistenceLogCat");

  _objc_release_x1();
}

void sub_10001D75C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v5 - 80), 8);

  _Unwind_Resume(a1);
}

void sub_10001D7D4(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) originalPackage];
  v4 = [v3 componentZipArchive];
  v5 = [v7 name];
  v6 = [v4 entryForName:v5];
  *(*(*(a1 + 40) + 8) + 24) += [v6 size];
}

void sub_10001D8D4(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10001D918(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) becomeCurrentWithPendingUnitCount:{objc_msgSend(*(a1 + 32), "tsu_pendingUnitCountForIncompleteProgress:", *(*(*(a1 + 56) + 8) + 24))}];
  if (v3)
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      (*(v4 + 16))(v4, v3);
    }
  }

  else
  {
    v5 = [*(a1 + 40) zipArchiveWriter];
    v6 = *(a1 + 40);
    v7 = *(v6 + 144);
    v8 = [*(v6 + 152) writeURL];
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_10001DA88;
    v13 = &unk_1001C6868;
    v9 = *(a1 + 48);
    v14 = *(a1 + 40);
    v15 = v9;
    [v5 copyEntriesFromZipFileWriter:v7 readingFromURL:v8 options:0 completionHandler:&v10];
  }

  [*(a1 + 32) resignCurrent];
}

void sub_10001DA88(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = *(a1 + 32);
  v4 = *(v3 + 144);
  *(v3 + 144) = 0;

  v5 = *(a1 + 32);
  v6 = *(v5 + 152);
  *(v5 + 152) = 0;

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v8);
  }
}

void sub_10001DC50(id *a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v4 = a1[4];
    if (v4[20])
    {
      v5 = v4[19];
      if (!v5)
      {
        +[TSUAssertionHandler _atomicIncrementAssertCount];
        if (TSUAssertCat_init_token != -1)
        {
          sub_100152E24();
        }

        if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
        {
          sub_100152E38();
        }

        v6 = [NSString stringWithUTF8String:"[TSPFilePackageWriter closeWithQueue:completion:]_block_invoke"];
        v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPFilePackageWriter.mm"];
        [TSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:281 isFatal:0 description:"invalid nil value for '%{public}s'", "_safeSaveAssistant"];

        +[TSUAssertionHandler logBacktraceThrottled];
        v5 = *(a1[4] + 19);
      }

      v8 = [v5 writeURL];

      if (!v8)
      {
        +[TSUAssertionHandler _atomicIncrementAssertCount];
        if (TSUAssertCat_init_token != -1)
        {
          sub_100152EDC();
        }

        if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
        {
          sub_100152F04();
        }

        v9 = [NSString stringWithUTF8String:"[TSPFilePackageWriter closeWithQueue:completion:]_block_invoke"];
        v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPFilePackageWriter.mm"];
        [TSUAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:282 isFatal:0 description:"invalid nil value for '%{public}s'", "_safeSaveAssistant.writeURL"];

        +[TSUAssertionHandler logBacktraceThrottled];
      }

      v24.receiver = a1[4];
      v24.super_class = TSPFilePackageWriter;
      v11 = objc_msgSendSuper2(&v24, "zipArchiveWriter");
      v12 = [v11 entriesCount];

      if (v12)
      {
        +[TSUAssertionHandler _atomicIncrementAssertCount];
        if (TSUAssertCat_init_token != -1)
        {
          sub_100152FA8();
        }

        if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
        {
          sub_100152FD0();
        }

        v13 = [NSString stringWithUTF8String:"[TSPFilePackageWriter closeWithQueue:completion:]_block_invoke"];
        v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPFilePackageWriter.mm"];
        [TSUAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:284 isFatal:0 description:"Only the delayed zip archive writer should have entries"];

        +[TSUAssertionHandler logBacktraceThrottled];
      }

      v23.receiver = a1[4];
      v23.super_class = TSPFilePackageWriter;
      v15 = objc_msgSendSuper2(&v23, "zipArchiveWriter");
      v16 = dispatch_get_global_queue(0, 0);
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10001E21C;
      v20[3] = &unk_1001C6940;
      v20[4] = a1[4];
      v22 = a1[6];
      v21 = a1[5];
      [v15 closeWithQueue:v16 completion:v20];

      v17 = v22;
LABEL_25:

      goto LABEL_27;
    }
  }

  v18 = a1[6];
  if (v18)
  {
    v19 = a1[5];
    if (!v19)
    {
      (v18)[2](v18, v3);
      goto LABEL_27;
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001E13C;
    block[3] = &unk_1001C68B8;
    v27 = v18;
    v26 = v3;
    dispatch_async(v19, block);

    v17 = v27;
    goto LABEL_25;
  }

LABEL_27:
}

void sub_10001E150(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10001E194(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10001E1D8(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10001E21C(void *a1)
{
  v2 = a1[4];
  v3 = v2[19];
  v4 = [v2 URL];
  v12 = 0;
  v5 = [v3 endSaveWithSuccess:1 toURL:v4 addingAttributes:0 error:&v12];
  v6 = v12;
  if (v6)
  {
    v5 = 1;
  }

  if ((v5 & 1) == 0)
  {
    v6 = [NSError tsp_saveDocumentErrorWithUserInfo:0];
  }

  v7 = a1[6];
  if (v7)
  {
    v8 = a1[5];
    if (v8)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001E378;
      block[3] = &unk_1001C68B8;
      v11 = v7;
      v10 = v6;
      dispatch_async(v8, block);
    }

    else
    {
      (v7)[2](v7, v6);
    }
  }
}

void sub_10001EC84(id a1)
{
  UnsafePointer = TSULogCreateCategory("TSPPersistenceLogCat");

  _objc_release_x1();
}

void sub_10001ECC8(id a1)
{
  UnsafePointer = TSULogCreateCategory("TSPPersistenceLogCat");

  _objc_release_x1();
}

void sub_10001ED0C(id a1)
{
  UnsafePointer = TSULogCreateCategory("TSPPersistenceLogCat");

  _objc_release_x1();
}

void sub_10001F278(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10001F2BC(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10001F300(id a1)
{
  UnsafePointer = TSULogCreateCategory("TSPPersistenceLogCat");

  _objc_release_x1();
}

void sub_10001F750(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10001F794(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    [*(a1 + 32) setError:v4];
  }
}

void sub_10001F7FC(id a1)
{
  UnsafePointer = TSULogCreateCategory("TSPPersistenceLogCat");

  _objc_release_x1();
}

void sub_10001FEF4(id a1)
{
  UnsafePointer = TSULogCreateCategory("TSPPersistenceLogCat");

  _objc_release_x1();
}

void sub_10001FF38(id a1)
{
  UnsafePointer = TSULogCreateCategory("TSPPersistenceLogCat");

  _objc_release_x1();
}

void sub_100020478(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_1000204BC(id a1)
{
  UnsafePointer = TSULogCreateCategory("TSPPersistenceLogCat");

  _objc_release_x1();
}

void sub_1000207C4(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100020B5C(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100020CA0(id *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      v3 = [v2 domain];
      v4 = [v3 isEqualToString:@"com.apple.iWork.TSUtility"];

      if (v4)
      {
        v5 = [*a1 code];
        if (!v5)
        {
          v6 = [NSError tsp_readCorruptedDocumentErrorWithUserInfo:0];
          goto LABEL_10;
        }

        if (v5 == 1)
        {
          v6 = [NSError tsp_unknownReadErrorWithUserInfo:0];
          goto LABEL_10;
        }

        if (v5 == 2)
        {
          v6 = [NSError tsp_errorWithCode:3];
LABEL_10:
          *a1 = v6;
          return;
        }

        +[TSUAssertionHandler _atomicIncrementAssertCount];
        if (TSUAssertCat_init_token != -1)
        {
          sub_100153508();
        }

        if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
        {
          sub_10015351C();
        }

        v7 = [NSString stringWithUTF8String:"void TSPConvertError(NSError *__autoreleasing *)"];
        v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDatabase.mm"];
        [TSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:684 isFatal:0 description:"Bad error code"];

        +[TSUAssertionHandler logBacktraceThrottled];
      }
    }
  }
}

void sub_100021170(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100021368(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100021564(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100021A0C(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

void sub_100022518(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100022800(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100022A88(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100022D98(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100022DDC(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100023224(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10002369C(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void *sub_1000236E0(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *sub_1000237AC(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_100023804(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_100023804(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void sub_1000239A0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1000239A0(a1, *a2);
    sub_1000239A0(a1, a2[1]);

    operator delete(a2);
  }
}

void sub_100023C78(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100023F80(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  if (v3)
  {
    if (v5)
    {
      v4 = 0;
    }

    else
    {
      v4 = *(a1 + 40);
    }

    (*(v3 + 16))(v3, 1, v4);
  }
}

void sub_100024004(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100024208(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

uint64_t sub_10002424C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void sub_100024544(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10002473C(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 24) == 0;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v2 = dispatch_data_create(*(a1 + 56), *(a1 + 64), 0, 0);
    dispatch_suspend(*(*(a1 + 32) + 8));
    v3 = dispatch_semaphore_create(0);
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100024870;
    v7[3] = &unk_1001C6DC0;
    v7[4] = v4;
    v9 = *(a1 + 40);
    v6 = v3;
    v8 = v6;
    [v5 writeData:v2 handler:v7];
    dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  }
}

void sub_100024870(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v8 = a4;
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 24);
  v11 = v8;
  if (!v8 || !*(v9 + 24))
  {
    if (!*(v9 + 24))
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  *(v9 + 24) = 0;
  objc_storeStrong((*(a1 + 32) + 24), a4);
  v8 = v11;
  if (*(*(*(a1 + 48) + 8) + 24))
  {
LABEL_6:
    *(*(*(a1 + 56) + 8) + 24) += a3;
  }

LABEL_7:
  if (a2)
  {
    dispatch_resume(*(*(a1 + 32) + 8));
    dispatch_semaphore_signal(*(a1 + 40));
    v8 = v11;
  }
}

void sub_100024B74(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

void sub_100024C14(void *a1)
{
  cf = a1;
  [cf close];
  CFRelease(cf);
}

void sub_100024F04(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_1000257F8(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100025D84(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

uint64_t sub_100025EB8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100025ED0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return _objc_release_x1();
}

void sub_100026024(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 64) & 1) != 0 && !*(v2 + 16))
  {
    WeakRetained = objc_loadWeakRetained((v2 + 56));
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1000260FC;
    v4[3] = &unk_1001C6EB8;
    v4[4] = *(a1 + 32);
    [WeakRetained performReadUsingAccessor:v4];

    *(*(a1 + 32) + 64) &= ~1u;
    v2 = *(a1 + 32);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(v2 + 16));
}

void sub_1000260FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100026208;
  v13[3] = &unk_1001C6E90;
  v13[4] = v4;
  v5 = v3;
  v14 = v5;
  v12 = 0;
  v6 = [v4 newDocumentPropertiesWithURL:v5 zipProvider:v13 error:&v12];
  v7 = v12;
  v8 = v12;
  v9 = *(a1 + 32);
  v10 = *(v9 + 16);
  *(v9 + 16) = v6;

  v11 = *(a1 + 32);
  if (!*(v11 + 16))
  {
    objc_storeStrong((v11 + 40), v7);
  }
}

id sub_100026208(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  *(v3 + 64) = v4 & 0xFD;
  if ([*(a1 + 32) reloadZipArchiveIfNeededWithURLImpl:*(a1 + 40) isLazyLoading:(v4 >> 1) & 1 forceReload:0 error:a2])
  {
    v5 = *(*(a1 + 32) + 24);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_1000264A0(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_1000264E4(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100026650(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100026C34(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

void sub_100026D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_100026E38(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  if ((v3 & 2) != 0)
  {
    *(v2 + 64) = v3 & 0xFD;
    v2 = *(a1 + 32);
LABEL_4:
    [v2 reloadZipArchiveIfNeededWithURLImpl:0 isLazyLoading:(v3 >> 1) & 1 forceReload:0 error:0];
    v4 = *(*(a1 + 32) + 24);
    v5 = *(*(a1 + 40) + 16);
    goto LABEL_5;
  }

  if (*(v2 + 24))
  {
    goto LABEL_4;
  }

  v5 = *(*(a1 + 40) + 16);
LABEL_5:

  return v5();
}

void sub_100027110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose(&a25, 8);
  _Block_object_dispose((v33 - 80), 8);

  _Unwind_Resume(a1);
}

void sub_10002716C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 64);
  v5 = *(a1 + 32);
  v6 = *(*(a1 + 40) + 8);
  obj = *(v6 + 40);
  v7 = [v5 newZipArchiveFromPackageURL:v3 isLazyLoading:v4 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  if (v7)
  {
    v8 = *(a1 + 32);
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_1000277F4;
    v40[3] = &unk_1001C6FD8;
    v41 = v7;
    v9 = *(*(a1 + 40) + 8);
    v39 = *(v9 + 40);
    v10 = [v8 newDocumentPropertiesWithURL:v3 zipProvider:v40 error:&v39];
    objc_storeStrong((v9 + 40), v39);
    if (!v10)
    {
      if ((*(a1 + 64) & 1) == 0)
      {
        if (TSUDefaultCat_init_token != -1)
        {
          sub_10015412C();
        }

        v18 = TSUDefaultCat_log_t;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v33 = *(*(*(a1 + 40) + 8) + 40);
          v34 = objc_opt_class();
          v35 = NSStringFromClass(v34);
          v36 = [*(*(*(a1 + 40) + 8) + 40) domain];
          v37 = [*(*(*(a1 + 40) + 8) + 40) code];
          v38 = *(*(*(a1 + 40) + 8) + 40);
          *buf = 138413314;
          v44 = v3;
          v45 = 2114;
          v46 = v35;
          v47 = 2114;
          v48 = v36;
          v49 = 2048;
          v50 = v37;
          v51 = 2112;
          v52 = v38;
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to read document properties for URL: %@. errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", buf, 0x34u);
        }
      }

      goto LABEL_27;
    }

    v11 = *(a1 + 32);
    v12 = *(v11 + 16);
    if ((*(v11 + 64) & 1) == 0)
    {
      v13 = [v12 documentUUID];
      v14 = [v10 documentUUID];
      if ([v13 isEqual:v14])
      {
        v15 = [*(*(a1 + 32) + 16) versionUUID];
        v16 = [v10 versionUUID];
        v17 = [v15 isEqual:v16];

        if (v17)
        {
          objc_storeStrong((*(a1 + 32) + 24), v7);
LABEL_20:
          *(*(*(a1 + 48) + 8) + 24) = 1;
LABEL_27:

          goto LABEL_28;
        }
      }

      else
      {
      }

      if (TSUDefaultCat_init_token != -1)
      {
        sub_1001540C4();
      }

      if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
      {
        sub_1001540EC();
      }

      v21 = [NSError tsp_unknownReadErrorWithUserInfo:0];
      v22 = *(*(a1 + 40) + 8);
      v23 = *(v22 + 40);
      *(v22 + 40) = v21;

      goto LABEL_27;
    }

    if (v12)
    {
      +[TSUAssertionHandler _atomicIncrementAssertCount];
      if (TSUAssertCat_init_token != -1)
      {
        sub_100154000();
      }

      if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
      {
        sub_100154028();
      }

      v19 = [NSString stringWithUTF8String:"[TSPPackage reloadZipArchiveIfNeededWithURLImpl:isLazyLoading:forceReload:error:]_block_invoke"];
      v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackage.mm"];
      [TSUAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:413 isFatal:0 description:"expected nil value for '%{public}s'", "_documentProperties"];

      +[TSUAssertionHandler logBacktraceThrottled];
      v11 = *(a1 + 32);
    }

    objc_storeStrong((v11 + 16), v10);
    *(*(a1 + 32) + 64) &= ~1u;
    objc_storeStrong((*(a1 + 32) + 24), v7);
    goto LABEL_20;
  }

LABEL_28:
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v24 = *(*(a1 + 56) + 8);
    v25 = v3;
    v26 = *(v24 + 40);
    *(v24 + 40) = v25;
LABEL_35:

    goto LABEL_36;
  }

  objc_storeStrong((*(a1 + 32) + 40), *(*(*(a1 + 40) + 8) + 40));
  if ((*(a1 + 64) & 1) == 0)
  {
    if (TSUDefaultCat_init_token != -1)
    {
      sub_100154154();
    }

    v26 = TSUDefaultCat_log_t;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = *(*(*(a1 + 40) + 8) + 40);
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      v30 = [*(*(*(a1 + 40) + 8) + 40) domain];
      v31 = [*(*(*(a1 + 40) + 8) + 40) code];
      v32 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 138544130;
      v44 = v29;
      v45 = 2114;
      v46 = v30;
      v47 = 2048;
      v48 = v31;
      v49 = 2112;
      v50 = v32;
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Failed to reload document zip archive with error: errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", buf, 0x2Au);
    }

    goto LABEL_35;
  }

LABEL_36:
}

void sub_1000277FC(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

void sub_100027840(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100027884(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

void sub_1000278C8(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

id sub_1000279D0(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
  objc_storeWeak((*(a1 + 32) + 56), *(a1 + 48));
  v2 = *(a1 + 32);
  v3 = v2[3];

  return [v2 didReloadZipArchive:v3 packageURL:0 error:0];
}

void sub_100027C40(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 hasPrefix:@"Index"] && objc_msgSend(v5, "hasSuffix:", @"iwa"))
  {
    v3 = [@"Index" length];
    v4 = [v5 substringWithRange:{v3 + 1, -2 - objc_msgSend(@"iwa", "length") - (v3 - objc_msgSend(v5, "length"))}];
    if ([v4 length])
    {
      [*(a1 + 32) addObject:v4];
    }
  }
}

void sub_100028060(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_1000280A4(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10002851C(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100028560(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

void sub_100028934(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100028978(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_1000289BC(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

void sub_100028A00(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

void sub_1000290A4(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_1000290E8(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10002912C(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100029170(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

void sub_1000291B4(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

void sub_1000295D8(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10002997C(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100029F20(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10002A1D8(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10002A4AC(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10002A790(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10002AA64(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10002AD4C(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10002B06C(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10002B3F0(uint64_t a1, int a2, void *a3, void *a4)
{
  v9 = a3;
  v7 = a4;
  v8 = *(*(*(a1 + 48) + 8) + 24);
  if (v7 && (*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    [*(a1 + 32) setError:v7];
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v8 = *(*(*(a1 + 48) + 8) + 24);
  }

  if (v9 && (v8 & 1) == 0)
  {
    [*(a1 + 40) writeData:v9];
  }

  if (a2)
  {
    [*(a1 + 40) close];
  }
}

void sub_10002B854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = TSPSnappyComponentWriteChannel;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_10002B89C(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

BOOL sub_10002B978(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*(v1 + 65560))
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_1001549DC();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_1001549F0();
    }

    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Already closed", v4, v5, v6, v7, v8, v9, v10, "[TSPSnappyComponentWriteChannel writeData:]_block_invoke");
    v11 = [NSString stringWithUTF8String:"[TSPSnappyComponentWriteChannel writeData:]_block_invoke"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPSnappyComponentWriteChannel.mm"];
    [TSUAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:37 isFatal:1 description:"Already closed"];

    TSUCrashBreakpoint();
    abort();
  }

  v2 = *(a1 + 40);
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 3221225472;
  applier[2] = sub_10002BB48;
  applier[3] = &unk_1001C7498;
  applier[4] = v1;
  return dispatch_data_apply(v2, applier);
}

void sub_10002BB04(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

uint64_t sub_10002BB48(uint64_t a1, void *a2, uint64_t a3, char *a4, unint64_t a5)
{
  for (i = a2; a5; a5 -= v11)
  {
    v9 = *(a1 + 32);
    v10 = *(v9 + 65552);
    if (v10 >= 0x10000)
    {
      +[TSUAssertionHandler _atomicIncrementAssertCount];
      if (TSUAssertCat_init_token != -1)
      {
        sub_100154A78();
      }

      if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
      {
        sub_100154A8C();
      }

      TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Invalid uncompressed length.", v14, v15, v16, v17, v18, v19, v20, "[TSPSnappyComponentWriteChannel writeData:]_block_invoke");
      v21 = [NSString stringWithUTF8String:"[TSPSnappyComponentWriteChannel writeData:]_block_invoke"];
      v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPSnappyComponentWriteChannel.mm"];
      [TSUAssertionHandler handleFailureInFunction:v21 file:v22 lineNumber:44 isFatal:1 description:"Invalid uncompressed length."];

      TSUCrashBreakpoint();
      abort();
    }

    if (a5 >= 0x10000 - v10)
    {
      v11 = 0x10000 - v10;
    }

    else
    {
      v11 = a5;
    }

    memcpy((v9 + v10 + 16), a4, v11);
    *(*(a1 + 32) + 65552) += v11;
    v12 = *(a1 + 32);
    if (v12[8194] == 0x10000)
    {
      [v12 writeBlock];
    }

    a4 += v11;
  }

  return 1;
}

void sub_10002BD24(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10002BE70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v3 = v2;

  snappy::UncheckedByteArraySink::~UncheckedByteArraySink(va);
  snappy::ByteArraySource::~ByteArraySource(va1);
  _Unwind_Resume(a1);
}

void sub_10002BF10(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[8195];
  if (v3)
  {
    if (v2[8194])
    {
      [v2 writeBlock];
      v3 = *(*(a1 + 32) + 65560);
    }

    [v3 close];
    v4 = *(a1 + 32);
    v5 = *(v4 + 65560);
    *(v4 + 65560) = 0;
  }
}

void sub_10002C62C(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

id sub_10002CA60()
{
  if (qword_1001EAA38 != -1)
  {
    sub_100154BC4();
  }

  v1 = qword_1001EAA30;

  return v1;
}

id sub_10002CEBC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) URLByAppendingPathComponent:a3];
  v7 = [v5 writeToURL:v6 options:0 error:*(a1 + 40)];

  return v7;
}

void sub_10002D370(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_10002D5A4(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

void sub_10002D84C(id a1)
{
  qword_1001EAA10 = [@"Metadata" stringByAppendingPathComponent:@"Properties.plist"];

  _objc_release_x1();
}

void sub_10002D8DC(id a1)
{
  qword_1001EAA20 = [@"Metadata" stringByAppendingPathComponent:@"DocumentIdentifier"];

  _objc_release_x1();
}

void sub_10002DD7C(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10002DDC0(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10002E0CC(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10002E508(id a1)
{
  v3[0] = @"documentUUID";
  v3[1] = @"versionUUID";
  v3[2] = @"shareUUID";
  v3[3] = @"fileFormatVersion";
  v3[4] = @"privateUUID";
  v3[5] = @"revision";
  v3[6] = @"stableDocumentUUID";
  v1 = [NSArray arrayWithObjects:v3 count:7];
  v2 = qword_1001EAA30;
  qword_1001EAA30 = v1;
}

void sub_10002E928(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_10002EB24(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10002ECE0(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10002EE24(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

uint64_t UnsafePointer(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v3;
  v6 = v4;
  if (v5 == v6)
  {
    v15 = 0;
  }

  else
  {
    v7 = [v5 cryptoKey];
    v8 = [v6 cryptoKey];
    if (SFUEqualCryptoKeys(v7, v8) && (v9 = [v5 preferredBlockSize], v9 == objc_msgSend(v6, "preferredBlockSize")))
    {
      v10 = [v5 blockInfos];
      v11 = [v6 blockInfos];
      if (v10 == v11)
      {
        v15 = 0;
      }

      else
      {
        v12 = [v5 blockInfos];
        v13 = [v6 blockInfos];
        v14 = [v12 isEqual:v13];

        v15 = v14 ^ 1;
      }
    }

    else
    {
      v15 = 1;
    }
  }

  return v15;
}

void sub_10002EFBC(_Unwind_Exception *a1)
{
  v9 = v7;

  _Unwind_Resume(a1);
}

BOOL UnsafePointer(void *a1, void *a2, id a3)
{
  v5 = a1;
  v6 = a2;
  if (v5 | v6)
  {
    v8 = [v5 cryptoKey];
    v7 = !SFUEqualCryptoKeys(v8, v6) || [v5 preferredBlockSize] != a3;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

TSPMutableCryptoInfoInternal *UnsafePointer(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (!v3 || a2 == -1)
  {
    v7 = v3;
  }

  else
  {
    if (!a2)
    {
      +[TSUAssertionHandler _atomicIncrementAssertCount];
      if (TSUAssertCat_init_token != -1)
      {
        sub_100154F98();
      }

      if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
      {
        sub_100154FAC();
      }

      v5 = [NSString stringWithUTF8String:"id<TSPMutableCryptoInfo>  _Nonnull TSPMutableCryptoInfoForTranscodingToKey(SFUCryptoKey * _Nonnull __strong, size_t)"];
      v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPCryptoInfo.mm"];
      [TSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:178 isFatal:0 description:"Preferred block size cannot be zero."];

      +[TSUAssertionHandler logBacktraceThrottled];
    }

    v7 = [[TSPMutableCryptoInfoInternal alloc] initWithCryptoKey:v4 preferredBlockSize:a2 blockInfos:0 decodedLength:0];
  }

  v8 = v7;

  return v8;
}

void sub_10002F24C(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10002F290(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/messages/src/TSPDatabaseMessages.pb.cc", a4);
  *&v5 = 0;
  unk_1001EB680 = v5;
  TSP::_DatabaseData_default_instance_[0] = off_1001C76B0;
  if (atomic_load_explicit(scc_info_DatabaseData_TSPDatabaseMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_DatabaseData_TSPDatabaseMessages_2eproto);
  }

  qword_1001EB690 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, TSP::_DatabaseData_default_instance_, v4);
}

void sub_10002F340(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/messages/src/TSPDatabaseMessages.pb.cc", a4);
  TSP::DatabaseDataArchive::DatabaseDataArchive(&TSP::_DatabaseDataArchive_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_DatabaseDataArchive_default_instance_, v4);
}

void sub_10002F3B0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/messages/src/TSPDatabaseMessages.pb.cc", a4);
  *&v5 = 0;
  unk_1001EB6E0 = v5;
  TSP::_DatabaseImageDataArchive_default_instance_[0] = off_1001C7810;
  if (atomic_load_explicit(scc_info_DatabaseImageDataArchive_TSPDatabaseMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_DatabaseImageDataArchive_TSPDatabaseMessages_2eproto);
  }

  dword_1001EB6F8 = 0;
  qword_1001EB6F0 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, TSP::_DatabaseImageDataArchive_default_instance_, v4);
}

void TSP::DatabaseData::~DatabaseData(TSP::DatabaseData *this)
{
  if (this != TSP::_DatabaseData_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::DataReference::~DataReference(v2);
      operator delete();
    }
  }

  sub_10002F4C4(this + 1);
}

{
  TSP::DatabaseData::~DatabaseData(this);

  operator delete();
}

uint64_t *sub_10002F4C4(uint64_t *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = v1 & 0xFFFFFFFFFFFFFFFELL;
    if (!*(v1 & 0xFFFFFFFFFFFFFFFELL) && v2 != 0)
    {
      v4 = *(v2 + 8);
      if (v4 != *(v2 + 16))
      {
        google::protobuf::UnknownFieldSet::ClearFallback((v2 + 8));
        v4 = *(v2 + 8);
      }

      if (v4)
      {
        *(v2 + 16) = v4;
        operator delete(v4);
      }

      operator delete();
    }
  }

  return result;
}

google::protobuf::UnknownFieldSet *TSP::DatabaseData::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  if (*(this + 16))
  {
    this = TSP::DataReference::Clear(*(this + 3), a2, a3);
  }

  v5 = *(v3 + 8);
  v4 = v3 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1000315EC(v4, a2, a3);
  }

  return this;
}

google::protobuf::internal *TSP::DatabaseData::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v18 = a2;
  for (i = *(a3 + 92); (sub_1000313B0(a3, &v18, i) & 1) == 0; i = *(a3 + 92))
  {
    v7 = (v18 + 1);
    v8 = *v18;
    if (*v18 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v18, (v9 - 128));
        v18 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v7 = TagFallback;
        v8 = v6;
        goto LABEL_7;
      }

      v7 = (v18 + 2);
    }

    v18 = v7;
LABEL_7:
    if (v8 == 10)
    {
      *(a1 + 16) |= 1u;
      v14 = *(a1 + 24);
      if (!v14)
      {
        v15 = *(a1 + 8);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v14 = google::protobuf::Arena::CreateMaybeMessage<TSP::DataReference>(v15);
        *(a1 + 24) = v14;
        v7 = v18;
      }

      v13 = sub_100155034(a3, v14, v7);
    }

    else
    {
      if (v8)
      {
        v10 = (v8 & 7) == 4;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        *(a3 + 80) = v8 - 1;
        return v18;
      }

      v11 = *(a1 + 8);
      if (v11)
      {
        v12 = ((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      else
      {
        v12 = sub_100031428((a1 + 8), v6, v7);
        v7 = v18;
      }

      v13 = google::protobuf::internal::UnknownFieldParse(v8, v12, v7);
    }

    v18 = v13;
    if (!v13)
    {
      return 0;
    }
  }

  return v18;
}

const google::protobuf::UnknownFieldSet *TSP::DatabaseData::_InternalSerialize(TSP::DatabaseData *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 3);
    *a2 = 10;
    v7 = *(v6 + 5);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = TSP::DataReference::_InternalSerialize(v6, v8, a3, a4);
  }

  v12 = *(this + 1);
  if ((v12 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v12 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *TSP::DatabaseData::ByteSizeLong(TSP::DataReference **this)
{
  if (this[2])
  {
    v3 = TSP::DataReference::ByteSizeLong(this[3]);
    v2 = &v3[((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1];
  }

  else
  {
    v2 = 0;
  }

  if (this[1])
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 1), v2, this + 5);
  }

  else
  {
    *(this + 5) = v2;
    return v2;
  }
}

void TSP::DatabaseData::MergeFrom(TSP::DatabaseData *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::DatabaseData::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::DatabaseData::MergeFrom(void *this, const TSP::DatabaseData *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  if (*(a2 + 16))
  {
    v6 = *(a2 + 3);
    *(v4 + 4) |= 1u;
    v7 = v4[3];
    if (!v7)
    {
      v8 = v4[1];
      if (v8)
      {
        v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
      }

      v7 = google::protobuf::Arena::CreateMaybeMessage<TSP::DataReference>(v8);
      v4[3] = v7;
      v6 = *(a2 + 3);
    }

    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = &TSP::_DataReference_default_instance_;
    }

    return TSP::DataReference::MergeFrom(v7, v9, a3);
  }

  return this;
}

void TSP::DatabaseData::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::DatabaseData::Clear(this, a2, a3);

    TSP::DatabaseData::MergeFrom(this, a2);
  }
}

uint64_t TSP::DatabaseData::IsInitialized(TSP::DataReference **this)
{
  if (this[2])
  {
    return TSP::DataReference::IsInitialized(this[3]);
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10002FA70(uint64_t *result, google::protobuf::Arena **a2, uint64_t a3)
{
  v3 = result;
  v4 = *a2;
  if (*result)
  {
    if ((v4 & 1) == 0)
    {
      v5 = sub_100031428(a2, a2, a3);
      goto LABEL_6;
    }
  }

  else if ((v4 & 1) == 0)
  {
    return result;
  }

  v5 = ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
LABEL_6:

  return sub_10003163C(v3, v5, a3);
}

uint64_t TSP::DatabaseData::GetMetadata(TSP::DatabaseData *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPDatabaseMessages_2eproto, 0);
  result = *off_1001E8EB0;
  v2 = off_1001E8EB0[1];
  return result;
}

uint64_t TSP::DatabaseDataArchive::DatabaseDataArchive(uint64_t a1, uint64_t a2)
{
  *a1 = off_1001C7760;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  if (atomic_load_explicit(scc_info_DatabaseDataArchive_TSPDatabaseMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_DatabaseDataArchive_TSPDatabaseMessages_2eproto);
  }

  *(a1 + 24) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 32) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 60) = 1;
  return a1;
}

void TSP::DatabaseDataArchive::~DatabaseDataArchive(TSP::DatabaseDataArchive *this)
{
  v2 = *(this + 3);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  v3 = *(this + 4);
  if (v3 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete();
  }

  if (this != &TSP::_DatabaseDataArchive_default_instance_)
  {
    v4 = *(this + 5);
    if (v4)
    {
      TSP::Reference::~Reference(v4);
      operator delete();
    }
  }

  sub_10002F4C4(this + 1);
}

{
  TSP::DatabaseDataArchive::~DatabaseDataArchive(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::DatabaseDataArchive::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  v4 = *(this + 4);
  if ((v4 & 7) == 0)
  {
    goto LABEL_6;
  }

  if ((v4 & 1) == 0)
  {
    if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_16;
  }

  v7 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v7 + 23) & 0x80000000) == 0)
  {
    *v7 = 0;
    *(v7 + 23) = 0;
    if ((v4 & 2) != 0)
    {
      goto LABEL_16;
    }

LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  **v7 = 0;
  *(v7 + 8) = 0;
  if ((v4 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_16:
  v8 = *(this + 4) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v8 + 23) & 0x80000000) == 0)
  {
    *v8 = 0;
    *(v8 + 23) = 0;
    if ((v4 & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    this = TSP::Reference::Clear(*(this + 5), a2, a3);
    goto LABEL_6;
  }

  **v8 = 0;
  *(v8 + 8) = 0;
  if ((v4 & 4) != 0)
  {
    goto LABEL_5;
  }

LABEL_6:
  if ((v4 & 0x38) != 0)
  {
    *(v3 + 56) = 0;
    *(v3 + 48) = 0;
    *(v3 + 60) = 1;
  }

  v6 = *(v3 + 8);
  v5 = v3 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_1000315EC(v5, a2, a3);
  }

  return this;
}

google::protobuf::internal *TSP::DatabaseDataArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v38 = a2;
  v6 = 0;
  if ((sub_1000313B0(a3, &v38, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v38 + 1);
      v9 = *v38;
      if ((*v38 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v38, (v10 - 128));
      v38 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_67;
      }

      v8 = TagFallback;
      v9 = v5;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 <= 3)
      {
        if (v11 != 1)
        {
          if (v11 == 2)
          {
            if (v9 != 18)
            {
              goto LABEL_47;
            }

            *(a1 + 16) |= 1u;
            v13 = *(a1 + 8);
            if (v13)
            {
              v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
            }

            v14 = (a1 + 24);
          }

          else
          {
            if (v11 != 3 || v9 != 26)
            {
LABEL_47:
              if (v9)
              {
                v28 = (v9 & 7) == 4;
              }

              else
              {
                v28 = 1;
              }

              if (v28)
              {
                *(a3 + 80) = v9 - 1;
                goto LABEL_2;
              }

              v29 = *(a1 + 8);
              if (v29)
              {
                v30 = ((v29 & 0xFFFFFFFFFFFFFFFELL) + 8);
              }

              else
              {
                v30 = sub_100031428((a1 + 8), v5, v8);
                v8 = v38;
              }

              v20 = google::protobuf::internal::UnknownFieldParse(v9, v30, v8);
              goto LABEL_54;
            }

            *(a1 + 16) |= 2u;
            v13 = *(a1 + 8);
            if (v13)
            {
              v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
            }

            v14 = (a1 + 32);
          }

          v24 = google::protobuf::internal::ArenaStringPtr::Mutable(v14, v13);
          v20 = google::protobuf::internal::InlineGreedyStringParser(v24, v38, a3);
          goto LABEL_54;
        }

        if (v9 != 10)
        {
          goto LABEL_47;
        }

        *(a1 + 16) |= 4u;
        v18 = *(a1 + 40);
        if (!v18)
        {
          v19 = *(a1 + 8);
          if (v19)
          {
            v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
          }

          v18 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v19);
          *(a1 + 40) = v18;
          v8 = v38;
        }

        v20 = sub_100155104(a3, v18, v8);
LABEL_54:
        v38 = v20;
        if (!v20)
        {
          goto LABEL_67;
        }

        goto LABEL_55;
      }

      if (v11 == 4)
      {
        if (v9 != 32)
        {
          goto LABEL_47;
        }

        v6 |= 8u;
        v22 = (v8 + 1);
        v21 = *v8;
        if ((v21 & 0x8000000000000000) == 0)
        {
          goto LABEL_36;
        }

        v23 = *v22;
        v21 = (v23 << 7) + v21 - 128;
        if ((v23 & 0x80000000) == 0)
        {
          v22 = (v8 + 2);
LABEL_36:
          v38 = v22;
          *(a1 + 48) = v21;
          goto LABEL_55;
        }

        v32 = google::protobuf::internal::VarintParseSlow64(v8, v21);
        v38 = v32;
        *(a1 + 48) = v33;
        if (!v32)
        {
          goto LABEL_67;
        }
      }

      else if (v11 == 5)
      {
        if (v9 != 40)
        {
          goto LABEL_47;
        }

        v6 |= 0x10u;
        v25 = (v8 + 1);
        LODWORD(v26) = *v8;
        if ((*v8 & 0x80000000) == 0)
        {
          goto LABEL_46;
        }

        v27 = *v25;
        v26 = (v26 + (v27 << 7) - 128);
        if ((v27 & 0x80000000) == 0)
        {
          v25 = (v8 + 2);
LABEL_46:
          v38 = v25;
          *(a1 + 56) = v26;
          goto LABEL_55;
        }

        v36 = google::protobuf::internal::VarintParseSlow32(v8, v26);
        v38 = v36;
        *(a1 + 56) = v37;
        if (!v36)
        {
LABEL_67:
          v38 = 0;
          goto LABEL_2;
        }
      }

      else
      {
        if (v11 != 6 || v9 != 48)
        {
          goto LABEL_47;
        }

        v6 |= 0x20u;
        v16 = (v8 + 1);
        v15 = *v8;
        if ((v15 & 0x8000000000000000) == 0)
        {
          goto LABEL_25;
        }

        v17 = *v16;
        v15 = (v17 << 7) + v15 - 128;
        if ((v17 & 0x80000000) == 0)
        {
          v16 = (v8 + 2);
LABEL_25:
          v38 = v16;
          *(a1 + 60) = v15 != 0;
          goto LABEL_55;
        }

        v34 = google::protobuf::internal::VarintParseSlow64(v8, v15);
        v38 = v34;
        *(a1 + 60) = v35 != 0;
        if (!v34)
        {
          goto LABEL_67;
        }
      }

LABEL_55:
      if (sub_1000313B0(a3, &v38, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v38 + 2);
LABEL_6:
    v38 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v38;
}

const google::protobuf::UnknownFieldSet *TSP::DatabaseDataArchive::_InternalSerialize(TSP::DatabaseDataArchive *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v10 = *(this + 5);
    *v4 = 10;
    v11 = *(v10 + 5);
    if (v11 > 0x7F)
    {
      *(v4 + 1) = v11 | 0x80;
      v13 = v11 >> 7;
      if (v11 >> 14)
      {
        v12 = v4 + 3;
        do
        {
          *(v12 - 1) = v13 | 0x80;
          v14 = v13 >> 7;
          ++v12;
          v15 = v13 >> 14;
          v13 >>= 7;
        }

        while (v15);
        *(v12 - 1) = v14;
      }

      else
      {
        *(v4 + 2) = v13;
        v12 = v4 + 3;
      }
    }

    else
    {
      *(v4 + 1) = v11;
      v12 = v4 + 2;
    }

    v4 = TSP::Reference::_InternalSerialize(v10, v12, a3, v4);
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_100030384(a3, 2, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 2) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_24:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v16 = *(this + 6);
    *v4 = 32;
    if (v16 > 0x7F)
    {
      *(v4 + 1) = v16 | 0x80;
      v17 = v16 >> 7;
      if (v16 >> 14)
      {
        v4 = (v4 + 3);
        do
        {
          *(v4 - 1) = v17 | 0x80;
          v18 = v17 >> 7;
          v4 = (v4 + 1);
          v19 = v17 >> 14;
          v17 >>= 7;
        }

        while (v19);
        *(v4 - 1) = v18;
        if ((v6 & 0x10) != 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        *(v4 + 2) = v17;
        v4 = (v4 + 3);
        if ((v6 & 0x10) != 0)
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
      *(v4 + 1) = v16;
      v4 = (v4 + 2);
      if ((v6 & 0x10) != 0)
      {
        goto LABEL_35;
      }
    }

LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

LABEL_23:
  v4 = sub_100030384(a3, 3, (*(this + 4) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 8) != 0)
  {
    goto LABEL_24;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    goto LABEL_6;
  }

LABEL_35:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v20 = *(this + 14);
  *v4 = 40;
  if (v20 > 0x7F)
  {
    *(v4 + 1) = v20 | 0x80;
    v21 = v20 >> 7;
    if (v20 >> 14)
    {
      v4 = (v4 + 3);
      do
      {
        *(v4 - 1) = v21 | 0x80;
        v22 = v21 >> 7;
        v4 = (v4 + 1);
        v23 = v21 >> 14;
        v21 >>= 7;
      }

      while (v23);
      *(v4 - 1) = v22;
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      *(v4 + 2) = v21;
      v4 = (v4 + 3);
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    *(v4 + 1) = v20;
    v4 = (v4 + 2);
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_10;
    }
  }

LABEL_7:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(this + 60);
  *v4 = 48;
  *(v4 + 1) = v7;
  v4 = (v4 + 2);
LABEL_10:
  v8 = *(this + 1);
  if ((v8 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v8 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}

unsigned __int8 *sub_100030384(google::protobuf::io::EpsCopyOutputStream *a1, int a2, const void **a3, unsigned __int8 *a4)
{
  v4 = *(a3 + 23);
  if ((v4 & 0x8000000000000000) == 0 || (v4 = a3[1], v4 <= 127))
  {
    v5 = *a1;
    v6 = 8 * a2;
    if ((8 * a2) >= 0x80)
    {
      v8 = 2;
      v9 = 3;
      v10 = 4;
      if (v6 >> 28)
      {
        v10 = 5;
      }

      if (v6 >= 0x200000)
      {
        v9 = v10;
      }

      if (v6 >= 0x4000)
      {
        v8 = v9;
      }

      if ((v5 + ~&a4[v8] + 16) >= v4)
      {
        *a4 = v6 | 0x82;
        v11 = v6 >> 7;
        if (v6 >> 14)
        {
          v7 = a4 + 2;
          do
          {
            *(v7 - 1) = v11 | 0x80;
            v12 = v11 >> 7;
            ++v7;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v7 - 1) = v12;
        }

        else
        {
          a4[1] = v11;
          v7 = a4 + 2;
        }

LABEL_18:
        *v7 = v4;
        v14 = (v7 + 1);
        if (*(a3 + 23) >= 0)
        {
          v15 = a3;
        }

        else
        {
          v15 = *a3;
        }

        memcpy(v14, v15, v4);
        return &v14[v4];
      }
    }

    else if (v5 - a4 + 14 >= v4)
    {
      *a4 = v6 | 2;
      v7 = a4 + 1;
      goto LABEL_18;
    }
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a1, a2, a3, a4);
}

unint64_t TSP::DatabaseDataArchive::RequiredFieldsByteSizeFallback(TSP::DatabaseDataArchive *this)
{
  v1 = *(this + 4);
  if ((v1 & 2) != 0)
  {
    v3 = *(this + 4) & 0xFFFFFFFFFFFFFFFELL;
    v4 = *(v3 + 23);
    v5 = *(v3 + 8);
    if ((v4 & 0x80u) == 0)
    {
      v5 = v4;
    }

    v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 + ((v1 >> 4) & 2);
}

char *TSP::DatabaseDataArchive::ByteSizeLong(TSP::DatabaseDataArchive *this)
{
  v2 = *(this + 4);
  if ((~v2 & 0x22) != 0)
  {
    v6 = TSP::DatabaseDataArchive::RequiredFieldsByteSizeFallback(this);
    if ((v2 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v3 = *(this + 4) & 0xFFFFFFFFFFFFFFFELL;
  v4 = *(v3 + 23);
  v5 = *(v3 + 8);
  if ((v4 & 0x80u) == 0)
  {
    v5 = v4;
  }

  v6 = (v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 3);
  if (v2)
  {
LABEL_7:
    v7 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    v6 = (v6 + v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1);
  }

LABEL_10:
  if ((v2 & 0x1C) == 0)
  {
    goto LABEL_15;
  }

  if ((v2 & 4) != 0)
  {
    v11 = TSP::Reference::ByteSizeLong(*(this + 5));
    v6 = &v11[v6 + 1 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6)];
    if ((v2 & 8) == 0)
    {
LABEL_13:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_13;
  }

  v6 = (v6 + ((9 * (__clz(*(this + 6) | 1) ^ 0x3F) + 73) >> 6) + 1);
  if ((v2 & 0x10) != 0)
  {
LABEL_14:
    v6 = (v6 + ((9 * (__clz(*(this + 14) | 1) ^ 0x1F) + 73) >> 6) + 1);
  }

LABEL_15:
  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v6, this + 5);
  }

  else
  {
    *(this + 5) = v6;
    return v6;
  }
}

void TSP::DatabaseDataArchive::MergeFrom(std::string *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::DatabaseDataArchive::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

std::string *TSP::DatabaseDataArchive::MergeFrom(std::string *this, const TSP::DatabaseDataArchive *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(&this->__r_.__value_.__l.__size_, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 4);
  if ((v6 & 0x3F) != 0)
  {
    if (v6)
    {
      v7 = *(a2 + 3);
      LODWORD(v4->__r_.__value_.__r.__words[2]) |= 1u;
      size = v4->__r_.__value_.__l.__size_;
      if (size)
      {
        size = *(size & 0xFFFFFFFFFFFFFFFELL);
      }

      this = google::protobuf::internal::ArenaStringPtr::Set(&v4[1], v7 & 0xFFFFFFFFFFFFFFFELL, size);
      if ((v6 & 2) == 0)
      {
LABEL_6:
        if ((v6 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_19;
      }
    }

    else if ((v6 & 2) == 0)
    {
      goto LABEL_6;
    }

    v9 = *(a2 + 4);
    LODWORD(v4->__r_.__value_.__r.__words[2]) |= 2u;
    v10 = v4->__r_.__value_.__l.__size_;
    if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    this = google::protobuf::internal::ArenaStringPtr::Set(&v4[1].__r_.__value_.__l.__size_, v9 & 0xFFFFFFFFFFFFFFFELL, v10);
    if ((v6 & 4) == 0)
    {
LABEL_7:
      if ((v6 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_27;
    }

LABEL_19:
    LODWORD(v4->__r_.__value_.__r.__words[2]) |= 4u;
    v11 = v4[1].__r_.__value_.__r.__words[2];
    if (!v11)
    {
      v12 = v4->__r_.__value_.__l.__size_;
      if (v12)
      {
        v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      }

      v11 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v12);
      v4[1].__r_.__value_.__r.__words[2] = v11;
    }

    if (*(a2 + 5))
    {
      v13 = *(a2 + 5);
    }

    else
    {
      v13 = &TSP::_Reference_default_instance_;
    }

    this = TSP::Reference::MergeFrom(v11, v13, a3);
    if ((v6 & 8) == 0)
    {
LABEL_8:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_28;
    }

LABEL_27:
    v4[2].__r_.__value_.__r.__words[0] = *(a2 + 6);
    if ((v6 & 0x10) == 0)
    {
LABEL_9:
      if ((v6 & 0x20) == 0)
      {
LABEL_11:
        LODWORD(v4->__r_.__value_.__r.__words[2]) |= v6;
        return this;
      }

LABEL_10:
      v4[2].__r_.__value_.__s.__data_[12] = *(a2 + 60);
      goto LABEL_11;
    }

LABEL_28:
    LODWORD(v4[2].__r_.__value_.__r.__words[1]) = *(a2 + 14);
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  return this;
}

void TSP::DatabaseDataArchive::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::DatabaseDataArchive::Clear(this, a2, a3);

    TSP::DatabaseDataArchive::MergeFrom(this, a2);
  }
}

uint64_t TSP::DatabaseDataArchive::IsInitialized(TSP::DatabaseDataArchive *this)
{
  v1 = *(this + 4);
  if ((~v1 & 0x22) != 0)
  {
    return 0;
  }

  if ((v1 & 4) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(this + 5));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t TSP::DatabaseDataArchive::GetMetadata(TSP::DatabaseDataArchive *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPDatabaseMessages_2eproto, 0);
  result = off_1001E8EB0[2];
  v2 = off_1001E8EB0[3];
  return result;
}

void TSP::DatabaseImageDataArchive::~DatabaseImageDataArchive(TSP::DatabaseImageDataArchive *this)
{
  if (this != TSP::_DatabaseImageDataArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::DatabaseDataArchive::~DatabaseDataArchive(v2);
      operator delete();
    }
  }

  sub_10002F4C4(this + 1);
}

{
  TSP::DatabaseImageDataArchive::~DatabaseImageDataArchive(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::DatabaseImageDataArchive::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  if (*(this + 16))
  {
    this = TSP::DatabaseDataArchive::Clear(*(this + 3), a2, a3);
  }

  v5 = *(v3 + 8);
  v4 = v3 + 8;
  *(v4 + 24) = 0;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1000315EC(v4, a2, a3);
  }

  return this;
}

google::protobuf::internal *TSP::DatabaseImageDataArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  for (i = *(a3 + 92); (sub_1000313B0(a3, &v22, i) & 1) == 0; i = *(a3 + 92))
  {
    v7 = (v22 + 1);
    v8 = *v22;
    if ((*v22 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v9 = v8 + (*v7 << 7);
    v8 = v9 - 128;
    if ((*v7 & 0x80000000) == 0)
    {
      v7 = (v22 + 2);
LABEL_6:
      v22 = v7;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v22, (v9 - 128));
    v22 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v7 = TagFallback;
    v8 = v6;
LABEL_7:
    if (v8 >> 3 == 2)
    {
      if (v8 == 16)
      {
        v16 = (v7 + 1);
        v15 = *v7;
        if ((v15 & 0x8000000000000000) == 0)
        {
          goto LABEL_23;
        }

        v17 = *v16;
        v15 = (v17 << 7) + v15 - 128;
        if (v17 < 0)
        {
          v22 = google::protobuf::internal::VarintParseSlow64(v7, v15);
          if (!v22)
          {
            return 0;
          }
        }

        else
        {
          v16 = (v7 + 2);
LABEL_23:
          v22 = v16;
        }

        if (v15 > 2)
        {
          sub_1001552A4((a1 + 8), v15, v7);
        }

        else
        {
          *(a1 + 16) |= 2u;
          *(a1 + 32) = v15;
        }

        continue;
      }
    }

    else if (v8 >> 3 == 1 && v8 == 10)
    {
      *(a1 + 16) |= 1u;
      v18 = *(a1 + 24);
      if (!v18)
      {
        v19 = *(a1 + 8);
        if (v19)
        {
          v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
        }

        v18 = google::protobuf::Arena::CreateMaybeMessage<TSP::DatabaseDataArchive>(v19);
        *(a1 + 24) = v18;
        v7 = v22;
      }

      v14 = sub_1001551D4(a3, v18, v7);
      goto LABEL_31;
    }

    if (v8)
    {
      v11 = (v8 & 7) == 4;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      *(a3 + 80) = v8 - 1;
      return v22;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = ((v12 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v13 = sub_100031428((a1 + 8), v6, v7);
      v7 = v22;
    }

    v14 = google::protobuf::internal::UnknownFieldParse(v8, v13, v7);
LABEL_31:
    v22 = v14;
    if (!v14)
    {
      return 0;
    }
  }

  return v22;
}

const google::protobuf::UnknownFieldSet *TSP::DatabaseImageDataArchive::_InternalSerialize(TSP::DatabaseImageDataArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 3);
    *a2 = 10;
    v8 = *(v7 + 5);
    if (v8 > 0x7F)
    {
      a2[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v9 = a2 + 3;
        do
        {
          *(v9 - 1) = v10 | 0x80;
          v11 = v10 >> 7;
          ++v9;
          v12 = v10 >> 14;
          v10 >>= 7;
        }

        while (v12);
        *(v9 - 1) = v11;
      }

      else
      {
        a2[2] = v10;
        v9 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v8;
      v9 = a2 + 2;
    }

    a2 = TSP::DatabaseDataArchive::_InternalSerialize(v7, v9, a3);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v13 = *(this + 8);
    *a2 = 16;
    if (v13 > 0x7F)
    {
      a2[1] = v13 | 0x80;
      v14 = v13 >> 7;
      if (v13 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v14 | 0x80;
          v15 = v14 >> 7;
          ++a2;
          v16 = v14 >> 14;
          v14 >>= 7;
        }

        while (v16);
        *(a2 - 1) = v15;
      }

      else
      {
        a2[2] = v14;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v13;
      a2 += 2;
    }
  }

  v17 = *(this + 1);
  if ((v17 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v17 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *TSP::DatabaseImageDataArchive::RequiredFieldsByteSizeFallback(TSP::DatabaseImageDataArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSP::DatabaseDataArchive::ByteSizeLong(*(this + 3));
    result = &v4[((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1];
    if ((*(this + 4) & 2) == 0)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if ((v2 & 2) == 0)
    {
      return result;
    }
  }

  v5 = *(this + 8);
  if (v5 < 0)
  {
    v6 = 11;
  }

  else
  {
    v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v6;
  return result;
}

char *TSP::DatabaseImageDataArchive::ByteSizeLong(TSP::DatabaseDataArchive **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v7 = TSP::DatabaseImageDataArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSP::DatabaseDataArchive::ByteSizeLong(this[3]);
    v3 = (9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6;
    v4 = *(this + 8);
    v5 = (9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6;
    if (v4 >= 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 10;
    }

    v7 = &v2[v3 + 2 + v6];
  }

  if (this[1])
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 1), v7, this + 5);
  }

  else
  {
    *(this + 5) = v7;
    return v7;
  }
}

void TSP::DatabaseImageDataArchive::MergeFrom(std::string *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::DatabaseImageDataArchive::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

std::string *TSP::DatabaseImageDataArchive::MergeFrom(std::string *this, const TSP::DatabaseImageDataArchive *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(&this->__r_.__value_.__l.__size_, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 4);
  if ((v6 & 3) != 0)
  {
    if (v6)
    {
      LODWORD(v4->__r_.__value_.__r.__words[2]) |= 1u;
      data = v4[1].__r_.__value_.__l.__data_;
      if (!data)
      {
        size = v4->__r_.__value_.__l.__size_;
        if (size)
        {
          size = *(size & 0xFFFFFFFFFFFFFFFELL);
        }

        data = google::protobuf::Arena::CreateMaybeMessage<TSP::DatabaseDataArchive>(size);
        v4[1].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 3))
      {
        v9 = *(a2 + 3);
      }

      else
      {
        v9 = &TSP::_DatabaseDataArchive_default_instance_;
      }

      this = TSP::DatabaseDataArchive::MergeFrom(data, v9, a3);
    }

    if ((v6 & 2) != 0)
    {
      LODWORD(v4[1].__r_.__value_.__r.__words[1]) = *(a2 + 8);
    }

    LODWORD(v4->__r_.__value_.__r.__words[2]) |= v6;
  }

  return this;
}

void TSP::DatabaseImageDataArchive::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::DatabaseImageDataArchive::Clear(this, a2, a3);

    TSP::DatabaseImageDataArchive::MergeFrom(this, a2);
  }
}

BOOL TSP::DatabaseImageDataArchive::IsInitialized(TSP::DatabaseImageDataArchive *this)
{
  result = 0;
  if ((~*(this + 4) & 3) == 0)
  {
    v1 = *(this + 3);
    v2 = *(v1 + 16);
    if (~v2 & 0x22) == 0 && ((v2 & 4) == 0 || (TSP::Reference::IsInitialized(*(v1 + 40))))
    {
      return 1;
    }
  }

  return result;
}

uint64_t TSP::DatabaseImageDataArchive::GetMetadata(TSP::DatabaseImageDataArchive *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPDatabaseMessages_2eproto, 0);
  result = off_1001E8EB0[4];
  v2 = off_1001E8EB0[5];
  return result;
}

void *sub_10003114C(google::protobuf::Arena *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    operator new();
  }

  return sub_1000316A4(a1, a2, a3);
}

void *sub_100031218(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_1000317A4(a1, 1);
  TSP::DatabaseDataArchive::DatabaseDataArchive(v2, a1);
  return v2;
}

void *sub_1000312A4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_100031830(a1);
}

uint64_t sub_1000313B0(uint64_t a1, void *a2, int a3)
{
  if (*a2 >= *a1)
  {
    v6 = *a2 - *(a1 + 8);
    if (*(a1 + 28) == v6)
    {
      if (v6 >= 1 && !*(a1 + 16))
      {
        *a2 = 0;
      }

      v3 = 1;
    }

    else
    {
      *a2 = google::protobuf::internal::EpsCopyInputStream::DoneFallback(a1, v6, a3);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void *sub_100031428(google::protobuf::Arena **a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  if (*a1)
  {
    v4 = *(v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  sub_100031470(v4, a2, a3);
  *a1 = (v5 | 1);
  *v5 = v4;
  return (v5 + 8);
}

double sub_100031470(google::protobuf::Arena *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    operator new();
  }

  v3 = sub_1000314B4(a1, 0, a3);
  result = 0.0;
  *v3 = 0u;
  v3[1] = 0u;
  return result;
}

void *sub_1000314B4(google::protobuf::Arena *this, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(this + 24))
  {
    sub_1001552E8(this, a2, a3);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x20uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x20uLL, sub_10003153C);
}

void sub_10003153C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = (a1 + 8);
  if (v3 != v4)
  {
    google::protobuf::UnknownFieldSet::ClearFallback(v5);
    v3 = *v5;
  }

  if (v3)
  {
    *(a1 + 16) = v3;

    operator delete(v3);
  }
}

void *sub_1000315A0(google::protobuf::Arena **a1, const google::protobuf::UnknownFieldSet *a2, uint64_t a3)
{
  if (*a1)
  {
    v4 = ((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    v4 = sub_100031428(a1, a2, a3);
  }

  return google::protobuf::UnknownFieldSet::MergeFrom(v4, a2);
}

google::protobuf::UnknownFieldSet *sub_1000315EC(google::protobuf::Arena **a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    result = ((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    result = sub_100031428(a1, a2, a3);
  }

  if (*result != *(result + 1))
  {

    return google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t *sub_10003163C(google::protobuf::Arena **a1, uint64_t *a2, uint64_t a3)
{
  if (*a1)
  {
    result = ((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    result = sub_100031428(a1, a2, a3);
  }

  v5 = *result;
  *result = *a2;
  *a2 = v5;
  v6 = result[1];
  result[1] = a2[1];
  a2[1] = v6;
  v7 = result[2];
  result[2] = a2[2];
  a2[2] = v7;
  return result;
}

void *sub_1000316A4(google::protobuf::Arena *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100031718(a1, 1, a3);
  *v4 = off_1001C76B0;
  v4[1] = a1;
  v4[2] = 0;
  if (atomic_load_explicit(scc_info_DatabaseData_TSPDatabaseMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_DatabaseData_TSPDatabaseMessages_2eproto);
  }

  v4[3] = 0;
  return v4;
}

void *sub_100031718(google::protobuf::Arena *this, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(this + 24))
  {
    sub_100155314(this, a2, a3);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x20uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x20uLL, TSP::DatabaseData::~DatabaseData);
}

void *sub_1000317A4(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100155340(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x40uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x40uLL, TSP::DatabaseDataArchive::~DatabaseDataArchive);
}

void *sub_100031830(google::protobuf::Arena *a1)
{
  v2 = sub_1000318A8(a1, 1);
  *v2 = off_1001C7810;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_DatabaseImageDataArchive_TSPDatabaseMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_DatabaseImageDataArchive_TSPDatabaseMessages_2eproto);
  }

  *(v2 + 8) = 0;
  v2[3] = 0;
  return v2;
}

void *sub_1000318A8(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100155378(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x28uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x28uLL, TSP::DatabaseImageDataArchive::~DatabaseImageDataArchive);
}

void *TSP::SnappySource::SnappySource(void *a1, void *a2)
{
  v3 = a2;
  *a1 = off_1001C7930;
  a1[1] = v3;
  size = dispatch_data_get_size(v3);
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = size;
  return a1;
}

void TSP::SnappySource::~SnappySource(id *this)
{

  snappy::Source::~Source(this);
}

{
  TSP::SnappySource::~SnappySource(this);

  operator delete();
}

uint64_t TSP::SnappySource::Peek(TSP::SnappySource *this, unint64_t *a2)
{
  v3 = *(this + 3);
  if (v3 >= *(this + 2))
  {
    result = 0;
    *a2 = 0;
  }

  else
  {
    if (!*(this + 4))
    {
      v5 = dispatch_data_copy_region(*(this + 1), v3, this + 5);
      v6 = *(this + 4);
      *(this + 4) = v5;

      v7 = *(this + 4);
      if (!v7)
      {
        +[TSUAssertionHandler _atomicIncrementAssertCount];
        if (TSUAssertCat_init_token != -1)
        {
          sub_1001553B0();
        }

        if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
        {
          sub_1001553C4();
        }

        v8 = [NSString stringWithUTF8String:"virtual const char *TSP::SnappySource::Peek(size_t *)"];
        v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPSnappySource.mm"];
        [TSUAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:33 isFatal:0 description:"Couldn't get region"];

        +[TSUAssertionHandler logBacktraceThrottled];
        v7 = *(this + 4);
      }

      map = dispatch_data_create_map(v7, this + 7, this + 6);
      v11 = *(this + 4);
      *(this + 4) = map;

      if (!*(this + 4))
      {
        +[TSUAssertionHandler _atomicIncrementAssertCount];
        if (TSUAssertCat_init_token != -1)
        {
          sub_100155458();
        }

        if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
        {
          sub_100155480();
        }

        v12 = [NSString stringWithUTF8String:"virtual const char *TSP::SnappySource::Peek(size_t *)"];
        v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPSnappySource.mm"];
        [TSUAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:36 isFatal:0 description:"Couldn't map region"];

        +[TSUAssertionHandler logBacktraceThrottled];
      }
    }

    v14 = *(this + 3);
    v15 = v14 - *(this + 5);
    v16 = *(this + 6) - v15;
    v17 = *(this + 2) - v14;
    if (v16 >= v17)
    {
      v16 = v17;
    }

    *a2 = v16;
    return *(this + 7) + v15;
  }

  return result;
}

void sub_100031C90(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100031CD4(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void TSP::SnappySource::SetOffset(TSP::SnappySource *this, unint64_t a2)
{
  *(this + 3) = a2;
  v2 = *(this + 4);
  if (v2)
  {
    v3 = *(this + 5);
    v4 = (this + 40);
    if (v3 > a2 || *(this + 6) + v3 <= a2)
    {
      *(this + 4) = 0;

      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
    }
  }
}

unint64_t UnsafePointer(void *a1)
{
  v1 = [a1 componentsSeparatedByString:@"."];
  if ([v1 count] == 3)
  {
    v2 = [v1 objectAtIndexedSubscript:0];
    v3 = [v2 integerValue];

    if (v3 >= 0x10000)
    {
      +[TSUAssertionHandler _atomicIncrementAssertCount];
      sub_1001556A0();
      v15 = [NSString stringWithUTF8String:"TSPVersion TSPVersionFromNSString(NSString *__strong)"];
      v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPVersion.mm"];
      [TSUAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:307 isFatal:0 description:"Out-of-bounds type assignment was clamped to max"];

      +[TSUAssertionHandler logBacktraceThrottled];
      v4 = 0xFFFF000000000000;
    }

    else if (v3 < 0)
    {
      +[TSUAssertionHandler _atomicIncrementAssertCount];
      sub_1001555C8();
      v21 = [NSString stringWithUTF8String:"TSPVersion TSPVersionFromNSString(NSString *__strong)"];
      v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPVersion.mm"];
      [TSUAssertionHandler handleFailureInFunction:v21 file:v22 lineNumber:307 isFatal:0 description:"Out-of-bounds type assignment was clamped to min"];

      +[TSUAssertionHandler logBacktraceThrottled];
      v4 = 0;
    }

    else
    {
      v4 = v3 << 48;
    }

    v5 = [v1 objectAtIndexedSubscript:1];
    v6 = [v5 integerValue];

    if (v6 >= 0x10000)
    {
      +[TSUAssertionHandler _atomicIncrementAssertCount];
      sub_100155850();
      v17 = [NSString stringWithUTF8String:"TSPVersion TSPVersionFromNSString(NSString *__strong)"];
      v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPVersion.mm"];
      [TSUAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:308 isFatal:0 description:"Out-of-bounds type assignment was clamped to max"];

      +[TSUAssertionHandler logBacktraceThrottled];
      v7 = 0xFFFF00000000;
    }

    else if (v6 < 0)
    {
      +[TSUAssertionHandler _atomicIncrementAssertCount];
      sub_100155778();
      v23 = [NSString stringWithUTF8String:"TSPVersion TSPVersionFromNSString(NSString *__strong)"];
      v24 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPVersion.mm"];
      [TSUAssertionHandler handleFailureInFunction:v23 file:v24 lineNumber:308 isFatal:0 description:"Out-of-bounds type assignment was clamped to min"];

      +[TSUAssertionHandler logBacktraceThrottled];
      v7 = 0;
    }

    else
    {
      v7 = v6 << 32;
    }

    v8 = [v1 objectAtIndexedSubscript:2];
    v9 = [v8 integerValue];

    if (v9 >= &_mh_execute_header)
    {
      +[TSUAssertionHandler _atomicIncrementAssertCount];
      sub_100155A00();
      v19 = [NSString stringWithUTF8String:"TSPVersion TSPVersionFromNSString(NSString *__strong)"];
      v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPVersion.mm"];
      [TSUAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:309 isFatal:0 description:"Out-of-bounds type assignment was clamped to max"];

      +[TSUAssertionHandler logBacktraceThrottled];
      v9 = 0xFFFFFFFFLL;
    }

    else if (v9 < 0)
    {
      +[TSUAssertionHandler _atomicIncrementAssertCount];
      sub_100155928();
      v25 = [NSString stringWithUTF8String:"TSPVersion TSPVersionFromNSString(NSString *__strong)"];
      v26 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPVersion.mm"];
      [TSUAssertionHandler handleFailureInFunction:v25 file:v26 lineNumber:309 isFatal:0 description:"Out-of-bounds type assignment was clamped to min"];

      +[TSUAssertionHandler logBacktraceThrottled];
      v9 = 0;
    }

    v10 = v7 | v4 | v9;
  }

  else
  {
    v11 = +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100155514();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100155528(v11);
    }

    v12 = [NSString stringWithUTF8String:"TSPVersion TSPVersionFromNSString(NSString *__strong)"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPVersion.mm"];
    [TSUAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:303 isFatal:0 description:"Version should consist of 3 numbers separated by '.'"];

    +[TSUAssertionHandler logBacktraceThrottled];
    v10 = 0;
  }

  return v10;
}

void sub_1000322D8(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10003231C(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100032360(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_1000323A4(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_1000323E8(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10003242C(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_100032470(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

uint64_t sub_1000324F8(google::protobuf::Arena *this, uint64_t a2)
{
  v3 = a2 + 7;
  if (*(this + 24))
  {
    sub_100155AD8(this, v3 & 0xFFFFFFFFFFFFFFF8);
  }

  return google::protobuf::Arena::AllocateAlignedNoHook(this, v3 & 0xFFFFFFFFFFFFFFF8);
}

void sub_100032560(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x22u);
}

BOOL sub_100032580()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

void sub_100032598(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPArchiveMessages.pb.cc", a4);
  TSP::ArchiveInfo::ArchiveInfo(&TSP::_ArchiveInfo_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_ArchiveInfo_default_instance_, v4);
}

void sub_100032608(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPArchiveMessages.pb.cc", a4);
  TSP::ComponentDataReference::ComponentDataReference(TSP::_ComponentDataReference_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, TSP::_ComponentDataReference_default_instance_, v4);
}

void sub_100032678(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPArchiveMessages.pb.cc", a4);
  qword_1001EBA30 = 0;
  unk_1001EBA38 = 0;
  TSP::_ComponentDataReference_ObjectReference_default_instance_ = off_1001C8088;
  qword_1001EBA40 = 0;
  dword_1001EBA48 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_ComponentDataReference_ObjectReference_default_instance_, v4);
}

void sub_1000326F8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPArchiveMessages.pb.cc", a4);
  qword_1001EBA00 = 0;
  unk_1001EBA08 = 0;
  TSP::_ComponentExternalReference_default_instance_ = off_1001C7FD8;
  qword_1001EBA10 = 0;
  unk_1001EBA18 = 0;
  byte_1001EBA20 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_ComponentExternalReference_default_instance_, v4);
}

void sub_100032778(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPArchiveMessages.pb.cc", a4);
  TSP::ComponentInfo::ComponentInfo(&TSP::_ComponentInfo_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_ComponentInfo_default_instance_, v4);
}

void sub_1000327E8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPArchiveMessages.pb.cc", a4);
  TSP::DataInfo::DataInfo(&TSP::_DataInfo_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_DataInfo_default_instance_, v4);
}

void sub_100032858(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPArchiveMessages.pb.cc", a4);
  *&v5 = 0;
  unk_1001EBD78 = v5;
  TSP::_DataMetadata_default_instance_[0] = off_1001C8768;
  if (atomic_load_explicit(scc_info_DataMetadata_TSPArchiveMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_DataMetadata_TSPArchiveMessages_2eproto);
  }

  qword_1001EBD88 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, TSP::_DataMetadata_default_instance_, v4);
}

void sub_100032908(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPArchiveMessages.pb.cc", a4);
  TSP::DataMetadataMap::DataMetadataMap(&TSP::_DataMetadataMap_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_DataMetadataMap_default_instance_, v4);
}

void sub_100032978(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPArchiveMessages.pb.cc", a4);
  *&v5 = 0;
  unk_1001EBD20 = v5;
  TSP::_DataMetadataMap_DataMetadataMapEntry_default_instance_[0] = off_1001C8608;
  if (atomic_load_explicit(scc_info_DataMetadataMap_DataMetadataMapEntry_TSPArchiveMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_DataMetadataMap_DataMetadataMapEntry_TSPArchiveMessages_2eproto);
  }

  qword_1001EBD30 = 0;
  unk_1001EBD38 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, TSP::_DataMetadataMap_DataMetadataMapEntry_default_instance_, v4);
}

void sub_100032A28(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPArchiveMessages.pb.cc", a4);
  TSP::DataPropertiesEntryV1::DataPropertiesEntryV1(&TSP::_DataPropertiesEntryV1_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_DataPropertiesEntryV1_default_instance_, v4);
}

void sub_100032A98(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPArchiveMessages.pb.cc", a4);
  TSP::DataPropertiesV1::DataPropertiesV1(&TSP::_DataPropertiesV1_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_DataPropertiesV1_default_instance_, v4);
}

void sub_100032B08(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPArchiveMessages.pb.cc", a4);
  *&v5 = 0;
  unk_1001EBFE8 = v5;
  TSP::_DocumentMetadata_default_instance_[0] = off_1001C8D98;
  if (atomic_load_explicit(scc_info_DocumentMetadata_TSPArchiveMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_DocumentMetadata_TSPArchiveMessages_2eproto);
  }

  byte_1001EC000 = 0;
  qword_1001EBFF8 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, TSP::_DocumentMetadata_default_instance_, v4);
}

void sub_100032BBC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPArchiveMessages.pb.cc", a4);
  TSP::DocumentRevision::DocumentRevision(&TSP::_DocumentRevision_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_DocumentRevision_default_instance_, v4);
}

void sub_100032C2C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPArchiveMessages.pb.cc", a4);
  qword_1001EBDD8 = 0;
  unk_1001EBDE0 = 0;
  TSP::_EncryptionBlockInfo_default_instance_ = off_1001C88C8;
  qword_1001EBDE8 = 0;
  unk_1001EBDF0 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_EncryptionBlockInfo_default_instance_, v4);
}

void sub_100032CA8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPArchiveMessages.pb.cc", a4);
  TSP::EncryptionInfo::EncryptionInfo(TSP::_EncryptionInfo_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, TSP::_EncryptionInfo_default_instance_, v4);
}

void sub_100032D18(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPArchiveMessages.pb.cc", a4);
  TSP::FeatureInfo::FeatureInfo(TSP::_FeatureInfo_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, TSP::_FeatureInfo_default_instance_, v4);
}

void sub_100032D88(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPArchiveMessages.pb.cc", a4);
  TSP::FieldInfo::FieldInfo(&TSP::_FieldInfo_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_FieldInfo_default_instance_, v4);
}

void sub_100032DF8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPArchiveMessages.pb.cc", a4);
  qword_1001EB8A0 = 0;
  unk_1001EB8A8 = 0;
  TSP::_FieldPath_default_instance_ = off_1001C7E78;
  dword_1001EB8BC = 0;
  qword_1001EB8B0 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_FieldPath_default_instance_, v4);
}

void sub_100032E78(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPArchiveMessages.pb.cc", a4);
  TSP::MessageInfo::MessageInfo(&TSP::_MessageInfo_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_MessageInfo_default_instance_, v4);
}

void sub_100032EE8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPArchiveMessages.pb.cc", a4);
  TSP::ObjectSerializationDirectory::ObjectSerializationDirectory(&TSP::_ObjectSerializationDirectory_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_ObjectSerializationDirectory_default_instance_, v4);
}

void sub_100032F58(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPArchiveMessages.pb.cc", a4);
  TSP::ObjectSerializationDirectory_Entry::ObjectSerializationDirectory_Entry(TSP::_ObjectSerializationDirectory_Entry_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, TSP::_ObjectSerializationDirectory_Entry_default_instance_, v4);
}

void sub_100032FC8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPArchiveMessages.pb.cc", a4);
  TSP::ObjectSerializationMetadata::ObjectSerializationMetadata(&TSP::_ObjectSerializationMetadata_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_ObjectSerializationMetadata_default_instance_, v4);
}

void sub_100033038(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPArchiveMessages.pb.cc", a4);
  *&v5 = 0;
  *algn_1001EBA90 = v5;
  TSP::_ObjectUUIDMapEntry_default_instance_ = off_1001C81E8;
  if (atomic_load_explicit(scc_info_ObjectUUIDMapEntry_TSPArchiveMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_ObjectUUIDMapEntry_TSPArchiveMessages_2eproto);
  }

  qword_1001EBAA0 = 0;
  unk_1001EBAA8 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_ObjectUUIDMapEntry_default_instance_, v4);
}

void sub_1000330E8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPArchiveMessages.pb.cc", a4);
  TSP::PackageMetadata::PackageMetadata(&TSP::_PackageMetadata_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_PackageMetadata_default_instance_, v4);
}

void sub_100033158(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPArchiveMessages.pb.cc", a4);
  TSP::PasteboardMetadata::PasteboardMetadata(TSP::_PasteboardMetadata_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, TSP::_PasteboardMetadata_default_instance_, v4);
}

void sub_1000331C8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPArchiveMessages.pb.cc", a4);
  TSP::SupportMetadata::SupportMetadata(&TSP::_SupportMetadata_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_SupportMetadata_default_instance_, v4);
}

void sub_100033238(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPArchiveMessages.pb.cc", a4);
  TSP::SupportMetadata_DataCollaborationProperties::SupportMetadata_DataCollaborationProperties(TSP::_SupportMetadata_DataCollaborationProperties_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, TSP::_SupportMetadata_DataCollaborationProperties_default_instance_, v4);
}

void sub_1000332A8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPArchiveMessages.pb.cc", a4);
  TSP::ViewStateMetadata::ViewStateMetadata(TSP::_ViewStateMetadata_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, TSP::_ViewStateMetadata_default_instance_, v4);
}

uint64_t TSP::ArchiveInfo::ArchiveInfo(uint64_t a1, uint64_t a2)
{
  *a1 = off_1001C7C68;
  *(a1 + 8) = a2;
  *(a1 + 24) = a2;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(scc_info_ArchiveInfo_TSPArchiveMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_ArchiveInfo_TSPArchiveMessages_2eproto);
  }

  *(a1 + 56) = 0;
  *(a1 + 48) = 0;
  return a1;
}

void TSP::ArchiveInfo::~ArchiveInfo(TSP::ArchiveInfo *this)
{
  sub_10002F4C4(this + 1);
  sub_100049474(this + 3);
}

{
  TSP::ArchiveInfo::~ArchiveInfo(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::ArchiveInfo::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4 >= 1)
  {
    v5 = (*(this + 5) + 8);
    do
    {
      v6 = *v5++;
      this = TSP::MessageInfo::Clear(v6, a2, a3);
      --v4;
    }

    while (v4);
    *(v3 + 32) = 0;
  }

  if ((*(v3 + 16) & 3) != 0)
  {
    *(v3 + 56) = 0;
    *(v3 + 48) = 0;
  }

  v8 = *(v3 + 8);
  v7 = v3 + 8;
  *(v7 + 8) = 0;
  if (v8)
  {

    return sub_1000315EC(v7, a2, a3);
  }

  return this;
}

google::protobuf::internal *TSP::ArchiveInfo::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v35 = a2;
  v6 = 0;
  if ((sub_1000313B0(a3, &v35, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v35 + 1);
      v9 = *v35;
      if ((*v35 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v35, (v10 - 128));
      v35 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_54;
      }

      v8 = TagFallback;
      v9 = v5;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 == 3)
      {
        if (v9 != 24)
        {
          goto LABEL_13;
        }

        v6 |= 2u;
        v25 = (v8 + 1);
        v24 = *v8;
        if ((v24 & 0x8000000000000000) == 0)
        {
          goto LABEL_39;
        }

        v26 = *v25;
        v24 = (v26 << 7) + v24 - 128;
        if ((v26 & 0x80000000) == 0)
        {
          v25 = (v8 + 2);
LABEL_39:
          v35 = v25;
          *(a1 + 56) = v24 != 0;
          goto LABEL_44;
        }

        v33 = google::protobuf::internal::VarintParseSlow64(v8, v24);
        v35 = v33;
        *(a1 + 56) = v34 != 0;
        if (!v33)
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (v11 == 2)
        {
          if (v9 != 18)
          {
LABEL_13:
            if (v9)
            {
              v13 = (v9 & 7) == 4;
            }

            else
            {
              v13 = 1;
            }

            if (v13)
            {
              *(a3 + 80) = v9 - 1;
              goto LABEL_2;
            }

            v14 = *(a1 + 8);
            if (v14)
            {
              v15 = ((v14 & 0xFFFFFFFFFFFFFFFELL) + 8);
            }

            else
            {
              v15 = sub_100031428((a1 + 8), v5, v8);
              v8 = v35;
            }

            v35 = google::protobuf::internal::UnknownFieldParse(v9, v15, v8);
            if (!v35)
            {
LABEL_54:
              v35 = 0;
              goto LABEL_2;
            }

            goto LABEL_44;
          }

          v16 = (v8 - 1);
          while (2)
          {
            v17 = (v16 + 1);
            v35 = (v16 + 1);
            v18 = *(a1 + 40);
            if (!v18)
            {
              v19 = *(a1 + 36);
              goto LABEL_25;
            }

            v23 = *(a1 + 32);
            v19 = *v18;
            if (v23 >= *v18)
            {
              if (v19 == *(a1 + 36))
              {
LABEL_25:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v19 + 1);
                v18 = *(a1 + 40);
                v19 = *v18;
              }

              *v18 = v19 + 1;
              v20 = google::protobuf::Arena::CreateMaybeMessage<TSP::MessageInfo>(*(a1 + 24));
              v21 = *(a1 + 32);
              v22 = *(a1 + 40) + 8 * v21;
              *(a1 + 32) = v21 + 1;
              *(v22 + 8) = v20;
              v17 = v35;
            }

            else
            {
              *(a1 + 32) = v23 + 1;
              v20 = *&v18[2 * v23 + 2];
            }

            v16 = sub_100155B10(a3, v20, v17);
            v35 = v16;
            if (!v16)
            {
              goto LABEL_54;
            }

            if (*a3 <= v16 || *v16 != 18)
            {
              goto LABEL_44;
            }

            continue;
          }
        }

        if (v11 != 1 || v9 != 8)
        {
          goto LABEL_13;
        }

        v6 |= 1u;
        v28 = (v8 + 1);
        v27 = *v8;
        if ((v27 & 0x8000000000000000) == 0)
        {
          goto LABEL_43;
        }

        v29 = *v28;
        v27 = (v29 << 7) + v27 - 128;
        if ((v29 & 0x80000000) == 0)
        {
          v28 = (v8 + 2);
LABEL_43:
          v35 = v28;
          *(a1 + 48) = v27;
          goto LABEL_44;
        }

        v31 = google::protobuf::internal::VarintParseSlow64(v8, v27);
        v35 = v31;
        *(a1 + 48) = v32;
        if (!v31)
        {
          goto LABEL_54;
        }
      }

LABEL_44:
      if (sub_1000313B0(a3, &v35, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v35 + 2);
LABEL_6:
    v35 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v35;
}

unint64_t sub_100033784(google::protobuf::internal **a1)
{
  v2 = *a1;
  v3 = *a1;
  v6 = *v3;
  v4 = (v3 + 1);
  v5 = v6;
  if ((v6 & 0x8000000000000000) != 0)
  {
    v5 = (*v4 << 7) + v5 - 128;
    if (*v4 < 0)
    {
      v4 = google::protobuf::internal::VarintParseSlow64(v2, v5);
    }

    else
    {
      v4 = (v2 + 2);
    }
  }

  *a1 = v4;
  return v5;
}

const google::protobuf::UnknownFieldSet *TSP::ArchiveInfo::_InternalSerialize(TSP::ArchiveInfo *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 6);
    *a2 = 8;
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v8 = v7 >> 7;
      if (v7 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++a2;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(a2 - 1) = v9;
      }

      else
      {
        a2[2] = v8;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v7;
      a2 += 2;
    }
  }

  v11 = *(this + 8);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v13 = *(*(this + 5) + 8 * i + 8);
      *a2 = 18;
      v14 = *(v13 + 5);
      if (v14 > 0x7F)
      {
        a2[1] = v14 | 0x80;
        v16 = v14 >> 7;
        if (v14 >> 14)
        {
          v15 = a2 + 3;
          do
          {
            *(v15 - 1) = v16 | 0x80;
            v17 = v16 >> 7;
            ++v15;
            v18 = v16 >> 14;
            v16 >>= 7;
          }

          while (v18);
          *(v15 - 1) = v17;
        }

        else
        {
          a2[2] = v16;
          v15 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v14;
        v15 = a2 + 2;
      }

      a2 = TSP::MessageInfo::_InternalSerialize(v13, v15, a3);
    }
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v19 = *(this + 56);
    *a2 = 24;
    a2[1] = v19;
    a2 += 2;
  }

  v20 = *(this + 1);
  if ((v20 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v20 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *TSP::ArchiveInfo::ByteSizeLong(TSP::ArchiveInfo *this)
{
  v2 = *(this + 8);
  v3 = *(this + 5);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = TSP::MessageInfo::ByteSizeLong(v6);
      v2 = (v2 + v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6));
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(this + 4);
  if ((v8 & 3) != 0)
  {
    if (v8)
    {
      v2 = (v2 + ((9 * (__clz(*(this + 6) | 1) ^ 0x3F) + 73) >> 6) + 1);
    }

    v2 = (v2 + (v8 & 2));
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v2, this + 5);
  }

  else
  {
    *(this + 5) = v2;
    return v2;
  }
}

void TSP::ArchiveInfo::MergeFrom(google::protobuf::Arena **this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::ArchiveInfo::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

google::protobuf::Arena **TSP::ArchiveInfo::MergeFrom(google::protobuf::Arena **this, const TSP::ArchiveInfo *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = *(a2 + 5);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v4 + 3), *(a2 + 8));
    this = sub_1000494F8(v4 + 3, v8, v7 + 8, v6, *v4[5] - *(v4 + 8));
    v9 = *(v4 + 8) + v6;
    *(v4 + 8) = v9;
    v10 = v4[5];
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 4);
  if ((v11 & 3) != 0)
  {
    if (v11)
    {
      v4[6] = *(a2 + 6);
    }

    if ((v11 & 2) != 0)
    {
      *(v4 + 56) = *(a2 + 56);
    }

    *(v4 + 4) |= v11;
  }

  return this;
}

void TSP::ArchiveInfo::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::ArchiveInfo::Clear(this, a2, a3);

    TSP::ArchiveInfo::MergeFrom(this, a2);
  }
}

BOOL sub_100033C80(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  v2 = *(a1 + 16) + 8;
  do
  {
    v3 = *(v2 + 8 * (v1 - 1));
    result = (*(v3 + 16) & 6) == 6;
    if ((*(v3 + 16) & 6) != 6)
    {
      break;
    }

    v5 = *(v3 + 56);
    v6 = *(v3 + 64);
    while (v5 >= 1)
    {
      v7 = *(v6 + 8 * v5--);
      if ((*(v7 + 16) & 2) == 0)
      {
        return 0;
      }
    }
  }

  while (v1-- >= 2);
  return result;
}

uint64_t TSP::ArchiveInfo::GetMetadata(TSP::ArchiveInfo *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPArchiveMessages_2eproto, 0);
  result = *off_1001E92E8;
  v2 = off_1001E92E8[1];
  return result;
}

uint64_t TSP::MessageInfo::MessageInfo(uint64_t a1, uint64_t a2)
{
  *a1 = off_1001C7D18;
  *(a1 + 8) = a2;
  *(a1 + 32) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = a2;
  *(a1 + 96) = 0;
  *(a1 + 104) = a2;
  *(a1 + 120) = 0;
  *(a1 + 128) = a2;
  *(a1 + 144) = a2;
  *(a1 + 176) = a2;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0;
  if (atomic_load_explicit(scc_info_MessageInfo_TSPArchiveMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_MessageInfo_TSPArchiveMessages_2eproto);
  }

  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  return a1;
}

void sub_100033DF8(_Unwind_Exception *a1)
{
  if (*(v1 + 172) >= 1)
  {
    sub_100156CF0(v5);
  }

  sub_10004963C(v4);
  if (*(v1 + 124) >= 1)
  {
    v7 = *(v1 + 128);
    v9 = *(v7 - 8);
    v8 = (v7 - 8);
    if (!v9)
    {
      operator delete(v8);
    }
  }

  if (*(v1 + 100) >= 1)
  {
    v10 = *(v1 + 104);
    v12 = *(v10 - 8);
    v11 = (v10 - 8);
    if (!v12)
    {
      operator delete(v11);
    }
  }

  if (*(v1 + 76) >= 1)
  {
    v13 = *(v1 + 80);
    v15 = *(v13 - 8);
    v14 = (v13 - 8);
    if (!v15)
    {
      operator delete(v14);
    }
  }

  sub_1000495B8(v3);
  sub_100156D04((v1 + 28), v2);
  _Unwind_Resume(a1);
}

void TSP::MessageInfo::~MessageInfo(TSP::MessageInfo *this)
{
  if (this != &TSP::_MessageInfo_default_instance_)
  {
    v2 = *(this + 24);
    if (v2)
    {
      TSP::FieldPath::~FieldPath(v2);
      operator delete();
    }
  }

  sub_10002F4C4(this + 1);
  if (*(this + 43) >= 1)
  {
    v3 = *(this + 22);
    v5 = *(v3 - 8);
    v4 = (v3 - 8);
    if (!v5)
    {
      operator delete(v4);
    }
  }

  sub_10004963C(this + 18);
  if (*(this + 31) >= 1)
  {
    v6 = *(this + 16);
    v8 = *(v6 - 8);
    v7 = (v6 - 8);
    if (!v8)
    {
      operator delete(v7);
    }
  }

  if (*(this + 25) >= 1)
  {
    v9 = *(this + 13);
    v11 = *(v9 - 8);
    v10 = (v9 - 8);
    if (!v11)
    {
      operator delete(v10);
    }
  }

  if (*(this + 19) >= 1)
  {
    v12 = *(this + 10);
    v14 = *(v12 - 8);
    v13 = (v12 - 8);
    if (!v14)
    {
      operator delete(v13);
    }
  }

  sub_1000495B8(this + 6);
  if (*(this + 7) >= 1)
  {
    v15 = *(this + 4);
    v17 = *(v15 - 8);
    v16 = (v15 - 8);
    if (!v17)
    {
      operator delete(v16);
    }
  }
}

{
  TSP::MessageInfo::~MessageInfo(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::MessageInfo::Clear(TSP::MessageInfo *this, uint64_t a2, uint64_t a3)
{
  *(this + 6) = 0;
  v4 = *(this + 14);
  if (v4 >= 1)
  {
    v5 = (*(this + 8) + 8);
    do
    {
      v6 = *v5++;
      TSP::FieldInfo::Clear(v6, a2, a3);
      --v4;
    }

    while (v4);
    *(this + 14) = 0;
  }

  *(this + 18) = 0;
  *(this + 24) = 0;
  *(this + 30) = 0;
  result = sub_100049414((this + 144), a2, a3);
  *(this + 42) = 0;
  v10 = *(this + 4);
  if (v10)
  {
    v11 = *(this + 24);
    v12 = *(v11 + 8);
    result = (v11 + 8);
    *(result + 2) = 0;
    if (v12)
    {
      result = sub_1000315EC(result, v8, v9);
    }
  }

  if ((v10 & 0xE) != 0)
  {
    *(this + 52) = 0;
    *(this + 25) = 0;
  }

  v14 = *(this + 8);
  v13 = this + 8;
  *(v13 + 2) = 0;
  if (v14)
  {

    return sub_1000315EC(v13, v8, v9);
  }

  return result;
}

google::protobuf::UnknownFieldSet *TSP::FieldPath::Clear(TSP::FieldPath *this, uint64_t a2, uint64_t a3)
{
  v4 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v4)
  {
    return sub_1000315EC(result, a2, a3);
  }

  return result;
}

google::protobuf::internal *TSP::MessageInfo::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v54 = a2;
  v6 = 0;
  if ((sub_1000313B0(a3, &v54, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v54 + 1);
      v9 = *v54;
      if ((*v54 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v54, (v10 - 128));
      v54 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_116;
      }

      v8 = TagFallback;
      v9 = v5;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 <= 5)
      {
        if (v9 >> 3 <= 2)
        {
          if (v11 != 1)
          {
            if (v11 == 2)
            {
              if (v9 == 18)
              {
                v12 = (a1 + 24);
LABEL_29:
                v14 = google::protobuf::internal::PackedUInt32Parser(v12, v8, a3);
LABEL_111:
                v54 = v14;
                if (!v14)
                {
LABEL_116:
                  v54 = 0;
                  goto LABEL_2;
                }

                goto LABEL_112;
              }

              if (v9 == 16)
              {
                LODWORD(v55) = sub_10003465C(&v54);
                v49 = (a1 + 24);
LABEL_98:
                google::protobuf::RepeatedField<unsigned int>::Add(v49, &v55);
                goto LABEL_102;
              }
            }

            goto LABEL_104;
          }

          if (v9 != 8)
          {
            goto LABEL_104;
          }

          v6 |= 2u;
          v16 = (v8 + 1);
          LODWORD(v17) = *v8;
          if (*v8 < 0)
          {
            v18 = *v16;
            v17 = (v17 + (v18 << 7) - 128);
            if (v18 < 0)
            {
              v43 = google::protobuf::internal::VarintParseSlow32(v8, v17);
              v54 = v43;
              *(a1 + 200) = v44;
              if (!v43)
              {
                goto LABEL_116;
              }

              goto LABEL_112;
            }

            v16 = (v8 + 2);
          }

          v54 = v16;
          *(a1 + 200) = v17;
        }

        else
        {
          if (v11 != 3)
          {
            if (v11 != 4)
            {
              if (v11 != 5)
              {
                goto LABEL_104;
              }

              if (v9 != 42)
              {
                if (v9 == 40)
                {
                  v55 = sub_100033784(&v54);
                  v50 = (a1 + 72);
                  goto LABEL_101;
                }

                goto LABEL_104;
              }

              v13 = (a1 + 72);
LABEL_77:
              v14 = google::protobuf::internal::PackedUInt64Parser(v13, v8, a3);
              goto LABEL_111;
            }

            if (v9 != 34)
            {
              goto LABEL_104;
            }

            v19 = (v8 - 1);
            while (2)
            {
              v20 = (v19 + 1);
              v54 = (v19 + 1);
              v21 = *(a1 + 64);
              if (!v21)
              {
                v22 = *(a1 + 60);
                goto LABEL_41;
              }

              v26 = *(a1 + 56);
              v22 = *v21;
              if (v26 >= *v21)
              {
                if (v22 == *(a1 + 60))
                {
LABEL_41:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48), v22 + 1);
                  v21 = *(a1 + 64);
                  v22 = *v21;
                }

                *v21 = v22 + 1;
                v23 = google::protobuf::Arena::CreateMaybeMessage<TSP::FieldInfo>(*(a1 + 48));
                v24 = *(a1 + 56);
                v25 = *(a1 + 64) + 8 * v24;
                *(a1 + 56) = v24 + 1;
                *(v25 + 8) = v23;
                v20 = v54;
              }

              else
              {
                *(a1 + 56) = v26 + 1;
                v23 = *&v21[2 * v26 + 2];
              }

              v19 = sub_100155BE0(a3, v23, v20);
              v54 = v19;
              if (!v19)
              {
                goto LABEL_116;
              }

              if (*a3 <= v19 || *v19 != 34)
              {
                goto LABEL_112;
              }

              continue;
            }
          }

          if (v9 != 24)
          {
            goto LABEL_104;
          }

          v6 |= 4u;
          v38 = (v8 + 1);
          LODWORD(v39) = *v8;
          if (*v8 < 0)
          {
            v40 = *v38;
            v39 = (v39 + (v40 << 7) - 128);
            if (v40 < 0)
            {
              v47 = google::protobuf::internal::VarintParseSlow32(v8, v39);
              v54 = v47;
              *(a1 + 204) = v48;
              if (!v47)
              {
                goto LABEL_116;
              }

              goto LABEL_112;
            }

            v38 = (v8 + 2);
          }

          v54 = v38;
          *(a1 + 204) = v39;
        }
      }

      else
      {
        if (v9 >> 3 > 8)
        {
          if (v11 == 9)
          {
            if (v9 == 74)
            {
              *(a1 + 16) |= 1u;
              v41 = *(a1 + 192);
              if (!v41)
              {
                v42 = *(a1 + 8);
                if (v42)
                {
                  v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
                }

                v41 = google::protobuf::Arena::CreateMaybeMessage<TSP::FieldPath>(v42);
                *(a1 + 192) = v41;
                v8 = v54;
              }

              v14 = sub_100155CB0(a3, v41, v8);
              goto LABEL_111;
            }

            goto LABEL_104;
          }

          if (v11 != 10)
          {
            if (v11 == 11)
            {
              if (v9 == 90)
              {
                v12 = (a1 + 168);
                goto LABEL_29;
              }

              if (v9 == 88)
              {
                LODWORD(v55) = sub_10003465C(&v54);
                v49 = (a1 + 168);
                goto LABEL_98;
              }
            }

            goto LABEL_104;
          }

          if (v9 != 82)
          {
LABEL_104:
            if (v9)
            {
              v51 = (v9 & 7) == 4;
            }

            else
            {
              v51 = 1;
            }

            if (v51)
            {
              *(a3 + 80) = v9 - 1;
              goto LABEL_2;
            }

            v52 = *(a1 + 8);
            if (v52)
            {
              v53 = ((v52 & 0xFFFFFFFFFFFFFFFELL) + 8);
            }

            else
            {
              v53 = sub_100031428((a1 + 8), v5, v8);
              v8 = v54;
            }

            v14 = google::protobuf::internal::UnknownFieldParse(v9, v53, v8);
            goto LABEL_111;
          }

          v30 = (v8 - 1);
          while (2)
          {
            v31 = (v30 + 1);
            v54 = (v30 + 1);
            v32 = *(a1 + 160);
            if (!v32)
            {
              v33 = *(a1 + 156);
              goto LABEL_60;
            }

            v37 = *(a1 + 152);
            v33 = *v32;
            if (v37 >= *v32)
            {
              if (v33 == *(a1 + 156))
              {
LABEL_60:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 144), v33 + 1);
                v32 = *(a1 + 160);
                v33 = *v32;
              }

              *v32 = v33 + 1;
              v34 = google::protobuf::Arena::CreateMaybeMessage<TSP::FieldPath>(*(a1 + 144));
              v35 = *(a1 + 152);
              v36 = *(a1 + 160) + 8 * v35;
              *(a1 + 152) = v35 + 1;
              *(v36 + 8) = v34;
              v31 = v54;
            }

            else
            {
              *(a1 + 152) = v37 + 1;
              v34 = *&v32[2 * v37 + 2];
            }

            v30 = sub_100155CB0(a3, v34, v31);
            v54 = v30;
            if (!v30)
            {
              goto LABEL_116;
            }

            if (*a3 <= v30 || *v30 != 82)
            {
              goto LABEL_112;
            }

            continue;
          }
        }

        if (v11 == 6)
        {
          if (v9 != 50)
          {
            if (v9 == 48)
            {
              v55 = sub_100033784(&v54);
              v50 = (a1 + 96);
LABEL_101:
              google::protobuf::RepeatedField<unsigned long long>::Add(v50, &v55);
LABEL_102:
              if (!v54)
              {
                goto LABEL_116;
              }

              goto LABEL_112;
            }

            goto LABEL_104;
          }

          v13 = (a1 + 96);
          goto LABEL_77;
        }

        if (v11 != 7)
        {
          if (v11 == 8)
          {
            if (v9 == 66)
            {
              v12 = (a1 + 120);
              goto LABEL_29;
            }

            if (v9 == 64)
            {
              LODWORD(v55) = sub_10003465C(&v54);
              v49 = (a1 + 120);
              goto LABEL_98;
            }
          }

          goto LABEL_104;
        }

        if (v9 != 56)
        {
          goto LABEL_104;
        }

        v6 |= 8u;
        v27 = (v8 + 1);
        LODWORD(v28) = *v8;
        if (*v8 < 0)
        {
          v29 = *v27;
          v28 = (v28 + (v29 << 7) - 128);
          if (v29 < 0)
          {
            v45 = google::protobuf::internal::VarintParseSlow32(v8, v28);
            v54 = v45;
            *(a1 + 208) = v46;
            if (!v45)
            {
              goto LABEL_116;
            }

            goto LABEL_112;
          }

          v27 = (v8 + 2);
        }

        v54 = v27;
        *(a1 + 208) = v28;
      }

LABEL_112:
      if (sub_1000313B0(a3, &v54, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v54 + 2);
LABEL_6:
    v54 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v54;
}

unint64_t sub_10003465C(google::protobuf::internal **a1)
{
  v2 = *a1;
  v3 = *a1;
  v5 = *v3;
  v4 = v3 + 1;
  v6 = v5;
  if (v5 < 0)
  {
    v6 = v6 + (*v4 << 7) - 128;
    if (*v4 < 0)
    {
      v4 = google::protobuf::internal::VarintParseSlow32(v2, v6);
    }

    else
    {
      v4 = v2 + 2;
    }
  }

  *a1 = v4;
  return v6;
}

const google::protobuf::UnknownFieldSet *TSP::MessageInfo::_InternalSerialize(TSP::MessageInfo *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 50);
    *v4 = 8;
    if (v7 > 0x7F)
    {
      v4[1] = v7 | 0x80;
      v8 = v7 >> 7;
      if (v7 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++v4;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(v4 - 1) = v9;
      }

      else
      {
        v4[2] = v8;
        v4 += 3;
      }
    }

    else
    {
      v4[1] = v7;
      v4 += 2;
    }
  }

  v11 = *(this + 10);
  if (v11 >= 1)
  {
    v4 = sub_1000496C0(a3, 2, this + 6, v11, v4, google::protobuf::io::EpsCopyOutputStream::Encode32);
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v12 = *(this + 51);
    *v4 = 24;
    if (v12 > 0x7F)
    {
      v4[1] = v12 | 0x80;
      v13 = v12 >> 7;
      if (v12 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v13 | 0x80;
          v14 = v13 >> 7;
          ++v4;
          v15 = v13 >> 14;
          v13 >>= 7;
        }

        while (v15);
        *(v4 - 1) = v14;
      }

      else
      {
        v4[2] = v13;
        v4 += 3;
      }
    }

    else
    {
      v4[1] = v12;
      v4 += 2;
    }
  }

  v16 = *(this + 14);
  if (v16)
  {
    for (i = 0; i != v16; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v18 = *(*(this + 8) + 8 * i + 8);
      *v4 = 34;
      v19 = *(v18 + 5);
      if (v19 > 0x7F)
      {
        v4[1] = v19 | 0x80;
        v21 = v19 >> 7;
        if (v19 >> 14)
        {
          v20 = v4 + 3;
          do
          {
            *(v20 - 1) = v21 | 0x80;
            v22 = v21 >> 7;
            ++v20;
            v23 = v21 >> 14;
            v21 >>= 7;
          }

          while (v23);
          *(v20 - 1) = v22;
        }

        else
        {
          v4[2] = v21;
          v20 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v19;
        v20 = v4 + 2;
      }

      v4 = TSP::FieldInfo::_InternalSerialize(v18, v20, a3);
    }
  }

  v24 = *(this + 22);
  if (v24 > 0)
  {
    v4 = sub_100049868(a3, 5, this + 18, v24, v4, google::protobuf::io::EpsCopyOutputStream::Encode64);
  }

  v25 = *(this + 28);
  if (v25 >= 1)
  {
    v4 = sub_100049868(a3, 6, this + 24, v25, v4, google::protobuf::io::EpsCopyOutputStream::Encode64);
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v26 = *(this + 52);
    *v4 = 56;
    if (v26 > 0x7F)
    {
      v4[1] = v26 | 0x80;
      v27 = v26 >> 7;
      if (v26 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v27 | 0x80;
          v28 = v27 >> 7;
          ++v4;
          v29 = v27 >> 14;
          v27 >>= 7;
        }

        while (v29);
        *(v4 - 1) = v28;
      }

      else
      {
        v4[2] = v27;
        v4 += 3;
      }
    }

    else
    {
      v4[1] = v26;
      v4 += 2;
    }
  }

  v30 = *(this + 34);
  if (v30 >= 1)
  {
    v4 = sub_1000496C0(a3, 8, this + 30, v30, v4, google::protobuf::io::EpsCopyOutputStream::Encode32);
  }

  if (v6)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v31 = *(this + 24);
    *v4 = 74;
    v32 = *(v31 + 9);
    if (v32 > 0x7F)
    {
      v4[1] = v32 | 0x80;
      v34 = v32 >> 7;
      if (v32 >> 14)
      {
        v33 = (v4 + 3);
        do
        {
          *(v33 - 1) = v34 | 0x80;
          v35 = v34 >> 7;
          v33 = (v33 + 1);
          v36 = v34 >> 14;
          v34 >>= 7;
        }

        while (v36);
        *(v33 - 1) = v35;
      }

      else
      {
        v4[2] = v34;
        v33 = (v4 + 3);
      }
    }

    else
    {
      v4[1] = v32;
      v33 = (v4 + 2);
    }

    v4 = TSP::FieldPath::_InternalSerialize(v31, v33, a3);
  }

  v37 = *(this + 38);
  if (v37)
  {
    for (j = 0; j != v37; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v39 = *(*(this + 20) + 8 * j + 8);
      *v4 = 82;
      v40 = *(v39 + 9);
      if (v40 > 0x7F)
      {
        v4[1] = v40 | 0x80;
        v42 = v40 >> 7;
        if (v40 >> 14)
        {
          v41 = (v4 + 3);
          do
          {
            *(v41 - 1) = v42 | 0x80;
            v43 = v42 >> 7;
            v41 = (v41 + 1);
            v44 = v42 >> 14;
            v42 >>= 7;
          }

          while (v44);
          *(v41 - 1) = v43;
        }

        else
        {
          v4[2] = v42;
          v41 = (v4 + 3);
        }
      }

      else
      {
        v4[1] = v40;
        v41 = (v4 + 2);
      }

      v4 = TSP::FieldPath::_InternalSerialize(v39, v41, a3);
    }
  }

  v45 = *(this + 46);
  if (v45 > 0)
  {
    v4 = sub_1000496C0(a3, 11, this + 42, v45, v4, google::protobuf::io::EpsCopyOutputStream::Encode32);
  }

  v46 = *(this + 1);
  if ((v46 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v46 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v45);
}