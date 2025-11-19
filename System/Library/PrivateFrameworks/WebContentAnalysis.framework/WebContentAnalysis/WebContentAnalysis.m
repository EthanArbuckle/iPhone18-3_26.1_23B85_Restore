uint64_t __WFDefaultLog()
{
  if (__WFDefaultLog_onceToken != -1)
  {
    __WFDefaultLog_cold_1();
  }

  return __WFDefaultLog_log;
}

uint64_t IndexOfBody(void *a1)
{
  if (a1)
  {
    v2 = [a1 length];
    v3 = [a1 rangeOfString:@"<body" options:1];
    if (v3 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return -1;
    }

    else
    {
      v13 = v3;
      v14 = __WFDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        IndexOfBody_cold_1(v13, v14);
      }

      v15 = [a1 rangeOfString:@">" options:1 range:{v13, v2 - v13}];
      return v15 + v16;
    }
  }

  else
  {
    v5 = __WFDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      IndexOfBody_cold_2(v5, v6, v7, v8, v9, v10, v11, v12);
    }

    return 0;
  }
}

uint64_t DebugHeader(uint64_t a1, void *a2, void *a3, void *a4, int a5)
{
  v8 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithContentsOfFile:@"/Library/Application Support/Apple/ParentalControls/ContentFiltering/debugpageheader.html" encoding:4 error:{0), "WF_stringByReplacingString:withString:", @"DEBUG_MESSAGE", objc_msgSend(a4, "WF_stringByReplacingString:withString:", @" ", @"&nbsp;"}];
  if (a2)
  {
    v9 = [a2 WF_stringByReplacingString:@"\n" withString:@"<br>\n"];
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = @"**** Error: strippedPageInHTML is nil <br>";
    }

    v8 = [v8 WF_stringByReplacingString:@"STRIPPED_PAGE" withString:v10];
  }

  if (a3)
  {
    v11 = [objc_msgSend(a3 WF_stringByReplacingString:@" " withString:{@"&nbsp;", "WF_stringByReplacingString:withString:", @"\n", @"<br>\n"}];
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = @"**** Error: wordDumpInHTML is nil <br>";
    }

    v8 = [v8 WF_stringByReplacingString:@"WORD_DUMP" withString:v12];
  }

  if (a5)
  {
    v13 = @"red";
  }

  else
  {
    v13 = @"green";
  }

  if (a5)
  {
    v14 = @"Restricted";
  }

  else
  {
    v14 = @"Allowed";
  }

  v15 = [v8 WF_stringByReplacingString:@"FILTER_FLAG_COLOR" withString:v13];

  return [v15 WF_stringByReplacingString:@"FILTER_MESSAGE" withString:v14];
}

