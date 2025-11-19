void sub_100001BA0(int a1)
{
  v2 = +[NSProcessInfo processInfo];
  v3 = [v2 processName];

  if ([v3 isEqualToString:@"BackupAgent2"])
  {
    sub_100029350();
    +[MBPersona removeBackupSnapshotsForPersonalPersona];
  }

  if (a1)
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v6 = a1;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "MBExit(%d)", buf, 8u);
      _MBLog();
    }
  }

  _MBLogFlushDeprecated();
  exit(a1);
}

id sub_100001C8C()
{
  sub_100029350();

  return +[MBPersona removeBackupSnapshotsForPersonalPersona];
}

void sub_10000470C(void *a1)
{
  if (qword_10011E2E8 != -1)
  {
    sub_10009B2D8();
  }

  v2 = qword_10011E2E0;
  dispatch_assert_queue_not_V2(qword_10011E2E0);

  dispatch_sync(v2, a1);
}

void sub_1000049D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100004A0C(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) count])
  {
    *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 8) objectAtIndexedSubscript:0];
    [*(*(a1 + 32) + 8) removeObjectAtIndex:0];
    v2 = MBGetDefaultLog();
    result = os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG);
    if (!result)
    {
      return result;
    }

    v4 = *(*(*(a1 + 40) + 8) + 40);
    *buf = 134217984;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Re-using cache from pool: %p", buf, 0xCu);
    v6 = *(*(*(a1 + 40) + 8) + 40);
  }

  else
  {
    v5 = MBGetDefaultLog();
    result = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Cache pool is empty", buf, 2u);
  }

  return _MBLog();
}

id sub_100004BDC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) count];
  v3 = MBGetDefaultLog();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (v2 > 7)
  {
    if (v4)
    {
      v7 = *(a1 + 40);
      *buf = 134217984;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Not adding to cache because pool is full: %p", buf, 0xCu);
      v8 = *(a1 + 40);
      _MBLog();
    }

    return [*(a1 + 32) _closeCache:{*(a1 + 40), v8}];
  }

  else
  {
    if (v4)
    {
      v5 = *(a1 + 40);
      *buf = 134217984;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Adding cache to pool: %p", buf, 0xCu);
      v8 = *(a1 + 40);
      _MBLog();
    }

    [*(*(a1 + 32) + 8) addObject:{*(a1 + 40), v8}];

    return [*(a1 + 32) _scheduleDrain];
  }
}

id sub_100004EA0(uint64_t a1)
{
  [*(a1 + 32) open];
  v2 = [MBAppManager appManagerWithSettingsContext:objc_alloc_init(MBSettingsContext)];
  v6 = 0;
  v3 = [MBPersona personalPersonaWithError:&v6];
  if (!v3)
  {
    sub_10009B300();
  }

  if (![(MBAppManager *)v2 loadAppsWithPersona:v3 safeHarbors:0 error:&v6])
  {
    v5 = [MBException alloc];
    objc_exception_throw([v5 initWithCode:1 format:{@"Error loading apps: %@", +[MBError descriptionForError:](MBError, "descriptionForError:", v6)}]);
  }

  return [*(a1 + 32) setDisabledDomainNames:-[MBAppManager allDisabledDomainNames](v2 restrictedDomainNames:{"allDisabledDomainNames"), -[MBAppManager allRestrictedDomainNames](v2, "allRestrictedDomainNames")}];
}

void sub_10000557C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v10 - 136), 8);
  _Unwind_Resume(a1);
}

intptr_t sub_1000055CC(void *a1, void *a2, void *a3, void *a4)
{
  *(*(a1[5] + 8) + 40) = a2;
  *(*(a1[6] + 8) + 40) = a3;
  *(*(a1[7] + 8) + 40) = a4;
  v7 = a1[4];

  return dispatch_semaphore_signal(v7);
}

void sub_1000058DC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 96), 8);
  _Unwind_Resume(a1);
}

id sub_100005914(uint64_t a1, void *a2)
{
  result = a2;
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

id sub_100005944(void *a1, void *a2)
{
  v4 = [*(*(a1[5] + 8) + 40) length];
  if ((v4 + [a2 length]) >> 20 > 4)
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Response from the server is too large. Bailing.", v8, 2u);
      _MBLog();
    }

    [*(*(a1[6] + 8) + 40) cancel];
    [MBError errorWithDomain:NSURLErrorDomain code:-1103 format:@"Response body too large"];
    return (*(a1[4] + 16))();
  }

  else
  {
    v5 = *(*(a1[5] + 8) + 40);

    return [v5 appendData:a2];
  }
}

uint64_t sub_100005A78(void *a1)
{
  *(*(a1[5] + 8) + 40) = 0;

  *(*(a1[6] + 8) + 40) = 0;
  v2 = *(a1[4] + 16);

  return v2();
}

uint64_t sub_100005AFC(void *a1)
{
  v2 = a1[4];
  v3 = *(*(a1[5] + 8) + 40);
  v4 = *(*(a1[6] + 8) + 40);
  v5 = *(v2 + 16);

  return v5(v2, v3, v4, 0);
}

uint64_t sub_100006014(uint64_t result)
{
  v2 = *(result + 32);
  if ((*(v2 + 40) & 1) == 0)
  {
    v3 = result;
    [*(v2 + 16) cancel];
    [MBError errorWithDomain:NSURLErrorDomain code:-999 format:@"Request cancelled"];
    v4 = *(*(*(v3 + 32) + 64) + 16);

    return v4();
  }

  return result;
}

NSString *sub_100006724()
{
  v0 = MBProductVersion();
  v1 = MBBuildVersion();
  return [NSString stringWithFormat:@"%@/%@ (%@; %@)", @"MobileBackup", v0, v1, MBProductType()];
}

id sub_100008218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) objectAtIndexedSubscript:a2];
  v6 = [v4 removeItemAtPath:v5 error:a3];

  return v6;
}

id sub_100008348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) objectAtIndexedSubscript:a2];
  v8 = [*(a1 + 48) objectAtIndexedSubscript:a2];
  v9 = [v6 moveItemAtPath:v7 toPath:v8 error:a3];

  return v9;
}

void sub_10000983C(void *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x10000979CLL);
  }

  JUMPOUT(0x100009828);
}

uint64_t sub_10000AA6C(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v39[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v39[0] & 0x7F) << v5;
        if ((v39[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = (v11 >> 3);
      if (v12 <= 2)
      {
        if (v12 == 1)
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          *(a1 + 44) |= 8u;
          while (1)
          {
            LOBYTE(v39[0]) = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v33 |= (v39[0] & 0x7F) << v31;
            if ((v39[0] & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v10 = v32++ >= 9;
            if (v10)
            {
              v36 = 0;
              goto LABEL_71;
            }
          }

          if ([a2 hasError])
          {
            v36 = 0;
          }

          else
          {
            v36 = v33;
          }

LABEL_71:
          *(a1 + 40) = v36;
          goto LABEL_81;
        }

        if (v12 == 2)
        {
          v19 = 0;
          v20 = 0;
          v21 = 0;
          *(a1 + 44) |= 4u;
          while (1)
          {
            LOBYTE(v39[0]) = 0;
            v22 = [a2 position] + 1;
            if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v21 |= (v39[0] & 0x7F) << v19;
            if ((v39[0] & 0x80) == 0)
            {
              break;
            }

            v19 += 7;
            v10 = v20++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_79;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v21;
          }

LABEL_79:
          v37 = 24;
          goto LABEL_80;
        }
      }

      else
      {
        switch(v12)
        {
          case 3u:
            v24 = 0;
            v25 = 0;
            v26 = 0;
            *(a1 + 44) |= 2u;
            while (1)
            {
              LOBYTE(v39[0]) = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (v39[0] & 0x7F) << v24;
              if ((v39[0] & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v10 = v25++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_67;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v26;
            }

LABEL_67:
            v37 = 16;
            goto LABEL_80;
          case 5u:
            v29 = objc_alloc_init(MBSSnapshotAttributes);

            *(a1 + 32) = v29;
            v39[0] = 0;
            v39[1] = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_10000BAF8(v29, a2);
            if (!result)
            {
              return result;
            }

            PBReaderRecallMark();
            goto LABEL_81;
          case 6u:
            v13 = 0;
            v14 = 0;
            v15 = 0;
            *(a1 + 44) |= 1u;
            while (1)
            {
              LOBYTE(v39[0]) = 0;
              v16 = [a2 position] + 1;
              if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v15 |= (v39[0] & 0x7F) << v13;
              if ((v39[0] & 0x80) == 0)
              {
                break;
              }

              v13 += 7;
              v10 = v14++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_75;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v15;
            }

LABEL_75:
            v37 = 8;
LABEL_80:
            *(a1 + v37) = v18;
            goto LABEL_81;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_81:
      v38 = [a2 position];
    }

    while (v38 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10000BAF8(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v38 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v38 & 0x7F) << v5;
        if ((v38 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = (v11 >> 3);
      if (v12 <= 3)
      {
        switch(v12)
        {
          case 1u:
            String = PBReaderReadString();

            v14 = String;
            v15 = 24;
            break;
          case 2u:
            v35 = PBReaderReadString();

            v14 = v35;
            v15 = 48;
            break;
          case 3u:
            v16 = PBReaderReadString();

            v14 = v16;
            v15 = 16;
            break;
          default:
            goto LABEL_38;
        }
      }

      else
      {
        if ((v11 >> 3) > 5u)
        {
          if (v12 == 6)
          {
            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 56) |= 1u;
            while (1)
            {
              v41 = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v41 & 0x7F) << v30;
              if ((v41 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v10 = v31++ >= 9;
              if (v10)
              {
                v22 = 0;
                goto LABEL_67;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v32;
            }

LABEL_67:
            v36 = 8;
          }

          else
          {
            if (v12 != 7)
            {
LABEL_38:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_73;
            }

            v17 = 0;
            v18 = 0;
            v19 = 0;
            *(a1 + 56) |= 2u;
            while (1)
            {
              v40 = 0;
              v20 = [a2 position] + 1;
              if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v19 |= (v40 & 0x7F) << v17;
              if ((v40 & 0x80) == 0)
              {
                break;
              }

              v17 += 7;
              v10 = v18++ >= 9;
              if (v10)
              {
                v22 = 0;
                goto LABEL_71;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v19;
            }

LABEL_71:
            v36 = 12;
          }

          goto LABEL_72;
        }

        if (v12 == 4)
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          *(a1 + 56) |= 4u;
          while (1)
          {
            v39 = 0;
            v28 = [a2 position] + 1;
            if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v27 |= (v39 & 0x7F) << v25;
            if ((v39 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v10 = v26++ >= 9;
            if (v10)
            {
              v22 = 0;
              goto LABEL_63;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v27;
          }

LABEL_63:
          v36 = 32;
LABEL_72:
          *(a1 + v36) = v22;
          goto LABEL_73;
        }

        if (v12 != 5)
        {
          goto LABEL_38;
        }

        Data = PBReaderReadData();

        v14 = Data;
        v15 = 40;
      }

      *(a1 + v15) = v14;
LABEL_73:
      v37 = [a2 position];
    }

    while (v37 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10000CA58(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v16 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        break;
      }

      if (((v11 >> 3) - 1) >= 7u)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v12 = (&off_1000FD508)[((v11 >> 3) - 1)];
        String = PBReaderReadString();

        *(a1 + *v12) = String;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_10000D2DC(void *a1, int a2, uint64_t a3)
{
  v5 = a1;
  v6 = v5;
  if (atomic_fetch_add_explicit(&dword_10011E2F0, 1u, memory_order_relaxed) <= 1)
  {
    sub_10000D3F4(v5);
    if (MBIsInternalInstall())
    {
      v7 = MBGetDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446722;
        v9 = a3;
        v10 = 1024;
        v11 = a2;
        v12 = 2114;
        v13 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "=diag= %{public}s failed with %d at %{public}@", buf, 0x1Cu);
        _MBLog();
      }
    }
  }
}

void sub_10000D3F4(void *a1)
{
  v1 = a1;
  v2 = geteuid();
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      buf.f_bsize = 138543618;
      *&buf.f_iosize = v1;
      WORD2(buf.f_blocks) = 1024;
      *(&buf.f_blocks + 6) = v2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "=diag= Dumping diagnostics for %{public}@ (%d)", &buf, 0x12u);
    }

    f_iosize = v2;
    _MBLog();
  }

  v5 = [v1 fileSystemRepresentation];
  v6 = [v1 lastPathComponent];
  v7 = [v6 fileSystemRepresentation];

  v8 = [v1 stringByDeletingLastPathComponent];
  v9 = [v8 fileSystemRepresentation];

  if (v1)
  {
    if (!v5)
    {
      v15 = MBGetDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.f_bsize) = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "=diag= nil path FSR", &buf, 2u);
        goto LABEL_218;
      }

      goto LABEL_219;
    }

    if (!v7)
    {
      v15 = MBGetDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.f_bsize) = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "=diag= nil name FSR", &buf, 2u);
        goto LABEL_218;
      }

      goto LABEL_219;
    }

    if (v9)
    {
      if (access(v5, 4))
      {
        v10 = *__error();
        v11 = MBGetDefaultLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = v11;
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            buf.f_bsize = 67109120;
            buf.f_iosize = v10;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "=diag= access(R_OK) failed: %{errno}d", &buf, 8u);
          }

          _MBLog();
        }

        if (access(v5, 0))
        {
          v13 = *__error();
          v14 = MBGetDefaultLog();
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_33;
          }

          v14 = v14;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            buf.f_bsize = 67109120;
            buf.f_iosize = v13;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "=diag= access(F_OK) failed: %{errno}d", &buf, 8u);
          }
        }

        else
        {
          v14 = MBGetDefaultLog();
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_33;
          }

          v14 = v14;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            buf.f_bsize = 67109120;
            buf.f_iosize = 0;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "=diag= access(F_OK): %d", &buf, 8u);
          }
        }
      }

      else
      {
        v14 = MBGetDefaultLog();
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_33;
        }

        v14 = v14;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          buf.f_bsize = 67109120;
          buf.f_iosize = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "=diag= access(R_OK): %d", &buf, 8u);
        }
      }

      _MBLog();
LABEL_33:

      memset(&v267, 0, sizeof(v267));
      if (stat(v5, &v267))
      {
        v16 = *__error();
        v17 = MBGetDefaultLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v17 = v17;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            buf.f_bsize = 67109120;
            buf.f_iosize = v16;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "=diag= stat failed: %{errno}d", &buf, 8u);
          }

          _MBLog();
        }

        st_ino = 0;
      }

      else
      {
        st_ino = v267.st_ino;
        v17 = MBGetDefaultLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v17 = v17;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            buf.f_bsize = 67113472;
            buf.f_iosize = v267.st_dev;
            LOWORD(buf.f_blocks) = 2048;
            *(&buf.f_blocks + 2) = v267.st_ino;
            WORD1(buf.f_bfree) = 1024;
            HIDWORD(buf.f_bfree) = v267.st_mode;
            LOWORD(buf.f_bavail) = 1024;
            *(&buf.f_bavail + 2) = v267.st_nlink;
            HIWORD(buf.f_bavail) = 1024;
            LODWORD(buf.f_files) = v267.st_uid;
            WORD2(buf.f_files) = 1024;
            *(&buf.f_files + 6) = v267.st_gid;
            WORD1(buf.f_ffree) = 1024;
            HIDWORD(buf.f_ffree) = v267.st_rdev;
            LOWORD(buf.f_fsid.val[0]) = 2048;
            *(&buf.f_fsid + 2) = v267.st_atimespec.tv_sec;
            HIWORD(buf.f_owner) = 2048;
            *&buf.f_type = v267.st_atimespec.tv_nsec;
            LOWORD(buf.f_fssubtype) = 2048;
            *(&buf.f_fssubtype + 2) = v267.st_mtimespec.tv_sec;
            *&buf.f_fstypename[6] = 2048;
            *&buf.f_fstypename[8] = v267.st_mtimespec.tv_nsec;
            *buf.f_mntonname = 2048;
            *&buf.f_mntonname[2] = v267.st_ctimespec.tv_sec;
            *&buf.f_mntonname[10] = 2048;
            *&buf.f_mntonname[12] = v267.st_ctimespec.tv_nsec;
            *&buf.f_mntonname[20] = 2048;
            *&buf.f_mntonname[22] = v267.st_size;
            *&buf.f_mntonname[30] = 2048;
            *&buf.f_mntonname[32] = v267.st_blocks << 9;
            *&buf.f_mntonname[40] = 1024;
            *&buf.f_mntonname[42] = v267.st_blksize;
            *&buf.f_mntonname[46] = 1024;
            *&buf.f_mntonname[48] = v267.st_flags;
            *&buf.f_mntonname[52] = 1024;
            *&buf.f_mntonname[54] = v267.st_gen;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "=diag= stat: dev %d, ino %llu, mode 0%o, nlink %u, uid %u, gid %u, rdev %d, atime %lu.%ld, mtime %lu.%ld, ctime %lu.%ld, lgsize %lld, physize %lld, blksize %d, flags %u, gen %u", &buf, 0x92u);
          }

          st_flags = v267.st_flags;
          st_gen = v267.st_gen;
          v229 = v267.st_blocks << 9;
          st_blksize = v267.st_blksize;
          st_size = v267.st_size;
          st_ctimespec = v267.st_ctimespec;
          st_mtimespec = v267.st_mtimespec;
          st_atimespec = v267.st_atimespec;
          *(&v223 + 1) = v267.st_gid;
          st_rdev = v267.st_rdev;
          *(&v221 + 1) = v267.st_nlink;
          *&v223 = v267.st_uid;
          f_iosize = v267.st_ino;
          *&v221 = v267.st_mode;
          _MBLog();
        }
      }

      v265 = xmmword_1000B7120;
      v266 = 0x1800000403;
      memset(v264, 0, sizeof(v264));
      v262 = 0u;
      v263 = 0u;
      v261 = 0u;
      v260 = 0u;
      v245 = v5;
      if (getattrlist(v5, &v265, &v260, 0x64uLL, 0x29u))
      {
        v19 = *__error();
        v20 = MBGetDefaultLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v20 = v20;
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            buf.f_bsize = 67109120;
            buf.f_iosize = v19;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "=diag= getattrlist failed: %{errno}d", &buf, 8u);
          }

          _MBLog();
        }
      }

      else
      {
        if (!st_ino)
        {
          if ((BYTE7(v260) & 2) != 0)
          {
            st_ino = *(&v263 + 4);
          }

          else
          {
            st_ino = 0;
          }
        }

        if (HIDWORD(v261) != 1)
        {
          v21 = MBGetDefaultLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = st_ino;
            v23 = v21;
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf.f_bsize) = 0;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "=diag= warning: not a regular file, link info and sizes will be garbage", &buf, 2u);
            }

            _MBLog();
            st_ino = v22;
          }
        }

        v20 = MBGetDefaultLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v20 = v20;
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            buf.f_iosize = v260;
            *(&buf.f_blocks + 2) = (DWORD1(v260) >> 1) & 1;
            LODWORD(buf.f_bfree) = DWORD2(v261);
            *(&buf.f_bfree + 6) = (DWORD1(v260) >> 3) & 1;
            HIDWORD(buf.f_bavail) = HIDWORD(v261);
            *(&buf.f_files + 2) = (DWORD1(v260) >> 25) & 1;
            buf.f_ffree = *(&v263 + 4);
            *(buf.f_fsid.val + 2) = (DWORD1(v260) >> 15) & 1;
            buf.f_owner = v262;
            *(&buf.f_type + 2) = HIWORD(DWORD1(v260)) & 1;
            buf.f_fssubtype = DWORD1(v262);
            *&buf.f_fstypename[2] = (DWORD1(v260) >> 17) & 1;
            *&buf.f_fstypename[8] = DWORD2(v262);
            *&buf.f_fstypename[14] = (DWORD1(v260) >> 18) & 1;
            *&buf.f_mntonname[4] = HIDWORD(v262);
            *&buf.f_mntonname[10] = (DWORD1(v260) >> 19) & 1;
            *&buf.f_mntonname[16] = v263;
            *&buf.f_mntonname[22] = (DWORD1(v260) >> 30) & 1;
            *&buf.f_mntonname[28] = HIDWORD(v263);
            *&buf.f_mntonname[34] = v261 & 1;
            *&buf.f_mntonname[40] = v264[0];
            *&buf.f_mntonname[46] = (v261 >> 1) & 1;
            *&buf.f_mntonname[52] = *&v264[1];
            *&buf.f_mntonname[62] = (v261 >> 10) & 1;
            *&buf.f_mntonname[68] = *&v264[3];
            *&buf.f_mntonname[78] = (DWORD1(v261) >> 3) & 1;
            *&buf.f_mntonname[84] = *&v264[5];
            LOWORD(buf.f_blocks) = 1024;
            HIWORD(buf.f_blocks) = 1024;
            WORD2(buf.f_bfree) = 1024;
            WORD1(buf.f_bavail) = 1024;
            LOWORD(buf.f_files) = 1024;
            LOWORD(buf.f_fsid.val[0]) = 1024;
            HIWORD(buf.f_fsid.val[1]) = 1024;
            LOWORD(buf.f_type) = 1024;
            HIWORD(buf.f_flags) = 1024;
            *buf.f_fstypename = 1024;
            *&buf.f_fstypename[6] = 1024;
            *&buf.f_fstypename[12] = 1024;
            *&buf.f_mntonname[2] = 1024;
            *&buf.f_mntonname[8] = 1024;
            *&buf.f_mntonname[14] = 1024;
            *&buf.f_mntonname[20] = 1024;
            *&buf.f_mntonname[26] = 1024;
            *&buf.f_mntonname[32] = 1024;
            *&buf.f_mntonname[38] = 1024;
            *&buf.f_mntonname[44] = 1024;
            *&buf.f_mntonname[60] = 1024;
            *&buf.f_mntonname[76] = 1024;
            *&buf.f_mntonname[92] = 1024;
            *&buf.f_mntonname[94] = (DWORD1(v261) >> 4) & 1;
            HIWORD(buf.f_files) = 2048;
            *&buf.f_mntonname[50] = 2048;
            *&buf.f_mntonname[66] = 2048;
            *&buf.f_mntonname[82] = 2048;
            *&buf.f_mntonname[98] = 2048;
            *&buf.f_mntonname[100] = *&v264[7];
            buf.f_bsize = 67116288;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "=diag= getattrlist: len %u, dev (%d)%d, type (%d)%u, fileId (%d)%llu, uid (%d)%u, gid (%d)%u, access (%d)0%o, flags (%d)0x%x, gencount (%d)%u, protclass (%d)%u, nlink (%d)%u, lgsize (%d)%lld, physize (%d)%lld, realsize (%d)%lld, linkid (%d)%llu", &buf, 0xC4u);
          }

          v242 = (DWORD1(v261) >> 4) & 1;
          v243 = *&v264[7];
          v240 = (DWORD1(v261) >> 3) & 1;
          v241 = *&v264[5];
          v238 = (v261 >> 10) & 1;
          v239 = *&v264[3];
          v236 = (v261 >> 1) & 1;
          v237 = *&v264[1];
          v234 = v261 & 1;
          v235 = v264[0];
          st_gen = (DWORD1(v260) >> 30) & 1;
          v233 = HIDWORD(v263);
          st_blksize = (DWORD1(v260) >> 19) & 1;
          st_flags = v263;
          st_size = (DWORD1(v260) >> 18) & 1;
          v229 = HIDWORD(v262);
          st_ctimespec.tv_sec = (DWORD1(v260) >> 17) & 1;
          st_ctimespec.tv_nsec = DWORD2(v262);
          st_mtimespec.tv_sec = HIWORD(DWORD1(v260)) & 1;
          st_mtimespec.tv_nsec = DWORD1(v262);
          st_atimespec.tv_sec = (DWORD1(v260) >> 15) & 1;
          st_atimespec.tv_nsec = v262;
          *(&v223 + 1) = (DWORD1(v260) >> 25) & 1;
          st_rdev = *(&v263 + 4);
          *(&v221 + 1) = (DWORD1(v260) >> 3) & 1;
          *&v223 = HIDWORD(v261);
          f_iosize = (DWORD1(v260) >> 1) & 1;
          *&v221 = DWORD2(v261);
          _MBLog();
        }
      }

      f_fsid = 0;
      v24 = open(v9, 256);
      if (v24 == -1)
      {
        v28 = *__error();
        v29 = MBGetDefaultLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = v29;
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            buf.f_bsize = 136446466;
            *&buf.f_iosize = v9;
            WORD2(buf.f_blocks) = 1024;
            *(&buf.f_blocks + 6) = v28;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "=diag= open failed at %{public}s: %{errno}d", &buf, 0x12u);
          }

          f_iosize = v28;
          _MBLog();
        }

        if (!st_ino)
        {
          goto LABEL_126;
        }

        goto LABEL_105;
      }

      v25 = v24;
      *v246 = st_ino;
      bzero(&buf, 0x878uLL);
      if (fstatfs(v25, &buf))
      {
        v26 = *__error();
        v27 = MBGetDefaultLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v27 = v27;
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v274.d_ino) = 136446466;
            *(&v274.d_ino + 4) = v9;
            WORD2(v274.d_seekoff) = 1024;
            *(&v274.d_seekoff + 6) = v26;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "=diag= fstatfs failed at %{public}s: %{errno}d", &v274, 0x12u);
          }

          f_iosize = v26;
