@interface HandleSignal
@end

@implementation HandleSignal

void ___HandleSignal_block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  if (v1 <= 12)
  {
    if (v1 != 1 && v1 != 3)
    {
      goto LABEL_5;
    }

LABEL_13:
    v5 = _StatusKitAgentMainLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Quit - shutting down daemon", buf, 2u);
    }

    v6 = +[SKAStatusServer sharedInstance];
    [v6 shutdown];

    [gLocalStatusServer shutdown];
    v7 = _StatusKitAgentMainLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Quit - goodbye!", v9, 2u);
    }

    return;
  }

  switch(v1)
  {
    case 13:

      signal(2, _HandleSignal);
      break;
    case 29:
      v8 = +[SKAStatusServer sharedInstance];
      [v8 logState];

      break;
    case 15:
      goto LABEL_13;
    default:
LABEL_5:
      v3 = _StatusKitAgentMainLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
      {
        ___HandleSignal_block_invoke_cold_1(v2, v3);
      }

      return;
  }
}

void ___HandleSignal_block_invoke_cold_1(int *a1, NSObject *a2)
{
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Unhandled signal: %d", v3, 8u);
}

@end