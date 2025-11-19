void sub_21E7E519C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E7E5370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E7EA4F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E7EBEA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21E7F2E3C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_21E7F3114(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_21E7F4DC8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 64));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_21E7F6478(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E7F76B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E7F78F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E7F7DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E7FBF20(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_21E7FC25C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

double _NCIconImageDimensionForIconFormat(uint64_t a1)
{
  if (a1 > 32)
  {
    if (a1 == 34)
    {
      return 56.0;
    }

    if (a1 == 33)
    {
      return 176.0;
    }

    return 38.0;
  }

  result = 40.0;
  if (a1 != 14 && a1 != 17)
  {
    return 38.0;
  }

  return result;
}

id _NCImageGenerationQueue()
{
  if (_NCImageGenerationQueue_onceToken != -1)
  {
    _NCImageGenerationQueue_cold_1();
  }

  v1 = _NCImageGenerationQueue_imageQueue;

  return v1;
}

void _NCCalloutOnMainAfterFetchingImage(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = _NCImageGenerationQueue();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = ___NCCalloutOnMainAfterFetchingImage_block_invoke;
  v8[3] = &unk_278371288;
  v9 = v4;
  v10 = v3;
  v6 = v3;
  v7 = v4;
  dispatch_async(v5, v8);
}

id _NCIconImageDescriptorSizeForIconFormat(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277D759A0] mainScreen];
  [v4 scale];
  if (a1 > 32)
  {
    if (a1 == 34)
    {
      v7 = 0x404C000000000000;
      goto LABEL_10;
    }

    if (a1 == 33)
    {
      v7 = 0x4066000000000000;
LABEL_10:
      v6 = *&v7;
      goto LABEL_11;
    }

LABEL_8:
    v7 = 0x4043000000000000;
    goto LABEL_10;
  }

  v6 = 40.0;
  if (a1 != 14 && a1 != 17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v8 = [objc_alloc(MEMORY[0x277D1B1C8]) initWithSize:v6 scale:{v6, v5}];
  v9 = v8;
  if (a2 == 2)
  {
    [v8 setAppearance:1];
  }

  return v9;
}

id _NCIconImageForImageWithFormat(void *a1, uint64_t a2, uint64_t a3)
{
  v22[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v5 = MEMORY[0x277D1B160];
    v6 = a1;
    v7 = [v5 alloc];
    v8 = [v6 CGImage];
    [v6 scale];
    v10 = v9;

    v11 = [v7 initWithCGImage:v8 scale:v10];
    v12 = objc_alloc(MEMORY[0x277D1B1A8]);
    v22[0] = v11;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    v14 = [v12 initWithImages:v13];

    v15 = _NCIconImageDescriptorSizeForIconFormat(a2, a3);
    v16 = [v14 imageForDescriptor:v15];
    v17 = v16;
    if (v16)
    {
      v18 = MEMORY[0x277D755B8];
      v19 = [v16 CGImage];
      [v17 scale];
      v20 = [v18 imageWithCGImage:v19 scale:0 orientation:?];
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

id _identifierEncodingAllowedCharacters()
{
  if (_identifierEncodingAllowedCharacters_onceToken != -1)
  {
    _identifierEncodingAllowedCharacters_cold_1();
  }

  v1 = _identifierEncodingAllowedCharacters_characterSet;

  return v1;
}

void ___identifierEncodingAllowedCharacters_block_invoke()
{
  v3 = [@"-" stringByAppendingString:@"%"];
  v0 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:v3];
  v1 = [v0 invertedSet];
  v2 = _identifierEncodingAllowedCharacters_characterSet;
  _identifierEncodingAllowedCharacters_characterSet = v1;
}

id _identifierForIconWithDateComponents(void *a1, void *a2, uint64_t a3)
{
  v24[5] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a1;
  v7 = v6;
  if (a3)
  {
    v8 = [v6 month];
  }

  else
  {
    v8 = [v6 weekday];
  }

  v9 = v8;
  v10 = [v7 day];

  v11 = [v5 calendarIdentifier];
  v12 = _identifierEncodingAllowedCharacters();
  v13 = [v11 stringByAddingPercentEncodingWithAllowedCharacters:v12];

  v14 = [v5 locale];

  v15 = [v14 localeIdentifier];
  v16 = _identifierEncodingAllowedCharacters();
  v17 = [v15 stringByAddingPercentEncodingWithAllowedCharacters:v16];

  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", a3];
  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v9];
  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v10];
  v24[0] = v13;
  v24[1] = v17;
  v24[2] = v18;
  v24[3] = v19;
  v24[4] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:5];
  v22 = [v21 componentsJoinedByString:@"-"];

  return v22;
}

id _identifierForIconWithDate(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  if (!v5)
  {
    v5 = [MEMORY[0x277CBEAA8] date];
  }

  v7 = [v6 components:536 fromDate:v5];
  v8 = _identifierForIconWithDateComponents(v7, v6, a3);

  return v8;
}

id _NCDateIconImageForDateWithFormat(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  if (_NCDateIconImageForDateWithFormat_onceToken != -1)
  {
    _NCDateIconImageForDateWithFormat_cold_1();
  }

  v11 = _NCDateIconImageForDateWithFormat___dateIconCache;
  objc_sync_enter(v11);
  v12 = _identifierForIconWithDate(v9, v10, a5);
  if (!v12 || ([_NCDateIconImageForDateWithFormat___dateIconCache objectForKey:v12], (v13 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v14 = [objc_alloc(MEMORY[0x277D1B1A8]) initWithDate:v9 calendar:v10 format:a5];
    v13 = v14;
    if (v12)
    {
      if (v14)
      {
        [_NCDateIconImageForDateWithFormat___dateIconCache setObject:v14 forKey:v12];
      }
    }
  }

  v15 = _NCIconImageDescriptorSizeForIconFormat(a1, a2);
  v23[0] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  [v13 prepareImagesForImageDescriptors:v16];

  v17 = [v13 imageForDescriptor:v15];
  v18 = v17;
  if (v17)
  {
    v19 = MEMORY[0x277D755B8];
    v20 = [v17 CGImage];
    [v18 scale];
    v21 = [v19 imageWithCGImage:v20 scale:0 orientation:?];
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x277D77DB8], OS_LOG_TYPE_ERROR))
    {
      _NCDateIconImageForDateWithFormat_cold_2();
    }

    v21 = 0;
  }

  objc_sync_exit(v11);

  return v21;
}

void NCDateIconImageForDateWithFormat(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __NCDateIconImageForDateWithFormat_block_invoke;
  v9[3] = &unk_2783712B0;
  v11 = a1;
  v12 = a2;
  v10 = v7;
  v8 = v7;
  _NCCalloutOnMainAfterFetchingImage(a4, v9);
}

id __NCDateIconImageForDateWithFormat_block_invoke(void *a1)
{
  v2 = a1[5];
  v1 = a1[6];
  v3 = a1[4];
  v4 = [MEMORY[0x277CBEA80] currentCalendar];
  v5 = _NCDateIconImageForDateWithFormat(v2, v1, v3, v4, 0);

  return v5;
}

id _NCDateIconImageForDateComponentsWithFormat(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a3;
  v10 = a4;
  if (_NCDateIconImageForDateComponentsWithFormat_onceToken != -1)
  {
    _NCDateIconImageForDateComponentsWithFormat_cold_1();
  }

  v11 = _NCDateIconImageForDateComponentsWithFormat___componentsIconCache;
  objc_sync_enter(v11);
  v12 = _identifierForIconWithDateComponents(v9, v10, a5);
  if (!v12 || ([_NCDateIconImageForDateComponentsWithFormat___componentsIconCache objectForKey:v12], (v13 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v14 = [objc_alloc(MEMORY[0x277D1B1A8]) initWithDateComponents:v9 calendar:v10 format:a5 forceNoTextEffects:0];
    v13 = v14;
    if (v12)
    {
      if (v14)
      {
        [_NCDateIconImageForDateComponentsWithFormat___componentsIconCache setObject:v14 forKey:v12];
      }
    }
  }

  v15 = _NCIconImageDescriptorSizeForIconFormat(a1, a2);
  v16 = [v13 prepareImageForDescriptor:v15];
  v17 = v16;
  if (v16)
  {
    v18 = MEMORY[0x277D755B8];
    v19 = [v16 CGImage];
    [v17 scale];
    v20 = [v18 imageWithCGImage:v19 scale:0 orientation:?];
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x277D77DB8], OS_LOG_TYPE_ERROR))
    {
      _NCDateIconImageForDateComponentsWithFormat_cold_2();
    }

    v20 = 0;
  }

  objc_sync_exit(v11);

  return v20;
}

void NCDateIconImageForDateIconIdentifierWithFormat(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __NCDateIconImageForDateIconIdentifierWithFormat_block_invoke;
  v9[3] = &unk_2783712B0;
  v10 = v7;
  v11 = a1;
  v12 = a2;
  v8 = v7;
  _NCCalloutOnMainAfterFetchingImage(a4, v9);
}

id __NCDateIconImageForDateIconIdentifierWithFormat_block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = [*(a1 + 32) componentsSeparatedByString:@"-"];
  if ([v3 count] == 6)
  {
    v4 = [v3 objectAtIndexedSubscript:0];
    v5 = [v3 objectAtIndexedSubscript:1];
    v6 = [v3 objectAtIndexedSubscript:2];
    v7 = [v3 objectAtIndexedSubscript:3];
    v8 = [v3 objectAtIndexedSubscript:4];
    v9 = [v3 objectAtIndexedSubscript:5];
    if ([v4 intValue] == 5)
    {
      v38 = v5;
      v10 = [v5 stringByRemovingPercentEncoding];
      v37 = v6;
      v11 = [v6 stringByRemovingPercentEncoding];
      v36 = v7;
      v12 = [v7 intValue];
      v33 = [v8 intValue];
      v13 = [v9 intValue];
      v14 = objc_opt_new();
      v35 = v10;
      v15 = [MEMORY[0x277CBEA80] calendarWithIdentifier:v10];
      v34 = v11;
      v16 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v11];
      [v15 setLocale:v16];

      [v14 setCalendar:v15];
      [v14 setDay:v13];
      if (v12 == 1)
      {
        [v14 setMonth:v33];
      }

      else if (!v12)
      {
        [v14 setWeekday:v33];
      }

      v24 = _NCDateIconImageForDateComponentsWithFormat(*(a1 + 40), *(a1 + 48), v14, v15, v12);

      v6 = v37;
      v5 = v38;
      v7 = v36;
    }

    else
    {
      v25 = *MEMORY[0x277D77DB8];
      if (os_log_type_enabled(*MEMORY[0x277D77DB8], OS_LOG_TYPE_ERROR))
      {
        __NCDateIconImageForDateIconIdentifierWithFormat_block_invoke_cold_2(v2, v25, v26, v27, v28, v29, v30, v31);
      }

      v24 = 0;
    }
  }

  else
  {
    v17 = *MEMORY[0x277D77DB8];
    if (os_log_type_enabled(*MEMORY[0x277D77DB8], OS_LOG_TYPE_ERROR))
    {
      __NCDateIconImageForDateIconIdentifierWithFormat_block_invoke_cold_1(v2, v17, v18, v19, v20, v21, v22, v23);
    }

    v24 = 0;
  }

  return v24;
}

id NCIconImageForApplicationIdentifierWithFormat(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (NCIconImageForApplicationIdentifierWithFormat_onceToken != -1)
  {
    NCIconImageForApplicationIdentifierWithFormat_cold_1();
  }

  if (NCApplicationIdentifierIsValid(v5))
  {
    v6 = NCIconImageForApplicationIdentifierWithFormat___iconCache;
    objc_sync_enter(v6);
    v7 = [NCIconImageForApplicationIdentifierWithFormat___iconCache objectForKey:v5];
    if (!v7)
    {
      v7 = [objc_alloc(MEMORY[0x277D1B1A8]) initWithBundleIdentifier:v5];
      if (v7)
      {
        [NCIconImageForApplicationIdentifierWithFormat___iconCache setObject:v7 forKey:v5];
      }
    }

    v8 = _NCIconImageDescriptorSizeForIconFormat(a2, a3);
    v9 = [v7 prepareImageForDescriptor:v8];
    v10 = v9;
    if (v9)
    {
      v11 = MEMORY[0x277D755B8];
      v12 = [v9 CGImage];
      [v10 scale];
      v13 = [v11 imageWithCGImage:v12 scale:0 orientation:?];
    }

    else
    {
      if (os_log_type_enabled(*MEMORY[0x277D77DB8], OS_LOG_TYPE_ERROR))
      {
        NCIconImageForApplicationIdentifierWithFormat_cold_2();
      }

      v13 = 0;
    }

    objc_sync_exit(v6);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t __NCIconImageForApplicationIdentifierWithFormat_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  NCIconImageForApplicationIdentifierWithFormat___iconCache = v0;

  return MEMORY[0x2821F96F8](v0);
}

id NCIconImageForUTIWithFormat(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (NCIconImageForUTIWithFormat_onceToken != -1)
  {
    NCIconImageForUTIWithFormat_cold_1();
  }

  v6 = NCIconImageForUTIWithFormat___utiIconCache;
  objc_sync_enter(v6);
  v7 = [NCIconImageForUTIWithFormat___utiIconCache objectForKey:v5];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x277D1B1A8]) initWithType:v5];
    if (v7)
    {
      [NCIconImageForUTIWithFormat___utiIconCache setObject:v7 forKey:v5];
    }
  }

  v8 = _NCIconImageDescriptorSizeForIconFormat(a2, a3);
  v9 = [v7 prepareImageForDescriptor:v8];
  v10 = v9;
  if (v9)
  {
    v11 = MEMORY[0x277D755B8];
    v12 = [v9 CGImage];
    [v10 scale];
    v13 = [v11 imageWithCGImage:v12 scale:0 orientation:?];
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x277D77DB8], OS_LOG_TYPE_ERROR))
    {
      NCIconImageForUTIWithFormat_cold_2();
    }

    v13 = 0;
  }

  objc_sync_exit(v6);

  return v13;
}

uint64_t __NCIconImageForUTIWithFormat_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  NCIconImageForUTIWithFormat___utiIconCache = v0;

  return MEMORY[0x2821F96F8](v0);
}

void NCIconImageForApplicationIdentifierWithFormatAsync(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __NCIconImageForApplicationIdentifierWithFormatAsync_block_invoke;
  v9[3] = &unk_2783712B0;
  v10 = v7;
  v11 = a2;
  v12 = a3;
  v8 = v7;
  _NCCalloutOnMainAfterFetchingImage(a4, v9);
}

void OUTLINED_FUNCTION_3_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_21E7FFE48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E8002A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21E80125C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_sync_exit(v15);
  _Unwind_Resume(a1);
}

void sub_21E801670(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_21E801B40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E802438(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E802D90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak(&a22);
  objc_destroyWeak(&a27);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL _NCForceTouchEnabled()
{
  v0 = [MEMORY[0x277D759A0] mainScreen];
  v1 = [v0 traitCollection];
  v2 = [v1 forceTouchCapability] == 2;

  return v2;
}

uint64_t _NCEqualLegibilitySettings(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 == v4 || ([v3 isEqual:v4] & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 primaryColor];
    v7 = [v4 primaryColor];
    if (BSEqualObjects())
    {
      v8 = [v3 secondaryColor];
      v9 = [v4 secondaryColor];
      v5 = BSEqualObjects();
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

uint64_t _NCDeviceDesiresHapticTouch()
{
  if (_NCDeviceDesiresHapticTouch_onceToken != -1)
  {
    _NCDeviceDesiresHapticTouch_cold_1();
  }

  return _NCDeviceDesiresHapticTouch___deviceDesiresHapticTouch;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _NCNotificationBackgroundColorForSectionIdentifier(void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 hasPrefix:@"com.apple."])
  {
    v2 = [MEMORY[0x277CC1E70] unkit_applicationRecordIfEligibleToDeliverNotificationsForBundleIdentifier:v1];
    v3 = v2;
    if (v2)
    {
      v4 = [v2 infoDictionary];
      v5 = [v4 objectForKey:@"NSUserNotificationBackgroundColorName" ofClass:objc_opt_class()];
      if (v5)
      {
        v6 = [v3 URL];
        v7 = [v6 URLByAppendingPathComponent:@"Assets.car"];

        v8 = objc_alloc(MEMORY[0x277D75DE0]);
        v9 = [MEMORY[0x277D75418] currentDevice];
        v18 = 0;
        v10 = [v8 initWithURL:v7 idiom:objc_msgSend(v9 error:{"userInterfaceIdiom"), &v18}];
        v11 = v18;

        v12 = MEMORY[0x277D77DB0];
        if (v11)
        {
          v13 = *MEMORY[0x277D77DB0];
          if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_ERROR))
          {
            _NCNotificationBackgroundColorForSectionIdentifier_cold_1(v1, v13, v11);
          }
        }

        v14 = objc_opt_new();
        v15 = [v10 colorNamed:v5 withTraitCollection:v14];

        if (v15)
        {
          v16 = *v12;
          if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v20 = v1;
            _os_log_impl(&dword_21E77E000, v16, OS_LOG_TYPE_DEFAULT, "Determined notification background color for section %{public}@ from assets", buf, 0xCu);
          }
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id _NCDominantColorForImage(void *a1)
{
  v23[2] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CBF758];
  v2 = a1;
  v3 = [[v1 alloc] initWithImage:v2];

  v4 = objc_alloc(MEMORY[0x277CBF788]);
  [v3 extent];
  v5 = [v4 initWithCGRect:?];
  v6 = MEMORY[0x277CBF750];
  v7 = *MEMORY[0x277CBFAE8];
  v22[0] = *MEMORY[0x277CBFAF0];
  v22[1] = v7;
  v23[0] = v3;
  v23[1] = v5;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v9 = [v6 filterWithName:@"CIAreaMaximumAlpha" withInputParameters:v8];

  v10 = [v9 outputImage];
  v11 = objc_alloc_init(MEMORY[0x277CBF740]);
  v12 = [v11 createCGImage:v10 fromRect:{0.0, 0.0, 1.0, 1.0}];
  DataProvider = CGImageGetDataProvider(v12);
  v14 = CGDataProviderCopyData(DataProvider);
  BytePtr = CFDataGetBytePtr(v14);
  LOBYTE(v16) = *BytePtr;
  LOBYTE(v17) = BytePtr[1];
  LOBYTE(v18) = BytePtr[2];
  LOBYTE(v19) = BytePtr[3];
  v20 = [MEMORY[0x277D75348] colorWithRed:v16 / 255.0 green:v17 / 255.0 blue:v18 / 255.0 alpha:v19 / 255.0];
  if (v14)
  {
    CFRelease(v14);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v20;
}

double _NCNotificationListInsetMarginHorizontal()
{
  if (_NCNotificationListInsetMarginHorizontal_onceToken != -1)
  {
    _NCNotificationListInsetMarginHorizontal_cold_1();
  }

  return *&_NCNotificationListInsetMarginHorizontal___insetMarginHorizontal;
}

double NCTranslationWithVelocity(double a1, double a2, double a3)
{
  v3 = a1;
  v4 = -(v3 * v3) / (a2 + a2);
  if (a1 <= 0.0)
  {
    v5 = -v4;
  }

  else
  {
    v5 = v4;
  }

  return v5 / a3;
}

double NCTranslationWithVelocityAndDefaultScrollViewAcceleration(double a1, double a2)
{
  v2 = a1;
  if (a1 <= 0.0)
  {
    v3 = -((v2 * v2) / (*MEMORY[0x277D76EC0] * 10000.0 + *MEMORY[0x277D76EC0] * 10000.0));
  }

  else
  {
    v3 = (v2 * v2) / (*MEMORY[0x277D76EC0] * 10000.0 + *MEMORY[0x277D76EC0] * 10000.0);
  }

  return v3 / a2;
}

uint64_t _NCIsFullScreenBannerPresentationPossible()
{
  if (_NCIsFullScreenBannerPresentationPossible_onceToken != -1)
  {
    _NCIsFullScreenBannerPresentationPossible_cold_1();
  }

  return _NCIsFullScreenBannerPresentationPossible___isFullScreenBannerPresentationPossible;
}

uint64_t _NCStackElevation()
{
  if (_NCStackElevation_onceToken != -1)
  {
    _NCStackElevation_cold_1();
  }

  return _NCStackElevation___stackElevation;
}

uint64_t _NCDeviceIsRunningInternalBuild()
{
  if (_NCDeviceIsRunningInternalBuild_onceToken != -1)
  {
    _NCDeviceIsRunningInternalBuild_cold_1();
  }

  return _NCDeviceIsRunningInternalBuild___internalBuild;
}

__CFString *_NCStringFromUserInterfaceStyle(uint64_t a1)
{
  v1 = @"Light";
  if (a1 == 2)
  {
    v1 = @"Dark";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"Unspecified";
  }
}

void sub_21E80BF54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21E80DFD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_1_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

void sub_21E814808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E815130(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E81524C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21E8160C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void -[NCNotificationListSupplementaryHostingView _blockOutOfProcessUIInteractions:](NCNotificationListSupplementaryHostingView *self, SEL a2, BOOL a3)
{
  v3 = a3;
  [(NCNotificationListSupplementaryHostingView *)self _configurePlatterViewIfNecessary];
  [(NCNotificationListSupplementaryHostingView *)self _configureViewToBlockOutOfProcessUIInteractionsIfNecessary];
  viewToBlockOutOfProcessUIInteractions = self->_viewToBlockOutOfProcessUIInteractions;

  [(UIView *)viewToBlockOutOfProcessUIInteractions setHidden:v3];
}

void sub_21E81A364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_21E81C5E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E81D2D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E81D5AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E81D824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E81DA14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E81DC14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E81DE04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E81E6CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E81E8F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E81EB50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E81ED4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E81EF3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E81F12C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E81F318(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E81F744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E81FBD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t ___sectionIdentifierIconDenyListContains_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"com.apple.mobiletimer", @"com.apple.Home", @"com.apple.reminders", @"com.apple.mobilephone", @"com.apple.facetime", @"com.apple.mobilecal", 0}];
  _sectionIdentifierIconDenyListContains___sectionIdentifierIconDenyList = v0;

  return MEMORY[0x2821F96F8](v0);
}

void sub_21E826FF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E8274B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E827868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E827C20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E8281C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E828768(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E828D5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E829428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E829DA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E82A9E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E82B060(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E82B690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E82BCE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E82C338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E82C9A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id OUTLINED_FUNCTION_2_1(id a1)
{

  return a1;
}

id NCGetEventTrackerQueue()
{
  if (NCGetEventTrackerQueue_onceToken != -1)
  {
    NCGetEventTrackerQueue_cold_1();
  }

  v1 = NCGetEventTrackerQueue_metricsQueue;

  return v1;
}

void __NCGetEventTrackerQueue_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, 0xFFFF8000, 0);

  v1 = dispatch_queue_create("com.apple.UserNotificationsUIKit.MetricsWorkQueue", attr);
  v2 = NCGetEventTrackerQueue_metricsQueue;
  NCGetEventTrackerQueue_metricsQueue = v1;
}

__CFString *NCStringFromLookStyle(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"[Invalid]";
  }

  else
  {
    return off_278371AA8[a1];
  }
}

void sub_21E831B10(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

id NCFormatTimeIntervalSecondsForLowFidelity(_BYTE *a1, int a2, int a3, int a4, int a5, int a6, int a7, uint64_t a8, int8x16_t a9)
{
  v13 = [_NCTimeFormatData instanceForLocale:a8];
  v14 = v13;
  v15 = *a9.i64;
  v16 = *a9.i64 / 0x3C;
  if (a4)
  {
    v17 = v16 - 60 * (((v16 * 0x888888888888889uLL) >> 64) >> 1);
    v18 = v15 / 0xE10;
  }

  else
  {
    v18 = 0;
    v17 = *a9.i64 / 0x3C;
  }

  if (v18)
  {
    v19 = 1;
  }

  else
  {
    v19 = a5;
  }

  v20 = [v13 singleWidthNumberFormatter];
  if (v19 == 1)
  {
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v18];
    v22 = [v20 stringFromNumber:v21];
  }

  else
  {
    v22 = &stru_282FE84F8;
    if (!a6)
    {
      goto LABEL_11;
    }
  }

  v23 = [v14 doubleWidthNumberFormatter];

  v20 = v23;
LABEL_11:
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17];
  v25 = [v20 stringFromNumber:v24];

  v59 = a3;
  if (a3)
  {
    v27 = v15 - 60 * v16;
    v28 = v14;
    v29 = [v14 doubleWidthNumberFormatter];
    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v27];
    v31 = [v29 stringFromNumber:v30];
  }

  else
  {
    v28 = v14;
    v31 = &stru_282FE84F8;
  }

  if (a2)
  {
    *v26.i64 = *a9.i64 - trunc(*a9.i64);
    v32.f64[0] = NAN;
    v32.f64[1] = NAN;
    v33 = (*vbslq_s8(vnegq_f64(v32), v26, a9).i64 * 100.0);
    v34 = v28;
    v35 = [v28 doubleWidthNumberFormatter];
    v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v33];
    v37 = [v35 stringFromNumber:v36];
  }

  else
  {
    v37 = &stru_282FE84F8;
    v34 = v28;
  }

  v38 = v22;
  v39 = v25;
  v40 = v31;
  v41 = v37;

  v42 = v22;
  v43 = v25;
  v44 = v31;
  v45 = v37;
  v46 = v34;
  if (v19)
  {
    if (!v59 || a7)
    {
      v47 = [v34 formatHourMin];
    }

    else
    {
      if (a2)
      {
        [v34 formatHourMinSecSubsec];
      }

      else
      {
        [v34 formatHourMinSec];
      }
      v47 = ;
    }
  }

  else if (v59)
  {
    if (a7 || (a2 & 1) == 0)
    {
      v47 = [v34 formatMinSec];
    }

    else
    {
      v47 = [v34 formatMinSecSubsec];
    }
  }

  else
  {
    v47 = [v34 formatMin];
  }

  v48 = v47;
  if (a1)
  {
    *a1 = v19;
  }

  if ((v19 & 1) == 0)
  {
    v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"HH%@", v47];

    v48 = v49;
  }

  v50 = [v48 stringByReplacingOccurrencesOfString:@"HH" withString:@"%1$@"];

  v51 = [v50 stringByReplacingOccurrencesOfString:@"H" withString:@"%1$@"];

  v52 = [v51 stringByReplacingOccurrencesOfString:@"mm" withString:@"%2$@"];

  v53 = [v52 stringByReplacingOccurrencesOfString:@"m" withString:@"%2$@"];

  v54 = [v53 stringByReplacingOccurrencesOfString:@"ss" withString:@"%3$@"];

  v55 = [v54 stringByReplacingOccurrencesOfString:@"SS" withString:@"%4$@"];

  if ([(__CFString *)v45 length])
  {

    v45 = @"—";
  }

  if ([(__CFString *)v44 length])
  {

    v44 = @"—";
  }

  v56 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v55 validFormatSpecifiers:@"%@%@%@%@" error:0, v42, v43, v44, v45];

  return v56;
}

