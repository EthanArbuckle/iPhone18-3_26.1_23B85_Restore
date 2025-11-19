void start()
{
  v0 = [[SKMediaEventsHelper alloc] initWithQueue:dispatch_queue_create("com.apple.SKMediaEventsHelper.main", 0)];
  if (v0)
  {
    [(SKMediaEventsHelper *)v0 resume];
  }

  dispatch_main();
}

void sub_100000F98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100000FD4(uint64_t a1, uint64_t a2)
{
  Weak = objc_loadWeak((a1 + 40));
  authorization_value = tcc_authorization_record_get_authorization_value();
  tcc_authorization_record_get_subject_identity();
  identifier = tcc_identity_get_identifier();
  *(*(a1 + 32) + 24) = [Weak _mediaEventsStreamIsAuthorizedForBundles];
  v7 = qword_100008800;
  if (os_log_type_enabled(qword_100008800, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218754;
    v9 = authorization_value;
    v10 = 2048;
    v11 = a2;
    v12 = 2080;
    v13 = identifier;
    v14 = 2048;
    v15 = [Weak numberOfAuthorizedBundles];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Number of authorized clients for media events stream has changed; auth_value:%llu, event_type:%llu, subject:%s, number of authorized clients:%li", &v8, 0x2Au);
  }
}