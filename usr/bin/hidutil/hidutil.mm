uint64_t sub_100000AE0(void *a1, int a2)
{
  v3 = a1;
  v4 = v3;
  if ((byte_10000C290 & 1) == 0)
  {
    v19 = off_10000C140;
    v20 = 11;
    do
    {
      *(v19 - 1) = [*v19 length];
      v19 += 4;
      --v20;
    }

    while (v20);
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    obja = v4;
    v21 = [obja countByEnumeratingWithState:&v58 objects:v68 count:16];
    v48 = v4;
    if (v21)
    {
      v22 = v21;
      v49 = a2;
      v23 = 0;
      v24 = *v59;
      do
      {
        v25 = 0;
        v26 = v23;
        do
        {
          if (*v59 != v24)
          {
            objc_enumerationMutation(obja);
          }

          v23 = *(*(&v58 + 1) + 8 * v25);

          v27 = &qword_10000C138;
          v28 = 11;
          do
          {
            v29 = [v23 objectForKeyedSubscript:*(v27 - 2)];
            v30 = sub_1000028EC(v29, *(v27 - 1));
            v31 = [v30 length];

            if (v31 > *v27)
            {
              *v27 = v31;
            }

            v27 += 4;
            --v28;
          }

          while (v28);
          v25 = v25 + 1;
          v26 = v23;
        }

        while (v25 != v22);
        v22 = [obja countByEnumeratingWithState:&v58 objects:v68 count:16];
      }

      while (v22);

      v4 = v48;
      a2 = v49;
    }

    if (a2)
    {
      v32 = "Devices:";
    }

    else
    {
      v32 = "Services:";
    }

    puts(v32);
    v33 = off_10000C140;
    v34 = 11;
    do
    {
      v35 = *(v33 - 2) + 1;
      v36 = *v33;
      v33 += 4;
      printf("%-*s", v35, [v36 cStringUsingEncoding:4]);
      --v34;
    }

    while (v34);
    putchar(10);
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v50 = obja;
    v37 = [v50 countByEnumeratingWithState:&v54 objects:v67 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = 0;
      objb = *v55;
      do
      {
        v40 = 0;
        v41 = v39;
        do
        {
          if (*v55 != objb)
          {
            objc_enumerationMutation(v50);
          }

          v39 = *(*(&v54 + 1) + 8 * v40);

          v42 = &off_10000C128;
          v43 = 11;
          do
          {
            if (-[__CFString isEqualToString:](*v42, "isEqualToString:", @"Built-In") && ([v39 objectForKeyedSubscript:*v42], v44 = objc_claimAutoreleasedReturnValue(), v44, !v44))
            {
              v46 = @"0";
            }

            else
            {
              v45 = [v39 objectForKeyedSubscript:*v42];
              v46 = sub_1000028EC(v45, v42[1]);
            }

            printf("%-*s", *(v42 + 4) + 1, [(__CFString *)v46 UTF8String]);

            v42 += 4;
            --v43;
          }

          while (v43);
          putchar(10);
          v40 = v40 + 1;
          v41 = v39;
        }

        while (v40 != v38);
        v38 = [v50 countByEnumeratingWithState:&v54 objects:v67 count:16];
      }

      while (v38);

      v4 = v48;
    }

    putchar(10);
    goto LABEL_50;
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v5 = [v3 countByEnumeratingWithState:&v63 objects:v69 count:16];
  if (!v5)
  {
LABEL_50:
    v18 = 0;
    goto LABEL_51;
  }

  v6 = v5;
  v7 = 0;
  obj = 0;
  v8 = *v64;
  if (a2)
  {
    v9 = @"device";
  }

  else
  {
    v9 = @"service";
  }

  do
  {
    v10 = v4;
    v11 = 0;
    v12 = v7;
    do
    {
      if (*v64 != v8)
      {
        objc_enumerationMutation(v10);
      }

      v7 = *(*(&v63 + 1) + 8 * v11);

      v13 = [NSMutableDictionary dictionaryWithDictionary:v7];
      [v13 setObject:v9 forKeyedSubscript:@"type"];
      v62 = 0;
      v14 = [NSJSONSerialization dataWithJSONObject:v13 options:8 error:&v62];
      v15 = v62;
      v16 = v15;
      if (v15)
      {
        NSLog(@"NSJSONSerialization %@", v15);
        obj = 1;
      }

      else
      {
        v17 = [[NSString alloc] initWithData:v14 encoding:4];
        puts([v17 UTF8String]);
      }

      v11 = v11 + 1;
      v12 = v7;
    }

    while (v6 != v11);
    v4 = v10;
    v6 = [v10 countByEnumeratingWithState:&v63 objects:v69 count:16];
  }

  while (v6);

  v18 = obj;
LABEL_51:

  return v18;
}

uint64_t start(int a1, char **a2)
{
  if (a1 <= 1)
  {
    goto LABEL_2;
  }

  v5 = a2[optind];
  if (!strcmp(v5, "help") || *v5 == 45 && v5[1] == 104 && !v5[2] || !strcmp(v5, "--help"))
  {
    puts("\nUsage:\n\n  hidutil [command]\n\nAvailable commands:\n  help       - print this help message\n  dump       - dump HID Event System state\n  property   - read/write HID Event System property\n  list       - list HID Event System services and devices\n\nUse hidutil [command] --help for more information about a command.");
    return 0;
  }

  else if (!strcmp(v5, "dump"))
  {

    return sub_100001B20(a1, a2);
  }

  else if (!strcmp(v5, "list"))
  {

    return sub_100002DE4(a1, a2);
  }

  else
  {
    if (strcmp(v5, "property"))
    {
      printf("Unknown command: %s\n", v5);
LABEL_2:
      puts("\nUsage:\n\n  hidutil [command]\n\nAvailable commands:\n  help       - print this help message\n  dump       - dump HID Event System state\n  property   - read/write HID Event System property\n  list       - list HID Event System services and devices\n\nUse hidutil [command] --help for more information about a command.");
      return 1;
    }

    return sub_100001794(a1, a2);
  }
}

void sub_1000011A4(void *a1)
{
  v1 = a1;
  if ([v1 UTF8String])
  {
    printf("%s", [v1 UTF8String]);
  }
}

uint64_t sub_100001204(uint64_t a1, void *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100001278;
  v3[3] = &unk_100008338;
  v3[4] = a1;
  [a2 enumerateKeysAndObjectsUsingBlock:v3];
  return 0;
}

void sub_100001278(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  key = a2;
  v6 = [NSString stringWithFormat:@"%@:%@\n", key, v5];
  sub_1000011A4(v6);

  IOHIDEventSystemClientSetProperty(*(a1 + 32), key, v5);
}

uint64_t sub_100001310(__IOHIDEventSystemClient *a1, void *a2)
{
  v3 = a2;
  v4 = IOHIDEventSystemClientCopyServices(a1);
  if (v4)
  {
    printf("%-8s  %-20s  %s\n", "RegistryID", "Key", "Value");
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = v4;
    v6 = [(__CFArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          v11 = IOHIDServiceClientGetRegistryID(v10);
          v14[0] = _NSConcreteStackBlock;
          v14[1] = 3221225472;
          v14[2] = sub_1000014D4;
          v14[3] = &unk_100008360;
          v15 = v11;
          v16 = v10;
          v12 = v11;
          [v3 enumerateKeysAndObjectsUsingBlock:v14];
        }

        v7 = [(__CFArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }
  }

  return 0;
}

void sub_1000014D4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  key = a2;
  v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%-8lx   %-20@   %@\n", [v5 unsignedLongValue], key, v6);
  sub_1000011A4(v7);

  IOHIDServiceClientSetProperty(*(a1 + 40), key, v6);
}

uint64_t sub_100001588(__IOHIDEventSystemClient *a1, const __CFString *a2)
{
  v2 = IOHIDEventSystemClientCopyProperty(a1, a2);
  v3 = [NSString stringWithFormat:@"%@\n", v2];
  sub_1000011A4(v3);

  return 0;
}

uint64_t sub_1000015E4(__IOHIDEventSystemClient *a1, void *a2)
{
  v3 = a2;
  v4 = IOHIDEventSystemClientCopyServices(a1);
  if (v4)
  {
    printf("%-8s  %-20s  %s\n", "RegistryID", "Key", "Value");
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v15 = v4;
    v5 = v4;
    v6 = [(__CFArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = IOHIDServiceClientCopyProperty(v10, v3);
          v12 = IOHIDServiceClientGetRegistryID(v10);
          v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%-8lx   %-20@   %@\n", [v12 unsignedLongValue], v3, v11);
          sub_1000011A4(v13);
        }

        v7 = [(__CFArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    v4 = v15;
  }

  return 0;
}

uint64_t sub_100001794(int a1, char *const *a2)
{
  v4 = IOHIDEventSystemClientCreateWithType();
  if (v4)
  {
    v5 = v4;
    v17 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v8 = getopt_long(a1, a2, "hm:g:s:", &off_100008380, 0);
          if (v8 != 109)
          {
            break;
          }

          v7 = sub_100002850(v5, optarg);
          if ((v7 & 1) == 0)
          {
            printf("bad matching string: %s\n", optarg);
          }
        }

        if (v8 <= 103)
        {
          break;
        }

        if (v8 != 115)
        {
          if (v8 == 104)
          {
            puts("\nRead/Write HID Event System property\n\nUsage:\n\n  hidutil property [ --matching <matching> ][ --get <key> ][ --set <key> ]\n\nFlags:\n\n  -g  --get...................Get property with key (where key is string value)\n  -s  --set...................Set property (key/value pair JSON style dictionary)\n  -m  --matching..............Set matching services/devices\n                              Input can be either json style dictionary or common\n                              device string e.g. keyboard, mouse, digitizer.\n                                  Supported properties:\n                                      ProductID        - numeric value (decimal or hex)\n                                      VendorID         - numeric value (decimal or hex)\n                                      LocationID       - numeric value (decimal or hex)\n                                      PrimaryUsagePage - numeric value (decimal or hex)\n                                      PrimaryUsage     - numeric value (decimal or hex)\n                                      Transport        - string value\n                                      Product          - string value\n                                  For matching against generic properties, you will need to include\n                                  the IOPropertyMatch key (see example below).\n                                  Example strings:\n                                      'keyboard'\n                                      'digi'\n                                      '{ProductID:0x8600,VendorID:0x5ac}'\n                                      '[{ProductID:0x8600},{PrimaryUsagePage:1,PrimaryUsage:6}]'\n                                      '{IOPropertyMatch:{ReportInterval:1000}}'\n\nExamples:\n\n  hidutil property --matching '{ProductID:0x54c}' --get HIDPointerAcceleration\n  hidutil property --matching '{ProductID:0x54c,VendorID:746}' --set '{HIDPointerAcceleration:0}'\n  hidutil property --get HIDPointerAcceleration");
            v13 = 0;
          }

          else
          {
LABEL_17:
            v13 = 1;
          }

          v14 = v17;
          goto LABEL_27;
        }

        sub_10000231C(optarg);
        v11 = v16 = v6;
        v12 = sub_1000024D0(v11);

        v6 = v16;
        if (v12)
        {
          objc_opt_class();
          v17 = v12;
          if (objc_opt_isKindOfClass())
          {
            continue;
          }
        }

        printf("\nERROR!!!! Unable to create property object for '%s'\n", optarg);
        v17 = v12;
      }

      if (v8 == -1)
      {
        break;
      }

      if (v8 != 103)
      {
        goto LABEL_17;
      }

      v9 = [NSString stringWithUTF8String:optarg];
      v10 = v6;
      v6 = v9;
    }

    v14 = v17;
    if (v6 | v17)
    {
      if (!v6 || !v17)
      {
        if (v17)
        {
          [v17 enumerateKeysAndObjectsUsingBlock:&stru_100008440];
          if (v7)
          {
            sub_100001310(v5, v17);
          }

          else
          {
            v18[0] = _NSConcreteStackBlock;
            v18[1] = 3221225472;
            v18[2] = sub_100001278;
            v18[3] = &unk_100008338;
            v18[4] = v5;
            [v17 enumerateKeysAndObjectsUsingBlock:v18];
          }

          v13 = 0;
        }

        else
        {
          if (v7)
          {
            sub_1000015E4(v5, v6);
          }

          else
          {
            sub_100001588(v5, v6);
          }

          v13 = 0;
          v14 = 0;
        }

        goto LABEL_27;
      }
    }

    else
    {
      v14 = 0;
      v6 = 0;
    }

    v13 = 1;
LABEL_27:
    CFRelease(v5);

    return v13;
  }

  return 1;
}

void sub_100001A40(id a1, NSString *a2, id a3, BOOL *a4)
{
  v6 = a2;
  v5 = a3;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([(NSString *)v6 isEqualToString:@"UserKeyMapping"]|| [(NSString *)v6 isEqualToString:@"HIDKeyboardModifierMappingPairs"])
      {
        if ((_IOHIDIsRestrictedRemappingProperty() & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      else if (![(NSString *)v6 isEqualToString:@"CtrlKeyboardUsageMap"]|| !_IOHIDIsRestrictedRemappingProperty())
      {
        goto LABEL_10;
      }

      if (IOHIDCheckAccess(kIOHIDRequestTypeListenEvent))
      {
        puts("Attempt to remap alphanumerics / special characters. If setting fails, ensure Terminal has input monitoring permissions. ");
      }
    }
  }

LABEL_10:
}

uint64_t sub_100001B20(int a1, char **a2)
{
  v4 = sub_100001DDC;
LABEL_2:
  v5 = v4;
  while (1)
  {
    while (1)
    {
      v6 = getopt_long(a1, a2, "o:f:h", &off_100008460, 0);
      if (v6 <= 110)
      {
        break;
      }

      if (v6 == 111)
      {
        if (dword_10000C288 >= 3)
        {
          close(dword_10000C288);
        }

        dword_10000C288 = open(optarg, 513, 420);
        if (dword_10000C288 == -1)
        {
          puts("Error opening output file");
          return 1;
        }
      }
    }

    if (v6 == -1)
    {
      break;
    }

    if (v6 == 102)
    {
      v7 = optarg;
      v8 = strcmp(optarg, "xml");
      v4 = sub_100001DDC;
      if (v8)
      {
        if (!strcmp(v7, "text"))
        {
          v4 = sub_100001E98;
        }

        else
        {
          v4 = v5;
        }
      }

      goto LABEL_2;
    }

    if (v6 == 104)
    {
      puts("\nDump HID Event System state\n\nUsage:\n\n  hidutil dump [object] [flags]\n\nExamples:\n\n  hidutil dump system -f xml\n  hidutil dump system -o /tmp/state_dump.txt -f text\n\nObject:\n\n  system.....................HID Event System\n  clients....................HID Event System Clients\n  services...................HID Event System services\n\nFlags:\n\n  -f  --format ..............Format type (xml, text)\n  -o  --output...............Output file (or stdout if not specified)");
      return 0;
    }
  }

  v9 = optind + 1;
  v10 = sub_100001F44;
  if (v9 != a1 && (v11 = a2[v9], v12 = strcmp(v11, "system"), v10 = sub_100001F44, v12) && (v13 = strcmp(v11, "clients"), v10 = sub_100002010, v13) && (v14 = strcmp(v11, "services"), v10 = sub_10000201C, v14))
  {
    printf("unrecognized object: %s\n", v11);
  }

  else
  {
    v16 = v10;
    qword_10000C298 = IOHIDEventSystemClientCreateWithType();
    if (qword_10000C298)
    {
      IOHIDEventSystemClientSetMatching();
      qword_10000C2A0 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (qword_10000C2A0)
      {
        v17 = v16();
        if (v5)
        {
          (v5)(v17);
        }

        v15 = 0;
        goto LABEL_29;
      }
    }

    else
    {
      puts("Unable to create client");
    }
  }

  v15 = 1;
LABEL_29:
  if (qword_10000C298)
  {
    CFRelease(qword_10000C298);
  }

  if (qword_10000C2A0)
  {
    CFRelease(qword_10000C2A0);
  }

  if (dword_10000C288 >= 3)
  {
    close(dword_10000C288);
  }

  return v15;
}

void sub_100001DDC()
{
  Data = CFPropertyListCreateData(kCFAllocatorDefault, qword_10000C2A0, kCFPropertyListXMLFormat_v1_0, 0, 0);
  if (Data)
  {
    v1 = Data;
    v2 = dword_10000C288;
    BytePtr = CFDataGetBytePtr(Data);
    Length = CFDataGetLength(v1);
    v5 = write(v2, BytePtr, Length);
    if (v5 != CFDataGetLength(v1))
    {
      puts("Error writing to output.");
    }

    CFRelease(v1);
  }
}

void sub_100001E98()
{
  v0 = CFCopyDescription(qword_10000C2A0);
  if (v0)
  {
    v1 = v0;
    v2 = dword_10000C288;
    CStringPtr = CFStringGetCStringPtr(v0, 0x8000100u);
    Length = CFStringGetLength(v1);
    v5 = write(v2, CStringPtr, Length);
    if (v5 != CFStringGetLength(v1))
    {
      puts("Error writing to output.");
    }

    CFRelease(v1);
  }
}

void sub_100001F44()
{
  sub_100001F88(@"ClientRecords");
  sub_100001F88(@"ServiceRecords");

  sub_100001F88(@"SessionFilterDebug");
}

void sub_100001F88(CFStringRef key)
{
  v2 = IOHIDEventSystemClientCopyProperty(qword_10000C298, key);
  v3 = qword_10000C2A0;
  if (v2)
  {
    CFDictionaryAddValue(qword_10000C2A0, key, v2);

    CFRelease(v2);
  }

  else
  {

    CFDictionaryAddValue(v3, key, @"Unavailable");
  }
}

id sub_100002028(__IOHIDServiceClient *a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  if (v2)
  {
    [v2 setValue:IOHIDServiceClientGetRegistryID(a1) forKey:@"IORegistryEntryID"];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = [&off_100008CC8 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v12;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v12 != v5)
          {
            objc_enumerationMutation(&off_100008CC8);
          }

          v7 = *(*(&v11 + 1) + 8 * i);
          v8 = IOHIDServiceClientCopyProperty(a1, v7);
          [v2 setValue:v8 forKey:v7];
        }

        v4 = [&off_100008CC8 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v4);
    }

    v9 = v2;
  }

  return v2;
}

id sub_100002194(__IOHIDDevice *a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  entryID = 0xAAAAAAAAAAAAAAAALL;
  if (v2)
  {
    Service = IOHIDDeviceGetService(a1);
    IORegistryEntryGetRegistryEntryID(Service, &entryID);
    v4 = [NSNumber numberWithUnsignedLongLong:entryID];
    [v2 setValue:v4 forKey:@"IORegistryEntryID"];

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [&off_100008CC8 countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(&off_100008CC8);
          }

          [v2 setValue:IOHIDDeviceGetProperty(a1 forKey:{*(*(&v11 + 1) + 8 * i)), *(*(&v11 + 1) + 8 * i)}];
        }

        v6 = [&off_100008CC8 countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v6);
    }

    v9 = v2;
  }

  return v2;
}

