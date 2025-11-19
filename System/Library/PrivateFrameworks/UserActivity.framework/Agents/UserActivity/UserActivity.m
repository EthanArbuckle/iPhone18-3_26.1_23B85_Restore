void sub_100001950(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) manager];
  v6 = [v5 mainDispatchQ];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100001B94;
  v9[3] = &unk_1000C5B80;
  v7 = *(a1 + 32);
  v10 = v4;
  v11 = v7;
  v8 = v4;
  dispatch_async(v6, v9);
}

id sub_100001A30(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v2 = getenv("_UALOGGINGCATEGORY");
    if (!v2 || ([NSString stringWithCString:v2 encoding:4], (v1 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v1 = @"main";
    }
  }

  if (pthread_mutex_lock(&stru_1000E5648))
  {
    v3 = 0;
  }

  else
  {
    v4 = qword_1000E5CE0;
    if (!qword_1000E5CE0)
    {
      v5 = +[NSMutableDictionary dictionary];
      v6 = qword_1000E5CE0;
      qword_1000E5CE0 = v5;

      v4 = qword_1000E5CE0;
    }

    v3 = [v4 objectForKey:v1];
    if (!v3)
    {
      v7 = os_log_create("com.apple.useractivity", [(__CFString *)v1 cStringUsingEncoding:4]);
      if (v7)
      {
        v3 = v7;
        [qword_1000E5CE0 setValue:v7 forKey:v1];
      }

      else
      {
        v3 = &_os_log_default;
        v8 = &_os_log_default;
      }
    }

    pthread_mutex_unlock(&stru_1000E5648);
  }

  return v3;
}

id sub_100001BB0()
{
  if (qword_1000E5DF0 != -1)
  {
    sub_10007BEFC();
  }

  v1 = qword_1000E5DF8;

  return v1;
}

BOOL sub_100001C78(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v3 != v4;
  if ([v3 conformsToProtocol:&OBJC_PROTOCOL___FBSDisplayLayoutElement] && objc_msgSend(v4, "conformsToProtocol:", &OBJC_PROTOCOL___FBSDisplayLayoutElement))
  {
    v6 = v3;
    v7 = v4;
    v8 = [v6 level];
    if (v8 == [v7 level])
    {
      if (([v6 hasKeyboardFocus] & 1) == 0 && (objc_msgSend(v7, "hasKeyboardFocus") & 1) == 0)
      {
        if (![v6 conformsToProtocol:&OBJC_PROTOCOL___SBSDisplayLayoutElement] || !objc_msgSend(v7, "conformsToProtocol:", &OBJC_PROTOCOL___SBSDisplayLayoutElement))
        {
          goto LABEL_11;
        }

        [v6 layoutRole];
        j__SBSDisplayLayoutRoleIsDefined();
        [v7 layoutRole];
        j__SBSDisplayLayoutRoleIsDefined();
      }
    }

    else
    {
      [v6 level];
      [v7 level];
    }

    v5 = 1;
LABEL_11:
  }

  return v5;
}

id sub_100001DEC()
{
  if (qword_1000E5D20 != -1)
  {
    sub_10007BDF0();
  }

  v1 = qword_1000E5D18;

  return v1;
}

uint64_t sub_100001E30(void *a1)
{
  v1 = a1;
  if (!v1 || (v2 = 1, +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", 1), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v1 isEqual:v3], v3, (v4 & 1) == 0))
  {
    v2 = [v1 isEqualToString:@"YES"];
  }

  return v2;
}

id sub_100001EB0()
{
  if (qword_1000E5D10 != -1)
  {
    sub_10007BDDC();
  }

  v1 = qword_1000E5D08;

  return v1;
}

uint64_t sub_100001EF4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100001F04(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100001F14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100001F24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100001F34(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100001F50(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *sub_100001FA4(_OWORD *a1)
{
  v1 = a1[1];
  *v6.val = *a1;
  *&v6.val[4] = v1;
  v2 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &v6);
  v3 = v2;
  if (v2)
  {
    v4 = SecTaskCopySigningIdentifier(v2, 0);
    CFRelease(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_100002058(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 length] >= 0xB)
  {
    v3 = [v2 rangeOfString:@"."];
    v4 = 0;
    if (v5 == 1 && v3 == 10)
    {
      v4 = [v2 substringToIndex:10];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_1000021AC(void *a1, unint64_t a2)
{
  v3 = a1;
  v4 = [NSMutableString stringWithFormat:@"$"];
  v18 = [v3 bytes];
  v5 = [v3 length];
  v6 = v5;
  if (v5 >= a2)
  {
    v7 = a2 / 2;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    v8 = v18;
    v9 = v7;
    do
    {
      v10 = *v8++;
      v11 = [NSString stringWithFormat:@"%c%c", a0123456789abcd[v10 >> 4], a0123456789abcd[v10 & 0xF]];
      [v4 appendString:v11];

      --v9;
    }

    while (v9);
  }

  if (v6 > v7)
  {
    [v4 appendFormat:@".. %ld ..", v6];
    if (&v6[-v7] < v6)
    {
      v12 = -v7;
      v13 = &v6[v18];
      do
      {
        v14 = [NSString stringWithFormat:@"%c%c", a0123456789abcd[v13[v12] >> 4], a0123456789abcd[v13[v12] & 0xF]];
        [v4 appendString:v14];
      }

      while (!__CFADD__(v12++, 1));
    }
  }

  v16 = [v4 copy];

  return v16;
}

__int128 *sub_100002A44(__int128 *result, BOOL *a2)
{
  if (result)
  {
    v3 = *result;
    v4 = result[1];
    result = sandbox_check_by_audit_token();
    if (a2)
    {
      *a2 = result != 0;
    }
  }

  return result;
}

void sub_1000052DC(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1000053BC(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_100005430(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_100006230(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_100006A3C(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_100006AF8(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

id sub_100006EF4(void *a1)
{
  v1 = a1;
  v2 = +[NSMutableString string];
  v3 = [v1 bytes];
  v4 = [v1 length];
  if (v4)
  {
    v5 = v4;
    do
    {
      v6 = *v3++;
      v7 = [NSString stringWithFormat:@"%c%c", a0123456789abcd[v6 >> 4], a0123456789abcd[v6 & 0xF]];
      [v2 appendString:v7];

      --v5;
    }

    while (v5);
  }

  v8 = [v2 copy];

  return v8;
}

id sub_100007154()
{
  if (qword_1000E5D30 != -1)
  {
    sub_1000086E8();
  }

  v1 = qword_1000E5D28;

  return v1;
}

id sub_100007198()
{
  if (qword_1000E5D40 != -1)
  {
    sub_10007BE04();
  }

  v1 = qword_1000E5D38;

  return v1;
}

void sub_1000073A0(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_100008054(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1000082E0(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_100008434(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1000086C0(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_100008784(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = sub_100001A30(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [v4 description];
    v7 = sub_100009684(v6);
    v14 = 138543362;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, ".scanForTypes=%{public}@", &v14, 0xCu);
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = [v4 containsObject:off_1000E50F0];
    v9 = [v4 containsObject:off_1000E50F8];
    v10 = 2;
    if (!v9)
    {
      v10 = 0;
    }

    v11 = v10 | v8;
    v12 = [v4 containsObject:off_1000E5100];
    v13 = 4;
    if (!v12)
    {
      v13 = 0;
    }

    [v3 scanForTypes:v11 | v13];
  }
}

void sub_1000088F4(uint64_t a1, int token)
{
  state64 = 0;
  state = notify_get_state(token, &state64);
  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  if (!state)
  {
    [*(a1 + 32) updateUIDeviceLockedState:state64 != 0];
  }

  objc_sync_exit(v4);
}

void sub_100008970(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1000095B0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) manager];
  v6 = [v5 mainDispatchQ];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100009678;
  v9[3] = &unk_1000C5B80;
  v7 = *(a1 + 32);
  v10 = v4;
  v11 = v7;
  v8 = v4;
  dispatch_async(v6, v9);
}

id sub_100009684(void *a1)
{
  v1 = a1;
  v2 = v1;
  if ([v1 containsString:@"\n"])
  {
    v3 = [v1 mutableCopy];
    do
    {
      v4 = [v3 replaceOccurrencesOfString:@"\n" withString:&stru_1000C67D0 options:0 range:{0, objc_msgSend(v3, "length")}];
    }

    while ([v3 replaceOccurrencesOfString:@"  " withString:@" " options:0 range:{0, objc_msgSend(v3, "length")}] + v4);
    v2 = [v3 copy];
  }

  return v2;
}

__CFString *sub_1000097AC(unint64_t a1)
{
  if (a1 == -1)
  {
    v4 = @"forever";
  }

  else
  {
    v2 = dispatch_time(0, 0);
    if (v2 <= a1)
    {
      v3 = sub_1000099D4(a1 - v2);
    }

    else
    {
      v3 = -sub_1000099D4(v2 - a1);
    }

    v5 = [NSDate dateWithTimeIntervalSinceNow:v3];
    v4 = sub_100009AC0(v5);
  }

  return v4;
}

id sub_100009870(double a1)
{
  v1 = fabs(a1);
  if (v1 >= 15.0)
  {
    if (v1 >= 200.0)
    {
      if (v1 >= 3600.0)
      {
        v2 = v1 / 3600.0;
        if (v2 >= 24.0)
        {
          if (v2 >= 504.0)
          {
            [NSString stringWithFormat:@"%5ld days", v2 / 24, v5];
          }

          else
          {
            [NSString stringWithFormat:@"%2ld days, %ld hours", v2 / 24, v2 % 24];
          }
        }

        else
        {
          [NSString stringWithFormat:@"%2.3f hours", *&v2, v5];
        }
      }

      else
      {
        [NSString stringWithFormat:@"%2ld minutes", (v1 / 60.0), v5];
      }
    }

    else
    {
      [NSString stringWithFormat:@"%ld seconds", v1, v5];
    }
  }

  else
  {
    [NSString stringWithFormat:@"%4.1f seconds", *&v1, v5];
  }
  v3 = ;

  return v3;
}

double sub_1000099D4(int64_t a1)
{
  v2 = dispatch_time(0, 1000000000);
  v3 = dispatch_time(0, 0);
  if (!a1)
  {
    return 0.0;
  }

  v4 = v2 - v3;
  v5 = dispatch_time(0, a1);
  v6 = 0.0;
  do
  {
    v7 = dispatch_time(0, (v6 * 1000000000.0));
    v8 = 1;
    do
    {
      v9 = v8;
      v10 = dispatch_time(v7, 1000000000 * v8);
      v8 = 2 * v9;
    }

    while (v10 < v5);
    v6 = v6 + (v9 >> 1);
    v11 = dispatch_time(0, (v6 * 1000000000.0));
  }

  while (v5 > v11 && v5 - v11 > v4);
  return v6;
}

__CFString *sub_100009AC0(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v7 = @"(nil)";
    goto LABEL_15;
  }

  [v1 timeIntervalSinceNow];
  v4 = fabs(v3);
  if (v4 < 15.0)
  {
    v5 = "from now";
    if (v3 <= 0.0)
    {
      v5 = "ago";
    }

    v6 = [NSString stringWithFormat:@"%.1f seconds %s", *&v4, v5];
    goto LABEL_14;
  }

  if (v4 < 200.0)
  {
    v8 = @"%ld seconds %s";
LABEL_11:
    v9 = "from now";
    if (v3 <= 0.0)
    {
      v9 = "ago";
    }

    v6 = [NSString stringWithFormat:v8, v4, v9];
    goto LABEL_14;
  }

  if (v4 < 3600.0)
  {
    v8 = @"%ld minutes %s";
    v4 = v4 / 60.0;
    goto LABEL_11;
  }

  if (v4 >= 43200.0)
  {
    v6 = [NSString stringWithFormat:@"%@", v2];
LABEL_14:
    v7 = v6;
    goto LABEL_15;
  }

  v11 = +[NSCalendar currentCalendar];
  v12 = [v11 components:96 fromDate:v2];

  v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"at %2.2ld:%2.2ld", [v12 hour], objc_msgSend(v12, "minute"));

LABEL_15:

  return v7;
}

void sub_100009C88(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

__CFString *sub_100009EC4(uint64_t a1)
{
  v2 = a1 - 1;
  if (a1 - 1) < 0xA && ((0x217u >> v2))
  {
    v3 = off_1000C5FA0[v2];
  }

  else
  {
    v3 = [NSString stringWithFormat:@"UASuggestedActionType=%ld", a1];
  }

  return v3;
}

BOOL sub_10000A02C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v6 = [v3 compare:v4] == -1;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_10000A30C(void *a1)
{
  v1 = a1;
  v2 = +[NSMutableData data];
  if ([v1 length])
  {
    v3 = 0;
    do
    {
      v4 = v3 + 1;
      v5 = [v1 characterAtIndex:v3];
      if (v5 > 0x24u || ((1 << v5) & 0x1100000400) == 0)
      {
        v7 = v5 - 48;
        if ((v5 - 48) >= 0xAu && (v5 - 65 > 0x25 || ((1 << (v5 - 65)) & 0x3F0000003FLL) == 0))
        {

          v2 = 0;
          break;
        }

        if (v5 - 48 >= 0xA)
        {
          if (v5 - 97 > 5)
          {
            if (v5 - 65 >= 6)
            {
              v7 = 0;
            }

            else
            {
              v7 = v5 - 55;
            }
          }

          else
          {
            v7 = v5 - 87;
          }
        }

        v8 = v3 + 2;
        v9 = [v1 characterAtIndex:v4];
        v10 = v9 - 48;
        if (v9 - 65 <= 5)
        {
          v11 = v9 - 55;
        }

        else
        {
          v11 = 0;
        }

        if (v9 - 97 <= 5)
        {
          v12 = v9 - 87;
        }

        else
        {
          v12 = v11;
        }

        if (v10 > 9)
        {
          LOBYTE(v10) = v12;
        }

        v15 = v10 + 16 * v7;
        [v2 appendBytes:&v15 length:1];
        v4 = v8;
      }

      v3 = v4;
    }

    while (v4 < [v1 length]);
  }

  v13 = [v2 copy];

  return v13;
}

void sub_10000AAF0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100001A30(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "PING: Received payload for PING; creating PONG response. error=%{public}@", &buf, 0xCu);
  }

  if (!v3)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v9 = 0x3032000000;
    v10 = sub_100001EF4;
    v11 = sub_10000ACD0;
    v12 = [[UAPingUserActivityInfo alloc] initFromPing:*(a1 + 32)];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10000ACD8;
    v7[3] = &unk_1000C4C70;
    v7[4] = *(a1 + 40);
    v7[5] = &buf;
    [*(*(&buf + 1) + 40) setWasContinuedBlock:v7];
    v5 = [*(a1 + 40) pongItems];
    [v5 addObject:*(*(&buf + 1) + 40)];

    v6 = [*(a1 + 40) manager];
    [v6 scheduleUpdatingAdvertisableItems];

    _Block_object_dispose(&buf, 8);
  }
}

void sub_10000ACB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000ACD8(uint64_t a1)
{
  v2 = sub_100001A30(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(*(*(a1 + 40) + 8) + 40) uuid];
    v4 = [v3 UUIDString];
    v5 = *(*(*(a1 + 40) + 8) + 40);
    v9 = 138543619;
    v10 = v4;
    v11 = 2113;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "PING: Removing pong item %{public}@/%{private}@ because it was continued ", &v9, 0x16u);
  }

  [*(a1 + 32) setPongCount:{objc_msgSend(*(a1 + 32), "pongCount") + 1}];
  v6 = [*(a1 + 32) pongItems];
  [v6 removeObject:*(*(*(a1 + 40) + 8) + 40)];

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

void sub_10000BF4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100001A30(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [*(a1 + 32) name];
    v7 = IOPMCopyUserActivityLevelDescription();
    v8 = *(a1 + 32);
    v9 = v7;
    v10 = [v8 active];
    v11 = "";
    if (v10)
    {
      v12 = "wasActive";
    }

    else
    {
      v12 = "";
    }

    if ([*(a1 + 32) firstTime])
    {
      v11 = " firstTime";
    }

    v13 = *(a1 + 32);

    *buf = 138544386;
    v26 = v6;
    v27 = 2114;
    v28 = v7;
    v29 = 2082;
    v30 = v12;
    v31 = 2082;
    v32 = v11;
    v33 = 2050;
    v34 = v13;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "IdleTracker: %{public}@: mostSignificantLevel=%{public}@ %{public}s%{public}s weakSelf=%{public}p", buf, 0x34u);
  }

  v14 = *(a1 + 32);
  if (v14)
  {
    v15 = [v14 active];
    [*(a1 + 32) setActive:a3 == 1];
    if ([*(a1 + 32) enabled])
    {
      if (([*(a1 + 32) firstTime] & 1) != 0 || v15 != objc_msgSend(*(a1 + 32), "active"))
      {
        v16 = sub_100001A30(0);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = [*(a1 + 32) name];
          if ([*(a1 + 32) active])
          {
            v18 = "Active";
          }

          else
          {
            v18 = "-";
          }

          v19 = [*(a1 + 32) startTime];
          [v19 timeIntervalSinceNow];
          v21 = sub_100009870(-v20);
          *buf = 138543874;
          v26 = v17;
          v27 = 2082;
          v28 = v18;
          v29 = 2114;
          v30 = v21;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "IdleTracker: %{public}@, callingBlock, %{public}s, interval=%{public}@", buf, 0x20u);
        }

        [*(a1 + 32) setFirstTime:0];
        v22 = [*(a1 + 32) queue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10000C29C;
        block[3] = &unk_1000C4CC0;
        v24 = *(a1 + 32);
        dispatch_async(v22, block);
      }
    }
  }
}

void sub_10000C29C(uint64_t a1)
{
  v2 = [*(a1 + 32) block];
  v2[2](v2, [*(a1 + 32) active]);
}

void sub_10000CA00(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

id sub_10000DA04(uint64_t a1, uint64_t a2, int a3, char a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v4 = sub_10000DD24(&v6, a1, NSKeyedArchiveRootObjectKey);
  sub_10000DF58(&v6);

  return v4;
}

id sub_10000DD24(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (*a1 && *(a1 + 8))
  {
    v6 = [[NSData alloc] initWithBytes:*a1 length:*(a1 + 8)];
    v7 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v6 error:0];
    v8 = v7;
    if (v5)
    {
      v9 = v5;
    }

    else
    {
      v9 = NSKeyedArchiveRootObjectKey;
    }

    if (a2)
    {
      [v7 decodeObjectOfClass:a2 forKey:v9];
    }

    else
    {
      [v7 decodeObjectForKey:v9];
    }
    v10 = ;
    [v8 finishDecoding];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t sub_10000DF58(uint64_t a1)
{
  if (*(a1 + 12) == 1)
  {
    if (*a1)
    {
      v2 = *(a1 + 8);
      if (v2)
      {
        vm_deallocate(mach_task_self_, *a1, v2);
      }
    }
  }

  return a1;
}

void sub_10000E9DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24)
{
  v30 = v28;

  _Unwind_Resume(a1);
}

void sub_10000EAB4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) update];

  objc_autoreleasePoolPop(v2);
}

void sub_10000EAF8(uint64_t a1)
{
  v2 = sub_100001A30(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) uuid];
    v4 = [v3 UUIDString];
    v8 = 138543362;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Removing bestAppSuggestion notifier %{public}@", &v8, 0xCu);
  }

  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  [v6 setConnection:0];
  v7 = [*v5 manager];
  [v7 removeActivityNotifier:*v5];
}

id sub_10000EC24(uint64_t a1)
{
  v2 = sub_100001A30(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Invalidating bestAppSuggestion notifier", v4, 2u);
  }

  return [*(a1 + 32) invalidate];
}

void sub_10000ED38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

int64_t sub_10000FBDC(id a1, UAUserActivityInfo *a2, UAUserActivityInfo *a3)
{
  v4 = a2;
  v5 = a3;
  if (!sub_1000023A0([(UAUserActivityInfo *)v4 type]) && sub_1000023A0([(UAUserActivityInfo *)v5 type]) || ([(UAUserActivityInfo *)v5 dynamicActivityType], (v6 = objc_claimAutoreleasedReturnValue()) != 0) && ([(UAUserActivityInfo *)v4 dynamicActivityType], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, !v7))
  {
    v11 = 1;
  }

  else
  {
    v8 = [(UAUserActivityInfo *)v5 when];
    v9 = [(UAUserActivityInfo *)v4 when];
    v10 = sub_10000A010(v8, v9);

    if (v10)
    {
      v11 = 1;
    }

    else
    {
      v11 = -1;
    }
  }

  return v11;
}

void sub_100010DE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_100011E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  objc_sync_exit(v12);

  _Unwind_Resume(a1);
}

void sub_10001278C(uint64_t a1)
{
  v2 = sub_100001A30(@"Diagnostic");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) uuid];
    v4 = [v3 UUIDString];
    v5 = [*(a1 + 32) wasContinuedInfo];
    v8 = 138543619;
    v9 = v4;
    v10 = 2113;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "-- Sumbitting metric info for %{public}@, %{private}@", &v8, 0x16u);
  }

  v6 = +[UADiagnosticManager sharedManager];
  v7 = [*(a1 + 32) wasContinuedInfo];
  [v6 submitUserActivityWasContinuedInfo:v7];
}

void sub_100012B74(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100001A30(@"signposts");
  v5 = v4;
  v6 = *(a1 + 32);
  if (v6 + 1 >= 2 && os_signpost_enabled(v4))
  {
    v7[0] = 67240192;
    v7[1] = v3 == 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, v6, "bestAppFetch", "result=%{public}d enableTelemetry=YES ", v7, 8u);
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t start(int a1, const char **a2)
{
  context = objc_autoreleasePoolPush();
  v4 = objc_alloc_init(UACornerActionManager);
  signal(1, nullsub_6);
  v57 = +[NSUserDefaults standardUserDefaults];
  v5 = +[NSMutableArray array];
  if (a1 >= 2)
  {
    v6 = a2 + 1;
    v7 = a1 - 1;
    do
    {
      v8 = [NSString stringWithCString:*v6 encoding:4];
      [v5 addObject:v8];

      ++v6;
      --v7;
    }

    while (v7);
  }

  v58 = 0;
  v61 = 0;
  v62 = 0;
  v59 = 0;
  v9 = 0;
  v63 = 0;
  v10 = 1;
  v60 = 1;
  while (1)
  {
    if (!v5)
    {
      v58 = 0;
      LOBYTE(v61) = 0;
      v59 = 0;
      v60 = 1;
LABEL_46:
      v15 = 1;
      BYTE4(v61) = 1;
      v62 = 0x100000001;
      v9 = 1;
      v63 = 0x100000001;
      goto LABEL_48;
    }

    if (![v5 count])
    {
      break;
    }

    v11 = [v5 objectAtIndex:0];
    if ([v5 count] < 2)
    {
      v12 = 0;
    }

    else
    {
      v12 = [v5 objectAtIndex:1];
    }

    if (![v11 caseInsensitiveCompare:@"-noDefaultHandlers"])
    {
      v10 = 0;
      goto LABEL_43;
    }

    if (![v11 caseInsensitiveCompare:@"-sharingAdvertiser"])
    {
      v10 = 0;
      HIDWORD(v63) = 1;
      goto LABEL_43;
    }

    if (![v11 caseInsensitiveCompare:@"-sharingScanner"])
    {
      v10 = 0;
      v9 = 1;
      goto LABEL_43;
    }

    if (![v11 caseInsensitiveCompare:@"-activityReceiver"])
    {
      v10 = 0;
      LOBYTE(v63) = 1;
      goto LABEL_43;
    }

    if (![v11 caseInsensitiveCompare:@"-activityAdvertiser"])
    {
      v10 = 0;
      BYTE4(v62) = 1;
      goto LABEL_43;
    }

    if (![v11 caseInsensitiveCompare:@"-bestAppSuggestionNotifier"])
    {
      v10 = 0;
      LOBYTE(v62) = 1;
      goto LABEL_43;
    }

    if (![v11 caseInsensitiveCompare:@"-userActivityClientProcessesController"])
    {
      v10 = 0;
      BYTE4(v61) = 1;
      goto LABEL_43;
    }

    if (![v11 caseInsensitiveCompare:@"-noSandbox"])
    {
      goto LABEL_43;
    }

    if (![v11 caseInsensitiveCompare:@"-noTerminateOnSIGTERM"])
    {
      v60 = 0;
      goto LABEL_43;
    }

    if (![v11 caseInsensitiveCompare:@"-loggingAdvertiser"])
    {
      v59 = 1;
      goto LABEL_43;
    }

    if (![v11 caseInsensitiveCompare:@"-loopback"])
    {
      LODWORD(v58) = 1;
      goto LABEL_43;
    }

    if ([v11 caseInsensitiveCompare:@"-enableNetworkUserActivity"] && objc_msgSend(v11, "caseInsensitiveCompare:", @"-enableCoreSimulator"))
    {
      if (![v11 caseInsensitiveCompare:@"-disableEntitlmentChecking"])
      {
        sub_100001A30(0);
        log = LOBYTE(v61) = 1;
        if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          LOBYTE(v61) = 1;
          _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "disableEntitlmentChecking=YES", buf, 2u);
        }

        v14 = log;
        goto LABEL_41;
      }

      if ([v11 caseInsensitiveCompare:@"-disableReconnectionNotification"])
      {
        if (v12 && ![v11 caseInsensitiveCompare:@"-exitAfter"])
        {
          [v12 doubleValue];
          v51 = dispatch_time(0, (v13 * 1000000000.0));
          logb = dispatch_get_global_queue(0, 0);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100013BFC;
          block[3] = &unk_1000C4D10;
          v68 = v12;
          dispatch_after(v51, logb, block);

          [v5 removeObjectAtIndex:1];
          v14 = v68;
LABEL_41:
        }
      }

      else
      {
        BYTE4(v58) = 1;
      }
    }

LABEL_43:

    [v5 removeObjectAtIndex:0];
  }

  if (v10)
  {
    goto LABEL_46;
  }

  v15 = 0;
