@interface ICDResponseDataParser
+ (id)_parseAuthorizedAccountTokenWithBytes:(const char *)a3 length:(unint64_t)a4;
+ (id)_parseBrowseListingWithBytes:(const char *)a3 length:(unint64_t)a4;
+ (id)_parseBulkCloudArtworkInfoResponseWithBytes:(const char *)a3 length:(unint64_t)a4;
+ (id)_parseBulkCloudLyricsInfoResponseWithBytes:(const char *)a3 length:(unint64_t)a4;
+ (id)_parseCloudArtworkInfoResponseWithBytes:(const char *)a3 length:(unint64_t)a4;
+ (id)_parseCloudLyricsInfoResponseWithBytes:(const char *)a3 length:(unint64_t)a4;
+ (id)_parseControlInterfacesResponseWithBytes:(const char *)a3 length:(unint64_t)a4;
+ (id)_parseControlPromptResponseWithBytes:(const char *)a3 length:(unint64_t)a4;
+ (id)_parseDeletedIDListingWithBytes:(const char *)a3 length:(unint64_t)a4;
+ (id)_parseDictionaryCollectionWithBytes:(const char *)a3 length:(unint64_t)a4;
+ (id)_parseEditCommandResponseWithBytes:(const char *)a3 length:(unint64_t)a4;
+ (id)_parseErrorResponseWithBytes:(const char *)a3 length:(unint64_t)a4;
+ (id)_parseItemIDArrayWithBytes:(const char *)a3 length:(unint64_t)a4;
+ (id)_parseItemsResponseWithBytes:(const char *)a3 length:(unint64_t)a4 usingHandler:(id)a5;
+ (id)_parseListingCollectionWithBytes:(const char *)a3 length:(unint64_t)a4 usingHandler:(id)a5;
+ (id)_parseListingItemWithBytes:(const char *)a3 length:(unsigned int)a4 usingHandler:(id)a5;
+ (id)_parseLoginResponseWithBytes:(const char *)a3 length:(unint64_t)a4;
+ (id)_parsePlayStatusResponseWithBytes:(const char *)a3 length:(unint64_t)a4;
+ (id)_parseResponseCode:(unsigned int)a3 bytes:(const char *)a4 length:(unint64_t)a5 usingHandler:(id)a6;
+ (id)_parseUpdateResponseWithBytes:(const char *)a3 length:(unint64_t)a4;
+ (id)_parseUpdateTypeWithBytes:(const char *)a3 length:(unint64_t)a4;
+ (id)enumerateRawItemsInResponseData:(id)a3 usingHandler:(id)a4;
+ (id)parseErrorInResponseData:(id)a3;
+ (unint64_t)_parseItemPropertyCountWithBytes:(const char *)a3 length:(unint64_t)a4;
+ (unint64_t)parseItemWithBytes:(const char *)a3 length:(unint64_t)a4 valuesOut:(id *)a5 valuesCapacity:(unint64_t)a6;
+ (void)enumerateDeletedItemsInResponseData:(id)a3 usingHandler:(id)a4;
+ (void)enumerateItemsInResponseData:(id)a3 usingHandler:(id)a4;
+ (void)parseItemWithBytes:(const char *)a3 length:(unint64_t)a4 usingHandler:(id)a5;
@end

@implementation ICDResponseDataParser

+ (id)_parseListingItemWithBytes:(const char *)a3 length:(unsigned int)a4 usingHandler:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, a3, a4);
    v9 = 0;
  }

  else
  {
    v9 = +[NSMutableDictionary dictionary];
    while (a4)
    {
      v10 = *a3;
      v11 = *(a3 + 1);
      v12 = (a3 + 8);
      v13 = bswap32(v11);
      v19 = 0;
      v20 = 0;
      sub_100115A78(bswap32(v10), v12, v13, &v20, &v19);
      v14 = v20;
      v15 = v19;
      v16 = v15;
      if (v14)
      {
        v17 = v15 == 0;
      }

      else
      {
        v17 = 1;
      }

      if (!v17)
      {
        [v9 setObject:v14 forKey:v15];
      }

      a3 = &v12[v13];
      a4 = a4 - 8 - v13;
    }
  }

  return v9;
}

+ (id)_parseErrorResponseWithBytes:(const char *)a3 length:(unint64_t)a4
{
  for (i = +[NSMutableDictionary dictionary];
  {
    v7 = *a3;
    v8 = (v7 << 24) | (*(a3 + 1) << 16);
    v9 = *(a3 + 3);
    v10 = v9 | (*(a3 + 2) << 8) | v8;
    v11 = bswap32(*(a3 + 1));
    v12 = a3 + 8;
    switch(v10)
    {
      case 0x61655243u:
        v13 = [NSNumber numberWithUnsignedInt:bswap32(*(a3 + 2))];
        v14 = i;
        v15 = v13;
        v16 = &off_1001EDC78;
        break;
      case 0x6D737473u:
        v13 = [[NSString alloc] initWithBytes:a3 + 8 length:v11 encoding:4];
        v14 = i;
        v15 = v13;
        v16 = &off_1001EDC60;
        break;
      case 0x6D737474u:
        v13 = [NSNumber numberWithUnsignedInt:bswap32(*(a3 + 2))];
        v14 = i;
        v15 = v13;
        v16 = &off_1001EDC48;
        break;
      default:
        v13 = os_log_create("com.apple.amp.itunescloudd", "Default");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v18[0] = 67109888;
          v18[1] = v7;
          v19 = 1024;
          v20 = HIWORD(v8);
          v21 = 1024;
          v22 = v10 >> 8;
          v23 = 1024;
          v24 = v9;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Unhandled code in play status response: %c%c%c%c", v18, 0x1Au);
        }

        goto LABEL_9;
    }

    [v14 setObject:v15 forKey:v16];
LABEL_9:

    a3 = &v12[v11];
  }

  return i;
}