id sub_100002320(uint64_t a1)
{
  v1 = [NSMutableString stringWithUTF8String:a1];
  v17 = 0;
  v2 = [NSRegularExpression regularExpressionWithPattern:@"0[xX][0-9a-f]+" options:1 error:&v17];
  v3 = [v2 firstMatchInString:v1 options:0 range:{0, objc_msgSend(v1, "length")}];
  if (v3)
  {
    v4 = v3;
    do
    {
      v5 = [v4 range];
      v7 = [v1 substringWithRange:{v5, v6}];
      v8 = [NSScanner scannerWithString:v7];

      v16 = 0;
      [v8 scanHexLongLong:&v16];
      v9 = [NSString stringWithFormat:@"%llu", v16];
      v10 = [v4 range];
      [v1 replaceCharactersInRange:v10 withString:{v11, v9}];
      v12 = [v4 range];
      v13 = [v9 length] + v12;

      v14 = [v2 firstMatchInString:v1 options:0 range:{v13, objc_msgSend(v1, "length") - v13}];

      v4 = v14;
    }

    while (v14);
  }

  return v1;
}

id sub_1000024D0(void *a1)
{
  v1 = [a1 dataUsingEncoding:4];
  v5 = 0;
  v2 = [NSJSONSerialization JSONObjectWithData:v1 options:1 error:&v5];
  v3 = v5;

  if (v3)
  {
    NSLog(@"NSJSONSerialization %@", v3);
  }

  return v2;
}