void sub_21E832AE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E833960(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_6(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

double NCMainScreenReferenceBounds()
{
  if (NCMainScreenReferenceBounds_onceToken != -1)
  {
    NCMainScreenReferenceBounds_cold_1();
  }

  return *&NCMainScreenReferenceBounds___mainScreenReferenceBounds_0;
}

void __NCMainScreenReferenceBounds_block_invoke()
{
  v4 = [MEMORY[0x277D759A0] mainScreen];
  [v4 _referenceBounds];
  NCMainScreenReferenceBounds___mainScreenReferenceBounds_0 = v0;
  NCMainScreenReferenceBounds___mainScreenReferenceBounds_1 = v1;
  NCMainScreenReferenceBounds___mainScreenReferenceBounds_2 = v2;
  NCMainScreenReferenceBounds___mainScreenReferenceBounds_3 = v3;
}

double NCRectConfinedToRect(double a1, CGFloat a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v14 = a1;
  Width = CGRectGetWidth(*&a1);
  v30.origin.x = a5;
  v30.origin.y = a6;
  v30.size.width = a7;
  v30.size.height = a8;
  v16 = CGRectGetWidth(v30);
  if (Width > v16)
  {
    Width = v16;
  }

  v31.origin.x = v14;
  v31.origin.y = a2;
  v31.size.width = Width;
  v31.size.height = a4;
  Height = CGRectGetHeight(v31);
  v32.origin.x = a5;
  v32.origin.y = a6;
  v32.size.width = a7;
  v32.size.height = a8;
  v18 = CGRectGetHeight(v32);
  if (Height <= v18)
  {
    v19 = Height;
  }

  else
  {
    v19 = v18;
  }

  v20 = v14;
  v21 = a2;
  v22 = Width;
  v29 = v19;
  MinX = CGRectGetMinX(*(&v19 - 3));
  v33.origin.x = a5;
  v33.origin.y = a6;
  v33.size.width = a7;
  v33.size.height = a8;
  if (MinX < CGRectGetMinX(v33))
  {
    v34.origin.x = a5;
    v34.origin.y = a6;
    v34.size.width = a7;
    v34.size.height = a8;
    v14 = CGRectGetMinX(v34);
  }

  v35.origin.x = v14;
  v35.origin.y = a2;
  v35.size.width = Width;
  v35.size.height = v29;
  MaxX = CGRectGetMaxX(v35);
  v36.origin.x = a5;
  v36.origin.y = a6;
  v36.size.width = a7;
  v36.size.height = a8;
  if (MaxX > CGRectGetMaxX(v36))
  {
    v37.origin.x = a5;
    v37.origin.y = a6;
    v37.size.width = a7;
    v37.size.height = a8;
    v25 = CGRectGetMaxX(v37);
    v38.origin.x = v14;
    v38.origin.y = a2;
    v38.size.width = Width;
    v38.size.height = v29;
    v14 = v25 - CGRectGetWidth(v38);
  }

  v39.size.height = v29;
  v39.origin.x = v14;
  v39.origin.y = a2;
  v39.size.width = Width;
  MinY = CGRectGetMinY(v39);
  v40.origin.x = a5;
  v40.origin.y = a6;
  v40.size.width = a7;
  v40.size.height = a8;
  if (MinY < CGRectGetMinY(v40))
  {
    v41.origin.x = a5;
    v41.origin.y = a6;
    v41.size.width = a7;
    v41.size.height = a8;
    a2 = CGRectGetMinY(v41);
  }

  v42.origin.x = v14;
  v42.origin.y = a2;
  v42.size.width = Width;
  v42.size.height = v29;
  MaxY = CGRectGetMaxY(v42);
  v43.origin.x = a5;
  v43.origin.y = a6;
  v43.size.width = a7;
  v43.size.height = a8;
  if (MaxY > CGRectGetMaxY(v43))
  {
    v44.origin.x = a5;
    v44.origin.y = a6;
    v44.size.width = a7;
    v44.size.height = a8;
    CGRectGetMaxY(v44);
    v45.origin.x = v14;
    v45.origin.y = a2;
    v45.size.width = Width;
    v45.size.height = v29;
    CGRectGetHeight(v45);
  }

  return v14;
}

double NCProminentIconCornerRadius()
{
  if (NCProminentIconCornerRadius_onceToken != -1)
  {
    NCProminentIconCornerRadius_cold_1();
  }

  return *&NCProminentIconCornerRadius___prominentIconCornerRadius;
}

void __NCProminentIconCornerRadius_block_invoke()
{
  v1 = [objc_alloc(MEMORY[0x277D1B1C8]) initWithSize:38.0 scale:{38.0, _NCMainScreenScale()}];
  [v1 continuousCornerRadius];
  NCProminentIconCornerRadius___prominentIconCornerRadius = v0;
}

uint64_t NCCornerRadiusConcentricWithProminentIcon()
{
  if (NCProminentIconCornerRadius_onceToken != -1)
  {
    NCProminentIconCornerRadius_cold_1();
  }

  return UIRoundToScale();
}

void sub_21E839F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21E83A508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E83AB00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E83FDF0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 48));
  _Unwind_Resume(a1);
}

void sub_21E844AF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E844DA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E84F3DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E84F5B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E84F740(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E84FB00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E84FC54(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21E84FEA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E851064(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E853894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E8541E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id NCModifyFrameRateForAnimationBlockFromSettings(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = _Block_copy(v3);
  [v4 frameRateRange];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [v4 preferredFrameRateRange];

  v13 = [v12 highFrameRateReason];
  v24.minimum = v7;
  v24.maximum = v9;
  v24.preferred = v11;
  if (!CAFrameRateRangeIsEqualToRange(v24, *MEMORY[0x277CD9DD0]))
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __NCModifyFrameRateForAnimationBlockFromSettings_block_invoke;
    aBlock[3] = &unk_278372050;
    v19 = v7;
    v20 = v9;
    v21 = v11;
    v22 = v13;
    v18 = v3;
    v14 = _Block_copy(aBlock);

    v5 = v14;
  }

  v15 = _Block_copy(v5);

  return v15;
}

uint64_t __NCModifyFrameRateForAnimationBlockFromSettings_block_invoke(uint64_t a1, double a2, double a3, double a4)
{
  LODWORD(a2) = *(a1 + 40);
  LODWORD(a3) = *(a1 + 44);
  LODWORD(a4) = *(a1 + 48);
  return [MEMORY[0x277D75D18] _modifyAnimationsWithPreferredFrameRateRange:*(a1 + 52) updateReason:*(a1 + 32) animations:{a2, a3, a4}];
}

double NCConvertTensionAndFrictionToDampingRatioAndResponse(double *a1, double *a2, double a3, double a4)
{
  result = sqrt(a3);
  if (a1)
  {
    *a1 = a4 / (result + result);
  }

  if (a2)
  {
    result = 6.28318531 / result;
    *a2 = result;
  }

  return result;
}

double NCConvertDampingMassAndStiffnessToDampingRatioAndResponse(double *a1, double *a2, double result, double a4, double a5)
{
  v5 = sqrt(a5 / a4);
  if (a1)
  {
    result = result / a4 / (v5 + v5);
    *a1 = result;
  }

  if (a2)
  {
    result = 6.28318531 / v5;
    *a2 = 6.28318531 / v5;
  }

  return result;
}

void NCPerformActionsAnimatingIfNecessary(void *a1, void *a2, void *a3)
{
  v7 = a1;
  v5 = a2;
  v6 = a3;
  if (v7 && v5)
  {
    [v7 animateTracking:0 animations:v5 completion:v6];
  }

  else
  {
    if (v5)
    {
      v5[2](v5);
    }

    if (v6)
    {
      v6[2](v6, 1, 0);
    }
  }
}

void sub_21E85A2B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E85D758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E85DAA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E8623C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E863854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E8668D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double _MaxToggleControlSize(int a1, uint64_t a2)
{
  if (a1)
  {
    v3 = NCUserNotificationsUIKitFrameworkBundle();
    v4 = [v3 localizedStringForKey:@"NOTIFICATION_LIST_CLEAR_ALL" value:&stru_282FE84F8 table:0];
    v5 = [NCToggleControl dismissControlWithMaterialRecipe:0 clearAllText:v4];

    [v5 setAdjustsFontForContentSizeCategory:a2];
    v6 = NCUserNotificationsUIKitFrameworkBundle();
    v7 = [v6 localizedStringForKey:@"NOTIFICATION_LIST_CLEAR_ALL" value:&stru_282FE84F8 table:0];
    v8 = [NCToggleControl showLessControlWithMaterialRecipe:0 clearAllText:v7 glyphOrientation:1];

    [v8 setAdjustsFontForContentSizeCategory:a2];
    [v5 _sizeThatFits:1 whenExpanded:{1.79769313e308, 1.79769313e308}];
    [v8 _sizeThatFits:1 whenExpanded:{1.79769313e308, 1.79769313e308}];
    _NCMainScreenScale();
    UISizeRoundToScale();
    v10 = v9;
  }

  else
  {
    [NCToggleControl effectiveHeight:a2];
    return v11;
  }

  return v10;
}

void sub_21E86DC4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21E86E8D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E86EF5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21E870F0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E871514(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t NCNotificationListSectionTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"History"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"Incoming"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"ProminentIncoming"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"UpcomingMissed"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"UpcomingDigest"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"CurrentDigest"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"ReadDigest"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"Application"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"OnboardingDigest"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"InlineFeaturedDigest"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"Highlighted"])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:@"Persistent"])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:@"Critical"])
  {
    v2 = 12;
  }

  else
  {
    v2 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v2;
}

id NCSDKVersionForExtensionWithIdentifier(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x277CC1E50];
  v4 = a1;
  v5 = [[v3 alloc] initWithBundleIdentifier:v4 error:a2];

  if (v5)
  {
    v6 = [v5 containingBundleRecord];
    v7 = v6;
    if (!v6)
    {
      v6 = v5;
    }

    v8 = [v6 SDKVersion];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

BOOL NCIsSDKVersionSameOrAfterSDKVersion(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 length] && objc_msgSend(v4, "length") && objc_msgSend(v3, "compare:options:", v4, 64) < 2;

  return v5;
}

void sub_21E873080(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21E8781B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_0()
{

  return objc_opt_class();
}

void sub_21E87EDF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E87FC50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v27 + 40));
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E87FFC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E880110(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_21E8807FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E884F88(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_21E889DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *NilColorIfTransparent(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v6 = 0.0;
    [v1 getWhite:0 alpha:&v6];
    if (v6 >= 0.01)
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

void sub_21E88B9B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E88CF14(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 160));
  _Unwind_Resume(a1);
}

void sub_21E88D860(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21E88DFB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _dateUntilEndOfToday()
{
  v0 = [MEMORY[0x277CBEAA8] now];
  v1 = [MEMORY[0x277CBEA80] currentCalendar];
  v2 = [v1 components:28 fromDate:v0];

  [v2 setValue:objc_msgSend(v2 forComponent:{"valueForComponent:", 16) + 1, 16}];
  [v2 setValue:6 forComponent:32];
  v3 = [MEMORY[0x277CBEA80] currentCalendar];
  v4 = [v3 dateFromComponents:v2];

  return v4;
}

uint64_t NCTimeIntervalBinForTimeInterval(double a1)
{
  if (a1 < 60.0)
  {
    return 0;
  }

  if (a1 < 300.0)
  {
    return 1;
  }

  if (a1 < 1200.0)
  {
    return 2;
  }

  if (a1 < 3600.0)
  {
    return 3;
  }

  if (a1 < 7200.0)
  {
    return 4;
  }

  if (a1 < 21600.0)
  {
    return 5;
  }

  if (a1 < 86400.0)
  {
    return 6;
  }

  if (a1 < 172800.0)
  {
    return 7;
  }

  if (a1 >= 604800.0)
  {
    return 9;
  }

  return 8;
}

void sub_21E88FC4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E89261C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21E8930C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

id DNDContactHandleFromNotificationRequest(void *a1)
{
  v1 = a1;
  v2 = [v1 content];
  v3 = [v2 communicationContext];

  v4 = [v3 sender];
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v6 = objc_alloc_init(MEMORY[0x277D05A30]);
    v7 = [MEMORY[0x277D77F58] sharedInstance];
    v8 = [v1 topLevelSectionIdentifier];
    v9 = [v7 curatedContactMatchDetailsForContact:v5 bundleIdentifier:v8];

    v10 = [v9 cnContactIdentifier];
    [v6 setContactIdentifier:v10];

    v11 = [v5 handleType];
    if (v11 == 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2 * (v11 == 2);
    }

    [v6 setType:v12];
    v13 = [v5 handle];
    [v6 setValue:v13];
  }

  v14 = [v6 copy];

  return v14;
}

void sub_21E89A054(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21E8A062C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E8A0878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E8A11D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_21E8A16F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E8A1950(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21E8A1FA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E8A2F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E8A3758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E8A411C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21E8A5FA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E8A80B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 56));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 104));
  _Unwind_Resume(a1);
}

void sub_21E8A92D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E8A9618(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_21E8A9A30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E8AAB48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E8AAFC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __NCUserNotificationsUIKitFrameworkBundle_block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  NCUserNotificationsUIKitFrameworkBundle___bundle = v0;

  return MEMORY[0x2821F96F8](v0);
}

uint64_t sub_21E8AC198()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_21E92AB28();
  if (v2 == 1)
  {
    v1 = v1 != 0;
  }

  else
  {
    MEMORY[0x223D64CD0](2);
  }

  MEMORY[0x223D64CD0](v1);
  return sub_21E92AB48();
}

uint64_t sub_21E8AC204()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    v1 = v1 != 0;
  }

  else
  {
    MEMORY[0x223D64CD0](2);
  }

  return MEMORY[0x223D64CD0](v1);
}

uint64_t sub_21E8AC254()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_21E92AB28();
  if (v2 == 1)
  {
    v1 = v1 != 0;
  }

  else
  {
    MEMORY[0x223D64CD0](2);
  }

  MEMORY[0x223D64CD0](v1);
  return sub_21E92AB48();
}

BOOL sub_21E8AC2BC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 8) == 1)
  {
    return v2 == 0;
  }

  v4 = v2 < *a2;
  if (*(a2 + 8) == 1)
  {
    return *a2 != 0;
  }

  else
  {
    return v4;
  }
}

BOOL sub_21E8AC2FC(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*(a2 + 8) == 1)
  {
    return v2 != 0;
  }

  v4 = v2 < *a1;
  if (*(a1 + 8) == 1)
  {
    v4 = *a1 != 0;
  }

  return !v4;
}

BOOL sub_21E8AC344(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 8) == 1)
  {
    return v2 != 0;
  }

  v4 = v2 < *a2;
  if (*(a2 + 8) == 1)
  {
    v4 = *a2 != 0;
  }

  return !v4;
}

BOOL sub_21E8AC38C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*(a2 + 8) == 1)
  {
    return v2 == 0;
  }

  v4 = v2 < *a1;
  if (*(a1 + 8) == 1)
  {
    return *a1 != 0;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_21E8AC3CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_21E8AC420()
{
  v1 = *v0;
  sub_21E92AB28();
  MEMORY[0x223D64CD0](v1);
  return sub_21E92AB48();
}

uint64_t sub_21E8AC494()
{
  v1 = *v0;
  sub_21E92AB28();
  MEMORY[0x223D64CD0](v1);
  return sub_21E92AB48();
}

uint64_t sub_21E8AC4D8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  sub_21E92AB28();
  if (v2 == 1)
  {
    v1 = v1 != 0;
  }

  else
  {
    MEMORY[0x223D64CD0](2);
  }

  MEMORY[0x223D64CD0](v1);
  MEMORY[0x223D64CD0](v3);
  return sub_21E92AB48();
}

uint64_t sub_21E8AC55C()
{
  v1 = *v0;
  v2 = *(v0 + 9);
  if (*(v0 + 8) == 1)
  {
    v1 = v1 != 0;
  }

  else
  {
    MEMORY[0x223D64CD0](2);
  }

  MEMORY[0x223D64CD0](v1);
  return MEMORY[0x223D64CD0](v2);
}