+ (id)_parsePlayStatusResponseWithBytes:(const char *)a3 length:(unint64_t)a4
{
  v6 = +[NSMutableDictionary dictionary];
  if (a4)
  {
    while (1)
    {
      v7 = *a3;
      v8 = (v7 << 24) | (*(a3 + 1) << 16);
      v9 = *(a3 + 3);
      v10 = v9 | (*(a3 + 2) << 8) | v8;
      v11 = bswap32(*(a3 + 1));
      v12 = (a3 + 8);
      if (v10 <= 1667330931)
      {
        if (v10 > 1667329645)
        {
          if (v10 > 1667330162)
          {
            if (v10 > 1667330914)
            {
              if (v10 != 1667330915)
              {
                if (v10 == 1667330920)
                {
                  v13 = [NSNumber numberWithUnsignedChar:*v12];
                  v14 = v6;
                  v15 = v13;
                  v16 = &off_1001ED9D8;
                  goto LABEL_80;
                }

                goto LABEL_84;
              }

              v13 = [NSNumber numberWithUnsignedChar:*v12];
              v14 = v6;
              v15 = v13;
              v16 = &off_1001EDBA0;
            }

            else
            {
              if (v10 != 1667330163)
              {
                if (v10 == 1667330672)
                {
                  v13 = [NSNumber numberWithUnsignedChar:*v12];
                  v14 = v6;
                  v15 = v13;
                  v16 = &off_1001ED9F0;
                  goto LABEL_80;
                }

                goto LABEL_84;
              }

              v13 = [NSNumber numberWithUnsignedChar:*v12];
              v14 = v6;
              v15 = v13;
              v16 = &off_1001ED9C0;
            }
          }

          else if (v10 > 1667329651)
          {
            if (v10 != 1667329652)
            {
              if (v10 == 1667330156)
              {
                v13 = [[NSData alloc] initWithBytes:a3 + 8 length:v11];
                v14 = v6;
                v15 = v13;
                v16 = &off_1001EDC30;
                goto LABEL_80;
              }

              goto LABEL_84;
            }

            v13 = [NSNumber numberWithUnsignedInt:bswap32(*(a3 + 2))];
            v14 = v6;
            v15 = v13;
            v16 = &off_1001EDBB8;
          }

          else
          {
            if (v10 != 1667329646)
            {
              if (v10 == 1667329648)
              {
                v13 = [[NSData alloc] initWithBytes:a3 + 8 length:v11];
                v14 = v6;
                v15 = v13;
                v16 = &off_1001EDC18;
                goto LABEL_80;
              }

              goto LABEL_84;
            }

            v13 = [[NSString alloc] initWithBytes:a3 + 8 length:v11 encoding:4];
            v14 = v6;
            v15 = v13;
            v16 = &off_1001ED978;
          }
        }

        else if (v10 > 1667327602)
        {
          if (v10 > 1667329638)
          {
            if (v10 != 1667329639)
            {
              if (v10 == 1667329644)
              {
                v13 = [[NSString alloc] initWithBytes:a3 + 8 length:v11 encoding:4];
                v14 = v6;
                v15 = v13;
                v16 = &off_1001ED9A8;
                goto LABEL_80;
              }

              goto LABEL_84;
            }

            v13 = [[NSString alloc] initWithBytes:a3 + 8 length:v11 encoding:4];
            v14 = v6;
            v15 = v13;
            v16 = &off_1001EDB70;
          }

          else
          {
            if (v10 != 1667327603)
            {
              if (v10 == 1667329633)
              {
                v13 = [[NSString alloc] initWithBytes:a3 + 8 length:v11 encoding:4];
                v14 = v6;
                v15 = v13;
                v16 = &off_1001ED990;
                goto LABEL_80;
              }

              goto LABEL_84;
            }

            v13 = [NSNumber numberWithUnsignedChar:*v12];
            v14 = v6;
            v15 = v13;
            v16 = &off_1001EDA08;
          }
        }

        else if (v10 > 1667326322)
        {
          if (v10 != 1667326323)
          {
            if (v10 == 1667327589)
            {
              v13 = [NSNumber numberWithUnsignedChar:*v12];
              v14 = v6;
              v15 = v13;
              v16 = &off_1001EDA80;
              goto LABEL_80;
            }

            goto LABEL_84;
          }

          v13 = [NSNumber numberWithUnsignedInt:bswap32(*(a3 + 2))];
          v14 = v6;
          v15 = v13;
          v16 = &off_1001EDA50;
        }

        else
        {
          if (v10 != 1634951529)
          {
            if (v10 == 1667326322)
            {
              v13 = [NSNumber numberWithUnsignedInt:bswap32(*(a3 + 2))];
              v14 = v6;
              v15 = v13;
              v16 = &off_1001EDA68;
              goto LABEL_80;
            }

            goto LABEL_84;
          }

          v13 = [NSNumber numberWithUnsignedLongLong:((*(a3 + 8) << 56) | (*(a3 + 9) << 48) | (*(a3 + 10) << 40) | (*(a3 + 11) << 32) | (*(a3 + 12) << 24) | (*(a3 + 13) << 16) | (*(a3 + 14) << 8)) + *(a3 + 15)];
          v14 = v6;
          v15 = v13;
          v16 = &off_1001EDAF8;
        }

        goto LABEL_80;
      }

      if (v10 <= 1667584372)
      {
        if (v10 > 1667331698)
        {
          if (v10 > 1667583312)
          {
            if (v10 != 1667583313)
            {
              if (v10 == 1667583569)
              {
                v13 = [NSNumber numberWithUnsignedInt:bswap32(*(a3 + 2))];
                v14 = v6;
                v15 = v13;
                v16 = &off_1001EDAE0;
                goto LABEL_80;
              }

              goto LABEL_84;
            }

            v13 = [NSNumber numberWithUnsignedChar:*v12];
            v14 = v6;
            v15 = v13;
            v16 = &off_1001EDAC8;
          }

          else
          {
            if (v10 != 1667331699)
            {
              if (v10 == 1667581779)
              {
                v13 = [NSNumber numberWithUnsignedChar:*v12];
                v14 = v6;
                v15 = v13;
                v16 = &off_1001EDC00;
                goto LABEL_80;
              }

              goto LABEL_84;
            }

            v13 = [NSNumber numberWithUnsignedChar:*v12];
            v14 = v6;
            v15 = v13;
            v16 = &off_1001EDA20;
          }
        }

        else if (v10 > 1667331682)
        {
          if (v10 != 1667331683)
          {
            if (v10 == 1667331685)
            {
              v13 = [NSNumber numberWithUnsignedChar:*v12];
              v14 = v6;
              v15 = v13;
              v16 = &off_1001EDA98;
              goto LABEL_80;
            }

            goto LABEL_84;
          }

          v13 = [NSNumber numberWithUnsignedChar:*v12];
          v14 = v6;
          v15 = v13;
          v16 = &off_1001EDA38;
        }

        else
        {
          if (v10 != 1667330932)
          {
            if (v10 == 1667330933)
            {
              v13 = [NSNumber numberWithUnsignedChar:*v12];
              v14 = v6;
              v15 = v13;
              v16 = &off_1001EDBE8;
              goto LABEL_80;
            }

            goto LABEL_84;
          }

          v13 = [NSNumber numberWithUnsignedInt:bswap32(*(a3 + 2))];
          v14 = v6;
          v15 = v13;
          v16 = &off_1001EDBD0;
        }

        goto LABEL_80;
      }

      if (v10 <= 1668113011)
      {
        break;
      }

      if (v10 <= 1668117361)
      {
        if (v10 != 1668113012)
        {
          if (v10 == 1668115819)
          {
            v13 = [NSNumber numberWithUnsignedInt:bswap32(*(a3 + 2))];
            v14 = v6;
            v15 = v13;
            v16 = &off_1001EDB88;
            goto LABEL_80;
          }

          goto LABEL_84;
        }

        v13 = [[NSString alloc] initWithBytes:a3 + 8 length:v11 encoding:4];
        v14 = v6;
        v15 = v13;
        v16 = &off_1001EDB40;
LABEL_80:
        [v14 setObject:v15 forKey:v16];
        goto LABEL_81;
      }

      if (v10 != 1836282996)
      {
        if (v10 == 1668117362)
        {
          v13 = [NSNumber numberWithUnsignedInt:bswap32(*(a3 + 2))];
          v14 = v6;
          v15 = v13;
          v16 = &off_1001ED960;
          goto LABEL_80;
        }

LABEL_84:
        v13 = os_log_create("com.apple.amp.itunescloudd", "Default");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v18[0] = 67109888;
          v18[1] = v7;
          v19 = 1024;
          v20 = HIWORD(v8);
          v21 = 1024;
          v22 = v10 >> 8;
          v23 = 1024;
          v24 = v9;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Unhandled code in play status response: %c%c%c%c", v18, 0x1Au);
        }

LABEL_81:
      }

      a3 = &v12[v11];
      a4 = a4 - 8 - v11;
      if (!a4)
      {
        goto LABEL_86;
      }
    }

    if (v10 > 1668113004)
    {
      if (v10 != 1668113005)
      {
        if (v10 == 1668113011)
        {
          v13 = [[NSString alloc] initWithBytes:a3 + 8 length:v11 encoding:4];
          v14 = v6;
          v15 = v13;
          v16 = &off_1001EDB28;
          goto LABEL_80;
        }

        goto LABEL_84;
      }

      v13 = [[NSString alloc] initWithBytes:a3 + 8 length:v11 encoding:4];
      v14 = v6;
      v15 = v13;
      v16 = &off_1001EDB58;
    }

    else
    {
      if (v10 != 1667584373)
      {
        if (v10 == 1668112996)
        {
          v13 = [[NSString alloc] initWithBytes:a3 + 8 length:v11 encoding:4];
          v14 = v6;
          v15 = v13;
          v16 = &off_1001EDB10;
          goto LABEL_80;
        }

        goto LABEL_84;
      }

      v13 = [NSNumber numberWithUnsignedChar:*v12];
      v14 = v6;
      v15 = v13;
      v16 = &off_1001EDAB0;
    }

    goto LABEL_80;
  }