id sub_100002570(uint64_t a1)
{
  v1 = sub_100002320(a1);
  v2 = v1;
  if (!v1 || ![v1 length])
  {
    v4 = 0;
    goto LABEL_9;
  }

  v3 = [v2 substringToIndex:1];
  if ([v3 isEqual:@"["])
  {

LABEL_7:
    v7 = [v2 dataUsingEncoding:4];
    v10 = 0;
    v4 = [NSJSONSerialization JSONObjectWithData:v7 options:1 error:&v10];
    v8 = v10;

    goto LABEL_9;
  }

  v5 = [v2 substringToIndex:1];
  v6 = [v5 isEqual:@"{"];

  if (v6)
  {
    goto LABEL_7;
  }

  v4 = sub_100002698(v2);
LABEL_9:

  return v4;
}

id sub_100002698(void *a1)
{
  v1 = a1;
  v2 = [NSString stringWithUTF8String:"keyboard"];
  v3 = [v2 containsString:v1];

  if (v3)
  {
    v17[0] = @"PrimaryUsagePage";
    v17[1] = @"PrimaryUsage";
    v18[0] = &off_100008C68;
    v18[1] = &off_100008C80;
    v4 = v18;
    v5 = v17;
LABEL_5:
    v8 = 2;
LABEL_6:
    v9 = [NSDictionary dictionaryWithObjects:v4 forKeys:v5 count:v8];
    goto LABEL_7;
  }

  v6 = [NSString stringWithUTF8String:"mouse"];
  v7 = [v6 containsString:v1];

  if (v7)
  {
    v15[0] = @"PrimaryUsagePage";
    v15[1] = @"PrimaryUsage";
    v16[0] = &off_100008C68;
    v16[1] = &off_100008C98;
    v4 = v16;
    v5 = v15;
    goto LABEL_5;
  }

  v11 = [NSString stringWithUTF8String:"digitizer"];
  v12 = [v11 containsString:v1];

  if (v12)
  {
    v13 = @"PrimaryUsagePage";
    v14 = &off_100008CB0;
    v4 = &v14;
    v5 = &v13;
    v8 = 1;
    goto LABEL_6;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

uint64_t sub_100002850(uint64_t a1, uint64_t a2)
{
  v2 = sub_100002570(a2);
  if (!v2)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      IOHIDEventSystemClientSetMatchingMultiple();
      goto LABEL_6;
    }

LABEL_7:
    v3 = 0;
    goto LABEL_8;
  }

  IOHIDEventSystemClientSetMatching();
LABEL_6:
  v3 = 1;
LABEL_8:

  return v3;
}

