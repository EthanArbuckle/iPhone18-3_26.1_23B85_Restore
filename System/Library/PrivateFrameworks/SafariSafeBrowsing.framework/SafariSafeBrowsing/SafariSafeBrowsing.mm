uint64_t sub_1000006C0()
{
  if (qword_100008008 != -1)
  {
    sub_100000CAC();
  }

  return qword_100008000;
}

void sub_1000006F8(id a1)
{
  qword_100008000 = os_log_create("com.apple.Safari.SafeBrowsing", "Database");

  _objc_release_x1();
}

uint64_t sub_10000073C()
{
  if (qword_100008018 != -1)
  {
    sub_100000CC0();
  }

  return qword_100008010;
}

void sub_100000774(id a1)
{
  qword_100008010 = os_log_create("com.apple.Safari.SafeBrowsing", "Download");

  _objc_release_x1();
}

uint64_t sub_1000007B8()
{
  if (qword_100008028 != -1)
  {
    sub_100000CD4();
  }

  return qword_100008020;
}

void sub_1000007F0(id a1)
{
  qword_100008020 = os_log_create("com.apple.Safari.SafeBrowsing", "EnabledState");

  _objc_release_x1();
}

uint64_t sub_100000834()
{
  if (qword_100008038 != -1)
  {
    sub_100000CE8();
  }

  return qword_100008030;
}

void sub_10000086C(id a1)
{
  qword_100008030 = os_log_create("com.apple.Safari.SafeBrowsing", "FullHash");

  _objc_release_x1();
}

uint64_t sub_1000008B0()
{
  if (qword_100008048 != -1)
  {
    sub_100000CFC();
  }

  return qword_100008040;
}

void sub_1000008E8(id a1)
{
  qword_100008040 = os_log_create("com.apple.Safari.SafeBrowsing", "Lookup");

  _objc_release_x1();
}

uint64_t sub_10000092C()
{
  if (qword_100008058 != -1)
  {
    sub_100000D10();
  }

  return qword_100008050;
}

void sub_100000964(id a1)
{
  qword_100008050 = os_log_create("com.apple.Safari.SafeBrowsing", "Parser");

  _objc_release_x1();
}

uint64_t sub_1000009A8()
{
  if (qword_100008068 != -1)
  {
    sub_100000D24();
  }

  return qword_100008060;
}

void sub_1000009E0(id a1)
{
  qword_100008060 = os_log_create("com.apple.Safari.SafeBrowsing", "Platform");

  _objc_release_x1();
}

uint64_t sub_100000A24()
{
  if (qword_100008078 != -1)
  {
    sub_100000D38();
  }

  return qword_100008070;
}

void sub_100000A5C(id a1)
{
  qword_100008070 = os_log_create("com.apple.Safari.SafeBrowsing", "RemoteConfiguration");

  _objc_release_x1();
}

uint64_t sub_100000AA0()
{
  if (qword_100008088 != -1)
  {
    sub_100000D4C();
  }

  return qword_100008080;
}

void sub_100000AD8(id a1)
{
  qword_100008080 = os_log_create("com.apple.Safari.SafeBrowsing", "Sandbox");

  _objc_release_x1();
}

uint64_t sub_100000B1C()
{
  if (qword_100008098 != -1)
  {
    sub_100000D60();
  }

  return qword_100008090;
}

void sub_100000B54(id a1)
{
  qword_100008090 = os_log_create("com.apple.Safari.SafeBrowsing", "Service");

  _objc_release_x1();
}

uint64_t sub_100000B98()
{
  if (qword_1000080A8 != -1)
  {
    sub_100000D74();
  }

  return qword_1000080A0;
}

void sub_100000BD0(id a1)
{
  qword_1000080A0 = os_log_create("com.apple.Safari.SafeBrowsing", "XPC");

  _objc_release_x1();
}

uint64_t sub_100000C14()
{
  if (qword_1000080B8 != -1)
  {
    sub_100000D88();
  }

  return qword_1000080B0;
}

void sub_100000C4C(id a1)
{
  qword_1000080B0 = os_log_create("com.apple.Safari.SafeBrowsing", "DeviceIdentificationToken");

  _objc_release_x1();
}

void start()
{
  v0 = _set_user_dir_suffix();
  SafeBrowsing::Service::main(v0);
  sub_100000CAC();
}