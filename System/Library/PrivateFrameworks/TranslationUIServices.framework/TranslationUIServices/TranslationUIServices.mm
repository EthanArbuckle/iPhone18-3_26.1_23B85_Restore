uint64_t _LTOSLogOnboarding()
{
  if (_LTOSLogOnboarding_onceToken != -1)
  {
    _LTOSLogOnboarding_cold_1();
  }

  return _LTOSLogOnboarding_log;
}

uint64_t _LTOSLogSignpost()
{
  if (_LTOSLogSignpost_onceToken != -1)
  {
    _LTOSLogSignpost_cold_1();
  }

  return _LTOSLogSignpost_log;
}

uint64_t _LTOSLogSystemTranslation()
{
  if (_LTOSLogSystemTranslation_onceToken != -1)
  {
    _LTOSLogSystemTranslation_cold_1();
  }

  return _LTOSLogSystemTranslation_log;
}

uint64_t _LTOSLogXPC()
{
  if (_LTOSLogXPC_onceToken != -1)
  {
    _LTOSLogXPC_cold_1();
  }

  return _LTOSLogXPC_log;
}

void sub_26F4D47C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26F4D506C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}