id sub_1000028EC(void *a1, uint64_t a2)
{
  v3 = a1;
  if (a2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = &off_100008C50;
  }

  else
  {
    v5 = v3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (a2 == 16)
    {
      v9 = [v5 longLongValue];
      v6 = @"0x%llx";
    }

    else
    {
      v9 = [v5 unsignedLongValue];
      v6 = @"%lu";
    }

    [NSString stringWithFormat:v6, v9];
  }

  else
  {
    [NSString stringWithFormat:@"%@", v5];
  }
  v7 = ;

  return v7;
}

BOOL sub_1000029C4(void *a1, _DWORD *a2)
{
  v3 = a1;
  v4 = 0;
  v11 = unk_100008500;
  v12 = unk_100008510;
  v13 = unk_100008520;
  v9 = unk_1000084E0;
  v10 = unk_1000084F0;
  v5 = &v9 + 1;
  v6 = 1;
  while (![*v5 containsString:{v3, v9, v10, v11, v12, v13}])
  {
    v6 = v4 < 4;
    v5 += 2;
    if (++v4 == 5)
    {
      v6 = 0;
      goto LABEL_6;
    }
  }

  *a2 = *(v5 - 2);
LABEL_6:
  for (i = 72; i != -8; i -= 16)
  {
  }

  return v6;
}

