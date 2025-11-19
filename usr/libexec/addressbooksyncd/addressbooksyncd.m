void sub_1000017B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000017CC(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 bindString:*(a1 + 32)];
  if ([v3 step] == 100)
  {
    *(*(*(a1 + 40) + 8) + 24) = [v3 fetchInteger];
  }

  return 0;
}

id sub_1000018D8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindString:v3];
  [v4 bindInteger:*(a1 + 40)];
  v5 = [v4 step];

  return v5;
}

id sub_100001A00(void *a1, void *a2)
{
  v3 = a1[5];
  v4 = a2;
  [v4 bindInteger:v3];
  [v4 bindInteger:a1[6]];
  [v4 bindString:a1[4]];
  v5 = [v4 step];

  return v5;
}

void sub_100001B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100001B64(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 bindString:*(a1 + 32)];
  if ([v3 step] == 100)
  {
    [v3 fetchDouble];
    *(*(*(a1 + 40) + 8) + 24) = v4;
  }

  return 0;
}

id sub_100001C7C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindString:v3];
  [v4 bindDouble:*(a1 + 40)];
  v5 = [v4 step];

  return v5;
}

void sub_100001E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100001E34(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100001E4C(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 bindString:*(a1 + 32)];
  if ([v3 step] == 100)
  {
    v4 = [v3 fetchString];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  return 0;
}

id sub_100001F84(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindString:v3];
  [v4 bindString:*(a1 + 40)];
  v5 = [v4 step];

  return v5;
}

void sub_100002124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000213C(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 bindString:*(a1 + 32)];
  if ([v3 step] == 100)
  {
    v4 = [v3 fetchBlob];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  return 0;
}

id sub_100002274(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindString:v3];
  [v4 bindBlob:*(a1 + 40)];
  v5 = [v4 step];

  return v5;
}

id sub_10000237C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 bindString:v2];
  v4 = [v3 step];

  return v4;
}