LABEL_78:
          _MBLog();
        }
      }

      else
      {
        f_fsid = buf.f_fsid;
        v27 = MBGetDefaultLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v27 = v27;
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v274.d_ino) = 67112448;
            HIDWORD(v274.d_ino) = buf.f_bsize;
            LOWORD(v274.d_seekoff) = 1024;
            *(&v274.d_seekoff + 2) = buf.f_iosize;
            HIWORD(v274.d_seekoff) = 2048;
            *&v274.d_reclen = buf.f_blocks;
            *&v274.d_name[3] = 2048;
            *&v274.d_name[5] = buf.f_bfree;
            *&v274.d_name[13] = 2048;
            *&v274.d_name[15] = buf.f_bavail;
            *&v274.d_name[23] = 2048;
            *&v274.d_name[25] = buf.f_files;
            *&v274.d_name[33] = 2048;
            *&v274.d_name[35] = buf.f_ffree;
            *&v274.d_name[43] = 1024;
            *&v274.d_name[45] = buf.f_fsid.val[0];
            *&v274.d_name[49] = 1024;
            *&v274.d_name[51] = buf.f_fsid.val[1];
            *&v274.d_name[55] = 1024;
            *&v274.d_name[57] = buf.f_owner;
            *&v274.d_name[61] = 1024;
            *&v274.d_name[63] = buf.f_type;
            *&v274.d_name[67] = 1024;
            *&v274.d_name[69] = buf.f_flags;
            *&v274.d_name[73] = 1024;
            *&v274.d_name[75] = buf.f_fssubtype;
            *&v274.d_name[79] = 1024;
            *&v274.d_name[81] = buf.f_flags_ext;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "=diag= fstatfs: bsize %u, iosize %d, blocks %llu, bfree %llu, bavail %llu, files %llu, ffree %llu, fsid {%d, %d}, owner %d, type %d, flags 0x%x, fssubtype %d, flags_ext 0x%x", &v274, 0x6Au);
          }

          st_ctimespec.tv_nsec = buf.f_fssubtype;
          st_size = buf.f_flags_ext;
          st_mtimespec.tv_nsec = buf.f_type;
          st_ctimespec.tv_sec = buf.f_flags;
          st_atimespec.tv_nsec = buf.f_fsid.val[1];
          st_mtimespec.tv_sec = buf.f_owner;
          st_rdev = buf.f_ffree;
          st_atimespec.tv_sec = buf.f_fsid.val[0];
          v221 = *&buf.f_blocks;
          v223 = *&buf.f_bavail;
          f_iosize = buf.f_iosize;
          goto LABEL_78;
        }
      }

      v31 = fdopendir(v25);
      if (v31)
      {
        v32 = v31;
        v33 = 0;
        while (1)
        {
          bzero(&v274, 0x418uLL);
          v258 = 0;
          v34 = readdir_r(v32, &v274, &v258);
          if (v34)
          {
            break;
          }

          if (!v258)
          {
            goto LABEL_100;
          }

          if (*v274.d_name != 46 && *v274.d_name ^ 0x2E2E | v274.d_name[2] && !strcmp(v274.d_name, v7))
          {
            d_ino = *v246;
            if (!*v246)
            {
              d_ino = v274.d_ino;
            }

            v185 = MBGetDefaultLog();
            if (os_log_type_enabled(v185, OS_LOG_TYPE_DEFAULT))
            {
              v186 = v185;
              if (os_log_type_enabled(v186, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(v268) = 67110144;
                DWORD1(v268) = v33;
                WORD4(v268) = 1024;
                *(&v268 + 10) = v274.d_type;
                HIWORD(v268) = 2048;
                v269 = v274.d_ino;
                v270 = 1024;
                d_namlen = v274.d_namlen;
                v272 = 1024;
                d_reclen = v274.d_reclen;
                _os_log_impl(&_mh_execute_header, v186, OS_LOG_TYPE_DEFAULT, "=diag= readdir_r found file entry (%u), type %d, ino %llu, namelen %d, reclen %d", &v268, 0x24u);
              }

              *(&v221 + 1) = v274.d_namlen;
              *&v223 = v274.d_reclen;
              f_iosize = v274.d_type;
              *&v221 = v274.d_ino;
              _MBLog();
            }

            closedir(v32);
            st_ino = d_ino;
            if (d_ino)
            {
              goto LABEL_105;
            }

LABEL_126:
            v268 = 0uLL;
            if (fsctl(v5, 0x40104A0EuLL, &v268, 0))
            {
              v55 = *__error();
              v56 = MBGetDefaultLog();
              if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
              {
                v56 = v56;
                if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
                {
                  buf.f_bsize = 67109120;
                  buf.f_iosize = v55;
                  _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "=diag= fsctl(APFSIOC_GET_CLONE_INFO) failed: %{errno}d", &buf, 8u);
                }

                goto LABEL_135;
              }
            }

            else
            {
              v56 = MBGetDefaultLog();
              if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
              {
                v56 = v56;
                if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
                {
                  buf.f_bsize = 134218240;
                  *&buf.f_iosize = v268;
                  WORD2(buf.f_blocks) = 2048;
                  *(&buf.f_blocks + 6) = *(&v268 + 1);
                  _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "=diag= fsctl(APFSIOC_GET_CLONE_INFO): flags 0x%llx, private_id %llu", &buf, 0x16u);
                }

                f_iosize = *(&v268 + 1);
LABEL_135:
                _MBLog();
              }
            }

            v247 = open_dprotected_np(v5, 0, 0, 1, 0);
            if (v247 == -1)
            {
              v59 = *__error();
              v60 = MBGetDefaultLog();
              if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
              {
                buf.f_bsize = 67109120;
                buf.f_iosize = v59;
                _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "=diag= Failed to open the file raw encrypted: %{errno}d", &buf, 8u);
                _MBLog();
              }
            }

            else
            {
              v257 = 0;
              if (fsctl(v5, 0x40084A25uLL, &v257, 8u))
              {
                v57 = *__error();
                v58 = MBGetDefaultLog();
                if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
                {
                  v58 = v58;
                  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
                  {
                    buf.f_bsize = 67109120;
                    buf.f_iosize = v57;
                    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "=diag= fsctl(APFSIOC_GET_INTERNAL_FLAGS) failed: %{errno}d", &buf, 8u);
                  }

                  goto LABEL_148;
                }
              }

              else
              {
                v58 = MBGetDefaultLog();
                if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
                {
                  v58 = v58;
                  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
                  {
                    buf.f_bsize = 134217984;
                    *&buf.f_iosize = v257;
                    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "=diag= fsctl(APFSIOC_GET_INTERNAL_FLAGS): flags 0x%llx", &buf, 0xCu);
                  }

LABEL_148:

                  _MBLog();
                }
              }

              v255 = 0u;
              v256 = 0u;
              v254 = 0u;
              if (fsctl(v5, 0x40304A6DuLL, &v254, 0))
              {
                v61 = *__error();
                v62 = MBGetDefaultLog();
                if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
                {
                  v62 = v62;
                  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
                  {
                    buf.f_bsize = 67109120;
                    buf.f_iosize = v61;
                    _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "=diag= fsctl(APFSIOC_PURGEABLE_GET_FILE_INFO) failed: %{errno}d", &buf, 8u);
                  }

                  goto LABEL_158;
                }
              }

              else
              {
                v62 = MBGetDefaultLog();
                if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
                {
                  v62 = v62;
                  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
                  {
                    buf.f_bsize = 134219264;
                    *&buf.f_iosize = v254;
                    WORD2(buf.f_blocks) = 2048;
                    *(&buf.f_blocks + 6) = *(&v254 + 1);
                    HIWORD(buf.f_bfree) = 2048;
                    buf.f_bavail = v255;
                    LOWORD(buf.f_files) = 2048;
                    *(&buf.f_files + 2) = *(&v255 + 1);
                    WORD1(buf.f_ffree) = 2048;
                    *(&buf.f_ffree + 4) = v256;
                    LOWORD(buf.f_fsid.val[1]) = 2048;
                    *(&buf.f_fsid + 6) = *(&v256 + 1);
                    _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "=diag= fsctl(APFSIOC_PURGEABLE_GET_FILE_INFO): file flags: 0x%llx related flags: 0x%llx, file acctime: %llu\n gen count: %llu sync root id: %llu size: %llu", &buf, 0x3Eu);
                  }

                  v223 = v256;
                  f_iosize = *(&v254 + 1);
                  v221 = v255;
LABEL_158:
                  _MBLog();
                }
              }

              v63 = MBGetDefaultLog();
              if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
              {
                v64 = v63;
                if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(buf.f_bsize) = 0;
                  _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "=diag= Dumping extent information", &buf, 2u);
                }

                _MBLog();
              }

              v244 = v1;

              v65 = 0;
              v66 = 0;
              while (1)
              {
                LODWORD(v274.d_ino) = 0;
                *(&v274.d_ino + 4) = 0x7FFFFFFFFFFFFFFFLL;
                *(&v274.d_seekoff + 4) = v65;
                if (fcntl(v247, 65, &v274, f_iosize, v221, v223, st_rdev, st_atimespec, st_mtimespec, st_ctimespec, st_size, v229, st_blksize, st_flags, st_gen, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243))
                {
                  break;
                }

                v67 = *(&v274.d_ino + 4);
                v68 = MBGetDefaultLog();
                if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
                {
                  v69 = v68;
                  if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
                  {
                    buf.f_bsize = 134218496;
                    *&buf.f_iosize = v65;
                    WORD2(buf.f_blocks) = 2048;
                    *(&buf.f_blocks + 6) = v67;
                    HIWORD(buf.f_bfree) = 2048;
                    buf.f_bavail = *(&v274.d_seekoff + 4);
                    _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "=diag= 0x%llx:+%lld @ 0x%llx", &buf, 0x20u);
                  }

                  f_iosize = v67;
                  *&v221 = *(&v274.d_seekoff + 4);
                  _MBLog();
                }

                if (v67 < 1 || (v67 ^ 0x7FFFFFFFFFFFFFFFLL) < v65)
                {
                  goto LABEL_179;
                }

                v65 += v67;
                if (++v66 == 10000)
                {
                  v66 = 10000;
                  goto LABEL_179;
                }
              }

              v70 = *__error();
              if (v70 != 34)
              {
                v71 = MBGetDefaultLog();
                if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
                {
                  v72 = v71;
                  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
                  {
                    buf.f_bsize = 134218240;
                    *&buf.f_iosize = v65;
                    WORD2(buf.f_blocks) = 1024;
                    *(&buf.f_blocks + 6) = v70;
                    _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "=diag= log2phys failed at 0x%llx: %{errno}d", &buf, 0x12u);
                  }

                  _MBLog();
                }
              }

LABEL_179:
              v73 = MBGetDefaultLog();
              if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
              {
                v74 = v73;
                if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
                {
                  buf.f_bsize = 67109120;
                  buf.f_iosize = v66;
                  _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "=diag= Found %u extents", &buf, 8u);
                }

                _MBLog();
              }

              v75 = malloc_type_malloc(0x4000uLL, 0x3F4D6170uLL);
              if (!v75)
              {
                sub_10009B9AC();
              }

              v76 = v75;
              v77 = MBGetDefaultLog();
              if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
              {
                v78 = v77;
                if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(buf.f_bsize) = 0;
                  _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "=diag= Dumping crypto file info", &buf, 2u);
                }

                _MBLog();
              }

              v248 = 1;
              v250 = 0;
              v249 = 0;
              v251 = 0;
              v252 = 0x4000;
              v253 = v76;
              if (ffsctl(v247, 0x80284A7FuLL, &v248, 0))
              {
                v79 = *__error();
                v80 = MBGetDefaultLog();
                if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
                {
                  v80 = v80;
                  if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
                  {
                    buf.f_bsize = 67109120;
                    buf.f_iosize = v79;
                    _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "=diag= Failed to get the crypto file infos: %{errno}d", &buf, 8u);
                  }

                  goto LABEL_205;
                }

                goto LABEL_206;
              }

              v81 = MBGetDefaultLog();
              if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
              {
                v82 = v81;
                if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
                {
                  v83 = *v76;
                  buf.f_bsize = 134217984;
                  *&buf.f_iosize = v83;
                  _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "=diag= private_id: %llu", &buf, 0xCu);
                }

                v187 = *v76;
                _MBLog();
              }

              v84 = MBGetDefaultLog();
              if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
              {
                v85 = v84;
                if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
                {
                  v86 = *(v76 + 1);
                  v87 = v76[4] & 1;
                  buf.f_bsize = 134218240;
                  *&buf.f_iosize = v86;
                  WORD2(buf.f_blocks) = 1024;
                  *(&buf.f_blocks + 6) = v87;
                  _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "=diag= prot_class: %llu (explicit? %d)", &buf, 0x12u);
                }

                v188 = *(v76 + 1);
                v215 = v76[4] & 1;
                _MBLog();
              }

              if ((*(v76 + 2) & 0x8000000000000000) != 0)
              {
                v92 = MBGetDefaultLog();
                if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
                {
                  v93 = v92;
                  if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
                  {
                    v94 = v76[85];
                    v95 = *(v76 + 3);
                    buf.f_bsize = 67109376;
                    buf.f_iosize = v94;
                    LOWORD(buf.f_blocks) = 2048;
                    *(&buf.f_blocks + 2) = v95;
                    _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "=diag= Found %u crypto ids for filesize %lld", &buf, 0x12u);
                  }

                  v189 = v76[85];
                  v216 = *(v76 + 3);
                  _MBLog();
                }

                v96 = MBGetDefaultLog();
                if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
                {
                  v97 = v96;
                  if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
                  {
                    v98 = *(v76 + 3);
                    buf.f_bsize = 134217984;
                    *&buf.f_iosize = v98;
                    _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "=diag=   size:         %llu", &buf, 0xCu);
                  }

                  v190 = *(v76 + 3);
                  _MBLog();
                }

                v99 = MBGetDefaultLog();
                if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
                {
                  v100 = v99;
                  if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
                  {
                    v101 = *(v76 + 4);
                    buf.f_bsize = 134217984;
                    *&buf.f_iosize = v101;
                    _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEFAULT, "=diag=   alloced_size: %llu", &buf, 0xCu);
                  }

                  v191 = *(v76 + 4);
                  _MBLog();
                }

                v102 = MBGetDefaultLog();
                if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
                {
                  v103 = v102;
                  if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
                  {
                    v104 = *(v76 + 5);
                    buf.f_bsize = 134217984;
                    *&buf.f_iosize = v104;
                    _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "=diag=   default_crid: %llu", &buf, 0xCu);
                  }

                  v192 = *(v76 + 5);
                  _MBLog();
                }

                v105 = MBGetDefaultLog();
                if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
                {
                  v106 = v105;
                  if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
                  {
                    v107 = (*(v76 + 24) >> 14) & 1;
                    buf.f_bsize = 67109120;
                    buf.f_iosize = v107;
                    _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEFAULT, "=diag=     exists?  %u", &buf, 8u);
                  }

                  v193 = (*(v76 + 24) >> 14) & 1;
                  _MBLog();
                }

                v108 = MBGetDefaultLog();
                if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                {
                  v109 = v108;
                  if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
                  {
                    v110 = *(v76 + 25);
                    v111 = *(v76 + 24) >> 15;
                    buf.f_bsize = 67109376;
                    buf.f_iosize = v110;
                    LOWORD(buf.f_blocks) = 1024;
                    *(&buf.f_blocks + 2) = v111;
                    _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "=diag=     payload: %u (trunc? %d)", &buf, 0xEu);
                  }

                  v194 = *(v76 + 25);
                  v217 = *(v76 + 24) >> 15;
                  _MBLog();
                }

                v112 = MBGetDefaultLog();
                if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
                {
                  v113 = v112;
                  if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
                  {
                    v114 = v76[13];
                    buf.f_bsize = 67109120;
                    buf.f_iosize = v114;
                    _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, "=diag=     refcnt:  %u", &buf, 8u);
                  }

                  v195 = v76[13];
                  _MBLog();
                }

                v115 = MBGetDefaultLog();
                if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
                {
                  v116 = v115;
                  if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
                  {
                    v117 = *(v76 + 28);
                    v118 = *(v76 + 29);
                    buf.f_bsize = 67109376;
                    buf.f_iosize = v117;
                    LOWORD(buf.f_blocks) = 1024;
                    *(&buf.f_blocks + 2) = v118;
                    _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "=diag=     version: %u.%u", &buf, 0xEu);
                  }

                  v196 = *(v76 + 28);
                  v218 = *(v76 + 29);
                  _MBLog();
                }

                v119 = MBGetDefaultLog();
                if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
                {
                  v120 = v119;
                  if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
                  {
                    v121 = v76[15];
                    buf.f_bsize = 67109120;
                    buf.f_iosize = v121;
                    _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_DEFAULT, "=diag=     flags:   %#x", &buf, 8u);
                  }

                  v197 = v76[15];
                  _MBLog();
                }

                v122 = MBGetDefaultLog();
                if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
                {
                  v123 = v122;
                  if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
                  {
                    v124 = v76[16];
                    buf.f_bsize = 67109120;
                    buf.f_iosize = v124;
                    _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_DEFAULT, "=diag=     class:   %#x", &buf, 8u);
                  }

                  v198 = v76[16];
                  _MBLog();
                }

                v125 = MBGetDefaultLog();
                if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
                {
                  v126 = v125;
                  if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
                  {
                    v127 = sub_100010DFC(v76[17]);
                    buf.f_bsize = 138412290;
                    *&buf.f_iosize = v127;
                    _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_DEFAULT, "=diag=     os:      %@", &buf, 0xCu);
                  }

                  v199 = sub_100010DFC(v76[17]);
                  _MBLog();
                }

                v128 = MBGetDefaultLog();
                if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
                {
                  v129 = v128;
                  if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
                  {
                    v130 = *(v76 + 36);
                    buf.f_bsize = 67109120;
                    buf.f_iosize = v130;
                    _os_log_impl(&_mh_execute_header, v129, OS_LOG_TYPE_DEFAULT, "=diag=     rev:     %u", &buf, 8u);
                  }

                  v200 = *(v76 + 36);
                  _MBLog();
                }

                v131 = MBGetDefaultLog();
                if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
                {
                  v132 = v131;
                  if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
                  {
                    v133 = *(v76 + 37);
                    buf.f_bsize = 67109120;
                    buf.f_iosize = v133;
                    _os_log_impl(&_mh_execute_header, v132, OS_LOG_TYPE_DEFAULT, "=diag=     len:     %u", &buf, 8u);
                  }

                  v201 = *(v76 + 37);
                  _MBLog();
                }

                v134 = MBGetDefaultLog();
                if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
                {
                  v135 = v134;
                  if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
                  {
                    v136 = v76[83];
                    buf.f_bsize = 67109120;
                    buf.f_iosize = v136;
                    _os_log_impl(&_mh_execute_header, v135, OS_LOG_TYPE_DEFAULT, "=diag=   refcnt:       %u", &buf, 8u);
                  }

                  v202 = v76[83];
                  _MBLog();
                }

                v137 = MBGetDefaultLog();
                if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
                {
                  v138 = v137;
                  if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
                  {
                    v139 = v76[85];
                    buf.f_bsize = 67109120;
                    buf.f_iosize = v139;
                    _os_log_impl(&_mh_execute_header, v138, OS_LOG_TYPE_DEFAULT, "=diag=   num extents:  %u", &buf, 8u);
                  }

                  v203 = v76[85];
                  _MBLog();
                }

                if (v76[85])
                {
                  v140 = 0;
                  v141 = v76 + 197;
                  do
                  {
                    v142 = MBGetDefaultLog();
                    if (os_log_type_enabled(v142, OS_LOG_TYPE_DEFAULT))
                    {
                      v143 = v142;
                      if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
                      {
                        v144 = *(v141 - 25);
                        v145 = *(v141 - 21);
                        v146 = *(v141 - 17);
                        buf.f_bsize = 134218496;
                        *&buf.f_iosize = v144;
                        WORD2(buf.f_blocks) = 2048;
                        *(&buf.f_blocks + 6) = v145;
                        HIWORD(buf.f_bfree) = 2048;
                        buf.f_bavail = v146;
                        _os_log_impl(&_mh_execute_header, v143, OS_LOG_TYPE_DEFAULT, "=diag=       0x%llx:+%lld (crid %llu)", &buf, 0x20u);
                      }

                      v222 = *(v141 - 17);
                      v204 = *(v141 - 25);
                      _MBLog();
                    }

                    v147 = MBGetDefaultLog();
                    if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
                    {
                      v148 = v147;
                      if (os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
                      {
                        v149 = (*(v141 - 13) >> 14) & 1;
                        buf.f_bsize = 67109120;
                        buf.f_iosize = v149;
                        _os_log_impl(&_mh_execute_header, v148, OS_LOG_TYPE_DEFAULT, "=diag=       exists?  %u", &buf, 8u);
                      }

                      v205 = (*(v141 - 13) >> 14) & 1;
                      _MBLog();
                    }

                    v150 = MBGetDefaultLog();
                    if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
                    {
                      v151 = v150;
                      if (os_log_type_enabled(v151, OS_LOG_TYPE_DEFAULT))
                      {
                        v152 = *(v141 - 12);
                        v153 = *(v141 - 13) >> 15;
                        buf.f_bsize = 67109376;
                        buf.f_iosize = v152;
                        LOWORD(buf.f_blocks) = 1024;
                        *(&buf.f_blocks + 2) = v153;
                        _os_log_impl(&_mh_execute_header, v151, OS_LOG_TYPE_DEFAULT, "=diag=       payload: %u (trunc? %d)", &buf, 0xEu);
                      }

                      v206 = *(v141 - 12);
                      v219 = *(v141 - 13) >> 15;
                      _MBLog();
                    }

                    v154 = MBGetDefaultLog();
                    if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
                    {
                      v155 = v154;
                      if (os_log_type_enabled(v155, OS_LOG_TYPE_DEFAULT))
                      {
                        v156 = *(v141 - 11);
                        buf.f_bsize = 67109120;
                        buf.f_iosize = v156;
                        _os_log_impl(&_mh_execute_header, v155, OS_LOG_TYPE_DEFAULT, "=diag=       refcnt:  %u", &buf, 8u);
                      }

                      v207 = *(v141 - 11);
                      _MBLog();
                    }

                    v157 = MBGetDefaultLog();
                    if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
                    {
                      v158 = v157;
                      if (os_log_type_enabled(v158, OS_LOG_TYPE_DEFAULT))
                      {
                        v159 = *(v141 - 9);
                        v160 = *(v141 - 8);
                        buf.f_bsize = 67109376;
                        buf.f_iosize = v159;
                        LOWORD(buf.f_blocks) = 1024;
                        *(&buf.f_blocks + 2) = v160;
                        _os_log_impl(&_mh_execute_header, v158, OS_LOG_TYPE_DEFAULT, "=diag=       version: %u.%u", &buf, 0xEu);
                      }

                      v208 = *(v141 - 9);
                      v220 = *(v141 - 8);
                      _MBLog();
                    }

                    v161 = MBGetDefaultLog();
                    if (os_log_type_enabled(v161, OS_LOG_TYPE_DEFAULT))
                    {
                      v162 = v161;
                      if (os_log_type_enabled(v162, OS_LOG_TYPE_DEFAULT))
                      {
                        v163 = *(v141 - 7);
                        buf.f_bsize = 67109120;
                        buf.f_iosize = v163;
                        _os_log_impl(&_mh_execute_header, v162, OS_LOG_TYPE_DEFAULT, "=diag=       flags:   %#x", &buf, 8u);
                      }

                      v209 = *(v141 - 7);
                      _MBLog();
                    }

                    v164 = MBGetDefaultLog();
                    if (os_log_type_enabled(v164, OS_LOG_TYPE_DEFAULT))
                    {
                      v165 = v164;
                      if (os_log_type_enabled(v165, OS_LOG_TYPE_DEFAULT))
                      {
                        v166 = *(v141 - 5);
                        buf.f_bsize = 67109120;
                        buf.f_iosize = v166;
                        _os_log_impl(&_mh_execute_header, v165, OS_LOG_TYPE_DEFAULT, "=diag=       class:   %#x", &buf, 8u);
                      }

                      v210 = *(v141 - 5);
                      _MBLog();
                    }

                    v167 = MBGetDefaultLog();
                    if (os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
                    {
                      v168 = v167;
                      if (os_log_type_enabled(v168, OS_LOG_TYPE_DEFAULT))
                      {
                        v169 = *(v141 - 3);
                        v170 = (v169 << 8) >> 24;
                        if (v170 > 0x7F)
                        {
                          v171 = __maskrune((v169 << 8) >> 24, 0x100uLL);
                        }

                        else
                        {
                          v171 = _DefaultRuneLocale.__runetype[v170] & 0x100;
                        }

                        if (v171)
                        {
                          v172 = @"%u%c%u";
                        }

                        else
                        {
                          v172 = @"%u-%c-%u";
                        }

                        v173 = [NSString stringWithFormat:v172, HIBYTE(v169), ((v169 << 8) >> 24), v169];
                        buf.f_bsize = 138412290;
                        *&buf.f_iosize = v173;
                        _os_log_impl(&_mh_execute_header, v168, OS_LOG_TYPE_DEFAULT, "=diag=       os:      %@", &buf, 0xCu);
                      }

                      v174 = *(v141 - 3);
                      v175 = (v174 << 8) >> 24;
                      if (v175 > 0x7F)
                      {
                        v176 = __maskrune((v174 << 8) >> 24, 0x100uLL);
                      }

                      else
                      {
                        v176 = _DefaultRuneLocale.__runetype[v175] & 0x100;
                      }

                      if (v176)
                      {
                        v177 = @"%u%c%u";
                      }

                      else
                      {
                        v177 = @"%u-%c-%u";
                      }

                      v211 = [NSString stringWithFormat:v177, HIBYTE(v174), ((v174 << 8) >> 24), v174];
                      _MBLog();
                    }

                    v178 = MBGetDefaultLog();
                    if (os_log_type_enabled(v178, OS_LOG_TYPE_DEFAULT))
                    {
                      v179 = v178;
                      if (os_log_type_enabled(v179, OS_LOG_TYPE_DEFAULT))
                      {
                        v180 = *(v141 - 1);
                        buf.f_bsize = 67109120;
                        buf.f_iosize = v180;
                        _os_log_impl(&_mh_execute_header, v179, OS_LOG_TYPE_DEFAULT, "=diag=       rev:     %u", &buf, 8u);
                      }

                      v212 = *(v141 - 1);
                      _MBLog();
                    }

                    v181 = MBGetDefaultLog();
                    if (os_log_type_enabled(v181, OS_LOG_TYPE_DEFAULT))
                    {
                      v182 = v181;
                      if (os_log_type_enabled(v182, OS_LOG_TYPE_DEFAULT))
                      {
                        v183 = *v141;
                        buf.f_bsize = 67109120;
                        buf.f_iosize = v183;
                        _os_log_impl(&_mh_execute_header, v182, OS_LOG_TYPE_DEFAULT, "=diag=       len:     %u", &buf, 8u);
                      }

                      v213 = *v141;
                      _MBLog();
                    }

                    ++v140;
                    v141 += 156;
                  }

                  while (v140 < v76[85]);
                }
              }

              else
              {
                v80 = MBGetDefaultLog();
                if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
                {
                  v80 = v80;
                  if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
                  {
                    buf.f_bsize = 136315138;
                    *&buf.f_iosize = v245;
                    _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "=diag= %s does not have associated crypto dstreams", &buf, 0xCu);
                  }

LABEL_205:

                  _MBLog();
                }

LABEL_206:
              }

              free(v76);
              sub_100010EA0(v245);
              v1 = v244;
              if (getxattr(v245, "com.apple.ResourceFork", 0, 0, 0, 0) != -1)
              {
                v88 = MBGetDefaultLog();
                if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
                {
                  v89 = v88;
                  if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
                  {
                    buf.f_bsize = 136315138;
                    *&buf.f_iosize = v245;
                    _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "=diag= %s is a compressed file", &buf, 0xCu);
                  }

                  _MBLog();
                }

                v90 = [v244 stringByAppendingPathComponent:@"/..namedfork/rsrc"];
                sub_100010EA0([v90 fileSystemRepresentation]);
              }

              close(v247);
            }

            v15 = MBGetDefaultLog();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v91 = v15;
              if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
              {
                buf.f_bsize = 138543362;
                *&buf.f_iosize = v1;
                _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "=diag= Finished dumping diagnostics for %{public}@", &buf, 0xCu);
              }

