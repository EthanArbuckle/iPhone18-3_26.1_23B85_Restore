uint64_t sub_100000818()
{
  v0 = qword_100008088;
  if (!qword_100008088)
  {
    v0 = "SavageUtil";
    qword_100008088 = "SavageUtil";
  }

  printf("Usage: %s -c [-a] [-h] .....\n", v0);
  puts("OPTIONS:\n");
  puts("\t\t --certData\t\t\t\t\tGet the Savage certification data struct");
  puts("\t\t --authCertData\t\t\t\tGet the Brunor auth certification data struct");
  puts("\t\t --help\t\t\t\t\t\tUsage");

  return puts("\n");
}

CFTypeRef sub_1000008D0(io_registry_entry_t a1, const __CFString *a2)
{

  return IORegistryEntryCreateCFProperty(a1, a2, v2, 0);
}

uint64_t sub_1000008FC()
{
  v4 = sub_1000008B0();
  v5 = sub_1000008D0(v4, @"SavageMNS");
  if (!v5)
  {
    return v0;
  }

  v6 = v5;
  v7 = CFGetTypeID(v5);
  if (v7 != CFDataGetTypeID())
  {
    goto LABEL_23;
  }

  BytePtr = CFDataGetBytePtr(v6);
  if (BytePtr)
  {
    v9 = *BytePtr;
    if (v9 == 6)
    {
      *v1 = 0;
      v9 = *BytePtr;
    }

    if (v9 == 10)
    {
      *v1 = 1;
    }
  }

  CFRelease(v6);
  v10 = sub_1000008D0(*(v3 + 128), @"SavageChipID");
  if (!v10)
  {
    return v0;
  }

  v6 = v10;
  v11 = CFGetTypeID(v10);
  if (v11 != CFDataGetTypeID())
  {
    goto LABEL_23;
  }

  v12 = sub_1000008A4();
  v44.length = 4;
  CFDataGetBytes(v12, v44, v13);
  CFRelease(v6);
  v22 = sub_1000008E8(v14, v15, v16, v17, v18, v19, v20, v21, v42, v43, HIDWORD(v43));
  v23 = sub_1000008D0(v22, @"SavageUID");
  if (!v23)
  {
    return v0;
  }

  v6 = v23;
  v24 = CFGetTypeID(v23);
  if (v24 != CFDataGetTypeID())
  {
    goto LABEL_23;
  }

  v25 = sub_1000008A4();
  v45.length = 16;
  CFDataGetBytes(v25, v45, v26);
  CFRelease(v6);
  if (v2 != 2)
  {
    if (v2 != 1)
    {
      return 0;
    }

    v27 = sub_1000008D0(*(v3 + 128), @"SavagePubKey");
    if (!v27)
    {
      return v0;
    }

    v6 = v27;
    v28 = CFGetTypeID(v27);
    if (v28 == CFDataGetTypeID())
    {
      v29 = sub_1000008A4();
      v46.length = 56;
      CFDataGetBytes(v29, v46, v30);
      CFRelease(v6);
      v31 = *(v3 + 128);
      v32 = @"SavagePubKeyHmac";
      goto LABEL_20;
    }

LABEL_23:
    CFRelease(v6);
    return v0;
  }

  v33 = sub_1000008D0(*(v3 + 128), @"SavageAuthPubKey");
  if (!v33)
  {
    return v0;
  }

  v6 = v33;
  v34 = CFGetTypeID(v33);
  if (v34 != CFDataGetTypeID())
  {
    goto LABEL_23;
  }

  v35 = sub_1000008A4();
  v47.length = 56;
  CFDataGetBytes(v35, v47, v36);
  CFRelease(v6);
  v31 = *(v3 + 128);
  v32 = @"SavageAuthPubKeyHmac";
LABEL_20:
  v37 = sub_1000008D0(v31, v32);
  if (v37)
  {
    v6 = v37;
    v38 = CFGetTypeID(v37);
    if (v38 == CFDataGetTypeID())
    {
      v39 = sub_1000008A4();
      v48.length = 32;
      CFDataGetBytes(v39, v48, v40);
      v0 = 0;
    }

    goto LABEL_23;
  }

  return v0;
}