LABEL_48:
  _set_user_dir_suffix();
  v16 = sub_100001A30(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    loga = v15;
    v17 = *a2;
    if (!*a2)
    {
      v17 = "-";
    }

    v52 = v17;
    v18 = +[NSMutableString string];
    if (a1 >= 2)
    {
      v19 = 1;
      do
      {
        if (v19 <= 1)
        {
          v20 = &stru_1000C67D0;
        }

        else
        {
          v20 = @" ";
        }

        [v18 appendFormat:@"%@%s", v20, a2[v19++]];
      }

      while (a1 != v19);
    }

    v21 = [v18 copy];

    v15 = loga;
    *buf = 136448002;
    v70 = v52;
    v71 = 2082;
    v72 = "";
    v73 = 2082;
    v74 = "Oct 11 2025";
    v75 = 2082;
    v76 = "00:26:31";
    v77 = 2048;
    v78 = 0x4081380000000000;
    v79 = 2082;
    v80 = "Oct 11 2025";
    v81 = 2082;
    v82 = "00:26:31";
    v83 = 2114;
    v84 = v21;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}s: Starting up, %{public}s %{public}s %{public}s version %g built on %{public}s %{public}s.  args=%{public}@", buf, 0x52u);
  }

  if (v61)
  {
    v22 = [(UACornerActionManager *)v4 debugManager];
    [v22 setDisableAdminEntitlmentChecking:1];
  }

  if ((v62 & 0x100000000) != 0)
  {
    v23 = [[UASharingAdvertiser alloc] initWithManager:v4 advertiser:0];
    v24 = v23 != 0;
    if ((HIDWORD(v63) & v24) == 1)
    {
      if (objc_opt_class())
      {
        v25 = +[UAUserActivityDefaults sharedDefaults];
        v26 = [v25 enableSharingFramework];

        if (v26)
        {
          v27 = +[SFActivityAdvertiser sharedAdvertiser];
          if (!v27)
          {
            v28 = sub_100001A30(0);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "### FAILURE trying to add sfActivityAdvertiser, likely Handoff will not work.", buf, 2u);
            }
          }

          [(UASharingAdvertiser *)v23 addSFActivityAdvertiser:v27];
        }
      }

      v24 = 1;
    }
  }

  else
  {
    v24 = 0;
    v23 = 0;
  }

  if (v63)
  {
    v29 = [[UASharingReceiver alloc] initWithManager:v4];
    v30 = v29 != 0;
    if ((v9 & v30) == 1)
    {
      if (objc_opt_class())
      {
        v31 = +[UAUserActivityDefaults sharedDefaults];
        v32 = [v31 enableSharingFramework];

        if (v32)
        {
          v33 = [[SFActivityScanner alloc] initWithDelegate:v29];
          if (!v33)
          {
            v34 = sub_100001A30(0);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "### FAILURE trying to add sfActivityScanner, likely Handoff will not work.", buf, 2u);
            }
          }

          [(UASharingReceiver *)v29 addSFActivityScanner:v33];
        }
      }
    }

    if ((v58 & v24 & 1) != 0 && v29)
    {
      v35 = [[UAPairedSFActivityAdvertiser alloc] initWithDelegate:v23];
      v36 = [[UAPairedSFActivityScanner alloc] initWithDelegate:v29];
      [(UAPairedSFActivityAdvertiser *)v35 setPairedScanner:v36];
      [(UAPairedSFActivityScanner *)v36 setPairedAdvertiser:v35];
      [(UASharingAdvertiser *)v23 addSFActivityAdvertiser:v35];
      [(UASharingReceiver *)v29 addSFActivityScanner:v36];

      v30 = 1;
    }
  }

  else
  {
    v29 = 0;
    v30 = 0;
  }

  if (v59)
  {
    v37 = [(UAAdvertiser *)[UALoggingAdvertiser alloc] initWithManager:v4 name:@"Logger"];
    [(UACornerActionManager *)v4 addAdvertiser:v37];
  }

  if (v24)
  {
    v38 = sub_100001A30(0);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v70 = v23;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "### Adding SFActivitySharingAdvertiser to manager, %{public}@", buf, 0xCu);
    }

    [(UACornerActionManager *)v4 addAdvertiser:v23];
  }

  if (v30)
  {
    v39 = sub_100001A30(0);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v70 = v29;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "### Adding SFActivityScanner to manager, %{public}@", buf, 0xCu);
    }

    [(UACornerActionManager *)v4 addReceiver:v29];
  }

  if ((v61 & 0x100000000) != 0)
  {
    v40 = [[UAUserActivityClientProcessesController alloc] initWithManager:v4 name:@"AppsActivityCreator"];
    [(UACornerActionManager *)v4 addClient:v40];
  }

  if (v62)
  {
    v41 = [[UABestAppSuggestionController alloc] initWithManager:v4 name:@"BestAppController"];
    [(UABestAppSuggestionController *)v41 setDisableEntitlementsCheck:v61 & 1];
    [(UACornerActionManager *)v4 addHandler:v41];
  }

  else
  {
    v41 = 0;
  }

  v42 = [(UAActivityNotifier *)[UABestAppSuggestionDarwinNotifier alloc] initWithManager:v4 name:@"DarwinNotifier"];
  [(UACornerActionManager *)v4 addActivityNotifier:v42];
  if (v15)
  {
    v43 = [[UASharedPasteboardClientController alloc] initWithManager:v4 name:@"PBClientController"];
    [(UACornerActionManager *)v4 setPasteboardController:v43];

    v44 = [(UACornerActionManager *)v4 pasteboardController];
    [(UACornerActionManager *)v4 addClient:v44];

    v45 = [[UAPingController alloc] initWithManager:v4 name:@"PingController"];
    [(UACornerActionManager *)v4 setPingController:v45];
  }

  if (v60)
  {
    v46 = [(UACornerActionManager *)v4 mainDispatchQ];
    v47 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v46);

    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100013CA8;
    handler[3] = &unk_1000C4DA0;
    v65 = v4;
    v66 = v47;
    v48 = v47;
    dispatch_source_set_event_handler(v48, handler);
    dispatch_source_set_cancel_handler(v48, &stru_1000C4DE0);
    dispatch_resume(v48);
  }

  [(UACornerActionManager *)v4 resume];
  if ((v58 & 0x100000000) == 0)
  {
    notify_post("com.apple.coreservices.useractivity.reconnection");
  }

  objc_autoreleasePoolPop(context);
  +[NSXPCListener enableTransactions];
  v49 = +[NSRunLoop currentRunLoop];
  [v49 run];

  return 0;
}

void sub_100013BFC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_100001A30(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    [*(a1 + 32) doubleValue];
    v5 = 134217984;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "### Auto-exiting after %g seconds; likely crashed during a unit test and want to clean up.", &v5, 0xCu);
  }

  exit(0);
}

void sub_100013CA8(uint64_t a1)
{
  v2 = sub_100001A30(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Received SIGTERM; terminating useractivityd.", v3, 2u);
  }

  [*(a1 + 32) terminate];
  dispatch_source_cancel(*(a1 + 40));
}

void sub_100013D70(id a1)
{
  qword_1000E5BD0 = objc_alloc_init(UASharedPasteboardDataManager);

  _objc_release_x1();
}

void sub_100013F38(id a1)
{
  v1 = +[NSFileManager defaultManager];
  v5 = [v1 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.coreservices.useractivityd"];

  v2 = [v5 URLByAppendingPathComponent:@"shared-pasteboard" isDirectory:1];
  v3 = [v2 path];
  v4 = qword_1000E5BE0;
  qword_1000E5BE0 = v3;
}

void sub_100015620(_Unwind_Exception *a1)
{
  objc_end_catch();
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_100015FB0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSFileManager defaultManager];
  v12 = 0;
  [v4 removeItemAtURL:v3 error:&v12];

  v5 = v12;
  v6 = sub_100001A30(@"pasteboard-server");
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v5;
      v8 = "Error deleting item: %{public}@";
      v9 = v7;
      v10 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v9, v10, v8, buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 32);
    *buf = 138543362;
    v14 = v11;
    v8 = "Deleted file for item: %{public}@";
    v9 = v7;
    v10 = OS_LOG_TYPE_INFO;
    goto LABEL_6;
  }
}

void sub_1000167D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    *buf = 138412290;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Deleting file for item: %@", buf, 0xCu);
  }

  v6 = +[NSFileManager defaultManager];
  v9 = 0;
  [v6 removeItemAtURL:v3 error:&v9];

  v7 = v9;
  if (v7)
  {
    v8 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Error deleting item: %{public}@", buf, 0xCu);
    }
  }
}

void sub_100016C80(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSFileManager defaultManager];
  v15 = 0;
  v5 = [v4 removeItemAtURL:v3 error:&v15];

  v6 = v15;
  v7 = sub_100001A30(@"pasteboard-server");
  v8 = v7;
  if (v5)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    v9 = *(a1 + 32);
    *buf = 138477827;
    v17 = v9;
    v10 = "Deleted copied item: %{private}@";
    v11 = v8;
    v12 = OS_LOG_TYPE_INFO;
  }

  else
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v13 = *(a1 + 32);
    *buf = 138477827;
    v17 = v13;
    v10 = "Failed to delete item: %{private}@";
    v11 = v8;
    v12 = OS_LOG_TYPE_ERROR;
  }

  _os_log_impl(&_mh_execute_header, v11, v12, v10, buf, 0xCu);
LABEL_7:

  if (v6)
  {
    v14 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Error deleting item: %{public}@", buf, 0xCu);
    }
  }
}

id sub_1000174B8()
{
  if (qword_1000E5BF8 != -1)
  {
    sub_10007BD00();
  }

  v1 = qword_1000E5BF0;

  return v1;
}

void sub_100017954(id a1)
{
  v2 = [NSInputStream inputStreamWithFileAtPath:@"/System/Library/CoreServices/SystemVersion.plist"];
  [v2 open];
  v1 = [NSPropertyListSerialization propertyListWithStream:v2 options:0 format:0 error:0];
  if (v1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&qword_1000E5BF0, v1);
    }
  }

  [v2 close];
}

void sub_100017D38(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_100017E54(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_10001847C(uint64_t a1)
{
  v2 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "Streams stalled, erroring out the paste operation.", v10, 2u);
  }

  v3 = [NSError errorWithDomain:UAContinuityErrorDomain code:-132 userInfo:0];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained receivedPasteboardInfo:0 withError:v3];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 completedReceivingPasteboardWithError:v3];

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 sendCompletedWithError:v3];

  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = [v7 streamHandler];
  [v8 stop];

  v9 = objc_loadWeakRetained((a1 + 32));
  [v9 setState:8];
}

id sub_100018758(unint64_t a1)
{
  if (a1 >= 9)
  {
    v2 = [NSString stringWithFormat:@"ucStreamState:%d", a1];
  }

  else
  {
    v2 = *(&off_1000C4F48 + a1);
  }

  return v2;
}

id sub_100018BB8(unint64_t a1)
{
  if (a1 >= 0xB)
  {
    v2 = [NSString stringWithFormat:@"tag:%d", a1];
  }

  else
  {
    v2 = *(&off_1000C4F90 + a1);
  }

  return v2;
}

id sub_10001A25C(uint64_t a1)
{
  v2 = +[UASharedPasteboardDataManager sharedInstance];
  [v2 releaseLockForItem:*(a1 + 32)];

  v3 = [*(a1 + 40) uuidItemMap];
  v4 = [*(a1 + 32) UUIDString];
  [v3 setObject:0 forKeyedSubscript:v4];

  v5 = [*(a1 + 40) uuidItemMap];
  v6 = [v5 allValues];
  v7 = [v6 count];

  if (!v7)
  {
    [*(a1 + 40) completedReceivingPasteboardWithError:0];
  }

  v8 = *(a1 + 40);
  v9 = *(a1 + 48);

  return [v8 removeObject:v9];
}

void sub_10001B880(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6[0] = 67109378;
      v6[1] = v5;
      v7 = 2114;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[CODERV2] Error obtaining lock for item %d: %{public}@", v6, 0x12u);
    }
  }
}

void sub_10001C4BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, id location)
{
  objc_destroyWeak(&a45);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001C54C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained sendHeartbeat];
}

void sub_10001C58C(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) state] == 8)
  {
    v4 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[CODERV2] Don't do anything with archives after stream is marked done", &v25, 2u);
    }
  }

  else if (a2 < 0)
  {
    v23 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = *(a1 + 40);
      v25 = 138412290;
      v26 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "[CODERV2] Error creating archive for file: %@", &v25, 0xCu);
    }

    [*(a1 + 32) sendStopWithError:-122];
  }

  else
  {
    v5 = +[UASharedPasteboardDataManager sharedInstance];
    v6 = [v5 readHandleForArchiveWithUUID:*(a1 + 48)];

    v7 = [[UCFilePackager alloc] initWithFile:v6 fileSize:a2 packetSize:0x10000 options:&__NSDictionary0__struct receiver:*(a1 + 32)];
    v8 = [*(a1 + 48) UUIDString];
    [(UCFilePackager *)v7 setUuid:v8];

    [(UCFilePackager *)v7 setTag:8];
    v9 = [*(a1 + 32) archiveQueue];
    objc_sync_enter(v9);
    v10 = [*(a1 + 32) archivePackagers];
    v11 = [*(a1 + 48) UUIDString];
    [v10 setObject:v7 forKeyedSubscript:v11];

    [*(a1 + 32) setTotalSendSize:{objc_msgSend(*(a1 + 32), "totalSendSize") + a2}];
    objc_sync_exit(v9);

    v12 = [*(a1 + 32) requestedArchives];
    objc_sync_enter(v12);
    v13 = [*(a1 + 32) requestedArchives];
    v14 = [*(a1 + 48) UUIDString];
    LODWORD(v11) = [v13 containsObject:v14];

    if (v11)
    {
      [(UCFilePackager *)v7 deliverNextPacket];
      v15 = [*(a1 + 32) requestedArchives];
      v16 = [*(a1 + 48) UUIDString];
      [v15 removeObject:v16];
    }

    objc_sync_exit(v12);

    v17 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [*(a1 + 48) UUIDString];
      v25 = 138412290;
      v26 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[CODERV2] Created packager for archive: %@", &v25, 0xCu);
    }

    if ((*(a1 + 64) & 0x8000000000000000) == 0)
    {
      sandbox_extension_release();
    }

    [*(a1 + 32) removeObject:*(a1 + 56)];
    v19 = [*(a1 + 32) objects];
    v20 = [v19 count] == 0;

    if (v20)
    {
      v21 = sub_100001A30(@"pasteboard-server");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v22 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) totalSendSize]);
        v25 = 138412290;
        v26 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "[CODERV2] Done archiving all objects, total send size: %@", &v25, 0xCu);
      }

      [*(a1 + 32) sendTotalSendSize];
    }
  }
}

void sub_10001DE94(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_10001E588(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_10001F0F8(id a1)
{
  qword_1000E5C10 = objc_alloc_init(UACornerActionManager);

  _objc_release_x1();
}

void sub_1000200F4(_Unwind_Exception *a1)
{
  v7 = v4;

  _Unwind_Resume(a1);
}

int64_t sub_100020188(id a1, UAClientController *a2, UAClientController *a3)
{
  v4 = a3;
  v5 = [(UACornerActionManagerHandler *)a2 priority];
  v6 = [(UACornerActionManagerHandler *)v4 priority];
  v7 = -1;
  if (v5 >= v6)
  {
    v7 = 1;
  }

  if (v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

void sub_100020294(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1000202B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) mainDispatchQ];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100020384;
  v7[3] = &unk_1000C5078;
  v5 = *(a1 + 32);
  v7[4] = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v10 = *(a1 + 48);
  v6 = v3;
  dispatch_async(v4, v7);
}

id sub_100020384(uint64_t a1)
{
  v2 = sub_100001A30(@"signposts");
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 + 1 >= 2 && os_signpost_enabled(v2))
  {
    v16 = *(a1 + 40) == 0;
    v17 = 67240192;
    LODWORD(v18) = v16;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_END, v4, "handoffFetchSpeculative", "success=%{public}d enableTelemetry=YES ", &v17, 8u);
  }

  v5 = *(a1 + 40) == 0;
  v6 = sub_100001A30(0);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v7)
    {
      v13 = [*(a1 + 32) uuid];
      v14 = [v13 UUIDString];
      v15 = [*(a1 + 32) logString];
      v17 = 138543619;
      v18 = v14;
      v19 = 2113;
      v20 = v15;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "DETERMINE: Activity %{public}@/%{private}@ had unsynchronized documents, so we asked it to update and we've heard back.", &v17, 0x16u);
    }

    return [*(a1 + 48) scheduleUpdatingAdvertisableItems];
  }

  else
  {
    if (v7)
    {
      v8 = [*(a1 + 32) uuid];
      v9 = [v8 UUIDString];
      v10 = [*(a1 + 32) logString];
      v11 = *(a1 + 40);
      v17 = 138543875;
      v18 = v9;
      v19 = 2113;
      v20 = v10;
      v21 = 2114;
      v22 = v11;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "DETERMINE: Activity %{public}@/%{private}@ had unsynchronized documents, so we asked it to update and we've heard back with an error %{public}@.", &v17, 0x20u);
    }

    return [*(a1 + 48) scheduleUpdatingAdvertisableItems:*(a1 + 56)];
  }
}

void sub_1000207A8(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_10002098C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

id sub_1000209C8(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = sub_100001A30(0);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (v2 == 1)
  {
    if (v4)
    {
      v5 = *(a1 + 32);
      v8 = 138543362;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "*** SUSPENDING ADVERTISER %{public}@", &v8, 0xCu);
    }

    return [*(a1 + 32) suspend];
  }

  else
  {
    if (v4)
    {
      v7 = *(a1 + 32);
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "*** RESUMING ADVERTISER %{public}@", &v8, 0xCu);
    }

    return [*(a1 + 32) resume];
  }
}

void sub_100020D78(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_100021168(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1000215F8(uint64_t a1, uint64_t a2, char a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100021670;
  v4[3] = &unk_1000C50C8;
  v5 = a3;
  v3 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  dispatch_async(v3, v4);
}

id sub_100021670(uint64_t a1)
{
  v2 = sub_100001A30(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "CornerActionManager: Triggering all because the state of Bluetooth changed to %{BOOL}d", v5, 8u);
  }

  return [*(a1 + 32) triggerAll];
}

void sub_1000217A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_100021D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a49, 8);

  objc_sync_exit(v49);
  _Unwind_Resume(a1);
}

uint64_t sub_100021E54(uint64_t a1)
{
  v2 = sub_100001A30(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Received kMobileKeyBagLockStatusNotifyToken notification, after first unlock, so the system can start processing activities.", v4, 2u);
  }

  [*(a1 + 32) triggerUserIdleDetermination];
  result = notify_cancel(*(*(*(a1 + 40) + 8) + 24));
  *(*(*(a1 + 40) + 8) + 24) = 0;
  return result;
}

void sub_100022840(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1000229B4()
{
  v0 = sub_100001A30(0);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "## Received com.apple.location.changed so restarting deamon", v1, 2u);
  }

  exit(0);
}

id sub_100022A18(uint64_t a1)
{
  v2 = sub_100001A30(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "UserActivity, received UAUserActivityManagerActivityContinuationIsEnabledChangedNotification notification, so spinning all threads.", v4, 2u);
  }

  return [*(a1 + 32) triggerAll];
}

id sub_100022A90(uint64_t a1)
{
  state64 = 0;
  notify_get_state([*(a1 + 32) backlightLevelToken], &state64);
  *(*(a1 + 32) + 120) = state64 != 0;
  v2 = sub_100001A30(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    if (*(*(a1 + 32) + 120))
    {
      v3 = @"On";
    }

    else
    {
      v3 = @"Off";
    }

    *buf = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Backlight %@", buf, 0xCu);
  }

  v4 = *(a1 + 32);
  if ([v4 isBacklightOn])
  {
    v5 = 0;
  }

  else
  {
    v5 = [*(a1 + 32) isMirroringActive] ^ 1;
  }

  return [v4 updateScreenDimStateState:v5];
}

void sub_100022BE0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = sub_100001A30(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v10 = 67109120;
    LODWORD(v11) = v4 != 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Mirroring active state update: %d", &v10, 8u);
  }

  v6 = [*(a1 + 32) isMirroringActive];
  [*(a1 + 32) setIsMirroringActive:v4 != 0];
  if ((v4 != 0) != v6)
  {
    v7 = sub_100001A30(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      if ([*(a1 + 32) isMirroringActive])
      {
        v8 = "yes";
      }

      else
      {
        v8 = "no";
      }

      v9 = "no";
      if (([*(a1 + 32) isBacklightOn] & 1) == 0 && !objc_msgSend(*(a1 + 32), "isMirroringActive"))
      {
        v9 = "yes";
      }

      v10 = 136315394;
      v11 = v8;
      v12 = 2080;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Mirroring state changed, updating isUserActive with isMirroringActive %s and screenDimState with %s", &v10, 0x16u);
    }

    [*(a1 + 32) triggerUserIdleDetermination];
  }
}

void sub_100022DB0(uint64_t a1)
{
  v2 = [*(a1 + 32) mainDispatchQ];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100022E40;
  block[3] = &unk_1000C4D10;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

void sub_100022E40(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  v4 = sub_100001A30(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "--- Received MCEffectiveSettingsChangedNotification notification, so signalling all our queues to re-check what's allowed.", v5, 2u);
  }

  [*(a1 + 32) triggerAll];
  objc_sync_exit(v3);

  objc_autoreleasePoolPop(v2);
}

