void sub_10018DAB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10018DAD8(uint64_t a1)
{
  if (a1)
  {
    v1 = [NSPropertyListSerialization propertyListWithData:a1 options:0 format:0 error:0];
    v2 = v1;
    if (v1)
    {
      v3 = sub_10018DB90(v1);
      if (v3)
      {
        v4 = objc_opt_class();
        v5 = sub_10018E000(v3, v4);
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_10018DB90(__CFString *a1)
{
  if (!a1)
  {
LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  v2 = CFGetTypeID(a1);
  if (v2 == CFNullGetTypeID())
  {
    v3 = xpc_null_create();
LABEL_8:
    v7 = v3;
    goto LABEL_12;
  }

  if (v2 == CFBooleanGetTypeID())
  {
    v4 = CFBooleanGetValue(a1) != 0;
    v3 = xpc_BOOL_create(v4);
    goto LABEL_8;
  }

  if (v2 == CFDataGetTypeID())
  {
    BytePtr = CFDataGetBytePtr(a1);
    Length = CFDataGetLength(a1);
    v3 = xpc_data_create(BytePtr, Length);
    goto LABEL_8;
  }

  if (v2 == CFDateGetTypeID())
  {
    v8 = CFDateGetAbsoluteTime(a1) + kCFAbsoluteTimeIntervalSince1970;
    if (fabs(v8) <= 9223372040.0)
    {
      v3 = xpc_date_create((v8 * 1000000000.0));
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  if (v2 == CFUUIDGetTypeID())
  {
    uuid = CFUUIDGetUUIDBytes(a1);
    v3 = xpc_uuid_create(&uuid.byte0);
    goto LABEL_8;
  }

  if (v2 == CFStringGetTypeID())
  {
    v10 = CFStringGetLength(a1);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(v10 + 1, 0x8000100u);
    if (MaximumSizeForEncoding != -1)
    {
      v12 = MaximumSizeForEncoding;
      v13 = malloc_type_malloc(MaximumSizeForEncoding, 0x6F457ED9uLL);
      if (v13)
      {
        v14 = v13;
        if (CFStringGetCString(a1, v13, v12, 0x8000100u))
        {
          v7 = xpc_string_create(v14);
        }

        else
        {
          v7 = 0;
        }

        free(v14);
        goto LABEL_12;
      }
    }

    goto LABEL_11;
  }

  if (v2 == CFNumberGetTypeID())
  {
    if (CFNumberIsFloatType(a1))
    {
      *&uuid.byte0 = 0;
      if (CFNumberGetValue(a1, kCFNumberDoubleType, &uuid))
      {
        v3 = xpc_double_create(*&uuid.byte0);
        goto LABEL_8;
      }
    }

    else
    {
      *&uuid.byte0 = 0;
      if (CFNumberGetValue(a1, kCFNumberSInt64Type, &uuid))
      {
        v3 = xpc_int64_create(*&uuid.byte0);
        goto LABEL_8;
      }
    }

    goto LABEL_11;
  }

  if (v2 == CFArrayGetTypeID())
  {
    v7 = xpc_array_create(0, 0);
    if (!v7)
    {
      goto LABEL_12;
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v15 = a1;
    v16 = [(__CFString *)v15 countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v38;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v38 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = sub_10018DB90(*(*(&v37 + 1) + 8 * i));
          if (v20)
          {
            xpc_array_append_value(v7, v20);
          }
        }

        v17 = [(__CFString *)v15 countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v17);
    }

    goto LABEL_55;
  }

  if (v2 != CFDictionaryGetTypeID())
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(__CFString *)a1 copyXPCEncoding];
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v7 = xpc_dictionary_create(0, 0, 0);
  if (v7)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v15 = a1;
    v21 = [(__CFString *)v15 countByEnumeratingWithState:&v33 objects:v42 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v34;
      do
      {
        for (j = 0; j != v22; j = j + 1)
        {
          if (*v34 != v23)
          {
            objc_enumerationMutation(v15);
          }

          v25 = *(*(&v33 + 1) + 8 * j);
          v26 = CFStringGetLength(v25);
          v27 = CFStringGetMaximumSizeForEncoding(v26, 0x8000100u);
          if (v27 != -1)
          {
            v28 = v27;
            v29 = malloc_type_malloc(v27, 0xF4E82B8EuLL);
            if (v29)
            {
              v30 = v29;
              if (CFStringGetCString(v25, v29, v28, 0x8000100u))
              {
                Value = CFDictionaryGetValue(v15, v25);
                v32 = sub_10018DB90(Value);
                if (v32)
                {
                  xpc_dictionary_set_value(v7, v30, v32);
                }
              }

              free(v30);
            }
          }
        }

        v22 = [(__CFString *)v15 countByEnumeratingWithState:&v33 objects:v42 count:16];
      }

      while (v22);
    }

LABEL_55:
  }

LABEL_12:

  return v7;
}

id sub_10018E000(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (v3 && xpc_get_type(v3) == &_xpc_type_data && (length = xpc_data_get_length(v4), bytes_ptr = xpc_data_get_bytes_ptr(v4), length) && (v9 = [[NSData alloc] initWithBytesNoCopy:bytes_ptr length:length freeWhenDone:0]) != 0)
  {
    v10 = v9;
    v5 = [NSKeyedUnarchiver unarchivedObjectOfClass:a2 fromData:v9 error:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

CFArrayRef sub_10018E0D0(void *a1)
{
  v1 = a1;
  count = xpc_array_get_count(v1);
  v3 = count;
  v4 = 8 * count;
  memset(v18, 0, 512);
  if (count > 0x100)
  {
    v5 = malloc_type_malloc(8 * count, 0xC0040B8AA526DuLL);
    bzero(v5, v4);
    if (!v5)
    {
      v7 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v5 = v18;
    __memset_chk();
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 3221225472;
  applier[2] = sub_10018E4B8;
  applier[3] = &unk_10032AA30;
  v12 = &v14;
  v13 = v5;
  v11 = &stru_10032A9E0;
  xpc_array_apply(v1, applier);
  v6 = v15[3];
  if (v3 == v6)
  {
    v7 = CFArrayCreate(kCFAllocatorSystemDefault, v5, v3, &kCFTypeArrayCallBacks);
    v6 = v15[3];
  }

  else
  {
    v7 = 0;
  }

  if (v6 >= 1)
  {
    v8 = 0;
    do
    {
      CFRelease(*(v5 + v8++));
    }

    while (v8 < v15[3]);
  }

  if (v5 != v18)
  {
    free(v5);
  }

  _Block_object_dispose(&v14, 8);
LABEL_13:

  return v7;
}

void sub_10018E2F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10018E324(void *a1, const char *a2, uint64_t a3)
{
  result = sub_10018D67C(a3);
  if (result)
  {
    v6 = result;
    v7 = CFStringCreateWithCString(kCFAllocatorSystemDefault, a2, 0x8000100u);
    if (v7)
    {
      *(a1[5] + 8 * *(*(a1[4] + 8) + 24)) = v7;
      v9 = a1[5];
      v8 = a1[6];
      v10 = *(a1[4] + 8);
      v11 = *(v10 + 24);
      *(v10 + 24) = v11 + 1;
      *(v9 + 8 * v8 + 8 * v11) = v6;
      return 1;
    }

    else
    {
      CFRelease(v6);
      return 0;
    }
  }

  return result;
}

CFDictionaryRef sub_10018E3C4(void *a1, const char *a2)
{
  v2 = xpc_dictionary_get_value(a1, a2);
  v3 = sub_10018D67C(v2);

  return v3;
}

CFDictionaryRef sub_10018E3FC(void *a1, const char *a2)
{
  v2 = sub_10018E3C4(a1, a2);
  if (v2 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    CFRelease(v2);
    return 0;
  }

  return v2;
}

void sub_10018E448(void *a1, const char *a2, __CFString *a3)
{
  xdict = a1;
  v5 = sub_10018DB90(a3);
  if (v5)
  {
    xpc_dictionary_set_value(xdict, a2, v5);
  }
}

BOOL sub_10018E4B8(void *a1)
{
  v2 = (*(a1[4] + 16))();
  if (v2)
  {
    v3 = a1[6];
    v4 = *(a1[5] + 8);
    v5 = *(v4 + 24);
    *(v4 + 24) = v5 + 1;
    *(v3 + 8 * v5) = v2;
  }

  return v2 != 0;
}

void sub_10018E7B8(id a1)
{
  v1 = [[NSArray alloc] initWithObjects:{CPSharedResourcesDirectory(), @"Media", @"Books", @"Books.plist", 0}];
  qword_100383FD8 = [[EBookManifest alloc] initWithManifestPath:[NSString pathWithComponents:v1]];
}

void sub_10018E944(uint64_t a1)
{
  v2 = [*(a1 + 32) _manifest];
  v3 = @"Books";
  v4 = [v2 objectForKey:@"Books"];
  if (v4 || (v3 = @"Purchases", (v4 = [v2 objectForKey:@"Purchases"]) != 0))
  {
    v5 = v4;
  }

  else
  {
    v5 = objc_alloc_init(NSMutableArray);
    v3 = @"Books";
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = *(a1 + 40);
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v12 + 1) + 8 * v10) mutableCopy];
        [v5 addObject:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [v2 setObject:v5 forKey:v3];
}

id sub_10018EC94(uint64_t a1)
{
  v2 = [*(a1 + 32) _entries];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v9;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v9 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v8 + 1) + 8 * v6);
      if ([objc_msgSend(v7 objectForKey:{*(a1 + 40)), "isEqual:", *(a1 + 48)}])
      {
        [*(a1 + 56) addObject:v7];
        result = [*(a1 + 56) count];
        if (result >= *(a1 + 64))
        {
          break;
        }
      }

      if (v4 == ++v6)
      {
        result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
        v4 = result;
        if (result)
        {
          goto LABEL_3;
        }

        return result;
      }
    }
  }

  return result;
}

void sub_10018EE5C(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "_manifest")];
  v3 = 0;
  while (([*(a1 + 40) isEqualToNumber:{objc_msgSend(objc_msgSend(v2, "objectAtIndex:", v3), "objectForKey:", @"s"}] & 1) == 0)
  {
    if (++v3 == 8)
    {
      goto LABEL_15;
    }
  }

  [v2 removeObjectAtIndex:v3];
  v4 = +[SSLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  if (!os_log_type_enabled([v4 OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v6 &= 2u;
  }

  if (v6)
  {
    v10 = 138412546;
    v11 = objc_opt_class();
    v12 = 2048;
    v13 = v3;
    LODWORD(v9) = 22;
    v7 = _os_log_send_and_compose_impl();
    if (v7)
    {
      v8 = v7;
      [NSString stringWithCString:v7 encoding:4, &v10, v9];
      free(v8);
      SSFileLog();
    }
  }

LABEL_15:
}

void sub_10018F0A0(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "_manifest")];
  v3 = 0;
  while (([*(a1 + 40) isEqualToString:{objc_msgSend(objc_msgSend(v2, "objectAtIndex:", v3), "objectForKey:", @"iTunesU Permlink"}] & 1) == 0)
  {
    if (++v3 == 8)
    {
      goto LABEL_15;
    }
  }

  [v2 removeObjectAtIndex:v3];
  v4 = +[SSLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  if (!os_log_type_enabled([v4 OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v6 &= 2u;
  }

  if (v6)
  {
    v10 = 138412546;
    v11 = objc_opt_class();
    v12 = 2048;
    v13 = v3;
    LODWORD(v9) = 22;
    v7 = _os_log_send_and_compose_impl();
    if (v7)
    {
      v8 = v7;
      [NSString stringWithCString:v7 encoding:4, &v10, v9];
      free(v8);
      SSFileLog();
    }
  }

LABEL_15:
}

uint64_t sub_10018F2E4(uint64_t result)
{
  v1 = *(*(result + 32) + 16);
  if (v1)
  {
    v2 = result;
    v13 = 0;
    v3 = [NSPropertyListSerialization dataWithPropertyList:v1 format:200 options:0 error:&v13];
    if (v3)
    {
      result = [(NSData *)v3 writeToFile:*(*(v2 + 32) + 24) options:1 error:&v13];
      if ((result & 1) == 0)
      {
        v4 = +[SSLogConfig sharedDaemonConfig];
        if (!v4)
        {
          v4 = +[SSLogConfig sharedConfig];
        }

        v5 = [v4 shouldLog];
        v6 = [v4 shouldLogToDisk] ? v5 | 2 : v5;
        result = os_log_type_enabled([v4 OSLogObject], OS_LOG_TYPE_DEFAULT);
        if (!result)
        {
          v6 &= 2u;
        }

        if (v6)
        {
LABEL_21:
          v10 = objc_opt_class();
          v14 = 138412546;
          v15 = v10;
          v16 = 2112;
          v17 = v13;
          LODWORD(v12) = 22;
          result = _os_log_send_and_compose_impl();
          if (result)
          {
            v11 = result;
            [NSString stringWithCString:result encoding:4, &v14, v12];
            free(v11);
            return SSFileLog();
          }
        }
      }
    }

    else
    {
      v7 = +[SSLogConfig sharedDaemonConfig];
      if (!v7)
      {
        v7 = +[SSLogConfig sharedConfig];
      }

      v8 = [v7 shouldLog];
      if ([v7 shouldLogToDisk])
      {
        v9 = v8 | 2;
      }

      else
      {
        v9 = v8;
      }

      result = os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        v9 &= 2u;
      }

      if (v9)
      {
        goto LABEL_21;
      }
    }
  }

  return result;
}

uint64_t sub_100191B88(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SSLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v4 OSLogObject];
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_11;
  }

  v8 = [*(a1 + 32) downloadIdentifier];
  [*(a1 + 40) error];
  v19 = 134218242;
  v20 = v8;
  v22 = v21 = 2114;
  LODWORD(v18) = 22;
  v9 = _os_log_send_and_compose_impl();

  if (v9)
  {
    v7 = [NSString stringWithCString:v9 encoding:4, &v19, v18];
    free(v9);
    SSFileLog();
LABEL_11:
  }

  v10 = [DownloadAssetEntity alloc];
  v11 = [*(a1 + 32) mediaAssetIdentifier];
  v12 = [v3 database];
  v13 = [(DownloadAssetEntity *)v10 initWithPersistentID:v11 inDatabase:v12];

  [(DownloadAssetEntity *)v13 setValue:&__kCFBooleanFalse forProperty:@"is_downloaded"];
  v14 = *(a1 + 48);
  v15 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(a1 + 32) downloadIdentifier]);
  v16 = [*(a1 + 40) error];
  [v14 _failDownloadWithIdentifier:v15 error:v16 transaction:v3];

  return 1;
}

void sub_100191DF4(uint64_t a1, void *a2)
{
  v3 = a2;
  v16[0] = SSDownloadPhaseDownloading;
  v16[1] = SSDownloadPhaseProcessing;
  v16[2] = SSDownloadPhaseDataRestore;
  v16[3] = SSDownloadPhaseInstalling;
  v4 = [NSArray arrayWithObjects:v16 count:4];
  v5 = [v4 indexOfObject:*(a1 + 32)];
  v6 = [v4 count];
  v7 = *(a1 + 40);
  if (v5 == v6 - 1)
  {
    v8 = v7[4];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100191FC0;
    v14[3] = &unk_100329558;
    v9 = &v15;
    v15 = *(a1 + 48);
    v10 = [v8 modifyUsingTransactionBlock:v14];
  }

  else
  {
    v11 = *(a1 + 48);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100192014;
    v12[3] = &unk_10032AB98;
    v9 = v13;
    v13[0] = v4;
    v13[1] = v5;
    [v7 _processDownloadWithTaskState:v11 databaseSession:v3 setupBlock:v12];
  }
}

uint64_t sub_100191FC0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 downloadIdentifier];
  [v3 finishDownloadWithID:v4 finalPhase:SSDownloadPhaseFinished updatePipeline:0];

  return 1;
}

void sub_100192014(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v2 objectAtIndex:v3 + 1];
  [v4 setInitialDownloadPhase:v5];
}

void sub_100192148(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 112) objectForKey:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    [v2 setFinishProgress:{objc_msgSend(*(a1 + 48), "currentValue") / objc_msgSend(*(a1 + 48), "maxValue")}];
    [*(*(a1 + 32) + 40) addObject:v3];
    [*(a1 + 32) _startProgressTimer];
    v2 = v3;
  }
}

void sub_1001922AC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 112) objectForKey:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    [v2 setTransferProgressWithBytesWritten:*(a1 + 48) totalBytesExpected:*(a1 + 56)];
    [*(*(a1 + 32) + 40) addObject:v3];
    [*(a1 + 32) _startProgressTimer];
    v2 = v3;
  }
}

void sub_100192604(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 112) objectForKey:*(a1 + 40)];
  if (v2)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 64);
    if (v3 <= 0)
    {
      v5 = 0;
    }

    else
    {
      v5 = v4 + v3;
    }

    v6 = v2;
    [v2 setTransferProgressWithBytesWritten:v4 + *(a1 + 56) totalBytesExpected:v5];
    if (*(a1 + 80) == 1 && *(a1 + 72) > 2.22044605e-16)
    {
      [v6 setTransferProgress:?];
    }

    [*(*(a1 + 32) + 40) addObject:v6];
    [*(a1 + 32) _startProgressTimer];
    v2 = v6;
  }
}

double sub_1001929F0(uint64_t a1, void *a2)
{
  memset(v9, 0, sizeof(v9));
  [a2 getValue:v9];
  v7 = *(&v9[1] + 8);
  v8 = *(&v9[2] + 1);
  v3 = ISWeakLinkedSymbolForString();
  if (v3)
  {
    v10 = v7;
    v11 = v8;
    v3(&v10);
  }

  else
  {
    v4 = 0.0;
  }

  v5 = *(*(a1 + 32) + 8);
  result = v4 + *(v5 + 24);
  *(v5 + 24) = result;
  return result;
}

void sub_100192A8C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 112) objectForKey:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    [v2 setTransferProgress:*(a1 + 48)];
    [*(*(a1 + 32) + 40) addObject:v3];
    [*(a1 + 32) _startProgressTimer];
    v2 = v3;
  }
}

double sub_100193348(uint64_t a1, void *a2)
{
  memset(v9, 0, sizeof(v9));
  [a2 getValue:v9];
  v7 = *(&v9[1] + 8);
  v8 = *(&v9[2] + 1);
  v3 = ISWeakLinkedSymbolForString();
  if (v3)
  {
    v10 = v7;
    v11 = v8;
    v3(&v10);
  }

  else
  {
    v4 = 0.0;
  }

  v5 = *(*(a1 + 32) + 8);
  result = v4 + *(v5 + 24);
  *(v5 + 24) = result;
  return result;
}

void sub_1001933E4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 112) objectForKey:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    [v2 setTransferProgress:*(a1 + 48)];
    [*(*(a1 + 32) + 40) addObject:v3];
    [*(a1 + 32) _startProgressTimer];
    v2 = v3;
  }
}

uint64_t sub_100193E5C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 112) objectForKey:*(a1 + 40)];
  v5 = v4;
  if (!v4)
  {
    v10 = +[SSLogConfig sharedDaemonConfig];
    if (!v10)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    v20 = [(DownloadAssetEntity *)v10 shouldLog];
    if ([(DownloadAssetEntity *)v10 shouldLogToDisk])
    {
      v21 = v20 | 2;
    }

    else
    {
      v21 = v20;
    }

    v22 = [(DownloadAssetEntity *)v10 OSLogObject];
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v21 &= 2u;
    }

    if (v21)
    {
      v23 = [*(a1 + 40) taskIdentifier];
      v24 = *(a1 + 48);
      v121 = 134218242;
      v122 = v23;
      v123 = 2112;
      v124 = v24;
      LODWORD(v113) = 22;
      v25 = _os_log_send_and_compose_impl();

      if (!v25)
      {
        goto LABEL_113;
      }

      v22 = [NSString stringWithCString:v25 encoding:4, &v121, v113];
      free(v25);
      SSFileLog();
    }

    goto LABEL_113;
  }

  v6 = [v4 downloadIdentifier];
  v7 = [DownloadAssetEntity alloc];
  v8 = [v5 mediaAssetIdentifier];
  v9 = [v3 database];
  v10 = [(DownloadAssetEntity *)v7 initWithPersistentID:v8 inDatabase:v9];

  [(DownloadAssetEntity *)v10 setValue:&off_10034C060 forProperty:@"download_token"];
  [(DownloadAssetEntity *)v10 setValue:&off_10034C060 forProperty:@"url_session_task_id"];
  v11 = [DownloadEntity alloc];
  v12 = [v3 database];
  v13 = [(DownloadEntity *)v11 initWithPersistentID:v6 inDatabase:v12];

  v14 = [*(a1 + 40) ITunesStoreCancelReason];
  v15 = v14;
  if (v14 == 1)
  {
    goto LABEL_40;
  }

  if (v14 == 3)
  {
    v26 = +[SSLogConfig sharedDaemonConfig];
    if (!v26)
    {
      v26 = +[SSLogConfig sharedConfig];
    }

    v27 = [v26 shouldLog];
    if ([v26 shouldLogToDisk])
    {
      v28 = v27 | 2;
    }

    else
    {
      v28 = v27;
    }

    v29 = [v26 OSLogObject];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = v28;
    }

    else
    {
      v30 = v28 & 2;
    }

    if (v30)
    {
      v31 = [*(a1 + 40) taskIdentifier];
      v121 = 134218240;
      v122 = v6;
      v123 = 2048;
      v124 = v31;
      LODWORD(v113) = 22;
      v111 = &v121;
      v32 = _os_log_send_and_compose_impl();

      if (v32)
      {
        v33 = [NSString stringWithCString:v32 encoding:4, &v121, v113];
        free(v32);
        v111 = v33;
        SSFileLog();
      }
    }

    else
    {
    }

    [v3 retryDownloadWithIdentifier:v6];
    goto LABEL_109;
  }

  if (v14 != 2)
  {
    if (*(a1 + 56) == 1)
    {
      v34 = +[SSLogConfig sharedDaemonConfig];
      if (!v34)
      {
        v34 = +[SSLogConfig sharedConfig];
      }

      v35 = [v34 shouldLog];
      if ([v34 shouldLogToDisk])
      {
        v36 = v35 | 2;
      }

      else
      {
        v36 = v35;
      }

      v37 = [v34 OSLogObject];
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = v36;
      }

      else
      {
        v38 = v36 & 2;
      }

      if (v38)
      {
        v39 = [*(a1 + 40) taskIdentifier];
        v121 = 134218240;
        v122 = v39;
        v123 = 2048;
        v124 = v6;
        LODWORD(v113) = 22;
        v111 = &v121;
        v40 = _os_log_send_and_compose_impl();

        if (v40)
        {
          v41 = [NSString stringWithCString:v40 encoding:4, &v121, v113];
          free(v40);
          v111 = v41;
          SSFileLog();
        }
      }

      else
      {
      }

      [(DownloadAssetEntity *)v10 setValue:&__kCFBooleanTrue forProperty:@"is_downloaded"];
      [*(a1 + 32) _processDownloadWithTaskState:v5 databaseSession:v3 setupBlock:0];
      goto LABEL_109;
    }

