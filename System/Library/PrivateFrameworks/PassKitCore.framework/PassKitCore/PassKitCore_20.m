id PKTransactionDetailsSensitiveURL(void *a1, void *a2)
{
  v17[2] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if ([v3 length] && objc_msgSend(v4, "length"))
  {
    if (+[PKWalletVisibility isWalletVisible])
    {
      v5 = objc_alloc_init(MEMORY[0x1E696AF20]);
      [v5 setScheme:@"shoebox"];
      [v5 setHost:@"transaction"];
      v6 = [MEMORY[0x1E696AF60] queryItemWithName:@"serviceIdentifier" value:v3];
      v17[0] = v6;
      v7 = [MEMORY[0x1E696AF60] queryItemWithName:@"transactionSourceIdentifier" value:v4];
      v17[1] = v7;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
      [v5 setQueryItems:v8];

      v9 = [v5 URL];
    }

    else
    {
      v5 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"prefs:root=PASSBOOK&path="];
      [v5 appendString:@"transaction"];
      [v5 appendString:@"&"];
      [v5 appendString:@"serviceIdentifier"];
      [v5 appendString:@"="];
      v10 = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
      v11 = [v3 stringByAddingPercentEncodingWithAllowedCharacters:v10];

      [v5 appendString:v11];
      [v5 appendString:@"&"];
      [v5 appendString:@"transactionSourceIdentifier"];
      [v5 appendString:@"="];
      v12 = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
      v13 = [v4 stringByAddingPercentEncodingWithAllowedCharacters:v12];

      [v5 appendString:v13];
      v14 = MEMORY[0x1E695DFF8];
      v15 = [v5 copy];
      v9 = [v14 URLWithString:v15];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

BOOL PKIsEmailAddress(void *a1)
{
  v1 = MEMORY[0x1E699B240];
  v2 = a1;
  v3 = [[v1 alloc] initWithString:v2];

  return v3 != 0;
}

BOOL PKAutomaticRegistrationSupported()
{
  v0 = PKCurrentPassbookState();
  if (v0 >= 2)
  {
    v1 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1AD337000, v1, OS_LOG_TYPE_DEFAULT, "PKAutomaticRegistrationSupported() returning NO since Wallet has been deleted", v4, 2u);
    }
  }

  v2 = !PKAutomaticRegistrationDisabled();
  return v0 < 2 && v2;
}

id PKWalletURLForPassWithUniqueID(void *a1)
{
  v1 = MEMORY[0x1E696AF20];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  [v3 setScheme:@"wallet"];
  [v3 setHost:@"card"];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/%@", v2];

  [v3 setPath:v4];
  v5 = [v3 URL];

  return v5;
}

id PKDismissedKeyForPass(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a1;
  v5 = [a2 uniqueID];
  v6 = [v3 stringWithFormat:@"%@-%@", v4, v5];

  return v6;
}

void __PKSharedCacheSetObjectForKey_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ((byte_1ED6D11E0 & 1) != 0 || (PKSharedCacheCreateDirectory(0, &__block_literal_global_1738), (byte_1ED6D11E0)) && (_SharedCacheDictionary(0), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 writeToURL:v2 atomically:1], v3, v4))
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.passkit.sharedcachechanged", 0, 0, 0);
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_1AD337000, v6, OS_LOG_TYPE_ERROR, "Write Access to PassKit Shared Cache denied. Please verify sandbox exceptions and/or file a Radar.", v7, 2u);
    }
  }
}

void PKSharedCacheRemoveObjectForKey(void *a1)
{
  v1 = a1;
  v2 = _SharedCacheQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __PKSharedCacheRemoveObjectForKey_block_invoke;
  block[3] = &unk_1E79C4E28;
  v5 = v1;
  v3 = v1;
  dispatch_sync(v2, block);
}

void __PKSharedCacheRemoveObjectForKey_block_invoke(uint64_t a1)
{
  v2 = _SharedCacheDictionary(0);
  [v2 removeObjectForKey:*(a1 + 32)];

  PKSharedCacheCreateFileURLForWriting(0, @"cache.plist", &__block_literal_global_990);
}

void __PKSharedCacheRemoveObjectForKey_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ((byte_1ED6D11E0 & 1) != 0 || (PKSharedCacheCreateDirectory(0, &__block_literal_global_1738), (byte_1ED6D11E0)) && (_SharedCacheDictionary(0), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 writeToURL:v2 atomically:1], v3, v4))
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.passkit.sharedcachechanged", 0, 0, 0);
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_1AD337000, v6, OS_LOG_TYPE_ERROR, "Write Access to PassKit Shared Cache denied. Please verify sandbox exceptions and/or file a Radar.", v7, 2u);
    }
  }
}

id PKSharedCacheGetKeysWithKeyPrefix(void *a1)
{
  v1 = a1;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__2;
  v17 = __Block_byref_object_dispose__2;
  v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v2 = _SharedCacheQueue();
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __PKSharedCacheGetKeysWithKeyPrefix_block_invoke;
  v10 = &unk_1E79C8A88;
  v12 = &v13;
  v3 = v1;
  v11 = v3;
  dispatch_sync(v2, &v7);

  if ([v14[5] count])
  {
    v4 = v14[5];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  _Block_object_dispose(&v13, 8);

  return v5;
}

void sub_1AD58DD40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __PKSharedCacheGetKeysWithKeyPrefix_block_invoke(uint64_t a1)
{
  v2 = _SharedCacheDictionary(0);
  v3 = [v2 allKeys];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(*(*(a1 + 40) + 8) + 40);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __PKSharedCacheGetKeysWithKeyPrefix_block_invoke_2;
  v10[3] = &unk_1E79C4340;
  v11 = *(a1 + 32);
  v7 = [v6 pk_objectsPassingTest:v10];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

id PKSharedCacheGetStringForKey(void *a1)
{
  v1 = a1;
  v2 = objc_opt_class();
  v3 = PKSharedCacheGetObjectForKeyOfClass(v1, v2);

  return v3;
}

id PKSharedCacheGetNumberForKey(void *a1)
{
  v1 = a1;
  v2 = objc_opt_class();
  v3 = PKSharedCacheGetObjectForKeyOfClass(v1, v2);

  return v3;
}

id PKSharedCacheGetDateForKey(void *a1)
{
  v1 = a1;
  v2 = objc_opt_class();
  v3 = PKSharedCacheGetObjectForKeyOfClass(v1, v2);

  return v3;
}

id PKSharedCacheGetDictionaryForKey(void *a1)
{
  v1 = a1;
  v2 = objc_opt_class();
  v3 = PKSharedCacheGetObjectForKeyOfClass(v1, v2);

  return v3;
}

id PKSharedCacheGetArrayForKey(void *a1)
{
  v1 = a1;
  v2 = objc_opt_class();
  v3 = PKSharedCacheGetObjectForKeyOfClass(v1, v2);

  return v3;
}

uint64_t PKSharedCacheGetIntegerForKey(void *a1)
{
  v1 = a1;
  v2 = objc_opt_class();
  v3 = PKSharedCacheGetObjectForKeyOfClass(v1, v2);

  if (v3)
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id PKLocaleWithOverriddenCalendar(void *a1, void *a2)
{
  v3 = MEMORY[0x1E695DF58];
  v4 = a2;
  v5 = [a1 localeIdentifier];
  v6 = [v3 componentsFromLocaleIdentifier:v5];
  v7 = [v6 mutableCopy];

  [v7 removeObjectForKey:@"calendar"];
  [v7 setObject:v4 forKey:*MEMORY[0x1E695D958]];

  v8 = [MEMORY[0x1E695DF58] localeIdentifierFromComponents:v7];
  v9 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:v8];

  return v9;
}

uint64_t PKLocaleIs24HourMode(void *a1)
{
  v1 = a1;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if (qword_1ED6D1388 != -1)
  {
    dispatch_once(&qword_1ED6D1388, &__block_literal_global_996);
  }

  v2 = qword_1ED6D1380;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __PKLocaleIs24HourMode_block_invoke_2;
  v6[3] = &unk_1E79C8AB0;
  v7 = v1;
  v8 = &v9;
  v3 = v1;
  dispatch_sync(v2, v6);
  v4 = *(v10 + 24);

  _Block_object_dispose(&v9, 8);
  return v4;
}

void __PKLocaleIs24HourMode_block_invoke()
{
  v0 = dispatch_queue_create("pk_date_formatter_queue", 0);
  v1 = qword_1ED6D1380;
  qword_1ED6D1380 = v0;
}

uint64_t PKLocalizedHourOfDate(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    if (qword_1ED6D1390 != -1)
    {
      dispatch_once(&qword_1ED6D1390, &__block_literal_global_1005);
    }

    v5 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    v6 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v6 setLocale:v5];
    v23 = v4;
    if (v4)
    {
      [v6 setTimeZone:v4];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFE8] localTimeZone];
      [v6 setTimeZone:v8];
    }

    v22 = v5;
    v9 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:@"J" options:0 locale:v5];
    v10 = [v9 length];
    v11 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:v10];
    v12 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"KhHk"];
    if (v10)
    {
      for (i = 0; i < v10; i = v16 + v15 + 1)
      {
        v15 = [v9 rangeOfComposedCharacterSequenceAtIndex:i];
        v16 = v14;
        if (v14 == 1)
        {
          v17 = [v9 characterAtIndex:v15];
          if ([v12 characterIsMember:v17])
          {
            [v11 appendFormat:@"%C", v17];
          }
        }

        else if (!v14)
        {
          break;
        }
      }
    }

    [v6 setDateFormat:v11];
    v18 = qword_1ED6D1398;
    v19 = [v6 stringFromDate:v3];
    v20 = [v18 numberFromString:v19];
    v7 = [v20 unsignedIntegerValue];

    v4 = v23;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __PKLocalizedHourOfDate_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = qword_1ED6D1398;
  qword_1ED6D1398 = v0;

  v2 = qword_1ED6D1398;
  v3 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [v2 setLocale:v3];

  v4 = qword_1ED6D1398;

  return [v4 setNumberStyle:0];
}

BOOL PKHourOfDateIsSingular(void *a1)
{
  v1 = MEMORY[0x1E695DEE8];
  v2 = a1;
  v3 = [v1 currentCalendar];
  v4 = [v3 locale];
  v5 = v4;
  if (v4)
  {
    v6 = PKLocaleIs24HourMode(v4);
  }

  else
  {
    v7 = [MEMORY[0x1E695DF58] currentLocale];
    v6 = PKLocaleIs24HourMode(v7);
  }

  if (v6)
  {
    v8 = 24;
  }

  else
  {
    v8 = 12;
  }

  v9 = [v3 component:32 fromDate:v2];
  return v9 % v8 == 1;
}

id PKShortDateString(NSDate *a1, NSTimeZone *a2)
{
  v3 = qword_1ED6D13A8;
  v4 = a2;
  v5 = a1;
  if (v3 != -1)
  {
    dispatch_once(&qword_1ED6D13A8, &__block_literal_global_1018);
  }

  [qword_1ED6D13A0 setTimeZone:v4];

  v6 = [qword_1ED6D13A0 stringFromDate:v5];

  return v6;
}

uint64_t ___Z17PKShortDateStringP6NSDateP10NSTimeZone_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = qword_1ED6D13A0;
  qword_1ED6D13A0 = v0;

  [qword_1ED6D13A0 setDateStyle:1];
  v2 = qword_1ED6D13A0;

  return [v2 setTimeStyle:0];
}

id PKMediumDateString(NSDate *a1, NSTimeZone *a2)
{
  v3 = qword_1ED6D13B8;
  v4 = a2;
  v5 = a1;
  if (v3 != -1)
  {
    dispatch_once(&qword_1ED6D13B8, &__block_literal_global_1020);
  }

  [qword_1ED6D13B0 setTimeZone:v4];

  v6 = [qword_1ED6D13B0 stringFromDate:v5];

  return v6;
}

uint64_t ___Z18PKMediumDateStringP6NSDateP10NSTimeZone_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = qword_1ED6D13B0;
  qword_1ED6D13B0 = v0;

  [qword_1ED6D13B0 setDateStyle:2];
  v2 = qword_1ED6D13B0;

  return [v2 setTimeStyle:0];
}

id PKLongDateString(void *a1)
{
  v1 = qword_1ED6D13C8;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&qword_1ED6D13C8, &__block_literal_global_1022);
  }

  v3 = [qword_1ED6D13C0 stringFromDate:v2];

  return v3;
}

uint64_t __PKLongDateString_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = qword_1ED6D13C0;
  qword_1ED6D13C0 = v0;

  [qword_1ED6D13C0 setDateStyle:3];
  v2 = qword_1ED6D13C0;

  return [v2 setTimeStyle:0];
}

id PKWideDateMonthString(void *a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __PKWideDateMonthString_block_invoke;
  block[3] = &unk_1E79C4E28;
  v10 = v3;
  v4 = qword_1ED6D13D8;
  v5 = v3;
  v6 = a1;
  if (v4 != -1)
  {
    dispatch_once(&qword_1ED6D13D8, block);
  }

  v7 = [qword_1ED6D13D0 stringFromDate:v6];

  return v7;
}

uint64_t __PKWideDateMonthString_block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v3 = qword_1ED6D13D0;
  qword_1ED6D13D0 = v2;

  [qword_1ED6D13D0 setLocalizedDateFormatFromTemplate:{@"EEEE, MMMM d"}];
  [qword_1ED6D13D0 setFormattingContext:2];
  v4 = qword_1ED6D13D0;
  v5 = *(a1 + 32);

  return [v4 setTimeZone:v5];
}

id PKRelativeDateStringWithFullDateForUnits(void *a1, __int16 a2, char a3)
{
  v5 = a1;
  v6 = PKShortDateString(v5, 0);
  v7 = PKRelativeDateStringWithFullDateForUnits(v5, a2, a3, v6);

  return v7;
}

id PKW3CDateStringFromDate(void *a1)
{
  v1 = qword_1ED6D13E8;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&qword_1ED6D13E8, &__block_literal_global_1027);
  }

  v3 = [qword_1ED6D13E0 stringFromDate:v2];

  return v3;
}

uint64_t __PKW3CDateStringFromDate_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = qword_1ED6D13E0;
  qword_1ED6D13E0 = v0;

  v2 = qword_1ED6D13E0;

  return [v2 setDateFormat:@"yyyy-MM-dd'T'HH:mmZZZZZ"];
}

id PKISO8601DateStringFromDate(void *a1)
{
  v1 = a1;
  v2 = _PKISO8601DateFormatter();
  v3 = [v2 stringFromDate:v1];

  return v3;
}

id _PKISO8601DateFormatter()
{
  if (qword_1ED6D1620 != -1)
  {
    dispatch_once(&qword_1ED6D1620, &__block_literal_global_1700);
  }

  v1 = qword_1ED6D1618;

  return v1;
}

id PKISO8601DateFromDateString(void *a1)
{
  v1 = a1;
  v2 = _PKISO8601DateFormatter();
  if (([v1 hasSuffix:@"Z"] & 1) == 0)
  {
    v3 = [v1 stringByAppendingString:@"Z"];

    v1 = v3;
  }

  v4 = [v2 dateFromString:v1];

  return v4;
}

id PKISO8601DateFromDateStringContainingFractionalSeconds(void *a1)
{
  v1 = a1;
  if (qword_1ED6D13F8 != -1)
  {
    dispatch_once(&qword_1ED6D13F8, &__block_literal_global_1035);
  }

  if (([v1 hasSuffix:@"Z"] & 1) == 0)
  {
    v2 = [v1 stringByAppendingString:@"Z"];

    v1 = v2;
  }

  v3 = [qword_1ED6D13F0 dateFromString:v1];

  return v3;
}

uint64_t __PKISO8601DateFromDateStringContainingFractionalSeconds_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AC80]);
  v1 = qword_1ED6D13F0;
  qword_1ED6D13F0 = v0;

  v2 = qword_1ED6D13F0;

  return [v2 setFormatOptions:3955];
}

id RFC3339DateStringFromDateInUTCWithIntegralSeconds(void *a1)
{
  v1 = a1;
  v2 = _RFC3339DateFormatterInUTCWithIntegralSeconds();
  v3 = [v2 stringFromDate:v1];

  return v3;
}

id _RFC3339DateFormatterInUTCWithIntegralSeconds()
{
  if (qword_1ED6D1630 != -1)
  {
    dispatch_once(&qword_1ED6D1630, &__block_literal_global_1702);
  }

  v1 = qword_1ED6D1628;

  return v1;
}

id PKRFC3339DateFromDateStringInUTCWithIntegralSeconds(void *a1)
{
  v1 = a1;
  if ([v1 hasSuffix:@"Z"])
  {
    v2 = _RFC3339DateFormatterInUTCWithIntegralSeconds();
    v3 = [v2 dateFromString:v1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id PKDateComponentsRangeString(void *a1)
{
  v1 = qword_1ED6D1408;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&qword_1ED6D1408, &__block_literal_global_1038);
  }

  v3 = [qword_1ED6D1400 stringFromDateComponentsRange:v2];

  return v3;
}

void __PKDateComponentsRangeString_block_invoke()
{
  v0 = objc_alloc_init(PKDateComponentsRangeFormatter);
  v1 = qword_1ED6D1400;
  qword_1ED6D1400 = v0;
}

id PKDateRangeStringFromDateToDate(NSDate *a1, NSDate *a2, int a3, int a4, int a5, NSTimeZone *a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a6;
  v14 = objc_alloc_init(MEMORY[0x1E696AB88]);
  [v14 setTimeZone:v13];
  if (a3 && a4)
  {
    if (a5)
    {
      v15 = @"MMMM dd yyyy jm";
    }

    else
    {
      v15 = @"MMMM dd yyyy";
    }
  }

  else
  {
    v16 = @"MMM dd";
    if (a5)
    {
      v16 = @"MMM dd jm";
      v17 = @"MMM dd yyyy jm";
    }

    else
    {
      v17 = @"MMM dd yyyy";
    }

    if (a4)
    {
      v16 = v17;
    }

    v18 = @"MMMM dd";
    if (a5)
    {
      v18 = @"MMMM dd jm";
    }

    if (a3)
    {
      v15 = v18;
    }

    else
    {
      v15 = v16;
    }
  }

  [v14 setDateTemplate:v15];
  v19 = [MEMORY[0x1E695DEE8] currentCalendar];
  v20 = v19;
  if (v13)
  {
    [v19 setTimeZone:v13];
  }

  v21 = [v20 component:8 fromDate:v11];
  if (v21 == [v20 component:8 fromDate:v12])
  {
    [v14 setBoundaryStyle:1];
  }

  v22 = [v14 stringFromDate:v11 toDate:v12];

  return v22;
}

id PKShortDayAndMonthStringFromDate(void *a1)
{
  v1 = qword_1ED6D1418;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&qword_1ED6D1418, &__block_literal_global_1066);
  }

  v3 = [qword_1ED6D1410 stringFromDate:v2];

  return v3;
}

uint64_t __PKShortDayAndMonthStringFromDate_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = qword_1ED6D1410;
  qword_1ED6D1410 = v0;

  [qword_1ED6D1410 setLocalizedDateFormatFromTemplate:@"M/dd"];
  v2 = qword_1ED6D1410;

  return [v2 setFormattingContext:2];
}

id PKShortDateAndTimeStringFromDate(void *a1)
{
  v1 = qword_1ED6D1428;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&qword_1ED6D1428, &__block_literal_global_1071);
  }

  v3 = [qword_1ED6D1420 stringFromDate:v2];

  return v3;
}

uint64_t __PKShortDateAndTimeStringFromDate_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = qword_1ED6D1420;
  qword_1ED6D1420 = v0;

  [qword_1ED6D1420 setDateStyle:1];
  v2 = qword_1ED6D1420;

  return [v2 setTimeStyle:1];
}

id PKShortMonthAndYearStringFromDate(void *a1)
{
  v1 = qword_1ED6D1438;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&qword_1ED6D1438, &__block_literal_global_1073);
  }

  v3 = [qword_1ED6D1430 stringFromDate:v2];

  return v3;
}

uint64_t __PKShortMonthAndYearStringFromDate_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = qword_1ED6D1430;
  qword_1ED6D1430 = v0;

  [qword_1ED6D1430 setLocalizedDateFormatFromTemplate:@"MMM yyyy"];
  v2 = qword_1ED6D1430;

  return [v2 setFormattingContext:2];
}

id PKMediumDayAndMonthStringFromDate(NSDate *a1, NSTimeZone *a2)
{
  v3 = qword_1ED6D1448;
  v4 = a2;
  v5 = a1;
  if (v3 != -1)
  {
    dispatch_once(&qword_1ED6D1448, &__block_literal_global_1078);
  }

  [qword_1ED6D1440 setTimeZone:v4];

  v6 = [qword_1ED6D1440 stringFromDate:v5];

  return v6;
}

uint64_t ___Z33PKMediumDayAndMonthStringFromDateP6NSDateP10NSTimeZone_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = qword_1ED6D1440;
  qword_1ED6D1440 = v0;

  [qword_1ED6D1440 setLocalizedDateFormatFromTemplate:@"MMM d"];
  v2 = qword_1ED6D1440;

  return [v2 setFormattingContext:5];
}

id PKMediumDayAndLongMonthStringFromDate(NSDate *a1, NSTimeZone *a2)
{
  v3 = qword_1ED6D1458;
  v4 = a2;
  v5 = a1;
  if (v3 != -1)
  {
    dispatch_once(&qword_1ED6D1458, &__block_literal_global_1083);
  }

  [qword_1ED6D1450 setTimeZone:v4];

  v6 = [qword_1ED6D1450 stringFromDate:v5];

  return v6;
}

uint64_t ___Z37PKMediumDayAndLongMonthStringFromDateP6NSDateP10NSTimeZone_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = qword_1ED6D1450;
  qword_1ED6D1450 = v0;

  [qword_1ED6D1450 setLocalizedDateFormatFromTemplate:@"MMMM d"];
  v2 = qword_1ED6D1450;

  return [v2 setFormattingContext:5];
}

id PKMonthAndYearStringFromDate(void *a1)
{
  v1 = qword_1ED6D1468;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&qword_1ED6D1468, &__block_literal_global_1088);
  }

  v3 = [qword_1ED6D1460 stringFromDate:v2];

  return v3;
}

uint64_t __PKMonthAndYearStringFromDate_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = qword_1ED6D1460;
  qword_1ED6D1460 = v0;

  [qword_1ED6D1460 setLocalizedDateFormatFromTemplate:@"MMMM yyyy"];
  v2 = qword_1ED6D1460;

  return [v2 setFormattingContext:2];
}

