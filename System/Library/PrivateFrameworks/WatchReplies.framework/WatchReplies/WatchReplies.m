id WRBundle()
{
  if (WRBundle_onceToken != -1)
  {
    WRBundle_cold_1();
  }

  v1 = WRBundle_sWRBundle;

  return v1;
}

uint64_t __WRBundle_block_invoke()
{
  WRBundle_sWRBundle = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.WatchReplies"];

  return MEMORY[0x2821F96F8]();
}

void sub_272AC35A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id WRLocalizedCategoryString(void *a1, unint64_t a2, void *a3)
{
  if (a2 > 9)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_279E66A48[a2];
  }

  v5 = MEMORY[0x277CCA8D8];
  v6 = a3;
  v7 = a1;
  v8 = [v5 bundleWithIdentifier:@"com.apple.WatchReplies"];
  v9 = WRLocalizedStringForLanguage(v6, v7, v4, v8);

  return v9;
}

id WRDeviceLanguage()
{
  v0 = MEMORY[0x277CBEAF8];
  v1 = [MEMORY[0x277CBEAF8] currentLocale];
  v2 = [v1 localeIdentifier];
  v3 = [v0 canonicalLanguageIdentifierFromString:v2];

  return v3;
}

id WRLocalizedStringForLanguage(void *a1, void *a2, void *a3, void *a4)
{
  v45 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = WRDeviceLanguage();
  if (![(__CFString *)v7 length])
  {
    v12 = v11;

    v7 = v12;
  }

  if ([(__CFString *)v9 length])
  {
    if (v10)
    {
      goto LABEL_5;
    }
  }

  else
  {

    v9 = @"Localizable";
    if (v10)
    {
      goto LABEL_5;
    }
  }

  v10 = [MEMORY[0x277CCA8D8] mainBundle];
LABEL_5:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v32 = [v8 UTF8String];
    v33 = [(__CFString *)v7 UTF8String];
    v34 = [(__CFString *)v9 UTF8String];
    v35 = [v10 bundleIdentifier];
    *buf = 136315906;
    v38 = v32;
    v39 = 2080;
    v40 = v33;
    v41 = 2080;
    v42 = v34;
    v43 = 2080;
    v44 = [v35 UTF8String];
    _os_log_debug_impl(&dword_272AC2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "#quickboard Lookup '%s' in %s, table: %s bundle: %s", buf, 0x2Au);
  }

  if (([(__CFString *)v7 isEqualToString:v11]& 1) != 0)
  {
    goto LABEL_33;
  }

  if (-[__CFString isEqualToString:](v7, "isEqualToString:", @"zh-Hant") && ([MEMORY[0x277CBEAF8] currentLocale], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "objectForKey:", *MEMORY[0x277CBE690]), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqualToString:", @"HK"), v14, v13, v15))
  {

    v7 = @"zh-HK";
  }

  else if (!v7)
  {
    goto LABEL_21;
  }

  v16 = [MEMORY[0x277CBEAF8] canonicalLocaleIdentifierFromString:v7];
  if (v16)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      WRLocalizedStringForLanguage_cold_1(v16);
    }

    v17 = [v10 localizations];
    v36 = v16;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
    v19 = [MEMORY[0x277CCA8D8] preferredLocalizationsFromArray:v17 forPreferences:0];
    v20 = [v18 arrayByAddingObjectsFromArray:v19];

    v21 = [MEMORY[0x277CBEAF8] mostPreferredLanguageOf:v17 withPreferredLanguages:v20 forUsage:1 options:1];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      WRLocalizedStringForLanguage_cold_2(v21);
    }

    v7 = v21;
  }

LABEL_21:
  if (WRLocalizedStringForLanguage_onceToken != -1)
  {
    WRLocalizedStringForLanguage_cold_3();
  }

  v22 = MEMORY[0x277CCACA8];
  v23 = [v10 bundleIdentifier];
  v24 = [v22 stringWithFormat:@"%@%@%@", v23, v7, v9];

  v25 = [WRLocalizedStringForLanguage_stringTablesCache objectForKey:v24];
  if (!v25)
  {
    v26 = @"Localizable";
    if (v9)
    {
      v26 = v9;
    }

    v27 = v26;
    v28 = [v10 pathForResource:v27 ofType:@"strings" inDirectory:0 forLocalization:v7];
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v28];
    if ([v25 count])
    {
      [WRLocalizedStringForLanguage_stringTablesCache setObject:v25 forKey:v24];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        WRLocalizedStringForLanguage_cold_4(v27, v28);
      }
    }
  }

  v29 = [v25 objectForKey:v8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    WRLocalizedStringForLanguage_cold_5(v25, v29);
  }

  if (!v29)
  {
LABEL_33:
    v29 = [v10 localizedStringForKey:v8 value:0 table:v9];
  }

  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

uint64_t __WRLocalizedStringForLanguage_block_invoke()
{
  WRLocalizedStringForLanguage_stringTablesCache = objc_alloc_init(MEMORY[0x277CBEA78]);

  return MEMORY[0x2821F96F8]();
}

void sub_272AC519C(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x272AC5130);
  }

  _Unwind_Resume(exc_buf);
}

void sub_272AC53F0(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x272AC5388);
  }

  _Unwind_Resume(exc_buf);
}

void sub_272AC5CF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  objc_begin_catch(a1);
  JUMPOUT(0x272AC5C20);
}

void sub_272AC603C(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x272AC5FECLL);
  }

  _Unwind_Resume(exc_buf);
}

void WRLocalizedStringForLanguage_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 UTF8String];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void WRLocalizedStringForLanguage_cold_2(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 UTF8String];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void WRLocalizedStringForLanguage_cold_4(void *a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 UTF8String];
  [a2 UTF8String];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

void WRLocalizedStringForLanguage_cold_5(int a1, id a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [a2 UTF8String];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
  v9 = *MEMORY[0x277D85DE8];
}