LABEL_40:
    v117 = v13;
    if (ISErrorIsEqual() && [*(a1 + 32) _isPodcast:v13])
    {
      v42 = [(DownloadEntity *)v13 valueForProperty:@"policy_id"];
      v43 = [v42 longLongValue];

      v44 = [v3 policyManager];
      v45 = [v44 downloadPolicyForID:v43];

      v46 = objc_opt_new();
      [v46 addNetworkType:1000];
      v118 = v45;
      [v45 setPolicyRule:v46];
      v47 = +[SSLogConfig sharedDaemonConfig];
      if (!v47)
      {
        v47 = +[SSLogConfig sharedConfig];
      }

      v48 = [v47 shouldLog];
      if ([v47 shouldLogToDisk])
      {
        v49 = v48 | 2;
      }

      else
      {
        v49 = v48;
      }

      v50 = [v47 OSLogObject];
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        v51 = v49;
      }

      else
      {
        v51 = v49 & 2;
      }

      if (v51)
      {
        v52 = [*(a1 + 40) taskIdentifier];
        v121 = 134218240;
        v122 = v6;
        v123 = 2048;
        v124 = v52;
        LODWORD(v113) = 22;
        v111 = &v121;
        v53 = _os_log_send_and_compose_impl();

        if (v53)
        {
          v54 = [NSString stringWithCString:v53 encoding:4, &v121, v113];
          free(v53);
          v111 = v54;
          SSFileLog();
        }
      }

      else
      {
      }

      [v3 retryDownloadWithIdentifier:v6];
      v13 = v117;
      goto LABEL_109;
    }

    v55 = [*(a1 + 40) ITunesStoreCancelError];
    v56 = v55;
    if (!v55)
    {
      v56 = *(a1 + 48);
    }

    v119 = v56;

    v57 = +[SSLogConfig sharedDaemonConfig];
    if (!v57)
    {
      v57 = +[SSLogConfig sharedConfig];
    }

    v58 = [v57 shouldLog];
    if ([v57 shouldLogToDisk])
    {
      v58 |= 2u;
    }

    v59 = [v57 OSLogObject];
    if (!os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      v58 &= 2u;
    }

    if (v58)
    {
      v60 = [*(a1 + 40) taskIdentifier];
      v121 = 134218498;
      v122 = v60;
      v123 = 2048;
      v124 = v6;
      v125 = 2112;
      v126 = v119;
      LODWORD(v113) = 32;
      v111 = &v121;
      v61 = _os_log_send_and_compose_impl();

      if (!v61)
      {
LABEL_65:

        v17 = v119;
        if (sub_1001AD6E0(v119))
        {
          v62 = [(DownloadAssetEntity *)v10 valueForProperty:@"is_local_cache_server"];
          v63 = [v62 BOOLValue];

          v17 = v119;
          if (v63)
          {
            v64 = +[SSLogConfig sharedDaemonConfig];
            if (!v64)
            {
              v64 = +[SSLogConfig sharedConfig];
            }

            v65 = [v64 shouldLog];
            if ([v64 shouldLogToDisk])
            {
              v66 = v65 | 2;
            }

            else
            {
              v66 = v65;
            }

            v67 = [v64 OSLogObject];
            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
            {
              v68 = v66;
            }

            else
            {
              v68 = v66 & 2;
            }

            if (v68)
            {
              v69 = [*(a1 + 40) taskIdentifier];
              v121 = 134218240;
              v122 = v69;
              v123 = 2048;
              v124 = v6;
              LODWORD(v113) = 22;
              v112 = &v121;
              v70 = _os_log_send_and_compose_impl();

              if (!v70)
              {
LABEL_79:

                v71 = [SSSQLiteComparisonPredicate predicateWithProperty:@"download_id" equalToLongLong:v6];
                v72 = SSSQLEntityPropertyPersistentID;
                v73 = [NSNumber numberWithLongLong:[(DownloadAssetEntity *)v10 persistentID]];
                v74 = [SSSQLiteComparisonPredicate predicateWithProperty:v72 value:v73 comparisonType:2];

                v75 = [SSSQLiteComparisonPredicate predicateWithProperty:@"asset_type" equalToValue:SSDownloadAssetTypeMedia];
                v114 = v74;
                v115 = v71;
                v120[0] = v71;
                v120[1] = v74;
                v120[2] = v75;
                v76 = [NSArray arrayWithObjects:v120 count:3];
                v77 = [SSSQLiteCompoundPredicate predicateMatchingAllPredicates:v76];

                v78 = [v3 database];
                v79 = [DownloadAssetEntity anyInDatabase:v78 predicate:v77];

                if (v79)
                {
                  v80 = @"blocked_reason";
                  v81 = &off_10034C078;
                  v82 = v10;
                }

                else
                {
                  v81 = &__kCFBooleanFalse;
                  v82 = v10;
                  v80 = @"is_local_cache_server";
                }

                [(DownloadAssetEntity *)v82 setValue:v81 forProperty:v80, v112];
                v13 = v117;
                [v3 retryDownloadWithIdentifier:v6];

                goto LABEL_107;
              }

              v67 = [NSString stringWithCString:v70 encoding:4, &v121, v113];
              free(v70);
              v112 = v67;
              SSFileLog();
            }

            goto LABEL_79;
          }
        }

        v13 = v117;
        if (sub_1001AD858(v17))
        {
          v83 = +[SSLogConfig sharedDaemonConfig];
          if (!v83)
          {
            v83 = +[SSLogConfig sharedConfig];
          }

          v84 = [v83 shouldLog];
          if ([v83 shouldLogToDisk])
          {
            v85 = v84 | 2;
          }

          else
          {
            v85 = v84;
          }

          v86 = [v83 OSLogObject];
          if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
          {
            v87 = v85;
          }

          else
          {
            v87 = v85 & 2;
          }

          if (v87)
          {
            v121 = 134218242;
            v122 = v6;
            v123 = 2112;
            v124 = v119;
            LODWORD(v113) = 22;
            v111 = &v121;
            v88 = _os_log_send_and_compose_impl();

            if (!v88)
            {
LABEL_102:

              [(DownloadAssetEntity *)v10 setValue:&__kCFBooleanTrue forProperty:@"avfoundation_blocked"];
              [v3 retryDownloadWithIdentifier:v6];
LABEL_107:
              v17 = v119;
              goto LABEL_108;
            }

            v86 = [NSString stringWithCString:v88 encoding:4, &v121, v113];
            free(v88);
            v111 = v86;
            SSFileLog();
          }

          goto LABEL_102;
        }

        if ([ExpiredDownloadRecoveryOperation canAttemptRecoveryWithError:v17])
        {
          [*(a1 + 32) _attemptRecoveryForDownloadWithTaskState:v5 databaseSession:v3];
          goto LABEL_108;
        }

        if (ISErrorIsEqual())
        {
          [*(a1 + 32) _scheduleReconnect];
          goto LABEL_108;
        }

        v94 = [(DownloadAssetEntity *)v10 valueForProperty:@"is_hls"];
        v116 = v94;
        if (objc_opt_respondsToSelector() & 1) != 0 && ([v94 BOOLValue])
        {
          v95 = 1;
        }

        else
        {
          if (!sub_1001AD8BC(*(a1 + 48)))
          {
LABEL_125:
            [(DownloadAssetEntity *)v10 setValue:&__kCFBooleanFalse forProperty:@"is_downloaded", v111];
            v104 = *(a1 + 32);
            v105 = [NSNumber numberWithLongLong:v6];
            v106 = v104;
            v17 = v119;
            [v106 _failDownloadWithIdentifier:v105 error:v119 transaction:v3];

            [*(a1 + 32) _processDownloadFailureWithTaskState:v5 cancelReason:v15];
            v107 = *(a1 + 32);
            v108 = [v5 kind];
            v109 = [(DownloadEntity *)v117 valueForProperty:@"store_item_id"];
            v110 = [(DownloadEntity *)v117 valueForProperty:@"rental_id"];
            [v107 _reportTVAppDownloadQOSMetricsIfAppropriateForKind:v108 adamID:v109 rentalID:v110 error:v119 cancelReason:1];

            v13 = v117;
            goto LABEL_108;
          }

          v95 = 0;
        }

        v96 = [(DownloadAssetEntity *)v10 valueForProperty:@"local_path", v111];
        if (v96)
        {
          goto LABEL_124;
        }

        if (v95)
        {
          v97 = [v5 kind];
          v98 = sub_10020F36C(v97);

          v99 = [NSString stringWithFormat:@"%lld", [(DownloadAssetEntity *)v10 persistentID]];
          v100 = [v99 stringByAppendingPathExtension:SSDownloadMetadataKeyFileExtensionMoviePackage];

          v96 = [v98 stringByAppendingPathComponent:v100];
        }

        else
        {
          v101 = [v5 downloadIdentifier];
          v102 = [(DownloadAssetEntity *)v10 persistentID];
          v98 = [v5 kind];
          v96 = [ScratchManager directoryPathForDownloadID:v101 assetID:v102 kind:v98 createIfNeeded:1];
        }

        if (v96)
        {
LABEL_124:
          v103 = objc_alloc_init(NSFileManager);
          [v103 removeItemAtPath:v96 error:0];
        }

        goto LABEL_125;
      }

      v59 = [NSString stringWithCString:v61 encoding:4, &v121, v113];
      free(v61);
      v111 = v59;
      SSFileLog();
    }

    goto LABEL_65;
  }

  [*(a1 + 32) _processDownloadFailureWithTaskState:v5 cancelReason:2];
  v16 = *(a1 + 32);
  v17 = [v5 kind];
  v18 = [(DownloadEntity *)v13 valueForProperty:@"store_item_id"];
  v19 = [(DownloadEntity *)v13 valueForProperty:@"rental_id"];
  [v16 _reportTVAppDownloadQOSMetricsIfAppropriateForKind:v17 adamID:v18 rentalID:v19 error:0 cancelReason:2];

LABEL_108:
LABEL_109:
  [*(a1 + 32) _logDownloadEvent:SSEventNameDownloadStop forTaskWithState:v5 session:{v3, v111}];
  v89 = [(DownloadAssetEntity *)v10 valueForProperty:@"is_downloaded"];
  v90 = [v89 BOOLValue];

  v91 = [*(*(a1 + 32) + 104) objectForKey:*(a1 + 40)];
  v92 = v91;
  if (v90 && v91)
  {
    [v91 persistKeys];
  }

  [*(*(a1 + 32) + 104) removeObjectForKey:*(a1 + 40)];
  [*(*(a1 + 32) + 112) removeObjectForKey:*(a1 + 40)];
  [*(a1 + 32) _reloadKeepAliveAssertion];

LABEL_113:
  return 1;
}

uint64_t sub_10019500C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 112);
  v5 = a2;
  v6 = [v4 objectForKey:v3];
  v7 = [*(a1 + 32) _downloadSessionPropertiesWithPhase:0 taskState:v6 databaseSession:v5];

  [v7 setAuthenticationChallenge:*(a1 + 48)];
  if (v7)
  {
    v8 = [[DownloadHandlerAuthenticationOperation alloc] initWithSessionProperties:v7];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_100195178;
    v16 = &unk_10032AC38;
    v9 = *(a1 + 56);
    v10 = *(a1 + 32);
    v20 = v9;
    v17 = v10;
    v18 = *(a1 + 48);
    v19 = v7;
    [(DownloadHandlerAuthenticationOperation *)v8 setOutputBlock:&v13];
    v11 = [*(a1 + 32) _authenticationChallengeQueue];
    [v11 addOperation:v8];
  }

  else
  {
    [*(a1 + 32) _performDefaultHandlingForAuthenticationChallenge:*(a1 + 48) withSessionProperties:0 completionHandler:*(a1 + 56)];
  }

  return 1;
}

void sub_100195178(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (a2 > 4)
  {
    if ((a2 - 8) >= 2)
    {
      if (a2 == 5)
      {
        v5 = *(*(a1 + 56) + 16);
        goto LABEL_10;
      }

      if (a2 != 6)
      {
        goto LABEL_16;
      }
    }

LABEL_9:
    v5 = *(*(a1 + 56) + 16);
    goto LABEL_10;
  }

  if (a2 > 2)
  {
    v5 = *(*(a1 + 56) + 16);
    goto LABEL_10;
  }

  if (a2 == 1)
  {
    goto LABEL_9;
  }

  if (a2 == 2)
  {
    v5 = *(*(a1 + 56) + 16);
LABEL_10:
    v5();
    goto LABEL_11;
  }

LABEL_16:
  [*(a1 + 32) _performDefaultHandlingForAuthenticationChallenge:*(a1 + 40) withSessionProperties:*(a1 + 48) completionHandler:*(a1 + 56)];
LABEL_11:
}

uint64_t sub_10019534C(id *a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1[4] + 14) objectForKey:a1[5]];
  if (v4)
  {
    if (sub_1001AD6E0(a1[6]))
    {
      v5 = [DownloadAssetEntity alloc];
      v6 = [v4 mediaAssetIdentifier];
      v7 = [v3 database];
      v8 = [(DownloadAssetEntity *)v5 initWithPersistentID:v6 inDatabase:v7];

      v9 = [(DownloadAssetEntity *)v8 valueForProperty:@"is_local_cache_server"];
      LODWORD(v7) = [v9 BOOLValue];

      v10 = [v4 downloadIdentifier];
      if (v7)
      {
        v11 = +[SSLogConfig sharedDaemonConfig];
        if (!v11)
        {
          v11 = +[SSLogConfig sharedConfig];
        }

        v12 = [v11 shouldLog];
        if ([v11 shouldLogToDisk])
        {
          v13 = v12 | 2;
        }

        else
        {
          v13 = v12;
        }

        v14 = [v11 OSLogObject];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = v13;
        }

        else
        {
          v15 = v13 & 2;
        }

        if (v15)
        {
          v16 = a1[6];
          v28 = 134218242;
          v29 = v10;
          v30 = 2112;
          v31 = v16;
          LODWORD(v27) = 22;
          v17 = _os_log_send_and_compose_impl();

          if (!v17)
          {
LABEL_16:

            [a1[5] cancelWithITunesStoreReason:1 error:a1[6]];
            goto LABEL_30;
          }

          v14 = [NSString stringWithCString:v17 encoding:4, &v28, v27];
          free(v17);
          SSFileLog();
        }

        goto LABEL_16;
      }
    }

    else
    {
      v10 = [v4 downloadIdentifier];
    }

    v18 = +[SSLogConfig sharedDaemonConfig];
    if (!v18)
    {
      v18 = +[SSLogConfig sharedConfig];
    }

    v19 = [v18 shouldLog];
    if ([v18 shouldLogToDisk])
    {
      v20 = v19 | 2;
    }

    else
    {
      v20 = v19;
    }

    v21 = [v18 OSLogObject];
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v20 &= 2u;
    }

    if (v20)
    {
      v22 = [a1[5] taskIdentifier];
      v23 = a1[6];
      v28 = 134218498;
      v29 = v22;
      v30 = 2048;
      v31 = v10;
      v32 = 2112;
      v33 = v23;
      LODWORD(v27) = 32;
      v24 = _os_log_send_and_compose_impl();

      if (!v24)
      {
LABEL_29:

        v25 = [v3 policyManager];
        [v25 setOverrideDownloadSizeLimit:SSDownloadSizeLimitDisabled forDownloadIdentifier:v10];

        [a1[4] _setDownloadPhase:SSDownloadPhaseWaiting forDownloadIdentifier:v10 databaseTransaction:v3];
        [a1[4] _logDownloadEvent:SSEventNameDownloadStop forTaskWithState:v4 session:v3];
        goto LABEL_30;
      }

      v21 = [NSString stringWithCString:v24 encoding:4, &v28, v27];
      free(v24);
      SSFileLog();
    }

    goto LABEL_29;
  }

LABEL_30:

  return 1;
}

uint64_t sub_100195C68(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 112);
  v5 = a2;
  v6 = [v4 objectForKey:v3];
  v7 = [v6 downloadIdentifier];
  v8 = [v5 policyManager];
  [v8 removeOverrideDownloadSizeLimitForDownloadIdentifier:v7];

  [*(a1 + 32) _setDownloadPhase:SSDownloadPhaseDownloading forDownloadIdentifier:v7 databaseTransaction:v5];
  [*(a1 + 32) _logDownloadEvent:SSEventNameDownloadStart forTaskWithState:v6 session:v5];

  return 1;
}

void sub_100195DE8(uint64_t a1)
{
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v2 = *(*(a1 + 32) + 112);
  v3 = [v2 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v25;
    v23 = *v25;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v25 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v24 + 1) + 8 * i);
        v8 = [*(*(a1 + 32) + 112) objectForKey:{v7, v21}];
        v9 = [v8 downloadIdentifier];
        if (v9 == [*(a1 + 40) downloadIdentifier])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = v2;
            v11 = v7;
            v12 = +[SSLogConfig sharedDaemonConfig];
            if (!v12)
            {
              v12 = +[SSLogConfig sharedConfig];
            }

            v13 = [v12 shouldLog];
            if ([v12 shouldLogToDisk])
            {
              v14 = v13 | 2;
            }

            else
            {
              v14 = v13;
            }

            v15 = [v12 OSLogObject];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              v16 = v14;
            }

            else
            {
              v16 = v14 & 2;
            }

            if (v16)
            {
              v17 = [v11 taskIdentifier];
              v18 = [v8 downloadIdentifier];
              v19 = *(a1 + 48);
              v28 = 134218498;
              v29 = v17;
              v30 = 2048;
              v31 = v18;
              v32 = 2112;
              v33 = v19;
              LODWORD(v22) = 32;
              v21 = &v28;
              v20 = _os_log_send_and_compose_impl();

              v2 = v10;
              v5 = v23;
              if (v20)
              {
                v15 = [NSString stringWithCString:v20 encoding:4, &v28, v22];
                free(v20);
                v21 = v15;
                SSFileLog();
                goto LABEL_20;
              }
            }

            else
            {
              v2 = v10;
              v5 = v23;
LABEL_20:
            }

            [v11 cancelWithITunesStoreReason:1 error:*(a1 + 48)];
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v4);
  }
}

void sub_1001964A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001964C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _finishRecoveryWithOperation:v6 response:v5];
}

uint64_t sub_10019665C(uint64_t a1, void *a2)
{
  v54 = a2;
  v52 = [v54 database];
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v42 = a1;
  v39 = *(*(a1 + 32) + 40);
  v53 = [v39 countByEnumeratingWithState:&v57 objects:v65 count:16];
  if (v53)
  {
    v51 = *v58;
    v50 = SSDownloadExternalPropertyBytesDownloaded;
    v49 = SSDownloadExternalPropertyBytesTotal;
    v48 = SSDownloadExternalPropertyEstimatedTimeRemaining;
    v47 = SSDownloadExternalPropertyPercentComplete;
    v46 = @"bundle_id";
    v45 = @"kind";
    v44 = @"transaction_id";
    v41 = SSDownloadKindInAppContent;
    *&v3 = 138413058;
    v40 = v3;
    do
    {
      for (i = 0; i != v53; i = i + 1)
      {
        if (*v58 != v51)
        {
          objc_enumerationMutation(v39);
        }

        v5 = *(*(&v57 + 1) + 8 * i);
        v55 = objc_autoreleasePoolPush();
        v6 = [v5 downloadIdentifier];
        v7 = [v5 overallProgress];
        [v7 snapshot];
        v8 = [v7 currentValue];
        v56 = v7;
        v9 = [v7 maxValue];
        v10 = +[SSLogConfig sharedDaemonConfig];
        if (!v10)
        {
          v10 = +[SSLogConfig sharedConfig];
        }

        v11 = v8 / v9;
        v12 = [v10 shouldLog];
        if ([v10 shouldLogToDisk])
        {
          v13 = v12 | 2;
        }

        else
        {
          v13 = v12;
        }

        v14 = [v10 OSLogObject];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v15 = v13;
        }

        else
        {
          v15 = v13 & 2;
        }

        if (v15)
        {
          v16 = objc_opt_class();
          v17 = v16;
          [v56 estimatedTimeRemaining];
          *v61 = v40;
          *&v61[4] = v16;
          *&v61[12] = 2048;
          *&v61[14] = v6;
          *&v61[22] = 2048;
          v62 = v11;
          v63 = 2048;
          v64 = v18;
          v37 = 42;
          v36 = v61;
          v19 = _os_log_send_and_compose_impl();

          if (!v19)
          {
            goto LABEL_18;
          }

          v14 = [NSString stringWithCString:v19 encoding:4];
          free(v19);
          v36 = v14;
          SSFileLog();
        }

LABEL_18:
        v20 = objc_alloc_init(NSMutableDictionary);
        v21 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v5 transferBytesWritten]);
        [v20 setObject:v21 forKey:v50];

        v22 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v5 transferBytesExpected]);
        [v20 setObject:v22 forKey:v49];

        [v56 estimatedTimeRemaining];
        v23 = [NSNumber numberWithDouble:?];
        [v20 setObject:v23 forKey:v48];

        v24 = [NSNumber numberWithDouble:v11];
        [v20 setObject:v24 forKey:v47];

        [v54 setExternalPropertyValues:v20 forDownloadWithID:v6];
        v25 = [DownloadEntity alloc];
        v26 = [(DownloadEntity *)v25 initWithPersistentID:v6 inDatabase:v52];
        *v61 = v46;
        *&v61[8] = v45;
        *&v61[16] = v44;
        *(&v38 - 4) = 0;
        *(&v38 - 3) = 0;
        v36 = 0;
        [(DownloadEntity *)v26 getValues:&v38 - 4 forProperties:v61 count:3];
        if (*(&v38 - 3))
        {
          v27 = [v54 externalValuesForDownloadID:v6];
          if ([*(&v38 - 3) isEqualToString:v41])
          {
            v43 = &v38;
            v28 = +[MicroPaymentQueue paymentQueue];
            [(ApplicationHandle *)v28 notifyClientsOfExternalPropertyChanges:v27 ofDownloadID:v6];
            goto LABEL_23;
          }

          if (SSDownloadKindIsSoftwareKind())
          {
            v43 = &v38;
            v29 = [ApplicationHandle alloc];
            v28 = [(ApplicationHandle *)v29 initWithTransactionIdentifier:[v36 longLongValue] downloadIdentifier:v6 bundleIdentifier:*(&v38 - 4)];
            v30 = objc_alloc_init(ApplicationDownloadProgress);
            [(ApplicationDownloadProgress *)v30 setApplicationHandle:v28];
            v38 = v6;
            v31 = v56;
            -[ApplicationDownloadProgress setCompletedUnitCount:](v30, "setCompletedUnitCount:", [v56 currentValue]);
            -[ApplicationDownloadProgress setTotalUnitCount:](v30, "setTotalUnitCount:", [v31 maxValue]);
            v32 = +[ApplicationWorkspace defaultWorkspace];
            [v32 updatePlaceholderWithApplicationProgress:v30];

            v6 = v38;
LABEL_23:
          }

          v33 = +[DownloadController controller];
          [v33 notifyClientsOfExternalPropertyChanges:v27 forDownloadID:v6 downloadKind:*(&v38 - 3)];
        }

        for (j = 16; j != -8; j -= 8)
        {
        }

        objc_autoreleasePoolPop(v55);
      }

      v53 = [v39 countByEnumeratingWithState:&v57 objects:v65 count:16];
    }

    while (v53);
  }

  return 1;
}

uint64_t sub_100196D74(uint64_t a1, void *a2)
{
  v3 = a2;
  v24[0] = @"is_restore";
  v24[1] = @"download_state.restore_state";
  v4 = [*(a1 + 32) downloadIdentifier];
  v5 = [DownloadEntity alloc];
  v6 = [v3 database];
  v7 = [(DownloadEntity *)v5 initWithPersistentID:v4 inDatabase:v6];

  v20 = 0;
  v21 = 0;
  [(DownloadEntity *)v7 getValues:&v20 forProperties:v24 count:2];
  if (![v20 BOOLValue] || objc_msgSend(v21, "integerValue") == 1)
  {
    v8 = +[SSLogConfig sharedDaemonConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    v9 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = v9 | 2;
    }

    else
    {
      v10 = v9;
    }

    v11 = [v8 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v10;
    }

    else
    {
      v12 = v10 & 2;
    }

    if (v12)
    {
      v22 = 134217984;
      v23 = v4;
      LODWORD(v19) = 12;
      v13 = _os_log_send_and_compose_impl();

      if (!v13)
      {
LABEL_15:

        v14 = *(a1 + 40);
        v15 = [NSNumber numberWithLongLong:v4];
        v16 = [*(a1 + 48) error];
        [v14 _failDownloadWithIdentifier:v15 error:v16 transaction:v3];

        goto LABEL_16;
      }

      v11 = [NSString stringWithCString:v13 encoding:4, &v22, v19];
      free(v13);
      SSFileLog();
    }

    goto LABEL_15;
  }

LABEL_16:

  for (i = 1; i != -1; --i)
  {
  }

  return 1;
}