id PKYearStringFromDate(void *a1)
{
  v1 = qword_1ED6D1478;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&qword_1ED6D1478, &__block_literal_global_1093);
  }

  v3 = [qword_1ED6D1470 stringFromDate:v2];

  return v3;
}

uint64_t __PKYearStringFromDate_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = qword_1ED6D1470;
  qword_1ED6D1470 = v0;

  [qword_1ED6D1470 setLocalizedDateFormatFromTemplate:@"yyyy"];
  v2 = qword_1ED6D1470;

  return [v2 setFormattingContext:2];
}

id PKMonthStringFromDate(void *a1)
{
  v1 = qword_1ED6D1488;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&qword_1ED6D1488, &__block_literal_global_1098);
  }

  v3 = [qword_1ED6D1480 stringFromDate:v2];

  return v3;
}

uint64_t __PKMonthStringFromDate_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = qword_1ED6D1480;
  qword_1ED6D1480 = v0;

  [qword_1ED6D1480 setLocalizedDateFormatFromTemplate:@"MMMM"];
  v2 = qword_1ED6D1480;

  return [v2 setFormattingContext:2];
}

id PKFullWeekdayStringFromDate(void *a1)
{
  v1 = qword_1ED6D1498;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&qword_1ED6D1498, &__block_literal_global_1103);
  }

  v3 = [qword_1ED6D1490 stringFromDate:v2];

  return v3;
}

uint64_t __PKFullWeekdayStringFromDate_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = qword_1ED6D1490;
  qword_1ED6D1490 = v0;

  [qword_1ED6D1490 setLocalizedDateFormatFromTemplate:@"EEEE"];
  v2 = qword_1ED6D1490;

  return [v2 setFormattingContext:2];
}

id PKMediumDayLongMonthAndTimeStringFromDate(void *a1)
{
  v1 = qword_1ED6D14A8;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&qword_1ED6D14A8, &__block_literal_global_1108);
  }

  v3 = [qword_1ED6D14A0 stringFromDate:v2];

  return v3;
}

uint64_t __PKMediumDayLongMonthAndTimeStringFromDate_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = qword_1ED6D14A0;
  qword_1ED6D14A0 = v0;

  [qword_1ED6D14A0 setLocalizedDateFormatFromTemplate:@"MMMdhmma"];
  v2 = qword_1ED6D14A0;

  return [v2 setFormattingContext:5];
}

id PKTimeStringFromDate(NSDate *a1, NSTimeZone *a2)
{
  v3 = qword_1ED6D14B8;
  v4 = a2;
  v5 = a1;
  if (v3 != -1)
  {
    dispatch_once(&qword_1ED6D14B8, &__block_literal_global_1113);
  }

  [qword_1ED6D14B0 setTimeZone:v4];

  v6 = [qword_1ED6D14B0 stringFromDate:v5];

  return v6;
}

uint64_t ___Z20PKTimeStringFromDateP6NSDateP10NSTimeZone_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = qword_1ED6D14B0;
  qword_1ED6D14B0 = v0;

  [qword_1ED6D14B0 setDateStyle:0];
  [qword_1ED6D14B0 setTimeStyle:1];
  [qword_1ED6D14B0 setDoesRelativeDateFormatting:0];
  v2 = qword_1ED6D14B0;

  return [v2 setFormattingContext:2];
}

id PKTimeStringWithTimeZoneFromDate(void *a1, void *a2)
{
  v3 = qword_1ED6D14C8;
  v4 = a2;
  v5 = a1;
  if (v3 != -1)
  {
    dispatch_once(&qword_1ED6D14C8, &__block_literal_global_1115);
  }

  [qword_1ED6D14C0 setTimeZone:v4];

  v6 = [qword_1ED6D14C0 stringFromDate:v5];

  return v6;
}

uint64_t __PKTimeStringWithTimeZoneFromDate_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = qword_1ED6D14C0;
  qword_1ED6D14C0 = v0;

  [qword_1ED6D14C0 setLocalizedDateFormatFromTemplate:@"hmmaz"];
  v2 = qword_1ED6D14C0;

  return [v2 setFormattingContext:2];
}

id PKRelativeDateStringWithFullDateForUnits(NSDate *a1, __int16 a2, char a3, NSString *a4)
{
  v7 = a1;
  v8 = a4;
  if (!v7)
  {
    v21 = 0;
    goto LABEL_30;
  }

  v9 = [MEMORY[0x1E695DF00] date];
  [v9 timeIntervalSinceDate:v7];
  if (v10 <= 0.0)
  {
    if (v10 <= -60.0)
    {
      v25 = [MEMORY[0x1E695DEE8] currentCalendar];
      v26 = [v25 isDateInTomorrow:v7];

      if (!v26)
      {
        v23 = v8;
        goto LABEL_28;
      }

      v22 = @"RELATIVE_DATE_TOMORROW";
LABEL_27:
      v23 = PKLocalizedString(&v22->isa, 0);
LABEL_28:
      v21 = v23;
      goto LABEL_29;
    }

LABEL_26:
    v22 = @"RELATIVE_DATE_NOW";
    goto LABEL_27;
  }

  if (v10 < 60.0)
  {
    goto LABEL_26;
  }

  v11 = [MEMORY[0x1E695DEE8] currentCalendar];
  v12 = PKDateIgnoringSmallerUnitsWithTimeZone(v9, 16, 1);
  v13 = PKDateIgnoringSmallerUnitsWithTimeZone(v7, 16, 1);
  v14 = [v11 components:8222 fromDate:v12 toDate:v13 options:0];

  if (qword_1ED6D14D0 != -1)
  {
    dispatch_once(&qword_1ED6D14D0, &__block_literal_global_1123);
  }

  if ([v14 year] && (v15 = objc_msgSend(v14, "year"), (a2 & 4) != 0) && v15 != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v14, "era") && (v16 = objc_msgSend(v14, "era"), (a2 & 2) != 0) && v16 != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v14, "month") && (v17 = objc_msgSend(v14, "month"), (a2 & 8) != 0) && v17 != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v14, "weekOfYear") && (v18 = objc_msgSend(v14, "weekOfYear"), (a2 & 0x2000) != 0) && v18 != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v14, "day") && (v19 = objc_msgSend(v14, "day"), (a2 & 0x10) != 0) && v19 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = v8;
  }

  else if ((a3 & 1) != 0 || (![v14 year] || objc_msgSend(v14, "year") == 0x7FFFFFFFFFFFFFFFLL) && (!objc_msgSend(v14, "era") || objc_msgSend(v14, "era") == 0x7FFFFFFFFFFFFFFFLL) && (!objc_msgSend(v14, "month") || objc_msgSend(v14, "month") == 0x7FFFFFFFFFFFFFFFLL) && (!objc_msgSend(v14, "weekOfYear") || objc_msgSend(v14, "weekOfYear") == 0x7FFFFFFFFFFFFFFFLL) && ((v32 = objc_msgSend(v14, "day"), v33 = objc_msgSend(v14, "day"), v32 >= 0) ? (v34 = v33) : (v34 = -v33), v34 < 2 || objc_msgSend(v14, "day") == 0x7FFFFFFFFFFFFFFFLL))
  {
    v27 = [MEMORY[0x1E695DEE8] currentCalendar];
    v28 = [v27 isDateInYesterday:v7];

    v29 = qword_1ED6D14D8;
    if (v28)
    {
      v30 = PKDateIgnoringSmallerUnitsWithTimeZone(v7, 16, 1);
      v31 = PKDateIgnoringSmallerUnitsWithTimeZone(v9, 16, 1);
      v21 = [v29 localizedStringForDate:v30 relativeToDate:v31];

      goto LABEL_23;
    }

    v20 = [qword_1ED6D14D8 localizedStringForDate:v7 relativeToDate:v9];
  }

  else
  {
    v20 = [qword_1ED6D14E0 stringFromDate:v7];
  }

  v21 = v20;
LABEL_23:

LABEL_29:
LABEL_30:

  return v21;
}

uint64_t ___Z40PKRelativeDateStringWithFullDateForUnitsP6NSDate14NSCalendarUnitbP8NSString_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AE78]);
  v1 = qword_1ED6D14D8;
  qword_1ED6D14D8 = v0;

  [qword_1ED6D14D8 setDateTimeStyle:1];
  v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v3 = qword_1ED6D14E0;
  qword_1ED6D14E0 = v2;

  v4 = qword_1ED6D14E0;
  v5 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [v4 setLocale:v5];

  v6 = qword_1ED6D14E0;

  return [v6 setLocalizedDateFormatFromTemplate:@"cccc"];
}

id PKTimeZoneFromString(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E695DFE8] timeZoneWithName:v1];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:v1];
  }

  v5 = v4;

  return v5;
}

id PKDateIgnoringSmallerUnitsWithTimeZone(void *a1, uint64_t a2, char a3)
{
  v5 = a1;
  v6 = v5;
  if (a2 > 31)
  {
    if (a2 > 127)
    {
      if (a2 == 2048)
      {
        a2 = 2054;
        goto LABEL_19;
      }

      if (a2 == 128)
      {
        a2 = 2302;
        goto LABEL_19;
      }
    }

    else
    {
      if (a2 == 32)
      {
        a2 = 2110;
        goto LABEL_19;
      }

      if (a2 == 64)
      {
        a2 = 2174;
        goto LABEL_19;
      }
    }

    goto LABEL_25;
  }

  if (a2 > 7)
  {
    if (a2 == 8)
    {
      a2 = 2062;
      goto LABEL_19;
    }

    if (a2 == 16)
    {
      a2 = 2078;
      goto LABEL_19;
    }

    goto LABEL_25;
  }

  if (a2 != 2)
  {
    if (a2 == 4)
    {
      a2 = 6;
      goto LABEL_19;
    }

LABEL_25:
    v10 = v5;
    goto LABEL_22;
  }

LABEL_19:
  v7 = [MEMORY[0x1E695DEE8] currentCalendar];
  if ((a3 & 1) == 0)
  {
    v8 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"UTC"];
    [v7 setTimeZone:v8];
  }

  v9 = [v7 components:a2 fromDate:v6];
  v10 = [v7 dateFromComponents:v9];

LABEL_22:

  return v10;
}

__CFString *PKCalendarUnitString(uint64_t a1)
{
  v1 = @"second";
  v2 = @"quarter";
  if (a1 != 2048)
  {
    v2 = 0;
  }

  if (a1 != 128)
  {
    v1 = v2;
  }

  v3 = @"minute";
  if (a1 != 64)
  {
    v3 = 0;
  }

  if (a1 == 32)
  {
    v3 = @"hour";
  }

  if (a1 <= 127)
  {
    v1 = v3;
  }

  v4 = @"month";
  v5 = @"day";
  if (a1 != 16)
  {
    v5 = 0;
  }

  if (a1 != 8)
  {
    v4 = v5;
  }

  v6 = @"year";
  if (a1 != 4)
  {
    v6 = 0;
  }

  if (a1 == 2)
  {
    v6 = @"era";
  }

  if (a1 <= 7)
  {
    v4 = v6;
  }

  if (a1 <= 31)
  {
    return v4;
  }

  else
  {
    return v1;
  }
}

uint64_t PKCalendarUnitForString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToIgnoringCase:@"era"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToIgnoringCase:@"year"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToIgnoringCase:@"quarter"])
  {
    v2 = 2048;
  }

  else if ([v1 isEqualToIgnoringCase:@"month"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToIgnoringCase:@"day"])
  {
    v2 = 16;
  }

  else if ([v1 isEqualToIgnoringCase:@"hour"])
  {
    v2 = 32;
  }

  else if ([v1 isEqualToIgnoringCase:@"minute"])
  {
    v2 = 64;
  }

  else if ([v1 isEqualToIgnoringCase:@"second"])
  {
    v2 = 128;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id PKCalendarUnitIntervalString(uint64_t a1, uint64_t a2)
{
  if (qword_1ED6D14F0 != -1)
  {
    dispatch_once(&qword_1ED6D14F0, &__block_literal_global_1159);
  }

  v4 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v4 setValue:a1 forComponent:a2];
  v5 = [qword_1ED6D14E8 stringFromDateComponents:v4];

  return v5;
}

uint64_t __PKCalendarUnitIntervalString_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB70]);
  v1 = qword_1ED6D14E8;
  qword_1ED6D14E8 = v0;

  [qword_1ED6D14E8 setUnitsStyle:3];
  [qword_1ED6D14E8 setZeroFormattingBehavior:14];
  v2 = qword_1ED6D14E8;

  return [v2 setFormattingContext:5];
}

__CFString *PKLocalizedIntervalTermString(unint64_t a1, uint64_t a2)
{
  if (a1 != 1)
  {
    if (a2 == 16)
    {
      v6 = [MEMORY[0x1E695DEE8] currentCalendar];
      [v6 maximumRangeOfUnit:512];
      if (a1 && !(a1 % v7))
      {
        v3 = PKLocalizedPaymentString(&cfstr_PaymentRecurri_4.isa, &cfstr_Lu.isa, a1 / v7);

        goto LABEL_19;
      }
    }

    v8 = PKCalendarUnitIntervalString(a1, a2);
    v3 = PKLocalizedPaymentString(&cfstr_PaymentRecurri_5.isa, &cfstr_Lu_0.isa, a1, v8);

    goto LABEL_19;
  }

  v3 = &stru_1F227FD28;
  if (a2 <= 15)
  {
    if (a2 == 4)
    {
      v4 = @"PAYMENT_RECURRING_TERM_PER_YEAR";
    }

    else
    {
      if (a2 != 8)
      {
        goto LABEL_19;
      }

      v4 = @"PAYMENT_RECURRING_TERM_PER_MONTH";
    }
  }

  else
  {
    switch(a2)
    {
      case 16:
        v4 = @"PAYMENT_RECURRING_TERM_PER_DAY";
        break;
      case 32:
        v4 = @"PAYMENT_RECURRING_TERM_PER_HOUR";
        break;
      case 64:
        v4 = @"PAYMENT_RECURRING_TERM_PER_MINUTE";
        break;
      default:
        goto LABEL_19;
    }
  }

  v3 = PKLocalizedPaymentString(&v4->isa, 0);
LABEL_19:

  return v3;
}

id PKLocalizedIntervalTermStringWithAmount(void *a1, unint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = v5;
  if (a2 != 1)
  {
    if (a3 == 16)
    {
      v7 = [MEMORY[0x1E695DEE8] currentCalendar];
      [v7 maximumRangeOfUnit:512];
      if (a2 && !(a2 % v8))
      {
        PKLocalizedPaymentString(&cfstr_PaymentRecurri_11.isa, &cfstr_Lu_0.isa, a2 / v8, v6);
        goto LABEL_12;
      }
    }

    v7 = PKCalendarUnitIntervalString(a2, a3);
    PKLocalizedPaymentString(&cfstr_PaymentRecurri_12.isa, &cfstr_Lu_1.isa, a2, v7, v6);
    v9 = LABEL_12:;

    goto LABEL_21;
  }

  if (a3 <= 15)
  {
    if (a3 == 4)
    {
      PKLocalizedPaymentString(&cfstr_PaymentRecurri_6.isa, &stru_1F2281668.isa, v5);
      goto LABEL_19;
    }

    if (a3 == 8)
    {
      PKLocalizedPaymentString(&cfstr_PaymentRecurri_7.isa, &stru_1F2281668.isa, v5);
      goto LABEL_19;
    }

LABEL_24:
    v10 = v5;
    goto LABEL_20;
  }

  if (a3 == 16)
  {
    PKLocalizedPaymentString(&cfstr_PaymentRecurri_8.isa, &stru_1F2281668.isa, v5);
    goto LABEL_19;
  }

  if (a3 == 32)
  {
    PKLocalizedPaymentString(&cfstr_PaymentRecurri_9.isa, &stru_1F2281668.isa, v5);
    goto LABEL_19;
  }

  if (a3 != 64)
  {
    goto LABEL_24;
  }

  PKLocalizedPaymentString(&cfstr_PaymentRecurri_10.isa, &stru_1F2281668.isa, v5);
  v10 = LABEL_19:;
LABEL_20:
  v9 = v10;
LABEL_21:

  return v9;
}

id PKLocalizedWeekdaySpecificStringKeyForKey(void *a1, void *a2)
{
  v3 = a1;
  v4 = v3;
  if (!a2)
  {
    v11 = v3;
    goto LABEL_21;
  }

  v5 = MEMORY[0x1E695DEE8];
  v6 = *MEMORY[0x1E695D850];
  v7 = a2;
  v8 = [v5 calendarWithIdentifier:v6];
  v9 = [v8 component:512 fromDate:v7];

  if (v9 <= 3)
  {
    switch(v9)
    {
      case 1:
        v10 = @"_SUNDAY";
        goto LABEL_19;
      case 2:
        v10 = @"_MONDAY";
        goto LABEL_19;
      case 3:
        v10 = @"_TUESDAY";
LABEL_19:
        v12 = [v4 stringByAppendingString:v10];
        goto LABEL_20;
    }
  }

  else
  {
    if (v9 <= 5)
    {
      if (v9 == 4)
      {
        v10 = @"_WEDNESDAY";
      }

      else
      {
        v10 = @"_THURSDAY";
      }

      goto LABEL_19;
    }

    if (v9 == 6)
    {
      v10 = @"_FRIDAY";
      goto LABEL_19;
    }

    if (v9 == 7)
    {
      v10 = @"_SATURDAY";
      goto LABEL_19;
    }
  }

  v12 = v4;
LABEL_20:
  v11 = v12;

LABEL_21:

  return v11;
}

id PKEarlierDate(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = v4;
  if (v3 && (v6 = v3, v4))
  {
    v7 = [v3 earlierDate:v4];
  }

  else
  {
    v7 = v6;
  }

  v8 = v7;

  return v8;
}

id PKLaterDate(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = v4;
  if (v3 && (v6 = v3, v4))
  {
    v7 = [v3 laterDate:v4];
  }

  else
  {
    v7 = v6;
  }

  v8 = v7;

  return v8;
}

id PKDatesMidpoint(void *a1, void *a2)
{
  v3 = a1;
  [a2 timeIntervalSinceDate:v3];
  v5 = [MEMORY[0x1E695DF00] dateWithTimeInterval:v3 sinceDate:v4 * 0.5];

  return v5;
}

BOOL PKDateIsBetweenDates(void *a1, void *a2, void *a3, int a4)
{
  result = 0;
  if (a1 && a2 && a3)
  {
    v8 = a3;
    v9 = a2;
    v10 = a1;
    v11 = [v9 compare:v10];
    v12 = [v8 compare:v10];
    v13 = [v9 compare:v10];

    v14 = [v8 compare:v10];
    v16 = v11 == -1 && v12 == 1;
    v18 = v11 == -1 || v13 == 0;
    if (v12 != 1 && v14 != 0)
    {
      v18 = 0;
    }

    if (a4)
    {
      return v18;
    }

    else
    {
      return v16;
    }
  }

  return result;
}

BOOL PKDateRangeContainsMultipleIntervals(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v9 = v8;
  v10 = 0;
  if (v7 && v8)
  {
    v11 = [MEMORY[0x1E695DEE8] currentCalendar];
    v12 = PKDateIgnoringSmallerUnitsWithTimeZone(v7, a4, 1);

    v13 = PKDateIgnoringSmallerUnitsWithTimeZone(v9, a4, 1);

    v14 = [v11 dateByAddingUnit:a4 value:a3 toDate:v12 options:0];
    [v13 timeIntervalSinceDate:v14];
    v10 = v15 > 0.0;

    v9 = v13;
    v7 = v12;
  }

  return v10;
}

uint64_t PKDateRangeNumberOfIntervalsForUnit(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    v9 = [MEMORY[0x1E695DEE8] currentCalendar];
    v10 = PKDateIgnoringSmallerUnitsWithTimeZone(v5, a3, 1);

    v11 = PKDateIgnoringSmallerUnitsWithTimeZone(v7, a3, 1);

    v12 = [v9 components:a3 fromDate:v10 toDate:v11 options:0];
    v8 = [v12 valueForComponent:a3];

    v7 = v11;
    v5 = v10;
  }

  return v8;
}

id PKEndOfNextMonthAndTimeZone(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = v5;
  if (v4)
  {
    [v5 setTimeZone:v4];
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v7 setMonth:2];
  [v7 setDay:-1];
  if (v3)
  {
    v8 = v3;
  }

  else
  {
    v8 = [MEMORY[0x1E695DF00] date];
  }

  v9 = v8;
  v10 = PKStartOfMonthWithTimeZone(v8, v4);
  v11 = [v6 dateByAddingComponents:v7 toDate:v10 options:0];
  v12 = PKEndOfDayWithTimeZone(v11, v4);

  return v12;
}

id PKStartOfMonthWithTimeZone(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = v5;
  if (v4)
  {
    [v5 setTimeZone:v4];
    [v6 componentsInTimeZone:v4 fromDate:v3];
  }

  else
  {
    [v5 components:12 fromDate:v3];
  }
  v7 = ;
  [v7 setDay:1];
  v8 = [v6 dateFromComponents:v7];

  return v8;
}

id PKEndOfMonthWithTimeZone(void *a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E695DEE8];
  v5 = a1;
  v6 = [v4 currentCalendar];
  v7 = v6;
  if (v3)
  {
    [v6 setTimeZone:v3];
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v8 setMonth:1];
  [v8 setDay:-1];
  v9 = PKStartOfMonthWithTimeZone(v5, v3);

  v10 = [v7 dateByAddingComponents:v8 toDate:v9 options:0];
  v11 = PKEndOfDayWithTimeZone(v10, v3);

  return v11;
}

id PKEndOfDayWithTimeZone(void *a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E695DEE8];
  v5 = a1;
  v6 = [v4 currentCalendar];
  v7 = v6;
  if (v3)
  {
    [v6 setTimeZone:v3];
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v8 setHour:23];
  [v8 setMinute:59];
  [v8 setSecond:59];
  v9 = [v7 nextDateAfterDate:v5 matchingComponents:v8 options:512];

  return v9;
}

id PKEndOfMonth(void *a1)
{
  v1 = PKStartOfNextMonth(a1);
  v2 = [v1 dateByAddingTimeInterval:-1.0];

  return v2;
}

id PKStartOfNextMonth(void *a1)
{
  v1 = MEMORY[0x1E695DEE8];
  v2 = a1;
  v3 = [v1 currentCalendar];
  v4 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v4 setMonth:1];
  v5 = [v3 dateByAddingComponents:v4 toDate:v2 options:0];

  v6 = PKStartOfMonth(v5);

  return v6;
}