void sub_100022EEC(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

double sub_10002331C(void *a1, void *a2, double a3, double a4)
{
  v7 = a1;
  v29 = a2;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v9)
  {
    v10 = *v39;
    v11 = 0.0;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v39 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v38 + 1) + 8 * i);
        if ([v13 active] && objc_msgSend(v13, "advertising"))
        {
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v14 = [v13 advertisingItems];
          v15 = [v14 countByEnumeratingWithState:&v34 objects:v43 count:16];
          if (v15)
          {
            v16 = *v35;
            do
            {
              for (j = 0; j != v15; j = j + 1)
              {
                if (*v35 != v16)
                {
                  objc_enumerationMutation(v14);
                }

                v18 = *(*(&v34 + 1) + 8 * j);
                objc_opt_class();
                isKindOfClass = objc_opt_isKindOfClass();
                if (v11 >= a4)
                {
                  v20 = v11;
                }

                else
                {
                  v20 = a4;
                }

                if (v11 >= a3)
                {
                  v21 = v11;
                }

                else
                {
                  v21 = a3;
                }

                if (isKindOfClass)
                {
                  v11 = v20;
                }

                else
                {
                  v11 = v21;
                }
              }

              v15 = [v14 countByEnumeratingWithState:&v34 objects:v43 count:16];
            }

            while (v15);
          }
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v9);
  }

  else
  {
    v11 = 0.0;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v22 = v29;
  v23 = [v22 countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v23)
  {
    v24 = *v31;
    do
    {
      for (k = 0; k != v23; k = k + 1)
      {
        if (*v31 != v24)
        {
          objc_enumerationMutation(v22);
        }

        v26 = *(*(&v30 + 1) + 8 * k);
        if ([v26 active])
        {
          [v26 intervalToDelaySuspensionOfAdvertisingForItem:0];
          if (v11 < v27)
          {
            v11 = v27;
          }
        }
      }

      v23 = [v22 countByEnumeratingWithState:&v30 objects:v42 count:16];
    }

    while (v23);
  }

  return v11;
}

id sub_10002362C(uint64_t a1, int a2)
{
  v4 = sub_100001A30(0);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (a2)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "userInactivePowerAssertion, power assertion timed out and expired, so triggering user idle determination.", buf, 2u);
    }

    [*(a1 + 32) triggerUserIdleDetermination];
  }

  else
  {
    if (v5)
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "userInactivePowerAssertion, userInactivePowerAssertion power assertion removed.", v7, 2u);
    }
  }

  [*(a1 + 32) setUserInactivePowerAssertion:0];
  return [*(a1 + 32) scheduleUpdatingAdvertisableItems];
}

id sub_100023AF0(uint64_t a1, int a2)
{
  v4 = sub_100001A30(0);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (a2)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "screenDimmedPowerAssertion, power assertion timed out and expired, so triggering user idle determination.", buf, 2u);
    }

    [*(a1 + 32) triggerUserIdleDetermination];
  }

  else
  {
    if (v5)
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "screenDimmedPowerAssertion, screenDimmedPowerAssertion power assertion removed.", v7, 2u);
    }
  }

  [*(a1 + 32) setScreenDimmedPowerAssertion:0];
  return [*(a1 + 32) scheduleUpdatingAdvertisableItems];
}

id sub_100023FB8(uint64_t a1, int a2)
{
  v4 = sub_100001A30(0);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (a2)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "updateUIDeviceLockedState, power assertion timed out and expired, so triggering user idle determination.", buf, 2u);
    }

    [*(a1 + 32) triggerUserIdleDetermination];
  }

  else
  {
    if (v5)
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "updateUIDeviceLockedState, power assertion removed.", v7, 2u);
    }
  }

  return [*(a1 + 32) setDeviceUILockedPowerAssertion:0];
}

int64_t sub_100024758(id a1, UAAdvertiser *a2, UAAdvertiser *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(UACornerActionManagerHandler *)v4 priority];
  if (v6 == [(UACornerActionManagerHandler *)v5 priority])
  {
    v7 = 0;
  }

  else
  {
    v8 = [(UACornerActionManagerHandler *)v4 priority];
    if (v8 < [(UACornerActionManagerHandler *)v5 priority])
    {
      v7 = -1;
    }

    else
    {
      v7 = 1;
    }
  }

  return v7;
}

void sub_1000247F4(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = sub_100001F04;
  v16[4] = sub_1000270C0;
  v17 = v8;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000270C8;
  v12[3] = &unk_1000C52D0;
  v14 = a4;
  v15 = v16;
  v13 = v7;
  v9 = v14;
  v10 = v7;
  v11 = v8;
  [a2 enumerateLinesUsingBlock:v12];

  _Block_object_dispose(v16, 8);
}

void sub_10002491C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

int64_t sub_100024958(id a1, UAAdvertiser *a2, UAAdvertiser *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(UACornerActionManagerHandler *)v4 priority];
  if (v6 == [(UACornerActionManagerHandler *)v5 priority])
  {
    v7 = 0;
  }

  else
  {
    v8 = [(UACornerActionManagerHandler *)v4 priority];
    if (v8 < [(UACornerActionManagerHandler *)v5 priority])
    {
      v7 = -1;
    }

    else
    {
      v7 = 1;
    }
  }

  return v7;
}

int64_t sub_100025F5C(id a1, UAAdvertiser *a2, UAAdvertiser *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(UACornerActionManagerHandler *)v4 priority];
  if (v6 == [(UACornerActionManagerHandler *)v5 priority])
  {
    v7 = 0;
  }

  else
  {
    v8 = [(UACornerActionManagerHandler *)v4 priority];
    if (v8 < [(UACornerActionManagerHandler *)v5 priority])
    {
      v7 = -1;
    }

    else
    {
      v7 = 1;
    }
  }

  return v7;
}

int64_t sub_100025FF8(id a1, UAAdvertiser *a2, UAAdvertiser *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(UACornerActionManagerHandler *)v4 priority];
  if (v6 == [(UACornerActionManagerHandler *)v5 priority])
  {
    v7 = 0;
  }

  else
  {
    v8 = [(UACornerActionManagerHandler *)v4 priority];
    if (v8 < [(UACornerActionManagerHandler *)v5 priority])
    {
      v7 = -1;
    }

    else
    {
      v7 = 1;
    }
  }

  return v7;
}

int64_t sub_100026094(id a1, UAUserActivityInfo *a2, UAUserActivityInfo *a3)
{
  v4 = a3;
  v5 = [(UAUserActivityInfo *)a2 uuid];
  v6 = [v5 UUIDString];
  v7 = [(UAUserActivityInfo *)v4 uuid];
  v8 = [v7 UUIDString];
  v9 = [v6 compare:v8];

  return v9;
}

int64_t sub_10002616C(id a1, UAAdvertiser *a2, UAAdvertiser *a3)
{
  v4 = a3;
  v5 = [(UACornerActionManagerHandler *)a2 uuid];
  v6 = [v5 UUIDString];
  v7 = [(UACornerActionManagerHandler *)v4 uuid];
  v8 = [v7 UUIDString];
  v9 = [v6 compare:v8];

  return v9;
}

int64_t sub_100026244(id a1, UAAdvertiser *a2, UAAdvertiser *a3)
{
  v4 = a3;
  v5 = [(UACornerActionManagerHandler *)a2 uuid];
  v6 = [v5 UUIDString];
  v7 = [(UACornerActionManagerHandler *)v4 uuid];
  v8 = [v7 UUIDString];
  v9 = [v6 compare:v8];

  return v9;
}

int64_t sub_10002631C(id a1, UAClientController *a2, UAClientController *a3)
{
  v4 = a3;
  v5 = [(UACornerActionManagerHandler *)a2 uuid];
  v6 = [v5 UUIDString];
  v7 = [(UACornerActionManagerHandler *)v4 uuid];
  v8 = [v7 UUIDString];
  v9 = [v6 compare:v8];

  return v9;
}

void sub_100026514(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_100026638(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_1000266FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_100026788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_10002683C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_1000268E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_100026988(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_100026A1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_100026A90(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_100026B24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_100026BB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_100027060(id a1)
{
  v1 = strstr("@(#)PROGRAM:useractivityd  PROJECT:UserActivity-551\n", "PROJECT:UserActivity-");
  if (v1)
  {
    strlcpy(byte_1000E5C21, v1 + 21, 0x40uLL);
    v2 = strrchr(byte_1000E5C21, 10);
    if (v2)
    {
      *v2 = 0;
    }
  }
}

void sub_1000270C8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    [*(a1 + 32) appendString:?];
  }

  [*(a1 + 32) appendString:v3];
  [*(a1 + 32) appendString:@"\n"];
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(a1 + 40));
}

void sub_100028004(_Unwind_Exception *a1)
{
  v8 = v6;

  _Unwind_Resume(a1);
}

void sub_100028548(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1000287A4(_Unwind_Exception *a1)
{
  v5 = v4;

  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_10002894C(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_10002916C(uint64_t a1)
{
  v2 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[REMOTE GEN] Responding to type Info request", v8, 2u);
  }

  if ([*(a1 + 32) state] == 6)
  {
    v3 = [*(a1 + 32) error];

    if (!v3)
    {
      v4 = [NSError errorWithDomain:UAContinuityErrorDomain code:-125 userInfo:0];
      [*(a1 + 32) setError:v4];

      [*(a1 + 32) setPbInfo:0];
    }
  }

  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) pbInfo];
  v7 = [*(a1 + 32) error];
  (*(v5 + 16))(v5, v6, v7);
}

void sub_100029294(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) setPayloadXferTime:{+[UADiagnosticUtils absoluteToNSec:](UADiagnosticUtils, "absoluteToNSec:", mach_absolute_time() - *(a1 + 48))}];
  v7 = sub_100001A30(@"pasteboard-server");
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v73 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[REMOTE GEN] Type payload fetch error: %{public}@", buf, 0xCu);
    }

    v9 = UAContinuityErrorDomain;
    v70 = NSUnderlyingErrorKey;
    v71 = v6;
    v10 = [NSDictionary dictionaryWithObjects:&v71 forKeys:&v70 count:1];
    v11 = [NSError errorWithDomain:v9 code:-120 userInfo:v10];

    v12 = +[UADiagnosticManager sharedManager];
    [v12 submitRemotePasteboardBecameUnavailable:4];

    [*(a1 + 32) setErrorCode:{objc_msgSend(v6, "code")}];
    v13 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      *buf = 138477827;
      v73 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[REMOTE GEN] Type Fetch Info: %{private}@", buf, 0xCu);
    }

    v15 = +[UADiagnosticManager sharedManager];
    [v15 submitRemotePasteboardTypeInfoRequested:*(a1 + 32)];

    [*(a1 + 40) updateState:1];
    [*(a1 + 40) setError:v11];
  }

  else
  {
    v54 = a1;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[REMOTE GEN] Received type info", buf, 2u);
    }

    v55 = v5;
    v16 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v5 error:0];
    v17 = [v16 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
    v53 = v16;
    [v16 finishDecoding];
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v52 = v17;
    v18 = [v17 pbinfo];
    v19 = [v18 items];

    obj = v19;
    v20 = [v19 countByEnumeratingWithState:&v62 objects:v69 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v63;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v63 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v62 + 1) + 8 * i);
          v58 = 0u;
          v59 = 0u;
          v60 = 0u;
          v61 = 0u;
          v25 = [v24 types];
          v26 = [v25 allKeys];

          v27 = [v26 countByEnumeratingWithState:&v58 objects:v68 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v59;
            do
            {
              for (j = 0; j != v28; j = j + 1)
              {
                if (*v59 != v29)
                {
                  objc_enumerationMutation(v26);
                }

                v31 = *(*(&v58 + 1) + 8 * j);
                v32 = [v24 types];
                v33 = [v32 objectForKeyedSubscript:v31];
                [v33 setDataFile:0];
              }

              v28 = [v26 countByEnumeratingWithState:&v58 objects:v68 count:16];
            }

            while (v28);
          }
        }

        v21 = [obj countByEnumeratingWithState:&v62 objects:v69 count:16];
      }

      while (v21);
    }

    if ([v52 protocolVersion] < 1)
    {
      v34 = 1;
    }

    else
    {
      v34 = [v52 protocolVersion];
    }

    a1 = v54;
    v5 = v55;
    v11 = v53;
    v6 = 0;
    [*(v54 + 40) setStreamProtocolVersion:v34];
    v35 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = [*(v54 + 40) streamProtocolVersion];
      *buf = 67109120;
      LODWORD(v73) = v36;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "[REMOTE GEN] Setting protocol version: %d", buf, 8u);
    }

    [*(v54 + 32) setPayloadSize:{objc_msgSend(v55, "length")}];
    v37 = [v52 pbinfo];
    [*(v54 + 40) setPbInfo:v37];

    [*(v54 + 40) updateState:3];
    if ([v52 extraDataType] == 2)
    {
      v38 = sub_100001A30(@"pasteboard-server");
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "[REMOTE GEN] Received extra data, saving for later", buf, 2u);
      }

      [*(v54 + 40) updateState:5];
      v39 = +[UASharedPasteboardDataManager sharedInstance];
      v40 = [v39 createFileForRemotePasteboardBlob];
      v41 = [v52 extraData];
      v57 = 0;
      [v40 writeData:v41 error:&v57];
      v42 = v57;

      if (v42)
      {
        v43 = UAContinuityErrorDomain;
        v66 = NSUnderlyingErrorKey;
        v67 = v42;
        v44 = [NSDictionary dictionaryWithObjects:&v67 forKeys:&v66 count:1];
        v45 = [NSError errorWithDomain:v43 code:-128 userInfo:v44];

        v46 = +[UADiagnosticManager sharedManager];
        [v46 submitRemotePasteboardBecameUnavailable:4];

        [*(v54 + 32) setErrorCode:{objc_msgSend(v45, "code")}];
        [*(v54 + 40) updateState:1];
        [*(v54 + 40) setError:v45];
      }
    }

    v47 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = [*(v54 + 32) description];
      v49 = sub_100009684(v48);
      *buf = 138477827;
      v73 = v49;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "[REMOTE GEN] Type Fetch Info: %{private}@", buf, 0xCu);
    }

    v50 = +[UADiagnosticManager sharedManager];
    [v50 submitRemotePasteboardTypeInfoRequested:*(v54 + 32)];
  }

  v51 = [*(a1 + 40) respQueue];
  dispatch_activate(v51);
}

void sub_100029D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100029D60(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

char *sub_100029ED8(void *a1, __int128 *a2)
{
  v3 = realpath_DARWIN_EXTSN([a1 fileSystemRepresentation], v7);
  if (v3)
  {
    v5 = *a2;
    v6 = a2[1];
    v3 = sandbox_extension_issue_file_to_process();
    if (v3)
    {
      v3 = [NSData dataWithBytesNoCopy:v3 length:strlen(v3) freeWhenDone:1, v5, v6];
    }
  }

  return v3;
}

void sub_10002A3B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10002A3D4(id a1)
{
  v1 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "[PBOARD CONTROLLER] Client Notification Connection interrupted(pboardd crash?)", v2, 2u);
  }
}

void sub_10002A444(uint64_t a1)
{
  v2 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "[PBOARD CONTROLLER] Client Notification Connection invalidated; remote copy/paste will no longer work.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setClientNotificationConnection:0];
}

void sub_10002A59C(id a1)
{
  qword_1000E5C70 = +[NSUUID UUID];

  _objc_release_x1();
}

void sub_10002AAB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002AB30;
    block[3] = &unk_1000C4CC0;
    block[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_10002AB40(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "[PBOARD CONTROLLER] Error getting client connection: %@", &v4, 0xCu);
  }
}

void sub_10002B230(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[PBOARD CONTROLLER] Received pasteboard info: %@", &v6, 0xCu);
  }

  v5 = [v3 items];
  [*(a1 + 32) setCurrentLocalPasteboard:v5];

  [*(a1 + 32) setCurrentLocalPasteboardSize:{objc_msgSend(v3, "dataSize")}];
  [*(a1 + 32) setRemotePasteboardAvalibility:1 withDataRequester:0];
}

void sub_10002B880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a1 + 40) + 16);
  if (a3)
  {
    v4();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002B93C;
    block[3] = &unk_1000C4CC0;
    block[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {

    v4();
  }
}

void sub_10002C274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, id obj, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  objc_sync_exit(obj);
  _Block_object_dispose(&a55, 8);
  _Unwind_Resume(a1);
}

void sub_10002C310(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = v5;
  v7 = *(*(a1 + 48) + 8);
  if ((*(v7 + 24) & 1) == 0)
  {
    *(v7 + 24) = 1;
    if (v5)
    {
      [*(a1 + 32) setRemotePasteboardAvalibility:0 withDataRequester:0];
      v8 = +[UADiagnosticManager sharedManager];
      [v8 submitRemotePasteboardBecameUnavailable:4];
    }

    v9 = [*(a1 + 32) remoteGeneration];
    [v9 setReturnEarly:0];

    (*(*(a1 + 40) + 16))();
    v10 = +[UASharedPasteboardDataManager sharedInstance];
    [v10 cleanupArchiveDir];
  }
}

void sub_10002C408(uint64_t a1)
{
  v2 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[PBOARD CONTROLLER] Pasteboard Fetch Cancelled", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained pasteInfo];
  [v4 setCancelled:1];

  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = [v5 remoteGeneration];
  [v6 updateState:6];

  v7 = [NSError errorWithDomain:UAContinuityErrorDomain code:-125 userInfo:0];
  (*(*(a1 + 32) + 16))();
  v8 = objc_loadWeakRetained((a1 + 40));
  v9 = [v8 coders];

  objc_sync_enter(v9);
  v10 = objc_loadWeakRetained((a1 + 40));
  v11 = [v10 coders];
  v12 = [v11 copy];

  objc_sync_exit(v9);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v14)
  {
    v15 = *v21;
    do
    {
      v16 = 0;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v20 + 1) + 8 * v16);
        if (objc_opt_respondsToSelector())
        {
          [v17 cancelReceive];
        }

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v13 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v14);
  }

  v18 = +[UASharedPasteboardDataManager sharedInstance];
  [v18 cancelAllLocks];

  v19 = objc_loadWeakRetained((a1 + 40));
  [v19 hideProgressUI:0];
}

void sub_10002C6AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) fetchProgress];
  v8 = [v7 isCancelled];

  if ((v8 & 1) == 0)
  {
    v9 = +[UADiagnosticUtils absoluteToNSec:](UADiagnosticUtils, "absoluteToNSec:", mach_absolute_time() - [*(a1 + 32) pasteFetchStartTime]);
    v10 = [*(a1 + 32) pasteInfo];
    [v10 setPayloadXferTime:v9];

    if (v6)
    {
      v11 = sub_100001A30(@"pasteboard-server");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v86 = v6;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[PBOARD CONTROLLER] Payload fetch error: %{public}@", buf, 0xCu);
      }

      v12 = UAContinuityErrorDomain;
      v83 = NSUnderlyingErrorKey;
      v84 = v6;
      v13 = [NSDictionary dictionaryWithObjects:&v84 forKeys:&v83 count:1];
      v14 = [NSError errorWithDomain:v12 code:-120 userInfo:v13];

      v15 = [*(a1 + 32) showUITimer];
      [v15 invalidate];

      [*(a1 + 32) hideProgressUI:1];
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v16 = [v5 length];
      v17 = [*(a1 + 32) pasteInfo];
      [v17 setPayloadSize:v16];

      v18 = [v5 length] * 8.0;
      v19 = [*(a1 + 32) pasteInfo];
      v20 = (v18 / ([v19 payloadXferTime] / 1000000000.0));
      v21 = [*(a1 + 32) pasteInfo];
      [v21 setPayloadXferSpeed:v20];

      v14 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v5 error:0];
      v22 = [v14 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
      [v14 finishDecoding];
      v23 = [v22 error];

      if (v23)
      {
        v24 = sub_100001A30(@"pasteboard-server");
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = [v22 error];
          *buf = 138543362;
          v86 = v25;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "[PBOARD CONTROLLER] Payload fetch error: %{public}@", buf, 0xCu);
        }

        v26 = [*(a1 + 32) showUITimer];
        [v26 invalidate];

        [*(a1 + 32) hideProgressUI:0];
        v27 = *(a1 + 48);
        v28 = [v22 error];
        (*(v27 + 16))(v27, 0, v28);
      }

      else if ([v22 extraDataType] == 2)
      {
        v29 = sub_100001A30(@"pasteboard-server");
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "[PBOARD CONTROLLER] PBData came with stream request, was a small pboard", buf, 2u);
        }

        v30 = [*(a1 + 32) fetchProgress];
        [v30 setTotalUnitCount:1];

        v31 = [*(a1 + 32) fetchProgress];
        [v31 setCompletedUnitCount:1];

        v32 = [*(a1 + 32) showUITimer];
        [v32 invalidate];

        [*(a1 + 32) hideProgressUI:0];
        v33 = +[UASharedPasteboardDataManager sharedInstance];
        v34 = [v33 createFileForRemotePasteboardBlob];

        if (v34)
        {
          v35 = [v22 extraData];
          v80 = 0;
          v36 = [v34 writeData:v35 error:&v80];
          v67 = v80;

          if (v36)
          {
            v62 = v34;
            v63 = v22;
            v64 = v14;
            v65 = a1;
            v66 = v5;
            v37 = [v22 pbinfo];
            v38 = +[UASharedPasteboardDataManager sharedInstance];
            v39 = [v38 remotePasteboardBlobForReading];
            [v37 setDataFile:v39];

            v78 = 0u;
            v79 = 0u;
            v76 = 0u;
            v77 = 0u;
            v61 = v37;
            obj = [v37 items];
            v70 = [obj countByEnumeratingWithState:&v76 objects:v82 count:16];
            if (v70)
            {
              v69 = *v77;
              do
              {
                v40 = 0;
                do
                {
                  if (*v77 != v69)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v71 = v40;
                  v41 = *(*(&v76 + 1) + 8 * v40);
                  v72 = 0u;
                  v73 = 0u;
                  v74 = 0u;
                  v75 = 0u;
                  v42 = [v41 types];
                  v43 = [v42 countByEnumeratingWithState:&v72 objects:v81 count:16];
                  if (v43)
                  {
                    v44 = v43;
                    v45 = *v73;
                    do
                    {
                      for (i = 0; i != v44; i = i + 1)
                      {
                        if (*v73 != v45)
                        {
                          objc_enumerationMutation(v42);
                        }

                        v47 = *(*(&v72 + 1) + 8 * i);
                        v48 = +[UASharedPasteboardDataManager sharedInstance];
                        v49 = [v48 remotePasteboardBlobForReading];
                        v50 = [v41 types];
                        v51 = [v50 objectForKeyedSubscript:v47];
                        [v51 setDataFile:v49];
                      }

                      v44 = [v42 countByEnumeratingWithState:&v72 objects:v81 count:16];
                    }

                    while (v44);
                  }

                  v40 = v71 + 1;
                }

                while ((v71 + 1) != v70);
                v70 = [obj countByEnumeratingWithState:&v76 objects:v82 count:16];
              }

              while (v70);
            }

            v52 = [*(v65 + 32) pasteInfo];
            [v52 setUsedStreams:0];

            v53 = v61;
            (*(*(v65 + 48) + 16))();
            v6 = 0;
            v5 = v66;
            v22 = v63;
            v14 = v64;
            v34 = v62;
            v54 = v67;
          }

          else
          {
            v60 = sub_100001A30(@"pasteboard-server");
            v54 = v67;
            if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v86 = v67;
              _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "ERROR: Error writing pasteboard data blob: %@", buf, 0xCu);
            }

            v53 = [NSError errorWithDomain:UAContinuityErrorDomain code:-128 userInfo:0];
            (*(*(a1 + 48) + 16))();
          }
        }

        else
        {
          v59 = sub_100001A30(@"pasteboard-server");
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "[PBOARD CONTROLLER] Error creating remote data file", buf, 2u);
          }

          v54 = [NSError errorWithDomain:UAContinuityErrorDomain code:-128 userInfo:0];
          (*(*(a1 + 48) + 16))();
        }
      }

      else
      {
        v55 = [v22 extraDataType];
        v56 = *(a1 + 32);
        if (v55 == 1)
        {
          v57 = [v22 extraData];
          [v56 receivePasteboardStreamData:v57 version:objc_msgSend(*(a1 + 40) withCompletion:{"streamProtocolVersion"), *(a1 + 48)}];
        }

        else
        {
          v58 = [*(a1 + 32) showUITimer];
          [v58 invalidate];

          [*(a1 + 32) hideProgressUI:0];
          (*(*(a1 + 48) + 16))();
        }
      }
    }
  }
}