LABEL_218:
              _MBLog();
            }

            goto LABEL_219;
          }

          if (++v33 == 500000)
          {
            v33 = 500000;
            goto LABEL_100;
          }
        }

        v38 = v34;
        v39 = *__error();
        v40 = MBGetDefaultLog();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v41 = v40;
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v268) = 67109376;
            DWORD1(v268) = v38;
            WORD4(v268) = 1024;
            *(&v268 + 10) = v39;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "=diag= readdir_r failed: %d (%{errno}d)", &v268, 0xEu);
          }

          f_iosize = v39;
          _MBLog();
        }

LABEL_100:
        closedir(v32);
        v42 = MBGetDefaultLog();
        st_ino = *v246;
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v43 = v42;
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v274.d_ino) = 67109120;
            HIDWORD(v274.d_ino) = v33;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "=diag= Failed to find the file using readdir_r (%u)", &v274, 8u);
          }

          _MBLog();
        }

        if (!*v246)
        {
          goto LABEL_126;
        }

        goto LABEL_105;
      }

      v35 = *__error();
      v36 = MBGetDefaultLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = v36;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v274.d_ino) = 136446466;
          *(&v274.d_ino + 4) = v9;
          WORD2(v274.d_seekoff) = 1024;
          *(&v274.d_seekoff + 6) = v35;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "=diag= fdopendir failed at %{public}s: %{errno}d", &v274, 0x12u);
        }

        f_iosize = v35;
        _MBLog();
      }

      close(v25);
      st_ino = *v246;
      if (!*v246)
      {
        goto LABEL_126;
      }

LABEL_105:
      if (!f_fsid.val[0])
      {
        goto LABEL_126;
      }

      *&v268 = st_ino;
      v44 = openbyid_np();
      if (v44 == -1)
      {
        v51 = *__error();
        v52 = MBGetDefaultLog();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          v53 = v52;
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            buf.f_bsize = 67109888;
            buf.f_iosize = f_fsid.val[0];
            LOWORD(buf.f_blocks) = 1024;
            *(&buf.f_blocks + 2) = f_fsid.val[1];
            HIWORD(buf.f_blocks) = 2048;
            buf.f_bfree = st_ino;
            LOWORD(buf.f_bavail) = 1024;
            *(&buf.f_bavail + 2) = v51;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "=diag= openbyid_np({%d, %d}, %llu) failed: %{errno}d", &buf, 0x1Eu);
          }

          *&v221 = st_ino;
          *(&v221 + 1) = v51;
          f_iosize = f_fsid.val[1];
          _MBLog();
        }

        goto LABEL_126;
      }

      v45 = v44;
      v46 = MBGetDefaultLog();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        v47 = v46;
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          buf.f_bsize = 67109632;
          buf.f_iosize = f_fsid.val[0];
          LOWORD(buf.f_blocks) = 1024;
          *(&buf.f_blocks + 2) = f_fsid.val[1];
          HIWORD(buf.f_blocks) = 2048;
          buf.f_bfree = st_ino;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "=diag= openbyid_np({%d, %d}, %llu) succeeded", &buf, 0x18u);
        }

        f_iosize = f_fsid.val[1];
        *&v221 = st_ino;
        _MBLog();
      }

      v48 = pread(v45, &buf, 0x10uLL, 0);
      if (v48 == -1)
      {
        v54 = *__error();
        v50 = MBGetDefaultLog();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          v50 = v50;
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v274.d_ino) = 67109120;
            HIDWORD(v274.d_ino) = v54;
            _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "=diag= pread failed: %d", &v274, 8u);
          }

          goto LABEL_124;
        }
      }

      else
      {
        v49 = v48;
        v50 = MBGetDefaultLog();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          v50 = v50;
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v274.d_ino) = 134217984;
            *(&v274.d_ino + 4) = v49;
            _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "=diag= pread returned %ld bytes", &v274, 0xCu);
          }

LABEL_124:

          _MBLog();
        }
      }

      close(v45);
      goto LABEL_126;
    }

    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.f_bsize) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "=diag= nil dir path FSR", &buf, 2u);
      goto LABEL_218;
    }

LABEL_219:
  }
}

void sub_100010364(void *a1, void *a2, void *a3, int a4, uint64_t a5)
{
  v9 = a1;
  if (!atomic_fetch_add_explicit(&dword_10011E2F4, 1u, memory_order_relaxed))
  {
    v10 = a3;
    v11 = a2;
    sub_10000D3F4(v9);
    v12 = sub_100078250(v9, v11, v10);

    if (v12 && ([v9 isEqualToString:v12] & 1) == 0)
    {
      sub_10000D3F4(v12);
    }

    if (MBIsInternalInstall())
    {
      v13 = MBGetDefaultLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446722;
        v15 = a5;
        v16 = 1024;
        v17 = a4;
        v18 = 2114;
        v19 = v9;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "=diag= %{public}s failed with %d at %{public}@", buf, 0x1Cu);
        _MBLog();
      }
    }
  }
}

uint64_t sub_1000104D8()
{
  if (MBIsInternalInstall())
  {
    v0 = getpid();
    v44 = v0;
    v1 = +[NSProcessInfo processInfo];
    v2 = [v1 processName];

    v3 = [NSString stringWithFormat:@"%d", v0];
    v4 = +[NSDate now];
    v5 = [v4 iso8601String];
    v6 = [NSString stringWithFormat:@"lsof-%@-%@.log", v2, v5];

    v7 = MBGetLogDir();
    v8 = [v7 stringByAppendingPathComponent:v6];

    v43 = 0;
    if (posix_spawn_file_actions_init(&v43))
    {
      v9 = MBGetDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = *__error();
        *buf = 67109120;
        *&buf[4] = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "=diag= posix_spawn_file_actions_init() failed: %{errno}d", buf, 8u);
        v33 = *__error();
        _MBLog();
      }

LABEL_11:
      v11 = 0;
LABEL_12:

      return v11 & 1;
    }

    v42 = 0;
    if (posix_spawnattr_init(&v42))
    {
      posix_spawn_file_actions_destroy(&v43);
      v12 = MBGetDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = *__error();
        *buf = 67109120;
        *&buf[4] = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "=diag= posix_spawn_file_actions_init() failed: %{errno}d", buf, 8u);
        v34 = *__error();
        _MBLog();
      }

      goto LABEL_11;
    }

    v15 = v8;
    if (posix_spawn_file_actions_addopen(&v43, 1, [v8 fileSystemRepresentation], 513, 0x1EDu))
    {
      v16 = MBGetDefaultLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = v16;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = *__error();
          *buf = 67109120;
          *&buf[4] = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "=diag= posix_spawn_file_actions_addopen() failed: %{errno}d", buf, 8u);
        }

        v35 = *__error();
        _MBLog();
      }

LABEL_25:

      v11 = 0;
LABEL_26:
      posix_spawn_file_actions_destroy(&v43);
      posix_spawnattr_destroy(&v42);
      goto LABEL_12;
    }

    if (posix_spawnattr_setflags(&v42, 0x4000))
    {
      v16 = MBGetDefaultLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v19 = v16;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = *__error();
          *buf = 67109120;
          *&buf[4] = v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "=diag= posix_spawnattr_setflags() failed: %{errno}d", buf, 8u);
        }

        v36 = *__error();
        _MBLog();
      }

      goto LABEL_25;
    }

    v51 = 0;
    v52 = 0;
    *buf = "lsof";
    v50 = "-p";
    v21 = v3;
    v51 = [v3 UTF8String];
    v52 = 0;
    if (posix_spawn(&v44, "/usr/sbin/lsof", &v43, 0, buf, 0))
    {
      v16 = MBGetDefaultLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v22 = v16;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = *__error();
          *v45 = 67109120;
          LODWORD(v46) = v23;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "=diag= posix_spawn() failed: %{errno}d", v45, 8u);
        }

        v37 = *__error();
        _MBLog();
      }

      goto LABEL_25;
    }

    v24 = MBGetDefaultLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *v45 = 136315394;
      v46 = v50;
      v47 = 2080;
      v48 = v51;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "=diag= Spawned /usr/sbin/lsof %s %s", v45, 0x16u);
      v32 = v50;
      v39 = v51;
      _MBLog();
    }

    v41 = 0;
    if (waitpid(v44, &v41, 0) == -1)
    {
      if ((v41 & 0x7F) != 0)
      {
        if ((v41 & 0x7F) == 0x7F)
        {
          if (v41 >> 8 == 19)
          {
            v25 = MBGetDefaultLog();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              v25 = v25;
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                v26 = *__error();
                *v45 = 67109120;
                LODWORD(v46) = v26;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "=diag= waitpid() failed: %{errno}d", v45, 8u);
              }

              v38 = *__error();
              _MBLog();
            }

            v11 = 0;
LABEL_58:

            goto LABEL_26;
          }

          v27 = MBGetDefaultLog();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            *v45 = 0;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "=diag= lsof stopped", v45, 2u);
            _MBLog();
          }
        }

        else
        {
          v27 = MBGetDefaultLog();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            *v45 = 67109120;
            LODWORD(v46) = v41 & 0x7F;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "=diag= lsof was terminated by signal %d", v45, 8u);
            v32 = (v41 & 0x7F);
            _MBLog();
          }
        }
      }

      else
      {
        v27 = MBGetDefaultLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *v45 = 0;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "=diag= lsof exited", v45, 2u);
          _MBLog();
        }
      }
    }

    v28 = [NSFileManager defaultManager:v32];
    v40 = 0;
    v11 = [v28 mb_markAsPurgeableItemAtPath:v8 error:&v40];
    v25 = v40;

    if (v11)
    {
      v29 = MBGetDefaultLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *v45 = 138412290;
        v46 = v8;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "=diag= Dumped lsof output to %@", v45, 0xCu);
        _MBLog();
      }
    }

    else
    {
      v30 = MBGetDefaultLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *v45 = 138412290;
        v46 = v8;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "=diag= Failed to mark item as purgeable at %@", v45, 0xCu);
        _MBLog();
      }

      v31 = v8;
      unlink([v8 fileSystemRepresentation]);
    }

    goto LABEL_58;
  }

  v11 = 0;
  return v11 & 1;
}

void sub_100010D4C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x1000108A0);
  }

  _Unwind_Resume(exception_object);
}

id sub_100010DFC(unsigned int a1)
{
  v2 = ((a1 << 8) >> 24);
  if (v2 > 0x7F)
  {
    v3 = __maskrune((a1 << 8) >> 24, 0x100uLL);
  }

  else
  {
    v3 = _DefaultRuneLocale.__runetype[v2] & 0x100;
  }

  if (v3)
  {
    v4 = @"%u%c%u";
  }

  else
  {
    v4 = @"%u-%c-%u";
  }

  v5 = [NSString stringWithFormat:v4, HIBYTE(a1), v2, a1];

  return v5;
}

void sub_100010EA0(const char *a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0xD59A0561uLL);
  if (!v2)
  {
    sub_10009B9D8();
  }

  v3 = v2;
  *v2 = 0;
  v2[1] = 0;
  v31 = 0u;
  v30 = 0u;
  v24 = xmmword_1000B7100;
  v25 = 0;
  v26 = v2;
  v28 = 0;
  v29 = 0;
  v27 = 16;
  if (fsctl(a1, 0xC0584A1EuLL, &v24, 0))
  {
    free(v3);
    v4 = MBGetDefaultLog();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
LABEL_6:

      return;
    }

    v5 = *__error();
    *buf = 67109120;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "=diag= fsctl(APFSIOC_DEBUG_STATS) failed: %{errno}d", buf, 8u);
    v18 = *__error();
LABEL_5:
    _MBLog();
    goto LABEL_6;
  }

  if (!v29)
  {
    free(v3);
    v4 = MBGetDefaultLog();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_6;
    }

    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "=diag= fsctl(APFSIOC_DEBUG_STATS) returned zero buffer entries", buf, 2u);
    goto LABEL_5;
  }

  v6 = malloc_type_malloc(0x4E200uLL, 0x100004071F2C783uLL);
  if (v6)
  {
    v7 = v6;
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *v3;
      v10 = v3[1];
      *buf = 134218240;
      *&buf[4] = v9;
      *&buf[12] = 2048;
      *&buf[14] = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "=diag= Dstream id %llu, dstream size %llu bytes", buf, 0x16u);
      v19 = *v3;
      v22 = v3[1];
      _MBLog();
    }

    for (i = 0; ; i = *(v12 - 7) + *(v12 - 8))
    {
      bzero(v7, 0x4E200uLL);
      v40 = 0;
      v41 = 0;
      v42 = 0;
      *buf = xmmword_1000B7110;
      *&buf[16] = 10;
      v35 = v7;
      v36 = 320000;
      v37 = i;
      v38 = *v3;
      v39 = 0;
      if (fsctl(a1, 0xC0584A1EuLL, buf, 0))
      {
        v16 = MBGetDefaultLog();
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_24;
        }

        v17 = *__error();
        *v32 = 67109376;
        *v33 = v17;
        *&v33[4] = 2048;
        *&v33[6] = i;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "=diag= fsctl(APFSIOC_DEBUG_STATS) failed: %{errno}d, cannot get extents at offset %lld", v32, 0x12u);
        v21 = *__error();
        goto LABEL_23;
      }

      if (!v39)
      {
        break;
      }

      v12 = &v7[64 * v39];
      v13 = MBGetDefaultLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(v12 - 8);
        v15 = *(v12 - 7);
        *v32 = 134218240;
        *v33 = v14;
        *&v33[8] = 2048;
        *&v33[10] = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "=diag= Extent offset %lld and length %lld", v32, 0x16u);
        v20 = *(v12 - 8);
        v23 = *(v12 - 7);
        _MBLog();
      }
    }

    v16 = MBGetDefaultLog();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    *v32 = 134217984;
    *v33 = i;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "=diag= fsctl(APFSIOC_DEBUG_STATS) for FUSION_DEBUG_STATS_PURE_FEXTS_ONLY returned zero buffer entries at offset %lld", v32, 0xCu);
LABEL_23:
    _MBLog();
LABEL_24:

    free(v7);
  }

  free(v3);
}

uint64_t sub_100011774(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v30) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v30 & 0x7F) << v5;
        if ((v30 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = (v11 >> 3);
      if (v12 <= 2)
      {
        if (v12 == 1)
        {
          Data = PBReaderReadData();

          *(a1 + 32) = Data;
          goto LABEL_59;
        }

        if (v12 == 2)
        {
          v19 = 0;
          v20 = 0;
          v21 = 0;
          *(a1 + 48) |= 2u;
          while (1)
          {
            LOBYTE(v30) = 0;
            v22 = [a2 position] + 1;
            if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v21 |= (v30 & 0x7F) << v19;
            if ((v30 & 0x80) == 0)
            {
              break;
            }

            v19 += 7;
            v10 = v20++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_57;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v21;
          }

LABEL_57:
          v28 = 16;
          goto LABEL_58;
        }
      }

      else
      {
        switch(v12)
        {
          case 3u:
            v24 = objc_alloc_init(MBSSnapshot);
            [a1 addSnapshot:v24];

            v30 = 0;
            v31 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_10000AA6C(v24, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_46;
          case 4u:
            v26 = objc_alloc_init(MBSBackupAttributes);

            *(a1 + 24) = v26;
            v30 = 0;
            v31 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_10000CA58(v26, a2);
            if (!result)
            {
              return result;
            }

LABEL_46:
            PBReaderRecallMark();
            goto LABEL_59;
          case 5u:
            v13 = 0;
            v14 = 0;
            v15 = 0;
            *(a1 + 48) |= 1u;
            while (1)
            {
              LOBYTE(v30) = 0;
              v16 = [a2 position] + 1;
              if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v15 |= (v30 & 0x7F) << v13;
              if ((v30 & 0x80) == 0)
              {
                break;
              }

              v13 += 7;
              v10 = v14++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_53;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v15;
            }

LABEL_53:
            v28 = 8;
LABEL_58:
            *(a1 + v28) = v18;
            goto LABEL_59;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_59:
      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100012DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_msgSend(objc_msgSend(*(*(a1 + 32) + 80) objectForKeyedSubscript:{a2), "objectAtIndexedSubscript:", 0), "integerValue"}];
  [objc_msgSend(objc_msgSend(*(*(a1 + 32) + 80) objectForKeyedSubscript:{a2), "objectAtIndexedSubscript:", 1), "doubleValue"}];
  v8 = v7;
  v9 = [objc_msgSend(objc_msgSend(*(*(a1 + 32) + 80) objectForKeyedSubscript:{a3), "objectAtIndexedSubscript:", 0), "integerValue"}];
  [objc_msgSend(objc_msgSend(*(*(a1 + 32) + 80) objectForKeyedSubscript:{a3), "objectAtIndexedSubscript:", 1), "doubleValue"}];
  v11 = -1;
  if (v9 >= v6)
  {
    v11 = 1;
  }

  v12 = -1;
  if (v10 >= v8)
  {
    v12 = v10 != v8;
  }

  if (v9 == v6)
  {
    return v12;
  }

  else
  {
    return v11;
  }
}

id sub_100012EB0(void *a1)
{
  v2 = [a1 rangeOfCharacterFromSet:{+[NSCharacterSet newlineCharacterSet](NSCharacterSet, "newlineCharacterSet")}];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return a1;
  }

  v4 = [a1 substringToIndex:v2];

  return [v4 stringByAppendingString:@"..."];
}

uint64_t sub_1000133F0(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == 1)
  {
    if (a4)
    {
      v5 = MBGetSQLLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v8 = sub_100012EB0([NSString stringWithUTF8String:a4]);
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "SQL: %@", buf, 0xCu);
        sub_100012EB0([NSString stringWithUTF8String:a4]);
        _MBLog();
      }
    }
  }

  return 0;
}

int64_t sub_100013C88(id a1, id a2, id a3)
{
  v5 = [a2 snapshotID];
  if (v5 < [a3 snapshotID])
  {
    return -1;
  }

  v7 = [a2 snapshotID];
  return v7 != [a3 snapshotID];
}

id sub_100015598(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_alloc_init(NSAutoreleasePool);
  v9 = [a1 openWithPath:+[NSString mb_stringWithFileSystemRepresentation:](NSString flags:"mb_stringWithFileSystemRepresentation:" mode:{a2), a3, a4}];
  [v8 drain];
  return v9;
}

id sub_100015618(void *a1, uint64_t a2)
{
  v4 = objc_alloc_init(NSAutoreleasePool);
  v5 = [a1 closeWithFD:a2];
  [v4 drain];
  return v5;
}

id sub_100015670(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_alloc_init(NSAutoreleasePool);
  v7 = [a1 statWithFD:a2 buf:a3];
  [v6 drain];
  return v7;
}