uint64_t sub_100197548(id *a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1[4] + 14) objectForKey:a1[5]];
  v5 = [a1[6] downloadIdentifier];
  v6 = [a1[6] result];
  if (v6 > 3)
  {
    if (v6 <= 5)
    {
      if (v6 != 4)
      {
        v12 = [a1[6] downloadHandlerSession];
        [*(a1[4] + 6) addObject:v12];
        [*(a1[4] + 14) setObject:v4 forKey:v12];
        v13 = a1[4];
        v14 = [v12 sessionProperties];
        v15 = [v14 downloadPhase];
        [v13 _setDownloadPhase:v15 forDownloadIdentifier:v5 databaseTransaction:v3];

        v16 = +[SSLogConfig sharedDaemonConfig];
        if (!v16)
        {
          v16 = +[SSLogConfig sharedConfig];
        }

        v17 = [v16 shouldLog];
        if ([v16 shouldLogToDisk])
        {
          v18 = v17 | 2;
        }

        else
        {
          v18 = v17;
        }

        v19 = [v16 OSLogObject];
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v18 &= 2u;
        }

        if (v18)
        {
          v20 = objc_opt_class();
          v21 = v20;
          v87 = 138412802;
          v88 = v20;
          v89 = 2048;
          v90 = [v12 sessionID];
          v91 = 2048;
          v92 = v5;
          LODWORD(v84) = 32;
          v82 = &v87;
          v22 = _os_log_send_and_compose_impl();

          if (!v22)
          {
LABEL_19:

            v23 = +[DownloadHandlerManager handlerManager];
            [v23 beginSessionWithID:{objc_msgSend(v12, "sessionID")}];

LABEL_84:
            goto LABEL_108;
          }

          v19 = [NSString stringWithCString:v22 encoding:4, &v87, v84];
          free(v22);
          v82 = v19;
          SSFileLog();
        }

        goto LABEL_19;
      }

      v58 = +[SSLogConfig sharedDaemonConfig];
      if (!v58)
      {
        v58 = +[SSLogConfig sharedConfig];
      }

      v59 = [v58 shouldLog];
      if ([v58 shouldLogToDisk])
      {
        v60 = v59 | 2;
      }

      else
      {
        v60 = v59;
      }

      v61 = [v58 OSLogObject];
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        v62 = v60;
      }

      else
      {
        v62 = v60 & 2;
      }

      if (v62)
      {
        v87 = 134217984;
        v88 = v5;
        LODWORD(v84) = 12;
        v82 = &v87;
        v63 = _os_log_send_and_compose_impl();

        if (!v63)
        {
LABEL_77:

          v12 = [a1[6] mediaAssetInstallPath];
          if (v12)
          {
            v64 = [DownloadAssetEntity alloc];
            v65 = [a1[6] mediaAssetIdentifier];
            v66 = [v3 database];
            v67 = [(DownloadAssetEntity *)v64 initWithPersistentID:v65 inDatabase:v66];

            v68 = [NSURL fileURLWithPath:v12];
            v69 = [v68 absoluteString];
            [(DownloadAssetEntity *)v67 setValue:v69 forProperty:@"destination_url"];
          }

          if (v4)
          {
            [v4 setFinishProgress:1.0];
            [*(a1[4] + 5) addObject:v4];
            [a1[4] _startProgressTimer];
          }

          [v3 finishDownloadWithID:v5 finalPhase:SSDownloadPhaseFinished updatePipeline:{0, v82}];
          v70 = a1[4];
          v54 = [v4 kind];
          v55 = [a1[5] storeItemIdentifier];
          v56 = [a1[5] rentalIdentifier];
          [v70 _reportTVAppDownloadQOSMetricsIfAppropriateForKind:v54 adamID:v55 rentalID:v56 error:0 cancelReason:0];
          goto LABEL_82;
        }

        v61 = [NSString stringWithCString:v63 encoding:4, &v87, v84];
        free(v63);
        v82 = v61;
        SSFileLog();
      }

      goto LABEL_77;
    }

    if (v6 != 6)
    {
      if (v6 != 7)
      {
        goto LABEL_108;
      }

      v30 = +[SSLogConfig sharedDaemonConfig];
      if (!v30)
      {
        v30 = +[SSLogConfig sharedConfig];
      }

      v31 = [v30 shouldLog];
      if ([v30 shouldLogToDisk])
      {
        v32 = v31 | 2;
      }

      else
      {
        v32 = v31;
      }

      v33 = [v30 OSLogObject];
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v32 &= 2u;
      }

      if (v32)
      {
        v34 = [v4 bundleIdentifier];
        v87 = 134218242;
        v88 = v5;
        v89 = 2112;
        v90 = v34;
        LODWORD(v84) = 22;
        v82 = &v87;
        v35 = _os_log_send_and_compose_impl();

        if (!v35)
        {
LABEL_46:

          if (v4)
          {
            [v4 setFinishProgress:1.0];
            [*(a1[4] + 5) addObject:v4];
            [a1[4] _startProgressTimer];
          }

          [v3 finishDownloadWithID:v5 finalPhase:SSDownloadPhaseCanceled updatePipeline:{0, v82}];
          v36 = [ApplicationHandle alloc];
          v37 = [v4 downloadHandle];
          v38 = [v4 bundleIdentifier];
          v10 = [(ApplicationHandle *)v36 initWithDownloadHandle:v37 bundleIdentifier:v38];

          v39 = +[ApplicationWorkspace defaultWorkspace];
          [v39 resetProgressForApplicationHandle:v10];

          goto LABEL_49;
        }

        v33 = [NSString stringWithCString:v35 encoding:4, &v87, v84];
        free(v35);
        v82 = v33;
        SSFileLog();
      }

      goto LABEL_46;
    }

    v75 = +[SSLogConfig sharedDaemonConfig];
    if (!v75)
    {
      v75 = +[SSLogConfig sharedConfig];
    }

    v76 = [v75 shouldLog];
    if ([v75 shouldLogToDisk])
    {
      v77 = v76 | 2;
    }

    else
    {
      v77 = v76;
    }

    v78 = [v75 OSLogObject];
    if (!os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
    {
      v77 &= 2u;
    }

    if (v77)
    {
      v79 = [a1[6] error];
      v87 = 134218242;
      v88 = v5;
      v89 = 2112;
      v90 = v79;
      LODWORD(v84) = 22;
      v82 = &v87;
      v80 = _os_log_send_and_compose_impl();

      if (!v80)
      {
LABEL_107:

        [v3 finishDownloadWithID:v5 finalPhase:SSDownloadPhaseCanceled updatePipeline:{0, v82, v84, v85}];
        goto LABEL_108;
      }

      v78 = [NSString stringWithCString:v80 encoding:4, &v87, v84];
      free(v80);
      v82 = v78;
      SSFileLog();
    }

    goto LABEL_107;
  }

  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v12 = +[SSLogConfig sharedDaemonConfig];
      if (!v12)
      {
        v12 = +[SSLogConfig sharedConfig];
      }

      v71 = [v12 shouldLog];
      if ([v12 shouldLogToDisk])
      {
        v72 = v71 | 2;
      }

      else
      {
        v72 = v71;
      }

      v54 = [v12 OSLogObject];
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        v73 = v72;
      }

      else
      {
        v73 = v72 & 2;
      }

      if (v73)
      {
        v87 = 134217984;
        v88 = v5;
        LODWORD(v84) = 12;
        v82 = &v87;
        v74 = _os_log_send_and_compose_impl();

        if (!v74)
        {
          goto LABEL_84;
        }

        v54 = [NSString stringWithCString:v74 encoding:4, &v87, v84];
        free(v74);
        v82 = v54;
        SSFileLog();
      }

      goto LABEL_83;
    }

    v24 = +[SSLogConfig sharedDaemonConfig];
    if (!v24)
    {
      v24 = +[SSLogConfig sharedConfig];
    }

    v25 = [v24 shouldLog];
    if ([v24 shouldLogToDisk])
    {
      v26 = v25 | 2;
    }

    else
    {
      v26 = v25;
    }

    v27 = [v24 OSLogObject];
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v26 &= 2u;
    }

    if (v26)
    {
      [a1[6] error];
      v87 = 134218242;
      v88 = v5;
      v90 = v89 = 2114;
      LODWORD(v84) = 22;
      v28 = _os_log_send_and_compose_impl();

      if (!v28)
      {
LABEL_32:

        v29 = objc_opt_class();
        v86 = [a1[6] error];
        SSDebugLog();

        [v3 finishDownloadWithID:v5 finalPhase:SSDownloadPhaseCanceled updatePipeline:{0, v29, v5, v86}];
        goto LABEL_108;
      }

      v27 = [NSString stringWithCString:v28 encoding:4, &v87, v84];
      free(v28);
      SSFileLog();
    }

    goto LABEL_32;
  }

  if (!v6)
  {
    v12 = [a1[6] error];
    v40 = +[SSLogConfig sharedDaemonConfig];
    if (!v40)
    {
      v40 = +[SSLogConfig sharedConfig];
    }

    v41 = [v40 shouldLog];
    if ([v40 shouldLogToDisk])
    {
      v42 = v41 | 2;
    }

    else
    {
      v42 = v41;
    }

    v43 = [v40 OSLogObject];
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = v42;
    }

    else
    {
      v44 = v42 & 2;
    }

    if (v44)
    {
      v87 = 134218242;
      v88 = v5;
      v89 = 2114;
      v90 = v12;
      LODWORD(v84) = 22;
      v45 = _os_log_send_and_compose_impl();

      if (!v45)
      {
LABEL_62:

        v83 = objc_opt_class();
        SSDebugLog();
        if (sub_1001AD9B0())
        {
          v46 = [DownloadAssetEntity alloc];
          v47 = [a1[6] mediaAssetIdentifier];
          v48 = [v3 database];
          v49 = [(DownloadAssetEntity *)v46 initWithPersistentID:v47 inDatabase:v48];

          [(DownloadAssetEntity *)v49 setValue:&__kCFBooleanFalse forProperty:@"is_downloaded"];
        }

        v50 = a1[4];
        v51 = [NSNumber numberWithLongLong:v5, v83];
        v52 = [a1[6] error];
        [v50 _failDownloadWithIdentifier:v51 error:v52 transaction:v3];

        v53 = a1[4];
        v54 = [v4 kind];
        v55 = [a1[5] storeItemIdentifier];
        v56 = [a1[5] rentalIdentifier];
        v57 = [a1[6] error];
        [v53 _reportTVAppDownloadQOSMetricsIfAppropriateForKind:v54 adamID:v55 rentalID:v56 error:v57 cancelReason:1];

LABEL_82:
LABEL_83:

        goto LABEL_84;
      }

      v43 = [NSString stringWithCString:v45 encoding:4, &v87, v84];
      free(v45);
      SSFileLog();
    }

    goto LABEL_62;
  }

  if (v6 == 1)
  {
    v7 = [DownloadAssetEntity alloc];
    v8 = [a1[6] mediaAssetIdentifier];
    v9 = [v3 database];
    v10 = [(DownloadAssetEntity *)v7 initWithPersistentID:v8 inDatabase:v9];

    v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [a1[6] assetBlockedReason]);
    [(ApplicationHandle *)v10 setValue:v11 forProperty:@"blocked_reason"];

    [(ApplicationHandle *)v10 setValue:&__kCFBooleanFalse forProperty:@"is_downloaded"];
    [v3 retryDownloadWithIdentifier:{objc_msgSend(a1[6], "downloadIdentifier")}];
LABEL_49:
  }

LABEL_108:
  [*(a1[4] + 14) removeObjectForKey:{a1[5], v82}];
  [a1[4] _reloadKeepAliveAssertion];

  return 1;
}

uint64_t sub_1001983D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 112) objectForKey:*(a1 + 40)];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 mediaAssetIdentifier];
    v7 = [v5 downloadIdentifier];
    v8 = [DownloadAssetEntity alloc];
    v9 = [v3 database];
    v10 = [(DownloadAssetEntity *)v8 initWithPersistentID:v6 inDatabase:v9];

    v11 = [NSNumber numberWithUnsignedLongLong:*(a1 + 48)];
    v36 = v10;
    [(DownloadAssetEntity *)v10 setValue:v11 forProperty:@"download_token"];

    v12 = [DownloadEntity alloc];
    v13 = [v3 database];
    v14 = [(DownloadEntity *)v12 initWithPersistentID:v7 inDatabase:v13];

    v15 = @"download_state.phase";
    v45 = 0;
    v46 = v15;
    [(DownloadEntity *)v14 getValues:&v45 forProperties:&v46 count:1];
    v35 = v45;
    LOBYTE(v12) = [v35 isEqualToString:SSDownloadPhaseCanceled];
    v16 = +[SSLogConfig sharedDaemonConfig];
    v17 = v16;
    if (v12)
    {
      if (!v16)
      {
        v17 = +[SSLogConfig sharedConfig];
      }

      v18 = [v17 shouldLog];
      if ([v17 shouldLogToDisk])
      {
        v18 |= 2u;
      }

      v19 = [v17 OSLogObject];
      if (!os_log_type_enabled(&v19->super, OS_LOG_TYPE_INFO))
      {
        v18 &= 2u;
      }

      if (v18)
      {
        v37 = 138412802;
        v38 = objc_opt_class();
        v39 = 2048;
        v40 = v6;
        v41 = 2048;
        v42 = v7;
        v20 = v38;
        LODWORD(v34) = 32;
        v21 = _os_log_send_and_compose_impl();

        if (!v21)
        {
LABEL_25:

          goto LABEL_26;
        }

        v19 = [NSString stringWithCString:v21 encoding:4, &v37, v34];
        free(v21);
        SSFileLog();
      }

LABEL_24:

      goto LABEL_25;
    }

    if (!v16)
    {
      v17 = +[SSLogConfig sharedConfig];
    }

    v22 = [v17 shouldLog];
    if ([v17 shouldLogToDisk])
    {
      v23 = v22 | 2;
    }

    else
    {
      v23 = v22;
    }

    v24 = [v17 OSLogObject];
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v23 &= 2u;
    }

    if (v23)
    {
      v25 = objc_opt_class();
      v26 = *(a1 + 48);
      v37 = 138413058;
      v38 = v25;
      v39 = 2048;
      v40 = v26;
      v41 = 2048;
      v42 = v6;
      v43 = 2048;
      v44 = v7;
      v27 = v25;
      LODWORD(v34) = 42;
      v28 = _os_log_send_and_compose_impl();

      if (!v28)
      {
LABEL_23:

        v29 = SSDownloadPhaseDownloading;
        [(DownloadEntity *)v14 setValue:SSDownloadPhaseDownloading forProperty:v15];
        v30 = [NSDictionary alloc];
        v17 = [v30 initWithObjectsAndKeys:{v29, SSDownloadPropertyDownloadPhase, 0}];
        v31 = +[DownloadController controller];
        v32 = [(DownloadEntity *)v14 valueForProperty:@"kind"];
        [v31 notifyClientsOfPropertyChanges:v17 forDownloadID:v7 downloadKind:v32];

        [*(a1 + 32) _logDownloadEvent:SSEventNameDownloadStart forTaskWithState:v5 session:v3];
        v19 = objc_alloc_init(DownloadsChangeset);
        -[DownloadsChangeset addStatusChangedDownloadID:](v19, "addStatusChangedDownloadID:", [v5 downloadIdentifier]);
        [(DownloadsChangeset *)v19 addDownloadChangeTypes:2];
        [v3 unionChangeset:v19];
        goto LABEL_24;
      }

      v24 = [NSString stringWithCString:v28 encoding:4, &v37, v34];
      free(v28);
      SSFileLog();
    }

    goto LABEL_23;
  }

LABEL_26:

  return 1;
}

void sub_1001995B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100199644(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10019965C(uint64_t a1)
{
  v5 = [*(a1 + 32) URLSessionIdentifier];
  v2 = [*(*(a1 + 40) + 120) objectForKey:v5];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t sub_1001996D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PipelineDownloadTaskState alloc] initWithPrepareDownloadResponse:*(a1 + 32)];
  [*(*(a1 + 40) + 120) setObject:*(*(*(a1 + 72) + 8) + 40) forKey:*(a1 + 48)];
  if (([*(a1 + 32) ignoresDownloadHandler] & 1) == 0 && sub_1001DF9EC(*(a1 + 88)))
  {
    v5 = [*(a1 + 40) _downloadSessionPropertiesWithPhase:SSDownloadPhaseDownloading taskState:v4 databaseSession:v3];
    if (v5)
    {
      v6 = +[DownloadHandlerManager handlerManager];
      v7 = [v6 openSessionWithProperties:v5];
      v8 = *(*(a1 + 80) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;
    }
  }

  v108 = v4;
  if (*(*(*(a1 + 80) + 8) + 40))
  {
    [*(*(a1 + 40) + 48) addObject:?];
    [*(*(a1 + 40) + 112) setObject:v4 forKey:*(*(*(a1 + 80) + 8) + 40)];
    [*(a1 + 40) _setDownloadPhase:SSDownloadPhaseDownloading forDownloadIdentifier:*(a1 + 96) databaseTransaction:v3];
LABEL_56:
    v57 = [*(a1 + 32) backgroundOperations];
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    v58 = [v57 countByEnumeratingWithState:&v109 objects:v113 count:16];
    if (v58)
    {
      v59 = v58;
      v60 = *v110;
      do
      {
        for (i = 0; i != v59; i = i + 1)
        {
          if (*v110 != v60)
          {
            objc_enumerationMutation(v57);
          }

          v62 = *(*(&v109 + 1) + 8 * i);
          [v62 setShouldRunWithBackgroundPriority:1];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v63 = +[ApplicationWorkspace defaultWorkspace];
            [v63 addPlaceholderThumbnailOperation:v62];
          }

          else
          {
            [*(*(a1 + 40) + 24) addOperation:v62];
          }
        }

        v59 = [v57 countByEnumeratingWithState:&v109 objects:v113 count:16];
      }

      while (v59);
    }

    v4 = v108;
    goto LABEL_67;
  }

  if (*(a1 + 56))
  {
    v10 = +[SSLogConfig sharedDaemonConfig];
    if (!v10)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    v11 = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      v11 |= 2u;
    }

    v12 = [v10 OSLogObject];
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v13 = [*(a1 + 32) isHLS];
      v114 = 67109120;
      LODWORD(v115) = v13;
      LODWORD(v105) = 8;
      v103 = &v114;
      v14 = _os_log_send_and_compose_impl();

      if (!v14)
      {
        goto LABEL_19;
      }

      v12 = [NSString stringWithCString:v14 encoding:4, &v114, v105];
      free(v14);
      v103 = v12;
      SSFileLog();
    }

LABEL_19:
    if ([*(a1 + 32) isHLS])
    {
      [*(a1 + 40) _setDownloadPhase:SSDownloadPhaseDownloading forDownloadIdentifier:*(a1 + 96) databaseTransaction:v3];
      v15 = *(a1 + 56);
      v16 = [v15 URLAsset];
      v17 = [v16 resourceLoader];
      v18 = [DownloadEntity alloc];
      v19 = *(a1 + 96);
      v20 = [v3 database];
      v21 = [(DownloadEntity *)v18 initWithPersistentID:v19 inDatabase:v20];

      v22 = [[DownloadAssetFairPlayStreamingKeyLoader alloc] initWithDownloadEntity:v21];
      [(DownloadAssetFairPlayStreamingKeyLoader *)v22 setDelegate:*(a1 + 40)];

      [(DownloadAssetFairPlayStreamingKeyLoader *)v22 applyResourceLoaderDelegate:v17];
      v23 = [v16 downloadToken];
    }

    else
    {
      v23 = 0;
      v22 = 0;
    }

    v39 = [*(a1 + 32) mediaAssetIdentifier];
    v40 = [DownloadAssetEntity alloc];
    v41 = [v3 database];
    v42 = [(DownloadAssetEntity *)v40 initWithPersistentID:v39 inDatabase:v41];

    v43 = [*(a1 + 32) mediaAssetSize];
    v44 = objc_alloc_init(NSMutableDictionary);
    if (v43 >= 1)
    {
      v45 = [NSNumber numberWithLongLong:v43];
      [v44 setObject:v45 forKey:@"bytes_total"];
    }

    v46 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 56) taskIdentifier]);
    [v44 setObject:v46 forKey:@"url_session_task_id"];

    if (!v23)
    {
      goto LABEL_53;
    }

    v107 = v3;
    v47 = +[SSLogConfig sharedDaemonConfig];
    if (!v47)
    {
      v47 = +[SSLogConfig sharedConfig];
    }

    v48 = [v47 shouldLog];
    if ([v47 shouldLogToDisk])
    {
      v49 = v48 | 2;
    }

    else
    {
      v49 = v48;
    }

    v50 = [v47 OSLogObject];
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      v51 = v49;
    }

    else
    {
      v51 = v49 & 2;
    }

    if (v51)
    {
      v52 = objc_opt_class();
      v106 = v42;
      v53 = v52;
      v54 = [(PipelineDownloadTaskState *)v108 downloadIdentifier];
      v114 = 138413058;
      v115 = v52;
      v116 = 2048;
      v117 = v23;
      v118 = 2048;
      v119 = v39;
      v120 = 2048;
      v121 = v54;
      LODWORD(v105) = 42;
      v104 = &v114;
      v55 = _os_log_send_and_compose_impl();

      v42 = v106;
      if (!v55)
      {
LABEL_52:

        v56 = [NSNumber numberWithUnsignedLongLong:v23];
        [v44 setObject:v56 forKey:@"download_token"];

        v3 = v107;
LABEL_53:
        [(DownloadAssetEntity *)v42 setValuesWithDictionary:v44, v104];
        if (v22)
        {
          [*(*(a1 + 40) + 104) setObject:v22 forKey:*(a1 + 56)];
        }

        [*(*(a1 + 40) + 112) setObject:v108 forKey:*(a1 + 56)];

        goto LABEL_56;
      }

      v50 = [NSString stringWithCString:v55 encoding:4, &v114, v105];
      free(v55);
      v104 = v50;
      SSFileLog();
    }

    goto LABEL_52;
  }

  v24 = *(a1 + 88);
  switch(v24)
  {
    case 1:
      v74 = +[SSLogConfig sharedDaemonConfig];
      if (!v74)
      {
        v74 = +[SSLogConfig sharedConfig];
      }

      v75 = [v74 shouldLog];
      if ([v74 shouldLogToDisk])
      {
        v75 |= 2u;
      }

      v76 = [v74 OSLogObject];
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
      {
        v77 = v75;
      }

      else
      {
        v77 = v75 & 2;
      }

      if (v77)
      {
        v78 = *(a1 + 96);
        v114 = 134217984;
        v115 = v78;
        LODWORD(v105) = 12;
        v103 = &v114;
        v79 = _os_log_send_and_compose_impl();

        if (v79)
        {
          v80 = [NSString stringWithCString:v79 encoding:4, &v114, v105];
          free(v79);
          v103 = v80;
          SSFileLog();
        }
      }

      else
      {
      }

      [v3 finishDownloadWithID:*(a1 + 96) finalPhase:SSDownloadPhaseCanceled updatePipeline:0];
      break;
    case 4:
      v67 = +[SSLogConfig sharedDaemonConfig];
      if (!v67)
      {
        v67 = +[SSLogConfig sharedConfig];
      }

      v68 = [v67 shouldLog];
      if ([v67 shouldLogToDisk])
      {
        v68 |= 2u;
      }

      v69 = [v67 OSLogObject];
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        v70 = v68;
      }

      else
      {
        v70 = v68 & 2;
      }

      if (v70)
      {
        v71 = *(a1 + 96);
        v114 = 134217984;
        v115 = v71;
        LODWORD(v105) = 12;
        v103 = &v114;
        v72 = _os_log_send_and_compose_impl();

        if (v72)
        {
          v73 = [NSString stringWithCString:v72 encoding:4, &v114, v105];
          free(v72);
          v103 = v73;
          SSFileLog();
        }
      }

      else
      {
      }

      break;
    case 3:
      if ([*(a1 + 32) isPerDeviceVPP])
      {
        v25 = [*(a1 + 32) downloadRestoreState];

        if (v25)
        {
          v26 = [DownloadEntity alloc];
          v27 = *(a1 + 96);
          v28 = [v3 database];
          v29 = [(DownloadEntity *)v26 initWithPersistentID:v27 inDatabase:v28];

          v30 = [*(a1 + 32) downloadRestoreState];
          [(DownloadEntity *)v29 setValue:v30 forProperty:@"download_state.restore_state"];

          v31 = +[SSLogConfig sharedDaemonConfig];
          if (!v31)
          {
            v31 = +[SSLogConfig sharedConfig];
          }

          v32 = [v31 shouldLog];
          if ([v31 shouldLogToDisk])
          {
            v32 |= 2u;
          }

          v33 = [v31 OSLogObject];
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = v32;
          }

          else
          {
            v34 = v32 & 2;
          }

          if (v34)
          {
            v35 = *(a1 + 96);
            v36 = [*(a1 + 32) downloadRestoreState];
            v114 = 134218242;
            v115 = v35;
            v116 = 2112;
            v117 = v36;
            LODWORD(v105) = 22;
            v103 = &v114;
            v37 = _os_log_send_and_compose_impl();

            if (v37)
            {
              v38 = [NSString stringWithCString:v37 encoding:4, &v114, v105];
              free(v37);
              v103 = v38;
              SSFileLog();
            }
          }

          else
          {
          }
        }
      }

      v97 = +[SSLogConfig sharedDaemonConfig];
      if (!v97)
      {
        v97 = +[SSLogConfig sharedConfig];
      }

      v98 = [v97 shouldLog];
      if ([v97 shouldLogToDisk])
      {
        v98 |= 2u;
      }

      v99 = [v97 OSLogObject];
      if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
      {
        v100 = v98;
      }

      else
      {
        v100 = v98 & 2;
      }

      if (v100)
      {
        v101 = *(a1 + 96);
        v114 = 134217984;
        v115 = v101;
        LODWORD(v105) = 12;
        v103 = &v114;
        v102 = _os_log_send_and_compose_impl();

        if (!v102)
        {
LABEL_119:

          [*(a1 + 40) _processDownloadWithTaskState:v4 databaseSession:v3 setupBlock:0];
          goto LABEL_56;
        }

        v99 = [NSString stringWithCString:v102 encoding:4, &v114, v105];
        free(v102);
        v103 = v99;
        SSFileLog();
      }

      goto LABEL_119;
    default:
      v81 = +[SSLogConfig sharedDaemonConfig];
      if (!v81)
      {
        v81 = +[SSLogConfig sharedConfig];
      }

      v82 = [v81 shouldLog];
      if ([v81 shouldLogToDisk])
      {
        v82 |= 2u;
      }

      v83 = [v81 OSLogObject];
      if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
      {
        v84 = v82;
      }

      else
      {
        v84 = v82 & 2;
      }

      if (v84)
      {
        v85 = *(a1 + 96);
        v114 = 134217984;
        v115 = v85;
        LODWORD(v105) = 12;
        v103 = &v114;
        v86 = _os_log_send_and_compose_impl();

        if (v86)
        {
          v87 = [NSString stringWithCString:v86 encoding:4, &v114, v105];
          free(v86);
          v103 = v87;
          SSFileLog();
        }
      }

      else
      {
      }

      v88 = [*(a1 + 32) error];
      v89 = v88;
      if (!v88)
      {
        v89 = *(a1 + 64);
      }

      v90 = v89;

      v91 = *(a1 + 40);
      v92 = [NSNumber numberWithLongLong:*(a1 + 96)];
      [v91 _failDownloadWithIdentifier:v92 error:v90 transaction:v3];

      v93 = *(a1 + 40);
      v94 = [(PipelineDownloadTaskState *)v4 kind];
      v95 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(a1 + 32) storeItemIdentifier]);
      v96 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(a1 + 32) rentalIdentifier]);
      [v93 _reportTVAppDownloadQOSMetricsIfAppropriateForKind:v94 adamID:v95 rentalID:v96 error:v90 cancelReason:1];

      goto LABEL_56;
  }