uint64_t ABSPBFavoritesEntryReadFrom(_BYTE *a1, void *a2)
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
        v40 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v40 & 0x7F) << v5;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 6)
      {
        if (v13 <= 9)
        {
          switch(v13)
          {
            case 7:
              v21 = PBReaderReadString();
              v22 = 56;
              break;
            case 8:
              v21 = PBReaderReadString();
              v22 = 16;
              break;
            case 9:
              v21 = PBReaderReadString();
              v22 = 24;
              break;
            default:
              goto LABEL_72;
          }

          goto LABEL_68;
        }

        switch(v13)
        {
          case 0xA:
            v21 = PBReaderReadString();
            v22 = 88;
LABEL_68:
            v36 = *&a1[v22];
            *&a1[v22] = v21;

            goto LABEL_87;
          case 0xB:
            v23 = PBReaderReadString();
            if (v23)
            {
              [a1 addDictionaryKeys:v23];
            }

            break;
          case 0xC:
            v23 = PBReaderReadString();
            if (v23)
            {
              [a1 addDictionaryValues:v23];
            }

            break;
          default:
LABEL_72:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_87;
        }
      }

      else
      {
        if (v13 > 3)
        {
          switch(v13)
          {
            case 4:
              v21 = PBReaderReadString();
              v22 = 96;
              break;
            case 5:
              v21 = PBReaderReadString();
              v22 = 72;
              break;
            case 6:
              v21 = PBReaderReadString();
              v22 = 64;
              break;
            default:
              goto LABEL_72;
          }

          goto LABEL_68;
        }

        switch(v13)
        {
          case 1:
            v24 = 0;
            v25 = 0;
            v26 = 0;
            a1[104] |= 2u;
            while (1)
            {
              v43 = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                v29 = [a2 data];
                [v29 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (v43 & 0x7F) << v24;
              if ((v43 & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v11 = v25++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_81;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v26;
            }

LABEL_81:
            v38 = 48;
            break;
          case 2:
            v30 = 0;
            v31 = 0;
            v32 = 0;
            a1[104] |= 1u;
            while (1)
            {
              v42 = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v42 & 0x7F) << v30;
              if ((v42 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v11 = v31++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_85;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v32;
            }

LABEL_85:
            v38 = 8;
            break;
          case 3:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            a1[104] |= 4u;
            while (1)
            {
              v41 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v41 & 0x7F) << v14;
              if ((v41 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_77;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_77:
            v38 = 80;
            break;
          default:
            goto LABEL_72;
        }

        *&a1[v38] = v20;
      }

LABEL_87:
      v39 = [a2 position];
    }

    while (v39 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ABSPBContainerPermissionsReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
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
        v35 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v35 & 0x7F) << v5;
        if ((v35 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v28 = 0;
        v29 = 0;
        v16 = 0;
        *(a1 + 12) |= 2u;
        while (1)
        {
          v36 = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v36 & 0x7F) << v28;
          if ((v36 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v20 = v29++ > 8;
          if (v20)
          {
            LOBYTE(v21) = 0;
            v22 = &OBJC_IVAR___ABSPBContainerPermissions__canCreateGrouops;
            goto LABEL_53;
          }
        }

        v22 = &OBJC_IVAR___ABSPBContainerPermissions__canCreateGrouops;
        goto LABEL_52;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v38 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v38 & 0x7F) << v14;
          if ((v38 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v20 = v15++ > 8;
          if (v20)
          {
            LOBYTE(v21) = 0;
            v22 = &OBJC_IVAR___ABSPBContainerPermissions__canCreateContacts;
            goto LABEL_53;
          }
        }

        v22 = &OBJC_IVAR___ABSPBContainerPermissions__canCreateContacts;
        goto LABEL_52;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_54:
      v33 = [a2 position];
      if (v33 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v23 = 0;
    v24 = 0;
    v16 = 0;
    *(a1 + 12) |= 4u;
    while (1)
    {
      v37 = 0;
      v25 = [a2 position] + 1;
      if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
      {
        v27 = [a2 data];
        [v27 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v16 |= (v37 & 0x7F) << v23;
      if ((v37 & 0x80) == 0)
      {
        break;
      }

      v23 += 7;
      v20 = v24++ > 8;
      if (v20)
      {
        LOBYTE(v21) = 0;
        v22 = &OBJC_IVAR___ABSPBContainerPermissions__canDeleteContacts;
        goto LABEL_53;
      }
    }

    v22 = &OBJC_IVAR___ABSPBContainerPermissions__canDeleteContacts;
LABEL_52:
    v21 = (v16 != 0) & ~[a2 hasError];
LABEL_53:
    *(a1 + *v22) = v21;
    goto LABEL_54;
  }

  return [a2 hasError] ^ 1;
}

id sub_100004D58(uint64_t a1)
{
  v2 = (*(a1 + 16))();
  v3 = [v2 domain];
  v4 = v3;
  if (v3 == CNErrorDomain)
  {
    v5 = 0;
    while ([v2 code] == 1 && v5 <= 3)
    {
      usleep(0xF4240u);

      v6 = (*(a1 + 16))(a1);

      v7 = [v6 domain];
      v4 = v7;
      ++v5;
      v2 = v6;
      if (v7 != CNErrorDomain)
      {

        v8 = v5 + 1;
        goto LABEL_10;
      }
    }

    if (!v5)
    {
      goto LABEL_13;
    }

    v8 = v5 + 1;
    v6 = v2;
LABEL_10:
    v9 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 67109120;
      v11[1] = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "WARNING: Likely contactsd communication breakdown, retries: %d", v11, 8u);
    }

    v2 = v6;
  }

  else
  {
  }

LABEL_13:

  return v2;
}

uint64_t sub_100006268(void *a1)
{
  v1 = a1;
  v5 = 0;
  if ([v1 read:&v5 maxLength:2] != 2)
  {
    v4 = [NSException exceptionWithName:NSInvalidUnarchiveOperationException reason:@"Unable to read tag" userInfo:0];
    objc_exception_throw(v4);
  }

  v2 = v5;

  return v2;
}

id sub_1000062E8(void *a1)
{
  v1 = a1;
  LODWORD(size) = 0;
  if ([v1 read:&size maxLength:4] != 4)
  {
    v8 = NSInvalidUnarchiveOperationException;
    v9 = @"Unable to read string length";
    goto LABEL_15;
  }

  if (size != -1)
  {
    if (size >= 0xF4241)
    {
      v8 = NSInvalidUnarchiveOperationException;
      v9 = @"String exceeds maximum string length.";
    }

    else
    {
      v2 = malloc_type_malloc(size, 0xB04D1F3BuLL);
      if (v2)
      {
        v3 = v2;
        v4 = [v1 read:v2 maxLength:size];
        if (v4 == size)
        {
          v5 = [NSString alloc];
          v6 = [v5 initWithBytesNoCopy:v3 length:size encoding:4 freeWhenDone:1];
          goto LABEL_8;
        }

        v8 = NSInvalidUnarchiveOperationException;
        v9 = @"Unable to read string contents";
      }

      else
      {
        v8 = NSInvalidUnarchiveOperationException;
        v9 = @"Cannot allocate space for string.";
      }
    }

LABEL_15:
    v10 = [NSException exceptionWithName:v8 reason:v9 userInfo:0];
    objc_exception_throw(v10);
  }

  v6 = 0;
LABEL_8:

  return v6;
}

id sub_10000644C(void *a1)
{
  v1 = a1;
  LODWORD(size) = 0;
  if ([v1 read:&size maxLength:4] != 4)
  {
    v8 = NSInvalidUnarchiveOperationException;
    v9 = @"Unable to read blob length";
    goto LABEL_15;
  }

  if (size != -1)
  {
    if (size >= 0xF4241)
    {
      v8 = NSInvalidUnarchiveOperationException;
      v9 = @"Blob exceeds maximum length.";
    }

    else
    {
      v2 = malloc_type_malloc(size, 0xC408E38FuLL);
      if (v2)
      {
        v3 = v2;
        v4 = [v1 read:v2 maxLength:size];
        if (v4 == size)
        {
          v5 = [NSData alloc];
          v6 = [v5 initWithBytesNoCopy:v3 length:size freeWhenDone:1];
          goto LABEL_8;
        }

        v8 = NSInvalidUnarchiveOperationException;
        v9 = @"Unable to read blob contents";
      }

      else
      {
        v8 = NSInvalidUnarchiveOperationException;
        v9 = @"Cannot allocate space for blob.";
      }
    }

LABEL_15:
    v10 = [NSException exceptionWithName:v8 reason:v9 userInfo:0];
    objc_exception_throw(v10);
  }

  v6 = 0;
LABEL_8:

  return v6;
}

id sub_1000065AC(void *a1)
{
  v1 = a1;
  v10 = 0;
  v8 = 0;
  v9 = 0;
  v7 = 0;
  if ([v1 read:&v10 maxLength:1] != 1)
  {
    v4 = NSInvalidUnarchiveOperationException;
    v5 = @"Unable to read isLeapMonth";
    goto LABEL_22;
  }

  if ([v1 read:&v9 maxLength:4] != 4)
  {
    v4 = NSInvalidUnarchiveOperationException;
    v5 = @"Unable to read era";
    goto LABEL_22;
  }

  if ([v1 read:&v8 maxLength:4] != 4)
  {
    v4 = NSInvalidUnarchiveOperationException;
    v5 = @"Unable to read year";
    goto LABEL_22;
  }

  if ([v1 read:&v7 + 1 maxLength:1] != 1)
  {
    v4 = NSInvalidUnarchiveOperationException;
    v5 = @"Unable to read month";
    goto LABEL_22;
  }

  if ([v1 read:&v7 maxLength:1] != 1)
  {
    v4 = NSInvalidUnarchiveOperationException;
    v5 = @"Unable to read day";
LABEL_22:
    v6 = [NSException exceptionWithName:v4 reason:v5 userInfo:0];
    objc_exception_throw(v6);
  }

  v2 = objc_alloc_init(NSDateComponents);
  [v2 setLeapMonth:v10];
  if (v9 != 0x80000000)
  {
    [v2 setEra:?];
  }

  if (v8 != 0x80000000)
  {
    [v2 setYear:?];
  }

  if (SHIBYTE(v7) != -128)
  {
    [v2 setMonth:?];
  }

  if (v7 != -128)
  {
    [v2 setDay:?];
  }

  return v2;
}

uint64_t sub_100006794(void *a1)
{
  v1 = a1;
  v5 = 0;
  if ([v1 read:&v5 maxLength:1] != 1)
  {
    v4 = [NSException exceptionWithName:NSInvalidUnarchiveOperationException reason:@"Unable to read byte" userInfo:0];
    objc_exception_throw(v4);
  }

  v2 = v5;

  return v2;
}

__CFString *sub_100006814(void *a1)
{
  v1 = a1;
  v2 = v1;
  v9 = 104;
  if (qword_100071BB8 == -1)
  {
    if (v1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_100039F18();
    if (v2)
    {
LABEL_3:
      if ([v2 read:&v9 maxLength:1] == 1)
      {
        if (v9 == 254)
        {
          v4 = @"<<EOB>>";
          goto LABEL_13;
        }

        if (v9 == 255)
        {
          v3 = sub_1000062E8(v2);
LABEL_10:
          v4 = v3;
          goto LABEL_13;
        }

        if (v9 - 104 > 0xFFFFFF98)
        {
          v3 = [qword_100071BA0 objectAtIndexedSubscript:v9 - 1];
          goto LABEL_10;
        }

        v6 = NSInvalidUnarchiveOperationException;
        v7 = @"Invalid byte in canned string.";
      }

      else
      {
        v6 = NSInvalidUnarchiveOperationException;
        v7 = @"Unable to read canned string tag";
      }

      v8 = [NSException exceptionWithName:v6 reason:v7 userInfo:0];
      objc_exception_throw(v8);
    }
  }

  v4 = 0;
LABEL_13:

  return v4;
}

id sub_100006940()
{
  v0 = sub_100006814(0);
  v1 = qword_100071BA0;

  return v1;
}

id sub_10000697C(int a1)
{
  if (qword_100071BA8 != -1)
  {
    sub_100039F2C();
  }

  v2 = qword_100071BB0;

  return [v2 objectAtIndexedSubscript:a1];
}

void sub_1000069D0(id a1)
{
  v1 = +[NSNull null];
  v4[0] = v1;
  v4[1] = NSCalendarIdentifierGregorian;
  v4[2] = NSCalendarIdentifierBuddhist;
  v4[3] = NSCalendarIdentifierChinese;
  v4[4] = NSCalendarIdentifierCoptic;
  v4[5] = NSCalendarIdentifierEthiopicAmeteMihret;
  v4[6] = NSCalendarIdentifierEthiopicAmeteAlem;
  v4[7] = NSCalendarIdentifierHebrew;
  v4[8] = NSCalendarIdentifierISO8601;
  v4[9] = NSCalendarIdentifierIndian;
  v4[10] = NSCalendarIdentifierIslamic;
  v4[11] = NSCalendarIdentifierIslamicCivil;
  v4[12] = NSCalendarIdentifierJapanese;
  v4[13] = NSCalendarIdentifierPersian;
  v4[14] = NSCalendarIdentifierRepublicOfChina;
  v4[15] = NSCalendarIdentifierIslamicTabular;
  v4[16] = NSCalendarIdentifierIslamicUmmAlQura;
  v2 = [NSArray arrayWithObjects:v4 count:17];
  v3 = qword_100071BB0;
  qword_100071BB0 = v2;
}

void sub_100006B44(id a1)
{
  v3[0] = @"_$!<Anniversary>!$_";
  v3[1] = @"_$!<Assistant>!$_";
  v3[2] = @"_$!<AssistantPhone>!$_";
  v3[3] = @"_$!<Brother>!$_";
  v3[4] = @"_$!<Callback>!$_";
  v3[5] = @"_$!<Car>!$_";
  v3[6] = @"_$!<Child>!$_";
  v3[7] = @"_$!<CompanyMain>!$_";
  v3[8] = @"_$!<EX-Anniversary>!$_";
  v3[9] = @"_$!<EX-AssistantName>!$_";
  v3[10] = @"_$!<EX-AssistantPhone>!$_";
  v3[11] = @"_$!<EX-Birthday>!$_";
  v3[12] = @"_$!<EX-Business>!$_";
  v3[13] = @"_$!<EX-BusinessFax>!$_";
  v3[14] = @"_$!<EX-BusinessHomePage>!$_";
  v3[15] = @"_$!<EX-BusinessPhone2>!$_";
  v3[16] = @"_$!<EX-BusinessPhone>!$_";
  v3[17] = @"_$!<EX-Callback>!$_";
  v3[18] = @"_$!<EX-CarPhone>!$_";
  v3[19] = @"_$!<EX-CompanyMainPhone>!$_";
  v3[20] = @"_$!<EX-EmailAddress1>!$_";
  v3[21] = @"_$!<EX-EmailAddress2>!$_";
  v3[22] = @"_$!<EX-EmailAddress3>!$_";
  v3[23] = @"_$!<EX-Home>!$_";
  v3[24] = @"_$!<EX-HomeFax>!$_";
  v3[25] = @"_$!<EX-HomePhone2>!$_";
  v3[26] = @"_$!<EX-HomePhone>!$_";
  v3[27] = @"_$!<EX-ImAddress1>!$_";
  v3[28] = @"_$!<EX-ImAddress2>!$_";
  v3[29] = @"_$!<EX-ImAddress3>!$_";
  v3[30] = @"_$!<EX-Isdn>!$_";
  v3[31] = @"_$!<EX-Manager>!$_";
  v3[32] = @"_$!<EX-MobilePhone>!$_";
  v3[33] = @"_$!<EX-Other>!$_";
  v3[34] = @"_$!<EX-OtherFax>!$_";
  v3[35] = @"_$!<EX-OtherTelephone>!$_";
  v3[36] = @"_$!<EX-Pager>!$_";
  v3[37] = @"_$!<EX-PrimaryPhone>!$_";
  v3[38] = @"_$!<EX-RadioPhone>!$_";
  v3[39] = @"_$!<EX-SpouseName>!$_";
  v3[40] = @"_$!<EX-Telex>!$_";
  v3[41] = @"_$!<EX-TtyTddPhone>!$_";
  v3[42] = @"_$!<Email>!$_";
  v3[43] = @"_$!<Father>!$_";
  v3[44] = @"_$!<Friend>!$_";
  v3[45] = @"_$!<Home>!$_";
  v3[46] = @"_$!<HomeFAX>!$_";
  v3[47] = @"_$!<HomePage>!$_";
  v3[48] = @"_$!<ISDN>!$_";
  v3[49] = @"_$!<Main>!$_";
  v3[50] = @"_$!<Manager>!$_";
  v3[51] = @"_$!<Mobile>!$_";
  v3[52] = @"_$!<MobileMe>!$_";
  v3[53] = @"_$!<Mother>!$_";
  v3[54] = @"_$!<Note>!$_";
  v3[55] = @"_$!<Other>!$_";
  v3[56] = @"_$!<OtherFAX>!$_";
  v3[57] = @"_$!<Pager>!$_";
  v3[58] = @"_$!<Parent>!$_";
  v3[59] = @"_$!<Partner>!$_";
  v3[60] = @"_$!<Radio>!$_";
  v3[61] = @"_$!<Sister>!$_";
  v3[62] = @"_$!<SocialProfile>!$_";
  v3[63] = @"_$!<Spouse>!$_";
  v3[64] = @"_$!<TTY>!$_";
  v3[65] = @"_$!<Telex>!$_";
  v3[66] = @"_$!<Work>!$_";
  v3[67] = @"_$!<WorkFAX>!$_";
  v3[68] = @"_$!<iCloud>!$_";
  v3[69] = @"_$!<iPhone>!$_";
  v3[70] = @"birthday";
  v3[71] = @"iCloud";
  v3[72] = @"iPhone";
  v3[73] = CNPostalAddressStreetKey;
  v3[74] = CNPostalAddressCityKey;
  v3[75] = CNPostalAddressStateKey;
  v3[76] = CNPostalAddressPostalCodeKey;
  v3[77] = CNPostalAddressCountryKey;
  v3[78] = CNPostalAddressISOCountryCodeKey;
  v3[79] = CNSocialProfileURLStringKey;
  v3[80] = CNSocialProfileUsernameKey;
  v3[81] = CNSocialProfileUserIdentifierKey;
  v3[82] = CNSocialProfileServiceKey;
  v3[83] = CNSocialProfileServiceFacebook;
  v3[84] = CNSocialProfileServiceFlickr;
  v3[85] = CNSocialProfileServiceLinkedIn;
  v3[86] = CNSocialProfileServiceMySpace;
  v3[87] = CNSocialProfileServiceSinaWeibo;
  v3[88] = CNSocialProfileServiceTencentWeibo;
  v3[89] = CNSocialProfileServiceTwitter;
  v3[90] = CNSocialProfileServiceYelp;
  v3[91] = CNSocialProfileServiceGameCenter;
  v3[92] = CNInstantMessageServiceAIM;
  v3[93] = CNInstantMessageServiceGaduGadu;
  v3[94] = CNInstantMessageServiceGoogleTalk;
  v3[95] = CNInstantMessageServiceICQ;
  v3[96] = CNInstantMessageServiceJabber;
  v3[97] = CNInstantMessageServiceMSN;
  v3[98] = CNInstantMessageServiceQQ;
  v3[99] = CNInstantMessageServiceSkype;
  v3[100] = CNInstantMessageServiceYahoo;
  v3[101] = CNPostalAddressSubLocalityKey;
  v3[102] = CNPostalAddressSubAdministrativeAreaKey;
  v1 = [NSArray arrayWithObjects:v3 count:103];
  v2 = qword_100071BA0;
  qword_100071BA0 = v1;
}

id sub_1000073DC(uint64_t a1)
{
  v2 = [*(a1 + 32) source];

  v3 = *(a1 + 32);
  if (v2)
  {

    return [v3 setPending:1];
  }

  else
  {
    [v3 leadingEdgeDelay];
    [*(a1 + 32) setCurrentDelay:?];
    if ([*(a1 + 32) holdTransaction])
    {
      v5 = [NSString stringWithFormat:@"NDTSignalCoaleser<%p>.transaction", *(a1 + 32)];
      [v5 UTF8String];
      v6 = os_transaction_create();
      [*(a1 + 32) setTransaction:v6];
    }

    v7 = *(a1 + 32);
    [v7 leadingEdgeDelay];

    return [v7 _setupTimerDelay:1 pending:?];
  }
}

void sub_1000075AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _cancel];
    [v3 _setupTimerDelay:objc_msgSend(v3 pending:{"pending"), *(a1 + 40)}];
    WeakRetained = v3;
  }
}

id sub_1000076A8(uint64_t a1)
{
  [*(a1 + 32) _cancel];
  [*(a1 + 32) setPending:0];
  v2 = *(a1 + 32);

  return [v2 setTransaction:0];
}

void sub_100007930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000794C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained pending])
  {
    [WeakRetained fireAction];
    v1 = [WeakRetained nextDelayCalculator];
    [WeakRetained currentDelay];
    v1[2](v1);
    [WeakRetained setCurrentDelay:?];

    [WeakRetained currentDelay];
    [WeakRetained _setupTimerDelay:0 pending:?];
  }

  else
  {
    [WeakRetained setSource:0];
    [WeakRetained setTransaction:0];
  }
}

void sub_1000088D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose((v38 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_10000892C(void *a1, void *a2, char *a3)
{
  v5 = a2;
  v6 = [v5 linkedContacts];
  v7 = [v6 count];

  if (v7)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = [v5 linkedContacts];
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          v14 = (*(a1[5] + 16))();
          v15 = *a3;
          *a3 = v15 | v14 ^ 1;
          if ((v15 | v14 ^ 1))
          {
            *(*(a1[6] + 8) + 24) = 1;

            goto LABEL_19;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    if (v5)
    {
      v16 = *a3 | (*(a1[5] + 16))() ^ 1;
      *a3 = v16;
    }

    else
    {
      v17 = *(qword_100071D00 + 8);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_100039FB8(v17);
      }

      v16 = *a3;
    }

    *(*(a1[6] + 8) + 24) = v16;
  }

  v18 = a1[4];
  [v18 countSoFar];
  [v18 setCountSoFar:v19 + 1.0];
LABEL_19:
}

void sub_100008B20(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v16 = a2;
  v6 = [v16 recipients];
  v7 = [v6 count];

  if (v7)
  {
    v8 = 0;
    do
    {
      v9 = [v16 recipients];
      v10 = [v9 objectAtIndexedSubscript:v8];

      v11 = a1[4];
      v12 = [v10 contact];
      (*(v11 + 16))(v11, v12, a4);

      ++*(*(a1[5] + 8) + 24);
      if (++*(*(a1[6] + 8) + 24) >= a1[7])
      {
        *a4 = 1;
      }

      else if ((*a4 & 1) == 0)
      {
        goto LABEL_8;
      }

      v13 = [v16 recipients];
      v8 = [v13 count];

LABEL_8:
      ++v8;
      v14 = [v16 recipients];
      v15 = [v14 count];
    }

    while (v8 < v15);
  }
}

uint64_t ABSPBContactReadFrom(char *a1, void *a2)
{
  v4 = a2;
  while (2)
  {
    v5 = [v4 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v20) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v20 & 0x7F) << v6;
      if ((v20 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = PBReaderReadString();
        v15 = 64;
        goto LABEL_51;
      case 2u:
        v14 = PBReaderReadString();
        v15 = 88;
        goto LABEL_51;
      case 3u:
        v14 = PBReaderReadString();
        v15 = 56;
        goto LABEL_51;
      case 4u:
        v14 = PBReaderReadString();
        v15 = 80;
        goto LABEL_51;
      case 5u:
        v14 = PBReaderReadString();
        v15 = 48;
        goto LABEL_51;
      case 6u:
        v14 = PBReaderReadString();
        v15 = 192;
        goto LABEL_51;
      case 7u:
        v14 = PBReaderReadString();
        v15 = 96;
        goto LABEL_51;
      case 8u:
        v14 = PBReaderReadString();
        v15 = 104;
        goto LABEL_51;
      case 9u:
        v14 = PBReaderReadString();
        v15 = 128;
        goto LABEL_51;
      case 0xAu:
        v14 = PBReaderReadString();
        v15 = 32;
        goto LABEL_51;
      case 0xBu:
        v14 = PBReaderReadString();
        v15 = 72;
        goto LABEL_51;
      case 0xCu:
        v14 = PBReaderReadString();
        v15 = 120;
        goto LABEL_51;
      case 0xDu:
        v16 = objc_alloc_init(ABSPBDate);
        v17 = 16;
        goto LABEL_39;
      case 0xEu:
        v16 = objc_alloc_init(ABSPBDate);
        v17 = 112;
LABEL_39:
        objc_storeStrong(&a1[v17], v16);
        v20 = 0;
        v21 = 0;
        if (!PBReaderPlaceMark() || !ABSPBDateReadFrom(v16, a2))
        {
          goto LABEL_64;
        }

        goto LABEL_60;
      case 0xFu:
        v14 = PBReaderReadString();
        v15 = 176;
        goto LABEL_51;
      case 0x10u:
        v14 = PBReaderReadString();
        v15 = 152;
        goto LABEL_51;
      case 0x11u:
        v14 = PBReaderReadString();
        v15 = 160;
        goto LABEL_51;
      case 0x12u:
        v14 = PBReaderReadString();
        v15 = 168;
        goto LABEL_51;
      case 0x13u:
        v14 = PBReaderReadString();
        v15 = 208;
        goto LABEL_51;
      case 0x14u:
        v14 = PBReaderReadString();
        v15 = 200;
        goto LABEL_51;
      case 0x15u:
        v14 = PBReaderReadString();
        v15 = 144;
        goto LABEL_51;
      case 0x16u:
        v16 = objc_alloc_init(ABSPBAlert);
        v18 = 24;
        goto LABEL_47;
      case 0x17u:
        v16 = objc_alloc_init(ABSPBAlert);
        v18 = 216;
LABEL_47:
        objc_storeStrong(&a1[v18], v16);
        v20 = 0;
        v21 = 0;
        if (!PBReaderPlaceMark() || !ABSPBAlertReadFrom(v16, a2))
        {
          goto LABEL_64;
        }

        goto LABEL_60;
      case 0x18u:
        v16 = objc_alloc_init(ABSPBLabeledString);
        [a1 addPhoneNumbers:v16];
        goto LABEL_53;
      case 0x19u:
        v16 = objc_alloc_init(ABSPBLabeledString);
        [a1 addUrls:v16];
        goto LABEL_53;
      case 0x1Au:
        v16 = objc_alloc_init(ABSPBLabeledString);
        [a1 addEmails:v16];
LABEL_53:
        v20 = 0;
        v21 = 0;
        if (!PBReaderPlaceMark() || !ABSPBLabeledStringReadFrom(v16, a2))
        {
          goto LABEL_64;
        }

        goto LABEL_60;
      case 0x1Bu:
        v16 = objc_alloc_init(ABSPBPostalAddress);
        [a1 addAddresses:v16];
        v20 = 0;
        v21 = 0;
        if (PBReaderPlaceMark() && ABSPBPostalAddressReadFrom(v16, a2))
        {
LABEL_60:
          PBReaderRecallMark();
LABEL_61:

LABEL_62:
          v4 = a2;
          continue;
        }

LABEL_64:

        return 0;
      case 0x1Cu:
        v14 = PBReaderReadString();
        v15 = 184;
LABEL_51:
        v16 = *&a1[v15];
        *&a1[v15] = v14;
        goto LABEL_61;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_62;
    }
  }
}

uint64_t ABSPBLimitedAccessObjectReadFrom(uint64_t a1, void *a2)
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
        v33 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            v34 = 0;
            v28 = [a2 position] + 1;
            if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
            {
              v30 = [a2 data];
              [v30 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v27 |= (v34 & 0x7F) << v25;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v11 = v26++ >= 9;
            if (v11)
            {
              v31 = 0;
              goto LABEL_50;
            }
          }

          if ([a2 hasError])
          {
            v31 = 0;
          }

          else
          {
            v31 = v27;
          }

LABEL_50:
          *(a1 + 8) = v31;
        }

        else
        {
          if (v13 != 4)
          {
LABEL_32:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_51;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 36) |= 2u;
          while (1)
          {
            v35 = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v35 & 0x7F) << v16;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              LOBYTE(v22) = 0;
              goto LABEL_46;
            }
          }

          v22 = (v18 != 0) & ~[a2 hasError];
LABEL_46:
          *(a1 + 32) = v22;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 16;
        }

        else
        {
          if (v13 != 2)
          {
            goto LABEL_32;
          }

          v14 = PBReaderReadString();
          v15 = 24;
        }

        v24 = *(a1 + v15);
        *(a1 + v15) = v14;
      }