id PKStartOfLastMonth(void *a1)
{
  v1 = MEMORY[0x1E695DEE8];
  v2 = a1;
  v3 = [v1 currentCalendar];
  v4 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v4 setMonth:-1];
  v5 = [v3 dateByAddingComponents:v4 toDate:v2 options:0];

  v6 = PKStartOfMonth(v5);

  return v6;
}

id PKStartOfMonth(void *a1)
{
  v1 = MEMORY[0x1E695DEE8];
  v2 = a1;
  v3 = [v1 currentCalendar];
  v4 = [v3 components:14 fromDate:v2];

  v5 = [v3 dateFromComponents:v4];

  return v5;
}

id PKEndOfLastMonth(void *a1)
{
  v1 = PKStartOfMonth(a1);
  v2 = [v1 dateByAddingTimeInterval:-1.0];

  return v2;
}

id PKStartOfYear(void *a1)
{
  v1 = MEMORY[0x1E695DEE8];
  v2 = a1;
  v3 = [v1 currentCalendar];
  v4 = [v3 components:6 fromDate:v2];

  v5 = [v3 dateFromComponents:v4];

  return v5;
}

id PKStartOfLastYear(void *a1)
{
  v1 = MEMORY[0x1E695DEE8];
  v2 = a1;
  v3 = [v1 currentCalendar];
  v4 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v4 setYear:-1];
  v5 = [v3 dateByAddingComponents:v4 toDate:v2 options:0];

  v6 = PKStartOfYear(v5);

  return v6;
}

id PKEndOfLastYear(void *a1)
{
  v1 = PKStartOfYear(a1);
  v2 = [v1 dateByAddingTimeInterval:-1.0];

  return v2;
}

id PKStartOfNextYear(void *a1)
{
  v1 = MEMORY[0x1E695DEE8];
  v2 = a1;
  v3 = [v1 currentCalendar];
  v4 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v4 setYear:1];
  v5 = [v3 dateByAddingComponents:v4 toDate:v2 options:0];

  v6 = PKStartOfYear(v5);

  return v6;
}

id PKEndOfYear(void *a1)
{
  v1 = PKStartOfNextYear(a1);
  v2 = [v1 dateByAddingTimeInterval:-1.0];

  return v2;
}

id PKStartOfDay(void *a1)
{
  v1 = MEMORY[0x1E695DEE8];
  v2 = a1;
  v3 = [v1 currentCalendar];
  v4 = [v3 components:30 fromDate:v2];

  v5 = [v3 dateFromComponents:v4];

  return v5;
}

id PKStartOfWeek(void *a1)
{
  v1 = MEMORY[0x1E695DEE8];
  v2 = a1;
  v3 = [v1 currentCalendar];
  v7 = 0;
  [v3 rangeOfUnit:4096 startDate:&v7 interval:0 forDate:v2];

  v4 = v7;
  v5 = v7;

  return v4;
}

id PKOneMonthEarlier(void *a1)
{
  v1 = MEMORY[0x1E695DEE8];
  v2 = a1;
  v3 = [v1 currentCalendar];
  v4 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v4 setMonth:-1];
  v5 = [v3 dateByAddingComponents:v4 toDate:v2 options:0];

  return v5;
}

id PKPaymentDateStringFromDateWithTimeZone(void *a1, void *a2)
{
  v3 = a1;
  v4 = PKPaymentDateFormatterWithTimeZone(a2);
  v5 = [v4 stringFromDate:v3];

  return v5;
}

id PKPaymentDateFormatterWithTimeZone(void *a1)
{
  v1 = qword_1ED6D1570;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&qword_1ED6D1570, &__block_literal_global_1262);
  }

  v3 = [qword_1ED6D1568 copy];
  [v3 setTimeZone:v2];

  return v3;
}

id PKPaymentDateFromDateStringWithTimeZone(void *a1, void *a2)
{
  v3 = a1;
  v4 = PKPaymentDateFormatterWithTimeZone(a2);
  v5 = [v4 dateFromString:v3];

  return v5;
}

id PKRFC1123StringForDate(void *a1)
{
  v1 = qword_1ED6D1500;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&qword_1ED6D1500, &__block_literal_global_1238);
  }

  v3 = [qword_1ED6D14F8 stringFromDate:v2];

  return v3;
}

void __PKRFC1123StringForDate_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = qword_1ED6D14F8;
  qword_1ED6D14F8 = v0;

  v2 = qword_1ED6D14F8;
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v2 setLocale:v3];

  [qword_1ED6D14F8 setDateFormat:@"EEE, dd MMM yyyy HH:mm:ss zzz"];
  v4 = qword_1ED6D14F8;
  v5 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [v4 setTimeZone:v5];
}

id _PKNumberFormatterForCurrencyCode(void *a1)
{
  v1 = a1;
  if (qword_1ED6D1510 != -1)
  {
    dispatch_once(&qword_1ED6D1510, &__block_literal_global_1243);
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__2;
  v13 = __Block_byref_object_dispose__2;
  v14 = 0;
  v2 = qword_1ED6D1518;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___PKNumberFormatterForCurrencyCode_block_invoke_2;
  v6[3] = &unk_1E79C8AB0;
  v7 = v1;
  v8 = &v9;
  v3 = v1;
  dispatch_sync(v2, v6);
  v4 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v4;
}

id _PKNumberFormatterWithMinimalFractionDigits(uint64_t a1)
{
  if (qword_1ED6D1528 != -1)
  {
    dispatch_once(&qword_1ED6D1528, &__block_literal_global_1247);
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__2;
  v9 = __Block_byref_object_dispose__2;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___PKNumberFormatterWithMinimalFractionDigits_block_invoke_2;
  v4[3] = &unk_1E79C8B18;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(qword_1ED6D1530, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

id _PKNumberFormatterWithMinimalFractionDigitsForCurrencyCode(void *a1)
{
  v1 = a1;
  if (qword_1ED6D1540 != -1)
  {
    dispatch_once(&qword_1ED6D1540, &__block_literal_global_1250);
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__2;
  v13 = __Block_byref_object_dispose__2;
  v14 = 0;
  v2 = qword_1ED6D1548;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___PKNumberFormatterWithMinimalFractionDigitsForCurrencyCode_block_invoke_2;
  v6[3] = &unk_1E79C8AB0;
  v7 = v1;
  v8 = &v9;
  v3 = v1;
  dispatch_sync(v2, v6);
  v4 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v4;
}

id _PKNumberFormatterForCurrencyCodeExcludingCurrencySymbols(void *a1)
{
  v1 = a1;
  if (qword_1ED6D1558 != -1)
  {
    dispatch_once(&qword_1ED6D1558, &__block_literal_global_1253);
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__2;
  v13 = __Block_byref_object_dispose__2;
  v14 = 0;
  v2 = qword_1ED6D1560;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___PKNumberFormatterForCurrencyCodeExcludingCurrencySymbols_block_invoke_2;
  v6[3] = &unk_1E79C8AB0;
  v7 = v1;
  v8 = &v9;
  v3 = v1;
  dispatch_sync(v2, v6);
  v4 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v4;
}

id PKFormattedCurrencyStringFromNumber(void *a1, void *a2)
{
  v3 = a1;
  v4 = _PKNumberFormatterForCurrencyCode(a2);
  v5 = [v4 stringFromNumber:v3];

  return v5;
}

id PKFormattedCurrencyStringWithMinimalFractionDigitsFromNumber(void *a1, void *a2)
{
  v3 = a1;
  v4 = _PKNumberFormatterWithMinimalFractionDigitsForCurrencyCode(a2);
  v5 = [v4 stringFromNumber:v3];

  return v5;
}

id PKFormattedCurrencyStringExcludingCurrencySymbolsFromNumber(void *a1, void *a2)
{
  v3 = a1;
  v4 = _PKNumberFormatterForCurrencyCodeExcludingCurrencySymbols(a2);
  v5 = [v4 stringFromNumber:v3];

  return v5;
}

id PKFormattedStringMinimalFractionDigitsFromNumber(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = _PKNumberFormatterWithMinimalFractionDigits(a2);
  v5 = [v4 stringFromNumber:v3];

  return v5;
}

id PKFormattedStringSignificantDigitsFromNumber(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = _PKNumberFormatterWithSignificantDigits(a2, a3, 0);
  v7 = [v6 stringFromNumber:v5];

  return v7;
}

id _PKNumberFormatterWithSignificantDigits(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  lock._os_unfair_lock_opaque = 0;
  if (qword_1ED6D1640 != -1)
  {
    dispatch_once(&qword_1ED6D1640, &__block_literal_global_1707);
  }

  os_unfair_lock_lock(&lock);
  v6 = [v5 localeIdentifier];
  v7 = v6;
  v8 = &stru_1F227FD28;
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu-%lu%@", a1, a2, v9];

  v11 = [qword_1ED6D1638 objectForKeyedSubscript:v10];
  if (!v11)
  {
    v11 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    [v11 setNumberStyle:1];
    [v11 setUsesSignificantDigits:1];
    [v11 setMinimumSignificantDigits:a1];
    [v11 setMaximumSignificantDigits:a2];
    if (v5)
    {
      [v11 setLocale:v5];
    }

    [qword_1ED6D1638 setObject:v11 forKeyedSubscript:v10];
  }

  os_unfair_lock_unlock(&lock);

  return v11;
}

id PKFormattedStringSignificantDigitsFromNumberInLocale(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = _PKNumberFormatterWithSignificantDigits(a2, a3, a4);
  v9 = [v8 stringFromNumber:v7];

  return v9;
}

id PKMutableNumberFormatterForCurrencyCode(void *a1)
{
  v1 = _PKNumberFormatterForCurrencyCode(a1);
  v2 = [v1 copy];

  return v2;
}

id PKMutableNumberFormatterWithMinimalFractionDigitsForCurrencyCode(void *a1)
{
  v1 = _PKNumberFormatterWithMinimalFractionDigitsForCurrencyCode(a1);
  v2 = [v1 copy];

  return v2;
}

id PKMutableNumberFormatterForCurrencyCodeExcludingCurrencySymbols(void *a1)
{
  v1 = _PKNumberFormatterForCurrencyCodeExcludingCurrencySymbols(a1);
  v2 = [v1 copy];

  return v2;
}

id PKMutableNumberFormatterWithMinimalFractionDigits(uint64_t a1)
{
  v1 = _PKNumberFormatterWithMinimalFractionDigits(a1);
  v2 = [v1 copy];

  return v2;
}

uint64_t PKMaximumFractionDigitsForCurrencyCode(void *a1)
{
  v1 = _PKNumberFormatterForCurrencyCode(a1);
  v2 = [v1 maximumFractionDigits];

  return v2;
}

id PKBestGuessNormalizedPhoneNumber(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 length])
  {
    v2 = v1;
    v3 = PNCopyBestGuessCountryCodeForNumber();
    if (v3)
    {
      goto LABEL_6;
    }

    v4 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Could not extract country code from phone number. Trying device", &v11, 2u);
    }

    v3 = CPPhoneNumberCopyHomeCountryCode();
    if (v3)
    {
LABEL_6:
      v5 = v3;
    }

    else
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Could not extract country code from device. Trying locale", &v11, 2u);
      }

      v10 = PKCurrentRegion();
      v5 = [v10 lowercaseString];

      if (!v5)
      {
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v11) = 0;
          _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Could not extract country code from locale. Defaulting to 'us'", &v11, 2u);
        }

        v5 = @"us";
      }
    }

    v6 = PNCopyBestGuessNormalizedNumberForCountry();
    if (!v6 || ([MEMORY[0x1E696AEC0] stringWithUTF8String:v6], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v8 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = v2;
        _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Could not generate best guess phone number from input: %@", &v11, 0xCu);
      }

      v7 = 0;
    }

    if (v2)
    {
      CFRelease(v2);
    }

    CFRelease(v5);
    if (v6)
    {
      free(v6);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id PKBestGuessNormalizedEmailOrPhoneNumber(void *a1)
{
  v1 = a1;
  if (PKIsEmailAddress(v1))
  {
    v2 = v1;
  }

  else
  {
    v2 = PKBestGuessNormalizedPhoneNumber(v1);
  }

  v3 = v2;

  return v3;
}

id PKTelephoneURLFromPhoneNumber(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
    v3 = [v1 stringByAddingPercentEncodingWithAllowedCharacters:v2];

    if ([v3 length])
    {
      v4 = objc_alloc(MEMORY[0x1E695DFF8]);
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"tel://%@", v3];
      v6 = [v4 initWithString:v5];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id PKPaymentDateFormatter()
{
  v0 = [MEMORY[0x1E695DFE8] localTimeZone];
  v1 = PKPaymentDateFormatterWithTimeZone(v0);

  return v1;
}

uint64_t __PKPaymentDateFormatterWithTimeZone_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = qword_1ED6D1568;
  qword_1ED6D1568 = v0;

  v2 = qword_1ED6D1568;
  v3 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  [v2 setCalendar:v3];

  v4 = qword_1ED6D1568;
  v5 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v4 setLocale:v5];

  v6 = qword_1ED6D1568;

  return [v6 setDateFormat:@"yyyy-MM-dd"];
}

id PKMerchantFormattedLocationForTransaction(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 rawState];
  v6 = [v3 state];
  v7 = [v4 locality];
  v8 = [v4 administrativeArea];
  v9 = [v4 effectiveTransactionSource];

  if (v9 == 5)
  {
    v10 = v6 | v5;
    if (v8)
    {
      if (v10)
      {
        if (v6)
        {
          v11 = [v8 caseInsensitiveCompare:v6] == 0;
          if (v5)
          {
LABEL_6:
            v12 = [v8 caseInsensitiveCompare:v5] == 0;
LABEL_12:
            LOBYTE(v10) = v11 || v12;
            goto LABEL_13;
          }
        }

        else
        {
          v11 = 0;
          if (v5)
          {
            goto LABEL_6;
          }
        }

        v12 = 0;
        goto LABEL_12;
      }
    }

    else
    {
      LOBYTE(v10) = v10 == 0;
    }

    v13 = v7 != 0;
    v14 = v8 != 0;
    goto LABEL_17;
  }

  LOBYTE(v10) = 1;
LABEL_13:
  v13 = v7 != 0;
  v14 = v8 != 0;
  if ((v10 & 1) != 0 && v7 && v8)
  {
    v15 = PKLocalizationAwareFormatLocationComponents(v7, v8);
LABEL_23:
    v17 = v15;
    goto LABEL_33;
  }

LABEL_17:
  if ((v10 & 1) != 0 && (v13 || v14))
  {
    if (v13)
    {
      v16 = v7;
    }

    else
    {
      v16 = v8;
    }

    v15 = v16;
    goto LABEL_23;
  }

  v18 = [v3 city];

  v19 = [v3 city];
  v20 = v19;
  if (v18 && v6)
  {
    v21 = PKLocalizationAwareFormatLocationComponents(v19, v6);
  }

  else
  {
    v17 = (v19 | v6);

    if (!v17)
    {
      goto LABEL_33;
    }

    v22 = [v3 city];
    v20 = v22;
    if (v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = v6;
    }

    v21 = v23;
  }

  v17 = v21;

LABEL_33:

  return v17;
}

id PKLocalizationAwareFormatLocationComponents(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = CNIsChineseJapaneseKoreanString();
  v6 = CNIsChineseJapaneseKoreanString();
  v7 = CNStringContainsKoreanCharacters();
  v8 = CNStringContainsKoreanCharacters();
  if (!v5 || (v7 & 1) != 0 || !v6 || v8)
  {
    if ((v5 | v6))
    {
      v15 = @"%2$@ %1$@";
    }

    else
    {
      v15 = PKCoreLocalizedString(&cfstr_TransactionAdd.isa, 0);
    }
  }

  else
  {
    v15 = @"%2$@%1$@";
  }

  v16 = PKStringWithValidatedFormat(v15, @"%@%@", v9, v10, v11, v12, v13, v14, v3);

  return v16;
}

id PKMerchantFormattedLocationForPostalAddress(void *a1)
{
  if (!a1)
  {
    v12 = 0;
    goto LABEL_28;
  }

  v1 = a1;
  v2 = [v1 city];
  v3 = [v1 state];
  v4 = [v1 country];
  v5 = [v1 subLocality];

  v6 = v2;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 length];

    if (v8)
    {
      v9 = v3;
      if (v9)
      {
        v10 = v9;
        v11 = [v9 length];

        v12 = v7;
        if (v11)
        {
          goto LABEL_17;
        }
      }
    }

    if ([v7 length])
    {
      v13 = v4;
      if (v13)
      {
        v10 = v13;
        v14 = [v13 length];

        v12 = v7;
        if (v14)
        {
          goto LABEL_17;
        }
      }
    }

    if ([v7 length])
    {
      v15 = v7;
LABEL_26:
      v12 = v15;
      goto LABEL_27;
    }
  }

  v16 = v5;
  v12 = v16;
  if (!v16 || (v17 = [v16 length], v12, !v17))
  {
    if (!v4)
    {
LABEL_21:
      v20 = v12;
      if (!v12)
      {
        goto LABEL_27;
      }

      goto LABEL_24;
    }

LABEL_19:
    if ([v4 length])
    {
      v15 = v4;
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  if (!v4)
  {
    v21 = v12;
LABEL_24:
    v22 = [v12 length];

    if (!v22)
    {
      v12 = 0;
      goto LABEL_27;
    }

    v15 = v12;
    goto LABEL_26;
  }

  if (![v4 length])
  {
    goto LABEL_19;
  }

  v10 = v4;
LABEL_17:
  v18 = v12;
  v19 = v10;
  v12 = PKLocalizationAwareFormatLocationComponents(v18, v19);

LABEL_27:
LABEL_28:

  return v12;
}

id PKValidationWarningWithReason(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19[2] = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E696AEC0];
  v10 = a1;
  v11 = [[v9 alloc] initWithFormat:v10 arguments:&a9];

  v12 = MEMORY[0x1E696ABC0];
  v18[0] = *MEMORY[0x1E696A578];
  v18[1] = @"PKIsWarning";
  v19[0] = v11;
  v19[1] = &unk_1F23B4A90;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v14 = [v12 errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v13];

  v15 = PKLocalizedString(&cfstr_PassValidation.isa, 0);
  v16 = _PKErrorWithDescriptionAndUnderlyingError(v15, v14);

  return v16;
}

id PKSignatureErrorWithReason(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E696AEC0];
  v10 = a1;
  v11 = [[v9 alloc] initWithFormat:v10 arguments:&a9];

  v12 = MEMORY[0x1E696ABC0];
  v18 = *MEMORY[0x1E696A578];
  v19[0] = v11;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  v14 = [v12 errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v13];

  v15 = PKLocalizedString(&cfstr_PassSignatureE.isa, 0);
  v16 = _PKErrorWithDescriptionAndUnderlyingError(v15, v14);

  return v16;
}

id PKSignatureEvaluationUnreachableError()
{
  v0 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-6000 userInfo:0];
  v1 = PKLocalizedString(&cfstr_PassSignatureE.isa, 0);
  v2 = _PKErrorWithDescriptionAndUnderlyingError(v1, v0);

  return v2;
}

BOOL PKValidateAmountDecimalNumber(void *a1)
{
  v1 = a1;
  if ([v1 pk_isNegativeNumber])
  {
    v2 = 1;
  }

  else
  {
    v3 = [MEMORY[0x1E696AB90] decimalNumberWithMantissa:1 exponent:8 isNegative:0];
    v2 = [v3 compare:v1] == -1;
  }

  return v2;
}

void __PKTimeProfileBegin_block_invoke_2()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = qword_1ED6D11F0;
  qword_1ED6D11F0 = v0;
}

id PKDevicePhoneNumber()
{
  v5 = 0;
  v0 = objc_autoreleasePoolPush();
  v1 = dispatch_queue_create("com.apple.passkit.phone-number", 0);
  v2 = [objc_alloc(MEMORY[0x1E69650A0]) initWithQueue:v1];
  _PKDevicePhoneNumberAndSignature(v2, &v5, 0);

  objc_autoreleasePoolPop(v0);
  v3 = v5;

  return v3;
}

void _PKDevicePhoneNumberAndSignature(void *a1, id *a2, id *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (v5 && a2 | a3)
  {
    v7 = [v5 getSubscriptionInfoWithError:0];
    v8 = [v7 subscriptionsInUse];
    v9 = [v6 getUserDefaultVoiceSubscriptionContext:0];
    v10 = [v9 uuid];

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = ___PKDevicePhoneNumberAndSignature_block_invoke;
    v26[3] = &unk_1E79C8C78;
    v11 = v10;
    v27 = v11;
    v12 = [v8 sortedArrayUsingComparator:v26];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v14)
    {
      v20 = v11;
      v21 = v7;
      v15 = *v23;
      while (2)
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v22 + 1) + 8 * i);
          v18 = [v6 getPhoneNumber:v17 error:{0, v20, v21, v22}];
          v19 = [v18 number];
          if ([v19 length])
          {
            if (a3)
            {
              v14 = [v6 context:v17 getPhoneNumberSignature:0];
            }

            else
            {
              v14 = 0;
            }

            v11 = v20;
            v7 = v21;

            goto LABEL_17;
          }
        }

        v14 = [v13 countByEnumeratingWithState:&v22 objects:v28 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }

      v19 = 0;
      v11 = v20;
      v7 = v21;
    }

    else
    {
      v19 = 0;
    }

LABEL_17:

    if (a2)
    {
      objc_storeStrong(a2, v19);
    }

    if (a3)
    {
      objc_storeStrong(a3, v14);
    }
  }
}

id PKDevicePhoneNumberSignature()
{
  v5 = 0;
  v0 = objc_autoreleasePoolPush();
  v1 = dispatch_queue_create("com.apple.passkit.phone-number", 0);
  v2 = [objc_alloc(MEMORY[0x1E69650A0]) initWithQueue:v1];
  _PKDevicePhoneNumberAndSignature(v2, 0, &v5);

  objc_autoreleasePoolPop(v0);
  v3 = v5;

  return v3;
}

