void sub_13DC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_32DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2 == 1)
  {
    v12 = objc_begin_catch(exception_object);
    v13 = BCDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1203C([v12 description], &a11);
    }

    if (v11)
    {
      *v11 = [[NSError alloc] initWithDomain:@"com.apple.atc.Books" code:-2 userInfo:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", v12)}];
    }

    objc_end_catch();
    JUMPOUT(0x32ACLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_3A88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2 == 1)
  {
    v11 = objc_begin_catch(exception_object);
    v12 = BCDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_120F4([v11 description], &a11);
    }

    objc_end_catch();
    JUMPOUT(0x3A4CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_3D84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2 == 1)
  {
    v11 = objc_begin_catch(exception_object);
    v12 = BCDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1219C([v11 description], &a11);
    }

    objc_end_catch();
    JUMPOUT(0x3D00);
  }

  _Unwind_Resume(exception_object);
}

void sub_4014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2 == 1)
  {
    v17 = objc_begin_catch(exception_object);
    v18 = BCDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1219C([v17 description], &a17);
    }

    objc_end_catch();
    JUMPOUT(0x3FD8);
  }

  _Unwind_Resume(exception_object);
}

void sub_44AC(_Unwind_Exception *exception_object, int a2, ...)
{
  va_start(va, a2);
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    v3 = BCDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_12244(@"/var/mobile/Media/Books/Sync/Upload.plist", [v2 description], va);
    }

    objc_end_catch();
    JUMPOUT(0x42E0);
  }

  _Unwind_Resume(exception_object);
}

void sub_45F8(_Unwind_Exception *exception_object, int a2, ...)
{
  va_start(va, a2);
  if (a2 == 1)
  {
    v3 = objc_begin_catch(exception_object);
    v4 = BCDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_12284(v2, [v3 description], va);
    }

    objc_end_catch();
    JUMPOUT(0x45C8);
  }

  _Unwind_Resume(exception_object);
}

void sub_4824(_Unwind_Exception *exception_object, int a2, ...)
{
  va_start(va, a2);
  if (a2 == 1)
  {
    v3 = objc_begin_catch(exception_object);
    v4 = BCDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_122C4([v2 identifier], objc_msgSend(v3, "description"), va);
    }

    objc_end_catch();
    JUMPOUT(0x47F4);
  }

  _Unwind_Resume(exception_object);
}

void sub_49C4(_Unwind_Exception *exception_object, int a2, ...)
{
  va_start(va, a2);
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    v3 = BCDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_12454([v2 description], va);
    }

    objc_end_catch();
    JUMPOUT(0x4904);
  }

  _Unwind_Resume(exception_object);
}

void sub_53D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_53F8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = objc_opt_class();
  if ([BCDynamicCast(v8 objc_msgSend(a2])
  {
    v9 = [a2 mutableCopy];
    [v9 setObject:objc_msgSend(objc_msgSend(*(a1 + 32) forKey:{"path"), "lastPathComponent"), @"Path"}];
    [*(a1 + 40) replaceObjectAtIndex:a3 withObject:v9];

    *a4 = 1;
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

void sub_5CEC(uint64_t a1, void *a2, void *a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = [*(a1 + 32) accountInfoForAssetAtPath:a2];
  if ([objc_msgSend(v7 "appleID")] && objc_msgSend(*(a1 + 32), "_stringFromObject:", objc_msgSend(a3, "objectForKey:", @"DSID")))
  {
    v8 = [a2 hasPrefix:@"/var/mobile/Media/Books/Purchases"];
    v9 = BCDefaultLog();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        v14 = 138412290;
        v15 = a2;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "#D2D: Adding storeAsset D2D Local path: %@", &v14, 0xCu);
      }

      v11 = [*(a1 + 32) pathsForDevice2DeviceRestoreRedownloadable];
    }

    else
    {
      if (v10)
      {
        v14 = 138412290;
        v15 = a2;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "#D2D: Adding storeAsset D2D Redownloadable path: %@", &v14, 0xCu);
      }

      v11 = [*(a1 + 32) pathsForDevice2DeviceRestoreLocal];
    }

    [v11 addObject:a2];
    [*(a1 + 32) addKnownAccountInfo:v7];
  }

  else
  {
    v12 = BCDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = a2;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "#D2D: Adding !storeAsset D2D Local path: %@", &v14, 0xCu);
    }

    [objc_msgSend(*(a1 + 32) "pathsForDevice2DeviceRestoreLocal")];
    v13 = BCDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = a2;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Adding !storeAsset path: %@", &v14, 0xCu);
    }

    [*(a1 + 40) addObject:a2];
  }

  objc_autoreleasePoolPop(v6);
}