uint64_t sub_21E8AC5C0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  sub_21E92AB28();
  if (v2 == 1)
  {
    v1 = v1 != 0;
  }

  else
  {
    MEMORY[0x223D64CD0](2);
  }

  MEMORY[0x223D64CD0](v1);
  MEMORY[0x223D64CD0](v3);
  return sub_21E92AB48();
}

uint64_t sub_21E8AC640(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    if (v2)
    {
      if (!v3)
      {
        v4 = 0;
      }

      if ((v4 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v3)
      {
        v4 = 0;
      }

      if ((v4 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    if (v2 != v3)
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  return *(a1 + 9) ^ *(a2 + 9) ^ 1u;
}

uint64_t sub_21E8AC69C()
{

  return swift_deallocClassInstance();
}

id sub_21E8AC6D4()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
LABEL_5:
    v5 = v1;
    return v2;
  }

  result = [objc_opt_self() behaviorWithDampingRatio:0.73333 response:0.62832];
  if (result)
  {
    v4 = *(v0 + 24);
    *(v0 + 24) = result;
    v2 = result;

    v1 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_21E8AC760(uint64_t a1, char a2, char a3, double a4)
{
  v7 = [objc_allocWithZone(MEMORY[0x277D75D38]) init];
  [v7 setVelocityUsableForVFD_];
  type metadata accessor for HighlightsDropletLayout.AnimatorState();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a4;
  v9 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED6D90);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21E9468F0;
  *(v10 + 32) = v7;
  sub_21E8B1DC4();
  v11 = v7;
  v12 = sub_21E92A518();

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = v14;
  v30 = sub_21E8B1E10;
  v31 = v15;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_21E792C28;
  v29 = &block_descriptor_95;
  v16 = _Block_copy(&aBlock);

  [v9 _createTransformerWithInputAnimatableProperties_presentationValueChangedCallback_];
  _Block_release(v16);

  v17 = swift_allocObject();
  *(v17 + 16) = v11;
  *(v17 + 24) = a4;
  *(v17 + 32) = v4;
  v30 = sub_21E8B2448;
  v31 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_21E792C28;
  v29 = &block_descriptor_101;
  v18 = _Block_copy(&aBlock);
  v19 = v11;

  v20 = [v9 nc:v18 applyHighFrameRate:?];
  _Block_release(v18);
  if (v20)
  {
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    v30 = sub_21E8B242C;
    v31 = v21;
    aBlock = MEMORY[0x277D85DD0];
    v27 = 1107296256;
    v28 = sub_21E792C28;
    v29 = &block_descriptor_108;
    v20 = _Block_copy(&aBlock);
  }

  [v9 _performWithoutRetargetingAnimations_];
  _Block_release(v20);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(v4 + 16);
  *(v4 + 16) = 0x8000000000000000;
  sub_21E8F77E0(v8, a1, a2 & 1 | ((a3 & 1) << 8), isUniquelyReferenced_nonNull_native);
  *(v4 + 16) = v25;
  swift_endAccess();
}

void sub_21E8ACB2C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_weakLoadStrong();
    if (v2)
    {
      v3 = v2;
      v4 = *(v2 + 16);
      [v4 presentationValue];
      if (v5 == *(v3 + 24) || ([v4 presentationValue], *(v3 + 24) = v6, !swift_unknownObjectWeakLoadStrong()))
      {
      }

      else
      {
        v7 = *(v1 + 96);
        ObjectType = swift_getObjectType();
        (*(v7 + 56))(v1, ObjectType, v7);

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }
}

void sub_21E8ACC5C(uint64_t a1, char a2, char a3, double a4)
{
  v5 = v4;
  swift_beginAccess();
  v10 = *(v4 + 16);
  if (*(v10 + 16) && (v11 = sub_21E8F67A8(a1, a2 & 1 | ((a3 & 1) << 8)), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
    swift_endAccess();
    v14 = *(v13 + 16);

    v15 = v14;
    [v15 value];
    if (vabdd_f64(v16, a4) <= 0.01)
    {
    }

    else
    {
      v17 = objc_opt_self();
      v18 = sub_21E8AC6D4();
      v19 = swift_allocObject();
      *(v19 + 16) = v15;
      *(v19 + 24) = a4;
      *(v19 + 32) = v5;
      v29 = sub_21E8B1DA0;
      v30 = v19;
      aBlock = MEMORY[0x277D85DD0];
      v26 = 1107296256;
      v27 = sub_21E792C28;
      v28 = &block_descriptor;
      v20 = _Block_copy(&aBlock);
      v21 = v15;

      v22 = [v17 nc:v20 applyHighFrameRate:?];
      _Block_release(v20);
      if (v22)
      {
        v23 = swift_allocObject();
        *(v23 + 16) = v22;
        v29 = sub_21E792C6C;
        v30 = v23;
        aBlock = MEMORY[0x277D85DD0];
        v26 = 1107296256;
        v27 = sub_21E792C28;
        v28 = &block_descriptor_67;
        v22 = _Block_copy(&aBlock);
      }

      v29 = CGRectMake;
      v30 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v26 = 1107296256;
      v27 = sub_21E799760;
      v28 = &block_descriptor_61;
      v24 = _Block_copy(&aBlock);
      [v17 _animateUsingSpringBehavior_tracking_animations_completion_];
      _Block_release(v24);
      _Block_release(v22);
    }
  }

  else
  {
    swift_endAccess();
  }
}

void sub_21E8ACF48(uint64_t a1, char a2, char a3, double a4)
{
  v5 = v4;
  swift_beginAccess();
  v10 = *(v4 + 16);
  if (*(v10 + 16) && (v11 = sub_21E8F67A8(a1, a2 & 1 | ((a3 & 1) << 8)), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
    swift_endAccess();
    v14 = *(v13 + 16);

    v15 = v14;
    [v15 value];
    if (vabdd_f64(v16, a4) > 0.01)
    {
      v17 = objc_opt_self();
      v18 = swift_allocObject();
      *(v18 + 16) = v15;
      *(v18 + 24) = a4;
      *(v18 + 32) = v5;
      v27 = sub_21E8B2448;
      v28 = v18;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21E792C28;
      v26 = &block_descriptor_73;
      v19 = _Block_copy(&aBlock);
      v15 = v15;

      v20 = [v17 nc:v19 applyHighFrameRate:?];
      _Block_release(v19);
      if (v20)
      {
        v21 = swift_allocObject();
        *(v21 + 16) = v20;
        v27 = sub_21E8B242C;
        v28 = v21;
        aBlock = MEMORY[0x277D85DD0];
        v24 = 1107296256;
        v25 = sub_21E792C28;
        v26 = &block_descriptor_83;
        v20 = _Block_copy(&aBlock);
      }

      v27 = CGRectMake;
      v28 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21E799760;
      v26 = &block_descriptor_76;
      v22 = _Block_copy(&aBlock);
      [v17 _animateByRetargetingAnimations_completion_];
      _Block_release(v22);
      _Block_release(v20);
    }
  }

  else
  {
    swift_endAccess();
  }
}

id sub_21E8AD204(void *a1, uint64_t a2)
{
  [a1 setValue_];
  result = *(a2 + 48);
  if (result)
  {
    result = [result velocity];
    v6 = v5 * 0.33;
    if (fabs(v6) > 2.0)
    {
      v7 = -10.0;
      if (v6 >= -10.0)
      {
        v7 = 10.0;
        if (v6 <= 10.0)
        {
          v7 = v6;
        }
      }

      return [a1 setVelocity_];
    }
  }

  return result;
}

uint64_t sub_21E8AD2A8(uint64_t a1, char a2, char a3)
{
  swift_beginAccess();
  v7 = *(v3 + 16);
  if (*(v7 + 16) && (v8 = sub_21E8F67A8(a1, a2 & 1 | ((a3 & 1) << 8)), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    swift_endAccess();
    return *(v10 + 24);
  }

  else
  {
    swift_endAccess();
    return 0;
  }
}

uint64_t sub_21E8AD340()
{
  if (*(v0 + 120) > 0.7 && *(v0 + 48) || *(v0 + 72) > 16.0 || *(v0 + 81) == 1)
  {
    v1 = *(v0 + 41);
    *(v0 + 80) = v1;
    if (v1)
    {
      *(v0 + 81) = 1;
      return result;
    }
  }

  else
  {
    *(v0 + 80) = 0;
  }

  swift_beginAccess();
  *(v0 + 16) = MEMORY[0x277D84F98];
}

uint64_t sub_21E8AD3DC(uint64_t a1)
{
  v2 = *(v1 + 48);
  if (v2)
  {
    v4 = v2;
    [v4 translation];
    if (v5 < 0.0)
    {
      v6 = -v5;
    }

    else
    {
      v6 = 0.0;
    }

    v7 = sub_21E8AD4A4();

    if (v7 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    *(v1 + 72) = v6 / v8;
    if (*(v1 + 48) && !a1)
    {
      *(v1 + 56) = 0;
      *(v1 + 64) = 256;
      *(v1 + 66) = 1;
      *(v1 + 81) = 0;
    }
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 256;
    *(v1 + 66) = 1;
  }

  return sub_21E8AD340();
}

uint64_t sub_21E8AD4A4()
{
  v1 = sub_21E8AD680();
  if ((v2 & 0x100) == 0)
  {
    if (v2)
    {
      if (v1)
      {
        v3 = 0;
LABEL_13:
        if (swift_unknownObjectWeakLoadStrong())
        {
          v16 = *(v0 + 96);
          ObjectType = swift_getObjectType();
          v18 = (*(v16 + 48))(v0, ObjectType, v16);
          swift_unknownObjectRelease();
        }

        else
        {
          v18 = 0;
        }

        v19 = *(v0 + 128) < v18;
        result = v3 + v19;
        if (!__OFADD__(v3, v19))
        {
          return result;
        }

        __break(1u);
LABEL_31:
        __break(1u);
        return result;
      }

      v3 = *(v0 + 128);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v20 = *(v0 + 96);
        v21 = swift_getObjectType();
        v22 = (*(v20 + 48))(v0, v21, v20);
        swift_unknownObjectRelease();
        if (v22 < v3)
        {
          v3 = v22;
        }

        goto LABEL_13;
      }

LABEL_29:
      v3 &= v3 >> 63;
      goto LABEL_13;
    }

    v3 = v1;
    v8 = *(v0 + 128);
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v10 = *(v0 + 96);
      v11 = swift_getObjectType();
      v12 = (*(v10 + 48))(v0, v11, v10);
      result = swift_unknownObjectRelease();
      if (v12 >= v8)
      {
        v13 = v8;
      }

      else
      {
        v13 = v12;
      }

      v14 = __OFSUB__(v13, v3);
      v15 = v13 - v3;
      if (!v14)
      {
LABEL_12:
        v3 = v15 - 1;
        if (__OFSUB__(v15, 1))
        {
          goto LABEL_31;
        }

        goto LABEL_13;
      }
    }

    else
    {
      v23 = v8 & (v8 >> 63);
      v14 = __OFSUB__(v23, v3);
      v15 = v23 - v3;
      if (!v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_29;
  }

  v4 = *(v0 + 128);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v0 + 96);
    v6 = swift_getObjectType();
    v7 = (*(v5 + 48))(v0, v6, v5);
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0;
  }

  if (v7 >= v4)
  {
    return v4;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_21E8AD680()
{
  if (*(v0 + 66) == 1)
  {
    v1 = *(v0 + 48);
    if (v1)
    {
      v2 = *(v0 + 128);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v3 = *(v0 + 96);
        ObjectType = swift_getObjectType();
        v5 = *(v3 + 48);
        v6 = v1;
        v7 = v5(v0, ObjectType, v3);
        swift_unknownObjectRelease();
      }

      else
      {
        v8 = v1;
        v7 = 0;
      }

      if (v7 >= v2)
      {
        v9 = v2;
      }

      else
      {
        v9 = v7;
      }

      *(v0 + 56) = v9;
      *(v0 + 64) = 0;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v7 = *(v0 + 96);
        v10 = swift_getObjectType();
        v11 = (*(v7 + 32))(v0, v10, v7);
        swift_unknownObjectRelease();
      }

      else
      {
        v11 = 0.0;
      }

      v12 = *(v0 + 128);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v13 = *(v0 + 96);
        v14 = swift_getObjectType();
        v7 = (*(v13 + 48))(v0, v14, v13);
        swift_unknownObjectRelease();
        if (v7 >= v12)
        {
          v15 = v12;
        }

        else
        {
          v15 = v7;
        }

        if ((v15 & 0x8000000000000000) == 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v15 = v12 & (v12 >> 63);
        if ((v15 & 0x8000000000000000) == 0)
        {
LABEL_17:
          if (!v15)
          {
LABEL_25:

LABEL_29:
            *(v0 + 66) = 0;
            return *(v0 + 56);
          }

          v7 = 0;
          while (1)
          {
            v16 = 0.0;
            if (swift_unknownObjectWeakLoadStrong())
            {
              v17 = *(v0 + 96);
              v18 = swift_getObjectType();
              v19 = (*(v17 + 48))(v0, v18, v17);
              swift_unknownObjectRelease();
              if (v7 < v19)
              {
                if (swift_unknownObjectWeakLoadStrong())
                {
                  v20 = *(v0 + 96);
                  v21 = swift_getObjectType();
                  v16 = (*(v20 + 16))(v0, v7, 0, v21, v20);
                  swift_unknownObjectRelease();
                }
              }
            }

            v11 = v11 + v16;
            [v1 startPoint];
            if (v22 <= v11)
            {
              break;
            }

            if (v15 == ++v7)
            {
              goto LABEL_25;
            }
          }

LABEL_28:

          *(v0 + 56) = v7;
          *(v0 + 64) = 0;
          goto LABEL_29;
        }
      }

      __break(1u);
      goto LABEL_28;
    }
  }

  return *(v0 + 56);
}

double sub_21E8AD8E8(uint64_t a1, char a2, char a3, char a4)
{
  v5 = v4;
  if ((a4 & 1) == 0)
  {
    swift_beginAccess();
    v10 = *(v4 + 32);
    if (*(v10 + 16))
    {
      v11 = sub_21E8F67A8(a1, a2 & 1 | 0x100u);
      if (v12)
      {
        v13 = *(*(v10 + 56) + 8 * v11);
LABEL_45:
        swift_endAccess();
        return v13;
      }
    }

    swift_endAccess();
  }

  v13 = 0.0;
  if (a2)
  {
    if (a1)
    {
      if ((a3 & 1) == 0 && swift_unknownObjectWeakLoadStrong())
      {
        v14 = *(v5 + 96);
        ObjectType = swift_getObjectType();
        (*(v14 + 40))(v5, ObjectType, v14);
LABEL_19:
        v13 = v16;
        swift_unknownObjectRelease();
      }
    }

    else if ((a3 & 1) == 0 && swift_unknownObjectWeakLoadStrong())
    {
      v22 = *(v5 + 96);
      v23 = swift_getObjectType();
      v16 = (*(v22 + 32))(v5, v23, v22);
      goto LABEL_19;
    }
  }

  else if ((a1 & 0x8000000000000000) == 0)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v17 = *(v5 + 96);
      v18 = swift_getObjectType();
      v19 = (*(v17 + 48))(v5, v18, v17);
      swift_unknownObjectRelease();
      if (v19 > a1)
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          v20 = *(v5 + 96);
          v21 = swift_getObjectType();
          (*(v20 + 16))(v5, a1, a3 & 1, v21, v20);
          goto LABEL_19;
        }
      }
    }
  }

  if ((a4 & 1) == 0)
  {
    v24 = *(v5 + 128);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v25 = *(v5 + 96);
      v26 = swift_getObjectType();
      v27 = (*(v25 + 48))(v5, v26, v25);
      swift_unknownObjectRelease();
      if (v27 >= v24)
      {
        v28 = v24;
      }

      else
      {
        v28 = v27;
      }

      if (a2)
      {
LABEL_29:
        v29 = sub_21E8AD680();
        if ((v30 & 0x100) == 0 && (*(v5 + 176) & 1) == 0)
        {
          if (v30)
          {
            if (v29)
            {
              goto LABEL_36;
            }
          }

          else if (a2)
          {
            if (!a1)
            {
              goto LABEL_36;
            }
          }

          else if (v29 >= a1)
          {
            goto LABEL_36;
          }

          v31 = *(v5 + 72) * 0.5;
          if (v31 > 19.2)
          {
            v31 = 19.2;
          }

          v13 = v13 + v31 * 0.5;
        }

LABEL_36:
        if (*(v5 + 80) == 1)
        {
          swift_beginAccess();
          if (*(*(v5 + 16) + 16))
          {
            sub_21E8F67A8(a1, a2 & 1 | 0x100);
            if (v32)
            {
              swift_endAccess();
              sub_21E8ACC5C(a1, a2 & 1, 1, v13);
LABEL_44:
              swift_beginAccess();
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v36 = *(v5 + 32);
              *(v5 + 32) = 0x8000000000000000;
              sub_21E8F793C(a1, a2 & 1 | 0x100, isUniquelyReferenced_nonNull_native, v13);
              *(v5 + 32) = v36;
              goto LABEL_45;
            }
          }
        }

        else
        {
          swift_beginAccess();
          if (*(*(v5 + 16) + 16))
          {
            sub_21E8F67A8(a1, a2 & 1);
            if (v33)
            {
              swift_endAccess();
              sub_21E8ACF48(a1, a2 & 1, 1, v13);
              goto LABEL_44;
            }
          }
        }

        swift_endAccess();
        sub_21E8AC760(a1, a2 & 1, 1, v13);
        goto LABEL_44;
      }
    }

    else
    {
      v28 = v24 & (v24 >> 63);
      if (a2)
      {
        goto LABEL_29;
      }
    }

    if (v28 > a1)
    {
      goto LABEL_29;
    }
  }

  return v13;
}

BOOL sub_21E8ADCA4()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 96);
    ObjectType = swift_getObjectType();
    v3 = (*(v1 + 48))(v0, ObjectType, v1);
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0;
  }

  return *(v0 + 128) < v3;
}

void *sub_21E8ADD4C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_21E8ADD78@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_21E8ADE28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_21E8B1E58(a1);

  *a2 = v3;
  return result;
}

__n128 sub_21E8ADE68@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  swift_beginAccess();
  v8 = *(v3 + 200);
  if (*(v8 + 16) && (v9 = sub_21E8F6848(a1, a2 & 1), (v10 & 1) != 0))
  {
    v11 = *(v8 + 56) + 168 * v9;
    v12 = *(v11 + 144);
    v34 = *(v11 + 128);
    v35 = v12;
    v36 = *(v11 + 160);
    v13 = *(v11 + 80);
    v30 = *(v11 + 64);
    v31 = v13;
    v14 = *(v11 + 112);
    v32 = *(v11 + 96);
    v33 = v14;
    v15 = *(v11 + 16);
    v26 = *v11;
    v27 = v15;
    v16 = *(v11 + 48);
    v28 = *(v11 + 32);
    v29 = v16;
  }

  else
  {
    swift_endAccess();
    sub_21E8AE4FC(a1, a2 & 1, v24);
    v34 = v24[8];
    v35 = v24[9];
    v36 = v25;
    v30 = v24[4];
    v31 = v24[5];
    v32 = v24[6];
    v33 = v24[7];
    v26 = v24[0];
    v27 = v24[1];
    v28 = v24[2];
    v29 = v24[3];
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v4 + 200);
    *(v4 + 200) = 0x8000000000000000;
    sub_21E8F7A88(v24, a1, a2 & 1, isUniquelyReferenced_nonNull_native);
    *(v4 + 200) = v23;
  }

  swift_endAccess();
  v18 = v35;
  *(a3 + 128) = v34;
  *(a3 + 144) = v18;
  *(a3 + 160) = v36;
  v19 = v31;
  *(a3 + 64) = v30;
  *(a3 + 80) = v19;
  v20 = v33;
  *(a3 + 96) = v32;
  *(a3 + 112) = v20;
  v21 = v27;
  *a3 = v26;
  *(a3 + 16) = v21;
  result = v29;
  *(a3 + 32) = v28;
  *(a3 + 48) = result;
  return result;
}

double sub_21E8AE010()
{
  result = sub_21E8AD8E8(0, 1, 0, 0);
  v2 = (*(v0 + 120) + -0.3) / 0.68;
  if (v2 < 0.0)
  {
    if (result == 0.0)
    {
      return result;
    }

    v4 = 0.0;
    if (result <= 0.0)
    {
      v3 = 0.0;
      return result + v4 * (v3 - result);
    }

LABEL_12:
    v4 = 1.0 - v4;
    v3 = result;
    result = 0.0;
    return result + v4 * (v3 - result);
  }

  if (v2 <= 1.0)
  {
    if (result != 0.0)
    {
      v3 = 0.0;
      v4 = v2 + 0.0;
      if (result <= 0.0)
      {
        return result + v4 * (v3 - result);
      }

      goto LABEL_12;
    }
  }

  else if (result != 0.0)
  {
    v3 = 0.0;
    v4 = 1.0;
    if (result <= 0.0)
    {
      return result + v4 * (v3 - result);
    }

    goto LABEL_12;
  }

  return result;
}