LABEL_67:
  v64 = *(*(a1 + 40) + 64);
  v65 = [NSNumber numberWithLongLong:*(a1 + 96), v103];
  [v64 removeObject:v65];

  [*(a1 + 40) _reloadKeepAliveAssertion];
  return 1;
}

uint64_t sub_10019A620(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 112) objectForKey:*(a1 + 40)];
  v5 = [v4 downloadIdentifier];
  [*(*(a1 + 32) + 112) removeObjectForKey:*(a1 + 40)];

  v6 = [*(a1 + 48) result];
  if (v6 == 2)
  {
    v23 = [NSOrderedSet alloc];
    v24 = [NSNumber numberWithLongLong:v5];
    v25 = [v23 initWithObjects:{v24, 0}];

    [*(a1 + 32) addDownloadsWithIdentifiers:v25];
    goto LABEL_31;
  }

  if (v6 == 1)
  {
    v16 = +[SSLogConfig sharedDaemonConfig];
    if (!v16)
    {
      v16 = +[SSLogConfig sharedConfig];
    }

    v17 = [v16 shouldLog];
    if ([v16 shouldLogToDisk])
    {
      v18 = v17 | 2;
    }

    else
    {
      v18 = v17;
    }

    v19 = [v16 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v18;
    }

    else
    {
      v20 = v18 & 2;
    }

    if (v20)
    {
      v29 = 134217984;
      v30 = v5;
      LODWORD(v28) = 12;
      v27 = &v29;
      v21 = _os_log_send_and_compose_impl();

      if (!v21)
      {
LABEL_29:

        v22 = [*(a1 + 48) downloadIdentifier];
        [v3 finishDownloadWithID:v22 finalPhase:SSDownloadPhaseCanceled updatePipeline:0];
        goto LABEL_31;
      }

      v19 = [NSString stringWithCString:v21 encoding:4, &v29, v28];
      free(v21);
      v27 = v19;
      SSFileLog();
    }

    goto LABEL_29;
  }

  if (!v6)
  {
    v7 = +[SSLogConfig sharedDaemonConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = v8 | 2;
    }

    else
    {
      v9 = v8;
    }

    v10 = [v7 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v9;
    }

    else
    {
      v11 = v9 & 2;
    }

    if (v11)
    {
      v29 = 134217984;
      v30 = v5;
      LODWORD(v28) = 12;
      v27 = &v29;
      v12 = _os_log_send_and_compose_impl();

      if (!v12)
      {
LABEL_16:

        v13 = *(a1 + 32);
        v14 = [NSNumber numberWithLongLong:v5];
        v15 = [*(a1 + 48) error];
        [v13 _failDownloadWithIdentifier:v14 error:v15 transaction:v3];

        goto LABEL_31;
      }

      v10 = [NSString stringWithCString:v12 encoding:4, &v29, v28];
      free(v12);
      v27 = v10;
      SSFileLog();
    }

    goto LABEL_16;
  }

LABEL_31:
  [*(a1 + 32) _reloadKeepAliveAssertion];

  return 1;
}

void sub_10019AFA4(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v10 && [v10 selectedButtonIndex])
  {
    v6 = [v10 textFieldValues];
    if ([v6 count] == 1)
    {
      v7 = [v6 objectAtIndex:0];
      v8 = 0;
    }

    else if ([v6 count] == 2)
    {
      v7 = [v6 objectAtIndex:1];
      v8 = [v6 objectAtIndex:0];
    }

    else
    {
      v8 = 0;
      v7 = 0;
    }

    v9 = [[NSURLCredential alloc] initWithUser:v8 password:v7 persistence:1];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_10019B1B0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 48) == 1)
  {
    v4 = objc_alloc_init(NSMutableSet);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v5 = *(*(a1 + 32) + 112);
    v6 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v23;
      do
      {
        v9 = 0;
        do
        {
          if (*v23 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(a1 + 32) + 112) objectForKey:*(*(&v22 + 1) + 8 * v9)];
          v11 = [[NSNumber alloc] initWithLongLong:{objc_msgSend(v10, "downloadIdentifier")}];
          [v4 addObject:v11];

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  v12 = [v3 database];
  v13 = *(a1 + 40);
  v26 = @"order_key";
  v14 = [NSArray arrayWithObjects:&v26 count:1];
  v15 = [DownloadEntity queryWithDatabase:v12 predicate:v13 orderingProperties:v14];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10019B42C;
  v18[3] = &unk_10032AD50;
  v16 = *(a1 + 32);
  v19 = v4;
  v20 = v16;
  v21 = *(a1 + 49);
  v17 = v4;
  [PrepareDownloadOperation enumerateOperationsWithDownloadQuery:v15 session:v3 usingBlock:v18];
  [*(a1 + 32) _reloadKeepAliveAssertion];
}

void sub_10019B42C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NSNumber alloc] initWithLongLong:{objc_msgSend(v3, "downloadIdentifier")}];
  if (([*(a1 + 32) containsObject:v4] & 1) == 0 && (objc_msgSend(*(*(a1 + 40) + 64), "containsObject:", v4) & 1) == 0)
  {
    [v3 setIgnoresDownloadHandler:*(a1 + 48)];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10019B53C;
    v5[3] = &unk_10032AD28;
    v5[4] = *(a1 + 40);
    [v3 setOutputBlock:v5];
    [*(*(a1 + 40) + 64) addObject:v4];
    [*(*(a1 + 40) + 72) addOperation:v3];
  }
}

void sub_10019B53C(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  if (([a2 isCancelled] & 1) == 0)
  {
    v5 = [[PerformDownloadOperation alloc] initWithDownloadPipeline:*(a1 + 32) response:v9];
    v6 = [v9 sessionConfiguration];
    v7 = [v6 isDiscretionary];

    v8 = 144;
    if (v7)
    {
      v8 = 136;
    }

    [*(*(a1 + 32) + v8) addOperation:v5];
  }
}

void sub_10019B7E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10019B804(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _finishDownloadWithOperation:v7 response:v5];

  [v7 setDelegate:0];
}

void sub_10019BC5C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10019BCFC;
  v5[3] = &unk_10032ADC8;
  v6 = *(a1 + 48);
  [v3 _processDownloadWithTaskState:v4 databaseSession:a2 setupBlock:v5];
}

void sub_10019BCFC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setHandlerReleasedDownloadPhase:v3];
  [v4 setInitialDownloadPhase:*(a1 + 32)];
}

void sub_10019C034(uint64_t a1)
{
  v2 = +[SSLogConfig sharedDaemonConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    v4 = v3 | 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = [v2 OSLogObject];
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v4 &= 2u;
  }

  if (!v4)
  {
    goto LABEL_11;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  LODWORD(v11) = 138412290;
  *(&v11 + 4) = objc_opt_class();
  v7 = *(&v11 + 4);
  LODWORD(v10) = 12;
  v8 = _os_log_send_and_compose_impl();

  if (v8)
  {
    v5 = [NSString stringWithCString:v8 encoding:4, &v11, v10, v11];
    free(v8);
    SSFileLog();
LABEL_11:
  }

  v9 = objc_loadWeakRetained((a1 + 32));
  [v9 reconnectWithURLSessionTasks];
}

void sub_10019C50C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _commitProgressTimer];
}

void sub_10019D170(id a1, NSString *a2)
{
  v2 = a2;
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v5;
  }

  else
  {
    v7 = v5 & 2;
  }

  if (!v7)
  {
    goto LABEL_12;
  }

  v10 = 138412290;
  v11 = v2;
  LODWORD(v9) = 12;
  v8 = _os_log_send_and_compose_impl();

  if (v8)
  {
    v6 = [NSString stringWithCString:v8 encoding:4, &v10, v9];
    free(v8);
    SSFileLog();
LABEL_12:
  }
}

void sub_10019D2D8(id a1, NSArray *a2)
{
  v2 = a2;
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v5;
  }

  else
  {
    v7 = v5 & 2;
  }

  if (!v7)
  {
    goto LABEL_12;
  }

  v10 = 138412290;
  v11 = v2;
  LODWORD(v9) = 12;
  v8 = _os_log_send_and_compose_impl();

  if (v8)
  {
    v6 = [NSString stringWithCString:v8 encoding:4, &v10, v9];
    free(v8);
    SSFileLog();
LABEL_12:
  }
}

id sub_10019DC38()
{
  result = objc_alloc_init(objc_opt_class());
  qword_100383FE8 = result;
  return result;
}

void sub_10019DCF8(uint64_t a1)
{
  if ([*(*(a1 + 32) + 16) count])
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v2, "0", 1009);
    SSXPCDictionarySetCFObject();
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = *(*(a1 + 32) + 16);
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [objc_msgSend(*(*(a1 + 32) + 16) objectForKey:{*(*(&v8 + 1) + 8 * i)), "postNotificationName:message:", *(a1 + 40), v2}];
        }

        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }

    xpc_release(v2);
  }
}

void sub_10019DF40(uint64_t a1)
{
  objc_opt_class();
  v2 = SSXPCDictionaryCopyCFObjectWithClass();
  objc_opt_class();
  v3 = SSXPCDictionaryCopyCFObjectWithClass();
  if ([v2 length] && objc_msgSend(v3, "length"))
  {
    v4 = +[SSLogConfig sharedDaemonConfig];
    if (!v4)
    {
      v4 = +[SSLogConfig sharedConfig];
    }

    v5 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      v6 = v5 | 2;
    }

    else
    {
      v6 = v5;
    }

    if (!os_log_type_enabled([v4 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v6 &= 2u;
    }

    if (v6)
    {
      v12 = 138412802;
      v13 = objc_opt_class();
      v14 = 2112;
      v15 = v2;
      v16 = 2112;
      v17 = v3;
      LODWORD(v11) = 32;
      v10 = &v12;
      v7 = _os_log_send_and_compose_impl();
      if (v7)
      {
        v8 = v7;
        v9 = [NSString stringWithCString:v7 encoding:4, &v12, v11];
        free(v8);
        v10 = v9;
        SSFileLog();
      }
    }

    [*(a1 + 40) _addObserverWithPortName:v2 notificationName:{v3, v10}];
  }
}

void sub_10019E1CC(uint64_t a1)
{
  objc_opt_class();
  v2 = SSXPCDictionaryCopyCFObjectWithClass();
  objc_opt_class();
  v3 = SSXPCDictionaryCopyCFObjectWithClass();
  if ([v2 length] && objc_msgSend(v3, "length"))
  {
    v4 = +[SSLogConfig sharedDaemonConfig];
    if (!v4)
    {
      v4 = +[SSLogConfig sharedConfig];
    }

    v5 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      v6 = v5 | 2;
    }

    else
    {
      v6 = v5;
    }

    if (!os_log_type_enabled([v4 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v6 &= 2u;
    }

    if (v6)
    {
      v12 = 138412802;
      v13 = objc_opt_class();
      v14 = 2112;
      v15 = v2;
      v16 = 2112;
      v17 = v3;
      LODWORD(v11) = 32;
      v10 = &v12;
      v7 = _os_log_send_and_compose_impl();
      if (v7)
      {
        v8 = v7;
        v9 = [NSString stringWithCString:v7 encoding:4, &v12, v11];
        free(v8);
        v10 = v9;
        SSFileLog();
      }
    }

    [*(a1 + 48) _removeObserverWithPortName:v2 notificationName:{v3, v10}];
  }
}

id sub_10019E510(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  xpc_release(*(a1 + 32));
  xpc_release(*(a1 + 40));
  v2 = +[Daemon daemon];

  return [v2 releaseKeepAliveAssertion:@"com.apple.itunesstored.DistributedNotificationCenter"];
}

id sub_10019EB90(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) indexOfObjectIdenticalTo:*(a1 + 40)];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = result;
    [objc_msgSend(*(a1 + 40) "object")];
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 16);

    return [v5 removeObjectAtIndex:v3];
  }

  return result;
}

id sub_10019F70C()
{
  result = objc_alloc_init(objc_opt_class());
  qword_100383FF8 = result;
  return result;
}

id sub_10019F7D0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (!v2)
  {
    *(*(a1 + 32) + 16) = objc_alloc_init(NSMutableArray);
    v2 = *(*(a1 + 32) + 16);
  }

  [v2 addObject:*(a1 + 40)];
  if ([*(a1 + 40) shouldKeepDaemonAlive])
  {
    [+[Daemon daemon](Daemon "daemon")];
  }

  v3 = *(a1 + 32);

  return [v3 _reloadPollTimer];
}

id sub_10019F8CC(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) indexOfObjectIdenticalTo:*(a1 + 40)];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = result;
    [*(a1 + 32) _willRemoveEvent:*(a1 + 40)];
    [*(*(a1 + 32) + 16) removeObjectAtIndex:v3];
    v4 = *(a1 + 32);

    return [v4 _reloadPollTimer];
  }

  return result;
}

id sub_10019FB20(uint64_t a1)
{
  v2 = [*(a1 + 32) count];
  if (v2 >= 1)
  {
    v3 = v2 + 1;
    do
    {
      [objc_msgSend(*(a1 + 32) objectAtIndex:{v3 - 2), "performAction"}];
      --v3;
    }

    while (v3 > 1);
  }

  v4 = +[Daemon daemon];

  return [v4 releaseKeepAliveAssertion:@"EventMonitor"];
}

void sub_1001A0460(uint64_t a1)
{
  if ([*(*(a1 + 32) + 16) count])
  {
    v2 = +[SSLogConfig sharedDaemonConfig];
    if (!v2)
    {
      v2 = +[SSLogConfig sharedConfig];
    }

    v3 = [v2 shouldLog];
    if ([v2 shouldLogToDisk])
    {
      v4 = v3 | 2;
    }

    else
    {
      v4 = v3;
    }

    if (!os_log_type_enabled([v2 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v4 &= 2u;
    }

    if (v4)
    {
      v5 = objc_opt_class();
      v6 = *(a1 + 40);
      v23 = 138412546;
      v24 = v5;
      v25 = 2112;
      v26 = v6;
      LODWORD(v17) = 22;
      v16 = &v23;
      v7 = _os_log_send_and_compose_impl();
      if (v7)
      {
        v8 = v7;
        v9 = [NSString stringWithCString:v7 encoding:4, &v23, v17];
        free(v8);
        v16 = v9;
        SSFileLog();
      }
    }

    v10 = xpc_dictionary_create(0, 0, 0);
    SSXPCDictionarySetCFObject();
    SSXPCDictionarySetCFObject();
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = *(*(a1 + 32) + 16);
    v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [objc_msgSend(*(*(&v18 + 1) + 8 * i) outputConnection];
        }

        v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v13);
    }

    xpc_release(v10);
  }
}

void sub_1001A074C(uint64_t a1)
{
  if (SSXPCConnectionHasEntitlement())
  {
    value = xpc_dictionary_get_value(*(a1 + 48), "1");
    if (value)
    {
      v3 = value;
      if (xpc_get_type(value) == &_xpc_type_endpoint)
      {
        v4 = xpc_connection_create_from_endpoint(v3);
        if (v4)
        {
          v5 = v4;
          v6 = [[XPCClient alloc] initWithInputConnection:*(a1 + 32)];
          [(XPCClient *)v6 setOutputConnectionWithConnection:v5];
          v7 = +[SSLogConfig sharedDaemonConfig];
          if (!v7)
          {
            v7 = +[SSLogConfig sharedConfig];
          }

          v8 = [v7 shouldLog];
          if ([v7 shouldLogToDisk])
          {
            v9 = v8 | 2;
          }

          else
          {
            v9 = v8;
          }

          if (!os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_INFO))
          {
            v9 &= 2u;
          }

          if (v9)
          {
            v22 = 138412546;
            v23 = objc_opt_class();
            v24 = 2112;
            v25 = v6;
            LODWORD(v21) = 22;
            v20 = &v22;
            v10 = _os_log_send_and_compose_impl();
            if (v10)
            {
              v11 = v10;
              v12 = [NSString stringWithCString:v10 encoding:4, &v22, v21];
              free(v11);
              v20 = v12;
              SSFileLog();
            }
          }

          [*(a1 + 56) _addClient:{v6, v20}];
          v13 = xpc_dictionary_create(0, 0, 0);
          [(SSXPCConnection *)[(XPCClient *)v6 outputConnection] sendMessage:v13];
          xpc_release(v13);

          xpc_release(v5);
        }
      }
    }
  }

  else
  {
    v14 = SSXPCConnectionCopyClientIdentifier();
    v15 = +[SSLogConfig sharedDaemonConfig];
    if (!v15)
    {
      v15 = +[SSLogConfig sharedConfig];
    }

    v16 = [v15 shouldLog];
    if ([v15 shouldLogToDisk])
    {
      v17 = v16 | 2;
    }

    else
    {
      v17 = v16;
    }

    if (!os_log_type_enabled([v15 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v17 &= 2u;
    }

    if (v17)
    {
      v22 = 138412546;
      v23 = objc_opt_class();
      v24 = 2112;
      v25 = v14;
      LODWORD(v21) = 22;
      v18 = _os_log_send_and_compose_impl();
      if (v18)
      {
        v19 = v18;
        [NSString stringWithCString:v18 encoding:4, &v22, v21];
        free(v19);
        SSFileLog();
      }
    }
  }
}

id sub_1001A0B24(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) indexOfObjectIdenticalTo:*(a1 + 40)];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = result;
    v4 = +[SSLogConfig sharedDaemonConfig];
    if (!v4)
    {
      v4 = +[SSLogConfig sharedConfig];
    }

    v5 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      v6 = v5 | 2;
    }

    else
    {
      v6 = v5;
    }

    if (!os_log_type_enabled([v4 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v6 &= 2u;
    }

    if (v6)
    {
      v7 = objc_opt_class();
      v8 = *(a1 + 40);
      v14 = 138412546;
      v15 = v7;
      v16 = 2112;
      v17 = v8;
      LODWORD(v13) = 22;
      v12 = &v14;
      v9 = _os_log_send_and_compose_impl();
      if (v9)
      {
        v10 = v9;
        v11 = [NSString stringWithCString:v9 encoding:4, &v14, v13];
        free(v10);
        v12 = v11;
        SSFileLog();
      }
    }

    [*(a1 + 40) setOutputConnectionWithConnection:{0, v12}];
    return [*(*(a1 + 32) + 16) removeObjectAtIndex:v3];
  }

  return result;
}

id sub_1001A0D88(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  xpc_release(*(a1 + 32));
  xpc_release(*(a1 + 40));
  v2 = +[Daemon daemon];

  return [v2 releaseKeepAliveAssertion:@"com.apple.itunesstored.EventDispatcher"];
}

Class sub_1001A1B80()
{
  if (qword_100384020 != -1)
  {
    sub_100272524();
  }

  result = objc_getClass("ICDefaults");
  qword_100384018 = result;
  off_1003834E0 = sub_1001A1BD4;
  return result;
}