void sub_10002D0A8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = [v3 showUITimer];
  [v3 showProgressUI:v4];

  [*(a1 + 32) setStreamOpenStartTime:mach_absolute_time()];
  objc_initWeak(&location, *(a1 + 32));
  v5 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [NSNumber numberWithInteger:*(a1 + 64)];
    *buf = 138412290;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[PBOARD CONTROLLER] Requesting to open streams with version: %@", buf, 0xCu);
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002D29C;
  v11[3] = &unk_1000C5538;
  v11[4] = *(a1 + 32);
  objc_copyWeak(v13, &location);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v12 = v9;
  v13[1] = v10;
  [v7 getContinuationStreamsWithEndpointData:v8 completionHandler:v11];

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
  objc_autoreleasePoolPop(v2);
}

void sub_10002D29C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(a1 + 32) fetchProgress];
  v11 = [v10 isCancelled];

  if (v11)
  {
    sub_10002D890(v12, v7, v8);
    goto LABEL_20;
  }

  v13 = +[UADiagnosticUtils absoluteToNSec:](UADiagnosticUtils, "absoluteToNSec:", mach_absolute_time() - [*(a1 + 32) streamOpenStartTime]);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v15 = [WeakRetained pasteInfo];
  [v15 setStreamOpenTime:v13];

  v16 = sub_100001A30(@"pasteboard-server");
  v17 = v16;
  if (!v9)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[PBOARD CONTROLLER] Opened streams", buf, 2u);
    }

    v22 = +[UASharedPasteboardDataManager sharedInstance];
    v23 = [v22 createFileForRemotePasteboardBlob];

    if (!v23)
    {
      v34 = sub_100001A30(@"pasteboard-server");
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "[PBOARD CONTROLLER] Could not create data file for remote pasteboard", buf, 2u);
      }

      v35 = [NSError errorWithDomain:UAContinuityErrorDomain code:-128 userInfo:0];
      sub_10002D890(v35, v7, v8);
      v36 = [*(a1 + 32) showUITimer];
      [v36 invalidate];

      [*(a1 + 32) hideProgressUI:0];
      (*(*(a1 + 40) + 16))();
      goto LABEL_19;
    }

    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_10002D938;
    v47[3] = &unk_1000C54E8;
    v24 = *(a1 + 40);
    v47[4] = *(a1 + 32);
    v48 = v24;
    v25 = objc_retainBlock(v47);
    v41 = _NSConcreteStackBlock;
    v42 = 3221225472;
    v43 = sub_10002E740;
    v44 = &unk_1000C5510;
    objc_copyWeak(&v46, (a1 + 48));
    v45 = *(a1 + 32);
    v26 = objc_retainBlock(&v41);
    v27 = mach_absolute_time();
    v28 = objc_loadWeakRetained((a1 + 48));
    [v28 setStreamXferStartTime:{v27, v41, v42, v43, v44}];

    v29 = *(a1 + 56);
    if (v29 == 2)
    {
      v30 = [[UCStreamCoderV2 alloc] initWithInputStream:v7 outputStream:v8];
      v37 = [*(a1 + 32) remoteGeneration];
      v38 = [v37 returnEarly];

      v39 = [*(a1 + 32) pasteInfo];
      [v39 setIsAsyncTransfer:v38];

      v40 = [*(a1 + 32) fetchProgress];
      [(UCStreamCoderV2 *)v30 receivePasteboardToFile:v23 withProgress:v40 infoReceivedHandler:v25 completionHandler:v26 returnInfoEarly:v38];

      v32 = [*(a1 + 32) coders];
      objc_sync_enter(v32);
      v33 = [*(a1 + 32) coders];
      [v33 addObject:v30];
    }

    else
    {
      if (v29 != 1)
      {
LABEL_18:

        objc_destroyWeak(&v46);
        v35 = v48;
LABEL_19:

        goto LABEL_20;
      }

      v30 = [[UAPBStreamCoderV1 alloc] initWithInputStream:v7 outputStream:v8];
      v31 = [*(a1 + 32) fetchProgress];
      [(UCStreamCoderV2 *)v30 receivePasteboardToFile:v23 withProgress:v31 infoReceivedHandler:v25 completionHandler:v26 returnInfoEarly:0];

      v32 = [*(a1 + 32) coders];
      objc_sync_enter(v32);
      v33 = [*(a1 + 32) coders];
      [v33 addObject:v30];
    }

    objc_sync_exit(v32);
    goto LABEL_18;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v52 = v9;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[PBOARD CONTROLLER] Opened streams with error: %{public}@", buf, 0xCu);
  }

  v49 = NSUnderlyingErrorKey;
  v50 = v9;
  v18 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
  v19 = [NSError errorWithDomain:UAContinuityErrorDomain code:-121 userInfo:v18];

  sub_10002D890(v20, v7, v8);
  v21 = [*(a1 + 32) showUITimer];
  [v21 invalidate];

  [*(a1 + 32) hideProgressUI:1];
  (*(*(a1 + 40) + 16))();

LABEL_20:
}

void sub_10002D850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_sync_exit(v6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_10002D890(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  if (![v5 streamStatus])
  {
    [v5 open];
  }

  if (![v4 streamStatus])
  {
    [v4 open];
  }

  if ([v5 streamStatus] != 6)
  {
    [v5 close];
  }

  if ([v4 streamStatus] != 6)
  {
    [v4 close];
  }
}

void sub_10002D938(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v121 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[PBOARD CONTROLLER] Error receiving pboard info: %{public}@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
    goto LABEL_75;
  }

  v8 = [v5 error];

  v9 = sub_100001A30(@"pasteboard-server");
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = [v5 error];
      *buf = 138543362;
      v121 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[PBOARD CONTROLLER] Received error from remote: %{public}@", buf, 0xCu);
    }

    v12 = *(a1 + 40);
    v13 = [v5 error];
    (*(v12 + 16))(v12, 0, v13);

    goto LABEL_75;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v121 = v5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[PBOARD CONTROLLER] Received pboard info: %@", buf, 0xCu);
  }

  v14 = +[UASharedPasteboardDataManager sharedInstance];
  v15 = [v14 remotePasteboardBlobForReading];
  v16 = [v5 pbinfo];
  [v16 setDataFile:v15];

  v17 = +[UASharedPasteboardDataManager sharedInstance];
  v18 = [v17 sharedDataPath];

  v104 = v18;
  if (v18)
  {
    v100 = objc_alloc_init(NSMutableDictionary);
    v19 = [v5 pbinfo];
    v20 = [v19 items];
    v21 = [v20 count];
    v22 = [*(a1 + 32) pasteInfo];
    [v22 setNumberOfItems:v21];

    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v95 = v5;
    v23 = [v5 pbinfo];
    v24 = [v23 items];

    obj = v24;
    v98 = [v24 countByEnumeratingWithState:&v116 objects:v129 count:16];
    if (!v98)
    {
      goto LABEL_69;
    }

    v97 = *v117;
    v106 = a1;
    while (1)
    {
      v25 = 0;
      do
      {
        if (*v117 != v97)
        {
          objc_enumerationMutation(obj);
        }

        v99 = v25;
        v26 = *(*(&v116 + 1) + 8 * v25);
        v112 = 0u;
        v113 = 0u;
        v114 = 0u;
        v115 = 0u;
        v107 = [v26 types];
        v109 = [v107 countByEnumeratingWithState:&v112 objects:v128 count:16];
        if (v109)
        {
          v108 = *v113;
          v110 = v26;
          do
          {
            for (i = 0; i != v109; i = i + 1)
            {
              if (*v113 != v108)
              {
                objc_enumerationMutation(v107);
              }

              v28 = *(*(&v112 + 1) + 8 * i);
              v29 = +[UASharedPasteboardDataManager sharedInstance];
              v30 = [v29 remotePasteboardBlobForReading];
              v31 = [v26 types];
              v32 = [v31 objectForKeyedSubscript:v28];
              [v32 setDataFile:v30];

              if ([v28 isEqualToString:@"public.file-url"])
              {
                v33 = [*(a1 + 32) pasteInfo];
                [v33 setIsFileCopy:1];

                v34 = [v26 types];
                v35 = [v34 objectForKeyedSubscript:v28];
                v36 = [v35 dataFile];
                v37 = [v26 types];
                v38 = [v37 objectForKeyedSubscript:v28];
                v39 = [v38 offset];
                [v36 seekToFileOffset:{objc_msgSend(v39, "longLongValue")}];

                v40 = [v110 types];
                v41 = [v40 objectForKeyedSubscript:v28];
                v42 = [v41 dataFile];
                v43 = [v110 types];
                v44 = [v43 objectForKeyedSubscript:v28];
                v45 = [v42 readDataOfLength:{objc_msgSend(v44, "size")}];

                v26 = v110;
                v46 = [v110 types];
                v47 = [v46 objectForKeyedSubscript:v28];
                v48 = [v47 dataFile];
                [v48 seekToFileOffset:0];

                v49 = CFURLCreateWithBytes(kCFAllocatorDefault, [v45 bytes], objc_msgSend(v45, "length"), 0x8000100u, 0);
                v50 = sub_100001A30(@"pasteboard-server");
                if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v121 = v49;
                  _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEBUG, "URL on pasteboard: %@", buf, 0xCu);
                }

                if (!v49 || (-[__CFURL scheme](v49, "scheme"), (v51 = objc_claimAutoreleasedReturnValue()) == 0) || (v52 = v51, v53 = [v51 compare:@"file" options:1], v52, v53))
                {
                  v54 = sub_100001A30(@"pasteboard-server");
                  if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
                  {
                    *buf = 138543362;
                    v121 = v49;
                    _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_FAULT, "[PBOARD CONTROLLER] Non-file: url provide in stream, %{public}@", buf, 0xCu);
                  }

                  goto LABEL_64;
                }

                v55 = CFURLCopyPath(v49);
                v105 = [(__CFString *)v55 hasSuffix:@"/"];

                v54 = [(__CFURL *)v49 lastPathComponent];
                v56 = [v110 types];
                v57 = [v56 objectForKeyedSubscript:v28];
                v58 = [v57 uuid];
                v59 = [v58 UUIDString];
                v60 = [NSString stringWithFormat:@"items/%@/", v59];

                v61 = [v104 stringByAppendingPathComponent:v60];
                if (v61 && v60)
                {
                  v103 = v60;
                  v62 = [NSURL fileURLWithPath:v61];
                  v63 = v62;
                  if (v54)
                  {
                    v64 = v54;
                  }

                  else
                  {
                    v64 = &stru_1000C67D0;
                  }

                  v65 = [v62 URLByAppendingPathComponent:v64];

                  v66 = [*(v106 + 32) remoteGeneration];
                  v67 = [v66 returnEarly];

                  if (v67)
                  {
                    v101 = v61;
                    v68 = NSFileTypeDirectory;
                    if (!v105)
                    {
                      v68 = NSFileTypeRegular;
                    }

                    v69 = v68;
                    v70 = sub_100001A30(@"pasteboard-server");
                    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412546;
                      v121 = v65;
                      v122 = 2112;
                      v123 = v69;
                      _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEBUG, "Creating %@ as type %@", buf, 0x16u);
                    }

                    v71 = +[NSFileManager defaultManager];
                    v72 = [v65 path];
                    if (v105)
                    {
                      v126 = NSFileType;
                      v127 = NSFileTypeDirectory;
                      v73 = [NSDictionary dictionaryWithObjects:&v127 forKeys:&v126 count:1];
                      [v71 createDirectoryAtPath:v72 withIntermediateDirectories:0 attributes:v73 error:0];
                    }

                    else
                    {
                      v124 = NSFileType;
                      v125 = NSFileTypeRegular;
                      v73 = [NSDictionary dictionaryWithObjects:&v125 forKeys:&v124 count:1];
                      [v71 createFileAtPath:v72 contents:0 attributes:v73];
                    }

                    v61 = v101;
                  }

                  v74 = sub_100001A30(@"pasteboard-server");
                  if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v121 = v65;
                    _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_INFO, "[PBOARD CONTROLLER] new URL for item: %@", buf, 0xCu);
                  }

                  if (realpath_DARWIN_EXTSN([v65 fileSystemRepresentation], buf))
                  {
                    v75 = sub_100001A30(@"pasteboard-server");
                    if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
                    {
                      *v111 = 0;
                      _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_INFO, "[PBOARD CONTROLLER] Issuing sandbox extension", v111, 2u);
                    }

                    v76 = sandbox_extension_issue_file();
                    v77 = sub_100001A30(@"pasteboard-server");
                    v78 = v77;
                    if (v76)
                    {
                      if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
                      {
                        *v111 = 0;
                        _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_INFO, "[PBOARD CONTROLLER] Got extension", v111, 2u);
                      }

                      v79 = [NSData dataWithBytesNoCopy:v76 length:strlen(v76) freeWhenDone:1];
                      if (v79)
                      {
                        v78 = v79;
                        v102 = v61;
                        v80 = sub_100001A30(@"pasteboard-server");
                        if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
                        {
                          *v111 = 0;
                          _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_INFO, "[PBOARD CONTROLLER] Saving sandbox extension to dict", v111, 2u);
                        }

                        v81 = [v110 types];
                        v82 = [v81 objectForKeyedSubscript:v28];
                        v83 = [v82 uuid];
                        v84 = [v83 UUIDString];

                        [v100 setObject:v78 forKeyedSubscript:v84];
                        v61 = v102;
                        goto LABEL_61;
                      }
                    }

                    else
                    {
                      if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
                      {
                        *v111 = 0;
                        _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "[PBOARD CONTROLLER] Error issuing extension", v111, 2u);
                      }

LABEL_61:
                    }
                  }

                  v26 = v110;
                  v60 = v103;
                }

                else
                {
                  v65 = sub_100001A30(@"pasteboard-server");
                  if (os_log_type_enabled(v65, OS_LOG_TYPE_FAULT))
                  {
                    *buf = 138543362;
                    v121 = v49;
                    _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_FAULT, "[PBOARD CONTROLLER] Corrupt file: url in stream, %{public}@", buf, 0xCu);
                  }

                  v26 = v110;
                }

                a1 = v106;
LABEL_64:

                continue;
              }
            }

            v109 = [v107 countByEnumeratingWithState:&v112 objects:v128 count:16];
          }

          while (v109);
        }

        v25 = v99 + 1;
      }

      while ((v99 + 1) != v98);
      v98 = [obj countByEnumeratingWithState:&v116 objects:v129 count:16];
      if (!v98)
      {
LABEL_69:

        v85 = +[UASharedPasteboardDataManager sharedInstance];
        v86 = [v85 sharedDataPath];
        v5 = v95;
        v87 = [v95 pbinfo];
        [v87 setSharedDataPath:v86];

        v88 = [v95 pbinfo];
        v89 = v100;
        [v88 setSandboxExtensions:v100];

        v90 = sub_100001A30(@"pasteboard-server");
        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
        {
          v91 = [v100 description];
          v92 = sub_100009684(v91);
          *buf = 138412290;
          v121 = v92;
          _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEBUG, "[PBOARD CONTROLLER] Sending extensions: %@", buf, 0xCu);
        }

        v93 = *(a1 + 40);
        v94 = [v95 pbinfo];
        (*(v93 + 16))(v93, v94, 0);

        v6 = 0;
        goto LABEL_74;
      }
    }
  }

  v89 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_ERROR, "Unable to get shared temp dir@", buf, 2u);
  }

LABEL_74:

LABEL_75:
}

void sub_10002E740(uint64_t a1, void *a2, unint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = mach_absolute_time();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = +[UADiagnosticUtils absoluteToNSec:](UADiagnosticUtils, "absoluteToNSec:", v9 - [WeakRetained streamXferStartTime]);

  v12 = objc_loadWeakRetained((a1 + 40));
  v13 = [v12 pasteInfo];
  [v13 setStreamDataXferTime:v11];

  v14 = objc_loadWeakRetained((a1 + 40));
  v15 = [v14 pasteInfo];
  [v15 setStreamDataSize:a3];

  v16 = objc_loadWeakRetained((a1 + 40));
  v17 = [v16 pasteInfo];
  [v17 setStreamDataXferSpeed:(a3 * 8.0 / (v11 / 1000000000.0))];

  v18 = +[UADiagnosticUtils absoluteToNSec:](UADiagnosticUtils, "absoluteToNSec:", mach_absolute_time() - [*(a1 + 32) pasteFetchStartTime]);
  v19 = [*(a1 + 32) pasteInfo];
  [v19 setTotalTime:v18];

  if (v8 && [v8 code] != -125)
  {
    v20 = [v8 code];
    v21 = [*(a1 + 32) pasteInfo];
    [v21 setErrorCode:v20];

    v22 = [v8 userInfo];
    v23 = [v22 objectForKeyedSubscript:NSUnderlyingErrorKey];

    if (v23)
    {
      v24 = [v23 code];
      v25 = [*(a1 + 32) pasteInfo];
      [v25 setUnderlyingErrorCode:v24];
    }
  }

  v26 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = [*(a1 + 32) pasteInfo];
    v28 = [v27 description];
    v29 = sub_100009684(v28);
    v36 = 138412290;
    v37 = v29;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[PBOARD CONTROLLER] Paste Fetch Info: %@", &v36, 0xCu);
  }

  v30 = +[UADiagnosticManager sharedManager];
  v31 = [*(a1 + 32) pasteInfo];
  [v30 submitRemotePasteboardWasRequested:v31];

  [*(a1 + 32) setPasteInfo:0];
  v32 = [*(a1 + 32) showUITimer];
  [v32 invalidate];

  [*(a1 + 32) hideProgressUI:v8 != 0];
  v33 = [*(a1 + 32) coders];
  objc_sync_enter(v33);
  v34 = [*(a1 + 32) coders];
  [v34 removeObject:v7];

  objc_sync_exit(v33);
  v35 = [*(a1 + 32) remoteGeneration];
  [v35 updateState:5];
}

void sub_10002EF74(uint64_t a1)
{
  v2 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[PBOARD CONTROLLER] Pboard is small enough to send via BTLE payload", &v15, 2u);
  }

  v3 = [*(a1 + 32) pboardInfoToSend];
  [v3 setExtraDataType:2];
  v4 = +[UASharedPasteboardDataManager sharedInstance];
  v5 = [v4 localPasteboardBlobForReading];
  v6 = [v5 readDataToEndOfFile];
  [v3 setExtraData:v6];

  v7 = [NSKeyedArchiver archivedDataWithRootObject:v3 requiringSecureCoding:1 error:0];
  (*(*(a1 + 40) + 16))();
  v8 = [*(a1 + 32) localInfo];
  [v8 setUsedStreams:0];

  v9 = +[UADiagnosticUtils absoluteToNSec:](UADiagnosticUtils, "absoluteToNSec:", mach_absolute_time() - [*(a1 + 32) localSendStartTime]);
  v10 = [*(a1 + 32) localInfo];
  [v10 setTotalTime:v9];

  v11 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [*(a1 + 32) localInfo];
    v15 = 138477827;
    v16 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[PBOARD CONTROLLER] Pasteboard Sent Info: %{private}@", &v15, 0xCu);
  }

  v13 = +[UADiagnosticManager sharedManager];
  v14 = [*(a1 + 32) localInfo];
  [v13 submitDidSendLocalPasteboard:v14];

  [*(a1 + 32) setLocalInfo:0];
}

void sub_10002F1D0(uint64_t a1)
{
  v2 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [NSNumber numberWithInteger:*(a1 + 48)];
    v16 = 138412290;
    v17 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[PBOARD CONTROLLER] Starting pboard service for paste, version: %@", &v16, 0xCu);
  }

  v4 = [*(a1 + 32) uuid];
  v5 = [v4 UUIDString];

  if (objc_opt_class())
  {
    v6 = [[SFCompanionAdvertiser alloc] initWithServiceType:v5];
    [*(a1 + 32) setPasteAdvertiser:v6];
  }

  else
  {
    [*(a1 + 32) setPasteAdvertiser:0];
  }

  v7 = [*(a1 + 32) pasteAdvertiser];
  [v7 setSupportsStreams:1];

  v8 = *(a1 + 32);
  v9 = [v8 pasteAdvertiser];
  [v9 setDelegate:v8];

  v10 = [*(a1 + 32) pasteAdvertiser];
  [v10 start];

  v11 = [*(a1 + 32) pboardInfoToSend];
  [v11 setExtraDataType:1];
  v12 = [*(a1 + 32) pasteAdvertiser];
  v13 = [v12 serviceEndpointData];
  [v11 setExtraData:v13];

  [v11 setProtocolVersion:*(a1 + 48)];
  v14 = [NSKeyedArchiver archivedDataWithRootObject:v11 requiringSecureCoding:1 error:0];
  [*(a1 + 32) setSendingCoderVersion:*(a1 + 48)];
  (*(*(a1 + 40) + 16))();
  v15 = [*(a1 + 32) localInfo];
  [v15 setUsedStreams:1];

  [*(a1 + 32) setStreamOpenStartTime:mach_absolute_time()];
}

void sub_10002F430(uint64_t a1)
{
  v2 = +[UASharedPasteboardDataManager sharedInstance];
  v3 = [v2 createFileForLocalPasteboardBlob];

  if (v3)
  {
    v4 = +[UASharedPasteboardDataManager sharedInstance];
    v5 = [v4 fileURLForCloneItems];

    v6 = [*(a1 + 32) clientConnection];
    v7 = v6;
    if (v6)
    {
      [v6 auditToken];
    }

    else
    {
      *buf = 0u;
      v31 = 0u;
    }

    v11 = sub_100029ED8(v5, buf);

    v22 = [*(a1 + 32) clientConnection];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10002F87C;
    v28[3] = &unk_1000C55B0;
    v23 = *(a1 + 40);
    v28[4] = *(a1 + 32);
    v29 = v23;
    v24 = [v22 remoteObjectProxyWithErrorHandler:v28];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10002FB74;
    v25[3] = &unk_1000C55D8;
    v25[4] = *(a1 + 32);
    v26 = *(a1 + 48);
    v27 = *(a1 + 56);
    [v24 writeLocalPasteboardToFile:v3 itemDir:v5 extension:v11 withCompletion:v25];
  }

  else
  {
    v8 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[PBOARD CONTROLLER] Failed to create local pasteboard data file", buf, 2u);
    }

    v9 = [*(a1 + 32) pboardFetchSem];

    if (v9)
    {
      v10 = [*(a1 + 32) pboardFetchSem];
      dispatch_semaphore_signal(v10);
    }

    v5 = [NSError errorWithDomain:UAContinuityErrorDomain code:-128 userInfo:0];
    v11 = objc_alloc_init(UASharedPasteboardInfoWrapper);
    [(UASharedPasteboardInfoWrapper *)v11 setError:v5];
    v12 = [NSKeyedArchiver archivedDataWithRootObject:v11 requiringSecureCoding:1 error:0];
    v13 = [v5 code];
    v14 = [*(a1 + 32) localInfo];
    [v14 setErrorCode:v13];

    (*(*(a1 + 40) + 16))();
    v15 = [*(a1 + 32) localInfo];
    [v15 setUsedStreams:0];

    v16 = +[UADiagnosticUtils absoluteToNSec:](UADiagnosticUtils, "absoluteToNSec:", mach_absolute_time() - [*(a1 + 32) localSendStartTime]);
    v17 = [*(a1 + 32) localInfo];
    [v17 setTotalTime:v16];

    v18 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [*(a1 + 32) localInfo];
      *buf = 138477827;
      *&buf[4] = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[PBOARD CONTROLLER] Pasteboard Sent Info: %{private}@", buf, 0xCu);
    }

    v20 = +[UADiagnosticManager sharedManager];
    v21 = [*(a1 + 32) localInfo];
    [v20 submitDidSendLocalPasteboard:v21];

    [*(a1 + 32) setLocalInfo:0];
  }
}

