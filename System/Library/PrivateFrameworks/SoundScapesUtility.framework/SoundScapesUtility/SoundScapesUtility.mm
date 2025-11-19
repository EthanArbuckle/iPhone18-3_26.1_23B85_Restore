id _SSULoggingFacility()
{
  if (_SSULoggingFacility_onceToken != -1)
  {
    _SSULoggingFacility_cold_1();
  }

  v1 = _SSULoggingFacility_oslog;

  return v1;
}

void sub_26B2682C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}