uint64_t sub_1001A1EBC(uint64_t a1)
{
  v2 = [*(a1 + 32) payment];
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  if (!os_log_type_enabled([v3 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v5 &= 2u;
  }

  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [v2 quantity];
    v8 = [v2 productIdentifier];
    v9 = [*(a1 + 40) _clientIdentifier];
    v48 = 138544130;
    v49 = v6;
    v50 = 2048;
    v51 = v7;
    v52 = 2112;
    v53 = v8;
    v54 = 2112;
    v55 = v9;
    LODWORD(v47) = 42;
    v45 = &v48;
    v10 = _os_log_send_and_compose_impl();
    if (v10)
    {
      v11 = v10;
      v12 = [NSString stringWithCString:v10 encoding:4, &v48, v47];
      free(v11);
      v45 = v12;
      SSFileLog();
    }
  }

  result = [objc_msgSend(v2 productIdentifier];
  if (result)
  {
    result = [v2 quantity];
    if (result >= 1)
    {
      if (*(*(a1 + 40) + 24))
      {
        v14 = +[NSThread beginManagedContextSession];
        v15 = [[MicroPayment alloc] initWithEntity:[MicroPayment insertIntoManagedObjectContext:"paymentEntityFromContext:" paymentEntityFromContext:v14], v14];
        -[MicroPayment setClient:](v15, "setClient:", [v14 objectWithID:*(*(a1 + 40) + 24)]);
        [(MicroPayment *)v15 setValuesWithPaymentTransaction:*(a1 + 32)];
        -[MicroPayment setOriginatingStorefront:](v15, "setOriginatingStorefront:", [+[SSDevice currentDevice](SSDevice "currentDevice")]);
        v16 = [*(a1 + 48) objectForKey:@"StoreKitClientPaymentOptionSupportsDeferredPayment"];
        if ([v16 BOOLValue])
        {
          [(MicroPayment *)v15 setSupportsDeferredPayment:v16];
        }

        if ([*(a1 + 40) _isPaymentRestricted])
        {
          v17 = +[SSLogConfig sharedDaemonConfig];
          if (!v17)
          {
            v17 = +[SSLogConfig sharedConfig];
          }

          v18 = [v17 shouldLog];
          if ([v17 shouldLogToDisk])
          {
            v19 = v18 | 2;
          }

          else
          {
            v19 = v18;
          }

          if (!os_log_type_enabled([v17 OSLogObject], OS_LOG_TYPE_DEFAULT))
          {
            v19 &= 2u;
          }

          if (v19)
          {
            v20 = objc_opt_class();
            v21 = [*(a1 + 40) _clientIdentifier];
            v48 = 138543618;
            v49 = v20;
            v50 = 2112;
            v51 = v21;
            LODWORD(v47) = 22;
            v46 = &v48;
            v22 = _os_log_send_and_compose_impl();
            if (v22)
            {
              v23 = v22;
              v24 = [NSString stringWithCString:v22 encoding:4, &v48, v47];
              free(v23);
              v46 = v24;
              SSFileLog();
            }
          }

          sub_1001FA1F0();
          [(MicroPayment *)v15 setFailedWithError:SSError()];
          [*(a1 + 40) _showPaymentsRestrictedAlert];
        }

        else
        {
          [(MicroPayment *)v15 setState:[NSNumber numberWithInteger:0]];
        }

        v30 = [*(*(a1 + 40) + 8) copyInputConnection];
        if ([v2 requestData] && (SSXPCConnectionHasEntitlement() & 1) == 0 && (SSXPCConnectionHasEntitlement() & 1) == 0)
        {
          if (MGGetBoolAnswer() && CFPreferencesGetAppBooleanValue(@"AllowStoreKitPaymentWithRequestDataWithoutEntitlement", kSSUserDefaultsIdentifier, 0))
          {
            v31 = +[SSLogConfig sharedDaemonConfig];
            if (!v31)
            {
              v31 = +[SSLogConfig sharedConfig];
            }

            v32 = [v31 shouldLog];
            if ([v31 shouldLogToDisk])
            {
              v33 = v32 | 2;
            }

            else
            {
              v33 = v32;
            }

            if (!os_log_type_enabled([v31 OSLogObject], OS_LOG_TYPE_DEFAULT))
            {
              v33 &= 2u;
            }

            if (v33)
            {
              v34 = objc_opt_class();
              v35 = [*(a1 + 40) _clientIdentifier];
              v48 = 138543618;
              v49 = v34;
              v50 = 2112;
              v51 = v35;
              LODWORD(v47) = 22;
              v36 = _os_log_send_and_compose_impl();
              if (v36)
              {
                v37 = v36;
                [NSString stringWithCString:v36 encoding:4, &v48, v47];
                free(v37);
                SSFileLog();
              }
            }
          }

          else if ([objc_msgSend(*(a1 + 48) objectForKeyedSubscript:{@"StoreKitClientPaymentOptionGrandfatherRequestData", "BOOLValue"}])
          {
            [(MicroPayment *)v15 setRequestData:0];
          }

          else
          {
            v38 = +[SSLogConfig sharedDaemonConfig];
            if (!v38)
            {
              v38 = +[SSLogConfig sharedConfig];
            }

            v39 = [v38 shouldLog];
            if ([v38 shouldLogToDisk])
            {
              v40 = v39 | 2;
            }

            else
            {
              v40 = v39;
            }

            if (!os_log_type_enabled([v38 OSLogObject], OS_LOG_TYPE_DEFAULT))
            {
              v40 &= 2u;
            }

            if (v40)
            {
              v41 = objc_opt_class();
              v42 = [*(a1 + 40) _clientIdentifier];
              v48 = 138543618;
              v49 = v41;
              v50 = 2112;
              v51 = v42;
              LODWORD(v47) = 22;
              v43 = _os_log_send_and_compose_impl();
              if (v43)
              {
                v44 = v43;
                [NSString stringWithCString:v43 encoding:4, &v48, v47];
                free(v44);
                SSFileLog();
              }
            }

            sub_1001FA1F0();
            [(MicroPayment *)v15 setFailedWithError:SSError()];
          }
        }

        if (v30)
        {
          xpc_release(v30);
        }

        if (sub_1000CE00C(v14))
        {
          [*(a1 + 40) _sendPaymentsAdded:{+[NSArray arrayWithObject:](NSArray, "arrayWithObject:", v15)}];
          *(*(*(a1 + 56) + 8) + 24) = 1;
        }

        return +[NSThread endManagedContextSession];
      }

      else
      {
        v25 = +[SSLogConfig sharedDaemonConfig];
        if (!v25)
        {
          v25 = +[SSLogConfig sharedConfig];
        }

        v26 = [v25 shouldLog];
        if ([v25 shouldLogToDisk])
        {
          v27 = v26 | 2;
        }

        else
        {
          v27 = v26;
        }

        result = os_log_type_enabled([v25 OSLogObject], OS_LOG_TYPE_ERROR);
        if (!result)
        {
          v27 &= 2u;
        }

        if (v27)
        {
          v28 = objc_opt_class();
          v48 = 138543362;
          v49 = v28;
          LODWORD(v47) = 12;
          result = _os_log_send_and_compose_impl();
          if (result)
          {
            v29 = result;
            [NSString stringWithCString:result encoding:4, &v48, v47];
            free(v29);
            return SSFileLog();
          }
        }
      }
    }
  }

  return result;
}

id sub_1001A2730(uint64_t a1)
{
  v2 = +[NSThread beginManagedContextSession];
  v3 = objc_alloc_init(NSMutableOrderedSet);
  v4 = [[NSArray alloc] initWithObjects:{@"downloadID", @"state", 0}];
  v5 = [*(a1 + 32) _copyDownloadsForDownloadIDs:*(a1 + 40) properties:v4 context:v2];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        [v10 setState:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", 1)}];
        [v3 addObject:{objc_msgSend(v10, "downloadID")}];
      }

      v7 = [v5 countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v7);
  }

  if ([v3 count])
  {
    v11 = +[SSLogConfig sharedDaemonConfig];
    if (!v11)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    v12 = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      v13 = v12 | 2;
    }

    else
    {
      v13 = v12;
    }

    if (!os_log_type_enabled([v11 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v13 &= 2u;
    }

    if (v13)
    {
      v14 = objc_opt_class();
      v15 = [v3 count];
      v16 = [*(a1 + 32) _clientIdentifier];
      v28 = 138543874;
      v29 = v14;
      v30 = 2048;
      v31 = v15;
      v32 = 2112;
      v33 = v16;
      LODWORD(v22) = 32;
      v21 = &v28;
      v17 = _os_log_send_and_compose_impl();
      if (v17)
      {
        v18 = v17;
        v19 = [NSString stringWithCString:v17 encoding:4, &v28, v22];
        free(v18);
        v21 = v19;
        SSFileLog();
      }
    }

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1001A2A54;
    v23[3] = &unk_100329E90;
    v23[4] = v3;
    [+[DownloadsDatabase downloadsDatabase](DownloadsDatabase downloadsDatabase];
  }

  sub_1000CE00C(v2);
  return +[NSThread endManagedContextSession];
}

void sub_1001A2B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1001A2B78(uint64_t a1)
{
  result = [*(a1 + 32) _clientIdentifier];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void *sub_1001A2CE4(void *result)
{
  v1 = result[4];
  if (!*(v1 + 24) && *(v1 + 8))
  {
    v2 = result;
    v3 = +[NSThread beginManagedContextSession];
    v4 = v2[4];
    if (!v4[2])
    {
      [v4 _reloadClientProperties];
    }

    v5 = +[SSLogConfig sharedDaemonConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = v6 | 2;
    }

    else
    {
      v7 = v6;
    }

    if (!os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v8 = objc_opt_class();
      v9 = [*(v2[4] + 16) isSandboxed];
      v10 = [*(v2[4] + 16) bundleIdentifier];
      v11 = [*(v2[4] + 16) vendorIdentifier];
      v18 = 138544130;
      v19 = v8;
      v20 = 1024;
      v21 = v9;
      v22 = 2112;
      v23 = v10;
      v24 = 2112;
      v25 = v11;
      LODWORD(v17) = 38;
      v16 = &v18;
      v12 = _os_log_send_and_compose_impl();
      if (v12)
      {
        v13 = v12;
        v14 = [NSString stringWithCString:v12 encoding:4, &v18, v17];
        free(v13);
        v16 = v14;
        SSFileLog();
      }
    }

    v15 = [[MicroPaymentClient alloc] initWithEntity:[MicroPaymentClient insertIntoManagedObjectContext:"entityForContext:" entityForContext:v3, v16], v3];
    [(MicroPaymentClient *)v15 setValuesWithClientIdentity:*(v2[4] + 16)];
    if (sub_1000CE00C(v3))
    {
      *(v2[4] + 24) = [(MicroPaymentClient *)v15 objectID];
    }

    return +[NSThread endManagedContextSession];
  }

  return result;
}

void sub_1001A300C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1001A3024(void *result)
{
  if (*(result[4] + 24))
  {
    v1 = result;
    v2 = +[NSThread beginManagedContextSession];
    v3 = [v2 objectWithID:*(v1[4] + 24)];
    v4 = objc_alloc_init(NSFetchRequest);
    [v4 setEntity:{+[MicroPayment paymentEntityFromContext:](MicroPayment, "paymentEntityFromContext:", v2)}];
    [v4 setPredicate:{+[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"client=%@", v3)}];
    [v4 setPropertiesToFetch:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", @"state", 0)}];
    v5 = [[NSSortDescriptor alloc] initWithKey:@"insertDate" ascending:1];
    [v4 setSortDescriptors:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", v5, 0)}];

    v6 = [v2 executeFetchRequest:v4 error:0];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          v12 = [v11 objectID];
          if (([*(v1[4] + 80) containsObject:v12] & 1) == 0 && objc_msgSend(v11, "isReady"))
          {
            *(*(v1[5] + 8) + 40) = v12;
            goto LABEL_13;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    return +[NSThread endManagedContextSession];
  }

  return result;
}

void sub_1001A3300(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 8))
  {
    v3 = [*(v2 + 8) copyInputConnection];
    *(*(*(a1 + 56) + 8) + 24) = v3 == *(a1 + 40);

    xpc_release(v3);
  }

  else
  {
    if (!*(v2 + 16))
    {
      [v2 _reloadClientProperties];
    }

    v4 = *(a1 + 32);
    if (*(a1 + 48))
    {
      v5 = [*(v4 + 16) bundleIdentifier];
      if (v5 == [*(a1 + 48) bundleIdentifier] || (v6 = objc_msgSend(objc_msgSend(*(*(a1 + 32) + 16), "bundleIdentifier"), "isEqual:", objc_msgSend(*(a1 + 48), "bundleIdentifier"))) != 0)
      {
        v7 = [*(*(a1 + 32) + 16) bundleVersion];
        if (v7 == [*(a1 + 48) bundleVersion] || (v6 = objc_msgSend(objc_msgSend(*(*(a1 + 32) + 16), "bundleVersion"), "isEqual:", objc_msgSend(*(a1 + 48), "bundleVersion"))) != 0)
        {
          v8 = [*(*(a1 + 32) + 16) storeIdentifier];
          if (v8 == [*(a1 + 48) storeItemIdentifier] || (v6 = objc_msgSend(objc_msgSend(*(*(a1 + 32) + 16), "storeIdentifier"), "isEqual:", objc_msgSend(*(a1 + 48), "storeItemIdentifier"))) != 0)
          {
            v9 = [*(*(a1 + 32) + 16) storeVersion];
            if (v9 == [*(a1 + 48) storeExternalVersion])
            {
              LOBYTE(v6) = 1;
            }

            else
            {
              LOBYTE(v6) = [objc_msgSend(*(*(a1 + 32) + 16) "storeVersion")];
            }
          }
        }
      }

      *(*(*(a1 + 56) + 8) + 24) = v6;
    }

    else if (*(v4 + 24))
    {
      v10 = [+[NSThread beginManagedContextSession](NSThread "beginManagedContextSession")];
      if (v10)
      {
        v11 = v10;
        v12 = [[XPCClient alloc] initWithInputConnection:*(a1 + 40)];
        if (-[NSString isEqualToString:](-[XPCClient clientIdentifier](v12, "clientIdentifier"), "isEqualToString:", [v11 identifier]))
        {
          v13 = [(XPCClient *)v12 isAppleSigned];
          v14 = v13 ^ [objc_msgSend(v11 "sandboxed")];
        }

        else
        {
          v14 = 0;
        }

        *(*(*(a1 + 56) + 8) + 24) = v14;
      }

      +[NSThread endManagedContextSession];
    }
  }
}

id sub_1001A362C(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "_clientIdentity")];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1001A373C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1001A3754(uint64_t a1)
{
  result = *(*(a1 + 32) + 24);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void *sub_1001A381C(void *result)
{
  if (*(result[4] + 24))
  {
    v1 = result;
    v2 = +[NSThread beginManagedContextSession];
    v3 = [v2 objectWithID:*(v1[4] + 24)];
    v4 = objc_alloc_init(NSFetchRequest);
    [v4 setEntity:{+[MicroPayment paymentEntityFromContext:](MicroPayment, "paymentEntityFromContext:", v2)}];
    [v4 setPredicate:{+[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"client=%@", v3)}];
    v5 = [[NSSortDescriptor alloc] initWithKey:@"insertDate" ascending:1];
    [v4 setSortDescriptors:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", v5, 0)}];

    v6 = [v2 executeFetchRequest:v4 error:0];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if ([objc_msgSend(v11 "state")] - 5 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v12 = [v11 copyPaymentTransaction];
            if (v12)
            {
              v13 = v12;
              [v1[5] addObject:v12];
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    return +[NSThread endManagedContextSession];
  }

  return result;
}

id sub_1001A3A8C(uint64_t a1)
{
  v2 = +[NSThread beginManagedContextSession];
  v3 = objc_alloc_init(NSMutableOrderedSet);
  v4 = objc_alloc_init(NSMutableArray);
  v5 = [[NSArray alloc] initWithObjects:{@"downloadID", @"state", 0}];
  v27 = a1;
  v28 = v2;
  v6 = [*(a1 + 32) _copyDownloadsForDownloadIDs:*(a1 + 40) properties:v5 context:v2];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v30 objects:v40 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        v12 = [objc_msgSend(v11 "state")];
        if (v12 == 5 || v12 == 0)
        {
          [v11 setState:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", 4)}];
          [v3 addObject:{objc_msgSend(v11, "downloadID")}];
          [v4 addObject:{objc_msgSend(sub_1001FA210(), "changesetWithDownloadID:state:", objc_msgSend(v11, "downloadID"), 2)}];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v30 objects:v40 count:16];
    }

    while (v8);
  }

  if ([v3 count])
  {
    v14 = +[SSLogConfig sharedDaemonConfig];
    if (!v14)
    {
      v14 = +[SSLogConfig sharedConfig];
    }

    v15 = [v14 shouldLog];
    if ([v14 shouldLogToDisk])
    {
      v16 = v15 | 2;
    }

    else
    {
      v16 = v15;
    }

    if (os_log_type_enabled([v14 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v17 = v16;
    }

    else
    {
      v17 = v16 & 2;
    }

    if (v17)
    {
      v18 = objc_opt_class();
      v19 = [v3 count];
      v20 = [*(v27 + 32) _clientIdentifier];
      v34 = 138412802;
      v35 = v18;
      v36 = 2048;
      v37 = v19;
      v38 = 2112;
      v39 = v20;
      LODWORD(v26) = 32;
      v25 = &v34;
      v21 = _os_log_send_and_compose_impl();
      if (v21)
      {
        v22 = v21;
        v23 = [NSString stringWithCString:v21 encoding:4, &v34, v26];
        free(v22);
        v25 = v23;
        SSFileLog();
      }
    }

    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1001A3E28;
    v29[3] = &unk_100329E90;
    v29[4] = v3;
    [+[DownloadsDatabase downloadsDatabase](DownloadsDatabase downloadsDatabase];
  }

  if ([v4 count])
  {
    [*(v27 + 32) _sendDownloadChangesets:v4];
  }

  sub_1000CE00C(v28);
  return +[NSThread endManagedContextSession];
}

id sub_1001A3F6C(uint64_t a1)
{
  v2 = +[NSThread beginManagedContextSession];
  v3 = [v2 objectWithID:*(a1 + 32)];
  v4 = [v3 transactionIdentifier];
  [v2 deleteObject:v3];
  if (sub_1000CE00C(v2))
  {
    [*(a1 + 40) _sendPaymentsRemoved:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", v4, 0)}];
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  return +[NSThread endManagedContextSession];
}

uint64_t sub_1001A4094(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[8])
  {
    v3 = +[SSLogConfig sharedDaemonConfig];
    if (!v3)
    {
      v3 = +[SSLogConfig sharedConfig];
    }

    v4 = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      v5 = v4 | 2;
    }

    else
    {
      v5 = v4;
    }

    result = os_log_type_enabled([v3 OSLogObject], OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      v5 &= 2u;
    }

    if (v5)
    {
      v7 = objc_opt_class();
      v8 = [*(a1 + 32) _clientIdentifier];
      v34 = 138543618;
      v35 = v7;
      v36 = 2112;
      v37 = v8;
      LODWORD(v31) = 22;
      result = _os_log_send_and_compose_impl();
      if (result)
      {
        v9 = result;
        [NSString stringWithCString:result encoding:4, &v34, v31];
        free(v9);
        return SSFileLog();
      }
    }
  }

  else if ([v2 _isPaymentRestricted])
  {
    v10 = +[SSLogConfig sharedDaemonConfig];
    if (!v10)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    v11 = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      v12 = v11 | 2;
    }

    else
    {
      v12 = v11;
    }

    if (!os_log_type_enabled([v10 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v12 &= 2u;
    }

    if (v12)
    {
      v13 = objc_opt_class();
      v14 = [*(a1 + 32) _clientIdentifier];
      v34 = 138543618;
      v35 = v13;
      v36 = 2112;
      v37 = v14;
      LODWORD(v31) = 22;
      v30 = &v34;
      v15 = _os_log_send_and_compose_impl();
      if (v15)
      {
        v16 = v15;
        v17 = [NSString stringWithCString:v15 encoding:4, &v34, v31];
        free(v16);
        v30 = v17;
        SSFileLog();
      }
    }

    [*(a1 + 32) _showPaymentsRestrictedAlert];
    v18 = *(a1 + 32);
    sub_1001FA1F0();
    return [v18 _sendRestoreCompletedWithError:SSError()];
  }

  else
  {
    v19 = objc_alloc_init(LoadCompletedMicroPaymentsOperation);
    *(*(a1 + 32) + 64) = v19;
    [*(*(a1 + 32) + 64) setApplicationUsername:*(a1 + 40)];
    [*(*(a1 + 32) + 64) setClientIdentity:{objc_msgSend(*(a1 + 32), "_clientIdentity")}];
    v20 = [SSWeakReference weakReferenceWithObject:*(a1 + 32)];
    v21 = *(*(a1 + 32) + 64);
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1001A4574;
    v33[3] = &unk_100327350;
    v33[4] = v20;
    v33[5] = v19;
    [v21 setCompletionBlock:v33];
    v22 = *(*(a1 + 32) + 64);
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1001A45B0;
    v32[3] = &unk_10032AF68;
    v32[4] = v20;
    v32[5] = v19;
    [v22 setPaymentBatchBlock:v32];
    v23 = +[SSLogConfig sharedDaemonConfig];
    if (!v23)
    {
      v23 = +[SSLogConfig sharedConfig];
    }

    v24 = [v23 shouldLog];
    if ([v23 shouldLogToDisk])
    {
      v25 = v24 | 2;
    }

    else
    {
      v25 = v24;
    }

    if (!os_log_type_enabled([v23 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v25 &= 2u;
    }

    if (v25)
    {
      v26 = objc_opt_class();
      v27 = [*(a1 + 32) _clientIdentifier];
      v34 = 138543618;
      v35 = v26;
      v36 = 2112;
      v37 = v27;
      LODWORD(v31) = 22;
      v28 = _os_log_send_and_compose_impl();
      if (v28)
      {
        v29 = v28;
        [NSString stringWithCString:v28 encoding:4, &v34, v31];
        free(v29);
        SSFileLog();
      }
    }

    return [sub_1000D20B0() addOperation:*(*(a1 + 32) + 64)];
  }

  return result;
}

id sub_1001A4574(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  v3 = *(a1 + 40);

  return [v2 _finishRestoreOperation:v3];
}

id sub_1001A45B0(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) object];
  v5 = *(a1 + 40);

  return [v4 _mergeBatchResponse:a2 forRestoreOperation:v5];
}

id sub_1001A4660(uint64_t a1)
{
  v2 = +[NSThread beginManagedContextSession];
  v3 = objc_alloc_init(NSMutableOrderedSet);
  v4 = objc_alloc_init(NSMutableArray);
  v5 = [[NSArray alloc] initWithObjects:{@"downloadID", @"state", 0}];
  v27 = a1;
  v28 = v2;
  v6 = [*(a1 + 32) _copyDownloadsForDownloadIDs:*(a1 + 40) properties:v5 context:v2];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v30 objects:v40 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        v12 = [objc_msgSend(v11 "state")];
        if (v12 == 4 || v12 == 2)
        {
          [v11 setState:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", 5)}];
          [v3 addObject:{objc_msgSend(v11, "downloadID")}];
          [v4 addObject:{objc_msgSend(sub_1001FA210(), "changesetWithDownloadID:state:", objc_msgSend(v11, "downloadID"), 1)}];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v30 objects:v40 count:16];
    }

    while (v8);
  }

  if ([v3 count])
  {
    v14 = +[SSLogConfig sharedDaemonConfig];
    if (!v14)
    {
      v14 = +[SSLogConfig sharedConfig];
    }

    v15 = [v14 shouldLog];
    if ([v14 shouldLogToDisk])
    {
      v16 = v15 | 2;
    }

    else
    {
      v16 = v15;
    }

    if (os_log_type_enabled([v14 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v17 = v16;
    }

    else
    {
      v17 = v16 & 2;
    }

    if (v17)
    {
      v18 = objc_opt_class();
      v19 = [v3 count];
      v20 = [*(v27 + 32) _clientIdentifier];
      v34 = 138543874;
      v35 = v18;
      v36 = 2048;
      v37 = v19;
      v38 = 2112;
      v39 = v20;
      LODWORD(v26) = 32;
      v25 = &v34;
      v21 = _os_log_send_and_compose_impl();
      if (v21)
      {
        v22 = v21;
        v23 = [NSString stringWithCString:v21 encoding:4, &v34, v26];
        free(v22);
        v25 = v23;
        SSFileLog();
      }
    }

    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1001A49FC;
    v29[3] = &unk_100329E90;
    v29[4] = v3;
    [+[DownloadsDatabase downloadsDatabase](DownloadsDatabase downloadsDatabase];
  }

  if ([v4 count])
  {
    [*(v27 + 32) _sendDownloadChangesets:v4];
  }

  sub_1000CE00C(v28);
  return +[NSThread endManagedContextSession];
}

id sub_1001A4AFC(uint64_t a1)
{
  v2 = +[NSThread beginManagedContextSession];
  v3 = objc_alloc_init(NSMutableArray);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [v2 objectWithID:*(*(&v11 + 1) + 8 * i)];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  if ([v3 count])
  {
    [*(a1 + 40) _sendPaymentsUpdated:v3];
  }

  return +[NSThread endManagedContextSession];
}

id sub_1001A4CC0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (!v2)
  {
    *(*(a1 + 32) + 16) = objc_alloc_init(StoreKitClientIdentity);
    v2 = *(*(a1 + 32) + 16);
  }

  result = [v2 setValuesWithPaymentQueueClient:*(a1 + 40)];
  if (*(*(a1 + 32) + 24))
  {
    v4 = +[NSThread beginManagedContextSession];
    [objc_msgSend(v4 objectWithID:{*(*(a1 + 32) + 24)), "setValuesWithClientIdentity:", *(*(a1 + 32) + 16)}];
    sub_1000CE00C(v4);

    return +[NSThread endManagedContextSession];
  }

  return result;
}

void *sub_1001A4DEC(void *result)
{
  v1 = result;
  v2 = result[4];
  v3 = *(v2 + 8);
  if (v3 != result[5])
  {

    *(v1[4] + 8) = v1[5];
    result = [v1[4] _reloadClientProperties];
    v2 = v1[4];
    v3 = *(v2 + 8);
  }

  if (v3 && *(v2 + 24))
  {
    v4 = +[NSThread beginManagedContextSession];
    [objc_msgSend(v4 objectWithID:{*(v1[4] + 24)), "setValuesWithClientIdentity:", *(v1[4] + 16)}];
    sub_1000CE00C(v4);

    return +[NSThread endManagedContextSession];
  }

  return result;
}

id sub_1001A4F14(uint64_t a1)
{
  v2 = +[NSThread beginManagedContextSession];
  v32 = objc_alloc_init(NSMutableArray);
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [*(a1 + 32) _clientIdentifier];
  v31 = a1;
  v5 = [*(a1 + 32) _copyDownloadsForDownloadIDs:*(a1 + 40) properties:+[MicroPaymentDownload propertiesForDownloadEntities](MicroPaymentDownload context:{"propertiesForDownloadEntities"), v2}];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v35;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v35 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v34 + 1) + 8 * i);
        if ([objc_msgSend(v10 "state")] <= 2)
        {
          v11 = [[Download alloc] initWithMicroPaymentDownload:v10 clientID:v4];
          if (v11)
          {
            v12 = v11;
            [v10 setState:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", 5)}];
            v13 = v3;
            v14 = sub_1001FA210();
            v15 = [v10 downloadID];
            v16 = v14;
            v3 = v13;
            [v13 addObject:{objc_msgSend(v16, "changesetWithDownloadID:state:", v15, 1)}];
            [v32 addObject:v12];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v7);
  }

  if ([v32 count])
  {
    v17 = +[SSLogConfig sharedDaemonConfig];
    if (!v17)
    {
      v17 = +[SSLogConfig sharedConfig];
    }

    v18 = [v17 shouldLog];
    if ([v17 shouldLogToDisk])
    {
      v19 = v18 | 2;
    }

    else
    {
      v19 = v18;
    }

    if (os_log_type_enabled([v17 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v20 = v19;
    }

    else
    {
      v20 = v19 & 2;
    }

    if (v20)
    {
      v21 = objc_opt_class();
      v22 = [v32 count];
      v38 = 138543874;
      v39 = v21;
      v40 = 2048;
      v41 = v22;
      v42 = 2112;
      v43 = v4;
      LODWORD(v30) = 32;
      v29 = &v38;
      v23 = _os_log_send_and_compose_impl();
      if (v23)
      {
        v24 = v23;
        v25 = [NSString stringWithCString:v23 encoding:4, &v38, v30];
        free(v24);
        v29 = v25;
        SSFileLog();
      }
    }

    v26 = +[DownloadsDatabase downloadsDatabase];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1001A52C8;
    v33[3] = &unk_10032A460;
    v27 = *(v31 + 32);
    v33[4] = v32;
    v33[5] = v27;
    v33[6] = v4;
    [v26 modifyUsingTransactionBlock:v33];
  }

  if ([v3 count])
  {
    [*(v31 + 32) _sendDownloadChangesets:v3];
  }

  sub_1000CE00C(v2);
  return +[NSThread endManagedContextSession];
}

uint64_t sub_1001A52C8(uint64_t a1, void *a2)
{
  v3 = [a2 database];
  v29 = objc_alloc_init(NSMutableArray);
  v26 = a1;
  v27 = objc_alloc_init(NSMutableOrderedSet);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v30 objects:v40 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v31;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        v10 = [v9 databaseID];
        v11 = [[DownloadEntity alloc] initWithPersistentID:v10 inDatabase:v3];
        if (([(DownloadEntity *)v11 existsInDatabase]& 1) != 0)
        {
          v12 = [[NSNumber alloc] initWithLongLong:v10];
          [v27 addObject:v12];
          [a2 updateDownloadEntityWithIdentifier:v10 withDownload:v9];
        }

        else
        {
          [v29 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v30 objects:v40 count:16];
    }

    while (v6);
  }

  if ([v29 count])
  {
    v13 = +[SSLogConfig sharedDaemonConfig];
    if (!v13)
    {
      v13 = +[SSLogConfig sharedConfig];
    }

    v14 = [v13 shouldLog];
    if ([v13 shouldLogToDisk])
    {
      v15 = v14 | 2;
    }

    else
    {
      v15 = v14;
    }

    if (os_log_type_enabled([v13 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v16 = v15;
    }

    else
    {
      v16 = v15 & 2;
    }

    if (v16)
    {
      v17 = objc_opt_class();
      v18 = [v29 count];
      v19 = *(v26 + 48);
      v34 = 138543874;
      v35 = v17;
      v36 = 2048;
      v37 = v18;
      v38 = 2112;
      v39 = v19;
      LODWORD(v25) = 32;
      v24 = &v34;
      v20 = _os_log_send_and_compose_impl();
      if (v20)
      {
        v21 = v20;
        v22 = [NSString stringWithCString:v20 encoding:4, &v34, v25];
        free(v21);
        v24 = v22;
        SSFileLog();
      }
    }

    [a2 addDownloads:{v29, v24}];
  }

  if ([v27 count])
  {
    [a2 resetDownloadsWithIdentifiers:v27];
  }

  return 1;
}

id sub_1001A5638(uint64_t a1)
{
  v2 = [+[NSThread beginManagedContextSession](NSThread "beginManagedContextSession")];
  v3 = [objc_msgSend(v2 "state")];
  if (v3 > 1)
  {
    if (v3 == 3)
    {
      v12 = +[SSLogConfig sharedDaemonConfig];
      if (!v12)
      {
        v12 = +[SSLogConfig sharedConfig];
      }

      v13 = [v12 shouldLog];
      if ([v12 shouldLogToDisk])
      {
        v14 = v13 | 2;
      }

      else
      {
        v14 = v13;
      }

      if (!os_log_type_enabled([v12 OSLogObject], OS_LOG_TYPE_INFO))
      {
        v14 &= 2u;
      }

      if (v14)
      {
        v26 = 138543618;
        v27 = objc_opt_class();
        v28 = 2112;
        v29 = v2;
        LODWORD(v25) = 22;
        v24 = &v26;
        v15 = _os_log_send_and_compose_impl();
        if (v15)
        {
          v16 = v15;
          v17 = [NSString stringWithCString:v15 encoding:4, &v26, v25];
          free(v16);
          v24 = v17;
          SSFileLog();
        }
      }

      [*(a1 + 40) _sendFinishRequestForPayment:v2 withCompletionBlock:{*(a1 + 48), v24}];
    }
  }

  else
  {
    v4 = [SSPrivacyController shouldDisplayPrivacyLinkWithIdentifier:SSPrivacyIdentifierAppStore];
    v5 = +[SSLogConfig sharedDaemonConfig];
    v6 = v5;
    if (v4)
    {
      if (!v5)
      {
        v6 = +[SSLogConfig sharedConfig];
      }

      v7 = [v6 shouldLog];
      if ([v6 shouldLogToDisk])
      {
        v8 = v7 | 2;
      }

      else
      {
        v8 = v7;
      }

      if (!os_log_type_enabled([v6 OSLogObject], OS_LOG_TYPE_INFO))
      {
        v8 &= 2u;
      }

      if (v8)
      {
        v26 = 138543618;
        v27 = objc_opt_class();
        v28 = 2112;
        v29 = v2;
        LODWORD(v25) = 22;
        v24 = &v26;
        v9 = _os_log_send_and_compose_impl();
        if (v9)
        {
          v10 = v9;
          v11 = [NSString stringWithCString:v9 encoding:4, &v26, v25];
          free(v10);
          v24 = v11;
          SSFileLog();
        }
      }

      [*(a1 + 40) _showPrivacyPromptForPayment:v2 withCompletionBlock:{*(a1 + 48), v24}];
    }

    else
    {
      if (!v5)
      {
        v6 = +[SSLogConfig sharedConfig];
      }

      v18 = [v6 shouldLog];
      if ([v6 shouldLogToDisk])
      {
        v19 = v18 | 2;
      }

      else
      {
        v19 = v18;
      }

      if (!os_log_type_enabled([v6 OSLogObject], OS_LOG_TYPE_INFO))
      {
        v19 &= 2u;
      }

      if (v19)
      {
        v26 = 138543618;
        v27 = objc_opt_class();
        v28 = 2112;
        v29 = v2;
        LODWORD(v25) = 22;
        v24 = &v26;
        v20 = _os_log_send_and_compose_impl();
        if (v20)
        {
          v21 = v20;
          v22 = [NSString stringWithCString:v20 encoding:4, &v26, v25];
          free(v21);
          v24 = v22;
          SSFileLog();
        }
      }

      [*(a1 + 40) _sendBuyRequestForPayment:v2 withCompletionBlock:{*(a1 + 48), v24}];
    }
  }

  return +[NSThread endManagedContextSession];
}

id sub_1001A5A80(uint64_t a1)
{
  v2 = +[NSThread beginManagedContextSession];
  v3 = [v2 objectWithID:*(a1 + 32)];
  if (v3)
  {
    v4 = [objc_msgSend(v3 "client")];
    [*(a1 + 48) _cancelDownloadsForDownloadIDs:{objc_msgSend(v4, "removedDownloadIDs")}];
    [*(a1 + 48) _sendMergeResults:v4];
  }

  if ([*(a1 + 40) shouldTriggerQueueCheck])
  {
    [*(a1 + 48) _refreshFromServerWithReason:2 accountIdentifier:0];
  }

  sub_1000CE00C(v2);

  return +[NSThread endManagedContextSession];
}

void sub_1001A5D64(uint64_t a1)
{
  v2 = [*(a1 + 32) copyProductsResponse];
  v3 = [*(a1 + 32) success];
  v4 = +[SSLogConfig sharedDaemonConfig];
  v5 = v4;
  if (v3)
  {
    if (!v4)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = v6 | 2;
    }

    else
    {
      v7 = v6;
    }

    if (!os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v8 = objc_opt_class();
      v9 = *(a1 + 48);
      v34 = 138543874;
      v35 = v8;
      v36 = 2114;
      v37 = v9;
      v38 = 2114;
      v39 = [v2 products];
      LODWORD(v28) = 32;
      v27 = &v34;
      goto LABEL_20;
    }
  }

  else
  {
    if (!v4)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    v10 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v11 = v10 | 2;
    }

    else
    {
      v11 = v10;
    }

    if (!os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_ERROR))
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v12 = objc_opt_class();
      v13 = *(a1 + 48);
      v14 = [*(a1 + 32) error];
      v34 = 138543874;
      v35 = v12;
      v36 = 2114;
      v37 = v13;
      v38 = 2114;
      v39 = v14;
      LODWORD(v28) = 32;
      v27 = &v34;
LABEL_20:
      v15 = _os_log_send_and_compose_impl();
      if (v15)
      {
        v16 = v15;
        v17 = [NSString stringWithCString:v15 encoding:4, &v34, v28];
        free(v16);
        v27 = v17;
        SSFileLog();
      }
    }
  }

  v18 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v18, "0", 20007);
  v19 = xpc_array_create(0, 0);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v20 = [v2 products];
  v21 = [v20 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v30;
    do
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v30 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [*(*(&v29 + 1) + 8 * i) copyXPCEncoding];
        if (v25)
        {
          v26 = v25;
          xpc_array_append_value(v19, v25);
          xpc_release(v26);
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v22);
  }

  xpc_dictionary_set_value(v18, "1", v19);
  xpc_release(v19);
  [objc_msgSend(*(*(a1 + 40) + 8) "outputConnection")];
  xpc_release(v18);
}

void sub_1001A61C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1001A61E0(uint64_t a1)
{
  result = *(*(a1 + 32) + 8);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void sub_1001A62C8(uint64_t a1)
{
  objc_opt_class();
  v2 = SSXPCDictionaryCopyCFObjectWithClass();
  if ([v2 length])
  {
    v3 = &CFDictionaryGetValue_ptr;
    v4 = +[NSThread beginManagedContextSession];
    v5 = [objc_msgSend(v4 objectWithID:{*(*(a1 + 40) + 24)), "payments"}];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v41 objects:v51 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v42;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v42 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v41 + 1) + 8 * v9);
        if ([objc_msgSend(v10 "matchingIdentifier")])
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v41 objects:v51 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v10 = 0;
    }

    v11 = [[NSArray alloc] initWithObjects:{v2, 0}];
    if (v10)
    {
      v12 = [[NSArray alloc] initWithObjects:{v10, 0}];
      [*(a1 + 40) _cancelDownloadsForPayments:v12];

      v13 = [objc_msgSend(v10 "state")];
      if (v13 <= 8)
      {
        v14 = v13;
        if (((1 << v13) & 0xC4) != 0)
        {
          v15 = +[SSLogConfig sharedDaemonConfig];
          if (!v15)
          {
            v15 = +[SSLogConfig sharedConfig];
          }

          v16 = [v15 shouldLog];
          if ([v15 shouldLogToDisk])
          {
            v17 = v16 | 2;
          }

          else
          {
            v17 = v16;
          }

          if (!os_log_type_enabled([v15 OSLogObject], OS_LOG_TYPE_INFO))
          {
            v17 &= 2u;
          }

          if (v17)
          {
            v18 = objc_opt_class();
            v45 = 138543618;
            v46 = v18;
            v47 = 2112;
            v48 = v2;
            LODWORD(v40) = 22;
            v39 = &v45;
            v19 = _os_log_send_and_compose_impl();
            if (v19)
            {
              v20 = v19;
              v21 = [NSString stringWithCString:v19 encoding:4, &v45, v40];
              free(v20);
              v39 = v21;
              SSFileLog();
            }
          }

          [v10 setState:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", 3, v39)}];
          if (!sub_1000CE00C(v4))
          {
            goto LABEL_59;
          }

          goto LABEL_47;
        }

        if (((1 << v13) & 0x120) != 0)
        {
          v25 = +[SSLogConfig sharedDaemonConfig];
          if (!v25)
          {
            v25 = +[SSLogConfig sharedConfig];
          }

          v26 = [v25 shouldLog];
          if ([v25 shouldLogToDisk])
          {
            v27 = v26 | 2;
          }

          else
          {
            v27 = v26;
          }

          if (!os_log_type_enabled([v25 OSLogObject], OS_LOG_TYPE_INFO))
          {
            v27 &= 2u;
          }

          if (v27)
          {
            v28 = objc_opt_class();
            v45 = 138543874;
            v46 = v28;
            v47 = 2048;
            v48 = v14;
            v49 = 2112;
            v50 = v2;
            LODWORD(v40) = 32;
            v39 = &v45;
            v29 = _os_log_send_and_compose_impl();
            if (v29)
            {
              v30 = v29;
              v31 = [NSString stringWithCString:v29 encoding:4, &v45, v40];
              free(v30);
              v39 = v31;
              SSFileLog();
            }
          }

          [v4 deleteObject:{v10, v39}];
          v3 = &CFDictionaryGetValue_ptr;
          if (!sub_1000CE00C(v4))
          {
            goto LABEL_59;
          }

LABEL_47:
          [*(a1 + 40) _sendPaymentsRemoved:v11];
          *(*(*(a1 + 48) + 8) + 24) = 1;
LABEL_59:

          [v3[181] endManagedContextSession];
          goto LABEL_60;
        }
      }

      v32 = +[SSLogConfig sharedDaemonConfig];
      if (!v32)
      {
        v32 = +[SSLogConfig sharedConfig];
      }

      v33 = [v32 shouldLog];
      if ([v32 shouldLogToDisk])
      {
        v34 = v33 | 2;
      }

      else
      {
        v34 = v33;
      }

      if (!os_log_type_enabled([v32 OSLogObject], OS_LOG_TYPE_INFO))
      {
        v34 &= 2u;
      }

      if (!v34)
      {
LABEL_58:
        [*(a1 + 40) _sendPaymentsRemoved:{v11, v39}];
        goto LABEL_59;
      }
    }

    else
    {
      v22 = +[SSLogConfig sharedDaemonConfig];
      if (!v22)
      {
        v22 = +[SSLogConfig sharedConfig];
      }

      v23 = [v22 shouldLog];
      if ([v22 shouldLogToDisk])
      {
        v24 = v23 | 2;
      }

      else
      {
        v24 = v23;
      }

      if (!os_log_type_enabled([v22 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v24 &= 2u;
      }

      if (!v24)
      {
        goto LABEL_58;
      }
    }

    v35 = objc_opt_class();
    v45 = 138543618;
    v46 = v35;
    v47 = 2112;
    v48 = v2;
    LODWORD(v40) = 22;
    v39 = &v45;
    v36 = _os_log_send_and_compose_impl();
    if (v36)
    {
      v37 = v36;
      v38 = [NSString stringWithCString:v36 encoding:4, &v45, v40];
      free(v37);
      v39 = v38;
      SSFileLog();
    }

    goto LABEL_58;
  }

LABEL_60:
}

void sub_1001A6FB8(uint64_t a1)
{
  v2 = +[NSThread beginManagedContextSession];
  v3 = [v2 objectWithID:*(a1 + 32)];
  v4 = [*(a1 + 40) success];
  v5 = +[SSLogConfig sharedDaemonConfig];
  v6 = v5;
  if (v4)
  {
    if (!v5)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = v7 | 2;
    }

    else
    {
      v8 = v7;
    }

    if (!os_log_type_enabled([v6 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v22 = 138543618;
      v23 = objc_opt_class();
      v24 = 2112;
      v25 = v3;
      LODWORD(v21) = 22;
      v20 = &v22;
      v9 = _os_log_send_and_compose_impl();
      if (v9)
      {
        v10 = v9;
        v11 = [NSString stringWithCString:v9 encoding:4, &v22, v21];
        free(v10);
        v20 = v11;
        SSFileLog();
      }
    }

    v12 = [objc_msgSend(v3 client];
    [*(a1 + 48) _cancelDownloadsForDownloadIDs:{objc_msgSend(v12, "removedDownloadIDs")}];
    [*(a1 + 48) _sendMergeResults:v12];
  }

  else
  {
    if (!v5)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v13 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v14 = v13 | 2;
    }

    else
    {
      v14 = v13;
    }

    if (!os_log_type_enabled([v6 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v14 &= 2u;
    }

    if (v14)
    {
      v15 = objc_opt_class();
      v16 = [*(a1 + 40) error];
      v22 = 138543874;
      v23 = v15;
      v24 = 2114;
      v25 = v16;
      v26 = 2112;
      v27 = v3;
      LODWORD(v21) = 32;
      v20 = &v22;
      v17 = _os_log_send_and_compose_impl();
      if (v17)
      {
        v18 = v17;
        v19 = [NSString stringWithCString:v17 encoding:4, &v22, v21];
        free(v18);
        v20 = v19;
        SSFileLog();
      }
    }

    [v3 setFailedWithError:{objc_msgSend(*(a1 + 40), "error", v20)}];
    [*(a1 + 48) _sendPaymentsUpdated:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", v3, 0)}];
  }

  if ([objc_msgSend(*(a1 + 40) "response")])
  {
    [*(a1 + 48) _refreshFromServerWithReason:2 accountIdentifier:0];
  }

  sub_1000CE00C(v2);
  +[NSThread endManagedContextSession];
  sub_1001A7334(*(a1 + 56), [*(a1 + 40) success], objc_msgSend(*(a1 + 40), "error"));
}

void sub_1001A7334(uint64_t a1, char a2, uint64_t a3)
{
  if (a1)
  {
    if (qword_100384038 != -1)
    {
      sub_100272538();
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001A9EE0;
    block[3] = &unk_10032B078;
    v7 = a2;
    block[4] = a3;
    block[5] = a1;
    dispatch_async(qword_100384030, block);
  }
}

void sub_1001A7458(uint64_t a1)
{
  v2 = +[NSThread beginManagedContextSession];
  v3 = [v2 objectWithID:*(a1 + 32)];
  v4 = [*(a1 + 40) success];
  v5 = +[SSLogConfig sharedDaemonConfig];
  v6 = v5;
  if (v4)
  {
    if (!v5)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = v7 | 2;
    }

    else
    {
      v8 = v7;
    }

    if (!os_log_type_enabled([v6 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v20 = 138543618;
      v21 = objc_opt_class();
      v22 = 2112;
      v23 = v3;
      LODWORD(v19) = 22;
      v18 = &v20;
      v9 = _os_log_send_and_compose_impl();
      if (v9)
      {
        v10 = v9;
        v11 = [NSString stringWithCString:v9 encoding:4, &v20, v19];
        free(v10);
        v18 = v11;
        SSFileLog();
      }
    }

    [v2 deleteObject:{v3, v18}];
  }

  else
  {
    if (!v5)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v12 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v13 = v12 | 2;
    }

    else
    {
      v13 = v12;
    }

    if (!os_log_type_enabled([v6 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v13 &= 2u;
    }

    if (v13)
    {
      v20 = 138543618;
      v21 = objc_opt_class();
      v22 = 2112;
      v23 = v3;
      LODWORD(v19) = 22;
      v18 = &v20;
      v14 = _os_log_send_and_compose_impl();
      if (v14)
      {
        v15 = v14;
        v16 = [NSString stringWithCString:v14 encoding:4, &v20, v19];
        free(v15);
        v18 = v16;
        SSFileLog();
      }
    }

    v17 = *(*(a1 + 48) + 80);
    if (!v17)
    {
      *(*(a1 + 48) + 80) = objc_alloc_init(NSMutableSet);
      v17 = *(*(a1 + 48) + 80);
    }

    [v17 addObject:{*(a1 + 32), v18}];
  }

  sub_1000CE00C(v2);
  +[NSThread endManagedContextSession];
  sub_1001A7334(*(a1 + 56), [*(a1 + 40) success], objc_msgSend(*(a1 + 40), "error"));
}

id sub_1001A79B0(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v1 = +[Daemon daemon];

  return [v1 releaseKeepAliveAssertion:@"com.apple.itunesstored.StoreKitClient"];
}

void sub_1001A7A64(uint64_t a1)
{
  [ISLoadURLBagOperation incrementNetworkCounterForBagContext:[SSURLBagContext contextWithBagType:0]];
  [*(*(a1 + 32) + 56) setCompletionBlock:0];

  *(*(a1 + 32) + 56) = 0;
  v2 = +[NSThread beginManagedContextSession];
  v3 = v2;
  if (*(*(a1 + 32) + 24))
  {
    v4 = [v2 objectWithID:?];
  }

  else
  {
    v4 = 0;
  }

  if (([*(a1 + 40) success] & 1) != 0 || (objc_msgSend(*(a1 + 40), "error"), (ISErrorIsEqual() & 1) == 0))
  {
    [v4 setLastQueueCheckDate:{+[NSDate date](NSDate, "date")}];
  }

  v5 = [*(a1 + 40) success];
  v6 = +[SSLogConfig sharedDaemonConfig];
  v7 = v6;
  if (v5)
  {
    if (!v6)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = v8 | 2;
    }

    else
    {
      v9 = v8;
    }

    if (!os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v10 = objc_opt_class();
      v11 = [*(a1 + 32) _clientIdentifier];
      v32 = 138543618;
      v33 = v10;
      v34 = 2112;
      v35 = v11;
      LODWORD(v30) = 22;
      v29 = &v32;
      v12 = _os_log_send_and_compose_impl();
      if (v12)
      {
        v13 = v12;
        v14 = [NSString stringWithCString:v12 encoding:4, &v32, v30];
        free(v13);
        v29 = v14;
        SSFileLog();
      }
    }

    [*(a1 + 32) _setClientState:{2, v29}];
    v15 = [*(a1 + 40) paymentsResponse];
    if (v15)
    {
      v16 = v15;
      v17 = [*(a1 + 40) reason];
      v18 = [v4 mergeResponse:v16 withOptions:3];
      if ([v18 didChange])
      {
        [*(a1 + 32) _cancelDownloadsForDownloadIDs:{objc_msgSend(v18, "removedDownloadIDs")}];
LABEL_34:
        [*(*(a1 + 32) + 8) sendCoalescedMessageWithIdentifier:20001];
        goto LABEL_35;
      }

      if (v17 == 3 || !v17)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    if (!v6)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v19 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v20 = v19 | 2;
    }

    else
    {
      v20 = v19;
    }

    if (!os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v20 &= 2u;
    }

    if (v20)
    {
      v21 = objc_opt_class();
      v22 = [*(a1 + 32) _clientIdentifier];
      v23 = [*(a1 + 40) error];
      v32 = 138543874;
      v33 = v21;
      v34 = 2112;
      v35 = v22;
      v36 = 2114;
      v37 = v23;
      LODWORD(v30) = 32;
      v29 = &v32;
      v24 = _os_log_send_and_compose_impl();
      if (v24)
      {
        v25 = v24;
        v26 = [NSString stringWithCString:v24 encoding:4, &v32, v30];
        free(v25);
        v29 = v26;
        SSFileLog();
      }
    }

    [*(a1 + 32) _setClientState:{3, v29}];
  }

LABEL_35:
  [ISLoadURLBagOperation decrementNetworkCounterForBagContext:[SSURLBagContext contextWithBagType:0]];
  sub_1000CE00C(v3);
  +[NSThread endManagedContextSession];
  v27 = *(a1 + 32);
  v28 = *(v27 + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A7ED4;
  block[3] = &unk_100327378;
  block[4] = v27;
  dispatch_async(v28, block);
}

id sub_1001A7ED4(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  v3 = *(a1 + 32);

  return [(NSNotificationCenter *)v2 postNotificationName:@"StoreKitClientRefreshDidFinishNotification" object:v3];
}

id sub_1001A7F88(uint64_t a1)
{
  [*(*(a1 + 32) + 64) setCompletionBlock:0];
  [*(*(a1 + 32) + 64) setPaymentBatchBlock:0];

  *(*(a1 + 32) + 64) = 0;
  if (![*(a1 + 40) success] || (objc_msgSend(*(a1 + 40), "isPartialFailure") & 1) != 0)
  {
    v2 = [*(a1 + 40) error];
    if (!v2)
    {
      v2 = SSError();
    }

    v3 = +[SSLogConfig sharedDaemonConfig];
    if (!v3)
    {
      v3 = +[SSLogConfig sharedConfig];
    }

    v4 = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      v5 = v4 | 2;
    }

    else
    {
      v5 = v4;
    }

    if (!os_log_type_enabled([v3 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v5 &= 2u;
    }

    if (!v5)
    {
      return [*(a1 + 32) _sendRestoreCompletedWithError:{v2, v17}];
    }

    v6 = objc_opt_class();
    v7 = [*(a1 + 32) _clientIdentifier];
    v19 = 138543874;
    v20 = v6;
    v21 = 2112;
    v22 = v7;
    v23 = 2114;
    v24 = v2;
    LODWORD(v18) = 32;
    v17 = &v19;
    v8 = _os_log_send_and_compose_impl();
    if (!v8)
    {
      return [*(a1 + 32) _sendRestoreCompletedWithError:{v2, v17}];
    }

LABEL_24:
    v14 = v8;
    v15 = [NSString stringWithCString:v8 encoding:4, &v19, v18];
    free(v14);
    v17 = v15;
    SSFileLog();
    return [*(a1 + 32) _sendRestoreCompletedWithError:{v2, v17}];
  }

  v9 = +[SSLogConfig sharedDaemonConfig];
  if (!v9)
  {
    v9 = +[SSLogConfig sharedConfig];
  }

  v10 = [v9 shouldLog];
  if ([v9 shouldLogToDisk])
  {
    v11 = v10 | 2;
  }

  else
  {
    v11 = v10;
  }

  if (!os_log_type_enabled([v9 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v11 &= 2u;
  }

  if (!v11)
  {
    v2 = 0;
    return [*(a1 + 32) _sendRestoreCompletedWithError:{v2, v17}];
  }

  v12 = objc_opt_class();
  v13 = [*(a1 + 32) _clientIdentifier];
  v19 = 138543618;
  v20 = v12;
  v21 = 2112;
  v22 = v13;
  LODWORD(v18) = 22;
  v17 = &v19;
  v8 = _os_log_send_and_compose_impl();
  v2 = 0;
  if (v8)
  {
    goto LABEL_24;
  }

  return [*(a1 + 32) _sendRestoreCompletedWithError:{v2, v17}];
}

void *sub_1001A83CC(void *result)
{
  if (*(result[4] + 24))
  {
    v1 = result;
    v2 = +[SSLogConfig sharedDaemonConfig];
    if (!v2)
    {
      v2 = +[SSLogConfig sharedConfig];
    }

    v3 = [v2 shouldLog];
    if ([v2 shouldLogToDisk])
    {
      v4 = v3 | 2;
    }

    else
    {
      v4 = v3;
    }

    if (!os_log_type_enabled([v2 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v4 &= 2u;
    }

    if (v4)
    {
      v5 = objc_opt_class();
      v6 = [v1[4] _clientIdentifier];
      v13 = 138543618;
      v14 = v5;
      v15 = 2112;
      v16 = v6;
      LODWORD(v12) = 22;
      v11 = &v13;
      v7 = _os_log_send_and_compose_impl();
      if (v7)
      {
        v8 = v7;
        v9 = [NSString stringWithCString:v7 encoding:4, &v13, v12];
        free(v8);
        v11 = v9;
        SSFileLog();
      }
    }

    v10 = [objc_msgSend(+[NSThread beginManagedContextSession](NSThread beginManagedContextSession];
    [v1[4] _cancelDownloadsForDownloadIDs:{objc_msgSend(v10, "removedDownloadIDs")}];
    [v1[4] _sendMergeResults:v10];
    return +[NSThread endManagedContextSession];
  }

  return result;
}

id sub_1001A8B0C(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  v3 = *(a1 + 40);

  return [v2 _finishLoadQueueOperation:v3];
}

id sub_1001A8E2C(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) object];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001A8ED4;
  v7[3] = &unk_10032AFE0;
  v10 = (a2 - 1) < 2;
  v5 = *(a1 + 48);
  v8 = *(a1 + 32);
  v9 = v5;
  [v4 _dispatchAsync:v7];
  return [*(a1 + 48) setCompletion:0];
}

id sub_1001A8ED4(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  v3 = +[NSThread beginManagedContextSession];
  v4 = [v3 objectWithID:*(a1 + 40)];
  v5 = *(a1 + 64);
  v6 = +[SSLogConfig sharedDaemonConfig];
  v7 = v6;
  if (v5 == 1)
  {
    if (!v6)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = v8 | 2;
    }

    else
    {
      v9 = v8;
    }

    if (!os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v23 = 138543618;
      v24 = objc_opt_class();
      v25 = 2112;
      v26 = v4;
      LODWORD(v22) = 22;
      v21 = &v23;
      v10 = _os_log_send_and_compose_impl();
      if (v10)
      {
        v11 = v10;
        v12 = [NSString stringWithCString:v10 encoding:4, &v23, v22];
        free(v11);
        v21 = v12;
        SSFileLog();
      }
    }

    [v2 _sendBuyRequestForPayment:v4 withCompletionBlock:{*(a1 + 56), v21}];
  }

  else
  {
    if (!v6)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v13 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v14 = v13 | 2;
    }

    else
    {
      v14 = v13;
    }

    if (!os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v14 &= 2u;
    }

    if (v14)
    {
      v15 = objc_opt_class();
      v16 = [*(a1 + 48) error];
      v23 = 138543874;
      v24 = v15;
      v25 = 2114;
      v26 = v16;
      v27 = 2112;
      v28 = v4;
      LODWORD(v22) = 32;
      v21 = &v23;
      v17 = _os_log_send_and_compose_impl();
      if (v17)
      {
        v18 = v17;
        v19 = [NSString stringWithCString:v17 encoding:4, &v23, v22];
        free(v18);
        v21 = v19;
        SSFileLog();
      }
    }

    [v4 setFailedWithError:{objc_msgSend(*(a1 + 48), "error", v21)}];
    sub_1000CE00C(v3);
    [v2 _sendPaymentsUpdated:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", v4, 0)}];
    sub_1001A7334(*(a1 + 56), [*(a1 + 48) success], objc_msgSend(*(a1 + 48), "error"));
  }

  return +[NSThread endManagedContextSession];
}

id sub_1001A942C(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "object")];
  v2 = *(a1 + 40);

  return [v2 setCompletionBlock:0];
}

id sub_1001A963C(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "object")];
  v2 = *(a1 + 40);

  return [v2 setCompletionBlock:0];
}

id sub_1001A9D1C(uint64_t a1)
{
  [objc_msgSend(+[NSThread beginManagedContextSession](NSThread "beginManagedContextSession")];
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "0", 20008);
  SSXPCDictionarySetCFObject();
  SSXPCDictionarySetCFObject();
  v3 = dispatch_semaphore_create(0);
  v4 = [*(*(a1 + 48) + 8) outputConnection];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001A9E60;
  v7[3] = &unk_10032B030;
  v5 = *(a1 + 56);
  v7[4] = v3;
  v7[5] = v5;
  [v4 sendMessage:v2 withReply:v7];
  if (dispatch_semaphore_wait(v3, 0x3B9ACA00uLL) >= 1)
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  return +[NSThread endManagedContextSession];
}

intptr_t sub_1001A9E60(uint64_t a1, xpc_object_t xdict)
{
  *(*(*(a1 + 40) + 8) + 24) = xpc_dictionary_get_BOOL(xdict, "0");
  v3 = *(a1 + 32);

  return dispatch_semaphore_signal(v3);
}

void sub_1001AAB80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

id sub_1001AABC8(uint64_t a1, void *a2, void *a3)
{
  if ([a2 isEqualToString:SSLookupParameterItemIdentifiers])
  {
    v6 = *(a1 + 32);
    v7 = [a3 componentsSeparatedByString:{@", "}];

    return [v6 setItemIdentifiers:v7];
  }

  else
  {
    v9 = [a2 isEqualToString:SSLookupParameterCaller];
    v10 = *(a1 + 32);
    if (v9)
    {

      return [v10 _setCaller:a3];
    }

    else
    {

      return [v10 setValue:a3 forRequestParameter:a2];
    }
  }
}

id sub_1001AACA4(uint64_t a1, uint64_t a2, void *a3)
{
  [*(a1 + 32) _setLookupResponse:a2];
  result = a3;
  *(*(*(a1 + 40) + 8) + 40) = result;
  *(*(*(a1 + 48) + 8) + 24) = a2 != 0;
  return result;
}

void sub_1001AB048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id sub_1001AB090(uint64_t a1, uint64_t a2, void *a3)
{
  [*(a1 + 32) _setLookupResponse:a2];
  result = a3;
  *(*(*(a1 + 40) + 8) + 40) = result;
  *(*(*(a1 + 48) + 8) + 24) = a2 != 0;
  return result;
}

void sub_1001ABC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001ABC3C(uint64_t a1, uint64_t a2, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_array)
  {
    v6 = [NSString stringWithUTF8String:a2];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001ABD04;
    v8[3] = &unk_10032B108;
    v10 = *(a1 + 48);
    v8[4] = v6;
    v9 = *(a1 + 32);
    xpc_array_apply(object, v8);
  }

  return 1;
}

uint64_t sub_1001ABD04(uint64_t a1, int a2, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_dictionary)
  {
    v5 = [[DownloadAsset alloc] initWithClientXPCAsset:object];
    if (v5)
    {
      v6 = v5;
      v7 = [(DownloadAsset *)v5 valueForProperty:@"url"];
      if (!v7 || [(NSString *)[[NSURL URLWithString:?]] caseInsensitiveCompare:@"file"]== NSOrderedSame)
      {
        ++*(*(*(a1 + 48) + 8) + 24);
      }

      v8 = *(*(a1 + 56) + 8);
      if (*(v8 + 24))
      {
        v9 = 1;
      }

      else
      {
        v9 = [-[DownloadAsset valueForProperty:](v6 valueForProperty:{@"is_external", "BOOLValue"}];
        v8 = *(*(a1 + 56) + 8);
      }

      *(v8 + 24) = v9;
      [(DownloadAsset *)v6 setValue:*(a1 + 32) forProperty:@"asset_type"];
      -[DownloadAsset setValue:forProperty:](v6, "setValue:forProperty:", +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 40) count]), @"asset_order");
      [*(a1 + 40) addObject:v6];
    }
  }

  return 1;
}

void sub_1001AC9B4(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) sizeLimitForNetworkType:a2];
  v5 = objc_alloc_init(SSDownloadPolicyRule);
  [v5 addNetworkType:a2];
  [v5 setDownloadSizeLimit:v4];
  [*(*(a1 + 40) + 16) unionPolicyRule:v5];
}

BOOL sub_1001AD6E0(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  if ([v2 isEqualToString:AVFoundationErrorDomain])
  {
    v3 = [v1 code] == -11903;
    goto LABEL_3;
  }

  if ([v2 isEqualToString:SSErrorDomain])
  {
    v5 = [v1 code];
    v3 = 1;
    if (v5 != 8 && v5 != 133)
    {
LABEL_7:
      v3 = sub_1001AD7F0(v1);
    }
  }

  else
  {
    if (![v2 isEqualToString:NSURLErrorDomain])
    {
      v3 = 0;
      goto LABEL_3;
    }

    v6 = [v1 code];
    v3 = 1;
    if ((v6 + 1011 > 0xA || ((1 << (v6 - 13)) & 0x589) == 0) && v6 != -1102 && v6 != -1100)
    {
      goto LABEL_7;
    }
  }

LABEL_3:

  return v3;
}

BOOL sub_1001AD7F0(void *a1)
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKey:SSErrorHTTPStatusCodeKey];

  if (v2)
  {
    v3 = [v2 integerValue] > 399;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1001AD858(void *a1)
{
  v1 = a1;
  if (ISErrorIsEqual())
  {
    IsEqual = 1;
  }

  else
  {
    IsEqual = ISErrorIsEqual();
  }

  return IsEqual;
}

uint64_t sub_1001AD8BC(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  v3 = [v2 isEqualToString:AVFoundationErrorDomain];

  if (v3)
  {
    v4 = [v1 code];
    v3 = 1;
    if (v4 != -11903 && v4 != -11900)
    {
      v5 = [v1 userInfo];
      v6 = [v5 objectForKey:NSUnderlyingErrorKey];

      if ([v6 code] == -12540)
      {
        v7 = [v6 domain];
        v3 = [v7 isEqualToString:NSOSStatusErrorDomain];
      }

      else
      {
        v3 = 0;
      }
    }
  }

  return v3;
}

void sub_1001B211C(uint64_t a1, void *a2)
{
  v3 = [a2 info];
  v4 = [v3 objectForSetting:1];

  *(*(*(a1 + 40) + 8) + 24) = [v4 BOOLValue];
  v5 = +[SSLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v5 OSLogObject];
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v7 &= 2u;
  }

  if (!v7)
  {
    goto LABEL_11;
  }

  v9 = objc_opt_class();
  v10 = *(*(*(a1 + 40) + 8) + 24);
  v11 = v9;
  [NSNumber numberWithBool:v10];
  v14 = 138543618;
  v15 = v9;
  v17 = v16 = 2114;
  LODWORD(v13) = 22;
  v12 = _os_log_send_and_compose_impl();

  if (v12)
  {
    v8 = [NSString stringWithCString:v12 encoding:4, &v14, v13];
    free(v12);
    SSFileLog();
LABEL_11:
  }

  dispatch_semaphore_signal(*(*(a1 + 32) + 112));
}

uint64_t sub_1001B5318(uint64_t a1, uint64_t a2)
{
  v2 = [NSString stringWithFormat:@"%s", a2];
  v3 = [v2 hasSuffix:@".app/Info.plist"];

  return v3 ^ 1;
}

void sub_1001B5374(uint64_t a1, uint64_t a2)
{
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_11;
  }

  BOMCopierUserData();
  *v10 = 138412546;
  *&v10[4] = objc_opt_class();
  *&v10[12] = 2080;
  *&v10[14] = a2;
  v7 = *&v10[4];
  LODWORD(v9) = 22;
  v8 = _os_log_send_and_compose_impl();

  if (v8)
  {
    v6 = [NSString stringWithCString:v8 encoding:4, v10, v9, *v10, *&v10[16]];
    free(v8);
    SSFileLog();
LABEL_11:
  }
}

void sub_1001B5508(uint64_t a1, uint64_t a2, int a3)
{
  v5 = +[SSLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v5 OSLogObject];
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v7 &= 2u;
  }

  if (v7)
  {
    BOMCopierUserData();
    *v13 = 138412802;
    *&v13[4] = objc_opt_class();
    *&v13[12] = 1024;
    *&v13[14] = a3;
    *&v13[18] = 2080;
    *&v13[20] = a2;
    v9 = *&v13[4];
    LODWORD(v12) = 28;
    v10 = _os_log_send_and_compose_impl();

    if (v10)
    {
      v11 = [NSString stringWithCString:v10 encoding:4, v13, v12, *v13, *&v13[16]];
      free(v10);
      SSFileLog();
    }
  }

  else
  {
  }
}

uint64_t sub_1001B56B4(uint64_t a1, uint64_t a2)
{
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_11;
  }

  BOMCopierUserData();
  *v11 = 138412546;
  *&v11[4] = objc_opt_class();
  *&v11[12] = 2080;
  *&v11[14] = a2;
  v7 = *&v11[4];
  LODWORD(v10) = 22;
  v8 = _os_log_send_and_compose_impl();

  if (v8)
  {
    v6 = [NSString stringWithCString:v8 encoding:4, v11, v10, *v11, *&v11[16]];
    free(v8);
    SSFileLog();
LABEL_11:
  }

  return 0;
}

uint64_t sub_1001B584C(uint64_t a1, uint64_t a2, int a3)
{
  v5 = +[SSLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v5 OSLogObject];
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v7 &= 2u;
  }

  if (v7)
  {
    BOMCopierUserData();
    *v14 = 138412802;
    *&v14[4] = objc_opt_class();
    *&v14[12] = 1024;
    *&v14[14] = a3;
    *&v14[18] = 2080;
    *&v14[20] = a2;
    v9 = *&v14[4];
    LODWORD(v13) = 28;
    v10 = _os_log_send_and_compose_impl();

    if (v10)
    {
      v11 = [NSString stringWithCString:v10 encoding:4, v14, v13, *v14, *&v14[16]];
      free(v10);
      SSFileLog();
    }
  }

  else
  {
  }

  return 2;
}

void sub_1001B6660(id a1)
{
  v3 = [[NSArray alloc] initWithObjects:{CPSharedResourcesDirectory(), @"Media", @"Downloads", @"scratch", 0}];
  v1 = [NSString pathWithComponents:v3];
  v2 = qword_100384040;
  qword_100384040 = v1;
}

void sub_1001B7A58(id a1)
{
  v1 = qword_100384050;
  qword_100384050 = &off_10034CC98;
}

uint64_t sub_1001B7CD4()
{
  qword_100384060 = objc_alloc_init(objc_opt_class());

  return _objc_release_x1();
}

void sub_1001B7E00(uint64_t a1)
{
  if (!*(*(a1 + 32) + 56))
  {
    v2 = objc_alloc_init(NSMutableArray);
    v3 = *(a1 + 32);
    v4 = *(v3 + 56);
    *(v3 + 56) = v2;
  }

  v5 = objc_alloc_init(SpringBoardPendingAlert);
  [(SpringBoardPendingAlert *)v5 setCompletionBlock:*(a1 + 56)];
  [(SpringBoardPendingAlert *)v5 setOptions:*(a1 + 40)];
  v6 = [*(a1 + 48) objectForKey:SBSUIRemoteAlertOptionViewControllerClass];
  [(SpringBoardPendingAlert *)v5 setViewControllerName:v6];

  objc_initWeak(&location, *(a1 + 32));
  v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(*(a1 + 32) + 16));
  v8 = dispatch_time(0, 10000000000);
  dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1001B8054;
  handler[3] = &unk_1003296D0;
  objc_copyWeak(&v17, &location);
  v9 = v5;
  v15 = v9;
  v16 = *(a1 + 56);
  dispatch_source_set_event_handler(v7, handler);
  [(SpringBoardPendingAlert *)v9 setTimeoutTimer:v7];
  [*(*(a1 + 32) + 56) addObject:v9];
  dispatch_resume(v7);
  v10 = *(a1 + 32);
  v11 = *(v10 + 88);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001B814C;
  v12[3] = &unk_100327238;
  v12[4] = v10;
  v13 = *(a1 + 48);
  dispatch_async(v11, v12);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void sub_1001B8038(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1001B8054(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained[7] indexOfObjectIdenticalTo:*(a1 + 32)];
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = v4;
      [*(a1 + 32) setTimeoutTimer:0];
      [v3[7] removeObjectAtIndex:v5];
      v6 = *(a1 + 40);
      if (v6)
      {
        v7 = v3[4];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1001B8138;
        block[3] = &unk_100327198;
        v9 = v6;
        dispatch_async(v7, block);
      }
    }
  }
}

uint64_t sub_1001B814C(uint64_t a1)
{
  v2 = +[SSLogConfig sharedDaemonConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    v4 = v3 | 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = [v2 OSLogObject];
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v4 &= 2u;
  }

  if (!v4)
  {
    goto LABEL_11;
  }

  v6 = objc_opt_class();
  v7 = *(a1 + 40);
  *v12 = 138412546;
  *&v12[4] = v6;
  *&v12[12] = 2112;
  *&v12[14] = v7;
  v8 = v6;
  LODWORD(v11) = 22;
  v9 = _os_log_send_and_compose_impl();

  if (v9)
  {
    v5 = [NSString stringWithCString:v9 encoding:4, v12, v11, *v12, *&v12[16]];
    free(v9);
    SSFileLog();
LABEL_11:
  }

  return SBSUIActivateRemoteAlert();
}

void sub_1001B83B8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 96) objectForKey:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    *(*(*(a1 + 48) + 8) + 24) = [v2 unsignedIntValue];
  }

  else
  {
    v4 = *(a1 + 32);
    if (!*(v4 + 96))
    {
      v5 = objc_alloc_init(NSMutableDictionary);
      v6 = *(a1 + 32);
      v7 = *(v6 + 96);
      *(v6 + 96) = v5;

      v4 = *(a1 + 32);
    }

    v8 = *(v4 + 88);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1001B84B4;
    v9[3] = &unk_100327238;
    v9[4] = v4;
    v10 = *(a1 + 40);
    dispatch_async(v8, v9);
  }
}

void sub_1001B84B4(uint64_t a1)
{
  v3 = [*(a1 + 32) _applicationStateMonitor];
  v2 = [v3 applicationStateForApplication:*(a1 + 40)];
  if (v2)
  {
    [*(a1 + 32) _setApplicationState:v2 forClientID:*(a1 + 40)];
  }
}

void sub_1001B85B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[5];
  if (!v2)
  {
    if (!v1[12])
    {
      v4 = objc_alloc_init(NSMutableDictionary);
      v5 = *(a1 + 32);
      v6 = *(v5 + 96);
      *(v5 + 96) = v4;

      v1 = *(a1 + 32);
    }

    v7 = v1[11];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001B8688;
    v8[3] = &unk_1003271C0;
    v8[4] = v1;
    v9 = *(a1 + 40);
    dispatch_async(v7, v8);

    v1 = *(a1 + 32);
    v2 = v1[5];
  }

  v1[5] = v2 + 1;
}

void sub_1001B8688(uint64_t a1)
{
  v2 = [*(a1 + 32) _applicationStateMonitor];
  [v2 updateInterestedBundleIDs:0 states:BKSApplicationStateAll];
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = +[LSApplicationWorkspace defaultWorkspace];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001B8804;
  v11[3] = &unk_10032B238;
  v5 = v2;
  v12 = v5;
  v6 = v3;
  v13 = v6;
  [v4 enumerateBundlesOfType:1 block:v11];

  [*(a1 + 32) _setApplicationStatesWithDictionary:v6];
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(*(a1 + 32) + 32);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001B8890;
    block[3] = &unk_100327198;
    v10 = v7;
    dispatch_async(v8, block);
  }
}