void sub_10002F87C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v24 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[PBOARD CONTROLLER] Error getting client object proxy: %{public}@", buf, 0xCu);
  }

  v5 = [*(a1 + 32) pboardFetchSem];

  if (v5)
  {
    v6 = [*(a1 + 32) pboardFetchSem];
    dispatch_semaphore_signal(v6);
  }

  v7 = UAContinuityErrorDomain;
  v21 = NSUnderlyingErrorKey;
  v22 = v3;
  v8 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v9 = [NSError errorWithDomain:v7 code:-124 userInfo:v8];

  v10 = objc_alloc_init(UASharedPasteboardInfoWrapper);
  [(UASharedPasteboardInfoWrapper *)v10 setError:v9];
  v11 = [NSKeyedArchiver archivedDataWithRootObject:v10 requiringSecureCoding:1 error:0];
  v12 = [v9 code];
  v13 = [*(a1 + 32) localInfo];
  [v13 setErrorCode:v12];

  (*(*(a1 + 40) + 16))();
  v14 = [*(a1 + 32) localInfo];
  [v14 setUsedStreams:0];

  v15 = +[UADiagnosticUtils absoluteToNSec:](UADiagnosticUtils, "absoluteToNSec:", mach_absolute_time() - [*(a1 + 32) localSendStartTime]);
  v16 = [*(a1 + 32) localInfo];
  [v16 setTotalTime:v15];

  v17 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [*(a1 + 32) localInfo];
    *buf = 138477827;
    v24 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[PBOARD CONTROLLER] Pasteboard Sent Info: %{private}@", buf, 0xCu);
  }

  v19 = +[UADiagnosticManager sharedManager];
  v20 = [*(a1 + 32) localInfo];
  [v19 submitDidSendLocalPasteboard:v20];

  [*(a1 + 32) setLocalInfo:0];
}

void sub_10002FB74(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v49 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[PBOARD CONTROLLER] Received pasteboard info: %@", buf, 0xCu);
  }

  [*(a1 + 32) setHasFetchedLocalData:1];
  v8 = +[UADiagnosticUtils absoluteToNSec:](UADiagnosticUtils, "absoluteToNSec:", mach_absolute_time() - [*(a1 + 32) localSendStartTime]);
  v9 = [*(a1 + 32) localInfo];
  [v9 setClientWriteTime:v8];

  v10 = [v5 dataSize];
  v11 = [*(a1 + 32) localInfo];
  [v11 setClientWriteSize:v10];

  v12 = [v5 dataSize] * 8.0;
  v13 = [*(a1 + 32) localInfo];
  v14 = (v12 / ([v13 clientWriteTime] / 1000000000.0));
  v15 = [*(a1 + 32) localInfo];
  [v15 setClientWriteSpeed:v14];

  v16 = objc_alloc_init(UASharedPasteboardInfoWrapper);
  v17 = v16;
  if (v6)
  {
    [(UASharedPasteboardInfoWrapper *)v16 setError:v6];
  }

  else
  {
    v18 = objc_alloc_init(UASharedPasteboardInfo);
    v19 = [v5 items];
    [v18 setItems:v19];

    [v18 setDataSize:{objc_msgSend(v5, "dataSize")}];
    [(UASharedPasteboardInfoWrapper *)v17 setPbinfo:v18];
  }

  [*(a1 + 32) setPboardInfoToSend:v17];
  v20 = [*(a1 + 32) pboardFetchSem];

  if (v20)
  {
    v21 = [*(a1 + 32) pboardFetchSem];
    dispatch_semaphore_signal(v21);
  }

  v22 = +[UAUserActivityDefaults sharedDefaults];
  v23 = [v22 pasteboardEmbeddedPayloadSizeLimitInBytes];

  v24 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v25 = [(UASharedPasteboardInfoWrapper *)v17 pbinfo];
    v26 = [v25 dataSize];
    *buf = 134218240;
    v49 = v26;
    v50 = 2048;
    v51 = v23;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "[PBOARD CONTROLLER] pbsize: %ld, payload size limit: %ld", buf, 0x16u);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v27 = [v5 items];
  v28 = [v27 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v28)
  {
    v29 = v28;
    v39 = v23;
    v40 = v17;
    v41 = v6;
    v42 = v5;
    v30 = 0;
    v31 = *v44;
    do
    {
      for (i = 0; i != v29; i = i + 1)
      {
        if (*v44 != v31)
        {
          objc_enumerationMutation(v27);
        }

        v33 = [*(*(&v43 + 1) + 8 * i) types];
        v34 = [v33 allKeys];
        v35 = [v34 containsObject:@"public.file-url"];

        v30 |= v35;
      }

      v29 = [v27 countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v29);

    v6 = v41;
    v5 = v42;
    v23 = v39;
    v17 = v40;
    if (v30)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v36 = [(UASharedPasteboardInfoWrapper *)v17 pbinfo];
  v37 = [v36 dataSize];

  if (v37 >= v23)
  {
LABEL_22:
    v38 = 48;
    goto LABEL_23;
  }

  v38 = 40;
LABEL_23:
  (*(*(a1 + v38) + 16))();
}

void sub_10002FFB4(uint64_t a1)
{
  v2 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[PBOARD CONTROLLER] Telling client pboard will be fetched", buf, 2u);
  }

  v3 = [*(a1 + 32) clientNotificationConnection];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100030118;
  v7[3] = &unk_1000C5628;
  v8 = *(a1 + 40);
  v4 = [v3 remoteObjectProxyWithErrorHandler:v7];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100030234;
  v5[3] = &unk_1000C4E48;
  v6 = *(a1 + 40);
  [v4 pasteboardWillBeFetched:v5];
}

void sub_100030118(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[PBOARD CONTROLLER] Error getting client connection for write notification: %@", &v6, 0xCu);
  }

  v5 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LOWORD(v6) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[PBOARD CONTROLLER] Attempting to get local pasteboard data", &v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t sub_100030234(uint64_t a1)
{
  v2 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[PBOARD CONTROLLER] Getting pboard written to file", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_100030684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_sync_exit(v15);
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000306C4(uint64_t a1, void *a2, unint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = sub_100001A30(@"pasteboard-server");
  WeakRetained = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v40 = 138543362;
      v41 = v8;
      _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_ERROR, "[PBOARD CONTROLLER] Error sending types: %{public}@", &v40, 0xCu);
    }

    v11 = [(__CFString *)v8 code];
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v12 = [WeakRetained localInfo];
    [v12 setErrorCode:v11];
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v40 = 138412290;
    v41 = @"All";
    _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_INFO, "[PBOARD CONTROLLER] Finished sending types: %@", &v40, 0xCu);
  }

  v13 = objc_loadWeakRetained((a1 + 32));
  v14 = [v13 localInfo];
  [v14 setStreamDataSize:a3];

  v15 = mach_absolute_time();
  v16 = objc_loadWeakRetained((a1 + 32));
  v17 = +[UADiagnosticUtils absoluteToNSec:](UADiagnosticUtils, "absoluteToNSec:", v15 - [v16 streamXferStartTime]);

  v18 = objc_loadWeakRetained((a1 + 32));
  v19 = [v18 localInfo];
  [v19 setStreamDataXferTime:v17];

  v20 = mach_absolute_time();
  v21 = objc_loadWeakRetained((a1 + 32));
  v22 = +[UADiagnosticUtils absoluteToNSec:](UADiagnosticUtils, "absoluteToNSec:", v20 - [v21 localSendStartTime]);
  v23 = objc_loadWeakRetained((a1 + 32));
  v24 = [v23 localInfo];
  [v24 setTotalTime:v22];

  v25 = objc_loadWeakRetained((a1 + 32));
  v26 = [v25 localInfo];
  [v26 setStreamDataXferSpeed:(a3 * 8.0 / (v17 / 1000000000.0))];

  v27 = objc_loadWeakRetained((a1 + 32));
  v28 = [v27 coders];

  objc_sync_enter(v28);
  v29 = objc_loadWeakRetained((a1 + 32));
  v30 = [v29 coders];
  [v30 removeObject:v7];

  objc_sync_exit(v28);
  v31 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = objc_loadWeakRetained((a1 + 32));
    v33 = [v32 localInfo];
    v40 = 138477827;
    v41 = v33;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[PBOARD CONTROLLER] Local Pasteboard Sent Info: %{private}@", &v40, 0xCu);
  }

  v34 = +[UADiagnosticManager sharedManager];
  v35 = objc_loadWeakRetained((a1 + 32));
  v36 = [v35 localInfo];
  [v34 submitDidSendLocalPasteboard:v36];

  v37 = objc_loadWeakRetained((a1 + 32));
  [v37 setLocalInfo:0];

  v38 = objc_loadWeakRetained((a1 + 32));
  v39 = [v38 pasteAdvertiser];
  [v39 stop];
}

void sub_10003109C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_sync_exit(v17);
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v19 - 112));
  _Unwind_Resume(a1);
}

void sub_100031120(id a1)
{
  v1 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "[PBOARD CONTROLLER] Client interrupted", v2, 2u);
  }
}

void sub_100031190(uint64_t a1)
{
  v2 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[PBOARD CONTROLLER] Client invalidated", v9, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained fetchProgress];

  if (v4)
  {
    v5 = objc_loadWeakRetained((a1 + 40));
    v6 = [v5 fetchProgress];
    [v6 cancel];
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = objc_loadWeakRetained((a1 + 40));
    [v8 setClientConnection:v7];
  }
}

void sub_100031274(id a1)
{
  v1 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "[PBOARD CONTROLLER] AUX interrupted", v2, 2u);
  }
}

void sub_1000312E4(uint64_t a1)
{
  v2 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[PBOARD CONTROLLER] AUX invalidated", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setAuxConnection:0];
}

void sub_100031374(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained controlConnections];

  objc_sync_enter(v3);
  v4 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Controller Connection Invalidated", buf, 2u);
  }

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 controlConnections];
  v7 = objc_loadWeakRetained((a1 + 40));
  [v6 removeObject:v7];

  v8 = objc_loadWeakRetained((a1 + 32));
  v9 = [v8 controlConnections];
  v10 = [v9 count];

  if (!v10)
  {
    v11 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "No more active controllers, Re-enabling UC", v13, 2u);
    }

    v12 = objc_loadWeakRetained((a1 + 32));
    [v12 setScreenWatcherPresent:0];
  }

  objc_sync_exit(v3);
}

void sub_100031B90(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) notificationRef];
  v4 = *(a1 + 40);
  if (v3 == v4)
  {
    CFRetain(v4);
    v5 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[PBOARD CONTROLLER] Waiting for notification result", buf, 2u);
    }

    *buf = 0;
    CFUserNotificationReceiveResponse(*(a1 + 40), 0.0, buf);
    v6 = [*(a1 + 32) clientq];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100031CC4;
    block[3] = &unk_1000C5728;
    v8 = *(a1 + 32);
    v9 = *buf;
    dispatch_async(v6, block);

    v4 = *(a1 + 40);
  }

  CFRelease(v4);
  objc_autoreleasePoolPop(v2);
}

void sub_100031CC4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 256) == *(a1 + 40))
  {
    *(v2 + 256) = 0;
    v8 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 48);
      v13 = 134217984;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[PBOARD CONTROLLER] Response flags: %lu", &v13, 0xCu);
    }

    v10 = *(a1 + 48);
    v3 = sub_100001A30(@"pasteboard-server");
    v11 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    if (v10 == 3)
    {
      if (v11)
      {
        LOWORD(v13) = 0;
        v12 = "[PBOARD CONTROLLER] Paste was cancelled";
        goto LABEL_13;
      }
    }

    else
    {
      if (v10)
      {
        if (!v11)
        {
          goto LABEL_15;
        }

        LOWORD(v13) = 0;
        v5 = "[PBOARD CONTROLLER] Unexpected result from user notification";
        v6 = v3;
        v7 = 2;
        goto LABEL_4;
      }

      if (v11)
      {
        LOWORD(v13) = 0;
        v12 = "[PBOARD CONTROLLER] User cancelled the paste";
LABEL_13:
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v12, &v13, 2u);
      }
    }

    v3 = [*(a1 + 32) fetchProgress];
    [v3 cancel];
    goto LABEL_15;
  }

  v3 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 48);
    v13 = 134349056;
    v14 = v4;
    v5 = "[PBOARD-CONTROLLER] User notification was no longer current at the time it was cancelled or completed, so ignoring. %{public}lu";
    v6 = v3;
    v7 = 12;
LABEL_4:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v5, &v13, v7);
  }

LABEL_15:

  CFRelease(*(a1 + 40));
}

void sub_100032184(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  if ([*(a1 + 32) notificationRef])
  {
    v3 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[PBOARD CONTROLLER] Canceling the user notification", buf, 2u);
    }

    CFUserNotificationCancel([*(a1 + 32) notificationRef]);
    [*(a1 + 32) setNotificationRef:0];
  }

  else
  {
    v4 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[PBOARD CONTROLLER] No notification, must have already been canceled", v5, 2u);
    }
  }

  objc_sync_exit(v2);
}

void sub_100035010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10003502C()
{
  if (qword_1000E5C88 != -1)
  {
    sub_10007BD50();
  }

  v1 = qword_1000E5C80;

  return v1;
}

void sub_100035070(uint64_t a1)
{
  v4 = sub_1000350EC();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [*(a1 + 32) uuid];
  [v4 setObject:WeakRetained forKey:v3];
}

id sub_1000350EC()
{
  if (qword_1000E5C98 != -1)
  {
    sub_10007BD64();
  }

  v1 = qword_1000E5C90;

  return v1;
}

void sub_1000354A8(uint64_t a1)
{
  v3 = sub_1000350EC();
  v2 = [*(a1 + 32) uuid];
  [v3 removeObjectForKey:v2];
}

id sub_100035C58()
{
  if (qword_1000E5CA8 != -1)
  {
    sub_10007BD78();
  }

  v1 = qword_1000E5CA0;

  return v1;
}

void sub_100035C9C(uint64_t a1)
{
  obj = objc_loadWeakRetained((a1 + 32));
  objc_sync_enter(obj);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _releaseAssertion:1];

  objc_sync_exit(obj);
}

void sub_100035D1C(uint64_t a1)
{
  v1 = [*(a1 + 32) block];
  v1[2](v1, 1);
}

void sub_100035FC4(uint64_t a1)
{
  v2 = sub_100001A30(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = [*(a1 + 32) name];
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "ASSERTION: %{public}@ Calling block with YES because assertion timed out", &v5, 0xCu);
  }

  v4 = [*(a1 + 32) block];
  v4[2](v4, 1);
}

void sub_1000362E8(uint64_t a1)
{
  v2 = sub_1000350EC();
  if ([v2 count])
  {
    v19 = a1;
    v3 = [NSMutableString stringWithString:@"PowerAssertions:"];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v20 = v2;
    obj = [v2 objectEnumerator];
    v4 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v23;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v23 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v22 + 1) + 8 * i);
          v9 = [v8 timerExpiration];

          if (v9)
          {
            v10 = [v8 timerExpiration];
            v11 = +[NSDate date];
            [v10 timeIntervalSinceDate:v11];
            v13 = sub_100061D38(v12);
          }

          else
          {
            v13 = @"-";
          }

          if ([v8 assertion])
          {
            v14 = @"ACTIVE:";
          }

          else
          {
            v14 = &stru_1000C67D0;
          }

          v15 = [v8 name];
          [v3 appendFormat:@" %@{%@/%@}", v14, v15, v13];
        }

        v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v5);
    }

    v16 = [v3 copy];
    v17 = *(*(v19 + 32) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    v2 = v20;
  }
}

void sub_100036604(id a1)
{
  qword_1000E5C80 = dispatch_queue_create("UATimedPowerAssertionsMapTableQueue", 0);

  _objc_release_x1();
}

void sub_100036644(id a1)
{
  qword_1000E5C90 = +[NSMapTable strongToWeakObjectsMapTable];

  _objc_release_x1();
}

void sub_100036684(id a1)
{
  qword_1000E5CA0 = dispatch_queue_create("UATimedPowerAssertionsTimerQueue", 0);

  _objc_release_x1();
}

id sub_1000366C4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = [a1 readDataOfLength:a3];
  v8 = [v7 length];
  [v7 getBytes:a2 length:v8];

  objc_autoreleasePoolPop(v6);
  return v8;
}

uint64_t sub_100036738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    return 0;
  }

  v6 = a3;
  v7 = a3;
  do
  {
    if (*a5 == 2 && (*(a5 + 8) & 0x10) != 0)
    {
      v8 = sub_100001A30(@"pasteboard-server");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[UCExtractor] Found ACE Deny Delete, removing", v10, 2u);
      }

      *a5 = 0;
      --v7;
    }

    a5 += 288;
    --v6;
  }

  while (v6);
  return v7;
}

uint64_t sub_100036810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = getuid();
  result = getgid();
  *a3 |= 3u;
  *(a3 + 4) = v4;
  *(a3 + 8) = result;
  return result;
}

void sub_1000369EC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) destURL];
  v4 = [v3 path];
  v5 = [v4 cStringUsingEncoding:4];

  [*(a1 + 32) archiveReadHandle];
  v6 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) uuid];
    *buf = 138412546;
    v11 = v7;
    v12 = 2080;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[UCExtractor] Extracting archive %@ to url '%s'", buf, 0x16u);
  }

  v8 = ParallelArchiveExtract();
  v9 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v11) = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[UCExtractor] Extract status: %d", buf, 8u);
  }

  (*(*(a1 + 40) + 16))();
  objc_autoreleasePoolPop(v2);
}

void sub_100037958(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) nextPacketReady];
  v4 = dispatch_time(0, 2000000000);
  v5 = dispatch_semaphore_wait(v3, v4);

  v6 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v20[0]) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[Packager] Delivery signaled", v20, 2u);
  }

  v7 = *(a1 + 32);
  if (v5)
  {
    v8 = [v7 receiver];
    [v8 filePackagerError:0];
  }

  else
  {
    v9 = [v7 queuedPackets];
    objc_sync_enter(v9);
    v10 = [*(a1 + 32) queuedPackets];
    v8 = [v10 firstObject];

    if (v8)
    {
      v11 = [*(a1 + 32) queuedPackets];
      [v11 removeObjectAtIndex:0];
    }

    [*(a1 + 32) setNextPacketToDeliver:{objc_msgSend(*(a1 + 32), "nextPacketToDeliver") + 1}];
    objc_sync_exit(v9);

    if (sub_10003F738([v8 packetNumber], objc_msgSend(*(a1 + 32), "totalPacketCount")))
    {
      v12 = sub_100001A30(@"pasteboard-server");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = [v8 packetNumber];
        v14 = [*(a1 + 32) totalPacketCount];
        v20[0] = 67109376;
        v20[1] = v13;
        v21 = 1024;
        v22 = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "[Packager] Delivering packet %d/%d", v20, 0xEu);
      }
    }

    if (v8)
    {
      v16 = *(a1 + 32);
      v15 = (a1 + 32);
      v17 = [v16 receiver];
      v18 = *v15;
      v19 = [v8 packetData];
      [v17 packager:v18 gotData:v19 forPacket:{objc_msgSend(v8, "packetNumber")}];

      [*v15 checkShouldFetch];
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100037CF8(uint64_t a1)
{
  if (sub_10003F738(*(a1 + 40), [*(a1 + 32) totalPacketCount]))
  {
    v2 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      v4 = [*(a1 + 32) totalPacketCount];
      v11[0] = 67109376;
      v11[1] = v3;
      v12 = 1024;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[Packager] Reading packet data %d/%d", v11, 0xEu);
    }
  }

  v5 = objc_alloc_init(UCFilePackagerPacket);
  [(UCFilePackagerPacket *)v5 setPacketNumber:*(a1 + 40)];
  v6 = [*(a1 + 32) file];
  v7 = [v6 readDataOfLength:{objc_msgSend(*(a1 + 32), "packetSize")}];
  [(UCFilePackagerPacket *)v5 setPacketData:v7];

  v8 = [*(a1 + 32) queuedPackets];
  objc_sync_enter(v8);
  v9 = [*(a1 + 32) queuedPackets];
  [v9 addObject:v5];

  objc_sync_exit(v8);
  v10 = [*(a1 + 32) nextPacketReady];
  dispatch_semaphore_signal(v10);

  [*(a1 + 32) checkShouldFetch];
}

void sub_100038480(_Unwind_Exception *a1)
{
  v8 = v7;

  _Unwind_Resume(a1);
}

void sub_10003864C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = UAActivityReplay;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100038820(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1000389BC(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_100038AE8(void *a1)
{
  v2 = a1[4];
  if (v2 && [v2 count] && (+[NSJSONSerialization dataWithJSONObject:options:error:](NSJSONSerialization, "dataWithJSONObject:options:error:", a1[4], 0, 0), (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = [[NSString alloc] initWithData:v8 encoding:4];
  }

  else
  {
    v8 = 0;
    v3 = &stru_1000C67D0;
  }

  v5 = a1[5];
  v4 = a1[6];
  if (v4)
  {
    v6 = sub_100006EF4(v4);
  }

  else
  {
    v6 = @"-";
  }

  v7 = [NSString stringWithFormat:@"BROADCAST $%@ %@\n", v6, v3];
  [v5 sendResponse:v7];

  if (v4)
  {
  }
}

void *sub_1000391E8(void *a1, int a2)
{
  v3 = a1;
  v4 = [NSCharacterSet characterSetWithCharactersInString:@"0123456789abcdefABCDEF$"];
  if (a2 && ![v3 scanString:@"[" intoString:0])
  {
    v6 = 0;
LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  v10 = 0;
  v5 = [v3 scanCharactersFromSet:v4 intoString:&v10];
  v6 = v10;
  if (!v5 || a2 && ![v3 scanString:@"]" intoString:0])
  {
    goto LABEL_8;
  }

  v7 = sub_10000A30C(v6);
LABEL_9:
  v8 = v7;

  return v7;
}

void sub_10003A4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12)
{
  objc_sync_exit(v15);

  _Unwind_Resume(a1);
}

id sub_10003A940(void *a1)
{
  v1 = a1;
  v2 = [NSCharacterSet characterSetWithCharactersInString:@"0123456789abcdefABCDEF-"];
  v6 = 0;
  v3 = [v1 scanCharactersFromSet:v2 intoString:&v6];
  v4 = v6;

  if ((v3 & 1) == 0)
  {

    v4 = 0;
  }

  return v4;
}

id sub_10003A9F8(void *a1)
{
  v1 = a1;
  if ([v1 scanString:@"" intoString:0])
  {
    v11 = 0;
    v2 = [v1 scanUpToString:@"" intoString:&v11];
    v3 = v11;
    if (!v2 || ([v1 scanString:@"" intoString:0] & 1) == 0)
    {
      v4 = [v1 scanString:@"" intoString:0];
      goto LABEL_9;
    }
  }

  else if ([v1 scanString:@"'" intoString:0])
  {
    v10 = 0;
    v5 = [v1 scanUpToString:@"'" intoString:&v10];
    v3 = v10;
    if (!v5 || ([v1 scanString:@"'" intoString:0] & 1) == 0)
    {
      v4 = [v1 scanString:@"'" intoString:0];
LABEL_9:
      if (v4)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v7 = +[NSCharacterSet whitespaceCharacterSet];
    v9 = 0;
    v8 = [v1 scanUpToCharactersFromSet:v7 intoString:&v9];
    v3 = v9;

    if ((v8 & 1) == 0)
    {
LABEL_10:

      v3 = 0;
    }
  }

LABEL_11:

  return v3;
}

void sub_10003ABA8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [*(a1 + 32) queue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10003ACAC;
  v11[3] = &unk_1000C5850;
  v12 = v6;
  v13 = *(a1 + 40);
  v14 = v7;
  v15 = *(a1 + 32);
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);
}

void sub_10003ACAC(uint64_t a1)
{
  v2 = sub_100001A30(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = sub_1000021AC(*(a1 + 32), 0x20uLL);
    v4 = *(a1 + 40);
    *buf = 138478083;
    v12 = v3;
    v13 = 2113;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "REPLAY: PULLPAYLOAD request, got encodedData %{private}@ from creating application for advertisementPayload %{private}@, so returning that to paired client over the network.", buf, 0x16u);
  }

  v5 = *(a1 + 48) == 0;
  v6 = *(a1 + 56);
  v7 = [*(a1 + 40) advertisementPayload];
  sub_100006EF4(v7);
  if (v5)
    v8 = {;
    v9 = sub_100006EF4(*(a1 + 32));
    [NSString stringWithFormat:@"RETURNPAYLOAD $%@ [$%@]\n", v8, v9];
  }

  else
    v8 = {;
    v9 = +[NSNull null];
    [NSString stringWithFormat:@"RETURNPAYLOADERROR $%@ %@\n", v8, v9];
  }
  v10 = ;
  [v6 sendResponse:v10];
}

uint64_t sub_10003AFCC(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    v5 = 1;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v5 &= [*(a1 + 40) processCommand:{*(*(&v8 + 1) + 8 * i), v8}];
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }

  return (*(*(a1 + 48) + 16))();
}

void sub_10003B1FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v11);

  _Unwind_Resume(a1);
}

