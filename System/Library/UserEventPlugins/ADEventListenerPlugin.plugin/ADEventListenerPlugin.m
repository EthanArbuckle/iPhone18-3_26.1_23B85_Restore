id sub_EE0(uint64_t a1, uint64_t a2)
{
  v4 = gADEventListenerLogObject;
  if (os_log_type_enabled(gADEventListenerLogObject, OS_LOG_TYPE_DEBUG))
  {
    sub_1E4C(a2, v4);
  }

  return [*(a1 + 32) applicationStateChanged:a2];
}

void ADEventModuleInitializer()
{
  if (!qword_4E90)
  {
    v0 = objc_autoreleasePoolPush();
    v1 = [ADEventListener alloc];
    xpc_event_module_get_queue();
  }
}

void sub_11D8(uint64_t a1)
{
  v2 = gADEventListenerLogObject;
  if (os_log_type_enabled(gADEventListenerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 16);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "dumping session data:\nActive:\n%@", &v4, 0xCu);
  }
}

void sub_14FC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:*(a1 + 40)];
  if (!v3)
  {
    v3 = [[ADBundleSession alloc] initBundle:*(a1 + 40)];
    [*(*(a1 + 32) + 16) setObject:v3 forKeyedSubscript:*(a1 + 40)];
  }

  [v3 updateState:*(a1 + 56) at:*(a1 + 60) fromPid:*(a1 + 48)];

  objc_autoreleasePoolPop(v2);
}

void sub_1E4C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "appStateMonitor's handler was called with %@", &v2, 0xCu);
}

void xpc_event_module_get_queue()
{
    ;
  }
}