void sub_100000D9C(id a1)
{
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_UTILITY, 0);
  v2 = dispatch_queue_create("com.apple.photossearchdiagnostics.filesystem", v1);
  v3 = qword_1000081C0;
  qword_1000081C0 = v2;
}

void sub_100001194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000011B8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000011D0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7 = 0;
  v3 = [NSString stringWithContentsOfURL:v2 encoding:4 error:&v7];
  v4 = v7;
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  dispatch_semaphore_signal(*(a1 + 40));
  if (v4 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "PhotosSearchDiagnostics found a file, but it could not get its contents because of: %@", buf, 0xCu);
  }
}

id sub_1000018F0(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 stringByAppendingString:*(&off_100004288 + a2 - 1)];
  v5 = [NSURL URLWithString:v4];

  return v5;
}