void sub_10003BB7C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) pairedScanner];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = [*(a1 + 32) peer];
  [v3 receiveAdvertisement:v5 options:v4 fromPeer:v6];

  objc_autoreleasePoolPop(v2);
}

void sub_10003BCC0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) pairedScanner];

  if (v3)
  {
    v4 = [*(a1 + 32) pairedScanner];
    v5 = [v4 peer];
    v6 = [NSSet setWithObject:v5];

    v7 = *(*(a1 + 40) + 16);
  }

  else
  {
    v8 = *(a1 + 40);
    v6 = [NSError errorWithDomain:NSCocoaErrorDomain code:-50 userInfo:0];
    v7 = *(v8 + 16);
  }

  v7();

  objc_autoreleasePoolPop(v2);
}

void sub_10003BEA0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) pairedScanner];
  v5 = [v4 peer];
  v6 = [v3 isEqual:v5];

  v7 = *(a1 + 48);
  if (v6)
  {
    v8 = [*(a1 + 40) pairedScanner];
    v9 = [v8 peer];
    (*(v7 + 16))(v7, v9, 0);
  }

  else
  {
    v8 = [NSError errorWithDomain:NSCocoaErrorDomain code:-50 userInfo:0];
    (*(v7 + 16))(v7, 0, v8);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10003C050(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_10003C1D0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) delegate];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003C2B0;
  v8[3] = &unk_1000C58F0;
  v9 = *(a1 + 64);
  [v3 activityAdvertiser:v4 activityPayloadForAdvertisementPayload:v5 command:v6 requestedByDevice:v7 withCompletionHandler:v8];

  objc_autoreleasePoolPop(v2);
}

void sub_10003C4F0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [[SFActivityAdvertisement alloc] initWithAdvertisementVersion:1 advertisementPayload:*(a1 + 32) options:*(a1 + 40) device:*(a1 + 48)];
  if ([*(a1 + 56) sendFoundDevice])
  {
    [*(a1 + 56) setSendFoundDevice:0];
    v4 = [*(a1 + 56) delegate];
    v5 = *(a1 + 56);
    v6 = [v5 peer];
    [v4 activityScanner:v5 foundDeviceWithDevice:v6];
  }

  v7 = [*(a1 + 56) delegate];
  [v7 activityScanner:*(a1 + 56) receivedAdvertisement:v3];

  objc_autoreleasePoolPop(v2);
}

void sub_10003C6D8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) pairedAdvertiser];
  v4 = [*(a1 + 32) peer];
  [v3 payloadRequestFromPeer:v4 advertisementPayload:*(a1 + 40) command:*(a1 + 48) completionHandler:*(a1 + 56)];

  objc_autoreleasePoolPop(v2);
}

void sub_10003CA8C(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_10003CB1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_10003CBB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_10003D170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  sub_10003D91C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10003D2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, _OWORD *a7, mach_port_name_t *a8, vm_address_t *a9, _DWORD *a10, void *a11)
{
  v17 = a1;
  v45 = a2;
  v18 = [UASimulatorController simulatorControllerForCommandPort:a1];
  pidp = 0;
  v19 = a7[1];
  *atoken.val = *a7;
  *&atoken.val[4] = v19;
  audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, &pidp, 0, 0);
  v20 = pidp;
  v21 = sub_100001A30(0);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    atoken.val[0] = 134218496;
    *&atoken.val[1] = a6;
    LOWORD(atoken.val[3]) = 1024;
    *(&atoken.val[3] + 2) = v17;
    HIWORD(atoken.val[4]) = 1024;
    atoken.val[5] = v20;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "SIMULATOR: RegisterWithParentWithVersion simulatorVersion=%llu, serverPort=%x pid=%d", &atoken, 0x18u);
  }

  if (!v18)
  {
    v24 = 5;
    goto LABEL_24;
  }

  v22 = sub_100001A30(0);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    atoken.val[0] = 68289282;
    atoken.val[1] = 16;
    LOWORD(atoken.val[2]) = 2098;
    *(&atoken.val[2] + 2) = &v45;
    HIWORD(atoken.val[4]) = 1024;
    atoken.val[5] = a3;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "SIMULATOR: Creating UASimulator to be parent simulator in OSX, uuid=%{public,posix:uuid}.16P port=%x", &atoken, 0x18u);
  }

  v23 = [UASimulator simulatorWithController:v18 pairedPort:a3 childSimPid:v20 childVersion:a6];
  if (a6 != 1 && a6 != 2)
  {
    v30 = sub_100001A30(0);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      atoken.val[0] = 134217984;
      *&atoken.val[1] = a6;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "SIMULATOR: Failed to create simulator; simulated useractivityd client version %ld is unknown.", &atoken, 0xCu);
    }

    v24 = 5;
    goto LABEL_20;
  }

  v25 = objc_opt_class();
  v26 = sub_10000DA04(v25, a4, a5, 0);
  [v23 setPeeredDevice:v26];

  if (v23)
  {
    [v18 addSimulator:v23];
    v27 = [v18 dispatchQ];
    v28 = dispatch_source_create(&_dispatch_source_type_proc, v20, 0x80000000uLL, v27);

    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10003D810;
    handler[3] = &unk_1000C5990;
    v44 = v20;
    v29 = v23;
    v41 = v29;
    v42 = v18;
    v30 = v28;
    v43 = v30;
    dispatch_source_set_event_handler(v30, handler);
    dispatch_resume(v30);
    v31 = [v29 commandPort];
    *a8 = v31;
    mach_port_insert_right(mach_task_self_, v31, v31, 0x14u);
    v32 = +[SFPeerDevice peerForSelf];
    if (v32 && (v33 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1], objc_msgSend(v33, "encodeObject:forKey:", v32, NSKeyedArchiveRootObjectKey), objc_msgSend(v33, "encodedData"), v34 = objc_claimAutoreleasedReturnValue(), v33, (v35 = v34) != 0))
    {
      v36 = v35;
      if (!vm_allocate(mach_task_self_, a9, [v35 length], 1))
      {
        *a10 = [v36 length];
        v37 = *a9;
        v38 = v36;
        memcpy(v37, [v36 bytes], objc_msgSend(v36, "length"));
      }
    }

    else
    {
      v36 = 0;
      *a9 = 0;
      *a10 = 0;
    }

    [v29 resume];
    v24 = 0;
LABEL_20:

    goto LABEL_22;
  }

  v24 = 5;
LABEL_22:
  if (a11)
  {
    *a11 = 2;
  }

LABEL_24:

  return v24;
}

void sub_10003D810(uint64_t a1)
{
  v2 = sub_100001A30(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 56);
    v4[0] = 67109120;
    v4[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SIMULATOR: Detected death of child simulator, pid=%d, so terminating the UASimulator and removing it.", v4, 8u);
  }

  [*(a1 + 32) terminate];
  [*(a1 + 40) removeSimulator:*(a1 + 32)];
  dispatch_source_cancel(*(a1 + 48));
}

uint64_t sub_10003D8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, _OWORD *a6, mach_port_name_t *a7, vm_address_t *a8, _DWORD *a9)
{
  v9 = a6[1];
  v11[0] = *a6;
  v11[1] = v9;
  return sub_10003D2A0(a1, a2, a3, a4, a5, 1, v11, a7, a8, a9, &v12);
}

uint64_t sub_10003D91C(uint64_t a1)
{
  if (*(a1 + 12) == 1)
  {
    if (*a1)
    {
      v2 = *(a1 + 8);
      if (v2)
      {
        vm_deallocate(mach_task_self_, *a1, v2);
      }
    }
  }

  return a1;
}

void sub_10003DB08(id a1)
{
  qword_1000E5CC0 = objc_alloc_init(UAUserActivityDefaults);

  _objc_release_x1();
}

void sub_10003F424(id a1)
{
  out_token = 0;
  if (!notify_register_check("com.apple.system.lowpowermode", &out_token))
  {
    dword_1000E5CD8 = out_token;
  }
}

char *sub_10003F60C(void *a1)
{
  v1 = a1;
  if (v1)
  {
    Data = CFPropertyListCreateData(kCFAllocatorDefault, v1, kCFPropertyListBinaryFormat_v1_0, 0, 0);
    if ([(__CFData *)Data length]> 0xFFFFFFFE)
    {
      v3 = 0;
    }

    else
    {
      v3 = malloc_type_malloc([(__CFData *)Data length]+ 200, 0x1000040BEF03554uLL);
      *v3 = 1;
      v4 = [(__CFData *)Data length];
      *(v3 + 136) = 0u;
      *(v3 + 1) = v4;
      *(v3 + 8) = 0u;
      *(v3 + 24) = 0u;
      *(v3 + 40) = 0u;
      *(v3 + 56) = 0u;
      *(v3 + 72) = 0u;
      *(v3 + 88) = 0u;
      *(v3 + 104) = 0u;
      *(v3 + 120) = 0u;
      *(v3 + 152) = 0u;
      *(v3 + 168) = 0u;
      *(v3 + 184) = 0u;
      strlcpy(v3 + 136, "UAUserActivity", 0x40uLL);
      memcpy(v3 + 200, [(__CFData *)Data bytes], *(v3 + 1));
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_10003F7AC()
{
  if (qword_1000E5CF0 != -1)
  {
    sub_10007BDB4();
  }

  v1 = qword_1000E5CE8;

  return v1;
}

void sub_10003F7F0(id a1)
{
  v1 = os_log_create("com.apple.useractivity", "biome-69594900");
  v2 = qword_1000E5CE8;
  qword_1000E5CE8 = v1;

  v3 = qword_1000E5CE8;
  if (os_log_type_enabled(qword_1000E5CE8, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "- UAUserActivity\tv1.0", v4, 2u);
  }
}

void sub_10003F874(id a1)
{
  qword_1000E5CF8 = objc_alloc_init(UADiagnosticManager);

  _objc_release_x1();
}

id sub_100040328(const char *a1, void *a2)
{
  v3 = a2;
  v4 = getenv(a1);
  if (v4)
  {
    v5 = [NSString stringWithCString:v4 encoding:4];
    v6 = sub_100001A30(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = 138543618;
      v9 = v5;
      v10 = 2114;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Using service name %{public}@ for %{public}@", &v8, 0x16u);
    }
  }

  else
  {
    v5 = v3;
  }

  return v5;
}

void sub_100040488(id a1)
{
  v1 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___UAUserActivityClientProtocol];
  v2 = qword_1000E5D08;
  qword_1000E5D08 = v1;

  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v13 = [NSSet setWithObjects:v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0];
  [qword_1000E5D08 setClasses:v13 forSelector:"doUpdateUserActivityInfo:makeCurrent:completionHandler:" argumentIndex:0 ofReply:0];
  [qword_1000E5D08 setClasses:v13 forSelector:"doFetchUserActivityInfoWithUUID:completionHandler:" argumentIndex:0 ofReply:1];
  [qword_1000E5D08 setClasses:v13 forSelector:"doPinUserActivityInfo:completionHandler:" argumentIndex:0 ofReply:0];
  v10 = qword_1000E5D08;
  v11 = objc_opt_class();
  v12 = [NSSet setWithObjects:v11, objc_opt_class(), 0];
  [v10 setClasses:v12 forSelector:"doGetUserActivityProxiesWithOptions:completionHandler:" argumentIndex:0 ofReply:1];
}

void sub_100040660(id a1)
{
  qword_1000E5D18 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___UAUserActivityClientResponseProtocol];

  _objc_release_x1();
}

void sub_1000406A8(id a1)
{
  v1 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___UABestAppSuggestionManagerProtocol];
  v2 = qword_1000E5D28;
  qword_1000E5D28 = v1;

  v3 = objc_opt_class();
  v4 = [NSSet setWithObjects:v3, objc_opt_class(), 0];
  [qword_1000E5D28 setClasses:v4 forSelector:"doDetermineBestAppSuggestionWithCompletionHandler:" argumentIndex:0 ofReply:1];
}

void sub_100040768(id a1)
{
  v1 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___UABestAppSuggestionManagerResponseProtocol];
  v2 = qword_1000E5D38;
  qword_1000E5D38 = v1;

  v3 = objc_opt_class();
  v4 = [NSSet setWithObjects:v3, objc_opt_class(), 0];
  [qword_1000E5D38 setClasses:v4 forSelector:"notifyBestAppsChanged:when:confidence:" argumentIndex:0 ofReply:0];
}

id sub_100040828()
{
  if (qword_1000E5D50 != -1)
  {
    sub_10007BE18();
  }

  v1 = qword_1000E5D48;

  return v1;
}

void sub_10004086C(id a1)
{
  v1 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___UASharedPasteboardManagerProtocol];
  v2 = qword_1000E5D48;
  qword_1000E5D48 = v1;

  v13 = objc_opt_class();
  v12 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v14 = [NSSet setWithObjects:v13, v12, v3, v4, v5, v6, v7, v8, v9, v10, v11, objc_opt_class(), 0];
  [qword_1000E5D48 setClasses:v14 forSelector:"localPasteboardTypesDidChange:forGeneration:" argumentIndex:0 ofReply:0];
  [qword_1000E5D48 setClasses:v14 forSelector:"fetchRemotePasteboardTypesForProcess:withCompletion:" argumentIndex:0 ofReply:1];
  [qword_1000E5D48 setClasses:v14 forSelector:"fetchRemotePasteboardForProcess:withCompletion:" argumentIndex:0 ofReply:1];
}

id sub_100040A30()
{
  if (qword_1000E5D60 != -1)
  {
    sub_10007BE2C();
  }

  v1 = qword_1000E5D58;

  return v1;
}

void sub_100040A74(id a1)
{
  v1 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___UASharedPasteboardManagerResponseProtocol];
  v2 = qword_1000E5D58;
  qword_1000E5D58 = v1;

  v13 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v14 = [NSSet setWithObjects:v13, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, objc_opt_class(), 0];
  [qword_1000E5D58 setClasses:v14 forSelector:"writeLocalPasteboardToFile:itemDir:withCompletion:" argumentIndex:0 ofReply:1];
  [qword_1000E5D58 setClasses:v14 forSelector:"writeLocalPasteboardToFile:itemDir:extension:withCompletion:" argumentIndex:0 ofReply:1];
}

id sub_100040C20()
{
  if (qword_1000E5D70 != -1)
  {
    sub_10007BE40();
  }

  v1 = qword_1000E5D68;

  return v1;
}

void sub_100040C64(id a1)
{
  qword_1000E5D68 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___UASharedPasteboardAUXProtocol];

  _objc_release_x1();
}

id sub_100040CAC()
{
  if (qword_1000E5D80 != -1)
  {
    sub_10007BE54();
  }

  v1 = qword_1000E5D78;

  return v1;
}

void sub_100040CF0(id a1)
{
  qword_1000E5D78 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___UASharedPasteboardControllProtocol];

  _objc_release_x1();
}

void sub_1000411CC(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v8 = [NSKeyedArchiver archivedDataWithRootObject:*(a1 + 32) requiringSecureCoding:1 error:0];
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) uuid];
    v6 = [v5 UUIDString];
    v7 = [*(a1 + 32) activityType];
    [v4 log:5 format:{@"ITEM:%@ %@ [0x%@]\n", v6, v7, v8}];
  }
}

int64_t sub_100041B78(id a1, UAUserActivityInfo *a2, UAUserActivityInfo *a3)
{
  v4 = a2;
  v5 = a3;
  if (!sub_1000023A0([(UAUserActivityInfo *)v4 type]) && sub_1000023A0([(UAUserActivityInfo *)v5 type]) || ([(UAUserActivityInfo *)v5 dynamicActivityType], (v6 = objc_claimAutoreleasedReturnValue()) != 0) && (v7 = v6, [(UAUserActivityInfo *)v4 dynamicActivityType], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, !v8))
  {
    v12 = 1;
  }

  else
  {
    v9 = [(UAUserActivityInfo *)v5 when];
    v10 = [(UAUserActivityInfo *)v4 when];
    v11 = sub_10000A010(v9, v10);

    if (v11)
    {
      v12 = 1;
    }

    else
    {
      v12 = -1;
    }
  }

  return v12;
}

void sub_100042040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004205C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 mainDisplayLayoutMonitor];
  v4 = [v3 currentLayout];
  [v2 updateMainScreenLayout:v4];

  v5 = *(a1 + 32);
  v7 = [v5 carPlayDisplayLayoutMonitor];
  v6 = [v7 currentLayout];
  [v5 updateCarPlayScreenLayout:v6];
}

void sub_100042104(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained manager];
  v6 = [v5 mainDispatchQ];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000421F0;
  v8[3] = &unk_1000C5698;
  objc_copyWeak(&v10, (a1 + 32));
  v9 = v3;
  v7 = v3;
  dispatch_async(v6, v8);

  objc_destroyWeak(&v10);
}

void sub_1000421F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleAppStateMonitorUpdate:*(a1 + 32)];
}

void sub_1000426A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [v1 mainDisplayLayoutMonitor];
  v2 = [v3 currentLayout];
  [v1 updateMainScreenLayout:v2];
}

void sub_100042710(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [v1 carPlayDisplayLayoutMonitor];
  v2 = [v3 currentLayout];
  [v1 updateCarPlayScreenLayout:v2];
}

int64_t sub_100045448(id a1, id a2, id a3)
{
  v4 = a3;
  v5 = [a2 lastFrontTime];
  v6 = [v4 lastFrontTime];

  v7 = [v5 compare:v6];
  return v7;
}

int64_t sub_100045CD4(id a1, UAUserActivityClientProcess *a2, UAUserActivityClientProcess *a3)
{
  v4 = a3;
  v5 = [(UAUserActivityClientProcess *)a2 auditToken];
  v6 = [v5 pid];
  v7 = [(UAUserActivityClientProcess *)v4 auditToken];

  v8 = (v6 - [v7 pid]);
  return v8;
}

void sub_1000461A4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218242;
    v12 = [v5 length];
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[DATA REQUESTER] Requesting complete: %lu bytes, error: %@", &v11, 0x16u);
  }

  [*(a1 + 32) timeIntervalSinceNow];
  if (v8 > 0.0)
  {
    v9 = vcvtpd_s64_f64(v8);
    v10 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 67109120;
      LODWORD(v12) = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[DATA REQUESTER] Adding %d delay for testing", &v11, 8u);
    }

    sleep(v9);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100046570(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218242;
    v12 = [v5 length];
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[DATA REQUESTER] Requesting complete: %lu bytes, error: %@", &v11, 0x16u);
  }

  [*(a1 + 32) timeIntervalSinceNow];
  if (v8 > 0.0)
  {
    v9 = vcvtpd_s64_f64(v8);
    v10 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 67109120;
      LODWORD(v12) = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[DATA REQUESTER] Adding %d delay for testing", &v11, 8u);
    }

    sleep(v9);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10004693C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218242;
    v12 = [v5 length];
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[DATA REQUESTER] Requesting complete: %lu bytes, error: %@", &v11, 0x16u);
  }

  [*(a1 + 32) timeIntervalSinceNow];
  if (v8 > 0.0)
  {
    v9 = vcvtpd_s64_f64(v8);
    v10 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 67109120;
      LODWORD(v12) = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[DATA REQUESTER] Adding %d delay for testing", &v11, 8u);
    }

    sleep(v9);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100046C08(id a1)
{
  qword_1000E5D88 = objc_alloc_init(UABluetoothStatus);

  _objc_release_x1();
}

id sub_100046FB4()
{
  if (qword_1000E5DA0 != -1)
  {
    sub_10007BE7C();
  }

  v1 = qword_1000E5D98;

  return v1;
}

void sub_100046FF8(uint64_t a1)
{
  v2 = [CBCentralManager alloc];
  v3 = *(a1 + 32);
  v4 = sub_100046FB4();
  v5 = [v2 initWithDelegate:v3 queue:v4 options:0];
  v6 = *(a1 + 32);
  v7 = *(v6 + 8);
  *(v6 + 8) = v5;

  v8 = *(a1 + 32);
  if (*(v8 + 8))
  {
    *(v8 + 16) = 1;
    v8 = *(a1 + 32);
  }

  *(v8 + 19) = 0;
  v9 = sub_100001A30(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(*(a1 + 32) + 16);
    v11[0] = 67109120;
    v11[1] = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "BLUETOOTH: Attached to BTSession, setting attached to %{BOOL}d.", v11, 8u);
  }

  *(*(a1 + 32) + 17) = 0;
}

void sub_10004727C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  objc_sync_exit(v7);
  _Unwind_Resume(a1);
}

void sub_1000472A4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_10004773C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100001A30(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = objc_retainBlock(v6);
    v9 = *(a1 + 32);
    v10 = 138543874;
    v11 = v5;
    v12 = 2050;
    v13 = v8;
    v14 = 1024;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "BLUETOOTH: Letting callback %{public}@/%{public}p know that the power status is now %{BOOL}d", &v10, 0x1Cu);
  }

  (*(v6 + 2))(v6, v5, *(a1 + 32));
}

void sub_100047898(id a1)
{
  qword_1000E5D98 = dispatch_queue_create("bluetoothStatusQ", 0);

  _objc_release_x1();
}

id sub_100048254(void *a1)
{
  v1 = a1;
  v13 = 0;
  if ([v1 length] < 4 || objc_msgSend(v1, "length") > 0x7FFFFFFE)
  {
    v6 = 0;
  }

  else
  {
    v13 = *[v1 bytes];
    v2 = [v1 length];
    strm.avail_in = v2 - 4;
    __chkstk_darwin(v2, v3, v4, v5);
    strm.next_out = v11;
    strm.avail_out = 2048;
    v6 = 0;
    if (!BZ2_bzDecompressInit(&strm, 0, 0))
    {
      v6 = +[NSMutableData data];
      [v6 appendBytes:&v13 length:4];
      while (1)
      {
        v7 = BZ2_bzDecompress(&strm);
        if (v7 < 0)
        {
          break;
        }

        v8 = v7;
        [v6 appendBytes:v11 length:2048 - strm.avail_out];
        strm.next_out = v11;
        strm.avail_out = 2048;
        if (v8 == 4)
        {
          goto LABEL_10;
        }
      }

      v6 = 0;
LABEL_10:
      if (BZ2_bzDecompressEnd(&strm))
      {

        v6 = 0;
      }
    }
  }

  v9 = [v6 copy];

  return v9;
}

id sub_10004841C(void *a1, _DWORD *a2)
{
  v3 = a1;
  v4 = [v3 bytes];
  v5 = *a2;
  v6 = v5 + 4;
  if (v5 + 4 <= [v3 length])
  {
    v8 = *&v4[v5];
    v9 = *&v8 & 0xFFFFFFLL;
    if ((v8 & 0xFFFFFF) != 0 && [v3 length] >= (v9 + v6))
    {
      v7 = [NSData dataWithBytes:&v4[v6] length:v9];
      v6 += v9;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    v6 = v5;
  }

  *a2 = v6;

  return v7;
}

void sub_1000487E0(void *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = a1;
    v5 = [v3 length] & 0xFFFFFF | 0x1000000;
    [v4 appendBytes:&v5 length:4];
    [v4 appendData:v3];
  }

  else
  {
    v6 = 0;
    v4 = a1;
    [v4 appendBytes:&v6 length:4];
  }
}