void sub_100002AC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  for (i = 72; i != -8; i -= 16)
  {
  }

  _Unwind_Resume(a1);
}

id sub_100002AF0(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v1;
    objc_msgSend(v2, "appendString:", @"(");
    if ([v3 count])
    {
      v4 = 0;
      do
      {
        v5 = [v3 objectAtIndexedSubscript:v4];
        v6 = sub_100002AF0();
        [v2 appendString:v6];

        if (v4 < [v3 count] - 1)
        {
          [v2 appendString:{@", "}];
        }

        ++v4;
      }

      while (v4 < [v3 count]);
    }

    [v2 appendString:@""]);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v2 appendString:@"{"];
      v18 = v1;
      v7 = v1;
      v8 = [v7 allKeys];
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v20;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v20 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v19 + 1) + 8 * i);
            [v2 appendFormat:@"%@:", v13];
            v14 = [v7 objectForKeyedSubscript:v13];
            v15 = sub_100002AF0();
            [v2 appendString:v15];

            v16 = [v8 lastObject];

            if (v13 != v16)
            {
              [v2 appendString:{@", "}];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v10);
      }

      [v2 appendString:@"}"];

      v1 = v18;
    }

    else
    {
      [v2 appendFormat:@"%@", v1];
    }
  }

  return v2;
}

