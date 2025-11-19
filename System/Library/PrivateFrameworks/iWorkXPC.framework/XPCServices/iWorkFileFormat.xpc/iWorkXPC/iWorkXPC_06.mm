void sub_10007DEDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10007DF00(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10007DF44(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7 && !(v8 | *(*(*(a1 + 48) + 8) + 40)))
  {
    dispatch_group_enter(*(a1 + 32));
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10007E054;
    v14[3] = &unk_1001CC530;
    v10 = *(a1 + 40);
    v16 = *(a1 + 48);
    v15 = *(a1 + 32);
    [v10 writeData:v7 handler:v14];
  }

  if (a2)
  {
    if (v9)
    {
      v11 = *(*(a1 + 48) + 8);
      v13 = *(v11 + 40);
      v12 = (v11 + 40);
      if (!v13)
      {
        objc_storeStrong(v12, a4);
      }
    }

    dispatch_group_leave(*(a1 + 32));
  }
}

void sub_10007E054(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if (a2)
  {
    v11 = v7;
    if (v7)
    {
      v8 = *(*(a1 + 40) + 8);
      v10 = *(v8 + 40);
      v9 = (v8 + 40);
      if (!v10)
      {
        objc_storeStrong(v9, a4);
      }
    }

    dispatch_group_leave(*(a1 + 32));
    v7 = v11;
  }
}

void sub_10007E0D0(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

void sub_10007E114(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

void sub_10007E310(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  v3 = v2;
  if (v2)
  {
    v4 = dup([v2 fileDescriptor]);
    if ((v4 & 0x80000000) != 0)
    {
      if (TSUDefaultCat_init_token != -1)
      {
        sub_10015A808();
      }

      v12 = TSUDefaultCat_log_t;
      if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
      {
        sub_10015A81C(v12);
      }
    }

    else
    {
      v5 = v4;
      if (([*(a1 + 32) options] & 0x10) != 0 && fcntl(v5, 48, 1) == -1)
      {
        if (TSUDefaultCat_init_token != -1)
        {
          sub_10015A8AC();
        }

        v6 = TSUDefaultCat_log_t;
        if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
        {
          sub_10015A8C0(v6);
        }
      }

      [v3 beginAccess];
      v7 = [TSUFileIOChannel alloc];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10007E544;
      v13[3] = &unk_1001CC608;
      v15 = v5;
      v14 = v3;
      v8 = [(TSUFileIOChannel *)v7 initForReadingDescriptor:v5 cleanupHandler:v13];
      v9 = *(*(a1 + 40) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
    }
  }

  else
  {
    if (TSUDefaultCat_init_token != -1)
    {
      sub_10015A950();
    }

    v11 = TSUDefaultCat_log_t;
    if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015A964(v11);
    }
  }
}

void sub_10007E500(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

id sub_10007E544(uint64_t a1)
{
  close(*(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 endAccess];
}

void sub_10007E580(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

void sub_10007E5C4(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

ssize_t sub_10007E6BC(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  if (v2)
  {
    result = [v2 fileDescriptor];
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  *(*(*(a1 + 40) + 8) + 24) = result >= 0;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v4 = 0;
    result = read(result, &v4, 0);
    *(*(*(a1 + 40) + 8) + 24) = result == 0;
  }

  return result;
}

void sub_10007EA74(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10007EFA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_10007EFC8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[22];
    v6 = v2;
    if (v3)
    {
      (*(v3 + 16))();
      v2 = v6;
      v4 = v6[22];
    }

    else
    {
      v4 = 0;
    }

    v2[22] = 0;
  }

  return _objc_release_x1();
}

uint64_t sub_10007F468(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10007F488(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

uint64_t sub_10007F4CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[22];
    v6 = v2;
    if (v3)
    {
      (*(v3 + 16))();
      v2 = v6;
      v4 = v6[22];
    }

    else
    {
      v4 = 0;
    }

    v2[22] = 0;
  }

  return _objc_release_x1();
}

void sub_10007F54C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10007F8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10007F8CC(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10007F910(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [v4 addObject:v5];
  v6 = [v5 size];

  *(*(*(a1 + 40) + 8) + 24) += v6;
}

int64_t sub_10007F974(id a1, TSUZipEntry *a2, TSUZipEntry *a3)
{
  v4 = a3;
  v5 = [(TSUZipEntry *)a2 offset];
  v6 = [(TSUZipEntry *)v4 offset];

  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return v5 > v6;
  }
}

void sub_10007FCAC(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_10007FCF0(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v10 = v5;
    [*(a1 + 32) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "size") + objc_msgSend(*(a1 + 32), "completedUnitCount")}];
    v5 = [*(a1 + 48) copyRemainingEntries:*(a1 + 56) fromArchive:*(a1 + 64) progress:*(a1 + 32) completionHandler:*(a1 + 72)];
  }

  else
  {
    v7 = *(a1 + 72);
    if (!v7)
    {
      goto LABEL_8;
    }

    v10 = v5;
    if (v5)
    {
      v5 = (*(v7 + 16))(v7, v5);
    }

    else
    {
      v8 = [NSError tsu_fileWriteUnknownErrorWithUserInfo:0];
      (*(v7 + 16))(v7, v8);
    }
  }

  v6 = v10;
LABEL_8:

  return _objc_release_x1(v5, v6);
}

void sub_10007FFE8(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_10008002C(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_100080140(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a5;
  if (a2)
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      (*(v8 + 16))(v8, v7 == 0);
    }
  }

  return _objc_release_x2();
}

void sub_100080D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&STACK[0x290], 8);
  _Block_object_dispose(&a64, 8);
  _Unwind_Resume(a1);
}

void sub_100080DB4(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_100080DF8(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_100080E3C(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_100080E80(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_100080F08(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_100080F4C(void *a1, uint64_t a2, NSObject *a3, void *a4, _BYTE *a5)
{
  v15 = a4;
  if (a3)
  {
    *(*(a1[5] + 8) + 24) += dispatch_data_get_size(a3);
  }

  v8 = *(*(a1[5] + 8) + 24);
  v9 = a1[7];
  v10 = (*(a1[4] + 16))();
  v11 = v15;
  if (!v15 && (*a5 & 1) != 0)
  {
    v10 = [NSError errorWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
    v11 = v10;
  }

  if (v11)
  {
    v12 = *(a1[6] + 8);
    v13 = *(v12 + 40);
    v10 = (v12 + 40);
    if (!v13)
    {
      v16 = v11;
      objc_storeStrong(v10, v11);
      v11 = v16;
    }
  }

  return _objc_release_x1(v10, v11);
}

void sub_10008103C(void *a1, uint64_t a2)
{
  v2 = a2;
  v7 = 0;
  v4 = a1[4];
  if (!a2)
  {
    v2 = *(*(a1[5] + 8) + 40);
  }

  (*(v4 + 16))(v4, 1, a1[6], a1[6], v2, &v7);
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void sub_1000813B0(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_100081868(id a1)
{
  v1 = TSULogCreateCategory("TSUDefaultCat");
  v2 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000818AC(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_10008226C(id a1)
{
  v1 = TSULogCreateCategory("TSUDefaultCat");
  v2 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_100082458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10008247C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100082494(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = *(a1 + 64);
  v10 = [v8 shouldPreserveForIntent:*(a1 + 56)];
  if (v9)
  {
    if ((v10 & 1) == 0)
    {
      v11 = *(a1 + 48);
      v12 = *(a1 + 60);
      v13 = *(*(a1 + 32) + 8);
      obj = *(v13 + 40);
      v14 = [v8 setAttributeToPathFileSystemRepresentation:v11 options:v12 error:&obj];
      objc_storeStrong((v13 + 40), obj);
      if ((v14 & 1) == 0)
      {
        *(*(*(a1 + 40) + 8) + 24) = 0;
      }
    }
  }

  else if (v10)
  {
    v15 = *(a1 + 48);
    v16 = *(a1 + 60);
    v17 = *(*(a1 + 32) + 8);
    v20 = *(v17 + 40);
    v18 = [v8 setAttributeToPathFileSystemRepresentation:v15 options:v16 error:&v20];
    objc_storeStrong((v17 + 40), v20);
    if ((v18 & 1) == 0)
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
      *a4 = 0;
    }
  }
}

void sub_100082974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10008298C(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 size];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void sub_100082C00(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) close];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = *(a1 + 40);
    if (v5[32])
    {
      [v5 collapseCommonRootDirectory];
      v5 = *(a1 + 40);
    }

    v4 = v5;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100082CF8;
  block[3] = &unk_1001CCA98;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v12 = v3;
  v13 = v7;
  v11 = v4;
  v8 = v3;
  v9 = v4;
  dispatch_async(v6, block);
}

void sub_100082D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 48);
    v5 = *(*(a1 + 48) + 16);

    v5();
  }

  else
  {
    v7 = *(a1 + 56);
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100082E1C;
    v12[3] = &unk_1001CCB08;
    v12[4] = v9;
    v13 = v8;
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v14 = v10;
    v15 = v11;
    [v9 readEndOfCentralDirectoryData:a2 eocdOffset:v7 channel:v13 completion:v12];
  }
}

void sub_100082E1C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if ((*(*(a1 + 32) + 32) & 4) != 0 && [v3 code] == 259 && (objc_msgSend(v4, "domain"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", NSCocoaErrorDomain), v5, v6))
  {
    v7 = [v4 userInfo];
    v8 = [v7 objectForKeyedSubscript:@"TSUZipArchiveErrorDescription"];

    if (v8)
    {
      if (TSUDefaultCat_init_token != -1)
      {
        sub_10015B260();
      }

      if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
      {
        sub_10015B274();
      }

      [*(a1 + 32) readLocalFileHeaderEntriesFromChannel:*(a1 + 40) offset:0 previousEntry:0 seekAttempts:0 seekForward:0 completion:*(a1 + 48)];
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    if (!v4)
    {
      *(*(a1 + 32) + 24) = *(a1 + 56);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_100082F6C(id a1)
{
  v1 = TSULogCreateCategory("TSUDefaultCat");
  v2 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_100082FB0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError tsu_fileReadUnknownErrorWithUserInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

id sub_100083410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(a1 + 48) + 16))();
  }

  else
  {
    return [*(a1 + 32) readZip64EndOfCentralDirectoryLocatorData:a2 channel:*(a1 + 40) completion:*(a1 + 48)];
  }
}

id sub_100083708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(a1 + 48) + 16))();
  }

  else
  {
    return [*(a1 + 32) readZip64EndOfCentralDirectoryData:a2 channel:*(a1 + 40) completion:*(a1 + 48)];
  }
}

id sub_1000839F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    return [*(a1 + 32) readCentralDirectoryData:a2 entryCount:*(a1 + 48) completion:*(a1 + 40)];
  }
}

void sub_100084394(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000847EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 56);
    v5 = *(*(a1 + 56) + 16);

    v5();
  }

  else
  {
    v7 = *(a1 + 64);
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100084934;
    v15[3] = &unk_1001CCC28;
    v10 = *(a1 + 48);
    v19 = *(a1 + 76);
    v18 = *(a1 + 72);
    v11 = *(a1 + 40);
    v12 = *(a1 + 56);
    *&v13 = v11;
    *(&v13 + 1) = v12;
    *&v14 = v9;
    *(&v14 + 1) = v10;
    v16 = v14;
    v17 = v13;
    [v9 readLocalFileHeaderData:a2 atOffset:v7 channel:v8 completion:v15];
  }
}

void sub_100084934(uint64_t a1, void *a2, void *a3, char a4)
{
  v7 = a2;
  v8 = a3;
  if (!v8)
  {
    if (v7)
    {
      [*(a1 + 32) addEntry:v7];
      v10 = *(a1 + 40);
      if (v10 && (*(a1 + 68) & 1) == 0 && *(a1 + 64))
      {
        [v10 setCompressedSize:{objc_msgSend(*(a1 + 40), "compressedSize") - *(a1 + 64)}];
      }

      v11 = [v7 offset];
      v12 = &v11[[v7 fileHeaderLength]];
      v13 = [v7 compressedSize];
      v14 = *(a1 + 48);
      v15 = *(a1 + 56);
      v16 = &v13[v12];
      v17 = *(a1 + 32);
      v18 = v7;
      v19 = 0;
      v20 = 0;
      goto LABEL_10;
    }

    if (a4)
    {
LABEL_43:
      v9 = *(*(a1 + 56) + 16);
      goto LABEL_3;
    }

    v21 = *(a1 + 64);
    if (*(a1 + 68))
    {
      if (v21)
      {
LABEL_25:
        v25 = 1;
        v23 = 100;
        goto LABEL_26;
      }

LABEL_20:
      if (TSUDefaultCat_init_token != -1)
      {
        sub_10015B448();
      }

      v24 = TSUDefaultCat_log_t;
      if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
      {
        sub_10015B45C(a1, v24);
      }

      LODWORD(v21) = 0;
      goto LABEL_25;
    }

    v22 = [*(a1 + 40) compressedSize];
    if (v22 >= 0x64)
    {
      v23 = 100;
    }

    else
    {
      v23 = v22;
    }

    if (v23 == v21)
    {
      goto LABEL_20;
    }

    if (v21)
    {
      v25 = 0;
LABEL_26:
      if (v23 > v21)
      {
        v26 = (v21 + 1);
        if (v25)
        {
          v27 = [*(a1 + 40) offset];
          v28 = [*(a1 + 40) fileHeaderLength];
          v16 = &v27[v26 + [*(a1 + 40) compressedSize] + v28];
          v20 = 1;
LABEL_37:
          v17 = *(a1 + 32);
          v18 = *(a1 + 40);
          v14 = *(a1 + 48);
          v15 = *(a1 + 56);
          v19 = v26;
LABEL_10:
          [v17 readLocalFileHeaderEntriesFromChannel:v14 offset:v16 previousEntry:v18 seekAttempts:v19 seekForward:v20 completion:v15];
          goto LABEL_11;
        }

LABEL_36:
        v31 = [*(a1 + 40) offset];
        v32 = [*(a1 + 40) fileHeaderLength];
        v33 = [*(a1 + 40) compressedSize];
        v20 = 0;
        v16 = &v31[v33 + v32 - v26];
        goto LABEL_37;
      }

      goto LABEL_39;
    }

    v29 = v22;
    if (TSUDefaultCat_init_token != -1)
    {
      sub_10015B3A0();
    }

    v30 = TSUDefaultCat_log_t;
    if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015B3B4(a1, v30);
      if (v29)
      {
        goto LABEL_35;
      }
    }

    else if (v29)
    {
LABEL_35:
      v26 = 1;
      goto LABEL_36;
    }

LABEL_39:
    if (TSUDefaultCat_init_token != -1)
    {
      sub_10015B4F0();
    }

    if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015B518();
    }

    goto LABEL_43;
  }

  v9 = *(*(a1 + 56) + 16);
LABEL_3:
  v9();
LABEL_11:
}