id sub_1000156D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_alloc_init(NSAutoreleasePool);
  v9 = [a1 readWithFD:a2 bytes:a3 length:a4];
  [v8 drain];
  return v9;
}

id sub_100015740(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_alloc_init(NSAutoreleasePool);
  v9 = [a1 writeWithFD:a2 bytes:a3 length:a4];
  [v8 drain];
  return v9;
}

void sub_1000181D0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x10001815CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_10001A08C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001A0B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Passcode policy evalutation succeeded: %@", buf, 0xCu);
LABEL_11:
      _MBLog();
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v9 = [v6 domain];
  if (![v9 isEqualToString:LAErrorDomain])
  {

LABEL_9:
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Passcode policy evaluation failed: %@", buf, 0xCu);
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v10 = [v7 code];

  if (v10 != -5)
  {
    goto LABEL_9;
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Skipping passcode policy evaluation because there is no passcode set on device: %@", buf, 0xCu);
    goto LABEL_11;
  }

LABEL_12:

  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t sub_10001D044(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [*(a1 + 32) prefixDirectories];
  v9 = [v8 containsObject:v5];

  if ((v9 & 1) == 0)
  {
    v10 = MBBackupMetadataFilenames();
    v11 = [v10 containsObject:v5];

    if ((v11 & 1) == 0)
    {
      v12 = [MBFileID fileIDWithString:v5];
      if (v12 && (*(*(a1 + 32) + 184) & 1) == 0)
      {
        v13 = MBGetDefaultLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v17 = v12;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Already uploaded to snapshot: %@", buf, 0xCu);
          _MBLog();
        }

        v14 = [*(*(a1 + 32) + 144) setFlags:200 mask:-17 forFileID:v12];
      }
    }
  }

  objc_autoreleasePoolPop(v7);

  return 1;
}

uint64_t sub_10001D1E0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [*(a1 + 32) prefixDirectories];
  v9 = [v8 containsObject:v5];

  if ((v9 & 1) == 0)
  {
    v10 = MBBackupMetadataFilenames();
    v11 = [v10 containsObject:v5];

    if ((v11 & 1) == 0)
    {
      v12 = [MBFileID fileIDWithString:v5];
      if (v12)
      {
        v13 = MBGetDefaultLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v17 = v12;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Already uploaded to backup: %@", buf, 0xCu);
          _MBLog();
        }

        v14 = [*(*(a1 + 32) + 144) setFlags:72 mask:-17 forFileID:v12];
      }
    }
  }

  objc_autoreleasePoolPop(v7);

  return 1;
}

void sub_10001D584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001D59C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  if ([v5 isEqualToString:@"Manifest.db"])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  v8 = [*(a1 + 32) prefixDirectories];
  v9 = [v8 containsObject:v5];

  if ((v9 & 1) == 0)
  {
    v10 = MBBackupMetadataFilenames();
    v11 = [v10 containsObject:v5];

    if ((v11 & 1) == 0)
    {
      v12 = [MBFileID fileIDWithString:v5];
      if (v12)
      {
        v13 = MBGetDefaultLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v17 = v5;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Not already moved from snapshot: %@", buf, 0xCu);
          _MBLog();
        }

        v14 = [MBBackupOperation backupOperationWithType:0 domain:0 fileID:v12 path:0 size:0];
        [*(*(a1 + 32) + 160) addOperation:v14];
      }
    }
  }

  objc_autoreleasePoolPop(v7);

  return 1;
}

void sub_100020E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100020E64(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL sub_100020E7C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(*(a1 + 32) + 144);
  v6 = [v3 fileID];
  v7 = *(*(a1 + 40) + 8);
  obj = *(v7 + 40);
  v8 = [v5 fetchFileWithID:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v9 = 0;
    goto LABEL_13;
  }

  if (v8)
  {
    if (([v8 isRegularFile] & 1) != 0 || !objc_msgSend(v3, "isRegularFile"))
    {
LABEL_12:
      v9 = 1;
      goto LABEL_13;
    }

LABEL_9:
    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [v3 fileID];
      *buf = 138412290;
      v25 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Removed from backup: %@", buf, 0xCu);

      v21 = [v3 fileID];
      _MBLog();
    }

    v17 = [v3 domain];
    v18 = [v3 fileID];
    v19 = [MBBackupOperation backupOperationWithType:4 domain:v17 fileID:v18 path:0 size:0];

    [*(*(a1 + 32) + 160) addOperation:v19];
    goto LABEL_12;
  }

  v10 = *(*(a1 + 32) + 144);
  v11 = [v3 fileID];
  v12 = *(*(a1 + 40) + 8);
  v22 = *(v12 + 40);
  v13 = [v10 containsPlaceholderForFileID:v11 error:&v22];
  objc_storeStrong((v12 + 40), v22);

  v14 = *(*(*(a1 + 40) + 8) + 40);
  v9 = v14 == 0;
  if (!v14 && (v13 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_13:

  objc_autoreleasePoolPop(v4);
  return v9;
}

void sub_100024330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a69, 8);
  _Block_object_dispose(&STACK[0x200], 8);
  _Unwind_Resume(a1);
}

void sub_1000243DC(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = a3;
  v39 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  dispatch_semaphore_signal(*(a1 + 32));
  v6 = *(a1 + 120);
  v38 = *(a1 + 112);
  if (![*(a1 + 40) index])
  {
    if ([*(*(a1 + 48) + 16) isFlagSet:@"SimulateErrorAfterUploadingFirstBatch"])
    {
      v7 = [MBError errorWithCode:1 format:@"Simulated error after uploading first batch"];

      v5 = v7;
    }

    else if ([*(*(a1 + 48) + 16) isFlagSet:@"SimulateCrashAfterUploadingFirstBatch"])
    {
      abort();
    }
  }

  if (v5)
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [*(a1 + 40) index];
      *buf = 67109378;
      v41 = v9;
      v42 = 2112;
      v43 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to upload batch i:%u: %@", buf, 0x12u);
      v35 = [*(a1 + 40) index];
      v36 = v5;
      _MBLog();
    }
  }

  v10 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v12 = a2[3];
  v14 = *(a1 + 48);
  objc_sync_enter(v14);
  if (v5)
  {
    v15 = *(*(a1 + 72) + 8);
    v17 = *(v15 + 40);
    v16 = (v15 + 40);
    if (!v17)
    {
      objc_storeStrong(v16, v5);
    }
  }

  v18 = *(*(a1 + 48) + 176);
  v19 = [*(a1 + 56) allKeys];
  [v18 removeObjectsForKeys:v19];

  *(*(*(a1 + 80) + 8) + 24) += v10;
  v20 = *(*(*(a1 + 80) + 8) + 24);
  *(*(*(a1 + 88) + 8) + 24) += v11;
  v21 = *(*(a1 + 96) + 8);
  v22 = *(v21 + 24);
  if (v22 >= v13)
  {
    v22 = v13;
  }

  *(v21 + 24) = v22;
  v23 = *(*(a1 + 104) + 8);
  v24 = *(v23 + 24);
  if (v24 <= v12)
  {
    v24 = v12;
  }

  *(v23 + 24) = v24;
  objc_sync_exit(v14);

  v25 = (v39 - v6) / 1000000000.0;
  v26 = -1.0;
  if (v25 > 0.0)
  {
    v26 = v20 / v25 / 1000000.0;
  }

  add_explicit = atomic_fetch_add_explicit(&dword_10011E30C, 0xFFFFFFFF, memory_order_relaxed);
  v28 = MBGetDefaultLog();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = [*(a1 + 40) index];
    v30 = [*(a1 + 40) paths];
    v31 = [v30 count];
    v32 = *(a1 + 80);
    *buf = 67110400;
    v33 = *(*(v32 + 8) + 24);
    v41 = v29;
    v42 = 2048;
    v43 = v31;
    v44 = 2048;
    v45 = (v39 - v38) / 1000000000.0;
    v46 = 2048;
    v47 = v26;
    v48 = 1024;
    v49 = add_explicit - 1;
    v50 = 2048;
    v51 = v33;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Finished batch i:%u, c:%lu, t:%.3f, r:%.3f, o:%u s:%llu", buf, 0x36u);

    [*(a1 + 40) index];
    v34 = [*(a1 + 40) paths];
    [v34 count];
    v37 = *(*(*(a1 + 80) + 8) + 24);
    _MBLog();
  }

  dispatch_group_leave(*(a1 + 64));
}

void sub_1000247D8(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10009C4E8();
  }

  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

void sub_10002495C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v36 = a3;
  v5 = a4;
  v33 = v5;
  context = objc_autoreleasePoolPush();
  if (v5 && ([MBError isError:v5 withCode:2]& 1) == 0)
  {
    v37 = [MBBackupHelper driveWriteError:v5 description:@"Error uploading files to snapshot"];
    (*(*(a1 + 48) + 16))(*(a1 + 48), a2, v37, v30);
  }

  else
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = v36;
    v39 = [obj countByEnumeratingWithState:&v42 objects:v52 count:16];
    if (v39)
    {
      v37 = 0;
      v38 = *v43;
      do
      {
        for (i = 0; i != v39; i = i + 1)
        {
          if (*v43 != v38)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v42 + 1) + 8 * i);
          v8 = objc_autoreleasePoolPush();
          v9 = [obj objectForKeyedSubscript:v7];
          v10 = [*(a1 + 32) objectForKeyedSubscript:v7];
          v11 = [v10 lastPathComponent];
          v12 = [MBFileID fileIDWithString:v11];

          if (!v12)
          {
            sub_10009C598();
          }

          v13 = *(a1 + 40);
          objc_sync_enter(v13);
          v14 = *(*(a1 + 40) + 176);
          v15 = v7;
          v16 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", [v7 fileSystemRepresentation]);
          v17 = [v14 objectForKeyedSubscript:v16];

          objc_sync_exit(v13);
          if (!v17)
          {
            sub_10009C5F8();
          }

          if (v9)
          {
            if (([MBError isError:v9 withCode:202]& 1) == 0)
            {
              v18 = MBGetDefaultLog();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                v19 = *(a1 + 64);
                *buf = 138413058;
                v47 = v7;
                v48 = 2112;
                v49 = v10;
                v50 = 1024;
                LODWORD(v51[0]) = v19;
                WORD2(v51[0]) = 2112;
                *(v51 + 6) = v9;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to upload %@ to %@ in batch %u: %@", buf, 0x26u);
                v32 = *(a1 + 64);
                _MBLog();
              }
            }

            v20 = *(a1 + 40);
            objc_sync_enter(v20);
            if ([MBError isError:v9 withCodes:4, 6, 7, 0])
            {
              v21 = MBGetDefaultLog();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                v22 = v21;
                if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                {
                  v23 = [v9 code];
                  *buf = 138412802;
                  v47 = v7;
                  v48 = 2048;
                  v49 = v23;
                  v50 = 2112;
                  v51[0] = v12;
                  _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "File removed before being uploaded: %@ (%ld, %@)", buf, 0x20u);
                }

                [v9 code];
                _MBLog();
              }

              [*(*(a1 + 40) + 16) setFlag:@"FileDeletedWhileScanning"];
              v24 = *(*(a1 + 40) + 168);
              v25 = [v17 domain];
              [v24 addObject:v25];

              v26 = [*(*(a1 + 40) + 144) setFlags:16 mask:-9 forFileID:v12];
            }

            else if (!+[MBError isError:withCodes:](MBError, "isError:withCodes:", v9, 9, 100, 0) || ([*(*(a1 + 40) + 144) flagsForFileID:v12 error:0] & 0x10) == 0)
            {
              v27 = [MBError isError:v9 withCode:105];
              if (!v37)
              {
                if (v27)
                {
                  v28 = @"No space left on host";
                }

                else
                {
                  v28 = @"Multiple errors uploading files";
                }

                if (v27)
                {
                  v29 = 105;
                }

                else
                {
                  v29 = 104;
                }

                v37 = [MBError errorWithCode:v29 format:v28];
              }
            }

            objc_sync_exit(v20);
          }

          objc_autoreleasePoolPop(v8);
        }

        v39 = [obj countByEnumeratingWithState:&v42 objects:v52 count:16];
      }

      while (v39);
    }

    else
    {
      v37 = 0;
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), a2, v37, v31);
  }

  objc_autoreleasePoolPop(context);
}

uint64_t sub_100026DB0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [*(a1 + 32) prefixDirectories];
  v9 = [v8 containsObject:v5];

  if ((v9 & 1) == 0)
  {
    v10 = MBBackupMetadataFilenames();
    v11 = [v10 containsObject:v5];

    if ((v11 & 1) == 0)
    {
      v12 = *(*(a1 + 32) + 136);
      v13 = [MBFileID fileIDWithString:v5];
      v14 = [v12 setFlags:32 forFileID:v13];
    }
  }

  objc_autoreleasePoolPop(v7);

  return 1;
}

void sub_100028894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_1000288B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = MBBackupMetadataFilenames();
  v9 = [v8 containsObject:v5];

  if (v9 & 1) != 0 || ([*(a1 + 32) prefixDirectories], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "containsObject:", v5), v10, (v11))
  {
    v12 = 0;
LABEL_4:
    v13 = 1;
    goto LABEL_5;
  }

  v12 = [MBFileID fileIDWithString:v5];
  v15 = *(a1 + 40);
  v16 = *(*(a1 + 48) + 8);
  obj = *(v16 + 40);
  v17 = [v15 containsRegularFileForFileID:v12 error:&obj];
  objc_storeStrong((v16 + 40), obj);
  v18 = *(*(*(a1 + 48) + 8) + 40);
  v13 = v18 == 0;
  if (!v18 && (v17 & 1) == 0)
  {
    v19 = MBGetDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v27 = v5;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Removed from backup: %@", buf, 0xCu);
      v24 = v5;
      _MBLog();
    }

    if (v12)
    {
      v20 = 0;
    }

    else
    {
      v21 = [*(a1 + 32) settingsContext];
      v22 = [v21 driveBackupDir];
      v20 = [v22 stringByAppendingPathComponent:v5];
    }

    v23 = [MBBackupOperation backupOperationWithType:*(a1 + 56) domain:0 fileID:v12 path:v20 size:0, v24];
    [*(*(a1 + 32) + 160) addOperation:v23];

    goto LABEL_4;
  }

LABEL_5:

  objc_autoreleasePoolPop(v7);
  return v13;
}

id sub_100028F5C()
{
  if (qword_10011E310 != -1)
  {
    sub_10009C8E0();
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1000291AC;
  v11 = sub_1000291BC;
  v12 = 0;
  v0 = sub_1000291C4();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100029208;
  block[3] = &unk_1000FD758;
  block[4] = &v7;
  dispatch_sync(v0, block);

  v1 = v8[5];
  if (!v1)
  {
    v4 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"NSString *MBTemporaryPath(void)"];
    [v4 handleFailureInFunction:v5 file:@"MBTempPathUtils.m" lineNumber:76 description:@"Unable to obtain MBTemporaryPath()"];

    v1 = v8[5];
  }

  v2 = v1;
  _Block_object_dispose(&v7, 8);

  return v2;
}

void sub_1000290D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000290EC(id a1)
{
  strcpy(v4, "/var/tmp/backupd-XXXXXXXXXXXXXXX");
  v1 = mkdtemp(v4);
  qword_10011E318 = v1;
  if (!v1)
  {
    v2 = [MBException alloc];
    v3 = @"Unable to create /var/tmp/backupd-XXXXXXXXXX directory (mkdtemp)";
    goto LABEL_6;
  }

  qword_10011E318 = strdup(v1);
  if (!qword_10011E318)
  {
    v2 = [MBException alloc];
    v3 = @"Unable to create /var/tmp/backupd-XXXXXXXXXX directory (strdup)";
LABEL_6:
    objc_exception_throw([v2 initWithCode:1 format:v3]);
  }
}

uint64_t sub_1000291AC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_1000291C4()
{
  if (qword_10011E328 != -1)
  {
    sub_10009C8F4();
  }

  v1 = qword_10011E320;

  return v1;
}

void sub_100029208(uint64_t a1)
{
  if (!qword_10011E318)
  {
    objc_exception_throw([[MBException alloc] initWithCode:1 format:@"Unable to create /var/tmp/backupd-XXXXXXXXXX directory"]);
  }

  snprintf(__str, 0x401uLL, "%s/XXXXXXXXXXXXXXX", qword_10011E318);
  if (mktemp(__str))
  {
    v2 = [[NSString alloc] initWithUTF8String:__str];
    v3 = *(*(a1 + 32) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  else
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *__error();
      *buf = 67109120;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "mktemp failed: %{errno}d", buf, 8u);
      v6 = *__error();
      _MBLog();
    }
  }
}

void sub_100029350()
{
  v0 = sub_1000291C4();
  dispatch_sync(v0, &stru_1000FD778);
}

void sub_100029398(id a1)
{
  if (qword_10011E318)
  {
    v1 = [NSString stringWithUTF8String:?];
    v2 = MBGetDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v6 = v1;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Removing temporary directory at %{public}@", buf, 0xCu);
      _MBLog();
    }

    v3 = +[NSFileManager defaultManager];
    v4 = [v3 removeItemAtPath:v1 error:0];

    if (v4)
    {
      free(qword_10011E318);
      qword_10011E318 = 0;
    }
  }
}

void sub_1000294B4(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("MBTemporaryPath", v3);
  v2 = qword_10011E320;
  qword_10011E320 = v1;
}

uint64_t start(int a1, char *const *a2)
{
  MBSetIsRunningInDaemon();
  MBLogEnableFileLogging();
  v4 = 2;
  do
  {
    while (1)
    {
      v5 = getopt_long(a1, a2, "hkl", &off_10011DD00, 0);
      if (v5 <= 106)
      {
        break;
      }

      if (v5 == 107)
      {
        v4 = 0;
      }

      else if (v5 == 108)
      {
        v4 = 1;
      }
    }

    if (v5 == -1)
    {
      v6 = objc_alloc_init(NSAutoreleasePool);
      v7 = MBGetDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = MBDeviceUDID_Legacy();
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Device UDID: %@", buf, 0xCu);
        MBDeviceUDID_Legacy();
        _MBLog();
      }

      atexit_b(&stru_1000FD7B8);
      v8 = [MBDeviceManager deviceManagerWithCheckinMethod:v4];
      v9 = [(MBDeviceManager *)v8 open];
      if (v9)
      {
        v10 = v9;
        v11 = MBGetDefaultLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v20 = v10;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Error opening connection: %@", buf, 0xCu);
          _MBLog();
        }

        sub_100001BA0(1);
      }

      v12 = [(MBDeviceManager *)v8 run];
      if (v12)
      {
        v13 = v12;
        v14 = MBGetDefaultLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v20 = v13;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Error running connection: %@", buf, 0xCu);
          _MBLog();
        }

        sub_100001BA0(1);
      }

      v15 = [(MBDeviceManager *)v8 close];
      if (v15)
      {
        v16 = v15;
        v17 = MBGetDefaultLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v20 = v16;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Error closing connection: %@", buf, 0xCu);
          _MBLog();
        }

        sub_100001BA0(1);
      }

      [v6 drain];
      sub_100001BA0(0);
    }
  }

  while (v5 != 104);
  printf("Usage: %s [options]\n\n  -k, --lockdown   check-in with lockdown\n  -l, --launchd    check-in with launchd\n  -h, --help       print this message and exit\n", *a2);
  return 0;
}

void sub_10002B890(id a1, BOOL a2, NSError *a3)
{
  if (!a2)
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v6 = a3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to save account: %@", buf, 0xCu);
      _MBLog();
    }
  }
}

id sub_10002BA60(uint64_t a1, uint64_t a2)
{
  v3 = DLGetDeviceLinkConnectionContext();

  return [v3 _acceptFailedCallback:a2];
}

id sub_10002BA98(uint64_t a1, uint64_t a2)
{
  v3 = DLGetDeviceLinkConnectionContext();

  return [v3 _disconnectCallback:a2];
}

id sub_10002BAD0(uint64_t a1, uint64_t a2)
{
  v3 = DLGetDeviceLinkConnectionContext();

  return [v3 _processMessageCallback:a2];
}

id sub_10002C578()
{
  v0 = CFPreferencesCopyValue(@"DebugContext", @"com.apple.MobileBackup", @"mobile", kCFPreferencesAnyHost);
  if (!v0)
  {
    return &__NSDictionary0__struct;
  }

  v1 = v0;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MBGetDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v5 = @"com.apple.MobileBackup";
      v6 = 2112;
      v7 = @"DebugContext";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Preference %@ %@ not a dictionary", buf, 0x16u);
      _MBLog();
    }

    CFRelease(v1);
    return &__NSDictionary0__struct;
  }

  return v1;
}

void sub_10002D7E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002D7F8(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("MBPrefetchPath", v3);
  v2 = qword_10011E330;
  qword_10011E330 = v1;
}

uint64_t sub_10002D85C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10002D874(uint64_t a1)
{
  v2 = mkpath_np(*(a1 + 56), 0x1C0u);
  if (v2 == 17)
  {
    goto LABEL_9;
  }

  if (v2)
  {
    v3 = MBGetDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = *__error();
      *buf = 138412546;
      v15 = v5;
      v16 = 1024;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "mkdir failed at %@: %{errno}d", buf, 0x12u);
      v12 = *(a1 + 32);
      v13 = *__error();
      goto LABEL_7;
    }
  }

  else
  {
    v3 = MBGetDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 138412290;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Created the directory at %@", buf, 0xCu);
      v11 = *(a1 + 32);
LABEL_7:
      _MBLog();
    }
  }

LABEL_9:
  v7 = *(a1 + 32);
  if (*(a1 + 40))
  {
    [v7 stringByAppendingPathComponent:?];
  }

  else
  {
    sub_100038728(v7);
  }
  v8 = ;
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void sub_1000313A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 224), 8);
  _Block_object_dispose((v39 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10003140C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100031424(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if (![v3 isRegularFile])
  {
    goto LABEL_22;
  }

  v5 = a1 + 32;
  v6 = 1;
  if ([*(a1 + 32) _shouldRestoreContentWithFile:v3 quiet:1])
  {
    v7 = *(a1 + 32);
    v8 = v7[25];
    v9 = [v7 debugContext];
    v10 = *(*(a1 + 40) + 8);
    obj = *(v10 + 40);
    v11 = [v8 restoreBehaviorForFile:v3 debugContext:v9 error:&obj];
    objc_storeStrong((v10 + 40), obj);

    if (v11 == 1)
    {
      v6 = 0;
      LOBYTE(a1) = 1;
      goto LABEL_23;
    }

    if (v11 == -1)
    {
      v6 = 0;
      LOBYTE(a1) = 0;
      goto LABEL_23;
    }

    v12 = *(*v5 + 144);
    v13 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v3 inodeNumber]);
    v14 = [v12 objectForKeyedSubscript:v13];

    if (v14)
    {
      v15 = [*(*v5 + 136) fetchFileWithID:v14 error:0];
      if (!v15)
      {
        sub_10009D508();
      }

      v16 = [v15 lastModified];
      if (v16 == [v3 lastModified])
      {
        v17 = [v15 domain];
        v18 = [v17 volumeMountPoint];
        v19 = [v3 domain];
        v20 = [v19 volumeMountPoint];
        v21 = [v18 isEqualToString:v20];

        if (v21)
        {
          v22 = 1;
          goto LABEL_18;
        }

LABEL_15:
        if ((*(*(*(a1 + 48) + 8) + 24) - 31) >= 0xFFFFFFFFFFFFFFE0)
        {
          v25 = *(*(*(a1 + 56) + 8) + 24);
          if (!(([v3 size] + v25) >> 26))
          {
            goto LABEL_20;
          }
        }

        v22 = 0;
LABEL_18:
        v26 = *(*(a1 + 32) + 104);
        v27 = [MBDriveOperation operationToDownloadFilesWithCount:*(*(*(a1 + 48) + 8) + 24) size:*(*(*(a1 + 56) + 8) + 24)];
        [v26 addOperation:v27];

        *(*(*(a1 + 48) + 8) + 24) = 0;
        *(*(*(a1 + 56) + 8) + 24) = 0;
        ++*(*(*(a1 + 64) + 8) + 24);
        if (v22)
        {
          v28 = (*(*(a1 + 80) + 8) + 24);
          v29 = 1;
LABEL_21:
          *v28 += v29;

LABEL_22:
          v6 = 1;
          goto LABEL_23;
        }

LABEL_20:
        ++*(*(*(a1 + 48) + 8) + 24);
        ++*(*(*(a1 + 72) + 8) + 24);
        ++*(*(a1 + 32) + 160);
        *(*(*(a1 + 56) + 8) + 24) += [v3 size];
        v29 = [v3 size];
        v28 = (*(a1 + 32) + 168);
        goto LABEL_21;
      }
    }

    else
    {
      v15 = [v3 fileID];
      v23 = *(*v5 + 144);
      v24 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v3 inodeNumber]);
      [v23 setObject:v15 forKeyedSubscript:v24];
    }

    goto LABEL_15;
  }