LABEL_86:

  return v6;
}

+ (id)_parseItemIDArrayWithBytes:(const char *)a3 length:(unint64_t)a4
{
  for (i = +[NSMutableArray array];
  {
    v7 = *a3;
    v8 = (v7 << 24) | (*(a3 + 1) << 16);
    v9 = *(a3 + 3);
    v10 = v9 | (*(a3 + 2) << 8) | v8;
    v11 = *(a3 + 1);
    if (v10 == 1835624804)
    {
      v12 = [NSNumber numberWithUnsignedInt:bswap32(*(a3 + 2))];
      [i addObject:v12];
    }

    else
    {
      v12 = os_log_create("com.apple.amp.itunescloudd", "Default");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v15[0] = 67109888;
        v15[1] = v7;
        v16 = 1024;
        v17 = HIWORD(v8);
        v18 = 1024;
        v19 = v10 >> 8;
        v20 = 1024;
        v21 = v9;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Unhandled code in item ID array response: %c%c%c%c", v15, 0x1Au);
      }
    }

    v13 = bswap32(v11);

    a3 += v13 + 8;
  }

  return i;
}

+ (id)_parseBrowseListingWithBytes:(const char *)a3 length:(unint64_t)a4
{
  for (i = +[NSMutableArray array];
  {
    v7 = *a3;
    v8 = (v7 << 24) | (*(a3 + 1) << 16);
    v9 = *(a3 + 3);
    v10 = v9 | (*(a3 + 2) << 8) | v8;
    v11 = bswap32(*(a3 + 1));
    v12 = a3 + 8;
    if (v10 == 1835821428)
    {
      v13 = [[NSString alloc] initWithBytes:v12 length:v11 encoding:4];
      [i addObject:v13];
    }

    else
    {
      v13 = os_log_create("com.apple.amp.itunescloudd", "Default");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15[0] = 67109888;
        v15[1] = v7;
        v16 = 1024;
        v17 = HIWORD(v8);
        v18 = 1024;
        v19 = v10 >> 8;
        v20 = 1024;
        v21 = v9;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Unhandled code in browse listing response: %c%c%c%c", v15, 0x1Au);
      }
    }

    a3 = &v12[v11];
  }

  return i;
}

+ (id)_parseListingCollectionWithBytes:(const char *)a3 length:(unint64_t)a4 usingHandler:(id)a5
{
  v8 = a5;
  if (v8)
  {
    v20 = 0;
    if (!a4)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v20 = +[NSMutableArray array];
    if (!a4)
    {
      goto LABEL_16;
    }
  }

  do
  {
    v9 = *a3;
    v10 = (v9 << 24) | (*(a3 + 1) << 16);
    v11 = *(a3 + 3);
    v12 = v11 | (*(a3 + 2) << 8) | v10;
    v13 = bswap32(*(a3 + 1));
    v14 = a3 + 8;
    if (v12 == 1634025828 || v12 == 1835821428 || v12 == 1634036070)
    {
      v17 = [a1 _parseListingItemWithBytes:v14 length:v13 usingHandler:v8];
      if (!v8)
      {
        [v20 addObject:v17];
      }
    }

    else
    {
      v17 = os_log_create("com.apple.amp.itunescloudd", "Default");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109888;
        v22 = v9;
        v23 = 1024;
        v24 = HIWORD(v10);
        v25 = 1024;
        v26 = v12 >> 8;
        v27 = 1024;
        v28 = v11;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Unhandled code in listing collection response: %c%c%c%c", buf, 0x1Au);
      }
    }

    a3 = &v14[v13];
    a4 = a4 - 8 - v13;
  }

  while (a4);
LABEL_16:

  return v20;
}

+ (id)_parseItemsResponseWithBytes:(const char *)a3 length:(unint64_t)a4 usingHandler:(id)a5
{
  v33 = a5;
  v8 = 0;
  if (a4)
  {
    *&v7 = 67109120;
    v32 = v7;
    while (1)
    {
      v9 = *a3;
      v10 = (v9 << 24) | (*(a3 + 1) << 16);
      v11 = *(a3 + 3);
      v12 = v11 | (*(a3 + 2) << 8) | v10;
      v13 = *(a3 + 1);
      v14 = a4 - 8;
      if (v12 > 1836213102)
      {
        if (v12 > 1836409963)
        {
          v17 = v12 == 1836409964 || v12 == 1836413810;
          v18 = 1836414073;
        }

        else
        {
          if (v12 == 1836213103)
          {
            v25 = *(a3 + 8);
            v26 = *(a3 + 9);
            v27 = *(a3 + 10);
            v28 = *(a3 + 11);
            v20 = os_log_create("com.apple.amp.itunescloudd", "Default");
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v32;
              v36 = (v25 << 24) | (v26 << 16) | (v27 << 8) | v28;
              v22 = v20;
              v23 = "Returned count: %d";
              goto LABEL_36;
            }

            goto LABEL_38;
          }

          v17 = v12 == 1836282996;
          v18 = 1836344175;
        }

        if (v17 || v12 == v18)
        {
          goto LABEL_39;
        }

        goto LABEL_30;
      }

      if (v12 <= 1633838957)
      {
        break;
      }

      if (v12 == 1633838958)
      {
        goto LABEL_20;
      }

      if (v12 != 1634025810)
      {
        if (v12 == 1835819884)
        {
          v19 = [a1 _parseListingCollectionWithBytes:a3 + 8 length:a4 - 8 usingHandler:v33];
LABEL_21:
          v20 = v8;
          v8 = v19;
          goto LABEL_38;
        }

        goto LABEL_30;
      }

      v20 = os_log_create("com.apple.amp.itunescloudd", "Default");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v29 = bswap32(*(a3 + 2));
        *buf = v32;
        v36 = v29;
        v22 = v20;
        v23 = "Authorized DSIDs revision code: %d";
LABEL_36:
        v24 = 8;
LABEL_37:
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v23, buf, v24);
      }

