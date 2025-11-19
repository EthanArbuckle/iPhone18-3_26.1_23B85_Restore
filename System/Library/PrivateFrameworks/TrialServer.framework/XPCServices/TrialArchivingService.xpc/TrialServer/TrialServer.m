void sub_10000202C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = TRILogCategory_Archiving();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "maps: bucket id: %@", &v9, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v9 = 138543362;
    v10 = v6;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Unable to fetch Maps Bucket Id: %{public}@", &v9, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  if ((_set_user_dir_suffix() & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v9 = *__error();
    v10 = 136315394;
    v11 = "com.apple.trial.TrialArchivingService";
    v12 = 1024;
    v13 = v9;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to set private sandbox for %s, errno: %d", &v10, 0x12u);
  }

  v4 = NSTemporaryDirectory();
  v5 = TRILogCategory_Archiving();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "TrialArchivingService started", &v10, 2u);
  }

  v6 = objc_opt_new();
  v7 = +[NSXPCListener serviceListener];
  [v7 setDelegate:v6];
  [v7 resume];

  objc_autoreleasePoolPop(v3);
  return 1;
}

void sub_100002D38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    if (!a11)
    {
      JUMPOUT(0x100002B14);
    }

    JUMPOUT(0x100002B1CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_100002DB4(uint64_t a1)
{
  atomic_store(1u, (*(*(a1 + 32) + 8) + 24));
  v1 = TRILogCategory_Archiving();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "com.apple.trial.TrialArchivingService.shouldDefer";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "received notification: %s", &v2, 0xCu);
  }
}

uint64_t sub_100002E70(uint64_t a1)
{
  if (*(a1 + 40) > 0.0)
  {
    v2 = TRILogCategory_Archiving();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 40);
      v7 = 134217984;
      v8 = v6;
      _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Test config: pausing for %g sec before deferral check", &v7, 0xCu);
    }

    [NSThread sleepForTimeInterval:*(a1 + 40)];
    v3 = TRILogCategory_Archiving();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v7) = 0;
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Test config: deferral check executing", &v7, 2u);
    }
  }

  v4 = atomic_load((*(*(a1 + 32) + 8) + 24));
  return v4 & 1;
}

void sub_1000033E8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x100003254);
  }

  _Unwind_Resume(exception_object);
}

void sub_100003B8C(uint64_t a1)
{
  atomic_store(1u, (*(*(a1 + 32) + 8) + 24));
  v1 = TRILogCategory_Archiving();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "com.apple.trial.TrialArchivingService.shouldDefer";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "received notification: %s", &v2, 0xCu);
  }
}

uint64_t sub_100003C48(uint64_t a1)
{
  if (*(a1 + 40) > 0.0)
  {
    v2 = TRILogCategory_Archiving();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 40);
      v7 = 134217984;
      v8 = v6;
      _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Test config: pausing for %g sec before deferral check", &v7, 0xCu);
    }

    [NSThread sleepForTimeInterval:*(a1 + 40)];
    v3 = TRILogCategory_Archiving();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v7) = 0;
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Test config: deferral check executing", &v7, 2u);
    }
  }

  v4 = atomic_load((*(*(a1 + 32) + 8) + 24));
  return v4 & 1;
}

void sub_1000042B8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

void sub_100004DDC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x100004B24);
  }

  _Unwind_Resume(exception_object);
}

void sub_100005C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100005C8C(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 64) _createReadArchive];
  if (!v4)
  {
    v10 = TRILogCategory_Archiving();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14) = 0;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Error creating archive for reading.", &v14, 2u);
    }

    v11 = 0;
    v12 = a1 + 56;
    goto LABEL_18;
  }

  v5 = v4;
  [*(a1 + 32) fileDescriptor];
  if (archive_read_open_fd())
  {
    v6 = TRILogCategory_Archiving();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315138;
      v15 = archive_error_string();
      v7 = "unable to open archive_read - %s.";
      v8 = v6;
      v9 = 12;
LABEL_21:
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, v7, &v14, v9);
    }
  }

  else
  {
    notify_post("com.apple.trial.TrialArchivingService.test.beginExtract");
    *(*(*(a1 + 56) + 8) + 32) = [*(a1 + 64) _withLockWitness:a2 performExtractionIntoCurrentDirectoryFromArchive:v5 maxUnarchivedSize:*(a1 + 72) archiveIdentifier:*(a1 + 40) shouldDefer:*(a1 + 48)];
    if (!archive_read_close())
    {
      goto LABEL_11;
    }

    v6 = TRILogCategory_Archiving();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14) = 0;
      v7 = "unable to close archive_read";
      v8 = v6;
      v9 = 2;
      goto LABEL_21;
    }
  }

LABEL_11:
  if (archive_read_free())
  {
    v13 = TRILogCategory_Archiving();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "unable to free archive_read (leaking)", &v14, 2u);
    }
  }

  v12 = a1 + 56;
  if (*(*(*(a1 + 56) + 8) + 32) == 1 && *(a1 + 80) == 1)
  {
    notify_post("com.apple.trial.TrialArchivingService.test.beginCompress");
    v11 = [*(a1 + 64) _compressFilesInCurrentDirectoryWithLockWitness:a2 shouldDefer:*(a1 + 48)];
LABEL_18:
    *(*(*v12 + 8) + 32) = v11;
  }
}

