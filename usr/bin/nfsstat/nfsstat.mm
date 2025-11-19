uint64_t sub_1000008A8(__CFDictionary *a1, const char *a2, const void *a3)
{
  if (a1 && a2 && a3)
  {
    v6 = sub_100000970(a2);
    if (v6)
    {
      v7 = v6;
      CFDictionarySetValue(a1, v6, a3);
      CFRelease(v7);
      return 0;
    }

    else
    {
      fprintf(__stderrp, "*** %s: create_cfstr failed for %s \n", "json_dict_add_dict", a2);
      return 12;
    }
  }

  else
  {
    fprintf(__stderrp, "*** %s: dict, key or value is null \n", "json_dict_add_dict");
    return 22;
  }
}

__CFString *sub_100000970(const char *a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  v3 = Mutable;
  if (Mutable)
  {
    CFStringAppendCString(Mutable, a1, 0x8000100u);
    v5.length = CFStringGetLength(v3);
    v5.location = 0;
    CFStringFindAndReplace(v3, @"\n", @" ", v5, 0);
  }

  else
  {
    fprintf(__stderrp, "*** %s: CFStringCreateMutable failed \n", "create_cfstr");
  }

  return v3;
}

uint64_t sub_100000A18(__CFDictionary *a1, const char *a2, const void *a3)
{
  if (a1 && a2 && a3)
  {
    v6 = sub_100000970(a2);
    if (v6)
    {
      v7 = v6;
      CFDictionarySetValue(a1, v6, a3);
      CFRelease(v7);
      return 0;
    }

    else
    {
      fprintf(__stderrp, "*** %s: create_cfstr failed for %s \n", "json_dict_add_array", a2);
      return 12;
    }
  }

  else
  {
    fprintf(__stderrp, "*** %s: dict, key or value is null \n", "json_dict_add_array");
    return 22;
  }
}

uint64_t sub_100000AE0(__CFDictionary *a1, const char *a2, const void *a3, uint64_t a4)
{
  if (!a1 || !a2 || !a3)
  {
    fprintf(__stderrp, "*** %s: dict, key or value is null \n", "json_dict_add_num");
    return 22;
  }

  v8 = sub_100000970(a2);
  if (v8)
  {
    v9 = v8;
    v10 = a4 - 1;
    if (a4 - 1) < 8 && ((0x8Bu >> v10))
    {
      v11 = CFNumberCreate(0, qword_10000A9E0[v10], a3);
      if (v11)
      {
        v12 = v11;
        CFDictionarySetValue(a1, v9, v11);
        CFRelease(v9);
        CFRelease(v12);
        return 0;
      }

      fprintf(__stderrp, "*** %s: CFNumberCreate failed \n", "json_dict_add_num");
      CFRelease(v9);
      return 12;
    }

    fprintf(__stderrp, "*** %s: Unsupported size %zu \n", "json_dict_add_num", a4);
    CFRelease(v9);
    return 22;
  }

  fprintf(__stderrp, "*** %s: create_cfstr failed for %s \n", "json_dict_add_num", a2);
  return 12;
}

uint64_t sub_100000C54(__CFDictionary *a1, const char *a2, const char *a3)
{
  if (a1 && a2 && a3)
  {
    v6 = sub_100000970(a2);
    if (v6)
    {
      v7 = v6;
      v8 = sub_100000970(a3);
      if (v8)
      {
        v9 = v8;
        CFDictionarySetValue(a1, v7, v8);
        CFRelease(v7);
        CFRelease(v9);
        return 0;
      }

      fprintf(__stderrp, "*** %s: create_cfstr failed for %s \n", "json_dict_add_str", a3);
      CFRelease(v7);
    }

    else
    {
      fprintf(__stderrp, "*** %s: create_cfstr failed for %s \n", "json_dict_add_str", a2);
    }

    return 12;
  }

  else
  {
    fprintf(__stderrp, "*** %s: dict, key or value is null \n", "json_dict_add_str");
    return 22;
  }
}

uint64_t sub_100000D64(__CFArray *a1, const char *a2)
{
  if (a1 && a2)
  {
    v4 = sub_100000970(a2);
    if (v4)
    {
      v5 = v4;
      CFArrayAppendValue(a1, v4);
      CFRelease(v5);
      return 0;
    }

    else
    {
      fprintf(__stderrp, "*** %s: create_cfstr failed for %s \n", "json_arr_add_str", a2);
      return 12;
    }
  }

  else
  {
    fprintf(__stderrp, "*** %s: arr or value is null \n", "json_arr_add_str");
    return 22;
  }
}

uint64_t sub_100000E20(__CFArray *a1, const void *a2)
{
  if (a1 && a2)
  {
    CFArrayAppendValue(a1, a2);
    return 0;
  }

  else
  {
    fprintf(__stderrp, "*** %s: arr or value is null \n", "json_arr_add_dict");
    return 22;
  }
}

uint64_t sub_100000E78(void *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (![NSJSONSerialization isValidJSONObject:a1])
  {
    fprintf(__stderrp, "*** %s: Invalid JSON object \n", "json_print_cf_object");
    NSLog(@"%@", a1);
    v8 = 0;
    v6 = 0;
    v5 = 0;
    goto LABEL_6;
  }

  if (!a2)
  {
    v16 = 0;
    v9 = [NSJSONSerialization dataWithJSONObject:a1 options:3 error:&v16];
    v12 = v16;
    if (v12)
    {
      v8 = v12;
      NSLog(@"*** %s: dataWithJSONObject failed %@", "json_print_cf_object", v12);
    }

    else
    {
      v13 = +[NSFileHandle fileHandleWithStandardOutput];
      v15 = 0;
      [v13 writeData:v9 error:&v15];
      v8 = v15;

      if (!v8)
      {
        v6 = 0;
        v5 = 0;
        goto LABEL_12;
      }

      NSLog(@"*** %s: fileHandleWithStandardOutput failed %@", "json_print_cf_object", v8);
    }

    v6 = 0;
    v5 = 0;
    goto LABEL_7;
  }

  v5 = [[NSString alloc] initWithCString:a2 encoding:4];
  v6 = [NSOutputStream outputStreamToFileAtPath:v5 append:0];
  [v6 open];
  v14 = 0;
  [NSJSONSerialization writeJSONObject:a1 toStream:v6 options:3 error:&v14];
  v7 = v14;
  v8 = v7;
  if (!v7)
  {
    [v6 close];
    v9 = 0;
LABEL_12:
    v10 = 0;
    goto LABEL_8;
  }

  NSLog(@"*** %s: writeJSONObject failed %@", "json_print_cf_object", v7);
LABEL_6:
  v9 = 0;
LABEL_7:
  v10 = 22;
LABEL_8:

  objc_autoreleasePoolPop(v4);
  return v10;
}

uint64_t sub_100001098(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return printf("%s%s:\n");
  }

  else
  {
    return printf("%s");
  }
}

uint64_t sub_1000010E8(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  if (!a3)
  {
    return printf("%s%s:");
  }

  v3 = *a3;
  return printf("%s%s: 0x%x");
}

uint64_t sub_1000011A0(const char *a1, const char *a2, int a3, int a4, int a5, int a6, int a7)
{
  result = printf("%s%s: 0x%x %d %d %d: ", a1, a2, a3, a4, a5, a6);
  if (a7)
  {

    return puts("<invalid>");
  }

  return result;
}

uint64_t sub_10000120C(const char *a1, const char *a2, unsigned int a3, uint64_t a4)
{
  result = printf("%s @ %s", a1, a2);
  if (a3)
  {
    v7 = 0;
    while (1)
    {
      v8 = *(a4 + v7);
      if (!v8)
      {
        break;
      }

      if (v7)
      {
        v9 = ",";
      }

      else
      {
        v9 = " (";
      }

      result = printf("%s%s", v9, v8);
      v7 += 8;
      if (8 * a3 == v7)
      {

        return putchar(41);
      }
    }
  }

  return result;
}

uint64_t sub_1000012FC(unsigned int a1, unsigned __int8 *a2)
{
  printf("     fh %d ", a1);
  if (a1)
  {
    v4 = a1;
    do
    {
      v5 = *a2++;
      printf("%02x", v5);
      --v4;
    }

    while (v4);
  }

  return putchar(10);
}

uint64_t sub_1000013B8(uint64_t a1, const char *a2, uint64_t *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  printf("%12llu  %12llu  %12llu  %1ld:%02ld:%02ld  ", *(a1 + 133), *(a1 + 141), *(a1 + 149), a5, a6, a7);
  if (a4)
  {
    v11 = *(a1 + 1);
    printf("%-8u ");
  }

  else
  {
    v12 = *a3;
    printf("%-8.8s ");
  }

  return puts(a2);
}

uint64_t sub_100001454(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = &a9;
  if (a1 < 1)
  {
    putchar(10);
  }

  else
  {
    v9 = a1;
    v10 = a1;
    do
    {
      printf("%12.12s ", *v13);
      v13 += 2;
      --v10;
    }

    while (v10);
    putchar(10);
    v14 = &a9;
    do
    {
      v11 = v14;
      v14 += 2;
      printf("%12llu ", v11[1]);
      --v9;
    }

    while (v9);
  }

  return putchar(10);
}

uint64_t sub_10000152C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = &a9;
  if (a1 < 1)
  {
    putchar(10);
  }

  else
  {
    v9 = a1;
    v10 = a1;
    do
    {
      printf("%20.20s ", *v13);
      v13 += 2;
      --v10;
    }

    while (v10);
    putchar(10);
    v14 = &a9;
    do
    {
      v11 = v14;
      v14 += 2;
      printf("%20llu ", v11[1]);
      --v9;
    }

    while (v9);
  }

  return putchar(10);
}

uint64_t sub_100001604()
{
  result = qword_100010058;
  if (qword_100010058)
  {
    return sub_100000E78(qword_100010058, 0);
  }

  return result;
}

const void *sub_100001624(uint64_t a1, const char *a2)
{
  result = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v4 = result;
  if (dword_100010048 == -1)
  {
    v6 = 0;
  }

  else
  {
    if (a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = &unk_1000092A3;
    }

    result = sub_1000008A8(qword_100010058[dword_100010048], v5, result);
    v6 = dword_100010048 + 1;
  }

  dword_100010048 = v6;
  qword_100010058[v6] = v4;
  return result;
}

const void *sub_1000016C0()
{
  result = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v1 = result;
  if (dword_100010048 == -1)
  {
    v2 = 0;
  }

  else
  {
    result = sub_100000E20(*(&unk_1000100F8 + dword_10001004C), result);
    v2 = dword_100010048 + 1;
  }

  dword_100010048 = v2;
  qword_100010058[v2] = v1;
  return result;
}

uint64_t sub_100001764(uint64_t a1, const char *a2, _DWORD *a3)
{
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v6 = Mutable;
  if (a3)
  {
    sub_100001624(Mutable, a2);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    *__str = 0u;
    v12 = 0u;
    snprintf(__str, 0x80uLL, "0x%x", *a3);
    sub_100000C54(qword_100010058[dword_100010048], "Bitmask", __str);
    v7 = qword_100010058[dword_100010048];
    v8 = "Flags";
  }

  else
  {
    v7 = qword_100010058[dword_100010048];
    v8 = a2;
  }

  result = sub_100000A18(v7, v8, v6);
  v10 = ++dword_10001004C;
  qword_1000100F8[v10] = v6;
  return result;
}

uint64_t sub_10000188C(uint64_t a1, const char *a2, const char *a3)
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *__str = 0u;
  v5 = 0u;
  snprintf(__str, 0x80uLL, "%s%s", a2, a3);
  return sub_100000D64(*(&unk_1000100F8 + dword_10001004C), __str);
}

uint64_t sub_10000191C(uint64_t a1, const char *a2, uint64_t a3)
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *__str = 0u;
  v5 = 0u;
  snprintf(__str, 0x80uLL, "%s%ld", a2, a3);
  return sub_100000D64(*(&unk_1000100F8 + dword_10001004C), __str);
}

uint64_t sub_1000019AC(uint64_t result)
{
  --dword_10001004C;
  if (result)
  {
    --dword_100010048;
  }

  return result;
}

uint64_t sub_1000019D4(uint64_t a1, const char *a2, int a3, int a4, int a5, int a6, int a7)
{
  v12 = a4;
  v13 = a3;
  v10 = a6;
  v11 = a5;
  sub_100001624(a1, a2);
  sub_100000AE0(qword_100010058[dword_100010048], "Flags", &v13, 4);
  sub_100000AE0(qword_100010058[dword_100010048], "Loc", &v12, 4);
  sub_100000AE0(qword_100010058[dword_100010048], "Serv", &v11, 4);
  sub_100000AE0(qword_100010058[dword_100010048], "Addr", &v10, 4);
  if (a7)
  {
    v8 = "invalid";
  }

  else
  {
    v8 = "valid";
  }

  return sub_100000C54(qword_100010058[dword_100010048], "Status", v8);
}

uint64_t sub_100001AB8(const char *a1, const char *a2, int a3, const char **a4)
{
  LODWORD(v5) = a3;
  sub_100000C54(qword_100010058[dword_100010048], "Export", a1);
  v7 = sub_100000C54(qword_100010058[dword_100010048], "Server", a2);
  result = sub_100001764(v7, "Locations", 0);
  if (v5)
  {
    v5 = v5;
    do
    {
      if (!*a4)
      {
        break;
      }

      result = sub_100000D64(qword_1000100F8[dword_10001004C], *a4++);
      --v5;
    }

    while (v5);
  }

  --dword_10001004C;
  return result;
}

uint64_t sub_100001B7C(const char *a1, const char *a2)
{
  sub_100001624(a1, a2);
  v3 = qword_100010058[dword_100010048];

  return sub_100000C54(v3, "Mount Point", a1);
}

uint64_t sub_100001BD0(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  sub_100001624(a1, "filehandle");
  sub_100000AE0(qword_100010058[dword_100010048], "Length", &v6, 4);
  if (v6)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v4 += snprintf(v7 + v4, 257 - v4, "%02x", *(a2 + v3++));
    }

    while (v3 < v6);
  }

  result = sub_100000C54(qword_100010058[dword_100010048], "Handle", v7);
  --dword_100010048;
  return result;
}

uint64_t sub_100001D14(const char *a1)
{
  sub_100001624(a1, a1);
  sub_100000AE0(qword_100010058[dword_100010048], "Requests", a1 + 1025, 8);
  sub_100000AE0(qword_100010058[dword_100010048], "Read Bytes", a1 + 1033, 8);
  result = sub_100000AE0(qword_100010058[dword_100010048], "Write Bytes", a1 + 1041, 8);
  --dword_100010048;
  return result;
}

uint64_t sub_100001DB0(uint64_t a1, const char *a2, const char **a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  *v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  *__str = 0u;
  v16 = 0u;
  if (a4)
  {
    v11 = snprintf(__str, 0x80uLL, "%u@%s", *(a1 + 1), a2);
    sub_100001624(v11, __str);
    sub_100000AE0(qword_100010058[dword_100010048], "Uuid", (a1 + 1), 4);
  }

  else
  {
    v13 = snprintf(__str, 0x80uLL, "%s@%s", *a3, a2);
    sub_100001624(v13, __str);
    sub_100000C54(qword_100010058[dword_100010048], "User", *a3);
  }

  sub_100000AE0(qword_100010058[dword_100010048], "Requests", (a1 + 133), 8);
  sub_100000AE0(qword_100010058[dword_100010048], "Read Bytes", (a1 + 141), 8);
  sub_100000AE0(qword_100010058[dword_100010048], "Write Bytes", (a1 + 149), 8);
  snprintf(v23, 0x80uLL, "%1ld:%02ld:%02ld", a5, a6, a7);
  result = sub_100000C54(qword_100010058[dword_100010048], "Idle", v23);
  --dword_100010048;
  return result;
}

