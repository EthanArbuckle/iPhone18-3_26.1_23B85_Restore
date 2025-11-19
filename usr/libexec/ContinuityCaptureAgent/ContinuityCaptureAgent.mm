uint64_t start(int a1, uint64_t a2)
{
  if (a1 >= 2 && !strcmp(*(a2 + 8), "server"))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 136315138;
      v4 = "200.0.1";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "cca start, log version:%s", &v3, 0xCu);
    }

    if (!FigGetCFPreferenceBooleanWithDefault())
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v3) = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "cca force exiting, because the platform doesn't support it running as server", &v3, 2u);
      }

      [@"com.apple.cmio.registerassistantservice.system-extensions.matching" UTF8String];
      [@"com.apple.cmio.ContinuityCaptureAgent.extension.discovery" UTF8String];
      xpc_set_event();
      exit(0);
    }

    sub_100000BA8();
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v3) = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ContinuityCaptureAgent, exit", &v3, 2u);
  }

  return 0;
}

void sub_100000BA8()
{
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v0, "CMIOExtensionBundleIdentifier", "com.apple.cmio.ContinuityCaptureAgent");
  [@"com.apple.cmio.registerassistantservice.system-extensions.matching" UTF8String];
  [@"com.apple.cmio.ContinuityCaptureAgent.extension.discovery" UTF8String];
  xpc_set_event();

  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  TargetingWorkloopWithPriority = FigDispatchQueueCreateTargetingWorkloopWithPriority();

  v3 = +[NSFileManager defaultManager];
  v4 = [v3 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.portrait.BackgroundReplacement"];

  v5 = [[CMContinuityCaptureProvider alloc] initWithQueue:TargetingWorkloopWithPriority];
  v6 = qword_100008028;
  qword_100008028 = v5;

  if (qword_100008028)
  {
    [qword_100008028 activate];
    CFRunLoopRun();
  }
}