LABEL_51:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_10000D118(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10000D13C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  state = xpc_activity_get_state(v3);
  v6 = [WeakRetained log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (state <= 5)
    {
      v7 = (&off_10005CF00)[state];
    }

    else
    {
      v7 = "OUT_OF_BOUNDS";
    }

    v18 = 136315138;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Checkin activity state: %s", &v18, 0xCu);
  }

  if (state == 2)
  {
    v11 = +[NSDate date];
    v12 = [WeakRetained estimatedFireDate];

    if (v12)
    {
      v13 = [WeakRetained estimatedFireDate];
      [v11 timeIntervalSinceDate:v13];
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = [WeakRetained log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 134217984;
      v19 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Running (late by: %.02f)", &v18, 0xCu);
    }

    [WeakRetained setEstimatedFireDate:0];
    [WeakRetained _setState:4];
    v17 = +[NSDate date];
    [WeakRetained setLastFired:v17];

    [WeakRetained _startDeferralPolling];
    [*(a1 + 32) activityRun:WeakRetained];
  }

  else if (state)
  {
    v11 = [WeakRetained log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100039FFC(state, v11);
    }
  }

  else
  {
    v8 = [WeakRetained activityCondition];
    [v8 lock];

    [WeakRetained _setActivity:v3];
    v9 = [WeakRetained activityCondition];
    [v9 broadcast];

    v10 = [WeakRetained activityCondition];
    [v10 unlock];

    v11 = [WeakRetained _currentCriteria];
    if (v11)
    {
      xpc_activity_set_criteria(v3, v11);
    }

    [WeakRetained setWaitingForCheckin:0];
  }
}

void sub_10000DC00(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = objc_loadWeakRetained(WeakRetained + 2);
  if (v1)
  {
    v2 = objc_opt_respondsToSelector();
  }

  else
  {
    v2 = 0;
  }

  v3 = [WeakRetained activity];
  should_defer = xpc_activity_should_defer(v3);

  if (should_defer && (v2 & 1) != 0)
  {
    [v1 activityDefer:WeakRetained];
  }
}

uint64_t ABSPBContactWrapperReadFrom(uint64_t a1, void *a2)
{
  v4 = a2;
  while (2)
  {
    v5 = [v4 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v43) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v43 & 0x7F) << v6;
      if ((v43 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 204) |= 4u;
        while (1)
        {
          LOBYTE(v43) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v43 & 0x7F) << v14;
          if ((v43 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v12 = v15++ >= 9;
          if (v12)
          {
            v20 = 0;
LABEL_87:
            *(a1 + 160) = v20;
            goto LABEL_79;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

        goto LABEL_87;
      case 2u:
        v30 = PBReaderReadString();
        if (v30)
        {
          [a1 addGroupName:v30];
        }

        goto LABEL_76;
      case 3u:
        v21 = PBReaderReadData();
        v22 = 176;
        goto LABEL_78;
      case 4u:
        v21 = PBReaderReadString();
        v22 = 80;
        goto LABEL_78;
      case 5u:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 204) |= 8u;
        while (1)
        {
          LOBYTE(v43) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v43 & 0x7F) << v23;
          if ((v43 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v12 = v24++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_83;
          }
        }

        v29 = (v25 != 0) & ~[a2 hasError];
LABEL_83:
        *(a1 + 200) = v29;
        goto LABEL_79;
      case 6u:
        *(a1 + 204) |= 1u;
        v43 = 0;
        v31 = [a2 position] + 8;
        if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 8, v32 <= objc_msgSend(a2, "length")))
        {
          v41 = [a2 data];
          [v41 getBytes:&v43 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v43;
        goto LABEL_79;
      case 7u:
        v21 = PBReaderReadString();
        v22 = 56;
        goto LABEL_78;
      case 8u:
        v21 = PBReaderReadData();
        v22 = 168;
        goto LABEL_78;
      case 9u:
        v30 = objc_alloc_init(ABSPBLinkTo);
        [a1 addLinkTo:v30];
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !ABSPBLinkToReadFrom(v30, a2))
        {
          goto LABEL_95;
        }

        goto LABEL_75;
      case 0xAu:
        v21 = PBReaderReadData();
        v22 = 64;
        goto LABEL_78;
      case 0xBu:
        v21 = PBReaderReadString();
        v22 = 104;
        goto LABEL_78;
      case 0xCu:
        v21 = PBReaderReadData();
        v22 = 32;
        goto LABEL_78;
      case 0xDu:
        v30 = objc_alloc_init(ABSPBContact);
        objc_storeStrong((a1 + 120), v30);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !ABSPBContactReadFrom(v30, a2))
        {
          goto LABEL_95;
        }

        goto LABEL_75;
      case 0xEu:
        v21 = PBReaderReadString();
        v22 = 24;
        goto LABEL_78;
      case 0xFu:
        v21 = PBReaderReadData();
        v22 = 88;
        goto LABEL_78;
      case 0x10u:
        v21 = PBReaderReadString();
        v22 = 96;
        goto LABEL_78;
      case 0x11u:
        v21 = PBReaderReadData();
        v22 = 128;
        goto LABEL_78;
      case 0x12u:
        v21 = PBReaderReadData();
        v22 = 136;
        goto LABEL_78;
      case 0x13u:
        v21 = PBReaderReadData();
        v22 = 144;
        goto LABEL_78;
      case 0x14u:
        v30 = objc_alloc_init(ABSPBContainerAttributes);
        objc_storeStrong((a1 + 40), v30);
        v43 = 0;
        v44 = 0;
        if (PBReaderPlaceMark() && ABSPBContainerAttributesReadFrom(v30, a2))
        {
LABEL_75:
          PBReaderRecallMark();
LABEL_76:

LABEL_79:
          v4 = a2;
          continue;
        }

LABEL_95:

        return 0;
      case 0x15u:
        v21 = PBReaderReadData();
        v22 = 192;
        goto LABEL_78;
      case 0x16u:
        v33 = 0;
        v34 = 0;
        v35 = 0;
        *(a1 + 204) |= 2u;
        while (1)
        {
          LOBYTE(v43) = 0;
          v36 = [a2 position] + 1;
          if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
          {
            v38 = [a2 data];
            [v38 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v35 |= (v43 & 0x7F) << v33;
          if ((v43 & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v12 = v34++ >= 9;
          if (v12)
          {
            v39 = 0;
            goto LABEL_91;
          }
        }

        if ([a2 hasError])
        {
          v39 = 0;
        }

        else
        {
          v39 = v35;
        }

LABEL_91:
        *(a1 + 16) = v39;
        goto LABEL_79;
      case 0x17u:
        v21 = PBReaderReadData();
        v22 = 48;
        goto LABEL_78;
      case 0x18u:
        v21 = PBReaderReadData();
        v22 = 184;
        goto LABEL_78;
      case 0x19u:
        v21 = PBReaderReadData();
        v22 = 152;
LABEL_78:
        v40 = *(a1 + v22);
        *(a1 + v22) = v21;

        goto LABEL_79;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_79;
    }
  }
}

void sub_100011384(id a1)
{
  qword_100071BC8 = objc_alloc_init(ABSContactsInterface);

  _objc_release_x1();
}

id sub_10001151C(uint64_t a1)
{
  [*(a1 + 32) _incrementInUseForMutation:0];
  v2 = objc_autoreleasePoolPush();
  v3 = *(*(a1 + 32) + 8);
  (*(*(a1 + 40) + 16))();
  objc_autoreleasePoolPop(v2);
  v4 = *(a1 + 32);

  return [v4 _decrementInUse];
}

id sub_100011648(uint64_t a1)
{
  [*(a1 + 32) _incrementInUseForMutation:0];
  v2 = objc_autoreleasePoolPush();
  v3 = *(*(a1 + 32) + 8);
  (*(*(a1 + 48) + 16))();
  objc_autoreleasePoolPop(v2);
  v4 = *(a1 + 32);

  return [v4 _decrementInUse];
}

id sub_1000117CC(uint64_t a1)
{
  [*(a1 + 32) _incrementInUseForMutation:1];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  if ((*(*(a1 + 40) + 16))())
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 16);
    *(v6 + 16) = 0;

    *(*(a1 + 32) + 29) = 1;
  }

  objc_autoreleasePoolPop(v2);
  v8 = *(a1 + 32);

  return [v8 _decrementInUse];
}

id sub_100011920(uint64_t a1)
{
  [*(a1 + 32) _incrementInUseForMutation:1];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  if ((*(*(a1 + 48) + 16))())
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 16);
    *(v6 + 16) = 0;

    *(*(a1 + 32) + 29) = 1;
  }

  objc_autoreleasePoolPop(v2);
  v8 = *(a1 + 32);

  return [v8 _decrementInUse];
}

void sub_100012778(uint64_t a1)
{
  v2 = dispatch_get_global_queue(17, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012824;
  block[3] = &unk_10005CE40;
  objc_copyWeak(&v4, (a1 + 32));
  dispatch_async(v2, block);

  objc_destroyWeak(&v4);
}

void sub_100012824(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _databaseChangedExternally];
}

uint64_t sub_1000130F8(uint64_t a1)
{
  result = sqlite3_exec([*(a1 + 32) db], "BEGIN", 0, 0, 0);
  if (result)
  {
    [*(a1 + 32) _makeSqlErrorReasonString:@"begin(1)"];
    v3 = [NDTSQException exceptionWithName:@"NDTSQError" reason:objc_claimAutoreleasedReturnValue() userInfo:0];
    objc_exception_throw(v3);
  }

  return result;
}

uint64_t sub_1000131EC(uint64_t a1)
{
  result = sqlite3_exec([*(a1 + 32) db], "COMMIT", 0, 0, 0);
  if (result)
  {
    [*(a1 + 32) _makeSqlErrorReasonString:@"commit(1)"];
    v3 = [NDTSQException exceptionWithName:@"NDTSQError" reason:objc_claimAutoreleasedReturnValue() userInfo:0];
    objc_exception_throw(v3);
  }

  return result;
}

uint64_t sub_1000132E0(uint64_t a1)
{
  result = sqlite3_exec([*(a1 + 32) db], "ROLLBACK", 0, 0, 0);
  if (result)
  {
    [*(a1 + 32) _makeSqlErrorReasonString:@"rollback(1)"];
    v3 = [NDTSQException exceptionWithName:@"NDTSQError" reason:objc_claimAutoreleasedReturnValue() userInfo:0];
    objc_exception_throw(v3);
  }

  return result;
}

uint64_t sub_10001340C(uint64_t a1)
{
  result = sqlite3_changes([*(a1 + 32) db]);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void start()
{
  v0 = dispatch_get_global_queue(33, 0);
  v1 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v0);
  v2 = qword_100071BD0;
  qword_100071BD0 = v1;

  v3 = dispatch_source_create(&_dispatch_source_type_signal, 3uLL, 0, v0);
  v4 = qword_100071BD8;
  qword_100071BD8 = v3;

  v5 = dispatch_get_global_queue(17, 0);
  v6 = dispatch_source_create(&_dispatch_source_type_signal, 0x1EuLL, 0, v5);
  v7 = qword_100071BE0;
  qword_100071BE0 = v6;

  dispatch_source_set_event_handler(qword_100071BD0, &stru_10005D038);
  dispatch_source_set_event_handler(qword_100071BD8, &stru_10005D058);
  dispatch_source_set_event_handler(qword_100071BE0, &stru_10005D078);
  dispatch_activate(qword_100071BD0);
  dispatch_activate(qword_100071BD8);
  dispatch_activate(qword_100071BE0);
  signal(30, 1);
  signal(3, 1);
  signal(15, 1);
  sub_10002AD08(21);
  sub_10002ACE8(17);
  v8 = objc_autoreleasePoolPush();
  +[ABSyncInterface sharedInstance];
  objc_claimAutoreleasedReturnValue();
  objc_autoreleasePoolPop(v8);
  dispatch_main();
}

void sub_10001369C(id a1)
{
  v1 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "SIGTERM, Bye bye.", v2, 2u);
  }

  exit(0);
}

void sub_10001370C(id a1)
{
  v1 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "SIGQUIT, Bye bye.", v2, 2u);
  }

  exit(0);
}

void sub_10001377C(id a1)
{
  if (os_log_type_enabled(&_os_log_default, 0x90u))
  {
    sub_10003A178();
  }
}

void sub_100013AE4(id a1)
{
  v1 = dlopen("/System/Library/PrivateFrameworks/CrashReporterSupport.framework/CrashReporterSupport", 1);
  qword_100071BF8 = v1;
  if (v1)
  {
    v2 = dlsym(v1, "WriteStackshotReport");
    if (v2)
    {
      v3 = v2;
    }

    else
    {
      v3 = sub_100013B80;
    }

    off_100071BE8 = v3;
    v4 = dlsym(qword_100071BF8, "SimulateCrash");
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = sub_100013B80;
    }
  }

  else
  {
    v5 = sub_100013B80;
    off_100071BE8 = sub_100013B80;
  }

  off_100071BF0 = v5;
}

id sub_100014290()
{
  if (qword_100071C08 != -1)
  {
    sub_10003A1D4();
  }

  v1 = qword_100071C10;

  return v1;
}

void sub_1000142D4(id a1)
{
  qword_100071C10 = os_log_create("com.apple.addressbooksync", "fastSerializer");

  _objc_release_x1();
}

void sub_10001435C(id a1)
{
  qword_100071C18 = objc_alloc_init(ABSContactsReclusterizer);

  _objc_release_x1();
}

uint64_t sub_1000149C4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000149DC(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 16));
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  return _objc_release_x1();
}

void sub_100014AE4(uint64_t a1, void *a2)
{
  v10 = CNContactIdentifierKey;
  v3 = a2;
  v4 = [NSArray arrayWithObjects:&v10 count:1];
  v5 = [[CNContactFetchRequest alloc] initWithKeysToFetch:v4];
  v6 = [CNContact predicateForContactsWithIdentifiers:*(a1 + 32)];
  [v5 setPredicate:v6];

  [v5 setUnifyResults:1];
  [v5 setMutableObjects:0];
  v9 = 0;
  [v3 enumerateContactsWithFetchRequest:v5 error:&v9 usingBlock:&stru_10005D140];

  v7 = v9;
  if (v7)
  {
    v8 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10003A1FC(v7, v8);
    }
  }
}

void sub_100014C48(id a1, CNContact *a2, BOOL *a3)
{
  v3 = a2;
  v4 = [(CNContact *)v3 linkedContacts];
  if (v4)
  {
    v5 = v4;
    v6 = [(CNContact *)v3 linkedContacts];
    v7 = [v6 count];

    if (v7)
    {
      v8 = [(CNContact *)v3 mutableCopy];
      v9 = +[ABSContactsInterface sharedInstance];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100014D40;
      v11[3] = &unk_10005D168;
      v12 = v8;
      v10 = v8;
      [v9 mutateAssert:v11];
    }
  }
}

uint64_t sub_100015038(uint64_t a1)
{
  v2 = [[ABSContactsLinkCluster alloc] initWithIdentifier_LOCKED:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

uint64_t sub_10001508C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(*(*(a1 + 32) + 8) + 40);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100015130;
  v8[3] = &unk_10005D1E0;
  v9 = v4;
  v6 = v4;
  [v5 enumerateContacts_LOCKED:v8];

  return 0;
}

uint64_t sub_10001513C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_1000149C4;
  v30 = sub_1000149D4;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v7 = *(a1 + 32);
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100015314;
  v13 = &unk_10005D230;
  v15 = &v26;
  v16 = &v22;
  v17 = &v18;
  v8 = v6;
  v14 = v8;
  [v7 enumerateContacts_LOCKED:&v10];
  if (*(v23 + 24) == 1)
  {
    [v8 preferLinkedContactForImage:v27[5] inUnifiedContact:{v27[5], v10, v11, v12, v13}];
  }

  if (*(v19 + 24) == 1)
  {
    [v8 preferLinkedContactForName:v27[5] inUnifiedContact:v27[5]];
  }

  [v8 setLinkIdentifier:*(a1 + 40) forContact:{v27[5], v10, v11, v12, v13}];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);

  return 0;
}

void sub_1000152E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100015314(uint64_t a1, void *a2, int a3, int a4)
{
  v8 = a2;
  v9 = *(*(a1 + 40) + 8);
  v11 = *(v9 + 40);
  v10 = (v9 + 40);
  v12 = v8;
  if (v11)
  {
    [*(a1 + 32) linkContact:v8 toContact:?];
    if (a3)
    {
      [*(a1 + 32) preferLinkedContactForImage:v12 inUnifiedContact:*(*(*(a1 + 40) + 8) + 40)];
    }

    if (a4)
    {
      [*(a1 + 32) preferLinkedContactForName:v12 inUnifiedContact:*(*(*(a1 + 40) + 8) + 40)];
    }
  }

  else
  {
    objc_storeStrong(v10, a2);
    *(*(*(a1 + 48) + 8) + 24) = a3;
    *(*(*(a1 + 56) + 8) + 24) = a4;
  }
}

