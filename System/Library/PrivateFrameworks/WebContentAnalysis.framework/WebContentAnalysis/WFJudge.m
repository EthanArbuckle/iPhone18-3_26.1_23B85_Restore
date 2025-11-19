@interface WFJudge
+ (id)defaultJudge;
+ (id)defaultLSMMapPath;
+ (void)defaultJudge;
- (WFJudge)initWithMap:(id)a3;
- (WFJudge)initWithMap:(id)a3 systemContentWhitelist:(id)a4;
- (id)_pronounceOnWebpage:(id)a3;
- (id)pronounceOnPageContent:(id)a3 pageURL:(id)a4 debugPage:(id *)a5 pageTitle:(id *)a6;
- (id)pronounceOnPageContent:(id)a3 pageURL:(id)a4 whitelistUserPreferences:(id)a5 debugPage:(id *)a6 pageTitle:(id *)a7;
- (void)dealloc;
@end

@implementation WFJudge

+ (id)defaultLSMMapPath
{
  result = defaultLSMMapPath_result;
  if (!defaultLSMMapPath_result)
  {
    defaultLSMMapPath_result = [objc_msgSend(MEMORY[0x277CCA8D8] bundleWithPath:{@"/System/Library/PrivateFrameworks/WebContentAnalysis.framework", "pathForResource:ofType:", @"content_filter_map3", 0}];
    v3 = defaultLSMMapPath_result;
    return defaultLSMMapPath_result;
  }

  return result;
}

+ (id)defaultJudge
{
  v16 = *MEMORY[0x277D85DE8];
  if (gDefaultJudge)
  {
    v2 = gDefaultJudge;
LABEL_3:
    result = gDefaultJudge;
    goto LABEL_9;
  }

  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = 0;
  v6 = [a1 defaultLSMMapPath];
  if ([v5 fileExistsAtPath:v6 isDirectory:&v11] && (v11 & 1) == 0)
  {
    gDefaultJudge = [objc_alloc(objc_opt_class()) initWithMap:{+[WFLSMMap mapFromFilePath:](WFLSMScoreNormalizedMap, "mapFromFilePath:", v6)}];
    v9 = __WFDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [a1 defaultLSMMapPath];
      *buf = 136446466;
      v13 = "+[WFJudge defaultJudge]";
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_272D73000, v9, OS_LOG_TYPE_INFO, "%{public}s map:%@", buf, 0x16u);
    }

    goto LABEL_3;
  }

  v7 = __WFDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    +[(WFJudge *)a1];
  }

  result = 0;
LABEL_9:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (WFJudge)initWithMap:(id)a3
{
  v5 = +[WFSystemContentWhitelist defaultSystemWhitelist];

  return [(WFJudge *)self initWithMap:a3 systemContentWhitelist:v5];
}

- (WFJudge)initWithMap:(id)a3 systemContentWhitelist:(id)a4
{
  v8.receiver = self;
  v8.super_class = WFJudge;
  v6 = [(WFJudge *)&v8 init];
  if (v6)
  {
    v6->map = a3;
    v6->whitelist = a4;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = WFJudge;
  [(WFJudge *)&v3 dealloc];
}

- (id)_pronounceOnWebpage:(id)a3
{
  v5 = objc_opt_new();
  if ([a3 selfRestricted])
  {
    [v5 setRestricted:1];
    [v5 setEvidence:3];
    v6 = @"SELF-RESTRICTED";
LABEL_9:
    [v5 setMessage:v6];
    return v5;
  }

  v17 = 0;
  v16 = 0;
  if (![a3 isWorthAnalyzingWithEvidence:&v17 message:&v16])
  {
LABEL_8:
    [v5 setRestricted:0];
    [v5 setEvidence:v17];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Page not analyzed: %@", v16];
    goto LABEL_9;
  }

  v7 = [a3 URLString];
  if (v7)
  {
    v8 = [MEMORY[0x277CBEBC0] URLWithString:v7];
    if (v8)
    {
      v9 = v8;
      if ([(WFSystemContentWhitelist *)self->whitelist isURLWhitelisted:v8])
      {
        v17 = 1;
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"URL (%@) is known-clean", v9];
        goto LABEL_8;
      }
    }
  }

  v10 = -[WFLSMMap evaluate:](self->map, "evaluate:", [a3 plainText]);
  v11 = [v10 isRestricted];
  if (v11)
  {
    v12 = @"RESTRICTED";
  }

  else
  {
    v12 = @" Allowed  ";
  }

  v13 = [MEMORY[0x277CCAB68] stringWithString:v12];
  v14 = v13;
  if (v16)
  {
    [v13 appendFormat:@" %@", v16];
  }

  [v5 setMessage:v14];
  [v5 setRestricted:v11];
  [v5 setLSMEvaluationResult:v10];
  [v5 setEvidence:0];
  return v5;
}