uint64_t sub_624C(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [a2 countByEnumeratingWithState:&v15 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(a2);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = BCDefaultLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v12 = *(a1 + 40);
          *buf = 67109634;
          v21 = v12;
          v22 = 2048;
          v23 = a3;
          v24 = 2112;
          v25 = v10;
          _os_log_debug_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "#D2D: enumeratePathsForBackupType:%u pathAttributes: %llu enumerating: %@", buf, 0x1Cu);
        }

        (*(*(a1 + 32) + 16))();
        if (v19)
        {
          v13 = 1;
          return v13 & 1;
        }
      }

      v7 = [a2 countByEnumeratingWithState:&v15 objects:v26 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }

    v13 = v19;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

void sub_8990(void *a1)
{
  v2 = *(a1[4] + 16);
  if (!v2)
  {
    *(a1[4] + 16) = objc_alloc_init(NSMutableDictionary);
    v2 = *(a1[4] + 16);
  }

  *(*(a1[6] + 8) + 40) = [v2 objectForKey:a1[5]];
  if (!*(*(a1[6] + 8) + 40))
  {
    *(*(a1[6] + 8) + 40) = [[BCPlist alloc] initWithPath:a1[5]];
    v3 = [[ThreadSafeProxy alloc] initWithObject:*(*(a1[6] + 8) + 40)];
    [*(a1[4] + 16) setObject:v3 forKey:a1[5]];

    *(*(a1[6] + 8) + 40) = v3;
  }
}

id sub_9148(uint64_t a1)
{
  result = [[NSSet alloc] initWithObjects:{objc_msgSend(*(a1 + 32), "alternatePathForPlist:withNamePrefix:", @"/var/mobile/Media/Books/Books.plist", @"Backup-", objc_msgSend(*(a1 + 32), "alternatePathForPlist:withNamePrefix:", @"/var/mobile/Media/Books/Purchases/Purchases.plist", @"Backup-", objc_msgSend(*(a1 + 32), "alternatePathForPlist:withNamePrefix:", @"/var/mobile/Media/Books/Managed/Managed.plist", @"Backup-", @"/var/mobile/Media/Books/iBooksData.plist", @"/var/mobile/Media/Books/iBooksData2.plist", @"/var/mobile/Media/Books", @"/var/mobile/Media/Books/Purchases", 0}];
  qword_267E0 = result;
  return result;
}

void sub_9BA4(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 32);
  if (*(a1 + 32))
  {
    v4 = BCDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1312C(a1, v3);
    }
  }

  else
  {
    v9 = 0;
    [*(a1 + 40) removeItemAtURL:a2 error:&v9];
    v5 = v9;
    v6 = BCDefaultLog();
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1312C(a1, &v9);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 48);
      *buf = 138412290;
      v11 = v8;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "deleted: %@", buf, 0xCu);
    }
  }
}

uint64_t sub_B200(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  return result;
}

void sub_B218(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_B244(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x16u);
}

uint64_t sub_B25C(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

uint64_t *sub_B2A4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  v4 = result[1];
  return result;
}

void sub_B2B0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x12u);
}

id _compareDictionaryValues(void *a1, void *a2, uint64_t a3)
{
  v5 = [a1 objectForKey:?];
  v6 = [a2 objectForKey:a3];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = 0;
    }
  }

  if (v6)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (v5 && (isKindOfClass & 1) != 0)
    {

      return [v5 compare:v6];
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  if (!v5 || (isKindOfClass & 1) != 0)
  {
    return ((((v5 == 0) & isKindOfClass) << 63) >> 63);
  }

  else
  {
    return &dword_0 + 1;
  }
}

void sub_C528(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

void sub_C544(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(a1);
}

uint64_t BCDynamicCast(uint64_t a1, uint64_t a2)
{
  if (objc_opt_isKindOfClass())
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

void *BCProtocolCast(uint64_t a1, void *a2)
{
  if ([a2 conformsToProtocol:a1])
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

void *BCClassAndProtocolCast(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a1;
  if (a1)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }

    v13 = &a9;
    if (a3)
    {
      while (1)
      {
        v11 = v13++;
        if (([v9 conformsToProtocol:*v11] & 1) == 0)
        {
          break;
        }

        if (!--a3)
        {
          return v9;
        }
      }

      return 0;
    }
  }

  return v9;
}

CFTypeRef BCCFTypeCast(uint64_t a1, CFTypeRef cf)
{
  if (!cf)
  {
    return 0;
  }

  if (CFGetTypeID(cf) == a1)
  {
    return cf;
  }

  return 0;
}

void sub_E4CC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

id sub_F084(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = [*(a1 + 32) entities:*(a1 + 40) byPredicate:*(a1 + 48) fromMOC:*(a1 + 56)];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(a1 + 56) deleteObject:*(*(&v15 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v15 objects:v24 count:16];
    }

    while (v5);
  }

  v8 = BCDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = [v3 count];
    *buf = 138412802;
    *&buf[4] = v9;
    v20 = 2112;
    v21 = v10;
    v22 = 1024;
    v23 = v11;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Removing %@ with predicate: %@ -- [Matched: %d]", buf, 0x1Cu);
  }

  *buf = 0;
  result = [*(a1 + 56) save:buf];
  if ((result & 1) == 0)
  {
    if (*buf)
    {
      v13 = BCDefaultLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_13BB0(v2);
      }
    }

    v14 = +[NSAssertionHandler currentHandler];
    return -[NSAssertionHandler handleFailureInMethod:object:file:lineNumber:description:](v14, "handleFailureInMethod:object:file:lineNumber:description:", *(a1 + 64), *(a1 + 32), @"BCAssetDatabase.m", 129, @"{%@} - Error saving MOC: %@ -- User Info: %@", *(a1 + 40), *buf, [*buf userInfo]);
  }

  return result;
}