LABEL_23:
  objc_autoreleasePoolPop(v4);

  return (v6 | a1) & 1;
}

void sub_1000329E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 224), 8);
  _Block_object_dispose((v39 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100032A58(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = (a1 + 32);
  if (![*(a1 + 32) _shouldRestoreContentWithFile:v3 quiet:0])
  {
    goto LABEL_84;
  }

  v6 = *(a1 + 32);
  v7 = v6[25];
  v8 = [v6 debugContext];
  v9 = *(*(a1 + 40) + 8);
  obj = *(v9 + 40);
  v10 = [v7 restoreBehaviorForFile:v3 debugContext:v8 error:&obj];
  objc_storeStrong((v9 + 40), obj);

  if (v10 != 1)
  {
    if (v10 == -1)
    {
LABEL_80:
      v10 = 0;
      goto LABEL_85;
    }

    v11 = [*(*(a1 + 32) + 200) restorePathForDriveRestorable:v3];
    v12 = *(*(a1 + 32) + 200);
    v13 = [v3 domain];
    v14 = [v3 relativePath];
    v15 = [v12 validateRestoreDomain:v13 relativePath:v14];
    v16 = *(*(a1 + 40) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    if (v15)
    {
LABEL_79:

      goto LABEL_80;
    }

    v18 = [v3 relativePath];
    v19 = [v18 length];

    if (!v19)
    {
      v20 = [v11 stringByDeletingLastPathComponent];
      v21 = MBGetDefaultLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v113 = v20;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Creating directory: %@", buf, 0xCu);
        v92 = v20;
        _MBLog();
      }

      v22 = +[NSFileManager defaultManager];
      v110 = 0;
      v23 = [v22 createDirectoryAtPath:v20 withIntermediateDirectories:1 attributes:0 error:&v110];
      v24 = v110;

      if ((v23 & 1) == 0)
      {
        v43 = [MBError errorWithCode:102 error:v24 path:v20 format:@"Error creating directory"];
        v44 = *(*(a1 + 40) + 8);
        v45 = *(v44 + 40);
        *(v44 + 40) = v43;
LABEL_69:

        goto LABEL_79;
      }
    }

    if ([v3 isDirectory])
    {
      v25 = MBGetDefaultLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = [v3 description];
        v27 = [v3 fileID];
        *buf = 138412546;
        v113 = v26;
        v114 = 2112;
        v115 = v27;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Restoring directory: %@ (%@)", buf, 0x16u);

        v28 = [v3 description];
        v94 = [v3 fileID];
        _MBLog();
      }

      v29 = [MBRestorableOperation restore:v3 directoryAtPath:v11 settingDataProtection:1 settingOwnershipAndFlags:1];
LABEL_14:
      v30 = *(*(a1 + 40) + 8);
      v20 = *(v30 + 40);
      *(v30 + 40) = v29;
LABEL_78:

      if (*(*(*(a1 + 40) + 8) + 40))
      {
        goto LABEL_79;
      }

      v86 = [v3 domain];
      v87 = [v86 isAppDomain];

      if (v87)
      {
        v88 = *(*v5 + 19);
        v89 = [v3 domain];
        v90 = [v89 containerID];
        [v88 addObject:v90];
      }

LABEL_84:
      v10 = 1;
      goto LABEL_85;
    }

    if (![v3 isRegularFile])
    {
      if ([v3 isSymbolicLink])
      {
        v36 = MBGetDefaultLog();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          v37 = [v3 description];
          v38 = [v3 fileID];
          *buf = 138412546;
          v113 = v37;
          v114 = 2112;
          v115 = v38;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "Restoring symbolic link: %@ (%@)", buf, 0x16u);

          v39 = [v3 description];
          v95 = [v3 fileID];
          _MBLog();
        }

        v20 = [v3 target];
        v40 = [MBRestorableOperation restore:v3 symbolicLinkAtPath:v11 withTarget:v20 settingOwnershipAndFlags:1];
        v41 = *(*(a1 + 40) + 8);
        v42 = *(v41 + 40);
        *(v41 + 40) = v40;

        goto LABEL_78;
      }

      v29 = +[MBError errorWithCode:format:](MBError, "errorWithCode:format:", 205, @"Invalid file type: 0%o", [v3 type]);
      goto LABEL_14;
    }

    v31 = *(*v5 + 18);
    v32 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v3 inodeNumber]);
    v24 = [v31 objectForKeyedSubscript:v32];

    if (!v24 || ([v3 fileID], v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v24, "isEqualToFileID:", v33), v33, (v34 & 1) != 0))
    {
      v20 = 0;
LABEL_19:
      v35 = 0;
      goto LABEL_42;
    }

    v46 = *(*(a1 + 32) + 136);
    v47 = *(*(a1 + 40) + 8);
    v109 = *(v47 + 40);
    v106 = v24;
    v20 = [v46 fetchFileWithID:v24 error:&v109];
    objc_storeStrong((v47 + 40), v109);
    if (!v20)
    {
      sub_10009D568();
    }

    v101 = [v20 domain];
    v48 = [v101 volumeMountPoint];
    v49 = [v3 domain];
    v50 = [v49 volumeMountPoint];
    v98 = [v48 isEqualToString:v50];

    if ((v98 & 1) == 0)
    {
      v51 = MBGetDefaultLog();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "Not hard linking files with same inode number because they are on different volumes", buf, 2u);
        _MBLog();
      }

      v20 = 0;
    }

    v52 = [v20 lastModified];
    if (v52 != [v3 lastModified])
    {
      v53 = MBGetDefaultLog();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "Not hard linking files with same inode number because modification times differ", buf, 2u);
        _MBLog();
      }

      v20 = 0;
    }

    v54 = [v20 domain];
    v55 = [v54 name];
    if ([v55 isEqualToString:@"HomeKitDomain"])
    {

      v24 = v106;
    }

    else
    {
      v99 = [v3 domain];
      v56 = [v99 name];
      v102 = [v56 isEqualToString:@"HomeKitDomain"];

      v24 = v106;
      if (!v102)
      {
        goto LABEL_19;
      }
    }

    v57 = MBGetDefaultLog();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "Not hard linking known duplicate file in HomeKitDomain", buf, 2u);
      _MBLog();
    }

    v20 = 0;
    v35 = 1;
LABEL_42:
    if ([*v5 encrypted])
    {
      v58 = [v3 encryptionKey];

      if (!v58)
      {
        v45 = [v3 fileID];
        v82 = [MBError errorWithCode:205 format:@"Encryption key missing: %@ (%@)", v3, v45];
        v83 = *(*(a1 + 40) + 8);
        v74 = *(v83 + 40);
        *(v83 + 40) = v82;
        goto LABEL_68;
      }
    }

    if (!v20 && [*(*(*(a1 + 48) + 8) + 40) count] - 31 >= 0xFFFFFFFFFFFFFFE0)
    {
      v59 = *(*(*(a1 + 56) + 8) + 24);
      if (!(([v3 size] + v59) >> 26))
      {
        goto LABEL_60;
      }
    }

    v60 = [*(a1 + 32) _restoreRegularFiles:*(*(*(a1 + 48) + 8) + 40) size:*(*(*(a1 + 56) + 8) + 24)];
    v61 = *(*(a1 + 40) + 8);
    v62 = *(v61 + 40);
    *(v61 + 40) = v60;

    [*(*(*(a1 + 48) + 8) + 40) removeAllObjects];
    *(*(*(a1 + 56) + 8) + 24) = 0;
    *(*(*(a1 + 64) + 8) + 24) += [*(*(*(a1 + 48) + 8) + 40) count];
    ++*(*(*(a1 + 72) + 8) + 24);
    if (!v20)
    {
LABEL_60:
      if ((v35 & 1) == 0)
      {
        [*(*(*(a1 + 48) + 8) + 40) addObject:v3];
        *(*(*(a1 + 56) + 8) + 24) += [v3 size];
      }

      goto LABEL_77;
    }

    v107 = v24;
    v45 = [*(*v5 + 25) restorePathForDriveRestorable:v20];
    v63 = [v45 fileSystemRepresentation];
    if (!v63)
    {
      sub_10009D5F4();
    }

    v64 = v63;
    v65 = [v11 fileSystemRepresentation];
    if (!v65)
    {
      sub_10009D5C8();
    }

    v66 = v65;
    v67 = MBGetDefaultLog();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
    {
      [v3 fileID];
      v68 = v103 = v45;
      *buf = 136315650;
      v113 = v64;
      v114 = 2080;
      v115 = v66;
      v116 = 2112;
      v117 = v68;
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_INFO, "Restoring hard link from %s to %s (%@)", buf, 0x20u);

      [v3 fileID];
      v97 = v93 = v66;
      _MBLog();

      v45 = v103;
    }

    if (!link(v64, v66))
    {
LABEL_76:
      ++*(*(*(a1 + 80) + 8) + 24);

      v24 = v107;
LABEL_77:

      goto LABEL_78;
    }

    if ([*v5 isDeviceTransferEngine] && _os_feature_enabled_impl())
    {
      if (*__error() != 17 || ([v45 isEqualToString:v11] & 1) != 0)
      {
        goto LABEL_76;
      }

      v104 = v45;
      v69 = +[NSFileManager defaultManager];
      v108 = 0;
      v70 = [v69 removeItemAtPath:v11 error:&v108];
      v100 = v108;

      if (v70)
      {
        if (link(v64, v66))
        {
          v45 = v104;
          v71 = [MBError posixErrorWithPath:v11 format:@"hard link error: %@", v104];
          v72 = *(*(a1 + 40) + 8);
          v73 = *(v72 + 40);
          *(v72 + 40) = v71;

          v24 = v107;
          v74 = v100;
LABEL_68:

          goto LABEL_69;
        }

        v45 = v104;
        goto LABEL_74;
      }

      v81 = MBGetDefaultLog();
      if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v113 = v11;
        v114 = 2112;
        v115 = v100;
        _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, "Failed to remove existing hard link at %@: %@", buf, 0x16u);
        _MBLog();
      }

      v45 = v104;
    }

    else
    {
      if (*__error() != 17)
      {
        goto LABEL_67;
      }

      v105 = v45;
      v75 = [NSString stringWithUTF8String:v64];
      v76 = [NSString stringWithUTF8String:v66];
      v77 = [v75 isEqualToString:v76];

      v45 = v105;
      if (!v77)
      {
LABEL_67:
        v84 = [MBError posixErrorWithPath:v11 format:@"link error to %@", v45, v93, v97];
        v85 = *(*(a1 + 40) + 8);
        v74 = *(v85 + 40);
        *(v85 + 40) = v84;
        v24 = v107;
        goto LABEL_68;
      }

      v78 = MBGetDefaultLog();
      if (!os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_75;
      }

      v79 = [v3 domain];
      v80 = [v79 name];
      *buf = 138412546;
      v113 = v105;
      v114 = 2112;
      v115 = v80;
      v100 = v78;
      _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "Ignoring spurious hard link at %@ for %@", buf, 0x16u);

      v45 = v105;
      v81 = [v3 domain];
      v96 = [v81 name];
      _MBLog();
    }

LABEL_74:
    v78 = v100;
LABEL_75:

    goto LABEL_76;
  }

LABEL_85:
  objc_autoreleasePoolPop(v4);

  return v10;
}

void sub_100035A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100035A50(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4[25];
  v6 = [v4 debugContext];
  v7 = *(*(a1 + 40) + 8);
  obj = *(v7 + 40);
  v8 = [v5 restoreBehaviorForFile:v3 debugContext:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);

  if (v8 != 1)
  {
    if (v8 == -1)
    {
      v8 = 0;
    }

    else if ([v3 isDirectory])
    {
      v8 = 1;
      if ([*(a1 + 32) _shouldRestoreContentWithFile:v3 quiet:1])
      {
        v9 = [*(*(a1 + 32) + 200) restorePathForDriveRestorable:v3];
        v10 = *(*(a1 + 40) + 8);
        v12 = *(v10 + 40);
        v8 = [MBRestorableOperation restore:v3 attributesToDestination:v9 error:&v12];
        objc_storeStrong((v10 + 40), v12);
      }
    }

    else
    {
      v8 = 1;
    }
  }

  return v8;
}

MBError *sub_100037110(void *a1, void *a2, SEL sel, uint64_t a4)
{
  Name = sel_getName(sel);
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v46 = Name;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Starting to notify plugins of %{public}s", buf, 0xCu);
    v33 = Name;
    _MBLog();
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v8 = v7;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v9 = [a2 countByEnumeratingWithState:&v41 objects:v51 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v42;
    v37 = *v42;
    while (2)
    {
      v13 = 0;
      v38 = v10;
      do
      {
        if (*v42 != v12)
        {
          objc_enumerationMutation(a2);
        }

        v14 = *(*(&v41 + 1) + 8 * v13);
        v15 = objc_autoreleasePoolPush();
        if ([a1 isCanceled])
        {
          *&v22 = COERCE_DOUBLE([MBError errorWithCode:202 description:@"Canceled"]);
LABEL_24:
          objc_autoreleasePoolPop(v15);
          goto LABEL_25;
        }

        if (objc_opt_respondsToSelector())
        {
          v16 = a1;
          v17 = objc_opt_class();
          v18 = class_getName(v17);
          v19 = MBGetDefaultLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *buf = 136446466;
            v46 = v18;
            v47 = 2082;
            v48 = Name;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Notifying %{public}s of %{public}s", buf, 0x16u);
            v34 = v18;
            v35 = Name;
            _MBLog();
          }

          [NSDate timeIntervalSinceReferenceDate:v34];
          v21 = v20;
          *&v22 = COERCE_DOUBLE((*(a4 + 16))(a4, v14));
          +[NSDate timeIntervalSinceReferenceDate];
          if (*&v22 != 0.0)
          {
            v27 = v22;
            v28 = MBGetDefaultLog();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446722;
              v46 = v18;
              v47 = 2082;
              v48 = Name;
              v49 = 2112;
              v50 = *&v22;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Failed to notify %{public}s of %{public}s: %@", buf, 0x20u);
              v35 = Name;
              v36 = *&v22;
              v34 = v18;
              _MBLog();
            }

            goto LABEL_24;
          }

          v24 = v23;
          v25 = MBGetDefaultLog();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = v24 - v21;
            *buf = 136446722;
            v46 = v18;
            v47 = 2082;
            v48 = Name;
            v49 = 2048;
            v50 = v26;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Notified %{public}s of %{public}s in %0.3fs", buf, 0x20u);
            v36 = v26;
            v34 = v18;
            v35 = Name;
            _MBLog();
          }

          ++v11;
          a1 = v16;
          v12 = v37;
          v10 = v38;
        }

        objc_autoreleasePoolPop(v15);
        v13 = v13 + 1;
      }

      while (v10 != v13);
      v10 = [a2 countByEnumeratingWithState:&v41 objects:v51 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 0;
  }

  *&v22 = 0.0;
LABEL_25:
  [NSDate timeIntervalSinceReferenceDate:v34];
  v30 = v29;
  v31 = MBGetDefaultLog();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    *buf = 134218498;
    v46 = v11;
    v47 = 2082;
    v48 = Name;
    v49 = 2048;
    v50 = v30 - v8;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Notified %lu plugins of %{public}s in %0.3fs", buf, 0x20u);
    _MBLog();
  }

  return v22;
}

MBError *sub_1000375C0(void *a1, void *a2, const char *a3, uint64_t a4)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10003762C;
  v5[3] = &unk_1000FD890;
  v5[4] = a4;
  v5[5] = a3;
  return sub_100037110(a1, a2, a3, v5);
}

MBError *sub_100037638(void *a1, void *a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000376A8;
  v6[3] = &unk_1000FD8B8;
  v6[5] = a5;
  v6[6] = a3;
  v6[4] = a4;
  return sub_100037110(a1, a2, a3, v6);
}

char *sub_100037754(const char *a1, void *a2, char *a3)
{
  v5 = a2;
  if (!a1)
  {
    sub_10009D77C();
  }

  v6 = v5;
  if (!v5)
  {
    sub_10009D750();
  }

  snprintf(__str, 0x401uLL, "%s/%s_XXXXXXXXXXXXXXX", a1, [v5 fileSystemRepresentation]);
  v7 = mkdtemp(__str);
  if (v7)
  {
    a3 = strdup(v7);
  }

  else
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *__error();
      *buf = 136315394;
      v14 = __str;
      v15 = 1024;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "=tmpdir= Failed to create %s directory (mkdtemp error: %d)", buf, 0x12u);
      v12 = *__error();
      _MBLog();
    }

    if (a3)
    {
      v10 = [NSString mb_stringWithFileSystemRepresentation:__str];
      *a3 = [MBError posixErrorWithPath:v10 format:@"TempDir: Failed to create directory (mkdtemp error: %d)", *__error()];

      a3 = 0;
    }
  }

  return a3;
}

void sub_100037B38(const char *a1)
{
  if (!a1)
  {
    sub_10009D91C();
  }

  v2 = mkpath_np(a1, 0x1FFu);
  if (v2 != 17)
  {
    v3 = v2;
    if (v2)
    {
      v5 = +[NSAssertionHandler currentHandler];
      v6 = [NSString stringWithUTF8String:"void _mkpath_if_necessary(const char *)"];
      [v5 handleFailureInFunction:v6 file:@"MBTemporaryDirectory.m" lineNumber:73 description:{@"TempDir: Unable to create %s directory (mkpath_np error: %d)", a1, v3}];
    }

    v4 = MBMobileUID();
    if (chown(a1, v4, v4))
    {
      sub_10009D880(a1);
    }
  }
}

id sub_100037EA4(const char *a1)
{
  if (!a1)
  {
    sub_10009DAB8();
  }

  snprintf(__str, 0x401uLL, "%s/XXXXXXXXXXXXXXX", a1);
  if (!mktemp(__str))
  {
    sub_10009DA24(a1);
  }

  v2 = [NSString mb_stringWithFileSystemRepresentation:__str];

  return v2;
}

uint64_t sub_1000383B8(_removefile_state *a1, uint64_t a2, void *a3)
{
  dst = 0;
  v5 = a3;
  removefile_state_get(a1, 5u, &dst);
  v6 = dst;
  v7 = [NSString stringWithUTF8String:a2];
  v8 = [MBError errorWithErrno:v6 path:v7 format:@"removefileat() error"];
  [v5 addObject:v8];

  return 0;
}

id sub_100038728(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    sub_10009DAE4();
  }

  v2 = v1;
  v3 = sub_100037EA4([v1 fileSystemRepresentation]);

  return v3;
}

void sub_100038780(id a1)
{
  v1 = strdup("/var/tmp/com.apple.backup.testing");
  qword_10011E340 = v1;

  sub_100037B38(v1);
}

void sub_1000387B8(id a1)
{
  v1 = strdup("/var/mobile/tmp/com.apple.backup.testing");
  qword_10011E350 = v1;

  sub_100037B38(v1);
}

void sub_1000387F0(id a1)
{
  v1 = strdup("/var/tmp/com.apple.backup");
  qword_10011E360 = v1;

  sub_100037B38(v1);
}

uint64_t sub_100038828(int a1)
{
  if ((a1 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_1000B72C8[a1 - 1];
  }
}

__CFString *sub_10003884C(int a1)
{
  if ((a1 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return off_1000FDA78[a1 - 1];
  }
}

uint64_t sub_100038870(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Data/Application"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"Data/PluginKitPlugin"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"Shared/AppGroup"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"System/Data"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"System/Shared"])
  {
    v2 = 5;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_10003949C(void *a1)
{
  v1 = [a1 stringByStandardizingPath];
  v2 = [v1 stringByDeletingLastPathComponent];
  v3 = [v1 substringFromIndex:{objc_msgSend(v2, "length") + 1}];
  v4 = [v3 stringByAppendingPathComponent:@"PlaceholderEntitlements.plist"];

  return v4;
}

id sub_100039D50()
{
  if (qword_10011E3B8 != -1)
  {
    sub_10009DBE8();
  }

  v1 = qword_10011E3B0;

  return v1;
}

id sub_100039D94()
{
  if (qword_10011E3C8 != -1)
  {
    sub_10009DBFC();
  }

  v1 = qword_10011E3C0;

  return v1;
}

id sub_100039DD8()
{
  if (qword_10011E3D8 != -1)
  {
    sub_10009DC10();
  }

  v1 = qword_10011E3D0;

  return v1;
}

void sub_10003A42C(id a1)
{
  qword_10011E370 = [NSSet setWithObjects:kCFBundleIdentifierKey, @"ContainerContentClass", kCFBundleVersionKey, @"Path", @"SafeHarborDockingDate", 0];

  _objc_release_x1();
}

void sub_10003A4B0(id a1)
{
  qword_10011E380 = [NSSet setWithObjects:&stru_1000FF270, 0];

  _objc_release_x1();
}

void sub_10003A504(id a1)
{
  v4 = sub_100039D94();
  v1 = [NSSet setWithObjects:@".com.apple.mobile_container_manager.metadata.plist", @"SystemData/com.apple.AuthenticationServices", @"Library/SplashBoard", 0];
  v2 = [v4 setByAddingObjectsFromSet:v1];
  v3 = qword_10011E390;
  qword_10011E390 = v2;
}

void sub_10003A5A0(id a1)
{
  v4 = sub_100039DD8();
  v1 = [NSSet setWithObjects:@"SystemData/com.apple.AuthenticationServices", @"Library/SplashBoard", @"Library/Caches/NeverRestore", 0];
  v2 = [v4 setByAddingObjectsFromSet:v1];
  v3 = qword_10011E3A0;
  qword_10011E3A0 = v2;
}

void sub_10003A63C(id a1)
{
  qword_10011E3B0 = [NSSet setWithObjects:@"Documents", @"Library", @"GeoJSON", 0];

  _objc_release_x1();
}

void sub_10003A6A4(id a1)
{
  qword_10011E3C0 = [NSSet setWithObjects:@"Library/Caches", @"Library/SyncedPreferences", @"Library/Saved Application State", @"SystemData/com.apple.AuthenticationServices", @"Library/SplashBoard", @"SystemData/com.apple.chrono", 0];

  _objc_release_x1();
}

void sub_10003A728(id a1)
{
  qword_10011E3D0 = [NSSet setWithObjects:@"NewsstandArtwork", @"Library/Saved Application State", @"SystemData/com.apple.AuthenticationServices", @"Library/SplashBoard", @"SystemData/com.apple.chrono", 0];

  _objc_release_x1();
}

void sub_10003A7A4(id a1)
{
  qword_10011E3E0 = [NSSet setWithObjects:&stru_1000FF270, 0];

  _objc_release_x1();
}

void sub_10003A7F8(id a1)
{
  v4 = sub_100039D94();
  v1 = [NSSet setWithObjects:@".com.apple.mobile_container_manager.metadata.plist", @"Library/Saved Application State", @"SystemData/com.apple.AuthenticationServices", @"Library/SplashBoard", 0];
  v2 = [v4 setByAddingObjectsFromSet:v1];
  v3 = qword_10011E3F0;
  qword_10011E3F0 = v2;
}

void sub_10003A89C(id a1)
{
  v4 = sub_100039DD8();
  v1 = [NSSet setWithObjects:@"Library/Saved Application State", @"SystemData/com.apple.AuthenticationServices", @"Library/SplashBoard", 0];
  v2 = [v4 setByAddingObjectsFromSet:v1];
  v3 = qword_10011E400;
  qword_10011E400 = v2;
}

void sub_10003B058(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  if (!v5)
  {
    sub_10009DC8C();
  }

  v7 = v6;
  v8 = MBGetDefaultLog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (a3)
  {
    if (v9)
    {
      v13 = *(a1 + 32);
      *buf = 138412802;
      v23 = v13;
      v24 = 2048;
      v25 = a3;
      v26 = 2112;
      v27 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "=atc-bundles= %@: attrs:0x%lx, pathNotToBackup:%@", buf, 0x20u);
      v20 = a3;
      v21 = v5;
      v17 = *(a1 + 32);
      _MBLog();
    }

    v11 = [*(a1 + 40) standardizedRelativePathFor:v5];
    v14 = *(a1 + 64);
    goto LABEL_12;
  }

  if (v9)
  {
    v10 = *(a1 + 32);
    *buf = 138412802;
    v23 = v10;
    v24 = 2048;
    v25 = a3;
    v26 = 2112;
    v27 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "=atc-bundles= %@: attrs:0x%lx, pathToBackup:%@", buf, 0x20u);
    v20 = a3;
    v21 = v5;
    v17 = *(a1 + 32);
    _MBLog();
  }

  if ((a3 & 2) != 0 && (*(a1 + 72) - 3) >= 0xFFFFFFFE)
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      *buf = 138412546;
      v23 = v12;
      v24 = 2112;
      v25 = v5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "=atc-bundles= %@: Skipping redownloadable path: %@", buf, 0x16u);
      v18 = *(a1 + 32);
      _MBLog();
    }

    goto LABEL_13;
  }

  v11 = [*(a1 + 40) standardizedRelativePathFor:{v5, v17, v20, v21}];
  if (![*(a1 + 48) containsObject:v11])
  {
    [*(a1 + 48) addObject:v11];
    v14 = *(a1 + 56);
LABEL_12:
    [v14 addObject:{v11, v17, v20, v21}];
    goto LABEL_13;
  }

  v15 = MBGetDefaultLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 32);
    *buf = 138412546;
    v23 = v16;
    v24 = 2112;
    v25 = v5;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "=atc-bundles= %@: Skipping duplicate path: %@", buf, 0x16u);
    v19 = *(a1 + 32);
    _MBLog();
  }