void sub_1001B8804(uint64_t a1, void *a2)
{
  v5 = [a2 bundleIdentifier];
  v3 = [*(a1 + 32) applicationStateForApplication:?];
  if (v3)
  {
    v4 = [[NSNumber alloc] initWithInteger:v3];
    [*(a1 + 40) setObject:v4 forKey:v5];
  }
}

void sub_1001B8938(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[12])
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    v4 = *(a1 + 32);
    v5 = *(v4 + 96);
    *(v4 + 96) = v3;

    v2 = *(a1 + 32);
  }

  v6 = v2[5] > 0;
  v7 = v2[11];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B8A10;
  block[3] = &unk_10032B260;
  block[4] = v2;
  v9 = *(a1 + 40);
  v10 = v6;
  dispatch_async(v7, block);
}

void sub_1001B8A10(uint64_t a1)
{
  if (!*(*(a1 + 32) + 48))
  {
    v2 = objc_alloc_init(NSCountedSet);
    v3 = *(a1 + 32);
    v4 = *(v3 + 48);
    *(v3 + 48) = v2;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = *(a1 + 40);
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (!v6)
  {
    goto LABEL_16;
  }

  v7 = v6;
  LOBYTE(v8) = 0;
  v9 = *v14;
  do
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v13 + 1) + 8 * i);
      [*(*(a1 + 32) + 48) addObject:{v11, v13}];
      v8 = v8 || [*(*(a1 + 32) + 48) countForObject:v11] == 1;
    }

    v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  }

  while (v7);

  if (v8 && (*(a1 + 48) & 1) == 0)
  {
    v5 = [*(a1 + 32) _applicationStateMonitor];
    v12 = [*(*(a1 + 32) + 48) allObjects];
    [v5 updateInterestedBundleIDs:v12 states:BKSApplicationStateAll];

LABEL_16:
  }
}

