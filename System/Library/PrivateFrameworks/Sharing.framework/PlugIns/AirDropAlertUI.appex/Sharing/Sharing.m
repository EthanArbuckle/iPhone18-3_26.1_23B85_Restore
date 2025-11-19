void sub_1000018A4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = NSStringFromSelector("transferProgress");
  LODWORD(v2) = [v2 isEqualToString:v3];

  if (v2)
  {
    if ((*(*(a1 + 40) + 48) & 1) == 0)
    {
      [*(a1 + 48) removeObserver:? forKeyPath:?];
      v4 = [*(*(a1 + 40) + 32) transferProgress];
      if (v4)
      {
        [*(*(a1 + 40) + 56) setProgress:v4];
        [*(*(a1 + 40) + 56) setHidden:0];
        *(*(a1 + 40) + 48) = 1;
        [v4 addObserver:*(a1 + 40) forKeyPath:@"finished" options:4 context:0];
        v5 = *(a1 + 40);
        v6 = NSStringFromSelector("fractionCompleted");
        [v4 addObserver:v5 forKeyPath:v6 options:4 context:0];
      }

      else
      {
        v11 = airdrop_ui_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v12) = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "No transfer progress in kvo", &v12, 2u);
        }
      }
    }
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = NSStringFromSelector("fractionCompleted");
    LODWORD(v7) = [v7 isEqualToString:v8];

    if (v7)
    {
      v9 = airdrop_ui_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 48);
        v12 = 138412290;
        v13 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Progress changed: %@", &v12, 0xCu);
      }

      [*(a1 + 40) activateIfNeeded];
    }
  }
}

void sub_100001D00(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_100001D1C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_100002060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{
  if (a2 == 1)
  {
    v11 = objc_begin_catch(exception_object);
    v12 = airdrop_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      sub_100002BD4(v14, &buf, v12);
    }

    objc_end_catch();
    JUMPOUT(0x100002014);
  }

  _Unwind_Resume(exception_object);
}

id sub_100002444(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100002508;
  v3[3] = &unk_100008258;
  v4 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100002520;
  v2[3] = &unk_100008280;
  v2[4] = v4;
  return [UIView animateWithDuration:v3 animations:v2 completion:0.5];
}

id sub_100002520(uint64_t a1, int a2)
{
  v4 = airdrop_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"not finished";
    if (a2)
    {
      v5 = @"finished";
    }

    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Calling transferFinished and UIView says animation is %@", &v7, 0xCu);
  }

  return [*(a1 + 32) transferFinished];
}

void sub_100002714(uint64_t a1)
{
  v3 = (a1 + 40);
  v2 = *(a1 + 40);
  if (*(v3 - 1) == v2[7])
  {
    v5 = *(a1 + 48);

    [v2 handleKVOUpdateForProgress:? keyPath:?];
  }

  else
  {
    v4 = airdrop_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100002C2C(v3, a1, v4);
    }
  }
}

void sub_100002A2C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Got transfer progress: %@", &v2, 0xCu);
}

void sub_100002B40(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a2 + 32);
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = v3;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Extension updatedTransfer: %@. Old transfer: %@", &v4, 0x16u);
}

void sub_100002BD4(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%@: remove progress observer failed", buf, 0xCu);
}

void sub_100002C2C(uint64_t *a1, uint64_t a2, NSObject *a3)
{
  v5 = *a1;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = *(a2 + 48);
  v9 = 138412546;
  v10 = v7;
  v11 = 2112;
  v12 = v8;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "%@: incorrect object for keypath %@", &v9, 0x16u);
}