uint64_t sub_100002DE4(int a1, char **a2)
{
  for (i = 0; ; i = optarg)
  {
    while (1)
    {
      v5 = getopt_long(a1, a2, "hnm:", &off_1000082B8, 0);
      if (v5 != 110)
      {
        break;
      }

      byte_10000C290 = 1;
    }

    if (v5 == -1)
    {
      break;
    }

    if (v5 != 109)
    {
      if (v5 == 104)
      {
        puts("\nList HID Event System services and devices\n\nUsage:\n\n  hidutil list [--ndjson] [ --matching <matching> ]\n\nFlags:\n\n  -n  --ndjson................print service/device information in ndjson format\n  -m  --matching..............Set matching services/devices\n                              Input can be either json style dictionary or common\n                              device string e.g. keyboard, mouse, digitizer.\n                                  Supported properties:\n                                      ProductID        - numeric value (decimal or hex)\n                                      VendorID         - numeric value (decimal or hex)\n                                      LocationID       - numeric value (decimal or hex)\n                                      PrimaryUsagePage - numeric value (decimal or hex)\n                                      PrimaryUsage     - numeric value (decimal or hex)\n                                      Transport        - string value\n                                      Product          - string value\n                                  For matching against generic properties, you will need to include\n                                  the IOPropertyMatch key (see example below).\n                                  Example strings:\n                                      'keyboard'\n                                      'digi'\n                                      '{ProductID:0x8600,VendorID:0x5ac}'\n                                      '[{ProductID:0x8600},{PrimaryUsagePage:1,PrimaryUsage:6}]'\n                                      '{IOPropertyMatch:{ReportInterval:1000}}'\n\nExamples:\n\n  hidutil list\n  hidutil list --matching '{ProductID:0x54c}'\n  hidutil list --matching '{ProductID:0x54c,VendorID:746}'");
        return 0;
      }

      return 1;
    }
  }

  v7 = IOHIDEventSystemClientCreateWithType();
  if (v7)
  {
    v8 = v7;
    v9 = IOHIDManagerCreate(kCFAllocatorDefault, 0);
    if (v9)
    {
      v10 = v9;
      if (i)
      {
        if ((sub_100002850(v8, i) & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      else
      {
        IOHIDEventSystemClientSetMatching();
      }

      v11 = IOHIDEventSystemClientCopyServices(v8);
      if (v11)
      {
        v12 = v11;
        v13 = objc_alloc_init(NSMutableArray);
        sub_100000FF8();
        v14 = v12;
        sub_10000100C();
        v16 = [v15 countByEnumeratingWithState:? objects:? count:?];
        if (v16)
        {
          v17 = v16;
          v18 = 0;
          v19 = *v35;
          do
          {
            v20 = 0;
            v21 = v18;
            do
            {
              if (*v35 != v19)
              {
                objc_enumerationMutation(v14);
              }

              v18 = sub_100002028(*(v34 + 8 * v20));

              if (v18)
              {
                ["hnm:" addObject:v18];
              }

              v20 = v20 + 1;
              v21 = v18;
            }

            while (v17 != v20);
            sub_10000100C();
            v17 = [__CFArray countByEnumeratingWithState:v14 objects:"countByEnumeratingWithState:objects:count:" count:?];
          }

          while (v17);
        }

        v22 = sub_100000AE0("hnm:", 0);
        if (v22)
        {
          goto LABEL_30;
        }
      }

      if (i)
      {
        if ((sub_100003148(v10, i) & 1) == 0)
        {
LABEL_29:
          printf("bad matching string: %s\n", i);
LABEL_30:
          v6 = 1;
LABEL_46:
          CFRelease(v8);
          CFRelease(v10);
          return v6;
        }
      }

      else
      {
        IOHIDManagerSetDeviceMatching(v10, 0);
      }

      v23 = IOHIDManagerCopyDevices(v10);
      if (v23)
      {
        v24 = objc_alloc_init(NSMutableArray);
        sub_100000FF8();
        v25 = v23;
        sub_10000100C();
        v27 = [v26 countByEnumeratingWithState:? objects:? count:?];
        if (v27)
        {
          v28 = v27;
          v29 = 0;
          v30 = *v35;
          do
          {
            v31 = 0;
            v32 = v29;
            do
            {
              if (*v35 != v30)
              {
                objc_enumerationMutation(v25);
              }

              v29 = sub_100002194(*(v34 + 8 * v31));

              if (v29)
              {
                ["hnm:" addObject:v29];
              }

              v31 = v31 + 1;
              v32 = v29;
            }

            while (v28 != v31);
            sub_10000100C();
            v28 = [__CFSet countByEnumeratingWithState:v25 objects:"countByEnumeratingWithState:objects:count:" count:?];
          }

          while (v28);
        }

        v6 = sub_100000AE0("hnm:", 1);
      }

      else
      {
        v6 = 0;
      }

      goto LABEL_46;
    }

    CFRelease(v8);
  }

  return 1;
}

uint64_t sub_100003148(__IOHIDManager *a1, uint64_t a2)
{
  v3 = sub_100002320(a2);
  v4 = [v3 substringToIndex:1];
  if ([v4 isEqual:@"["])
  {
  }

  else
  {
    v5 = [v3 substringToIndex:1];
    v6 = [v5 isEqual:@"{"];

    if ((v6 & 1) == 0)
    {
      v8 = sub_100002698(v3);
      goto LABEL_7;
    }
  }

  v7 = [v3 dataUsingEncoding:4];
  v12 = 0;
  v8 = [NSJSONSerialization JSONObjectWithData:v7 options:1 error:&v12];
  v9 = v12;

  if (v9)
  {
    NSLog(@"Serialization error: %@", v9);

LABEL_14:
    v10 = 0;
    goto LABEL_15;
  }

LABEL_7:
  v10 = 0;
  if (a1 && v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      IOHIDManagerSetDeviceMatching(a1, v8);
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_14;
      }

      IOHIDManagerSetDeviceMatchingMultiple(a1, v8);
    }

    v10 = 1;
  }

LABEL_15:

  return v10;
}