- (id)pronounceOnPageContent:(id)a3 pageURL:(id)a4 debugPage:(id *)a5 pageTitle:(id *)a6
{
  if (a3)
  {
    v9 = [(WFWebPageDecorator *)WFWebPageToFilterText webPageWithString:a3 URLString:a4, a5];
    v10 = v9;
    if (a6)
    {
      *a6 = [v9 pageTitle];
    }

    if (v10)
    {
      v11 = [(WFJudge *)self _pronounceOnWebpage:v10];
      [v11 setURL:a4];
      return v11;
    }

    v13 = MEMORY[0x277CCACA8];
    v14 = @"Allowed, nil webpage";
  }

  else
  {
    v13 = MEMORY[0x277CCACA8];
    v14 = @"Allowed, nil pageContentString";
  }

  v15 = [v13 stringWithFormat:v14, a4, a5, a6];

  return [WFVerdict verdictWithRestriction:0 URL:a4 evidence:2 LSMEvaluationResult:0 message:v15];
}

- (id)pronounceOnPageContent:(id)a3 pageURL:(id)a4 whitelistUserPreferences:(id)a5 debugPage:(id *)a6 pageTitle:(id *)a7
{
  v10 = a3;
  v25 = *MEMORY[0x277D85DE8];
  v22 = 1;
  if (a5)
  {
    v12 = [a5 filterEnabled];
    if (v12)
    {
      LOBYTE(v12) = [a5 whitelistEnabled];
    }

    v22 = v12;
    v13 = [a5 pronounceOnPageURLString:a4 shouldFilter:&v22];
  }

  else
  {
    v13 = 0;
  }

  v14 = __WFDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v24 = v13;
    _os_log_impl(&dword_272D73000, v14, OS_LOG_TYPE_INFO, "whitelistVerdict: %@", buf, 0xCu);
  }

  if (v10)
  {
    v10 = [(WFWebPageDecorator *)WFWebPageToFilterText webPageWithString:v10 URLString:a4];
  }

  if (a7)
  {
    *a7 = [v10 pageTitle];
  }

  if ([a4 hasPrefix:@"https://"])
  {
    if ([a5 alwaysAllowHTTPS])
    {
      v15 = @"Always allow HTTPS";
LABEL_15:
      v16 = a4;
      v17 = 10;
LABEL_30:
      v13 = [WFVerdict verdictWithRestriction:0 URL:v16 evidence:v17 LSMEvaluationResult:0 message:v15];
      goto LABEL_31;
    }

    if (v13 && ([a5 whitelistEnabled] & 1) == 0 && (!objc_msgSend(a5, "filterEnabled") || -[WFVerdict evidence](v13, "evidence") != 8))
    {
      [(WFVerdict *)v13 setMessage:@"https url but user has no whitelist restrictions"];
      v15 = @"user has no whitelist restrictions";
      goto LABEL_15;
    }
  }

  else if (v13 && (v22 & 1) == 0)
  {
    v19 = __WFDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_272D73000, v19, OS_LOG_TYPE_INFO, "URL found in white/black list, no need to use the LSM analyzer...", buf, 2u);
    }
  }

  else
  {
    v18 = __WFDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_272D73000, v18, OS_LOG_TYPE_INFO, "LSM analyzer used to evaluate page content", buf, 2u);
    }

    if (!v10)
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Allowed, NULL pageContentString"];
      v16 = a4;
      v17 = 2;
      goto LABEL_30;
    }

    v13 = [(WFJudge *)self _pronounceOnWebpage:v10];
    [(WFVerdict *)v13 setURL:a4];
  }

LABEL_31:
  v20 = *MEMORY[0x277D85DE8];
  return v13;
}

+ (void)defaultJudge
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = 138412546;
  v8 = NSStringFromClass(v5);
  v9 = 2112;
  v10 = a2;
  _os_log_fault_impl(&dword_272D73000, a3, OS_LOG_TYPE_FAULT, "**** %@ -defaultJudge: LSM map was not found in %@", &v7, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

@end