LABEL_38:

LABEL_39:
      v30 = bswap32(v13);
      a3 += v30 + 8;
      a4 = v14 - v30;
      if (v14 == v30)
      {
        goto LABEL_40;
      }
    }

    if (v12 == 1633837420 || v12 == 1633837426 || v12 == 1633837936)
    {
LABEL_20:
      v19 = [a1 _parseBrowseListingWithBytes:a3 + 8 length:{a4 - 8, v32}];
      goto LABEL_21;
    }

LABEL_30:
    v20 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109888;
      v36 = v9;
      v37 = 1024;
      v38 = HIWORD(v10);
      v39 = 1024;
      v40 = v12 >> 8;
      v41 = 1024;
      v42 = v11;
      v22 = v20;
      v23 = "Unhandled code in items response: %c%c%c%c";
      v24 = 26;
      goto LABEL_37;
    }

    goto LABEL_38;
  }

LABEL_40:

  return v8;
}

+ (id)_parseUpdateTypeWithBytes:(const char *)a3 length:(unint64_t)a4
{
  if (a4)
  {
    v4 = a4;
    v6 = 0;
    while (1)
    {
      v7 = bswap32(*a3);
      v8 = bswap32(*(a3 + 1));
      v9 = (a3 + 8);
      if (v7 == 1836414073)
      {
        v11 = [NSNumber numberWithUnsignedChar:*v9];

        v6 = v11;
      }

      else if (v7 == 1633968755 || v7 == 1634759535)
      {
        v12 = [a1 _parseUpdateTypeWithBytes:a3 + 8 length:v8];
        goto LABEL_15;
      }

      a3 = &v9[v8];
      v4 = v4 - 8 - v8;
      if (!v4)
      {
        goto LABEL_14;
      }
    }
  }

  v6 = 0;
LABEL_14:
  v12 = v6;
  v6 = v12;
LABEL_15:
  v13 = v12;

  return v13;
}

+ (id)_parseEditCommandResponseWithBytes:(const char *)a3 length:(unint64_t)a4
{
  v6 = +[NSMutableDictionary dictionary];
  if (a4)
  {
    while (1)
    {
      v7 = *a3;
      v8 = (v7 << 24) | (*(a3 + 1) << 16);
      v9 = *(a3 + 3);
      v10 = v9 | (*(a3 + 2) << 8) | v8;
      v11 = *(a3 + 1);
      if (v10 == 1835624804)
      {
        break;
      }

      if (v10 != 1836282996)
      {
        if (v10 == 1836413810)
        {
          v12 = [NSNumber numberWithUnsignedInt:bswap32(*(a3 + 2))];
          v13 = v6;
          v14 = v12;
          v15 = @"dmap.serverrevision";
          goto LABEL_7;
        }

        v12 = os_log_create("com.apple.amp.itunescloudd", "Default");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v18[0] = 67109888;
          v18[1] = v7;
          v19 = 1024;
          v20 = HIWORD(v8);
          v21 = 1024;
          v22 = v10 >> 8;
          v23 = 1024;
          v24 = v9;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Unhandled code in editing command response: %c%c%c%c", v18, 0x1Au);
        }

LABEL_8:
      }

      v16 = bswap32(v11);
      a3 += v16 + 8;
      a4 = a4 - 8 - v16;
      if (!a4)
      {
        goto LABEL_13;
      }
    }

    v12 = [NSNumber numberWithUnsignedInt:bswap32(*(a3 + 2))];
    v13 = v6;
    v14 = v12;
    v15 = @"dmap.itemid";
LABEL_7:
    [v13 setObject:v14 forKey:v15];
    goto LABEL_8;
  }

LABEL_13:

  return v6;
}

+ (id)_parseDictionaryCollectionWithBytes:(const char *)a3 length:(unint64_t)a4
{
  v17 = +[NSMutableDictionary dictionary];
  if (a4 >= 9)
  {
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = *a3;
      v9 = (v8 << 24) | (*(a3 + 1) << 16);
      v10 = *(a3 + 3);
      v11 = v10 | (*(a3 + 2) << 8) | v9;
      v12 = bswap32(*(a3 + 1));
      v13 = a3 + 8;
      if (v11 > 1835297656)
      {
        if (v11 != 1835300460)
        {
          if (v11 != 1835297657)
          {
LABEL_16:
            v14 = os_log_create("com.apple.amp.itunescloudd", "Default");
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109888;
              v19 = v8;
              v20 = 1024;
              v21 = HIWORD(v9);
              v22 = 1024;
              v23 = v11 >> 8;
              v24 = 1024;
              v25 = v10;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Unhandled code in dictionary collection: %c%c%c%c", buf, 0x1Au);
            }

            goto LABEL_11;
          }

LABEL_9:
          v14 = v6;
          v6 = [[NSString alloc] initWithBytes:v13 length:v12 encoding:4];
          goto LABEL_11;
        }
      }

      else
      {
        if (v11 == 1668113253)
        {
          goto LABEL_9;
        }

        if (v11 != 1668113270)
        {
          goto LABEL_16;
        }
      }

      v14 = v7;
      v7 = [[NSString alloc] initWithBytes:v13 length:v12 encoding:4];
LABEL_11:

      if (v6 && v7)
      {
        [v17 setObject:v7 forKey:v6];

        v7 = 0;
        v6 = 0;
      }

      a3 = &v13[v12];
      a4 = a4 - 8 - v12;
      if (a4 <= 8)
      {
        goto LABEL_19;
      }
    }
  }

  v7 = 0;
  v6 = 0;
LABEL_19:
  v15 = v17;

  return v17;
}

+ (id)_parseDeletedIDListingWithBytes:(const char *)a3 length:(unint64_t)a4
{
  v6 = +[NSMutableArray array];
  if (a4 >= 9)
  {
    do
    {
      v7 = *a3;
      v8 = (v7 << 24) | (*(a3 + 1) << 16);
      v9 = *(a3 + 3);
      v10 = v9 | (*(a3 + 2) << 8) | v8;
      v11 = *(a3 + 1);
      if (v10 == 1835625572)
      {
        v12 = [NSNumber numberWithUnsignedLongLong:((*(a3 + 8) << 56) | (*(a3 + 9) << 48) | (*(a3 + 10) << 40) | (*(a3 + 11) << 32) | (*(a3 + 12) << 24) | (*(a3 + 13) << 16) | (*(a3 + 14) << 8)) + *(a3 + 15)];
      }

      else
      {
        if (v10 != 1835624804)
        {
          v13 = os_log_create("com.apple.amp.itunescloudd", "Default");
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v16[0] = 67109888;
            v16[1] = v7;
            v17 = 1024;
            v18 = HIWORD(v8);
            v19 = 1024;
            v20 = v10 >> 8;
            v21 = 1024;
            v22 = v9;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Unhandled code in deleted item ID listing response: %c%c%c%c", v16, 0x1Au);
          }

          goto LABEL_7;
        }

        v12 = [NSNumber numberWithUnsignedInt:bswap32(*(a3 + 2))];
      }

      v13 = v12;
      [v6 addObject:v12];
LABEL_7:
      v14 = bswap32(v11);

      a3 += v14 + 8;
      a4 = a4 - 8 - v14;
    }

    while (a4 > 8);
  }

  return v6;
}