id sub_100048870(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 length] >= 5)
  {
    v3 = *[v2 bytes];
    v4 = +[NSMutableData data];
    LODWORD(strm.next_in) = v3 | 0x100;
    [v4 appendBytes:&strm length:4];
    memset(&strm.avail_in, 0, 72);
    v5 = [v2 length];
    strm.avail_in = v5 - 4;
    __chkstk_darwin(v5, v6, v7, v8);
    strm.next_out = v23;
    strm.avail_out = 2048;
    if (BZ2_bzCompressInit(&strm, 1, 0, 200))
    {
      goto LABEL_11;
    }

    while (1)
    {
      strm.next_out = v23;
      strm.avail_out = 2048;
      v10 = BZ2_bzCompress(&strm, 2 * (strm.avail_in == 0));
      if (v10 < 0)
      {
        break;
      }

      v9 = v10;
      [v4 appendBytes:v23 length:2048 - strm.avail_out];
      if (v9 == 4)
      {
        goto LABEL_8;
      }
    }

    v4 = 0;
LABEL_8:
    v11 = BZ2_bzCompressEnd(&strm);
    v12 = sub_100001A30(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = [v4 length];
      v14 = [v2 length];
      v15 = 100 * [v4 length];
      v16 = [v2 length];
      *buf = 134218496;
      v26 = v13;
      v27 = 2048;
      v28 = v14;
      v29 = 2048;
      v30 = v15 / v16;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "-- Compressed data to %ld bytes (from %ld bytes) in data,(%ld%%)", buf, 0x20u);
    }

    if (v11)
    {
LABEL_11:

      v4 = 0;
    }

    else if (v4)
    {
      v19 = [v4 length];
      if (v19 < [v2 length])
      {
        v20 = sub_100001A30(0);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v21 = [v2 length];
          v22 = [v4 length];
          *buf = 134217984;
          v26 = (v21 - v22);
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Using compressed data, because it is %ld bytes smaller than the uncompressed data.", buf, 0xCu);
        }

        v4 = v4;
        v17 = v4;
        goto LABEL_13;
      }
    }

    v17 = 0;
LABEL_13:

    goto LABEL_15;
  }

  v17 = 0;
LABEL_15:

  return v17;
}

void sub_10004A1D0(uint64_t a1)
{
  v2 = sub_100001A30(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) uniqueID];
    v4 = *(*(a1 + 40) + 88);
    v5 = [*(a1 + 32) uniqueID];
    *buf = 138412802;
    v17 = v3;
    v18 = 2112;
    v19 = v4;
    v20 = 1024;
    v21 = [v4 containsObject:v5];
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "lostDevice timer firing deviceIdentifier=%@; _recentlyLostDeviceIDs is %@, will remove is %d", buf, 0x1Cu);
  }

  v6 = *(*(a1 + 40) + 88);
  v7 = [*(a1 + 32) uniqueID];
  LODWORD(v6) = [v6 containsObject:v7];

  if (v6)
  {
    v8 = *(*(a1 + 40) + 88);
    v9 = [*(a1 + 32) uniqueID];
    [v8 removeObject:v9];

    v10 = [*(a1 + 40) manager];
    v11 = [v10 mainDispatchQ];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004A3CC;
    block[3] = &unk_1000C5B80;
    v13 = *(a1 + 32);
    v12 = v13.i64[0];
    v15 = vextq_s8(v13, v13, 8uLL);
    dispatch_async(v11, block);
  }
}

void sub_10004AD9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = dispatch_get_global_queue(0, 0);
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    MRMediaRemoteGetNowPlayingClientForOrigin();
  }
}

void sub_10004AE64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = sub_100001A30(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v11 = 138543618;
      v12 = a3;
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Unable to determine nowPlaying client, error=%{public}@ for item %{public}@", &v11, 0x16u);
    }

LABEL_9:

    return;
  }

  if (a2)
  {
    BundleIdentifier = MRNowPlayingClientGetBundleIdentifier();
    if (BundleIdentifier)
    {
      v8 = BundleIdentifier;
      v5 = *(a1 + 40);
      objc_sync_enter(v5);
      v9 = sub_100001A30(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = *(a1 + 32);
        v11 = 138543618;
        v12 = v8;
        v13 = 2114;
        v14 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "NowPlaying item is %{public}@ for item %{public}@", &v11, 0x16u);
      }

      [*(a1 + 32) setBundleIdentifier:v8];
      [*(a1 + 40) _addItem:*(a1 + 32) scheduleUpdates:*(a1 + 48)];
      objc_sync_exit(v5);
      goto LABEL_9;
    }
  }
}

void sub_10004DCE8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v4 = [[UAPingUserActivityInfo alloc] initFromPing:*(a1 + 32)];
    objc_initWeak(&location, v4);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10004DE28;
    v8[3] = &unk_1000C5D98;
    v8[4] = *(a1 + 40);
    objc_copyWeak(&v9, &location);
    [v4 setWasContinuedBlock:v8];
    v5 = [*(a1 + 40) manager];
    v6 = [v5 pingController];
    v7 = [v6 client];
    [v7 pushItem:v4];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void sub_10004DE08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004DE28(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100001A30(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v9 = 138543362;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "PING: Pong was sent, error=%{public}@", &v9, 0xCu);
  }

  v5 = [*(a1 + 32) manager];
  v6 = [v5 pingController];
  v7 = [v6 client];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v7 removeItem:WeakRetained];
}

void sub_10004DF3C(uint64_t a1)
{
  v2 = sub_100001A30(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) uuid];
    v4 = [v3 UUIDString];
    v5 = [*(a1 + 32) statusString];
    v6 = 138543619;
    v7 = v4;
    v8 = 2113;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "*** Completed a pre-emptive fetch of the payload for item %{public}@/%{private}@", &v6, 0x16u);
  }
}

void sub_10004E36C(uint64_t a1, void *a2)
{
  --*(*(*(a1 + 48) + 8) + 24);
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained addNewItemsFromPayloads:v3 device:*(a1 + 32) scanner:*(a1 + 40) force:*(*(*(a1 + 48) + 8) + 24) == 0];
}

void sub_10004E5D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004E5FC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained addNewItemsFromPayloads:v3 device:*(a1 + 32) scanner:*(a1 + 40) force:1];
}

uint64_t sub_100050860(__SecTask *a1, const __CFString *a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = SecTaskCopyValueForEntitlement(a1, a2, 0);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFGetTypeID(v2);
  if (v4 == CFBooleanGetTypeID())
  {
    Value = CFBooleanGetValue(v3);
  }

  else if (v4 == CFNumberGetTypeID())
  {
    valuePtr = 0;
    CFNumberGetValue(v4, kCFNumberLongLongType, &valuePtr);
    Value = valuePtr != 0;
  }

  else
  {
    Value = 0;
  }

  CFRelease(v3);
  return Value;
}

uint64_t sub_100050904()
{
  if (qword_1000E5DC0 != -1)
  {
    sub_10007BEE8();
  }

  return qword_1000E5DB8;
}

void sub_10005093C(id a1)
{
  task_info_outCnt = 8;
  v1 = task_info(mach_task_self_, 0xFu, task_info_out, &task_info_outCnt);
  if (!v1)
  {
    operator new();
  }

  syslog(3, "failed to get audit token for current process: %llx", v1);
}

void sub_100051988(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    v6 = [v3 teamID];
    if (v6)
    {
      [v5 addObject:v6];
    }

    v7 = [v3 entitlementValueForKey:@"useractivity-team-identifier" ofClass:objc_opt_class()];
    if (v7)
    {
      v8 = sub_100001A30(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [v3 bundleIdentifier];
        v20 = 138543618;
        v21 = v7;
        v22 = 2114;
        v23 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, " including entitledTeam: %{public}@ for bundle %{public}@", &v20, 0x16u);
      }

      [v5 addObject:v7];
    }

    v10 = [v3 entitlementValueForKey:@"com.apple.developer.team-identifier" ofClass:objc_opt_class()];
    if (v10)
    {
      v11 = sub_100001A30(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [v3 bundleIdentifier];
        v20 = 138543618;
        v21 = v10;
        v22 = 2114;
        v23 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, " including developerTeamID: %{public}@ for bundle %{public}@", &v20, 0x16u);
      }

      [v5 addObject:v10];
    }

    v13 = [v3 entitlementValueForKey:@"application-identifier" ofClass:objc_opt_class()];
    v14 = v13;
    if (v13)
    {
      if ([v13 length] >= 0xB)
      {
        v15 = [v14 rangeOfString:@"."];
        if (v16 == 1 && v15 == 10)
        {
          v17 = sub_100001A30(0);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = [v14 substringToIndex:10];
            v20 = 138543618;
            v21 = v18;
            v22 = 2114;
            v23 = v14;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, " including teamID: %{public}@ from applicationIdentifier %{public}@", &v20, 0x16u);
          }

          v19 = [v14 substringToIndex:10];
          [v5 addObject:v19];
        }
      }
    }

    if ([v5 containsObject:@"0000000000"])
    {
      [v5 removeObject:@"0000000000"];
      [v5 addObject:&stru_1000C67D0];
    }
  }
}

void sub_100053064(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100001A30(@"signposts");
  v8 = v7;
  v9 = *(a1 + 32);
  if (v9 + 1 >= 2 && os_signpost_enabled(v7))
  {
    if (v5)
    {
      v43 = v6 == 0;
    }

    else
    {
      v43 = 0;
    }

    v44 = v43;
    *buf = 67240192;
    LODWORD(v119) = v44;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, v9, "sharingFetch", "success=%{public}d enableTelemetry=YES ", buf, 8u);
  }

  v10 = +[UAUserActivityDefaults sharedDefaults];
  [v10 debugAdditionalPayloadReceiveTimeInterval];
  v12 = v11;

  if (v12 > 0.0)
  {
    v13 = sub_100001A30(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v119 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "*** DELAYING payload receive by an additional %f seconds for DEBUGAdditionalPayloadReceiveTimeInterval", buf, 0xCu);
    }

    usleep((v12 * 1000000.0));
    v14 = sub_100001A30(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v119 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "*** FINISHED DELAYING payload receive by an additional %f seconds for DEBUGAdditionalPayloadReceiveTimeInterval", buf, 0xCu);
    }
  }

  kdebug_trace();
  v15 = sub_1000620EC() - *(a1 + 40);
  v16 = 0.0;
  if (v15 > 0.0)
  {
    v16 = [v5 length] / v15;
  }

  v17 = sub_100001A30(0);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [*(a1 + 32) uuid];
    v19 = [v18 UUIDString];
    v20 = [*(a1 + 32) advertisementPayload];
    v21 = [v5 length];
    v22 = sub_1000021AC(v5, 0x28uLL);
    *buf = 138544899;
    v119 = *&v19;
    v120 = 2114;
    v121 = v20;
    v122 = 2048;
    v123 = v21;
    v124 = 2113;
    v125 = v22;
    v126 = 2048;
    v127 = v15;
    v128 = 2048;
    v129 = v16;
    v130 = 2114;
    v131 = v6;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "PAYLOAD:GOT payload for item %{public}@/%{public}@, dataSize=%ld/%{private}@ speed=%g/%{bitrate}ld error=%{public}@", buf, 0x48u);
  }

  if (v5)
  {
    v23 = [v5 length];
    v24 = [*(a1 + 32) wasContinuedInfo];
    [v24 setPayloadSize:v23];

    v25 = [*(a1 + 32) wasContinuedInfo];
    [v25 setTransferSpeed:v16];

    v26 = [*(a1 + 32) wasContinuedInfo];
    [v26 setTransferDuration:v15];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_17;
    }

    v26 = [*(a1 + 32) wasContinuedInfo];
    [v26 setError:v6];
  }

LABEL_17:
  v27 = sub_100001A30(@"Diagnostic");
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v28 = [*(a1 + 32) wasContinuedInfo];
    *buf = 138477827;
    v119 = *&v28;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Updated wasContinuedInfo with payload fetch results: %{private}@", buf, 0xCu);
  }

  v29 = [*(a1 + 32) payloadRequestedCompletions];
  [*(a1 + 32) setPayloadRequestedCompletions:0];
  v30 = *(a1 + 32);
  objc_sync_enter(v30);
  [*(a1 + 32) setPayloadRequested:0];
  if (!v6)
  {
    v35 = [[UserActivityToBTLEPayload alloc] initWithData:v5];
    v36 = v35;
    if (!v35)
    {
      v6 = 0;
      goto LABEL_75;
    }

    v37 = [(UserActivityToBTLEPayload *)v35 error];
    v38 = v37 == 0;

    if (!v38)
    {
      v6 = [(UserActivityToBTLEPayload *)v36 error];
      [*(a1 + 32) setPayloadAvailable:0];
      v39 = sub_100001A30(0);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = [*(a1 + 32) uuid];
        v41 = [v40 UUIDString];
        v42 = *(a1 + 32);
        *buf = 138543875;
        v119 = *&v41;
        v120 = 2113;
        v121 = v42;
        v122 = 2114;
        v123 = v6;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Payload for item %{public}@/%{private}@ was received with error %{public}@\n", buf, 0x20u);
      }

LABEL_73:

      goto LABEL_74;
    }

    v45 = [*(a1 + 32) activityType];
    if (v45)
    {
      v46 = [*(a1 + 32) activityType];
      v47 = [v46 isEqual:@"com.apple.GameController"];

      v48 = v47 ^ 1;
    }

    else
    {
      v48 = 1;
    }

    v49 = [*(a1 + 32) activityType];
    if (!v49 || ([*(a1 + 32) activityType], v50 = objc_claimAutoreleasedReturnValue(), v51 = objc_msgSend(v50, "isEqual:", @"NSUserActivityTypeBrowsingWeb"), v50, v49, !v51))
    {
      if ((v48 & 1) == 0)
      {
        goto LABEL_49;
      }

      v61 = [*(a1 + 32) teamIDs];
      if (!v61)
      {
        goto LABEL_49;
      }

      v62 = [*(a1 + 32) teamIDs];
      v63 = [(UserActivityToBTLEPayload *)v36 teamID];
      v64 = [v62 containsObject:v63];

      if ((v64 & 1) == 0)
      {
        v69 = sub_100001A30(0);
        if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          v112 = [*(a1 + 32) uuid];
          v74 = [v112 UUIDString];
          v75 = [(UserActivityToBTLEPayload *)v36 teamID];
          v76 = [*(a1 + 32) teamIDs];
          v77 = [v76 description];
          v78 = sub_100009684(v77);
          *buf = 138544131;
          v119 = *&v74;
          v120 = 2113;
          v121 = v75;
          v122 = 2113;
          v123 = v78;
          v124 = 2048;
          v125 = -111;
          _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "*** Mismatch for activity %{public}@  between teamID from received activity, %{private}@, and teamID associated with application targeted, %{private}@, so refusing to pass along activity to this target.  Error #%ld, UAContinuityUserActivityFailedValidation", buf, 0x2Au);
        }
      }

      else
      {
LABEL_49:
        v65 = [*(a1 + 32) activityType];
        if (!v65)
        {
          goto LABEL_63;
        }

        v66 = [*(a1 + 32) activityType];
        v67 = [(UserActivityToBTLEPayload *)v36 activityType];
        v68 = [v66 isEqual:v67];

        if (v68)
        {
          goto LABEL_63;
        }

        v69 = sub_100001A30(0);
        if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          v70 = [*(a1 + 32) uuid];
          v71 = [v70 UUIDString];
          v72 = [(UserActivityToBTLEPayload *)v36 activityType];
          v73 = [*(a1 + 32) activityType];
          *buf = 138544131;
          v119 = *&v71;
          v120 = 2113;
          v121 = v72;
          v122 = 2113;
          v123 = v73;
          v124 = 2048;
          v125 = -111;
          _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "*** Mismatch for activity %{public}@ between activityType from received activity, %{private}@, and activityType associated with application targeted, %{private}@, so refusing to pass along activity to this target, error #%ld.", buf, 0x2Au);
        }
      }

      v6 = [NSError errorWithDomain:UAContinuityErrorDomain code:-111 userInfo:0];
LABEL_74:

      goto LABEL_75;
    }

    v52 = [(UserActivityToBTLEPayload *)v36 teamID];
    if (v52)
    {
      v53 = [*(a1 + 32) teamIDs];
      if (v53)
      {
        v54 = [*(a1 + 32) teamIDs];
        v55 = [(UserActivityToBTLEPayload *)v36 teamID];
        v110 = [v54 containsObject:v55];

        if ((v110 & 1) == 0)
        {
          v56 = sub_100001A30(0);
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            v57 = [*(a1 + 32) uuid];
            v111 = [v57 UUIDString];
            v109 = [(UserActivityToBTLEPayload *)v36 teamID];
            v58 = [*(a1 + 32) teamIDs];
            v59 = [v58 description];
            v60 = sub_100009684(v59);
            *buf = 138543875;
            v119 = *&v111;
            v120 = 2113;
            v121 = v109;
            v122 = 2113;
            v123 = v60;
            _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "*** For activity %{public}@ of type NSUserActivityTypeBrowsingWeb, being reecived, since the teamID from received activity, %{private}@, and teamID associated with application targeted, %{private}@, do not match, setting the userInfoPayload to nil so we don't deliver an un-expected payload type to the target.", buf, 0x20u);
          }

LABEL_62:

          [(UserActivityToBTLEPayload *)v36 setUserInfoPayload:0];
          [(UserActivityToBTLEPayload *)v36 setStreamsData:0];
          goto LABEL_63;
        }
      }

      else
      {
      }
    }

    v79 = [*(a1 + 32) teamIDs];
    if (v79)
    {
    }

    else
    {
      v80 = [(UserActivityToBTLEPayload *)v36 teamID];
      v81 = v80 == 0;

      if (!v81)
      {
        v56 = sub_100001A30(0);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          v82 = [*(a1 + 32) uuid];
          v83 = [v82 UUIDString];
          v84 = [(UserActivityToBTLEPayload *)v36 teamID];
          *buf = 138543619;
          v119 = *&v83;
          v120 = 2113;
          v121 = v84;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "*** For activity %{public}@ of type NSUserActivityTypeBrowsingWeb, being received, since the teamID from received activity, %{private}@, and the target application has no teamID, setting the userInfoPayload to nil so we don't deliver an un-expected payload type to the target.", buf, 0x16u);
        }

        goto LABEL_62;
      }
    }

LABEL_63:
    v85 = sub_100001A30(0);
    if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
    {
      v86 = [*(a1 + 32) uuid];
      v87 = [v86 UUIDString];
      v88 = [(UserActivityToBTLEPayload *)v36 userInfoPayload];
      v89 = sub_100006EF4(v88);
      *buf = 138543619;
      v119 = *&v87;
      v120 = 2113;
      v121 = v89;
      _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEBUG, "Updating payload for item %{public}@ to %{private}@\n", buf, 0x16u);
    }

    v90 = [(UserActivityToBTLEPayload *)v36 title];
    [*(a1 + 32) setTitle:v90];

    v91 = *(a1 + 32);
    v92 = [(UserActivityToBTLEPayload *)v36 userInfoPayload];
    [v91 setPayload:v92 identifier:UAUserActivityUserInfoPayload];

    v93 = *(a1 + 32);
    v94 = [(UserActivityToBTLEPayload *)v36 streamsData];
    [v93 setPayload:v94 identifier:UAUserActivityStreamsPayload];

    v95 = [(UserActivityToBTLEPayload *)v36 webpageURL];
    [*(a1 + 32) setWebpageURL:v95];

    [*(a1 + 32) setPayloadAvailable:1];
    v96 = [(UserActivityToBTLEPayload *)v36 additionalItems];
    v97 = [v96 objectForKey:@"persistentID"];
    [*(a1 + 32) setPersistentIdentifier:v97];

    v98 = [(UserActivityToBTLEPayload *)v36 additionalItems];
    v39 = [v98 objectForKey:@"targetContentID"];

    if (v39)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v99 = sub_100001A30(0);
        if (os_log_type_enabled(v99, OS_LOG_TYPE_INFO))
        {
          *buf = 138739971;
          v119 = *&v39;
          _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_INFO, "- Extracted targetContentIdentifie=%{sensitive}@ from additionalItems payload", buf, 0xCu);
        }

        [*(a1 + 32) setTargetContentIdentifier:v39];
      }
    }

    v100 = [(UserActivityToBTLEPayload *)v36 streamsData];

    if (v100)
    {
      v101 = [*(a1 + 32) wasContinuedInfo];
      [v101 setSupportsContinuityStreams:1];
    }

    v102 = [*(a1 + 32) manager];
    [v102 scheduleBestAppDetermination];

    [*(a1 + 32) setPayloadAvailable:1];
    v6 = 0;
    goto LABEL_73;
  }

  v31 = sub_100001A30(0);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    v32 = [*(a1 + 32) uuid];
    v33 = [v32 UUIDString];
    v34 = *(a1 + 32);
    *buf = 138543875;
    v119 = *&v33;
    v120 = 2113;
    v121 = v34;
    v122 = 2112;
    v123 = v6;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Failed to fetch payload from sharingd for item %{public}@/%{private}@, with error %@\n", buf, 0x20u);
  }

  [*(a1 + 32) setPayloadAvailable:0];
LABEL_75:
  v103 = sub_100001A30(0);
  if (os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
  {
    v104 = [v29 count];
    *buf = 134218242;
    v119 = *&v104;
    v120 = 2114;
    v121 = v6;
    _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEBUG, "-- Calling %ld completionHandlers with payloadRequest information: error=%{public}@", buf, 0x16u);
  }

  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v105 = v29;
  v106 = [v105 countByEnumeratingWithState:&v113 objects:v117 count:16];
  if (v106)
  {
    v107 = *v114;
    do
    {
      for (i = 0; i != v106; i = i + 1)
      {
        if (*v114 != v107)
        {
          objc_enumerationMutation(v105);
        }

        (*(*(*(&v113 + 1) + 8 * i) + 16))();
      }

      v106 = [v105 countByEnumeratingWithState:&v113 objects:v117 count:16];
    }

    while (v106);
  }

  objc_sync_exit(v30);
}

void sub_100057E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, id a41)
{
  _Block_object_dispose(&a36, 8);
  objc_destroyWeak(&a41);
  _Unwind_Resume(a1);
}

id sub_100057E64(uint64_t a1)
{
  v2 = sub_100001A30(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    WeakRetained = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
    v4 = [WeakRetained bundleIdentifier];
    v5 = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
    v6 = [v5 auditToken];
    v12 = 138478083;
    v13 = v4;
    v14 = 2048;
    v15 = [v6 pid];
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "--- invalidation on connection to client %{private}@ pid=%ld", &v12, 0x16u);
  }

  v7 = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
  [v7 invalidate];

  v8 = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
  v9 = [v8 controller];
  v10 = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
  [v9 removeClientActivityClient:v10];

  return objc_storeWeak((*(*(a1 + 32) + 8) + 40), 0);
}

void sub_100057FFC(uint64_t a1)
{
  v2 = [*(a1 + 32) bundleIdentifier];

  if (!v2)
  {
    v3 = sub_100001A30(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [*(*(a1 + 32) + 96) pid];
      v5 = 134217984;
      v6 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to fetch bundleIdentifier for process with pid %ld after 10 seconds", &v5, 0xCu);
    }
  }
}

void sub_1000580D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100001A30(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = [*(*(a1 + 32) + 96) pid];
    v6 = [v3 description];
    v7 = sub_100009684(v6);
    *buf = 67109379;
    v16 = v5;
    v17 = 2113;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "CLIENT: Process info, for pid %d, is %{private}@", buf, 0x12u);
  }

  v8 = [*(a1 + 32) manager];
  v9 = [v8 mainDispatchQ];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005828C;
  block[3] = &unk_1000C4EE0;
  v12 = *(a1 + 32);
  v13 = v3;
  v14 = *(a1 + 40);
  v10 = v3;
  dispatch_async(v9, block);
}