double sub_21E8AE0D8()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 96);
    ObjectType = swift_getObjectType();
    v3 = (*(v1 + 48))(v0, ObjectType, v1);
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0;
  }

  result = 0.0;
  if (*(v0 + 128) < v3)
  {
    result = sub_21E8AD8E8(1, 1, 0, 0);
    v5 = (*(v0 + 120) + -0.3) / 0.68;
    if (v5 >= 0.0)
    {
      if (v5 <= 1.0)
      {
        if (result == 0.0)
        {
          return result;
        }

        v7 = 0.0;
        v6 = v5 + 0.0;
        if (result <= 0.0)
        {
          return result + v6 * (v7 - result);
        }
      }

      else
      {
        if (result == 0.0)
        {
          return result;
        }

        v7 = 0.0;
        v6 = 1.0;
        if (result <= 0.0)
        {
          return result + v6 * (v7 - result);
        }
      }
    }

    else
    {
      if (result == 0.0)
      {
        return result;
      }

      v6 = 0.0;
      if (result <= 0.0)
      {
        v7 = 0.0;
        return result + v6 * (v7 - result);
      }
    }

    v6 = 1.0 - v6;
    v7 = result;
    result = 0.0;
    return result + v6 * (v7 - result);
  }

  return result;
}

uint64_t sub_21E8AE208(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  swift_beginAccess();
  v8 = *(v3 + 192);
  v31 = a2;
  if (!*(v8 + 16) || (v9 = sub_21E8F6848(a1, a2 & 1), (v10 & 1) == 0))
  {
    swift_endAccess();
    v17 = 0;
    v16 = 0;
    v15 = 0;
    v14 = 0;
    LOBYTE(v33) = 1;
    v18 = 1;
    v19 = 1;
    v20 = 0uLL;
    v21 = 0uLL;
LABEL_6:
    v12 = *a3;
    v22 = *(a3 + 8);
    if ((v18 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v30 = a1;
  v11 = *(v8 + 56) + 96 * v9;
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = *(v11 + 16);
  v15 = *(v11 + 24);
  v28 = *(v11 + 56);
  v29 = *(v11 + 40);
  v16 = *(v11 + 72);
  v17 = *(v11 + 80);
  v18 = *(v11 + 32);
  v19 = *(v11 + 88);
  swift_endAccess();
  if (v13)
  {
    a1 = v30;
    v21 = v28;
    v20 = v29;
    goto LABEL_6;
  }

  a1 = v30;
  v21 = v28;
  v20 = v29;
  v22 = 0;
  if ((v18 & 1) == 0)
  {
LABEL_7:
    v23 = 0;
    v24 = 0;
    v25 = v31;
    if ((v19 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

LABEL_10:
  v14 = a3[2];
  v15 = a3[3];
  v23 = *(a3 + 32);
  if ((v19 & 1) == 0)
  {
    v24 = 0;
    v25 = v31;
    goto LABEL_14;
  }

  v25 = v31;
LABEL_12:
  v21 = *(a3 + 7);
  v20 = *(a3 + 5);
  v16 = a3[9];
  v17 = a3[10];
  v24 = *(a3 + 88);
LABEL_14:
  *&v33 = v12;
  BYTE8(v33) = v22;
  v34 = v14;
  v35 = v15;
  v36 = v23;
  v37 = v20;
  v38 = v21;
  v39 = v16;
  v40 = v17;
  v41 = v24;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = *(v4 + 192);
  *(v4 + 192) = 0x8000000000000000;
  sub_21E8F7BE4(&v33, a1, v25 & 1, isUniquelyReferenced_nonNull_native);
  *(v4 + 192) = v32;
  return swift_endAccess();
}

uint64_t sub_21E8AE3F4()
{
  swift_beginAccess();
  if (*(*(v0 + 200) + 16))
  {
    swift_isUniquelyReferenced_nonNull_native();
    v2 = *(v0 + 200);
    *(v0 + 200) = 0x8000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED6CC8);
    sub_21E92A928();
    *(v0 + 200) = v2;
  }

  swift_endAccess();
  swift_beginAccess();
  if (*(*(v0 + 32) + 16))
  {
    swift_isUniquelyReferenced_nonNull_native();
    v3 = *(v0 + 32);
    *(v0 + 32) = 0x8000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED6CC0);
    sub_21E92A928();
    *(v0 + 32) = v3;
  }

  return swift_endAccess();
}

__n128 sub_21E8AE4FC@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if ((a2 & 1) == 0)
  {
    v6 = *(v3 + 128);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v3 + 96);
      ObjectType = swift_getObjectType();
      v9 = (*(v7 + 48))(v3, ObjectType, v7);
      swift_unknownObjectRelease();
      if (v9 < v6)
      {
        v6 = v9;
      }
    }

    else if (v6 > 0)
    {
      if (a1 < 0)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    if (v6 > a1)
    {
LABEL_8:
      sub_21E8AED70(v19, a1);
      goto LABEL_20;
    }

LABEL_12:
    v10 = *(v3 + 128);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = *(v3 + 96);
      v12 = swift_getObjectType();
      v13 = (*(v11 + 48))(v3, v12, v11);
      swift_unknownObjectRelease();
      if (v13 < v10)
      {
        v10 = v13;
      }
    }

    else if (v10 > 0)
    {
      if (!a1)
      {
        goto LABEL_16;
      }

      goto LABEL_19;
    }

    if (v10 == a1)
    {
LABEL_16:
      sub_21E8AF348(a1, v19);
      goto LABEL_20;
    }

LABEL_19:
    sub_21E8AF964(a1, v19);
    goto LABEL_20;
  }

  if (a1)
  {
    sub_21E8B00D8(v19);
  }

  else
  {
    sub_21E8AE6AC(v19);
  }

LABEL_20:
  v14 = v19[9];
  *(a3 + 128) = v19[8];
  *(a3 + 144) = v14;
  *(a3 + 160) = v20;
  v15 = v19[5];
  *(a3 + 64) = v19[4];
  *(a3 + 80) = v15;
  v16 = v19[7];
  *(a3 + 96) = v19[6];
  *(a3 + 112) = v16;
  v17 = v19[1];
  *a3 = v19[0];
  *(a3 + 16) = v17;
  result = v19[3];
  *(a3 + 32) = v19[2];
  *(a3 + 48) = result;
  return result;
}

void sub_21E8AE6AC(uint64_t a1@<X8>)
{
  v2 = v1;
  if (!swift_unknownObjectWeakLoadStrong() || (v4 = *(v1 + 96), ObjectType = swift_getObjectType(), v6 = (*(v4 + 48))(v1, ObjectType, v4), swift_unknownObjectRelease(), v6 < 1))
  {
    t1.a = 1.0;
    t1.b = 0.0;
    t1.c = 0.0;
    t1.d = 1.0;
    t1.tx = 0.0;
    t1.ty = 0.0;
    IsIdentity = CGAffineTransformIsIdentity(&t1);
    v21 = 1.0;
    if (IsIdentity)
    {
      v22 = 0;
      v23 = 0.0;
      v24 = 0.0;
      v25 = 2;
      v26 = 0.0;
      v27 = 0.0;
      v28 = 0.0;
      v29 = 0.0;
      c = 0.0;
      d = 1.0;
      tx = 0.0;
      ty = 0.0;
      v34 = 0.0;
      v35 = 0.0;
      y = 0.0;
      width = 0.0;
      height = 0.0;
    }

    else
    {
      t1.a = 1.0;
      t1.b = 0.0;
      t1.c = 0.0;
      t1.d = 1.0;
      t1.tx = 0.0;
      t1.ty = 0.0;
      v23 = 0.0;
      v91.origin.x = 0.0;
      v91.origin.y = 0.0;
      v91.size.width = 0.0;
      v91.size.height = 0.0;
      v92 = CGRectApplyAffineTransform(v91, &t1);
      x = v92.origin.x;
      y = v92.origin.y;
      width = v92.size.width;
      height = v92.size.height;
      v40 = CGRectGetHeight(v92);
      v93.origin.x = 0.0;
      v93.origin.y = 0.0;
      v93.size.width = 0.0;
      v93.size.height = 0.0;
      v41 = CGRectGetHeight(v93);
      v21 = 1.0;
      v35 = x;
      v22 = 0;
      v24 = (v40 - v41) * 0.5 + 0.0;
      v25 = 2;
      v26 = 0.0;
      v27 = 0.0;
      v28 = 0.0;
      v29 = 0.0;
      c = 0.0;
      d = 1.0;
      tx = 0.0;
      ty = 0.0;
      v34 = 0.0;
    }

    goto LABEL_58;
  }

  v7 = *(v1 + 168);
  v8 = sub_21E8AD8E8(0, 1, 0, 0);
  v9 = CGRectGetWidth(*(v1 + 136));
  v90.origin.x = 0.0;
  v90.origin.y = 0.0;
  v10 = v7;
  v90.size.width = v7;
  rect = v8;
  v90.size.height = v8;
  v11 = CGRectGetHeight(v90);
  v12 = *(v1 + 184);
  swift_beginAccess();
  v13 = *(v1 + 192);
  if (*(v13 + 16) && (v14 = sub_21E8F6848(0, 1), (v15 & 1) != 0))
  {
    v16 = *(v13 + 56) + 96 * v14;
    v17 = *(v16 + 16);
    v18 = *(v16 + 24);
    v88 = 0;
    v77 = v18;
    v19 = *(v16 + 32);
    swift_endAccess();
  }

  else
  {
    LOBYTE(t2.a) = 1;
    v88 = 1;
    swift_endAccess();
    v17 = 0;
    v19 = 1;
    v77 = 0.0;
  }

  swift_beginAccess();
  v42 = *(v2 + 192);
  if (!*(v42 + 16))
  {
    LOBYTE(t2.a) = 1;
    v87 = 1;
LABEL_16:
    swift_endAccess();
    v47 = 1.0;
    goto LABEL_19;
  }

  v43 = sub_21E8F6848(0, 1);
  if ((v44 & 1) == 0)
  {
    LOBYTE(t2.a) = 1;
    v87 = 1;
    goto LABEL_16;
  }

  v45 = *(v42 + 56) + 96 * v43;
  v46 = *v45;
  LOBYTE(v45) = *(v45 + 8);
  v87 = 0;
  if (v45)
  {
    v47 = 1.0;
  }

  else
  {
    v47 = v46;
  }

  swift_endAccess();
LABEL_19:
  v48 = 0.010001;
  if (v47 != 0.010001)
  {
    v49 = (*(v2 + 120) + -0.3) / 0.68;
    v50 = v49 + 0.0;
    if (v49 + 0.0 > 1.0)
    {
      v50 = 1.0;
    }

    v51 = v50 / 0.6 + 0.0;
    if (v49 >= 0.0)
    {
      v52 = v51;
    }

    else
    {
      v52 = 0.0;
    }

    if (v52 <= 1.0)
    {
      v53 = v52;
    }

    else
    {
      v53 = 1.0;
    }

    if (v52 >= 0.0)
    {
      v54 = v53;
    }

    else
    {
      v54 = 0.0;
    }

    v55 = 0.010001;
    v56 = fmax(v47, 0.010001);
    if (v47 <= 0.010001)
    {
      v55 = v47;
    }

    else
    {
      v54 = 1.0 - v54;
    }

    v48 = v55 + v54 * (v56 - v55);
  }

  v57 = v11 * 0.5;
  if (*(v2 + 176))
  {
    v25 = 1;
  }

  else
  {
    v25 = 2;
  }

  swift_beginAccess();
  v58 = *(v2 + 192);
  if (*(v58 + 16) && (v59 = sub_21E8F6848(0, 1), (v60 & 1) != 0))
  {
    v61 = *(v58 + 56) + 96 * v59;
    v62 = *(v61 + 56);
    v63 = *(v61 + 40);
    v65 = *(v61 + 72);
    v64 = *(v61 + 80);
    v66 = *(v61 + 88);
    v86 = 0;
    v79 = v62;
    v81 = v63;
    swift_endAccess();
    if ((v66 & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else
  {
    swift_endAccess();
  }

  v79 = xmmword_21E946900;
  v81 = xmmword_21E946910;
  v65 = 0.0;
  v64 = 0.0;
LABEL_45:
  v75 = v9 * 0.5;
  v73 = v57 + v12;
  v94.origin.x = 0.0;
  v94.origin.y = 0.0;
  v94.size.width = v7;
  v94.size.height = rect;
  v67 = CGRectGetHeight(v94);
  CGAffineTransformMakeTranslation(&t1, 0.0, v67 * 0.5);
  CGAffineTransformScale(&t2, &t1, 1.0, 1.0);
  t1 = t2;
  CGAffineTransformTranslate(&t2, &t1, 0.0, v67 * -0.5);
  t1 = t2;
  *&t2.a = v81;
  *&t2.c = v79;
  t2.tx = v65;
  t2.ty = v64;
  CGAffineTransformConcat(&v84, &t1, &t2);
  a = v84.a;
  b = v84.b;
  c = v84.c;
  d = v84.d;
  tx = v84.tx;
  ty = v84.ty;
  v70 = 1.0;
  if (v48 <= 1.0)
  {
    v70 = v48;
  }

  if (v48 < 0.0)
  {
    v70 = 0.0;
  }

  v74 = v70;
  v71 = v77;
  v82 = 0.0;
  if (v19)
  {
    v71 = 0.0;
  }

  v78 = v71;
  if (v19)
  {
    v22 = 0;
  }

  else
  {
    v22 = v17;
  }

  t1 = v84;
  v80 = v84.a;
  v76 = v84.b;
  if (CGAffineTransformIsIdentity(&t1))
  {
    y = 0.0;
    width = v10;
    v27 = rect;
    height = rect;
    v26 = v10;
    v24 = v73;
  }

  else
  {
    t1.a = a;
    t1.b = b;
    t1.c = c;
    t1.d = d;
    t1.tx = tx;
    t1.ty = ty;
    v95.origin.x = 0.0;
    v95.origin.y = 0.0;
    v95.size.width = v10;
    v95.size.height = rect;
    v96 = CGRectApplyAffineTransform(v95, &t1);
    y = v96.origin.y;
    width = v96.size.width;
    height = v96.size.height;
    v82 = v96.origin.x;
    v72 = CGRectGetHeight(v96);
    v97.origin.x = 0.0;
    v97.origin.y = 0.0;
    v97.size.width = v10;
    v97.size.height = rect;
    v24 = v73 + (v72 - CGRectGetHeight(v97)) * 0.5;
    v26 = v10;
    v27 = rect;
  }

  v29 = v76;
  v23 = v75 + 0.0;
  v35 = v82;
  v34 = v78;
  v21 = v80;
  v28 = v74;
LABEL_58:
  *a1 = v23;
  *(a1 + 8) = v24;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v26;
  *(a1 + 40) = v27;
  *(a1 + 48) = v28;
  *(a1 + 56) = v25;
  *(a1 + 57) = LODWORD(t1.a);
  *(a1 + 60) = *(&t1.a + 3);
  *(a1 + 64) = v21;
  *(a1 + 72) = v29;
  *(a1 + 80) = c;
  *(a1 + 88) = d;
  *(a1 + 96) = tx;
  *(a1 + 104) = ty;
  *(a1 + 112) = v22;
  *(a1 + 120) = v34;
  *(a1 + 128) = 0;
  *(a1 + 136) = v35;
  *(a1 + 144) = y;
  *(a1 + 152) = width;
  *(a1 + 160) = height;
}

double sub_21E8AED70@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  if (!a1)
  {
    goto LABEL_5;
  }

  v6 = a1 - 1;
  if (__OFSUB__(a1, 1))
  {
    __break(1u);
LABEL_5:
    v6 = 0;
  }

  sub_21E8ADE68(v6, a1 == 0, &v88);
  v7 = sub_21E8AD8E8(a1, 0, *(v2 + 176), 0);
  v8 = *(v2 + 168);
  sub_21E8B0B14(a1, 0, 0, 1);
  v82 = v8;
  v83 = v9;
  v94.origin.x = 0.0;
  v94.origin.y = 0.0;
  v94.size.width = v8;
  v81 = v7;
  v94.size.height = v7;
  Height = CGRectGetHeight(v94);
  if (a1)
  {
    v95.size.width = v92;
    v95.size.height = v93;
    v79 = v88;
    v95.origin.x = v90 + v88 - v92 * 0.5;
    v95.origin.y = v91 + v89 - v93 * 0.5;
    MaxY = CGRectGetMaxY(v95);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v12 = *(v2 + 96);
      ObjectType = swift_getObjectType();
      v78 = (*(v12 + 24))(v2, v6, ObjectType, v12);
      swift_unknownObjectRelease();
      goto LABEL_22;
    }

    goto LABEL_10;
  }

  v14 = *(v2 + 120);
  v96.size.width = v92;
  v96.size.height = v93;
  v79 = v88;
  v96.origin.x = v90 + v88 - v92 * 0.5;
  v96.origin.y = v91 + v89 - v93 * 0.5;
  MaxY = CGRectGetMaxY(v96);
  if (MaxY == 0.0)
  {
LABEL_10:
    v78 = 0.0;
    goto LABEL_22;
  }

  v15 = (v14 + -0.3) / 0.68;
  v16 = v15 + 0.0;
  if (v15 + 0.0 > 1.0)
  {
    v16 = 1.0;
  }

  if (v15 >= 0.0)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0.0;
  }

  if (MaxY > 0.0)
  {
    v17 = 1.0 - v17;
  }

  v18 = fmax(MaxY, 0.0);
  v78 = 0.0;
  if (MaxY <= 0.0)
  {
    v19 = MaxY;
  }

  else
  {
    v19 = 0.0;
  }

  MaxY = v19 + v17 * (v18 - v19);
LABEL_22:
  if (swift_unknownObjectWeakLoadStrong())
  {
    v20 = *(v2 + 96);
    v21 = swift_getObjectType();
    v77 = (*(v20 + 24))(v2, a1, v21, v20);
    swift_unknownObjectRelease();
  }

  else
  {
    v77 = 0.0;
  }

  swift_beginAccess();
  v22 = *(v2 + 192);
  if (*(v22 + 16) && (v23 = sub_21E8F6848(a1, 0), (v24 & 1) != 0))
  {
    v25 = *(v22 + 56) + 96 * v23;
    v26 = *(v25 + 16);
    v27 = *(v25 + 24);
    v87 = 0;
    v76 = v27;
    v28 = *(v25 + 32);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v26 = 0;
    v28 = 1;
    v76 = 0.0;
  }

  swift_beginAccess();
  v29 = *(v3 + 192);
  if (*(v29 + 16) && (v30 = sub_21E8F6848(a1, 0), (v31 & 1) != 0))
  {
    v32 = *(v29 + 56) + 96 * v30;
    v33 = *v32;
    LOBYTE(v32) = *(v32 + 8);
    v86 = 0;
    if (v32)
    {
      v33 = 1.0;
    }

    v75 = v33;
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v75 = 1.0;
  }

  swift_beginAccess();
  v34 = *(v3 + 192);
  if (*(v34 + 16) && (v35 = sub_21E8F6848(a1, 0), (v36 & 1) != 0))
  {
    v37 = *(v34 + 56) + 96 * v35;
    v39 = *(v37 + 40);
    v38 = *(v37 + 48);
    v40 = *(v37 + 64);
    v80 = *(v37 + 56);
    v41 = *(v37 + 72);
    v42 = *(v37 + 80);
    v43 = *(v37 + 88);
    v85 = 0;
    v44 = v40;
    v45 = MaxY;
    v46 = v41;
    swift_endAccess();
    v47 = v46;
    MaxY = v45;
    v48 = v42;
    v49 = v44;
    if ((v43 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  else
  {
    swift_endAccess();
  }

  v38 = 0.0;
  v39 = 1.0;
  v80 = 0.0;
  v49 = 1.0;
  v47 = 0.0;
  v48 = 0.0;
LABEL_41:
  if (*(v3 + 176) == 1 && *(v3 + 120) > 0.5)
  {
    v50 = 0;
  }

  else
  {
    v50 = 2;
  }

  v51 = v83 + Height * 0.5 + MaxY;
  v84.a = v39;
  v84.b = v38;
  v52 = v80;
  v84.c = v80;
  v84.d = v49;
  v84.tx = v47;
  v84.ty = v48;
  v53 = v49;
  v54 = v47;
  if (CGAffineTransformIsIdentity(&v84))
  {
    x = 0.0;
    v56 = v39;
    y = 0.0;
    v58 = v38;
    v59 = v53;
    v61 = v81;
    v60 = v82;
  }

  else
  {
    v84.a = v39;
    v84.b = v38;
    v84.c = v80;
    v84.d = v53;
    v84.tx = v54;
    v84.ty = v48;
    v97.origin.x = 0.0;
    v97.origin.y = 0.0;
    v97.size.width = v82;
    v73 = v38;
    v97.size.height = v81;
    v98 = CGRectApplyAffineTransform(v97, &v84);
    x = v98.origin.x;
    v74 = v39;
    y = v98.origin.y;
    width = v98.size.width;
    v72 = v53;
    v61 = v98.size.height;
    v63 = CGRectGetHeight(v98);
    v99.size.height = v81;
    v99.size.width = v82;
    v64 = v48;
    v65 = v63;
    v99.origin.x = 0.0;
    v99.origin.y = 0.0;
    v66 = CGRectGetHeight(v99);
    v59 = v72;
    v58 = v73;
    v56 = v74;
    v60 = width;
    v67 = v65 - v66;
    v48 = v64;
    v52 = v80;
    v51 = v51 + v67 * 0.5;
  }

  v68 = v76;
  if (v28)
  {
    v68 = 0.0;
    v69 = 0;
  }

  else
  {
    v69 = v26;
  }

  v70 = 1.0;
  *a2 = v79 - v78 + v77;
  *(a2 + 8) = v51;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  if (v75 <= 1.0)
  {
    v70 = v75;
  }

  if (v75 < 0.0)
  {
    v70 = 0.0;
  }

  *(a2 + 32) = v82;
  *(a2 + 40) = v81;
  *(a2 + 48) = v70;
  *(a2 + 56) = v50;
  *(a2 + 64) = v56;
  *(a2 + 72) = v58;
  *(a2 + 80) = v52;
  *(a2 + 88) = v59;
  *(a2 + 96) = v54;
  *(a2 + 104) = v48;
  *(a2 + 112) = v69;
  *(a2 + 120) = v68;
  result = v83;
  *(a2 + 128) = v83;
  *(a2 + 136) = x;
  *(a2 + 144) = y;
  *(a2 + 152) = v60;
  *(a2 + 160) = v61;
  return result;
}

void sub_21E8AF348(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  if (a1 && __OFSUB__(a1, 1))
  {
    __break(1u);
    return;
  }

  sub_21E8ADE68(&v101);
  v6 = sub_21E8AD8E8(a1, 0, *(v2 + 176), 0);
  v7 = *(v2 + 168);
  v8 = *(v2 + 120) + -0.5 + *(v2 + 120) + -0.5;
  v9 = 1.0;
  if (v8 <= 1.0)
  {
    v10 = *(v2 + 120) + -0.5 + *(v2 + 120) + -0.5;
  }

  else
  {
    v10 = 1.0;
  }

  v11 = v10 + 0.0;
  if (v8 >= 0.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0.0;
  }

  sub_21E8B0FE4(a1, 0.8);
  if (v13 != 1.0)
  {
    v14 = fmax(v13, 1.0);
    v15 = 1.0 - v12;
    if (v13 > 1.0)
    {
      v13 = 1.0;
    }

    else
    {
      v15 = v12;
    }

    v9 = v13 + v15 * (v14 - v13);
  }

  v108.origin.x = 0.0;
  v108.origin.y = 0.0;
  v108.size.width = v7;
  v108.size.height = v6;
  Height = CGRectGetHeight(v108);
  CGAffineTransformMakeTranslation(&v107, 0.0, Height * 0.5);
  CGAffineTransformScale(&t1, &v107, v9, v9);
  v107 = t1;
  CGAffineTransformTranslate(&t1, &v107, 0.0, -(Height * v9) * 0.5);
  v90 = *&t1.c;
  v84 = *&t1.a;
  ty = t1.ty;
  tx = t1.tx;
  sub_21E8B0B14(a1, 0, 0, 1);
  v18 = v17;
  v19 = v102;
  v109.size.width = v105;
  v109.size.height = v106;
  v93 = v101;
  v109.origin.x = v103 + v101 - v105 * 0.5;
  v109.origin.y = v104 + v102 - v106 * 0.5;
  v20 = v19 + CGRectGetHeight(v109) * 0.5;
  v110.origin.x = 0.0;
  v110.origin.y = 0.0;
  v110.size.width = v7;
  v110.size.height = v6;
  v94 = v18;
  v21 = v18 + v20 + CGRectGetHeight(v110) * 0.5;
  sub_21E8ADE68(&v107);
  v111.size = *&v107.tx;
  v111.origin.x = v107.c + v107.a - v107.tx * 0.5;
  v111.origin.y = v107.d + v107.b - v107.ty * 0.5;
  MaxY = CGRectGetMaxY(v111);
  v112.origin.x = 0.0;
  v112.origin.y = 0.0;
  v112.size.width = v7;
  v112.size.height = v6;
  v23 = v9 * (CGRectGetHeight(v112) * 0.5);
  v24 = MaxY - v23;
  if (MaxY - v23 == v21)
  {
    v92 = MaxY - v23;
  }

  else
  {
    v25 = v21 < v24;
    if (v21 >= v24)
    {
      v26 = MaxY - v23;
    }

    else
    {
      v26 = v21;
    }

    if (v21 > v24)
    {
      v24 = v21;
    }

    v27 = 1.0 - v12;
    if (!v25)
    {
      v27 = v12;
    }

    v92 = v26 + v27 * (v24 - v26);
  }

  swift_beginAccess();
  v28 = *(v2 + 192);
  if (*(v28 + 16) && (v29 = sub_21E8F6848(a1, 0), (v30 & 1) != 0))
  {
    v31 = *(v28 + 56) + 96 * v29;
    v32 = *(v31 + 16);
    v33 = *(v31 + 24);
    v99 = 0;
    v83 = v33;
    v34 = *(v31 + 32);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v32 = 0;
    v34 = 1;
    v83 = 0.0;
  }

  swift_beginAccess();
  v35 = *(v3 + 192);
  if (*(v35 + 16) && (v36 = sub_21E8F6848(a1, 0), (v37 & 1) != 0))
  {
    v38 = *(v35 + 56) + 96 * v36;
    v39 = *v38;
    LOBYTE(v38) = *(v38 + 8);
    v98 = 0;
    if (v38)
    {
      v39 = 1.0;
    }

    v82 = v39;
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v82 = 1.0;
  }

  v40 = v7;
  sub_21E8B0FE4(a1, v12);
  v81 = v41;
  swift_beginAccess();
  v42 = *(v3 + 192);
  if (*(v42 + 16))
  {
    v43 = v6;
    v44 = sub_21E8F6848(a1, 0);
    if (v45)
    {
      v46 = *(v42 + 56) + 96 * v44;
      v47 = *(v46 + 56);
      v48 = *(v46 + 40);
      v49 = *(v46 + 72);
      v50 = *(v46 + 80);
      v51 = *(v46 + 88);
      v97 = 0;
      v78 = v47;
      v79 = v48;
      swift_endAccess();
      v53 = v78;
      v52 = v79;
      if ((v51 & 1) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_40;
    }
  }

  else
  {
    v43 = v6;
  }

  swift_endAccess();
LABEL_40:
  v53 = xmmword_21E946900;
  v52 = xmmword_21E946910;
  v49 = 0.0;
  v50 = 0.0;
LABEL_41:
  *&t1.a = v84;
  *&t1.c = v90;
  t1.tx = tx;
  t1.ty = ty;
  *&t2.c = v53;
  *&t2.a = v52;
  t2.tx = v49;
  t2.ty = v50;
  CGAffineTransformConcat(&v95, &t1, &t2);
  a = v95.a;
  b = v95.b;
  c = v95.c;
  d = v95.d;
  v58 = v95.tx;
  v59 = v95.ty;
  v60 = *(v3 + 176);
  t1 = v95;
  if (CGAffineTransformIsIdentity(&t1))
  {
    v61 = b;
    x = 0.0;
    v63 = c;
    y = 0.0;
    v65 = a;
    v66 = v40;
    v67 = v40;
    v68 = v43;
    v69 = v92;
  }

  else
  {
    t1.a = a;
    t1.b = b;
    t1.c = c;
    t1.d = d;
    t1.tx = v58;
    t1.ty = v59;
    v113.origin.x = 0.0;
    v113.origin.y = 0.0;
    v87 = a;
    v66 = v40;
    v113.size.width = v40;
    v113.size.height = v43;
    v114 = CGRectApplyAffineTransform(v113, &t1);
    v85 = b;
    x = v114.origin.x;
    v80 = c;
    y = v114.origin.y;
    v89 = v58;
    v91 = d;
    width = v114.size.width;
    v71 = v114.size.height;
    v72 = CGRectGetHeight(v114);
    v115.origin.x = 0.0;
    v115.origin.y = 0.0;
    v115.size.width = v66;
    v115.size.height = v43;
    v73 = CGRectGetHeight(v115);
    v63 = v80;
    v61 = v85;
    v68 = v71;
    v65 = v87;
    v58 = v89;
    v67 = width;
    d = v91;
    v69 = v92 + (v72 - v73) * 0.5;
  }

  v74 = v83;
  if (v34)
  {
    v74 = 0.0;
    v75 = 0;
  }

  else
  {
    v75 = v32;
  }

  v76 = 1.0;
  *a2 = v93;
  *(a2 + 8) = v69;
  if (v82 * v81 <= 1.0)
  {
    v76 = v82 * v81;
  }

  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  if (v82 * v81 >= 0.0)
  {
    v77 = v76;
  }

  else
  {
    v77 = 0.0;
  }

  *(a2 + 32) = v66;
  *(a2 + 40) = v43;
  *(a2 + 48) = v77;
  *(a2 + 56) = v60 ^ 1;
  *(a2 + 64) = v65;
  *(a2 + 72) = v61;
  *(a2 + 80) = v63;
  *(a2 + 88) = d;
  *(a2 + 96) = v58;
  *(a2 + 104) = v59;
  *(a2 + 112) = v75;
  *(a2 + 120) = v74;
  *(a2 + 128) = v94;
  *(a2 + 136) = x;
  *(a2 + 144) = y;
  *(a2 + 152) = v67;
  *(a2 + 160) = v68;
}

double sub_21E8AF964@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  if (!a1)
  {
    goto LABEL_5;
  }

  v6 = a1 - 1;
  if (__OFSUB__(a1, 1))
  {
    __break(1u);
LABEL_5:
    v6 = 0;
  }

  sub_21E8ADE68(v132);
  v7 = sub_21E8AD8E8(a1, 0, *(v2 + 176), 0);
  v8 = *(v2 + 168);
  v9 = *(v2 + 120);
  v10 = (v9 + -0.3) / 0.65;
  v11 = 1.0;
  if (v10 <= 1.0)
  {
    v12 = (v9 + -0.3) / 0.65;
  }

  else
  {
    v12 = 1.0;
  }

  v13 = v12 + 0.0;
  v120 = v13;
  if (v10 >= 0.0)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0.0;
  }

  v15 = (v9 + -0.85) / 0.1;
  if (v15 <= 1.0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1.0;
  }

  v17 = v16 + 0.0;
  if (v15 >= 0.0)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0.0;
  }

  v107 = v14;
  v19 = v14 + 0.3;
  v106 = a1 * 0.1;
  v20 = sinf((v19 - v106) * 1.5708);
  v21 = v20;
  if (v20 > 1.0)
  {
    v21 = 1.0;
  }

  if (v20 >= 0.0)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0.0;
  }

  if (v22 != 1.0)
  {
    v11 = v22 + v18 * (fmax(v22, 1.0) - v22);
  }

  v103 = v18;
  v134.origin.x = 0.0;
  v134.origin.y = 0.0;
  v134.size.width = v8;
  v134.size.height = v7;
  Height = CGRectGetHeight(v134);
  CGAffineTransformMakeTranslation(&t1, 0.0, Height * 0.5);
  CGAffineTransformScale(&t2, &t1, v11, v11);
  t1 = t2;
  CGAffineTransformTranslate(&t2, &t1, 0.0, -(Height * v11) * 0.5);
  v116 = *&t2.c;
  v110 = *&t2.a;
  ty = t2.ty;
  tx = t2.tx;
  sub_21E8B0B14(a1, 0, 0x3FF0000000000000, 0);
  v25 = v24;
  v122 = v132[0];
  v124 = v8;
  v125 = v132[1];
  v26 = v125 + CGRectGetHeight(v133) * 0.5;
  v135.origin.x = 0.0;
  v135.origin.y = 0.0;
  v135.size.width = v8;
  v135.size.height = v7;
  v123 = v25;
  v27 = v25 + CGRectGetHeight(v135) * 0.5;
  if (a1)
  {
    v28 = 0.0;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v29 = *(v2 + 96);
      ObjectType = swift_getObjectType();
      v28 = (*(v29 + 24))(v2, v6, ObjectType, v29);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v28 = 0.0;
  }

  v31 = v26 + v27;
  v32 = 0.0;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v33 = *(v2 + 96);
    v34 = swift_getObjectType();
    v32 = (*(v33 + 24))(v2, a1, v34, v33);
    swift_unknownObjectRelease();
  }

  v35 = v125;
  if (v125 != v31)
  {
    v36 = *(v2 + 120);
    if (v31 >= v125)
    {
      v37 = v125;
    }

    else
    {
      v37 = v31;
    }

    if (v31 > v125)
    {
      v35 = v31;
    }

    if (v31 < v125)
    {
      v36 = 1.0 - v36;
    }

    v125 = v37 + (v35 - v37) * v36;
  }

  swift_beginAccess();
  v38 = *(v2 + 192);
  if (*(v38 + 16) && (v39 = sub_21E8F6848(a1, 0), (v40 & 1) != 0))
  {
    v41 = *(v38 + 56) + 96 * v39;
    v42 = *(v41 + 16);
    v43 = *(v41 + 24);
    v129 = 0;
    v109 = v43;
    v44 = *(v41 + 32);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v42 = 0;
    v44 = 1;
    v109 = 0.0;
  }

  swift_beginAccess();
  v45 = *(v3 + 192);
  if (*(v45 + 16) && (v46 = sub_21E8F6848(a1, 0), (v47 & 1) != 0))
  {
    v48 = *(v45 + 56) + 96 * v46;
    v49 = *v48;
    LOBYTE(v48) = *(v48 + 8);
    v128 = 0;
    if (v48)
    {
      v49 = 1.0;
    }

    v104 = v49;
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v104 = 1.0;
  }

  v119 = v28;
  swift_beginAccess();
  v50 = *(v3 + 192);
  v118 = v32;
  v105 = v7;
  if (!*(v50 + 16) || (v51 = sub_21E8F6848(a1, 0), (v52 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_55;
  }

  v53 = *(v50 + 56) + 96 * v51;
  v54 = *(v53 + 56);
  v55 = *(v53 + 40);
  v56 = *(v53 + 72);
  v57 = *(v53 + 80);
  v58 = *(v53 + 88);
  v127 = 0;
  v101 = v54;
  v102 = v55;
  swift_endAccess();
  v60 = v101;
  v59 = v102;
  if (v58)
  {
LABEL_55:
    v60 = xmmword_21E946900;
    v59 = xmmword_21E946910;
    v56 = 0.0;
    v57 = 0.0;
  }

  *&t1.a = v110;
  *&t1.c = v116;
  t1.tx = tx;
  t1.ty = ty;
  *&t2.a = v59;
  *&t2.c = v60;
  t2.tx = v56;
  t2.ty = v57;
  CGAffineTransformConcat(&v126, &t1, &t2);
  a = v126.a;
  b = v126.b;
  c = v126.c;
  d = v126.d;
  v66 = v126.tx;
  v65 = v126.ty;
  v67 = fabs(v120);
  v68 = v10 < 0.0;
  x = 0.0;
  if (v68)
  {
    v67 = 0.0;
  }

  v70 = COERCE_DOUBLE(*&v107 & 0x8000000000000000 | *&v67);
  v71 = sinf((v70 - v106) * 1.5708);
  v72 = v71;
  v73 = 1.0;
  if (v71 > 1.0)
  {
    v72 = 1.0;
  }

  if (v71 >= 0.0)
  {
    v74 = v72;
  }

  else
  {
    v74 = 0.0;
  }

  v75 = v74 * v104;
  if (v75 != 1.0)
  {
    v76 = fmax(v75, 1.0);
    v77 = 1.0 - v103;
    if (v75 > 1.0)
    {
      v75 = 1.0;
    }

    else
    {
      v77 = v103;
    }

    v73 = v75 + v77 * (v76 - v75);
  }

  v78 = *(v3 + 176);
  t1.a = a;
  t1.b = b;
  t1.c = c;
  t1.d = d;
  t1.tx = v66;
  t1.ty = v65;
  IsIdentity = CGAffineTransformIsIdentity(&t1);
  v80 = c;
  v81 = d;
  if (IsIdentity)
  {
    y = 0.0;
    v83 = v124;
    v84 = b;
    width = v124;
    v86 = v80;
    v87 = v81;
    v88 = v65;
    v89 = v105;
    v90 = a;
    v91 = v105;
    v92 = v125;
  }

  else
  {
    t1.a = a;
    t1.b = b;
    t1.c = c;
    t1.d = d;
    t1.tx = v66;
    t1.ty = v65;
    v136.origin.x = 0.0;
    v136.origin.y = 0.0;
    v83 = v124;
    v136.size.width = v124;
    v115 = v81;
    v117 = c;
    v121 = v66;
    v113 = v65;
    v89 = v105;
    v136.size.height = v105;
    v137 = CGRectApplyAffineTransform(v136, &t1);
    x = v137.origin.x;
    y = v137.origin.y;
    v111 = b;
    width = v137.size.width;
    v108 = a;
    v91 = v137.size.height;
    v93 = CGRectGetHeight(v137);
    v138.origin.x = 0.0;
    v138.origin.y = 0.0;
    v138.size.width = v124;
    v138.size.height = v105;
    v94 = CGRectGetHeight(v138);
    v90 = v108;
    v84 = v111;
    v87 = v115;
    v86 = v117;
    v88 = v113;
    v95 = v93 - v94;
    v66 = v121;
    v92 = v125 + v95 * 0.5;
  }

  v96 = 0.0;
  v97 = v109;
  if (v44)
  {
    v97 = 0.0;
    v98 = 0;
  }

  else
  {
    v98 = v42;
  }

  v99 = 1.0;
  *a2 = v122 - v119 + v118;
  *(a2 + 8) = v92;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  if (v73 <= 1.0)
  {
    v99 = v73;
  }

  if (v73 >= 0.0)
  {
    v96 = v99;
  }

  *(a2 + 32) = v83;
  *(a2 + 40) = v89;
  *(a2 + 48) = v96;
  *(a2 + 56) = v78 ^ 1;
  *(a2 + 64) = v90;
  *(a2 + 72) = v84;
  *(a2 + 80) = v86;
  *(a2 + 88) = v87;
  *(a2 + 96) = v66;
  *(a2 + 104) = v88;
  *(a2 + 112) = v98;
  result = v123;
  *(a2 + 120) = v97;
  *(a2 + 128) = v123;
  *(a2 + 136) = x;
  *(a2 + 144) = y;
  *(a2 + 152) = width;
  *(a2 + 160) = v91;
  return result;
}

void sub_21E8B00D8(uint64_t a1@<X8>)
{
  v2 = v1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v1 + 96);
    ObjectType = swift_getObjectType();
    v6 = (*(v4 + 48))(v1, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0;
  }

  if (*(v1 + 128) >= v6 || (v7 = sub_21E8B09C0(1, 1), (v8 & 0x100) != 0))
  {
    v130.a = 1.0;
    v130.b = 0.0;
    v130.c = 0.0;
    v130.d = 1.0;
    v130.tx = 0.0;
    v130.ty = 0.0;
    IsIdentity = CGAffineTransformIsIdentity(&v130);
    v17 = 1.0;
    if (IsIdentity)
    {
      v18 = 0;
      v19 = 0.0;
      v20 = 0.0;
      v21 = 2;
      v22 = 0.0;
      v23 = 0.0;
      v24 = 0.0;
      v25 = 0.0;
      v26 = 0.0;
      v27 = 1.0;
      v28 = 0.0;
      v29 = 0.0;
      v30 = 0.0;
      v31 = 0.0;
      x = 0.0;
      y = 0.0;
      width = 0.0;
      height = 0.0;
    }

    else
    {
      v130.a = 1.0;
      v130.b = 0.0;
      v130.c = 0.0;
      v130.d = 1.0;
      v130.tx = 0.0;
      v130.ty = 0.0;
      v19 = 0.0;
      v132.origin.x = 0.0;
      v132.origin.y = 0.0;
      v132.size.width = 0.0;
      v132.size.height = 0.0;
      v133 = CGRectApplyAffineTransform(v132, &v130);
      x = v133.origin.x;
      y = v133.origin.y;
      width = v133.size.width;
      height = v133.size.height;
      v36 = CGRectGetHeight(v133);
      v134.origin.x = 0.0;
      v134.origin.y = 0.0;
      v134.size.width = 0.0;
      v134.size.height = 0.0;
      v37 = CGRectGetHeight(v134);
      v17 = 1.0;
      v18 = 0;
      v20 = (v36 - v37) * 0.5 + 0.0;
      v21 = 2;
      v22 = 0.0;
      v23 = 0.0;
      v24 = 0.0;
      v25 = 0.0;
      v26 = 0.0;
      v27 = 1.0;
      v28 = 0.0;
      v29 = 0.0;
      v30 = 0.0;
      v31 = 0.0;
    }

LABEL_99:
    *a1 = v19;
    *(a1 + 8) = v20;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = v22;
    *(a1 + 40) = v23;
    *(a1 + 48) = v24;
    *(a1 + 56) = v21;
    *(a1 + 57) = LODWORD(v126.a);
    *(a1 + 60) = *(&v126.a + 3);
    *(a1 + 64) = v17;
    *(a1 + 72) = v25;
    *(a1 + 80) = v26;
    *(a1 + 88) = v27;
    *(a1 + 96) = v28;
    *(a1 + 104) = v29;
    *(a1 + 112) = v18;
    *(a1 + 120) = v30;
    *(a1 + 128) = v31;
    *(a1 + 136) = x;
    *(a1 + 144) = y;
    *(a1 + 152) = width;
    *(a1 + 160) = height;
    return;
  }

  v9 = v7;
  v10 = v8;
  v11 = sub_21E8AD8E8(1, 1, 0, 0);
  v12 = *(v1 + 128);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v1 + 96);
    v14 = swift_getObjectType();
    v15 = (*(v13 + 48))(v1, v14, v13);
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0;
  }

  if (v15 >= v12)
  {
    v38 = v12;
  }

  else
  {
    v38 = v15;
  }

  v39 = sub_21E8AD8E8(v38, 0, 0, 0);
  sub_21E8ADE68(&v130);
  if (v39 >= v11)
  {
    v40 = v11;
  }

  else
  {
    v40 = v39;
  }

  if (v39 > v11)
  {
    v41 = v39;
  }

  else
  {
    v41 = v11;
  }

  v42 = 0.3;
  if (v39 < v11)
  {
    v42 = 0.7;
  }

  v43 = v40 + v42 * (v41 - v40);
  if (v11 == v39)
  {
    v43 = v11;
  }

  v44 = *(v1 + 120);
  if (v44 >= 0.6)
  {
    v50 = (v44 + -0.6) / 0.4;
    v51 = 1.0;
    if (v50 <= 1.0)
    {
      v51 = v50;
    }

    v47 = v50 < 0.0;
    v52 = 0.0;
    if (!v47)
    {
      v52 = v51;
    }

    v49 = v43 + (v39 - v43) * v52;
  }

  else
  {
    v45 = v44 / 0.6;
    v46 = 1.0;
    if (v45 <= 1.0)
    {
      v46 = v45;
    }

    v47 = v45 < 0.0;
    v48 = 0.0;
    if (!v47)
    {
      v48 = v46;
    }

    v49 = v11 + (v43 - v11) * v48;
  }

  v119 = v49;
  v118 = CGRectGetWidth(*&v130.c);
  v53 = *(v1 + 128);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v54 = *(v1 + 96);
    v55 = swift_getObjectType();
    v56 = (*(v54 + 48))(v1, v55, v54);
    swift_unknownObjectRelease();
  }

  else
  {
    v56 = 0;
  }

  if (v56 >= v53)
  {
    v57 = v53;
  }

  else
  {
    v57 = v56;
  }

  b = v130.b;
  a = v130.a;
  sub_21E8B0B14(v57, 0, 0, 1);
  v122 = v58;
  v59 = CGRectGetHeight(v131);
  v60 = 0.0;
  if ((v10 & 1) == 0 && swift_unknownObjectWeakLoadStrong())
  {
    v61 = *(v1 + 96);
    v62 = swift_getObjectType();
    v60 = (*(v61 + 24))(v1, v9, v62, v61);
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  v63 = *(v1 + 192);
  if (*(v63 + 16) && (v64 = sub_21E8F6848(1, 1), (v65 & 1) != 0))
  {
    v66 = *(v63 + 56) + 96 * v64;
    v67 = *(v66 + 16);
    v68 = *(v66 + 24);
    v129 = 0;
    v69 = *(v66 + 32);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v67 = 0;
    v69 = 1;
    v68 = 0.0;
  }

  swift_beginAccess();
  v70 = *(v2 + 192);
  if (*(v70 + 16) && (v71 = sub_21E8F6848(1, 1), (v72 & 1) != 0))
  {
    v73 = *(v70 + 56) + 96 * v71;
    v74 = *v73;
    LOBYTE(v73) = *(v73 + 8);
    v128 = 0;
    if (v73)
    {
      v75 = 1.0;
    }

    else
    {
      v75 = v74;
    }

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v75 = 1.0;
  }

  swift_beginAccess();
  v76 = *(v2 + 192);
  if (*(v76 + 16) && (v77 = sub_21E8F6848(1, 1), (v78 & 1) != 0))
  {
    v79 = *(v76 + 56) + 96 * v77;
    v80 = *(v79 + 40);
    v81 = *(v79 + 48);
    v82 = *(v79 + 56);
    v83 = *(v79 + 64);
    v84 = *(v79 + 72);
    v85 = *(v79 + 80);
    v86 = *(v79 + 88);
    v127 = 0;
    v87 = v80;
    v88 = v81;
    v89 = v82;
    v110 = v68;
    v112 = v60;
    v90 = v83;
    v91 = v84;
    swift_endAccess();
    v92 = v91;
    v93 = v90;
    v68 = v110;
    v60 = v112;
    if ((v86 & 1) == 0)
    {
      v123 = v92;
      v124 = v93;
      v120 = v89;
      v121 = v87;
      v125 = v88;
      goto LABEL_65;
    }
  }

  else
  {
    swift_endAccess();
  }

  v125 = 0.0;
  v120 = 0.0;
  v121 = 1.0;
  v123 = 0.0;
  v124 = 1.0;
  v85 = 0.0;
LABEL_65:
  v94 = *(v2 + 120) + -0.1 + *(v2 + 120) + -0.1;
  v95 = 1.0;
  if (v94 <= 1.0)
  {
    v95 = *(v2 + 120) + -0.1 + *(v2 + 120) + -0.1;
  }

  if (v94 >= 0.0)
  {
    v96 = v95;
  }

  else
  {
    v96 = 0.0;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v97 = *(v2 + 96);
    v98 = swift_getObjectType();
    v99 = (*(v97 + 48))(v2, v98, v97);
    swift_unknownObjectRelease();
  }

  else
  {
    v99 = 0;
  }

  v100 = *(v2 + 128);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v101 = *(v2 + 96);
    v102 = swift_getObjectType();
    v103 = (*(v101 + 48))(v2, v102, v101);
    swift_unknownObjectRelease();
    if (v103 >= v100)
    {
      v104 = v100;
    }

    else
    {
      v104 = v103;
    }
  }

  else
  {
    v104 = v100 & (v100 >> 63);
  }

  v105 = __OFADD__(v104, 1);
  v106 = v104 + 1;
  if (!v105)
  {
    v107 = v75 + (0.0 - v75) * v96;
    if (v99 == v106)
    {
      v107 = 0.0;
    }

    if (*(v2 + 176) == 1 && *(v2 + 120) > 0.5)
    {
      v21 = 1;
    }

    else
    {
      v21 = 2;
    }

    v29 = v85;
    v113 = v119 * 0.5 + b + v122 + v59 * 0.5;
    v115 = a - v60;
    v108 = 1.0;
    if (v107 <= 1.0)
    {
      v108 = v107;
    }

    x = 0.0;
    if (v107 < 0.0)
    {
      v108 = 0.0;
    }

    v117 = v108;
    v126.a = v121;
    v126.b = v125;
    v126.c = v120;
    v126.d = v124;
    if (v69)
    {
      v30 = 0.0;
    }

    else
    {
      v30 = v68;
    }

    if (v69)
    {
      v18 = 0;
    }

    else
    {
      v18 = v67;
    }

    v126.tx = v123;
    v126.ty = v85;
    if (CGAffineTransformIsIdentity(&v126))
    {
      y = 0.0;
      v22 = v118;
      v23 = v119;
      width = v118;
      height = v119;
      v31 = v122;
      v20 = v113;
    }

    else
    {
      v126.a = v121;
      v126.b = v125;
      v126.c = v120;
      v126.d = v124;
      v126.tx = v123;
      v126.ty = v85;
      v135.origin.x = 0.0;
      v135.origin.y = 0.0;
      v22 = v118;
      v135.size.width = v118;
      v135.size.height = v119;
      v136 = CGRectApplyAffineTransform(v135, &v126);
      x = v136.origin.x;
      y = v136.origin.y;
      width = v136.size.width;
      height = v136.size.height;
      v111 = CGRectGetHeight(v136);
      v137.origin.x = 0.0;
      v137.origin.y = 0.0;
      v137.size.width = v118;
      v137.size.height = v119;
      v109 = CGRectGetHeight(v137);
      v23 = v119;
      v20 = v113 + (v111 - v109) * 0.5;
      v31 = v122;
    }

    v24 = v117;
    v19 = v115 + 0.0;
    v26 = v120;
    v17 = v121;
    v27 = v124;
    v25 = v125;
    v28 = v123;
    goto LABEL_99;
  }

  __break(1u);
}