+ (id)_parseControlPromptResponseWithBytes:(const char *)a3 length:(unint64_t)a4
{
  v6 = +[NSMutableDictionary dictionary];
  if (a4)
  {
    while (1)
    {
      v7 = *a3;
      v8 = (v7 << 24) | (*(a3 + 1) << 16);
      v9 = *(a3 + 3);
      v10 = v9 | (*(a3 + 2) << 8) | v8;
      v11 = bswap32(*(a3 + 1));
      v12 = a3 + 8;
      if (v10 == 1835295596)
      {
        break;
      }

      if (v10 != 1836282996)
      {
        if (v10 == 1835624804)
        {
          v13 = [NSNumber numberWithUnsignedInt:bswap32(*(a3 + 2))];
          [v6 setObject:v13 forKey:@"dmap.itemid"];
        }

        else
        {
          v13 = os_log_create("com.apple.amp.itunescloudd", "Default");
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109888;
            v17 = v7;
            v18 = 1024;
            v19 = HIWORD(v8);
            v20 = 1024;
            v21 = v10 >> 8;
            v22 = 1024;
            v23 = v9;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Unhandled code in control prompt response: %c%c%c%c", buf, 0x1Au);
          }
        }

LABEL_10:
      }

      a3 = &v12[v11];
      a4 = a4 - 8 - v11;
      if (!a4)
      {
        goto LABEL_12;
      }
    }

    v13 = [a1 _parseDictionaryCollectionWithBytes:a3 + 8 length:v11];
    if (v13)
    {
      [v6 addEntriesFromDictionary:v13];
    }

    goto LABEL_10;
  }

LABEL_12:

  return v6;
}

+ (id)_parseControlInterfacesResponseWithBytes:(const char *)a3 length:(unint64_t)a4
{
  v4 = 0;
  if (a4)
  {
    while (1)
    {
      v5 = *a3;
      v6 = (v5 << 24) | (*(a3 + 1) << 16);
      v7 = *(a3 + 3);
      v8 = v7 | (*(a3 + 2) << 8) | v6;
      v9 = *(a3 + 1);
      v10 = a3 + 8;
      v11 = a4 - 8;
      if (v8 > 1836282995)
      {
        break;
      }

      if (v8 == 1835819884)
      {
        [a1 _parseListingCollectionWithBytes:a3 + 8 length:a4 - 8 usingHandler:0];
        v4 = v13 = v4;
        goto LABEL_13;
      }

      if (v8 != 1836213103)
      {
        goto LABEL_10;
      }

LABEL_14:
      v14 = bswap32(v9);
      a3 = &v10[v14];
      a4 = v11 - v14;
      if (v11 == v14)
      {
        goto LABEL_15;
      }
    }

    if (v8 == 1836282996 || v8 == 1836344175)
    {
      goto LABEL_14;
    }

LABEL_10:
    v13 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109888;
      v18 = v5;
      v19 = 1024;
      v20 = HIWORD(v6);
      v21 = 1024;
      v22 = v8 >> 8;
      v23 = 1024;
      v24 = v7;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Unhandled code in control interfaces response: %c%c%c%c", buf, 0x1Au);
    }

LABEL_13:

    goto LABEL_14;
  }

LABEL_15:

  return v4;
}

+ (id)_parseCloudLyricsInfoResponseWithBytes:(const char *)a3 length:(unint64_t)a4
{
  for (i = +[NSMutableDictionary dictionary];
  {
    v7 = *a3;
    v8 = (v7 << 24) | (*(a3 + 1) << 16);
    v9 = *(a3 + 3);
    v10 = v9 | (*(a3 + 2) << 8) | v8;
    v11 = bswap32(*(a3 + 1));
    v12 = a3 + 8;
    if (v10 != 1836282996)
    {
      if (v10 == 1835295596)
      {
        v13 = [a1 _parseDictionaryCollectionWithBytes:v12 length:v11];
        if (v13)
        {
          [i addEntriesFromDictionary:v13];
        }
      }

      else
      {
        v13 = os_log_create("com.apple.amp.itunescloudd", "Default");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109888;
          v17 = v7;
          v18 = 1024;
          v19 = HIWORD(v8);
          v20 = 1024;
          v21 = v10 >> 8;
          v22 = 1024;
          v23 = v9;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Unhandled code in cloud artwork info response: %c%c%c%c", buf, 0x1Au);
        }
      }
    }

    a3 = &v12[v11];
  }

  return i;
}

+ (id)_parseCloudArtworkInfoResponseWithBytes:(const char *)a3 length:(unint64_t)a4
{
  for (i = +[NSMutableDictionary dictionary];
  {
    v7 = *a3;
    v8 = (v7 << 24) | (*(a3 + 1) << 16);
    v9 = *(a3 + 3);
    v10 = v9 | (*(a3 + 2) << 8) | v8;
    v11 = bswap32(*(a3 + 1));
    v12 = a3 + 8;
    if (v10 != 1836282996)
    {
      if (v10 == 1835295596)
      {
        v13 = [a1 _parseDictionaryCollectionWithBytes:v12 length:v11];
        if (v13)
        {
          [i addEntriesFromDictionary:v13];
        }
      }

      else
      {
        v13 = os_log_create("com.apple.amp.itunescloudd", "Default");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109888;
          v17 = v7;
          v18 = 1024;
          v19 = HIWORD(v8);
          v20 = 1024;
          v21 = v10 >> 8;
          v22 = 1024;
          v23 = v9;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Unhandled code in cloud artwork info response: %c%c%c%c", buf, 0x1Au);
        }
      }
    }

    a3 = &v12[v11];
  }

  return i;
}

+ (id)_parseBulkCloudLyricsInfoResponseWithBytes:(const char *)a3 length:(unint64_t)a4
{
  v4 = 0;
  if (a4)
  {
    do
    {
      v5 = *a3;
      v6 = (v5 << 24) | (*(a3 + 1) << 16);
      v7 = *(a3 + 3);
      v8 = v7 | (*(a3 + 2) << 8) | v6;
      v9 = *(a3 + 1);
      v10 = a3 + 8;
      v11 = a4 - 8;
      if (v8 != 1836282996)
      {
        if (v8 == 1835819884)
        {
          [a1 _parseListingCollectionWithBytes:a3 + 8 length:a4 - 8 usingHandler:0];
          v4 = v12 = v4;
        }

        else
        {
          v12 = os_log_create("com.apple.amp.itunescloudd", "Default");
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109888;
            v17 = v5;
            v18 = 1024;
            v19 = HIWORD(v6);
            v20 = 1024;
            v21 = v8 >> 8;
            v22 = 1024;
            v23 = v7;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Unhandled code in bulk cloud lyrics info response: %c%c%c%c", buf, 0x1Au);
          }
        }
      }

      v13 = bswap32(v9);
      a3 = &v10[v13];
      a4 = v11 - v13;
    }

    while (v11 != v13);
  }

  return v4;
}