LABEL_13:
  objc_autoreleasePoolPop(v7);
}

void sub_10003BE58(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = v3;
  v6 = [v5 purchaserDSID];
  v7 = v6;
  if (v6 && ([v6 isEqualToNumber:&off_1001093E0] & 1) == 0 && (objc_msgSend(*(a1 + 32), "containsObject:", v7) & 1) == 0)
  {
    if ([*(a1 + 40) addAccountWithDSID:v7])
    {
      v8 = [*(a1 + 48) accountWithUniqueIdentifier:v7];
      v9 = v8;
      if (v8)
      {
        v10 = [v8 accountName];
        v11 = [v9 uniqueIdentifier];
        v12 = [v11 stringValue];

        v13 = [v9 altDSID];
        [*(a1 + 56) addAppleID:v10 DSID:v12 altDSID:v13 dataClass:0];
        if ((*(a1 + 72) & 1) == 0)
        {
          v14 = *(a1 + 56);
          v15 = [v5 localizedNameForContext:0];
          [v14 addAssetDescriptionForAppleID:v10 assetDescription:v15];
        }

        [*(a1 + 32) addObject:v7];
      }

      else
      {
        v18 = *(a1 + 64);
        v19 = [v7 stringValue];
        v10 = [v18 aa_appleAccountWithPersonID:v19];

        if (!v10)
        {
LABEL_17:

          goto LABEL_18;
        }

        v12 = [v10 username];
        v13 = [v10 aa_personID];
        v20 = [v10 aa_altDSID];
        [*(a1 + 56) addAppleID:v12 DSID:v13 altDSID:v20 dataClass:0];
        if ((*(a1 + 72) & 1) == 0)
        {
          v23 = *(a1 + 56);
          v21 = [v5 localizedNameForContext:0];
          [v23 addAssetDescriptionForAppleID:v12 assetDescription:v21];
        }

        [*(a1 + 32) addObject:v7];
      }

      goto LABEL_17;
    }

    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [v5 applicationIdentifier];
      *buf = 138412546;
      v25 = v17;
      v26 = 2112;
      v27 = v7;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "=atc-bundles= Skipping %@ for account %@", buf, 0x16u);

      v22 = [v5 applicationIdentifier];
      _MBLog();
    }
  }

LABEL_18:

  objc_autoreleasePoolPop(v4);
}

void sub_10003CA7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003CAB8(uint64_t a1)
{
  v2 = MBGetDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Springboard is ready for a restore", v4, 2u);
    _MBLog();
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
  Current = CFRunLoopGetCurrent();
  CFRunLoopStop(Current);
}

void sub_10003D0D0(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "-restoreUserURL failed: %@", buf, 0xCu);
      _MBLog();
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

BOOL sub_10003D2B8()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  if (!v3)
  {
    sub_10009DD68();
  }

  if (!v2)
  {
    sub_10009DD3C();
  }

  v4 = v3;
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *v52 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Saving keychain data to %@", buf, 0xCu);
    _MBLog();
  }

  v6 = +[NSDate now];
  v7 = [v4 stringByAppendingString:@".tmp"];
  v8 = v7;
  v9 = [v7 fileSystemRepresentation];
  v10 = open_dprotected_np(v9, 1538, 1, 0, 256);
  if (v10 < 0)
  {
    *v2 = [MBError errorWithErrno:*__error() path:v7 format:@"Error writing keychain temp file (open_dprotected_np)"];
    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = *v2;
      *buf = 138412290;
      *v52 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "open_dprotected_np failed: %@", buf, 0xCu);
      v41 = *v2;
      _MBLog();
    }

LABEL_28:

    v26 = v10 >= 0;
    goto LABEL_30;
  }

  unlink(v9);
  if ((_SecKeychainWriteBackupToFileDescriptor() & 1) == 0)
  {
    v18 = [0 domain];
    if ([v18 isEqualToString:NSOSStatusErrorDomain])
    {
      v19 = [0 code] == -36;

      if (v19)
      {
        v20 = 106;
      }

      else
      {
        v20 = 100;
      }
    }

    else
    {

      v20 = 100;
    }

    *v2 = [MBError errorWithCode:v20 error:0 path:v7 format:@"Error writing keychain temp file"];
    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v21 = *v2;
      *buf = 138412290;
      *v52 = v21;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "_SecKeychainWriteBackupToFileDescriptor failed: %@", buf, 0xCu);
      v42 = *v2;
      _MBLog();
    }

    goto LABEL_24;
  }

  [v6 timeIntervalSinceNow];
  v12 = v11;
  v13 = MBGetDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    *v52 = v10;
    *&v52[4] = 2048;
    *&v52[6] = -v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Wrote keychain data to anonymous fd (%d) in %.3fs", buf, 0x12u);
    _MBLog();
  }

  if (lseek(v10, 0, 2) <= 0)
  {
    *v2 = [MBError errorWithErrno:*__error() path:v7 format:@"Keychain temp file contains no data"];
    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v22 = *v2;
      *buf = 138412290;
      *v52 = v22;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "_SecKeychainWriteBackupToFileDescriptor wrote no data: %@", buf, 0xCu);
      v43 = *v2;
      _MBLog();
    }

    goto LABEL_24;
  }

  if (lseek(v10, 0, 0))
  {
    *v2 = [MBError errorWithErrno:*__error() path:v7 format:@"lseek error"];
    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *v2;
      *buf = 138412290;
      *v52 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to seek to the beginning of the temp file: %@", buf, 0xCu);
      v40 = *v2;
      _MBLog();
    }

LABEL_24:

    v23 = 0;
    goto LABEL_25;
  }

  v28 = v4;
  v29 = [v4 fileSystemRepresentation];
  v30 = open_dprotected_np(v29, 1537, 1, 0, 256);
  if (v30 <= 0)
  {
    *v2 = [MBError errorWithErrno:*__error() path:v4 format:@"Error opening keychain backup (open_dprotected_np)"];
    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v35 = *v2;
      *buf = 138412290;
      *v52 = v35;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "open_dprotected_np failed: %@", buf, 0xCu);
      v44 = *v2;
      _MBLog();
    }

    goto LABEL_24;
  }

  bzero(buf, 0x1000uLL);
  do
  {
    v31 = read(v10, buf, 0x1000uLL);
    if (v31 < 0)
    {
      *v2 = [MBError errorWithErrno:*__error() path:v7 format:@"failed reading keychain temp FD"];
      v36 = MBGetDefaultLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = *v2;
        *v47 = 138412290;
        *v48 = v37;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "reading keychain temp FD failed: %@", v47, 0xCu);
        v45 = *v2;
        _MBLog();
      }

      goto LABEL_49;
    }

    if (write(v30, buf, v31) < 0)
    {
      *v2 = [MBError errorWithErrno:*__error() path:v4 format:@"failed writing keychain backup file"];
      v38 = MBGetDefaultLog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = *v2;
        *v47 = 138412290;
        *v48 = v39;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "writing keychain backup file failed: %@", v47, 0xCu);
        v46 = *v2;
        _MBLog();
      }

      unlink(v29);
LABEL_49:
      v23 = 0;
      goto LABEL_50;
    }
  }

  while (v31);
  v32 = MBGetDefaultLog();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    v33 = v32;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      [v6 timeIntervalSinceNow];
      *v47 = 67109634;
      *v48 = v10;
      *&v48[4] = 2112;
      *&v48[6] = v4;
      v49 = 2048;
      v50 = v12 - v34;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "Copied keychain data from anonymous fd (%d) to %@ in %.3fs", v47, 0x1Cu);
    }

    [v6 timeIntervalSinceNow];
    _MBLog();
  }

  v23 = 1;
LABEL_50:
  close(v30);
LABEL_25:

  close(v10);
  if (v23)
  {
    [v6 timeIntervalSinceNow];
    v25 = v24;
    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *v52 = v4;
      *&v52[8] = 2048;
      *&v52[10] = -v25;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Exported keychain data to %@ in %.3fs", buf, 0x16u);
      _MBLog();
    }

    goto LABEL_28;
  }

  v26 = 0;
LABEL_30:

  return v26;
}

void sub_10003DBEC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x10003DBBCLL);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10003DCCC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a1;
  if (!v6)
  {
    sub_10009DDEC();
  }

  if (!a2)
  {
    sub_10009DDC0();
  }

  if (!a4)
  {
    sub_10009DD94();
  }

  v7 = v6;
  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v34 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Restoring keychain backup at %@", buf, 0xCu);
    v28 = v7;
    _MBLog();
  }

  v32 = 0;
  v9 = [MBKeychain allPasswordItemsForServices:&off_100109540 error:&v32];
  v10 = v32;
  v11 = MBGetDefaultLog();
  v12 = v11;
  if (v9)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v9 count];
      v14 = MBStringWithArray();
      *buf = 67109378;
      *v34 = v13;
      *&v34[4] = 2112;
      *&v34[6] = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Preserving %d keychain items: %@", buf, 0x12u);

      v15 = [v9 count];
      MBStringWithArray();
      v29 = v28 = v15;
      _MBLog();
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    *v34 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Unable to fetch keychain items: %@", buf, 0xCu);
    v28 = v10;
    _MBLog();
  }

  v31 = 0;
  v16 = [MBProtectionClassUtils getWithPath:v7 error:&v31];
  v17 = v31;
  if (v16 == 1)
  {
    v18 = [NSFileHandle fileHandleForReadingAtPath:v7];
    v19 = v18;
    v20 = v18 != 0;
    if (v18)
    {
      v30[1] = 0;
      [v18 fileDescriptor];
      v21 = _SecKeychainRestoreBackupFromFileDescriptor();

      if ((v21 & 1) == 0)
      {
        v22 = MBGetDefaultLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          *v34 = v7;
          *&v34[8] = 2112;
          *&v34[10] = 0;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to restore keychain from %@: %@", buf, 0x16u);
          v28 = v7;
          v29 = 0;
          _MBLog();
        }

        *a4 = 0;
      }

      if ([v9 count])
      {
        v30[0] = 0;
        v23 = [MBKeychain addAllPasswordItems:v9 error:v30];
        v17 = v30[0];

        v24 = MBGetDefaultLog();
        v25 = v24;
        if (v23)
        {
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v26 = [v9 count];
            *buf = 67109120;
            *v34 = v26;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Added %d preserved keychain items to restored keychain", buf, 8u);
            [v9 count];
LABEL_29:
            _MBLog();
          }
        }

        else if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *v34 = v17;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to add preserved password items to keychain: %@", buf, 0xCu);
          goto LABEL_29;
        }

        goto LABEL_31;
      }

      v17 = 0;
    }

    else
    {
      *a4 = [MBError errorWithCode:101 path:v7 format:@"Error reading keychain backup"];
    }

LABEL_31:

    goto LABEL_32;
  }

  if (v16 == 255)
  {
    [MBError errorWithCode:101 error:v17 path:v7 format:@"Error getting keychain backup protection class"];
  }

  else
  {
    [MBError errorWithCode:1 path:v7 format:@"Unexpected keychain backup protection class: %d", v16];
  }

  *a4 = v20 = 0;
LABEL_32:

  return v20;
}

void sub_10003E89C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10003E8D4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10003E8EC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = 0;
  v3 = [MBKeychainPlugin exportKeychainForCKBackupEngine:v2 error:&v6];
  v4 = v6;
  v5 = v6;
  if ((v3 & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v4);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100040FF4(_Unwind_Exception *a1)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(a1);
}

void sub_10004100C(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x100041018);
}

id sub_100041020()
{
  v2[0] = kLockdownUniqueDeviceIDKey;
  v2[1] = kLockdownDeviceNameKey;
  v3[0] = @"UniqueDeviceID";
  v3[1] = @"UserAssignedDeviceName";
  v2[2] = kLockdownSerialNumberKey;
  v2[3] = kLockdownProductTypeKey;
  v3[2] = @"SerialNumber";
  v3[3] = @"ProductType";
  v2[4] = kLockdownBuildVersionKey;
  v2[5] = kLockdownProductVersionKey;
  v3[4] = @"BuildVersion";
  v3[5] = @"ProductVersion";
  v2[6] = kLockdownDeviceClassKey;
  v3[6] = @"DeviceClass";
  v0 = [NSDictionary dictionaryWithObjects:v3 forKeys:v2 count:7];

  return v0;
}

void sub_1000417A4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __int128 buf)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v23 = objc_begin_catch(a1);
      v24 = MBGetDefaultLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v23;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Exception while fetching last backup date: %@", &buf, 0xCu);
        _MBLog();
      }

      objc_end_catch();
    }

    else
    {
      objc_begin_catch(a1);
    }

    JUMPOUT(0x1000416ACLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000418CC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000418E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 committed];
  if (v4)
  {
    v5 = [v3 created];
    [v5 timeIntervalSinceReferenceDate];
    v7 = [NSNumber numberWithUnsignedLongLong:v6];
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(*(*(a1 + 32) + 8) + 40);
      *buf = 138412290;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Backup date is %@", buf, 0xCu);
      v13 = *(*(*(a1 + 32) + 8) + 40);
      _MBLog();
    }
  }

  return v4 ^ 1;
}

void sub_100042138(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x100041FF0);
  }

  _Unwind_Resume(exception_object);
}

void sub_100042FB0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x100042EA0);
  }

  _Unwind_Resume(exception_object);
}

void sub_100043B90(uint64_t a1)
{
  v1 = [*(a1 + 32) pql_database];
}

void sub_100043E64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100043EA0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100043EB8(uint64_t a1)
{
  v2 = [*(a1 + 32) pql_database];

  v3 = [*(a1 + 32) pql_database];

  v4 = [*(a1 + 32) pql_database];
  v5 = *(*(a1 + 48) + 8);
  obj = *(v5 + 40);
  v6 = [v4 close:&obj];
  objc_storeStrong((v5 + 40), obj);
  *(*(*(a1 + 40) + 8) + 24) = v6;
}

void sub_1000441E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_10004420C(uint64_t a1)
{
  v2 = [*(a1 + 32) pql_database];
  v6 = [v2 fetch:@"PRAGMA quick_check"];

  v3 = [v6 error];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 40) + 8) + 40) == 0;
}

void sub_100044314(uint64_t a1)
{
  v2 = [*(a1 + 32) pql_database];

  if (v2)
  {
    v3 = [*(a1 + 32) pql_database];
    [v3 flush];
  }
}

void sub_1000448AC(id a1, PQLConnection *a2, PQLStatement *a3, NSError *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v9 = MBGetDefaultLog();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (v10)
    {
      *buf = 138412802;
      v12 = v7;
      v13 = 2112;
      v14 = v6;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Sqlite request %@ failed on %@ with error [%@]", buf, 0x20u);
LABEL_6:
      _MBLog();
    }
  }

  else if (v10)
  {
    *buf = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Sqlite failed on %@ with error [%@]", buf, 0x16u);
    goto LABEL_6;
  }
}

void sub_100045184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000451B0(void *a1, uint64_t a2, void **a3)
{
  v4 = a1;
  v10[0] = @"CREATE TABLE IF NOT EXISTS Files (fileID TEXT PRIMARY KEY, domain TEXT, relativePath TEXT, flags INTEGER, file BLOB);";
  v10[1] = @"CREATE INDEX IF NOT EXISTS FilesDomainIdx ON Files(domain);";
  v10[2] = @"CREATE INDEX IF NOT EXISTS FilesRelativePathIdx ON Files(relativePath);";
  v10[3] = @"CREATE INDEX IF NOT EXISTS FilesFlagsIdx ON Files(flags);";
  v5 = [NSArray arrayWithObjects:v10 count:4];
  v9 = @"CREATE TABLE IF NOT EXISTS Properties (key TEXT PRIMARY KEY, value BLOB);";
  v6 = [NSArray arrayWithObjects:&v9 count:1];
  if (sub_100049160(v4, v5, a3))
  {
    v7 = sub_100049160(v4, v6, a3);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_1000452BC(uint64_t a1, void *a2)
{
  v3 = a2;
  obj = 0;
  v4 = objc_autoreleasePoolPush();
  v5 = (*(&unk_1000FDC50 + 3 * *(a1 + 48) + 1))(v3, *(a1 + 32), &obj);
  objc_autoreleasePoolPop(v4);
  if (v5)
  {
    v6 = [v3 setUserVersion:*(a1 + 56)];
  }

  else
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 52);
      v9 = *(a1 + 56);
      *buf = 67109634;
      v16 = v8;
      v17 = 1024;
      v18 = v9;
      v19 = 2112;
      v20 = obj;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Can't migrate from version %d to %d: %@", buf, 0x18u);
      v13 = *(a1 + 56);
      v12 = *(a1 + 52);
      _MBLog();
    }

    v10 = [*(a1 + 32) pql_database];
    [v10 close:0];

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
    v6 = 0;
  }

  return v6;
}

