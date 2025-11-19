uint64_t sub_100000818()
{
  v0 = qword_100008068;
  if (!qword_100008068)
  {
    v0 = "YonkersUtil";
    qword_100008068 = "YonkersUtil";
  }

  printf("Usage: %s -c [-h] .....\n", v0);
  puts("OPTIONS:\n");
  puts("\t\t --certData\t\t\t\t\tGet the Yonkers certification data struct");
  puts("\t\t --help\t\t\t\t\t\tUsage");

  return puts("\n");
}

uint64_t start(int a1, char **a2)
{
  v4 = 0;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  do
  {
    v5 = IOServiceNameMatching((&off_100004090)[v4]);
    dword_100008060 = IOServiceGetMatchingService(kIOMainPortDefault, v5);
    if (dword_100008060)
    {
      v6 = 1;
    }

    else
    {
      v6 = v4 == 3;
    }

    ++v4;
  }

  while (!v6);
  v7 = basename(*a2);
  qword_100008068 = v7;
  if (a1 >= 2)
  {
    v8 = 0;
    while (1)
    {
      v9 = getopt_long(a1, a2, "c:h", &off_100008000, 0);
      if (v9 == -1)
      {
        break;
      }

      if (v9 == 99)
      {
        v8 = 1;
      }

      else
      {
        sub_100000818();
      }
    }

    if (v8)
    {
      sub_100000BE8(v11);
    }
  }

  else
  {
    printf("%s: ERROR: At least one option required\n", v7);
    sub_100000818();
  }

  if (dword_100008060)
  {
    IOObjectRelease(dword_100008060);
  }

  return 0;
}

CFTypeRef sub_1000009F8(io_registry_entry_t a1, const __CFString *a2)
{

  return IORegistryEntryCreateCFProperty(a1, a2, v2, 0);
}

uint64_t sub_100000A10(uint64_t a1)
{
  v2 = 3758097136;
  v3 = sub_1000009F8(dword_100008060, @"YonkersMNS");
  if (!v3)
  {
    return v2;
  }

  v4 = v3;
  v5 = CFGetTypeID(v3);
  if (v5 != CFDataGetTypeID())
  {
    goto LABEL_19;
  }

  BytePtr = CFDataGetBytePtr(v4);
  if (BytePtr)
  {
    v7 = *BytePtr;
    if (v7 == 4)
    {
      *a1 = 0;
      v7 = *BytePtr;
    }

    if (v7 == 8)
    {
      *a1 = 1;
    }
  }

  CFRelease(v4);
  v8 = sub_1000009F8(dword_100008060, @"YonkersChipID");
  if (!v8)
  {
    return v2;
  }

  v4 = v8;
  v9 = CFGetTypeID(v8);
  if (v9 != CFDataGetTypeID())
  {
    goto LABEL_19;
  }

  v10 = CFDataGetBytePtr(v4);
  if (v10)
  {
    *(a1 + 4) = bswap32(*v10);
  }

  CFRelease(v4);
  v11 = sub_1000009F8(dword_100008060, @"YonkersUID");
  if (!v11)
  {
    return v2;
  }

  v4 = v11;
  v12 = CFGetTypeID(v11);
  if (v12 != CFDataGetTypeID())
  {
    goto LABEL_19;
  }

  v18.location = 0;
  v18.length = 16;
  CFDataGetBytes(v4, v18, (a1 + 8));
  CFRelease(v4);
  v13 = sub_1000009F8(dword_100008060, @"YonkersPubKey");
  if (!v13)
  {
    return v2;
  }

  v4 = v13;
  v14 = CFGetTypeID(v13);
  if (v14 != CFDataGetTypeID())
  {
LABEL_19:
    CFRelease(v4);
    return v2;
  }

  v19.location = 0;
  v19.length = 64;
  CFDataGetBytes(v4, v19, (a1 + 24));
  CFRelease(v4);
  v15 = sub_1000009F8(dword_100008060, @"YonkersPubKeyHmac");
  if (v15)
  {
    v4 = v15;
    v16 = CFGetTypeID(v15);
    if (v16 == CFDataGetTypeID())
    {
      v20.location = 0;
      v20.length = 32;
      CFDataGetBytes(v4, v20, (a1 + 88));
      v2 = 0;
    }

    goto LABEL_19;
  }

  return v2;
}