uint64_t sub_21E8B09C0(uint64_t result, char a2)
{
  if (a2)
  {
    if (result)
    {
      v3 = *(v2 + 128);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v5 = *(v2 + 96);
        v6 = Strong;
        ObjectType = swift_getObjectType();
        v8 = v2;
        v9 = v2;
        v2 = v6;
        v10 = (*(v5 + 48))(v9, ObjectType, v5);
        swift_unknownObjectRelease();
        if (v10 < v3)
        {
          v3 = v10;
        }

        for (; v3; v8 = v2)
        {
          v3 = *(v8 + 128);
          v11 = swift_unknownObjectWeakLoadStrong();
          if (v11)
          {
            v2 = v11;
            v12 = *(v8 + 96);
            v13 = swift_getObjectType();
            v14 = (*(v12 + 48))(v8, v13, v12);
            swift_unknownObjectRelease();
            if (v14 >= v3)
            {
              v15 = v3;
            }

            else
            {
              v15 = v14;
            }

            result = v15 - 1;
            if (!__OFSUB__(v15, 1))
            {
              return result;
            }
          }

          else
          {
            v17 = v3 & (v3 >> 63);
            result = v17 - 1;
            if (!__OFSUB__(v17, 1))
            {
              return result;
            }
          }

          __break(1u);
LABEL_24:
          ;
        }
      }

      else if (v3 <= 0)
      {
        goto LABEL_24;
      }

      return 0;
    }
  }

  else if (result)
  {
    if (__OFSUB__(result--, 1))
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_21E8B0B14(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = v4;
  swift_beginAccess();
  if (*(*(v4 + 32) + 16))
  {
    sub_21E8F67A8(a1, a2 & 1);
    if (v10)
    {
      return swift_endAccess();
    }
  }

  swift_endAccess();
  swift_beginAccess();
  v11 = *(v4 + 192);
  if (*(v11 + 16) && (v12 = sub_21E8F6848(a1, a2 & 1), (v13 & 1) != 0))
  {
    v14 = *(v11 + 56) + 96 * v12;
    if (*(v14 + 32) & 1 | ((*(v14 + 16) & 1) == 0))
    {
      v15 = 0.0;
    }

    else
    {
      v15 = *(v14 + 24) + 0.0;
    }

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v15 = 0.0;
  }

  result = sub_21E8B09C0(a1, a2 & 1);
  if ((v17 & 0x100) == 0)
  {
    v18 = v17;
    v19 = result;
    swift_beginAccess();
    v20 = *(v5 + 192);
    if (*(v20 + 16) && (v21 = sub_21E8F6848(v19, v18 & 1), (v22 & 1) != 0))
    {
      v23 = *(v20 + 56) + 96 * v21;
      v24 = *(v23 + 16);
      v25 = *(v23 + 24);
      v26 = *(v23 + 32);
      result = swift_endAccess();
      if ((v26 & 1) == 0 && (v24 & 2) != 0)
      {
        v15 = v15 + v25;
      }
    }

    else
    {
      result = swift_endAccess();
    }
  }

  if (a2)
  {
    v27 = 0.0;
    if (a4)
    {
      v28 = 0.0;
    }

    else
    {
      v28 = *&a3;
    }

    goto LABEL_38;
  }

  if ((a4 & 1) == 0)
  {
    v28 = *&a3;
    v27 = 0.0;
    if (a1 < 0)
    {
      goto LABEL_38;
    }

    goto LABEL_34;
  }

  if (a1 >= 4)
  {
    v29 = 4;
  }

  else
  {
    v29 = a1;
  }

  if (!__OFSUB__(4, v29))
  {
    v30 = 1.0;
    v31 = *(v5 + 120) / ((4 - v29) * -0.1 + 1.0);
    if (v31 <= 1.0)
    {
      v30 = *(v5 + 120) / ((4 - v29) * -0.1 + 1.0);
    }

    v32 = v30 + 0.0;
    if (v31 >= 0.0)
    {
      v28 = v32;
    }

    else
    {
      v28 = 0.0;
    }

    v27 = 0.0;
    if (a1 < 0)
    {
LABEL_38:
      v38 = sub_21E8AD680();
      v40 = v39;
      v41 = 0.0;
      if ((v39 & 0x100) != 0)
      {
LABEL_42:
        if (v15 != v27)
        {
          if (v27 >= v15)
          {
            v42 = v15;
          }

          else
          {
            v42 = v27;
          }

          if (v27 > v15)
          {
            v43 = v27;
          }

          else
          {
            v43 = v15;
          }

          v44 = 1.0 - v28;
          if (v27 >= v15)
          {
            v44 = v28;
          }

          v15 = v42 + v44 * (v43 - v42);
        }

        if ((v39 & 0x100) == 0 && (*(v5 + 176) & 1) == 0)
        {
          v45 = v15 > v41 ? v15 : v41;
          if (*(v5 + 48))
          {
            v15 = v45;
          }
        }

        swift_beginAccess();
        if (*(*(v5 + 16) + 16))
        {
          sub_21E8F67A8(a1, a2 & 1);
          if (v46)
          {
            swift_endAccess();
            sub_21E8ACC5C(a1, a2 & 1, 0, v15);
            v47 = COERCE_DOUBLE(sub_21E8AD2A8(a1, a2 & 1, 0));
            if (v48)
            {
              v41 = v15;
            }

            else
            {
              v41 = v47;
            }

            goto LABEL_80;
          }
        }

        swift_endAccess();
        if ((v40 & 0x100) != 0)
        {
          v41 = v15;
        }

        goto LABEL_79;
      }

      if (v39)
      {
        if (v38)
        {
          goto LABEL_41;
        }

LABEL_71:
        if (*(v5 + 72) * 0.5 <= 12.0)
        {
          v41 = *(v5 + 72) * 0.5;
        }

        else
        {
          v41 = 12.0;
        }

        if (*(v5 + 80))
        {
          goto LABEL_42;
        }

        goto LABEL_75;
      }

      if (a2)
      {
        if (a1)
        {
          goto LABEL_71;
        }
      }

      else if (v38 < a1)
      {
        goto LABEL_71;
      }

LABEL_41:
      if (*(v5 + 80))
      {
        goto LABEL_42;
      }

LABEL_75:
      swift_beginAccess();
      if (*(*(v5 + 16) + 16))
      {
        sub_21E8F67A8(a1, a2 & 1);
        if (v49)
        {
          swift_endAccess();
          sub_21E8ACF48(a1, a2 & 1, 0, v41);
LABEL_80:
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v51 = *(v5 + 32);
          *(v5 + 32) = 0x8000000000000000;
          sub_21E8F793C(a1, a2 & 1, isUniquelyReferenced_nonNull_native, v41);
          *(v5 + 32) = v51;
          return swift_endAccess();
        }
      }

      swift_endAccess();
LABEL_79:
      sub_21E8AC760(a1, a2 & 1, 0, v41);
      goto LABEL_80;
    }

LABEL_34:
    if (swift_unknownObjectWeakLoadStrong())
    {
      v33 = *(v5 + 96);
      ObjectType = swift_getObjectType();
      v35 = (*(v33 + 48))(v5, ObjectType, v33);
      swift_unknownObjectRelease();
      if (v35 > a1)
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          v36 = *(v5 + 96);
          v37 = swift_getObjectType();
          v27 = (*(v36 + 8))(v5, a1, v37, v36);
          swift_unknownObjectRelease();
        }
      }
    }

    goto LABEL_38;
  }

  __break(1u);
  return result;
}