uint64_t InjectPage(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, int a6)
{
  v6 = a1;
  v7 = DebugHeader(a1, a3, a4, a5, a6);
  if (v6)
  {
    v8 = v7;
    v9 = IndexOfBody(v6);
    if ((v9 & 0x8000000000000000) == 0)
    {
      v10 = v9;
      v11 = [v6 substringToIndex:v9];
      v12 = [v6 substringFromIndex:v10];
      return [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@", v11, v8, v12];
    }

    v22 = __WFDefaultLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      InjectPage_cold_1(v22, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  else
  {
    v14 = __WFDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      InjectPage_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
    }

    return 0;
  }

  return v6;
}

uint64_t ComposeDebugPageSimple(void *a1, uint64_t a2, void *a3)
{
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:a1 encoding:4];
  v7 = [(WFWebPageDecorator *)WFWebPageToFilterText webPageWithString:v6 URLString:a2];

  v8 = [v7 pageContent];
  v9 = ComposeDebugPage(a1, a2, v8, [+[WFLSMMap mapFromFilePath:](WFLSMMap mapFromFilePath:{+[WFJudge defaultLSMMapPath](WFJudge, "defaultLSMMapPath")), "wordDump:", v8}], a3, 1);

  return [v9 dataUsingEncoding:4];
}

uint64_t ComposeDebugPage(void *a1, uint64_t a2, void *a3, void *a4, void *a5, int a6)
{
  v33 = *MEMORY[0x277D85DE8];
  v12 = __WFDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v31 = 138412290;
    v32 = a2;
    _os_log_impl(&dword_272D73000, v12, OS_LOG_TYPE_INFO, "Composing debug page for:%@", &v31, 0xCu);
  }

  v13 = __WFDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    ComposeDebugPage_cold_1(a1, v13);
  }

  v14 = xmlDetectCharEncoding([a1 bytes], objc_msgSend(a1, "length"));
  v15 = 4;
  v16 = 8;
  v17 = 3;
  v18 = 1;
  v19 = v14 != XML_CHAR_ENCODING_ASCII;
  if (v14 != XML_CHAR_ENCODING_ASCII)
  {
    v18 = 4;
  }

  if (v14 == XML_CHAR_ENCODING_EUC_JP)
  {
    v19 = 0;
  }

  else
  {
    v17 = v18;
  }

  v20 = v14 != XML_CHAR_ENCODING_SHIFT_JIS && v19;
  if (v14 != XML_CHAR_ENCODING_SHIFT_JIS)
  {
    v16 = v17;
  }

  v21 = v14 != XML_CHAR_ENCODING_8859_2;
  if (v14 == XML_CHAR_ENCODING_8859_2)
  {
    v15 = 9;
  }

  if (v14 == XML_CHAR_ENCODING_8859_1)
  {
    v21 = 0;
    v15 = 5;
  }

  if (v14 <= XML_CHAR_ENCODING_2022_JP)
  {
    v22 = v21;
  }

  else
  {
    v22 = v20;
  }

  if (v14 <= XML_CHAR_ENCODING_2022_JP)
  {
    v23 = v15;
  }

  else
  {
    v23 = v16;
  }

  v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:a1 encoding:v23];
  v25 = v24;
  if (v22 && !v24)
  {
    v26 = __WFDefaultLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      LOWORD(v31) = 0;
      _os_log_impl(&dword_272D73000, v26, OS_LOG_TYPE_INFO, "NSUTF8StringEncoding encoding doesn't seem to work, trying with NSISOLatin1StringEncoding", &v31, 2u);
    }

    v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:a1 encoding:5];
  }

  v27 = v25;
  if (a6 && WFDebugLevel() == 2)
  {
    v25 = [objc_msgSend(objc_msgSend(v25 WF_stringByReplacingString:@"src" withString:{@"OFF", "WF_stringByReplacingString:withString:", @"SRC", @"OFF", "WF_stringByReplacingString:withString:", @"background-image", @"OFF"}];
  }

  result = InjectPage(v25, v28, a3, a4, a5, a6);
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_0_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

unint64_t _NSHTMLEncoding(uint64_t a1, unint64_t a2)
{
  if (a2 <= 8)
  {
    v4 = 8;
  }

  else
  {
    v4 = a2;
  }

  v5 = 8 - v4;
  v6 = 7;
  do
  {
    if (v5 + v6 == 7)
    {
      return 0;
    }
  }

  while (strncasecmp((a1 + v6++ - 7), "charset=", 8uLL));
  if (v6 + 1 >= a2)
  {
    return 0;
  }

  v8 = 0;
  v9 = -1;
  v10 = v6;
  do
  {
    if (!v8 && *(a1 + v6) == 34)
    {
      ++v10;
      if ((v9 & 0x8000000000000000) == 0)
      {
        break;
      }

      goto LABEL_16;
    }

    if (*(a1 + v8 + v6) == 34)
    {
      v9 = v6 + v8 - v10;
    }

    if ((v9 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_16:
    v11 = v6 + v8++ + 2;
  }

  while (v11 < a2);
  if (v9 < 1)
  {
    return 0;
  }

  v12 = CFStringCreateWithBytes(0, (a1 + v10), v9, 0x201u, 0);
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v14 = CFStringConvertIANACharSetNameToEncoding(v12);
  CFRelease(v13);
  if (v14 == -1)
  {
    return 0;
  }

  return CFStringConvertEncodingToNSStringEncoding(v14);
}

uint64_t _WFEvaluateVerdict(void *a1, uint64_t *a2)
{
  if (a2)
  {
    v4 = [a1 LSMEvaluationResult];
    if (v4)
    {
      v5 = [v4 debugDescription];
    }

    else
    {
      v5 = [a1 message];
    }

    *a2 = v5;
  }

  return [a1 restricted];
}

uint64_t WFIsWebPageExplicit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = [+[WFJudge defaultJudge](WFJudge "defaultJudge")];
  v6 = v5;
  if (a4)
  {
    v7 = [v5 LSMEvaluationResult];
    if (v7)
    {
      v8 = [v7 debugDescription];
    }

    else
    {
      v8 = [v6 message];
    }

    *a4 = v8;
  }

  return [v6 restricted];
}

uint64_t WFIsWebPageToRestrictForUser(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v9 = [WFWhitelistUserPreferences defaultWhitelistForUser:a1];
  if (!v9)
  {
    v10 = __WFDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      WFIsWebPageToRestrictForUser_cold_1(v10);
    }
  }

  v11 = +[WFJudge defaultJudge];
  if (!v11 && (v12 = __WFDefaultLog(), os_log_type_enabled(v12, OS_LOG_TYPE_ERROR)))
  {
    WFIsWebPageToRestrictForUser_cold_2(v12);
    if (a2)
    {
      goto LABEL_9;
    }
  }

  else if (a2)
  {
    goto LABEL_9;
  }

  v13 = __WFDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    WFIsWebPageToRestrictForUser_cold_3(v13);
  }

LABEL_9:
  if ([a3 hasPrefix:@"https"])
  {
    if ([v9 alwaysAllowHTTPS])
    {
      v14 = [v9 alwaysAllowHTTPS] ^ 1;
    }

    else
    {
      v26 = 1;
      v19 = [v9 pronounceOnPageURLString:a3 shouldFilter:&v26];
      v20 = v19;
      if (a5)
      {
        v21 = [v19 LSMEvaluationResult];
        if (v21)
        {
          v22 = [v21 debugDescription];
        }

        else
        {
          v22 = [v20 message];
        }

        *a5 = v22;
      }

      v23 = [v20 restricted];
      v24 = __WFDefaultLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        WFIsWebPageToRestrictForUser_cold_4(&v26, v23, v24);
      }

      v14 = v26 | v23;
    }
  }

  else
  {
    v15 = [v11 pronounceOnPageContent:a2 pageURL:a3 whitelistUserPreferences:v9 debugPage:0 pageTitle:a4];
    v16 = v15;
    if (a5)
    {
      v17 = [v15 LSMEvaluationResult];
      if (v17)
      {
        v18 = [v17 debugDescription];
      }

      else
      {
        v18 = [v16 message];
      }

      *a5 = v18;
    }

    v14 = [v16 restricted];
  }

  return v14 & 1;
}