uint64_t sub_100001F78(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = &a9;
  if (result >= 1)
  {
    v9 = result;
    do
    {
      v10 = v13++;
      v11 = *v10;
      v13 = v10 + 2;
      v12 = v10[1];
      result = sub_100000AE0(qword_100010058[dword_100010048], v11, &v12, 8);
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t sub_100002000(uint64_t a1, char *__dst, unsigned int a3, int a4)
{
  if (a4)
  {
    v4 = a3;
  }

  else
  {
    v4 = (a3 + 3) & 0xFFFFFFFC;
  }

  if (!v4)
  {
    return 0;
  }

  v5 = a3;
  v8 = *(a1 + 32);
  while (v8)
  {
    if (v8 >= v4)
    {
      v9 = v4;
    }

    else
    {
      v9 = v8;
    }

    v10 = *(a1 + 24);
    if (v5)
    {
      if (v9 >= v5)
      {
        v11 = v5;
      }

      else
      {
        v11 = v9;
      }

      memmove(__dst, v10, v11);
      v10 = *(a1 + 24);
      v8 = *(a1 + 32);
      v9 = v11;
    }

    else
    {
      v11 = 0;
    }

    v8 -= v9;
    *(a1 + 24) = &v10[v9];
    *(a1 + 32) = v8;
    __dst += v11;
    if (v5)
    {
      v5 -= v9;
    }

    else
    {
      v5 = 0;
    }

    v4 -= v9;
    if (!v4)
    {
      return 0;
    }
  }

  return 12;
}

void start(int a1, char **a2)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 3;
  v8 = 3;
  while (1)
  {
    while (1)
    {
      v9 = v4;
      v10 = getopt(a1, a2, "w:sce34un:mvzEf:");
      v11 = v10;
      if (v10 <= 108)
      {
        break;
      }

      if (v10 <= 116)
      {
        if (v10 == 109)
        {
          v6 = 3;
          v4 = v9;
        }

        else if (v10 == 110)
        {
          v14 = optarg;
          if (!strcmp(optarg, "net"))
          {
            v5 |= 1u;
            v4 = v9;
          }

          else
          {
            if (!strcmp(v14, "user"))
            {
              v5 |= 2u;
            }

            else
            {
              puts("unsupported 'n' argument");
            }

            v4 = v9;
          }
        }

        else
        {
          v7 = 1;
          v4 = v9;
          if (v11 != 115)
          {
            goto LABEL_50;
          }
        }
      }

      else if (v10 > 118)
      {
        if (v10 == 119)
        {
          v4 = atoi(optarg);
          if ((v4 & 0x80000000) != 0)
          {
            printf("unsupported 'w' argument -- %d\n", v4);
            v4 = v9;
          }
        }

        else
        {
          if (v10 != 122)
          {
            goto LABEL_50;
          }

          v6 = 4;
          v4 = v9;
        }
      }

      else
      {
        if (v10 == 117)
        {
          v6 = 2;
        }

        else
        {
          ++dword_100010198;
        }

        v4 = v9;
      }
    }

    if (v10 > 98)
    {
      switch(v10)
      {
        case 'c':
          v7 = 2;
          v4 = v9;
          break;
        case 'e':
          v6 = 1;
          v4 = v9;
          break;
        case 'f':
          v12 = optarg;
          if (!strcmp(optarg, "JSON") || !strcmp(v12, "Json") || !strcmp(v12, "json"))
          {
            off_100010050 = off_10000C998;
            v13 = off_10000C998;
          }

          else
          {
            v13 = off_100010050;
          }

          (v13[3])(0, 0);
          v4 = v9;
          break;
        default:
          goto LABEL_50;
      }
    }

    else if (v10 <= 51)
    {
      if (v10 != 51)
      {
        if (v10 == -1)
        {
          if (v6 <= 2)
          {
            if (v6 == 1)
            {
              if (v9)
              {
                sub_1000025E4(v9);
              }

              sub_100002738();
            }

            else if (v6 == 2)
            {
              if (v9)
              {
                sub_100002830(v9, v5);
              }

              sub_1000029A4(v5);
            }

            else
            {
              if (v9)
              {
                sub_100002E58(v9, v7, v8);
              }

              sub_100003264(v7, v8);
            }
          }

          else if (v6 == 5)
          {
            sub_100002BF4(v7, v8);
          }

          else if (v6 == 4)
          {
            if (v7 >= 2)
            {
              sub_100002B2C();
            }

            if (v7)
            {
              sub_100002BCC();
            }
          }

          else
          {
            if (optind == a1)
            {
              v15 = 0;
            }

            else
            {
              v15 = a2[optind];
            }

            sub_100002444(v15, v8);
          }

          (*off_100010050)();
          exit(0);
        }

LABEL_50:
        fwrite("usage: nfsstat [-cse34uvmz] [-f JSON] [-w interval] [-n user|net]\n", 0x42uLL, 1uLL, __stderrp);
        exit(1);
      }

      v8 = 1;
      v4 = v9;
    }

    else if (v10 == 52)
    {
      v8 = 2;
      v4 = v9;
    }

    else
    {
      if (v10 != 69)
      {
        goto LABEL_50;
      }

      v6 = 5;
      v4 = v9;
    }
  }
}

void sub_100002444(char *a1, char a2)
{
  v11 = 0;
  bzero(v12, 0x400uLL);
  v9 = 0;
  v10 = 0;
  if (realpath_DARWIN_EXTSN(a1, v12))
  {
    a1 = v12;
  }

  v4 = getmntinfo(&v11, 2);
  if (!v4)
  {
    sub_100008AE8();
  }

  if (v4 >= 1)
  {
    v5 = 0;
    v6 = 2168 * v4;
    while (1)
    {
      v7 = v11;
      v8 = &v11[v5 / 0x878];
      if (a1)
      {
        if (strcmp(a1, v8->f_mntonname) || !strcmp(v8->f_fstypename, "autofs"))
        {
          goto LABEL_14;
        }
      }

      else if (strcmp(v8->f_fstypename, "nfs") || !strncmp(v8->f_mntfromname, "ftp:", 4uLL))
      {
        goto LABEL_14;
      }

      if (sub_100004528(&v7[v5 / 0x878].f_fsid, &v10, &v9))
      {
        warnx("Unable to get mount info for %s", v11[v5 / 0x878].f_mntonname);
      }

      else
      {
        sub_1000078D4(&v11[v5 / 0x878], v10, v9, a2);
      }

LABEL_14:
      v5 += 2168;
      if (v6 == v5)
      {
        if (v10)
        {
          free(v10);
        }

        return;
      }
    }
  }
}

void sub_1000025E4(unsigned int a1)
{
  *v7 = 0;
  v8 = 0;
  v9 = 0;
  signal(14, sub_1000047D0);
  byte_10001019C = 0;
  alarm(a1);
  v2 = 0;
  v3 = 0;
  v4 = 1;
  while (1)
  {
    if (!--v4)
    {
      printf("%12s  %12s  %12s\n", "Requests", "Read Bytes", "Write Bytes");
      fflush(__stdoutp);
      v4 = 20;
    }

    if (!sub_100004268(&v9, &v8))
    {
      v5 = v9;
      sub_1000081D0(v9, v2);
      v6 = v8;
      v8 = v3;
      v9 = v2;
      v2 = v5;
      v3 = v6;
    }

    fflush(__stdoutp);
    v7[1] = 0x2000;
    if (sigprocmask(1, &v7[1], v7) == -1)
    {
      goto LABEL_11;
    }

    if (!byte_10001019C)
    {
      v7[1] = 0;
      sigsuspend(&v7[1]);
    }

    if (sigprocmask(3, v7, 0) == -1)
    {
LABEL_11:
      err(1, "sigprocmask failed");
    }

    byte_10001019C = 0;
    alarm(a1);
  }
}

void sub_100002738()
{
  v6 = 0;
  v7 = 0;
  if (!sub_100004268(&v7, &v6))
  {
    v0 = v7;
    v1 = *(v7 + 4);
    if (v1)
    {
      (off_100010050[3])(0, "Exported Directory Info");
      (off_100010050[1])("%12s  %12s  %12s\n", "Requests", "Read Bytes", "Write Bytes");
      v2 = 0;
      v3 = 1;
      do
      {
        v4 = (off_100010050[14])(&v0[1049 * v2 + 12]);
        v2 = v3;
      }

      while (v1 > v3++);
      (off_100010050[5])(v4);
    }

    else
    {
      puts("No export stat data found");
    }

    free(v0);
  }
}

void sub_100002830(unsigned int a1, char a2)
{
  *v9 = 0;
  v10 = 0;
  v11 = 0;
  signal(14, sub_1000047D0);
  byte_10001019C = 0;
  alarm(a1);
  v4 = 0;
  v5 = 0;
  v6 = 1;
  while (1)
  {
    if (!--v6)
    {
      printf("%12s  %12s  %12s  %-7s  %-8s %s\n", "Requests", "Read Bytes", "Write Bytes", "Idle", "User", "IP Address");
      fflush(__stdoutp);
      v6 = 20;
    }

    if (!sub_1000043C8(&v11, &v10))
    {
      sub_100008784(v11, v4, a2);
      v8 = v10;
      v7 = v11;
      v10 = v5;
      v11 = v4;
      v4 = v7;
      v5 = v8;
    }

    fflush(__stdoutp);
    v9[1] = 0x2000;
    if (sigprocmask(1, &v9[1], v9) == -1)
    {
      goto LABEL_11;
    }

    if (!byte_10001019C)
    {
      v9[1] = 0;
      sigsuspend(&v9[1]);
    }

    if (sigprocmask(3, v9, 0) == -1)
    {
LABEL_11:
      err(1, "sigprocmask failed");
    }

    byte_10001019C = 0;
    alarm(a1);
  }
}

void sub_1000029A4(char a1)
{
  v11 = 0;
  v12 = 0;
  if (!sub_1000043C8(&v12, &v11))
  {
    v2 = v12;
    if (v12[1])
    {
      v3 = sub_10000837C(v12);
      if (v3)
      {
        v4 = v3;
        v5 = (off_100010050[3])(0, "NFS Active User Info");
        for (i = *v4; i; i = *i)
        {
          (off_100010050[3])(0, i[3] + 1);
          v7 = (off_100010050[1])("%12s  %12s  %12s  %-7s  %-8s %s\n", "Requests", "Read Bytes", "Write Bytes", "Idle", "User", "IP Address");
          for (j = i[2]; j; j = *j)
          {
            v7 = sub_100008518(j[2], a1);
          }

          v5 = (off_100010050[5])(v7);
        }

        (off_100010050[5])(v5);
        sub_10000871C(v4);
        free(v4);
        v9 = v2;
        goto LABEL_12;
      }

      v10 = "Not enough  memory for displaying active user statistics";
    }

    else
    {
      v10 = "No NFS active user statistics found.";
    }

    puts(v10);
    v9 = v2;
LABEL_12:
    free(v9);
  }
}

uint64_t sub_100002B2C()
{
  memset(&v1, 0, sizeof(v1));
  result = getvfsbyname("nfs", &v1);
  if ((result & 0x80000000) == 0)
  {
    v2[0] = 3;
    v2[1] = v1.vfc_typenum;
    v2[2] = 7;
    result = sysctl(v2, 3u, 0, 0, 0, 0);
    if ((result & 0x80000000) != 0)
    {
      sub_100008B04();
    }
  }

  return result;
}

uint64_t sub_100002BCC()
{
  result = nfssvc(128, 0);
  if ((result & 0x80000000) != 0)
  {
    sub_100008B20();
  }

  return result;
}

void sub_100002BF4(int a1, int a2)
{
  bzero(v26, 0x750uLL);
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  memset(v23, 0, sizeof(v23));
  if ((a1 & 2) != 0)
  {
    sub_1000040F4(v26);
    (off_100010050[3])(0, "NFS Client Errors Info");
    v4 = -4;
    v5 = 30;
    do
    {
      v4 += 4;
      v6 = v5 - 4;
      if (v5 >= 4)
      {
        v7 = 4;
      }

      else
      {
        v7 = v5;
      }

      v8 = sub_100004714(&v27, &off_10000C2D8, v4, v7);
      v5 = v6;
    }

    while (v4 < 0x1A);
    if ((a2 & 2) != 0)
    {
      (off_100010050[2])(v8);
      (off_100010050[3])(0, "NFSv4 Client Errors Info");
      v9 = -4;
      do
      {
        v9 += 4;
        v10 = sub_100004714(v28, &off_10000C4B8, v9, 4);
      }

      while (v9 < 0x24);
      v11 = (off_100010050[5])(v10);
      (off_100010050[2])(v11);
      (off_100010050[3])(0, "NFSv4.1 Client Errors Info");
      v12 = 36;
      v13 = 38;
      do
      {
        v14 = v13 - 4;
        if (v13 >= 4)
        {
          v15 = 4;
        }

        else
        {
          v15 = v13;
        }

        v12 += 4;
        v16 = sub_100004714(v28, &off_10000C4B8, v12, v15);
        v13 = v14;
      }

      while (v12 < 0x4A);
      v8 = (off_100010050[5])(v16);
    }

    (off_100010050[5])(v8);
  }

  if (a1 & a2)
  {
    v17 = sub_1000041B0(v23);
    if ((a1 & 2) != 0)
    {
      (off_100010050[2])(v17);
    }

    (off_100010050[3])(0, "NFS Server Errors Info");
    v18 = -4;
    v19 = 30;
    do
    {
      v18 += 4;
      v20 = v19 - 4;
      if (v19 >= 4)
      {
        v21 = 4;
      }

      else
      {
        v21 = v19;
      }

      v22 = sub_100004714(v24, &off_10000C2D8, v18, v21);
      v19 = v20;
    }

    while (v18 < 0x1A);
    (off_100010050[5])(v22);
  }
}

void sub_100002E58(unsigned int a1, unsigned __int8 a2, char a3)
{
  bzero(v73, 0x750uLL);
  v72 = 0;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  *v41 = 0;
  signal(14, sub_1000047D0);
  byte_10001019C = 0;
  v38 = a1;
  alarm(a1);
  v20 = 0;
  v21 = 0;
  v17 = 0;
  v18 = 0;
  v28 = 0;
  v29 = 0;
  v25 = 0;
  v26 = 0;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v19 = 0;
  v36 = 0;
  v37 = 0;
  v34 = 0;
  v35 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v30 = 0;
  v27 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v15 = a3 & 1;
  v16 = a3;
  v39 = a3 & 1 & a2;
  v14 = 1;
  while (1)
  {
    if (!--v14)
    {
      sub_1000047E0();
      v14 = 20;
    }

    if ((a2 & 2) != 0)
    {
      sub_1000040F4(v73);
      if (v15)
      {
        printf("Client v3: %8llu %8llu %8llu %8llu %8llu %8llu %8llu %8llu %8llu %8llu\n", v74 - v21, v75 - v18, v77 - v26, v78 - v25, v79 - v20, v80 - v24, v76 - v28, v81 - (v17 + v23) + v82, v83 - v22, v84 - v19);
      }

      if ((v16 & 2) != 0)
      {
        printf("Client v4: %8llu %8llu %8llu %8llu %8llu %8llu %8llu %8llu %8llu %8llu\n", v86 - v34, v89 - v32, v92 - v29, v90 - v31, v94 - v27, v93 - v30, v85 - v37, v91 - v33, v87 - v36, v88 - v35);
      }

      v28 = v76;
      v25 = v78;
      v26 = v77;
      v20 = v79;
      v21 = v74;
      v23 = v81;
      v24 = v80;
      v17 = v82;
      v18 = v75;
      v22 = v83;
      v19 = v84;
      v36 = v87;
      v37 = v85;
      v34 = v86;
      v35 = v88;
      v31 = v90;
      v32 = v89;
      v33 = v91;
      v29 = v92;
      v30 = v93;
      v27 = v94;
    }

    if (v39)
    {
      sub_1000041B0(&v42);
      printf("Server v3: %8llu %8llu %8llu %8llu %8llu %8llu %8llu %8llu\n", *(&v42 + 1) - v5, *(&v43 + 1) - v6, *(&v44 + 1) - v8, v45 - v9, *(&v45 + 1) - v10, v49 - v11, v44 - v7, v50 - (v13 + v12) + *(&v50 + 1));
      v5 = *(&v42 + 1);
      v6 = *(&v43 + 1);
      v8 = *(&v44 + 1);
      v7 = v44;
      v10 = *(&v45 + 1);
      v9 = v45;
      v11 = v49;
      v13 = *(&v50 + 1);
      v12 = v50;
    }

    fflush(__stdoutp);
    v41[1] = 0x2000;
    if (sigprocmask(1, &v41[1], v41) == -1)
    {
      goto LABEL_17;
    }

    if (!byte_10001019C)
    {
      v41[1] = 0;
      sigsuspend(&v41[1]);
    }

    if (sigprocmask(3, v41, 0) == -1)
    {
LABEL_17:
      err(1, "sigprocmask failed");
    }

    byte_10001019C = 0;
    alarm(v38);
  }
}

void sub_100003264(int a1, int a2)
{
  bzero(&v24, 0x750uLL);
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  if ((a1 & 2) == 0)
  {
    if ((a2 & a1 & 1) == 0)
    {
      return;
    }

    sub_1000041B0(v22);
    goto LABEL_10;
  }

  sub_1000040F4(&v24);
  (off_100010050[3])(0, "Client Info");
  if (a2)
  {
    (off_100010050[3])(0, "NFSv3 RPC Counts");
    (off_100010050[16])(6);
    (off_100010050[16])(6);
    (off_100010050[16])(6);
    v4 = (off_100010050[16])(4);
    (off_100010050[5])(v4);
    (off_100010050[3])(0, "NLM RPC Counts");
    v5 = (off_100010050[16])(3);
    (off_100010050[5])(v5);
  }

  if ((a2 & 2) != 0)
  {
    (off_100010050[3])(0, "NFSv4 RPC Counts");
    v6 = (off_100010050[16])(2);
    (off_100010050[5])(v6);
    (off_100010050[3])(0, "NFSv4 Operation Counts");
    (off_100010050[16])(6);
    (off_100010050[16])(6);
    (off_100010050[16])(6);
    (off_100010050[16])(6);
    (off_100010050[16])(6);
    (off_100010050[16])(6);
    v7 = (off_100010050[16])(1);
    (off_100010050[5])(v7);
    (off_100010050[3])(0, "NFSv4.1 Operation Counts");
    (off_100010050[16])(6);
    (off_100010050[16])(6);
    (off_100010050[16])(6);
    v8 = (off_100010050[16])(1);
    (off_100010050[5])(v8);
    (off_100010050[3])(0, "NFSv4 Callback RPC Counts");
    v9 = (off_100010050[16])(2);
    (off_100010050[5])(v9);
    (off_100010050[3])(0, "NFSv4 Callback Operation Counts");
    v10 = (off_100010050[16])(2);
    (off_100010050[5])(v10);
    (off_100010050[3])(0, "NFSv4.1 Callback Operation Counts");
    (off_100010050[16])(6);
    v11 = (off_100010050[16])(4);
    (off_100010050[5])(v11);
  }

  (off_100010050[3])(0, "RPC Info");
  v12 = (off_100010050[16])(5);
  (off_100010050[5])(v12);
  (off_100010050[3])(0, "Cache Info");
  (off_100010050[16])(6);
  (off_100010050[16])(6);
  v13 = (off_100010050[16])(4);
  (off_100010050[5])(v13);
  (off_100010050[3])(0, "Paging Info");
  v14 = (off_100010050[16])(2);
  v15 = (off_100010050[5])(v14);
  (off_100010050[5])(v15);
  if ((a2 & 1 & a1) != 0)
  {
    v16 = sub_1000041B0(v22);
    (off_100010050[2])(v16);
LABEL_10:
    (off_100010050[3])(0, "Server Info");
    (off_100010050[3])(0, "RPC Counts");
    (off_100010050[16])(6);
    (off_100010050[16])(6);
    (off_100010050[16])(6);
    v17 = (off_100010050[16])(3);
    (off_100010050[5])(v17);
    (off_100010050[3])(0, "Server Faults");
    v18 = (off_100010050[16])(2);
    (off_100010050[5])(v18);
    (off_100010050[3])(0, "Server Cache Stats");
    v19 = (off_100010050[16])(4);
    (off_100010050[5])(v19);
    (off_100010050[3])(0, "Server Write Gathering");
    v20 = (off_100010050[16])(3);
    v21 = (off_100010050[5])(v20);
    (off_100010050[5])(v21);
  }
}

uint64_t sub_1000040F4(void *a1)
{
  v3 = 1872;
  memset(&v4, 0, sizeof(v4));
  bzero(a1, 0x750uLL);
  result = getvfsbyname("nfs", &v4);
  if ((result & 0x80000000) == 0)
  {
    v5[0] = 3;
    v5[1] = v4.vfc_typenum;
    v5[2] = 1;
    result = sysctl(v5, 3u, a1, &v3, 0, 0);
    if ((result & 0x80000000) != 0)
    {
      sub_100008B04();
    }
  }

  return result;
}

uint64_t sub_1000041B0(uint64_t a1)
{
  v2 = 488;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0;
  v3[0] = a1;
  v3[1] = 488;
  v3[2] = &v2;
  v3[3] = 8;
  result = nfssvc(256, v3);
  if ((result & 0x80000000) != 0)
  {
    sub_100008B20();
  }

  return result;
}

uint64_t sub_100004268(void **a1, size_t *a2)
{
  v4 = *a1;
  if (!*a1)
  {
    *a2 = 0x8000;
    v5 = malloc_type_malloc(0x8000uLL, 0x92D37354uLL);
    *a1 = v5;
    if (!v5)
    {
      warnx("No memory for reading export stat data");
      return 1;
    }

    v6 = *a2;
    __memset_chk();
    v4 = *a1;
  }

  v7 = *a2;
  v11 = v4;
  v12 = v7;
  v13 = a2;
  v14 = 8;
  if (nfssvc(16, &v11) < 0)
  {
    sub_100008B20();
  }

  if (v7 <= *a2)
  {
    goto LABEL_8;
  }

  free(*a1);
  *a2 = v7 + 4196;
  v8 = malloc_type_malloc(v7 + 4196, 0xCC8CBCB9uLL);
  *a1 = v8;
  if (!v8)
  {
    warnx("No memory for reading export statistics");
    return 1;
  }

  bzero(v8, *a2);
  v9 = *a2;
  v11 = *a1;
  v12 = v9;
  v13 = a2;
  v14 = 8;
  if (nfssvc(16, &v11) < 0)
  {
    sub_100008B5C(a1);
  }

LABEL_8:
  if (**a1 != 1)
  {
    sub_100008B3C(*a1);
  }

  return 0;
}

uint64_t sub_1000043C8(void **a1, size_t *a2)
{
  v4 = *a1;
  if (!*a1)
  {
    *a2 = 0x20000;
    v5 = malloc_type_malloc(0x20000uLL, 0xC1490C03uLL);
    *a1 = v5;
    if (!v5)
    {
      warnx("No memory for reading active user statistics");
      return 1;
    }

    v6 = *a2;
    __memset_chk();
    v4 = *a1;
  }

  v7 = *a2;
  v11 = v4;
  v12 = v7;
  v13 = a2;
  v14 = 8;
  if (nfssvc(32, &v11) < 0)
  {
    sub_100008B20();
  }

  if (v7 <= *a2)
  {
    goto LABEL_8;
  }

  free(*a1);
  *a2 = v7 + 5130;
  v8 = malloc_type_malloc(v7 + 5130, 0xAD161973uLL);
  *a1 = v8;
  if (!v8)
  {
    warnx("No memory for reading active user statistics\n");
    return 1;
  }

  bzero(v8, *a2);
  v9 = *a2;
  v11 = *a1;
  v12 = v9;
  v13 = a2;
  v14 = 8;
  if (nfssvc(32, &v11) < 0)
  {
    sub_100008B5C(a1);
  }

LABEL_8:
  if (**a1 != 1)
  {
    sub_100008B80(*a1);
  }

  return 0;
}

uint64_t sub_100004528(unsigned int *a1, void **a2, size_t *a3)
{
  if (!*a2)
  {
    *a3 = 4096;
    v6 = malloc_type_malloc(0x1000uLL, 0xAA6B8D70uLL);
    *a2 = v6;
    if (!v6)
    {
      warnx("No memory for reading mount information");
      return 12;
    }

    v7 = *a3;
    __memset_chk();
  }

  memset(&v14, 0, sizeof(v14));
  if (getvfsbyname("nfs", &v14) < 0)
  {
    sub_100008BA0();
  }

  v15[0] = 3;
  v15[1] = v14.vfc_typenum;
  v15[2] = 6;
  v8 = *a2;
  *v8 = bswap32(*a1);
  v8[1] = bswap32(a1[1]);
  size = *a3;
  if (sysctl(v15, 3u, v8, &size, 0, 0) < 0)
  {
    goto LABEL_12;
  }

  if (size <= *a3)
  {
    goto LABEL_9;
  }

  free(*a2);
  v9 = size;
  *a3 = size;
  v10 = malloc_type_malloc(v9, 0x22108FA5uLL);
  *a2 = v10;
  if (!v10)
  {
    warnx("No memory for reading mount information\n");
    return 12;
  }

  bzero(v10, *a3);
  v11 = *a2;
  *v11 = bswap32(*a1);
  v11[1] = bswap32(a1[1]);
  size = *a3;
  if (sysctl(v15, 3u, v11, &size, 0, 0) < 0)
  {
LABEL_12:
    warn("sysctl failed");
    return *__error();
  }

LABEL_9:
  if (!**a2)
  {
    return 0;
  }

  warnx("NFS mount information version mismatch");
  return 72;
}

uint64_t sub_100004714(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v4 = (a2 + 16 * a3);
  v5 = *v4;
  v6 = *(a1 + 8 * *(v4 + 3));
  if (a4 >= 2)
  {
    v7 = v4[2];
    v8 = *(a1 + 8 * *(v4 + 7));
    if (a4 != 2)
    {
      v10 = v4[4];
      v11 = *(a1 + 8 * *(v4 + 11));
      if (a4 >= 4)
      {
        v12 = v4[6];
        v13 = *(a1 + 8 * *(v4 + 15));
      }
    }
  }

  return (off_100010050[17])(a4);
}

uint64_t sub_1000047E0()
{
  printf("        %8.8s %8.8s %8.8s %8.8s %8.8s %8.8s %8.8s %8.8s %8.8s %8.8s\n", "Getattr", "Lookup", "Readlink", "Read", "Write", "Rename", "Access", "Readdir", "Lock", "Unlock");
  v0 = __stdoutp;

  return fflush(v0);
}

void sub_100004888(uint64_t a1)
{
  v2 = *(a1 + 452);
  v3 = *(a1 + 456);
  if (v2)
  {
    v4 = 0;
    while (v3)
    {
      v5 = &v3[3 * v4];
      if (*(v5 + 4))
      {
        v6 = 0;
        while (*v5)
        {
          v7 = v3[3 * v4];
          if (*(v7 + 24 * v6 + 16))
          {
            v8 = 0;
            do
            {
              v9 = *(v7 + 24 * v6 + 8);
              if (v9)
              {
                v10 = *(v9 + 8 * v8);
                if (v10)
                {
                  free(v10);
                  *(*(*(*(a1 + 456) + 24 * v4) + 24 * v6 + 8) + 8 * v8) = 0;
                  v3 = *(a1 + 456);
                }
              }

              ++v8;
              v7 = v3[3 * v4];
            }

            while (v8 < *(v7 + 24 * v6 + 16));
          }

          if (*(v7 + 24 * v6 + 8))
          {
            free(*(v7 + 24 * v6 + 8));
            v3 = *(a1 + 456);
            v7 = v3[3 * v4];
            *(v7 + 24 * v6 + 8) = 0;
          }

          v11 = v7 + 24 * v6;
          *(v11 + 16) = 0;
          v12 = *v11;
          if (v12)
          {
            free(v12);
            v3 = *(a1 + 456);
            *(v3[3 * v4] + 24 * v6) = 0;
          }

          ++v6;
          v5 = &v3[3 * v4];
          if (v6 >= *(v5 + 4))
          {
            goto LABEL_18;
          }
        }
      }

      else
      {
LABEL_18:
        v13 = *v5;
        if (v13)
        {
          free(v13);
          v3 = *(a1 + 456);
          v3[3 * v4] = 0;
        }
      }

      v14 = &v3[3 * v4];
      *(v14 + 4) = 0;
      if (*(v14 + 5))
      {
        v15 = 0;
        do
        {
          v16 = v3[3 * v4 + 1];
          if (v16)
          {
            v17 = *(v16 + 8 * v15);
            if (v17)
            {
              free(v17);
              *(*(*(a1 + 456) + 24 * v4 + 8) + 8 * v15) = 0;
              v3 = *(a1 + 456);
            }
          }

          ++v15;
        }

        while (v15 < HIDWORD(v3[3 * v4 + 2]));
      }

      if (v3[3 * v4 + 1])
      {
        free(v3[3 * v4 + 1]);
        v3 = *(a1 + 456);
        v3[3 * v4 + 1] = 0;
      }

      HIDWORD(v3[3 * v4++ + 2]) = 0;
      if (v4 >= *(a1 + 452))
      {
        goto LABEL_31;
      }
    }
  }

  else if (v3)
  {
LABEL_31:
    free(v3);
    *(a1 + 456) = 0;
  }

  *(a1 + 452) = 0;
  v18 = *(a1 + 464);
  if (v18)
  {
    free(v18);
    *(a1 + 464) = 0;
  }

  v19 = *(a1 + 24);
  if (v19)
  {
    free(v19);
    *(a1 + 24) = 0;
  }

  v20 = *(a1 + 32);
  if (v20)
  {
    free(v20);
    *(a1 + 32) = 0;
  }

  v21 = *(a1 + 40);
  if (v21)
  {
    free(v21);
    *(a1 + 40) = 0;
  }

  v22 = *(a1 + 256);
  if (v22)
  {
    free(v22);
    *(a1 + 256) = 0;
  }

  v23 = *(a1 + 264);
  if (v23)
  {
    free(v23);
    *(a1 + 264) = 0;
  }
}

uint64_t sub_100004ADC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 < 9)
  {
    return 72;
  }

  __dst = 0;
  *a3 = 0;
  v6 = sub_100002000(a1, &__dst, 4u, 0);
  if (v6)
  {
    if (*a3 <= 0x58u)
    {
      v7 = v6;
LABEL_7:
      v9 = 0;
      goto LABEL_8;
    }

    return 72;
  }

  v8 = bswap32(__dst);
  *a3 = v8;
  if (v8 > 0x58)
  {
    return 72;
  }

  __dst = 0;
  v7 = sub_100002000(a1, &__dst, 4u, 0);
  if (v7)
  {
    goto LABEL_7;
  }

  v9 = bswap32(__dst);
LABEL_8:
  if (v9 != a2)
  {
    return 72;
  }

  __dst = 0;
  if (v7)
  {
    goto LABEL_11;
  }

  v7 = sub_100002000(a1, &__dst, 4u, 0);
  if (v7)
  {
    goto LABEL_11;
  }

  if (__dst)
  {
    return 22;
  }

  __dst = 0;
  v7 = sub_100002000(a1, &__dst, 4u, 0);
  if (v7)
  {
    goto LABEL_11;
  }

  v13 = bswap32(__dst);
  if (v13 >= 2)
  {
    v14 = 2;
  }

  else
  {
    v14 = v13;
  }

  if (__dst)
  {
    v7 = 0;
    v15 = (a3 + 8);
    v16 = v14;
    do
    {
      __dst = 0;
      *v15 = 0;
      if (!v7)
      {
        v7 = sub_100002000(a1, &__dst, 4u, 0);
        if (!v7)
        {
          *v15 = bswap32(__dst);
        }
      }

      ++v15;
      --v16;
    }

    while (v16);
    if (v7)
    {
      goto LABEL_11;
    }
  }

  else
  {
    LODWORD(v14) = 0;
  }

  if (v14 >= v13)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    do
    {
      if (!v7)
      {
        v17 = *(a1 + 32);
        v18 = 4;
        while (v17)
        {
          if (v17 >= v18)
          {
            v19 = v18;
          }

          else
          {
            v19 = v17;
          }

          v17 -= v19;
          *(a1 + 24) += v19;
          *(a1 + 32) = v17;
          v18 -= v19;
          if (!v18)
          {
            v7 = 0;
            goto LABEL_42;
          }
        }

        v7 = 72;
      }

LABEL_42:
      LODWORD(v14) = v14 + 1;
    }

    while (v14 != v13);
    LODWORD(v14) = v13;
  }

  if (v14 <= 1)
  {
    v20 = v13;
    do
    {
      v21 = v20;
      *(a3 + 8 + 4 * v20) = 0;
      v20 = 1;
    }

    while (!v21);
  }

  __dst = 0;
  if (v7 || (v7 = sub_100002000(a1, &__dst, 4u, 0), v7))
  {
LABEL_11:
    v10 = a3 + 8;
    if ((*(a3 + 8) & 1) == 0)
    {
      LODWORD(v11) = 0;
      goto LABEL_79;
    }

    goto LABEL_78;
  }

  if (bswap32(__dst) > a2 - 4 * v13 - 20)
  {
    return 22;
  }

  v10 = a3 + 8;
  v22 = *(a3 + 8);
  if (v22)
  {
    __dst = 0;
    v23 = sub_100002000(a1, &__dst, 4u, 0);
    if (!v23)
    {
      v133 = __dst;
      if (__dst)
      {
        __dst = 0;
        *(a3 + 16) = 0;
        v23 = sub_100002000(a1, &__dst, 4u, 0);
        if (v23)
        {
          goto LABEL_77;
        }

        *(a3 + 16) = bswap32(__dst);
        v134 = 1;
      }

      else
      {
        v134 = 0;
      }

      v135 = bswap32(v133);
      if (v134 >= v135)
      {
        if (!v133)
        {
          *(a3 + 16) = 0;
        }

        __dst = 0;
      }

      else
      {
        v7 = 0;
        do
        {
          if (!v7)
          {
            v136 = *(a1 + 32);
            v137 = 4;
            while (v136)
            {
              if (v136 >= v137)
              {
                v138 = v137;
              }

              else
              {
                v138 = v136;
              }

              v136 -= v138;
              *(a1 + 24) += v138;
              *(a1 + 32) = v136;
              v137 -= v138;
              if (!v137)
              {
                v7 = 0;
                goto LABEL_516;
              }
            }

            v7 = 72;
          }

LABEL_516:
          ++v134;
        }

        while (v134 != v135);
        __dst = 0;
        if (v7)
        {
          goto LABEL_78;
        }
      }

      v23 = sub_100002000(a1, &__dst, 4u, 0);
      if (!v23)
      {
        v139 = __dst;
        if (__dst)
        {
          __dst = 0;
          *(a3 + 20) = 0;
          v23 = sub_100002000(a1, &__dst, 4u, 0);
          if (v23)
          {
            goto LABEL_77;
          }

          *(a3 + 20) = bswap32(__dst);
          v140 = 1;
        }

        else
        {
          v140 = 0;
        }

        LODWORD(v11) = bswap32(v139);
        if (v140 >= v11)
        {
          v7 = 0;
          if (!v139)
          {
            *(a3 + 20) = 0;
          }
        }

        else
        {
          v7 = 0;
          do
          {
            if (!v7)
            {
              v141 = *(a1 + 32);
              v142 = 4;
              while (v141)
              {
                if (v141 >= v142)
                {
                  v143 = v142;
                }

                else
                {
                  v143 = v141;
                }

                v141 -= v143;
                *(a1 + 24) += v143;
                *(a1 + 32) = v141;
                v142 -= v143;
                if (!v142)
                {
                  v7 = 0;
                  goto LABEL_547;
                }
              }

              v7 = 72;
            }

LABEL_547:
            ++v140;
          }

          while (v140 != v11);
        }

LABEL_79:
        v24 = *v10;
        if ((*v10 & 2) == 0)
        {
          if ((v24 & 4) == 0)
          {
            goto LABEL_81;
          }

          goto LABEL_97;
        }

        __dst = 0;
        *(a3 + 48) = 0;
        v25 = (a3 + 48);
        if (v7)
        {
LABEL_96:
          v24 = *v10;
          if ((*v10 & 4) == 0)
          {
LABEL_81:
            if ((v24 & 0x8000000) == 0)
            {
              goto LABEL_82;
            }

            goto LABEL_101;
          }

LABEL_97:
          __dst = 0;
          *(a3 + 52) = 0;
          v26 = (a3 + 52);
          if (v7)
          {
            goto LABEL_100;
          }

          goto LABEL_98;
        }

LABEL_94:
        v7 = sub_100002000(a1, &__dst, 4u, 0);
        if (!v7)
        {
          *v25 = bswap32(__dst);
        }

        goto LABEL_96;
      }
    }

LABEL_77:
    v7 = v23;
LABEL_78:
    LODWORD(v11) = 1;
    goto LABEL_79;
  }

  if ((v22 & 2) != 0)
  {
    LODWORD(v11) = 0;
    __dst = 0;
    *(a3 + 48) = 0;
    v25 = (a3 + 48);
    goto LABEL_94;
  }

  if ((v22 & 4) != 0)
  {
    LODWORD(v11) = 0;
    __dst = 0;
    *(a3 + 52) = 0;
    v26 = (a3 + 52);
LABEL_98:
    v7 = sub_100002000(a1, &__dst, 4u, 0);
    if (!v7)
    {
      *v26 = bswap32(__dst);
    }

LABEL_100:
    v24 = *v10;
    if ((*v10 & 0x8000000) == 0)
    {
LABEL_82:
      if ((v24 & 8) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_106;
    }

LABEL_101:
    __dst = 0;
    *(a3 + 56) = 0;
    if (v7)
    {
      goto LABEL_104;
    }

    goto LABEL_102;
  }

  if ((v22 & 0x8000000) != 0)
  {
    LODWORD(v11) = 0;
    __dst = 0;
    *(a3 + 56) = 0;
LABEL_102:
    v27 = sub_100002000(a1, &__dst, 4u, 0);
    if (!v27)
    {
      v39 = bswap32(__dst);
      __dst = 0;
      *(a3 + 56) = v39;
      v7 = sub_100002000(a1, &__dst, 4u, 0);
      if (!v7)
      {
        *(a3 + 60) = bswap32(__dst);
      }

LABEL_105:
      v24 = *v10;
      if ((*v10 & 8) == 0)
      {
LABEL_83:
        if ((v24 & 0x10) == 0)
        {
          goto LABEL_84;
        }

        goto LABEL_110;
      }

LABEL_106:
      __dst = 0;
      *(a3 + 64) = 0;
      v28 = (a3 + 64);
      if (v7)
      {
        goto LABEL_109;
      }

      goto LABEL_107;
    }

    v7 = v27;
LABEL_104:
    *(a3 + 60) = 0;
    goto LABEL_105;
  }

  if ((v22 & 8) != 0)
  {
    LODWORD(v11) = 0;
    __dst = 0;
    *(a3 + 64) = 0;
    v28 = (a3 + 64);
LABEL_107:
    v7 = sub_100002000(a1, &__dst, 4u, 0);
    if (!v7)
    {
      *v28 = bswap32(__dst);
    }

LABEL_109:
    v24 = *v10;
    if ((*v10 & 0x10) == 0)
    {
LABEL_84:
      if ((v24 & 0x20) == 0)
      {
        goto LABEL_85;
      }

      goto LABEL_114;
    }

LABEL_110:
    __dst = 0;
    *(a3 + 68) = 0;
    v29 = (a3 + 68);
    if (v7)
    {
      goto LABEL_113;
    }

    goto LABEL_111;
  }

  if ((v22 & 0x10) != 0)
  {
    LODWORD(v11) = 0;
    __dst = 0;
    *(a3 + 68) = 0;
    v29 = (a3 + 68);
LABEL_111:
    v7 = sub_100002000(a1, &__dst, 4u, 0);
    if (!v7)
    {
      *v29 = bswap32(__dst);
    }

LABEL_113:
    v24 = *v10;
    if ((*v10 & 0x20) == 0)
    {
LABEL_85:
      if ((v24 & 0x40) == 0)
      {
        goto LABEL_86;
      }

      goto LABEL_118;
    }

LABEL_114:
    __dst = 0;
    *(a3 + 72) = 0;
    v30 = (a3 + 72);
    if (v7)
    {
      goto LABEL_117;
    }

    goto LABEL_115;
  }

  if ((v22 & 0x20) != 0)
  {
    LODWORD(v11) = 0;
    __dst = 0;
    *(a3 + 72) = 0;
    v30 = (a3 + 72);
LABEL_115:
    v7 = sub_100002000(a1, &__dst, 4u, 0);
    if (!v7)
    {
      *v30 = bswap32(__dst);
    }

LABEL_117:
    v24 = *v10;
    if ((*v10 & 0x40) == 0)
    {
LABEL_86:
      if ((v24 & 0x80) == 0)
      {
        goto LABEL_87;
      }

      goto LABEL_122;
    }

LABEL_118:
    __dst = 0;
    *(a3 + 76) = 0;
    v31 = (a3 + 76);
    if (v7)
    {
      goto LABEL_121;
    }

    goto LABEL_119;
  }

  if ((v22 & 0x40) != 0)
  {
    LODWORD(v11) = 0;
    __dst = 0;
    *(a3 + 76) = 0;
    v31 = (a3 + 76);
LABEL_119:
    v7 = sub_100002000(a1, &__dst, 4u, 0);
    if (!v7)
    {
      *v31 = bswap32(__dst);
    }

LABEL_121:
    v24 = *v10;
    if ((*v10 & 0x80) == 0)
    {
LABEL_87:
      if ((v24 & 0x100) == 0)
      {
        goto LABEL_88;
      }

      goto LABEL_127;
    }

LABEL_122:
    __dst = 0;
    *(a3 + 80) = 0;
    if (v7)
    {
      goto LABEL_125;
    }

    goto LABEL_123;
  }

  if ((v22 & 0x80) != 0)
  {
    LODWORD(v11) = 0;
    __dst = 0;
    *(a3 + 80) = 0;
LABEL_123:
    v32 = sub_100002000(a1, &__dst, 4u, 0);
    if (!v32)
    {
      v40 = bswap32(__dst);
      __dst = 0;
      *(a3 + 80) = v40;
      *(a3 + 88) = 0;
      v7 = sub_100002000(a1, &__dst, 4u, 0);
      if (!v7)
      {
        *(a3 + 88) = bswap32(__dst);
      }

LABEL_126:
      v24 = *v10;
      if ((*v10 & 0x100) == 0)
      {
LABEL_88:
        if ((v24 & 0x200) == 0)
        {
          goto LABEL_89;
        }

        goto LABEL_132;
      }

LABEL_127:
      __dst = 0;
      *(a3 + 96) = 0;
      if (v7)
      {
        goto LABEL_130;
      }

      goto LABEL_128;
    }

    v7 = v32;
LABEL_125:
    *(a3 + 88) = 0;
    goto LABEL_126;
  }

  if ((v22 & 0x100) != 0)
  {
    LODWORD(v11) = 0;
    __dst = 0;
    *(a3 + 96) = 0;
LABEL_128:
    v33 = sub_100002000(a1, &__dst, 4u, 0);
    if (!v33)
    {
      v41 = bswap32(__dst);
      __dst = 0;
      *(a3 + 96) = v41;
      *(a3 + 104) = 0;
      v7 = sub_100002000(a1, &__dst, 4u, 0);
      if (!v7)
      {
        *(a3 + 104) = bswap32(__dst);
      }

LABEL_131:
      v24 = *v10;
      if ((*v10 & 0x200) == 0)
      {
LABEL_89:
        if ((v24 & 0x400) == 0)
        {
          goto LABEL_90;
        }

        goto LABEL_137;
      }

LABEL_132:
      __dst = 0;
      *(a3 + 112) = 0;
      if (v7)
      {
        goto LABEL_135;
      }

      goto LABEL_133;
    }

    v7 = v33;
LABEL_130:
    *(a3 + 104) = 0;
    goto LABEL_131;
  }

  if ((v22 & 0x200) != 0)
  {
    LODWORD(v11) = 0;
    __dst = 0;
    *(a3 + 112) = 0;
LABEL_133:
    v34 = sub_100002000(a1, &__dst, 4u, 0);
    if (!v34)
    {
      v42 = bswap32(__dst);
      __dst = 0;
      *(a3 + 112) = v42;
      *(a3 + 120) = 0;
      v7 = sub_100002000(a1, &__dst, 4u, 0);
      if (!v7)
      {
        *(a3 + 120) = bswap32(__dst);
      }

LABEL_136:
      v24 = *v10;
      if ((*v10 & 0x400) == 0)
      {
LABEL_90:
        if ((v24 & 0x800) == 0)
        {
          goto LABEL_91;
        }

        goto LABEL_142;
      }

LABEL_137:
      __dst = 0;
      *(a3 + 128) = 0;
      if (v7)
      {
        goto LABEL_140;
      }

      goto LABEL_138;
    }

    v7 = v34;
LABEL_135:
    *(a3 + 120) = 0;
    goto LABEL_136;
  }

  if ((v22 & 0x400) != 0)
  {
    LODWORD(v11) = 0;
    __dst = 0;
    *(a3 + 128) = 0;
LABEL_138:
    v35 = sub_100002000(a1, &__dst, 4u, 0);
    if (!v35)
    {
      v43 = bswap32(__dst);
      __dst = 0;
      *(a3 + 128) = v43;
      *(a3 + 136) = 0;
      v7 = sub_100002000(a1, &__dst, 4u, 0);
      if (!v7)
      {
        *(a3 + 136) = bswap32(__dst);
      }

LABEL_141:
      v24 = *v10;
      if ((*v10 & 0x800) == 0)
      {
LABEL_91:
        if ((v24 & 0x1000) == 0)
        {
          goto LABEL_166;
        }

        goto LABEL_146;
      }

LABEL_142:
      __dst = 0;
      *(a3 + 176) = 0;
      v36 = (a3 + 176);
      if (v7)
      {
        goto LABEL_145;
      }

      goto LABEL_143;
    }

    v7 = v35;
LABEL_140:
    *(a3 + 136) = 0;
    goto LABEL_141;
  }

  if ((v22 & 0x800) != 0)
  {
    LODWORD(v11) = 0;
    __dst = 0;
    *(a3 + 176) = 0;
    v36 = (a3 + 176);
LABEL_143:
    v7 = sub_100002000(a1, &__dst, 4u, 0);
    if (!v7)
    {
      *v36 = bswap32(__dst);
    }

LABEL_145:
    if ((*v10 & 0x1000) == 0)
    {
      goto LABEL_166;
    }

LABEL_146:
    __dst = 0;
    *(a3 + 180) = 0;
    v37 = (a3 + 180);
    if (v7)
    {
      goto LABEL_166;
    }

    goto LABEL_147;
  }

  if ((v22 & 0x1000) != 0)
  {
    LODWORD(v11) = 0;
    __dst = 0;
    *(a3 + 180) = 0;
    v37 = (a3 + 180);
LABEL_147:
    v7 = sub_100002000(a1, &__dst, 4u, 0);
    if (v7)
    {
      v38 = *v37;
    }

    else
    {
      v38 = bswap32(__dst);
      *v37 = v38;
    }

    if (v38 >= 1)
    {
      v44 = 0;
      v45 = a3 + 184;
      do
      {
        __dst = 0;
        *(v45 + 4 * v44) = 0;
        if (!v7)
        {
          v7 = sub_100002000(a1, &__dst, 4u, 0);
          if (!v7)
          {
            *(v45 + 4 * v44) = bswap32(__dst);
          }
        }

        ++v44;
      }

      while (v44 < *v37);
    }

LABEL_166:
    if ((*(v10 + 3) & 0x10) == 0)
    {
      goto LABEL_177;
    }

    __dst = 0;
    *(a3 + 204) = 0;
    v46 = (a3 + 204);
    if (v7)
    {
      goto LABEL_170;
    }

    goto LABEL_168;
  }

  if ((v22 & 0x10000000) != 0)
  {
    LODWORD(v11) = 0;
    __dst = 0;
    *(a3 + 204) = 0;
    v46 = (a3 + 204);
LABEL_168:
    v47 = sub_100002000(a1, &__dst, 4u, 0);
    if (!v47)
    {
      v62 = bswap32(__dst);
      __dst = 0;
      *(a3 + 204) = v62;
      v7 = sub_100002000(a1, &__dst, 4u, 0);
      if (!v7)
      {
        *(a3 + 208) = bswap32(__dst);
      }

      goto LABEL_171;
    }

    v7 = v47;
LABEL_170:
    *(a3 + 208) = 0;
LABEL_171:
    if (*v46)
    {
      v48 = 0;
      v49 = a3 + 212;
      do
      {
        __dst = 0;
        *(v49 + 4 * v48) = 0;
        if (!v7)
        {
          v7 = sub_100002000(a1, &__dst, 4u, 0);
          if (!v7)
          {
            *(v49 + 4 * v48) = bswap32(__dst);
          }
        }

        ++v48;
      }

      while (v48 < *v46);
    }

LABEL_177:
    v50 = *v10;
    if ((*v10 & 0x2000) == 0)
    {
      if ((v50 & 0x4000) == 0)
      {
        goto LABEL_179;
      }

      goto LABEL_190;
    }

    __dst = 0;
    *(a3 + 224) = 0;
    v51 = (a3 + 224);
    if (v7)
    {
LABEL_189:
      v50 = *v10;
      if ((*v10 & 0x4000) == 0)
      {
LABEL_179:
        if ((v50 & 0x8000) == 0)
        {
          goto LABEL_180;
        }

        goto LABEL_195;
      }

LABEL_190:
      __dst = 0;
      if (v7)
      {
        goto LABEL_193;
      }

      goto LABEL_191;
    }

LABEL_187:
    v7 = sub_100002000(a1, &__dst, 4u, 0);
    if (!v7)
    {
      *v51 = bswap32(__dst);
    }

    goto LABEL_189;
  }

  if ((v22 & 0x2000) != 0)
  {
    LODWORD(v11) = 0;
    __dst = 0;
    *(a3 + 224) = 0;
    v51 = (a3 + 224);
    goto LABEL_187;
  }

  if ((v22 & 0x4000) != 0)
  {
    __dst = 0;
LABEL_191:
    v52 = sub_100002000(a1, &__dst, 4u, 0);
    if (!v52)
    {
      LODWORD(v11) = bswap32(__dst);
      if (v11 <= 0xF)
      {
        v7 = sub_100002000(a1, (a3 + 228), v11, 0);
      }

      else
      {
        v7 = 72;
      }

LABEL_194:
      *(a3 + v11 + 228) = 0;
      v50 = *(a3 + 8);
      if ((v50 & 0x8000) == 0)
      {
LABEL_180:
        if ((v50 & 0x10000) == 0)
        {
          goto LABEL_181;
        }

        goto LABEL_199;
      }

LABEL_195:
      __dst = 0;
      *(a3 + 244) = 0;
      v53 = (a3 + 244);
      if (v7)
      {
        goto LABEL_198;
      }

      goto LABEL_196;
    }

    v7 = v52;
LABEL_193:
    LODWORD(v11) = 0;
    goto LABEL_194;
  }

  if ((v22 & 0x8000) != 0)
  {
    LODWORD(v11) = 0;
    __dst = 0;
    *(a3 + 244) = 0;
    v53 = (a3 + 244);
LABEL_196:
    v7 = sub_100002000(a1, &__dst, 4u, 0);
    if (!v7)
    {
      *v53 = bswap32(__dst);
    }

LABEL_198:
    v50 = *v10;
    if ((*v10 & 0x10000) == 0)
    {
LABEL_181:
      if ((v50 & 0x20000) == 0)
      {
        goto LABEL_182;
      }

LABEL_203:
      __dst = 0;
      *(a3 + 272) = 0;
      if (v7)
      {
        goto LABEL_206;
      }

      goto LABEL_204;
    }

LABEL_199:
    __dst = 0;
    *(a3 + 248) = 0;
    v54 = (a3 + 248);
    if (v7)
    {
      goto LABEL_202;
    }

    goto LABEL_200;
  }

  if ((v22 & 0x10000) == 0)
  {
    if ((v22 & 0x20000) == 0)
    {
      if ((v22 & 0x40000) == 0)
      {
        if ((v22 & 0x80000) == 0)
        {
          if ((v22 & 0x100000) == 0)
          {
            if ((v22 & 0x200000) == 0)
            {
              v7 = 0;
              goto LABEL_345;
            }

            LODWORD(v11) = 0;
            __dst = 0;
            v60 = (a3 + 452);
            *(a3 + 452) = 0;
            goto LABEL_225;
          }

          LODWORD(v11) = 0;
          __dst = 0;
          *(a3 + 320) = 0;
          goto LABEL_219;
        }

        LODWORD(v11) = 0;
        __dst = 0;
        *(a3 + 304) = 0;
LABEL_214:
        v57 = sub_100002000(a1, &__dst, 4u, 0);
        if (!v57)
        {
          v64 = bswap32(__dst);
          __dst = 0;
          *(a3 + 304) = v64;
          *(a3 + 312) = 0;
          v7 = sub_100002000(a1, &__dst, 4u, 0);
          if (!v7)
          {
            *(a3 + 312) = bswap32(__dst);
          }

LABEL_217:
          if ((*v10 & 0x100000) == 0)
          {
            goto LABEL_222;
          }

LABEL_218:
          __dst = 0;
          *(a3 + 320) = 0;
          if (v7)
          {
            goto LABEL_222;
          }

LABEL_219:
          v58 = sub_100002000(a1, &__dst, 4u, 0);
          if (!v58)
          {
            v59 = bswap32(__dst);
            *(a3 + 320) = v59;
            v58 = sub_100002000(a1, (a3 + 324), v59, 0);
          }

          v7 = v58;
          goto LABEL_222;
        }

        v7 = v57;
LABEL_216:
        *(a3 + 312) = 0;
        goto LABEL_217;
      }

      LODWORD(v11) = 0;
      __dst = 0;
      v56 = (a3 + 288);
      *(a3 + 288) = 0;
      goto LABEL_210;
    }

    LODWORD(v11) = 0;
    __dst = 0;
    *(a3 + 272) = 0;
LABEL_204:
    v55 = sub_100002000(a1, &__dst, 4u, 0);
    if (!v55)
    {
      v63 = bswap32(__dst);
      __dst = 0;
      *(a3 + 272) = v63;
      *(a3 + 280) = 0;
      v7 = sub_100002000(a1, &__dst, 4u, 0);
      if (!v7)
      {
        *(a3 + 280) = bswap32(__dst);
      }

LABEL_207:
      v50 = *v10;
      if ((*v10 & 0x40000) == 0)
      {
LABEL_183:
        if ((v50 & 0x80000) == 0)
        {
          goto LABEL_184;
        }

LABEL_213:
        __dst = 0;
        *(a3 + 304) = 0;
        if (v7)
        {
          goto LABEL_216;
        }

        goto LABEL_214;
      }

      goto LABEL_208;
    }

    v7 = v55;
LABEL_206:
    *(a3 + 280) = 0;
    goto LABEL_207;
  }

  LODWORD(v11) = 0;
  __dst = 0;
  *(a3 + 248) = 0;
  v54 = (a3 + 248);
LABEL_200:
  v7 = sub_100002000(a1, &__dst, 4u, 0);
  if (!v7)
  {
    *v54 = bswap32(__dst);
  }

LABEL_202:
  v50 = *v10;
  if ((*v10 & 0x20000) != 0)
  {
    goto LABEL_203;
  }

LABEL_182:
  if ((v50 & 0x40000) == 0)
  {
    goto LABEL_183;
  }

LABEL_208:
  __dst = 0;
  *(a3 + 288) = 0;
  if (v7)
  {
    goto LABEL_212;
  }

  v56 = (a3 + 288);
LABEL_210:
  v7 = sub_100002000(a1, &__dst, 4u, 0);
  if (!v7)
  {
    *v56 = bswap32(__dst);
  }

LABEL_212:
  v50 = *v10;
  if ((*v10 & 0x80000) != 0)
  {
    goto LABEL_213;
  }

LABEL_184:
  if ((v50 & 0x100000) != 0)
  {
    goto LABEL_218;
  }

LABEL_222:
  if ((*(v10 + 2) & 0x20) == 0 || (__dst = 0, *(a3 + 452) = 0, v7))
  {
LABEL_345:
    v100 = *v10;
    if ((*v10 & 0x400000) == 0)
    {
      goto LABEL_350;
    }

    __dst = 0;
    *(a3 + 4) = 0;
    v101 = (a3 + 4);
    if (!v7)
    {
      goto LABEL_347;
    }

LABEL_349:
    v100 = *v10;
LABEL_350:
    if ((v100 & 0x800000) == 0)
    {
      goto LABEL_359;
    }

    __dst = 0;
    if (v7)
    {
      goto LABEL_353;
    }

    goto LABEL_352;
  }

  v60 = (a3 + 452);
LABEL_225:
  v61 = sub_100002000(a1, &__dst, 4u, 0);
  if (v61)
  {
LABEL_226:
    v7 = v61;
    goto LABEL_345;
  }

  v65 = __dst;
  v66 = bswap32(__dst);
  *v60 = v66;
  if (v66 > 0xFF)
  {
    v7 = 22;
    goto LABEL_345;
  }

  if (v65)
  {
    v67 = malloc_type_calloc(v66, 0x18uLL, 0x10A00404E934A1DuLL);
    *(a3 + 456) = v67;
    if (!v67)
    {
LABEL_344:
      v7 = 12;
      goto LABEL_345;
    }
  }

  if (!*(a3 + 452))
  {
LABEL_461:
    v129 = *v10;
    if ((*v10 & 0x400000) == 0)
    {
      if ((v129 & 0x800000) == 0)
      {
        if ((v129 & 0x1000000) == 0)
        {
          if ((v129 & 0x2000000) == 0)
          {
            if ((v129 & 0x4000000) == 0)
            {
              if ((v129 & 0x20000000) == 0)
              {
                if ((v129 & 0x40000000) == 0)
                {
                  if ((v129 & 0x80000000) == 0)
                  {
                    v122 = (a3 + 12);
                    v130 = *(a3 + 12);
                    if ((v130 & 1) == 0)
                    {
                      if ((v130 & 2) == 0)
                      {
                        if ((v130 & 4) == 0)
                        {
                          if ((v130 & 8) == 0)
                          {
                            return 0;
                          }

                          __dst = 0;
                          v126 = (a3 + 296);
                          *(a3 + 296) = 0;
LABEL_437:
                          v7 = sub_100002000(a1, &__dst, 4u, 0);
                          if (!v7)
                          {
                            *v126 = bswap32(__dst);
                          }

LABEL_439:
                          if (v7)
                          {
                            goto LABEL_440;
                          }

                          return v7;
                        }

                        __dst = 0;
                        *(a3 + 160) = 0;
LABEL_431:
                        v125 = sub_100002000(a1, &__dst, 4u, 0);
                        if (!v125)
                        {
                          v128 = bswap32(__dst);
                          __dst = 0;
                          *(a3 + 160) = v128;
                          *(a3 + 168) = 0;
                          v7 = sub_100002000(a1, &__dst, 4u, 0);
                          if (!v7)
                          {
                            *(a3 + 168) = bswap32(__dst);
                          }

LABEL_434:
                          if ((*v122 & 8) == 0)
                          {
                            goto LABEL_439;
                          }

LABEL_435:
                          __dst = 0;
                          *(a3 + 296) = 0;
                          if (v7)
                          {
                            goto LABEL_439;
                          }

                          v126 = (a3 + 296);
                          goto LABEL_437;
                        }

                        v7 = v125;
LABEL_433:
                        *(a3 + 168) = 0;
                        goto LABEL_434;
                      }

                      __dst = 0;
                      *(a3 + 144) = 0;
LABEL_426:
                      v124 = sub_100002000(a1, &__dst, 4u, 0);
                      if (!v124)
                      {
                        v127 = bswap32(__dst);
                        __dst = 0;
                        *(a3 + 144) = v127;
                        *(a3 + 152) = 0;
                        v7 = sub_100002000(a1, &__dst, 4u, 0);
                        if (!v7)
                        {
                          *(a3 + 152) = bswap32(__dst);
                        }

LABEL_429:
                        v121 = *v122;
                        if ((*v122 & 4) == 0)
                        {
LABEL_418:
                          if ((v121 & 8) == 0)
                          {
                            goto LABEL_439;
                          }

                          goto LABEL_435;
                        }

LABEL_430:
                        __dst = 0;
                        *(a3 + 160) = 0;
                        if (v7)
                        {
                          goto LABEL_433;
                        }

                        goto LABEL_431;
                      }

                      v7 = v124;
LABEL_428:
                      *(a3 + 152) = 0;
                      goto LABEL_429;
                    }

                    __dst = 0;
                    v123 = (a3 + 292);
                    *(a3 + 292) = 0;
                    goto LABEL_422;
                  }

                  __dst = 0;
                  v120 = (a3 + 472);
                  *(a3 + 472) = 0;
                  goto LABEL_413;
                }

                __dst = 0;
LABEL_401:
                v117 = sub_100002000(a1, &__dst, 4u, 0);
                if (!v117)
                {
                  v118 = bswap32(__dst);
                  if (v118 - 105 >= 0xFFFFFF98)
                  {
                    LODWORD(v7) = 0;
                  }

                  else
                  {
                    LODWORD(v7) = 22;
                  }

LABEL_404:
                  v119 = malloc_type_calloc(v118 + 1, 1uLL, 0x100004077774924uLL);
                  *(a3 + 264) = v119;
                  if (v119)
                  {
                    v7 = v7;
                  }

                  else
                  {
                    v7 = 12;
                  }

                  if (!v7)
                  {
                    v7 = sub_100002000(a1, v119, v118, 0);
                  }

                  v116 = *v10;
LABEL_410:
                  if (v116 < 0)
                  {
                    __dst = 0;
                    *(a3 + 472) = 0;
                    if (!v7)
                    {
                      v120 = (a3 + 472);
LABEL_413:
                      v7 = sub_100002000(a1, &__dst, 4u, 0);
                      if (!v7)
                      {
                        *v120 = bswap32(__dst);
                      }
                    }
                  }

LABEL_415:
                  v122 = (a3 + 12);
                  v121 = *(a3 + 12);
                  if ((v121 & 1) == 0)
                  {
                    if ((v121 & 2) == 0)
                    {
                      goto LABEL_417;
                    }

                    goto LABEL_425;
                  }

                  __dst = 0;
                  *(a3 + 292) = 0;
                  if (v7)
                  {
LABEL_424:
                    v121 = *v122;
                    if ((*v122 & 2) == 0)
                    {
LABEL_417:
                      if ((v121 & 4) == 0)
                      {
                        goto LABEL_418;
                      }

                      goto LABEL_430;
                    }

LABEL_425:
                    __dst = 0;
                    *(a3 + 144) = 0;
                    if (v7)
                    {
                      goto LABEL_428;
                    }

                    goto LABEL_426;
                  }

                  v123 = (a3 + 292);
LABEL_422:
                  v7 = sub_100002000(a1, &__dst, 4u, 0);
                  if (!v7)
                  {
                    *v123 = bswap32(__dst);
                  }

                  goto LABEL_424;
                }

                LODWORD(v7) = v117;
LABEL_403:
                v118 = 0;
                goto LABEL_404;
              }

              __dst = 0;
LABEL_391:
              v113 = sub_100002000(a1, &__dst, 4u, 0);
              if (!v113)
              {
                v114 = bswap32(__dst);
                if (v114 - 105 >= 0xFFFFFF98)
                {
                  LODWORD(v7) = 0;
                }

                else
                {
                  LODWORD(v7) = 22;
                }

                goto LABEL_394;
              }

              LODWORD(v7) = v113;
LABEL_393:
              v114 = 0;
LABEL_394:
              v115 = malloc_type_calloc(v114 + 1, 1uLL, 0x100004077774924uLL);
              *(a3 + 256) = v115;
              if (v115)
              {
                v7 = v7;
              }

              else
              {
                v7 = 12;
              }

              if (!v7)
              {
                v7 = sub_100002000(a1, v115, v114, 0);
              }

LABEL_399:
              v116 = *v10;
              if ((*v10 & 0x40000000) == 0)
              {
                goto LABEL_410;
              }

              __dst = 0;
              if (v7)
              {
                goto LABEL_403;
              }

              goto LABEL_401;
            }

            __dst = 0;
LABEL_381:
            v110 = sub_100002000(a1, &__dst, 4u, 0);
            if (!v110)
            {
              v111 = bswap32(__dst);
              if (v111 - 1025 >= 0xFFFFFC00)
              {
                LODWORD(v7) = 0;
              }

              else
              {
                LODWORD(v7) = 22;
              }

              goto LABEL_384;
            }

            LODWORD(v7) = v110;
LABEL_383:
            v111 = 0;
LABEL_384:
            v112 = malloc_type_calloc(v111 + 1, 1uLL, 0x100004077774924uLL);
            *(a3 + 40) = v112;
            if (v112)
            {
              v7 = v7;
            }

            else
            {
              v7 = 12;
            }

            if (!v7)
            {
              v7 = sub_100002000(a1, v112, v111, 0);
            }

LABEL_389:
            if ((*(v10 + 3) & 0x20) == 0)
            {
              goto LABEL_399;
            }

            __dst = 0;
            if (v7)
            {
              goto LABEL_393;
            }

            goto LABEL_391;
          }

          __dst = 0;
LABEL_371:
          v107 = sub_100002000(a1, &__dst, 4u, 0);
          if (!v107)
          {
            v108 = bswap32(__dst);
            if (v108 - 1025 >= 0xFFFFFC00)
            {
              LODWORD(v7) = 0;
            }

            else
            {
              LODWORD(v7) = 22;
            }

            goto LABEL_374;
          }

          LODWORD(v7) = v107;
LABEL_373:
          v108 = 0;
LABEL_374:
          v109 = malloc_type_calloc(v108 + 1, 1uLL, 0x100004077774924uLL);
          *(a3 + 32) = v109;
          if (v109)
          {
            v7 = v7;
          }

          else
          {
            v7 = 12;
          }

          if (!v7)
          {
            v7 = sub_100002000(a1, v109, v108, 0);
          }

LABEL_379:
          if ((*(v10 + 3) & 4) == 0)
          {
            goto LABEL_389;
          }

          __dst = 0;
          if (v7)
          {
            goto LABEL_383;
          }

          goto LABEL_381;
        }

        __dst = 0;
LABEL_361:
        v104 = sub_100002000(a1, &__dst, 4u, 0);
        if (!v104)
        {
          v105 = bswap32(__dst);
          if (v105 - 1025 >= 0xFFFFFC00)
          {
            LODWORD(v7) = 0;
          }

          else
          {
            LODWORD(v7) = 22;
          }

          goto LABEL_364;
        }

        LODWORD(v7) = v104;
LABEL_363:
        v105 = 0;
LABEL_364:
        v106 = malloc_type_calloc(v105 + 1, 1uLL, 0x100004077774924uLL);
        *(a3 + 24) = v106;
        if (v106)
        {
          v7 = v7;
        }

        else
        {
          v7 = 12;
        }

        if (!v7)
        {
          v7 = sub_100002000(a1, v106, v105, 0);
        }

LABEL_369:
        if ((*(v10 + 3) & 2) == 0)
        {
          goto LABEL_379;
        }

        __dst = 0;
        if (v7)
        {
          goto LABEL_373;
        }

        goto LABEL_371;
      }

      __dst = 0;
LABEL_352:
      LODWORD(v7) = sub_100002000(a1, &__dst, 4u, 0);
      if (!v7)
      {
        v102 = bswap32(__dst);
        v103 = malloc_type_calloc(1uLL, v102 + 1, 0xEF230AD6uLL);
        *(a3 + 464) = v103;
LABEL_354:
        if (v103)
        {
          v7 = v7;
        }

        else
        {
          v7 = 12;
        }

        if (!v7)
        {
          v7 = sub_100002000(a1, v103, v102, 0);
        }

LABEL_359:
        if ((*(v10 + 3) & 1) == 0)
        {
          goto LABEL_369;
        }

        __dst = 0;
        if (v7)
        {
          goto LABEL_363;
        }

        goto LABEL_361;
      }

LABEL_353:
      v102 = 0;
      v103 = *(a3 + 464);
      goto LABEL_354;
    }

    __dst = 0;
    *(a3 + 4) = 0;
    v101 = (a3 + 4);
LABEL_347:
    v7 = sub_100002000(a1, &__dst, 4u, 0);
    if (!v7)
    {
      *v101 = bswap32(__dst);
    }

    goto LABEL_349;
  }

  v68 = 0;
  while (1)
  {
    __dst = 0;
    *(*(a3 + 456) + 24 * v68 + 16) = 0;
    v69 = sub_100002000(a1, &__dst, 4u, 0);
    if (v69)
    {
      goto LABEL_303;
    }

    v70 = bswap32(__dst);
    *(*(a3 + 456) + 24 * v68 + 16) = v70;
    if (v70 > 0xFF)
    {
      v69 = 22;
      goto LABEL_303;
    }

    if (v70)
    {
      v71 = malloc_type_calloc(v70, 0x18uLL, 0x1090040BD55ACEDuLL);
      *(*(a3 + 456) + 24 * v68) = v71;
      if (!v71)
      {
        v69 = 12;
        goto LABEL_303;
      }
    }

    v72 = *(a3 + 456);
    if (!*(v72 + 24 * v68 + 16))
    {
      goto LABEL_293;
    }

    v73 = 0;
    do
    {
      __dst = 0;
      v69 = sub_100002000(a1, &__dst, 4u, 0);
      if (v69)
      {
        v79 = *(a3 + 456);
        goto LABEL_301;
      }

      v74 = bswap32(__dst);
      if (v74 > 0x400)
      {
        v69 = 22;
      }

      if (v69)
      {
        v75 = 1;
      }

      else
      {
        v75 = __dst == 0;
      }

      if (!v75)
      {
        v78 = malloc_type_calloc(1uLL, v74 + 1, 0x555D981uLL);
        v77 = v78;
        v79 = *(a3 + 456);
        *(*(v79 + 24 * v68) + 24 * v73) = v78;
        if (v78)
        {
          goto LABEL_260;
        }

        v69 = 12;
LABEL_301:
        *(*(v79 + 24 * v68) + 24 * v73 + 16) = 0;
        goto LABEL_302;
      }

      v76 = *(a3 + 456);
      if (v69)
      {
        goto LABEL_261;
      }

      v77 = *(*(v76 + 24 * v68) + 24 * v73);
LABEL_260:
      v69 = sub_100002000(a1, v77, v74, 0);
      v76 = *(a3 + 456);
LABEL_261:
      __dst = 0;
      *(*(v76 + 24 * v68) + 24 * v73 + 16) = 0;
      if (v69)
      {
        goto LABEL_302;
      }

      v69 = sub_100002000(a1, &__dst, 4u, 0);
      if (v69)
      {
        goto LABEL_302;
      }

      v80 = bswap32(__dst);
      *(*(*(a3 + 456) + 24 * v68) + 24 * v73 + 16) = v80;
      if (v80 > 0xFF)
      {
        v69 = 22;
        goto LABEL_302;
      }

      if (v80)
      {
        v81 = malloc_type_calloc(v80, 8uLL, 0x10040436913F5uLL);
        *(*(*(a3 + 456) + 24 * v68) + 24 * v73 + 8) = v81;
        if (!v81)
        {
LABEL_296:
          v69 = 12;
LABEL_302:
          LODWORD(v11) = 0;
          goto LABEL_303;
        }
      }

      v82 = 0;
      while (v82 < *(*(*(a3 + 456) + 24 * v68) + 24 * v73 + 16))
      {
        __dst = 0;
        v69 = sub_100002000(a1, &__dst, 4u, 0);
        if (v69)
        {
          goto LABEL_302;
        }

        v83 = bswap32(__dst);
        if (v83 > 0xFF)
        {
          v69 = 22;
        }

        if (v69)
        {
          v84 = 1;
        }

        else
        {
          v84 = __dst == 0;
        }

        if (!v84)
        {
          *(*(*(*(a3 + 456) + 24 * v68) + 24 * v73 + 8) + 8 * v82) = malloc_type_calloc(1uLL, v83 + 1, 0x12A0AA36uLL);
          v85 = *(*(*(*(a3 + 456) + 24 * v68) + 24 * v73 + 8) + 8 * v82);
          if (!v85)
          {
            goto LABEL_296;
          }

          goto LABEL_279;
        }

        if (!v69)
        {
          v85 = *(*(*(*(a3 + 456) + 24 * v68) + 24 * v73 + 8) + 8 * v82);
LABEL_279:
          v69 = sub_100002000(a1, v85, v83, 0);
        }

        ++v82;
        if (v69)
        {
          goto LABEL_302;
        }
      }

      __dst = 0;
      v69 = sub_100002000(a1, &__dst, 4u, 0);
      if (v69)
      {
        goto LABEL_302;
      }

      if (__dst)
      {
        v11 = bswap32(__dst);
        v86 = *(a1 + 32);
        v87 = v11;
        while (v86)
        {
          if (v86 >= v87)
          {
            v88 = v87;
          }

          else
          {
            v88 = v86;
          }

          v86 -= v88;
          *(a1 + 24) += v88;
          *(a1 + 32) = v86;
          v87 -= v88;
          if (!v87)
          {
            goto LABEL_292;
          }
        }

        v69 = 72;
LABEL_303:
        v89 = 0;
LABEL_304:
        *(*(a3 + 456) + 24 * v68 + 20) = v89;
        goto LABEL_305;
      }

      LODWORD(v11) = 0;
LABEL_292:
      v72 = *(a3 + 456);
      ++v73;
    }

    while (v73 < *(v72 + 24 * v68 + 16));
LABEL_293:
    __dst = 0;
    *(v72 + 24 * v68 + 20) = 0;
    v69 = sub_100002000(a1, &__dst, 4u, 0);
    if (!v69)
    {
      v89 = bswap32(__dst);
      goto LABEL_304;
    }

LABEL_305:
    if (v69)
    {
      v90 = 0;
    }

    else
    {
      v90 = v11 > 0x400;
    }

    if (v90)
    {
      v7 = 22;
    }

    else
    {
      v7 = v69;
    }

    if (v7)
    {
      goto LABEL_345;
    }

    v91 = *(*(a3 + 456) + 24 * v68 + 20);
    if (v91)
    {
      v92 = malloc_type_calloc(v91, 8uLL, 0x10040436913F5uLL);
      *(*(a3 + 456) + 24 * v68 + 8) = v92;
      if (!v92)
      {
        goto LABEL_344;
      }
    }

    v93 = 0;
    while (2)
    {
      if (v93 < *(*(a3 + 456) + 24 * v68 + 20))
      {
        __dst = 0;
        v7 = sub_100002000(a1, &__dst, 4u, 0);
        if (v7)
        {
          goto LABEL_345;
        }

        v94 = bswap32(__dst);
        if (v94 <= 0x400)
        {
          v7 = 0;
        }

        else
        {
          v7 = 22;
        }

        if (v7)
        {
          v95 = 1;
        }

        else
        {
          v95 = __dst == 0;
        }

        if (v95)
        {
          if (!v7)
          {
            v96 = *(*(*(a3 + 456) + 24 * v68 + 8) + 8 * v93);
            goto LABEL_328;
          }
        }

        else
        {
          *(*(*(a3 + 456) + 24 * v68 + 8) + 8 * v93) = malloc_type_calloc(1uLL, v94 + 1, 0x13F1D1FBuLL);
          v96 = *(*(*(a3 + 456) + 24 * v68 + 8) + 8 * v93);
          if (!v96)
          {
            goto LABEL_344;
          }

LABEL_328:
          v7 = sub_100002000(a1, v96, v94, 0);
        }

        ++v93;
        if (v7)
        {
          goto LABEL_345;
        }

        continue;
      }

      break;
    }

    __dst = 0;
    v61 = sub_100002000(a1, &__dst, 4u, 0);
    if (v61)
    {
      goto LABEL_226;
    }

    if (__dst)
    {
      break;
    }

    LODWORD(v11) = 0;
LABEL_341:
    if (++v68 >= *v60)
    {
      goto LABEL_461;
    }
  }

  v97 = bswap32(__dst);
  LODWORD(v11) = v97;
  v98 = *(a1 + 32);
  while (v98)
  {
    if (v98 >= v97)
    {
      v99 = v97;
    }

    else
    {
      v99 = v98;
    }

    v98 -= v99;
    *(a1 + 24) += v99;
    *(a1 + 32) = v98;
    v97 -= v99;
    if (!v97)
    {
      goto LABEL_341;
    }
  }

  v131 = *v10;
  if ((*v10 & 0x400000) != 0)
  {
    *(a3 + 4) = 0;
    v7 = 72;
    goto LABEL_349;
  }

  if ((v131 & 0x800000) != 0)
  {
    LODWORD(v7) = 72;
    goto LABEL_353;
  }

  if ((v131 & 0x1000000) != 0)
  {
    LODWORD(v7) = 72;
    goto LABEL_363;
  }

  if ((v131 & 0x2000000) != 0)
  {
    LODWORD(v7) = 72;
    goto LABEL_373;
  }

  if ((v131 & 0x4000000) != 0)
  {
    LODWORD(v7) = 72;
    goto LABEL_383;
  }

  if ((v131 & 0x20000000) != 0)
  {
    LODWORD(v7) = 72;
    goto LABEL_393;
  }

  if ((v131 & 0x40000000) != 0)
  {
    LODWORD(v7) = 72;
    goto LABEL_403;
  }

  if (v131 < 0)
  {
    *(a3 + 472) = 0;
    v7 = 72;
    goto LABEL_415;
  }

  v122 = (a3 + 12);
  v132 = *(a3 + 12);
  if (v132)
  {
    *(a3 + 292) = 0;
    v7 = 72;
    goto LABEL_424;
  }

  if ((v132 & 2) != 0)
  {
    *(a3 + 144) = 0;
    v7 = 72;
    goto LABEL_428;
  }

  if ((v132 & 4) != 0)
  {
    *(a3 + 160) = 0;
    v7 = 72;
    goto LABEL_433;
  }

  if ((v132 & 8) != 0)
  {
    *(a3 + 296) = 0;
  }

  v7 = 72;
LABEL_440:
  sub_100004888(a3);
  return v7;
}