void sub_100006E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100006ED0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100006EE8(uint64_t a1)
{
  v2 = atomic_load((*(*(a1 + 48) + 8) + 24));
  if (v2 == 1)
  {
    v3 = *(a1 + 40);
    if ((*(*(a1 + 40) + 16))())
    {
      v4 = *(*(a1 + 56) + 8);
      v5 = *(v4 + 40);
      *(v4 + 40) = 0;

      dispatch_semaphore_signal(*(a1 + 32));
      v6 = TRILogCategory_Archiving();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Deferring during AFSC stream write.", &v15, 2u);
      }

      atomic_store(2u, (*(*(a1 + 48) + 8) + 24));
    }

    else
    {
      v10 = *(a1 + 64);
      [*(*(*(a1 + 56) + 8) + 40) bytes];
      [*(*(*(a1 + 56) + 8) + 40) length];
      v11 = ParallelCompressionAFSCStreamWrite();
      v12 = *(*(a1 + 56) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = 0;

      dispatch_semaphore_signal(*(a1 + 32));
      if (v11 < 0)
      {
        v14 = TRILogCategory_Archiving();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = 134217984;
          v16 = v11;
          _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "AFSC stream failed to write with error (%zu)", &v15, 0xCu);
        }

        atomic_store(0, (*(*(a1 + 48) + 8) + 24));
      }
    }
  }

  else
  {
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;

    v9 = *(a1 + 32);

    dispatch_semaphore_signal(v9);
  }
}

void sub_1000073D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000073FC(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    v6 = TRILogCategory_Archiving();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Deferred during AFSC directory pass.", &v11, 2u);
    }

    *(*(*(a1 + 48) + 8) + 32) = 2;
LABEL_5:
    *a3 = 1;
    goto LABEL_6;
  }

  *(*(*(a1 + 48) + 8) + 32) = [*(a1 + 32) inPlaceCompressFile:v5 shouldDefer:*(a1 + 40)];
  v7 = *(*(*(a1 + 48) + 8) + 32);
  if (v7 == 2)
  {
    v10 = TRILogCategory_Archiving();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Deferred during compression of %@", &v11, 0xCu);
    }

    *a3 = 1;
  }

  else
  {
    if (v7 != 1)
    {
      if (*(*(*(a1 + 48) + 8) + 32))
      {
        goto LABEL_6;
      }

      v8 = TRILogCategory_Archiving();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v11 = 138412290;
        v12 = v5;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Error: compression failed for %@", &v11, 0xCu);
      }

      goto LABEL_5;
    }

    v9 = TRILogCategory_Archiving();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Finished compressing %@", &v11, 0xCu);
    }
  }

LABEL_6:
}

id TRILogCategory_Server()
{
  if (qword_100014EE0 != -1)
  {
    dispatch_once(&qword_100014EE0, &stru_100010748);
  }

  v1 = qword_100014EE8;

  return v1;
}

void sub_100007890(id a1)
{
  if (qword_100014F08 != -1)
  {
    dispatch_once(&qword_100014F08, &stru_100010728);
  }

  qword_100014EE8 = os_log_create(qword_100014F00, "server");

  _objc_release_x1();
}

id TRILogCategory_Archiving()
{
  if (qword_100014EF0 != -1)
  {
    dispatch_once(&qword_100014EF0, &stru_100010768);
  }

  v1 = qword_100014EF8;

  return v1;
}

void sub_100007950(id a1)
{
  if (qword_100014F08 != -1)
  {
    dispatch_once(&qword_100014F08, &stru_100010728);
  }

  qword_100014EF8 = os_log_create(qword_100014F00, "archiving");

  _objc_release_x1();
}

uint64_t sub_1000081AC(double a1)
{
  if (!atomic_load(&dword_100014ED0))
  {
    sub_1000082C8(a1);
  }

  return espresso_ane_cache_has_network();
}

uint64_t sub_1000081D8(double a1)
{
  if (!atomic_load(&dword_100014ED0))
  {
    sub_1000082C8(a1);
  }

  return espresso_ane_cache_purge_network();
}

uint64_t sub_100008204(double a1)
{
  if (!atomic_load(&dword_100014ED0))
  {
    sub_1000082C8(a1);
  }

  return espresso_context_destroy();
}

uint64_t sub_100008230(double a1)
{
  if (!atomic_load(&dword_100014ED0))
  {
    sub_1000082C8(a1);
  }

  return espresso_create_context();
}

double sub_10000825C(double result)
{
  if (!atomic_load(&unk_100014ED8))
  {
    return sub_100008410(result);
  }

  return result;
}

double sub_100008280(double result)
{
  if (!atomic_load(&unk_100014ED8))
  {
    return sub_100008410(result);
  }

  return result;
}

double sub_1000082A4(double result)
{
  if (!atomic_load(&dword_100014ED4))
  {
    return sub_10000836C(result);
  }

  return result;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1000082C8(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/Espresso.framework/Espresso", 0);
  atomic_store(1u, &dword_100014ED0);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_10000836C(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/GenerativeModels.framework/GenerativeModels", 0);
  atomic_store(1u, &dword_100014ED4);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_100008410(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/GeoServices.framework/GeoServices", 0);
  atomic_store(1u, &unk_100014ED8);
  return a1;
}