void sub_100016954(__int16 a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5 && [v5 length])
  {
    v7 = a1;
    [v6 appendBytes:&v7 length:2];
    sub_1000169D0(v5, v6);
  }
}

void sub_1000169D0(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    v4 = [a1 dataUsingEncoding:4];
    v6 = [v4 length];
    [v3 appendBytes:&v6 length:4];
    [v3 appendBytes:objc_msgSend(v4 length:{"bytes"), objc_msgSend(v4, "length")}];
  }

  else
  {
    v5 = -1;
    v4 = a2;
    [v4 appendBytes:&v5 length:4];
  }
}

void sub_100016A88(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = sub_100016C6C(v3);
  [v4 appendBytes:&v5 length:1];
  if (v5 == 255)
  {
    sub_1000169D0(v3, v4);
  }
}

void sub_100016AFC(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v9 = [v3 isLeapMonth];
  v8 = [v3 era];
  v7 = [v3 year];
  v6 = [v3 month];
  v5 = [v3 day];
  [v4 appendBytes:&v9 length:1];
  if ([v3 era] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0x80000000;
  }

  [v4 appendBytes:&v8 length:4];
  if ([v3 year] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0x80000000;
  }

  [v4 appendBytes:&v7 length:4];
  if ([v3 month] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0x80;
  }

  [v4 appendBytes:&v6 length:1];
  if ([v3 day] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0x80;
  }

  [v4 appendBytes:&v5 length:1];
}

id sub_100016C34()
{
  sub_100016C6C(@"doesn't matter");
  v0 = qword_100071C28;

  return v0;
}

uint64_t sub_100016C6C(void *a1)
{
  v1 = a1;
  if (qword_100071C40 != -1)
  {
    sub_10003A274();
  }

  v2 = [qword_100071C28 objectForKey:v1];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

uint64_t sub_100016CEC(void *a1)
{
  v1 = qword_100071C30;
  v2 = a1;
  if (v1 != -1)
  {
    sub_10003A288();
  }

  v3 = [qword_100071C38 objectForKeyedSubscript:v2];

  v4 = [v3 intValue];
  return v4;
}

void sub_100016D58(id a1)
{
  v3[0] = NSCalendarIdentifierGregorian;
  v3[1] = NSCalendarIdentifierBuddhist;
  v4[0] = &off_100061298;
  v4[1] = &off_1000612B0;
  v3[2] = NSCalendarIdentifierChinese;
  v3[3] = NSCalendarIdentifierCoptic;
  v4[2] = &off_1000612C8;
  v4[3] = &off_1000612E0;
  v3[4] = NSCalendarIdentifierEthiopicAmeteMihret;
  v3[5] = NSCalendarIdentifierEthiopicAmeteAlem;
  v4[4] = &off_1000612F8;
  v4[5] = &off_100061310;
  v3[6] = NSCalendarIdentifierHebrew;
  v3[7] = NSCalendarIdentifierISO8601;
  v4[6] = &off_100061328;
  v4[7] = &off_100061340;
  v3[8] = NSCalendarIdentifierIndian;
  v3[9] = NSCalendarIdentifierIslamic;
  v4[8] = &off_100061358;
  v4[9] = &off_100061370;
  v3[10] = NSCalendarIdentifierIslamicCivil;
  v3[11] = NSCalendarIdentifierJapanese;
  v4[10] = &off_100061388;
  v4[11] = &off_1000613A0;
  v3[12] = NSCalendarIdentifierPersian;
  v3[13] = NSCalendarIdentifierRepublicOfChina;
  v4[12] = &off_1000613B8;
  v4[13] = &off_1000613D0;
  v3[14] = NSCalendarIdentifierIslamicTabular;
  v3[15] = NSCalendarIdentifierIslamicUmmAlQura;
  v4[14] = &off_1000613E8;
  v4[15] = &off_100061400;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:16];
  v2 = qword_100071C38;
  qword_100071C38 = v1;
}

void sub_100016F54(id a1)
{
  v3[0] = @"_$!<Anniversary>!$_";
  v3[1] = @"_$!<Assistant>!$_";
  v4[0] = &off_100061418;
  v4[1] = &off_100061430;
  v3[2] = @"_$!<AssistantPhone>!$_";
  v3[3] = @"_$!<Brother>!$_";
  v4[2] = &off_100061448;
  v4[3] = &off_100061460;
  v3[4] = @"_$!<Callback>!$_";
  v3[5] = @"_$!<Car>!$_";
  v4[4] = &off_100061478;
  v4[5] = &off_100061490;
  v3[6] = @"_$!<Child>!$_";
  v3[7] = @"_$!<CompanyMain>!$_";
  v4[6] = &off_1000614A8;
  v4[7] = &off_1000614C0;
  v3[8] = @"_$!<EX-Anniversary>!$_";
  v3[9] = @"_$!<EX-AssistantName>!$_";
  v4[8] = &off_1000614D8;
  v4[9] = &off_1000614F0;
  v3[10] = @"_$!<EX-AssistantPhone>!$_";
  v3[11] = @"_$!<EX-Birthday>!$_";
  v4[10] = &off_100061508;
  v4[11] = &off_100061520;
  v3[12] = @"_$!<EX-Business>!$_";
  v3[13] = @"_$!<EX-BusinessFax>!$_";
  v4[12] = &off_100061538;
  v4[13] = &off_100061550;
  v3[14] = @"_$!<EX-BusinessHomePage>!$_";
  v3[15] = @"_$!<EX-BusinessPhone2>!$_";
  v4[14] = &off_100061568;
  v4[15] = &off_100061580;
  v3[16] = @"_$!<EX-BusinessPhone>!$_";
  v3[17] = @"_$!<EX-Callback>!$_";
  v4[16] = &off_100061598;
  v4[17] = &off_1000615B0;
  v3[18] = @"_$!<EX-CarPhone>!$_";
  v3[19] = @"_$!<EX-CompanyMainPhone>!$_";
  v4[18] = &off_1000615C8;
  v4[19] = &off_1000615E0;
  v3[20] = @"_$!<EX-EmailAddress1>!$_";
  v3[21] = @"_$!<EX-EmailAddress2>!$_";
  v4[20] = &off_1000615F8;
  v4[21] = &off_100061610;
  v3[22] = @"_$!<EX-EmailAddress3>!$_";
  v3[23] = @"_$!<EX-Home>!$_";
  v4[22] = &off_100061628;
  v4[23] = &off_100061640;
  v3[24] = @"_$!<EX-HomeFax>!$_";
  v3[25] = @"_$!<EX-HomePhone2>!$_";
  v4[24] = &off_100061658;
  v4[25] = &off_100061670;
  v3[26] = @"_$!<EX-HomePhone>!$_";
  v3[27] = @"_$!<EX-ImAddress1>!$_";
  v4[26] = &off_100061688;
  v4[27] = &off_1000616A0;
  v3[28] = @"_$!<EX-ImAddress2>!$_";
  v3[29] = @"_$!<EX-ImAddress3>!$_";
  v4[28] = &off_1000616B8;
  v4[29] = &off_1000616D0;
  v3[30] = @"_$!<EX-Isdn>!$_";
  v3[31] = @"_$!<EX-Manager>!$_";
  v4[30] = &off_1000616E8;
  v4[31] = &off_100061700;
  v3[32] = @"_$!<EX-MobilePhone>!$_";
  v3[33] = @"_$!<EX-Other>!$_";
  v4[32] = &off_100061718;
  v4[33] = &off_100061730;
  v3[34] = @"_$!<EX-OtherFax>!$_";
  v3[35] = @"_$!<EX-OtherTelephone>!$_";
  v4[34] = &off_100061748;
  v4[35] = &off_100061760;
  v3[36] = @"_$!<EX-Pager>!$_";
  v3[37] = @"_$!<EX-PrimaryPhone>!$_";
  v4[36] = &off_100061778;
  v4[37] = &off_100061790;
  v3[38] = @"_$!<EX-RadioPhone>!$_";
  v3[39] = @"_$!<EX-SpouseName>!$_";
  v4[38] = &off_1000617A8;
  v4[39] = &off_1000617C0;
  v3[40] = @"_$!<EX-Telex>!$_";
  v3[41] = @"_$!<EX-TtyTddPhone>!$_";
  v4[40] = &off_1000617D8;
  v4[41] = &off_1000617F0;
  v3[42] = @"_$!<Email>!$_";
  v3[43] = @"_$!<Father>!$_";
  v4[42] = &off_100061808;
  v4[43] = &off_100061820;
  v3[44] = @"_$!<Friend>!$_";
  v3[45] = @"_$!<Home>!$_";
  v4[44] = &off_100061838;
  v4[45] = &off_100061850;
  v3[46] = @"_$!<HomeFAX>!$_";
  v3[47] = @"_$!<HomePage>!$_";
  v4[46] = &off_100061868;
  v4[47] = &off_100061880;
  v3[48] = @"_$!<ISDN>!$_";
  v3[49] = @"_$!<Main>!$_";
  v4[48] = &off_100061898;
  v4[49] = &off_1000618B0;
  v3[50] = @"_$!<Manager>!$_";
  v3[51] = @"_$!<Mobile>!$_";
  v4[50] = &off_1000618C8;
  v4[51] = &off_1000618E0;
  v3[52] = @"_$!<MobileMe>!$_";
  v3[53] = @"_$!<Mother>!$_";
  v4[52] = &off_1000618F8;
  v4[53] = &off_100061910;
  v3[54] = @"_$!<Note>!$_";
  v3[55] = @"_$!<Other>!$_";
  v4[54] = &off_100061928;
  v4[55] = &off_100061940;
  v3[56] = @"_$!<OtherFAX>!$_";
  v3[57] = @"_$!<Pager>!$_";
  v4[56] = &off_100061958;
  v4[57] = &off_100061970;
  v3[58] = @"_$!<Parent>!$_";
  v3[59] = @"_$!<Partner>!$_";
  v4[58] = &off_100061988;
  v4[59] = &off_1000619A0;
  v3[60] = @"_$!<Radio>!$_";
  v3[61] = @"_$!<Sister>!$_";
  v4[60] = &off_1000619B8;
  v4[61] = &off_1000619D0;
  v3[62] = @"_$!<SocialProfile>!$_";
  v3[63] = @"_$!<Spouse>!$_";
  v4[62] = &off_1000619E8;
  v4[63] = &off_100061A00;
  v3[64] = @"_$!<TTY>!$_";
  v4[64] = &off_100061A18;
  v3[65] = @"_$!<Telex>!$_";
  v4[65] = &off_100061A30;
  v3[66] = @"_$!<Work>!$_";
  v4[66] = &off_100061A48;
  v3[67] = @"_$!<WorkFAX>!$_";
  v4[67] = &off_100061A60;
  v3[68] = @"_$!<iCloud>!$_";
  v4[68] = &off_100061A78;
  v3[69] = @"_$!<iPhone>!$_";
  v4[69] = &off_100061A90;
  v3[70] = @"birthday";
  v4[70] = &off_100061AA8;
  v3[71] = @"iCloud";
  v4[71] = &off_100061AC0;
  v3[72] = @"iPhone";
  v4[72] = &off_100061AD8;
  v3[73] = CNPostalAddressStreetKey;
  v4[73] = &off_100061AF0;
  v3[74] = CNPostalAddressCityKey;
  v4[74] = &off_100061B08;
  v3[75] = CNPostalAddressStateKey;
  v4[75] = &off_100061B20;
  v3[76] = CNPostalAddressPostalCodeKey;
  v4[76] = &off_100061B38;
  v3[77] = CNPostalAddressCountryKey;
  v4[77] = &off_100061B50;
  v3[78] = CNPostalAddressISOCountryCodeKey;
  v4[78] = &off_100061B68;
  v3[79] = CNSocialProfileURLStringKey;
  v4[79] = &off_100061B80;
  v3[80] = CNSocialProfileUsernameKey;
  v4[80] = &off_100061B98;
  v3[81] = CNSocialProfileUserIdentifierKey;
  v4[81] = &off_100061BB0;
  v3[82] = CNSocialProfileServiceKey;
  v4[82] = &off_100061BC8;
  v3[83] = CNSocialProfileServiceFacebook;
  v4[83] = &off_100061BE0;
  v3[84] = CNSocialProfileServiceFlickr;
  v4[84] = &off_100061BF8;
  v3[85] = CNSocialProfileServiceLinkedIn;
  v4[85] = &off_100061C10;
  v3[86] = CNSocialProfileServiceMySpace;
  v4[86] = &off_100061C28;
  v3[87] = CNSocialProfileServiceSinaWeibo;
  v4[87] = &off_100061C40;
  v3[88] = CNSocialProfileServiceTencentWeibo;
  v4[88] = &off_100061C58;
  v3[89] = CNSocialProfileServiceTwitter;
  v4[89] = &off_100061C70;
  v3[90] = CNSocialProfileServiceYelp;
  v4[90] = &off_100061C88;
  v3[91] = CNSocialProfileServiceGameCenter;
  v4[91] = &off_100061CA0;
  v3[92] = CNInstantMessageServiceAIM;
  v4[92] = &off_100061CB8;
  v3[93] = CNInstantMessageServiceGaduGadu;
  v4[93] = &off_100061CD0;
  v3[94] = CNInstantMessageServiceGoogleTalk;
  v4[94] = &off_100061CE8;
  v3[95] = CNInstantMessageServiceICQ;
  v4[95] = &off_100061D00;
  v3[96] = CNInstantMessageServiceJabber;
  v4[96] = &off_100061D18;
  v3[97] = CNInstantMessageServiceMSN;
  v4[97] = &off_100061D30;
  v3[98] = CNInstantMessageServiceQQ;
  v4[98] = &off_100061D48;
  v3[99] = CNInstantMessageServiceSkype;
  v4[99] = &off_100061D60;
  v3[100] = CNInstantMessageServiceYahoo;
  v4[100] = &off_100061D78;
  v3[101] = CNPostalAddressSubLocalityKey;
  v4[101] = &off_100061D90;
  v3[102] = CNPostalAddressSubAdministrativeAreaKey;
  v4[102] = &off_100061DA8;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:103];
  v2 = qword_100071C28;
  qword_100071C28 = v1;
}

void sub_100018380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000183A4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_1000183BC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) store];
  v4 = *(a1 + 40);
  v10 = 0;
  v5 = [v3 executeFetchRequest:v4 error:&v10];
  v6 = v10;
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;

  objc_autoreleasePoolPop(v2);

  return v6;
}

void sub_10001890C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void *sub_100018930(uint64_t a1)
{
  v2 = [[CNContactFetchRequest alloc] initWithKeysToFetch:*(a1 + 32)];
  [v2 setUnifyResults:0];
  [v2 setMutableObjects:0];
  v13 = *(a1 + 40);
  v3 = [NSArray arrayWithObjects:&v13 count:1];
  v4 = [CNContact predicateForContactsWithIdentifiers:v3];
  [v2 setPredicate:v4];

  v5 = [*(a1 + 48) store];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100018AB0;
  v11[3] = &unk_10005D360;
  v11[4] = *(a1 + 64);
  obj = v7;
  [v5 enumerateContactsWithFetchRequest:v2 error:&obj usingBlock:v11];
  objc_storeStrong((v6 + 40), obj);

  v8 = *(*(*(a1 + 56) + 8) + 40);
  v9 = v8;

  return v8;
}

id sub_1000191AC()
{
  if (qword_100071C48 != -1)
  {
    sub_10003A5CC();
  }

  v1 = qword_100071C50;

  return v1;
}