const char *sub_100006620(const char *a1)
{
  v2 = "tcp";
  if (strcmp(a1, "tcp"))
  {
    v2 = "udp";
    if (strcmp(a1, "udp"))
    {
      if (!strcmp(a1, "tcp4"))
      {
        return "proto=tcp";
      }

      else if (!strcmp(a1, "udp4"))
      {
        return "proto=udp";
      }

      else if (!strcmp(a1, "tcp6"))
      {
        return "proto=tcp6";
      }

      else if (!strcmp(a1, "udp6"))
      {
        return "proto=udp6";
      }

      else
      {
        v2 = "inet4";
        if (strcmp(a1, "inet4"))
        {
          v2 = "inet6";
          if (strcmp(a1, "inet6"))
          {
            v2 = "inet";
            if (strcmp(a1, "inet"))
            {
              v2 = "ticlts";
              if (strcmp(a1, "ticlts"))
              {
                v2 = "ticotsord";
                if (strcmp(a1, "ticotsord"))
                {
                  return a1;
                }
              }
            }
          }
        }
      }
    }
  }

  return v2;
}

uint64_t sub_10000676C(uint64_t a1, unsigned int a2)
{
  bzero(__str, 0x400uLL);
  v93 = *(a1 + 4);
  (off_100010050[6])("     ", "General mount flags", &v93);
  v3 = v93;
  if (v93)
  {
    v4 = 32;
    v5 = &off_10000CA30;
    while (1)
    {
      v6 = *(v5 - 2);
      if (!v6)
      {
        break;
      }

      if ((v6 & v3) != 0)
      {
        (off_100010050[7])(v4, *v5, &unk_1000092A3);
        v3 = v93 & ~v6;
        v93 = v3;
        v4 = 44;
      }

      v5 += 2;
      if (!v3)
      {
        goto LABEL_13;
      }
    }

    v7 = &off_10000CB30;
    do
    {
      v8 = *(v7 - 2);
      if (!v8)
      {
        break;
      }

      if ((v8 & v3) != 0)
      {
        (off_100010050[7])(v4, *v7, &unk_1000092A3);
        v3 = v93 & ~v8;
        v93 = v3;
        v4 = 44;
      }

      v7 += 2;
    }

    while (v3);
  }

LABEL_13:
  (off_100010050[9])(1);
  (off_100010050[6])("     ", "NFS parameters", 0);
  v9 = *(a1 + 8);
  if ((v9 & 2) != 0)
  {
    v11 = snprintf(__str, 0x400uLL, "vers=%d", *(a1 + 48));
    LODWORD(v12) = v11;
    if ((*(a1 + 8) & 4) != 0)
    {
      v13 = *(a1 + 52);
      v14 = snprintf(&__str[v11], 1024 - v11, ".%d");
LABEL_22:
      LODWORD(v12) = v14 + v12;
    }
  }

  else
  {
    if ((v9 & 0x8000000) == 0)
    {
      v10 = 32;
      goto LABEL_24;
    }

    v15 = *(a1 + 56);
    v16 = snprintf(__str, 0x400uLL, "vers=%d", HIWORD(*(a1 + 56)));
    v17 = v16;
    if (v15)
    {
      v17 = snprintf(&__str[v16], 1024 - v16, ".%d", v15) + v16;
    }

    v18 = *(a1 + 60);
    v12 = snprintf(&__str[v17], 1024 - v17, "-%d", HIWORD(*(a1 + 60))) + v17;
    if (v18)
    {
      v14 = snprintf(&__str[v12], 1024 - v12, ".%d");
      goto LABEL_22;
    }
  }

  __str[v12] = 0;
  (off_100010050[7])(32, __str, &unk_1000092A3);
  v10 = 44;
LABEL_24:
  v19 = *(a1 + 8);
  if ((v19 & 0x4000) != 0)
  {
    v40 = off_100010050[7];
    v41 = sub_100006620((a1 + 228));
    (v40)(v10, v41, &unk_1000092A3);
    v19 = *(a1 + 8);
    v10 = 44;
    if ((v19 & 0x8000) == 0)
    {
LABEL_26:
      if ((v19 & 0x20000000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_114;
    }
  }

  else if ((v19 & 0x8000) == 0)
  {
    goto LABEL_26;
  }

  (off_100010050[8])(v10, "port=", *(a1 + 244));
  v19 = *(a1 + 8);
  v10 = 44;
  if ((v19 & 0x20000000) == 0)
  {
LABEL_27:
    if ((v19 & 0x10000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_115;
  }

LABEL_114:
  (off_100010050[7])(v10, "port=", *(a1 + 256));
  v19 = *(a1 + 8);
  v10 = 44;
  if ((v19 & 0x10000) == 0)
  {
LABEL_28:
    if ((v19 & 0x40000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_115:
  (off_100010050[8])(v10, "mountport=", *(a1 + 248));
  v10 = 44;
  if ((*(a1 + 8) & 0x40000000) != 0)
  {
LABEL_29:
    (off_100010050[7])(v10, "mountport=", *(a1 + 264));
    v10 = 44;
  }

LABEL_30:
  v20 = *(a1 + 16);
  if ((v20 & 0x10000) != 0)
  {
    if ((*(a1 + 20) & 0x10000) != 0)
    {
      v42 = &unk_1000092A3;
    }

    else
    {
      v42 = "no";
    }

    (off_100010050[7])(v10, v42, "mntudp");
    v20 = *(a1 + 16);
    v10 = 44;
    if ((v20 & 1) == 0)
    {
LABEL_32:
      if ((v20 & 2) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_125;
    }
  }

  else if ((v20 & 1) == 0)
  {
    goto LABEL_32;
  }

  if (*(a1 + 20))
  {
    v43 = "soft";
  }

  else
  {
    v43 = "hard";
  }

  (off_100010050[7])(v10, v43, &unk_1000092A3);
  v20 = *(a1 + 16);
  v10 = 44;
  if ((v20 & 2) == 0)
  {
LABEL_33:
    if ((v20 & 4) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_129;
  }

LABEL_125:
  if ((*(a1 + 20) & 2) != 0)
  {
    v44 = &unk_1000092A3;
  }

  else
  {
    v44 = "no";
  }

  (off_100010050[7])(v10, v44, "intr");
  v20 = *(a1 + 16);
  v10 = 44;
  if ((v20 & 4) == 0)
  {
LABEL_34:
    if ((v20 & 8) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_133;
  }

LABEL_129:
  if ((*(a1 + 20) & 4) != 0)
  {
    v45 = &unk_1000092A3;
  }

  else
  {
    v45 = "no";
  }

  (off_100010050[7])(v10, v45, "resvport");
  v20 = *(a1 + 16);
  v10 = 44;
  if ((v20 & 8) == 0)
  {
LABEL_35:
    if ((v20 & 0x400) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_137;
  }

LABEL_133:
  if ((*(a1 + 20) & 8) != 0)
  {
    v46 = "no";
  }

  else
  {
    v46 = &unk_1000092A3;
  }

  (off_100010050[7])(v10, v46, "conn");
  v20 = *(a1 + 16);
  v10 = 44;
  if ((v20 & 0x400) == 0)
  {
LABEL_36:
    if ((v20 & 0x80) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_141;
  }

LABEL_137:
  if ((*(a1 + 20) & 0x400) != 0)
  {
    v47 = "no";
  }

  else
  {
    v47 = &unk_1000092A3;
  }

  (off_100010050[7])(v10, v47, "callback");
  v20 = *(a1 + 16);
  v10 = 44;
  if ((v20 & 0x80) == 0)
  {
LABEL_37:
    if ((v20 & 0x800) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_145;
  }

LABEL_141:
  if ((*(a1 + 20) & 0x80) != 0)
  {
    v48 = "no";
  }

  else
  {
    v48 = &unk_1000092A3;
  }

  (off_100010050[7])(v10, v48, "negnamecache");
  v20 = *(a1 + 16);
  v10 = 44;
  if ((v20 & 0x800) == 0)
  {
LABEL_38:
    if ((v20 & 0x1000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_149;
  }

LABEL_145:
  if ((*(a1 + 20) & 0x800) != 0)
  {
    v49 = &unk_1000092A3;
  }

  else
  {
    v49 = "no";
  }

  (off_100010050[7])(v10, v49, "namedattr");
  v20 = *(a1 + 16);
  v10 = 44;
  if ((v20 & 0x1000) == 0)
  {
LABEL_39:
    if ((v20 & 0x2000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_153;
  }

LABEL_149:
  if ((*(a1 + 20) & 0x1000) != 0)
  {
    v50 = "no";
  }

  else
  {
    v50 = &unk_1000092A3;
  }

  (off_100010050[7])(v10, v50, "acl");
  v20 = *(a1 + 16);
  v10 = 44;
  if ((v20 & 0x2000) == 0)
  {
LABEL_40:
    if ((v20 & 0x20) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_41;
  }

LABEL_153:
  if ((*(a1 + 20) & 0x2000) != 0)
  {
    v51 = &unk_1000092A3;
  }

  else
  {
    v51 = "no";
  }

  (off_100010050[7])(v10, v51, "aclonly");
  v10 = 44;
  if ((*(a1 + 16) & 0x20) != 0)
  {
LABEL_41:
    if ((*(a1 + 20) & 0x20) != 0)
    {
      v21 = &unk_1000092A3;
    }

    else
    {
      v21 = "no";
    }

    (off_100010050[7])(v10, v21, "callumnt");
    v10 = 44;
  }

LABEL_45:
  if ((*(a1 + 9) & 8) != 0)
  {
    v22 = *(a1 + 176);
    if (v22 <= 2)
    {
      (off_100010050[7])(v10, (&off_10000CBA8)[v22], &unk_1000092A3);
      v10 = 44;
    }
  }

  if ((*(a1 + 17) & 0x80) != 0)
  {
    if ((*(a1 + 20) & 0x8000) != 0)
    {
      v23 = "no";
    }

    else
    {
      v23 = &unk_1000092A3;
    }

    (off_100010050[7])(v10, v23, "quota");
    v10 = 44;
  }

  v24 = *(a1 + 8);
  if ((v24 & 8) != 0)
  {
    (off_100010050[8])(v10, "rsize=", *(a1 + 64));
    v24 = *(a1 + 8);
    v10 = 44;
    if ((v24 & 0x10) == 0)
    {
LABEL_55:
      if ((v24 & 0x40) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_160;
    }
  }

  else if ((v24 & 0x10) == 0)
  {
    goto LABEL_55;
  }

  (off_100010050[8])(v10, "wsize=", *(a1 + 68));
  v24 = *(a1 + 8);
  v10 = 44;
  if ((v24 & 0x40) == 0)
  {
LABEL_56:
    if ((v24 & 0x20) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

LABEL_160:
  (off_100010050[8])(v10, "readahead=", *(a1 + 76));
  v10 = 44;
  if ((*(a1 + 8) & 0x20) != 0)
  {
LABEL_57:
    (off_100010050[8])(v10, "dsize=", *(a1 + 72));
    v10 = 44;
  }

LABEL_58:
  v25 = *(a1 + 16);
  if ((v25 & 0x40) != 0)
  {
    if ((*(a1 + 20) & 0x40) != 0)
    {
      v26 = &unk_1000092A3;
    }

    else
    {
      v26 = "no";
    }

    (off_100010050[7])(v10, v26, "rdirplus");
    v25 = *(a1 + 16);
    v10 = 44;
  }

  if ((v25 & 0x10) != 0)
  {
    if ((*(a1 + 20) & 0x10) != 0)
    {
      v27 = &unk_1000092A3;
    }

    else
    {
      v27 = "no";
    }

    (off_100010050[7])(v10, v27, "dumbtimer");
    v10 = 44;
  }

  v28 = *(a1 + 8);
  if ((v28 & 0x20000) != 0)
  {
    (off_100010050[8])(v10, "timeo=", *(a1 + 280) % 100000000 + 10 * *(a1 + 272));
    v28 = *(a1 + 8);
    v10 = 44;
    if ((v28 & 0x40000) == 0)
    {
LABEL_70:
      if ((v28 & 0x2000) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_164;
    }
  }

  else if ((v28 & 0x40000) == 0)
  {
    goto LABEL_70;
  }

  (off_100010050[8])(v10, "retrans=", *(a1 + 288));
  v28 = *(a1 + 8);
  v10 = 44;
  if ((v28 & 0x2000) == 0)
  {
LABEL_71:
    if ((v28 & 0x80) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_165;
  }

LABEL_164:
  (off_100010050[8])(v10, "maxgroups=", *(a1 + 224));
  v28 = *(a1 + 8);
  v10 = 44;
  if ((v28 & 0x80) == 0)
  {
LABEL_72:
    if ((v28 & 0x100) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_166;
  }

LABEL_165:
  (off_100010050[8])(v10, "acregmin=", *(a1 + 80));
  v28 = *(a1 + 8);
  v10 = 44;
  if ((v28 & 0x100) == 0)
  {
LABEL_73:
    if ((v28 & 0x200) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_167;
  }

LABEL_166:
  (off_100010050[8])(v10, "acregmax=", *(a1 + 96));
  v28 = *(a1 + 8);
  v10 = 44;
  if ((v28 & 0x200) == 0)
  {
LABEL_74:
    if ((v28 & 0x400) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

LABEL_167:
  (off_100010050[8])(v10, "acdirmin=", *(a1 + 112));
  v10 = 44;
  if ((*(a1 + 8) & 0x400) != 0)
  {
LABEL_75:
    (off_100010050[8])(v10, "acdirmax=", *(a1 + 128));
    v10 = 44;
  }

LABEL_76:
  v29 = *(a1 + 12);
  if ((v29 & 2) != 0)
  {
    (off_100010050[8])(v10, "acrootdirmin=", *(a1 + 144));
    v29 = *(a1 + 12);
    v10 = 44;
  }

  if ((v29 & 4) != 0)
  {
    (off_100010050[8])(v10, "acrootdirmax=", *(a1 + 160));
    v10 = 44;
  }

  if ((*(a1 + 10) & 8) != 0)
  {
    (off_100010050[8])(v10, "deadtimeout=", *(a1 + 304));
    v10 = 44;
  }

  v30 = *(a1 + 16);
  if ((v30 & 0x100) != 0)
  {
    if ((*(a1 + 20) & 0x100) != 0)
    {
      v52 = &unk_1000092A3;
    }

    else
    {
      v52 = "no";
    }

    (off_100010050[7])(v10, v52, "mutejukebox");
    v30 = *(a1 + 16);
    v10 = 44;
    if ((v30 & 0x200) == 0)
    {
LABEL_84:
      if ((v30 & 0x4000) == 0)
      {
        goto LABEL_89;
      }

      goto LABEL_85;
    }
  }

  else if ((v30 & 0x200) == 0)
  {
    goto LABEL_84;
  }

  if ((*(a1 + 20) & 0x200) != 0)
  {
    v53 = &unk_1000092A3;
  }

  else
  {
    v53 = "no";
  }

  (off_100010050[7])(v10, v53, "ephemeral");
  v10 = 44;
  if ((*(a1 + 16) & 0x4000) != 0)
  {
LABEL_85:
    if ((*(a1 + 20) & 0x4000) != 0)
    {
      v31 = &unk_1000092A3;
    }

    else
    {
      v31 = "no";
    }

    (off_100010050[7])(v10, v31, "nfc");
    v10 = 44;
  }

LABEL_89:
  if (dword_100010198 && (*(a1 + 18) & 0x10) != 0)
  {
    if ((*(a1 + 20) & 0x100000) != 0)
    {
      v32 = &unk_1000092A3;
    }

    else
    {
      v32 = "no";
    }

    (off_100010050[7])(v10, v32, "skip_renew");
    v10 = 44;
  }

  v33 = *(a1 + 8);
  v92 = a1;
  if ((v33 & 0x1000) == 0)
  {
    if ((v33 & 0x10000000) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_235;
  }

  v54 = *(a1 + 184);
  if (v54 <= 390002)
  {
    if (!v54)
    {
      v55 = "none";
      goto LABEL_220;
    }

    if (v54 == 1)
    {
      v55 = "sys";
      goto LABEL_220;
    }
  }

  else
  {
    switch(v54)
    {
      case 390003:
        v55 = "krb5";
        goto LABEL_220;
      case 390004:
        v55 = "krb5i";
        goto LABEL_220;
      case 390005:
        v55 = "krb5p";
        goto LABEL_220;
    }
  }

  v55 = "?";
LABEL_220:
  v75 = snprintf(__str, 0x400uLL, "sec=%s", v55);
  if (*(a1 + 180) >= 2)
  {
    v76 = (a1 + 188);
    for (i = 1; i < *(v92 + 180); ++i)
    {
      v79 = *v76++;
      v78 = v79;
      if (v79 <= 390002)
      {
        v80 = "none";
        if (v78)
        {
          if (v78 != 1)
          {
LABEL_232:
            v80 = "?";
            goto LABEL_233;
          }

          v80 = "sys";
        }
      }

      else
      {
        switch(v78)
        {
          case 390003:
            v80 = "krb5";
            break;
          case 390004:
            v80 = "krb5i";
            break;
          case 390005:
            v80 = "krb5p";
            break;
          default:
            goto LABEL_232;
        }
      }

LABEL_233:
      v75 += snprintf(&__str[v75], 1024 - v75, ":%s", v80);
    }
  }

  __str[v75] = 0;
  (off_100010050[7])(v10, __str, &unk_1000092A3);
  a1 = v92;
  v33 = *(v92 + 8);
  v10 = 44;
  if ((v33 & 0x10000000) == 0)
  {
LABEL_97:
    if ((v33 & 0x1000000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_249;
  }

LABEL_235:
  if (*(a1 + 208))
  {
    v81 = &unk_1000092A3;
  }

  else
  {
    v81 = "*";
  }

  v82 = *(a1 + 212) - 16;
  if (v82 > 2)
  {
    v83 = "?";
  }

  else
  {
    v83 = (&off_10000CBC0)[v82];
  }

  v84 = snprintf(__str, 0x400uLL, "etype=%s%s", v81, v83);
  if (*(a1 + 204) >= 2u)
  {
    v85 = (a1 + 216);
    v86 = 1;
    do
    {
      v87 = "*";
      if (v86 != *(a1 + 208))
      {
        v87 = &unk_1000092A3;
      }

      v88 = *v85++;
      v89 = v88 - 16;
      v90 = "?";
      if ((v88 - 16) <= 2)
      {
        v90 = (&off_10000CBC0)[v89];
      }

      v84 += snprintf(&__str[v84], 1024 - v84, ":%s%s", v87, v90);
      ++v86;
      a1 = v92;
    }

    while (v86 < *(v92 + 204));
  }

  __str[v84] = 0;
  (off_100010050[7])(v10, __str, &unk_1000092A3);
  v33 = *(a1 + 8);
  v10 = 44;
  if ((v33 & 0x1000000) == 0)
  {
LABEL_98:
    if ((v33 & 0x2000000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_250;
  }

LABEL_249:
  (off_100010050[7])(v10, "realm=", *(a1 + 24));
  v33 = *(a1 + 8);
  v10 = 44;
  if ((v33 & 0x2000000) == 0)
  {
LABEL_99:
    if ((v33 & 0x4000000) == 0)
    {
      goto LABEL_100;
    }

LABEL_251:
    (off_100010050[7])(v10, "sprincipalm=", *(a1 + 40));
    v10 = 44;
    if ((*(a1 + 8) & 0x80000000) == 0)
    {
      goto LABEL_101;
    }

LABEL_252:
    (off_100010050[8])(v10, "owner=", *(a1 + 472));
    v10 = 44;
    goto LABEL_101;
  }

LABEL_250:
  (off_100010050[7])(v10, "principal=", *(a1 + 32));
  v33 = *(a1 + 8);
  v10 = 44;
  if ((v33 & 0x4000000) != 0)
  {
    goto LABEL_251;
  }

LABEL_100:
  if (v33 < 0)
  {
    goto LABEL_252;
  }

LABEL_101:
  v34 = *(a1 + 12);
  if (dword_100010198 && (v34 & 1) != 0)
  {
    (off_100010050[8])(v10, "readlink_nocache=", *(a1 + 292));
    v34 = *(a1 + 12);
    v10 = 44;
  }

  if ((v34 & 8) != 0)
  {
    (off_100010050[8])(v10, "accesscache=", *(a1 + 296));
  }

  result = (off_100010050[9])(0);
  if ((*(a1 + 10) & 0x20) != 0)
  {
    v36 = (off_100010050[6])("     ", "File system locations", 0);
    (off_100010050[2])(v36);
    if (a2 <= 0x57)
    {
      (off_100010050[4])("       ", 0);
      if (*(a1 + 452))
      {
        v37 = *(a1 + 456);
        if (*(v37 + 4))
        {
          v38 = *v37;
          if (*(v38 + 16))
          {
            v39 = **(v38 + 8);
          }
        }
      }

      if (*(a1 + 464))
      {
        v56 = *(a1 + 464);
      }

      else
      {
        v56 = "???";
      }

      v57 = (off_100010050[11])(v56);
      v58 = (off_100010050[5])(v57);
      (off_100010050[2])(v58);
    }

    if ((a2 == 88 || dword_100010198) && *(a1 + 452))
    {
      for (j = 0; j < *(a1 + 452); ++j)
      {
        v60 = (off_100010050[4])("       ", 0);
        v61 = *(a1 + 456);
        v62 = v61 + 24 * j;
        v64 = *(v62 + 20);
        v63 = (v62 + 20);
        if (v64)
        {
          LODWORD(v65) = 0;
        }

        else
        {
          strcpy(__str, "/");
          v65 = 1;
          if (!*v63)
          {
            goto LABEL_201;
          }
        }

        v66 = 0;
        do
        {
          v67 = *(v61 + 24 * j + 8);
          if (*(v67 + 8 * v66) && !strncmp(*(v67 + 8 * v66), "ftp:", 4uLL))
          {
            v60 = snprintf(&__str[v65], 1024 - v65, "%s/");
          }

          else
          {
            v60 = snprintf(&__str[v65], 1024 - v65, "/%s");
          }

          LODWORD(v65) = v60 + v65;
          ++v66;
          a1 = v92;
          v61 = *(v92 + 456);
        }

        while (v66 < *(v61 + 24 * j + 20));
        v65 = v65;
LABEL_201:
        __str[v65] = 0;
        v68 = v61 + 24 * j;
        if (*(v68 + 16))
        {
          v69 = 0;
          v70 = 0;
          do
          {
            v71 = *(*v68 + v69);
            if (v71)
            {
              v72 = *v68 + v69;
              v73 = *(v72 + 16);
              v74 = *(v72 + 8);
            }

            else
            {
              v71 = "<local domaim>";
              v73 = 0;
              v74 = 0;
            }

            v60 = (off_100010050[11])(__str, v71, v73, v74);
            ++v70;
            v68 = *(a1 + 456) + 24 * j;
            v69 += 24;
          }

          while (v70 < *(v68 + 16));
        }

        (off_100010050[5])(v60);
      }
    }

    result = (off_100010050[9])(0);
  }

  if (dword_100010198)
  {
    if ((*(a1 + 10) & 0x10) != 0)
    {
      return (off_100010050[13])(*(a1 + 320), a1 + 324);
    }
  }

  return result;
}

void sub_1000078D4(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v57 = 0;
  memset(v91, 0, 480);
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v64 = 0u;
  memset(v63, 0, sizeof(v63));
  v62 = 0x100000001;
  v58[0] = a2;
  v58[1] = a3;
  v58[2] = a3;
  v59 = a2;
  v60 = a3;
  v61 = 512;
  if (a2)
  {
    HIDWORD(v62) = 0;
  }

  bzero(v92, 0x400uLL);
  LODWORD(__dst) = 0;
  v7 = sub_100002000(v58, &__dst, 4u, 0);
  if (v7)
  {
    goto LABEL_4;
  }

  if (__dst)
  {
    printf("%s unknown mount info version %d\n\n");
    return;
  }

  LODWORD(__dst) = 0;
  v7 = sub_100002000(v58, &__dst, 4u, 0);
  if (v7)
  {
    goto LABEL_4;
  }

  if (bswap32(__dst) <= a3)
  {
    LODWORD(__dst) = 0;
    v7 = sub_100002000(v58, &__dst, 4u, 0);
    if (v7)
    {
      goto LABEL_4;
    }

    v9 = __dst;
    if (__dst)
    {
      LODWORD(__dst) = 0;
      v7 = sub_100002000(v58, &__dst, 4u, 0);
      if (v7)
      {
        goto LABEL_4;
      }

      v10 = bswap32(__dst);
      v11 = 1;
    }

    else
    {
      v11 = 0;
      v10 = 0;
    }

    v12 = bswap32(v9);
    if (v11 >= v12)
    {
      v7 = 0;
    }

    else
    {
      v7 = 0;
      v13 = v59;
      v14 = v60;
      do
      {
        if (!v7)
        {
          v15 = 4;
          while (v14)
          {
            if (v14 >= v15)
            {
              v16 = v15;
            }

            else
            {
              v16 = v14;
            }

            v13 += v16;
            v14 -= v16;
            v59 = v13;
            v60 = v14;
            v15 -= v16;
            if (!v15)
            {
              v7 = 0;
              goto LABEL_28;
            }
          }

          v7 = 72;
        }

LABEL_28:
        ++v11;
      }

      while (v11 != v12);
      v11 = 1;
    }

    v17 = v11 == 0;
    do
    {
      v18 = v17;
      v19 = v10;
      v10 = 0;
      v17 = 0;
    }

    while (v18);
    if (v19)
    {
      LODWORD(__dst) = 0;
      if (v7)
      {
        goto LABEL_4;
      }

      v7 = sub_100002000(v58, &__dst, 4u, 0);
      if (v7)
      {
        goto LABEL_4;
      }

      v26 = __dst;
      if (__dst)
      {
        LODWORD(__dst) = 0;
        v57 = 0;
        v7 = sub_100002000(v58, &__dst, 4u, 0);
        if (v7)
        {
          goto LABEL_4;
        }

        v27 = bswap32(__dst);
        v28 = 1;
      }

      else
      {
        v28 = 0;
        v27 = 0;
      }

      v29 = bswap32(v26);
      if (v28 >= v29)
      {
        v7 = 0;
      }

      else
      {
        v7 = 0;
        v30 = v59;
        v31 = v60;
        do
        {
          if (!v7)
          {
            v32 = 4;
            while (v31)
            {
              if (v31 >= v32)
              {
                v33 = v32;
              }

              else
              {
                v33 = v31;
              }

              v30 += v33;
              v31 -= v33;
              v59 = v30;
              v60 = v31;
              v32 -= v33;
              if (!v32)
              {
                v7 = 0;
                goto LABEL_69;
              }
            }

            v7 = 72;
          }

LABEL_69:
          ++v28;
        }

        while (v28 != v29);
        v28 = 1;
      }

      v46 = v28 == 0;
      do
      {
        v47 = v46;
        v48 = v27;
        v27 = 0;
        v46 = 0;
      }

      while (v47);
      v57 = v48;
      if (v7)
      {
        goto LABEL_4;
      }
    }

    else if (v7)
    {
      goto LABEL_4;
    }

    if ((v19 & 2) != 0)
    {
      LODWORD(__dst) = 0;
      v7 = sub_100002000(v58, &__dst, 4u, 0);
      if (!v7)
      {
        v7 = sub_100004ADC(v58, bswap32(__dst), v91);
      }

      if ((v19 & 4) == 0)
      {
        v24 = 1;
        goto LABEL_53;
      }

      LODWORD(__dst) = 0;
      if (v7)
      {
LABEL_52:
        v24 = 0;
LABEL_53:
        if ((v19 & 8) == 0)
        {
          v23 = 0;
          v22 = 0;
          v21 = 0;
          v20 = 0;
          v25 = 1;
          goto LABEL_78;
        }

        LODWORD(__dst) = 0;
        if (v7)
        {
          goto LABEL_73;
        }

        goto LABEL_72;
      }
    }

    else
    {
      if ((v19 & 4) == 0)
      {
        if ((v19 & 8) == 0)
        {
          v20 = 0;
          v21 = 0;
          v22 = 0;
          v23 = 0;
          v24 = 1;
          v25 = 1;
LABEL_79:
          if ((BYTE8(v63[0]) & 2) != 0 && ((a4 & 1) == 0 && v64 < 4 || (a4 & 2) == 0 && v64 > 3))
          {
            goto LABEL_6;
          }

          v34 = (off_100010050[12])(a1 + 88, a1 + 1112);
          if ((v19 & 2) != 0)
          {
            (off_100010050[3])("  -- ", "Original mount options");
            v35 = sub_10000676C(v91, v91[0]);
            v34 = (off_100010050[5])(v35);
            if (v24)
            {
LABEL_82:
              if ((v19 & 1) == 0)
              {
                goto LABEL_123;
              }

LABEL_118:
              (off_100010050[6])("     ", "Status flags", &v57);
              v50 = v57;
              if (v57)
              {
                (off_100010050[7])(44, "dead", &unk_1000092A3);
                v50 = v57;
                if ((v57 & 2) == 0)
                {
LABEL_120:
                  if ((v50 & 4) == 0)
                  {
LABEL_122:
                    v34 = (off_100010050[9])(1);
LABEL_123:
                    v8 = (off_100010050[5])(v34);
                    goto LABEL_5;
                  }

LABEL_121:
                  (off_100010050[7])(44, "recovery", &unk_1000092A3);
                  goto LABEL_122;
                }
              }

              else if ((v57 & 2) == 0)
              {
                goto LABEL_120;
              }

              (off_100010050[7])(44, "not responding", &unk_1000092A3);
              if ((v57 & 4) == 0)
              {
                goto LABEL_122;
              }

              goto LABEL_121;
            }
          }

          else if (v24)
          {
            goto LABEL_82;
          }

          (off_100010050[3])("  -- ", "Current mount parameters");
          v36 = sub_10000676C(v63, v91[0]);
          if ((v25 & 1) == 0 && (dword_100010198 || DWORD1(v89) > 1 || *(*(&v89 + 1) + 16) > 1u || *(**(&v89 + 1) + 16) >= 2u))
          {
            if (v22 >= DWORD1(v89) || (v37 = *(&v89 + 1) + 24 * v22, v21 >= *(v37 + 16)) || v20 >= *(*v37 + 24 * v21 + 16))
            {
              v49 = (off_100010050[10])("     ", "Current location", v23, v22, v21, v20, 1);
            }

            else
            {
              v38 = (off_100010050[10])("     ", "Current location", v23, v22, v21, v20, 0);
              (off_100010050[2])(v38);
              (off_100010050[1])("       ");
              v39 = *(&v89 + 1);
              if (*(*(&v89 + 1) + 24 * v22 + 20))
              {
                v40 = 0;
                v41 = 0;
                do
                {
                  v42 = *(v39 + 24 * v22 + 8);
                  if (*(v42 + 8 * v40) && !strncmp(*(v42 + 8 * v40), "ftp:", 4uLL))
                  {
                    v43 = snprintf(v92 + v41, 1024 - v41, "%s/");
                  }

                  else
                  {
                    v43 = snprintf(v92 + v41, 1024 - v41, "/%s");
                  }

                  v41 += v43;
                  ++v40;
                  v39 = *(&v89 + 1);
                  v44 = *(&v89 + 1) + 24 * v22;
                }

                while (v40 < *(v44 + 20));
                v45 = v41;
              }

              else
              {
                v92[0] = 47;
                v44 = *(&v89 + 1) + 24 * v22;
                v45 = 1;
              }

              *(v92 + v45) = 0;
              v51 = *(*v44 + 24 * v21);
              if (v51)
              {
                __dst = *(*(*v44 + 24 * v21 + 8) + 8 * v20);
                v52 = off_100010050[11];
                v53 = __dst != 0;
                p_dst = &__dst;
              }

              else
              {
                v52 = off_100010050[11];
                v51 = "<local domain>";
                v53 = 0;
                p_dst = 0;
              }

              v55 = (v52)(v92, v51, v53, p_dst);
              v49 = (off_100010050[2])(v55);
            }

            v36 = (off_100010050[5])(v49);
          }

          v34 = (off_100010050[5])(v36);
          if ((v19 & 1) == 0)
          {
            goto LABEL_123;
          }

          goto LABEL_118;
        }

        LODWORD(__dst) = 0;
        v24 = 1;
LABEL_72:
        v7 = sub_100002000(v58, &__dst, 4u, 0);
        if (!v7)
        {
          v23 = bswap32(__dst);
          LODWORD(__dst) = 0;
          v7 = sub_100002000(v58, &__dst, 4u, 0);
          if (!v7)
          {
            v22 = bswap32(__dst);
            LODWORD(__dst) = 0;
            v7 = sub_100002000(v58, &__dst, 4u, 0);
            if (!v7)
            {
              v21 = bswap32(__dst);
              LODWORD(__dst) = 0;
              v7 = sub_100002000(v58, &__dst, 4u, 0);
              if (!v7)
              {
                v20 = bswap32(__dst);
                goto LABEL_77;
              }

LABEL_76:
              v20 = 0;
LABEL_77:
              v25 = 0;
LABEL_78:
              if (!v7)
              {
                goto LABEL_79;
              }

LABEL_4:
              v8 = printf("%s error parsing mount info (%d)\n", (a1 + 88), v7);
LABEL_5:
              (off_100010050[2])(v8);
LABEL_6:
              sub_100004888(v91);
              sub_100004888(v63);
              return;
            }

LABEL_75:
            v21 = 0;
            goto LABEL_76;
          }

LABEL_74:
          v22 = 0;
          goto LABEL_75;
        }

LABEL_73:
        v23 = 0;
        goto LABEL_74;
      }

      LODWORD(__dst) = 0;
    }

    v7 = sub_100002000(v58, &__dst, 4u, 0);
    if (!v7)
    {
      v7 = sub_100004ADC(v58, bswap32(__dst), v63);
    }

    goto LABEL_52;
  }

  printf("%s bogus mount info length %u > %zu\n\n");
}

uint64_t sub_1000081D0(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = *(result + 4);
    if (v2)
    {
      v4 = 0;
      v5 = result + 12;
      v6 = 1;
      do
      {
        v7 = v5 + 1049 * v4;
        v8 = sub_100008304(v7, a2);
        v9 = *(v7 + 1025);
        if (v8)
        {
          v10 = *(v8 + 1025);
          v11 = *(v8 + 1033);
          v12 = v10 - v9;
          v13 = v9 >= v10;
          v14 = v9 - v10;
          if (!v13)
          {
            v14 = v12;
          }

          v15 = *(v7 + 1033);
          v16 = v11 - v15;
          v13 = v15 >= v11;
          v17 = v15 - v11;
          if (!v13)
          {
            v17 = v16;
          }

          v18 = *(v7 + 1041);
          v19 = *(v8 + 1041);
          v20 = v19 - v18;
          v13 = v18 >= v19;
          v21 = v18 - v19;
          if (!v13)
          {
            v21 = v20;
          }

          result = printf("%12llu %12llu %12llu %s\n", v14, v17, v21, v7);
        }

        else
        {
          result = printf("%12llu %12llu %12llu %s\n", v9, *(v7 + 1033), *(v7 + 1041), v7);
        }

        v4 = v6;
      }

      while (v2 > v6++);
    }

    else
    {

      return puts("No exported directories found");
    }
  }

  return result;
}

const char *sub_100008304(char *__s1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *(a2 + 4);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  v5 = a2 + 12;
  v6 = 1;
  while (1)
  {
    v7 = (v5 + 1049 * v4);
    if (!strcmp(__s1, v7))
    {
      break;
    }

    v4 = v6;
    if (v2 <= v6++)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t **sub_10000837C(uint64_t a1)
{
  v1 = *(a1 + 4);
  if (!v1)
  {
    return 0;
  }

  v3 = malloc_type_malloc(8uLL, 0x2004093837F09uLL);
  v4 = v3;
  if (v3)
  {
    v5 = 0;
    v6 = 0;
    *v3 = 0;
    v7 = (a1 + 8);
    do
    {
      v8 = *v7;
      if (*v7)
      {
        if (v8 != 1)
        {
          printf("nfsstat: unexpected record type 0x%02x in active user data stream\n", v8);
LABEL_22:
          sub_10000871C(v4);
          free(v4);
          return 0;
        }

        v9 = malloc_type_malloc(0x20uLL, 0xA00404900C826uLL);
        if (!v9)
        {
          goto LABEL_22;
        }

        v6 = v9;
        v9[2] = 0;
        v9[3] = v7;
        v10 = *v4;
        *v9 = *v4;
        if (v10)
        {
          v10[1] = v9;
        }

        *v4 = v9;
        v9[1] = v4;
        v11 = 1026;
      }

      else
      {
        if (!v6)
        {
          goto LABEL_22;
        }

        v12 = malloc_type_malloc(0x18uLL, 0xA0040A8488062uLL);
        if (!v12)
        {
          goto LABEL_22;
        }

        v12[2] = v7;
        v13 = v6 + 2;
        v14 = v6[2];
        if (v14)
        {
          while (1)
          {
            v13 = v14;
            if (*(v7 + 165) > *(v14[2] + 165))
            {
              break;
            }

            v14 = *v14;
            if (!*v13)
            {
              *v12 = 0;
              *v13 = v12;
              v11 = 173;
              goto LABEL_17;
            }
          }

          v15 = v14[1];
          *v12 = v13;
          v12[1] = v15;
          *v15 = v12;
          v13[1] = v12;
          v11 = 173;
        }

        else
        {
          *v13 = v12;
          v11 = 173;
          *v12 = 0;
LABEL_17:
          v12[1] = v13;
        }
      }

      v7 += v11;
      ++v5;
    }

    while (v5 != v1);
  }

  return v4;
}

uint64_t sub_100008518(uint64_t a1, char a2)
{
  v20 = 0uLL;
  memset(v17, 0, 28);
  v16.tv_sec = 0;
  *&v16.tv_usec = 0;
  v15 = 0;
  bzero(v19, 0x401uLL);
  v18 = 0x2A202A202A202ALL;
  gettimeofday(&v16, &v15);
  v4 = *(a1 + 165);
  v5 = *(a1 + 6);
  if (v5 == 30)
  {
    v17[0] = *(a1 + 5);
    *(v17 + 12) = *(a1 + 17);
    if ((a2 & 1) == 0)
    {
      v10 = gethostbyaddr(v17 + 8, 0x10u, 30);
      if (v10)
      {
        h_name = v10->h_name;
        if (v10->h_name)
        {
          goto LABEL_13;
        }
      }
    }

    h_name = v19;
    v8 = v17 + 8;
    v9 = 30;
LABEL_11:
    if (!inet_ntop(v9, v8, v19, 0x401u))
    {
      h_name = &v18;
    }

LABEL_13:
    if ((a2 & 2) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (v5 == 2)
  {
    v20 = *(a1 + 5);
    if ((a2 & 1) == 0)
    {
      v6 = gethostbyaddr(&v20 + 4, 4u, 2);
      if (v6)
      {
        h_name = v6->h_name;
        if (v6->h_name)
        {
          goto LABEL_13;
        }
      }
    }

    h_name = v19;
    v8 = &v20 + 4;
    v9 = 2;
    goto LABEL_11;
  }

  h_name = &v18;
  if ((a2 & 2) != 0)
  {
LABEL_18:
    v12 = 0;
    v13 = 1;
    return (off_100010050[15])(a1, h_name, v12, v13);
  }

LABEL_16:
  v11 = getpwuid(*(a1 + 1));
  if (!v11)
  {
    goto LABEL_18;
  }

  v12 = v11;
  v13 = 0;
  return (off_100010050[15])(a1, h_name, v12, v13);
}

void sub_10000871C(uint64_t **a1)
{
  for (i = *a1; *a1; i = *a1)
  {
    v3 = *i;
    v4 = i[1];
    if (*i)
    {
      *(v3 + 8) = v4;
    }

    *v4 = v3;
    while (1)
    {
      v5 = i[2];
      if (!v5)
      {
        break;
      }

      v6 = *v5;
      v7 = v5[1];
      if (*v5)
      {
        *(v6 + 8) = v7;
      }

      *v7 = v6;
      free(v5);
    }

    free(i);
  }
}

void sub_100008784(uint64_t a1, uint64_t a2, char a3)
{
  if (!a1)
  {
    return;
  }

  if (*(a1 + 4))
  {
    v5 = sub_10000837C(a1);
    if (v5)
    {
      v6 = v5;
      memset(v16, 0, 173);
      for (i = *v5; i; i = *i)
      {
        v8 = i[3];
        puts((v8 + 1));
        for (j = i[2]; j; j = *j)
        {
          v10 = j[2];
          v11 = sub_10000895C((v8 + 1), v10, a2);
          if (v11)
          {
            v13 = *(v10 + 5);
            v12 = v10 + 5;
            *(v16 + 1) = *(v12 - 4);
            *(&v16[9] + 13) = *(v12 + 152);
            *(&v16[8] + 5) = vsubq_s64(*(v12 + 128), *(v11 + 133));
            *(&v16[9] + 5) = *(v12 + 144) - *(v11 + 149);
            __memmove_chk();
            v14 = v16;
          }

          else
          {
            v14 = v10;
          }

          sub_100008518(v14, a3);
        }
      }

      sub_10000871C(v6);
      free(v6);
      return;
    }

    v15 = "Not enough  memory for displaying active user statistics";
  }

  else
  {
    v15 = "No NFS active user statistics found.";
  }

  puts(v15);
}

uint64_t sub_10000895C(char *__s1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(a3 + 4);
    if (v3)
    {
      v6 = 0;
      v7 = a3 + 8;
      do
      {
        if (*v7)
        {
          if (*v7 != 1 || v6)
          {
            return 0;
          }

          v6 = strcmp(__s1, (v7 + 1)) == 0;
          v8 = 1026;
        }

        else
        {
          if (v6 && !sub_100008A04(a2, v7))
          {
            return v7;
          }

          v8 = 173;
        }

        v7 += v8;
        --v3;
      }

      while (v3);
    }
  }

  return 0;
}

BOOL sub_100008A04(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1) != *(a2 + 1))
  {
    return 1;
  }

  v2 = (a2 + 5);
  if (*(a1 + 5) != *(a2 + 5))
  {
    return 1;
  }

  v3 = *(a1 + 6);
  if (v3 != *(a2 + 6))
  {
    return 1;
  }

  if (v3 == 2)
  {
    v4 = *v2;
    v5 = HIDWORD(*(a1 + 5)) == HIDWORD(*v2);
  }

  else
  {
    v7 = *v2;
    v5 = *(a1 + 109) >> 64 == *(a2 + 13) && (*(a1 + 17) >> 32) == (*(a2 + 17) >> 32);
  }

  return !v5;
}