+ (id)_parseBulkCloudArtworkInfoResponseWithBytes:(const char *)a3 length:(unint64_t)a4
{
  v4 = 0;
  if (a4)
  {
    do
    {
      v5 = *a3;
      v6 = (v5 << 24) | (*(a3 + 1) << 16);
      v7 = *(a3 + 3);
      v8 = v7 | (*(a3 + 2) << 8) | v6;
      v9 = *(a3 + 1);
      v10 = a3 + 8;
      v11 = a4 - 8;
      if (v8 != 1836282996)
      {
        if (v8 == 1835819884)
        {
          [a1 _parseListingCollectionWithBytes:a3 + 8 length:a4 - 8 usingHandler:0];
          v4 = v12 = v4;
        }

        else
        {
          v12 = os_log_create("com.apple.amp.itunescloudd", "Default");
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109888;
            v17 = v5;
            v18 = 1024;
            v19 = HIWORD(v6);
            v20 = 1024;
            v21 = v8 >> 8;
            v22 = 1024;
            v23 = v7;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Unhandled code in bulk cloud artwork info response: %c%c%c%c", buf, 0x1Au);
          }
        }
      }

      v13 = bswap32(v9);
      a3 = &v10[v13];
      a4 = v11 - v13;
    }

    while (v11 != v13);
  }

  return v4;
}

+ (id)_parseAuthorizedAccountTokenWithBytes:(const char *)a3 length:(unint64_t)a4
{
  v6 = +[NSMutableDictionary dictionary];
  if (a4)
  {
    while (1)
    {
      v7 = *a3;
      v8 = (v7 << 24) | (*(a3 + 1) << 16);
      v9 = *(a3 + 3);
      v10 = v9 | (*(a3 + 2) << 8) | v8;
      v11 = bswap32(*(a3 + 1));
      v12 = a3 + 8;
      if (v10 <= 1634030674)
      {
        break;
      }

      if (v10 == 1634030675)
      {
        v13 = [NSNumber numberWithUnsignedLongLong:bswap32(*(a3 + 2))];
        v14 = v6;
        v15 = v13;
        v16 = @"com.apple.itunes.drm-token-request-status";
LABEL_12:
        [v14 setObject:v15 forKey:v16];
        goto LABEL_13;
      }

      if (v10 != 1836282996)
      {
        goto LABEL_8;
      }

LABEL_14:
      a3 = &v12[v11];
      a4 = a4 - 8 - v11;
      if (!a4)
      {
        goto LABEL_15;
      }
    }

    if (v10 == 1634026578)
    {
      v13 = [NSNumber numberWithUnsignedLongLong:((*(a3 + 8) << 56) | (*(a3 + 9) << 48) | (*(a3 + 10) << 40) | (*(a3 + 11) << 32) | (*(a3 + 12) << 24) | (*(a3 + 13) << 16) | (*(a3 + 14) << 8)) + *(a3 + 15)];
      v14 = v6;
      v15 = v13;
      v16 = @"com.apple.itunes.drm-user-id";
      goto LABEL_12;
    }

    if (v10 == 1634030660)
    {
      v13 = [[NSData alloc] initWithBytesNoCopy:a3 + 8 length:v11 freeWhenDone:0];
      v14 = v6;
      v15 = v13;
      v16 = @"com.apple.itunes.drm-token-data";
      goto LABEL_12;
    }

LABEL_8:
    v13 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v18[0] = 67109888;
      v18[1] = v7;
      v19 = 1024;
      v20 = HIWORD(v8);
      v21 = 1024;
      v22 = v10 >> 8;
      v23 = 1024;
      v24 = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Unhandled code in authorized account token response: %c%c%c%c", v18, 0x1Au);
    }

LABEL_13:

    goto LABEL_14;
  }

LABEL_15:

  return v6;
}

+ (id)_parseUpdateResponseWithBytes:(const char *)a3 length:(unint64_t)a4
{
  if (!a4)
  {
    goto LABEL_14;
  }

  v4 = a4;
  v6 = 0;
  do
  {
    v7 = *a3;
    v8 = (v7 << 24) | (*(a3 + 1) << 16);
    v9 = *(a3 + 3);
    v10 = v9 | (*(a3 + 2) << 8) | v8;
    v11 = *(a3 + 1);
    if (v10 == 1836282996)
    {
      goto LABEL_11;
    }

    if (v10 == 1836413810)
    {
      v6 = bswap32(*(a3 + 2));
      v12 = os_log_create("com.apple.amp.itunescloudd", "Default");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v20 = v6;
        v13 = v12;
        v14 = "Server revision number: %d";
        v15 = 8;
LABEL_9:
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v14, buf, v15);
      }
    }

    else
    {
      v12 = os_log_create("com.apple.amp.itunescloudd", "Default");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109888;
        v20 = v7;
        v21 = 1024;
        v22 = HIWORD(v8);
        v23 = 1024;
        v24 = v10 >> 8;
        v25 = 1024;
        v26 = v9;
        v13 = v12;
        v14 = "Unhandled code in update response: %c%c%c%c";
        v15 = 26;
        goto LABEL_9;
      }
    }

LABEL_11:
    v16 = bswap32(v11);
    a3 += v16 + 8;
    v4 = v4 - 8 - v16;
  }

  while (v4);
  if (v6)
  {
    v17 = [NSNumber numberWithUnsignedInt:v6];
    goto LABEL_15;
  }

LABEL_14:
  v17 = 0;
LABEL_15:

  return v17;
}

+ (id)_parseLoginResponseWithBytes:(const char *)a3 length:(unint64_t)a4
{
  if (!a4)
  {
    goto LABEL_14;
  }

  v4 = a4;
  v6 = 0;
  do
  {
    v7 = *a3;
    v8 = (v7 << 24) | (*(a3 + 1) << 16);
    v9 = *(a3 + 3);
    v10 = v9 | (*(a3 + 2) << 8) | v8;
    v11 = *(a3 + 1);
    if (v10 == 1836282996)
    {
      goto LABEL_11;
    }

    if (v10 == 1835821412)
    {
      v6 = bswap32(*(a3 + 2));
      v12 = os_log_create("com.apple.amp.itunescloudd", "Default");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *v20 = v6;
        v13 = v12;
        v14 = "Login session ID: %lu";
        v15 = 12;
LABEL_9:
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v14, buf, v15);
      }
    }

    else
    {
      v12 = os_log_create("com.apple.amp.itunescloudd", "Default");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109888;
        *v20 = v7;
        *&v20[4] = 1024;
        *&v20[6] = HIWORD(v8);
        v21 = 1024;
        v22 = v10 >> 8;
        v23 = 1024;
        v24 = v9;
        v13 = v12;
        v14 = "Unhandled code in login response: %c%c%c%c";
        v15 = 26;
        goto LABEL_9;
      }
    }

