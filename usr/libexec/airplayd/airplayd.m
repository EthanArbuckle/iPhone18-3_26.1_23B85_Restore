BOOL start()
{
  v0 = objc_autoreleasePoolPush();
  if (dword_100008010 <= 50 && (dword_100008010 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  bzero(v5, 0x400uLL);
  _set_user_dir_suffix();
  if (confstr(65537, v5, 0x400uLL))
  {
    if (dword_100008010 <= 50 && (dword_100008010 != -1 || _LogCategory_Initialize()))
    {
      getprogname();
LABEL_12:
      LogPrintF();
    }
  }

  else if (dword_100008010 <= 90 && (dword_100008010 != -1 || _LogCategory_Initialize()))
  {
    getprogname();
    v1 = __error();
    strerror(*v1);
    goto LABEL_12;
  }

  FigCommonMediaProcessInitialization();
  FigServer_SetAllowProcName();
  LogSetAppID();
  if (IsAppleInternalBuild())
  {
    LogControl();
  }

  else
  {
    LogControl();
    v2 = dlsym(0xFFFFFFFFFFFFFFFFLL, "MediaControlSenderLogControl");
    if (v2)
    {
      v2("?.*:output2=");
    }
  }

  LogControl();
  v3 = AirPlayXPCServicesStart();
  if (v3)
  {
    APSLogErrorAt();
    APSLogErrorAt();
    if (dword_100008010 <= 90 && (dword_100008010 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  else
  {
    [+[NSRunLoop currentRunLoop](NSRunLoop run];
  }

  objc_autoreleasePoolPop(v0);
  return v3 != 0;
}