void sub_F4B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_F4F4(uint64_t a1)
{
  v2 = [NSEntityDescription entityForName:*(a1 + 32) inManagedObjectContext:*(a1 + 40)];
  v3 = objc_alloc_init(NSAutoreleasePool);
  v4 = [NSPredicate predicateWithFormat:@"persistentID IN %@", *(a1 + 48)];
  v5 = objc_alloc_init(NSFetchRequest);
  [v5 setEntity:v2];
  [v5 setPredicate:v4];
  [v5 setResultType:2];
  [v5 setPropertiesToFetch:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", @"persistentID", 0)}];
  v17 = 0;
  v6 = [*(a1 + 40) executeFetchRequest:v5 error:&v17];
  if (!v6 && v17)
  {
    v7 = BCDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_13CDC(&v17);
    }

    goto LABEL_8;
  }

  if (!v6)
  {
LABEL_8:
    v8 = objc_alloc_init(NSSet);
    goto LABEL_9;
  }

  v8 = [[NSSet alloc] initWithArray:{objc_msgSend(v6, "valueForKeyPath:", @"persistentID"}];
LABEL_9:
  *(*(*(a1 + 56) + 8) + 40) = v8;

  if (*(a1 + 64) && [*(*(*(a1 + 56) + 8) + 40) count])
  {
    v9 = [NSPredicate predicateWithFormat:@"persistentID IN %@", *(*(*(a1 + 56) + 8) + 40)];
    v10 = [NSExpression expressionForFunction:@"sum:" arguments:[NSArray arrayWithObject:[NSExpression expressionForKeyPath:@"computedSize"]]];
    v11 = objc_alloc_init(NSExpressionDescription);
    [v11 setName:@"sum_computedSize"];
    [v11 setExpression:v10];
    [v11 setExpressionResultType:300];
    v12 = objc_alloc_init(NSFetchRequest);
    [v12 setEntity:v2];
    [v12 setPredicate:v9];
    [v12 setResultType:2];
    [v12 setPropertiesToFetch:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", v11, 0)}];

    v17 = 0;
    v13 = [*(a1 + 40) executeFetchRequest:v12 error:&v17];
    if (!v13)
    {
      if (v17)
      {
        v14 = BCDefaultLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_13CDC(&v17);
        }
      }
    }

    v15 = BCDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_13D44();
    }

    if ([v13 count] == &dword_0 + 1)
    {
      **(a1 + 64) = [objc_msgSend(objc_msgSend(v13 "lastObject")];
      *(*(a1 + 64) + 8) = [*(*(*(a1 + 56) + 8) + 40) count];
    }

    else
    {
      v16 = *(a1 + 64);
      *v16 = 0;
      v16[1] = 0;
    }
  }
}

void sub_F950(uint64_t a1)
{
  v2 = [*(a1 + 32) entities:@"BCOutstandingAsset" byPredicate:+[NSPredicate predicateWithFormat:](NSPredicate fromMOC:{"predicateWithFormat:", @"restoreRelated == %d", *(a1 + 56)), *(a1 + 40)}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v11 + 1) + 8 * v6) assetDictionaryAsDictionary];
        if (v7)
        {
          [*(a1 + 48) addObject:v7];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v19 count:16];
    }

    while (v4);
  }

  v8 = BCDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v2 count];
    v10 = *(a1 + 56);
    *buf = 67109376;
    v16 = v9;
    v17 = 1024;
    v18 = v10;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Assets by Restore Flag: %d Assets [Flag: %d]", buf, 0xEu);
  }
}