uint64_t WFIsURLExplicit(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = [objc_msgSend(a1 "scheme")];
  if (([v8 isEqualToString:@"https"] & 1) != 0 || (result = objc_msgSend(v8, "isEqualToString:", @"http"), result))
  {
    v10 = +[WFJudge defaultJudge];
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:a2 encoding:4];
    v12 = [v10 pronounceOnPageContent:v11 pageURL:objc_msgSend(a1 debugPage:"absoluteString") pageTitle:{0, a3}];

    if (a4)
    {
      v13 = [v12 LSMEvaluationResult];
      if (v13)
      {
        v14 = [v13 debugDescription];
      }

      else
      {
        v14 = [v12 message];
      }

      *a4 = v14;
    }

    return [v12 restricted];
  }

  return result;
}

uint64_t WFIsURLToRestrictForUser(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = [objc_msgSend(a2 "scheme")];
  if (([v10 isEqualToString:@"https"] & 1) != 0 || (result = objc_msgSend(v10, "isEqualToString:", @"http"), result))
  {
    v12 = [WFWhitelistUserPreferences defaultWhitelistForUser:a1];
    v13 = +[WFJudge defaultJudge];
    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:a3 encoding:4];
    v15 = [v13 pronounceOnPageContent:v14 pageURL:objc_msgSend(a2 whitelistUserPreferences:"absoluteString") debugPage:v12 pageTitle:{0, a4}];

    if (a5)
    {
      v16 = [v15 LSMEvaluationResult];
      if (v16)
      {
        v17 = [v16 debugDescription];
      }

      else
      {
        v17 = [v15 message];
      }

      *a5 = v17;
    }

    return [v15 restricted];
  }

  return result;
}

uint64_t PreferredLanguageForUserName(uint64_t result)
{
  v42 = *MEMORY[0x277D85DE8];
  if (!result)
  {
    goto LABEL_20;
  }

  v1 = result;
  v2 = __WFDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    PreferredLanguageForUserName_cold_1(v1, v2);
  }

  v3 = CFPreferencesCopyValue(@"AppleLanguages", *MEMORY[0x277CBF008], v1, *MEMORY[0x277CBF010]);
  if (![v3 count])
  {
    v8 = __WFDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      PreferredLanguageForUserName_cold_8(v8, v9, v10, v11, v12, v13, v14, v15);
    }

    goto LABEL_19;
  }

  v4 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/WebContentAnalysis.framework"];
  if (!v4)
  {
    v16 = __WFDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      PreferredLanguageForUserName_cold_5(v16, v17, v18, v19, v20, v21, v22, v23);
    }

    goto LABEL_19;
  }

  v5 = [v4 localizations];
  if (![v5 count])
  {
    v24 = __WFDefaultLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      PreferredLanguageForUserName_cold_4(v24, v25, v26, v27, v28, v29, v30, v31);
    }

    goto LABEL_19;
  }

  v6 = [MEMORY[0x277CCA8D8] preferredLocalizationsFromArray:v5 forPreferences:v3];
  if (![v6 count])
  {
    v32 = __WFDefaultLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      PreferredLanguageForUserName_cold_3(v32, v33, v34, v35, v36, v37, v38, v39);
    }