void sub_21E8B0FE4(uint64_t a1, double a2)
{
  v5 = *(v2 + 128);
  if (!swift_unknownObjectWeakLoadStrong())
  {
    v12 = v5 & (v5 >> 63);
    v10 = __OFSUB__(a1, v12);
    v11 = a1 - v12;
    if (!v10)
    {
      goto LABEL_6;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = *(v2 + 96);
  ObjectType = swift_getObjectType();
  v8 = (*(v6 + 48))(v2, ObjectType, v6);
  swift_unknownObjectRelease();
  if (v8 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v8;
  }

  v10 = __OFSUB__(a1, v9);
  v11 = a1 - v9;
  if (v10)
  {
    goto LABEL_11;
  }

LABEL_6:
  v10 = __OFADD__(v11++, 1);
  if (v10)
  {
    __break(1u);
    return;
  }

  if (v11 > 2)
  {
LABEL_12:
    v13 = a2;
    powf(v13, v11);
  }
}

uint64_t sub_21E8B10C0(uint64_t a1, char a2)
{
  if (a2)
  {
    if (a1)
    {
      return 0;
    }

    v3 = *(v2 + 128);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(v2 + 96);
      ObjectType = swift_getObjectType();
      v16 = (*(v14 + 48))(v2, ObjectType, v14);
      swift_unknownObjectRelease();
      if (v16 < v3)
      {
        v3 = v16;
      }

      return v3 == 0;
    }

    goto LABEL_20;
  }

  v6 = *(v2 + 128);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v17 = v6 & (v6 >> 63);
    v12 = __OFSUB__(v17, 1);
    v13 = v17 - 1;
    if (!v12)
    {
      goto LABEL_9;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    if (v3 <= 0)
    {
      return v3 == 0;
    }

    return 1;
  }

  v8 = *(v2 + 96);
  v3 = Strong;
  v9 = swift_getObjectType();
  v10 = (*(v8 + 48))(v2, v9, v8);
  swift_unknownObjectRelease();
  if (v10 >= v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = v10;
  }

  v12 = __OFSUB__(v11, 1);
  v13 = v11 - 1;
  if (v12)
  {
    goto LABEL_19;
  }

LABEL_9:
  if (v13 == a1)
  {
    return 1;
  }

  result = a1 + 1;
  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21E8B1220()
{

  sub_21E8B1D78(v0 + 88);

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_21E8B1320(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 168))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 56);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_21E8B1364(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 168) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 168) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2 + 2;
    }
  }

  return result;
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_21E8B1404(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 89))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21E8B1424(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 89) = v3;
  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for HighlightsDropletLayout.Index(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for HighlightsDropletLayout.Index(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_21E8B14DC(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21E8B14F8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for HighlightsDropletLayout.AnimatorIndex(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 9);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for HighlightsDropletLayout.AnimatorIndex(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_21E8B164C()
{
  v1 = MEMORY[0x277D84F98];
  *(v0 + 16) = MEMORY[0x277D84F98];
  *(v0 + 24) = 0;
  *(v0 + 32) = v1;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 256;
  *(v0 + 66) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 96) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 161) = 0u;
  *(v0 + 184) = 0;
  *(v0 + 192) = v1;
  *(v0 + 200) = v1;
  *(v0 + 208) = xmmword_21E946920;
  *(v0 + 224) = xmmword_21E946930;
  return v0;
}

uint64_t sub_21E8B16DC(uint64_t a1, id *a2)
{
  result = sub_21E92A438();
  *a2 = 0;
  return result;
}

uint64_t sub_21E8B1754(uint64_t a1, id *a2)
{
  v3 = sub_21E92A448();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_21E8B17D4@<X0>(uint64_t *a1@<X8>)
{
  sub_21E92A458();
  v2 = sub_21E92A428();

  *a1 = v2;
  return result;
}

uint64_t sub_21E8B1818(uint64_t a1)
{
  v2 = sub_21E8B1964(&qword_27CED6CB0, type metadata accessor for Mode);
  v3 = sub_21E8B1964(&qword_27CED6CB8, type metadata accessor for Mode);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_21E8B1964(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21E8B19AC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_21E92A428();

  *a1 = v2;
  return result;
}

uint64_t sub_21E8B19F4(uint64_t a1)
{
  v2 = sub_21E8B1964(&qword_27CED6E60, type metadata accessor for NSKeyValueChangeKey);
  v3 = sub_21E8B1964(&qword_27CED6E68, type metadata accessor for NSKeyValueChangeKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_21E8B1AB0()
{
  v0 = sub_21E92A458();
  v1 = MEMORY[0x223D64680](v0);

  return v1;
}

uint64_t sub_21E8B1AEC()
{
  sub_21E92A458();
  sub_21E92A4A8();
}

uint64_t sub_21E8B1B40()
{
  sub_21E92A458();
  sub_21E92AB28();
  sub_21E92A4A8();
  v0 = sub_21E92AB48();

  return v0;
}

uint64_t sub_21E8B1BB4()
{
  v0 = sub_21E92A458();
  v2 = v1;
  if (v0 == sub_21E92A458() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_21E92AA58();
  }

  return v5 & 1;
}

unint64_t sub_21E8B1C88()
{
  result = qword_280D04580;
  if (!qword_280D04580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D04580);
  }

  return result;
}

unint64_t sub_21E8B1CDC()
{
  result = qword_280D044A8;
  if (!qword_280D044A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D044A8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_21E8B1DC4()
{
  result = qword_280D03DE8;
  if (!qword_280D03DE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D03DE8);
  }

  return result;
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21E8B1E58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_21E8B1EF0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21E8B1F10(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

void sub_21E8B1F5C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for HighlightsDropletLayout.AnimatorType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HighlightsDropletLayout.AnimatorType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21E8B212C()
{
  result = qword_27CED6E20;
  if (!qword_27CED6E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CED6E20);
  }

  return result;
}

unint64_t sub_21E8B2184()
{
  result = qword_27CED6E28;
  if (!qword_27CED6E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CED6E28);
  }

  return result;
}

unint64_t sub_21E8B21DC()
{
  result = qword_27CED6E30;
  if (!qword_27CED6E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CED6E30);
  }

  return result;
}

unint64_t sub_21E8B2234()
{
  result = qword_27CED6E38;
  if (!qword_27CED6E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CED6E38);
  }

  return result;
}

unint64_t sub_21E8B228C()
{
  result = qword_27CED6E40;
  if (!qword_27CED6E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CED6E40);
  }

  return result;
}

id NCInternalToolsOverlayView.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

void sub_21E8B2740()
{
  v1 = v0;
  if ([v0 debugHUDVisible] && (v2 = &v0[OBJC_IVAR___NCInternalToolsOverlayView_hosted], !*&v0[OBJC_IVAR___NCInternalToolsOverlayView_hosted]))
  {
    [v0 bounds];
    v16 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
    [v16 setAutoresizingMask_];
    [v0 addSubview_];
    v17 = qword_27CED9ED8;
    if (!qword_27CED9ED8)
    {
      v21 = [objc_allocWithZone(type metadata accessor for ListDebugHUDModel(0)) init];
      v22 = qword_27CED9ED8;
      qword_27CED9ED8 = v21;
      v21;

      v17 = 0;
    }

    type metadata accessor for ListDebugHUDModel(0);
    v23 = v17;
    sub_21E92A1A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7140);
    sub_21E92A1A8();
    v24 = v36;
    v25 = *(&v36 + 1);
    v36 = v35;
    v37 = v24;
    v38 = v25;
    v26 = objc_allocWithZone(type metadata accessor for SwiftUIHostingController());
    v27 = sub_21E8B4834(&v35);
    v28 = [v1 nextResponder];
    if (v28)
    {
      v29 = v28;
      while (1)
      {
        objc_opt_self();
        v30 = swift_dynamicCastObjCClass();
        if (v30)
        {
          break;
        }

        v31 = [v29 nextResponder];

        v29 = v31;
        if (!v31)
        {
          goto LABEL_23;
        }
      }

      [v30 bs:v27 addChildViewController:v16 withSuperview:?];
    }

LABEL_23:
    v32 = *v2;
    v33 = *(v2 + 1);
    *v2 = v27;
    *(v2 + 1) = v16;
    sub_21E8B4B44(v32, v33);
  }

  else if (([v0 debugHUDVisible] & 1) == 0)
  {
    v3 = &v0[OBJC_IVAR___NCInternalToolsOverlayView_hosted];
    v4 = *&v0[OBJC_IVAR___NCInternalToolsOverlayView_hosted];
    if (v4)
    {
      v5 = *(v3 + 1);
      v6 = v4;
      v7 = v5;
      [v7 removeFromSuperview];
      v8 = [v1 nextResponder];
      if (v8)
      {
        v9 = v8;
        while (1)
        {
          objc_opt_self();
          v10 = swift_dynamicCastObjCClass();
          if (v10)
          {
            break;
          }

          v11 = [v9 nextResponder];

          v9 = v11;
          if (!v11)
          {
            goto LABEL_13;
          }
        }

        [v10 bs:v6 removeChildViewController:?];
      }

LABEL_13:
      v18 = *v3;
      v19 = *(v3 + 1);
      *v3 = 0;
      *(v3 + 1) = 0;
      sub_21E8B4B44(v18, v19);
      v20 = [objc_opt_self() standardDefaults];
      [v20 setListDebugHUDFrame_];

      v34 = qword_27CED9ED8;
      qword_27CED9ED8 = 0;
    }
  }
}

char *sub_21E8B2AF0()
{
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR___NCInternalToolsOverlayView_doubleTapLongPressRecognizer;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x277D75708]) init];
  *&v0[OBJC_IVAR___NCInternalToolsOverlayView_overlayButton] = 0;
  *&v0[OBJC_IVAR___NCInternalToolsOverlayView_feedbackGenerator] = 0;
  *&v0[OBJC_IVAR___NCInternalToolsOverlayView_timeoutTimer] = 0;
  *&v0[OBJC_IVAR___NCInternalToolsOverlayView_backgroundBlurView] = 0;
  v0[OBJC_IVAR___NCInternalToolsOverlayView_isHidingUI] = 0;
  v0[OBJC_IVAR___NCInternalToolsOverlayView_debugHUDVisible] = 0;
  v2 = &v0[OBJC_IVAR___NCInternalToolsOverlayView_hosted];
  *v2 = 0;
  v2[1] = 0;
  v17.receiver = v0;
  v17.super_class = NCInternalToolsOverlayView;
  v3 = objc_msgSendSuper2(&v17, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v4 = OBJC_IVAR___NCInternalToolsOverlayView_doubleTapLongPressRecognizer;
  v5 = *&v3[OBJC_IVAR___NCInternalToolsOverlayView_doubleTapLongPressRecognizer];
  v6 = v3;
  [v5 setDelegate_];
  [*&v3[v4] addTarget:v6 action:sel_handleLongPress_];
  [*&v3[v4] setNumberOfTouchesRequired_];
  v7 = objc_opt_self();
  v8 = [v7 standardDefaults];
  v9 = sub_21E92A428();
  sub_21E796644(0, &qword_280D03E40);
  v10 = sub_21E92A6C8();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16[4] = sub_21E8B4B3C;
  v16[5] = v11;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_21E792C28;
  v16[3] = &block_descriptor_27;
  v12 = _Block_copy(v16);

  v13 = [v8 observeDefault:v9 onQueue:v10 withBlock:v12];
  _Block_release(v12);
  swift_unknownObjectRelease();

  v14 = [v7 standardDefaults];
  LODWORD(v7) = [v14 showListDebugHUD];

  v6[OBJC_IVAR___NCInternalToolsOverlayView_debugHUDVisible] = v7;
  [v6 setHidden_];

  return v6;
}