id sub_FC14(uint64_t a1)
{
  v31 = [NSNumber numberWithBool:*(a1 + 64)];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = *(a1 + 32);
  v33 = a1;
  v2 = [obj countByEnumeratingWithState:&v34 objects:v41 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v35;
    v6 = &ATGetDiskUsageForPath_ptr;
    do
    {
      v7 = 0;
      do
      {
        if (*v35 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v34 + 1) + 8 * v7);
        v9 = v6[100];
        v10 = objc_opt_class();
        v11 = BCDynamicCast(v10, v8);
        v12 = objc_opt_class();
        v13 = BCDynamicCast(v12, [v11 objectForKey:@"Persistent ID"]);
        if ([v13 length])
        {
          if (([v13 isEqualToString:v4] & 1) == 0)
          {
            v14 = v6;
            v15 = objc_opt_class();
            v16 = BCDynamicCast(v15, [v11 objectForKey:@"Path"]);
            v17 = objc_opt_class();
            v18 = BCDynamicCast(v17, [v11 objectForKey:@"Backup-Path"]);
            if (*(v33 + 64) != 1 || (v19 = v18, [v16 length]) || objc_msgSend(v19, "length"))
            {
              v20 = [NSEntityDescription insertNewObjectForEntityForName:@"BCOutstandingAsset" inManagedObjectContext:*(v33 + 40)];
              [(NSManagedObject *)v20 setPersistentID:v13];
              [(NSManagedObject *)v20 setRestoreRelated:v31];
              [(NSManagedObject *)v20 setAssetDictionaryAsDictionary:v11];
              v21 = BCDefaultLog();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                v22 = *(v33 + 64);
                *buf = 138412546;
                *&buf[4] = v13;
                v39 = 1024;
                LODWORD(v40) = v22;
                _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "Inserting asset row: %@ -- [Restore Flag: %d]", buf, 0x12u);
              }

              v6 = v14;
              v4 = v13;
            }

            else
            {
              v26 = BCDefaultLog();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                *&buf[4] = v13;
                _os_log_error_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "Wanted to insert restore asset without a path: %@", buf, 0xCu);
              }

              v6 = v14;
            }
          }
        }

        else
        {
          v23 = BCDefaultLog();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v24 = [v11 objectForKey:@"Artist"];
            v25 = [v11 objectForKey:@"Name"];
            *buf = 138412546;
            *&buf[4] = v24;
            v39 = 2112;
            v40 = v25;
            _os_log_error_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "Wanted to insert asset without a PID: {%@ - %@}", buf, 0x16u);
          }
        }

        v7 = v7 + 1;
      }

      while (v3 != v7);
      v27 = [obj countByEnumeratingWithState:&v34 objects:v41 count:16];
      v3 = v27;
    }

    while (v27);
  }

  *buf = 0;
  result = [*(v33 + 40) save:buf];
  if ((result & 1) == 0)
  {
    if (*buf)
    {
      v29 = BCDefaultLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_13DB8(buf);
      }
    }

    v30 = +[NSAssertionHandler currentHandler];
    return -[NSAssertionHandler handleFailureInMethod:object:file:lineNumber:description:](v30, "handleFailureInMethod:object:file:lineNumber:description:", *(v33 + 56), *(v33 + 48), @"BCAssetDatabase.m", 329, @"Error saving MOC: %@ -- User Info: %@", *buf, [*buf userInfo]);
  }

  return result;
}

id sub_101B8(uint64_t a1)
{
  v36 = [NSNumber numberWithBool:*(a1 + 64)];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v39;
    do
    {
      v5 = 0;
      do
      {
        if (*v39 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v38 + 1) + 8 * v5);
        v7 = objc_opt_class();
        v8 = BCDynamicCast(v7, v6);
        v9 = objc_opt_class();
        v10 = BCDynamicCast(v9, [v8 objectForKey:@"Persistent ID"]);
        if (![v10 length])
        {
          v23 = BCDefaultLog();
          if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_21;
          }

          v24 = [v8 objectForKey:@"Artist"];
          v25 = [v8 objectForKey:@"Name"];
          *buf = 138412546;
          *&buf[4] = v24;
          v43 = 2112;
          v44 = v25;
          v26 = v23;
          v27 = "Wanted to insert asset without a PID: {%@ - %@}";
          v28 = 22;
          goto LABEL_17;
        }

        v11 = objc_opt_class();
        v12 = BCDynamicCast(v11, [v8 objectForKey:@"Path"]);
        v13 = objc_opt_class();
        v14 = BCDynamicCast(v13, [v8 objectForKey:@"Backup-Path"]);
        if (*(a1 + 64) != 1 || (v15 = v14, [v12 length]) || objc_msgSend(v15, "length"))
        {
          v16 = [*(a1 + 40) entities:@"BCOutstandingAsset" byPredicate:+[NSPredicate predicateWithFormat:](NSPredicate fromMOC:{"predicateWithFormat:", @"persistentID == %@", v10), *(a1 + 48)}];
          if (![v16 count])
          {
            goto LABEL_21;
          }

          v17 = [v16 lastObject];
          v18 = v17;
          if ((*(a1 + 64) & 1) != 0 || ![objc_msgSend(v17 "restoreRelated")])
          {
            [v18 setPersistentID:v10];
            [v18 setRestoreRelated:v36];
            [v18 setAssetDictionaryAsDictionary:v8];
            v29 = BCDefaultLog();
            if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_21;
            }

            v30 = *(a1 + 64);
            *buf = 138412546;
            *&buf[4] = v10;
            v43 = 1024;
            LODWORD(v44) = v30;
            v20 = v29;
            v21 = "Patching existing asset row: %@ -- [Restore Flag: %d]";
            v22 = 18;
          }

          else
          {
            v19 = BCDefaultLog();
            if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_21;
            }

            *buf = 138412290;
            *&buf[4] = v10;
            v20 = v19;
            v21 = "Skipping existing asset row due to restore flag mismatch: %@";
            v22 = 12;
          }

          _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, v21, buf, v22);
        }

        else
        {
          v31 = BCDefaultLog();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v10;
            v26 = v31;
            v27 = "Wanted to update restore asset without a path: %@";
            v28 = 12;
LABEL_17:
            _os_log_error_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, v27, buf, v28);
          }
        }