void sub_1001B8CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001B8CE0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001B8CF8(uint64_t a1)
{
  v5 = [*(a1 + 32) _applicationStateMonitor];
  v2 = [v5 bundleInfoValueForKey:*(a1 + 40) PID:*(a1 + 56)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1001B8DDC(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  if (v4 >= 1)
  {
    block[7] = v1;
    block[8] = v2;
    if (v4 == 1)
    {
      [*(v3 + 96) removeAllObjects];
      v6 = *(a1 + 32);
      v7 = *(v6 + 88);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001B8E8C;
      block[3] = &unk_100327110;
      block[4] = v6;
      dispatch_async(v7, block);
      v3 = *(a1 + 32);
      v4 = *(v3 + 40);
    }

    *(v3 + 40) = v4 - 1;
  }
}

void sub_1001B8E8C(uint64_t a1)
{
  v7 = [*(a1 + 32) _applicationStateMonitor];
  v2 = [*(*(a1 + 32) + 48) count];
  v3 = BKSApplicationStateAll;
  v4 = *(*(a1 + 32) + 48);
  if (v4)
  {
    v5 = [v4 allObjects];
  }

  else
  {
    v5 = 0;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  [v7 updateInterestedBundleIDs:v5 states:v6];
}

void sub_1001B8FCC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  if (v3 <= 0)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = *(a1 + 40);
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      do
      {
        v8 = 0;
        do
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(a1 + 32) + 96) removeObjectForKey:*(*(&v16 + 1) + 8 * v8)];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }

    v2 = *(a1 + 32);
  }

  v9 = *(v2 + 88);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B9158;
  block[3] = &unk_10032B260;
  v10 = *(a1 + 40);
  v11 = *(a1 + 32);
  v13 = v10;
  v14 = v11;
  v15 = v3 > 0;
  dispatch_async(v9, block);
}