void sub_1AD595AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id PKURLByAppendingQueryParams(void *a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4 && ([v4 allKeys], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v7))
  {
    v8 = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
    v9 = [v8 mutableCopy];

    [v9 removeCharactersInString:@"&=?"];
    v10 = [v3 query];
    v11 = &stru_1F227FD28;
    v29 = v3;
    if ([v10 length])
    {
      v12 = [v3 query];
      if (![v12 hasSuffix:@"&"])
      {
        v11 = @"&";
      }
    }

    v13 = [MEMORY[0x1E696AD60] string];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = [v5 allKeys];
    v14 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v32;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v32 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v31 + 1) + 8 * i);
          v19 = [v18 stringByAddingPercentEncodingWithAllowedCharacters:v9];
          v20 = [v5 objectForKey:v18];
          [v20 stringByAddingPercentEncodingWithAllowedCharacters:v9];
          v22 = v21 = v5;

          [v13 appendFormat:@"%@%@=%@", v11, v19, v22];
          v5 = v21;

          v11 = @"&";
        }

        v15 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v15);
    }

    v3 = v29;
    v23 = [v29 query];

    if (!v23)
    {
      [v13 insertString:@"?" atIndex:0];
    }

    v24 = [v29 absoluteString];
    v25 = MEMORY[0x1E695DFF8];
    v26 = [v24 stringByAppendingString:v13];
    v27 = [v25 URLWithString:v26];
  }

  else
  {
    v27 = v3;
  }

  return v27;
}

uint64_t PKHasImplementationOfSelectorInImage(void *a1, const char *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __PKHasImplementationOfSelectorInImage_block_invoke;
  v14[3] = &unk_1E79C8BB8;
  v4 = v3;
  v15 = v4;
  v16 = &v19;
  v17 = &v23;
  v18 = a2;
  v5 = PKTimeToPerformBlock(v14);
  v6 = *(v24 + 24);
  v7 = PKLogFacilityTypeGetObject(7uLL);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6 == 1)
  {
    if (v8)
    {
      v9 = NSStringFromSelector(a2);
      v10 = v20[3];
      *buf = 138413058;
      v28 = v9;
      v29 = 2080;
      v30 = v10;
      v31 = 2112;
      v32 = *&v4;
      v33 = 2048;
      v34 = v5;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Found impl of %@ on %s in (%@) in %gs", buf, 0x2Au);
    }
  }

  else if (v8)
  {
    v11 = NSStringFromSelector(a2);
    *buf = 138412802;
    v28 = v11;
    v29 = 2112;
    v30 = v4;
    v31 = 2048;
    v32 = v5;
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "No impl of %@ in (%@) in %gs", buf, 0x20u);
  }

  v12 = *(v24 + 24);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);

  return v12 & 1;
}

void sub_1AD5973BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void __PKHasImplementationOfSelectorInImage_block_invoke(uint64_t a1)
{
  outCount = 0;
  v2 = objc_copyClassNamesForImage([*(a1 + 32) UTF8String], &outCount);
  if (v2)
  {
    v3 = v2;
    if (outCount)
    {
      v4 = 0;
      while (1)
      {
        v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v3[v4]];
        v6 = NSClassFromString(v5);

        if (class_getInstanceMethod(v6, *(a1 + 56)))
        {
          break;
        }

        if (++v4 >= outCount)
        {
          goto LABEL_8;
        }
      }

      *(*(*(a1 + 40) + 8) + 24) = class_getName(v6);
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

LABEL_8:
    free(v3);
  }
}

id PKProcessNameForPid(int a1)
{
  v13 = *MEMORY[0x1E69E9840];
  *v11 = 0x800000001;
  size[0] = 0;
  *&size[1] = 4;
  if (sysctl(v11, 2u, size, &size[1], 0, 0) < 0)
  {
    goto LABEL_10;
  }

  v2 = malloc_type_malloc(size[0], 0x100004077774924uLL);
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = v2;
  *v11 = 0x3100000001;
  v12 = a1;
  *&size[1] = size[0];
  if (sysctl(v11, 3u, v2, &size[1], 0, 0) < 0)
  {
    free(v3);
LABEL_10:
    v8 = 0;
    goto LABEL_15;
  }

  v4 = [MEMORY[0x1E696AEC0] stringWithCString:v3 + 4 encoding:4];
  if ([v4 length])
  {
    v5 = [v4 length] + 1;
    while (1)
    {
      v6 = v5 - 2;
      if (v5 - 2 < 0)
      {
        break;
      }

      --v5;
      if ([v4 characterAtIndex:v6] == 47)
      {
        v7 = [v4 substringFromIndex:v5];
        goto LABEL_13;
      }
    }

    v7 = v4;
LABEL_13:
    v8 = v7;
    free(v3);
  }

  else
  {
    free(v3);
    v8 = 0;
  }

LABEL_15:

  return v8;
}

uint64_t PKGetMyPid()
{
  if (qword_1ED6D1580 != -1)
  {
    dispatch_once(&qword_1ED6D1580, &__block_literal_global_1434);
  }

  return dword_1ED6D11E4;
}

uint64_t __PKGetMyPid_block_invoke()
{
  result = getpid();
  dword_1ED6D11E4 = result;
  return result;
}

uint64_t PKProcessIsiOSOnMac(void)
{
  if (PKProcessIsiOSOnMac != -1)
  {
    dispatch_once(&PKProcessIsiOSOnMac, &__block_literal_global_1436);
  }

  return 0;
}

void ___Z19PKProcessIsiOSOnMacv_block_invoke()
{
  if (qword_1ED6D1580 != -1)
  {
    dispatch_once(&qword_1ED6D1580, &__block_literal_global_1434);
  }
}

id PKAttributedStringByParsingLinksInString(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v39 = 0;
    v34[0] = 0;
    v34[1] = v34;
    v34[2] = 0x3032000000;
    v34[3] = __Block_byref_object_copy__2;
    v34[4] = __Block_byref_object_dispose__2;
    v35 = 0;
    v5 = objc_alloc_init(MEMORY[0x1E696AD40]);
    v6 = [MEMORY[0x1E695DF90] dictionary];
    if (!v4)
    {
      v4 = [MEMORY[0x1E695DF20] dictionary];
    }

    if (qword_1ED6D1588 != -1)
    {
      dispatch_once(&qword_1ED6D1588, &__block_literal_global_1439);
    }

    v7 = qword_1ED6D11E8;
    v8 = [v3 length];
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __PKAttributedStringByParsingLinksInString_block_invoke_2;
    v27 = &unk_1E79C8BE0;
    v9 = v3;
    v28 = v9;
    v32 = &v36;
    v10 = v6;
    v29 = v10;
    v4 = v4;
    v30 = v4;
    v33 = v34;
    v11 = v5;
    v31 = v11;
    [v7 enumerateMatchesInString:v9 options:0 range:0 usingBlock:{v8, &v24}];
    v12 = v37[3];
    if (v12 != [v9 length])
    {
      v13 = v37[3];
      v14 = [v9 length];
      v15 = [v9 substringWithRange:{v13, v14 - v37[3]}];
      v16 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v15 attributes:v4];
      [v11 appendAttributedString:v16];
    }

    v17 = [v11 mutableString];
    v18 = [v11 mutableString];
    [v17 replaceOccurrencesOfString:@"&lt;" withString:@"<" options:1 range:{0, objc_msgSend(v18, "length")}];

    v19 = [v11 mutableString];
    v20 = [v11 mutableString];
    [v19 replaceOccurrencesOfString:@"&gt;" withString:@">" options:1 range:{0, objc_msgSend(v20, "length")}];

    v21 = v31;
    v22 = v11;

    _Block_object_dispose(v34, 8);
    _Block_object_dispose(&v36, 8);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

void sub_1AD597A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void __PKAttributedStringByParsingLinksInString_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:@"\\<([\\/A-Za-z0-9]+)(?:\\s*([A-Za-z0-9]+)\\s*\\=\\s*((?:[^\\'\\][^\\s\\>]+)|(?:\\[^\\]+\\" options:1 error:0];
  v1 = qword_1ED6D11E8;
  qword_1ED6D11E8 = v0;
}

void __PKAttributedStringByParsingLinksInString_block_invoke_2(uint64_t a1, void *a2)
{
  v27 = a2;
  if ([v27 range] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = [*(a1 + 32) substringWithRange:{*(*(*(a1 + 64) + 8) + 24), objc_msgSend(v27, "range") - *(*(*(a1 + 64) + 8) + 24)}];
    [*(a1 + 40) setDictionary:*(a1 + 48)];
    v4 = *(*(*(a1 + 72) + 8) + 40);
    if (v4)
    {
      [*(a1 + 40) setValue:v4 forKey:@"NSLink"];
    }

    v5 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v3 attributes:*(a1 + 40)];
    [*(a1 + 56) appendAttributedString:v5];
    if ([v27 numberOfRanges] < 3 || (v6 = *(a1 + 32), v7 = objc_msgSend(v27, "rangeAtIndex:", 1), objc_msgSend(v6, "compare:options:range:", @"A", 1, v7, v8)) || (v9 = *(a1 + 32), v10 = objc_msgSend(v27, "rangeAtIndex:", 2), objc_msgSend(v9, "compare:options:range:", @"HREF", 1, v10, v11)))
    {
      v12 = *(a1 + 32);
      v13 = [v27 rangeAtIndex:1];
      if ([v12 compare:@"/A" options:1 range:{v13, v14}])
      {
LABEL_10:
        v17 = [v27 range];
        [v27 range];
        *(*(*(a1 + 64) + 8) + 24) = v18 + v17;

        goto LABEL_11;
      }

      v15 = *(*(a1 + 72) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = 0;
    }

    else
    {
      v19 = [v27 rangeAtIndex:3];
      v21 = v20;
      v22 = [*(a1 + 32) characterAtIndex:v19];
      if (v22 == 39 || v22 == 34)
      {
        ++v19;
        v21 -= 2;
      }

      v23 = MEMORY[0x1E695DFF8];
      v16 = [*(a1 + 32) substringWithRange:{v19, v21}];
      v24 = [v23 URLWithString:v16];
      v25 = *(*(a1 + 72) + 8);
      v26 = *(v25 + 40);
      *(v25 + 40) = v24;
    }

    goto LABEL_10;
  }

LABEL_11:
}

__CFString *PKBarcodeFilterNameForFormat(unint64_t a1)
{
  if (a1 >= 5)
  {
    return [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"unknown format %ld", a1}];
  }

  else
  {
    return off_1E79C8D00[a1];
  }
}

uint64_t PKBeginBackgroundTask(void *a1, void *a2)
{
  v3 = getUIApplicationClass[0];
  v4 = a2;
  v5 = a1;
  v6 = [(objc_class *)v3() sharedApplication];
  v7 = [v6 beginBackgroundTaskWithName:v5 expirationHandler:v4];

  return v7;
}

void PKEndBackgroundTask(uint64_t a1)
{
  v2 = [getUIApplicationClass[0]() sharedApplication];
  [v2 endBackgroundTask:a1];
}

BOOL PKApplicationIsInBackground()
{
  v0 = [getUIApplicationClass[0]() sharedApplication];
  v1 = [v0 applicationState] == 2;

  return v1;
}

uint64_t PKGymKitConflictsWithPass(void *a1, void *a2)
{
  v3 = a2;
  if ([a1 hasImmediateAutomaticSelectionCriterion] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [v3 isGymKitEnabled];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t PKCalculateSizeOfFolder(void *a1)
{
  v27[2] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v18 = [MEMORY[0x1E696AC08] defaultManager];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = v1;
  [v2 addObject:v1];
  v3 = 0;
  if ([v2 count])
  {
    v4 = *MEMORY[0x1E695DB78];
    v5 = *MEMORY[0x1E695DB50];
    do
    {
      v6 = [v2 firstObject];
      [v2 removeObjectAtIndex:0];
      v27[0] = v4;
      v27[1] = v5;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
      v19 = v6;
      v8 = [v18 enumeratorAtURL:v6 includingPropertiesForKeys:v7 options:0 errorHandler:0];

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v23;
        do
        {
          v13 = 0;
          do
          {
            if (*v23 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v22 + 1) + 8 * v13);
            v21 = 0;
            [v14 getResourceValue:&v21 forKey:v4 error:0];
            v15 = v21;
            if ([v15 BOOLValue])
            {
              [v2 addObject:v14];
            }

            else
            {
              v20 = 0;
              [v14 getResourceValue:&v20 forKey:v5 error:0];
              v3 += [v20 longLongValue];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v11);
      }
    }

    while ([v2 count]);
  }

  return v3;
}

id PKCreatePinBlockISO1Format(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v4 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      v5 = "Error: PIN string cannot be nil.";
      v6 = v4;
      v7 = 2;
      goto LABEL_26;
    }

LABEL_6:
    v8 = 0;
    goto LABEL_22;
  }

  v3 = [v1 length];
  if (v3 - 13 <= 0xFFFFFFFFFFFFFFF6)
  {
    v4 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v18 = 134217984;
      *&v18[4] = v3;
      v5 = "Error: Invalid PIN length. Must be between 4 and 12 digits. Received length: %lu";
      v6 = v4;
      v7 = 12;
LABEL_26:
      _os_log_error_impl(&dword_1AD337000, v6, OS_LOG_TYPE_ERROR, v5, v18, v7);
      goto LABEL_6;
    }

    goto LABEL_6;
  }

  v4 = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
  v9 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:v2];
  if (([v4 isSupersetOfSet:v9]& 1) != 0)
  {
    v10 = 0;
    *v18 = v3 | 0x10u;
    do
    {
      v11 = [v2 characterAtIndex:{v10, *v18}];
      v12 = v11 - 48;
      if ((v10 & 1) == 0)
      {
        v12 = 16 * v11;
      }

      v18[(v10 + 2) >> 1] |= v12;
      ++v10;
    }

    while (v3 != v10);
    if (v3 <= 0xD)
    {
      v13 = v3 + 2;
      do
      {
        v14 = arc4random_uniform(0x10u);
        v15 = 16 * v14;
        if (v13)
        {
          v15 = v14;
        }

        v18[v13++ >> 1] |= v15;
      }

      while (v13 != 16);
    }

    v8 = [MEMORY[0x1E695DEF0] dataWithBytes:v18 length:8];
  }

  else
  {
    v16 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v18 = 138412290;
      *&v18[4] = v2;
      _os_log_error_impl(&dword_1AD337000, v16, OS_LOG_TYPE_ERROR, "Error: PIN must contain only digits (0-9). Received: %@", v18, 0xCu);
    }

    v8 = 0;
  }

LABEL_22:

  return v8;
}

__CFString *PKSFSymbolPrefixForCurrencyCode(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 length])
  {
    v3 = [v2 uppercaseString];
    if ([v3 isEqualToString:@"AUD"])
    {
      v4 = @"australiandollarsign";
    }

    else if ([v3 isEqualToString:@"AZN"])
    {
      v4 = @"manatsign";
    }

    else if ([v3 isEqualToString:@"BRL"])
    {
      v4 = @"brazilianrealsign";
    }

    else if ([v3 isEqualToString:@"CNY"])
    {
      v4 = @"chineseyuanrenminbisign";
    }

    else if ([v3 isEqualToString:@"CRC"])
    {
      v4 = @"coloncurrencysign";
    }

    else if ([v3 isEqualToString:@"CHF"])
    {
      v4 = @"francsign";
    }

    else if ([v3 isEqualToString:@"DKK"])
    {
      v4 = @"danishkronesign";
    }

    else if ([v3 isEqualToString:@"VND"])
    {
      v4 = @"dongsign";
    }

    else if ([v3 isEqualToString:@"EUR"])
    {
      v4 = @"eurosign";
    }

    else if ([v3 isEqualToString:@"GBP"])
    {
      v4 = @"sterlingsign";
    }

    else if ([v3 isEqualToString:@"GEL"])
    {
      v4 = @"larisign";
    }

    else if ([v3 isEqualToString:@"PYG"])
    {
      v4 = @"guaranisign";
    }

    else if ([v3 isEqualToString:@"UAH"])
    {
      v4 = @"hryvniasign";
    }

    else if ([v3 isEqualToString:@"INR"])
    {
      v4 = @"indianrupeesign";
    }

    else if ([v3 isEqualToString:@"ILS"])
    {
      v4 = @"shekelsign";
    }

    else if ([v3 isEqualToString:@"JPY"])
    {
      v4 = @"yensign";
    }

    else if ([v3 isEqualToString:@"KZT"])
    {
      v4 = @"tengesign";
    }

    else if ([v3 isEqualToString:@"KRW"])
    {
      v4 = @"wonsign";
    }

    else if ([v3 isEqualToString:@"MNT"])
    {
      v4 = @"tugriksign";
    }

    else if ([v3 isEqualToString:@"MYR"])
    {
      v4 = @"malaysianringgitsign";
    }

    else if ([v3 isEqualToString:@"NOK"])
    {
      v4 = @"norwegiankronesign";
    }

    else if ([v3 isEqualToString:@"PEN"])
    {
      v4 = @"peruviansolessign";
    }

    else if ([v3 isEqualToString:@"PLN"])
    {
      v4 = @"polishzlotysign";
    }

    else if ([v3 isEqualToString:@"RUB"])
    {
      v4 = @"rublesign";
    }

    else if ([v3 isEqualToString:@"SEK"])
    {
      v4 = @"swedishkronasign";
    }

    else if ([v3 isEqualToString:@"SGD"])
    {
      v4 = @"singaporedollarsign";
    }

    else if ([v3 isEqualToString:@"USD"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"CAD"))
    {
      v4 = @"dollarsign";
    }

    else
    {
      v4 = @"dollarsign";
      if (([v3 isEqualToString:@"MXN"] & 1) == 0)
      {
        v4 = @"pesosign";
        if (([v3 isEqualToString:@"CLP"] & 1) == 0 && !objc_msgSend(v3, "isEqualToString:", @"COP"))
        {
          v4 = @"dollarsign";
        }
      }
    }
  }

  else
  {
    v4 = @"dollarsign";
  }

  return v4;
}

Class initNPKCompanionAgentConnection()
{
  if (qword_1ED6D15F8 != -1)
  {
    dispatch_once(&qword_1ED6D15F8, &__block_literal_global_1682);
  }

  result = objc_getClass("NPKCompanionAgentConnection");
  qword_1ED6D15F0 = result;
  getNPKCompanionAgentConnectionClass[0] = NPKCompanionAgentConnectionFunction;
  return result;
}

void *__LoadNanoPassKit_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/NanoPassKit.framework/NanoPassKit", 2);
  LoadNanoPassKit_frameworkLibrary = result;
  return result;
}

Class initNRPairedDeviceRegistry()
{
  if (qword_1ED6D1610 != -1)
  {
    dispatch_once(&qword_1ED6D1610, &__block_literal_global_1686);
  }

  result = objc_getClass("NRPairedDeviceRegistry");
  qword_1ED6D1600 = result;
  getNRPairedDeviceRegistryClass = NRPairedDeviceRegistryFunction;
  return result;
}

void *__LoadNanoRegistry_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/NanoRegistry.framework/NanoRegistry", 2);
  qword_1ED6D1608 = result;
  return result;
}

id initNRDevicePropertySupportedFeatureIdentifiers()
{
  if (qword_1ED6D1610 != -1)
  {
    dispatch_once(&qword_1ED6D1610, &__block_literal_global_1686);
  }

  v0 = dlsym(qword_1ED6D1608, "NRDevicePropertySupportedFeatureIdentifiers");
  objc_storeStrong(&qword_1ED6D15B0, *v0);
  _MergedGlobals_168 = NRDevicePropertySupportedFeatureIdentifiersFunction;
  v1 = qword_1ED6D15B0;

  return v1;
}

id initNRDevicePropertySystemVersion()
{
  if (qword_1ED6D1610 != -1)
  {
    dispatch_once(&qword_1ED6D1610, &__block_literal_global_1686);
  }

  v0 = dlsym(qword_1ED6D1608, "NRDevicePropertySystemVersion");
  objc_storeStrong(&qword_1ED6D15B8, *v0);
  off_1ED6D1058 = NRDevicePropertySystemVersionFunction;
  v1 = qword_1ED6D15B8;

  return v1;
}

id initNRDevicePropertyIsArchived()
{
  if (qword_1ED6D1610 != -1)
  {
    dispatch_once(&qword_1ED6D1610, &__block_literal_global_1686);
  }

  v0 = dlsym(qword_1ED6D1608, "NRDevicePropertyIsArchived");
  objc_storeStrong(&qword_1ED6D15C8, *v0);
  getNRDevicePropertyIsArchived = NRDevicePropertyIsArchivedFunction;
  v1 = qword_1ED6D15C8;

  return v1;
}

id initNRDevicePropertyIsActive()
{
  if (qword_1ED6D1610 != -1)
  {
    dispatch_once(&qword_1ED6D1610, &__block_literal_global_1686);
  }

  v0 = dlsym(qword_1ED6D1608, "NRDevicePropertyIsActive");
  objc_storeStrong(&qword_1ED6D15D0, *v0);
  off_1ED6D1060 = NRDevicePropertyIsActiveFunction;
  v1 = qword_1ED6D15D0;

  return v1;
}

id initNRDevicePropertyIsPaired()
{
  if (qword_1ED6D1610 != -1)
  {
    dispatch_once(&qword_1ED6D1610, &__block_literal_global_1686);
  }

  v0 = dlsym(qword_1ED6D1608, "NRDevicePropertyIsPaired");
  objc_storeStrong(&qword_1ED6D15D8, *v0);
  off_1ED6D1068 = NRDevicePropertyIsPairedFunction;
  v1 = qword_1ED6D15D8;

  return v1;
}

id initNRDevicePropertyIsAltAccount()
{
  if (qword_1ED6D1610 != -1)
  {
    dispatch_once(&qword_1ED6D1610, &__block_literal_global_1686);
  }

  v0 = dlsym(qword_1ED6D1608, "NRDevicePropertyIsAltAccount");
  objc_storeStrong(&qword_1ED6D15A8, *v0);
  getNRDevicePropertyIsAltAccount[0] = NRDevicePropertyIsAltAccountFunction;
  v1 = qword_1ED6D15A8;

  return v1;
}

id initNRDevicePropertySerialNumber()
{
  if (qword_1ED6D1610 != -1)
  {
    dispatch_once(&qword_1ED6D1610, &__block_literal_global_1686);
  }

  v0 = dlsym(qword_1ED6D1608, "NRDevicePropertySerialNumber");
  objc_storeStrong(&qword_1ED6D1598, *v0);
  getNRDevicePropertySerialNumber[0] = NRDevicePropertySerialNumberFunction;
  v1 = qword_1ED6D1598;

  return v1;
}

id initNRDevicePropertyScreenScale()
{
  if (qword_1ED6D1610 != -1)
  {
    dispatch_once(&qword_1ED6D1610, &__block_literal_global_1686);
  }

  v0 = dlsym(qword_1ED6D1608, "NRDevicePropertyScreenScale");
  objc_storeStrong(&qword_1ED6D1590, *v0);
  getNRDevicePropertyScreenScale[0] = NRDevicePropertyScreenScaleFunction;
  v1 = qword_1ED6D1590;

  return v1;
}

