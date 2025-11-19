void sub_1000015BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  (*(v15 + 16))(v15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000015F8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100001610(uint64_t result)
{
  if (!*(*(*(result + 40) + 8) + 40))
  {
    return result;
  }

  v1 = result;
  if (dword_100008860 <= 90)
  {
    if (dword_100008860 != -1)
    {
LABEL_4:
      LogPrintF();
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      v4 = *(*(*(v1 + 40) + 8) + 40);
      goto LABEL_4;
    }
  }

LABEL_6:
  result = *(v1 + 32);
  if (result)
  {
    v2 = *(*(*(v1 + 40) + 8) + 40);
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_1000016EC(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (v5)
  {
    if (dword_100008860 <= 90 && (dword_100008860 != -1 || _LogCategory_Initialize()))
    {
      sub_100001D28();
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (v11)
    {
      v6 = objc_alloc_init(SpatialAudioProfileRecord);
      if (dword_100008860 <= 30 && (dword_100008860 != -1 || _LogCategory_Initialize()))
      {
        sub_100001D68();
      }

      v7 = +[SpatialAudioProfileDataFuzzer sharedInstance];
      v8 = [v11 soundProfileData];
      v9 = [v7 createNoiseSoundProfileFromData:v8];

      [v6 setProfileData:v9];
      if (dword_100008860 <= 30 && (dword_100008860 != -1 || _LogCategory_Initialize()))
      {
        sub_100001D84();
      }

      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v10 = *(a1 + 32);
      v6 = NSErrorF();
      (*(v10 + 16))(v10, 0, v6);
    }
  }
}

void sub_1000019E4(id a1)
{
  qword_100008990 = objc_alloc_init(SpatialAudioProfileDataFuzzer);

  _objc_release_x1();
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc_init(SpatialAudioProfileXPCService);
  v5 = +[NSXPCListener serviceListener];
  [v5 setDelegate:v4];
  [v5 resume];

  objc_autoreleasePoolPop(v3);
  return 0;
}

void sub_100001BE4(void *a1)
{
  v1 = [a1 xpcCnx];
  [v1 processIdentifier];
  LogPrintF();
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