void sub_1001B9158(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v3)
  {
LABEL_14:

    return;
  }

  v4 = v3;
  v5 = 0;
  v6 = *v13;
  do
  {
    for (i = 0; i != v4; i = i + 1)
    {
      if (*v13 != v6)
      {
        objc_enumerationMutation(v2);
      }

      v8 = *(*(&v12 + 1) + 8 * i);
      v9 = [*(*(a1 + 40) + 48) countForObject:{v8, v12}];
      [*(*(a1 + 40) + 48) removeObject:v8];
      v5 |= v9 == 1;
    }

    v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  }

  while (v4);

  if ((v5 & 1) != 0 && (*(a1 + 48) & 1) == 0)
  {
    v2 = [*(a1 + 40) _applicationStateMonitor];
    if ([*(*(a1 + 40) + 48) count])
    {
      v10 = BKSApplicationStateAll;
    }

    else
    {
      v10 = 0;
    }

    v11 = [*(*(a1 + 40) + 48) allObjects];
    [v2 updateInterestedBundleIDs:v11 states:v10];

    goto LABEL_14;
  }
}

id sub_1001B93E0(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 96);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001B945C;
  v3[3] = &unk_10032B2B0;
  v3[4] = *(a1 + 40);
  return [v1 enumerateKeysAndObjectsUsingBlock:v3];
}

void sub_1001B945C(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  if (([a3 unsignedIntValue] & 0x28) != 0)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_1001B96DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001B96F4(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1001B9804(uint64_t a1)
{
  v2 = [*(a1 + 32) _applicationStateMonitor];
  *(*(*(a1 + 40) + 8) + 24) = [v2 mostElevatedApplicationStateForPID:*(a1 + 48)];
}

void sub_1001B9B84(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  *(v1 + 24) = 0;
}

void sub_1001B9EF0(id *a1)
{
  v2 = [a1[4] appIdentifier];
  if ([a1[4] shouldLaunchApp])
  {
    v3 = [NSMutableDictionary alloc];
    v4 = [v3 initWithObjectsAndKeys:{&__kCFBooleanTrue, FBSOpenApplicationOptionKeyActivateSuspended, 0}];
    v5 = [a1[4] launchOptions];
    if (v5)
    {
      [v4 setObject:v5 forKey:FBSOpenApplicationOptionKeyPayloadOptions];
    }

    v6 = a1[5];
    v57 = 0;
    v7 = [v6 launchApplicationWithIdentifier:v2 options:v4 error:&v57];
    v8 = v57;
    v9 = v8;
    if (v7)
    {

      goto LABEL_6;
    }

    v21 = +[SSLogConfig sharedDaemonConfig];
    if (!v21)
    {
      v21 = +[SSLogConfig sharedConfig];
    }

    v22 = [v21 shouldLog];
    if ([v21 shouldLogToDisk])
    {
      v23 = v22 | 2;
    }

    else
    {
      v23 = v22;
    }

    v24 = [v21 OSLogObject];
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v23 &= 2u;
    }

    if (v23)
    {
      v25 = objc_opt_class();
      v58 = 138412802;
      v59 = v25;
      v60 = 2112;
      v61 = v2;
      v62 = 2112;
      v63 = *&v9;
      v26 = v25;
      LODWORD(v51) = 32;
      v50 = &v58;
      v27 = _os_log_send_and_compose_impl();

      if (!v27)
      {
LABEL_33:

        goto LABEL_34;
      }

      v24 = [NSString stringWithCString:v27 encoding:4, &v58, v51];
      free(v27);
      v50 = v24;
      SSFileLog();
    }

    goto LABEL_33;
  }

LABEL_6:
  v56 = 0;
  if ([a1[5] _getProcessID:&v56 forApplicationIdentifier:v2])
  {
    v10 = [a1[4] processAssertionIdentifier];
    [a1[4] processAssertionInterval];
    v12 = v11;
    v13 = [a1[4] processAssertionReason];
    v14 = v13;
    if (!v10 || !v13 || v12 <= 2.22044605e-16)
    {

      goto LABEL_54;
    }

    if ([v13 isEqualToString:ProcessAssertionReasonBackgroundDownload])
    {
      v15 = 10;
    }

    else if ([v14 isEqualToString:ProcessAssertionReasonTaskCompletion])
    {
      v15 = 4;
    }

    else
    {
      v15 = 0;
    }

    v28 = +[SSLogConfig sharedDaemonConfig];
    if (!v28)
    {
      v28 = +[SSLogConfig sharedConfig];
    }

    v29 = [v28 shouldLog];
    if ([v28 shouldLogToDisk])
    {
      v30 = v29 | 2;
    }

    else
    {
      v30 = v29;
    }

    v31 = [v28 OSLogObject];
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v30 &= 2u;
    }

    if (v30)
    {
      v32 = objc_opt_class();
      v58 = 138413058;
      v59 = v32;
      v60 = 2112;
      v61 = v10;
      v62 = 2048;
      v63 = v12;
      v64 = 2112;
      v65 = v14;
      v33 = v32;
      LODWORD(v51) = 42;
      v50 = &v58;
      v34 = _os_log_send_and_compose_impl();

      if (!v34)
      {
        goto LABEL_52;
      }

      v31 = [NSString stringWithCString:v34 encoding:4, &v58, v51];
      free(v34);
      v50 = v31;
      SSFileLog();
    }

LABEL_52:
    v35 = [BKSProcessAssertion alloc];
    v36 = [v35 initWithPID:v56 flags:1 reason:v15 name:v10];
    if ([v36 valid])
    {
      v37 = dispatch_time(0, (v12 * 1000000000.0));
      v39 = a1[5];
      v38 = a1[6];
      v40 = *(v39 + 2);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001BA68C;
      block[3] = &unk_10032B328;
      block[4] = v39;
      v53 = v10;
      v54 = v38;
      v55 = v36;
      v41 = v36;
      v42 = v10;
      dispatch_after(v37, v40, block);

      goto LABEL_54;
    }

    v43 = +[SSLogConfig sharedDaemonConfig];
    if (!v43)
    {
      v43 = +[SSLogConfig sharedConfig];
    }

    v44 = [v43 shouldLog];
    if ([v43 shouldLogToDisk])
    {
      v45 = v44 | 2;
    }

    else
    {
      v45 = v44;
    }

    v46 = [v43 OSLogObject];
    if (!os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v45 &= 2u;
    }

    if (v45)
    {
      v47 = objc_opt_class();
      v58 = 138412546;
      v59 = v47;
      v60 = 2112;
      v61 = v10;
      v48 = v47;
      LODWORD(v51) = 22;
      v50 = &v58;
      v49 = _os_log_send_and_compose_impl();

      if (!v49)
      {
LABEL_66:

        goto LABEL_36;
      }

      v46 = [NSString stringWithCString:v49 encoding:4, &v58, v51];
      free(v49);
      v50 = v46;
      SSFileLog();
    }

    goto LABEL_66;
  }

  v4 = +[SSLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v16 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v17 = v16 | 2;
  }

  else
  {
    v17 = v16;
  }

  v5 = [v4 OSLogObject];
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v17 &= 2u;
  }

  if (!v17)
  {
    goto LABEL_34;
  }

  v18 = objc_opt_class();
  v58 = 138412546;
  v59 = v18;
  v60 = 2112;
  v61 = v2;
  v19 = v18;
  LODWORD(v51) = 22;
  v50 = &v58;
  v20 = _os_log_send_and_compose_impl();

  if (v20)
  {
    v5 = [NSString stringWithCString:v20 encoding:4, &v58, v51];
    free(v20);
    v50 = v5;
    SSFileLog();
LABEL_34:
  }

LABEL_36:
  [a1[6] releaseKeepAliveAssertion:{@"AppWakeup", v50}];
LABEL_54:
}

id sub_1001BA68C(uint64_t a1)
{
  v2 = +[SSLogConfig sharedDaemonConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    v4 = v3 | 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = [v2 OSLogObject];
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v4 &= 2u;
  }

  if (!v4)
  {
    goto LABEL_11;
  }

  v6 = objc_opt_class();
  v7 = *(a1 + 40);
  *v12 = 138412546;
  *&v12[4] = v6;
  *&v12[12] = 2112;
  *&v12[14] = v7;
  v8 = v6;
  LODWORD(v11) = 22;
  v9 = _os_log_send_and_compose_impl();

  if (v9)
  {
    v5 = [NSString stringWithCString:v9 encoding:4, v12, v11, *v12, *&v12[16]];
    free(v9);
    SSFileLog();
LABEL_11:
  }

  [*(a1 + 48) releaseKeepAliveAssertion:@"AppWakeup"];
  return [*(a1 + 56) invalidate];
}

void sub_1001BA8F8(uint64_t a1)
{
  reply = xpc_dictionary_create_reply(*(a1 + 32));
  objc_opt_class();
  v3 = SSXPCDictionaryCopyObjectWithClass();
  if (v3)
  {
    v4 = [*(*(a1 + 40) + 56) count];
    if (v4 >= 1)
    {
      v5 = v4;
      v6 = 0;
      while (1)
      {
        v7 = [*(*(a1 + 40) + 56) objectAtIndex:v6];
        v8 = [v7 viewControllerName];
        v9 = [v8 isEqualToString:v3];

        if (v9)
        {
          break;
        }

        if (v5 == ++v6)
        {
          goto LABEL_10;
        }
      }

      v10 = [[SpringBoardAlertProxy alloc] initWithMessage:*(a1 + 32)];
      v11 = [v7 options];
      SSXPCDictionarySetObject();

      v12 = [(SpringBoardAlertProxy *)v10 XPCEndpoint];
      xpc_dictionary_set_value(reply, "2", v12);

      v13 = [v7 completionBlock];
      v14 = v13;
      if (v13)
      {
        v15 = *(*(a1 + 40) + 32);
        v16 = _NSConcreteStackBlock;
        v17 = 3221225472;
        v18 = sub_1001BAB10;
        v19 = &unk_100328EA8;
        v21 = v13;
        v20 = v10;
        dispatch_async(v15, &v16);
        [v7 setCompletionBlock:{0, v16, v17, v18, v19}];
      }

      [v7 cancelTimeoutTimer];
      [*(*(a1 + 40) + 56) removeObjectAtIndex:v6];
    }
  }

LABEL_10:
  xpc_connection_send_message(*(a1 + 48), reply);
}

void sub_1001BB35C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001BB460;
    v6[3] = &unk_10032B378;
    v4 = *(a1 + 32);
    v7 = *(a1 + 40);
    [a2 sendMessage:v4 withReply:v6];
  }

  else
  {
    v5 = SSError();
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t sub_1001BB460(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

void sub_1001BB514(uint64_t a1)
{
  if (*(*(a1 + 32) + 64) == *(a1 + 40))
  {
    v2 = +[SSLogConfig sharedDaemonConfig];
    if (!v2)
    {
      v2 = +[SSLogConfig sharedConfig];
    }

    v3 = [v2 shouldLog];
    if ([v2 shouldLogToDisk])
    {
      v4 = v3 | 2;
    }

    else
    {
      v4 = v3;
    }

    v5 = [v2 OSLogObject];
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v4 &= 2u;
    }

    if (v4)
    {
      v6 = objc_opt_class();
      v7 = *(*(a1 + 32) + 64);
      *v13 = 138412546;
      *&v13[4] = v6;
      *&v13[12] = 2112;
      *&v13[14] = v7;
      v8 = v6;
      LODWORD(v12) = 22;
      v9 = _os_log_send_and_compose_impl();

      if (!v9)
      {
LABEL_13:

        [*(*(a1 + 32) + 64) setDisconnectBlock:0];
        v10 = *(a1 + 32);
        v11 = *(v10 + 64);
        *(v10 + 64) = 0;

        return;
      }

      v5 = [NSString stringWithCString:v9 encoding:4, v13, v12, *v13, *&v13[16]];
      free(v9);
      SSFileLog();
    }

    goto LABEL_13;
  }
}

void sub_1001BB7BC(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void sub_1001BBA44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001BBA60(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v6 objectForKey:*(a1 + 32)];
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_1001BBC0C(uint64_t a1)
{
  v2 = xpc_dictionary_get_value(*(a1 + 32), "1");
  v3 = v2;
  if (v2 && xpc_get_type(v2) == &_xpc_type_endpoint)
  {
    v4 = xpc_connection_create_from_endpoint(v3);
    if (!v4)
    {
LABEL_15:

      goto LABEL_16;
    }

    [*(*(a1 + 40) + 64) setDisconnectBlock:0];
    v5 = [[SSXPCConnection alloc] initWithXPCConnection:v4];
    objc_storeStrong((*(a1 + 40) + 64), v5);
    objc_initWeak(&location, *(a1 + 40));
    v6 = *(*(a1 + 40) + 64);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1001BBF3C;
    v19[3] = &unk_100328ED0;
    objc_copyWeak(&v21, &location);
    v7 = v5;
    v20 = v7;
    [v6 setDisconnectBlock:v19];
    v8 = SSXPCCreateMessageDictionary();
    [*(*(a1 + 40) + 64) sendMessage:v8];
    v9 = +[SSLogConfig sharedDaemonConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    v10 = [v9 shouldLog];
    v11 = [v9 shouldLogToDisk];
    v12 = [v9 OSLogObject];
    v13 = v12;
    if (v11)
    {
      v10 |= 2u;
    }

    if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v10 &= 2u;
    }

    if (v10)
    {
      v14 = objc_opt_class();
      v15 = *(*(a1 + 40) + 64);
      v23 = 138412546;
      v24 = v14;
      v25 = 2112;
      v26 = v15;
      v16 = v14;
      LODWORD(v18) = 22;
      v17 = _os_log_send_and_compose_impl();

      if (!v17)
      {
LABEL_14:

        [*(a1 + 40) _fireDeferredPluginBlocksWithConnection:*(*(a1 + 40) + 64)];
        objc_destroyWeak(&v21);
        objc_destroyWeak(&location);

        goto LABEL_15;
      }

      v13 = [NSString stringWithCString:v17 encoding:4, &v23, v18];
      free(v17);
      SSFileLog();
    }

    goto LABEL_14;
  }

LABEL_16:
}

void sub_1001BBF00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001BBF3C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _disconnectPluginConnection:*(a1 + 32)];
}

void sub_1001BC024(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 64);
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = v3[4];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001BC39C;
    block[3] = &unk_100328EA8;
    v30 = *(a1 + 40);
    v29 = v2;
    dispatch_async(v4, block);

    v5 = v30;
    goto LABEL_19;
  }

  if (!v3[9])
  {
    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = v7 | 2;
    }

    else
    {
      v8 = v7;
    }

    v9 = [v6 OSLogObject];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = objc_opt_class();
      v10 = *(location + 4);
      LODWORD(v25) = 12;
      p_isa = location;
      v11 = _os_log_send_and_compose_impl();

      if (!v11)
      {
LABEL_15:

        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.itunesstored.sbplugin.requestconnection", 0, 0, 1u);
        v13 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(*(a1 + 32) + 16));
        v14 = *(a1 + 32);
        v15 = *(v14 + 72);
        *(v14 + 72) = v13;

        v16 = *(*(a1 + 32) + 72);
        v17 = dispatch_time(0, 10000000000);
        dispatch_source_set_timer(v16, v17, 0, 0);
        objc_initWeak(location, *(a1 + 32));
        v18 = *(*(a1 + 32) + 72);
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_1001BC3B0;
        handler[3] = &unk_100328150;
        objc_copyWeak(&v27, location);
        dispatch_source_set_event_handler(v18, handler);
        dispatch_resume(*(*(a1 + 32) + 72));
        objc_destroyWeak(&v27);
        objc_destroyWeak(location);
        v3 = *(a1 + 32);
        goto LABEL_16;
      }

      v9 = [NSString stringWithCString:v11 encoding:4, location, v25];
      free(v11);
      p_isa = &v9->isa;
      SSFileLog();
    }

    goto LABEL_15;
  }

LABEL_16:
  if (!v3[10])
  {
    v19 = objc_alloc_init(NSMutableArray);
    v20 = *(a1 + 32);
    v21 = *(v20 + 80);
    *(v20 + 80) = v19;
  }

  v5 = [*(a1 + 40) copy];
  v22 = *(*(a1 + 32) + 80);
  v23 = objc_retainBlock(v5);
  [v22 addObject:v23];

LABEL_19:
}

void sub_1001BC3B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _timeoutPluginConnection];
}

void sub_1001BC6B0(uint64_t a1)
{
  v2 = [[NSNumber alloc] initWithInteger:*(a1 + 48)];
  [*(*(a1 + 32) + 96) setObject:v2 forKey:*(a1 + 40)];
  v3 = *(*(a1 + 32) + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001BC790;
  block[3] = &unk_1003281A0;
  v6 = *(a1 + 40);
  v7 = v2;
  v8 = *(a1 + 32);
  v4 = v2;
  dispatch_async(v3, block);
}

void sub_1001BC790(void *a1)
{
  v3 = objc_alloc_init(NSMutableDictionary);
  [v3 setObject:a1[4] forKey:BKSApplicationStateDisplayIDKey];
  [v3 setObject:a1[5] forKey:BKSApplicationStateKey];
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"SpringBoardUtilityApplicationStateChangeNotification" object:a1[6] userInfo:v3];
}

void sub_1001BC8CC(uint64_t a1)
{
  [*(*(a1 + 32) + 96) addEntriesFromDictionary:*(a1 + 40)];
  v2 = +[NSNotificationCenter defaultCenter];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001BC980;
  v6[3] = &unk_100327238;
  v6[4] = v3;
  v7 = v2;
  v5 = v2;
  dispatch_async(v4, v6);
}

void sub_1001BC980(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 96);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001BCA18;
  v5[3] = &unk_10032B440;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  [v2 enumerateKeysAndObjectsUsingBlock:v5];
}

void sub_1001BCA18(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = objc_alloc_init(NSMutableDictionary);
  [v7 setObject:v6 forKey:BKSApplicationStateDisplayIDKey];

  [v7 setObject:v5 forKey:BKSApplicationStateKey];
  [*(a1 + 32) postNotificationName:@"SpringBoardUtilityApplicationStateChangeNotification" object:*(a1 + 40) userInfo:v7];
}

id sub_1001BD7EC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[SSLogConfig sharedStoreServicesConfig];
  v8 = v7;
  if (v6)
  {
    if (!v7)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    v9 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = v9 | 2;
    }

    else
    {
      v10 = v9;
    }

    v11 = [v8 OSLogObject];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v10 &= 2u;
    }

    if (v10)
    {
      v12 = objc_opt_class();
      v13 = *(a1 + 40);
      *v31 = 138543874;
      *&v31[4] = v12;
      *&v31[12] = 2114;
      *&v31[14] = v13;
      *&v31[22] = 2114;
      v32 = v6;
      v14 = v12;
      LODWORD(v30) = 32;
      v15 = _os_log_send_and_compose_impl();

      if (!v15)
      {
LABEL_13:

        goto LABEL_26;
      }

      v11 = [NSString stringWithCString:v15 encoding:4, v31, v30, *v31, *&v31[16], v32];
      free(v15);
      SSFileLog();
    }

    goto LABEL_13;
  }

  if (!v7)
  {
    v8 = +[SSLogConfig sharedConfig];
  }

  v16 = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    v17 = v16 | 2;
  }

  else
  {
    v17 = v16;
  }

  v18 = [v8 OSLogObject];
  if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v17 &= 2u;
  }

  if (!v17)
  {
    goto LABEL_24;
  }

  v19 = objc_opt_class();
  v20 = *(a1 + 40);
  *v31 = 138543618;
  *&v31[4] = v19;
  *&v31[12] = 2114;
  *&v31[14] = v20;
  v21 = v19;
  LODWORD(v30) = 22;
  v22 = _os_log_send_and_compose_impl();

  if (v22)
  {
    v18 = [NSString stringWithCString:v22 encoding:4, v31, v30, *v31, *&v31[8]];
    free(v22);
    SSFileLog();
LABEL_24:
  }

  [*(a1 + 48) setAccount:v5];
LABEL_26:
  v23 = [AMSPurchaseTask alloc];
  v24 = *(a1 + 48);
  v25 = [*(a1 + 32) bag];
  v26 = [v23 initWithPurchase:v24 bag:v25];

  [v26 setDelegate:*(a1 + 32)];
  v27 = [v26 valueForKey:@"purchaseInfo"];
  [v27 setHasBeenAuthedForBuy:{objc_msgSend(*(a1 + 48), "isPreauthenticated")}];
  v28 = [v26 performPurchase];

  return v28;
}

uint64_t sub_1001BE474()
{
  qword_100384070 = objc_alloc_init(objc_opt_class());

  return _objc_release_x1();
}

id sub_1001BE548(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (!v2)
  {
    v3 = objc_alloc_init(NSCountedSet);
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = v3;

    v2 = *(*(a1 + 32) + 32);
  }

  [v2 addObject:*(a1 + 40)];
  result = [*(*(a1 + 32) + 32) countForObject:*(a1 + 40)];
  if (result == 1)
  {
    v7 = *(a1 + 32);
    v8 = v7[4];

    return [v7 _sendDownloadKindsUsingNetwork:v8];
  }

  return result;
}

id sub_1001BE670(uint64_t a1)
{
  result = *(*(a1 + 32) + 32);
  if (result)
  {
    v3 = [result countForObject:*(a1 + 40)];
    result = [*(*(a1 + 32) + 32) removeObject:*(a1 + 40)];
    if (v3 == 1)
    {
      v4 = *(a1 + 32);
      v5 = v4[4];

      return [v4 _sendDownloadKindsUsingNetwork:v5];
    }
  }

  return result;
}

void sub_1001BE8DC(void *a1)
{
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1[4] + 24);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [v7 downloadKinds];
        v9 = [v8 intersectsSet:a1[5]];

        if (v9)
        {
          [v7 sendChangeset:a1[6]];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

void sub_1001BEAEC(void *a1)
{
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1[4] + 24);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [v7 downloadKinds];
        v9 = [v8 containsObject:a1[5]];

        if (v9)
        {
          [v7 sendDownloadStateChangedWithID:a1[7] externalValues:a1[6] propertyValues:0];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

void sub_1001BED00(void *a1)
{
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1[4] + 24);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [v7 downloadKinds];
        v9 = [v8 containsObject:a1[5]];

        if (v9)
        {
          [v7 sendDownloadStateChangedWithID:a1[7] externalValues:0 propertyValues:a1[6]];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

BOOL sub_1001BF2D4(id a1, DownloadsTransaction *a2)
{
  v2 = a2;
  [(DownloadsTransaction *)v2 deletePersistentDownloadManagerWithClientID:@"com.apple.springboard" persistenceID:@"SSDownloadQueue"];
  v3 = [(DownloadsSession *)v2 pipeline];

  [v3 reconnectWithURLSessionTasks];
  return 1;
}