void sub_21E8B2DE0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [objc_opt_self() standardDefaults];
    v3 = [v2 showListDebugHUD];

    [v1 setDebugHUDVisible_];
  }
}

Swift::Void __swiftcall NCInternalToolsOverlayView.layoutSubviews()()
{
  v5.super_class = NCInternalToolsOverlayView;
  objc_msgSendSuper2(&v5, sel_layoutSubviews);
  sub_21E8B2740();
  v1 = [v0 doubleTapLongPressRecognizer];
  v2 = [v1 view];

  if (!v2)
  {
    v3 = [v0 superview];
    if (!v3)
    {
      return;
    }

    v4 = v3;
    v2 = [v0 doubleTapLongPressRecognizer];
    [v4 addGestureRecognizer_];
  }
}

void sub_21E8B2FCC()
{
  if (([v0 isHidingUI] & 1) == 0)
  {
    v1 = [v0 delegate];
    if (v1)
    {
      [v1 toolsOverlayViewRequestsEndUserInteraction_];
      swift_unknownObjectRelease();
    }

    v2 = [v0 timeoutTimer];
    [v2 invalidate];

    [v0 setTimeoutTimer_];
    v3 = [v0 overlayButton];
    v4 = [v0 backgroundBlurView];
    [v0 setBackgroundBlurView_];
    [v0 setOverlayButton_];
    [v0 setIsHidingUI_];
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = v4;
    v19 = sub_21E8B4B84;
    v20 = v6;
    v15 = MEMORY[0x277D85DD0];
    v16 = 1107296256;
    v17 = sub_21E792C28;
    v18 = &block_descriptor_33;
    v7 = _Block_copy(&v15);
    v8 = v3;
    v9 = v4;

    v10 = swift_allocObject();
    v10[2] = v3;
    v10[3] = v4;
    v10[4] = v0;
    v19 = sub_21E8B4BE4;
    v20 = v10;
    v15 = MEMORY[0x277D85DD0];
    v16 = 1107296256;
    v17 = sub_21E799760;
    v18 = &block_descriptor_39;
    v11 = _Block_copy(&v15);
    v12 = v8;
    v13 = v9;
    v14 = v0;

    [v5 _animateUsingSpringWithTension_friction_interactive_animations_completion_];
    _Block_release(v11);
    _Block_release(v7);
    [v14 setNeedsLayout];
  }
}

id NCInternalToolsOverlayView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v8 initWithFrame_];
}

Swift::Bool __swiftcall NCInternalToolsOverlayView.gestureRecognizerShouldBegin(_:)(UIGestureRecognizer *a1)
{
  v2 = v1;
  v4 = [v1 doubleTapLongPressRecognizer];

  if (v4 == a1)
  {
    v5 = [v2 feedbackGenerator];
    if (!v5)
    {
      v6 = [objc_allocWithZone(MEMORY[0x277D755F0]) initWithStyle_];
      [v2 setFeedbackGenerator_];
      v5 = v6;
    }

    v7 = [v2 feedbackGenerator];
    if (v7)
    {
      v8 = v7;
      [v7 prepare];
    }
  }

  return v4 == a1;
}

Swift::Bool __swiftcall NCInternalToolsOverlayView.gestureRecognizer(_:shouldRequireFailureOf:)(UIGestureRecognizer *_, UIGestureRecognizer *shouldRequireFailureOf)
{
  v4 = [v2 doubleTapLongPressRecognizer];

  result = 0;
  if (v4 == _)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return 1;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return 1;
    }
  }

  return result;
}

void sub_21E8B35DC()
{
  v1 = [v0 delegate];
  if (v1)
  {
    [v1 toolsOverlayViewRequestsBeginUserInteraction_];
    swift_unknownObjectRelease();
  }

  v2 = [v0 feedbackGenerator];
  [v2 impactOccurred];

  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  v16 = sub_21E8B4ABC;
  v17 = v4;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_21E792C28;
  v15 = &block_descriptor_0;
  v5 = _Block_copy(&v12);
  v6 = v0;

  [v3 _performWithoutRetargetingAnimations_];
  _Block_release(v5);
  sub_21E8B3BB8();
  v7 = [v6 overlayButton];
  if (v7)
  {
    v8 = v7;
    [v8 frame];
    UIRectCenteredAboutPoint();
    UIRectRoundToScale();
    [v8 setFrame_];

    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v16 = sub_21E8B4AD0;
    v17 = v9;
    v12 = MEMORY[0x277D85DD0];
    v13 = 1107296256;
    v14 = sub_21E792C28;
    v15 = &block_descriptor_15;
    v10 = _Block_copy(&v12);
    v11 = v8;

    [v3 _performWithoutRetargetingAnimations_];
    _Block_release(v10);
    [v6 setNeedsLayout];
  }
}

void sub_21E8B3858()
{
  v1 = v0;
  v2 = [v0 timeoutTimer];
  [v2 invalidate];

  [v1 setTimeoutTimer_];
  v3 = objc_allocWithZone(MEMORY[0x277D6C0A8]);
  v4 = sub_21E92A428();
  v5 = [v3 initWithIdentifier_];

  [v1 setTimeoutTimer_];
  v6 = [v1 timeoutTimer];
  if (v6)
  {
    v7 = v6;
    sub_21E796644(0, &qword_280D03E40);
    v8 = sub_21E92A6C8();
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11[4] = sub_21E8B4B34;
    v11[5] = v9;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_21E8B3B50;
    v11[3] = &block_descriptor_23;
    v10 = _Block_copy(v11);

    [v7 scheduleWithFireInterval:v8 leewayInterval:v10 queue:2.0 handler:0.5];
    _Block_release(v10);
  }
}

void sub_21E8B3AC8(id a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong timeoutTimer];
    if (v4)
    {
      v5 = v4;

      if (v5 == a1)
      {
        sub_21E8B2FCC();
      }
    }
  }
}

void sub_21E8B3B50(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_21E8B3BB8()
{
  v1 = v0;
  v2 = [v0 overlayButton];
  if (!v2)
  {
    type metadata accessor for OptionsButton();
    v3 = [swift_getObjCClassFromMetadata() buttonWithType_];
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = &v3[OBJC_IVAR____TtC22UserNotificationsUIKitP33_31F77A0F2E2B97FF4D299720B6240BE113OptionsButton_onDismissMenu];
    v6 = *&v3[OBJC_IVAR____TtC22UserNotificationsUIKitP33_31F77A0F2E2B97FF4D299720B6240BE113OptionsButton_onDismissMenu];
    *v5 = sub_21E8B4B24;
    v5[1] = v4;

    sub_21E792694(v6);

    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = &v3[OBJC_IVAR____TtC22UserNotificationsUIKitP33_31F77A0F2E2B97FF4D299720B6240BE113OptionsButton_onShowMenu];
    v9 = *&v3[OBJC_IVAR____TtC22UserNotificationsUIKitP33_31F77A0F2E2B97FF4D299720B6240BE113OptionsButton_onShowMenu];
    *v8 = sub_21E8B4B2C;
    v8[1] = v7;

    sub_21E792694(v9);

    v10 = v3;
    [v1 setOverlayButton_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED6D90);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_21E9473D0;
    v12 = [objc_opt_self() standardDefaults];
    v13 = [v12 configurationActions];

    sub_21E796644(0, &qword_27CED7120);
    v14 = sub_21E92A528();

    if (v14 >> 62)
    {
      sub_21E796644(0, &qword_27CED7128);

      sub_21E92A998();
    }

    else
    {

      sub_21E92AA68();
      sub_21E796644(0, &qword_27CED7128);
    }

    sub_21E796644(0, &unk_27CED7130);
    *(v11 + 32) = sub_21E92A6F8();
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_21E9468F0;
    *(v15 + 32) = sub_21E92A798();
    *(v11 + 40) = sub_21E92A6F8();
    v16 = sub_21E92A6F8();
    [v10 setMenu_];

    [v10 setShowsMenuAsPrimaryAction_];
    v17 = v10;
    [v1 addSubview_];
    v18 = [objc_opt_self() sharedInstanceForStyle_];
    if (!v18)
    {
      v18 = [objc_allocWithZone(MEMORY[0x277D760A8]) initWithStyle_];
      if (!v18)
      {
        __break(1u);
        return;
      }
    }

    v19 = v18;
    v20 = [objc_allocWithZone(MEMORY[0x277D67CF8]) initWithSettings:v18 strength:*MEMORY[0x277D774E8]];
    [v20 setNumberOfLines_];
    v21 = [objc_allocWithZone(MEMORY[0x277D74270]) init];
    v22 = sub_21E92A428();
    v23 = [objc_opt_self() systemImageNamed_];

    if (v23)
    {
      v24 = [v23 imageWithRenderingMode_];
    }

    else
    {
      v24 = 0;
    }

    [v21 setImage_];

    v26 = [objc_opt_self() attributedStringWithAttachment_];
    [v20 setAttributedText_];
    v25 = v20;
    [v17 addSubview_];
    [v25 sizeToFit];
    [v25 setUserInteractionEnabled_];
    [v25 frame];
    [v25 frame];
    [v17 setFrame_];

    [v25 frame];
    [v17 frame];

    UIRectCenteredRect();
    UIRectRoundToScale();
    [v25 setFrame_];

    [v17 addSubview_];
    v2 = v26;
  }
}

id sub_21E8B42A0(int a1, int a2, id a3, id a4, id a5)
{
  if (a3)
  {
    [a3 removeFromSuperview];
  }

  if (a4)
  {
    [a4 removeFromSuperview];
  }

  [a5 setIsHidingUI_];
  [a5 setFeedbackGenerator_];
  v7 = [a5 debugHUDVisible] ^ 1;

  return [a5 setHidden_];
}

void sub_21E8B4348()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_21E8B2FCC();
  }
}

void sub_21E8B439C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong timeoutTimer];
    [v2 invalidate];

    [v1 setTimeoutTimer_];
    v3 = [v1 backgroundBlurView];
    if (v3)
    {
      v4 = v1;
      v1 = v3;
    }

    else
    {
      v5 = [objc_allocWithZone(MEMORY[0x277D3D328]) initWithRecipe_];
      if (!v5)
      {
LABEL_10:

        return;
      }

      v6 = v5;
      [v6 setUserInteractionEnabled_];
      [v1 bounds];
      [v6 setFrame_];

      v7 = [v1 overlayButton];
      if (v7)
      {
        v8 = v7;
        [v1 insertSubview:v6 belowSubview:v7];
      }

      else
      {
        [v1 addSubview_];
      }

      v4 = v6;
      [v1 setBackgroundBlurView_];
    }

    goto LABEL_10;
  }
}

void sub_21E8B455C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, const char **a6, void *a7, char a8)
{
  v20.receiver = a1;
  v20.super_class = type metadata accessor for OptionsButton();
  v14 = *a6;
  v15 = a3;
  v16 = a4;
  v17 = v20.receiver;
  swift_unknownObjectRetain();
  objc_msgSendSuper2(&v20, v14, v15, v16, a5);
  v18 = *&v17[*a7];
  if (v18)
  {

    v18(v19);

    swift_unknownObjectRelease();
    sub_21E792694(v18);
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v17[OBJC_IVAR____TtC22UserNotificationsUIKitP33_31F77A0F2E2B97FF4D299720B6240BE113OptionsButton_isPresentingMenu] = a8;
}

id sub_21E8B47A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OptionsButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_21E8B4834(__int128 *a1)
{
  *(v1 + qword_27CED71E8) = 0;
  v2 = *a1;
  v14 = *(a1 + 1);
  v3 = a1[2];
  v13[0] = a1[1];
  v13[1] = v3;
  v10 = *a1;
  v11 = v13[0];
  v12 = v3;
  v4 = v2;
  sub_21E8B4BF0(&v14, v9, &qword_27CED7148);
  sub_21E8B4BF0(v13, v9, &qword_27CED7150);
  sub_21E8B4C58();
  *&v10 = sub_21E92A208();
  v5 = sub_21E929F38();
  result = [v5 view];
  if (result)
  {
    v7 = result;

    sub_21E8B4CAC(&v14, &qword_27CED7148);
    sub_21E8B4CAC(v13, &qword_27CED7150);
    v8 = [objc_opt_self() clearColor];
    [v7 setBackgroundColor_];

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void _sSo26NCInternalToolsOverlayViewC22UserNotificationsUIKitE5coderABSgSo7NSCoderC_tcfc_0()
{
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR___NCInternalToolsOverlayView_doubleTapLongPressRecognizer;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D75708]) init];
  *(v0 + OBJC_IVAR___NCInternalToolsOverlayView_overlayButton) = 0;
  *(v0 + OBJC_IVAR___NCInternalToolsOverlayView_feedbackGenerator) = 0;
  *(v0 + OBJC_IVAR___NCInternalToolsOverlayView_timeoutTimer) = 0;
  *(v0 + OBJC_IVAR___NCInternalToolsOverlayView_backgroundBlurView) = 0;
  *(v0 + OBJC_IVAR___NCInternalToolsOverlayView_isHidingUI) = 0;
  *(v0 + OBJC_IVAR___NCInternalToolsOverlayView_debugHUDVisible) = 0;
  v2 = (v0 + OBJC_IVAR___NCInternalToolsOverlayView_hosted);
  *v2 = 0;
  v2[1] = 0;
  sub_21E92A988();
  __break(1u);
}

id sub_21E8B4AD0()
{
  v1 = *(v0 + 16);
  [v1 setAlpha_];

  return [v1 setHidden_];
}

void sub_21E8B4B44(void *a1, void *a2)
{
  if (a1)
  {
  }
}

id sub_21E8B4B84()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  if (result)
  {
    result = [result setAlpha_];
  }

  if (v2)
  {

    return [v2 setAlpha_];
  }

  return result;
}

uint64_t sub_21E8B4BF0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21E8B4C58()
{
  result = qword_27CED7158;
  if (!qword_27CED7158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CED7158);
  }

  return result;
}