void sub_10005828C(id *a1)
{
  v2 = sub_100001A30(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = [*(a1[4] + 12) pid];
    v4 = [a1[5] description];
    v5 = sub_100009684(v4);
    v12 = 67109379;
    v13 = v3;
    v14 = 2113;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "CLIENT: Process info, for pid %d, is %{private}@ (on queue)", &v12, 0x12u);
  }

  v6 = [a1[5] objectForKey:BKSApplicationStateDisplayIDKey];
  v7 = a1[4];
  objc_sync_enter(v7);
  if (v6)
  {
    [a1[4] setBundleIdentifier:v6];
    [a1[6] addUserActivityClient:a1[4]];
  }

  else
  {
    v8 = sub_100001A30(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [*(a1[4] + 12) pid];
      v10 = [a1[5] description];
      v11 = sub_100009684(v10);
      v12 = 67109378;
      v13 = v9;
      v14 = 2114;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "CLIENT: Process info, for pid %d, doesn't include bundle identifier, so unable to locate this process \texcept by pid.(is %{public}@)", &v12, 0x12u);
    }

    [a1[6] addUserActivityClient:a1[4]];
  }

  objc_sync_exit(v7);
}

void sub_100059614(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100001A30(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = [*(a1 + 32) UUIDString];
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Got error on connection back to client for %{public}@, error: %{public}@", &v7, 0x16u);
  }

  v6 = *(a1 + 40);
  objc_sync_enter(v6);
  [*(*(a1 + 40) + 48) removeObject:*(a1 + 32)];
  objc_sync_exit(v6);

  [*(a1 + 40) dispatchPendingTasksForUUID:*(a1 + 32) error:v3];
  (*(*(a1 + 56) + 16))();
  [*(a1 + 48) invalidate];
}

void sub_100059764(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = sub_100001A30(0);
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = [*(a1 + 32) UUIDString];
      v18 = 138543618;
      v19 = v11;
      v20 = 2114;
      v21 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "FAILED: Calling back to client to ask it to save activity %{public}@ with error %{public}@.", &v18, 0x16u);
    }

    goto LABEL_11;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [*(a1 + 32) UUIDString];
    if (a3)
    {
      v13 = "YES";
    }

    else
    {
      v13 = "NO";
    }

    v14 = [v7 logString];
    v18 = 138543875;
    v19 = v12;
    v20 = 2082;
    v21 = v13;
    v22 = 2113;
    v23 = v14;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Returned from back to client to ask it to save activity %{public}@, clean=%{public}s updatedInfo=%{private}@", &v18, 0x20u);
  }

  v15 = *(a1 + 40);
  if (v15)
  {
    [v15 update:v7];
    v10 = [*(a1 + 48) manager];
    [v10 scheduleUpdatingAdvertisableItems];
LABEL_11:
  }

  v16 = *(a1 + 48);
  objc_sync_enter(v16);
  if (a3)
  {
    [*(*(a1 + 48) + 128) removeObject:*(a1 + 32)];
  }

  [*(*(a1 + 48) + 48) removeObject:*(a1 + 32)];
  objc_sync_exit(v16);

  [*(a1 + 48) dispatchPendingTasksForUUID:*(a1 + 32) error:v8];
  v17 = *(a1 + 64);
  if (v17)
  {
    (*(v17 + 16))(v17, v8);
  }

  [*(a1 + 56) invalidate];
}

void sub_100059B68(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100001A30(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "error: %{public}@", &v6, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void sub_100059F04(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  v5 = [v8 uuid];
  v6 = [v5 isEqual:*(a1 + 32)];

  if (v6)
  {
    v7 = [v8 block];
    v7[2](v7, *(a1 + 40));

    [*(a1 + 48) addIndex:a3];
  }
}

void sub_10005C13C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (a2)
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 40);

    v3(v4, 0, a2);
  }

  else
  {
    v5 = [*(a1 + 32) copy];
    (*(v2 + 16))(v2, v5, 0);
  }
}

void sub_10005C1D8(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = sub_100001A30(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v30 = [*(a1 + 32) UUIDString];
    v29 = [*(a1 + 40) logString];
    v6 = [*(a1 + 40) payloadForIdentifier:UAUserActivityUserInfoPayload];
    v7 = sub_1000021AC(v6, 0x20uLL);
    v8 = UAUserActivityStreamsPayload;
    v9 = [*(a1 + 40) payloadForIdentifier:UAUserActivityStreamsPayload];
    if (v9)
    {
      v28 = [*(a1 + 40) payloadForIdentifier:v8];
      v2 = sub_1000021AC(v28, 0x10uLL);
      v10 = [NSString stringWithFormat:@"stream=%@ ", v2];
    }

    else
    {
      v10 = &stru_1000C67D0;
    }

    v11 = [*(a1 + 40) webpageURL];
    *buf = 138544643;
    v12 = @"YES";
    v32 = v30;
    if (!v11)
    {
      v12 = &stru_1000C67D0;
    }

    v33 = 2113;
    v34 = v29;
    v35 = 2113;
    v36 = v7;
    v37 = 2113;
    v38 = v10;
    v39 = 2113;
    v40 = v12;
    v41 = 2114;
    v42 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "-- activity with uuid %{public}@, completed fetching payload, %{private}@ %{private}@ %{private}@%{private}@, for it. error=%{public}@", buf, 0x3Eu);

    if (v9)
    {
    }
  }

  if (v4)
  {
    v13 = [v4 domain];
    v14 = UAContinuityErrorDomain;
    if ([v13 isEqual:UAContinuityErrorDomain])
    {
      v15 = v4;
    }

    else
    {
      v21 = [NSDictionary dictionaryWithObject:v4 forKey:NSUnderlyingErrorKey];
      v15 = [NSError errorWithDomain:v14 code:-105 userInfo:v21];
    }

    v22 = sub_100001A30(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [*(a1 + 32) UUIDString];
      *buf = 138543618;
      v32 = v4;
      v33 = 2114;
      v34 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, " -- Received error %{public}@ trying to fetch payload for item uuid %{public}@", buf, 0x16u);
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), 0, v15);
  }

  else
  {
    v16 = sub_100001A30(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [*(a1 + 40) uuid];
      v18 = [v17 UUIDString];
      v19 = *(a1 + 40);
      *buf = 138543619;
      v32 = v18;
      v33 = 2113;
      v34 = v19;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, " -- Sending userActivityInfo back to client, %{public}@/%{private}@", buf, 0x16u);
    }

    v20 = *(a1 + 48);
    v15 = [*(a1 + 40) copy];
    (*(v20 + 16))(v20, v15, 0);
  }

  v24 = sub_100001A30(0);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    v25 = [*(a1 + 40) uuid];
    v26 = [v25 UUIDString];
    v27 = *(a1 + 40);
    *buf = 138543619;
    v32 = v26;
    v33 = 2113;
    v34 = v27;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, " -- Removing cornerActionItem payload %{public}@/%{private}@ because a client fetched it.", buf, 0x16u);
  }

  [*(a1 + 40) clearPayload];
}

void sub_10005E228(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v3 = [*(a1 + 32) manager];
    [v3 scheduleUpdatingAdvertisableItems];
  }
}

void sub_10005FFE0(uint64_t a1)
{
  context = objc_autoreleasePoolPush();
  v102 = a1;
  v5 = *(a1 + 48);
  if (v5 <= 3)
  {
    if (v5 == 1)
    {
      v75 = *(a1 + 32);
      v76 = [*(v102 + 40) inputStream];

      if (v75 == v76)
      {
        v96 = [*(v102 + 40) peerName];

        if (!v96)
        {
          v97 = [*(v102 + 32) propertyForKey:@"__kCFStreamPropertyPeerAddress"];
          v98 = v97;
          if (v97 && !getnameinfo([v97 bytes], objc_msgSend(v97, "length"), buf, 0x1000u, 0, 0, 2))
          {
            v99 = [NSString stringWithCString:buf encoding:4];
            [*(v102 + 40) setPeerName:v99];
          }
        }

        v100 = [*(v102 + 40) peerName];
        [*(v102 + 40) setName:v100];
      }

      else
      {
        v77 = *(v102 + 32);
        v78 = [*(v102 + 40) outputStream];

        if (v77 == v78)
        {
          v79 = sub_100001A30(0);
          if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
          {
            v80 = [*(v102 + 40) peerName];
            v81 = [*(v102 + 40) peerUUID];
            v82 = [v81 UUIDString];
            v83 = [*(v102 + 40) uuid];
            v84 = [v83 UUIDString];
            *buf = 138478339;
            v106 = v80;
            v107 = 2114;
            v108 = v82;
            v109 = 2114;
            v110 = v84;
            _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEBUG, "NETWORK: Sending initial packet to paired client %{private}@/%{public}@ from controllerUUID=%{public}@.", buf, 0x20u);
          }

          v85 = *(v102 + 40);
          v86 = [v85 manager];
          v87 = [v86 uuid];
          v88 = [v87 UUIDString];
          v89 = [NSString stringWithFormat:@"HANDOFF v%g %@\n", 0x4081380000000000, v88, context];
          [v85 sendResponse:v89];

          v90 = +[SFPeerDevice peerForSelf];
          if (v90)
          {
            v91 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
            [v91 encodeObject:v90 forKey:NSKeyedArchiveRootObjectKey];
            v92 = *(v102 + 40);
            v93 = [v91 encodedData];
            v94 = sub_100006EF4(v93);
            v95 = [NSString stringWithFormat:@"PEERINFO SF[$%@]\n", v94];
            [v92 sendResponse:v95];
          }
        }
      }
    }

    else if (v5 == 2)
    {
      v6 = [*(a1 + 32) read:buf maxLength:1024];
      if (v6 >= 1)
      {
        v7 = [*(a1 + 40) readBuffer];
        [v7 appendBytes:buf length:v6];
      }

      v8 = sub_100001A30(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = *(a1 + 32);
        v10 = [*(v102 + 40) readBuffer];
        v11 = [v10 length];
        v12 = [*(v102 + 40) readBuffer];
        v13 = sub_100006EF4(v12);
        v14 = [*(v102 + 40) uuid];
        v15 = [v14 UUIDString];
        *buf = 138478595;
        v106 = v9;
        v107 = 2048;
        v108 = v11;
        v109 = 2113;
        v110 = v13;
        v111 = 2114;
        v112 = v15;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "NETWORK: stream=%{private}@ have %ld/%{private}@ controllerUUID=%{public}@", buf, 0x2Au);
      }

      v16 = [*(v102 + 40) readBuffer];
      v17 = v16;
      v18 = [v16 bytes];

      v19 = [*(v102 + 40) readBuffer];
      v20 = [v19 length] == 0;

      v21 = 0;
      if (!v20)
      {
        v22 = 0;
        do
        {
          v23 = [*(v102 + 40) readBuffer];
          v24 = v22 < [v23 length];

          if (v24)
          {
            v25 = 1;
            v26 = v22;
            do
            {
              v27 = v18[v26];
              v28 = v27 > 0xD;
              v29 = (1 << v27) & 0x2401;
              v30 = v28 || v29 == 0;
              if (v30 || v25 - 1 < 2)
              {
                v31 = 0;
              }

              else
              {
                v31 = [[NSString alloc] initWithBytes:&v18[v22] length:v25 - 1 encoding:4];
                v21 = v26 + 1;
              }

              v32 = [*(v102 + 40) readBuffer];
              v34 = ++v26 < [v32 length] && v31 == 0;

              ++v25;
            }

            while (v34);
            if (v31)
            {
              v35 = [*(v102 + 40) queue];
              block[0] = _NSConcreteStackBlock;
              block[1] = 3221225472;
              block[2] = sub_100060B04;
              block[3] = &unk_1000C5B80;
              block[4] = *(v102 + 40);
              v104 = v31;
              v36 = v31;
              dispatch_async(v35, block);
            }

            v22 = v26;
          }

          v37 = [*(v102 + 40) readBuffer];
          v38 = v22 < [v37 length];
        }

        while (v38);
      }

      v39 = [NSMutableData alloc];
      v40 = [*(v102 + 40) readBuffer];
      v41 = [v39 initWithBytes:&v18[v21] length:{objc_msgSend(v40, "length") - v21}];
      [*(v102 + 40) setReadBuffer:v41];

      v42 = [*(v102 + 40) readBuffer];
      v43 = [v42 length] == 0;

      if (!v43)
      {
        v44 = sub_100001A30(0);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          v45 = *(v102 + 32);
          v46 = [*(v102 + 40) readBuffer];
          v47 = [v46 length];
          v48 = [*(v102 + 40) readBuffer];
          v49 = sub_100006EF4(v48);
          *buf = 138478339;
          v106 = v45;
          v107 = 2048;
          v108 = v47;
          v109 = 2113;
          v110 = v49;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "NETWORK: stream=%{private}@ Remaining data, %ld/%{private}@", buf, 0x20u);
        }
      }
    }
  }

  else if (v5 == 4)
  {
    v50 = *(a1 + 40);
    objc_sync_enter(v50);
    v51 = [*(a1 + 40) writeBuffer];
    [v51 length];
    while (1)
    {

      v52 = [*(a1 + 40) writeBuffer];
      v53 = [v52 length];

      if (!v53)
      {
        break;
      }

      v54 = [*(a1 + 40) outputStream];
      v55 = [*(a1 + 40) writeBuffer];
      v56 = [v55 bytes];
      v57 = [*(a1 + 40) writeBuffer];
      v58 = [v54 write:v56 maxLength:{objc_msgSend(v57, "length")}];

      if (!v58)
      {
        break;
      }

      v51 = [*(a1 + 40) writeBuffer];
      v59 = [v51 length];
      if (v58 >= v59)
      {
        v61 = 0;
      }

      else
      {
        v1 = [*(a1 + 40) writeBuffer];
        v60 = [v1 bytes];
        v2 = [*(a1 + 40) writeBuffer];
        v3 = +[NSMutableData dataWithBytes:length:](NSMutableData, "dataWithBytes:length:", &v58[v60], [v2 length] - v58);
        v61 = v3;
      }

      [*(a1 + 40) setWriteBuffer:v61];
      if (v58 < v59)
      {
      }
    }

    objc_sync_exit(v50);
  }

  else
  {
    if (v5 == 8)
    {
      v62 = sub_100001A30(0);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
      {
        v63 = *(a1 + 32);
        v64 = [v63 streamError];
        *buf = 138478083;
        v106 = v63;
        v107 = 2114;
        v108 = v64;
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_INFO, "NETWORK: stream=%{private}@ error=%{public}@", buf, 0x16u);
      }
    }

    else if (v5 != 16)
    {
      goto LABEL_68;
    }

    v65 = sub_100001A30(0);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
    {
      v66 = *(a1 + 32);
      *buf = 138477827;
      v106 = v66;
      _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEBUG, "NETWORK: stream=%{private}@ END ENCOUNTERED", buf, 0xCu);
    }

    v67 = [*(a1 + 40) readBuffer];
    v68 = [v67 length] == 0;

    if (!v68)
    {
      v69 = [*(v102 + 40) readBuffer];
      v70 = v69;
      v71 = [v69 bytes];

      v72 = [NSString alloc];
      v73 = [*(v102 + 40) readBuffer];
      v74 = [v72 initWithBytes:v71 length:objc_msgSend(v73 encoding:{"length"), 4}];

      [*(v102 + 40) processCommand:v74];
    }

    [*(v102 + 40) terminate];
  }

LABEL_68:
  objc_autoreleasePoolPop(context);
}

void sub_1000617A4(uint64_t a1)
{
  v2 = [*(a1 + 32) inputStream];
  [v2 close];

  v3 = [*(a1 + 32) outputStream];
  [v3 close];
}

BOOL sub_100061A60(void *a1)
{
  v1 = a1;
  v2 = +[NSDate date];
  v3 = sub_10000A02C(v1, v2);

  return v3;
}

BOOL sub_100061AD8(void *a1)
{
  v1 = a1;
  v2 = +[NSDate date];
  v3 = sub_10000A02C(v1, v2);

  return !v3;
}

__CFString *sub_100061B50(void *a1, unsigned int a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 length];
    if (v5 <= a2)
    {
      v8 = v4;
    }

    else
    {
      v6 = [v4 substringWithRange:{0, a2 >> 1}];
      v7 = [v4 substringWithRange:{&v5[-(a2 >> 1)], a2 >> 1}];
      v8 = [NSString stringWithFormat:@"%@..(%ld)..%@", v6, &v5[-a2], v7];
    }
  }

  else
  {
    v8 = &stru_1000C67D0;
  }

  return v8;
}

id sub_100061C6C(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 length] >= 0x41)
  {
    v3 = +[NSData dataWithBytesNoCopy:length:freeWhenDone:](NSData, "dataWithBytesNoCopy:length:freeWhenDone:", [v2 bytes], 64, 0);
    v4 = [v3 description];
  }

  else
  {
    v4 = [v2 description];
  }

  return v4;
}

__CFString *sub_100061D38(double a1)
{
  if (a1 >= 1.0e98)
  {
    v1 = @"forever";
    goto LABEL_14;
  }

  if (a1 <= 0.0)
  {
    v1 = @"now";
    goto LABEL_14;
  }

  if (a1 < 300.0)
  {
    [NSString stringWithFormat:@"%ld seconds", a1];
    v1 = LABEL_13:;
    goto LABEL_14;
  }

  if (a1 < 3600.0)
  {
    [NSString stringWithFormat:@"roughly %ld minutes", a1 / 60];
    goto LABEL_13;
  }

  if (a1 < 86400.0)
  {
    [NSString stringWithFormat:@"roughly %ld hours", a1 / 3600];
    goto LABEL_13;
  }

  if (a1 < 7776000.0)
  {
    [NSString stringWithFormat:@"roughly %ld days", 3600 * (a1 / 24)];
    goto LABEL_13;
  }

  v1 = @"a long time";
LABEL_14:

  return v1;
}

__CFString *sub_100061EA4(unint64_t a1)
{
  if (a1 == -1)
  {
    v4 = @"forever";
    goto LABEL_9;
  }

  if (!a1 || (v2 = dispatch_time(0, 0), v2 > a1) || (v3 = (a1 - v2) / 1000000000.0, v3 <= 0.0))
  {
    v4 = @"now";
    goto LABEL_9;
  }

  if (v3 < 10.0)
  {
    [NSString stringWithFormat:@"%2.1g seconds", *&v3];
    v4 = LABEL_20:;
    goto LABEL_9;
  }

  if (v3 < 30.0)
  {
    [NSString stringWithFormat:@"%2ld seconds", v3];
    goto LABEL_20;
  }

  if (v3 < 300.0)
  {
    [NSString stringWithFormat:@"%3ld seconds", v3];
    goto LABEL_20;
  }

  if (v3 < 3600.0)
  {
    [NSString stringWithFormat:@"roughly %2ld minutes", v3 / 60];
    goto LABEL_20;
  }

  if (v3 < 86400.0)
  {
    [NSString stringWithFormat:@"roughly %2ld hours", (v3 / 60.0) / 24];
    goto LABEL_20;
  }

  v6 = [NSDate dateWithTimeIntervalSinceNow:?];
  v4 = [NSString stringWithFormat:@"%@", v6];

LABEL_9:

  return v4;
}

id sub_100062090(void *a1)
{
  v1 = [a1 description];
  v2 = sub_100009684(v1);

  return v2;
}

double sub_1000620EC()
{
  v0 = mach_absolute_time();
  if (!v0)
  {
    return NAN;
  }

  v1 = v0;
  info = 0;
  if (mach_timebase_info(&info))
  {
    return NAN;
  }

  LODWORD(v2) = info.numer;
  LODWORD(v3) = info.denom;
  result = v1 * v2 / v3 / 1000000000.0;
  if (fabs(result) == INFINITY)
  {
    return NAN;
  }

  return result;
}

id sub_100062178(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && ([v1 appState], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isInstalled"), v3, v2, v4))
  {
    v5 = [v2 activityTypes];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 containsObject:@"NSUserActivityTypeBrowsingWeb"];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_100062214(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id sub_10006224C()
{
  v0 = [LSClaimBinding alloc];
  v1 = [NSURL URLWithString:@"https:"];
  v9 = 0;
  v2 = [v0 initWithURL:v1 error:&v9];
  v3 = v9;

  if (v2)
  {
    v4 = [v2 bundleRecord];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v6 = [v2 bundleRecord];
      v7 = [v6 compatibilityObject];

      if (v7)
      {
        if (sub_100062178(v7))
        {
          goto LABEL_7;
        }
      }
    }
  }

  v7 = [LSApplicationProxy applicationProxyForIdentifier:@"com.apple.mobilesafari"];
LABEL_7:

  return v7;
}

id sub_1000623B8(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    goto LABEL_20;
  }

  v2 = [NSMutableString stringWithString:@"{"];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [v1 allKeys];
  obj = v3;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = *v19;
    v6 = _LSUserActivityContainsFileProviderURLKey;
    v16 = _LSUserActivityContainsUnsynchronizedCloudDocsKey;
    v14 = UAUserActivityItemIsNotActiveKey;
    v15 = _UAUserActivityContainsCloudDocsKey;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        if ([v8 isEqual:v6])
        {
          v9 = [v1 objectForKeyedSubscript:v8];
          [v2 appendFormat:@"fileProvider:%@", v9];
        }

        else if ([v8 isEqual:v16])
        {
          v9 = [v1 objectForKeyedSubscript:v8];
          [v2 appendFormat:@"unsyncronizedCloudDocs:%@", v9];
        }

        else if ([v8 isEqual:v15])
        {
          v9 = [v1 objectForKeyedSubscript:v8];
          [v2 appendFormat:@"cloudDocs:%@", v9];
        }

        else if ([v8 isEqual:v14])
        {
          v9 = [v1 objectForKeyedSubscript:v8];
          [v2 appendFormat:@"inactive:%@", v9];
        }

        else
        {
          v9 = [v1 objectForKeyedSubscript:v8];
          v10 = [v9 description];
          v11 = sub_100009684(v10);
          [v2 appendFormat:@"%@=%@", v8, v11];
        }
      }

      v3 = obj;
      v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  [v2 appendFormat:@"}"];
  if (v2)
  {
    v12 = [v2 copy];
  }

  else
  {
LABEL_20:
    v12 = 0;
  }

  return v12;
}

uint64_t sub_10006273C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [[NSData alloc] initWithBytesNoCopy:a2 length:a3 freeWhenDone:0];
  v6 = +[UASharedPasteboardDataManager sharedInstance];
  [v6 writeArchiveData:v5 forItem:*a1];

  return a3;
}

void sub_1000629A4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = +[UASharedPasteboardDataManager sharedInstance];
  v4 = [*(a1 + 32) uuid];
  [v3 createTmpArchiveFileWithUUID:v4];

  v16 = 0u;
  v17 = 0u;
  v15 = 0;
  v15 = [*(a1 + 32) uuid];
  *(&v16 + 1) = sub_10006273C;
  *(&v17 + 1) = &v15;
  LODWORD(v16) = 0;
  [*(a1 + 32) setWriter:ParallelArchiveWriterCreate()];
  v5 = [*(a1 + 32) baseURL];
  v6 = [v5 path];
  v7 = v6;
  v14 = [v6 cStringUsingEncoding:4];

  [*(a1 + 32) leaf];
  if (!realpath_DARWIN_EXTSN(v14, v20))
  {
    v8 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *__error();
      *buf = 67109120;
      LODWORD(v19) = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Dir invalid: %d", buf, 8u);
    }
  }

  [*(a1 + 32) writer];
  v10 = ParallelArchiveWriteDirContents();
  v11 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[Archiver] Created archive of size: %lld", buf, 0xCu);
  }

  [*(a1 + 32) writer];
  ParallelArchiveWriterDestroy();
  [*(a1 + 32) setWriter:0];
  v12 = +[UASharedPasteboardDataManager sharedInstance];
  v13 = [*(a1 + 32) uuid];
  [v12 finishWritingArchiveForUUID:v13];

  (*(*(a1 + 40) + 16))();
  objc_autoreleasePoolPop(v2);
}

void sub_100063190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000631B0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  v7 = a3;
  v6(v5, a2, v7);
  v8 = *(a1 + 40);
  v9 = objc_loadWeakRetained((a1 + 48));
  (*(v8 + 16))(v8, v9, [v9 totalBytesReceived], v7);
}

void sub_1000644D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100064508(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(v5 + 16))(v5, WeakRetained, a2, v6);
}