uint64_t sub_100000B2C()
{
  v4 = sub_1000008B0();
  v5 = sub_1000008D0(v4, @"SavageMNS");
  if (!v5)
  {
    return v0;
  }

  v6 = v5;
  v7 = CFGetTypeID(v5);
  if (v7 != CFDataGetTypeID())
  {
    goto LABEL_23;
  }

  BytePtr = CFDataGetBytePtr(v6);
  if (BytePtr)
  {
    v9 = *BytePtr;
    if (v9 == 222)
    {
      *v1 = 0;
      v9 = *BytePtr;
    }

    if (v9 == 173)
    {
      *v1 = 1;
    }
  }

  CFRelease(v6);
  v10 = sub_1000008D0(*(v3 + 128), @"SavageChipID");
  if (!v10)
  {
    return v0;
  }

  v6 = v10;
  v11 = CFGetTypeID(v10);
  if (v11 != CFDataGetTypeID())
  {
    goto LABEL_23;
  }

  v12 = sub_1000008A4();
  v44.length = 4;
  CFDataGetBytes(v12, v44, v13);
  CFRelease(v6);
  v22 = sub_1000008E8(v14, v15, v16, v17, v18, v19, v20, v21, v42, v43, HIDWORD(v43));
  v23 = sub_1000008D0(v22, @"SavageUID");
  if (!v23)
  {
    return v0;
  }

  v6 = v23;
  v24 = CFGetTypeID(v23);
  if (v24 != CFDataGetTypeID())
  {
    goto LABEL_23;
  }

  v25 = sub_1000008A4();
  v45.length = 16;
  CFDataGetBytes(v25, v45, v26);
  CFRelease(v6);
  if (v2 != 2)
  {
    if (v2 != 1)
    {
      return 0;
    }

    v27 = sub_1000008D0(*(v3 + 128), @"SavagePubKey");
    if (!v27)
    {
      return v0;
    }

    v6 = v27;
    v28 = CFGetTypeID(v27);
    if (v28 == CFDataGetTypeID())
    {
      v29 = sub_1000008A4();
      v46.length = 64;
      CFDataGetBytes(v29, v46, v30);
      CFRelease(v6);
      v31 = *(v3 + 128);
      v32 = @"SavagePubKeyHmac";
      goto LABEL_20;
    }

LABEL_23:
    CFRelease(v6);
    return v0;
  }

  v33 = sub_1000008D0(*(v3 + 128), @"SavageAuthPubKey");
  if (!v33)
  {
    return v0;
  }

  v6 = v33;
  v34 = CFGetTypeID(v33);
  if (v34 != CFDataGetTypeID())
  {
    goto LABEL_23;
  }

  v35 = sub_1000008A4();
  v47.length = 64;
  CFDataGetBytes(v35, v47, v36);
  CFRelease(v6);
  v31 = *(v3 + 128);
  v32 = @"SavageAuthPubKeyHmac";
LABEL_20:
  v37 = sub_1000008D0(v31, v32);
  if (v37)
  {
    v6 = v37;
    v38 = CFGetTypeID(v37);
    if (v38 == CFDataGetTypeID())
    {
      v39 = sub_1000008A4();
      v48.length = 32;
      CFDataGetBytes(v39, v48, v40);
      v0 = 0;
    }

    goto LABEL_23;
  }

  return v0;
}

uint64_t start(int a1, char **a2)
{
  v4 = 0;
  *buffer = 0;
  memset(__buf, 0, 112);
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  do
  {
    v5 = IOServiceNameMatching((&off_100004090)[v4]);
    dword_100008080 = IOServiceGetMatchingService(kIOMainPortDefault, v5);
    if (dword_100008080)
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
  qword_100008088 = v7;
  if (a1 >= 2)
  {
    v8 = 0;
    while (1)
    {
      while (1)
      {
        v9 = getopt_long(a1, a2, "c:h", &off_100008000, 0);
        if (v9 != 104)
        {
          break;
        }

        sub_100000818();
      }

      if (v9 == -1)
      {
        break;
      }

      if (v9 == 97)
      {
        v10 = 2;
      }

      else
      {
        v10 = v8;
      }

      if (v9 == 99)
      {
        v8 = 1;
      }

      else
      {
        v8 = v10;
      }
    }

    CFProperty = IORegistryEntryCreateCFProperty(dword_100008080, @"SavageChipID", kCFAllocatorDefault, 0);
    if (CFProperty)
    {
      v12 = CFProperty;
      v13 = CFGetTypeID(CFProperty);
      if (v13 == CFDataGetTypeID())
      {
        v23.location = 0;
        v23.length = 4;
        CFDataGetBytes(v12, v23, buffer);
        CFRelease(v12);
        v14 = *buffer;
        *buffer = bswap32(*buffer);
        if (v14 == 1800404992 || v14 == 1750073344)
        {
          sub_100000B2C();
          v16 = v20;
          v17 = 120;
        }

        else
        {
          sub_1000008FC();
          v16 = __buf;
          v17 = 112;
        }

        write(1, v16, v17);
      }
    }
  }

  else
  {
    printf("%s: ERROR: At least one option required\n", v7);
    sub_100000818();
  }

  if (dword_100008080)
  {
    IOObjectRelease(dword_100008080);
  }

  return 0;
}