void sub_100045564(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_100045754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004576C(uint64_t a1)
{
  v2 = [*(a1 + 32) pql_database];
  v3 = [v2 execute:*(a1 + 40) args:**(a1 + 56)];

  if ((v3 & 1) == 0)
  {
    v7 = [*(a1 + 32) pql_database];
    v4 = [v7 lastError];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

void sub_100045970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100045988(uint64_t a1)
{
  v2 = [*(a1 + 32) pql_database];
  v3 = [v2 fetch:*(a1 + 40) args:**(a1 + 64)];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = *(a1 + 72);
  v5 = [v3 enumerateObjectsOfClass:objc_opt_class()];
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = *v26;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v26 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = *(*(&v25 + 1) + 8 * v8);
      v21 = 0;
      v22 = &v21;
      v23 = 0x2020000000;
      v24 = 1;
      v10 = *(a1 + 32);
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100045BF8;
      v18[3] = &unk_1000FDCD8;
      v20 = &v21;
      v11 = *(a1 + 48);
      v18[4] = v9;
      v19 = v11;
      [v10 performCallbackOnQueue:v18];
      LOBYTE(v10) = *(v22 + 24);

      _Block_object_dispose(&v21, 8);
      if ((v10 & 1) == 0)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v12 = [*(a1 + 32) pql_database];
  v13 = [v12 lastError];
  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  if ([*(a1 + 32) _isNotFoundError:*(*(*(a1 + 56) + 8) + 40)])
  {
    v16 = *(*(a1 + 56) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = 0;
  }
}

void sub_100045BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100045BF8(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  *(*(a1[6] + 8) + 24) = (*(a1[5] + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_100045DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100045E14(uint64_t a1)
{
  v2 = [*(a1 + 32) pql_database];
  v3 = [v2 fetchObjectOfClass:*(a1 + 64) sql:*(a1 + 40) args:**(a1 + 72)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) pql_database];
  v7 = [v6 lastError];

  if ([*(a1 + 32) _isNotFoundError:v7])
  {

    v7 = 0;
  }

  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void sub_100046E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100046EB8(uint64_t a1)
{
  v2 = [*(a1 + 32) pql_database];
  v3 = [*(a1 + 40) string];
  v10 = [v2 fetch:{@"SELECT flags FROM Files WHERE fileID = %@", v3}];

  if ([v10 next])
  {
    *(*(*(a1 + 48) + 8) + 24) = [v10 unsignedIntAtIndex:0];
  }

  v4 = [*(a1 + 32) pql_database];
  v5 = [v4 lastError];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if ([*(a1 + 32) _isNotFoundError:*(*(*(a1 + 56) + 8) + 40)])
  {
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;
  }
}

void sub_100047104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100047128(uint64_t a1)
{
  v2 = [*(a1 + 32) pql_database];
  v3 = [*(a1 + 40) string];
  v10 = [v2 fetch:{@"SELECT COUNT(*) FROM Files WHERE fileID = %@ AND file IS NOT NULL", v3}];

  if ([v10 next])
  {
    *(*(*(a1 + 48) + 8) + 24) = [v10 unsignedIntAtIndex:0] != 0;
  }

  v4 = [*(a1 + 32) pql_database];
  v5 = [v4 lastError];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if ([*(a1 + 32) _isNotFoundError:*(*(*(a1 + 56) + 8) + 40)])
  {
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;
  }
}

void sub_100047378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10004739C(uint64_t a1)
{
  v2 = [*(a1 + 32) pql_database];
  v3 = [*(a1 + 40) string];
  v10 = [v2 fetch:{@"SELECT COUNT(*) FROM Files WHERE fileID = %@ AND file IS NULL", v3}];

  if ([v10 next])
  {
    *(*(*(a1 + 48) + 8) + 24) = [v10 unsignedIntAtIndex:0] != 0;
  }

  v4 = [*(a1 + 32) pql_database];
  v5 = [v4 lastError];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if ([*(a1 + 32) _isNotFoundError:*(*(*(a1 + 56) + 8) + 40)])
  {
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;
  }
}

void sub_1000475EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100047610(uint64_t a1)
{
  v2 = [*(a1 + 32) pql_database];
  v3 = [*(a1 + 40) string];
  v10 = [v2 fetch:{@"SELECT COUNT(*) FROM Files WHERE fileID = %@ AND (flags & %lu) != 0 AND file IS NOT NULL", v3, 1}];

  if ([v10 next])
  {
    *(*(*(a1 + 48) + 8) + 24) = [v10 unsignedIntAtIndex:0] != 0;
  }

  v4 = [*(a1 + 32) pql_database];
  v5 = [v4 lastError];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if ([*(a1 + 32) _isNotFoundError:*(*(*(a1 + 56) + 8) + 40)])
  {
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;
  }
}

void sub_100047880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1000478A4(uint64_t a1)
{
  v2 = [*(a1 + 32) pql_database];
  v3 = [*(a1 + 40) string];
  v4 = [v2 fetch:{@"SELECT file, domain, relativePath FROM Files WHERE fileID = %@ AND file IS NOT NULL", v3}];

  if ([v4 next])
  {
    if ([*(a1 + 32) encrypted])
    {
      v5 = [v4 archivedObjectOfClass:objc_opt_class() atIndex:0];
      v6 = [*(a1 + 32) passwordData];
      v7 = [*(a1 + 32) salt];
      v8 = *(*(a1 + 48) + 8);
      obj = *(v8 + 40);
      v9 = [MBEncryptionUtilities decryptString:v5 withKey:v6 salt:v7 error:&obj];
      objc_storeStrong((v8 + 40), obj);

      if (!v9)
      {
LABEL_14:

        goto LABEL_15;
      }

      v10 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v9 error:0];
      v11 = [v10 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
      if (!v11)
      {
        v25 = [MBError errorWithCode:1 format:@"Failed to unarchive encrypted file (%@): %@", *(a1 + 40), v5];
        v26 = *(*(a1 + 48) + 8);
        v27 = *(v26 + 40);
        *(v26 + 40) = v25;

        goto LABEL_14;
      }

      v12 = v11;
    }

    else
    {
      v12 = [v4 archivedObjectOfClass:objc_opt_class() atIndex:0];
    }

    v13 = [v4 stringAtIndex:1];
    v14 = [*(a1 + 32) domainManager];
    v15 = [v14 domainForName:v13];

    if (v15)
    {
      [v12 setNonRedirectedDomain:v15];
      v16 = [*(a1 + 32) domainManager];
      v17 = [v12 relativePath];
      v18 = [v16 redirectDomain:v15 forRelativePath:v17];

      [v12 setDomain:v18];
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), v12);
    }

    else
    {
      v18 = MBGetDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = *(a1 + 40);
        *buf = 138412290;
        v31 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "File %@ exists in manifest without a domain entry in manifest properties", buf, 0xCu);
        v28 = *(a1 + 40);
        _MBLog();
      }
    }
  }

  v20 = [*(a1 + 32) pql_database];
  v21 = [v20 lastError];
  v22 = *(*(a1 + 48) + 8);
  v23 = *(v22 + 40);
  *(v22 + 40) = v21;

  if ([*(a1 + 32) _isNotFoundError:*(*(*(a1 + 48) + 8) + 40)])
  {
    v24 = *(*(a1 + 48) + 8);
    v5 = *(v24 + 40);
    *(v24 + 40) = 0;
    goto LABEL_14;
  }

LABEL_15:
}

void sub_100047DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100047DE4(uint64_t a1)
{
  v2 = [*(a1 + 32) pql_database];
  v10 = [v2 fetch:{@"SELECT COUNT(*) From Files WHERE (flags & %lu) = 0 AND file IS NOT NULL", 54}];

  if ([v10 next])
  {
    *(*(*(a1 + 40) + 8) + 24) = [v10 unsignedIntAtIndex:0] != 0;
  }

  v3 = [*(a1 + 32) pql_database];
  v4 = [v3 lastError];
  v5 = [v4 copy];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if ([*(a1 + 32) _isNotFoundError:*(*(*(a1 + 48) + 8) + 40)])
  {
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;
  }
}

void sub_100047EE8(uint64_t a1)
{
  v1 = [*(a1 + 32) pql_database];
  v2 = [v1 fetch:{@"SELECT fileID, domain, relativePath, flags From Files WHERE (flags & %lu) = 0 AND file IS NOT NULL", 54}];

  if ([v2 next])
  {
    do
    {
      v3 = MBGetDefaultLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = [v2 stringAtIndex:0];
        v5 = [v2 stringAtIndex:1];
        v6 = [v2 stringAtIndex:2];
        v7 = [v2 stringAtIndex:3];
        *buf = 138413058;
        v13 = v4;
        v14 = 2112;
        v15 = v5;
        v16 = 2112;
        v17 = v6;
        v18 = 2112;
        v19 = v7;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Referenced File Not In Backup: %@|%@|%@|%@", buf, 0x2Au);

        v8 = [v2 stringAtIndex:0];
        v9 = [v2 stringAtIndex:1];
        v10 = [v2 stringAtIndex:2];
        v11 = [v2 stringAtIndex:3];
        _MBLog();
      }
    }

    while (([v2 next] & 1) != 0);
  }
}

void sub_100048624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100048644(uint64_t a1)
{
  context = objc_autoreleasePoolPush();
  v2 = [*(a1 + 32) fetch:{@"SELECT file, domain, relativePath FROM Files WHERE file IS NOT NULL ORDER BY domain, relativePath ASC"}];
  if (![v2 next])
  {
LABEL_21:
    v26 = [*(a1 + 32) lastError];
    v27 = *(*(a1 + 56) + 8);
    v28 = *(v27 + 40);
    *(v27 + 40) = v26;

    if ([*(a1 + 40) _isNotFoundError:*(*(*(a1 + 56) + 8) + 40)])
    {
      v29 = *(*(a1 + 56) + 8);
      v30 = *(v29 + 40);
      *(v29 + 40) = 0;
    }

    goto LABEL_23;
  }

  while (1)
  {
    v3 = objc_autoreleasePoolPush();
    if ([*(a1 + 40) encrypted])
    {
      break;
    }

    v10 = [v2 archivedObjectOfClass:objc_opt_class() atIndex:0];
LABEL_7:
    v11 = [v2 stringAtIndex:{1, v31}];
    v12 = [*(a1 + 40) domainManager];
    v13 = [v12 domainForName:v11];

    if ([v13 isUninstalledAppDomain])
    {
      v14 = MBGetDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v10;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "File %@ exists in manifest for uninstalled app", &buf, 0xCu);
LABEL_15:
        v31 = v10;
        _MBLog();
        goto LABEL_16;
      }

      goto LABEL_16;
    }

    [v10 setNonRedirectedDomain:v13];
    if (!v13)
    {
      v14 = MBGetDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v10;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "File %@ exists in manifest without a domain entry in manifest properties", &buf, 0xCu);
        goto LABEL_15;
      }

LABEL_16:

      goto LABEL_17;
    }

    v15 = [*(a1 + 40) domainManager];
    v16 = [v10 relativePath];
    v17 = [v15 redirectDomain:v13 forRelativePath:v16];

    [v10 setDomain:v17];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v39 = 0x2020000000;
    v40 = 1;
    v18 = *(a1 + 40);
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100048B70;
    v33[3] = &unk_1000FDCD8;
    p_buf = &buf;
    v35 = *(a1 + 48);
    v19 = v10;
    v34 = v19;
    [v18 performCallbackOnQueue:v33];
    v20 = *(*(&buf + 1) + 24);

    _Block_object_dispose(&buf, 8);
    if ((v20 & 1) == 0)
    {

      objc_autoreleasePoolPop(v3);
      goto LABEL_21;
    }

LABEL_17:

    objc_autoreleasePoolPop(v3);
    if (([v2 next] & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v4 = [v2 archivedObjectOfClass:objc_opt_class() atIndex:0];
  v5 = [*(a1 + 40) passwordData];
  v6 = [*(a1 + 40) salt];
  v7 = *(*(a1 + 56) + 8);
  obj = *(v7 + 40);
  v8 = [MBEncryptionUtilities decryptString:v4 withKey:v5 salt:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);

  if (!v8)
  {
    goto LABEL_20;
  }

  v9 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v8 error:0];
  v10 = [v9 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
  if (v10)
  {

    goto LABEL_7;
  }

  v21 = [v2 stringAtIndex:1];
  v22 = [v2 stringAtIndex:2];
  v23 = [MBError errorWithCode:1 format:@"Failed to unarchive encrypted file (%@:%@): %@", v21, v22, v4];
  v24 = *(*(a1 + 56) + 8);
  v25 = *(v24 + 40);
  *(v24 + 40) = v23;

LABEL_20:
  objc_autoreleasePoolPop(v3);
LABEL_23:

  objc_autoreleasePoolPop(context);
}

void sub_100048B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100048B70(void *a1)
{
  v2 = a1[4];
  result = (*(a1[5] + 16))();
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void sub_100048BB0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 8);
  obj = *(v3 + 40);
  v4 = [v2 close:&obj];
  objc_storeStrong((v3 + 40), obj);
  if ((v4 & 1) == 0)
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Failed to close read-only connection to MBManifestDB: %@", buf, 0xCu);
      v7 = *(*(*(a1 + 40) + 8) + 40);
      _MBLog();
    }
  }
}

void sub_100048EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100048ECC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) pql_database];
  v4 = [v3 fetch:{@"SELECT value FROM Properties WHERE key = %@", *(a1 + 40)}];

  if ([v4 next])
  {
    v5 = *(a1 + 64);
    if (v5 == objc_opt_class())
    {
      v7 = [v4 dataAtIndex:0];
    }

    else
    {
      v6 = *(a1 + 64);
      if (v6 == objc_opt_class())
      {
        [v4 stringAtIndex:0];
      }

      else
      {
        [v4 unarchivedObjectOfClass:*(a1 + 64) atIndex:0];
      }
      v7 = ;
    }

    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  v10 = [*(a1 + 32) pql_database];
  v11 = [v10 lastError];

  if ([*(a1 + 32) _isNotFoundError:v11])
  {

    v11 = 0;
  }

  v12 = *(*(a1 + 56) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_100049160(void *a1, void *a2, void **a3)
{
  v5 = a1;
  v6 = a2;
  if (!a3)
  {
    sub_10009DEA8();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
LABEL_4:
    v11 = 0;
    while (1)
    {
      if (*v18 != v10)
      {
        objc_enumerationMutation(v7);
      }

      if (![v5 executeRaw:{*(*(&v17 + 1) + 8 * v11), v17}])
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
        {
          goto LABEL_4;
        }

        goto LABEL_10;
      }
    }

    v14 = [v5 lastError];

    if (v14)
    {
      v15 = *a3;
      *a3 = v14;
      v13 = v14;

      v12 = 0;
      goto LABEL_13;
    }

    v12 = 1;
  }

  else
  {
LABEL_10:
    v12 = 1;
    v13 = v7;
LABEL_13:
  }

  return v12;
}

uint64_t sub_100049398(void *a1)
{
  v1 = a1;
  v2 = [v1 managementDomain];
  v3 = [v2 hasPrefix:@"swift-playgrounds"];

  if (v3)
  {
    v4 = 2;
  }

  else
  {
    v5 = [v1 appClipMetadata];
    v4 = v5 != 0;
  }

  return v4;
}

id sub_100049E74(void *a1, void *a2)
{
  v3 = a1;
  v104 = a2;
  v4 = +[NSMutableDictionary dictionary];
  v5 = [v3 bundleIdentifier];
  if (!v5)
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v126 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "app.bundleIdentifier is nil: %@", buf, 0xCu);
      v73 = v3;
      _MBLog();
    }
  }

  [v4 setObject:v5 forKeyedSubscript:v73];
  v7 = sub_10003884C(1);
  [v4 setObject:v7 forKeyedSubscript:@"ContainerContentClass"];

  v8 = [v3 bundleVersion];

  if (v8)
  {
    v9 = [v3 bundleVersion];
    [v4 setObject:v9 forKeyedSubscript:kCFBundleVersionKey];
  }

  v10 = [v3 mb_applicationType];
  v85 = v10;
  if (v10)
  {
    [v4 setObject:v10 forKeyedSubscript:@"ApplicationType"];
  }

  else
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v126 = v5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "app.applicationType is nil for %@", buf, 0xCu);
      v74 = v5;
      _MBLog();
    }
  }

  v12 = [v3 mb_bundleURL];
  v84 = v12;
  if (v12)
  {
    v13 = sub_10004D348(v12);
    [v4 setObject:v13 forKeyedSubscript:@"Path"];
  }

  else
  {
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v126 = v5;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "app.bundleURL is nil for %@", buf, 0xCu);
      v75 = v5;
      _MBLog();
    }
  }

  v14 = [v3 dataContainerURL];
  v83 = v14;
  if (v14)
  {
    v15 = sub_10004D348(v14);
    [v4 setObject:v15 forKeyedSubscript:@"Container"];
  }

  else
  {
    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v126 = v5;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "app.dataContainerURL is nil for %@", buf, 0xCu);
      v75 = v5;
      _MBLog();
    }
  }

  v16 = [v3 mb_entitlements];
  v87 = v16;
  v88 = v5;
  if (![v16 count])
  {
    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      if (v87)
      {
        v18 = "empty";
      }

      else
      {
        v18 = "nil";
      }

      *buf = 136315394;
      v126 = v18;
      v127 = 2112;
      v128 = v88;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Found %s entitlements dictionary for %@", buf, 0x16u);
      v75 = v18;
      v79 = v88;
      _MBLog();
    }

    v16 = v87;
  }

  if (v16)
  {
    [v4 setObject:v16 forKeyedSubscript:@"Entitlements"];
  }

  v19 = [v3 applicationExtensionRecords];
  v20 = [v19 count];

  v98 = v3;
  v86 = v4;
  if (v20)
  {
    v91 = +[NSMutableArray array];
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    v21 = [v3 applicationExtensionRecords];
    v22 = [v21 countByEnumeratingWithState:&v114 objects:v134 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v115;
      v89 = *v115;
      v90 = v21;
      do
      {
        v25 = 0;
        v92 = v23;
        do
        {
          if (*v115 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v114 + 1) + 8 * v25);
          v27 = [v26 dataContainerURL];
          v28 = [v26 mb_bundleURL];
          v103 = [v26 mb_pluginIdentifier];
          v99 = v28;
          if (!v27)
          {
            v48 = MBGetDefaultLog();
            if (!os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_78;
            }

            *buf = 138412546;
            v126 = v103;
            v127 = 2112;
            v128 = 0;
            _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Plugin %@ found without a data container (%@) - will not be backed up.", buf, 0x16u);
            v76 = v103;
            v80 = 0;
LABEL_70:
            _MBLog();
            goto LABEL_78;
          }

          if (!v28)
          {
            v48 = MBGetDefaultLog();
            if (!os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_78;
            }

            *buf = 138412546;
            v126 = v103;
            v127 = 2112;
            v128 = 0;
            _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Plugin %@ found without a bundle URL (%@) - will not be backed up.", buf, 0x16u);
            v76 = v103;
            v80 = 0;
            goto LABEL_70;
          }

          if (!v103)
          {
            v48 = MBGetDefaultLog();
            if (!os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_78;
            }

            *buf = 138412546;
            v126 = 0;
            v127 = 2112;
            v128 = 0;
            _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Plugin %@ found without a pluginIdentifier (%@) - will not be backed up.", buf, 0x16u);
            v76 = 0;
            v80 = 0;
            goto LABEL_70;
          }

          v29 = sub_10004D348(v28);
          v30 = sub_10004D348(v27);
          v97 = v29;
          if (v29)
          {
            v96 = v30;
            if (v30)
            {
              v31 = [v26 mb_entitlements];
              if (!v31)
              {
                v32 = MBGetDefaultLog();
                if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v126 = v103;
                  _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "Plugin %@ found without entitlements.", buf, 0xCu);
                  v76 = v103;
                  _MBLog();
                }

                v31 = &__NSDictionary0__struct;
              }

              v93 = v31;
              v94 = v27;
              v95 = v25;
              v100 = +[NSMutableArray array];
              v110 = 0u;
              v111 = 0u;
              v112 = 0u;
              v113 = 0u;
              v33 = [v26 groupContainerURLs];
              v34 = [v33 countByEnumeratingWithState:&v110 objects:v133 count:16];
              if (v34)
              {
                v35 = v34;
                v36 = *v111;
                v101 = v33;
                do
                {
                  for (i = 0; i != v35; i = i + 1)
                  {
                    if (*v111 != v36)
                    {
                      objc_enumerationMutation(v33);
                    }

                    v38 = *(*(&v110 + 1) + 8 * i);
                    v39 = [v26 groupContainerURLs];
                    v40 = [v39 objectForKeyedSubscript:v38];

                    if (v40)
                    {
                      v41 = sub_10004D348(v40);
                      if (v41)
                      {
                        if (MBPathHasVolumePrefix())
                        {
                          v124[0] = v38;
                          v123[0] = kCFBundleIdentifierKey;
                          v123[1] = @"ContainerContentClass";
                          v42 = sub_10003884C(3);
                          v123[2] = @"Container";
                          v124[1] = v42;
                          v124[2] = v41;
                          v43 = [NSDictionary dictionaryWithObjects:v124 forKeys:v123 count:3];

                          [v100 addObject:v43];
LABEL_60:

                          goto LABEL_61;
                        }

                        v43 = MBGetDefaultLog();
                        if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_60;
                        }

                        *buf = 138413058;
                        v126 = v103;
                        v127 = 2112;
                        v128 = v38;
                        v129 = 2112;
                        v130 = v41;
                        v131 = 2112;
                        v132 = v104;
                        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Plugin %@ groupContainer %@ at %@ does not reside on the user data volume %@ - will not be backed up", buf, 0x2Au);
                        v81 = v41;
                        v82 = v104;
                        v33 = v101;
                        v76 = v103;
                        v80 = v38;
                      }

                      else
                      {
                        v43 = MBGetDefaultLog();
                        if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_60;
                        }

                        *buf = 138412546;
                        v126 = v103;
                        v127 = 2112;
                        v128 = v38;
                        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Plugin %@ groupContainer %@ found with a nil SanitizedFilesystemRepresentation for container - will not be backed up", buf, 0x16u);
                        v76 = v103;
                        v80 = v38;
                        v33 = v101;
                      }

                      _MBLog();
                      goto LABEL_60;
                    }

                    v41 = MBGetDefaultLog();
                    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412546;
                      v126 = v103;
                      v127 = 2112;
                      v128 = v38;
                      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Plugin %@ groupContainer %@ found without a container - will not be backed up", buf, 0x16u);
                      v76 = v103;
                      v80 = v38;
                      _MBLog();
                    }

LABEL_61:
                  }

                  v35 = [v33 countByEnumeratingWithState:&v110 objects:v133 count:16];
                }

                while (v35);
              }

              v122[0] = v103;
              v121[0] = kCFBundleIdentifierKey;
              v121[1] = @"ContainerContentClass";
              v44 = sub_10003884C(2);
              v122[1] = v44;
              v45 = v96;
              v122[2] = v97;
              v121[2] = @"Path";
              v121[3] = @"Container";
              v122[3] = v96;
              v46 = v93;
              v122[4] = v93;
              v121[4] = @"Entitlements";
              v121[5] = @"GroupContainers";
              v122[5] = v100;
              v47 = [NSDictionary dictionaryWithObjects:v122 forKeys:v121 count:6];

              v48 = v97;
              [v91 addObject:v47];

              v3 = v98;
              v24 = v89;
              v21 = v90;
              v23 = v92;
              v27 = v94;
              v25 = v95;
            }

            else
            {
              v46 = MBGetDefaultLog();
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v126 = v103;
                _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Plugin %@ found with a nil SanitizedFilesystemRepresentation for dataContainerURL - will not be backed up.", buf, 0xCu);
                v76 = v103;
                _MBLog();
              }

              v45 = 0;
              v48 = v97;
            }
          }

          else
          {
            v45 = v30;
            v46 = MBGetDefaultLog();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v126 = v103;
              _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Plugin %@ found with a nil SanitizedFilesystemRepresentation for bundleURL - will not be backed up.", buf, 0xCu);
              v76 = v103;
              _MBLog();
            }

            v48 = 0;
          }

LABEL_78:
          v25 = v25 + 1;
        }

        while (v25 != v23);
        v23 = [v21 countByEnumeratingWithState:&v114 objects:v134 count:16];
      }

      while (v23);
    }

    v4 = v86;
    [v86 setObject:v91 forKeyedSubscript:@"Plugins"];
  }

  v49 = [v3 groupContainerURLs];
  v50 = [v49 count];

  if (!v50)
  {
    goto LABEL_102;
  }

  v51 = +[NSMutableArray array];
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v52 = [v3 groupContainerURLs];
  v53 = [v52 countByEnumeratingWithState:&v106 objects:v120 count:16];
  if (!v53)
  {
    goto LABEL_101;
  }

  v54 = v53;
  v55 = *v107;
  do
  {
    v56 = 0;
    v102 = v54;
    do
    {
      if (*v107 != v55)
      {
        objc_enumerationMutation(v52);
      }

      v57 = *(*(&v106 + 1) + 8 * v56);
      v58 = [v3 groupContainerURLs];
      v59 = [v58 objectForKeyedSubscript:v57];

      if (v59)
      {
        v60 = sub_10004D348(v59);
        if (v60)
        {
          if (MBPathHasVolumePrefix())
          {
            v119[0] = v57;
            v118[0] = kCFBundleIdentifierKey;
            v118[1] = @"ContainerContentClass";
            v61 = sub_10003884C(3);
            v118[2] = @"Container";
            v119[1] = v61;
            v119[2] = v60;
            v62 = [NSDictionary dictionaryWithObjects:v119 forKeys:v118 count:3];

            [v51 addObject:v62];
LABEL_98:

            v3 = v98;
            goto LABEL_99;
          }

          v62 = MBGetDefaultLog();
          if (!os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_98;
          }

          *buf = 138412802;
          v126 = v57;
          v127 = 2112;
          v128 = v60;
          v129 = 2112;
          v130 = v104;
          _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "GroupContainer %@ at %@ does not reside on the user data volume %@ - will not be backed up", buf, 0x20u);
          v80 = v60;
          v81 = v104;
          v54 = v102;
          v77 = v57;
        }

        else
        {
          v62 = MBGetDefaultLog();
          if (!os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_98;
          }

          *buf = 138412290;
          v126 = v57;
          _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "GroupContainer %@ found with a nil SanitizedFilesystemRepresentation for container - will not be backed up", buf, 0xCu);
          v77 = v57;
        }

        _MBLog();
        goto LABEL_98;
      }

      v60 = MBGetDefaultLog();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v126 = v57;
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "GroupContainer %@ found without a container - will not be backed up", buf, 0xCu);
        v77 = v57;
        _MBLog();
      }

LABEL_99:

      v56 = v56 + 1;
    }

    while (v54 != v56);
    v54 = [v52 countByEnumeratingWithState:&v106 objects:v120 count:16];
  }

  while (v54);
LABEL_101:

  v4 = v86;
  [v86 setObject:v51 forKeyedSubscript:@"GroupContainers"];

LABEL_102:
  v63 = [v3 isPlaceholder];
  v64 = [NSNumber numberWithBool:v63];
  [v4 setObject:v64 forKeyedSubscript:@"IsPlaceholder"];

  v65 = [v3 applicationState];
  v66 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v65 isInstalled]);
  [v4 setObject:v66 forKeyedSubscript:@"IsInstalled"];

  if ((v63 & 1) == 0)
  {
    v105 = 0;
    v67 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v88 allowPlaceholder:1 error:&v105];
    v68 = v105;
    if ([v67 hasParallelPlaceholder])
    {
      v69 = MBGetDefaultLog();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
      {
        v70 = [v3 bundleIdentifier];
        *buf = 138412290;
        v126 = v70;
        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_INFO, "%@ has a parallel placeholder", buf, 0xCu);

        v78 = [v3 bundleIdentifier];
        _MBLog();
      }

      v71 = &__kCFBooleanTrue;
    }

    else
    {
      v71 = &__kCFBooleanFalse;
    }

    [v4 setObject:v71 forKeyedSubscript:{@"IsUpdating", v78}];
  }

  return v4;
}

void sub_10004C910(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x10004C8C4);
  }

  _Unwind_Resume(exception_object);
}

id sub_10004D348(void *a1)
{
  v1 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", [a1 fileSystemRepresentation]);
  if ([v1 hasPrefix:@"/private"])
  {
    v2 = [v1 substringFromIndex:{objc_msgSend(@"/private", "length")}];

    v1 = v2;
  }

  return v1;
}

uint64_t sub_10004F0A8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10004F0C0(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v2 = 3145729;
  }

  else
  {
    v2 = 3145734;
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 57);
  v5 = *(*(a1 + 48) + 8);
  obj = *(v5 + 40);
  v6 = [v3 _openWithFlags:v2 usePQLBatching:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  *(*(*(a1 + 40) + 8) + 24) = v6;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(*(a1 + 32) + 24);
      v9 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138412546;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Can't open database at %@: %@", buf, 0x16u);
      v10 = *(*(a1 + 32) + 24);
      v11 = *(*(*(a1 + 48) + 8) + 40);
      _MBLog();
    }
  }
}

void sub_10004F3A8(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [v2 _invalidate:&obj];
  objc_storeStrong((v3 + 40), obj);
  *(*(a1[5] + 8) + 24) = v4;
}