LABEL_11:
    v16 = bswap32(v11);
    a3 += v16 + 8;
    v4 = v4 - 8 - v16;
  }

  while (v4);
  if (v6)
  {
    v17 = [NSNumber numberWithUnsignedInteger:v6];
    goto LABEL_15;
  }

LABEL_14:
  v17 = 0;
LABEL_15:

  return v17;
}

+ (id)_parseResponseCode:(unsigned int)a3 bytes:(const char *)a4 length:(unint64_t)a5 usingHandler:(id)a6
{
  v10 = a6;
  if (a3 <= 1634757752)
  {
    if (a3 > 1634026304)
    {
      if (a3 <= 1634027330)
      {
        if (a3 == 1634026305)
        {
          v11 = [a1 _parseCloudArtworkInfoResponseWithBytes:a4 length:a5];
          goto LABEL_34;
        }

        if (a3 == 1634026348)
        {
          v11 = [a1 _parseCloudLyricsInfoResponseWithBytes:a4 length:a5];
          goto LABEL_34;
        }
      }

      else
      {
        switch(a3)
        {
          case 0x61654743u:
            goto LABEL_33;
          case 0x6165544Bu:
            v11 = [a1 _parseAuthorizedAccountTokenWithBytes:a4 length:a5];
            goto LABEL_34;
          case 0x616A4C72u:
            v11 = [a1 _parseBulkCloudLyricsInfoResponseWithBytes:a4 length:a5];
            goto LABEL_34;
        }
      }

      goto LABEL_46;
    }

    if (a3 > 1634025792)
    {
      if (a3 != 1634025793 && a3 != 1634025813)
      {
        if (a3 == 1634026066)
        {
          v11 = [a1 _parseBulkCloudArtworkInfoResponseWithBytes:a4 length:a5];
          goto LABEL_34;
        }

        goto LABEL_46;
      }

      goto LABEL_33;
    }

    if (a3 == 1633841775)
    {
      goto LABEL_33;
    }

    v12 = 1633968755;
LABEL_32:
    if (a3 == v12)
    {
      goto LABEL_33;
    }

    goto LABEL_46;
  }

  if (a3 <= 1668117363)
  {
    if (a3 > 1635148897)
    {
      switch(a3)
      {
        case 0x61766462u:
          goto LABEL_33;
        case 0x63616369u:
          v11 = [a1 _parseControlInterfacesResponseWithBytes:a4 length:a5];
          goto LABEL_34;
        case 0x636D6370u:
          v11 = [a1 _parseControlPromptResponseWithBytes:a4 length:a5];
          goto LABEL_34;
      }

LABEL_46:
      v15 = os_log_create("com.apple.amp.itunescloudd", "Default");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16[0] = 67109888;
        v16[1] = HIBYTE(a3);
        v17 = 1024;
        v18 = HIWORD(a3);
        v19 = 1024;
        v20 = a3 >> 8;
        v21 = 1024;
        v22 = a3;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Unhandled code in response: %c%c%c%c", v16, 0x1Au);
      }

      goto LABEL_49;
    }

    if (a3 == 1634757753)
    {
      goto LABEL_33;
    }

    v12 = 1634759535;
    goto LABEL_32;
  }

  if (a3 <= 1835364977)
  {
    if (a3 == 1668117364)
    {
      v11 = [a1 _parsePlayStatusResponseWithBytes:a4 length:a5];
      goto LABEL_34;
    }

    if (a3 != 1835360880)
    {
      if (a3 == 1835361379)
      {
        v11 = [a1 _parseEditCommandResponseWithBytes:a4 length:a5];
LABEL_34:
        v13 = v11;
        goto LABEL_35;
      }

      goto LABEL_46;
    }

LABEL_33:
    v11 = [a1 _parseItemsResponseWithBytes:a4 length:a5 usingHandler:v10];
    goto LABEL_34;
  }

  if (a3 != 1835364978)
  {
    if (a3 == 1836413028)
    {
      v11 = [a1 _parseUpdateResponseWithBytes:a4 length:a5];
      goto LABEL_34;
    }

    if (a3 == 1835822951)
    {
      v11 = [a1 _parseLoginResponseWithBytes:a4 length:a5];
      goto LABEL_34;
    }

    goto LABEL_46;
  }

LABEL_49:
  v13 = 0;
LABEL_35:

  return v13;
}

+ (unint64_t)_parseItemPropertyCountWithBytes:(const char *)a3 length:(unint64_t)a4
{
  result = 0;
  if (a4)
  {
    do
    {
      v5 = bswap32(*(a3 + 1));
      ++result;
      a3 += v5 + 8;
      v6 = a4 - v5;
      a4 = v6 - 8;
    }

    while (v6 != 8);
  }

  return result;
}

+ (void)enumerateDeletedItemsInResponseData:(id)a3 usingHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [v6 length];
    if (v8 >= 9)
    {
      v9 = v8;
      v10 = [v6 bytes];
      v11 = bswap32(*v10);
      if (v11 == 1634757753 || v11 == 1633968755)
      {
        v13 = (v9 - 8);
        if (v9 - 8 == bswap32(v10[1]))
        {
          if (v13 < 9)
          {
LABEL_13:
            v17 = 0;
          }

          else
          {
            v14 = v10 + 2;
            while (1)
            {
              v15 = bswap32(v14[1]);
              v16 = v14 + 2;
              if (bswap32(*v14) == 1836409964)
              {
                break;
              }

              v14 = (v16 + v15);
              v13 = v13 - v15 - 8;
              if (v13 <= 8)
              {
                goto LABEL_13;
              }
            }

            v17 = [a1 _parseDeletedIDListingWithBytes:v16 length:v15];
          }

          v18[0] = _NSConcreteStackBlock;
          v18[1] = 3221225472;
          v18[2] = sub_10011B988;
          v18[3] = &unk_1001DEC00;
          v19 = v7;
          [v17 enumerateObjectsUsingBlock:v18];
        }
      }
    }
  }
}

+ (void)enumerateItemsInResponseData:(id)a3 usingHandler:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10011BA50;
    v9[3] = &unk_1001DEBD8;
    v11 = a1;
    v10 = v6;
    v8 = [a1 enumerateRawItemsInResponseData:a3 usingHandler:v9];
  }
}

+ (void)parseItemWithBytes:(const char *)a3 length:(unint64_t)a4 usingHandler:(id)a5
{
  if (a5)
  {
    v8 = a5;
    v9 = [a1 _parseItemPropertyCountWithBytes:a3 length:a4];
    v10 = v9;
    if (v9 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v9;
    }

    v12 = &v13 - 4 * v11;
    [a1 parseItemWithBytes:a3 length:a4 valuesOut:v12 valuesCapacity:v9];
    HIBYTE(v13) = 0;
    v8[2](v8, v12, v10, &v13 + 7);
  }
}