void sub_100084BEC(id a1)
{
  v1 = TSULogCreateCategory("TSUDefaultCat");
  v2 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_100084C30(id a1)
{
  v1 = TSULogCreateCategory("TSUDefaultCat");
  v2 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_100084C74(id a1)
{
  v1 = TSULogCreateCategory("TSUDefaultCat");
  v2 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000850AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || (v7 = *(a1 + 32), v8 = *(a1 + 40), v16 = 0, v9 = [v7 readLocalFileHeaderFilenameAndExtraFieldsData:v5 forEntry:v8 error:&v16], v6 = v16, !v9))
  {
    v15 = *(*(a1 + 48) + 16);
  }

  else
  {
    v10 = [*(a1 + 40) offset];
    v11 = &v10[[*(a1 + 40) fileHeaderLength]];
    v12 = [*(a1 + 40) compressedSize];
    v13 = *(a1 + 32);
    if (&v12[v11] > *(v13 + 24))
    {
      *(v13 + 24) = &v12[v11];
    }

    v14 = *(a1 + 40);
    v15 = *(*(a1 + 48) + 16);
  }

  v15();
}

void sub_100085440(id a1)
{
  v1 = TSULogCreateCategory("TSUDefaultCat");
  v2 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

TSUZipInflateReadChannel *sub_10008567C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [TSUZipInflateReadChannel alloc];
  [*(a1 + 32) size];
  v5 = -[TSUZipInflateReadChannel initWithReadChannel:uncompressedSize:CRC:validateCRC:](v4, "initWithReadChannel:uncompressedSize:CRC:validateCRC:", v3, [*(a1 + 32) size], objc_msgSend(*(a1 + 32), "CRC"), *(a1 + 40));

  return v5;
}

void sub_100085710(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_10008590C(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_100085DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100085DF0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100085E08(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v21 = [a2 pathComponents];
  if ([v21 count] < 2 || (objc_msgSend(v21, "objectAtIndexedSubscript:", 0), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", @"__MACOSX"), v6, v8 = v21, (v7 & 1) == 0))
  {
    v9 = *(*(*(a1 + 32) + 8) + 40);
    if (v9)
    {
      v10 = 0;
      if (![v9 count])
      {
        goto LABEL_10;
      }

      do
      {
        if (v10 >= [v21 count])
        {
          break;
        }

        v11 = [*(*(*(a1 + 32) + 8) + 40) objectAtIndexedSubscript:v10];
        v12 = [v21 objectAtIndexedSubscript:v10];
        v13 = [v11 compare:v12 options:*(a1 + 40)];

        if (v13)
        {
          break;
        }

        ++v10;
      }

      while (v10 < [*(*(*(a1 + 32) + 8) + 40) count]);
      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v14 = *(*(a1 + 32) + 8);
        v15 = *(v14 + 40);
        *(v14 + 40) = 0;

        *a4 = 1;
      }

      else
      {
LABEL_10:
        v16 = v10 >= [*(*(*(a1 + 32) + 8) + 40) count];
        v8 = v21;
        if (v16)
        {
          goto LABEL_14;
        }

        v17 = *(*(*(a1 + 32) + 8) + 40);
        [v17 removeObjectsInRange:{v10, objc_msgSend(v17, "count") - v10}];
      }
    }

    else
    {
      v18 = [[NSMutableArray alloc] initWithArray:v21];
      v19 = *(*(a1 + 32) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;

      [*(*(*(a1 + 32) + 8) + 40) removeLastObject];
    }

    v8 = v21;
  }

LABEL_14:
}

void sub_100085FE4(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ([v7 length] <= *(a1 + 48) + 1)
  {
    [*(*(a1 + 40) + 16) removeObject:v5];
  }

  else if (([v7 hasPrefix:@"__MACOSX"] & 1) == 0)
  {
    v6 = [v7 substringFromIndex:*(a1 + 48) + 1];
    [v5 setCollapsedName:v6];
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
  }
}

void sub_1000862D4(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_100086534(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_100086794(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_100086A90(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = [*(a1 + 32) streamReadChannelForEntry:*(a1 + 40)];
  if (v3)
  {
    dispatch_suspend(*(a1 + 48));
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100086C14;
    v9[3] = &unk_1001CC558;
    v9[4] = v3;
    v8 = *(a1 + 48);
    v4 = v8;
    v10 = v8;
    [v3 readWithHandler:v9];
  }

  else
  {
    if (TSUDefaultCat_init_token != -1)
    {
      sub_10015B75C();
    }

    if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015B770(v2);
    }

    v5 = [NSError tsu_fileReadCorruptedFileErrorWithUserInfo:0];
    v6 = *(*(a1 + 56) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

void sub_100086BD0(id a1)
{
  v1 = TSULogCreateCategory("TSUDefaultCat");
  v2 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_100086C14(uint64_t a1, int a2, void *a3, void *a4)
{
  v11 = a3;
  v7 = a4;
  if (!v7 || (v8 = *(*(a1 + 48) + 8), v10 = *(v8 + 40), v9 = (v8 + 40), v10))
  {
    if (!a2)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  objc_storeStrong(v9, a4);
  if (a2)
  {
LABEL_4:
    [*(a1 + 32) close];
    dispatch_resume(*(a1 + 40));
  }

LABEL_5:
}

void sub_100086CAC(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = a1[4];
    if (v3)
    {
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100086D7C;
      v8[3] = &unk_1001CCDF8;
      v4 = v2;
      v5 = a1[6];
      v9 = v4;
      v10 = v5;
      dispatch_async(v3, v8);
    }

    else
    {
      v6 = *(*(a1[6] + 8) + 40);
      v7 = v2[2];

      v7();
    }
  }
}

void sub_100086ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100086EEC(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100087134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10008714C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, BOOL *a5)
{
  v7 = a4;
  v8 = objc_opt_class();
  v9 = [v7 objectForKeyedSubscript:@"TSUZipArchiveErrorDescription"];

  v10 = TSUCheckedDynamicCast(v8, v9);
  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  *a5 = *(*(*(a1 + 32) + 8) + 40) != 0;
}

void sub_1000872E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000872F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, BOOL *a5)
{
  v7 = a4;
  v8 = objc_opt_class();
  v9 = [v7 objectForKeyedSubscript:@"TSUZipArchiveErrorEntryName"];

  v10 = TSUCheckedDynamicCast(v8, v9);
  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  *a5 = *(*(*(a1 + 32) + 8) + 40) != 0;
}

void sub_1000873A4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1000875EC(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

BOOL sub_100087D4C(id a1, NSString *a2, int64_t a3, NSDictionary *a4)
{
  v6 = a2;
  v7 = a4;
  if (a3 == 2)
  {
    v9 = @"com.apple.iWork.TSUtility";
  }

  else
  {
    if (a3 == 28)
    {
      v8 = &NSPOSIXErrorDomain;
    }

    else
    {
      if (a3 != 640)
      {
        v10 = 0;
        goto LABEL_10;
      }

      v8 = &NSCocoaErrorDomain;
    }

    v9 = *v8;
  }

  v10 = [(NSString *)v6 isEqualToString:v9];
LABEL_10:

  return v10;
}

BOOL sub_100087DF0(id a1, NSString *a2, int64_t a3, NSDictionary *a4)
{
  v6 = a2;
  v7 = a4;
  if (a3 == -999)
  {
    v8 = &NSURLErrorDomain;
  }

  else
  {
    if (a3 != 3072)
    {
      v9 = 0;
      goto LABEL_7;
    }

    v8 = &NSCocoaErrorDomain;
  }

  v9 = [(NSString *)v6 isEqualToString:*v8];
LABEL_7:

  return v9;
}

BOOL sub_100087E80(id a1, NSString *a2, int64_t a3, NSDictionary *a4)
{
  v6 = a2;
  v7 = a4;
  if (a3 == 17)
  {
    v8 = &NSPOSIXErrorDomain;
  }

  else
  {
    if (a3 != 516)
    {
      v9 = 0;
      goto LABEL_7;
    }

    v8 = &NSCocoaErrorDomain;
  }

  v9 = [(NSString *)v6 isEqualToString:*v8];
LABEL_7:

  return v9;
}

BOOL sub_100087F10(id a1, NSString *a2, int64_t a3, NSDictionary *a4)
{
  v6 = a2;
  v7 = a4;
  if (a3 == 2)
  {
    v8 = &NSPOSIXErrorDomain;
  }

  else
  {
    if (a3 != 260 && a3 != 4)
    {
      v9 = 0;
      goto LABEL_8;
    }

    v8 = &NSCocoaErrorDomain;
  }

  v9 = [(NSString *)v6 isEqualToString:*v8];
LABEL_8:

  return v9;
}

BOOL sub_100087FA8(id a1, NSString *a2, int64_t a3, NSDictionary *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = 0;
  if (a3 <= 512)
  {
    if (a3 != 1)
    {
      if (a3 != 257)
      {
        goto LABEL_14;
      }

      goto LABEL_7;
    }

    if ([(NSString *)v6 isEqualToString:NSPOSIXErrorDomain])
    {
LABEL_12:
      v8 = 1;
      goto LABEL_14;
    }

    v9 = @"NSFileProviderInternalErrorDomain";
LABEL_11:
    if (![(NSString *)v6 isEqualToString:v9])
    {
      v8 = 0;
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (a3 == 513)
  {
    v9 = NSCocoaErrorDomain;
    goto LABEL_11;
  }

  if (a3 == 5124)
  {
LABEL_7:
    v8 = [(NSString *)v6 isEqualToString:NSCocoaErrorDomain];
  }

LABEL_14:

  return v8;
}

BOOL sub_100088094(id a1, NSString *a2, int64_t a3, NSDictionary *a4)
{
  if (a3 == 3328)
  {
    return [(NSString *)a2 isEqualToString:NSCocoaErrorDomain, a4];
  }

  else
  {
    return 0;
  }
}

void sub_10008828C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000882A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

void sub_100088CCC(id a1)
{
  size = 0;
  sysctlbyname("kern.osversion", 0, &size, 0, 0);
  v1 = malloc_type_malloc(size, 0xC1F31C73uLL);
  sysctlbyname("kern.osversion", v1, &size, 0, 0);
  qword_1001EB008 = [[NSString alloc] initWithUTF8String:v1];
  free(v1);
}

void sub_100088D9C(id a1)
{
  size = 0;
  sysctlbyname("hw.model", 0, &size, 0, 0);
  v1 = malloc_type_malloc(size, 0x64E4B4A7uLL);
  sysctlbyname("hw.model", v1, &size, 0, 0);
  qword_1001EB018 = [[NSString alloc] initWithUTF8String:v1];
  free(v1);
}

BOOL TSUHandleSqlite(uint64_t a1, void *a2, int a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!a1)
  {
    return a1 == 0;
  }

  if (a7)
  {
    *v19 = &a9;
    v13 = [[NSString alloc] initWithFormat:a7 arguments:&a9];
  }

  else
  {
    v13 = @"SQLite error";
  }

  if (a1 == 101)
  {
    v14 = "not enough rows returned";
    if (!a3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v14 = sqlite3_errmsg([a4 _sqliteDatabase]);
    if (!a3)
    {
      goto LABEL_12;
    }
  }

  if (TSUDefaultCat_init_token != -1)
  {
    sub_10015BC20();
  }

  v15 = TSUDefaultCat_log_t;
  if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
  {
    *v19 = 138412802;
    *&v19[4] = v13;
    v20 = 2080;
    v21 = v14;
    v22 = 1024;
    v23 = a1;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@: %s (%d)", v19, 0x1Cu);
    if (!a2)
    {
      return a1 == 0;
    }

    goto LABEL_13;
  }

LABEL_12:
  if (!a2)
  {
    return a1 == 0;
  }

LABEL_13:
  if (*a2)
  {
    return a1 == 0;
  }

  v16 = 0;
  if (a1 > 265)
  {
    if (a1 == 266 || a1 == 522)
    {
      goto LABEL_28;
    }

    if (a1 != 778)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (a1 > 0x19)
  {
    goto LABEL_30;
  }

  if (((1 << a1) & 0x27A0000) != 0)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015BC48();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015BC70();
    }

    [TSUAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"BOOL TSUHandleSqlite(int file:NSError ** lineNumber:BOOL isFatal:TSUDatabase * description:SEL, long, NSString *, ...)", *v19], [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUDatabase.m"], 370, 0, "SQLite misused"];
    +[TSUAssertionHandler logBacktraceThrottled];
    v16 = 0;
    goto LABEL_30;
  }

  if (a1 == 13)
  {
LABEL_29:
    v16 = 2;
    goto LABEL_30;
  }

  if (a1 == 14)
  {
LABEL_28:
    v16 = 1;
  }

LABEL_30:
  v17 = +[NSMutableDictionary dictionary];
  [v17 setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", a1), @"TSUDatabaseSqliteErrorCode"}];
  if (v13)
  {
    [v17 setObject:v13 forKeyedSubscript:@"TSUDatabaseErrorMessage"];
  }

  if (v14)
  {
    [v17 setObject:+[NSString stringWithUTF8String:](NSString forKeyedSubscript:{"stringWithUTF8String:", v14), @"TSUDatabaseSqliteErrorMessage"}];
  }

  *a2 = [NSError tsu_errorWithCode:v16 userInfo:v17];
  return a1 == 0;
}

void sub_10008ACCC(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

uint64_t (*sfu_pbkdf2(uint64_t (*result)(uint64_t, uint64_t, char *, uint64_t, char *), uint64_t a2, uint64_t a3, uint64_t a4, void *__src, size_t __n, unsigned int a7, char *a8, unsigned int a9, char *a10))(uint64_t, uint64_t, char *, uint64_t, char *)
{
  v16 = result;
  v17 = a9 / a2;
  v24 = a9 % a2;
  v18 = &a10[a2];
  if (a2 <= a9)
  {
    v25 = a2;
    v19 = 1;
    do
    {
      v26 = a8;
      v23 = a8;
      v20 = a2;
      v21 = v18;
      v22 = v17;
      result = sub_10008AF38(v16, a2, a3, a4, __src, __n, a7, v19, v23, v18);
      v17 = v22;
      v18 = v21;
      a2 = v20;
      a8 = &v26[v25];
      ++v19;
    }

    while (v19 <= v17);
  }

  else
  {
    v19 = 1;
  }

  if (v24)
  {
    sub_10008AF38(v16, a2, a3, a4, __src, __n, a7, v19, a10, v18);

    return memcpy(a8, a10, v24);
  }

  return result;
}

void *sub_10008AF38(uint64_t (*a1)(uint64_t, uint64_t, char *, uint64_t, char *), uint64_t a2, uint64_t a3, uint64_t a4, void *__src, size_t __n, unsigned int a7, int a8, void *a9, char *a10)
{
  v11 = __n;
  v16 = a2;
  v17 = a10;
  v18 = &a10[a2];
  memcpy(v18, __src, __n);
  v18[v11] = HIBYTE(a8);
  v18[v11 + 1] = BYTE2(a8);
  v18[v11 + 2] = BYTE1(a8);
  v18[v11 + 3] = a8;
  a1(a3, a4, v18, (v11 + 4), a10);
  v19 = v16;
  result = memcpy(a9, a10, v16);
  if (a7 >= 2)
  {
    v21 = 2;
    do
    {
      v22 = v18;
      result = a1(a3, a4, v17, a2, v18);
      if (a2)
      {
        v23 = v19;
        v24 = a9;
        v25 = v18;
        do
        {
          v26 = *v25++;
          *v24++ ^= v26;
          --v23;
        }

        while (v23);
      }

      ++v21;
      v18 = v17;
      v17 = v22;
    }

    while (v21 <= a7);
  }

  return result;
}

os_log_t TSULogCreateCategory(char *category)
{
  v1 = os_log_create("com.apple.iwork", category);

  return v1;
}

id sub_10008B278(void *a1)
{
  result = [*(a1[4] + 8) containsObject:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

id sub_10008B35C(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_10008B484(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10008B49C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) allObjects];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

uint64_t sub_10008B5DC(uint64_t a1)
{
  v2 = [NSSet setWithSet:*(*(a1 + 32) + 8)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

uint64_t sub_10008B86C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) description];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

id sub_10008D190(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  if (result)
  {
    v3 = result;
    v4 = *(a1 + 32);

    return [v4 addObject:v3];
  }

  return result;
}

void sub_10008D55C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10008D590(uint64_t a1, void *a2, void *a3)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  result = [a2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(a2);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          (*(*(*(*(a1 + 32) + 8) + 40) + 16))();
        }

        else
        {
          [a3 addObject:v10];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      result = [a2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v7 = result;
    }

    while (result);
  }

  return result;
}

void sub_10008DAA4(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_10008E178(void *a1)
{
  objc_begin_catch(a1);
  fclose(v1);
  objc_exception_rethrow();
}

void sub_10008EDF4(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_10008EE38(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_10008EE7C(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_10008F56C(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_10008F5B0(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v10 = *(a1 + 32);
  if ((*(v10 + 88) & 1) == 0)
  {
    if (v8)
    {
      +[TSUAssertionHandler _atomicIncrementAssertCount];
      if (TSUAssertCat_init_token != -1)
      {
        sub_10015CB98();
      }

      v11 = TSUAssertCat_log_t;
      if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
      {
        sub_10015CBAC(v11, v9);
      }

      v12 = [NSString stringWithUTF8String:"[TSUBufferedReadChannel _resetStreamReadChannelIfNeededForOffset:length:]_block_invoke"];
      v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUBufferedReadChannel.m"];
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = [v9 domain];
      +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v12, v13, 196, 0, "Error reading from filter TSUStreamReadChannel: errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", v15, v16, [v9 code], v9);

      +[TSUAssertionHandler logBacktraceThrottled];
      a2 = 1;
    }

    else if (v7)
    {
      *(v10 + 112) += dispatch_data_get_size(v7);
      v17 = *(a1 + 32);
      v18 = *(v17 + 120);
      if (v18)
      {
        concat = dispatch_data_create_concat(v18, v7);
        v20 = *(a1 + 32);
        v21 = *(v20 + 120);
        *(v20 + 120) = concat;
      }

      else
      {
        v22 = v7;
        v21 = *(v17 + 120);
        *(v17 + 120) = v22;
      }
    }

    *(*(a1 + 32) + 88) = a2;
  }
}

void sub_10008F784(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_10008F8B4(void *a1)
{
  v2 = a1[4];
  if (*(v2 + 48))
  {
    v3 = +[NSThread currentThread];
    v4 = [v3 threadDictionary];
    [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:@"TSUBufferedReadChannelInvokingHandler"];

    v5 = *(a1[4] + 48);
    (*(a1[5] + 16))();
    v11 = +[NSThread currentThread];
    v6 = [v11 threadDictionary];
    [v6 setObject:&__kCFBooleanFalse forKeyedSubscript:@"TSUBufferedReadChannelInvokingHandler"];
  }

  else
  {
    dispatch_suspend(*(v2 + 8));
    v7 = a1[6];
    v8 = a1[7];
    v9 = a1[4];
    v10 = a1[5];

    [v9 _readFromOffset:v7 length:v8 handler:v10];
  }
}

void sub_10008FC5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10008FC74(void *a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v10 = a1[4];
  if (*(v10 + 48))
  {
    goto LABEL_38;
  }

  if (*(v10 + 80))
  {
    if (!v8)
    {
      goto LABEL_4;
    }
  }

  else
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015CC94();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015CCA8();
    }

    v12 = [NSString stringWithUTF8String:"[TSUBufferedReadChannel _readFromOffset:length:handler:]_block_invoke"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUBufferedReadChannel.m"];
    [TSUAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:283 isFatal:0 description:"The source handler for the stream read channel should not be nil"];

    +[TSUAssertionHandler logBacktraceThrottled];
    if (!v9)
    {
      v9 = [NSError tsu_fileReadUnknownErrorWithUserInfo:0];
      if (!v9)
      {
LABEL_4:
        if (v7)
        {
          size = dispatch_data_get_size(v7);
        }

        else
        {
          size = 0;
        }

        *(*(a1[6] + 8) + 24) += size;
        if (*(*(a1[6] + 8) + 24) > a1[7])
        {
          v24 = +[TSUAssertionHandler _atomicIncrementAssertCount];
          if (TSUAssertCat_init_token != -1)
          {
            sub_10015CE58();
          }

          v25 = TSUAssertCat_log_t;
          if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
          {
            v35 = a1[7];
            v36 = *(*(a1[6] + 8) + 24);
            *buf = 67110402;
            v48 = v24;
            v49 = 2082;
            v50 = "[TSUBufferedReadChannel _readFromOffset:length:handler:]_block_invoke";
            v51 = 2082;
            v52 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUBufferedReadChannel.m";
            v53 = 1024;
            v54 = 305;
            v55 = 2048;
            v56 = v36;
            v57 = 2048;
            v58 = v35;
            _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Received more data than requested: %zu instead of %zu", buf, 0x36u);
          }

          v26 = [NSString stringWithUTF8String:"[TSUBufferedReadChannel _readFromOffset:length:handler:]_block_invoke"];
          v27 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUBufferedReadChannel.m"];
          v28 = *(*(a1[6] + 8) + 24);
          [TSUAssertionHandler handleFailureInFunction:v26 file:v27 lineNumber:305 isFatal:0 description:"Received more data than requested: %zu instead of %zu", v28, a1[7]];

          +[TSUAssertionHandler logBacktraceThrottled];
        }

        if (a2)
        {
          v29 = *(*(a1[6] + 8) + 24) < a1[7];
          if (v7)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v29 = 0;
          if (v7)
          {
            goto LABEL_29;
          }
        }

        if (!v29)
        {
LABEL_31:
          if (v29)
          {
            v31 = a1[4];
            v32 = *(v31 + 80);
            *(v31 + 80) = 0;
          }

          if (a2)
          {
            *(a1[4] + 32) += *(*(a1[6] + 8) + 24);
            v33 = a1[4];
            v34 = v33[5];
            if (v34 != -1)
            {
              v33[5] = v34 - *(*(a1[6] + 8) + 24);
              v33 = a1[4];
            }

            [v33 _readFromOffset:a1[8] length:a1[9] handler:a1[5]];
          }

          v9 = 0;
          goto LABEL_38;
        }

LABEL_29:
        v30 = *(a1[4] + 80);
        if (!v30)
        {
          +[TSUAssertionHandler _atomicIncrementAssertCount];
          if (TSUAssertCat_init_token != -1)
          {
            sub_10015CE80();
          }

          if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
          {
            sub_10015CEA8();
          }

          TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v37, v38, v39, v40, v41, v42, v43, "[TSUBufferedReadChannel _readFromOffset:length:handler:]_block_invoke");
          v44 = [NSString stringWithUTF8String:"[TSUBufferedReadChannel _readFromOffset:length:handler:]_block_invoke"];
          v45 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUBufferedReadChannel.m"];
          [TSUAssertionHandler handleFailureInFunction:v44 file:v45 lineNumber:310 isFatal:1 description:"invalid nil value for '%{public}s'", "_streamReadChannelSourceHandler", "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUBufferedReadChannel.m", 310, "_streamReadChannelSourceHandler"];

          TSUCrashBreakpoint(v46);
          abort();
        }

        (*(v30 + 16))(v30, v29, v7, 0);
        goto LABEL_31;
      }
    }
  }

  +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    sub_10015CD48();
  }

  v14 = TSUAssertCat_log_t;
  if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    sub_10015CD70(v14, v9);
  }

  v15 = [NSString stringWithUTF8String:"[TSUBufferedReadChannel _readFromOffset:length:handler:]_block_invoke"];
  v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUBufferedReadChannel.m"];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v19 = [v9 domain];
  +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v15, v16, 296, 0, "Error reading from source TSUReadChannel: errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", v18, v19, [v9 code], v9);

  +[TSUAssertionHandler logBacktraceThrottled];
  v20 = +[NSThread currentThread];
  v21 = [v20 threadDictionary];
  [v21 setObject:&__kCFBooleanTrue forKeyedSubscript:@"TSUBufferedReadChannelInvokingHandler"];

  (*(a1[5] + 16))();
  v22 = +[NSThread currentThread];
  v23 = [v22 threadDictionary];
  [v23 setObject:&__kCFBooleanFalse forKeyedSubscript:@"TSUBufferedReadChannelInvokingHandler"];

  objc_storeStrong((a1[4] + 48), v9);
  dispatch_resume(*(a1[4] + 8));
LABEL_38:
}

void sub_1000902AC(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000902F0(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_100090334(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_100090378(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000905F4(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_100090824(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_100090A1C(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_100090C14(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_100090CAC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x4Au);
}

void sub_100090FA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100090FBC(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_100091000(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_100091044(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10009105C(uint64_t a1, int a2, void *a3, void *a4)
{
  data2 = a3;
  v7 = a4;
  v8 = *(*(*(a1 + 40) + 8) + 40);
  if (v8)
  {
    if (v7)
    {
      v9 = *(*(a1 + 32) + 16);
LABEL_8:
      v9();
      v14 = *(*(a1 + 40) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = 0;

      goto LABEL_9;
    }

    if (data2)
    {
      concat = dispatch_data_create_concat(v8, data2);
      v11 = *(*(a1 + 40) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = concat;
    }

    if (a2)
    {
      v13 = *(*(*(a1 + 40) + 8) + 40);
      v9 = *(*(a1 + 32) + 16);
      goto LABEL_8;
    }
  }

LABEL_9:
}

void sub_1000913FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100091414(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_100091458(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_10009149C(uint64_t a1, int a2, void *a3, void *a4)
{
  data2 = a3;
  v7 = a4;
  v8 = *(*(*(a1 + 40) + 8) + 40);
  if (v8)
  {
    if (v7)
    {
      v9 = *(*(a1 + 32) + 16);
LABEL_8:
      v9();
      v14 = *(*(a1 + 40) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = 0;

      goto LABEL_9;
    }

    if (data2)
    {
      concat = dispatch_data_create_concat(v8, data2);
      v11 = *(*(a1 + 40) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = concat;
    }

    if (a2)
    {
      v13 = *(*(*(a1 + 40) + 8) + 40);
      v9 = *(*(a1 + 32) + 16);
      goto LABEL_8;
    }
  }

LABEL_9:
}

void sub_100091774(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

intptr_t sub_100091890(uint64_t a1, int a2)
{
  result = (*(*(a1 + 40) + 16))();
  if (a2)
  {
    v5 = *(a1 + 32);

    return dispatch_semaphore_signal(v5);
  }

  return result;
}

intptr_t sub_1000919D8(uint64_t a1, int a2)
{
  result = (*(*(a1 + 40) + 16))();
  if (a2)
  {
    v5 = *(a1 + 32);

    return dispatch_semaphore_signal(v5);
  }

  return result;
}

id sub_100091A30(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = [v5 readToBuffer:a2 size:a3];

  return v6;
}

char *sub_100091BFC(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 offset];
  [v3 seekToOffset:&v4[a2]];
  v5 = ([v3 offset] - v4);

  return v5;
}

void sub_100091DD4(void *a1)
{
  v1 = a1;
  [v1 seekToOffset:0];
}

void sub_100091FC4(void *a1)
{
  v1 = a1;
  [v1 close];
  CFRelease(v1);
}

void sub_1000921B8(id a1)
{
  v1 = TSULogCreateCategory("TSUDefaultCat");
  v2 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000921FC(id a1)
{
  v1 = TSULogCreateCategory("TSUDefaultCat");
  v2 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_100092240(id a1)
{
  v1 = TSULogCreateCategory("TSUDefaultCat");
  v2 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_100092284(id a1)
{
  v1 = TSULogCreateCategory("TSUDefaultCat");
  v2 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

id TSUArrayDescription(void *a1)
{
  v1 = a1;
  v2 = +[TSUDescription descriptionWithObject:format:](TSUDescription, "descriptionWithObject:format:", v1, @" count=%lu", [v1 count]);;
  if ([v1 count])
  {
    v3 = 0;
    do
    {
      v4 = [NSString stringWithFormat:@"[%lu]", v3];
      v5 = [v1 objectAtIndexedSubscript:v3];
      [v2 addField:v4 format:{@"%@", v5}];

      ++v3;
    }

    while (v3 < [v1 count]);
  }

  [v2 setFieldOptionCommaSeparated];
  v6 = [v2 descriptionString];

  return v6;
}

__CFString *TSUObjectReferenceDescription(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    ClassName = object_getClassName(v1);
    if (isKindOfClass)
    {
      +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"(%s*)%p; count=%lu", ClassName, v1, [v1 count]);
    }

    else
    {
      [NSString stringWithFormat:@"(%s*)%p", ClassName, v1, v6];
    }
    v4 = ;
  }

  else
  {
    v4 = @"<nil>";
  }

  return v4;
}

void sub_100093614(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_100093794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000937AC(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v10 = *(a1 + 48);
  v11 = *(v10 + 8);
  if (*(v11 + 24) == 1)
  {
    if (v8)
    {
      *(v11 + 24) = 0;
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100093948;
      v14[3] = &unk_1001CD790;
      v16 = v10;
      v15 = *(a1 + 40);
      [*(a1 + 32) setHandler:v14];
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        applier[0] = _NSConcreteStackBlock;
        applier[1] = 3221225472;
        applier[2] = sub_100093A10;
        applier[3] = &unk_1001C9310;
        v13 = *(a1 + 32);
        *(*(*(a1 + 48) + 8) + 24) = dispatch_data_apply(v7, applier);
        if (a2 && *(*(*(a1 + 48) + 8) + 24) == 1)
        {
          [*(a1 + 32) didFinishProcessing];
        }
      }
    }
  }
}

uint64_t sub_100093948(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a2;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  v12 = *(*(a1 + 40) + 8);
  if (*(v12 + 24) == 1)
  {
    if (v10)
    {
      *(v12 + 24) = 0;
    }

    (*(*(a1 + 32) + 16))();
  }

  v13 = *(*(*(a1 + 40) + 8) + 24);

  return v13;
}

void sub_100093C04(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_100093E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 144), 8);
  _Block_object_dispose((v17 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100093EDC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100093EF4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 24);
  if (v8 && *(v9 + 24))
  {
    *(v9 + 24) = 0;
    [*(a1 + 32) handleFailureWithHandler:*(a1 + 40) error:v8];
    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (!*(v9 + 24))
  {
LABEL_12:
    v17 = v8;
    v15 = v7;
    goto LABEL_13;
  }

  v11 = *(*(*(a1 + 56) + 8) + 40);
  if (!v11)
  {
    goto LABEL_12;
  }

  if (v7)
  {
    concat = dispatch_data_create_concat(v11, v7);
    v13 = *(*(a1 + 56) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = concat;

    v11 = *(*(*(a1 + 56) + 8) + 40);
  }

  v15 = v11;

  size = dispatch_data_get_size(v15);
  if ((a2 & 1) != 0 || size >= 0x1E)
  {
    v18 = *(*(a1 + 56) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = 0;

    v34 = v8;
    v35 = 0;
    v20 = [*(a1 + 32) readFileHeaderFromData:v15 headerLength:&v35 error:&v34];
    v17 = v34;

    *(*(*(a1 + 48) + 8) + 24) = v20;
    v21 = v35;
    *(*(*(a1 + 64) + 8) + 24) = v35 != *(a1 + 80);
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      if (*(*(*(a1 + 64) + 8) + 24) == 1)
      {
        [*(a1 + 32) readWithFileHeaderLength:v21 handler:*(a1 + 40)];
      }

      else
      {
        v22 = dispatch_data_get_size(v15);
        if (v22 >= v21)
        {
          subrange = dispatch_data_create_subrange(v15, v21, v22 - v21);

          v15 = subrange;
        }

        else
        {
          v23 = v22;
          if (TSUDefaultCat_init_token != -1)
          {
            sub_10015D548();
          }

          v24 = TSUDefaultCat_log_t;
          if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
          {
            v31 = *(*(a1 + 32) + 8);
            v32 = v24;
            v33 = [v31 name];
            *buf = 138412802;
            v39 = v33;
            v40 = 2048;
            v41 = v23;
            v42 = 2048;
            v43 = v35;
            _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Read was less than file header size for entry %@. dataSize=%zu, headerLength=%zu", buf, 0x20u);
          }

          v36[0] = @"TSUZipArchiveErrorDescription";
          v36[1] = @"TSUZipArchiveErrorEntryName";
          v37[0] = @"Entry is too small";
          v25 = [*(*(a1 + 32) + 8) name];
          v26 = v25;
          v27 = &stru_1001D3878;
          if (v25)
          {
            v27 = v25;
          }

          v37[1] = v27;
          v28 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:2];
          v29 = [NSError tsu_fileReadCorruptedFileErrorWithUserInfo:v28];

          *(*(*(a1 + 48) + 8) + 24) = 0;
          v17 = v29;
        }
      }
    }

    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      [*(a1 + 32) handleFailureWithHandler:*(a1 + 40) error:v17];
    }
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
    v17 = v8;
  }

LABEL_13:
  if (*(*(*(a1 + 48) + 8) + 24) == 1 && (*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) processData:v15 CRC:*(*(a1 + 72) + 8) + 24 isDone:a2 handler:*(a1 + 40)];
  }
}

void sub_1000942CC(id a1)
{
  v1 = TSULogCreateCategory("TSUDefaultCat");
  v2 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_10009455C(id a1)
{
  v1 = TSULogCreateCategory("TSUDefaultCat");
  v2 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000945A0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13 = 0;
  if (v6 || (v7 = *(a1 + 32), v12 = 0, v8 = [v7 readFileHeaderFromData:v5 headerLength:&v13 error:&v12], v6 = v12, !v8))
  {
    [*(a1 + 32) handleFailureWithHandler:*(a1 + 40) error:v6];
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(v9 + 32);
    v11 = [*(v9 + 8) offset];
    [v10 readFromOffset:&v11[v13 + *(a1 + 48)] length:*(a1 + 56) handler:*(a1 + 40)];
  }
}

void sub_100094A70(id a1)
{
  v1 = TSULogCreateCategory("TSUDefaultCat");
  v2 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_100094AB4(id a1)
{
  v1 = TSULogCreateCategory("TSUDefaultCat");
  v2 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_100094AF8(id a1)
{
  v1 = TSULogCreateCategory("TSUDefaultCat");
  v2 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_100094CA0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v10 = a3;
  v7 = a4;
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 24);
  if (!v7 || !*(v8 + 24))
  {
    if (!*(v8 + 24))
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  *(v8 + 24) = 0;
  [*(a1 + 32) handleFailureWithHandler:*(a1 + 40) error:v7];
  if (*(*(*(a1 + 48) + 8) + 24))
  {
LABEL_6:
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) processData:v10 CRC:*(*(a1 + 56) + 8) + 24 isDone:a2 handler:*(a1 + 40)];
  }

LABEL_7:
}

uint64_t sub_100094F80(uint64_t a1, int a2, int a3, Bytef *buf, unint64_t len)
{
  v7 = **(a1 + 32);
  if (HIDWORD(len))
  {
    sub_10015D8D4();
    v8 = -1;
  }

  else
  {
    v8 = len;
  }

  **(a1 + 32) = crc32(v7, buf, v8);
  return 1;
}

void sub_100094FE4(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_100095028(id a1)
{
  v1 = TSULogCreateCategory("TSUDefaultCat");
  v2 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_100095490(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000954D4(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_100095628(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

BOOL p_sortFunction(_NSRange a1, _NSRange a2)
{
  if (a1.location == a2.location)
  {
    return a2.location + a2.length < a1.location + a1.length;
  }

  else
  {
    return a1.location < a2.location;
  }
}

void TSUNormalizeRangeVector(uint64_t **a1)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = (v3 - v2) >> 4;
  if (v5 < 2)
  {
    return;
  }

  v25 = p_sortFunction;
  v6 = 126 - 2 * __clz(v5);
  if (v3 == v2)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  sub_100095FA8(v2, v3, &v25, v7, 1);
  v9 = *a1;
  v8 = a1[1];
  v10 = (v8 - *a1) >> 4;
  if (v10 >= 2)
  {
    v11 = 0;
    v12 = *v9;
    v13 = 1;
    while (1)
    {
      if (v10 <= v13 + 1)
      {
        v14 = v13 + 1;
      }

      else
      {
        v14 = v10;
      }

      v15 = &v9[2 * v13 + 1];
      v16 = ~v13;
      v17 = v14 - v13;
      while (1)
      {
        v18 = *(v15 - 1);
        if (v12 != v18)
        {
          break;
        }

        v15 += 2;
        --v16;
        if (!--v17)
        {
          goto LABEL_21;
        }
      }

      v19 = &v9[2 * v11];
      v20 = *v15;
      v21 = v19[1] + *v19;
      if (v21 >= v18)
      {
        v22 = v20 + v18;
        if (v21 >= v22)
        {
          goto LABEL_19;
        }

        v20 = v22 - *v19;
      }

      else
      {
        ++v11;
        v19 = &v9[2 * v11];
        *v19 = v18;
      }

      v19[1] = v20;
LABEL_19:
      v13 = -v16;
      if (-v16 < v10)
      {
        v12 = v18;
        if (v11 < v10)
        {
          continue;
        }
      }

LABEL_21:
      if (v11 < v10)
      {
        v23 = 2 * v11;
LABEL_25:
        v24 = &v9[v23 + 2];
        if (v24 != v8)
        {
          a1[1] = v24;
        }
      }

      return;
    }
  }

  if (v8 != v9)
  {
    v23 = 0;
    goto LABEL_25;
  }
}

void sub_100095FA8(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4, char a5)
{
LABEL_1:
  v53 = a2 - 4;
  v54 = a2 - 2;
  v52 = a2 - 6;
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 4;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return;
      }

      if (v12 == 2)
      {
        v47 = *(a2 - 2);
        v48 = *(a2 - 1);
        v49 = a2 - 2;
        if ((*a3)(v47, v48, *v9, v9[1]))
        {
          v73 = *v9;
          *v9 = *v49;
          *v49 = v73;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {

      sub_1000967D8(v9, v9 + 2, v9 + 4, v54, a3);
      return;
    }

    if (v12 == 5)
    {

      sub_100096938(v9, v9 + 2, v9 + 4, v9 + 6, v54, a3);
      return;
    }

LABEL_10:
    if (v12 <= 23)
    {
      if (a5)
      {

        sub_100096A1C(v9, a2, a3);
      }

      else
      {

        sub_100096AF4(v9, a2, a3);
      }

      return;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        sub_100097120(v9, a2, a2, a3);
      }

      return;
    }

    v13 = &v9[2 * (v12 >> 1)];
    v14 = *a3;
    if (v12 >= 0x81)
    {
      v15 = v14(*v13, v13[1], *v9, v9[1]);
      v16 = (*a3)(*(a2 - 2), *(a2 - 1), *v13, v13[1]);
      if (v15)
      {
        if (v16)
        {
          v55 = *v9;
          v17 = a2 - 2;
          *v9 = *v54;
          goto LABEL_28;
        }

        v61 = *v9;
        *v9 = *v13;
        *v13 = v61;
        if ((*a3)(*(a2 - 2), *(a2 - 1), *v13, v13[1]))
        {
          v55 = *v13;
          v17 = a2 - 2;
          *v13 = *v54;
LABEL_28:
          *v17 = v55;
        }
      }

      else if (v16)
      {
        v57 = *v13;
        *v13 = *v54;
        *v54 = v57;
        if ((*a3)(*v13, v13[1], *v9, v9[1]))
        {
          v58 = *v9;
          *v9 = *v13;
          *v13 = v58;
        }
      }

      v21 = (v9 + 2);
      v22 = v13 - 2;
      v23 = (*a3)(*(v13 - 2), *(v13 - 1), a1[2], a1[3]);
      v24 = (*a3)(*(a2 - 4), *(a2 - 3), *(v13 - 2), *(v13 - 1));
      if (v23)
      {
        if (v24)
        {
          v25 = *v21;
          v26 = a2 - 4;
          *v21 = *v53;
          goto LABEL_42;
        }

        v28 = *v21;
        *v21 = *v22;
        *v22 = v28;
        if ((*a3)(*(a2 - 4), *(a2 - 3), *v22, *(v13 - 1)))
        {
          v64 = *v22;
          v26 = a2 - 4;
          *v22 = *v53;
          v25 = v64;
LABEL_42:
          *v26 = v25;
        }
      }

      else if (v24)
      {
        v62 = *v22;
        *v22 = *v53;
        *v53 = v62;
        if ((*a3)(*v22, *(v13 - 1), a1[2], a1[3]))
        {
          v27 = *v21;
          *v21 = *v22;
          *v22 = v27;
        }
      }

      v29 = (a1 + 4);
      v30 = v13 + 2;
      v31 = (*a3)(v13[2], v13[3], a1[4], a1[5]);
      v32 = (*a3)(*(a2 - 6), *(a2 - 5), v13[2], v13[3]);
      if (v31)
      {
        if (v32)
        {
          v33 = *v29;
          v34 = a2 - 6;
          *v29 = *v52;
          goto LABEL_51;
        }

        v36 = *v29;
        *v29 = *v30;
        *v30 = v36;
        if ((*a3)(*(a2 - 6), *(a2 - 5), *v30, v13[3]))
        {
          v66 = *v30;
          v34 = a2 - 6;
          *v30 = *v52;
          v33 = v66;
LABEL_51:
          *v34 = v33;
        }
      }

      else if (v32)
      {
        v65 = *v30;
        *v30 = *v52;
        *v52 = v65;
        if ((*a3)(*v30, v13[3], a1[4], a1[5]))
        {
          v35 = *v29;
          *v29 = *v30;
          *v30 = v35;
        }
      }

      v37 = (*a3)(*v13, v13[1], *v22, *(v13 - 1));
      v38 = (*a3)(*v30, v13[3], *v13, v13[1]);
      if (v37)
      {
        if (v38)
        {
          v67 = *v22;
          *v22 = *v30;
          goto LABEL_60;
        }

        v70 = *v22;
        *v22 = *v13;
        *v13 = v70;
        if ((*a3)(*v30, v13[3], *v13, v13[1]))
        {
          v67 = *v13;
          *v13 = *v30;
LABEL_60:
          *v30 = v67;
        }
      }

      else if (v38)
      {
        v68 = *v13;
        *v13 = *v30;
        *v30 = v68;
        if ((*a3)(*v13, v13[1], *v22, *(v13 - 1)))
        {
          v69 = *v22;
          *v22 = *v13;
          *v13 = v69;
        }
      }

      v71 = *a1;
      *a1 = *v13;
      *v13 = v71;
      if (a5)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    v18 = v14(*v9, v9[1], *v13, v13[1]);
    v19 = (*a3)(*(a2 - 2), *(a2 - 1), *v9, v9[1]);
    if (v18)
    {
      if (v19)
      {
        v56 = *v13;
        v20 = a2 - 2;
        *v13 = *v54;
        goto LABEL_37;
      }

      v63 = *v13;
      *v13 = *v9;
      *v9 = v63;
      if ((*a3)(*(a2 - 2), *(a2 - 1), *v9, v9[1]))
      {
        v56 = *v9;
        v20 = a2 - 2;
        *v9 = *v54;
LABEL_37:
        *v20 = v56;
      }

LABEL_38:
      if (a5)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (!v19)
    {
      goto LABEL_38;
    }

    v59 = *v9;
    *v9 = *v54;
    *v54 = v59;
    if (!(*a3)(*v9, v9[1], *v13, v13[1]))
    {
      goto LABEL_38;
    }

    v60 = *v13;
    *v13 = *v9;
    *v9 = v60;
    if (a5)
    {
      goto LABEL_63;
    }

LABEL_62:
    if (((*a3)(*(a1 - 2), *(a1 - 1), *a1, a1[1]) & 1) == 0)
    {
      v9 = sub_100096BA4(a1, a2, a3);
      goto LABEL_68;
    }

LABEL_63:
    v39 = sub_100096CDC(a1, a2, a3);
    if ((v40 & 1) == 0)
    {
      goto LABEL_66;
    }

    v41 = sub_100096E10(a1, v39, a3);
    v9 = v39 + 2;
    if (sub_100096E10(v39 + 2, a2, a3))
    {
      a4 = -v11;
      a2 = v39;
      if (v41)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v41)
    {
LABEL_66:
      sub_100095FA8(a1, v39, a3, -v11, a5 & 1);
      v9 = v39 + 2;
LABEL_68:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  v42 = v9 + 2;
  v43 = (*a3)(v9[2], v9[3], *v9, v9[1]);
  v44 = a2 - 2;
  v45 = (*a3)(*(a2 - 2), *(a2 - 1), v9[2], v9[3]);
  if (v43)
  {
    if (v45)
    {
      v72 = *v9;
      *v9 = *v44;
      v46 = v72;
    }

    else
    {
      v75 = *v9;
      *v9 = *v42;
      *v42 = v75;
      if (!(*a3)(*(a2 - 2), *(a2 - 1), v9[2], v9[3]))
      {
        return;
      }

      v46 = *v42;
      *v42 = *v44;
    }

    *v44 = v46;
  }

  else if (v45)
  {
    v51 = *v42;
    *v42 = *v44;
    *v44 = v51;
    if ((*a3)(v9[2], v9[3], *v9, v9[1]))
    {
      v74 = *v9;
      *v9 = *v42;
      *v42 = v74;
    }
  }
}

__n128 sub_1000967D8(void *a1, void *a2, void *a3, void *a4, uint64_t (**a5)(void, void, void, void))
{
  v10 = (*a5)(*a2, a2[1], *a1, a1[1]);
  v11 = (*a5)(*a3, a3[1], *a2, a2[1]);
  if (v10)
  {
    if (v11)
    {
      v12 = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = v12;
      goto LABEL_10;
    }

    v15 = *a1;
    *a1 = *a2;
    *a2 = v15;
    if ((*a5)(*a3, a3[1], *a2, a2[1]))
    {
      v12 = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if ((*a5)(*a2, a2[1], *a1, a1[1]))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

LABEL_10:
  if ((*a5)(*a4, a4[1], *a3, a3[1]))
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    if ((*a5)(*a3, a3[1], *a2, a2[1]))
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      if ((*a5)(*a2, a2[1], *a1, a1[1]))
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  return result;
}

__n128 sub_100096938(void *a1, void *a2, void *a3, void *a4, void *a5, uint64_t (**a6)(void, void, void, void))
{
  v12 = sub_1000967D8(a1, a2, a3, a4, a6);
  if ((*a6)(*a5, a5[1], *a4, a4[1], v12))
  {
    v14 = *a4;
    *a4 = *a5;
    *a5 = v14;
    if ((*a6)(*a4, a4[1], *a3, a3[1]))
    {
      v15 = *a3;
      *a3 = *a4;
      *a4 = v15;
      if ((*a6)(*a3, a3[1], *a2, a2[1]))
      {
        v16 = *a2;
        *a2 = *a3;
        *a3 = v16;
        if ((*a6)(*a2, a2[1], *a1, a1[1]))
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

uint64_t sub_100096A1C(uint64_t result, void *a2, uint64_t (**a3)(uint64_t, uint64_t, void, void))
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 16);
    if ((result + 16) != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v9 = v5;
        result = (*a3)(v8[2], v8[3], *v8, v8[1]);
        if (result)
        {
          v10 = *v9;
          v11 = v8[3];
          v12 = v7;
          while (1)
          {
            *(v4 + v12 + 16) = *(v4 + v12);
            if (!v12)
            {
              break;
            }

            result = (*a3)(v10, v11, *(v4 + v12 - 16), *(v4 + v12 - 8));
            v12 -= 16;
            if ((result & 1) == 0)
            {
              v13 = (v4 + v12 + 16);
              goto LABEL_10;
            }
          }

          v13 = v4;
LABEL_10:
          *v13 = v10;
          v13[1] = v11;
        }

        v5 = v9 + 2;
        v7 += 16;
        v8 = v9;
      }

      while (v9 + 2 != a2);
    }
  }

  return result;
}

uint64_t sub_100096AF4(uint64_t result, void *a2, uint64_t (**a3)(uint64_t, uint64_t, void, void))
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 16);
    if ((result + 16) != a2)
    {
      do
      {
        v7 = v5;
        result = (*a3)(v4[2], v4[3], *v4, v4[1]);
        if (result)
        {
          v8 = *v7;
          v9 = v4[3];
          v10 = v7;
          do
          {
            v11 = v10 - 1;
            *v10 = *(v10 - 1);
            result = (*a3)(v8, v9, *(v10 - 4), *(v10 - 3));
            v10 = v11;
          }

          while ((result & 1) != 0);
          *v11 = v8;
          v11[1] = v9;
        }

        v5 = v7 + 2;
        v4 = v7;
      }

      while (v7 + 2 != a2);
    }
  }

  return result;
}

void *sub_100096BA4(void *a1, _OWORD *a2, uint64_t (**a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = a2;
  v6 = *a1;
  v7 = a1[1];
  if ((*a3)(*a1, v7, *(a2 - 2), *(a2 - 1)))
  {
    v8 = a1;
    do
    {
      v9 = v8[2];
      v10 = v8[3];
      v8 += 2;
    }

    while (((*a3)(v6, v7, v9, v10) & 1) == 0);
  }

  else
  {
    v11 = a1 + 2;
    do
    {
      v8 = v11;
      if (v11 >= v4)
      {
        break;
      }

      v12 = (*a3)(v6, v7, *v11, v11[1]);
      v11 = v8 + 2;
    }

    while (!v12);
  }

  if (v8 < v4)
  {
    do
    {
      v13 = *(v4 - 2);
      v14 = *(v4-- - 1);
    }

    while (((*a3)(v6, v7, v13, v14) & 1) != 0);
  }

  while (v8 < v4)
  {
    v20 = *v8;
    *v8 = *v4;
    *v4 = v20;
    do
    {
      v15 = v8[2];
      v16 = v8[3];
      v8 += 2;
    }

    while (!(*a3)(v6, v7, v15, v16));
    do
    {
      v17 = *(v4 - 2);
      v18 = *(v4-- - 1);
    }

    while (((*a3)(v6, v7, v17, v18) & 1) != 0);
  }

  if (v8 - 2 != a1)
  {
    *a1 = *(v8 - 1);
  }

  *(v8 - 2) = v6;
  *(v8 - 1) = v7;
  return v8;
}

uint64_t *sub_100096CDC(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = 0;
  v7 = *a1;
  v8 = a1[1];
  do
  {
    v9 = (*a3)(a1[v6 + 2], a1[v6 + 3], v7, v8);
    v6 += 2;
  }

  while ((v9 & 1) != 0);
  v10 = &a1[v6];
  if (v6 == 2)
  {
    do
    {
      if (v10 >= a2)
      {
        break;
      }

      v13 = *(a2 - 2);
      v14 = *(a2 - 1);
      a2 -= 2;
    }

    while (((*a3)(v13, v14, v7, v8) & 1) == 0);
  }

  else
  {
    do
    {
      v11 = *(a2 - 2);
      v12 = *(a2 - 1);
      a2 -= 2;
    }

    while (!(*a3)(v11, v12, v7, v8));
  }

  v15 = &a1[v6];
  if (v10 < a2)
  {
    v16 = a2;
    do
    {
      v17 = *v15;
      *v15 = *v16;
      *v16 = v17;
      do
      {
        v18 = v15[2];
        v19 = v15[3];
        v15 += 2;
      }

      while (((*a3)(v18, v19, v7, v8) & 1) != 0);
      do
      {
        v20 = *(v16 - 2);
        v21 = *(v16 - 1);
        v16 -= 2;
      }

      while (!(*a3)(v20, v21, v7, v8));
    }

    while (v15 < v16);
  }

  result = v15 - 2;
  if (v15 - 2 != a1)
  {
    *a1 = *result;
  }

  *(v15 - 2) = v7;
  *(v15 - 1) = v8;
  return result;
}

BOOL sub_100096E10(void *a1, char *a2, uint64_t (**a3)(uint64_t, uint64_t, void, void))
{
  v6 = (a2 - a1) >> 4;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v9 = a1 + 2;
        v10 = (*a3)(a1[2], a1[3], *a1, a1[1]);
        v11 = a2 - 16;
        v12 = (*a3)(*(a2 - 2), *(a2 - 1), *v9, a1[3]);
        if ((v10 & 1) == 0)
        {
          if (v12)
          {
            v19 = *v9;
            *v9 = *v11;
            *v11 = v19;
            if ((*a3)(a1[2], a1[3], *a1, a1[1]))
            {
              v20 = *a1;
              *a1 = *v9;
              *v9 = v20;
            }
          }

          return 1;
        }

        if (v12)
        {
          v13 = *a1;
          *a1 = *v11;
        }

        else
        {
          v23 = *a1;
          *a1 = *v9;
          *v9 = v23;
          if (!(*a3)(*(a2 - 2), *(a2 - 1), a1[2], a1[3]))
          {
            return 1;
          }

          v13 = *v9;
          *v9 = *v11;
        }

        *v11 = v13;
        return 1;
      case 4:
        sub_1000967D8(a1, a1 + 2, a1 + 4, a2 - 2, a3);
        break;
      case 5:
        sub_100096938(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2, a3);
        break;
      default:
        goto LABEL_13;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 16;
    if ((*a3)(*(a2 - 2), *(a2 - 1), *a1, a1[1]))
    {
      v8 = *a1;
      *a1 = *v7;
      *v7 = v8;
    }

    return 1;
  }

LABEL_13:
  v14 = a1 + 2;
  v15 = (*a3)(a1[2], a1[3], *a1, a1[1]);
  v16 = (a1 + 4);
  v17 = (*a3)(a1[4], a1[5], *v14, a1[3]);
  if (v15)
  {
    if (v17)
    {
      v18 = *a1;
      *a1 = *v16;
    }

    else
    {
      v24 = *a1;
      *a1 = *v14;
      *v14 = v24;
      if (!(*a3)(a1[4], a1[5], a1[2], a1[3]))
      {
        goto LABEL_29;
      }

      v18 = *v14;
      *v14 = *v16;
    }

    *v16 = v18;
  }

  else if (v17)
  {
    v21 = *v14;
    *v14 = *v16;
    *v16 = v21;
    if ((*a3)(a1[2], a1[3], *a1, a1[1]))
    {
      v22 = *a1;
      *a1 = *v14;
      *v14 = v22;
    }
  }

LABEL_29:
  v25 = (a1 + 6);
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v26 = 0;
  v27 = 0;
  while (1)
  {
    if ((*a3)(*v25, *(v25 + 1), *v16, *(v16 + 1)))
    {
      v28 = *v25;
      v29 = *(v25 + 1);
      v30 = v26;
      while (1)
      {
        v31 = a1 + v30;
        *(a1 + v30 + 48) = *(a1 + v30 + 32);
        if (v30 == -32)
        {
          break;
        }

        v30 -= 16;
        if (((*a3)(v28, v29, *(v31 + 2), *(v31 + 3)) & 1) == 0)
        {
          v32 = (a1 + v30 + 48);
          goto LABEL_37;
        }
      }

      v32 = a1;
LABEL_37:
      *v32 = v28;
      v32[1] = v29;
      if (++v27 == 8)
      {
        return v25 + 16 == a2;
      }
    }

    v16 = v25;
    v26 += 16;
    v25 += 16;
    if (v25 == a2)
    {
      return 1;
    }
  }
}

char *sub_100097120(char *a1, char *a2, char *a3, uint64_t (**a4)(void, void, uint64_t, uint64_t))
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[16 * v9];
      do
      {
        sub_100097280(a1, a4, v8, v11);
        v11 -= 16;
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        if ((*a4)(*v12, *(v12 + 1), *a1, *(a1 + 1)))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          sub_100097280(a1, a4, v8, a1);
        }

        v12 += 16;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v14 = a2 - 16;
      do
      {
        v18 = *a1;
        v15 = sub_1000973C4(a1, a4, v8);
        if (v14 == v15)
        {
          *v15 = v18;
        }

        else
        {
          *v15 = *v14;
          *v14 = v18;
          sub_100097474(a1, (v15 + 16), a4, (v15 + 16 - a1) >> 4);
        }

        v14 -= 16;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_100097280(uint64_t result, unsigned int (**a2)(void, void, void, void), uint64_t a3, void *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v17 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 4)
    {
      v9 = (a4 - result) >> 3;
      v10 = v9 + 1;
      v11 = (result + 16 * (v9 + 1));
      v12 = v9 + 2;
      if (v9 + 2 < a3 && (*a2)(*v11, v11[1], v11[2], v11[3]))
      {
        v11 += 2;
        v10 = v12;
      }

      result = (*a2)(*v11, v11[1], *v5, v5[1]);
      if ((result & 1) == 0)
      {
        v13 = *v5;
        v14 = v5[1];
        do
        {
          v15 = v11;
          *v5 = *v11;
          if (v17 < v10)
          {
            break;
          }

          v16 = (2 * v10) | 1;
          v11 = (v6 + 16 * v16);
          if (2 * v10 + 2 < a3)
          {
            if ((*a2)(*v11, v11[1], v11[2], v11[3]))
            {
              v11 += 2;
              v16 = 2 * v10 + 2;
            }
          }

          result = (*a2)(*v11, v11[1], v13, v14);
          v5 = v15;
          v10 = v16;
        }

        while (!result);
        *v15 = v13;
        v15[1] = v14;
      }
    }
  }

  return result;
}

_OWORD *sub_1000973C4(_OWORD *a1, unsigned int (**a2)(void, void, uint64_t, void), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[v6];
    v9 = v8 + 1;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 >= a3)
    {
      v6 = (2 * v6) | 1;
    }

    else
    {
      v13 = *(v8 + 4);
      v12 = v8 + 2;
      if ((*a2)(*(v12 - 2), *(v12 - 1), v13, *(v12 + 1)))
      {
        v9 = v12;
        v6 = v11;
      }

      else
      {
        v6 = v10;
      }
    }

    *a1 = *v9;
    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

uint64_t sub_100097474(uint64_t result, uint64_t a2, uint64_t (**a3)(void, void, uint64_t, uint64_t), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v7 = result;
    v8 = v4 >> 1;
    v9 = (result + 16 * (v4 >> 1));
    v10 = (a2 - 16);
    result = (*a3)(*v9, v9[1], *(a2 - 16), *(a2 - 8));
    if (result)
    {
      v11 = *(a2 - 16);
      v12 = *(a2 - 8);
      do
      {
        v13 = v9;
        *v10 = *v9;
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = (v7 + 16 * v8);
        result = (*a3)(*v9, v9[1], v11, v12);
        v10 = v13;
      }

      while ((result & 1) != 0);
      *v13 = v11;
      v13[1] = v12;
    }
  }

  return result;
}

FILE *SFUFileOpen(void *a1, const char *a2)
{
  v3 = fopen([a1 fileSystemRepresentation], a2);
  if (!v3)
  {
    [NSException sfu_errnoRaise:@"SFUFileOpenError" format:@"Could not open %@", a1];
  }

  return v3;
}

uint64_t SFUOpen(void *a1, int a2, uint64_t a3)
{
  v4 = open([a1 fileSystemRepresentation], a2, a3);
  if (v4 == -1)
  {
    [NSException sfu_errnoRaise:@"SFUOpenError" format:@"Could not open %@", a1];
  }

  return v4;
}

uint64_t SFUDup(uint64_t a1)
{
  v2 = dup(a1);
  if (v2 == -1)
  {
    [NSException sfu_errnoRaise:@"SFUDupError" format:@"Could not dup %d", a1];
  }

  return v2;
}

void sub_100097884(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  v3 = *(v1 + v2);
  JUMPOUT(0x100097810);
}

void sub_10009855C(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000994E0(id a1)
{
  v1 = objc_alloc_init(TSULogHelper);
  v2 = qword_1001EB028;
  qword_1001EB028 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000996C8(id a1)
{
  v1 = TSULogCreateCategory("TSUPerformanceCat");
  v2 = TSUPerformanceCat_log_t;
  TSUPerformanceCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_100099708(id a1)
{
  v1 = TSULogCreateCategory("TSUPerformanceCat");
  v2 = TSUPerformanceCat_log_t;
  TSUPerformanceCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_100099BA0(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_10009A6F4(id a1)
{
  v1 = TSULogCreateCategory("TSUDefaultCat");
  v2 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_10009A8DC(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_10009AA70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 128), 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_10009AAB4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v11 = a3;
  v7 = a4;
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 24);
  if (v7 && *(v8 + 24))
  {
    *(v8 + 24) = 0;
    [*(a1 + 32) handleFailureWithHandler:*(a1 + 40) error:v7];
    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (!*(v8 + 24))
  {
    goto LABEL_10;
  }

  v10 = *(*(a1 + 56) + 8);
  if (!*(v10 + 24))
  {
    if (*(*(*(a1 + 64) + 8) + 24) == 1)
    {
      [*(a1 + 32) prepareBuffer];
      *(*(*(a1 + 64) + 8) + 24) = 0;
      v10 = *(*(a1 + 56) + 8);
    }

    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) processData:v11 inflateResult:v10 + 24 CRC:*(*(a1 + 72) + 8) + 24 isDone:a2 handler:*(a1 + 40)];
  }

LABEL_10:
}

void sub_10009ADE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10009ADFC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v8 = a2;
  if (HIDWORD(a5))
  {
    if (TSUDefaultCat_init_token != -1)
    {
      sub_10015E370();
    }

    if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015E384();
    }

    goto LABEL_41;
  }

  v9 = *(a1 + 32);
  if (*(v9 + 64))
  {
    *(v9 + 40) = a5;
    *(*(a1 + 32) + 32) = a4;
    v10 = *(a1 + 32);
    v11 = 1;
    if (*(v10 + 40))
    {
      while (1)
      {
        if (**(a1 + 56))
        {
LABEL_43:
          v11 = 1;
          goto LABEL_42;
        }

        v12 = inflate((v10 + 32), 0);
        **(a1 + 56) = v12;
        if ((v12 + 5) > 6 || ((1 << (v12 + 5)) & 0x61) == 0)
        {
          if (TSUDefaultCat_init_token != -1)
          {
            sub_10015E21C();
          }

          if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
          {
            sub_10015E244((a1 + 56));
          }

          goto LABEL_41;
        }

        v14 = v12;
        v10 = *(a1 + 32);
        v15 = *(v10 + 64);
        if (v12 == 1)
        {
          goto LABEL_16;
        }

        if (!v15)
        {
          break;
        }

LABEL_29:
        if (!*(v10 + 40))
        {
          goto LABEL_43;
        }
      }

      v15 = 0;
LABEL_16:
      v16 = *(v10 + 144);
      v17 = v16 - v15;
      if (*(v10 + 28) == 1)
      {
        v18 = *(a1 + 64);
        if (v18)
        {
          v19 = *v18;
          v20 = *(v10 + 152);
          if (HIDWORD(v17))
          {
            v34 = +[TSUAssertionHandler _atomicIncrementAssertCount];
            if (TSUAssertCat_init_token != -1)
            {
              sub_10015E1F4();
            }

            log = TSUAssertCat_log_t;
            if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109890;
              v38 = v34;
              v39 = 2082;
              v40 = "[TSUZipInflateReadChannel processData:inflateResult:CRC:isDone:handler:]_block_invoke_2";
              v41 = 2082;
              v42 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUZipInflateReadChannel.m";
              v43 = 1024;
              v44 = 156;
              _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Out-of-bounds type assignment was clamped to max", buf, 0x22u);
            }

            loga = [NSString stringWithUTF8String:"[TSUZipInflateReadChannel processData:inflateResult:CRC:isDone:handler:]_block_invoke"];
            v33 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUZipInflateReadChannel.m"];
            [TSUAssertionHandler handleFailureInFunction:loga file:v33 lineNumber:156 isFatal:0 description:"Out-of-bounds type assignment was clamped to max"];

            +[TSUAssertionHandler logBacktraceThrottled];
            v21 = -1;
          }

          else
          {
            v21 = v17;
          }

          **(a1 + 64) = crc32(v19, v20, v21);
          v10 = *(a1 + 32);
          v16 = *(v10 + 144);
        }
      }

      v22 = dispatch_data_create(*(v10 + 152), v16, 0, _dispatch_data_destructor_free);
      v23 = v22;
      if (*(*(a1 + 32) + 144) == v17)
      {
        subrange = v22;
      }

      else
      {
        subrange = dispatch_data_create_subrange(v22, 0, v17);
      }

      v25 = subrange;
      (*(*(a1 + 40) + 16))();
      *(*(a1 + 32) + 144) = 0;
      *(*(a1 + 32) + 152) = 0;
      v26 = *(a1 + 32);
      v27 = *(v26 + 16);
      v28 = v27 >= v17;
      v29 = v27 - v17;
      if (!v28)
      {
        v29 = 0;
      }

      *(v26 + 16) = v29;
      if (v14 != 1)
      {
        [*(a1 + 32) prepareBuffer];
      }

      v10 = *(a1 + 32);
      goto LABEL_29;
    }
  }

  else
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015E2C0();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015E2D4();
    }

    v30 = [NSString stringWithUTF8String:"[TSUZipInflateReadChannel processData:inflateResult:CRC:isDone:handler:]_block_invoke"];
    v31 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUZipInflateReadChannel.m"];
    [TSUAssertionHandler handleFailureInFunction:v30 file:v31 lineNumber:132 isFatal:0 description:"Buffer should have been initialized."];

    +[TSUAssertionHandler logBacktraceThrottled];
LABEL_41:
    v11 = 0;
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

LABEL_42:

  return v11;
}

void sub_10009B2C4(id a1)
{
  v1 = TSULogCreateCategory("TSUDefaultCat");
  v2 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_10009B308(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_10009B34C(id a1)
{
  v1 = TSULogCreateCategory("TSUDefaultCat");
  v2 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_10009B390(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_10009B3D4(id a1)
{
  v1 = TSULogCreateCategory("TSUDefaultCat");
  v2 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_10009B418(id a1)
{
  v1 = TSULogCreateCategory("TSUDefaultCat");
  v2 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

uint64_t SFUHashWithSeed(char *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    do
    {
      v4 = *a1++;
      a3 = (16777619 * a3) ^ v4;
      --a2;
    }

    while (a2);
  }

  else
  {
    v5 = +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015E3F8();
    }

    v6 = TSUAssertCat_log_t;
    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015E40C(v5, v6);
    }

    [TSUAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"unsigned int SFUHashWithSeed(const char * file:size_t lineNumber:unsigned int)"] isFatal:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/sf/SFUHash.m"] description:25, 0, "SFUHash must have at least one byte of input."];
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  return a3;
}

void sub_10009C120(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_10009C164(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_10009C428(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_10009C46C(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_10009C68C(id a1)
{
  v1 = TSULogCreateCategory("TSUDefaultCat");
  v2 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_10009CD4C(id a1)
{
  v1 = TSULogCreateCategory("TSUDefaultCat");
  v2 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_10009CD90(uint64_t a1)
{
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v35 objects:v55 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v36;
    *&v4 = 138545154;
    v28 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v36 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v35 + 1) + 8 * v7);
        v9 = *(a1 + 40);
        v34 = 0;
        v10 = [v9 removeItemAtURL:v8 error:{&v34, v28}];
        v11 = v34;
        v12 = v11;
        if (v10)
        {
          if (TSUDefaultCat_init_token != -1)
          {
            sub_10015E900();
          }

          v13 = TSUDefaultCat_log_t;
          if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
          {
            v14 = *(a1 + 48);
            log = v13;
            v15 = [v14 publicString];
            v16 = [*(a1 + 48) privateString];
            v17 = *(a1 + 56);
            v18 = [v8 path];
            *buf = 138544130;
            v40 = v15;
            v41 = 2112;
            v42 = v16;
            v43 = 2114;
            v44 = v17;
            v45 = 2112;
            v46 = v18;
            v19 = log;
            _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%{public}@ %@ Removed item due to '%{public}@' at url '%@'", buf, 0x2Au);

LABEL_18:
          }
        }

        else if (([v11 tsu_isNoSuchFileError] & 1) == 0)
        {
          if (TSUDefaultCat_init_token != -1)
          {
            sub_10015E8D8();
          }

          v20 = TSUDefaultCat_log_t;
          if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
          {
            v21 = *(a1 + 48);
            loga = v20;
            v31 = [v21 publicString];
            v22 = [*(a1 + 48) privateString];
            v30 = *(a1 + 56);
            v29 = [v8 path];
            v23 = objc_opt_class();
            v24 = NSStringFromClass(v23);
            v25 = [v12 domain];
            v26 = [v12 code];
            *buf = v28;
            v40 = v31;
            v41 = 2112;
            v42 = v22;
            v43 = 2114;
            v44 = v30;
            v45 = 2112;
            v46 = v29;
            v47 = 2114;
            v48 = v24;
            v49 = 2114;
            v50 = v25;
            v51 = 2048;
            v52 = v26;
            v53 = 2112;
            v54 = v12;
            v19 = loga;
            _os_log_error_impl(&_mh_execute_header, loga, OS_LOG_TYPE_ERROR, "%{public}@ %@ Failed to remove item due to '%{public}@' at url '%@' after error: errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", buf, 0x52u);

            goto LABEL_18;
          }
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v27 = [v2 countByEnumeratingWithState:&v35 objects:v55 count:16];
      v5 = v27;
    }

    while (v27);
  }
}

void sub_10009D118(id a1)
{
  v1 = TSULogCreateCategory("TSUDefaultCat");
  v2 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_10009D15C(id a1)
{
  v1 = TSULogCreateCategory("TSUDefaultCat");
  v2 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

BOOL SFUEqualCryptoKeys(unint64_t a1, unint64_t a2)
{
  if (!(a1 | a2))
  {
    return 1;
  }

  result = 0;
  v5 = a1 != 0;
  if (a2)
  {
    v6 = a1 != 0;
  }

  else
  {
    v6 = 1;
  }

  if (a2)
  {
    v5 = 0;
  }

  if (!v5 && v6)
  {
    v7 = [a1 keyLength];
    return v7 == [a2 keyLength] && memcmp(objc_msgSend(a1, "keyData"), objc_msgSend(a2, "keyData"), v7) == 0;
  }

  return result;
}

void sub_10009F740(_Unwind_Exception *exc_buf, int a2, ...)
{
  va_start(va, a2);
  if (!a2)
  {
    _Unwind_Resume(exc_buf);
  }

  if (a2 == 2)
  {
    v2 = objc_begin_catch(exc_buf);
    if (TSUErrorCat_init_token != -1)
    {
      sub_10015F3BC();
    }

    v3 = TSUErrorCat_log_t;
    if (os_log_type_enabled(TSUErrorCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015F3E4([v2 reason], va, v3);
    }

    objc_end_catch();
  }

  else
  {
    objc_begin_catch(exc_buf);
  }

  JUMPOUT(0x10009F6F4);
}

void sub_10009FE80(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x10009FE10);
  }

  _Unwind_Resume(a1);
}

void sub_1000A02C0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

void sub_1000A1264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A128C(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    v2 = result;
    result = *(result + 32);
    if (result)
    {
      result = (*(result + 16))();
      v1 = *(*(v2 + 40) + 8);
    }

    *(v1 + 24) = 1;
  }

  return result;
}

uint64_t sub_1000A12E4(uint64_t a1, uint64_t a2)
{
  close(*(a1 + 40));
  if (a2)
  {
    if (TSUDefaultCat_init_token != -1)
    {
      sub_10015F700();
    }

    v4 = TSUDefaultCat_log_t;
    if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015F714(v4, a2);
    }
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

void sub_1000A137C(id a1)
{
  v1 = TSULogCreateCategory("TSUDefaultCat");
  v2 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000A13C0(id a1)
{
  v1 = TSULogCreateCategory("TSUDefaultCat");
  v2 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_1000A1600(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (TSUDefaultCat_init_token != -1)
    {
      sub_10015F7A0();
    }

    v4 = TSUDefaultCat_log_t;
    if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015F714(v4, a2);
    }
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

void sub_1000A1690(id a1)
{
  v1 = TSULogCreateCategory("TSUDefaultCat");
  v2 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000A18EC(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000A1930(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  if (a4)
  {
    v6 = [NSError tsu_fileReadPOSIXErrorWithNumber:a4 userInfo:0];
  }

  else
  {
    v6 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000A1BE4(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000A1C28(void *a1, uint64_t a2, void *a3, int a4)
{
  size = a3;
  v10 = size;
  if (a4)
  {
    v8 = a1[4];
    v9 = [NSError errorWithDomain:NSPOSIXErrorDomain code:a4 userInfo:0];
    (*(v8 + 16))(v8, a2, 0, v9);
  }

  else
  {
    if (size)
    {
      size = dispatch_data_get_size(size);
    }

    atomic_exchange((*(a1[5] + 8) + 24), a1[6] - size);
    (*(a1[4] + 16))();
  }
}

void sub_1000A1EDC(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

intptr_t sub_1000A1F20(uint64_t a1)
{
  descriptor = dispatch_io_get_descriptor(*(*(a1 + 32) + 16));
  if (descriptor == -1)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015FAB8();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015FACC();
    }

    v5 = [NSString stringWithUTF8String:"[TSUFileIOChannel close]_block_invoke"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUFileIOChannel.m"];
    [TSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:278 isFatal:0 description:"Channel file descriptor is closed"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  else if (fcntl(descriptor, 51, 0) == -1)
  {
    v3 = [NSError tsu_fileReadPOSIXErrorWithNumber:*__error() userInfo:0];
    if (TSUDefaultCat_init_token != -1)
    {
      sub_10015F9B0();
    }

    v4 = TSUDefaultCat_log_t;
    if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015F9C4(v4, v3);
    }
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

void sub_1000A20BC(id a1)
{
  v1 = TSULogCreateCategory("TSUDefaultCat");
  v2 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000A2100(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000A2264(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000A23BC(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000A2578(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000A25BC(uint64_t a1)
{
  descriptor = dispatch_io_get_descriptor(*(*(a1 + 32) + 16));
  if (descriptor == -1)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015FD28();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015FD3C();
    }

    v4 = [NSString stringWithUTF8String:"[TSUFileIOChannel flushWithCompletion:]_block_invoke"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUFileIOChannel.m"];
    [TSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:317 isFatal:0 description:"Channel file descriptor is closed"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  else if (fsync(descriptor) == -1)
  {
    v3 = [NSError tsu_fileReadPOSIXErrorWithNumber:*__error() userInfo:0];
    goto LABEL_10;
  }

  v3 = 0;
LABEL_10:
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

void sub_1000A2714(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000A28E0(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000A2924(void *a1)
{
  descriptor = dispatch_io_get_descriptor(*(a1[4] + 16));
  if (descriptor == -1)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015FE60();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015FE74();
    }

    v4 = [NSString stringWithUTF8String:"[TSUFileIOChannel truncateToLength:completion:]_block_invoke"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUFileIOChannel.m"];
    [TSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:335 isFatal:0 description:"Channel is closed"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  else if (ftruncate(descriptor, a1[6]) == -1)
  {
    v3 = [NSError tsu_fileReadPOSIXErrorWithNumber:*__error() userInfo:0];
    goto LABEL_10;
  }

  v3 = 0;
LABEL_10:
  v6 = a1[5];
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

void sub_1000A2A80(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000A2D88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A2DB0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000A2DC8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000A323C(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000A3564(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

BOOL TSUEncodedBlockInfoAreEqual(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 encodedLength];
  if (v5 == [v4 encodedLength])
  {
    v6 = [v3 decodedLength];
    v7 = v6 == [v4 decodedLength];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

TSUEncodedBlockInfoWithDecodedLengthInternal *TSUEncodedBlockInfoCreate(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    v2 = [[TSUEncodedBlockInfoInternal alloc] initWithEncodedLength:a1];
  }

  else
  {
    v2 = [[TSUEncodedBlockInfoWithDecodedLengthInternal alloc] initWithEncodedLength:a1 decodedLength:a2];
  }

  return v2;
}

void sub_1000A3BB0(id a1)
{
  v1 = [NSBundle bundleWithIdentifier:@"com.apple.iwork.iWorkQuickLookGenerator"];
  v2 = qword_1001EB040;
  qword_1001EB040 = v1;

  if (!qword_1001EB040)
  {
    v3 = [NSBundle bundleForClass:NSClassFromString(@"iWorkQuickLookBundleClass")];
    v4 = qword_1001EB040;
    qword_1001EB040 = v3;

    _objc_release_x1(v3, v4);
  }
}

BOOL sub_1000A3FA8(id a1, NSString *a2, int64_t a3, NSDictionary *a4)
{
  v6 = a2;
  v7 = a4;
  if (a3 == 256 && [(NSString *)v6 isEqualToString:NSCocoaErrorDomain])
  {
    v8 = 1;
  }

  else
  {
    v9 = [(NSDictionary *)v7 objectForKeyedSubscript:@"TSUIOErrorType"];
    v8 = [v9 isEqual:&off_1001D7208];
  }

  return v8;
}

BOOL sub_1000A4050(id a1, NSString *a2, int64_t a3, NSDictionary *a4)
{
  if (a3 == 259)
  {
    return [(NSString *)a2 isEqualToString:NSCocoaErrorDomain, a4];
  }

  else
  {
    return 0;
  }
}

BOOL sub_1000A4080(id a1, NSString *a2, int64_t a3, NSDictionary *a4)
{
  v6 = a2;
  v7 = a4;
  if (a3 == 512 && [(NSString *)v6 isEqualToString:NSCocoaErrorDomain])
  {
    v8 = 1;
  }

  else
  {
    v9 = [(NSDictionary *)v7 objectForKeyedSubscript:@"TSUIOErrorType"];
    v8 = [v9 isEqual:&off_1001D7220];
  }

  return v8;
}

id sub_1000A42D8(uint64_t a1)
{
  result = [*(a1 + 32) entriesCountImpl];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1000A44E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000A44FC(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000A4540(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    dispatch_semaphore_signal(WeakRetained[4]);
    WeakRetained = v2;
  }
}

void sub_1000A4A34(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000A4A78(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000A4F40(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_1000A4FAC(uint64_t a1, uint64_t a2, uint64_t a3, const Bytef *a4, unint64_t a5)
{
  v8 = [*(*(a1 + 32) + 64) CRC];
  if (HIDWORD(a5))
  {
    sub_1001602D4();
    LODWORD(a5) = -1;
  }

  [*(*(a1 + 32) + 64) setCRC:{crc32(v8, a4, a5)}];
  return 1;
}

void sub_1000A5024(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000A5230(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 72) == 1)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100160458();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10016046C();
    }

    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Trying to flush while closed.", v10, v11, v12, v13, v14, v15, v16, "[TSUZipWriter flushCurrentEntryWithQueue:completion:]_block_invoke");
    v17 = [NSString stringWithUTF8String:"[TSUZipWriter flushCurrentEntryWithQueue:completion:]_block_invoke"];
    v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUZipWriter.m"];
    [TSUAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:292 isFatal:1 description:"Trying to flush while closed."];

    TSUCrashBreakpoint(v19);
    abort();
  }

  v3 = *(v2 + 160);
  if (v3)
  {
    v4 = v3;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A54A4;
    block[3] = &unk_1001CC3D8;
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v24 = v4;
    v25 = v6;
    v7 = v4;
    dispatch_async(v5, block);
  }

  else
  {
    [v2 finishEntry];
    v8 = *(a1 + 32);
    v9 = *(v8 + 16);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000A54B8;
    v20[3] = &unk_1001CE528;
    v20[4] = v8;
    v22 = *(a1 + 48);
    v21 = *(a1 + 40);
    dispatch_async(v9, v20);
  }
}

void sub_1000A5460(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000A54B8(uint64_t a1)
{
  dispatch_suspend(*(*(a1 + 32) + 16));
  v2 = [*(a1 + 32) p_writeChannel];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000A557C;
  v6[3] = &unk_1001CE500;
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v6[4] = v4;
  v7 = v5;
  [v2 flushWithCompletion:v6];
}

void sub_1000A557C(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1[6])
  {
    v5 = v3;
    if (!v3)
    {
      v5 = *(a1[4] + 160);
    }

    v6 = v5;
    v7 = a1[6];
    if (v7)
    {
      v8 = a1[5];
      if (v8)
      {
        v9[0] = _NSConcreteStackBlock;
        v9[1] = 3221225472;
        v9[2] = sub_1000A567C;
        v9[3] = &unk_1001CC3D8;
        v11 = v7;
        v10 = v6;
        dispatch_async(v8, v9);
      }

      else
      {
        (v7)[2](v7, v6);
      }
    }
  }

  dispatch_resume(*(a1[4] + 16));
}

void sub_1000A586C(id a1)
{
  v1 = TSULogCreateCategory("TSUDefaultCat");
  v2 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000A5998(uint64_t a1, int a2, void *a3, void *a4)
{
  v9 = a3;
  v7 = a4;
  if (a2)
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      (*(v8 + 16))(v8, v7 == 0, v7);
    }
  }
}

void sub_1000A5C30(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000A5C74(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 72) == 1)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100160610();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100160624();
    }

    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Already closed.", v4, v5, v6, v7, v8, v9, v10, "[TSUZipWriter writeEntryWithName:force32BitSize:lastModificationDate:size:CRC:fromReadChannel:writeHandler:]_block_invoke");
    v11 = [NSString stringWithUTF8String:"[TSUZipWriter writeEntryWithName:force32BitSize:lastModificationDate:size:CRC:fromReadChannel:writeHandler:]_block_invoke"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUZipWriter.m"];
    [TSUAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:368 isFatal:1 description:"Already closed."];

    TSUCrashBreakpoint(v13);
    abort();
  }

  dispatch_suspend(*(v1 + 144));
  [*(a1 + 32) beginEntryWithNameImpl:*(a1 + 40) force32BitSize:*(a1 + 84) lastModificationDate:*(a1 + 48) size:*(a1 + 72) CRC:*(a1 + 80) forceCalculatingSizeAndCRCForPreservingLastModificationDate:0];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000A5E64;
  v14[3] = &unk_1001CE600;
  v14[4] = *(a1 + 32);
  v3 = *(a1 + 56);
  v15 = *(a1 + 64);
  [v3 readWithHandler:v14];
}

void sub_1000A5E20(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000A5E64(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  [*(a1 + 32) handleWriteError:a4];
  if (v7)
  {
    v8 = *(a1 + 32);
    if (!v8[20])
    {
      [v8 addDataImpl:v7 queue:0 completion:0];
    }
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    v12 = 0;
    (*(v9 + 16))(v9, a2, v7, *(*(a1 + 32) + 160), &v12);
    if (v12 == 1)
    {
      v10 = *(a1 + 32);
      v11 = [NSError errorWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
      [v10 handleWriteError:v11];
    }
  }

  if (a2)
  {
    dispatch_resume(*(*(a1 + 32) + 144));
  }
}

void sub_1000A62A0(uint64_t a1)
{
  dispatch_suspend(*(*(a1 + 32) + 144));
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000A6340;
  v5[3] = &unk_1001C5A18;
  v5[4] = v3;
  v6 = v2;
  dispatch_async(v4, v5);
}

void sub_1000A6340(uint64_t a1)
{
  dispatch_suspend(*(*(a1 + 32) + 16));
  v2 = [*(a1 + 32) p_writeChannel];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000A63F0;
  v4[3] = &unk_1001CC3D8;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 addBarrier:v4];
}

void sub_1000A63F0(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  dispatch_resume(*(*(a1 + 32) + 16));
  v2 = *(*(a1 + 32) + 144);

  dispatch_resume(v2);
}

void sub_1000A6508(id *a1)
{
  v2 = a1[4];
  if (v2[72] == 1)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_1001606B4();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_1001606C8();
    }

    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Shouldn't have closed twice.", v9, v10, v11, v12, v13, v14, v15, "[TSUZipWriter closeWithQueue:completion:]_block_invoke");
    v16 = [NSString stringWithUTF8String:"[TSUZipWriter closeWithQueue:completion:]_block_invoke"];
    v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUZipWriter.m"];
    [TSUAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:461 isFatal:1 description:"Shouldn't have closed twice."];

    TSUCrashBreakpoint(v18);
    abort();
  }

  if (*(v2 + 20))
  {
    v2[72] = 1;
    v3 = *(a1[4] + 20);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A67A0;
    block[3] = &unk_1001CC3D8;
    v4 = a1[5];
    v5 = a1[6];
    v23 = v3;
    v24 = v5;
    v6 = v3;
    dispatch_async(v4, block);
  }

  else
  {
    [v2 finishEntry];
    [a1[4] writeCentralDirectory];
    *(a1[4] + 72) = 1;
    v7 = a1[4];
    v8 = *(v7 + 2);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000A67B4;
    v19[3] = &unk_1001CE528;
    v19[4] = v7;
    v21 = a1[6];
    v20 = a1[5];
    dispatch_async(v8, v19);
  }
}

void sub_1000A675C(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000A67B4(id *a1)
{
  dispatch_suspend(*(a1[4] + 2));
  v2 = [a1[4] p_writeChannel];
  objc_initWeak(&location, v2);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000A68C8;
  v3[3] = &unk_1001CE6B8;
  objc_copyWeak(&v6, &location);
  v3[4] = a1[4];
  v5 = a1[6];
  v4 = a1[5];
  [v2 addBarrier:v3];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void sub_1000A68AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000A68C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!WeakRetained)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100160758();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10016076C();
    }

    v3 = [NSString stringWithUTF8String:"[TSUZipWriter closeWithQueue:completion:]_block_invoke"];
    v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUZipWriter.m"];
    [TSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:492 isFatal:0 description:"invalid nil value for '%{public}s'", "strongWriteChannel"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 144);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A6AB8;
  block[3] = &unk_1001CE690;
  v9 = WeakRetained;
  v10 = v5;
  v12 = *(a1 + 48);
  v11 = *(a1 + 40);
  v7 = WeakRetained;
  dispatch_async(v6, block);
}

void sub_1000A6A74(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000A6AB8(uint64_t a1)
{
  [*(a1 + 32) close];
  dispatch_semaphore_wait(*(*(a1 + 40) + 32), 0xFFFFFFFFFFFFFFFFLL);
  if (*(a1 + 56))
  {
    v2 = *(*(a1 + 40) + 160);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000A6B9C;
    v6[3] = &unk_1001CC3D8;
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v7 = v2;
    v8 = v4;
    v5 = v2;
    dispatch_async(v3, v6);
  }

  dispatch_resume(*(*(a1 + 40) + 16));
}

void sub_1000A6F24(id a1)
{
  v1 = TSULogCreateCategory("TSUDefaultCat");
  v2 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000A7228(id a1)
{
  v1 = TSULogCreateCategory("TSUDefaultCat");
  v2 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000A7600(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_1000A76C8;
      v6[3] = &unk_1001CC3D8;
      v8 = v4;
      v7 = v3;
      dispatch_async(v5, v6);
    }

    else
    {
      (v4)[2](v4, v3);
    }
  }
}

void sub_1000A77AC(uint64_t a1)
{
  dispatch_suspend(*(*(a1 + 32) + 16));
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = sub_1000A78E4;
  v9[4] = sub_1000A78F4;
  v10 = 0;
  v2 = [*(a1 + 32) p_writeChannel];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000A78FC;
  v6[3] = &unk_1001CE748;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8 = v9;
  v6[4] = v3;
  v5 = *(a1 + 56);
  v7 = *(a1 + 48);
  [v2 writeData:v4 offset:v5 handler:v6];

  _Block_object_dispose(v9, 8);
}

void sub_1000A78CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A78E4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000A78FC(void *a1, int a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if (v7 && (v8 = *(a1[6] + 8), v10 = *(v8 + 40), v9 = (v8 + 40), !v10))
  {
    objc_storeStrong(v9, a4);
    if (!a2)
    {
      goto LABEL_9;
    }
  }

  else if (!a2)
  {
    goto LABEL_9;
  }

  v11 = a1[6];
  if (*(*(v11 + 8) + 40))
  {
    v12 = a1[4];
    v13 = *(v12 + 144);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000A79FC;
    v15[3] = &unk_1001CC670;
    v15[4] = v12;
    v15[5] = v11;
    dispatch_async(v13, v15);
  }

  v14 = a1[5];
  if (v14)
  {
    (*(v14 + 16))(v14, *(*(a1[6] + 8) + 40));
  }

  dispatch_resume(*(a1[4] + 16));
LABEL_9:
}

void sub_1000A7C30(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000A7E6C(id a1)
{
  v1 = TSULogCreateCategory("TSUDefaultCat");
  v2 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000A7EB0(uint64_t a1)
{
  v1 = [*(a1 + 32) p_writeChannel];
  [v1 close];
}

void sub_1000A7F8C(uint64_t a1)
{
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(*(a1 + 32) + 40);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v13 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v12 + 1) + 8 * v6);
      v8 = objc_alloc_init(TSUZipEntry);
      v9 = [v7 name];
      [(TSUZipEntry *)v8 setName:v9];

      v10 = [(TSUZipEntry *)v8 name];
      -[TSUZipEntry setNameLength:](v8, "setNameLength:", strlen([v10 UTF8String]));

      v11 = [v7 lastModificationDate];
      [(TSUZipEntry *)v8 setLastModificationDate:v11];

      -[TSUZipEntry setSize:](v8, "setSize:", [v7 size]);
      -[TSUZipEntry setCompressedSize:](v8, "setCompressedSize:", [v7 size]);
      -[TSUZipEntry setOffset:](v8, "setOffset:", [v7 offset]);
      -[TSUZipEntry setCRC:](v8, "setCRC:", [v7 CRC]);
      (*(*(a1 + 40) + 16))();
      LOBYTE(v7) = v16;

      if (v7)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v12 objects:v17 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

int64_t sub_1000A81DC(id a1, TSUZipWriterEntry *a2, TSUZipWriterEntry *a3)
{
  v4 = a3;
  v5 = [(TSUZipWriterEntry *)a2 offset];
  v6 = [(TSUZipWriterEntry *)v4 offset];

  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return v5 > v6;
  }
}

uint64_t sub_1000A8324(uint64_t a1)
{
  v2 = [*(a1 + 32) sortedEntriesImpl];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

uint64_t sub_1000A8540(void *a1)
{
  v2 = [*(a1[4] + 56) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_1000A8A6C(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000A9908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000A9934(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) intersectsIndexesInRange:{a2, a3}];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void sub_1000A9B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_1000A9BA4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000A9DC8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 80), 8);

  _Unwind_Resume(a1);
}

id sub_1000A9E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000A9E88;
  v5[3] = &unk_1001CE8E0;
  v3 = *(a1 + 32);
  v5[4] = *(a1 + 40);
  return [v3 enumerateRangesInRange:a2 options:a3 usingBlock:{0, v5}];
}

id sub_1000A9EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000A9F20;
  v5[3] = &unk_1001CE8E0;
  v3 = *(a1 + 32);
  v5[4] = *(a1 + 40);
  return [v3 enumerateRangesInRange:a2 options:a3 usingBlock:{0, v5}];
}

void sub_1000AA11C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void *sub_1000AA148(void *result, uint64_t a2, _BYTE *a3)
{
  v3 = *(result[4] + 8);
  v4 = *(v3 + 24);
  *(v3 + 24) = v4 + 1;
  if (v4 == result[6])
  {
    *(*(result[5] + 8) + 24) = a2;
    *a3 = 1;
  }

  return result;
}

void sub_1000AA258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000AA270(uint64_t result, uint64_t a2, _BYTE *a3)
{
  if (*(result + 40) == a2)
  {
    *a3 = 1;
  }

  else
  {
    ++*(*(*(result + 32) + 8) + 24);
  }

  return result;
}

void sub_1000AA358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000AA37C(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 24);
  result = (*(*(a1 + 32) + 16))();
  ++*(*(*(a1 + 40) + 8) + 24);
  return result;
}

void sub_1000AA4C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_1000AA4DC(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_1000AA64C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000AA794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000AA7B8(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000AA868;
  v8[3] = &unk_1001CE980;
  v8[4] = *(a1 + 40);
  result = [v6 enumerateIndexesInRange:a2 options:a3 usingBlock:{0, v8}];
  if (*(*(*(a1 + 40) + 8) + 24) != 0x7FFFFFFFFFFFFFFFLL)
  {
    *a4 = 1;
  }

  return result;
}

uint64_t sub_1000AA868(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 24) = a2;
  *a3 = 1;
  return result;
}

void sub_1000AA95C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < 3)
  {
    v10 = *(a1 + 32);
    v11 = [NSString localizedStringWithFormat:@"%lu", a2 + 1];
    [v10 addObject:v11];
    if (a3 == 2)
    {

      v12 = *(a1 + 32);
      v11 = [NSString localizedStringWithFormat:@"%lu", a2 + 2];
      [v12 addObject:v11];
    }

    v9 = v11;
  }

  else
  {
    v6 = SFUMainBundle();
    v13 = [v6 localizedStringForKey:@"TSU_UNSIGNED_INTEGER_RANGE" value:@"%1$lu to %2$lu" table:@"TSUtility"];

    v7 = *(a1 + 32);
    v8 = [NSString localizedStringWithFormat:v13, a2 + 1, a2 + a3];
    [v7 addObject:v8];

    v9 = v13;
  }
}

void sub_1000AAE28(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000AAE6C(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000AAF6C(id a1)
{
  v1 = +[NSProcessInfo processInfo];
  v2 = 2 * [v1 processorCount];

  v3 = 16;
  if (v2 > 0x10)
  {
    v3 = v2;
  }

  qword_1001EB050 = v3;
}

void sub_1000AB1F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  _Block_object_dispose(va, 8);
  *(v18 - 96) = v15;
  sub_1000ABAA8((v18 - 96));

  _Unwind_Resume(a1);
}

__n128 sub_1000AB264(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_1000AB2B4(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 3;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 8 * a2;
      while (v3 != v6)
      {
        v7 = *(v3 - 8);
        v3 -= 8;
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    sub_1000ABB28(a1, v5);
  }
}

void sub_1000AB33C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 72);
  v5 = *(a1 + 64) + v4 * a2;
  if ([*(a1 + 32) intersectsIndexesInRange:{v5, v4}])
  {
    v6 = (*(*(a1 + 40) + 16))();
    v7 = *(a1 + 32);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000AB474;
    v11[3] = &unk_1001CEA30;
    v13 = *(a1 + 48);
    v8 = v6;
    v12 = v8;
    [v7 enumerateRangesInRange:v5 options:v4 usingBlock:{0, v11}];
  }

  else
  {
    v8 = 0;
  }

  v9 = *(*(*(a1 + 56) + 8) + 48);
  v10 = *(v9 + 8 * a2);
  *(v9 + 8 * a2) = v8;
}

id sub_1000AB544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(a1 + 32) indexGreaterThanIndex:a2 + a3];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = *(*(a1 + 40) + 16);

    return v5();
  }

  return result;
}

id sub_1000AB680(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2 + a3;
  result = [*(a1 + 32) indexGreaterThanIndex:a2 + a3];
  if (result != 0x7FFFFFFFFFFFFFFFLL && v6 < result)
  {
    v9 = result;
    do
    {
      result = (*(*(a1 + 40) + 16))();
      if (a4 && (*a4 & 1) != 0)
      {
        break;
      }

      ++v6;
    }

    while (v6 < v9);
  }

  return result;
}

void sub_1000AB810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

id sub_1000AB830(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 + a3;
  v4 = *(a1 + 40);
  v5 = a2 - v4;
  if (a2 < v4)
  {
    v5 = 0;
  }

  v6 = __CFADD__(v3, v4);
  v7 = v3 + v4;
  if (v6)
  {
    v7 = -1;
  }

  if (v5 <= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  if (v5 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  return [*(*(*(a1 + 32) + 8) + 40) addIndexesInRange:{v9, v8 - v9}];
}

void sub_1000ABAA8(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 8;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1000ABB28(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      sub_100070E64();
    }

    v8 = v6 >> 3;
    v9 = v4 - *a1;
    if (v9 >> 2 > v7)
    {
      v7 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v11[4] = a1;
    if (v10)
    {
      sub_1000ABCD8(a1, v10);
    }

    v11[0] = 0;
    v11[1] = 8 * v8;
    v11[3] = 0;
    bzero((8 * v8), 8 * a2);
    v11[2] = 8 * v8 + 8 * a2;
    sub_1000ABC28(a1, v11);
    sub_1000ABD20(v11);
  }
}

void sub_1000ABC14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000ABD20(va);
  _Unwind_Resume(a1);
}

void sub_1000ABC28(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v4);
    do
    {
      v9 = *v7;
      *v7++ = 0;
      *v8++ = v9;
    }

    while (v7 != v4);
    do
    {
      v10 = *v5++;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v11 = *a1;
  *a1 = v6;
  *(a1 + 8) = v11;
  a2[1] = v11;
  v12 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v12;
  v13 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

void sub_1000ABCD8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_100070F54();
}

uint64_t sub_1000ABD20(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t TSUDynamicCast(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (objc_opt_isKindOfClass())
  {
    return a2;
  }

  return 0;
}

void *TSUProtocolCast(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a1;
  v13 = &a9;
  v14 = &a9;
  if (a1)
  {
    v10 = a2;
    if (a2)
    {
      while (1)
      {
        v11 = v14++;
        if (([v9 conformsToProtocol:{*v11, v13}] & 1) == 0)
        {
          break;
        }

        if (!--v10)
        {
          return v9;
        }
      }

      return 0;
    }
  }

  return v9;
}

uint64_t TSUCheckedDynamicCast(objc_class *a1, uint64_t a2)
{
  v2 = a2;
  if (a2 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100160EB0();
    }

    v5 = TSUAssertCat_log_t;
    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      *buf = 67110402;
      v13 = v4;
      v14 = 2082;
      v15 = "id TSUCheckedDynamicCast(Class, id<NSObject>)";
      v16 = 2082;
      v17 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUCast.m";
      v18 = 1024;
      v19 = 160;
      v20 = 2114;
      v21 = NSStringFromClass(v11);
      v22 = 2114;
      v23 = NSStringFromClass(a1);
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unexpected object type %{public}@ in checked dynamic cast to %{public}@", buf, 0x36u);
    }

    v6 = [NSString stringWithUTF8String:"id TSUCheckedDynamicCast(Class, id<NSObject>)"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUCast.m"];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [TSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:160 isFatal:0 description:"Unexpected object type %{public}@ in checked dynamic cast to %{public}@", v9, NSStringFromClass(a1)];
    +[TSUAssertionHandler logFullBacktrace];
    return 0;
  }

  return v2;
}

void sub_1000AC638(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000AC980(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000ACBDC(id a1)
{
  v1 = TSULogCreateCategory("TSUDefaultCat");
  v2 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000ACC20(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000ACE60(id a1)
{
  v1 = SFUMainBundle();
  v2 = [v1 bundleIdentifier];

  v3 = [NSString alloc];
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"com.apple.Unknown";
  }

  v5 = [v3 initWithFormat:@"%@_%d", v4, getpid()];
  v6 = qword_1001EB060;
  qword_1001EB060 = v5;

  if (!qword_1001EB060)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_1001610DC();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_1001610F0();
    }

    v7 = [NSString stringWithUTF8String:"[TSUTemporaryDirectory _createDirectoryWithSignature:subdirectory:error:]_block_invoke"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUTemporaryDirectory.m"];
    [TSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:119 isFatal:0 description:"invalid nil value for '%{public}s'", "secretSubdirectoryNameBase"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }
}

void sub_1000ACFDC(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000AD910(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  if (([v8 conformsToProtocol:&OBJC_PROTOCOL___NSCopying] & 1) == 0)
  {
    v9 = +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10016131C();
    }

    v10 = TSUAssertCat_log_t;
    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100161330(v8, v9, v10);
    }

    v11 = [NSString stringWithUTF8String:"[NSDictionary(TSUAdditions) tsu_invertedCopy]_block_invoke"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/NSDictionaryAdditions.m"];
    [TSUAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:30 isFatal:0 description:"Source is not invertible because of non-copyable object: %@", v8];

    +[TSUAssertionHandler logBacktraceThrottled];
    *a4 = 1;
  }

  [*(a1 + 32) setObject:v7 forKeyedSubscript:v8];
}

void sub_1000ADA60(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000ADAA4(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000ADCC4(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

id sub_1000ADE20(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_new();

  return v2;
}

void sub_1000AE5EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v12 - 144), 8);
  _Block_object_dispose((v12 - 112), 8);
  _Unwind_Resume(a1);
}

BOOL sub_1000AE62C(void *a1, int a2, int a3, void *__src, size_t a5)
{
  if (*(*(a1[5] + 8) + 24) >= a5)
  {
    v6 = a5;
  }

  else
  {
    v6 = *(*(a1[5] + 8) + 24);
  }

  memcpy(*(*(a1[6] + 8) + 24), __src, v6);
  *(*(a1[5] + 8) + 24) -= v6;
  *(*(a1[6] + 8) + 24) += v6;
  *(a1[4] + 24) += v6;
  return *(*(a1[5] + 8) + 24) != 0;
}

uint64_t sub_1000AE6C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000AE6D8(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7 || v8)
  {
    if (v8)
    {
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), a4);
    }
  }

  else
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000AE870;
    v18[3] = &unk_1001CED08;
    v19 = *(a1 + 48);
    v18[4] = *(a1 + 32);
    v20 = &v21;
    dispatch_data_apply(v7, v18);
    if (!*(*(*(a1 + 48) + 8) + 24))
    {
      size = dispatch_data_get_size(v7);
      v11 = v22[3];
      if (size > v11)
      {
        v12 = *(*(a1 + 32) + 16);
        subrange = dispatch_data_create_subrange(v7, v11, size - v11);
        concat = dispatch_data_create_concat(v12, subrange);
        v15 = *(a1 + 32);
        v16 = *(v15 + 16);
        *(v15 + 16) = concat;
      }
    }

    _Block_object_dispose(&v21, 8);
  }

  v17 = a2 ^ 1;
  if (v9)
  {
    v17 = 0;
  }

  if ((v17 & 1) == 0 && (*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
  {
    dispatch_semaphore_signal(*(a1 + 40));
    *(*(*(a1 + 72) + 8) + 24) = 1;
  }
}

BOOL sub_1000AE870(void *a1, int a2, uint64_t a3, void *__src, size_t a5)
{
  if (*(*(a1[5] + 8) + 24) >= a5)
  {
    v7 = a5;
  }

  else
  {
    v7 = *(*(a1[5] + 8) + 24);
  }

  memcpy(*(*(a1[6] + 8) + 24), __src, v7);
  *(*(a1[5] + 8) + 24) -= v7;
  *(*(a1[6] + 8) + 24) += v7;
  *(a1[4] + 24) += v7;
  *(*(a1[7] + 8) + 24) = v7 + a3;
  return *(*(a1[5] + 8) + 24) != 0;
}

void sub_1000AE920(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000AEAE0(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_1000AF0FC(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  v13 = 1;
  if (v10 && v11)
  {
    v14 = objc_opt_class();
    v15 = TSUDynamicCast(v14, v9);
    v13 = [v15 handleData:v10 isDone:a3];
  }

  v16 = *(a1 + 32);
  if (v16)
  {
    v13 = (*(v16 + 16))(v16, v9, a3, v10, v12) & v13;
  }

  return v13;
}

void sub_1000AF32C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000AF344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [*(a1 + 32) processBytes:a2 size:?];
  *(*(*(a1 + 40) + 8) + 24) = result;
  *a5 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
  return result;
}

void sub_1000AF71C(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000AF8B4(id a1)
{
  v1 = TSULogCreateCategory("TSUAssertCat");
  v2 = TSUAssertCat_log_t;
  TSUAssertCat_log_t = v1;

  _objc_release_x1(v1, v2);
}

uint64_t SFUDeriveAes128Key(uint64_t a1, unint64_t a2, unsigned int a3, char *a4, uint64_t a5, void *a6, size_t a7)
{
  if (a4)
  {
    v7 = a1 == 0;
  }

  else
  {
    v7 = 1;
  }

  v10 = !v7 && a5 == 16 && a3 > 0x3E7 && HIDWORD(a2) == 0;
  v11 = v10;
  if (v10)
  {
    v18 = a7 + 4;
    if (a7 + 4 <= 0x14)
    {
      v18 = 20;
    }

    v19 = malloc_type_calloc(1uLL, v18 + 40, 0x100004077774924uLL);
    sfu_pbkdf2(sub_1000B1020, 20, a1, a2, a6, a7, a3, a4, 0x10u, v19);
    free(v19);
  }

  return v11;
}

void sub_1000B12D0(uint64_t a1, void *a2, char a3)
{
  if (TSUAssertCat_init_token != -1)
  {
    sub_1001619D4();
  }

  v6 = TSUAssertCat_log_t;
  if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    sub_1001619E8(v6);
    if (a3)
    {
      goto LABEL_5;
    }
  }

  else if (a3)
  {
LABEL_5:
    v8 = *(a1 + 40);
    v7 = a1 + 40;
    os_unfair_lock_lock((*(v8 + 8) + 32));
    v9 = *(v7 - 8);
    v10 = [NSString stringWithFormat:@"Terminating application due to %@", a2];
    goto LABEL_9;
  }

  if (*(a1 + 48))
  {
    return;
  }

  v11 = *(a1 + 40);
  v7 = a1 + 40;
  os_unfair_lock_lock((*(v11 + 8) + 32));
  v9 = *(v7 - 8);
  v10 = [a2 copy];
LABEL_9:
  [v9 addObject:v10];
  os_unfair_lock_unlock((*(*v7 + 8) + 32));
}

void sub_1000B1CC0(id a1)
{
  qword_1001EB0A0 = [NSDictionary sharedKeySetForKeys:&off_1001D71D8];
  qword_1001EB0A8 = objc_alloc_init(NSMutableDictionary);
  dword_1001EB0B0 = 0;
}

void TSUSetCrashReporterInfov(uint64_t a1, char *a2)
{
  v5[1] = a2;
  v5[2] = a2;
  v2 = [[NSString alloc] tsu_initRedactedWithFormat:+[NSString stringWithUTF8String:](NSString arguments:"stringWithUTF8String:", a1), a2];
  v3 = [v2 UTF8String];
  v5[0] = 0;
  if (v3)
  {
    asprintf(v5, "%s", v3);
  }

  v4 = v5[0];
  if (!v5[0])
  {
    v4 = "TSUSetCrashReporterInfo: unknown reason";
  }

  __crashreporter_info__ = v4;
}

void sub_1000B25F8(_Unwind_Exception *exc_buf, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exc_buf);
  }

  if (a2 != 2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x1000B258CLL);
  }

  objc_begin_catch(exc_buf);
  objc_exception_rethrow();
}

void sub_1000B26B0(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1000B2688);
  }

  JUMPOUT(0x1000B2644);
}

uint64_t sub_1000B2730(void *a1, uint64_t a2, int a3)
{
  v3 = [a1 readToBuffer:a2 size:a3];
  if (v3 >= 0x80000000)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100161D34();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100161D48();
    }

    [TSUAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"int SFUXmlReaderIORead(void * file:char * lineNumber:int)"] isFatal:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/sf/SFUDataRepresentation.m"] description:475, 0, "Overflow in SFUXmlReaderIORead"];
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  return v3;
}

uint64_t sub_1000B28D0(void *a1)
{
  [a1 close];

  return 0;
}

void sub_1000B2C68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2 == 1)
  {
    v11 = objc_begin_catch(exception_object);
    v12 = +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100161E6C();
    }

    v13 = TSUAssertCat_log_t;
    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100161E94(v11, v12, v13);
    }

    [TSUAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[SFUDataRepresentation readIntoData:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/sf/SFUDataRepresentation.m"] lineNumber:248 isFatal:0 description:"Caught exception trying to read storage into NSMutableData: %@"];
    +[TSUAssertionHandler logBacktraceThrottled];
    [v9 setLength:v10];
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

char *sub_1000B320C(void *a1, uint64_t a2)
{
  v4 = [a1 offset];
  [a1 seekToOffset:&v4[a2]];
  return ([a1 offset] - v4);
}

void sub_1000B3260(void *a1)
{
  [a1 closeLocalStream];
}

void *sub_1000B32D8(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_1000B337C();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

uint64_t sub_1000B3394(uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000B337C();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

void *sub_1000B3420(void *a1, uint64_t *a2, const char *a3)
{
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  *a1 = v4;
  a1[1] = 0;
  v5 = *(a2 + 23);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v5 = a2[1];
    if ((v5 & 0x8000000000000000) != 0)
    {
      google::protobuf::StringPiece::LogFatalSizeTooBig(v5, "size_t to int conversion", a3);
    }
  }

  a1[1] = v5;
  return a1;
}

_BYTE *sub_1000B347C(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000B337C();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void *sub_1000B3534(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_1000B3578(a1, 0);
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

void *sub_1000B3578(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100161F50(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x18uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x18uLL, sub_1000B3600);
}

void sub_1000B3600(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

const char *google::protobuf::FileDescriptor::SyntaxName(int a1)
{
  switch(a1)
  {
    case 0:
      return "unknown";
    case 2:
      return "proto2";
    case 3:
      return "proto3";
  }

  google::protobuf::internal::LogMessage::LogMessage(v4, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.cc", 230);
  v2 = google::protobuf::internal::LogMessage::operator<<(v4, "can't reach here.");
  google::protobuf::internal::LogFinisher::operator=(&v3, &v2->__r_.__value_.__l.__data_);
  google::protobuf::internal::LogMessage::~LogMessage(&v4[0].__r_.__value_.__l.__data_);
  return 0;
}

void sub_1000B36B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

google::protobuf::DescriptorPool::Tables *google::protobuf::DescriptorPool::Tables::Tables(google::protobuf::DescriptorPool::Tables *this)
{
  *(this + 6) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  *(this + 14) = 1065353216;
  sub_1000CF4BC(this + 24, 3uLL);
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 24) = 1065353216;
  sub_1000CF4BC(this + 64, 3uLL);
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 34) = 1065353216;
  sub_1000CF4BC(this + 104, 3uLL);
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 184) = 0u;
  *(this + 232) = 0u;
  *(this + 44) = 1065353216;
  *(this + 280) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 248) = 0u;
  *(this + 264) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 41) = 0;
  *(this + 84) = 1065353216;
  sub_1000CF4BC(this + 304, 3uLL);
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 94) = 1065353216;
  sub_1000CF4BC(this + 344, 3uLL);
  *(this + 49) = 0;
  *(this + 50) = 0;
  *(this + 48) = this + 392;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  sub_1000B347C(v5, "google.protobuf.DoubleValue");
  v6 = 1;
  sub_1000B347C(v7, "google.protobuf.FloatValue");
  v8 = 2;
  sub_1000B347C(v9, "google.protobuf.Int64Value");
  v10 = 3;
  sub_1000B347C(v11, "google.protobuf.UInt64Value");
  v12 = 4;
  sub_1000B347C(v13, "google.protobuf.Int32Value");
  v14 = 5;
  sub_1000B347C(v15, "google.protobuf.UInt32Value");
  v16 = 6;
  sub_1000B347C(v17, "google.protobuf.StringValue");
  v18 = 7;
  sub_1000B347C(v19, "google.protobuf.BytesValue");
  v20 = 8;
  sub_1000B347C(v21, "google.protobuf.BoolValue");
  v22 = 9;
  sub_1000B347C(v23, "google.protobuf.Any");
  v24 = 10;
  sub_1000B347C(v25, "google.protobuf.FieldMask");
  v26 = 11;
  sub_1000B347C(v27, "google.protobuf.Duration");
  v28 = 12;
  sub_1000B347C(v29, "google.protobuf.Timestamp");
  v30 = 13;
  sub_1000B347C(v31, "google.protobuf.Value");
  v32 = 14;
  sub_1000B347C(v33, "google.protobuf.ListValue");
  v34 = 15;
  sub_1000B347C(v35, "google.protobuf.Struct");
  v2 = 0;
  v36 = 16;
  do
  {
    sub_1000CFC10(this + 18, &v5[v2]);
    v2 += 32;
  }

  while (v2 != 512);
  v3 = 512;
  do
  {
    if (v5[v3 - 9] < 0)
    {
      operator delete(*&v5[v3 - 32]);
    }

    v3 -= 32;
  }

  while (v3);
  return this;
}

void sub_1000B3A64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, void **a11, void *a12, void *a13)
{
  while (1)
  {
    v20 = *(v19 - 9);
    v19 -= 4;
    if (v20 < 0)
    {
      operator delete(*v19);
    }

    if (v19 == &a13)
    {
      v21 = v13[60];
      if (v21)
      {
        v13[61] = v21;
        operator delete(v21);
      }

      v22 = v13[57];
      if (v22)
      {
        v13[58] = v22;
        operator delete(v22);
      }

      v23 = v13[54];
      if (v23)
      {
        v13[55] = v23;
        operator delete(v23);
      }

      v24 = *v18;
      if (*v18)
      {
        v13[52] = v24;
        operator delete(v24);
      }

      sub_1000239A0((v13 + 48), *a11);
      sub_1000CF798(v17);
      sub_1000CF798(v16 + 160);
      sub_1000CFB20(&a13);
      a13 = (v16 + 112);
      sub_1000CFA64(&a13);
      sub_1000CF9A4(&a13);
      a13 = (v16 + 64);
      sub_1000CF890(&a13);
      a13 = a12;
      sub_1000CF7E4(&a13);
      sub_1000CF710(v16);
      sub_1000CF798(v15);
      sub_1000CF710(v14);
      sub_1000CF710((v13 + 3));
      a13 = v13;
      sub_1000CF468(&a13);
      _Unwind_Resume(a1);
    }
  }
}

void google::protobuf::DescriptorPool::Tables::~Tables(google::protobuf::DescriptorPool::Tables *this)
{
  v2 = *(this + 60);
  if (v2)
  {
    *(this + 61) = v2;
    operator delete(v2);
  }

  v3 = *(this + 57);
  if (v3)
  {
    *(this + 58) = v3;
    operator delete(v3);
  }

  v4 = *(this + 54);
  if (v4)
  {
    *(this + 55) = v4;
    operator delete(v4);
  }

  v5 = *(this + 51);
  if (v5)
  {
    *(this + 52) = v5;
    operator delete(v5);
  }

  sub_1000239A0(this + 384, *(this + 49));
  sub_1000CF798(this + 344);
  sub_1000CF798(this + 304);
  v6 = (this + 280);
  sub_1000CFB20(&v6);
  v6 = (this + 256);
  sub_1000CFA64(&v6);
  v6 = (this + 232);
  sub_1000CF9A4(&v6);
  v6 = (this + 208);
  sub_1000CF890(&v6);
  v6 = (this + 184);
  sub_1000CF7E4(&v6);
  sub_1000CF710(this + 144);
  sub_1000CF798(this + 104);
  sub_1000CF710(this + 64);
  sub_1000CF710(this + 24);
  v6 = this;
  sub_1000CF468(&v6);
}

void google::protobuf::FileDescriptorTables::FileDescriptorTables(google::protobuf::FileDescriptorTables *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  sub_1000D04B8(this, 3uLL);
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 1065353216;
  sub_1000D04B8(this + 40, 3uLL);
  operator new();
}

void sub_1000B3E70(_Unwind_Exception *a1)
{
  sub_1000CF710(v1 + 280);
  sub_1000CF798(v4);
  sub_1000CF798(v3);
  sub_1000CF798(v1 + 152);
  sub_1000D06BC((v1 + 136));
  sub_1000CF798(v1 + 96);
  sub_1000D06BC((v1 + 80));
  sub_1000CF798(v2);
  sub_1000CF798(v1);
  _Unwind_Resume(a1);
}

void google::protobuf::FileDescriptorTables::~FileDescriptorTables(google::protobuf::FileDescriptorTables *this)
{
  std::mutex::~mutex(this + 5);
  sub_1000CF710(this + 280);
  sub_1000CF798(this + 232);
  sub_1000CF798(this + 192);
  sub_1000CF798(this + 152);
  sub_1000D06BC(this + 17);
  sub_1000CF798(this + 96);
  sub_1000D06BC(this + 10);
  sub_1000CF798(this + 40);

  sub_1000CF798(this);
}

void google::protobuf::DescriptorPool::Tables::AddCheckpoint(google::protobuf::DescriptorPool::Tables *this)
{
  sub_1000CD514(&v17, this);
  v2 = *(this + 52);
  v3 = *(this + 53);
  if (v2 >= v3)
  {
    v6 = *(this + 51);
    v7 = (v2 - v6) >> 5;
    v8 = v7 + 1;
    if ((v7 + 1) >> 59)
    {
      sub_100070E64();
    }

    v9 = v3 - v6;
    if (v9 >> 4 > v8)
    {
      v8 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_1000D0708(this + 408, v10);
    }

    v11 = (32 * v7);
    v12 = v18;
    *v11 = v17;
    v11[1] = v12;
    v5 = 32 * v7 + 32;
    v13 = *(this + 51);
    v14 = *(this + 52) - v13;
    v15 = 32 * v7 - v14;
    memcpy(v11 - v14, v13, v14);
    v16 = *(this + 51);
    *(this + 51) = v15;
    *(this + 52) = v5;
    *(this + 53) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v4 = v18;
    *v2 = v17;
    v2[1] = v4;
    v5 = (v2 + 2);
  }

  *(this + 52) = v5;
}

void google::protobuf::DescriptorPool::Tables::RollbackToLastCheckpoint(google::protobuf::DescriptorPool::Tables *this)
{
  v2 = *(this + 52);
  v3 = *(v2 - 12);
  v4 = *(this + 54);
  for (i = *(this + 55); v3 < (i - v4) >> 3; i = *(this + 55))
  {
    sub_1000CD594(v11, *(v4 + 8 * v3));
    sub_1000D0750(this + 38, v11);
    ++v3;
    v4 = *(this + 54);
  }

  for (j = *(v2 - 8); ; ++j)
  {
    v7 = *(this + 57);
    if (j >= (*(this + 58) - v7) >> 3)
    {
      break;
    }

    sub_1000CD594(v11, *(v7 + 8 * j));
    sub_1000D0750(this + 43, v11);
  }

  v8 = *(v2 - 4);
  v9 = *(this + 60);
  if (v8 < (*(this + 61) - v9) >> 4)
  {
    v10 = 16 * v8;
    do
    {
      sub_1000D0A30(this + 48, (v9 + v10));
      ++v8;
      v9 = *(this + 60);
      v10 += 16;
    }

    while (v8 < (*(this + 61) - v9) >> 4);
  }

  sub_1000B41A8(this + 54, *(v2 - 12));
  sub_1000B41A8(this + 57, *(v2 - 8));
  sub_1000B41D8(this + 60, *(v2 - 4));
  sub_1000B4208(this + 26, *(v2 - 32));
  sub_1000B4238(this + 29, *(v2 - 28));
  sub_1000B42E8(this + 32, *(v2 - 24));
  sub_1000B4318((this + 280), *(v2 - 20));
  sub_1000B4348(this + 23, *(v2 - 16));
  *(this + 52) -= 32;
}

void sub_1000B41A8(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    sub_1000D0E78(a1, a2 - v2);
  }
}

void sub_1000B41D8(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    sub_1000D0FD4(a1, a2 - v2);
  }
}

void sub_1000B4208(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      sub_1000CF8E4(a1, (*a1 + 8 * a2));
    }
  }

  else
  {
    sub_1000D1138(a1, a2 - v2);
  }
}

void sub_1000B4238(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 3;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 8 * a2;
      while (v3 != v6)
      {
        v8 = *--v3;
        v7 = v8;
        *v3 = 0;
        if (v8)
        {
          (*(*v7 + 8))(v7);
        }
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    sub_1000D132C(a1, v5);
  }
}

void sub_1000B42E8(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      sub_1000CFAB8(a1, (*a1 + 8 * a2));
    }
  }

  else
  {
    sub_1000D14FC(a1, a2 - v2);
  }
}

void sub_1000B4318(google::protobuf::FileDescriptorTables *a1, unint64_t a2)
{
  v2 = (*(a1 + 1) - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      sub_1000CFB74(a1, (*a1 + 8 * a2));
    }
  }

  else
  {
    sub_1000D16C8(a1, a2 - v2);
  }
}

void sub_1000B4348(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_1000D186C(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

unint64_t google::protobuf::DescriptorPool::Tables::FindByNameHelper(void *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v8 = *a2;
  if (!*a2)
  {
    goto LABEL_6;
  }

  std::mutex::lock(*a2);
  if (!a1[11] && !a1[6])
  {
    v21 = a3;
    v22 = a4;
    v19 = sub_1000CD5E4(a1 + 38, &v21);
    if (v19)
    {
      v12 = v19[4];
      if (v12)
      {
        v20 = v19[5];
        v11 = HIDWORD(v12);
        goto LABEL_20;
      }
    }
  }

  std::mutex::unlock(v8);
  v8 = *a2;
  if (*a2)
  {
    std::mutex::lock(*a2);
    v9 = 0;
  }

  else
  {
LABEL_6:
    v9 = 1;
  }

  if (*(a2 + 8))
  {
    sub_1000D1AC8((a1 + 8));
    sub_1000D1AC8((a1 + 3));
  }

  v21 = a3;
  v22 = a4;
  v10 = sub_1000CD5E4(a1 + 38, &v21);
  if (v10)
  {
    LODWORD(v12) = *(v10 + 8);
    v11 = *(v10 + 9);
    v13 = v10[5];
    if (v12)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v11 = 0;
  }

  v14 = *(a2 + 24);
  if (!v14 || (v15 = google::protobuf::DescriptorPool::Tables::FindByNameHelper(*(v14 + 32), v14, a3, a4), v11 = HIDWORD(v15), (LODWORD(v12) = v15) == 0))
  {
    if (google::protobuf::DescriptorPool::TryFindSymbolInFallbackDatabase(a2, a3, a4))
    {
      v21 = a3;
      v22 = a4;
      v16 = sub_1000CD5E4(a1 + 38, &v21);
      if (v16)
      {
        v12 = v16[4];
        v17 = v16[5];
      }

      else
      {
        v12 = 0;
      }

      v11 = HIDWORD(v12);
      if ((v9 & 1) == 0)
      {
        goto LABEL_20;
      }

      return v12 | (v11 << 32);
    }

    LODWORD(v12) = 0;
  }

LABEL_19:
  if ((v9 & 1) == 0)
  {
LABEL_20:
    std::mutex::unlock(v8);
  }

  return v12 | (v11 << 32);
}

uint64_t google::protobuf::DescriptorPool::TryFindSymbolInFallbackDatabase(google::protobuf::DescriptorPool *a1, uint64_t a2, uint64_t a3)
{
  v14 = a2;
  v15 = a3;
  if (!*(a1 + 1))
  {
    return 0;
  }

  sub_1000CD768(&v14, v12);
  if (sub_1000D2840((*(a1 + 4) + 64), v12))
  {
    v4 = 0;
  }

  else
  {
    google::protobuf::FileDescriptorProto::FileDescriptorProto(v10, 0);
    if ((google::protobuf::DescriptorPool::IsSubSymbolOfBuiltType(a1, v14, v15) & 1) != 0 || !(*(**(a1 + 1) + 24))(*(a1 + 1), v12, v10) || (v6 = *(a1 + 4), sub_1000B3420(&v9, (v11 & 0xFFFFFFFFFFFFFFFELL), v5), v16 = v9, (v7 = sub_1000CD5E4((v6 + 344), &v16)) != 0) && v7[4] || !google::protobuf::DescriptorPool::BuildFileFromDatabase(a1, v10))
    {
      sub_1000D293C((*(a1 + 4) + 64), v12);
      v4 = 0;
    }

    else
    {
      v4 = 1;
    }

    google::protobuf::FileDescriptorProto::~FileDescriptorProto(v10);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  return v4;
}

void sub_1000B46E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (*(v11 - 65) < 0)
  {
    operator delete(*(v11 - 88));
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::FileDescriptorTables::FieldsByLowercaseNamesLazyInitInternal(uint64_t this)
{
  v1 = *(this + 168);
  if (v1)
  {
    v2 = this;
    while (1)
    {
      v3 = v1[4];
      if (*(v3 + 67) != 1)
      {
        break;
      }

      v4 = *(v3 + 96);
      if (!v4)
      {
        v5 = 40;
LABEL_7:
        v4 = *(v3 + v5);
      }

      v6 = *(v3 + 16);
      if (v6[23] < 0)
      {
        v6 = *v6;
      }

      *&v7 = v4;
      sub_1000CD594(&v7 + 1, v6);
      this = sub_1000B47AC((v2 + 40), &v7, v1 + 4);
      v1 = *v1;
      if (!v1)
      {
        return this;
      }
    }

    v5 = 80;
    goto LABEL_7;
  }

  return this;
}

uint64_t sub_1000B47AC(void *a1, __int128 *a2, uint64_t *a3)
{
  v19 = *a2;
  v4 = *(a2 + 2);
  v5 = *a3;
  v20 = v4;
  v21 = v5;
  if (v4 < 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = *(&v19 + 1);
    v8 = *(&v19 + 1) + v4;
    do
    {
      v9 = *v7++;
      v6 = 5 * v6 + v9;
    }

    while (v7 < v8);
  }

  v10 = v6 ^ (16777619 * v19);
  v11 = a1[1];
  if (!*&v11)
  {
    goto LABEL_23;
  }

  v12 = vcnt_s8(v11);
  v12.i16[0] = vaddlv_u8(v12);
  v13 = v12.u32[0];
  if (v12.u32[0] > 1uLL)
  {
    v14 = v6 ^ (16777619 * v19);
    if (v10 >= *&v11)
    {
      v14 = v10 % *&v11;
    }
  }

  else
  {
    v14 = (*&v11 - 1) & v10;
  }

  v15 = *(*a1 + 8 * v14);
  if (!v15 || (v16 = *v15) == 0)
  {
LABEL_23:
    operator new();
  }

  while (1)
  {
    v17 = v16[1];
    if (v17 == v10)
    {
      break;
    }

    if (v13 > 1)
    {
      if (v17 >= *&v11)
      {
        v17 %= *&v11;
      }
    }

    else
    {
      v17 &= *&v11 - 1;
    }

    if (v17 != v14)
    {
      goto LABEL_23;
    }

LABEL_22:
    v16 = *v16;
    if (!v16)
    {
      goto LABEL_23;
    }
  }

  if (!sub_1000CD908(a1, v16 + 2, &v19))
  {
    goto LABEL_22;
  }

  return 0;
}

uint64_t google::protobuf::DescriptorPool::Tables::AddSymbol(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  sub_1000CD594(&v12, a2);
  v13 = v12;
  v14 = a3;
  v15 = a4;
  sub_1000D1B6C((a1 + 304), &v13);
  v9 = v8;
  if (v8)
  {
    if (v6[23] >= 0)
    {
      v10 = v6;
    }

    else
    {
      v10 = *v6;
    }

    *&v13 = v10;
    sub_1000B4AD8(a1 + 432, &v13);
  }

  return v9 & 1;
}

void sub_1000B4AD8(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_100070E64();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_1000D0F8C(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t google::protobuf::FileDescriptorTables::AddAliasUnderParent(void *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  if (a3[23] >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  *&v21 = a2;
  sub_1000CD594(&v21 + 1, v8);
  v23 = v21;
  v24 = v22;
  v25 = a4;
  v26 = a5;
  if (v22 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    v10 = *(&v23 + 1);
    do
    {
      v11 = *v10++;
      v9 = 5 * v9 + v11;
    }

    while (v10 < *(&v23 + 1) + v22);
  }

  v12 = v9 ^ (16777619 * v21);
  v13 = a1[1];
  if (!*&v13)
  {
    goto LABEL_26;
  }

  v14 = vcnt_s8(v13);
  v14.i16[0] = vaddlv_u8(v14);
  v15 = v14.u32[0];
  if (v14.u32[0] > 1uLL)
  {
    v16 = v9 ^ (16777619 * v21);
    if (v12 >= *&v13)
    {
      v16 = v12 % *&v13;
    }
  }

  else
  {
    v16 = (*&v13 - 1) & v12;
  }

  v17 = *(*a1 + 8 * v16);
  if (!v17 || (v18 = *v17) == 0)
  {
LABEL_26:
    operator new();
  }

  while (1)
  {
    v19 = v18[1];
    if (v19 == v12)
    {
      break;
    }

    if (v15 > 1)
    {
      if (v19 >= *&v13)
      {
        v19 %= *&v13;
      }
    }

    else
    {
      v19 &= *&v13 - 1;
    }

    if (v19 != v16)
    {
      goto LABEL_26;
    }

LABEL_25:
    v18 = *v18;
    if (!v18)
    {
      goto LABEL_26;
    }
  }

  if (!sub_1000CD908(a1, v18 + 2, &v23))
  {
    goto LABEL_25;
  }

  return 0;
}

uint64_t google::protobuf::DescriptorPool::Tables::AddFile(google::protobuf::DescriptorPool::Tables *this, char **a2)
{
  v4 = *a2;
  if (v4[23] < 0)
  {
    v4 = *v4;
  }

  sub_1000CD594(&v9, v4);
  v10 = v9;
  v11 = a2;
  sub_1000D1DE4(this + 43, &v10);
  v6 = v5;
  if (v5)
  {
    v7 = *a2;
    if ((*a2)[23] < 0)
    {
      v7 = *v7;
    }

    *&v10 = v7;
    sub_1000B4AD8(this + 456, &v10);
  }

  return v6 & 1;
}

uint64_t google::protobuf::FileDescriptorTables::AddFieldByStylizedNames(google::protobuf::FileDescriptorTables *this, char **a2)
{
  v12 = a2;
  if (*(a2 + 67) == 1)
  {
    v4 = a2[12];
    if (v4)
    {
      goto LABEL_6;
    }

    v5 = 5;
  }

  else
  {
    v5 = 10;
  }

  v4 = a2[v5];
LABEL_6:
  v6 = a2[2];
  if (v6[23] < 0)
  {
    v6 = *v6;
  }

  *&v11 = v4;
  sub_1000CD594(&v11 + 1, v6);
  if ((sub_1000B47AC(*(this + 10), &v11, &v12) & 1) == 0)
  {
    *&v10 = sub_1000B5004(*(this + 10), &v11);
    sub_1000B47AC(this + 5, &v11, &v10);
  }

  v7 = a2[3];
  if (v7[23] < 0)
  {
    v7 = *v7;
  }

  *&v10 = v4;
  sub_1000CD594(&v10 + 1, v7);
  result = sub_1000B47AC(*(this + 17), &v10, &v12);
  if ((result & 1) == 0)
  {
    v9 = sub_1000B5004(*(this + 17), &v10);
    return sub_1000B47AC(this + 12, &v10, &v9);
  }

  return result;
}

uint64_t sub_1000B5004(void *a1, void *a2)
{
  v4 = a2[2];
  if (v4 < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v6 = a2[1];
    v7 = &v6[v4];
    do
    {
      v8 = *v6++;
      v5 = 5 * v5 + v8;
    }

    while (v6 < v7);
  }

  v9 = a1[1];
  if (v9)
  {
    v10 = v5 ^ (16777619 * *a2);
    v11 = vcnt_s8(v9);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = v11.u32[0];
    if (v11.u32[0] > 1uLL)
    {
      v13 = v5 ^ (16777619 * *a2);
      if (v10 >= *&v9)
      {
        v13 = v10 % *&v9;
      }
    }

    else
    {
      v13 = (*&v9 - 1) & v10;
    }

    v14 = *(*a1 + 8 * v13);
    if (v14)
    {
      v15 = *v14;
      if (*v14)
      {
        do
        {
          v16 = v15[1];
          if (v16 == v10)
          {
            if (sub_1000CD908(a1, v15 + 2, a2))
            {
              return v15[5];
            }
          }

          else
          {
            if (v12 > 1)
            {
              if (v16 >= *&v9)
              {
                v16 %= *&v9;
              }
            }

            else
            {
              v16 &= *&v9 - 1;
            }

            if (v16 != v13)
            {
              return 0;
            }
          }

          v15 = *v15;
        }

        while (v15);
      }
    }
  }

  return 0;
}

uint64_t google::protobuf::FileDescriptorTables::AddFieldByNumber(int8x8_t *this, const google::protobuf::FieldDescriptor *a2)
{
  v2 = *(a2 + 10);
  v3 = *(a2 + 17);
  v4 = (16777619 * v3) ^ (16777499 * v2);
  v5 = this[20];
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = (16777619 * v3) ^ (16777499 * v2);
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*&this[19] + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (v9[2] != v2 || *(v9 + 6) != v3)
  {
    goto LABEL_21;
  }

  return 0;
}

uint64_t sub_1000B5398(void *a1, void *a2, uint64_t *a3)
{
  v3 = a2[1];
  v4 = *a3;
  v5 = (16777619 * v3) ^ (16777499 * *a2);
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_22;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = (16777619 * v3) ^ (16777499 * *a2);
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v5;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_22;
    }

LABEL_21:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_22;
    }
  }

  if (v10[2] != *a2 || *(v10 + 6) != v3)
  {
    goto LABEL_21;
  }

  return 0;
}

uint64_t google::protobuf::DescriptorPool::Tables::AddExtension(google::protobuf::DescriptorPool::Tables *this, const google::protobuf::FieldDescriptor *a2)
{
  v3 = *(a2 + 10);
  v4 = *(a2 + 17);
  v21 = v3;
  v22 = v4;
  v23 = a2;
  sub_1000D2064(this + 384, &v21);
  v6 = v5;
  if (v5)
  {
    v8 = *(this + 61);
    v7 = *(this + 62);
    if (v8 >= v7)
    {
      v10 = *(this + 60);
      v11 = (v8 - v10) >> 4;
      v12 = v11 + 1;
      if ((v11 + 1) >> 60)
      {
        sub_100070E64();
      }

      v13 = v7 - v10;
      if (v13 >> 3 > v12)
      {
        v12 = v13 >> 3;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF0)
      {
        v14 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        sub_1000D10F0(this + 480, v14);
      }

      v15 = 16 * v11;
      *v15 = v3;
      *(v15 + 8) = v4;
      v9 = 16 * v11 + 16;
      v16 = *(this + 60);
      v17 = *(this + 61) - v16;
      v18 = (16 * v11 - v17);
      memcpy(v18, v16, v17);
      v19 = *(this + 60);
      *(this + 60) = v18;
      *(this + 61) = v9;
      *(this + 62) = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      *v8 = v3;
      *(v8 + 8) = v4;
      v9 = v8 + 16;
    }

    *(this + 61) = v9;
  }

  return v6 & 1;
}

void google::protobuf::DescriptorPool::Tables::AllocateString(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = a3;
  operator new();
}

uint64_t google::protobuf::DescriptorPool::Tables::AllocateBytes(google::protobuf::DescriptorPool::Tables *this, int a2)
{
  v6 = a2;
  if (!a2)
  {
    return 0;
  }

  v3 = *(this + 24);
  if (v3 >= *(this + 25))
  {
    v4 = sub_1000D2168(this + 184, &v6);
  }

  else
  {
    sub_1000D2288(*(this + 24), a2);
    v4 = v3 + 24;
    *(this + 24) = v3 + 24;
  }

  *(this + 24) = v4;
  return *(v4 - 24);
}

void google::protobuf::FileDescriptorTables::BuildLocationsByPath(uint64_t *a1)
{
  v1 = *(a1[1] + 24);
  if (v1 >= 1)
  {
    v3 = 8;
    do
    {
      v4 = *a1;
      v5 = *(*(a1[1] + 32) + v3);
      sub_1000B5D14(",", v5 + 6, &__p);
      p_p = &__p;
      sub_1000D2410((v4 + 280), &__p.__r_.__value_.__l.__data_)[5] = v5;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v3 += 8;
      --v1;
    }

    while (v1);
  }
}

void sub_1000B5CF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1000B5D14@<X0>(std::string::value_type *__s@<X1>, int *a2@<X0>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  return sub_1000D234C(*(a2 + 1), (*(a2 + 1) + 4 * *a2), __s, a3);
}

void sub_1000B5D58(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

const void *google::protobuf::FileDescriptorTables::GetSourceLocation(uint64_t a1, std::string **a2, uint64_t a3)
{
  v11[0] = a1;
  v11[1] = a3;
  v5 = (a1 + 272);
  v10 = v11;
  if (atomic_load_explicit(v5, memory_order_acquire) != -1)
  {
    __p.__r_.__value_.__r.__words[0] = google::protobuf::FileDescriptorTables::BuildLocationsByPath;
    __p.__r_.__value_.__l.__size_ = &v10;
    p_p = &__p;
    std::__call_once(v5, &p_p, sub_1000D2690);
  }

  sub_1000B5E50(",", a2, &__p);
  v6 = sub_1000D26A0((a1 + 280), &__p.__r_.__value_.__l.__data_);
  if (v6)
  {
    v7 = v6[5];
  }

  else
  {
    v7 = 0;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_1000B5E34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1000B5E50@<X0>(std::string::value_type *__s@<X1>, std::string **a2@<X0>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  return sub_1000D234C(*a2, a2[1], __s, a3);
}

void sub_1000B5E8C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::DescriptorPool::~DescriptorPool(char **this)
{
  v2 = *this;
  if (v2)
  {
    std::mutex::~mutex(v2);
    operator delete();
  }

  sub_1000D279C((this + 6), this[7]);
  v3 = this[4];
  this[4] = 0;
  if (v3)
  {
    google::protobuf::DescriptorPool::Tables::~Tables(v3);
    operator delete();
  }
}

uint64_t sub_1000B5FEC()
{
  if ((atomic_load_explicit(&qword_1001EB0E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1001EB0E0))
  {
    operator new();
  }

  return qword_1001EB0D8;
}

uint64_t google::protobuf::DescriptorPool::internal_generated_pool(google::protobuf::DescriptorPool *this)
{
  if ((atomic_load_explicit(&qword_1001EB0D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1001EB0D0))
  {
    sub_1000B6144();
  }

  return qword_1001EB0C8;
}

uint64_t google::protobuf::DescriptorPool::generated_pool(google::protobuf::DescriptorPool *this)
{
  v1 = google::protobuf::DescriptorPool::internal_generated_pool(this);
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
  return v1;
}

void google::protobuf::DescriptorPool::InternalAddGeneratedFile(google::protobuf::DescriptorPool *this, const void *a2)
{
  v2 = a2;
  v4 = sub_1000B5FEC();
  if ((google::protobuf::EncodedDescriptorDatabase::Add(v4, this, v2) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/google/protobuf/descriptor.cc", 1371);
    v5 = google::protobuf::internal::LogMessage::operator<<(v7, "CHECK failed: GeneratedDatabase()->Add(encoded_file_descriptor, size): ");
    google::protobuf::internal::LogFinisher::operator=(&v6, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
  }
}

void sub_1000B6274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::DescriptorPool::FindFileByName(uint64_t a1, uint64_t *a2, const char *a3)
{
  v5 = *a1;
  if (*a1)
  {
    std::mutex::lock(*a1);
  }

  if (*(a1 + 8))
  {
    sub_1000D1AC8(*(a1 + 32) + 64);
    sub_1000D1AC8(*(a1 + 32) + 24);
  }

  v6 = *(a1 + 32);
  sub_1000B3420(&v15, a2, a3);
  v16 = v15;
  v7 = sub_1000CD5E4((v6 + 344), &v16);
  if (!v7 || (FileByName = v7[4]) == 0)
  {
    v10 = *(a1 + 24);
    if (!v10 || (FileByName = google::protobuf::DescriptorPool::FindFileByName(v10, a2)) == 0)
    {
      sub_1000B3420(&v16, a2, v8);
      if (!google::protobuf::DescriptorPool::TryFindFileInFallbackDatabase(a1, v16, *(&v16 + 1)) || (v12 = *(a1 + 32), sub_1000B3420(&v15, a2, v11), v16 = v15, (v13 = sub_1000CD5E4((v12 + 344), &v16)) == 0) || (FileByName = v13[4]) == 0)
      {
        FileByName = 0;
      }
    }
  }

  if (v5)
  {
    std::mutex::unlock(v5);
  }

  return FileByName;
}

void sub_1000B6398(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::mutex::unlock(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::DescriptorPool::TryFindFileInFallbackDatabase(google::protobuf::DescriptorPool *a1, uint64_t a2, uint64_t a3)
{
  v9[0] = a2;
  v9[1] = a3;
  if (!*(a1 + 1))
  {
    return 0;
  }

  sub_1000CD768(v9, v7);
  if (sub_1000D2840((*(a1 + 4) + 24), v7))
  {
    v4 = 0;
  }

  else
  {
    google::protobuf::FileDescriptorProto::FileDescriptorProto(v6, 0);
    if ((*(**(a1 + 1) + 16))(*(a1 + 1), v7, v6) && google::protobuf::DescriptorPool::BuildFileFromDatabase(a1, v6))
    {
      v4 = 1;
    }

    else
    {
      sub_1000D293C((*(a1 + 4) + 24), v7);
      v4 = 0;
    }

    google::protobuf::FileDescriptorProto::~FileDescriptorProto(v6);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  return v4;
}

void sub_1000B64A0(_Unwind_Exception *exception_object)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000B64CC(uint64_t a1)
{
  v1 = 0;
  v2 = *a1;
  if (*a1 <= 4)
  {
    if (v2 <= 2)
    {
      if (v2 != 1)
      {
        if (v2 == 2)
        {
          v3 = *(a1 + 8) + 40;
          return *v3;
        }

        return v1;
      }

      goto LABEL_12;
    }

    if (v2 != 3)
    {
      if (v2 != 4)
      {
        return v1;
      }

LABEL_12:
      v4 = *(a1 + 8);
LABEL_18:
      v3 = v4 + 16;
      return *v3;
    }

LABEL_16:
    v4 = *(*(a1 + 8) + 16);
    goto LABEL_18;
  }

  if (v2 <= 6)
  {
    if (v2 == 5)
    {
      v4 = *(*(a1 + 8) + 24);
      goto LABEL_18;
    }

    if (v2 != 6)
    {
      return v1;
    }

    goto LABEL_12;
  }

  if (v2 == 7)
  {
    goto LABEL_16;
  }

  if (v2 == 8)
  {
    v3 = a1 + 8;
    return *v3;
  }

  return v1;
}

uint64_t google::protobuf::DescriptorPool::FindMessageTypeByName(uint64_t a1, uint64_t *a2, const char *a3)
{
  v4 = *(a1 + 32);
  sub_1000B3420(v7, a2, a3);
  if (google::protobuf::DescriptorPool::Tables::FindByNameHelper(v4, a1, v7[0], v7[1]) == 1)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}