id initNRDevicePropertyClass()
{
  if (qword_1ED6D1610 != -1)
  {
    dispatch_once(&qword_1ED6D1610, &__block_literal_global_1686);
  }

  v0 = dlsym(qword_1ED6D1608, "NRDevicePropertyClass");
  objc_storeStrong(&qword_1ED6D15A0, *v0);
  getNRDevicePropertyClass[0] = NRDevicePropertyClassFunction;
  v1 = qword_1ED6D15A0;

  return v1;
}

id initNRDevicePropertyProductType()
{
  if (qword_1ED6D1610 != -1)
  {
    dispatch_once(&qword_1ED6D1610, &__block_literal_global_1686);
  }

  v0 = dlsym(qword_1ED6D1608, "NRDevicePropertyProductType");
  objc_storeStrong(&qword_1ED6D15C0, *v0);
  getNRDevicePropertyProductType[0] = NRDevicePropertyProductTypeFunction;
  v1 = qword_1ED6D15C0;

  return v1;
}

void __PKTimeProfileQueue_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.PassKit.timeprofile", 0);
  v1 = qword_1ED6D1650;
  qword_1ED6D1650 = v0;
}

Class initUIApplication()
{
  if (qword_1ED6D1680 != -1)
  {
    dispatch_once(&qword_1ED6D1680, &__block_literal_global_1741);
  }

  result = objc_getClass("UIApplication");
  qword_1ED6D1678 = result;
  getUIApplicationClass[0] = UIApplicationFunction;
  return result;
}

void *__LoadUIKit_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/UIKit.framework/UIKit", 2);
  LoadUIKit_frameworkLibrary = result;
  return result;
}

id PDPassLibraryInAppInterface()
{
  if (qword_1ED6D1738 != -1)
  {
    dispatch_once(&qword_1ED6D1738, &__block_literal_global_217);
  }

  v1 = qword_1ED6D1730;

  return v1;
}

void __PDPassLibraryInAppInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F246B720];
  v1 = qword_1ED6D1730;
  qword_1ED6D1730 = v0;

  _PDPassLibraryApplyBaseInterface(qword_1ED6D1730);
  v2 = qword_1ED6D1730;

  _PDPassLibraryApplyInAppInterface(v2);
}

id PKLayerNullActions()
{
  if (qword_1ED6D1778 != -1)
  {
    dispatch_once(&qword_1ED6D1778, &__block_literal_global_15);
  }

  v1 = qword_1ED6D1780;

  return v1;
}

void __PKLayerNullActions_block_invoke()
{
  v4[23] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DFB0] null];
  v3[0] = @"bounds";
  v3[1] = @"position";
  v4[0] = v0;
  v4[1] = v0;
  v3[2] = @"zPosition";
  v3[3] = @"anchorPoint";
  v4[2] = v0;
  v4[3] = v0;
  v3[4] = @"anchorPointZ";
  v3[5] = @"transform";
  v4[4] = v0;
  v4[5] = v0;
  v3[6] = @"sublayerTransform";
  v3[7] = @"opacity";
  v4[6] = v0;
  v4[7] = v0;
  v3[8] = @"hidden";
  v3[9] = @"contents";
  v4[8] = v0;
  v4[9] = v0;
  v3[10] = @"shadowOpacity";
  v3[11] = @"shadowOffset";
  v4[10] = v0;
  v4[11] = v0;
  v3[12] = @"shadowRadius";
  v3[13] = @"shadowPath";
  v4[12] = v0;
  v4[13] = v0;
  v3[14] = @"filters";
  v3[15] = @"strokeStart";
  v4[14] = v0;
  v4[15] = v0;
  v3[16] = @"strokeEnd";
  v3[17] = @"strokeColor";
  v4[16] = v0;
  v4[17] = v0;
  v3[18] = @"fillColor";
  v3[19] = @"colors";
  v4[18] = v0;
  v4[19] = v0;
  v3[20] = @"locations";
  v3[21] = @"startPoint";
  v4[20] = v0;
  v4[21] = v0;
  v3[22] = @"endPoint";
  v4[22] = v0;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:23];
  v2 = qword_1ED6D1780;
  qword_1ED6D1780 = v1;
}

double PKUILayerPosition(double a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v10 = a3 - a7;
  CA_CGPointApplyTransform_();
  return a1 + v10 * a5;
}

double PKSizeAlignedInRectWithScale(unint64_t a1, double a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, double a8)
{
  v14 = HIDWORD(a1);
  v15 = 0.0;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v20.origin.x = a4;
      v20.origin.y = a5;
      v20.size.width = a6;
      v20.size.height = a7;
      v15 = CGRectGetMaxX(v20) - a2;
    }

    else if (a1 == 3)
    {
      v15 = a4;
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      v16 = 0.5;
      v17 = a8;
      if (a8 == 0.0)
      {
        v17 = PKScreenScale();
        v16 = 0.5;
      }

      v18 = a4 + (a6 - a2) * v16;
      if (v17 == 0.0)
      {
        v15 = round(v18);
      }

      else
      {
        v15 = round(v18 * v17) / v17;
      }
    }
  }

  else
  {
    v15 = a4;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v21.origin.x = a4;
      v21.origin.y = a5;
      v21.size.width = a6;
      v21.size.height = a7;
      CGRectGetMaxY(v21);
    }
  }

  else if (v14 == 1 && a8 == 0.0)
  {
    PKScreenScale();
  }

  return v15;
}

void PKFloatRoundToPixelWithScale(double a1, double a2)
{
  if (a2 == 0.0)
  {
    PKScreenScale();
  }
}

double PKSizeAspectFit(double result, double a2, double a3, double a4)
{
  v4 = 1.0;
  v5 = 1.0;
  if (result != 0.0)
  {
    v5 = fmin(a3 / result, 1.0);
  }

  if (a2 != 0.0)
  {
    v4 = fmin(a4 / a2, 1.0);
  }

  if (fmin(v5, v4) != 1.0)
  {
    if (v5 >= v4)
    {
      return a4 * (result / a2);
    }

    else
    {
      return a3;
    }
  }

  return result;
}

double PKSizeAspectFitToCover(double result, double a2, double a3, double a4)
{
  v4 = 1.0;
  v5 = 1.0;
  if (result != 0.0)
  {
    v5 = fmin(a3 / result, 1.0);
  }

  if (a2 != 0.0)
  {
    v4 = fmin(a4 / a2, 1.0);
  }

  if (fmax(v5, v4) != 1.0)
  {
    if (v5 <= v4)
    {
      return a4 * (result / a2);
    }

    else
    {
      return a3;
    }
  }

  return result;
}

double PKSizeScaleAspectFit(double result, double a2, double a3, double a4)
{
  v4 = a3 / result;
  if (result == 0.0)
  {
    v4 = 1.0;
  }

  v5 = a4 / a2;
  if (a2 == 0.0)
  {
    v5 = 1.0;
  }

  if (fmin(v4, v5) != 1.0)
  {
    if (v4 >= v5)
    {
      return a4 * (result / a2);
    }

    else
    {
      return a3;
    }
  }

  return result;
}

double PKSizeAspectFill(double result, double a2, double a3, double a4)
{
  v4 = a3 / result;
  if (result == 0.0)
  {
    v4 = 1.0;
  }

  v5 = a4 / a2;
  if (a2 == 0.0)
  {
    v5 = 1.0;
  }

  if (fmax(v4, v5) != 1.0)
  {
    if (v4 <= v5)
    {
      return a4 * (result / a2);
    }

    else
    {
      return a3;
    }
  }

  return result;
}

double PKRectRoundToPixelWithScale(double a1, double a2, double a3, double a4, double a5)
{
  v8 = PKPointRoundToPixelWithScale(a1, a2, a5);
  PKSizeRoundToPixelWithScale(a3, a4, a5);
  return v8;
}

double PKPointRoundToPixelWithScale(double a1, double a2, double a3)
{
  v5 = a3;
  if (a3 == 0.0)
  {
    v5 = PKScreenScale();
  }

  if (v5 == 0.0)
  {
    v6 = round(a1);
  }

  else
  {
    v6 = round(a1 * v5) / v5;
  }

  if (a3 == 0.0)
  {
    PKScreenScale();
  }

  return v6;
}

double PKSizeRoundToPixelWithScale(double a1, double a2, double a3)
{
  v5 = a3;
  if (a3 == 0.0)
  {
    v5 = PKScreenScale();
  }

  if (v5 == 0.0)
  {
    v6 = round(a1);
  }

  else
  {
    v6 = round(a1 * v5) / v5;
  }

  if (a3 == 0.0)
  {
    PKScreenScale();
  }

  return v6;
}

double PKSizeCeilToPixelWithScale(double a1, double a2, double a3)
{
  v5 = a3;
  if (a3 == 0.0)
  {
    v5 = PKScreenScale();
  }

  if (v5 == 0.0)
  {
    v6 = ceil(a1);
  }

  else
  {
    v6 = ceil(a1 * v5) / v5;
  }

  if (a3 == 0.0)
  {
    PKScreenScale();
  }

  return v6;
}

void PKFloatCeilToPixelWithScale(double a1, double a2)
{
  if (a2 == 0.0)
  {
    PKScreenScale();
  }
}

double PKSizeFloorToPixelWithScale(double a1, double a2, double a3)
{
  v5 = a3;
  if (a3 == 0.0)
  {
    v5 = PKScreenScale();
  }

  if (v5 == 0.0)
  {
    v6 = floor(a1);
  }

  else
  {
    v6 = floor(a1 * v5) / v5;
  }

  if (a3 == 0.0)
  {
    PKScreenScale();
  }

  return v6;
}

void PKFloatFloorToPixelWithScale(double a1, double a2)
{
  if (a2 == 0.0)
  {
    PKScreenScale();
  }
}

double PKPassStackScrollingAdjustedPosition(unint64_t a1, double a2, double a3)
{
  if (a3 >= 0.0)
  {
    if (a1)
    {
      v5 = fmax(a3 + -25.0, 0.0);
      if (v5 < a2)
      {
        v6 = a3 + 50.0;
        if (a3 + 50.0 <= a2)
        {
          return a2;
        }

        else
        {
          v7 = (v6 - v5) * 0.666666667;
          v8 = v6 - a2;
          v9 = powf(v8, 3.0);
          v10 = v7;
          return v6 - (v8 + (v9 / ((v10 * v10) * -6.75)));
        }
      }

      return a3;
    }

    else
    {
      return fmax(a2, a3);
    }
  }

  else
  {
    v3 = 0.0;
    if (a1 <= 6)
    {
      v3 = dbl_1ADB994E0[a1];
    }

    return a2 + v3 * a3;
  }
}

double PKPassStackScrollingNativePosition(double result, double a2)
{
  if (a2 < 0.0)
  {
    a2 = 0.0;
  }

  if (a2 >= result)
  {
    return fmax(a2 + -25.0, 0.0);
  }

  v2 = a2 + 50.0;
  if (a2 + 50.0 > result && v2 - a2 > 0.0)
  {
    return v2 * ((result - a2) / (v2 - a2)) + (1.0 - (result - a2) / (v2 - a2)) * a2;
  }

  return result;
}

id PKCATrackedLayoutGetTracker()
{
  v1 = qword_1ED6D1788;
  if (_MergedGlobals_190 == 1 && qword_1ED6D1788 == 0)
  {
    v3 = +[PKCAAnimatedLayoutTracker _create];
    v4 = qword_1ED6D1788;
    qword_1ED6D1788 = v3;

    [(PKCAAnimatedLayoutTracker *)qword_1ED6D1788 _suspend];
    v1 = qword_1ED6D1788;
  }

  return v1;
}

void PKCATrackedLayoutPerform(int a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    v7 = _MergedGlobals_190;
    v8 = qword_1ED6D1788;
    v9 = qword_1ED6D1788;
    _MergedGlobals_190 = a1;
    if (a1)
    {
      v10 = v12;
    }

    else
    {
      v10 = 0;
    }

    objc_storeStrong(&qword_1ED6D1788, v10);
    if (qword_1ED6D1788)
    {
      [(PKCAAnimatedLayoutTracker *)qword_1ED6D1788 _suspend];
    }

    v11 = objc_autoreleasePoolPush();
    v6[2](v6);
    objc_autoreleasePoolPop(v11);
    if (qword_1ED6D1788)
    {
      [(PKCAAnimatedLayoutTracker *)qword_1ED6D1788 _resume];
    }

    _MergedGlobals_190 = v7;
    objc_storeStrong(&qword_1ED6D1788, v8);
  }

  else
  {
    __break(1u);
  }
}

void PKCALayerLayoutIfNeeded(CALayer *a1, int a2, PKCAAnimatedLayoutTracker *a3)
{
  v5 = a1;
  v6 = a3;
  if (v5)
  {
    v7 = v6;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = ___Z23PKCALayerLayoutIfNeededP7CALayerbP25PKCAAnimatedLayoutTracker_block_invoke;
    v9[3] = &unk_1E79C4E28;
    v10 = v5;
    v8 = v5;
    PKCATrackedLayoutPerform(a2, v7, v9);
  }

  else
  {
    __break(1u);
  }
}

void sub_1AD59E7FC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

Class initNPKCompanionAgentConnection_0()
{
  if (qword_1ED6D1798 != -1)
  {
    dispatch_once(&qword_1ED6D1798, &__block_literal_global_17);
  }

  result = objc_getClass("NPKCompanionAgentConnection");
  _MergedGlobals_191 = result;
  getNPKCompanionAgentConnectionClass_0[0] = NPKCompanionAgentConnectionFunction_0;
  return result;
}

void *__LoadNanoPassKit_block_invoke_0()
{
  result = dlopen("/System/Library/PrivateFrameworks/NanoPassKit.framework/NanoPassKit", 2);
  LoadNanoPassKit_frameworkLibrary_0 = result;
  return result;
}

void sub_1AD5A0830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id CarKeyLocalizedTitle(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [a1 PKStringForKey:@"title"];
  v7 = [v5 passLocalizedStringForKey:v6];

  if (v6 && v7 && v6 != v7 && ([v6 isEqualToString:v7] & 1) == 0)
  {
    v9 = v7;
    goto LABEL_21;
  }

  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        v8 = @"CAR_KEY_ENTITLEMENT_CAR_DELIVERY_NAME";
        goto LABEL_20;
      case 4:
        v8 = @"CAR_KEY_ENTITLEMENT_VALET_NAME";
        goto LABEL_20;
      case 5:
        v8 = @"CAR_KEY_ENTITLEMENT_VEHICLE_SERVICE_NAME";
        goto LABEL_20;
    }

LABEL_17:
    v8 = @"PROPRIETARY_ENTITLEMENT_NAME";
    goto LABEL_20;
  }

  if (!a2)
  {
    v8 = @"FULL_ACCESS_ENTITLEMENT_NAME";
    goto LABEL_20;
  }

  if (a2 == 1)
  {
    v8 = @"UNLOCK_ONLY_ENTITLEMENT_NAME";
    goto LABEL_20;
  }

  if (a2 != 2)
  {
    goto LABEL_17;
  }

  v8 = @"RESTRICTED_ACCESS_ENTITLEMENT_NAME";
LABEL_20:
  v9 = PKLocalizedCredentialString(&v8->isa, 0);
LABEL_21:
  v10 = v9;

  return v10;
}

id CarKeyLocalizedDescriptionTitle(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [a1 PKStringForKey:@"description"];
  v7 = [v5 passLocalizedStringForKey:v6];

  if (v6 && v7 && v6 != v7 && ([v6 isEqualToString:v7] & 1) == 0)
  {
    v9 = v7;
    goto LABEL_21;
  }

  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        v8 = @"CAR_KEY_ENTITLEMENT_CAR_DELIVERY_DESCRIPTION";
        goto LABEL_20;
      case 4:
        v8 = @"CAR_KEY_ENTITLEMENT_VALET_DESCRIPTION";
        goto LABEL_20;
      case 5:
        v8 = @"CAR_KEY_ENTITLEMENT_VEHICLE_SERVICE_DESCRIPTION";
        goto LABEL_20;
    }

LABEL_17:
    v8 = @"PROPRIETARY_ENTITLEMENT_DESCRIPTION";
    goto LABEL_20;
  }

  if (!a2)
  {
    v8 = @"FULL_ACCESS_ENTITLEMENT_DESCRIPTION";
    goto LABEL_20;
  }

  if (a2 == 1)
  {
    v8 = @"UNLOCK_ONLY_ENTITLEMENT_DESCRIPTION";
    goto LABEL_20;
  }

  if (a2 != 2)
  {
    goto LABEL_17;
  }

  v8 = @"RESTRICTED_ACCESS_ENTITLEMENT_DESCRIPTION";
LABEL_20:
  v9 = PKLocalizedCredentialString(&v8->isa, 0);
LABEL_21:
  v10 = v9;

  return v10;
}

void sub_1AD5A2D7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AD5A30D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD5A348C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AD5A37D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD5A3A30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AD5A3D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD5A3FCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AD5A41A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD5A4434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD5A60DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD5A7C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _MirroredOrientation(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    return 0;
  }

  else
  {
    return qword_1ADB99590[a1 - 1];
  }
}

CGImageRef PKCreateCGImage(NSData *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1 || ![(NSData *)v1 length])
  {
    goto LABEL_8;
  }

  if (qword_1ED6D17B8 != -1)
  {
    dispatch_once(&qword_1ED6D17B8, &__block_literal_global_230);
  }

  v3 = CGImageSourceCreateWithData(v2, qword_1ED6D17B0);
  if (v3)
  {
    v4 = v3;
    if (CGImageSourceGetCount(v3))
    {
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v4, 0, 0);
    }

    else
    {
      ImageAtIndex = 0;
    }

    CFRelease(v4);
  }

  else
  {
LABEL_8:
    ImageAtIndex = 0;
  }

  return ImageAtIndex;
}

CGImageRef PKCreateCGImage(NSURL *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1 || ![(NSURL *)v1 isFileURL]&& ![(NSURL *)v2 isFileReferenceURL])
  {
    goto LABEL_9;
  }

  if (qword_1ED6D17B8 != -1)
  {
    dispatch_once(&qword_1ED6D17B8, &__block_literal_global_230);
  }

  v3 = CGImageSourceCreateWithURL(v2, qword_1ED6D17B0);
  if (v3)
  {
    v4 = v3;
    if (CGImageSourceGetCount(v3))
    {
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v4, 0, 0);
    }

    else
    {
      ImageAtIndex = 0;
    }

    CFRelease(v4);
  }

  else
  {
LABEL_9:
    ImageAtIndex = 0;
  }

  return ImageAtIndex;
}

CGPDFDocument *PKCreateCGImage(CGPDFDocumentRef document, CGSize a2, double a3)
{
  Image = document;
  if (document)
  {
    height = a2.height;
    width = a2.width;
    if (CGPDFDocumentGetNumberOfPages(document))
    {
      Page = CGPDFDocumentGetPage(Image, 1uLL);
      v8 = CGPDFPageRetain(Page);
      BoxRect = CGPDFPageGetBoxRect(v8, kCGPDFMediaBox);
      v9 = BoxRect.size.width;
      v10 = BoxRect.size.height;
      v11 = width / BoxRect.size.width;
      if (BoxRect.size.width == 0.0)
      {
        v11 = 1.0;
      }

      v12 = height / BoxRect.size.height;
      if (BoxRect.size.height == 0.0)
      {
        v12 = 1.0;
      }

      if (fmin(v11, v12) == 1.0)
      {
        height = BoxRect.size.height;
        width = BoxRect.size.width;
      }

      else if (v11 >= v12)
      {
        width = height * (BoxRect.size.width / BoxRect.size.height);
      }

      else
      {
        height = width * (BoxRect.size.height / BoxRect.size.width);
      }

      v13 = PKSizeFloorToPixelWithScale(width, height, a3);
      v15 = fmin(v13 / v9, v14 / v10);
      BitmapContext = _CreateBitmapContext(0, 0, 0, v13 * a3, v14 * a3, 1.0);
      CGContextScaleCTM(BitmapContext, a3, a3);
      CGAffineTransformMakeScale(&v18, v15, v15);
      CGContextConcatCTM(BitmapContext, &v18);
      CGContextDrawPDFPage(BitmapContext, v8);
      CGPDFPageRelease(v8);
      Image = CGBitmapContextCreateImage(BitmapContext);
      CGContextRelease(BitmapContext);
    }

    else
    {
      return 0;
    }
  }

  return Image;
}

id PKGetImageFromBitmapContext(CGContext *a1)
{
  CGContextGetCTM(&v4, a1);
  v2 = PKGetImageFromBitmapContext(a1, fabs(v4.a + v4.c));

  return v2;
}

