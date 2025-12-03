@interface ICDResponseDataParser
+ (id)_parseAuthorizedAccountTokenWithBytes:(const char *)bytes length:(unint64_t)length;
+ (id)_parseBrowseListingWithBytes:(const char *)bytes length:(unint64_t)length;
+ (id)_parseBulkCloudArtworkInfoResponseWithBytes:(const char *)bytes length:(unint64_t)length;
+ (id)_parseBulkCloudLyricsInfoResponseWithBytes:(const char *)bytes length:(unint64_t)length;
+ (id)_parseCloudArtworkInfoResponseWithBytes:(const char *)bytes length:(unint64_t)length;
+ (id)_parseCloudLyricsInfoResponseWithBytes:(const char *)bytes length:(unint64_t)length;
+ (id)_parseControlInterfacesResponseWithBytes:(const char *)bytes length:(unint64_t)length;
+ (id)_parseControlPromptResponseWithBytes:(const char *)bytes length:(unint64_t)length;
+ (id)_parseDeletedIDListingWithBytes:(const char *)bytes length:(unint64_t)length;
+ (id)_parseDictionaryCollectionWithBytes:(const char *)bytes length:(unint64_t)length;
+ (id)_parseEditCommandResponseWithBytes:(const char *)bytes length:(unint64_t)length;
+ (id)_parseErrorResponseWithBytes:(const char *)bytes length:(unint64_t)length;
+ (id)_parseItemIDArrayWithBytes:(const char *)bytes length:(unint64_t)length;
+ (id)_parseItemsResponseWithBytes:(const char *)bytes length:(unint64_t)length usingHandler:(id)handler;
+ (id)_parseListingCollectionWithBytes:(const char *)bytes length:(unint64_t)length usingHandler:(id)handler;
+ (id)_parseListingItemWithBytes:(const char *)bytes length:(unsigned int)length usingHandler:(id)handler;
+ (id)_parseLoginResponseWithBytes:(const char *)bytes length:(unint64_t)length;
+ (id)_parsePlayStatusResponseWithBytes:(const char *)bytes length:(unint64_t)length;
+ (id)_parseResponseCode:(unsigned int)code bytes:(const char *)bytes length:(unint64_t)length usingHandler:(id)handler;
+ (id)_parseUpdateResponseWithBytes:(const char *)bytes length:(unint64_t)length;
+ (id)_parseUpdateTypeWithBytes:(const char *)bytes length:(unint64_t)length;
+ (id)enumerateRawItemsInResponseData:(id)data usingHandler:(id)handler;
+ (id)parseErrorInResponseData:(id)data;
+ (unint64_t)_parseItemPropertyCountWithBytes:(const char *)bytes length:(unint64_t)length;
+ (unint64_t)parseItemWithBytes:(const char *)bytes length:(unint64_t)length valuesOut:(id *)out valuesCapacity:(unint64_t)capacity;
+ (void)enumerateDeletedItemsInResponseData:(id)data usingHandler:(id)handler;
+ (void)enumerateItemsInResponseData:(id)data usingHandler:(id)handler;
+ (void)parseItemWithBytes:(const char *)bytes length:(unint64_t)length usingHandler:(id)handler;
@end

@implementation ICDResponseDataParser

+ (id)_parseListingItemWithBytes:(const char *)bytes length:(unsigned int)length usingHandler:(id)handler
{
  handlerCopy = handler;
  v8 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, bytes, length);
    v9 = 0;
  }

  else
  {
    v9 = +[NSMutableDictionary dictionary];
    while (length)
    {
      v10 = *bytes;
      v11 = *(bytes + 1);
      v12 = (bytes + 8);
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

      bytes = &v12[v13];
      length = length - 8 - v13;
    }
  }

  return v9;
}