void sub_1000191F0(id a1)
{
  v3[0] = CNContactGivenNameKey;
  v3[1] = CNContactFamilyNameKey;
  v3[2] = CNContactMiddleNameKey;
  v3[3] = CNContactNamePrefixKey;
  v3[4] = CNContactNameSuffixKey;
  v3[5] = CNContactNicknameKey;
  v3[6] = CNContactPreviousFamilyNameKey;
  v3[7] = CNContactPhoneticGivenNameKey;
  v3[8] = CNContactPhoneticMiddleNameKey;
  v3[9] = CNContactPhoneticFamilyNameKey;
  v3[10] = CNContactPronunciationGivenNameKey;
  v3[11] = CNContactPronunciationFamilyNameKey;
  v3[12] = CNContactOrganizationNameKey;
  v3[13] = CNContactPhoneticOrganizationNameKey;
  v3[14] = CNContactDepartmentNameKey;
  v3[15] = CNContactJobTitleKey;
  v3[16] = CNContactTypeKey;
  v3[17] = CNContactEmailAddressesKey;
  v3[18] = CNContactPhoneNumbersKey;
  v3[19] = CNContactPostalAddressesKey;
  v3[20] = CNContactSocialProfilesKey;
  v3[21] = CNContactInstantMessageAddressesKey;
  v3[22] = CNContactUrlAddressesKey;
  v3[23] = CNContactCalendarURIsKey;
  v3[24] = CNContactCallAlertKey;
  v3[25] = CNContactTextAlertKey;
  v3[26] = CNContactModificationDateKey;
  v3[27] = CNContactThumbnailImageDataKey;
  v3[28] = CNContactBirthdayKey;
  v3[29] = CNContactNonGregorianBirthdayKey;
  v3[30] = CNContactDatesKey;
  v3[31] = CNContactRelationsKey;
  v3[32] = CNContactNoteKey;
  v3[33] = CNContactPreferredLikenessSourceKey;
  v3[34] = CNContactPreferredApplePersonaIdentifierKey;
  v3[35] = CNContactDowntimeWhitelistKey;
  v3[36] = CNContactMemojiMetadataKey;
  v3[37] = CNContactLinkIdentifierKey;
  v3[38] = CNContactPhonemeDataKey;
  v3[39] = CNContactPreferredForImageKey;
  v3[40] = CNContactPreferredChannelKey;
  v3[41] = CNContactSharedPhotoDisplayPreferenceKey;
  v3[42] = CNContactAddressingGrammarEncryptedKey;
  v3[43] = CNContactWallpaperKey;
  v3[44] = CNContactWatchWallpaperImageDataKey;
  v3[45] = CNContactSensitiveContentConfigurationKey;
  v1 = [NSArray arrayWithObjects:v3 count:46];
  v2 = qword_100071C50;
  qword_100071C50 = v1;
}

void sub_100019730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100019748(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100019760(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v10 = 0;
  v4 = [v2 containersMatchingPredicate:v3 error:&v10];
  v5 = v10;
  v6 = [v4 firstObject];
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  return v5;
}

void sub_100019B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100019BA4(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v10 = 0;
  v4 = [v2 accountsMatchingPredicate:v3 error:&v10];
  v5 = v10;
  v6 = [v4 firstObject];
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  return v5;
}

uint64_t ABSPBContainerAttributesReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
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
        LOBYTE(v47[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v47 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v47[0] & 0x7F) << v5;
        if ((v47[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        break;
      }

      if (v13 == 1)
      {
        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(a1 + 40) |= 2u;
        while (1)
        {
          LOBYTE(v47[0]) = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:v47 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v47[0] & 0x7F) << v24;
          if ((v47[0] & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v11 = v25++ >= 9;
          if (v11)
          {
            LOBYTE(v22) = 0;
            goto LABEL_71;
          }
        }

        v22 = (v26 != 0) & ~[a2 hasError];
LABEL_71:
        v44 = 36;
        goto LABEL_80;
      }

      if (v13 != 2)
      {
        if (v13 == 3)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 40) |= 4u;
          while (1)
          {
            LOBYTE(v47[0]) = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:v47 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v47[0] & 0x7F) << v16;
            if ((v47[0] & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              LOBYTE(v22) = 0;
              goto LABEL_79;
            }
          }

          v22 = (v18 != 0) & ~[a2 hasError];
LABEL_79:
          v44 = 37;
          goto LABEL_80;
        }

LABEL_47:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_81;
      }

      v43 = objc_alloc_init(ABSPBContainerPermissions);
      objc_storeStrong((a1 + 24), v43);
      v47[0] = 0;
      v47[1] = 0;
      if (!PBReaderPlaceMark() || !ABSPBContainerPermissionsReadFrom(v43, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_81:
      v45 = [a2 position];
      if (v45 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 5)
    {
      if (v13 == 6)
      {
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 40) |= 1u;
        while (1)
        {
          LOBYTE(v47[0]) = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:v47 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v47[0] & 0x7F) << v36;
          if ((v47[0] & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v11 = v37++ >= 9;
          if (v11)
          {
            v42 = 0;
            goto LABEL_77;
          }
        }

        if ([a2 hasError])
        {
          v42 = 0;
        }

        else
        {
          v42 = v38;
        }

LABEL_77:
        *(a1 + 32) = v42;
        goto LABEL_81;
      }

      if (v13 == 7)
      {
        v14 = PBReaderReadString();
        v15 = 8;
        goto LABEL_37;
      }
    }

    else
    {
      if (v13 == 4)
      {
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 40) |= 8u;
        while (1)
        {
          LOBYTE(v47[0]) = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:v47 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v47[0] & 0x7F) << v30;
          if ((v47[0] & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v11 = v31++ >= 9;
          if (v11)
          {
            LOBYTE(v22) = 0;
            goto LABEL_73;
          }
        }

        v22 = (v32 != 0) & ~[a2 hasError];
LABEL_73:
        v44 = 38;
LABEL_80:
        *(a1 + v44) = v22;
        goto LABEL_81;
      }

      if (v13 == 5)
      {
        v14 = PBReaderReadString();
        v15 = 16;
LABEL_37:
        v23 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_81;
      }
    }

    goto LABEL_47;
  }

  return [a2 hasError] ^ 1;
}

void sub_10001B274(id a1)
{
  qword_100071C60 = objc_alloc_init(ABSContactsShadow);

  _objc_release_x1();
}

BOOL sub_10001B708(uint64_t a1, int a2, char *zSql)
{
  v3 = sqlite3_prepare_v2(*(*(a1 + 32) + 8), zSql, -1, (*(a1 + 32) + 8 * a2 + 32), 0);
  if (v3 && os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_ERROR))
  {
    sub_10003A83C();
  }

  return v3 == 0;
}

uint64_t sub_10001E1FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) guid];
  if ([*(a1 + 32) hasVcardData])
  {
    v8 = [*(a1 + 32) vcardData];
    v33 = 0;
    v9 = [CNContactVCardSerialization contactsWithData:v8 error:&v33];
    v10 = v33;

    if (v10)
    {
      if (os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_ERROR))
      {
        sub_10003AA8C();
      }

LABEL_29:
      v23 = 0;
      goto LABEL_30;
    }

    if (!v9 || [v9 count] != 1)
    {
      if (os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_ERROR))
      {
        sub_10003AB6C();
      }

      goto LABEL_29;
    }

    v27 = [[CNMutableContact alloc] initWithIdentifier:v7];
    v28 = sub_1000191A8();
    v29 = [v9 objectAtIndexedSubscript:0];
    sub_10001E6E4(v28, v29, v27);

    v9 = v27;
  }

  else
  {
    v11 = [*(a1 + 32) hasFastEncodingData];
    v12 = *(a1 + 32);
    if (v11)
    {
      v13 = [v12 fastEncodingData];
      v14 = [v13 CNFSDeserialize];
    }

    else
    {
      if (![v12 hasPb])
      {
        if (os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_ERROR))
        {
          sub_10003AA50();
        }

        v31 = [NSError errorWithDomain:@"InvalidProtobuf" code:-1 userInfo:0];
        objc_exception_throw(v31);
      }

      v13 = [*(a1 + 32) pb];
      v14 = [v13 toContact];
    }

    v9 = v14;
  }

  v15 = [*(a1 + 32) thumbnail];
  [v9 setImageData:v15];

  [v9 setSharedPhotoDisplayPreference:{objc_msgSend(*(a1 + 32), "sharedPhotoDisplayPreference")}];
  [*(a1 + 40) _processSpecialRulesFieldsForContact:v9 wrapper:*(a1 + 32)];
  v16 = [*(a1 + 32) accountExternalIdentifier];
  [v6 addContact:v9 toContainerWithIdentifier:*(a1 + 48)];
  v17 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(a1 + 48);
    *buf = 134218240;
    v35 = v18;
    v36 = 2048;
    v37 = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "_addContactFromContactWrapper_LOCKED: toContainerWithIdentifier:%p accountExternalIdentifier:%p", buf, 0x16u);
  }

  if ([*(a1 + 32) hasIsMe] && objc_msgSend(*(a1 + 32), "isMe"))
  {
    v19 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Forcing save for meCard or linkage.", buf, 2u);
    }

    v20 = +[ABSContactsInterface sharedInstance];
    [v20 sendMultisaveBegin];

    v32 = 0;
    v21 = [v5 ABSexecuteSaveRequest:v6 error:&v32];
    v10 = v32;
    if ((v21 & 1) == 0 && os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_10003AAFC();
    }

    v22 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Possibly ME card on add.", buf, 2u);
    }

    [v5 ABSsetMeCardConditionally:v9];
    v6 = 0;
    v23 = 1;
  }

  else
  {
    v23 = 0;
    v10 = 0;
  }

  v24 = *(a1 + 40);
  v25 = [*(a1 + 32) linkTos];
  v26 = [*(a1 + 32) linkGuid];
  [v24 _bindLinks:v25 contact:v9 guid:v26 store:v5];

LABEL_30:
  return v23;
}

void sub_10001E6E4(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v20 = a2;
  v19 = a3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    v9 = CNContactWallpaperKey;
    v10 = CNContactWatchWallpaperImageDataKey;
    v11 = CNContactSensitiveContentConfigurationKey;
    v18 = CNContactWatchWallpaperImageDataKey;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        if (([v13 isEqual:CNContactThumbnailImageDataKey] & 1) == 0 && (objc_msgSend(v13, "isEqual:", v9) & 1) == 0 && (objc_msgSend(v13, "isEqual:", v10) & 1) == 0 && (objc_msgSend(v13, "isEqual:", v11) & 1) == 0)
        {
          v14 = v11;
          v15 = v19;
          v16 = v13;
          v17 = [v20 valueForKey:v16];
          if (v17)
          {
            [v15 setValue:v17 forKey:v16];
          }

          else
          {
            [v15 setNilValueForKey:v16];
          }

          v11 = v14;
          v10 = v18;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }
}

uint64_t sub_10001ED00(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([a1[4] hasVcardData])
  {
    v7 = [a1[4] vcardData];
    v29 = 0;
    v8 = [CNContactVCardSerialization contactsWithData:v7 error:&v29];
    v9 = v29;

    if (v9)
    {
      if (os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_ERROR))
      {
        sub_10003AA8C();
      }

LABEL_27:
      v19 = 0;
      goto LABEL_28;
    }

    if (!v8 || [v8 count] != 1)
    {
      if (os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_ERROR))
      {
        sub_10003AB6C();
      }

      goto LABEL_27;
    }

    v24 = [v8 objectAtIndexedSubscript:0];

    v8 = v24;
  }

  else
  {
    v10 = [a1[4] hasFastEncodingData];
    v11 = a1[4];
    if (v10)
    {
      v12 = [v11 fastEncodingData];
      v13 = [v12 CNFSDeserialize];
    }

    else
    {
      if (![v11 hasPb])
      {
        if (os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_ERROR))
        {
          sub_10003AC20();
        }

        v26 = [NSError errorWithDomain:@"InvalidProtobuf" code:-1 userInfo:0];
        objc_exception_throw(v26);
      }

      v12 = [a1[4] pb];
      v13 = [v12 toContact];
    }

    v8 = v13;
  }

  v14 = sub_1000191A8();
  sub_10001E6E4(v14, v8, a1[5]);
  [a1[6] _processSpecialRulesFieldsForContact:a1[5] wrapper:a1[4]];
  [a1[5] setSharedPhotoDisplayPreference:{objc_msgSend(a1[4], "sharedPhotoDisplayPreference")}];
  [v6 updateContact:a1[5]];
  if ([a1[4] hasIsMe] && objc_msgSend(a1[4], "isMe"))
  {
    v15 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Forcing save for meCard.", buf, 2u);
    }

    v16 = +[ABSContactsInterface sharedInstance];
    [v16 sendMultisaveBegin];

    v27 = 0;
    v17 = [v5 ABSexecuteSaveRequest:v6 error:&v27];
    v9 = v27;
    if ((v17 & 1) == 0 && os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_10003AAFC();
    }

    v18 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Possibly setting ME card on modify.", buf, 2u);
    }

    [v5 ABSsetMeCardConditionally:a1[5]];

    v6 = 0;
    v19 = 1;
  }

  else
  {
    v9 = 0;
    v19 = 0;
  }

  v20 = a1[6];
  v21 = [a1[4] linkTos];
  v22 = a1[5];
  v23 = [a1[4] linkGuid];
  [v20 _bindLinks:v21 contact:v22 guid:v23 store:v5];

LABEL_28:
  return v19;
}

void sub_10001F4AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001F4C4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001F4DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) accountExternalIdentifier];
  v5 = [*(a1 + 32) containerAttributes];
  [v5 setAccountExternalIdentifier:v4];

  v6 = [v3 defaultContainerIdentifier];
  v7 = sub_1000191A8();
  v8 = [[CNContactFetchRequest alloc] initWithKeysToFetch:v7];
  [v8 setUnifyResults:0];
  [v8 setMutableObjects:1];
  v24 = *(a1 + 40);
  v9 = [NSArray arrayWithObjects:&v24 count:1];
  v10 = [CNContact predicateForContactsWithIdentifiers:v9];
  [v8 setPredicate:v10];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10001F7D0;
  v20[3] = &unk_10005D360;
  v20[4] = *(a1 + 64);
  v21 = 0;
  [v3 enumerateContactsWithFetchRequest:v8 error:&v21 usingBlock:v20];
  v11 = v21;
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v12 = [*(a1 + 48) reality];
    v13 = [v12 accountExternalIdentifierForContact:*(*(*(a1 + 64) + 8) + 40) inStore:v3];

    v14 = [*(a1 + 32) accountExternalIdentifier];
    [*(a1 + 48) _modifyContactFromContactWrapper_LOCKED:*(a1 + 32) toContact:*(*(*(a1 + 64) + 8) + 40)];
  }

  else
  {
    v15 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 40);
      *buf = 138543362;
      v23 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Adding new contact GUID: %{public}@", buf, 0xCu);
    }

    [*(a1 + 48) _addContactFromContactWrapper_LOCKED:*(a1 + 32) toContainerWithIdentifier:v6];
  }

  v17 = [*(a1 + 32) accountExternalIdentifier];

  if (v17)
  {
    v18 = [*(a1 + 56) accountIdentifiers];
    v19 = [*(a1 + 32) accountExternalIdentifier];
    [v18 addObject:v19];
  }
}