+ (unint64_t)parseItemWithBytes:(const char *)a3 length:(unint64_t)a4 valuesOut:(id *)a5 valuesCapacity:(unint64_t)a6
{
  result = 0;
  if (a4 && a6)
  {
    result = 0;
    p_var2 = &a5->var2;
    while (1)
    {
      v9 = *a3;
      v10 = *(a3 + 1);
      v8 = a3 + 8;
      v11 = bswap32(v9);
      v12 = bswap32(v10);
      *(p_var2 - 4) = v11;
      *(p_var2 - 1) = v8;
      *p_var2 = v12;
      if (v11 > 1634358883)
      {
        if (v11 > 1634953069)
        {
          if (v11 <= 1634956128)
          {
            if (v11 > 1634954338)
            {
              if (v11 != 1634954339)
              {
                v13 = 2;
                v18 = 28789;
                goto LABEL_69;
              }
            }

            else if (v11 != 1634953070)
            {
              v13 = 2;
              v18 = 27513;
LABEL_69:
              v19 = v18 | 0x61730000;
              goto LABEL_70;
            }
          }

          else
          {
            if (v11 <= 1634956651)
            {
              if ((v11 - 1634956129) <= 0x14)
              {
                v13 = 2;
                if (((1 << (v11 - 97)) & 0x142805) != 0)
                {
                  goto LABEL_73;
                }
              }

              goto LABEL_71;
            }

            if (v11 != 1634956652 && v11 != 1835366516)
            {
              v13 = 2;
              v19 = 1835626093;
              goto LABEL_70;
            }
          }
        }

        else if (v11 <= 1634952044)
        {
          if ((v11 - 1634951521) > 0x11 || ((1 << (v11 - 97)) & 0x20801) == 0)
          {
            v13 = 2;
            if (v11 == 1634358884)
            {
              goto LABEL_73;
            }

            v17 = 1634366060;
            goto LABEL_53;
          }
        }

        else
        {
          if (v11 <= 1634952307)
          {
            if ((v11 - 1634952045) <= 7)
            {
              v13 = 2;
              if (((1 << (v11 - 109)) & 0x8B) != 0)
              {
                goto LABEL_73;
              }
            }

            goto LABEL_71;
          }

          if (v11 > 1634952560)
          {
            if (v11 != 1634952561)
            {
              v13 = 2;
              v18 = 26221;
              goto LABEL_69;
            }
          }

          else if (v11 != 1634952308)
          {
            v13 = 2;
            v18 = 25956;
            goto LABEL_69;
          }
        }
      }

      else if (v11 > 1634030159)
      {
        if (v11 <= 1634036069)
        {
          if (v11 > 1634031683)
          {
            if (v11 != 1634031684)
            {
              v13 = 2;
              if (v11 == 1634034544)
              {
                goto LABEL_73;
              }

              v14 = 26220;
              goto LABEL_52;
            }
          }

          else if (v11 != 1634030160 && v11 != 1634030192)
          {
            v13 = 2;
            v16 = 21326;
LABEL_48:
            v19 = v16 | 0x61650000;
LABEL_70:
            if (v11 == v19)
            {
              goto LABEL_73;
            }

LABEL_71:
            v13 = 1;
            goto LABEL_73;
          }
        }

        else if (v11 <= 1634354516)
        {
          if (v11 == 1634036070)
          {
            goto LABEL_58;
          }

          if (v11 != 1634037878)
          {
            v13 = 2;
            v19 = 1634169456;
            goto LABEL_70;
          }
        }

        else if (v11 > 1634356832)
        {
          if (v11 != 1634356833)
          {
            v13 = 2;
            v15 = 20565;
            goto LABEL_66;
          }
        }

        else if (v11 != 1634354517)
        {
          v13 = 2;
          v15 = 17779;
LABEL_66:
          v19 = v15 | 0x616A0000;
          goto LABEL_70;
        }
      }

      else
      {
        if (v11 <= 1634026829)
        {
          if ((v11 - 1634026308) <= 0x31)
          {
            v13 = 2;
            if (((1 << (v11 - 68)) & 0x3400000014000) != 0)
            {
              goto LABEL_73;
            }

            if (v11 == 1634026308)
            {
LABEL_58:
              v13 = 3;
              goto LABEL_73;
            }
          }

          v14 = 17483;
LABEL_52:
          v17 = v14 | 0x61650000;
LABEL_53:
          if (v11 == v17)
          {
            goto LABEL_58;
          }

          goto LABEL_71;
        }

        if (v11 > 1634029133)
        {
          if (v11 != 1634029134)
          {
            if (v11 == 1634029636)
            {
              goto LABEL_58;
            }

            v13 = 2;
            v16 = 20580;
            goto LABEL_48;
          }
        }

        else if (v11 != 1634026830)
        {
          if (v11 == 1634027347)
          {
            goto LABEL_58;
          }

          v13 = 2;
          v16 = 19800;
          goto LABEL_48;
        }
      }

      v13 = 2;
LABEL_73:
      p_var2[1] = v13;
      ++result;
      a4 = a4 - 8 - v12;
      if (a4)
      {
        a3 = &v8[v12];
        p_var2 += 4;
        if (result < a6)
        {
          continue;
        }
      }

      return result;
    }
  }

  return result;
}

+ (id)enumerateRawItemsInResponseData:(id)a3 usingHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 length];
  v9 = v8 - 8;
  if (v8 >= 8)
  {
    v10 = v8;
    v11 = [v6 bytes];
    v12 = bswap32(*v11);
    v13 = bswap32(v11[1]);
    if (v9 == v13)
    {
      v14 = [a1 _parseResponseCode:v12 bytes:v11 + 2 length:v13 usingHandler:v7];
      goto LABEL_8;
    }

    v15 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17[0] = 67109632;
      v17[1] = v12;
      v18 = 2048;
      v19 = v10;
      v20 = 2048;
      v21 = v13;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Warning: Invalid response data (code: %08x, length: %lu, encodedLength: %lu)", v17, 0x1Cu);
    }
  }

  v14 = 0;
LABEL_8:

  return v14;
}

+ (id)parseErrorInResponseData:(id)a3
{
  v4 = a3;
  v5 = [v4 length];
  v6 = v5 - 8;
  if (v5 >= 8)
  {
    v7 = v5;
    v8 = [v4 bytes];
    v9 = bswap32(*v8);
    v10 = bswap32(v8[1]);
    if (v6 == v10)
    {
      if (v9 == 1835364978)
      {
        v11 = [a1 _parseErrorResponseWithBytes:v8 + 2 length:v10];
        goto LABEL_9;
      }
    }

    else
    {
      v12 = os_log_create("com.apple.amp.itunescloudd", "Default");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14[0] = 67109632;
        v14[1] = v9;
        v15 = 2048;
        v16 = v7;
        v17 = 2048;
        v18 = v10;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Warning: Invalid response data (code: %08x, length: %lu, encodedLength: %lu)", v14, 0x1Cu);
      }
    }
  }

  v11 = 0;
LABEL_9:

  return v11;
}

@end