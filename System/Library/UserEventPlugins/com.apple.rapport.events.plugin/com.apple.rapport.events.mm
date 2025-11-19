void RPUserEventPluginInit()
{
  if (dword_4170 <= 30 && (dword_4170 != -1 || _LogCategory_Initialize()))
  {
    sub_B44();
  }

  xpc_event_module_get_queue();
}

void sub_904(id a1, int a2)
{
  if (dword_4170 <= 30 && (dword_4170 != -1 || _LogCategory_Initialize()))
  {
    sub_B60();
  }

  sub_95C();
}

void sub_95C()
{
  v0 = CFPreferencesCopyValue(@"clServerEnabled", @"com.apple.rapport", @"mobile", kCFPreferencesCurrentHost);
  v1 = CFGetInt64();
  if (v0)
  {
    CFRelease(v0);
  }

  if (v1)
  {
    goto LABEL_7;
  }

  v2 = CFPreferencesCopyValue(@"clClientEnabled", @"com.apple.rapport", @"mobile", kCFPreferencesCurrentHost);
  v3 = CFGetInt64();
  if (v2)
  {
    CFRelease(v2);
  }

  if (v3)
  {
LABEL_7:
    if (!qword_41F0)
    {
      if (dword_4170 <= 30 && (dword_4170 != -1 || _LogCategory_Initialize()))
      {
        sub_B7C();
      }

      v4 = objc_alloc_init(RPClient);
      v5 = qword_41F0;
      qword_41F0 = v4;

      [qword_41F0 setDispatchQueue:qword_41E8];
      [qword_41F0 activateAssertionWithIdentifier:@"com.apple.rapport.KeepAlive"];
    }
  }

  else if (qword_41F0)
  {
    if (dword_4170 <= 30 && (dword_4170 != -1 || _LogCategory_Initialize()))
    {
      sub_BB0();
    }

    [qword_41F0 invalidate];
    v6 = qword_41F0;
    qword_41F0 = 0;
  }
}

void xpc_event_module_get_queue()
{
    ;
  }
}