uint64_t sub_10001F8D4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v24 = CNContactIdentifierKey;
  v6 = a2;
  v7 = [NSArray arrayWithObjects:&v24 count:1];
  v8 = [[CNContactFetchRequest alloc] initWithKeysToFetch:v7];
  [v8 setMutableObjects:1];
  [v8 setUnifyResults:0];
  v10 = *(a1 + 32);
  v9 = (a1 + 32);
  v23 = v10;
  v11 = [NSArray arrayWithObjects:&v23 count:1];
  v12 = [CNContact predicateForContactsWithIdentifiers:v11];
  [v8 setPredicate:v12];

  v20 = 0;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10001FB20;
  v18[3] = &unk_10005D490;
  v13 = v5;
  v19 = v13;
  [v6 enumerateContactsWithFetchRequest:v8 error:&v20 usingBlock:v18];

  v14 = v20;
  v15 = *(qword_100071D00 + 8);
  if (v14)
  {
    if (os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_10003AC98(v9, v14, v15);
    }
  }

  else if (os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_DEFAULT))
  {
    v16 = *v9;
    *buf = 138543362;
    v22 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Deleted contact; GUID: %{public}@", buf, 0xCu);
  }

  return 0;
}

id sub_10001FB20(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) deleteContact:a2];
  *a3 = 1;
  return result;
}

void sub_10001FC24(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) guid];
  [v1 _deleteContactForGUID_LOCKED:v2];
}

BOOL sub_10001FD58(id a1, CNContactStore *a2, CNSaveRequest *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [[ABSContactsResetSource alloc] initWithKeys:&__NSArray0__struct store:v4 lmaData:0];
  v7 = [[NSMutableArray alloc] initWithCapacity:50];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10001FF10;
  v20[3] = &unk_10005D520;
  v21 = v4;
  v22 = v5;
  v8 = v5;
  v9 = v4;
  v10 = objc_retainBlock(v20);
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100020188;
  v17 = &unk_10005D548;
  v11 = v7;
  v18 = v11;
  v12 = v10;
  v19 = v12;
  [(ABSContactsResetSource *)v6 enumerateContactsAdd:&v14 remove:&stru_10005D588 lmaAdd:&stru_10005D5C8];
  if ([v11 count])
  {
    (v12[2])(v12, v11);
  }

  return 0;
}

void sub_10001FF10(uint64_t a1, void *a2)
{
  v3 = a2;
  v24 = CNContactIdentifierKey;
  v4 = [NSArray arrayWithObjects:&v24 count:1];
  v5 = [[CNContactFetchRequest alloc] initWithKeysToFetch:v4];
  [v5 setMutableObjects:1];
  [v5 setUnifyResults:0];
  v6 = [CNContact predicateForContactsWithIdentifiers:v3];
  [v5 setPredicate:v6];

  v22 = 0;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10002017C;
  v20[3] = &unk_10005D490;
  v7 = *(a1 + 32);
  v21 = *(a1 + 40);
  [v7 enumerateContactsWithFetchRequest:v5 error:&v22 usingBlock:v20];
  v8 = v22;
  if (v8 && os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_ERROR))
  {
    sub_10003AD24();
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v3;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        v15 = +[ABSContactsShadow instance];
        [v15 remove:v14];

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v23 count:16];
    }

    while (v11);
  }
}

uint64_t sub_100020188(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[ABSContactsShadow instance];
  v5 = [v3 identifier];
  v6 = [v4 contains:v5];

  if ((v6 & 1) == 0)
  {
    v7 = *(a1 + 32);
    v8 = [v3 identifier];
    [v7 addObject:v8];

    if ([*(a1 + 32) count] >= 0x32)
    {
      v9 = *(a1 + 32);
      (*(*(a1 + 40) + 16))();
      [*(a1 + 32) removeAllObjects];
    }
  }

  return 1;
}

uint64_t ABSPBAccountsSyncObjectReadFrom(uint64_t a1, void *a2)
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
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = PBReaderReadString();
        v21 = *(a1 + 8);
        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            LOBYTE(v19) = 0;
            goto LABEL_32;
          }
        }

        v19 = (v15 != 0) & ~[a2 hasError];
LABEL_32:
        *(a1 + 16) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ABSPBLinkToReadFrom(uint64_t a1, void *a2)
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
        v32 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v32 & 0x7F) << v5;
        if ((v32 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 20) |= 2u;
        while (1)
        {
          v33 = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v33 & 0x7F) << v23;
          if ((v33 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            LOBYTE(v22) = 0;
            goto LABEL_44;
          }
        }

        v22 = (v25 != 0) & ~[a2 hasError];
LABEL_44:
        v30 = 17;
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 1)
          {
            v14 = PBReaderReadString();
            v15 = *(a1 + 8);
            *(a1 + 8) = v14;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_46;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v34 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v34 & 0x7F) << v16;
          if ((v34 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            LOBYTE(v22) = 0;
            goto LABEL_42;
          }
        }

        v22 = (v18 != 0) & ~[a2 hasError];
LABEL_42:
        v30 = 16;
      }

      *(a1 + v30) = v22;
LABEL_46:
      v31 = [a2 position];
    }

    while (v31 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_10002187C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002189C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000218B4(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) accountExternalIdentifierForContact:*(a1 + 40) inStore:a2];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return _objc_release_x1();
}

id sub_100023060(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v6 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000230F4;
  v5[3] = &unk_10005D360;
  v5[4] = a1[6];
  [v2 enumerateContactsWithFetchRequest:v1 error:&v6 usingBlock:v5];
  v3 = v6;

  return v3;
}

void sub_10002326C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

void sub_1000232CC(id a1)
{
  qword_100071C78 = objc_alloc_init(ABSDatabaseFileManager);

  _objc_release_x1();
}

void sub_100023558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100023570(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100023588(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 UUIDString];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return _objc_release_x1();
}

void sub_1000236D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100023CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100023CD8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100023CF0(uint64_t a1)
{
  v2 = [*(a1 + 32) initWithContact_LOCKED:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_100023ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100023EE4(uint64_t a1)
{
  v2 = [*(a1 + 32) initWithIdentifier_LOCKED:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_1000241E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100024218(uint64_t a1, void *a2)
{
  v13[0] = CNContactIdentifierKey;
  v13[1] = CNContactPreferredForNameKey;
  v13[2] = CNContactPreferredForImageKey;
  v3 = a2;
  v4 = [NSArray arrayWithObjects:v13 count:3];
  v5 = [[CNContactFetchRequest alloc] initWithKeysToFetch:v4];
  v12 = *(a1 + 32);
  v6 = [NSArray arrayWithObjects:&v12 count:1];
  v7 = [CNContact predicateForContactsWithIdentifiers:v6];
  [v5 setPredicate:v7];

  [v5 setUnifyResults:1];
  [v5 setMutableObjects:0];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002440C;
  v10[3] = &unk_10005D360;
  v10[4] = *(a1 + 40);
  v11 = 0;
  [v3 enumerateContactsWithFetchRequest:v5 error:&v11 usingBlock:v10];

  v8 = v11;
  if (v8)
  {
    v9 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10003B1F0(v8, v9);
    }
  }
}

uint64_t sub_10002440C(uint64_t a1, void *a2)
{
  v3 = [a2 linkedContacts];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return _objc_release_x1();
}

void sub_100024530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100024548(uint64_t a1, void *a2)
{
  v10 = CNContactIdentifierKey;
  v3 = a2;
  v4 = [NSArray arrayWithObjects:&v10 count:1];
  v5 = [[CNContactFetchRequest alloc] initWithKeysToFetch:v4];
  v6 = [*(*(a1 + 32) + 8) allKeys];
  v7 = [CNContact predicateForContactsWithIdentifiers:v6];
  [v5 setPredicate:v7];

  [v5 setUnifyResults:0];
  [v5 setMutableObjects:0];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000246C4;
  v8[3] = &unk_10005D360;
  v8[4] = *(a1 + 40);
  v9 = 0;
  [v3 enumerateContactsWithFetchRequest:v5 error:&v9 usingBlock:v8];
}

void sub_1000247E8(uint64_t a1, void *a2)
{
  v16[0] = CNContactIdentifierKey;
  v16[1] = CNContactPreferredForNameKey;
  v16[2] = CNContactPreferredForImageKey;
  v16[3] = CNContactLinkIdentifierKey;
  v3 = a2;
  v4 = [NSArray arrayWithObjects:v16 count:4];
  v5 = [[CNContactFetchRequest alloc] initWithKeysToFetch:v4];
  v6 = [*(*(a1 + 32) + 8) allKeys];
  v7 = [CNContact predicateForContactsWithIdentifiers:v6];
  [v5 setPredicate:v7];

  [v5 setUnifyResults:0];
  [v5 setMutableObjects:1];
  v15 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100024A58;
  v13[3] = &unk_10005D490;
  v14 = *(a1 + 40);
  [v3 enumerateContactsWithFetchRequest:v5 error:&v15 usingBlock:v13];

  v8 = v15;
  if (v8)
  {
    v9 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10003B268(v8, v9);
    }
  }

  else
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100024A64;
    v11[3] = &unk_10005D688;
    v10 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v12 = *(a1 + 48);
    [v10 enumerateObjectsUsingBlock:v11];
  }
}

void sub_100024A64(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 8);
  v6 = a2;
  v4 = [v6 identifier];
  v5 = [v3 objectForKeyedSubscript:v4];
  [v5 integerValue];

  (*(*(a1 + 40) + 16))();
}

void sub_100024BE4(id a1)
{
  qword_100071C88 = objc_alloc_init(ABSContactsLinkCluster);

  _objc_release_x1();
}