PKImage *PKGetImageFromPDFDocument(CGPDFDocument *a1, double a2, double a3, double a4)
{
  v5 = PKCreateCGImage(a1, *&a2, a4);
  if (v5)
  {
    v6 = v5;
    v7 = [[PKImage alloc] initWithCGImage:v5 scale:1 orientation:a4];
    CGImageRelease(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void _Draw3PartSlice(CGContext *a1, CGImage *a2, uint64_t a3, _BOOL4 a4, double a5, double a6, double a7, CGFloat a8, CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12, double a13, CGFloat a14, double a15, CGFloat a16)
{
  v31.origin.x = a9;
  remainder.origin.x = a9;
  remainder.origin.y = a10;
  remainder.size.width = a11;
  remainder.size.height = a12;
  memset(&slice, 0, sizeof(slice));
  memset(&v28, 0, sizeof(v28));
  memset(&v27, 0, sizeof(v27));
  v31.origin.y = a10;
  v31.size.width = a11;
  v31.size.height = a12;
  CGRectDivide(v31, &slice, &remainder, a14, CGRectMinXEdge);
  CGRectDivide(remainder, &v27, &v28, a16, CGRectMaxXEdge);
  if (!CGRectIsEmpty(slice))
  {
    _DrawImagePart(a1, a2, a3, a4, 0.0, a6, a14, a8, slice.origin.x, slice.origin.y, slice.size.width, slice.size.height);
  }

  if (!CGRectIsEmpty(v28))
  {
    _DrawImagePart(a1, a2, a3, a4, a14, a6, a7 - (a14 + a16), a8, v28.origin.x, v28.origin.y, v28.size.width, v28.size.height);
  }

  if (!CGRectIsEmpty(v27))
  {
    _DrawImagePart(a1, a2, a3, a4, a7 - a16, a6, a16, a8, v27.origin.x, v27.origin.y, v27.size.width, v27.size.height);
  }
}

void _DrawImagePart(CGContext *a1, CGImage *a2, uint64_t a3, _BOOL4 a4, double a5, double a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12)
{
  if (!CGRectIsEmpty(*&a5))
  {
    v36.origin.x = a9;
    v36.origin.y = a10;
    v36.size.width = a11;
    v36.size.height = a12;
    if (!CGRectIsEmpty(v36))
    {
      v24 = a5 * a3;
      v25 = a6 * a3;
      v26 = a7 * a3;
      v27 = a8 * a3;
      if (a4)
      {
        v32 = v25;
        v33 = v24;
        CGContextGetCTM(&v34, a1);
        CGAffineTransformInvert(&v35, &v34);
        v25 = v32;
        v24 = v33;
        a4 = v27 * v35.d + v35.b * v26 != a12 || v27 * v35.c + v35.a * v26 != a11;
      }

      v28 = a7 * a3;
      v29 = a8 * a3;
      v30 = CGImageCreateWithImageInRect(a2, *&v24);
      if (v30)
      {
        v31 = v30;
        if (a4)
        {
          CGContextSaveGState(a1);
          v37.origin.x = a9;
          v37.origin.y = a10;
          v37.size.width = a11;
          v37.size.height = a12;
          CGContextClipToRect(a1, v37);
          v38.origin.y = a10 + a12;
          v38.origin.x = a9;
          v38.size.width = a7;
          v38.size.height = a8;
          CGContextDrawTiledImage(a1, v38, v31);
          CGContextRestoreGState(a1);
        }

        else
        {
          v39.origin.x = a9;
          v39.origin.y = a10;
          v39.size.width = a11;
          v39.size.height = a12;
          CGContextDrawImage(a1, v39, v30);
        }

        CGImageRelease(v31);
      }
    }
  }
}

id PKPaymentAuthorizationServiceInterface()
{
  if (qword_1ED6D17C8 != -1)
  {
    dispatch_once(&qword_1ED6D17C8, &__block_literal_global_19);
  }

  v1 = _MergedGlobals_193;

  return v1;
}

void __PKPaymentAuthorizationServiceInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F242E160];
  v1 = _MergedGlobals_193;
  _MergedGlobals_193 = v0;

  v2 = _MergedGlobals_193;

  PKPaymentAuthorizationServiceInterfaceSet(v2);
}

void PKPaymentAuthorizationServiceInterfaceSet(void *a1)
{
  v1 = MEMORY[0x1E695DFD8];
  v2 = a1;
  v3 = objc_opt_class();
  v4 = [v1 setWithObjects:{v3, objc_opt_class(), 0}];
  [v2 setClasses:v4 forSelector:sel_authorizationDidSelectShippingMethodCompleteWithStatus_paymentSummaryItems_ argumentIndex:1 ofReply:0];

  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  [v2 setClasses:v7 forSelector:sel_authorizationDidSelectShippingAddressCompleteWithStatus_shippingMethods_paymentSummaryItems_ argumentIndex:1 ofReply:0];

  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  [v2 setClasses:v10 forSelector:sel_authorizationDidSelectShippingAddressCompleteWithStatus_shippingMethods_paymentSummaryItems_ argumentIndex:2 ofReply:0];

  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  [v2 setClasses:v13 forSelector:sel_authorizationDidSelectPaymentMethodCompleteWithPaymentSummaryItems_ argumentIndex:0 ofReply:0];
}

id PKDACarKeySharingMessageFromMessage(void *a1)
{
  v1 = MEMORY[0x1E699A110];
  v2 = a1;
  v3 = [v1 alloc];
  v4 = [v2 genericSharingDict];
  v5 = [v2 carKeySharingDict];

  v6 = [v3 initWithGenericDataDictionary:v4 additionalDataDictionary:v5];

  return v6;
}

PKSharingCarKeyMessage *PKCarKeyMessageFromDACarKeySharingMessage(void *a1)
{
  v1 = a1;
  v2 = [v1 genericData];
  v3 = [v1 additionalData];

  v4 = [PKSharingCarKeyMessage alloc];
  v5 = [v2 message];
  v6 = [v2 messageType];
  if ((v6 - 1) >= 7)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v2 sharingIdentifier];
  v9 = [v2 friendKeyIdentifier];
  v10 = [v3 asDictionary];
  v11 = [(PKSharingCarKeyMessage *)v4 initWithRawMessage:v5 type:v7 shareIdentifier:v8 friendKeyIdentifier:v9 carKeySharingDict:v10];

  return v11;
}

id PKDAAlishaKeyEncryptedRequestFromSubcredentialEncryptedRequest(void *a1)
{
  v1 = MEMORY[0x1E699A108];
  v2 = a1;
  v3 = [v1 alloc];
  v4 = [v2 encryptionScheme];
  v5 = MEMORY[0x1E695DEF0];
  v6 = [v2 ephemeralPublicKey];
  v7 = [v5 dataWithHexEncodedString:v6];
  v8 = MEMORY[0x1E695DEF0];
  v9 = [v2 publicKeyHash];
  v10 = [v8 dataWithHexEncodedString:v9];
  v11 = [v2 data];

  v12 = [v3 initWithVersion:v4 ephemeralPublicKey:v7 publicKeyHash:v10 encryptedRequest:v11];

  return v12;
}

PKPaymentTransactionBankConnectMetadata *PKPaymentTransactionBankConnectMetadataFromTransaction(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(PKPaymentTransactionBankConnectMetadata);
  v6 = [v3 bankConnectIdentifier];
  [(PKPaymentTransactionBankConnectMetadata *)v5 setTransactionIdentifier:v6];

  v7 = [v3 originalTransactionDescription];
  [(PKPaymentTransactionBankConnectMetadata *)v5 setOriginalTransactionDescription:v7];

  v8 = [v3 actions];
  v9 = [v8 digitalServicingURL];
  [(PKPaymentTransactionBankConnectMetadata *)v5 setDigitalServicingURL:v9];

  v10 = [v3 actions];
  v11 = [v10 payNowURL];
  [(PKPaymentTransactionBankConnectMetadata *)v5 setPayNowURL:v11];

  v12 = [v3 actions];
  v13 = [v12 postInstallmentURL];
  [(PKPaymentTransactionBankConnectMetadata *)v5 setPostInstallmentURL:v13];

  v14 = [v3 actions];
  v15 = [v14 redeemRewardsURL];
  [(PKPaymentTransactionBankConnectMetadata *)v5 setRedeemRewardsURL:v15];

  v16 = [v3 mapsInsight];
  if (v16)
  {
    v17 = [v3 type] == 0;
  }

  else
  {
    v17 = 0;
  }

  [(PKPaymentTransactionBankConnectMetadata *)v5 setClassifiedByMaps:v17];

  v18 = [v3 creditDebitIndicator];
  if (v18)
  {
    if (v18 != 1)
    {
      goto LABEL_9;
    }

    v19 = 2;
  }

  else
  {
    v19 = 1;
  }

  [(PKPaymentTransactionBankConnectMetadata *)v5 setCreditDebitIndicator:v19];
LABEL_9:
  v20 = [v3 insights];
  v21 = [v20 bankMerchantInformationInsight];

  if (v21)
  {
    v22 = [v21 categoryDescription];
    [(PKPaymentTransactionBankConnectMetadata *)v5 setBankCategoryDescription:v22];

    v23 = [v21 merchantAddress];
    [(PKPaymentTransactionBankConnectMetadata *)v5 setBankMerchantAddress:v23];

    v24 = [v21 merchantCategoryCode];
    [(PKPaymentTransactionBankConnectMetadata *)v5 setBankMerchantCategoryCode:v24];

    v25 = [v21 merchantName];
    [(PKPaymentTransactionBankConnectMetadata *)v5 setBankMerchantName:v25];

    v26 = [v21 merchantNumber];
    [(PKPaymentTransactionBankConnectMetadata *)v5 setBankMerchantNumber:v26];

    v27 = [v21 standardIndustrialClassificationCode];
    [(PKPaymentTransactionBankConnectMetadata *)v5 setBankStandardIndustrialClassificationCode:v27];
  }

  if (v4)
  {
    -[PKPaymentTransactionBankConnectMetadata setRoundTransactionDate:](v5, "setRoundTransactionDate:", [v4 timestampSuitableForUserDisplay] ^ 1);
  }

  return v5;
}

uint64_t PKProtobufPaymentDeviceRequestReadFrom(uint64_t a1, void *a2)
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
          v31 = PBReaderReadData();
          if (v31)
          {
            [a1 addKnownManifestHashes:v31];
          }
        }

        else
        {
          if (v13 != 4)
          {
LABEL_40:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_52;
          }

          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 32) |= 1u;
          while (1)
          {
            v35 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v35 & 0x7F) << v21;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_51;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v23;
          }

LABEL_51:
          *(a1 + 24) = v27;
        }
      }

      else if (v13 == 1)
      {
        v29 = PBReaderReadString();
        v30 = *(a1 + 8);
        *(a1 + 8) = v29;
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
        *(a1 + 32) |= 2u;
        while (1)
        {
          v34 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v34 & 0x7F) << v14;
          if ((v34 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            LOBYTE(v20) = 0;
            goto LABEL_47;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_47:
        *(a1 + 28) = v20;
      }

LABEL_52:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *PKInstallmentRetailChannelToString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return off_1E79C9308[a1 - 1];
  }
}

void sub_1AD5B15A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD5B16E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD5B4AE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AD5B58E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1AD5BAD14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD5BB3E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

uint64_t PKWebServiceRegionFeatureTypeFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"carAccess")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_29:
    has_internal_ui = os_variant_has_internal_ui();
    v28 = v2;
    v29 = v28;
    if (has_internal_ui)
    {
      if (v28 == @"shastaLiveOn")
      {
LABEL_35:
        v4 = 8;
        goto LABEL_5;
      }

      if (v2)
      {
        v30 = [(__CFString *)v28 isEqualToString:@"shastaLiveOn"];

        if (v30)
        {
          goto LABEL_35;
        }

        v31 = v29;
        if (v31 == @"virtualCardLiveOn")
        {
          goto LABEL_35;
        }

        v32 = v31;
        v33 = [(__CFString *)v31 isEqualToString:@"virtualCardLiveOn"];

        if (v33)
        {
          goto LABEL_35;
        }

        if (v32 == @"shasta")
        {
LABEL_55:
          v4 = 7;
          goto LABEL_5;
        }

LABEL_38:
        v34 = [(__CFString *)v29 isEqualToString:@"shasta"];

        if (v34)
        {
          goto LABEL_55;
        }

        v35 = v29;
        if (v35 == @"virtualCard")
        {
          goto LABEL_55;
        }

        v36 = v35;
        v37 = [(__CFString *)v35 isEqualToString:@"virtualCard"];

        if (v37)
        {
          goto LABEL_55;
        }

        v38 = v36;
        if (v38 == @"disbursement" || (v39 = v38, v40 = [(__CFString *)v38 isEqualToString:@"disbursement"], v39, (v40 & 1) != 0))
        {
          v4 = 9;
          goto LABEL_5;
        }

        v49 = v39;
        if (v49 == @"issuerBinding" || (v50 = v49, v51 = [(__CFString *)v49 isEqualToString:@"issuerBinding"], v50, (v51 & 1) != 0))
        {
          v4 = 11;
          goto LABEL_5;
        }

LABEL_45:
        v41 = os_variant_has_internal_ui();
        v42 = v29;
        v43 = v42;
        if (v41)
        {
          if (v42 == @"documentDeliveryLiveOn")
          {
LABEL_49:
            v4 = 13;
            goto LABEL_5;
          }

          if (v2)
          {
            v44 = [(__CFString *)v42 isEqualToString:@"documentDeliveryLiveOn"];

            if (v44)
            {
              goto LABEL_49;
            }

            if (v43 != @"documentDelivery")
            {
              goto LABEL_57;
            }

LABEL_58:
            v4 = 12;
            goto LABEL_5;
          }
        }

        else
        {
          if (v42 == @"documentDelivery")
          {
            goto LABEL_58;
          }

          if (v2)
          {
LABEL_57:
            v45 = [(__CFString *)v43 isEqualToString:@"documentDelivery"];

            if (v45)
            {
              goto LABEL_58;
            }

            v46 = v43;
            if (v46 == @"cdnDataSource" || (v47 = v46, v48 = [(__CFString *)v46 isEqualToString:@"cdnDataSource"], v47, (v48 & 1) != 0))
            {
              v4 = 14;
              goto LABEL_5;
            }

            v52 = v47;
            if (v52 == @"paymentOffers" || (v53 = v52, v54 = [(__CFString *)v52 isEqualToString:@"paymentOffers"], v53, (v54 & 1) != 0))
            {
              v4 = 15;
              goto LABEL_5;
            }

            v55 = v53;
            if (v55 == @"ticketing" || (v56 = v55, v57 = [(__CFString *)v55 isEqualToString:@"ticketing"], v56, (v57 & 1) != 0))
            {
              v4 = 18;
              goto LABEL_5;
            }

            v58 = v56;
            if (v58 == @"provisioningCardReader" || (v59 = v58, v60 = [(__CFString *)v58 isEqualToString:@"provisioningCardReader"], v59, v60))
            {
              v4 = 19;
              goto LABEL_5;
            }

LABEL_53:
            v4 = 0;
            goto LABEL_5;
          }
        }

        goto LABEL_53;
      }
    }

    else
    {
      if (v28 == @"shasta")
      {
        goto LABEL_55;
      }

      if (v2)
      {
        goto LABEL_38;
      }
    }

    goto LABEL_45;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"carAccess"];

  if ((v3 & 1) == 0)
  {
    v6 = v2;
    if (v6 == @"pushProvisioning" || (v7 = v6, v8 = [(__CFString *)v6 isEqualToString:@"pushProvisioning"], v7, (v8 & 1) != 0))
    {
      v4 = 1;
      goto LABEL_5;
    }

    v9 = v7;
    if (v9 == @"zion" || (v10 = v9, v11 = [(__CFString *)v9 isEqualToString:@"zion"], v10, (v11 & 1) != 0) || (v12 = v10, v12 == @"merchantTokens") || (v13 = v12, v14 = [(__CFString *)v12 isEqualToString:@"merchantTokens"], v13, (v14 & 1) != 0))
    {
      v4 = 3;
      goto LABEL_5;
    }

    v15 = v13;
    if (v15 == @"unsupportedMerchantCategoryCodes" || (v16 = v15, v17 = [(__CFString *)v15 isEqualToString:@"unsupportedMerchantCategoryCodes"], v16, (v17 & 1) != 0))
    {
      v4 = 16;
      goto LABEL_5;
    }

    v18 = v16;
    if (v18 == @"remoteNetworkPayment" || (v19 = v18, v20 = [(__CFString *)v18 isEqualToString:@"remoteNetworkPayment"], v19, (v20 & 1) != 0))
    {
      v4 = 17;
      goto LABEL_5;
    }

    v21 = v19;
    if (v21 == @"mmor" || (v22 = v21, v23 = [(__CFString *)v21 isEqualToString:@"mmor"], v22, (v23 & 1) != 0) || (v24 = v22, v24 == @"multiTokens") || (v25 = v24, v26 = [(__CFString *)v24 isEqualToString:@"multiTokens"], v25, (v26 & 1) != 0))
    {
      v4 = 4;
      goto LABEL_5;
    }

    if (([(__CFString *)v25 isEqual:@"sharing"]& 1) != 0)
    {
      v4 = 5;
      goto LABEL_5;
    }

    if (([(__CFString *)v25 isEqual:@"torino"]& 1) != 0)
    {
      v4 = 6;
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_4:
  v4 = 2;
LABEL_5:

  return v4;
}

uint64_t PKColorSpaceStandardLinearRGB()
{
  if (qword_1ED6D1820 != -1)
  {
    dispatch_once(&qword_1ED6D1820, &__block_literal_global_23);
  }

  return qword_1ED6D1808;
}

uint64_t PKColorSpaceStandardExtendedRGB()
{
  if (qword_1ED6D1820 != -1)
  {
    dispatch_once(&qword_1ED6D1820, &__block_literal_global_23);
  }

  return qword_1ED6D1810;
}

uint64_t PKColorSpaceStandardExtendedLinearRGB()
{
  if (qword_1ED6D1820 != -1)
  {
    dispatch_once(&qword_1ED6D1820, &__block_literal_global_23);
  }

  return qword_1ED6D1818;
}

CGColor *PKColorCreateCopyByMatchingExtendedLinearSRGB(CGColor *result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  ColorSpace = CGColorGetColorSpace(result);
  v3 = CGColorSpaceCopyName(ColorSpace);
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = v3;
  if (CFStringCompare(v3, *MEMORY[0x1E695F108], 0))
  {
    v5 = CFStringCompare(v4, *MEMORY[0x1E695F110], 0);
    CFRelease(v4);
    if (v5 == kCFCompareEqualTo)
    {
      if (qword_1ED6D1820 != -1)
      {
        dispatch_once(&qword_1ED6D1820, &__block_literal_global_23);
      }

      v6 = qword_1ED6D1818;
      v7 = kCGRenderingIntentAbsoluteColorimetric;
      goto LABEL_8;
    }

LABEL_5:
    if (qword_1ED6D1820 != -1)
    {
      dispatch_once(&qword_1ED6D1820, &__block_literal_global_23);
    }

    v6 = qword_1ED6D1818;
    v7 = kCGRenderingIntentPerceptual;
LABEL_8:

    return CGColorCreateCopyByMatchingToColorSpace(v6, v7, v1, 0);
  }

  CFRelease(v4);

  return CGColorRetain(v1);
}

CGColorRef PKColorCreateBlendedLinearColor(CGColor *a1, CGColor *a2, double a3)
{
  v32[1] = *MEMORY[0x1E69E9840];
  if (!a1 || !a2 || (ColorSpace = CGColorGetColorSpace(a1), (v7 = CGColorSpaceRetain(ColorSpace)) == 0) || (v8 = v7, v9 = CGColorGetColorSpace(a2), (v10 = CGColorSpaceRetain(v9)) == 0) || (v11 = v10, (v12 = CGColorSpaceCopyName(v8)) == 0) || (v13 = v12, (v14 = CGColorSpaceCopyName(v11)) == 0) || (v15 = v14, CFStringCompare(v13, v14, 0)) || CFStringCompare(v13, *MEMORY[0x1E695F1B0], 0) && CFStringCompare(v13, *MEMORY[0x1E695F108], 0) && CFStringCompare(v13, *MEMORY[0x1E695F1A0], 0) && CFStringCompare(v13, *MEMORY[0x1E695F0F8], 0))
  {
    __break(1u);
  }

  CFRelease(v11);
  CFRelease(v13);
  CFRelease(v15);
  if (a3 <= 0.0)
  {
    v30 = a1;
LABEL_20:
    v29 = CGColorRetain(v30);
    goto LABEL_21;
  }

  if (a3 >= 1.0)
  {
    v30 = a2;
    goto LABEL_20;
  }

  NumberOfComponents = CGColorSpaceGetNumberOfComponents(v8);
  v17 = NumberOfComponents + 1;
  v18 = NumberOfComponents == -1;
  Components = CGColorGetComponents(a1);
  v20 = CGColorGetComponents(a2);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = (v32 - v23);
  if (!v18)
  {
    v25 = (v32 - v23);
    do
    {
      v26 = *Components++;
      v27 = v26;
      v28 = *v21++;
      *v25++ = v28 * a3 + v27 * (1.0 - a3);
      --v17;
    }

    while (v17);
  }

  v29 = CGColorCreate(v8, v24);
LABEL_21:
  CFRelease(v8);
  return v29;
}

double PKColorGetLightness(CGColor *a1)
{
  if (!a1)
  {
    return 0.0;
  }

  v1 = PKColorGetRelativeLuminance(a1) / 100.0;
  if (v1 <= 0.00885645168)
  {
    v2 = v1 * 7.78703704 + 0.137931034;
  }

  else
  {
    v2 = pow(v1, 0.333333333);
  }

  return (v2 * 116.0 + -16.0) / 100.0;
}

__CFString *PKSemanticColorToString(uint64_t a1)
{
  if ((a1 - 1) > 0x17)
  {
    return 0;
  }

  else
  {
    return off_1E79C9968[a1 - 1];
  }
}

uint64_t PKSemanticColorFromString(void *a1, uint64_t *a2)
{
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    if (a2)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_9:

    v9 = v4;
LABEL_10:

    v10 = v4;
LABEL_11:

    v11 = v4;
LABEL_12:

    v12 = v4;
LABEL_13:

    v13 = v4;
LABEL_14:

    v14 = v4;
LABEL_15:

    v15 = v4;
LABEL_16:

    v16 = v4;
LABEL_17:

    v17 = v4;
LABEL_18:

    v18 = v4;
LABEL_19:

    v19 = v4;
LABEL_20:

    v20 = v4;
LABEL_21:

    v21 = v4;
LABEL_22:

    v22 = v4;
LABEL_23:

    v23 = v4;
LABEL_24:

    v24 = v4;
LABEL_25:

    v25 = v4;
LABEL_26:

    v26 = v4;
LABEL_27:

    v27 = v4;
LABEL_28:

    v28 = v4;
LABEL_29:

    v29 = v4;
LABEL_30:

    v30 = v4;
LABEL_31:

    v31 = v4;
LABEL_32:

    v32 = 1;
    goto LABEL_33;
  }

  v5 = v4;
  if (v5 == @"label" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"label"], v6, v7))
  {
    if (a2)
    {
      v8 = 1;
LABEL_8:
      *a2 = v8;
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v34 = v6;
  if (v34 == @"secondaryLabel" || (v35 = v34, v36 = [(__CFString *)v34 isEqualToString:@"secondaryLabel"], v35, v36))
  {
    if (a2)
    {
      *a2 = 2;
    }

    goto LABEL_10;
  }

  v37 = v35;
  if (v37 == @"tertiaryLabel" || (v38 = v37, v39 = [(__CFString *)v37 isEqualToString:@"tertiaryLabel"], v38, v39))
  {
    if (a2)
    {
      *a2 = 3;
    }

    goto LABEL_11;
  }

  v40 = v38;
  if (v40 == @"quaternaryLabel" || (v41 = v40, v42 = [(__CFString *)v40 isEqualToString:@"quaternaryLabel"], v41, v42))
  {
    if (a2)
    {
      *a2 = 4;
    }

    goto LABEL_12;
  }

  v43 = v41;
  if (v43 == @"link" || (v44 = v43, v45 = [(__CFString *)v43 isEqualToString:@"link"], v44, v45))
  {
    if (a2)
    {
      *a2 = 5;
    }

    goto LABEL_13;
  }

  v46 = v44;
  if (v46 == @"placeholderText" || (v47 = v46, v48 = [(__CFString *)v46 isEqualToString:@"placeholderText"], v47, v48))
  {
    if (a2)
    {
      *a2 = 6;
    }

    goto LABEL_14;
  }

  v49 = v47;
  if (v49 == @"systemFill" || (v50 = v49, v51 = [(__CFString *)v49 isEqualToString:@"systemFill"], v50, v51))
  {
    if (a2)
    {
      *a2 = 7;
    }

    goto LABEL_15;
  }

  v52 = v50;
  if (v52 == @"secondarySystemFill" || (v53 = v52, v54 = [(__CFString *)v52 isEqualToString:@"secondarySystemFill"], v53, v54))
  {
    if (a2)
    {
      *a2 = 8;
    }

    goto LABEL_16;
  }

  v55 = v53;
  if (v55 == @"tertiarySystemFill" || (v56 = v55, v57 = [(__CFString *)v55 isEqualToString:@"tertiarySystemFill"], v56, v57))
  {
    if (a2)
    {
      *a2 = 9;
    }

    goto LABEL_17;
  }

  v58 = v56;
  if (v58 == @"quaternarySystemFill" || (v59 = v58, v60 = [(__CFString *)v58 isEqualToString:@"quaternarySystemFill"], v59, v60))
  {
    if (a2)
    {
      *a2 = 10;
    }

    goto LABEL_18;
  }

  v61 = v59;
  if (v61 == @"systemBackground" || (v62 = v61, v63 = [(__CFString *)v61 isEqualToString:@"systemBackground"], v62, v63))
  {
    if (a2)
    {
      *a2 = 11;
    }

    goto LABEL_19;
  }

  v64 = v62;
  if (v64 == @"secondarySystemBackground" || (v65 = v64, v66 = [(__CFString *)v64 isEqualToString:@"secondarySystemBackground"], v65, v66))
  {
    if (a2)
    {
      *a2 = 12;
    }

    goto LABEL_20;
  }

  v67 = v65;
  if (v67 == @"tertiarySystemBackground" || (v68 = v67, v69 = [(__CFString *)v67 isEqualToString:@"tertiarySystemBackground"], v68, v69))
  {
    if (a2)
    {
      *a2 = 13;
    }

    goto LABEL_21;
  }

  v70 = v68;
  if (v70 == @"systemBlue" || (v71 = v70, v72 = [(__CFString *)v70 isEqualToString:@"systemBlue"], v71, v72))
  {
    if (a2)
    {
      *a2 = 14;
    }

    goto LABEL_22;
  }

  v73 = v71;
  if (v73 == @"systemGreen" || (v74 = v73, v75 = [(__CFString *)v73 isEqualToString:@"systemGreen"], v74, v75))
  {
    if (a2)
    {
      *a2 = 15;
    }

    goto LABEL_23;
  }

  v76 = v74;
  if (v76 == @"systemIndigo" || (v77 = v76, v78 = [(__CFString *)v76 isEqualToString:@"systemIndigo"], v77, v78))
  {
    if (a2)
    {
      *a2 = 16;
    }

    goto LABEL_24;
  }

  v79 = v77;
  if (v79 == @"systemOrange" || (v80 = v79, v81 = [(__CFString *)v79 isEqualToString:@"systemOrange"], v80, v81))
  {
    if (a2)
    {
      *a2 = 17;
    }

    goto LABEL_25;
  }

  v82 = v80;
  if (v82 == @"systemPink" || (v83 = v82, v84 = [(__CFString *)v82 isEqualToString:@"systemPink"], v83, v84))
  {
    if (a2)
    {
      *a2 = 18;
    }

    goto LABEL_26;
  }

  v85 = v83;
  if (v85 == @"systemPurple" || (v86 = v85, v87 = [(__CFString *)v85 isEqualToString:@"systemPurple"], v86, v87))
  {
    if (a2)
    {
      *a2 = 19;
    }

    goto LABEL_27;
  }

  v88 = v86;
  if (v88 == @"systemRed" || (v89 = v88, v90 = [(__CFString *)v88 isEqualToString:@"systemRed"], v89, v90))
  {
    if (a2)
    {
      *a2 = 20;
    }

    goto LABEL_28;
  }

  v91 = v89;
  if (v91 == @"systemTeal" || (v92 = v91, v93 = [(__CFString *)v91 isEqualToString:@"systemTeal"], v92, v93))
  {
    if (a2)
    {
      *a2 = 21;
    }

    goto LABEL_29;
  }

  v94 = v92;
  if (v94 == @"systemYellow" || (v95 = v94, v96 = [(__CFString *)v94 isEqualToString:@"systemYellow"], v95, v96))
  {
    if (a2)
    {
      *a2 = 22;
    }

    goto LABEL_30;
  }

  v97 = v95;
  if (v97 == @"systemGray" || (v98 = v97, v99 = [(__CFString *)v97 isEqualToString:@"systemGray"], v98, v99))
  {
    if (a2)
    {
      *a2 = 23;
    }

    goto LABEL_31;
  }

  v100 = v98;
  if (v100 == @"tint" || (v101 = v100, v102 = [(__CFString *)v100 isEqualToString:@"tint"], v101, v102))
  {
    if (a2)
    {
      *a2 = 24;
    }

    goto LABEL_32;
  }

  v32 = 0;
  if (a2)
  {
    *a2 = 0;
  }

LABEL_33:

  return v32;
}

uint64_t _GetHValue(float *a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = MEMORY[0x1E696AE88];
  v4 = a2;
  v5 = [[v3 alloc] initWithString:v4];

  v8 = 0;
  IntValue = _GetIntValue(&v8, v5);
  if (IntValue)
  {
    *a1 = (v8 % 360) / 359.0;
  }

  return IntValue;
}

uint64_t _GetSLValue(float *a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = MEMORY[0x1E696AE88];
  v4 = a2;
  v5 = [[v3 alloc] initWithString:v4];

  v8 = 0.0;
  PercentValue = _GetPercentValue(&v8, v5);
  if (PercentValue)
  {
    *a1 = v8 / 100.0;
  }

  return PercentValue;
}

uint64_t _GetPercentValue(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 scanFloat:a1] && objc_msgSend(v3, "scanString:intoString:", @"%", 0) && (objc_msgSend(v3, "isAtEnd") & 1) != 0)
  {
    v4 = 1;
  }

  else
  {
    [v3 setScanLocation:0];
    v4 = 0;
  }

  return v4;
}

