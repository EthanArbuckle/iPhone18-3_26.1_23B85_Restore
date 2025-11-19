void sub_115C(id a1, NSString *a2, NSNumber *a3, BOOL *a4)
{
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    v7 = sub_1704(&qword_48E8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = 138412546;
      v9 = v5;
      v10 = 2112;
      v11 = v6;
      _os_log_debug_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%@, %@", &v8, 0x16u);
    }
  }
}

void sub_155C(id a1, NSString *a2, NSNumber *a3, BOOL *a4)
{
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    v7 = sub_1704(&qword_48E8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = 138412546;
      v9 = v5;
      v10 = 2112;
      v11 = v6;
      _os_log_debug_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "restoration identifier, %@, token, %@", &v8, 0x16u);
    }
  }
}

uint64_t initRoutinedEventAgent()
{
  qword_4900 = objc_opt_new();

  return _objc_release_x1();
}

id sub_1704(dispatch_once_t *predicate)
{
  if (*predicate != -1)
  {
    dispatch_once_f(predicate, predicate, sub_1764);
  }

  v2 = predicate[2];

  return v2;
}

os_log_t sub_1764(uint64_t a1)
{
  result = os_log_create("com.apple.CoreRoutine", *(a1 + 8));
  *(a1 + 16) = result;
  return result;
}

void xpc_event_provider_create()
{
    ;
  }
}

void xpc_event_provider_get_queue()
{
    ;
  }
}

void xpc_event_provider_token_fire()
{
    ;
  }
}