uint64_t ABSPBLabeledStringReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
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
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___ABSPBLabeledString__value;
LABEL_21:
        v14 = PBReaderReadString();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___ABSPBLabeledString__label;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ABSPBCountValidationObjectReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
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
        v43 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v43 & 0x7F) << v5;
        if ((v43 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 == 3)
      {
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 36) |= 1u;
        while (1)
        {
          v44 = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v44 & 0x7F) << v35;
          if ((v44 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v11 = v36++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_73;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v37;
        }

LABEL_73:
        v41 = 8;
LABEL_74:
        *(a1 + v41) = v20;
        goto LABEL_75;
      }

      if (v13 != 4)
      {
LABEL_40:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_75;
      }

      v21 = 0;
      v22 = 0;
      v23 = 0;
      *(a1 + 36) |= 8u;
      while (1)
      {
        v47 = 0;
        v24 = [a2 position] + 1;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v23 |= (v47 & 0x7F) << v21;
        if ((v47 & 0x80) == 0)
        {
          break;
        }

        v21 += 7;
        v11 = v22++ >= 9;
        if (v11)
        {
          LOBYTE(v27) = 0;
          goto LABEL_65;
        }
      }

      v27 = (v23 != 0) & ~[a2 hasError];
LABEL_65:
      *(a1 + 32) = v27;
LABEL_75:
      v42 = [a2 position];
      if (v42 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v29 = 0;
      v30 = 0;
      v31 = 0;
      *(a1 + 36) |= 2u;
      while (1)
      {
        v46 = 0;
        v32 = [a2 position] + 1;
        if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
        {
          v34 = [a2 data];
          [v34 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v31 |= (v46 & 0x7F) << v29;
        if ((v46 & 0x80) == 0)
        {
          break;
        }

        v29 += 7;
        v11 = v30++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_69;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v31;
      }

LABEL_69:
      v41 = 16;
    }

    else
    {
      if (v13 != 2)
      {
        goto LABEL_40;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 36) |= 4u;
      while (1)
      {
        v45 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v45 & 0x7F) << v14;
        if ((v45 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_63;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v16;
      }

LABEL_63:
      v41 = 24;
    }

    goto LABEL_74;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ABSPBSyncObjectReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v27) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27 & 0x7F) << v5;
        if ((v27 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 4)
      {
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v14 = objc_alloc_init(ABSPBFavoritesSyncObject);
            objc_storeStrong((a1 + 56), v14);
            v27 = 0;
            v28 = 0;
            if (!PBReaderPlaceMark() || !ABSPBFavoritesSyncObjectReadFrom(v14, a2))
            {
LABEL_73:

              return 0;
            }

            goto LABEL_61;
          }

          if (v13 == 4)
          {
            v14 = objc_alloc_init(ABSPBCountValidationObject);
            objc_storeStrong((a1 + 40), v14);
            v27 = 0;
            v28 = 0;
            if (!PBReaderPlaceMark() || !ABSPBCountValidationObjectReadFrom(v14, a2))
            {
              goto LABEL_73;
            }

            goto LABEL_61;
          }
        }

        else
        {
          if (v13 == 1)
          {
            v14 = objc_alloc_init(ABSPBContactWrapper);
            objc_storeStrong((a1 + 24), v14);
            v27 = 0;
            v28 = 0;
            if (!PBReaderPlaceMark() || !ABSPBContactWrapperReadFrom(v14, a2))
            {
              goto LABEL_73;
            }

            goto LABEL_61;
          }

          if (v13 == 2)
          {
            v14 = objc_alloc_init(ABSPBDeleteWrapper);
            objc_storeStrong((a1 + 48), v14);
            v27 = 0;
            v28 = 0;
            if (!PBReaderPlaceMark() || !ABSPBDeleteWrapperReadFrom(v14, a2))
            {
              goto LABEL_73;
            }

            goto LABEL_61;
          }
        }
      }

      else if (v13 <= 6)
      {
        if (v13 == 5)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          *(a1 + 76) |= 2u;
          while (1)
          {
            LOBYTE(v27) = 0;
            v20 = [a2 position] + 1;
            if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
            {
              v22 = [a2 data];
              [v22 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v19 |= (v27 & 0x7F) << v17;
            if ((v27 & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v11 = v18++ >= 9;
            if (v11)
            {
              v23 = 0;
              goto LABEL_69;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v19;
          }

LABEL_69:
          *(a1 + 72) = v23;
          goto LABEL_62;
        }

        if (v13 == 6)
        {
          *(a1 + 76) |= 1u;
          v27 = 0;
          v15 = [a2 position] + 8;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:&v27 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v27;
          goto LABEL_62;
        }
      }

      else
      {
        switch(v13)
        {
          case 7:
            v14 = objc_alloc_init(ABSPBAccountsSyncObject);
            objc_storeStrong((a1 + 16), v14);
            v27 = 0;
            v28 = 0;
            if (!PBReaderPlaceMark() || !ABSPBAccountsSyncObjectReadFrom(v14, a2))
            {
              goto LABEL_73;
            }

            goto LABEL_61;
          case 8:
            v14 = objc_alloc_init(ABSPBContainerAttributes);
            objc_storeStrong((a1 + 32), v14);
            v27 = 0;
            v28 = 0;
            if (!PBReaderPlaceMark() || !ABSPBContainerAttributesReadFrom(v14, a2))
            {
              goto LABEL_73;
            }

            goto LABEL_61;
          case 9:
            v14 = objc_alloc_init(ABSPBLimitedAccessSyncData);
            objc_storeStrong((a1 + 64), v14);
            v27 = 0;
            v28 = 0;
            if (!PBReaderPlaceMark() || !ABSPBLimitedAccessSyncDataReadFrom(v14, a2))
            {
              goto LABEL_73;
            }

LABEL_61:
            PBReaderRecallMark();

            goto LABEL_62;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_62:
      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ABSPBLimitedAccessSyncDataReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v31[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31[0] & 0x7F) << v5;
        if ((v31[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v28 = objc_alloc_init(ABSPBLimitedAccessObject);
        [a1 addSyncEvents:v28];
        v31[0] = 0;
        v31[1] = 0;
        if (!PBReaderPlaceMark() || !ABSPBLimitedAccessObjectReadFrom(v28, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v13 == 2)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 28) |= 2u;
        while (1)
        {
          LOBYTE(v31[0]) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v31[0] & 0x7F) << v21;
          if ((v31[0] & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            LOBYTE(v27) = 0;
            goto LABEL_44;
          }
        }

        v27 = (v23 != 0) & ~[a2 hasError];
LABEL_44:
        *(a1 + 24) = v27;
      }

      else if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          LOBYTE(v31[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v31[0] & 0x7F) << v14;
          if ((v31[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_48;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_48:
        *(a1 + 8) = v20;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ABSPBAlertReadFrom(uint64_t a1, void *a2)
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
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          v27 = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v27 & 0x7F) << v17;
          if ((v27 & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v11 = v18++ >= 9;
          if (v11)
          {
            LOBYTE(v23) = 0;
            goto LABEL_35;
          }
        }

        v23 = (v19 != 0) & ~[a2 hasError];
LABEL_35:
        *(a1 + 24) = v23;
      }

      else
      {
        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 16;
        }

        else
        {
          if (v13 != 1)
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_36;
          }

          v14 = PBReaderReadString();
          v15 = 8;
        }

        v16 = *(a1 + v15);
        *(a1 + v15) = v14;
      }

LABEL_36:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1000294C0(id a1)
{
  v3 = [objc_opt_class() pairingID];
  v1 = [NSString stringWithFormat:@"com.apple.watch.contactsync.%@", v3];
  v2 = qword_100071C98;
  qword_100071C98 = v1;
}

void sub_100029914(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (atomic_fetch_add(&dword_100071CA0, 1u))
  {
    if (os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_10003B308();
    }

    [NDTCrashSynthesizer writeCrashReport:@"Thread lockup detected."];
    exit(-1);
  }

  v3 = v2;
  if (+[ABSValidationSyncObject validationEnabled])
  {
    v4 = objc_alloc_init(ABSValidationSyncObject);
    v5 = *(a1 + 32);
    v6 = *(v5 + 152);
    *(v5 + 152) = v4;
  }

  [*(a1 + 32) _batchSupplier];
  atomic_fetch_add(&dword_100071CA0, 0xFFFFFFFF);

  objc_autoreleasePoolPop(v3);
}

void sub_10002A2C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002A2F8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  usleep([v3 delayUs]);
  v5 = (*(*(a1 + 40) + 16))();

  return v5;
}

uint64_t sub_10002A358(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = (*(*(a1 + 40) + 16))();
    if (v4)
    {
      --*(*(*(a1 + 64) + 8) + 24);
      [*(a1 + 32) setCount:{objc_msgSend(*(a1 + 32), "count") + 1}];
    }

    else
    {
      v5 = *(qword_100071D00 + 8);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "enqueueChange returned no for contacts.", v7, 2u);
      }

      +[ABSSyncObject oops];
      *(*(*(a1 + 48) + 8) + 24) = 0;
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    v4 = 1;
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  return v4;
}

uint64_t sub_10002A770(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 128);
  if (!v5)
  {
    v7 = 0;
    goto LABEL_5;
  }

  v6 = [v5 finished];
  v4 = *(a1 + 32);
  if (v6)
  {
    v7 = *(v4 + 128);
LABEL_5:
    v8 = 0;
    *(v4 + 128) = 0;
    goto LABEL_10;
  }

  v8 = 1;
  if (*(v4 + 192))
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  [v3 setChangeType:v9];
  [*(*(a1 + 32) + 128) push:v3];
  v7 = [*(a1 + 32) progressReporter];
  v10 = [*(a1 + 32) contactsSource];
  [v10 progress];
  [v7 bearWitness:?];

LABEL_10:
  return v8;
}

uint64_t sub_10002A84C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [ABSContactsSyncObject alloc];
  v5 = *(a1 + 32);
  v6 = [v3 identifier];
  v7 = -[ABSContactsSyncObject initWithReality:person:isMe:](v4, "initWithReality:person:isMe:", v5, v3, [v5 isMeContact:v6]);

  v8 = (*(*(a1 + 40) + 16))();
  return v8;
}

uint64_t sub_10002A8F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[ABSDeleteObject alloc] initWithGuid:v3];

  [*(*(a1 + 32) + 128) push:v4];
  return 1;
}

uint64_t sub_10002A968(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[ABSContactsSyncObject alloc] initWithLMASyncData:v3];

  v5 = (*(*(a1 + 32) + 16))();
  return v5;
}

void sub_10002ACCC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t sub_10002ACE8(uint64_t result)
{
  if (!result)
  {
    sub_10003B524();
  }

  dword_100071900 = result;
  return result;
}

uint64_t sub_10002AD08(uint64_t result)
{
  if (!result)
  {
    sub_10003B550();
  }

  dword_100071904 = result;
  return result;
}

NSObject *sub_10002AD4C(const char *a1, dispatch_qos_class_t a2)
{
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_attr_make_with_qos_class(v4, a2, 0);

  v6 = dispatch_queue_attr_make_initially_inactive(v5);

  v7 = dispatch_queue_create(a1, v6);
  dispatch_set_qos_class_fallback();
  dispatch_activate(v7);

  return v7;
}

void sub_10002AF74(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[CNFavorites alloc] initWithContactStore:v3];

  v5 = *(a1 + 32);
  v6 = *(v5 + 24);
  *(v5 + 24) = v4;
}

uint64_t sub_10002B288(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10002B2A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[CNFavorites alloc] initWithContactStore:v3];

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_10002BAB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002BAE4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CNContactFetchRequest alloc];
  v19 = CNContactIdentifierKey;
  v5 = [NSArray arrayWithObjects:&v19 count:1];
  v6 = [v4 initWithKeysToFetch:v5];

  v7 = [*(a1 + 32) contactProperty];
  v8 = [v7 contact];
  v9 = [v8 identifier];
  v18 = v9;
  v10 = [NSArray arrayWithObjects:&v18 count:1];
  v11 = [CNContact predicateForContactsWithIdentifiers:v10];
  [v6 setPredicate:v11];

  [v6 setUnifyResults:0];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10002BD1C;
  v14[3] = &unk_10005D360;
  v14[4] = *(a1 + 48);
  v15 = 0;
  [v3 enumerateContactsWithFetchRequest:v6 error:&v15 usingBlock:v14];

  v12 = v15;
  if (v12)
  {
    v13 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Error fetching favorite guid: %{public}@", buf, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

uint64_t ABSPBDateReadFrom(uint64_t a1, void *a2)
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
        v55 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v55 & 0x7F) << v5;
        if ((v55 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v33 = 0;
            v34 = 0;
            v35 = 0;
            *(a1 + 32) |= 0x10u;
            while (1)
            {
              v58 = 0;
              v36 = [a2 position] + 1;
              if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
              {
                v38 = [a2 data];
                [v38 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v35 |= (v58 & 0x7F) << v33;
              if ((v58 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v11 = v34++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_87;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v35;
            }

LABEL_87:
            v53 = 24;
            break;
          case 5:
            v47 = 0;
            v48 = 0;
            v49 = 0;
            *(a1 + 32) |= 8u;
            while (1)
            {
              v57 = 0;
              v50 = [a2 position] + 1;
              if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
              {
                v52 = [a2 data];
                [v52 getBytes:&v57 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v49 |= (v57 & 0x7F) << v47;
              if ((v57 & 0x80) == 0)
              {
                break;
              }

              v47 += 7;
              v11 = v48++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_101;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v49;
            }

LABEL_101:
            v53 = 20;
            break;
          case 6:
            v21 = 0;
            v22 = 0;
            v23 = 0;
            *(a1 + 32) |= 2u;
            while (1)
            {
              v56 = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                v26 = [a2 data];
                [v26 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v23 |= (v56 & 0x7F) << v21;
              if ((v56 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v11 = v22++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_95;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v23;
            }

LABEL_95:
            v53 = 12;
            break;
          default:
LABEL_60:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_103;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v27 = 0;
            v28 = 0;
            v29 = 0;
            *(a1 + 32) |= 1u;
            while (1)
            {
              v60 = 0;
              v30 = [a2 position] + 1;
              if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
              {
                v32 = [a2 data];
                [v32 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v29 |= (v60 & 0x7F) << v27;
              if ((v60 & 0x80) == 0)
              {
                break;
              }

              v27 += 7;
              v11 = v28++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_83;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v29;
            }

LABEL_83:
            v53 = 8;
            break;
          case 2:
            v40 = 0;
            v41 = 0;
            v42 = 0;
            *(a1 + 32) |= 0x20u;
            while (1)
            {
              v61 = 0;
              v43 = [a2 position] + 1;
              if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
              {
                v45 = [a2 data];
                [v45 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v42 |= (v61 & 0x7F) << v40;
              if ((v61 & 0x80) == 0)
              {
                break;
              }

              v40 += 7;
              v11 = v41++ >= 9;
              if (v11)
              {
                LOBYTE(v46) = 0;
                goto LABEL_97;
              }
            }

            v46 = (v42 != 0) & ~[a2 hasError];
LABEL_97:
            *(a1 + 28) = v46;
            goto LABEL_103;
          case 3:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 32) |= 4u;
            while (1)
            {
              v59 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v59 & 0x7F) << v14;
              if ((v59 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_91;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_91:
            v53 = 16;
            break;
          default:
            goto LABEL_60;
        }
      }

      *(a1 + v53) = v20;
LABEL_103:
      v54 = [a2 position];
    }

    while (v54 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_10002DAC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002DAE0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t ABSPBPostalAddressReadFrom(uint64_t a1, void *a2)
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
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = (v12 >> 3) - 1;
      if (v13 >= 9)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = off_10005D8D0[v13];
        v15 = PBReaderReadString();
        v16 = *v14;
        v17 = *(a1 + v16);
        *(a1 + v16) = v15;
      }

      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_10002F5AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002F5D0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_10002F5E8(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 containersMatchingPredicate:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(*(a1[7] + 8) + 40);

  return v8;
}

void sub_100030274(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v2, "identifier");
  v4 = class_getInstanceMethod(v2, "abs_identifier");

  method_exchangeImplementations(InstanceMethod, v4);
}

uint64_t ABSPBDeleteWrapperReadFrom(uint64_t a1, void *a2)
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
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_100030968(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 unifiedContactCountWithError:0];
  v11 = v4;
  if (v4)
  {
    v5 = [v4 integerValue];
  }

  else
  {
    v5 = -1;
  }

  *(*(a1 + 32) + 24) = v5;
  v6 = [[CNFavorites alloc] initWithContactStore:v3];
  v7 = [v6 entries];
  *(*(a1 + 32) + 32) = [v7 count];

  v8 = [[CNContactFetchRequest alloc] initWithKeysToFetch:&__NSArray0__struct];
  [v8 setUnifyResults:0];
  v9 = [v3 contactCountForFetchRequest:v8 error:0];

  if (v9)
  {
    v10 = [v9 integerValue];
  }

  else
  {
    v10 = -1;
  }

  *(*(a1 + 32) + 16) = v10;
}

void sub_100031200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100031218(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100031230(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CNAccount predicateForAccountWithExternalIdentifier:*(a1 + 32)];
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = sub_100031218;
  v38 = sub_100031228;
  v39 = 0;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100031544;
  v30[3] = &unk_10005D2C0;
  v33 = &v34;
  v5 = v3;
  v31 = v5;
  v6 = v4;
  v32 = v6;
  v7 = sub_100004D58(v30);
  if (v7)
  {
    v8 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10003BAB4(v8);
    }
  }

  else
  {
    v9 = [v35[5] firstObject];
    v10 = [v9 identifier];
    v11 = [CNContainer predicateForContainersInAccountWithIdentifier:v10];

    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = sub_100031218;
    v28 = sub_100031228;
    v29 = 0;
    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_1000315B4;
    v20 = &unk_10005D2C0;
    v23 = &v24;
    v21 = v5;
    v12 = v11;
    v22 = v12;
    v7 = sub_100004D58(&v17);
    if (v7)
    {
      v13 = *(qword_100071D00 + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10003BAF8(v7, v13);
      }
    }

    else
    {
      v14 = [v25[5] firstObject];
      v15 = *(*(a1 + 40) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;
    }

    _Block_object_dispose(&v24, 8);
  }

  _Block_object_dispose(&v34, 8);
}

id sub_100031544(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v10 = 0;
  v4 = [v2 accountsMatchingPredicate:v3 error:&v10];
  v5 = v10;
  v6 = v10;
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v4;

  return v5;
}

id sub_1000315B4(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v10 = 0;
  v4 = [v2 containersMatchingPredicate:v3 error:&v10];
  v5 = v10;
  v6 = v10;
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v4;

  return v5;
}

void sub_100031B00(id a1)
{
  info = 0;
  mach_timebase_info(&info);
  qword_100071CB8 = (info.numer << 8) / info.denom;
}

void sub_100031D4C(id a1)
{
  info = 0;
  if (!mach_timebase_info(&info))
  {
    LODWORD(v1) = info.numer;
    LODWORD(v2) = info.denom;
    *&qword_100071980 = v1 / v2;
  }
}

__CFString *sub_100032878(void *a1)
{
  if (byte_100071CD0 == 1)
  {
    if (a1)
    {
      v1 = a1;
      v2 = CFGetTypeID(v1);
      if (v2 == CFNumberGetTypeID())
      {
        if (qword_100071CE0 != -1)
        {
          sub_10003BB98();
        }

        StringWithNumber = CFNumberFormatterCreateStringWithNumber(0, qword_100071CD8, v1);
      }

      else
      {
        StringWithNumber = [v1 description];
      }

      v5 = StringWithNumber;
      if (StringWithNumber)
      {
        v4 = sub_1000329A0(StringWithNumber);
      }

      else
      {
        v4 = @"[VOID]";
      }
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = a1;
  }

  return v4;
}

__CFString *sub_1000329A0(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (+[NDTLog obfuscate])
    {
      v2 = [v1 UTF8String];
      v3 = strlen(v2);
      v4 = [NSString stringWithFormat:@">%08x<", crc32(0, v2, v3)];
    }

    else
    {
      v4 = v1;
    }

    v5 = v4;
  }

  else
  {
    v5 = @"(nil)";
  }

  return v5;
}

uint64_t ABSPBFavoritesSyncObjectReadFrom(void *a1, void *a2)
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
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(ABSPBFavoritesEntry);
        [a1 addEntry:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !ABSPBFavoritesEntryReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000339F0(uint64_t a1)
{
  v2 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Unmarking shadows...", buf, 2u);
  }

  v3 = [*(a1 + 32) syncController];
  [v3 clearShadowMarks];

  v4 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "...shadow marks cleared.", v6, 2u);
  }

  return (*(*(a1 + 48) + 16))();
}

void sub_100034260(id a1)
{
  if (!qword_100071CE8)
  {
    qword_100071CE8 = objc_alloc_init(ABSyncInterface);

    _objc_release_x1();
  }
}

double sub_1000347B8(id a1, double a2)
{
  v2 = a2 * 1.4;
  v3 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10003BD24(v3, v2);
  }

  if (v2 > 60.0)
  {
    if (os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_10003BDA0();
    }

    return 60.0;
  }

  return v2;
}

void sub_10003486C(uint64_t a1)
{
  v2 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "ABSyncInterface, syncTimer fired", buf, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  *(v3 + 72) = 0;

  if ([*(a1 + 32) automaticSync])
  {
    v5 = [*(a1 + 32) syncService];
    [v5 setHasChangesAvailable];
  }

  else
  {
    v6 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Automatic sync suppressed.", v7, 2u);
    }
  }
}

void sub_100034968(uint64_t a1, void *a2)
{
  v3 = os_transaction_create();
  v4 = objc_autoreleasePoolPush();
  v5 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received kABSyncClientBeginningMultiSave", buf, 2u);
  }

  v6 = a2;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 unlockQueue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100039C14;
    v9[3] = &unk_10005CFC8;
    v10 = v7;
    v11 = v3;
    dispatch_async(v8, v9);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_100034AA0(uint64_t a1, void *a2)
{
  v3 = os_transaction_create();
  v4 = objc_autoreleasePoolPush();
  v5 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received kABSyncClientFinishedMultiSave", buf, 2u);
  }

  v6 = a2;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 unlockQueue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100039CCC;
    v9[3] = &unk_10005CFC8;
    v10 = v7;
    v11 = v3;
    dispatch_async(v8, v9);
  }

  objc_autoreleasePoolPop(v4);
}

void -[ABSyncInterface _blockUntilUnlock](ABSyncInterface *self, SEL a2)
{
  v2 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Entered.", buf, 2u);
  }

  v3 = dispatch_semaphore_create(0);
  *buf = 0;
  v4 = dispatch_get_global_queue(0, 0);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100034E3C;
  handler[3] = &unk_10005DA28;
  v5 = v3;
  v10 = v5;
  v6 = notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", buf, v4, handler);

  if (v6)
  {
    if (os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_10003BDD4();
    }
  }

  else
  {
    if (MKBGetDeviceLockState() == 3 || MKBDeviceUnlockedSinceBoot() == 1)
    {
      dispatch_semaphore_signal(v5);
    }

    dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
    notify_cancel(*buf);
  }

  v7 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Protected data available.", v8, 2u);
  }
}

void sub_1000356E4(uint64_t a1, void *a2)
{
  v3 = a2;
  string = xpc_dictionary_get_string(v3, _xpc_event_key_name);
  if (!*(*(a1 + 32) + 40))
  {
    sleep(5u);
    if (os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_10003BE80();
    }

    exit(-1);
  }

  v5 = string;
  v6 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136315138;
    v20 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received XPC notification: %s", &v19, 0xCu);
  }

  if (!strcmp(v5, "__ABDataBaseChangedByOtherProcessNotification") || !strcmp(v5, "ABFavoritesListChangedExternallyNotification") || !strcmp(v5, "CNFavoritesChangedExternallyNotification"))
  {
    v7 = +[ABSyncInterface sharedInstance];
    v11 = [v7 signalCoalescer];
    [v11 signal];
LABEL_18:

LABEL_19:
    goto LABEL_20;
  }

  if (strcmp(v5, "com.apple.addressbooksync.idslaunchnotification"))
  {
    if (!strcmp(v5, "com.apple.addressbooksync.setupcomplete"))
    {
      v15 = +[ABSyncInterface sharedInstance];
      v7 = v15;
      v16 = @"Received XPC message: com.apple.addressbooksync.setupcomplete";
    }

    else if (!strcmp(v5, "ForceFullSync"))
    {
      v15 = +[ABSyncInterface sharedInstance];
      v7 = v15;
      v16 = @"received XPC message: com.apple.addressbooksync.fullsync";
    }

    else
    {
      if (!strcmp(v5, "com.apple.datamigrator.migrationDidFinish"))
      {
        [*(a1 + 32) _migrationCheck];
        goto LABEL_20;
      }

      if (strcmp(v5, "com.apple.pairedsync.syncDidComplete"))
      {
        if (!strcmp(v5, "CNContactStoreLimitedAccessDidChangeNotification") && [*(a1 + 32) shouldHandleLimitedAccessSyncs])
        {
          v7 = objc_alloc_init(CNContactStore);
          v8 = +[ABSyncInterface sharedInstance];
          v9 = [v8 limitedAccessSequenceNumber];

          v10 = [v7 getWatchLimitedAccessSyncDataStartingAtSequenceNumber:v9];
          v11 = v10;
          if (v10)
          {
            v12 = [v10 fullSyncRequired];
            v13 = +[ABSyncInterface sharedInstance];
            v14 = v13;
            if (v12)
            {
              [v13 requestFullSync:@"Received CNContactStoreLimitedAccessDidChangeNotification"];
            }

            else
            {
              v18 = [v13 signalCoalescer];
              [v18 signal];
            }
          }

          else
          {
            v17 = *(qword_100071D00 + 8);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v19) = 0;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "No sync data? hmm....", &v19, 2u);
            }
          }

          goto LABEL_18;
        }

        goto LABEL_20;
      }

      [*(a1 + 32) setMustBeReset:{objc_msgSend(*(*(a1 + 32) + 48), "getBoolValueForKey:default:", @"RetryMustBeReset", 0)}];
      if (![*(a1 + 32) partialSyncEligible] || (objc_msgSend(*(a1 + 32), "shouldNextResetSyncBePartial") & 1) != 0)
      {
        goto LABEL_20;
      }

      v15 = +[ABSyncInterface sharedInstance];
      v7 = v15;
      v16 = @"Received darwin notification: com.apple.pairedsync.syncDidComplete";
    }

    [v15 requestFullSync:v16];
    goto LABEL_19;
  }

LABEL_20:
}