LABEL_19:
    result = 0;
    goto LABEL_20;
  }

  v7 = __WFDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    PreferredLanguageForUserName_cold_2([v6 objectAtIndex:0], v41, v7);
  }

  result = [v6 objectAtIndex:0];
LABEL_20:
  v40 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_272D7C94C(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    v3 = __WFDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      PreferredLanguageForUserName_cold_6(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    objc_end_catch();
    v10 = __WFDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      PreferredLanguageForUserName_cold_7(v10, v11, v12, v13, v14, v15, v16, v17);
    }

    JUMPOUT(0x272D7C918);
  }

  _Unwind_Resume(exception_object);
}

id -[WFBlockPage _blockpage](WFBlockPage *self, SEL a2)
{
  pageTemplateURL = self->pageTemplateURL;
  if (!pageTemplateURL)
  {
    return 0;
  }

  v12 = 0;
  v3 = [MEMORY[0x277CCACA8] stringWithContentsOfURL:pageTemplateURL encoding:4 error:&v12];
  if (!v3)
  {
    v4 = __WFDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(WFBlockPage *)&v12 _blockpage:v4];
    }
  }

  return v3;
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

BOOL _WebFilterIsActive()
{
  v11 = *MEMORY[0x277D85DE8];
  v0 = NSUserName();
  if ([&unk_288271290 containsObject:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "mainBundle"), "bundleIdentifier")}])
  {
    v1 = __WFDefaultLog();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_272D73000, v1, OS_LOG_TYPE_INFO, "_WebFilterIsActive is bypassing filter", &v9, 2u);
    }
  }

  else
  {
    v2 = [[WFUserSettings alloc] initWithUserName:v0];
    if (v2)
    {
      v3 = v2;
      v4 = [(WFUserSettings *)v2 restrictionType]> 0;

      goto LABEL_7;
    }
  }

  v4 = 0;
LABEL_7:
  v5 = __WFDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = @"NO";
    if (v4)
    {
      v6 = @"YES";
    }

    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_272D73000, v5, OS_LOG_TYPE_INFO, "_WebFilterIsActive returning: %@", &v9, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

void sub_272D7DD24(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t *OUTLINED_FUNCTION_5@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void OUTLINED_FUNCTION_7(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

uint64_t NS64BaseStringFromString(void *a1)
{
  v1 = [a1 dataUsingEncoding:4];

  return [v1 base64EncodedStringWithOptions:0];
}

void IndexOfBody_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_debug_impl(&dword_272D73000, a2, OS_LOG_TYPE_DEBUG, "IndexOfBody found body at index:%lu", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void ComposeDebugPage_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_debug_impl(&dword_272D73000, a2, OS_LOG_TYPE_DEBUG, "GuessEncodingForData:%p", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void WFIsWebPageToRestrictForUser_cold_4(unsigned __int8 *a1, char a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v5[0] = 67109376;
  v5[1] = v3;
  v6 = 1024;
  v7 = a2 & 1;
  _os_log_debug_impl(&dword_272D73000, log, OS_LOG_TYPE_DEBUG, "WFIsWebPageToRestrictForUser: https should filter: %d, isRestricted: %d", v5, 0xEu);
  v4 = *MEMORY[0x277D85DE8];
}

void PreferredLanguageForUserName_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136446466;
  v4 = "NSString *PreferredLanguageForUserName(NSString *)";
  v5 = 2112;
  v6 = a1;
  _os_log_debug_impl(&dword_272D73000, a2, OS_LOG_TYPE_DEBUG, "%{public}s ----- getting language for: %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void PreferredLanguageForUserName_cold_2(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 136446466;
  *(buf + 4) = "NSString *PreferredLanguageForUserName(NSString *)";
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  _os_log_debug_impl(&dword_272D73000, log, OS_LOG_TYPE_DEBUG, "%{public}s ----- got preferred loc: %@", buf, 0x16u);
}

void PreferredLanguageForUserName_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2(&dword_272D73000, a1, a3, "%{public}s ----- no preferred locs", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void PreferredLanguageForUserName_cold_4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2(&dword_272D73000, a1, a3, "%{public}s ----- no availableLocs", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void PreferredLanguageForUserName_cold_5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2(&dword_272D73000, a1, a3, "%{public}s ----- no framework bundle", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void PreferredLanguageForUserName_cold_6(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2(&dword_272D73000, a2, a3, "*** Caught exception: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void PreferredLanguageForUserName_cold_7(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2(&dword_272D73000, a1, a3, "%{public}s ----- returning nil", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void PreferredLanguageForUserName_cold_8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2(&dword_272D73000, a1, a3, "%{public}s ----- no languagePrefs", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}