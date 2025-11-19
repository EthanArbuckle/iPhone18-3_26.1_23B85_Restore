__CFString *SAGeofenceEventTypeToString(unint64_t a1)
{
  if (a1 > 6)
  {
    return @"<invalid>";
  }

  else
  {
    return off_279B9C688[a1];
  }
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void TARegisterLogs()
{
  if (TARegisterLogs_onceToken != -1)
  {
    TARegisterLogs_cold_1();
  }
}

uint64_t __TARegisterLogs_block_invoke()
{
  v0 = os_log_create("com.apple.tracking-avoidance", "Status");
  v1 = TAStatusLog;
  TAStatusLog = v0;

  v2 = os_log_create("com.apple.tracking-avoidance", "Events");
  v3 = TAEventsLog;
  TAEventsLog = v2;

  v4 = os_log_create("com.apple.TrackingAvoidance", "SeparationAlerts");
  v5 = TASALog;
  TASALog = v4;

  v6 = os_log_create("com.apple.TrackingAvoidance", "SeparationAlertsEvents");
  v7 = TASAEventsLog;
  TASAEventsLog = v6;

  return MEMORY[0x2821F96F8](v6, v7);
}

void std::priority_queue<SAAlarmTask * {__strong},std::vector<SAAlarmTask * {__strong}>,SAAlarmClassCompare>::pop(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = (v3 - *a1) >> 3;
  if (v4 >= 2)
  {
    v5 = *v2;
    *v2 = 0;
    v6 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,SAAlarmClassCompare &,std::__wrap_iter<SAAlarmTask * {__strong}*>>(v2, &v14, v4);
    v7 = (v3 - 8);
    if (v7 == v6)
    {
      v12 = *v6;
      *v6 = v5;
    }

    else
    {
      v8 = *v7;
      *v7 = 0;
      v9 = *v6;
      *v6 = v8;
      v10 = (v6 + 1);

      v11 = *v7;
      *v7 = v5;

      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,SAAlarmClassCompare &,std::__wrap_iter<SAAlarmTask * {__strong}*>>(v2, v10, &v14, (v10 - v2) >> 3);
    }
  }

  v13 = *(a1 + 8);

  *(a1 + 8) = v13 - 8;
}

void std::vector<SAAlarmTask * {__strong}>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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

id std::vector<SAAlarmTask * {__strong}>::push_back[abi:ne200100](void *a1, id *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<SAAlarmTask * {__strong}>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v13[4] = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<SAAlarmTask * {__strong}>>(a1, v11);
    }

    v12 = (8 * v8);
    v13[0] = 0;
    v13[1] = v12;
    v13[3] = 0;
    *v12 = *a2;
    v13[2] = v12 + 1;
    std::vector<SAAlarmTask * {__strong}>::__swap_out_circular_buffer(a1, v13);
    v7 = a1[1];
    result = std::__split_buffer<SAAlarmTask * {__strong}>::~__split_buffer(v13);
  }

  else
  {
    result = *a2;
    *v5 = result;
    v7 = v5 + 1;
  }

  a1[1] = v7;
  return result;
}

void sub_26570F710(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<SAAlarmTask * {__strong}>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<SAAlarmTask * {__strong}>::__swap_out_circular_buffer(uint64_t a1, void *a2)
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

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279B9C680, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<SAAlarmTask * {__strong}>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

uint64_t std::__split_buffer<SAAlarmTask * {__strong}>::~__split_buffer(uint64_t a1)
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

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,SAAlarmClassCompare &,std::__wrap_iter<SAAlarmTask * {__strong}*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v7 = v4 >> 1;
    v8 = (a1 + 8 * (v4 >> 1));
    v9 = (a2 - 8);
    if (SAAlarmClassCompare::operator()(a3, *v8, *(a2 - 8)))
    {
      v10 = *v9;
      *v9 = 0;
      do
      {
        v11 = v8;
        v12 = *v8;
        *v8 = 0;
        v13 = *v9;
        *v9 = v12;

        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (a1 + 8 * v7);
        v9 = v11;
      }

      while (SAAlarmClassCompare::operator()(a3, *v8, v10));
      v14 = *v11;
      *v11 = v10;
    }
  }
}

BOOL SAAlarmClassCompare::operator()(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 fireDate];
  v6 = [v4 fireDate];
  v7 = [v5 compare:v6] == 1;

  return v7;
}

void sub_26570FAAC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void **std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,SAAlarmClassCompare &,std::__wrap_iter<SAAlarmTask * {__strong}*>>(void **a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[v6 + 1];
    v9 = (2 * v6) | 1;
    v10 = 2 * v6 + 2;
    if (v10 < a3)
    {
      v11 = SAAlarmClassCompare::operator()(a2, *v8, a1[v6 + 2]);
      if (v11)
      {
        v12 = 8;
      }

      else
      {
        v12 = 0;
      }

      v8 = (v8 + v12);
      if (v11)
      {
        v9 = v10;
      }
    }

    v13 = *v8;
    *v8 = 0;
    v14 = *a1;
    *a1 = v13;

    a1 = v8;
    v6 = v9;
  }

  while (v9 <= v7);
  return v8;
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x282136CD0](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}