void sub_100035BFC(uint64_t a1)
{
  if ([*(*(a1 + 32) + 48) getIntegerValueForKey:@"failureCount" default:0] < 1)
  {
    v3 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Time for scheduled recovery sync but there are no failures now. Ignoring.", v7, 2u);
    }

    [*(a1 + 40) completeAndFireNever];
  }

  else if ([*(*(a1 + 32) + 48) getBoolValueForKey:@"RetryMustBeReset" default:0])
  {
    v2 = *(a1 + 32);

    [v2 requestFullSync:@"Reset retry after failed reset."];
  }

  else
  {
    v4 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Delta retry after failed sync", buf, 2u);
    }

    if ([*(a1 + 32) automaticSync])
    {
      v5 = [*(a1 + 32) syncService];
      [v5 setHasChangesAvailable];
    }

    else
    {
      v6 = *(qword_100071D00 + 8);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Automatic delta sync retry suppressed", v8, 2u);
      }
    }
  }
}

uint64_t sub_100036118(uint64_t a1)
{
  result = [*(*(a1 + 32) + 48) getIntegerValueForKey:@"failureCount" default:0];
  if (result >= 1)
  {
    v3 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Scheduled retry after failed sync and process restart", v4, 2u);
    }

    return [*(*(a1 + 32) + 40) setHasChangesAvailable];
  }

  return result;
}

void sub_100036254(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[10])
  {
    dispatch_source_cancel(v2[10]);
    v3 = *(a1 + 32);
    v4 = *(v3 + 80);
    *(v3 + 80) = 0;

    v2 = *(a1 + 32);
  }

  v5 = [(dispatch_source_t *)v2 unlockQueue];
  v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v5);
  v7 = *(a1 + 32);
  v8 = *(v7 + 80);
  *(v7 + 80) = v6;

  v9 = *(*(a1 + 32) + 80);
  v10 = dispatch_time(0, (*(a1 + 40) * 1000000000.0));
  dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0);
  v11 = *(a1 + 32);
  v12 = *(v11 + 80);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100036378;
  handler[3] = &unk_10005CDF0;
  handler[4] = v11;
  dispatch_source_set_event_handler(v12, handler);
  dispatch_resume(*(*(a1 + 32) + 80));
}

void sub_100036378(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  *(v2 + 80) = 0;

  v4 = *(a1 + 32);
  if (*(v4 + 33) == 1)
  {
    *(v4 + 33) = 0;
    v5 = [*(a1 + 32) queue];
    dispatch_resume(v5);

    v6 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "CHANGES RESUMED", v7, 2u);
    }
  }
}

void sub_1000364F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained[6] getIntegerValueForKey:@"sessionEdition" default:0] <= 7)
  {
    [WeakRetained[6] setIntegerValue:objc_msgSend(WeakRetained[6] forKey:{"getIntegerValueForKey:default:", @"failureCount", 0) + 1, @"failureCount"}];
    [WeakRetained requestFullSync:@"Scheduled full sync because edition < CURRENT_EDITION"];
  }
}

void sub_100036EC4(uint64_t a1)
{
  v2 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Locking session idle queue.", v3, 2u);
  }

  dispatch_suspend(*(a1 + 32));
}

void sub_1000385C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000385E4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003860C(uint64_t a1, void *a2)
{
  v3 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [a2 currentSequenceNumber]);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 0;
}

void sub_1000391A0(uint64_t a1)
{
  [*(a1 + 32) setMustBeReset:{objc_msgSend(*(*(a1 + 32) + 48), "getBoolValueForKey:default:", @"RetryMustBeReset", 0)}];
  v2 = [*(a1 + 32) serverState];
  [v2 setBoolValue:1 forKey:@"RetryMustBeReset"];

  v3 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Requesting full sync because: %{public}@", &v6, 0xCu);
  }

  v5 = [*(a1 + 32) syncService];
  [v5 setNeedsResetSync];
}

void sub_1000396B0(uint64_t a1)
{
  v2 = +[SYDevice targetableDevice];
  v3 = [v2 systemBuildVersion];
  v4 = [*(a1 + 32) watchBuildVersion];
  v5 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543618;
    *v17 = v4;
    *&v17[8] = 2114;
    v18 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "watchUpdated: %{public}@ => %{public}@", &v16, 0x16u);
  }

  v6 = [v4 substringToIndex:2];
  v7 = [v3 substringToIndex:2];
  v8 = [v6 compare:@"16"];
  v9 = [v7 compare:@"16"];
  v10 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 67109376;
    *v17 = v9 == -1;
    *&v17[4] = 1024;
    *&v17[6] = v8 == -1;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "watchUpdated: newPre16: %d, oldPre16: %d", &v16, 0xEu);
  }

  v11 = [v3 copy];
  [*(a1 + 32) setWatchBuildVersion:v11];

  v12 = [*(*(a1 + 32) + 48) getIntegerValueForKey:@"failureCount" default:0];
  if (v8 == -1 && v9 != -1)
  {
    [*(*(a1 + 32) + 48) setIntegerValue:v12 + 1 forKey:@"failureCount"];
    v13 = *(a1 + 32);
    v14 = @"watchUpdated: We need a full sync as watch crossed the 15-16 boundary.";
LABEL_10:
    [v13 requestFullSync:v14];
    goto LABEL_11;
  }

  if (v12 >= 1)
  {
    v13 = *(a1 + 32);
    v14 = @"watchUpdated: Triggering a full sync due to watch upgrade and positive failure count";
    goto LABEL_10;
  }

  v15 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "watchUpdated: Benign watch update, no action taken.", &v16, 2u);
  }

LABEL_11:
}

id sub_100039C14(uint64_t a1)
{
  if (([*(a1 + 32) externalChangesGoingOn] & 1) == 0)
  {
    [*(a1 + 32) setExternalChangesGoingOn:1];
    v2 = [*(a1 + 32) queue];
    dispatch_suspend(v2);

    v3 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CHANGES SUSPENDED", v5, 2u);
    }
  }

  return [*(a1 + 32) startUnlockTimer:300.0];
}

void sub_100039E14(uint64_t a1)
{
  if ((*(*(a1 + 32) + 8) & 1) == 0 && *(a1 + 48) == 1)
  {
    [*(a1 + 32) setElapsed:CFAbsoluteTimeGetCurrent() - *(*(a1 + 32) + 16)];
    *(*(a1 + 32) + 8) = 1;
    v2 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Declaring sync done to PSYServiceSyncSession.", v4, 2u);
    }

    v3 = [*(a1 + 32) session];
    [v3 syncDidComplete];
  }
}

void sub_100039F40(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failure to fetch contact count: %{public}@", &v2, 0xCu);
}

void sub_100039FFC(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Received an odd state in checkin: %d.", v2, 8u);
}

void sub_10003A074(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error setting me card: %{public}@", &v2, 0xCu);
}

void sub_10003A100(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed save request: %{public}@", &v2, 0xCu);
}

void sub_10003A1FC(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error fetching contacts for link validation: %{public}@", &v2, 0xCu);
}

void sub_10003A29C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error fetching estimated change log size: %@", &v2, 0xCu);
}

void sub_10003A314(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Critical error fetching change log: %{public}@", &v2, 0xCu);
}

void sub_10003A38C()
{
  sub_100019190();
  v1 = +[NSAssertionHandler currentHandler];
  sub_10001919C();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10003A3F8(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(*a2 + 40);
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Fleshing out contact %{public}@ failed, error: %{public}@.", &v4, 0x16u);
}

void sub_10003A488()
{
  sub_100019190();
  v1 = +[NSAssertionHandler currentHandler];
  sub_10001919C();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10003A4F4()
{
  sub_100019190();
  v1 = +[NSAssertionHandler currentHandler];
  sub_10001919C();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10003A560()
{
  sub_100019190();
  v1 = +[NSAssertionHandler currentHandler];
  sub_10001919C();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10003A5E0(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Couldn't fetch container for contact %{public}@: %{public}@", &v3, 0x16u);
}

void sub_10003A668(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Couldn't fetch account for container %{public}@: %{public}@", buf, 0x16u);
}

void sub_10003A6D0(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Couldn't fetch container for contact %{public}@", buf, 0xCu);
}

void sub_10003A7B0(uint64_t *a1, int a2, os_log_t log)
{
  v3 = *a1;
  v4[0] = 67109378;
  v4[1] = a2;
  v5 = 2082;
  v6 = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "SQL Exec error: %d %{public}s", v4, 0x12u);
}

void sub_10003A9D8()
{
  sub_100020278();
  sub_10001BC94();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003AA14()
{
  sub_100020278();
  sub_10001BC94();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003AA50()
{
  sub_100020278();
  sub_10001BC94();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003AA8C()
{
  sub_100020284();
  sub_10001BC94();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003AAFC()
{
  sub_100020284();
  sub_10001BC94();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003AB6C()
{
  sub_100020278();
  sub_10001BC94();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003ABA8()
{
  sub_100020278();
  sub_10001BC94();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003ABE4()
{
  sub_100020278();
  sub_10001BC94();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003AC20()
{
  sub_100020278();
  sub_10001BC94();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003AC5C()
{
  sub_100020278();
  sub_10001BC94();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003AC98(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v3 = *a1;
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error finding contact to delete. GUID: %{public}@ Error: %{public}@", &v4, 0x16u);
}

void sub_10003AD24()
{
  sub_100020284();
  sub_10001BC94();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003AD94()
{
  sub_100019190();
  v0 = +[NSAssertionHandler currentHandler];
  sub_10001919C();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10003ADF0()
{
  sub_100019190();
  v0 = +[NSAssertionHandler currentHandler];
  sub_10001919C();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10003AE4C()
{
  sub_100019190();
  v0 = +[NSAssertionHandler currentHandler];
  sub_10001919C();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10003AEA8()
{
  sub_100019190();
  v1 = +[NSAssertionHandler currentHandler];
  sub_10001919C();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10003AF88()
{
  sub_100020278();
  sub_10001BC94();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003B0AC()
{
  sub_100020278();
  sub_10001BC94();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003B0E8(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Cannot find contact record for id: %{public}@", buf, 0xCu);
}

void sub_10003B1F0(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error fetching unified contact for link analysis: %{public}@", &v2, 0xCu);
}

void sub_10003B268(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error enumerating link cluster members: %{public}@", &v2, 0xCu);
}

void sub_10003B33C(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 error];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Error sending session: %{public}@", &v5, 0xCu);
}

void sub_10003B450()
{
  v0 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "== Aborting as requested.", v1, 2u);
  }

  abort();
}

void sub_10003B604(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error fetching account for account external ID [%{public}@]: %{public}@", &v3, 0x16u);
}

void sub_10003B7C0(uint64_t a1)
{
  v6 = *(*a1 + 40);
  sub_10001BC94();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10003B950(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CNContact+NilTrigger.m" lineNumber:29 description:@"CNContact.identifier gave us nil."];
}

void sub_10003BAF8(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Cannot find container in account for guardian restriction: %{public}@", &v2, 0xCu);
}

void sub_10003BBAC(void *a1)
{
  v1 = a1;
  v3 = 138543362;
  v4 = objc_opt_class();
  v2 = v4;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Unexpected class of metadata: %{public}@", &v3, 0xCu);
}

void sub_10003BC98(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Sync complete with error: %{public}@", &v2, 0xCu);
}

void sub_10003BD24(os_log_t log, double a2)
{
  v2 = 134217984;
  v3 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "New coalescing delay: %0.2f", &v2, 0xCu);
}

void sub_10003BE08(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error resuming sync service, will exit: %{public}@", &v2, 0xCu);
}

void sub_10003BEB4()
{
  v0 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "Attempt to enter a session while in a session", v1, 2u);
  }

  abort();
}

void sub_10003BFB8(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "sync error: %{public}@", &v2, 0xCu);
}