uint64_t sub_21E8B4CAC(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_21E8B4D48()
{
  v1 = *(v0 + 16);
  if (*(v0 + 76))
  {
    if (*(v0 + 76) == 1)
    {
      [v1 setHidden_];
      [*(v0 + 40) setHidden_];
      v2 = 1;
      [*(v0 + 24) setHidden_];
    }

    else
    {
      [v1 setHidden_];
      v2 = 1;
      [*(v0 + 40) setHidden_];
      [*(v0 + 24) setHidden_];
    }

    [*(v0 + 32) setHidden_];
    v3 = (v0 + 32);
  }

  else
  {
    [v1 setHidden_];
    [*(v0 + 40) setHidden_];
    [*(v0 + 24) setHidden_];
    v4 = *(v0 + 32);
    v3 = (v0 + 32);
    [v4 setHidden_];
    v2 = 0;
  }

  v5 = *v3;

  return [v5 setHidesSourceView_];
}

void sub_21E8B4E68(uint64_t a1, double a2, float a3)
{
  v4 = v3;
  v62 = sub_21E929B78();
  v8 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_21E929BC8();
  v11 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v61 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v61 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v61 - v21;
  MEMORY[0x28223BE20](v23);
  v64 = &v61 - v24;
  v25 = sub_21E929C88();
  v67 = *(v25 - 8);
  v68 = v25;
  MEMORY[0x28223BE20](v25);
  v65 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v66 = &v61 - v28;
  v29 = *(v3 + 32);
  sub_21E92A708();

  v30 = v71;
  sub_21E8B5EB0(v70);
  if (v30 && *(v4 + 64) == a2)
  {
    v31 = *(v4 + 56);
    if (a1)
    {
      v70[0] = a1;
      if (!v31)
      {
        goto LABEL_9;
      }

      v69 = v31;
      sub_21E929C58();
      v61 = sub_21E8B5F7C();

      v32 = sub_21E92A418();

      if ((v32 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else if (v31)
    {
      goto LABEL_9;
    }

    if (*(v4 + 72) == a3)
    {
      return;
    }
  }

LABEL_9:
  *(v4 + 64) = a2;
  *(v4 + 56) = a1;

  *(v4 + 72) = a3;
  v33 = objc_opt_self();
  if (a1)
  {
    v34 = v33;

    v35 = [v34 useRegularMaterial];
    v36 = *(v4 + 32);
    if (!v35)
    {
      v61 = v36;
      sub_21E929B98();
      v48 = v62;
      (*(v8 + 104))(v10, *MEMORY[0x277D74DE8], v62);
      sub_21E929B88();
      (*(v8 + 8))(v10, v48);
      v49 = *(v11 + 8);
      v50 = v63;
      v49(v13, v63);
      sub_21E929B58();
      v49(v16, v50);
      sub_21E929B28();
      v49(v19, v50);
      sub_21E929B68();
      v49(v22, v50);
      v51 = v65;
      sub_21E929C98();
      v52 = v66;
      sub_21E929BE8();
      v53 = v68;
      v54 = *(v67 + 8);
      v54(v51, v68);
      v71 = v53;
      v72 = MEMORY[0x277D74E20];
      __swift_allocate_boxed_opaque_existential_1(v70);
      sub_21E929C68();
      v54(v52, v53);
      v55 = v61;
      sub_21E92A718();

      return;
    }

    v37 = v36;
    sub_21E929BA8();
    sub_21E929B28();
    v38 = *(v11 + 8);
    v39 = v63;
    v38(v16, v63);
    sub_21E929BB8();
    v38(v19, v39);
    sub_21E929B68();
    v38(v22, v39);
    v40 = v65;
    sub_21E929C98();
    v41 = v66;
    sub_21E929BE8();
    v42 = v68;
    v43 = *(v67 + 8);
    v43(v40, v68);
    v71 = v42;
    v72 = MEMORY[0x277D74E20];
    __swift_allocate_boxed_opaque_existential_1(v70);
    sub_21E929C68();
    v43(v41, v42);
    sub_21E92A718();
  }

  else
  {
    v44 = [v33 useRegularMaterial];
    v45 = *(v4 + 32);
    if (v44)
    {
      v37 = v45;
      sub_21E929BA8();
      sub_21E929B28();
      v46 = *(v11 + 8);
      v47 = v63;
      v46(v19, v63);
      sub_21E929BB8();
    }

    else
    {
      v37 = v45;
      sub_21E929B98();
      v56 = v62;
      (*(v8 + 104))(v10, *MEMORY[0x277D74DE8], v62);
      sub_21E929B88();
      (*(v8 + 8))(v10, v56);
      v46 = *(v11 + 8);
      v47 = v63;
      v46(v16, v63);
      sub_21E929B58();
      v46(v19, v47);
      sub_21E929B28();
    }

    v46(v22, v47);
    v57 = v65;
    sub_21E929C98();
    v58 = v66;
    sub_21E929BE8();
    v59 = v68;
    v60 = *(v67 + 8);
    v60(v57, v68);
    v71 = v59;
    v72 = MEMORY[0x277D74E20];
    __swift_allocate_boxed_opaque_existential_1(v70);
    sub_21E929C68();
    v60(v58, v59);
    sub_21E92A718();
  }
}

uint64_t sub_21E8B56C8()
{
  MEMORY[0x223D660A0](v0 + 6);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for HighlightsDroplet.BackgroundStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HighlightsDroplet.BackgroundStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21E8B58A8()
{
  result = qword_27CED7160;
  if (!qword_27CED7160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CED7160);
  }

  return result;
}

uint64_t sub_21E8B58FC(void *a1, uint64_t a2, void *a3)
{
  v6 = *&v3[OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_dropletContextView];
  v7 = [v6 addContainerWithContentView_];
  type metadata accessor for HighlightsDroplet();
  swift_allocObject();
  v8 = v7;
  v9 = a1;
  v10 = v3;
  v11 = sub_21E8B5FD4(v8, v9);

  v12 = *(v11 + 32);
  v13 = v12;
  if (a3)
  {
    a3 = sub_21E92A428();
  }

  [v12 setAccessibilityIdentifier_];

  if (qword_27CED6AD0 != -1)
  {
    swift_once();
  }

  v14 = sub_21E929A78();
  __swift_project_value_buffer(v14, qword_27CED9E90);
  v15 = v10;

  v16 = sub_21E929A58();
  v17 = sub_21E92A648();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v38 = v19;
    *v18 = 136446722;
    v20 = sub_21E8DCF9C();
    v37 = v6;
    v22 = sub_21E79841C(v20, v21, &v38);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2082;
    v23 = *(v11 + 32);
    v24 = sub_21E8DCF9C();
    v26 = v25;

    v27 = sub_21E79841C(v24, v26, &v38);

    *(v18 + 14) = v27;
    *(v18 + 22) = 2082;
    v28 = *(v11 + 40);
    v29 = sub_21E8DCF9C();
    v31 = v30;

    v32 = sub_21E79841C(v29, v31, &v38);
    v6 = v37;

    *(v18 + 24) = v32;
    _os_log_impl(&dword_21E77E000, v16, v17, "%{public}s: createDroplet(for:) adding portal %{public}s and background %{public}s", v18, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223D65FB0](v19, -1, -1);
    MEMORY[0x223D65FB0](v18, -1, -1);
  }

  v33 = *(v11 + 40);
  v34 = *(v11 + 32);
  v35 = v33;
  LOBYTE(v33) = sub_21E8DE74C(v34, v35);

  if (v33)
  {
  }

  else
  {
    [v6 removeContainer_];

    return 0;
  }

  return v11;
}

id sub_21E8B5C34(uint64_t a1)
{
  if (qword_27CED6AD0 != -1)
  {
    swift_once();
  }

  v3 = sub_21E929A78();
  __swift_project_value_buffer(v3, qword_27CED9E90);

  v4 = v1;
  v5 = sub_21E929A58();
  v6 = sub_21E92A648();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v27[0] = v8;
    *v7 = 136446722;
    v9 = sub_21E8DCF9C();
    v11 = sub_21E79841C(v9, v10, v27);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    v12 = *(a1 + 32);
    v13 = sub_21E8DCF9C();
    v15 = v14;

    v16 = sub_21E79841C(v13, v15, v27);

    *(v7 + 14) = v16;
    *(v7 + 22) = 2082;
    v17 = *(a1 + 40);
    v18 = sub_21E8DCF9C();
    v20 = v19;

    v21 = sub_21E79841C(v18, v20, v27);

    *(v7 + 24) = v21;
    _os_log_impl(&dword_21E77E000, v5, v6, "%{public}s: removeDroplet(_:) removing portal %{public}s and background %{public}s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223D65FB0](v8, -1, -1);
    MEMORY[0x223D65FB0](v7, -1, -1);
  }

  *(a1 + 76) = 0;
  sub_21E8B4D48();
  v22 = *(a1 + 32);
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  v23 = v22;
  sub_21E92A718();

  [*(a1 + 32) removeFromSuperview];
  [*(a1 + 40) removeFromSuperview];
  v24 = *&v4[OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_dropletContextView];
  v25 = *(a1 + 24);

  return [v24 removeContainer_];
}

uint64_t sub_21E8B5EB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7168);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_21E8B5F7C()
{
  result = qword_27CED7170;
  if (!qword_27CED7170)
  {
    sub_21E929C58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CED7170);
  }

  return result;
}

uint64_t sub_21E8B5FD4(void *a1, void *a2)
{
  swift_unknownObjectWeakInit();
  *(v2 + 56) = 0;
  *(v2 + 76) = 2;
  *(v2 + 24) = a1;
  v5 = objc_allocWithZone(MEMORY[0x277D76180]);
  v6 = a1;
  *(v2 + 32) = [v5 initWithSourceView_];
  *(v2 + 16) = a2;
  v7 = objc_allocWithZone(MEMORY[0x277D75D18]);
  v8 = a2;
  v9 = [v7 initWithFrame_];
  *(v2 + 40) = v9;
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 blackColor];
  [v11 setBackgroundColor_];

  swift_unknownObjectWeakAssign();
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  [*(v2 + 32) setHidesSourceView_];
  [*(v2 + 32) setAllowsBackdropGroups_];
  return v2;
}

id sub_21E8B6200(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v4 = sub_21E929808();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E92A3C8();
  (*(v5 + 104))(v7, *a3, v4);
  MEMORY[0x223D64550](v7, 0);
  (*(v5 + 8))(v7, v4);
  v8 = sub_21E92A428();

  v9 = [objc_opt_self() systemImageNamed_];

  return v9;
}

void sub_21E8B6604(char *a1, uint64_t a2, uint64_t (*a3)(void), unsigned int *a4, uint64_t a5, uint64_t a6)
{
  v30 = a1;
  v31 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED75A0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v28[-v10];
  v12 = a3(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v16 = &v28[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v18 = &v28[-v17];
  v19 = &a1[OBJC_IVAR___NCSummarizationFeedbackManager_summarizationFeedbackManagerSwift];
  v20 = *&a1[OBJC_IVAR___NCSummarizationFeedbackManager_summarizationFeedbackManagerSwift];
  v21 = v19[8];
  v29 = v19[9];
  (*(v13 + 104))(&v28[-v17], *a4, v12);
  v22 = sub_21E92A5B8();
  (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
  (*(v13 + 16))(v16, v18, v12);
  v23 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  (*(v13 + 32))(v24 + v23, v16, v12);
  v25 = v24 + ((v14 + v23 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v25 = v20;
  *(v25 + 8) = v21;
  *(v25 + 9) = v29;
  v26 = v30;
  v27 = v20;
  sub_21E8E8A7C(0, 0, v11, v31, v24);

  (*(v13 + 8))(v18, v12);
}

void __swiftcall NCSummarizationFeedbackManager.init()(NCSummarizationFeedbackManager *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

unint64_t type metadata accessor for NCSummarizationFeedbackManager()
{
  result = qword_27CED7188;
  if (!qword_27CED7188)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CED7188);
  }

  return result;
}

void sub_21E8B6B5C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_21E92A428();
  v2 = [v0 BOOLForKey_];

  byte_27CED7178 = v2;
}

uint64_t sub_21E8B6BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  *(v6 + 272) = a6;
  *(v6 + 16) = a4;
  *(v6 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7190);
  *(v6 + 32) = swift_task_alloc();
  *(v6 + 40) = swift_task_alloc();
  v7 = sub_21E929838();
  *(v6 + 48) = v7;
  *(v6 + 56) = *(v7 - 8);
  *(v6 + 64) = swift_task_alloc();
  v8 = sub_21E929828();
  *(v6 + 72) = v8;
  *(v6 + 80) = *(v8 - 8);
  *(v6 + 88) = swift_task_alloc();
  v9 = sub_21E929988();
  *(v6 + 96) = v9;
  *(v6 + 104) = *(v9 - 8);
  *(v6 + 112) = swift_task_alloc();
  v10 = sub_21E929A18();
  *(v6 + 120) = v10;
  *(v6 + 128) = *(v10 - 8);
  *(v6 + 136) = swift_task_alloc();
  v11 = sub_21E9299B8();
  *(v6 + 144) = v11;
  *(v6 + 152) = *(v11 - 8);
  *(v6 + 160) = swift_task_alloc();
  v12 = sub_21E9299E8();
  *(v6 + 168) = v12;
  *(v6 + 176) = *(v12 - 8);
  *(v6 + 184) = swift_task_alloc();
  v13 = sub_21E929808();
  *(v6 + 192) = v13;
  *(v6 + 200) = *(v13 - 8);
  *(v6 + 208) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E8B6F1C, 0, 0);
}

uint64_t sub_21E8B6F1C()
{
  v50 = v0;
  if (qword_27CED6AD8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);
  v4 = *(v0 + 16);
  v5 = sub_21E929A78();
  *(v0 + 216) = __swift_project_value_buffer(v5, qword_27CED9EA8);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_21E929A58();
  v7 = sub_21E92A648();
  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 200);
  v9 = *(v0 + 208);
  v11 = *(v0 + 192);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v48 = v13;
    *v12 = 136446210;
    sub_21E8B8E88();
    v14 = sub_21E92AA28();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_21E79841C(v14, v16, &v48);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_21E77E000, v6, v7, "Received feedback with action %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x223D65FB0](v13, -1, -1);
    MEMORY[0x223D65FB0](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = *(v0 + 272);
  v19 = *(v0 + 24);
  v20 = [v19 sectionIdentifier];
  v21 = sub_21E92A458();
  v23 = v22;

  v48 = v21;
  v49 = v23;
  MEMORY[0x223D64660](58, 0xE100000000000000);
  v24 = [v19 notificationIdentifier];
  v25 = sub_21E92A458();
  v27 = v26;

  MEMORY[0x223D64660](v25, v27);

  v29 = v48;
  v28 = v49;
  if (v18)
  {
    v30 = [*(v0 + 24) sectionIdentifier];
    v31 = sub_21E92A458();
    v33 = v32;

    if (v31 == 0xD000000000000013 && 0x800000021E956610 == v33)
    {
    }

    else
    {
      v34 = sub_21E92AA58();

      if ((v34 & 1) == 0)
      {
        v35 = [*(v0 + 24) content];
        v36 = [v35 spotlightIdentifier];

        if (v36)
        {

          v29 = sub_21E92A458();
          v28 = v37;
        }
      }
    }
  }

  *(v0 + 224) = v28;
  v38 = *(v0 + 24);
  v39 = *(v0 + 272);
  sub_21E929948();
  swift_allocObject();
  *(v0 + 232) = sub_21E929938();
  v40 = [v38 sectionIdentifier];
  v41 = sub_21E92A458();
  v43 = v42;

  *(v0 + 240) = v43;
  v47 = (*MEMORY[0x277D42128] + MEMORY[0x277D42128]);
  v44 = swift_task_alloc();
  *(v0 + 248) = v44;
  *v44 = v0;
  v44[1] = sub_21E8B7354;
  v45 = *(v0 + 184);

  return v47(v45, v29, v28, v41, v43, v39 & 1);
}

uint64_t sub_21E8B7354()
{

  return MEMORY[0x2822009F8](sub_21E8B74AC, 0, 0);
}

uint64_t sub_21E8B74AC()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  v7 = *(v0 + 56);
  v30 = *(v0 + 48);
  v31 = *(v0 + 273);
  v33 = *(v0 + 64);
  v34 = *(v0 + 24);
  (*(v2 + 104))(v1, *MEMORY[0x277D424B8], v3);
  (*(v6 + 104))(v4, *MEMORY[0x277D42478], v5);
  sub_21E9299C8();
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  (*(v7 + 104))(v33, *MEMORY[0x277D085B0], v30);
  v8 = [v34 sectionIdentifier];
  sub_21E92A458();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7198);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED71A0);
  v10 = (*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21E947520;
  v12 = v11 + v10;
  strcpy((v11 + v10), ":sub_feature");
  *(v12 + 13) = 0;
  *(v12 + 14) = -5120;
  v13 = *MEMORY[0x277D08658];
  v14 = sub_21E929878();
  (*(*(v14 - 8) + 104))(v11 + v10, v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED71A8);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_21E947520;
  v16 = sub_21E9299D8();
  if (v31)
  {
    if (v31 == 1)
    {
      v17 = 0xED0000657572745FLL;
      if ((v16 & 1) == 0)
      {
        v17 = 0xEE0065736C61665FLL;
      }

      v18 = 0x797469726F697270;
    }

    else
    {
      v18 = 0xD00000000000001ALL;
      if (v16)
      {
        v17 = 0x800000021E9565F0;
      }

      else
      {
        v17 = 0x800000021E9565D0;
        v18 = 0xD00000000000001BLL;
      }
    }
  }

  else
  {
    v17 = 0xEC000000796C6E6FLL;
    v18 = 0x5F7972616D6D7573;
  }

  v19 = *(v0 + 80);
  v20 = *(v0 + 88);
  v32 = *(v0 + 72);
  v21 = *(v0 + 32);
  v22 = *(v0 + 40);
  v23 = *(v9 + 48);
  *(v15 + 32) = v18;
  *(v15 + 40) = v17;
  *(v12 + v23) = v15;
  sub_21E90E734(v11);
  swift_setDeallocating();
  sub_21E8B4CAC(v12, &qword_27CED71A0);
  swift_deallocClassInstance();
  sub_21E929998();
  v24 = sub_21E929858();
  v25 = *(*(v24 - 8) + 56);
  v25(v22, 0, 1, v24);
  sub_21E9299A8();
  v25(v21, 0, 1, v24);
  v26 = objc_allocWithZone(sub_21E929868());
  *v20 = sub_21E929848();
  (*(v19 + 104))(v20, *MEMORY[0x277D08530], v32);
  v27 = swift_task_alloc();
  *(v0 + 256) = v27;
  *v27 = v0;
  v27[1] = sub_21E8B799C;
  v28 = *(v0 + 16);

  return MEMORY[0x28215E828](v28, 1);
}

uint64_t sub_21E8B799C()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_21E8B7BDC;
  }

  else
  {
    v2 = sub_21E8B7AB0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21E8B7AB0()
{
  (*(v0[10] + 8))(v0[11], v0[9]);
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  (*(v0[19] + 8))(v0[20], v0[18]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_21E8B7BDC()
{
  v1 = v0[33];
  (*(v0[10] + 8))(v0[11], v0[9]);
  v2 = v1;
  v3 = sub_21E929A58();
  v4 = sub_21E92A628();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[33];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_21E77E000, v3, v4, "Failed to send feedback: %{public}@", v7, 0xCu);
    sub_21E8B4CAC(v8, &qword_27CED7360);
    MEMORY[0x223D65FB0](v8, -1, -1);
    MEMORY[0x223D65FB0](v7, -1, -1);
  }

  v12 = v0[22];
  v11 = v0[23];
  v13 = v0[21];
  (*(v0[19] + 8))(v0[20], v0[18]);
  (*(v12 + 8))(v11, v13);

  v14 = v0[1];

  return v14();
}

uint64_t sub_21E8B7DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_21E929A28();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = sub_21E929A08();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v8 = sub_21E929A38();
  v5[10] = v8;
  v5[11] = *(v8 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E8B7F74, 0, 0);
}

uint64_t sub_21E8B7F74()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v4 = *(v3 + 16);
  v4(v1, *(v0 + 16), v2);
  v5 = (*(v3 + 88))(v1, v2);
  if (v5 == *MEMORY[0x277D42510])
  {
    [*(v0 + 24) isHighlight];
LABEL_9:
    v7 = *(v0 + 24);
    v4(*(v0 + 96), *(v0 + 16), *(v0 + 80));
    v8 = [v7 sectionIdentifier];
    sub_21E92A458();

    v9 = [v7 content];
    v10 = [v9 title];

    sub_21E92A458();
    v11 = [v7 content];
    v12 = [v11 message];

    sub_21E92A458();
    v13 = [v7 content];
    v14 = [v13 subtitle];

    if (v14)
    {
      sub_21E92A458();
    }

    v15 = [*(v0 + 24) content];
    [v15 isCommunicationType];

    sub_21E9299F8();
    sub_21E929978();
    *(v0 + 112) = sub_21E929968();
    v16 = swift_task_alloc();
    *(v0 + 120) = v16;
    *v16 = v0;
    v16[1] = sub_21E8B83B0;
    v17 = *(v0 + 72);
    v18 = *(v0 + 48);

    return MEMORY[0x2821A2B40](v18, v17);
  }

  if (v5 == *MEMORY[0x277D42508] || v5 == *MEMORY[0x277D42518])
  {
    [*(v0 + 24) isHighlight];
    goto LABEL_9;
  }

  if (qword_27CED6AD8 != -1)
  {
    swift_once();
  }

  v19 = sub_21E929A78();
  __swift_project_value_buffer(v19, qword_27CED9EA8);
  v20 = sub_21E929A58();
  v21 = sub_21E92A628();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_21E77E000, v20, v21, "Unknown PriorityFeedbackRequestType", v22, 2u);
    MEMORY[0x223D65FB0](v22, -1, -1);
  }

  v23 = *(v0 + 104);
  v24 = *(v0 + 80);
  v25 = *(v0 + 88);

  (*(v25 + 8))(v23, v24);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_21E8B83B0()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {

    v3 = sub_21E8B85A8;
  }

  else
  {
    (*(v2[5] + 8))(v2[6], v2[4]);

    v3 = sub_21E8B8508;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21E8B8508()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_21E8B85A8()
{
  (*(v0[8] + 8))(v0[9], v0[7]);
  if (qword_27CED6AD8 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = sub_21E929A78();
  __swift_project_value_buffer(v2, qword_27CED9EA8);
  v3 = v1;
  v4 = sub_21E929A58();
  v5 = sub_21E92A628();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[16];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_21E77E000, v4, v5, "Failed to send priority feedback: %{public}@", v8, 0xCu);
    sub_21E8B4CAC(v9, &qword_27CED7360);
    MEMORY[0x223D65FB0](v9, -1, -1);
    MEMORY[0x223D65FB0](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_21E8B878C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_21E929A38() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_21E8B90C0;

  return sub_21E8B7DF0(a1, v7, v8, v1 + v6, v9);
}

uint64_t sub_21E8B88CC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_21E929A38() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_21E8B8A0C;

  return sub_21E8B7DF0(a1, v7, v8, v1 + v6, v9);
}

uint64_t sub_21E8B8A0C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_21E8B8B00()
{
  result = qword_280D049D0;
  if (!qword_280D049D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D049D0);
  }

  return result;
}

void *sub_21E8B8B54(void *a1)
{
  if (MEMORY[0x223D63A90]())
  {
    v2 = [a1 content];
    v3 = [v2 summary];

    if (v3)
    {
    }
  }

  else
  {

    return 0;
  }

  return a1;
}

id sub_21E8B8C00()
{
  result = NCUserNotificationsUIKitFrameworkBundle();
  if (result)
  {
    v1 = result;
    v7 = &type metadata for NotificationsUIFeatureFlags;
    v8 = sub_21E8B8B00();
    v6[0] = 2;
    sub_21E9297F8();
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    v2 = sub_21E92A428();
    v3 = sub_21E92A428();
    v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

    v5 = sub_21E92A458();
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21E8B8D48(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_21E929808() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8) | (*(v9 + 9) << 8);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_21E8B90C0;

  return sub_21E8B6BEC(a1, v7, v8, v1 + v6, v10, v11);
}

unint64_t sub_21E8B8E88()
{
  result = qword_27CED71B0;
  if (!qword_27CED71B0)
  {
    sub_21E929808();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CED71B0);
  }

  return result;
}

uint64_t objectdestroyTm_0(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v6 + 10, v4 | 7);
}

uint64_t sub_21E8B8FC0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21E8B9008(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21E8B906C()
{
  result = qword_27CED71B8;
  if (!qword_27CED71B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CED71B8);
  }

  return result;
}