+ (id)_parseErrorResponseWithBytes:(const char *)bytes length:(unint64_t)length
{
  for (i = +[NSMutableDictionary dictionary];
  {
    v7 = *bytes;
    v8 = (v7 << 24) | (*(bytes + 1) << 16);
    v9 = *(bytes + 3);
    v10 = v9 | (*(bytes + 2) << 8) | v8;
    v11 = bswap32(*(bytes + 1));
    v12 = bytes + 8;
    switch(v10)
    {
      case 0x61655243u:
        v13 = [NSNumber numberWithUnsignedInt:bswap32(*(bytes + 2))];
        v14 = i;
        v15 = v13;
        v16 = &off_1001EDC78;
        break;
      case 0x6D737473u:
        v13 = [[NSString alloc] initWithBytes:bytes + 8 length:v11 encoding:4];
        v14 = i;
        v15 = v13;
        v16 = &off_1001EDC60;
        break;
      case 0x6D737474u:
        v13 = [NSNumber numberWithUnsignedInt:bswap32(*(bytes + 2))];
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

    bytes = &v12[v11];
  }

  return i;
}

+ (id)_parsePlayStatusResponseWithBytes:(const char *)bytes length:(unint64_t)length
{
  v6 = +[NSMutableDictionary dictionary];
  if (length)
  {
    while (1)
    {
      v7 = *bytes;
      v8 = (v7 << 24) | (*(bytes + 1) << 16);
      v9 = *(bytes + 3);
      v10 = v9 | (*(bytes + 2) << 8) | v8;
      v11 = bswap32(*(bytes + 1));
      v12 = (bytes + 8);
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
                v13 = [[NSData alloc] initWithBytes:bytes + 8 length:v11];
                v14 = v6;
                v15 = v13;
                v16 = &off_1001EDC30;
                goto LABEL_80;
              }

              goto LABEL_84;
            }

            v13 = [NSNumber numberWithUnsignedInt:bswap32(*(bytes + 2))];
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
                v13 = [[NSData alloc] initWithBytes:bytes + 8 length:v11];
                v14 = v6;
                v15 = v13;
                v16 = &off_1001EDC18;
                goto LABEL_80;
              }

              goto LABEL_84;
            }

            v13 = [[NSString alloc] initWithBytes:bytes + 8 length:v11 encoding:4];
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
                v13 = [[NSString alloc] initWithBytes:bytes + 8 length:v11 encoding:4];
                v14 = v6;
                v15 = v13;
                v16 = &off_1001ED9A8;
                goto LABEL_80;
              }

              goto LABEL_84;
            }

            v13 = [[NSString alloc] initWithBytes:bytes + 8 length:v11 encoding:4];
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
                v13 = [[NSString alloc] initWithBytes:bytes + 8 length:v11 encoding:4];
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

          v13 = [NSNumber numberWithUnsignedInt:bswap32(*(bytes + 2))];
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
              v13 = [NSNumber numberWithUnsignedInt:bswap32(*(bytes + 2))];
              v14 = v6;
              v15 = v13;
              v16 = &off_1001EDA68;
              goto LABEL_80;
            }

            goto LABEL_84;
          }

          v13 = [NSNumber numberWithUnsignedLongLong:((*(bytes + 8) << 56) | (*(bytes + 9) << 48) | (*(bytes + 10) << 40) | (*(bytes + 11) << 32) | (*(bytes + 12) << 24) | (*(bytes + 13) << 16) | (*(bytes + 14) << 8)) + *(bytes + 15)];
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
                v13 = [NSNumber numberWithUnsignedInt:bswap32(*(bytes + 2))];
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

          v13 = [NSNumber numberWithUnsignedInt:bswap32(*(bytes + 2))];
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
            v13 = [NSNumber numberWithUnsignedInt:bswap32(*(bytes + 2))];
            v14 = v6;
            v15 = v13;
            v16 = &off_1001EDB88;
            goto LABEL_80;
          }

          goto LABEL_84;
        }

        v13 = [[NSString alloc] initWithBytes:bytes + 8 length:v11 encoding:4];
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
          v13 = [NSNumber numberWithUnsignedInt:bswap32(*(bytes + 2))];
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

      bytes = &v12[v11];
      length = length - 8 - v11;
      if (!length)
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
          v13 = [[NSString alloc] initWithBytes:bytes + 8 length:v11 encoding:4];
          v14 = v6;
          v15 = v13;
          v16 = &off_1001EDB28;
          goto LABEL_80;
        }

        goto LABEL_84;
      }

      v13 = [[NSString alloc] initWithBytes:bytes + 8 length:v11 encoding:4];
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
          v13 = [[NSString alloc] initWithBytes:bytes + 8 length:v11 encoding:4];
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