LABEL_21:
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v32 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
      v3 = v32;
    }

    while (v32);
  }

  *buf = 0;
  result = [*(a1 + 48) save:buf];
  if ((result & 1) == 0)
  {
    if (*buf)
    {
      v34 = BCDefaultLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        sub_13DB8(buf);
      }
    }

    v35 = +[NSAssertionHandler currentHandler];
    return -[NSAssertionHandler handleFailureInMethod:object:file:lineNumber:description:](v35, "handleFailureInMethod:object:file:lineNumber:description:", *(a1 + 56), *(a1 + 40), @"BCAssetDatabase.m", 389, @"Error saving MOC: %@ -- User Info: %@", *buf, [*buf userInfo]);
  }

  return result;
}

id sub_10774(uint64_t a1)
{
  v2 = [NSPredicate predicateWithFormat:@"NOT (persistentID IN %@)", *(a1 + 32)];
  v3 = +[NSMutableArray array];
  v4 = [*(a1 + 40) entities:@"BCOutstandingAsset" byPredicate:v2 fromMOC:*(a1 + 48)];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v28 + 1) + 8 * i);
        if ([objc_msgSend(v9 "downloadCompletePath")])
        {
          [v3 addObject:{objc_msgSend(v9, "downloadCompletePath")}];
        }

        v10 = BCDefaultLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v9;
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Removing outstanding asset %@", buf, 0xCu);
        }

        [*(a1 + 48) deleteObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v6);
  }

  v11 = BCDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v4 count];
    v13 = [v3 count];
    *buf = 67109376;
    *&buf[4] = v12;
    *&buf[8] = 1024;
    *&buf[10] = v13;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Removing unnecessary outstanding assets -- [Matched: %d] [Paths to delete: %d]", buf, 0xEu);
  }

  v14 = +[NSFileManager defaultManager];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v15 = [v3 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v3);
        }

        v19 = *(*(&v24 + 1) + 8 * j);
        v20 = BCDefaultLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v19;
          _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "Removing file at path %@", buf, 0xCu);
        }

        [(NSFileManager *)v14 removeItemAtPath:v19 error:0];
      }

      v16 = [v3 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v16);
  }

  *buf = 0;
  result = [*(a1 + 48) save:buf];
  if ((result & 1) == 0)
  {
    if (*buf)
    {
      v22 = BCDefaultLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_13E20(buf);
      }
    }

    v23 = +[NSAssertionHandler currentHandler];
    return -[NSAssertionHandler handleFailureInMethod:object:file:lineNumber:description:](v23, "handleFailureInMethod:object:file:lineNumber:description:", *(a1 + 56), *(a1 + 40), @"BCAssetDatabase.m", 435, @"{%@} - Error saving MOC: %@ -- User Info: %@", @"BCOutstandingAsset", *buf, [*buf userInfo]);
  }

  return result;
}

id sub_10F30(uint64_t a1)
{
  if ([*(a1 + 32) length])
  {
    v2 = [*(a1 + 40) entities:@"BCOutstandingAsset" byPredicate:+[NSPredicate predicateWithFormat:](NSPredicate fromMOC:{"predicateWithFormat:", @"persistentID == %@", *(a1 + 32)), *(a1 + 48)}];
    if ([v2 count])
    {
      v3 = [v2 lastObject];
      if ([objc_msgSend(v3 "downloadCompletePath")])
      {
        v4 = BCDefaultLog();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v5 = *(a1 + 32);
          v6 = *(a1 + 56);
          *buf = 138412546;
          *&buf[4] = v5;
          v16 = 2112;
          v17 = v6;
          v7 = "Existing asset row: %@ -- [Same Path: %@]";
LABEL_10:
          _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, v7, buf, 0x16u);
        }
      }

      else
      {
        [v3 setDownloadCompletePath:*(a1 + 56)];
        v4 = BCDefaultLog();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(a1 + 32);
          v11 = *(a1 + 56);
          *buf = 138412546;
          *&buf[4] = v10;
          v16 = 2112;
          v17 = v11;
          v7 = "Updating existing asset row: %@ -- [Path: %@]";
          goto LABEL_10;
        }
      }
    }

    else
    {
      v4 = BCDefaultLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        v9 = *(a1 + 56);
        *buf = 138412546;
        *&buf[4] = v8;
        v16 = 2112;
        v17 = v9;
        v7 = "No existing asset row: %@ -- [Path: %@]";
        goto LABEL_10;
      }
    }
  }

  result = [*(a1 + 48) hasChanges];
  if (result)
  {
    *buf = 0;
    result = [*(a1 + 48) save:buf];
    if ((result & 1) == 0)
    {
      if (*buf)
      {
        v13 = BCDefaultLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_13DB8(buf);
        }
      }

      v14 = +[NSAssertionHandler currentHandler];
      return -[NSAssertionHandler handleFailureInMethod:object:file:lineNumber:description:](v14, "handleFailureInMethod:object:file:lineNumber:description:", *(a1 + 64), *(a1 + 40), @"BCAssetDatabase.m", 508, @"Error saving MOC: %@ -- User Info: %@", *buf, [*buf userInfo]);
    }
  }

  return result;
}