void sub_10004F70C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_10004F754(void *a1)
{
  v2 = MBGetDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1[4] + 8) + 40);
    *buf = 138412290;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Closing PQL connection %@", buf, 0xCu);
    v7 = *(*(a1[4] + 8) + 40);
    _MBLog();
  }

  v4 = *(*(a1[4] + 8) + 40);
  v5 = *(a1[6] + 8);
  obj = *(v5 + 40);
  v6 = [v4 close:&obj];
  objc_storeStrong((v5 + 40), obj);
  *(*(a1[5] + 8) + 24) = v6;
}

uint64_t sub_10004FAC0(uint64_t a1)
{
  [*(a1 + 32) _removeCorruptDatabaseWithError:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void sub_100050F58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100050F84(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    goto LABEL_23;
  }

  v11 = MBGetDefaultLog();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
  if (v8)
  {
    if (!v12)
    {
      goto LABEL_8;
    }

    *buf = 138412802;
    v26 = v8;
    v27 = 2112;
    v28 = v7;
    v29 = 2112;
    v30 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Sqlite request %@ failed on %@ with error: %@", buf, 0x20u);
    v23 = v7;
    v24 = v9;
    v22 = v8;
  }

  else
  {
    if (!v12)
    {
      goto LABEL_8;
    }

    *buf = 138412546;
    v26 = v7;
    v27 = 2112;
    v28 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Sqlite failed on %@ with error: %@", buf, 0x16u);
    v22 = v7;
    v23 = v9;
  }

  _MBLog();
LABEL_8:

  v13 = [v9 domain];
  v14 = [v13 isEqualToString:PQLSqliteErrorDomain];

  if (!v14)
  {
    goto LABEL_23;
  }

  v15 = [v9 code];
  v16 = v15;
  if (v15 > 0x18)
  {
    goto LABEL_19;
  }

  if (((1 << v15) & 0x1384000) != 0)
  {
    goto LABEL_11;
  }

  if (v15 != 1)
  {
    goto LABEL_15;
  }

  v19 = [v9 userInfo];
  v20 = [v19 objectForKeyedSubscript:@"SqliteSQL"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_11;
  }

  v21 = [v20 isEqualToString:@"commit"];

  if ((v21 & 1) == 0)
  {
LABEL_11:
    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      v18 = *(a1 + 32);
      *buf = 138412546;
      v26 = v18;
      v27 = 2112;
      v28 = v9;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, "Unexpected SQLite error for db at %@: %@", buf, 0x16u);
      v22 = *(a1 + 32);
      v23 = v9;
      _MBLog();
    }

LABEL_15:
    if (v16 == 13)
    {
      sleep(5u);
      goto LABEL_23;
    }
  }

LABEL_19:
  if (WeakRetained[9] == 1 && (v16 == 26 || v16 == 11))
  {
    [WeakRetained _removeCorruptDatabaseWithError:v9 completion:{&stru_1000FDE88, v22, v23, v24}];
  }

LABEL_23:
}

void sub_1000517DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_100051800(void *a1)
{
  v2 = a1[4];
  v3 = v2[5];
  if (v3)
  {
    v4 = a1[5];
    v5 = *(a1[6] + 8);
    obj = *(v5 + 40);
    LOBYTE(v4) = (*(v4 + 16))(v4, v3, &obj);
    objc_storeStrong((v5 + 40), obj);
    *(*(a1[7] + 8) + 24) = v4;
  }

  else
  {
    v6 = 0;
    v7 = [v2 _invalidatedError];
    v8 = *(a1[6] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }
}

id sub_100051B44(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 execute:*(a1 + 32) args:**(a1 + 40)];
  v7 = v6;
  if (a3 && (v6 & 1) == 0)
  {
    *a3 = [v5 lastError];
  }

  return v7;
}

void sub_100051CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_100051D00(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = **(a1 + 56);
  v8 = a2;
  v9 = [v8 fetchObjectOfClass:v6 sql:v5 args:v7];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = [v8 lastError];

  v13 = [v12 excludingNotFound];

  if (a3)
  {
    v14 = v13;
    *a3 = v13;
  }

  return v13 == 0;
}

void sub_100051EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_100051EF8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 fetchObjectOfClass:objc_opt_class() sql:*(a1 + 32) args:**(a1 + 48)];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [v5 lastError];

  if (a3)
  {
    v10 = v9;
    *a3 = v9;
  }

  return v9 == 0;
}

void sub_1000521BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000521D4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 fetch:*(a1 + 32) args:**(a1 + 48)];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(*(*(a1 + 40) + 8) + 40);

  return [v8 checkSuccessWithError:a3];
}

uint64_t sub_10005B690(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [NSURL fileURLWithPath:v3];
  v22 = 0;
  v21 = 0;
  v6 = [v5 getResourceValue:&v22 forKey:NSURLIsExcludedFromBackupKey error:&v21];
  v7 = v22;
  v8 = v21;
  if (v6)
  {
    if ([v7 BOOLValue])
    {
      goto LABEL_15;
    }
  }

  else
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v24 = NSURLIsExcludedFromBackupKey;
      v25 = 2112;
      v26 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "=restore-policy= Error fetching value for property %{public}@: %@", buf, 0x16u);
      v17 = NSURLIsExcludedFromBackupKey;
      v18 = v8;
      _MBLog();
    }
  }

  if (![*(a1 + 32) _isUnencryptedLocal])
  {
    if (![*(a1 + 32) _isCloudKitEngine] || (*(a1 + 40) & 1) != 0)
    {
      goto LABEL_27;
    }

    error = 0;
    propertyValueTypeRefPtr = 0;
    v10 = _kCFURLIsExcludedFromCloudBackupKey;
    if (CFURLCopyResourcePropertyForKey(v5, _kCFURLIsExcludedFromCloudBackupKey, &propertyValueTypeRefPtr, &error))
    {
      v14 = propertyValueTypeRefPtr;
      if (propertyValueTypeRefPtr)
      {
        CFRelease(propertyValueTypeRefPtr);
        if (v14 == kCFBooleanTrue)
        {
          v12 = MBGetDefaultLog();
          if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_14;
          }

          *buf = 138412290;
          v24 = v3;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "=restore-policy= Not restoring from iCloud (attribute set locally): %@", buf, 0xCu);
          goto LABEL_13;
        }
      }

LABEL_27:
      v13 = 0;
      goto LABEL_28;
    }

    v15 = MBGetDefaultLog();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
LABEL_25:

      if (error)
      {
        CFRelease(error);
      }

      goto LABEL_27;
    }

LABEL_24:
    *buf = 138543618;
    v24 = v10;
    v25 = 2112;
    v26 = error;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "=restore-policy= Error fetching value for property %{public}@: %@", buf, 0x16u);
    _MBLog();
    goto LABEL_25;
  }

  error = 0;
  propertyValueTypeRefPtr = 0;
  v10 = _kCFURLIsExcludedFromUnencryptedBackupKey;
  if (!CFURLCopyResourcePropertyForKey(v5, _kCFURLIsExcludedFromUnencryptedBackupKey, &propertyValueTypeRefPtr, &error))
  {
    v15 = MBGetDefaultLog();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v11 = propertyValueTypeRefPtr;
  if (!propertyValueTypeRefPtr)
  {
    goto LABEL_27;
  }

  CFRelease(propertyValueTypeRefPtr);
  if (v11 != kCFBooleanTrue)
  {
    goto LABEL_27;
  }

  v12 = MBGetDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v3;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "=restore-policy= Not restoring from unencrypted iTunes backup (attribute set locally): %@", buf, 0xCu);
LABEL_13:
    _MBLog();
  }

LABEL_14:

LABEL_15:
  v13 = 1;
LABEL_28:

  objc_autoreleasePoolPop(v4);
  return v13;
}

BOOL sub_10005BA6C(uint64_t a1, void *a2, void *a3)
{
  memset(&v13, 0, sizeof(v13));
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [v4 persona];
  v8 = sub_10005BB44(v6, v7);

  v9 = [v8 stringByAppendingPathComponent:v5];

  v10 = lstat([v9 fileSystemRepresentation], &v13);
  v11 = (v10 | ~v13.st_mode & 0xA000) == 0;

  return v11;
}

id sub_10005BB44(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  if ([v4 shouldRestoreToSharedVolume])
  {
    [v3 sharedIncompleteRestoreDirectory];
  }

  else
  {
    [v3 userIncompleteRestoreDirectory];
  }
  v5 = ;

  v6 = [v4 rootPath];

  v7 = [v5 stringByAppendingPathComponent:v6];

  return v7;
}

uint64_t sub_10005E730(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v12 = 0;
  v5 = [MBPersona personalPersonaWithError:0];
  v6 = [v5 getBooleanValueForKey:@"AlwaysRestoreSystemFiles" keyExists:&v12];
  if (v12)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = [v3 isEqualToString:@"iPad"];
    v9 = [v4 isEqualToString:@"iPad"];
    v10 = v8 & v9 | (v8 | v9) ^ 1;
  }

  else
  {
    v10 = 1;
  }

  return v10 & 1;
}

void sub_10005ED4C(id a1, id a2, unint64_t a3)
{
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v7 = a3;
    v8 = 2112;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_operations[%lld] = %@", buf, 0x16u);
    _MBLog();
  }
}

id sub_100061CEC()
{
  if (qword_10011E470 != -1)
  {
    sub_10009F070();
  }

  v1 = qword_10011E468;

  return v1;
}

uint64_t sub_100061FB0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100061FC8(uint64_t a1)
{
  v2 = [*(a1 + 32) _allDisabledDomainNamesForPersona:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_1000620EC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() _allPersistedDisabledDomainNamesForPersona:*(a1 + 40)];
  v4 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v3 count]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (!v6)
  {

    goto LABEL_20;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v17;
  do
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v17 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v16 + 1) + 8 * i);
      if (([*(a1 + 32) _isContainerizedAppDomain:{v11, v15}] & 1) == 0)
      {
        v13 = MBGetDefaultLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v21 = v11;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%@ is not a containerized app domain - not removing from the disabled domains list", buf, 0xCu);
          v15 = v11;
          _MBLog();
        }

LABEL_14:
        [v4 addObject:{v11, v15}];
        continue;
      }

      if ([*(a1 + 48) containsObject:v11])
      {
        goto LABEL_14;
      }

      v12 = MBGetDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v21 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Removing %@ from disabled domains list - related app is no longer installed on the device", buf, 0xCu);
        v15 = v11;
        _MBLog();
      }

      v8 = 1;
    }

    v7 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
  }

  while (v7);

  if (v8)
  {
    [*(a1 + 32) _reconcileBooksAndHealthInDisabledDomainsList:v4];
    v14 = *(a1 + 32);
    [objc_opt_class() _persistDisabledDomainNames:v4 forPersona:*(a1 + 40)];
  }

LABEL_20:
}

void sub_1000625A8(uint64_t a1)
{
  v2 = [*(a1 + 32) _allDisabledDomainNamesForPersona:*(a1 + 40)];
  v3 = *(a1 + 48);
  v5 = v2;
  if (*(a1 + 56) == 1)
  {
    [v2 minusSet:v3];
  }

  else
  {
    [v2 unionSet:v3];
  }

  v4 = *(a1 + 32);
  [objc_opt_class() _persistDisabledDomainNames:v5 forPersona:*(a1 + 40)];
}

id sub_1000628E0()
{
  if (qword_10011E460 != -1)
  {
    sub_10009F0B0();
  }

  v1 = qword_10011E458;

  return v1;
}

id sub_100062924()
{
  if (qword_10011E450 != -1)
  {
    sub_10009F0C4();
  }

  v1 = qword_10011E448;

  return v1;
}

int64_t sub_100062BF8(id a1, NSString *a2, NSString *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(NSString *)v4 length];
  if (v6 == [(NSString *)v5 length])
  {
    v7 = 0;
  }

  else
  {
    v8 = [(NSString *)v4 length];
    if (v8 < [(NSString *)v5 length])
    {
      v7 = 1;
    }

    else
    {
      v7 = -1;
    }
  }

  return v7;
}

void sub_100063758(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x100063764);
}

id sub_100063F94(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:@"Container"];
  if (!v5)
  {
    sub_10009F104();
  }

  v6 = v5;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        if (MBPathHasVolumePrefix())
        {
          v17 = v12;
          v13 = v7;
          goto LABEL_14;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = MBGetDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = [v7 sortedArrayUsingSelector:"compare:"];
    v15 = [v14 componentsJoinedByString:{@", "}];
    *buf = 138412546;
    v25 = v15;
    v26 = 2112;
    v27 = v6;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to find volume (%@) for %@", buf, 0x16u);

    v16 = [v7 sortedArrayUsingSelector:"compare:"];
    v19 = [v16 componentsJoinedByString:{@", "}];
    _MBLog();
  }

  v17 = 0;
LABEL_14:

  return v17;
}

void sub_1000666DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_100066744(id a1)
{
  qword_10011E438 = dispatch_queue_create("[MBAppManager createSafeHarbor:error:]", 0);

  _objc_release_x1();
}

void sub_100066784(uint64_t a1)
{
  v2 = [*(a1 + 32) userIncompleteRestoreDirectory];
  v3 = [*(*(a1 + 40) + 8) safeHarborDir];
  v4 = [v2 stringByAppendingPathComponent:v3];
  v5 = MBUniqueIntegerFilenameWithDirectory();

  v6 = [*(*(a1 + 40) + 8) safeHarborDir];
  v7 = [v6 stringByAppendingPathComponent:v5];
  v8 = *(*(a1 + 72) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if (*(a1 + 104) == 1)
  {
    v10 = [*(a1 + 32) userIncompleteRestoreDirectory];
    v11 = [v10 stringByAppendingPathComponent:*(*(*(a1 + 72) + 8) + 40)];
    v12 = *(*(a1 + 80) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  else
  {
    v14 = *(*(a1 + 80) + 8);
    v15 = *(*(*(a1 + 72) + 8) + 40);
    v10 = *(v14 + 40);
    *(v14 + 40) = v15;
  }

  v16 = MBGetDefaultLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [*(a1 + 48) identifier];
    v18 = [*(a1 + 48) containerTypeString];
    v19 = *(*(*(a1 + 80) + 8) + 40);
    *buf = 138412802;
    v33 = v17;
    v34 = 2112;
    v35 = v18;
    v36 = 2112;
    v37 = v19;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Creating safe harbor for container %@ with type %@ at %@", buf, 0x20u);

    v20 = [*(a1 + 48) identifier];
    v29 = [*(a1 + 48) containerTypeString];
    v30 = *(*(*(a1 + 80) + 8) + 40);
    _MBLog();
  }

  v21 = MBGetDefaultLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v22 = *(*(*(a1 + 80) + 8) + 40);
    *buf = 138412290;
    v33 = v22;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Creating directory %@", buf, 0xCu);
    v28 = *(*(*(a1 + 80) + 8) + 40);
    _MBLog();
  }

  v23 = *(*(*(a1 + 80) + 8) + 40);
  v24 = *(a1 + 56);
  v25 = *(a1 + 64);
  v26 = *(*(a1 + 96) + 8);
  obj = *(v26 + 40);
  v27 = [v24 createDirectoryAtPath:v23 withIntermediateDirectories:1 attributes:v25 error:&obj];
  objc_storeStrong((v26 + 40), obj);
  *(*(*(a1 + 88) + 8) + 24) = v27;
}

void sub_100066B0C(id a1)
{
  qword_10011E448 = [NSSet setWithArray:&off_100109588];

  _objc_release_x1();
}

void sub_100066B54(id a1)
{
  qword_10011E458 = [NSSet setWithArray:&off_1001095A0];

  _objc_release_x1();
}

void sub_100066B9C(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("MBDisabledDomains", v3);
  v2 = qword_10011E468;
  qword_10011E468 = v1;
}

void sub_100067630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100067650(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100067668(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 domain];
  v5 = [*(a1 + 32) domain];
  if (([v4 isEqualToDomain:v5] & 1) == 0)
  {

LABEL_9:
    goto LABEL_10;
  }

  v6 = [v3 relativePath];
  v7 = [*(a1 + 32) relativePath];
  v8 = [v6 hasPrefix:v7];

  if (v8)
  {
    v9 = [*(a1 + 32) relativePath];
    v10 = [v9 lastPathComponent];
    v11 = [v3 relativePath];
    v12 = [*(a1 + 32) relativePath];
    v13 = [v11 substringFromIndex:{objc_msgSend(v12, "length")}];
    v4 = [v10 stringByAppendingPathComponent:v13];

    if ([v3 isDirectory])
    {
      v14 = MBGetDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v28 = v4;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Creating directory %@", buf, 0xCu);
        _MBLog();
      }

      v15 = [*(*(a1 + 40) + 24) drive];
      v16 = *(*(a1 + 64) + 8);
      obj = *(v16 + 40);
      v17 = [v15 createDirectoryAtPath:v4 options:0 error:&obj];
      objc_storeStrong((v16 + 40), obj);

      if ((v17 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else if ([v3 isRegularFile])
    {
      v20 = *(a1 + 40);
      v21 = *(a1 + 48);
      v22 = *(a1 + 56);
      v23 = *(*(a1 + 64) + 8);
      v25 = *(v23 + 40);
      v24 = [v20 _extractWithManifest:v21 file:v3 keybag:v22 toDrivePath:v4 error:&v25];
      objc_storeStrong((v23 + 40), v25);
      if (!v24)
      {
LABEL_14:

        v18 = 0;
        goto LABEL_11;
      }
    }

    goto LABEL_9;
  }

LABEL_10:
  v18 = 1;
LABEL_11:

  return v18;
}

void sub_100067CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100067D20(void *a1, void *a2)
{
  v3 = a2;
  if ([v3 isRegularFile])
  {
    ++*(*(a1[4] + 8) + 24);
    *(*(a1[5] + 8) + 24) += [v3 size];
    v4 = *(*(a1[6] + 8) + 40);
    v5 = [v3 domain];
    v6 = [v5 name];
    v7 = [v4 objectForKeyedSubscript:v6];

    if (v7)
    {
      v8 = [v7 objectAtIndexedSubscript:0];
      v9 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [v8 longValue] + 1);
      [v7 setObject:v9 atIndexedSubscript:0];

      v10 = [v7 objectAtIndexedSubscript:1];
      v11 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v10 longLongValue] + objc_msgSend(v3, "size"));
      [v7 setObject:v11 atIndexedSubscript:1];
    }

    else
    {
      v10 = [NSNumber numberWithLong:1];
      v11 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v3 size]);
      v7 = [NSMutableArray arrayWithObjects:v10, v11, 0];
    }

    v12 = *(*(a1[6] + 8) + 40);
    v13 = [v3 domain];
    v14 = [v13 name];
    [v12 setObject:v7 forKeyedSubscript:v14];
  }

  return 1;
}

BOOL sub_100068134(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if (v3)
  {
    v32 = v4;
    v30 = [v3 fileID];
    v5 = [v3 digest];
    if (v5)
    {
      v21 = [v3 digest];
      v20 = MBStringWithData();
      v27 = [v20 UTF8String];
    }

    else
    {
      v27 = "";
    }

    v36 = [v3 modeString];
    v24 = [v3 inodeNumber];
    v23 = [v3 userID];
    v22 = [v3 groupID];
    v6 = *(a1 + 32);
    v28 = [v3 lastModifiedDate];
    v35 = [v6 stringFromDate:?];
    v7 = *(a1 + 32);
    v26 = [v3 lastStatusChangeDate];
    v34 = [v7 stringFromDate:?];
    v31 = a1;
    v8 = *(a1 + 32);
    v25 = [v3 birthDate];
    v33 = [v8 stringFromDate:?];
    v9 = [v3 size];
    v10 = [v3 protectionClass];
    v11 = [v3 domain];
    v12 = [v11 name];
    v13 = [v3 relativePath];
    v14 = [v3 target];
    v29 = v5;
    if (v14)
    {
      v15 = [v3 target];
    }

    else
    {
      v15 = &stru_1000FF270;
    }

    v16 = [v3 extendedAttributes];
    v17 = MBStringWithDictionary();
    v18 = [NSString stringWithFormat:@"%@, %40s, %@, %7lld, %3d, %3d, %@, %@, %@, %10lld, %5d, %@, %@, %@, %@\n", v30, v27, v36, v24, v23, v22, v35, v34, v33, v9, v10, v12, v13, v15, v17];

    if (v14)
    {
    }

    if (v29)
    {
    }

    [*(v31 + 40) appendString:v18];
    v4 = v32;
  }

  objc_autoreleasePoolPop(v4);

  return v3 != 0;
}

void sub_100068924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100068944(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 domain];
  v5 = [v4 isUninstalledAppDomain];

  v46 = v3;
  if (v5)
  {
    v6 = [v3 domain];
    v7 = [v6 containerID];
    v8 = [v3 relativePath];
    v9 = [NSString stringWithFormat:@"var/mobile/Applications/%@/%@", v7, v8];
  }

  else
  {
    v6 = [v3 absolutePath];
    v9 = [v6 substringFromIndex:1];
  }

  v44 = [*(a1 + 32) stringByAppendingPathComponent:v9];
  v45 = v9;
  v10 = [v9 stringByDeletingLastPathComponent];
  v11 = [v10 pathComponents];

  v12 = [v11 count];
  v13 = NSNumber_ptr;
  if (v12)
  {
    v14 = v12;
    v15 = 1;
    do
    {
      v16 = v13[6];
      v17 = [v11 subarrayWithRange:{0, v15}];
      v18 = [v16 pathWithComponents:v17];

      v19 = [*(a1 + 32) stringByAppendingPathComponent:v18];
      v20 = [*(a1 + 40) objectForKeyedSubscript:v19];

      if (!v20)
      {
        v21 = MBGetDefaultLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v51 = v19;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Creating directory: %@", buf, 0xCu);
          v43 = v19;
          _MBLog();
        }

        v22 = [*(*(a1 + 48) + 24) drive];
        v23 = *(*(a1 + 80) + 8);
        obj = *(v23 + 40);
        v24 = [v22 createDirectoryAtPath:v19 options:0 error:&obj];
        objc_storeStrong((v23 + 40), obj);

        if ((v24 & 1) == 0 && ![MBError isError:*(a1 + 56) withCode:3])
        {

          v41 = 0;
          v25 = v46;
          v27 = v44;
          goto LABEL_26;
        }

        [*(a1 + 40) setObject:&__kCFBooleanTrue forKeyedSubscript:{v19, v43}];
        v13 = NSNumber_ptr;
      }

      ++v15;
      --v14;
    }

    while (v14);
  }

  v25 = v46;
  if ([v46 isDirectory])
  {
    v26 = MBGetDefaultLog();
    v27 = v44;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v51 = v44;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Creating directory: %@", buf, 0xCu);
      _MBLog();
    }

    v28 = [*(*(a1 + 48) + 24) drive];
    v29 = *(*(a1 + 80) + 8);
    v48 = *(v29 + 40);
    v30 = [v28 createDirectoryAtPath:v44 options:0 error:&v48];
    objc_storeStrong((v29 + 40), v48);

    if ((v30 & 1) == 0 && ([MBError isError:*(a1 + 56) withCode:3]& 1) == 0)
    {
LABEL_24:
      v41 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    v27 = v44;
    if ([v46 isRegularFile])
    {
      v31 = [*(*(a1 + 48) + 24) driveBackupDir];
      v32 = [v46 fileID];
      v33 = [v32 description];
      v34 = [v31 stringByAppendingPathComponent:v33];

      v35 = MBGetDefaultLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v51 = v34;
        v52 = 2112;
        v53 = v44;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "Copying: %@ -> %@", buf, 0x16u);
        _MBLog();
      }

      v36 = *(a1 + 48);
      v37 = *(a1 + 64);
      v38 = *(a1 + 72);
      v39 = *(*(a1 + 80) + 8);
      v47 = *(v39 + 40);
      v40 = [v36 _extractWithManifest:v37 file:v46 keybag:v38 toDrivePath:v44 error:&v47];
      objc_storeStrong((v39 + 40), v47);

      if (!v40)
      {
        goto LABEL_24;
      }
    }
  }

  v41 = 1;
LABEL_26:

  return v41;
}