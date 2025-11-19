uint64_t (*BBUpdaterExtremeCreate())(void)
{
  if (_MergedGlobals == -1)
  {
    result = off_2A1397010;
    if (!off_2A1397010)
    {
      return result;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals, &__block_literal_global);
    result = off_2A1397010;
    if (!off_2A1397010)
    {
      return result;
    }
  }

  return result();
}

void sBBUpdaterLoadLibrary()
{
  if (access("/System/Library/Frameworks/CoreTelephony.framework", 0))
  {
    v0 = dlopen("/usr/lib/libBBUpdaterDynamic.dylib", 261);
    if (!v0)
    {
      fprintf(*MEMORY[0x29EDCA610], "failed loading %s\n", "/usr/lib/libBBUpdaterDynamic.dylib");
      off_2A1397018 = 0;
      off_2A1397020 = 0;
      off_2A1397010 = 0;
    }

    v1 = "BBUpdaterExtremeCreate";
    off_2A1397010 = dlsym(v0, "BBUpdaterExtremeCreate");
    if (!off_2A1397010 || (v1 = "BBUpdaterSetOptions", (off_2A1397018 = dlsym(v0, "BBUpdaterSetOptions")) == 0) || (v1 = "BBUpdaterExecCommand", (off_2A1397020 = dlsym(v0, "BBUpdaterExecCommand")) == 0))
    {
      syslog(3, "failed loading %s from %s\n", v1, "/usr/lib/libBBUpdaterDynamic.dylib");
      off_2A1397010 = 0;
      off_2A1397018 = 0;
      off_2A1397020 = 0;
    }
  }

  else
  {
    v2 = getprogname();
    syslog(5, "ummm...why is %s linking with libBBUpdaterDynamic.dylib?\n", v2);
  }
}

uint64_t BBUpdaterSetOptions()
{
  if (_MergedGlobals != -1)
  {
    dispatch_once(&_MergedGlobals, &__block_literal_global_3);
    v1 = off_2A1397018;
    if (off_2A1397018)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v1 = off_2A1397018;
  if (!off_2A1397018)
  {
    return 0;
  }

LABEL_3:

  return v1();
}

uint64_t BBUpdaterExecCommand()
{
  if (_MergedGlobals != -1)
  {
    dispatch_once(&_MergedGlobals, &__block_literal_global_6);
    v1 = off_2A1397020;
    if (off_2A1397020)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v1 = off_2A1397020;
  if (!off_2A1397020)
  {
    return 0;
  }

LABEL_3:

  return v1();
}