void sub_11308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_11324(uint64_t a1)
{
  v2 = [NSEntityDescription entityForName:@"BCOutstandingAsset" inManagedObjectContext:*(a1 + 32)];
  v3 = [NSPredicate predicateWithFormat:@"downloadCompletePath IN %@", *(a1 + 40)];
  v4 = objc_alloc_init(NSFetchRequest);
  [v4 setEntity:v2];
  [v4 setPredicate:v3];
  [v4 setResultType:2];
  [v4 setPropertiesToFetch:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", @"downloadCompletePath", 0)}];
  v11 = 0;
  v5 = [*(a1 + 32) executeFetchRequest:v4 error:&v11];
  if (!v5)
  {
    if (v11)
    {
      v6 = BCDefaultLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_13CDC(&v11);
      }
    }
  }

  v7 = BCDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 40) count];
    v9 = [v5 count];
    *buf = 67109376;
    v13 = v8;
    v14 = 1024;
    v15 = v9;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Input count: %d; Output count: %d", buf, 0xEu);
  }

  result = [v5 valueForKeyPath:@"downloadCompletePath"];
  *(*(*(a1 + 48) + 8) + 40) = result;
  return result;
}

void sub_115E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

NSDictionary *sub_115FC(uint64_t a1)
{
  v2 = [NSEntityDescription entityForName:@"BCOutstandingAsset" inManagedObjectContext:*(a1 + 32)];
  v3 = +[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"downloadCompletePath != %@", +[NSNull null]);
  v4 = objc_alloc_init(NSFetchRequest);
  [v4 setEntity:v2];
  [v4 setPredicate:v3];
  [v4 setResultType:2];
  [v4 setPropertiesToFetch:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", @"downloadCompletePath", @"persistentID", 0)}];
  v10 = 0;
  v5 = [*(a1 + 32) executeFetchRequest:v4 error:&v10];
  if (!v5)
  {
    if (v10)
    {
      v6 = BCDefaultLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_13CDC(&v10);
      }
    }
  }

  v7 = [v5 valueForKeyPath:@"persistentID"];
  v8 = [v5 valueForKeyPath:@"downloadCompletePath"];
  result = [v7 count];
  if (result)
  {
    result = [NSDictionary dictionaryWithObjects:v8 forKeys:v7];
    *(*(*(a1 + 40) + 8) + 40) = result;
  }

  return result;
}

id sub_118FC(uint64_t a1)
{
  v2 = [NSNumber numberWithUnsignedLongLong:*(a1 + 56)];
  v3 = [*(a1 + 40) entities:@"BCInstalledAsset" byPredicate:+[NSPredicate predicateWithFormat:](NSPredicate fromMOC:{"predicateWithFormat:", @"persistentID == %@", *(a1 + 32)), *(a1 + 48)}];
  if ([v3 count])
  {
    [objc_msgSend(v3 "lastObject")];
    v4 = BCDefaultLog();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v5 = *(a1 + 32);
    *buf = 138412546;
    *&buf[4] = v5;
    v13 = 2112;
    v14 = v2;
    v6 = "Updating installed asset row: %@ -- [Computed Size: %@]";
  }

  else
  {
    v7 = [NSEntityDescription insertNewObjectForEntityForName:@"BCInstalledAsset" inManagedObjectContext:*(a1 + 48)];
    [(NSManagedObject *)v7 setPersistentID:*(a1 + 32)];
    [(NSManagedObject *)v7 setComputedSize:v2];
    v4 = BCDefaultLog();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v8 = *(a1 + 32);
    *buf = 138412546;
    *&buf[4] = v8;
    v13 = 2112;
    v14 = v2;
    v6 = "Inserting installed asset row: %@ -- [Computed Size: %@]";
  }

  _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, v6, buf, 0x16u);
LABEL_7:
  *buf = 0;
  result = [*(a1 + 48) save:buf];
  if ((result & 1) == 0)
  {
    if (*buf)
    {
      v10 = BCDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_13DB8(buf);
      }
    }

    v11 = +[NSAssertionHandler currentHandler];
    return -[NSAssertionHandler handleFailureInMethod:object:file:lineNumber:description:](v11, "handleFailureInMethod:object:file:lineNumber:description:", *(a1 + 64), *(a1 + 40), @"BCAssetDatabase.m", 645, @"Error saving MOC: %@ -- User Info: %@", *buf, [*buf userInfo]);
  }

  return result;
}