+ (id)_parseItemIDArrayWithBytes:(const char *)bytes length:(unint64_t)length
{
  for (i = +[NSMutableArray array];
  {
    v7 = *bytes;
    v8 = (v7 << 24) | (*(bytes + 1) << 16);
    v9 = *(bytes + 3);
    v10 = v9 | (*(bytes + 2) << 8) | v8;
    v11 = *(bytes + 1);
    if (v10 == 1835624804)
    {
      v12 = [NSNumber numberWithUnsignedInt:bswap32(*(bytes + 2))];
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

    bytes += v13 + 8;
  }

  return i;
}

+ (id)_parseBrowseListingWithBytes:(const char *)bytes length:(unint64_t)length
{
  for (i = +[NSMutableArray array];
  {
    v7 = *bytes;
    v8 = (v7 << 24) | (*(bytes + 1) << 16);
    v9 = *(bytes + 3);
    v10 = v9 | (*(bytes + 2) << 8) | v8;
    v11 = bswap32(*(bytes + 1));
    v12 = bytes + 8;
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

    bytes = &v12[v11];
  }

  return i;
}

+ (id)_parseListingCollectionWithBytes:(const char *)bytes length:(unint64_t)length usingHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v20 = 0;
    if (!length)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v20 = +[NSMutableArray array];
    if (!length)
    {
      goto LABEL_16;
    }
  }

  do
  {
    v9 = *bytes;
    v10 = (v9 << 24) | (*(bytes + 1) << 16);
    v11 = *(bytes + 3);
    v12 = v11 | (*(bytes + 2) << 8) | v10;
    v13 = bswap32(*(bytes + 1));
    v14 = bytes + 8;
    if (v12 == 1634025828 || v12 == 1835821428 || v12 == 1634036070)
    {
      v17 = [self _parseListingItemWithBytes:v14 length:v13 usingHandler:handlerCopy];
      if (!handlerCopy)
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

    bytes = &v14[v13];
    length = length - 8 - v13;
  }

  while (length);
LABEL_16:

  return v20;
}

+ (id)_parseItemsResponseWithBytes:(const char *)bytes length:(unint64_t)length usingHandler:(id)handler
{
  handlerCopy = handler;
  v8 = 0;
  if (length)
  {
    *&v7 = 67109120;
    v32 = v7;
    while (1)
    {
      v9 = *bytes;
      v10 = (v9 << 24) | (*(bytes + 1) << 16);
      v11 = *(bytes + 3);
      v12 = v11 | (*(bytes + 2) << 8) | v10;
      v13 = *(bytes + 1);
      v14 = length - 8;
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
            v25 = *(bytes + 8);
            v26 = *(bytes + 9);
            v27 = *(bytes + 10);
            v28 = *(bytes + 11);
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
          v19 = [self _parseListingCollectionWithBytes:bytes + 8 length:length - 8 usingHandler:handlerCopy];
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
        v29 = bswap32(*(bytes + 2));
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
      bytes += v30 + 8;
      length = v14 - v30;
      if (v14 == v30)
      {
        goto LABEL_40;
      }
    }

    if (v12 == 1633837420 || v12 == 1633837426 || v12 == 1633837936)
    {
LABEL_20:
      v19 = [self _parseBrowseListingWithBytes:bytes + 8 length:{length - 8, v32}];
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

+ (id)_parseUpdateTypeWithBytes:(const char *)bytes length:(unint64_t)length
{
  if (length)
  {
    lengthCopy = length;
    v6 = 0;
    while (1)
    {
      v7 = bswap32(*bytes);
      v8 = bswap32(*(bytes + 1));
      v9 = (bytes + 8);
      if (v7 == 1836414073)
      {
        v11 = [NSNumber numberWithUnsignedChar:*v9];

        v6 = v11;
      }

      else if (v7 == 1633968755 || v7 == 1634759535)
      {
        v12 = [self _parseUpdateTypeWithBytes:bytes + 8 length:v8];
        goto LABEL_15;
      }

      bytes = &v9[v8];
      lengthCopy = lengthCopy - 8 - v8;
      if (!lengthCopy)
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

+ (id)_parseEditCommandResponseWithBytes:(const char *)bytes length:(unint64_t)length
{
  v6 = +[NSMutableDictionary dictionary];
  if (length)
  {
    while (1)
    {
      v7 = *bytes;
      v8 = (v7 << 24) | (*(bytes + 1) << 16);
      v9 = *(bytes + 3);
      v10 = v9 | (*(bytes + 2) << 8) | v8;
      v11 = *(bytes + 1);
      if (v10 == 1835624804)
      {
        break;
      }

      if (v10 != 1836282996)
      {
        if (v10 == 1836413810)
        {
          v12 = [NSNumber numberWithUnsignedInt:bswap32(*(bytes + 2))];
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
      bytes += v16 + 8;
      length = length - 8 - v16;
      if (!length)
      {
        goto LABEL_13;
      }
    }

    v12 = [NSNumber numberWithUnsignedInt:bswap32(*(bytes + 2))];
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

+ (id)_parseDictionaryCollectionWithBytes:(const char *)bytes length:(unint64_t)length
{
  v17 = +[NSMutableDictionary dictionary];
  if (length >= 9)
  {
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = *bytes;
      v9 = (v8 << 24) | (*(bytes + 1) << 16);
      v10 = *(bytes + 3);
      v11 = v10 | (*(bytes + 2) << 8) | v9;
      v12 = bswap32(*(bytes + 1));
      v13 = bytes + 8;
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

      bytes = &v13[v12];
      length = length - 8 - v12;
      if (length <= 8)
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

+ (id)_parseDeletedIDListingWithBytes:(const char *)bytes length:(unint64_t)length
{
  v6 = +[NSMutableArray array];
  if (length >= 9)
  {
    do
    {
      v7 = *bytes;
      v8 = (v7 << 24) | (*(bytes + 1) << 16);
      v9 = *(bytes + 3);
      v10 = v9 | (*(bytes + 2) << 8) | v8;
      v11 = *(bytes + 1);
      if (v10 == 1835625572)
      {
        v12 = [NSNumber numberWithUnsignedLongLong:((*(bytes + 8) << 56) | (*(bytes + 9) << 48) | (*(bytes + 10) << 40) | (*(bytes + 11) << 32) | (*(bytes + 12) << 24) | (*(bytes + 13) << 16) | (*(bytes + 14) << 8)) + *(bytes + 15)];
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

        v12 = [NSNumber numberWithUnsignedInt:bswap32(*(bytes + 2))];
      }

      v13 = v12;
      [v6 addObject:v12];
LABEL_7:
      v14 = bswap32(v11);

      bytes += v14 + 8;
      length = length - 8 - v14;
    }

    while (length > 8);
  }

  return v6;
}

+ (id)_parseControlPromptResponseWithBytes:(const char *)bytes length:(unint64_t)length
{
  v6 = +[NSMutableDictionary dictionary];
  if (length)
  {
    while (1)
    {
      v7 = *bytes;
      v8 = (v7 << 24) | (*(bytes + 1) << 16);
      v9 = *(bytes + 3);
      v10 = v9 | (*(bytes + 2) << 8) | v8;
      v11 = bswap32(*(bytes + 1));
      v12 = bytes + 8;
      if (v10 == 1835295596)
      {
        break;
      }

      if (v10 != 1836282996)
      {
        if (v10 == 1835624804)
        {
          v13 = [NSNumber numberWithUnsignedInt:bswap32(*(bytes + 2))];
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

      bytes = &v12[v11];
      length = length - 8 - v11;
      if (!length)
      {
        goto LABEL_12;
      }
    }

    v13 = [self _parseDictionaryCollectionWithBytes:bytes + 8 length:v11];
    if (v13)
    {
      [v6 addEntriesFromDictionary:v13];
    }

    goto LABEL_10;
  }

LABEL_12:

  return v6;
}

+ (id)_parseControlInterfacesResponseWithBytes:(const char *)bytes length:(unint64_t)length
{
  v4 = 0;
  if (length)
  {
    while (1)
    {
      v5 = *bytes;
      v6 = (v5 << 24) | (*(bytes + 1) << 16);
      v7 = *(bytes + 3);
      v8 = v7 | (*(bytes + 2) << 8) | v6;
      v9 = *(bytes + 1);
      v10 = bytes + 8;
      v11 = length - 8;
      if (v8 > 1836282995)
      {
        break;
      }

      if (v8 == 1835819884)
      {
        [self _parseListingCollectionWithBytes:bytes + 8 length:length - 8 usingHandler:0];
        v4 = v13 = v4;
        goto LABEL_13;
      }

      if (v8 != 1836213103)
      {
        goto LABEL_10;
      }

LABEL_14:
      v14 = bswap32(v9);
      bytes = &v10[v14];
      length = v11 - v14;
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

+ (id)_parseCloudLyricsInfoResponseWithBytes:(const char *)bytes length:(unint64_t)length
{
  for (i = +[NSMutableDictionary dictionary];
  {
    v7 = *bytes;
    v8 = (v7 << 24) | (*(bytes + 1) << 16);
    v9 = *(bytes + 3);
    v10 = v9 | (*(bytes + 2) << 8) | v8;
    v11 = bswap32(*(bytes + 1));
    v12 = bytes + 8;
    if (v10 != 1836282996)
    {
      if (v10 == 1835295596)
      {
        v13 = [self _parseDictionaryCollectionWithBytes:v12 length:v11];
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

    bytes = &v12[v11];
  }

  return i;
}

+ (id)_parseCloudArtworkInfoResponseWithBytes:(const char *)bytes length:(unint64_t)length
{
  for (i = +[NSMutableDictionary dictionary];
  {
    v7 = *bytes;
    v8 = (v7 << 24) | (*(bytes + 1) << 16);
    v9 = *(bytes + 3);
    v10 = v9 | (*(bytes + 2) << 8) | v8;
    v11 = bswap32(*(bytes + 1));
    v12 = bytes + 8;
    if (v10 != 1836282996)
    {
      if (v10 == 1835295596)
      {
        v13 = [self _parseDictionaryCollectionWithBytes:v12 length:v11];
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

    bytes = &v12[v11];
  }

  return i;
}

+ (id)_parseBulkCloudLyricsInfoResponseWithBytes:(const char *)bytes length:(unint64_t)length
{
  v4 = 0;
  if (length)
  {
    do
    {
      v5 = *bytes;
      v6 = (v5 << 24) | (*(bytes + 1) << 16);
      v7 = *(bytes + 3);
      v8 = v7 | (*(bytes + 2) << 8) | v6;
      v9 = *(bytes + 1);
      v10 = bytes + 8;
      v11 = length - 8;
      if (v8 != 1836282996)
      {
        if (v8 == 1835819884)
        {
          [self _parseListingCollectionWithBytes:bytes + 8 length:length - 8 usingHandler:0];
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
      bytes = &v10[v13];
      length = v11 - v13;
    }

    while (v11 != v13);
  }

  return v4;
}

+ (id)_parseBulkCloudArtworkInfoResponseWithBytes:(const char *)bytes length:(unint64_t)length
{
  v4 = 0;
  if (length)
  {
    do
    {
      v5 = *bytes;
      v6 = (v5 << 24) | (*(bytes + 1) << 16);
      v7 = *(bytes + 3);
      v8 = v7 | (*(bytes + 2) << 8) | v6;
      v9 = *(bytes + 1);
      v10 = bytes + 8;
      v11 = length - 8;
      if (v8 != 1836282996)
      {
        if (v8 == 1835819884)
        {
          [self _parseListingCollectionWithBytes:bytes + 8 length:length - 8 usingHandler:0];
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
      bytes = &v10[v13];
      length = v11 - v13;
    }

    while (v11 != v13);
  }

  return v4;
}

+ (id)_parseAuthorizedAccountTokenWithBytes:(const char *)bytes length:(unint64_t)length
{
  v6 = +[NSMutableDictionary dictionary];
  if (length)
  {
    while (1)
    {
      v7 = *bytes;
      v8 = (v7 << 24) | (*(bytes + 1) << 16);
      v9 = *(bytes + 3);
      v10 = v9 | (*(bytes + 2) << 8) | v8;
      v11 = bswap32(*(bytes + 1));
      v12 = bytes + 8;
      if (v10 <= 1634030674)
      {
        break;
      }

      if (v10 == 1634030675)
      {
        v13 = [NSNumber numberWithUnsignedLongLong:bswap32(*(bytes + 2))];
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
      bytes = &v12[v11];
      length = length - 8 - v11;
      if (!length)
      {
        goto LABEL_15;
      }
    }

    if (v10 == 1634026578)
    {
      v13 = [NSNumber numberWithUnsignedLongLong:((*(bytes + 8) << 56) | (*(bytes + 9) << 48) | (*(bytes + 10) << 40) | (*(bytes + 11) << 32) | (*(bytes + 12) << 24) | (*(bytes + 13) << 16) | (*(bytes + 14) << 8)) + *(bytes + 15)];
      v14 = v6;
      v15 = v13;
      v16 = @"com.apple.itunes.drm-user-id";
      goto LABEL_12;
    }

    if (v10 == 1634030660)
    {
      v13 = [[NSData alloc] initWithBytesNoCopy:bytes + 8 length:v11 freeWhenDone:0];
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

+ (id)_parseUpdateResponseWithBytes:(const char *)bytes length:(unint64_t)length
{
  if (!length)
  {
    goto LABEL_14;
  }

  lengthCopy = length;
  v6 = 0;
  do
  {
    v7 = *bytes;
    v8 = (v7 << 24) | (*(bytes + 1) << 16);
    v9 = *(bytes + 3);
    v10 = v9 | (*(bytes + 2) << 8) | v8;
    v11 = *(bytes + 1);
    if (v10 == 1836282996)
    {
      goto LABEL_11;
    }

    if (v10 == 1836413810)
    {
      v6 = bswap32(*(bytes + 2));
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
    bytes += v16 + 8;
    lengthCopy = lengthCopy - 8 - v16;
  }

  while (lengthCopy);
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

+ (id)_parseLoginResponseWithBytes:(const char *)bytes length:(unint64_t)length
{
  if (!length)
  {
    goto LABEL_14;
  }

  lengthCopy = length;
  v6 = 0;
  do
  {
    v7 = *bytes;
    v8 = (v7 << 24) | (*(bytes + 1) << 16);
    v9 = *(bytes + 3);
    v10 = v9 | (*(bytes + 2) << 8) | v8;
    v11 = *(bytes + 1);
    if (v10 == 1836282996)
    {
      goto LABEL_11;
    }

    if (v10 == 1835821412)
    {
      v6 = bswap32(*(bytes + 2));
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
    bytes += v16 + 8;
    lengthCopy = lengthCopy - 8 - v16;
  }

  while (lengthCopy);
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

+ (id)_parseResponseCode:(unsigned int)code bytes:(const char *)bytes length:(unint64_t)length usingHandler:(id)handler
{
  handlerCopy = handler;
  if (code <= 1634757752)
  {
    if (code > 1634026304)
    {
      if (code <= 1634027330)
      {
        if (code == 1634026305)
        {
          v11 = [self _parseCloudArtworkInfoResponseWithBytes:bytes length:length];
          goto LABEL_34;
        }

        if (code == 1634026348)
        {
          v11 = [self _parseCloudLyricsInfoResponseWithBytes:bytes length:length];
          goto LABEL_34;
        }
      }

      else
      {
        switch(code)
        {
          case 0x61654743u:
            goto LABEL_33;
          case 0x6165544Bu:
            v11 = [self _parseAuthorizedAccountTokenWithBytes:bytes length:length];
            goto LABEL_34;
          case 0x616A4C72u:
            v11 = [self _parseBulkCloudLyricsInfoResponseWithBytes:bytes length:length];
            goto LABEL_34;
        }
      }

      goto LABEL_46;
    }

    if (code > 1634025792)
    {
      if (code != 1634025793 && code != 1634025813)
      {
        if (code == 1634026066)
        {
          v11 = [self _parseBulkCloudArtworkInfoResponseWithBytes:bytes length:length];
          goto LABEL_34;
        }

        goto LABEL_46;
      }

      goto LABEL_33;
    }

    if (code == 1633841775)
    {
      goto LABEL_33;
    }

    v12 = 1633968755;
LABEL_32:
    if (code == v12)
    {
      goto LABEL_33;
    }

    goto LABEL_46;
  }

  if (code <= 1668117363)
  {
    if (code > 1635148897)
    {
      switch(code)
      {
        case 0x61766462u:
          goto LABEL_33;
        case 0x63616369u:
          v11 = [self _parseControlInterfacesResponseWithBytes:bytes length:length];
          goto LABEL_34;
        case 0x636D6370u:
          v11 = [self _parseControlPromptResponseWithBytes:bytes length:length];
          goto LABEL_34;
      }

LABEL_46:
      v15 = os_log_create("com.apple.amp.itunescloudd", "Default");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16[0] = 67109888;
        v16[1] = HIBYTE(code);
        v17 = 1024;
        v18 = HIWORD(code);
        v19 = 1024;
        v20 = code >> 8;
        v21 = 1024;
        codeCopy = code;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Unhandled code in response: %c%c%c%c", v16, 0x1Au);
      }

      goto LABEL_49;
    }

    if (code == 1634757753)
    {
      goto LABEL_33;
    }

    v12 = 1634759535;
    goto LABEL_32;
  }

  if (code <= 1835364977)
  {
    if (code == 1668117364)
    {
      v11 = [self _parsePlayStatusResponseWithBytes:bytes length:length];
      goto LABEL_34;
    }

    if (code != 1835360880)
    {
      if (code == 1835361379)
      {
        v11 = [self _parseEditCommandResponseWithBytes:bytes length:length];
LABEL_34:
        v13 = v11;
        goto LABEL_35;
      }

      goto LABEL_46;
    }

LABEL_33:
    v11 = [self _parseItemsResponseWithBytes:bytes length:length usingHandler:handlerCopy];
    goto LABEL_34;
  }

  if (code != 1835364978)
  {
    if (code == 1836413028)
    {
      v11 = [self _parseUpdateResponseWithBytes:bytes length:length];
      goto LABEL_34;
    }

    if (code == 1835822951)
    {
      v11 = [self _parseLoginResponseWithBytes:bytes length:length];
      goto LABEL_34;
    }

    goto LABEL_46;
  }

LABEL_49:
  v13 = 0;
LABEL_35:

  return v13;
}

+ (unint64_t)_parseItemPropertyCountWithBytes:(const char *)bytes length:(unint64_t)length
{
  result = 0;
  if (length)
  {
    do
    {
      v5 = bswap32(*(bytes + 1));
      ++result;
      bytes += v5 + 8;
      v6 = length - v5;
      length = v6 - 8;
    }

    while (v6 != 8);
  }

  return result;
}

+ (void)enumerateDeletedItemsInResponseData:(id)data usingHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v8 = [dataCopy length];
    if (v8 >= 9)
    {
      v9 = v8;
      bytes = [dataCopy bytes];
      v11 = bswap32(*bytes);
      if (v11 == 1634757753 || v11 == 1633968755)
      {
        v13 = (v9 - 8);
        if (v9 - 8 == bswap32(bytes[1]))
        {
          if (v13 < 9)
          {
LABEL_13:
            v17 = 0;
          }

          else
          {
            v14 = bytes + 2;
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

            v17 = [self _parseDeletedIDListingWithBytes:v16 length:v15];
          }

          v18[0] = _NSConcreteStackBlock;
          v18[1] = 3221225472;
          v18[2] = sub_10011B988;
          v18[3] = &unk_1001DEC00;
          v19 = handlerCopy;
          [v17 enumerateObjectsUsingBlock:v18];
        }
      }
    }
  }
}

+ (void)enumerateItemsInResponseData:(id)data usingHandler:(id)handler
{
  handlerCopy = handler;
  v7 = handlerCopy;
  if (handlerCopy)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10011BA50;
    v9[3] = &unk_1001DEBD8;
    selfCopy = self;
    v10 = handlerCopy;
    v8 = [self enumerateRawItemsInResponseData:data usingHandler:v9];
  }
}

+ (void)parseItemWithBytes:(const char *)bytes length:(unint64_t)length usingHandler:(id)handler
{
  if (handler)
  {
    handlerCopy = handler;
    v9 = [self _parseItemPropertyCountWithBytes:bytes length:length];
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
    [self parseItemWithBytes:bytes length:length valuesOut:v12 valuesCapacity:v9];
    HIBYTE(v13) = 0;
    handlerCopy[2](handlerCopy, v12, v10, &v13 + 7);
  }
}

+ (unint64_t)parseItemWithBytes:(const char *)bytes length:(unint64_t)length valuesOut:(id *)out valuesCapacity:(unint64_t)capacity
{
  result = 0;
  if (length && capacity)
  {
    result = 0;
    p_var2 = &out->var2;
    while (1)
    {
      v9 = *bytes;
      v10 = *(bytes + 1);
      v8 = bytes + 8;
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
      length = length - 8 - v12;
      if (length)
      {
        bytes = &v8[v12];
        p_var2 += 4;
        if (result < capacity)
        {
          continue;
        }
      }

      return result;
    }
  }

  return result;
}

+ (id)enumerateRawItemsInResponseData:(id)data usingHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  v8 = [dataCopy length];
  v9 = v8 - 8;
  if (v8 >= 8)
  {
    v10 = v8;
    bytes = [dataCopy bytes];
    v12 = bswap32(*bytes);
    v13 = bswap32(bytes[1]);
    if (v9 == v13)
    {
      v14 = [self _parseResponseCode:v12 bytes:bytes + 2 length:v13 usingHandler:handlerCopy];
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

+ (id)parseErrorInResponseData:(id)data
{
  dataCopy = data;
  v5 = [dataCopy length];
  v6 = v5 - 8;
  if (v5 >= 8)
  {
    v7 = v5;
    bytes = [dataCopy bytes];
    v9 = bswap32(*bytes);
    v10 = bswap32(bytes[1]);
    if (v6 == v10)
    {
      if (v9 == 1835364978)
      {
        v11 = [self _parseErrorResponseWithBytes:bytes + 2 length:v10];
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