uint64_t PKAccountWebServiceVirtualCardManageActionFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"fetch"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"cancel"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"replace"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"enable"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"disable"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"enableDynamicSecurityCode"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"disableDynamicSecurityCode"])
  {
    v2 = 7;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1AD5CBEF0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t PKAccountWebServiceVirtualCardSecurityCodeActionFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"viewed"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"autofilled"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PKAccountWebServiceExportTransactionDataRequestTypeToString(uint64_t a1)
{
  if (a1)
  {
    return @"transactionMetadata";
  }

  else
  {
    return @"default";
  }
}

__CFString *PKAccountWebServiceTransactionDataTriggerToString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79C9B30[a1 - 1];
  }
}

unint64_t PKStricterAccountEnhancedMerchantCooldownLevel(unint64_t result, unint64_t a2)
{
  if (result >= a2)
  {
    v2 = a2;
  }

  else
  {
    v2 = result;
  }

  if (a2 <= 3)
  {
    return v2;
  }

  return result;
}

void sub_1AD5D304C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD5D4700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD5D4860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD5D5AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD5D5BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD5D5D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD5D5E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD5D6E54(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_1AD5D760C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

uint64_t PKPaymentTransactionRewardsItemTypeFromString(void *a1)
{
  v1 = a1;
  if ([@"appleProperty" isEqualToString:v1])
  {
    v2 = 1;
  }

  else if ([@"applePay" isEqualToString:v1])
  {
    v2 = 2;
  }

  else if ([@"other" isEqualToString:v1])
  {
    v2 = 3;
  }

  else if ([@"return" isEqualToString:v1])
  {
    v2 = 4;
  }

  else if ([@"promotion" isEqualToString:v1])
  {
    v2 = 5;
  }

  else if ([@"activationOffer" isEqualToString:v1])
  {
    v2 = 6;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t PKPaymentTransactionRewardsItemStateFromString(void *a1)
{
  v1 = [a1 lowercaseString];
  if ([@"eligible" isEqualToString:v1])
  {
    v2 = 1;
  }

  else if ([@"earned" isEqualToString:v1])
  {
    v2 = 2;
  }

  else if ([@"reversed" isEqualToString:v1])
  {
    v2 = 3;
  }

  else if ([@"eligible_activity" isEqualToString:v1])
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t PKPaymentTransactionRewardsItemValueUnitFromString(void *a1)
{
  v1 = [a1 lowercaseString];
  if ([@"percent" isEqualToString:v1])
  {
    v2 = 1;
  }

  else if ([@"cash" isEqualToString:v1])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PKPaymentTransactionRewardsItemTypeToString(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79C9F40[a1 - 1];
  }
}

__CFString *PKPassTileWidthClassVerticalFlowToString(uint64_t a1)
{
  v1 = @"default";
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1 == 2)
  {
    return @"compact";
  }

  else
  {
    return v1;
  }
}

uint64_t PKPassTileWidthClassVerticalFlowFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"default" || v1 && (v3 = [(__CFString *)v1 isEqualToString:@"default"], v2, v2, (v3 & 1) != 0))
  {
    v4 = 1;
  }

  else
  {
    v5 = v2;
    if (v5 == @"compact" || v2 && (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"compact"], v6, v6, (v7 & 1) != 0))
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

__CFString *PKPaymentOfferAssetTypeToString(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"icon";
  }

  else
  {
    return off_1E79C9FA8[a1];
  }
}

uint64_t PKPaymentOfferPeriodFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"day")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"day"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"month" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"month"], v6, v7))
    {
      v4 = 2;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_4:
  v4 = 1;
LABEL_9:

  return v4;
}

__CFString *PKPaymentOfferPeriodToString(uint64_t a1)
{
  v1 = @"day";
  if (a1 == 2)
  {
    v1 = @"month";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"unknown";
  }
}

id PKPaymentOffersDisplayableError(void *a1)
{
  v1 = a1;
  v2 = PKLocalizedPaymentString(&cfstr_GenericErrorTi.isa, 0);
  v3 = PKLocalizedPaymentString(&cfstr_GenericErrorMe.isa, 0);
  v4 = PKDisplayableErrorCustomWithType(-1, v2, v3, v1, 0);

  return v4;
}

uint64_t PKPaymentOffersEligibleInDeviceRegion(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (_os_feature_enabled_impl())
  {
    v2 = [v1 targetDevice];
    v3 = [v2 deviceRegion];

    v4 = [v1 context];
    v5 = [v4 configuration];
    v6 = [v5 featureWithType:15 inRegion:v3];

    v7 = [v1 targetDevice];
    LOBYTE(v5) = [v6 isSupportedOnDevice:v7];

    if (v5)
    {
      v8 = 1;
    }

    else
    {
      v8 = PKPaymentOffersForceFeatureSupport();
      if (v8)
      {
        v9 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v16) = 0;
          _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Forcing payment offers support via internal flag", &v16, 2u);
        }
      }

      else
      {
        v10 = [v1 targetDevice];
        v9 = [v10 deviceVersion];

        v11 = [v1 targetDevice];
        v12 = [v11 deviceClass];

        v13 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [v9 asDictionary];
          v16 = 138412802;
          v17 = v6;
          v18 = 2112;
          v19 = v14;
          v20 = 2112;
          v21 = v12;
          _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Payment offers not supported since the feautre doesnt meet requirements. Feature: %@, deviceVersion: %@, deviceClass: %@", &v16, 0x20u);
        }
      }
    }
  }

  else
  {
    v3 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Payment offers not eligible since 2024 oslo UI updates flag is not turned on", &v16, 2u);
    }

    v8 = 0;
  }

  return v8;
}

uint64_t PKPaymentOffersEligibleToFetchCatalog(void *a1)
{
  v1 = a1;
  if (_os_feature_enabled_impl())
  {
    v2 = PKPaymentOffersEligibleInDeviceRegion(v1);
  }

  else
  {
    v3 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Not fetching payment offers since 2024 oslo UI updates flag is not turned on", v5, 2u);
    }

    v2 = 0;
  }

  return v2;
}

__CFString *PKPaymentOffersControllerPreconfiguredInstallmentOfferStateToString(uint64_t a1)
{
  if ((a1 - 1) > 9)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79C9FC8[a1 - 1];
  }
}

__CFString *PKPaymentOffersControllerUpdateReasonToString(uint64_t a1)
{
  if ((a1 - 1) > 0x10)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79CA018[a1 - 1];
  }
}

__CFString *PKPaymentOfferCatalogUpdateReasonToString(uint64_t a1)
{
  if ((a1 - 1) > 0xD)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79CA0A0[a1 - 1];
  }
}

id PKPaymentOfferConfirmationRecordDashboardMessageIdentifier(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = a1;
  v3 = [v2 passUniqueID];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", @"paymentOfferConfirmationRecordDashboardMessageIdentifier", v3];
  v5 = [v2 paymentHash];

  v6 = [v1 stringWithFormat:@"%@-%@", v4, v5];

  return v6;
}

id PKPaymentOfferConfirmationRecordFollowUpViewedIdentifier(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = a1;
  v3 = [v2 passUniqueID];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", @"PKPaymentOfferConfirmationRecordFollowUpViewed", v3];
  v5 = [v2 paymentHash];

  v6 = [v1 stringWithFormat:@"%@-%@", v4, v5];

  return v6;
}

uint64_t PKCanShowPaymentOfferCardBenefitInstallmentsEnablementAlert(void *a1)
{
  v1 = a1;
  if (v1 && PKHideCardBenefitPayLater())
  {
    v2 = PKSharedCacheGetDictionaryForKey(@"PKDidShowPaymentOfferCardBenefitInstallmentsEnablementAlertKey");
    v3 = [v2 objectForKeyedSubscript:v1];
    v4 = [v3 BOOLValue];

    v5 = v4 ^ 1u;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void PKSetDidShowPaymentOfferCardBenefitInstallmentsEnablementAlert(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = PKSharedCacheGetDictionaryForKey(@"PKDidShowPaymentOfferCardBenefitInstallmentsEnablementAlertKey");
    v5 = [v4 mutableCopy];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v9 = v7;

    v8 = [MEMORY[0x1E696AD98] numberWithBool:a2];
    [v9 setObject:v8 forKeyedSubscript:v3];

    PKSharedCacheSetObjectForKey(v9, @"PKDidShowPaymentOfferCardBenefitInstallmentsEnablementAlertKey");
  }
}

void PKRemoveDidShowPaymentOfferCardBenefitInstallmentsEnablementAlert(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = PKSharedCacheGetDictionaryForKey(@"PKDidShowPaymentOfferCardBenefitInstallmentsEnablementAlertKey");
    v3 = [v2 mutableCopy];

    [v3 removeObjectForKey:v1];
    PKSharedCacheSetObjectForKey(v3, @"PKDidShowPaymentOfferCardBenefitInstallmentsEnablementAlertKey");
  }
}

__CFString *PKPassTileAccessoryTypeToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E79CA128[a1];
  }
}

uint64_t PKPassTileAccessoryTypeFromString(void *a1, void *a2)
{
  v3 = a1;
  v4 = v3;
  if (v3 == @"button" || v3 && (v5 = [(__CFString *)v3 isEqualToString:@"button"], v4, v5))
  {
    if (a2)
    {
      *a2 = 0;
    }

    v6 = v4;
LABEL_12:

    v10 = v4;
LABEL_13:

    v11 = 1;
    goto LABEL_14;
  }

  v7 = v4;
  if (v7 == @"spinner" || (v8 = v7, v4) && (v9 = [(__CFString *)v7 isEqualToString:@"spinner"], v8, v9))
  {
    if (a2)
    {
      *a2 = 1;
    }

    goto LABEL_12;
  }

  v13 = v8;
  if (v13 == @"image" || (v14 = v13, v4) && (v15 = [(__CFString *)v13 isEqualToString:@"image"], v14, v15))
  {
    if (a2)
    {
      *a2 = 2;
    }

    goto LABEL_13;
  }

  v11 = 0;
  if (a2)
  {
    *a2 = 0;
  }

LABEL_14:

  return v11;
}

__CFString *PKPaymentOfferCriteriaTypeToString(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 1)
  {
    v1 = @"installments";
  }

  if (a1 == 2)
  {
    return @"rewards";
  }

  else
  {
    return v1;
  }
}

uint64_t PKPaymentOfferCriteriaTypeFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"installments")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"installments"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"rewards" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"rewards"], v6, v7))
    {
      v4 = 2;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_4:
  v4 = 1;
LABEL_9:

  return v4;
}

__CFString *PKPaymentOfferCriteriaEligibilityToString(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 1)
  {
    v1 = @"eligible";
  }

  if (a1 == 2)
  {
    return @"notEligible";
  }

  else
  {
    return v1;
  }
}

__CFString *PKPaymentOfferCriteriaIneligibleReasonToString(unint64_t a1)
{
  if (a1 > 0x12)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79CA1B0[a1];
  }
}

__CFString *PKPaymentOfferInstoreCapabilityToString(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 1)
  {
    v1 = @"prePurchase";
  }

  if (a1 == 2)
  {
    return @"postPurchase";
  }

  else
  {
    return v1;
  }
}

uint64_t PKPaymentOfferInstoreCapabilityFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"prePurchase")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"prePurchase"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"postPurchase" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"postPurchase"], v6, v7))
    {
      v4 = 2;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_4:
  v4 = 1;
LABEL_9:

  return v4;
}

id PDSharingChannelServiceInterface_Server()
{
  if (qword_1ED6D1840 != -1)
  {
    dispatch_once(&qword_1ED6D1840, &__block_literal_global_30);
  }

  v1 = _MergedGlobals_197;

  return v1;
}

id PKSharingChannelServiceInterface_Client()
{
  if (qword_1ED6D1850 != -1)
  {
    dispatch_once(&qword_1ED6D1850, &__block_literal_global_97);
  }

  v1 = qword_1ED6D1848;

  return v1;
}

uint64_t PKProtobufPaymentReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v19) = 0;
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

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = PBReaderReadData();
          v15 = 16;
LABEL_32:
          v16 = *(a1 + v15);
          *(a1 + v15) = v14;
LABEL_33:

          goto LABEL_34;
        }

        if (v13 == 4)
        {
          v16 = objc_alloc_init(PKProtobufShippingMethod);
          objc_storeStrong((a1 + 24), v16);
          v19 = 0;
          v20 = 0;
          if (!PBReaderPlaceMark() || !PKProtobufShippingMethodReadFrom(v16, a2))
          {
LABEL_36:

            return 0;
          }

LABEL_30:
          PBReaderRecallMark();
          goto LABEL_33;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v16 = objc_alloc_init(PKProtobufPaymentToken);
          objc_storeStrong((a1 + 32), v16);
          v19 = 0;
          v20 = 0;
          if (!PBReaderPlaceMark() || !PKProtobufPaymentTokenReadFrom(v16, a2))
          {
            goto LABEL_36;
          }

          goto LABEL_30;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadData();
          v15 = 8;
          goto LABEL_32;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_34:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1AD5E44D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *PKPassTileStateTypeToString(unint64_t a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return off_1E79CA400[a1];
  }
}

uint64_t PKPassTileStateTypeFromString(void *a1, void *a2)
{
  v3 = a1;
  v4 = v3;
  v5 = v3 == 0;
  if (!v3)
  {
    if (a2)
    {
LABEL_6:
      *a2 = 0;
      v9 = v5;
      goto LABEL_40;
    }

LABEL_39:
    v9 = 1;
    goto LABEL_40;
  }

  v6 = v3;
  v7 = v6;
  if (v6 == @"default")
  {
    v8 = 1;
    if (!a2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v8 = [(__CFString *)v6 isEqualToString:@"default"];
    if (!a2)
    {
      goto LABEL_10;
    }
  }

  if (v8)
  {
    *a2 = 0;
  }

LABEL_10:

  if (v8)
  {
    goto LABEL_39;
  }

  v10 = v7;
  v11 = v10;
  if (v10 == @"defaultV2")
  {
    v12 = 1;
    if (!a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v12 = [(__CFString *)v10 isEqualToString:@"defaultV2"];
    if (!a2)
    {
      goto LABEL_17;
    }
  }

  if (v12)
  {
    *a2 = 1;
  }

LABEL_17:

  if (v12)
  {
    goto LABEL_39;
  }

  v13 = v11;
  v14 = v13;
  if (v13 == @"checkIn")
  {
    v15 = 1;
    if (!a2)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v15 = [(__CFString *)v13 isEqualToString:@"checkIn"];
    if (!a2)
    {
      goto LABEL_24;
    }
  }

  if (v15)
  {
    *a2 = 2;
  }

LABEL_24:

  if (v15)
  {
    goto LABEL_39;
  }

  v16 = v14;
  v17 = v16;
  if (v16 == @"group")
  {
    v18 = 1;
    if (!a2)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v18 = [(__CFString *)v16 isEqualToString:@"group"];
    if (!a2)
    {
      goto LABEL_31;
    }
  }

  if (v18)
  {
    *a2 = 3;
  }

LABEL_31:

  if (v18)
  {
    goto LABEL_39;
  }

  v19 = v17;
  v20 = v19;
  if (v19 == @"foreignView")
  {
    v21 = 1;
  }

  else
  {
    v21 = [(__CFString *)v19 isEqualToString:@"foreignView"];
  }

  if (a2 && v21)
  {
    *a2 = 5;
  }

  if (v21)
  {
    goto LABEL_39;
  }

  v23 = v20;
  v24 = v23;
  if (v23 == @"paymentOfferSelector")
  {
    v9 = 1;
  }

  else
  {
    v9 = [(__CFString *)v23 isEqualToString:@"paymentOfferSelector"];
  }

  if (a2 && v9)
  {
    *a2 = 6;
  }

  if (a2)
  {
    v25 = v9;
  }

  else
  {
    v25 = 1;
  }

  if ((v25 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_40:

  return v9;
}

id PKISO18013_SubcredentialIdentifierFromProperties(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 credentialIdentifier];
  v3 = [v1 partition];
  v4 = v3;
  if (v3 == @"identity")
  {
  }

  else
  {
    if (!v3 || !@"identity")
    {

LABEL_9:
      v7 = [v1 presentmentKeys];
      memset(v11, 0, sizeof(v11));
      if ([v7 countByEnumeratingWithState:v11 objects:v12 count:16])
      {
        v8 = [v7 objectForKeyedSubscript:**(&v11[0] + 1)];
        v9 = [v8 hexEncoding];
        v6 = [v9 uppercaseString];
      }

      else
      {
        v6 = 0;
      }

      goto LABEL_13;
    }

    v5 = [(__CFString *)v3 isEqualToString:@"identity"];

    if (!v5)
    {
      goto LABEL_9;
    }
  }

  v6 = v2;
LABEL_13:

  return v6;
}

PKFPANCardDescriptorCredentialPair *PKAutoFillCardDescriptorPairFrom(void *a1, void *a2, void *a3, void *a4)
{
  v55 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if ([v7 requirementsMetForVisibleFields])
  {
    v36 = v9;
    v37 = v8;
    v39 = v10;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = [v7 paymentSetupFields];
    v11 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
    v38 = v7;
    v35 = v10;
    if (v11)
    {
      v12 = v11;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v13 = 0;
      v14 = *v50;
      do
      {
        v15 = 0;
        v43 = v12;
        do
        {
          if (*v50 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v49 + 1) + 8 * v15);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = v16;
            v18 = [v17 currentValue];

            v47 = 0u;
            v48 = 0u;
            v45 = 0u;
            v46 = 0u;
            v19 = [v17 displayFormatPaddingCharacters];
            v20 = [v19 countByEnumeratingWithState:&v45 objects:v53 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v46;
              do
              {
                v23 = 0;
                v24 = v18;
                do
                {
                  if (*v46 != v22)
                  {
                    objc_enumerationMutation(v19);
                  }

                  v18 = [v24 stringByReplacingOccurrencesOfString:*(*(&v45 + 1) + 8 * v23) withString:{&stru_1F227FD28, v35}];

                  ++v23;
                  v24 = v18;
                }

                while (v21 != v23);
                v21 = [v19 countByEnumeratingWithState:&v45 objects:v53 count:16];
              }

              while (v21);
            }

            v13 = v18;
            v12 = v43;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v25 = [v16 currentValue];

              if (v25)
              {
                v42 = v25;
              }

              else
              {
                v42 = [v16 defaultValue];
              }
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v26 = [v16 currentValue];

                v41 = v26;
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v27 = [v16 currentValue];

                  v40 = v27;
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v28 = [v16 currentValue];
                    v29 = v28;
                    if (v28)
                    {
                      v30 = v28;

                      v39 = v30;
                    }
                  }
                }
              }
            }
          }

          ++v15;
        }

        while (v15 != v12);
        v12 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
      }

      while (v12);
    }

    else
    {
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v13 = 0;
    }

    v32 = [[PKAutoFillCardCredential alloc] initWithCardholderName:v42 pan:v13 expirationDate:v40 securityCode:v41 billingAddress:0];
    v33 = [PKFPANCardDescriptor descriptorWithCardNickname:v39 credential:v32];
    v8 = v37;
    [(PKAutoFillCardDescriptor *)v33 setPrimaryAccountIdentifier:v37];
    v9 = v36;
    [(PKAutoFillCardDescriptor *)v33 setPassUniqueIdentifier:v36];
    v31 = [[PKFPANCardDescriptorCredentialPair alloc] initWithDescriptor:v33 credential:v32];

    v7 = v38;
    v10 = v35;
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