uint64_t *sub_11B14@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

uint64_t BCDefaultLog()
{
  if (qword_267F8 != -1)
  {
    sub_13F0C();
  }

  return qword_267F0;
}

void sub_11EEC()
{
  sub_B1E8();
  sub_B1F4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_11F5C()
{
  sub_B1E8();
  sub_B1F4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_11FCC()
{
  sub_B1E8();
  sub_B1F4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1203C(uint64_t a1, uint64_t a2)
{
  sub_B25C(a1, a2, 5.7779e-34);
  sub_B238();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1207C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_B1E8();
  sub_B218(&dword_0, v3, v4, "Error changing modification date of %@ -- %@");
}

void sub_120F4(uint64_t a1, uint64_t a2)
{
  sub_B25C(a1, a2, 5.7779e-34);
  sub_B238();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1219C(uint64_t a1, uint64_t a2)
{
  sub_B25C(a1, a2, 5.7779e-34);
  sub_B238();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

segment_command_64 *sub_12304()
{
  sub_B298();
  result = [v2 code];
  if (result == (&dword_4 + 3))
  {
    goto LABEL_16;
  }

  result = [v1 code];
  if (result == &dword_8)
  {
    goto LABEL_16;
  }

  result = [v1 code];
  if (result == (&dword_C + 2))
  {
    goto LABEL_16;
  }

  result = [v1 code];
  if (result == &dword_10)
  {
    goto LABEL_16;
  }

  result = [v1 code];
  if (result == (&dword_8 + 1))
  {
    goto LABEL_16;
  }

  result = [v1 code];
  if (result == (&dword_10 + 2))
  {
    goto LABEL_16;
  }

  result = [v1 code];
  if (result == &dword_4)
  {
    goto LABEL_16;
  }

  result = [v1 code];
  if (result == (&dword_10 + 3) || (result = [v1 code], result == &dword_14) || (result = objc_msgSend(v1, "code"), result == (&dword_18 + 1)) || (result = objc_msgSend(v1, "code"), result == (&dword_18 + 3)) || (result = objc_msgSend(v1, "code"), result == &dword_18) || (result = objc_msgSend(v1, "code"), result == (&dword_1C + 3)) || (result = objc_msgSend(v1, "code"), result == &stru_20) || (result = objc_msgSend(v1, "code"), result == (&stru_20.cmd + 1)))
  {
LABEL_16:
    v4 = @"Recoverable";
  }

  else
  {
    result = [v1 code];
    v4 = @"Recoverable";
    if (result != (&stru_20.cmd + 2))
    {
      result = [v1 code];
      if (result == (&stru_20.cmd + 3))
      {
        v4 = @"Recoverable";
      }

      else
      {
        v4 = @"Not Recoverable";
      }
    }
  }

  *v0 = v4;
  return result;
}

void sub_12454(uint64_t a1, uint64_t a2)
{
  sub_B25C(a1, a2, 5.7779e-34);
  sub_B238();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_12494()
{
  sub_B268();
  sub_B1F4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_12538(uint64_t *a1)
{
  sub_B2A4(a1, __stack_chk_guard);
  sub_B1D0();
  sub_B1F4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_125A8(uint64_t *a1)
{
  sub_B2A4(a1, __stack_chk_guard);
  sub_B1D0();
  sub_B1F4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_12618(uint64_t *a1)
{
  sub_B2A4(a1, __stack_chk_guard);
  sub_B1D0();
  sub_B1F4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_12688(uint64_t *a1)
{
  sub_B2A4(a1, __stack_chk_guard);
  sub_B1D0();
  sub_B1F4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_12948()
{
  sub_B1E8();
  sub_B1F4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_129B8()
{
  sub_B1E8();
  sub_B1F4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_12A28(void *a1, NSObject *a2)
{
  [a1 identifier];
  sub_B1E8();
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Keeping recoverable failed asset: %@", v3, 0xCu);
}

void sub_12B18(uint64_t a1, void *a2, NSObject *a3)
{
  [a2 database];
  v7 = 138412546;
  v8 = a1;
  sub_B274();
  v9 = v5;
  sub_B244(&dword_0, a3, v6, "Removing failed asset: %@ self.database=%@", &v7);
}

void sub_12C14()
{
  sub_B1E8();
  sub_B1F4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_12C84()
{
  sub_B298();
  objc_opt_class();
  v4 = 138412546;
  v5 = v1;
  sub_B274();
  v6 = v2;
  sub_B244(&dword_0, v0, v3, "The object [%@] of class: [%@] could be converted to neither an NSString nor an NSNumber", &v4);
}

void sub_12F18()
{
  sub_B1E8();
  sub_B1F4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_12F88()
{
  sub_B1E8();
  sub_B274();
  sub_B218(&dword_0, v0, v1, "Failed to add items to plist %@ -- %@");
}

id sub_12FF8()
{
  sub_B298();
  v2 = +[NSAssertionHandler currentHandler];

  return [(NSAssertionHandler *)v2 handleFailureInMethod:v1 object:v0 file:@"BooksClient.m" lineNumber:1695 description:@"empty prefix is not allowed"];
}

id sub_13050()
{
  sub_B298();
  v2 = +[NSAssertionHandler currentHandler];

  return [(NSAssertionHandler *)v2 handleFailureInMethod:v1 object:v0 file:@"BooksClient.m" lineNumber:1696 description:@"empty input path is not allowed"];
}

void sub_130BC()
{
  sub_B1E8();
  sub_B1F4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1312C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  LODWORD(v6) = 138412546;
  *(&v6 + 4) = *(a1 + 48);
  sub_B274();
  *v7 = v3;
  sub_B218(&dword_0, v4, v5, "Failed to delete file [%@] -- [Error: %@]", v6, DWORD2(v6), *&v7[2]);
}

void sub_131A8()
{
  sub_B268();
  sub_B1F4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_131E4()
{
  sub_B268();
  sub_B1F4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_13220()
{
  sub_B268();
  sub_B1F4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_13398(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v3 = *a2;
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "[BCGenerateDownloadSizePlistProducer] Error reading file attributes for %@. Error: %@", &v4, 0x16u);
}

void sub_13424(void *a1)
{
  [a1 objectForKeyedSubscript:@"Artist"];
  [a1 objectForKeyedSubscript:@"Name"];
  sub_E4B4();
  sub_E4CC(&dword_0, v2, v3, "[BCGenerateDownloadSizePlistProducer] Cannot read itunesMetadata.plist for {%@ - %@}", v4, v5, v6, v7, v8);
}

void sub_134CC(void *a1)
{
  [a1 objectForKeyedSubscript:@"Artist"];
  [a1 objectForKeyedSubscript:@"Name"];
  sub_E4B4();
  sub_E4CC(&dword_0, v2, v3, "[BCGenerateDownloadSizePlistProducer] Path is empty for {%@ - %@}", v4, v5, v6, v7, v8);
}

void sub_13574(void *a1)
{
  [a1 objectForKeyedSubscript:@"Artist"];
  [a1 objectForKeyedSubscript:@"Name"];
  sub_E4B4();
  sub_E4CC(&dword_0, v2, v3, "[BCGenerateDownloadSizePlistProducer] Path not found for {%@ - %@}", v4, v5, v6, v7, v8);
}

void sub_1361C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Error serializing asset to data -- %@", &v2, 0xCu);
}

void sub_13694(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Error deserializing data to asset -- %@", &v2, 0xCu);
}

id sub_1384C()
{
  sub_B298();
  v2 = +[NSAssertionHandler currentHandler];

  return [(NSAssertionHandler *)v2 handleFailureInMethod:v1 object:v0 file:@"BCDatabase.m" lineNumber:55 description:@"Invalid database path"];
}

void sub_13954(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Failed to addPersistentStoreWithType: <nil> error returned", buf, 2u);
}

void sub_13994(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Failed to destroyPersistentStoreAtURL: <nil> error returned", buf, 2u);
}

void sub_139D4(int *a1, NSObject *a2)
{
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Could not add PS to PSC, but retry-count exceeded: %d", v3, 8u);
}

void sub_13AD8(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_B1E8();
  sub_11B2C();
  sub_B218(&dword_0, v3, v4, "Failed to delete file [%@] -- [Error: %@]");
}

void sub_13BB0(uint64_t *a1)
{
  sub_11B14(a1, __stack_chk_guard);
  v2 = *v1;
  sub_11B20();
  sub_B218(&dword_0, v3, v4, "{%@} - Error saving MOC: %@");
}

void sub_13C28(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_B1E8();
  sub_11B2C();
  sub_B218(&dword_0, v3, v4, "Fetching %@: Error fetching from MOC: %@");
}

void sub_13CDC(uint64_t *a1)
{
  sub_11B14(a1, __stack_chk_guard);
  sub_11B20();
  sub_13DC(&dword_0, v1, v2, "Fetching: Error fetching from MOC: %@", v3, v4, v5, v6, v7);
}

void sub_13DB8(uint64_t *a1)
{
  sub_11B14(a1, __stack_chk_guard);
  sub_11B20();
  sub_13DC(&dword_0, v1, v2, "Error saving MOC: %@", v3, v4, v5, v6, v7);
}

void sub_13E20(uint64_t *a1)
{
  sub_11B14(a1, __stack_chk_guard);
  v2 = 138412546;
  v3 = @"BCOutstandingAsset";
  sub_11B2C();
  _os_log_error_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "{%@} - Error saving MOC: %@", &v2, 0x16u);
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v3 = _CFUUIDGetUUIDBytes(uuid);
  v2 = *&v3.byte8;
  v1 = *&v3.byte0;
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}