__CFString *PKAutoFillCardDescriptorTypeToString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79CA5D0[a1 - 1];
  }
}

id PKAutoFillCardDescriptorCredentialTypeToString(unint64_t a1)
{
  if (a1 <= 8)
  {
    a1 = PKLocalizedPaymentString(&off_1E79CA548[a1]->isa, 0, v1);
  }

  return a1;
}

uint64_t PKAutoFillCardDescriptorTypeFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"fpan")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_11:
    v4 = 0;
    goto LABEL_12;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"fpan"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"virtual" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"virtual"], v6, (v7 & 1) != 0))
    {
      v4 = 2;
      goto LABEL_12;
    }

    v8 = v6;
    if (v8 == @"appleCash" || (v9 = v8, v10 = [(__CFString *)v8 isEqualToString:@"appleCash"], v9, v10))
    {
      v4 = 3;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_4:
  v4 = 1;
LABEL_12:

  return v4;
}

uint64_t PKAutoFillCredentialTypeFromFPAN(void *a1)
{
  v1 = a1;
  v2 = [v1 length];
  if (v2 < 5)
  {
LABEL_2:
    v3 = 0;
    goto LABEL_61;
  }

  v4 = v2;
  v5 = [v1 stringByPaddingToLength:4 withString:@"0" startingAtIndex:0];
  v6 = [v5 integerValue];

  v7 = [v1 stringByPaddingToLength:5 withString:@"0" startingAtIndex:0];
  v8 = [v7 integerValue];

  if (v4 > 15)
  {
    if (v4 != 19 && v4 != 16)
    {
      goto LABEL_17;
    }
  }

  else if (v4 != 13)
  {
    if (v4 == 15)
    {
      v3 = 3;
      if ((v6 - 3400) < 0x64 || (v6 - 3700) < 0x64)
      {
        goto LABEL_61;
      }
    }

    goto LABEL_17;
  }

  if ((v6 - 4000) < 0x3E8)
  {
    v3 = 1;
    goto LABEL_61;
  }

  if (v4 == 16)
  {
    v3 = 2;
    if ((v6 - 5100) < 0x1F4 || (v6 - 2221) < 0x1F4)
    {
      goto LABEL_61;
    }
  }

LABEL_17:
  v9 = vdupq_n_s64(v6);
  v10 = vaddq_s64(v9, xmmword_1ADB99670);
  if (vmaxv_u16(vmovn_s32(vuzp1q_s32(vcgtq_u64(xmmword_1ADB99690, v10), vcgtq_u64(xmmword_1ADB996A0, vaddq_s64(v9, xmmword_1ADB99680))))))
  {
    if ((v4 - 14) < 6)
    {
      v3 = 5;
      goto LABEL_61;
    }
  }

  else if ((v4 & 0xFFFFFFFFFFFFFFFCLL) == 0x10)
  {
    v3 = 5;
    if (v6 == 6011 || (v6 - 6440) < 0xA0)
    {
      goto LABEL_61;
    }

    if ((v6 - 6200) < 0x64)
    {
      v3 = 6;
      goto LABEL_61;
    }

    goto LABEL_26;
  }

  if ((v4 - 12) <= 7)
  {
LABEL_26:
    if (v8 == 676770)
    {
LABEL_27:
      v3 = 7;
      goto LABEL_61;
    }

    v3 = 7;
    if (v6 > 5892)
    {
      if ((v6 - 6706) <= 0x39 && ((1 << (v6 - 50)) & 0x3A0000000000001) != 0 || v6 == 5893)
      {
        goto LABEL_61;
      }

      v11 = 6304;
    }

    else
    {
      if ((v6 - 5018) <= 0x14 && ((1 << (v6 + 102)) & 0x100005) != 0 || v6 == 604)
      {
        goto LABEL_61;
      }

      v11 = 5612;
    }

    if (v6 == v11)
    {
      goto LABEL_61;
    }

    if (v8 == 676774)
    {
      goto LABEL_27;
    }
  }

  if (v10.i64[0] > 0x3E7uLL)
  {
    if (v4 != 15)
    {
      goto LABEL_2;
    }

    if (v6 != 2131 && v6 != 1800)
    {
      goto LABEL_2;
    }

    goto LABEL_60;
  }

  v3 = 0;
  if ((v6 - 3400) >= 0x64 && (v6 - 3700) >= 0x64)
  {
    if (v10.i64[0] < 0x3CuLL || v6 > 0xED7 || (v6 - 3700) > 0xFFFFFFFFFFFFFF9BLL || v4 != 16)
    {
      goto LABEL_2;
    }

LABEL_60:
    v3 = 8;
  }

LABEL_61:

  return v3;
}

id PKAutoFillCredentialTypeToLocalizedString(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    v3 = @"NETWORK_NAME_UNKNOWN";
  }

  else
  {
    v3 = off_1E79CA590[a1 - 1];
  }

  v4 = PKLocalizedPaymentString(&v3->isa, 0, v1);

  return v4;
}

__CFString *PKAutoFillCredentialImageNameForType(uint64_t a1, int a2)
{
  if (a1 <= 4)
  {
    switch(a1)
    {
      case 1:
        v3 = @"VisaAutoFill";
        v4 = @"HeroCard_Visa";
        break;
      case 2:
        v3 = @"MastercardAutoFill";
        v4 = @"HeroCard_MasterCard";
        break;
      case 3:
        v3 = @"AmexAutoFill";
        v4 = @"HeroCard_AmEx";
        break;
      default:
LABEL_14:
        v3 = @"FallbackAutoFill";
        if (a2)
        {
          v3 = 0;
        }

        goto LABEL_21;
    }

LABEL_19:
    if (a2)
    {
      v3 = v4;
    }

LABEL_21:
    v5 = v3;

    return v5;
  }

  if (a1 == 5)
  {
    v3 = @"DiscoverAutoFill";
    v4 = @"HeroCard_Discover";
    goto LABEL_19;
  }

  if (a1 == 6)
  {
    v3 = @"UnionpayAutoFill";
    v4 = @"HeroCard_ChinaUnionPay";
    goto LABEL_19;
  }

  if (a1 != 8)
  {
    goto LABEL_14;
  }

  v5 = @"JCBAutoFill";

  return v5;
}

id PKImageForAutoFillCredentialType(uint64_t a1, int a2)
{
  v3 = PKAutoFillCredentialImageNameForType(a1, a2);
  if (v3)
  {
    PKPassKitCoreBundle();
    if (a2)
      v4 = {;
      v5 = [PKImage imageNamed:v3 inBundle:v4];
    }

    else
      v6 = {;
      v4 = [v6 URLForResource:v3 withExtension:@"pdf"];

      v7 = CGPDFDocumentCreateWithURL(v4);
      v8 = PKScreenScale();
      v5 = PKGetImageFromPDFDocument(v7, 32.0, 32.0, v8);
      CGPDFDocumentRelease(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __PKPassUpcomingPassInformationEntryContentTypeFromString_block_invoke(_BYTE *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  if ((*a1 & 1) == 0)
  {
    v8 = @"event";
    if (a3 != 1)
    {
      v8 = 0;
    }

    if (!a3)
    {
      v8 = @"default";
    }

    v14 = v7;
    v9 = v8;
    v10 = v14;
    v11 = v9;
    v12 = v11;
    if (v11 == v10)
    {

      v7 = v14;
      if (!a4)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v13 = [(__CFString *)v10 isEqualToString:v11];

      v7 = v14;
      if (!v13)
      {
        goto LABEL_11;
      }

      if (!a4)
      {
        goto LABEL_10;
      }
    }

    *a4 = a3;
LABEL_10:
    *a1 = 1;
  }

LABEL_11:
}

void sub_1AD5F37D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD5F4358(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AD5F5348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_1AD5F5500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD5F5644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD5F5794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD5F592C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD5F6110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD5F64C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD5F66F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD5F6904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD5F6B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD5F6E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD5F6EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD5F71F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD5F72F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD5F73E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD5F7794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD5F7884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD5F7974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD5F7A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD5F7B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD5F7C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD5F7E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD5F8580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD5F8A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD5F96C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD5F9B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD5F9C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD5F9E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD5FA390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD5FDF74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD5FE098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD5FF80C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1AD5FFD68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD5FFED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD600294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD6003EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD60057C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD60139C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1AD601D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1AD601FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1AD602168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD60263C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD6029BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD603B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD603F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1AD604434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1AD6060B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1AD6064CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD609320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD609688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD6098D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD60C0DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD60C510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD60C5F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD60D584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1AD60D950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1AD60DC88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_1AD60E038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 160), 8);
  _Unwind_Resume(a1);
}

void PKUnregisterPassSettingsChangedObserver(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696AD88];
  v4 = a2;
  v5 = a1;
  v6 = [v3 defaultCenter];
  [v6 removeObserver:v5 name:@"PKPassSettingsDidChangeNotification" object:v4];
}

void sub_1AD60FF74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class initSFSafariCredentialStore()
{
  if (qword_1ED6D1890 != -1)
  {
    dispatch_once(&qword_1ED6D1890, &__block_literal_global_33);
  }

  result = objc_getClass("SFSafariCredentialStore");
  _MergedGlobals_199 = result;
  getSFSafariCredentialStoreClass[0] = SFSafariCredentialStoreFunction;
  return result;
}

void *__LoadSafariFoundation_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/SafariFoundation.framework/SafariFoundation", 2);
  LoadSafariFoundation_frameworkLibrary = result;
  return result;
}

void sub_1AD6131FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PKSpendingSummaryTypeToCalendarUnit(uint64_t a1)
{
  v1 = 0x2000;
  if (a1 == 1)
  {
    v1 = 8;
  }

  if (a1 == 2)
  {
    return 4;
  }

  else
  {
    return v1;
  }
}

__CFString *PKAccountActionTypeToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E79CB580[a1];
  }
}

__CFString *PKAccountStateToString(unint64_t a1)
{
  if (a1 > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79CB598[a1];
  }
}

uint64_t PKAccountStateFromString(void *a1)
{
  v1 = [a1 lowercaseString];
  if ([v1 isEqualToString:@"active"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"restricted"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"locked"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"closed"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"removed"])
  {
    v2 = 5;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PKAccountStateReasonToString(unint64_t a1)
{
  if (a1 > 0xF)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79CB5C8[a1];
  }
}

__CFString *PKAccountTypeToString(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79CB660[a1];
  }
}

__CFString *PKAccountAccessLevelToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79CB648[a1];
  }
}

uint64_t PKAccountAccessLevelFromString(void *a1)
{
  v1 = [a1 lowercaseString];
  if ([v1 isEqualToString:@"primary"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"participant"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t PKAccountTypeFromString(void *a1)
{
  v1 = [a1 lowercaseString];
  if ([v1 isEqualToString:@"credit"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"applebalance"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"savings"])
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id PKRoundDecimalNumberToPlaces(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x1E696AB98];
  v4 = a1;
  v5 = [v3 decimalNumberHandlerWithRoundingMode:0 scale:a2 raiseOnExactness:0 raiseOnOverflow:1 raiseOnUnderflow:1 raiseOnDivideByZero:1];
  v6 = [v4 decimalNumberByRoundingAccordingToBehavior:v5];

  return v6;
}

id PKCompoundInterestForPrincipal(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = a3;
  v9 = v8;
  v10 = 0;
  if (!v7 || !v8)
  {
    goto LABEL_8;
  }

  v11 = MEMORY[0x1E696AB90];
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v13 = v12;
  if (v12)
  {
    [v12 decimalValue];
  }

  else
  {
    v25[0] = 0;
    v25[1] = 0;
    v26 = 0;
  }

  v14 = [v11 decimalNumberWithDecimal:v25];

  v15 = [MEMORY[0x1E696AB90] one];
  v16 = [v9 decimalNumberByDividingBy:v14];
  v17 = [v15 decimalNumberByAdding:v16];
  v18 = PKRoundDecimalNumberToPlaces(v17, 10);

  v19 = [v18 decimalNumberByRaisingToPower:a2];
  v20 = [v7 decimalNumberByMultiplyingBy:v19];

  v10 = [v20 decimalNumberBySubtracting:v7];

  if (!v10 || ([MEMORY[0x1E696AB90] zero], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v10, "compare:", v21), v21, v23 = v10, v22 == -1))
  {
LABEL_8:
    v23 = [MEMORY[0x1E696AB90] zero];
  }

  return v23;
}

void sub_1AD61F110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD61F22C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *PKAuxiliaryCapabilityRoleToString(uint64_t a1)
{
  v1 = @"deviceDecryptions";
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1 == 2)
  {
    return @"deviceSignatures";
  }

  else
  {
    return v1;
  }
}

uint64_t PKAuxiliaryCapabilityRoleFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"deviceDecryption")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"deviceDecryption"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"deviceSignature" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"deviceSignature"], v6, v7))
    {
      v4 = 2;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_4:
  v4 = 1;
LABEL_9:

  return v4;
}

uint64_t PKDeviceSignatureTypeFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"access-18013_5-v1")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_41:
    v4 = 0;
    goto LABEL_42;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"access-18013_5-v1"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"unifiedAccessHome" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"unifiedAccessHome"], v6, (v7 & 1) != 0))
    {
      v4 = 2;
      goto LABEL_42;
    }

    v8 = v6;
    if (v8 == @"fido" || (v9 = v8, v10 = [(__CFString *)v8 isEqualToString:@"fido"], v9, (v10 & 1) != 0))
    {
      v4 = 3;
      goto LABEL_42;
    }

    v11 = v9;
    if (v11 == @"applePayTrust" || (v12 = v11, v13 = [(__CFString *)v11 isEqualToString:@"applePayTrust"], v12, (v13 & 1) != 0))
    {
      v4 = 4;
      goto LABEL_42;
    }

    v14 = v12;
    if (v14 == @"coreIDCred" || (v15 = v14, v16 = [(__CFString *)v14 isEqualToString:@"coreIDCred"], v15, (v16 & 1) != 0))
    {
      v4 = 5;
      goto LABEL_42;
    }

    v17 = v15;
    if (v17 == @"carConnectivityConsortium" || (v18 = v17, v19 = [(__CFString *)v17 isEqualToString:@"carConnectivityConsortium"], v18, (v19 & 1) != 0))
    {
      v4 = 6;
      goto LABEL_42;
    }

    v20 = v18;
    if (v20 == @"aliro" || (v21 = v20, v22 = [(__CFString *)v20 isEqualToString:@"aliro"], v21, (v22 & 1) != 0))
    {
      v4 = 7;
      goto LABEL_42;
    }

    v23 = v21;
    if (v23 == @"aliroHome" || (v24 = v23, v25 = [(__CFString *)v23 isEqualToString:@"aliroHome"], v24, (v25 & 1) != 0))
    {
      v4 = 8;
      goto LABEL_42;
    }

    v26 = v24;
    if (v26 == @"coreIDCredAccount" || (v27 = v26, v28 = [(__CFString *)v26 isEqualToString:@"coreIDCredAccount"], v27, (v28 & 1) != 0))
    {
      v4 = 9;
      goto LABEL_42;
    }

    v29 = v27;
    if (v29 == @"iso18013BiometricACL" || (v30 = v29, v31 = [(__CFString *)v29 isEqualToString:@"iso18013BiometricACL"], v30, (v31 & 1) != 0))
    {
      v4 = 10;
      goto LABEL_42;
    }

    v32 = v30;
    if (v32 == @"iso18013KeySigningKey" || (v33 = v32, v34 = [(__CFString *)v32 isEqualToString:@"iso18013KeySigningKey"], v33, (v34 & 1) != 0))
    {
      v4 = 11;
      goto LABEL_42;
    }

    v35 = v33;
    if (v35 == @"iso18013Credential" || (v36 = v35, v37 = [(__CFString *)v35 isEqualToString:@"iso18013Credential"], v36, (v37 & 1) != 0))
    {
      v4 = 12;
      goto LABEL_42;
    }

    v38 = v36;
    if (v38 == @"dpanOwnership" || (v39 = v38, v40 = [(__CFString *)v38 isEqualToString:@"dpanOwnership"], v39, v40))
    {
      v4 = 13;
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_4:
  v4 = 1;
LABEL_42:

  return v4;
}

__CFString *PKDeviceSignatureTypeToString(uint64_t a1)
{
  if ((a1 - 1) > 0xC)
  {
    return 0;
  }

  else
  {
    return off_1E79CBB00[a1 - 1];
  }
}

BOOL PKSignatureSchemeVersionFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  v4 = 1;
  if (v1 != @"ECDSA")
  {
    if (!v1 || (v3 = [(__CFString *)v1 caseInsensitiveCompare:@"ECDSA"], v2, v3))
    {
      v4 = 0;
    }
  }

  return v4;
}

__CFString *PKSignatureSchemeVersionToString(uint64_t a1)
{
  if (a1 == 1)
  {
    return @"ECDSA";
  }

  else
  {
    return 0;
  }
}

uint64_t PKDeviceDecryptionTypeFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"coreIDCred")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_17:
    v4 = 0;
    goto LABEL_18;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"coreIDCred"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"syncedKMLKey" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"syncedKMLKey"], v6, (v7 & 1) != 0))
    {
      v4 = 2;
      goto LABEL_18;
    }

    v8 = v6;
    if (v8 == @"access-18013_5-v1" || (v9 = v8, v10 = [(__CFString *)v8 isEqualToString:@"access-18013_5-v1"], v9, (v10 & 1) != 0))
    {
      v4 = 3;
      goto LABEL_18;
    }

    v11 = v9;
    if (v11 == @"applePayTrust" || (v12 = v11, v13 = [(__CFString *)v11 isEqualToString:@"applePayTrust"], v12, (v13 & 1) != 0))
    {
      v4 = 4;
      goto LABEL_18;
    }

    v14 = v12;
    if (v14 == @"carConnectivityConsortium" || (v15 = v14, v16 = [(__CFString *)v14 isEqualToString:@"carConnectivityConsortium"], v15, v16))
    {
      v4 = 5;
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_4:
  v4 = 1;
LABEL_18:

  return v4;
}

__CFString *PKDeviceDecryptionTypeToString(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return off_1E79CBB68[a1 - 1];
  }
}

BOOL PKDeviceDecryptionUsageFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  v4 = 1;
  if (v1 != @"isoContainer")
  {
    if (!v1 || (v3 = [(__CFString *)v1 isEqualToString:@"isoContainer"], v2, !v3))
    {
      v4 = 0;
    }
  }

  return v4;
}

__CFString *PKDeviceDecryptionUsageToString(uint64_t a1)
{
  if (a1 == 1)
  {
    return @"isoContainer";
  }

  else
  {
    return 0;
  }
}

uint64_t PKDecryptionSchemeVersionFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"EC_v3")
  {
    goto LABEL_7;
  }

  if (v1)
  {
    v3 = [(__CFString *)v1 caseInsensitiveCompare:@"EC_v3"];

    if (v3)
    {
      v4 = v2;
      if (v4 == @"hpke" || (v5 = v4, v6 = [(__CFString *)v4 caseInsensitiveCompare:@"hpke"], v5, !v6))
      {
        v7 = 2;
        goto LABEL_9;
      }

      goto LABEL_6;
    }

LABEL_7:
    v7 = 1;
    goto LABEL_9;
  }

LABEL_6:
  v7 = 0;
LABEL_9:

  return v7;
}

__CFString *PKDecryptionSchemeVersionToString(uint64_t a1)
{
  v1 = @"EC_v3";
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1 == 2)
  {
    return @"hpke";
  }

  else
  {
    return v1;
  }
}

void sub_1AD628970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 160), 8);
  _Unwind_Resume(a1);
}

__CFString *PKPassShareActivationOptionTypeToString(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79CC238[a1 - 1];
  }
}