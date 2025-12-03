@interface WFJudge
+ (id)defaultJudge;
+ (id)defaultLSMMapPath;
+ (void)defaultJudge;
- (WFJudge)initWithMap:(id)map;
- (WFJudge)initWithMap:(id)map systemContentWhitelist:(id)whitelist;
- (id)_pronounceOnWebpage:(id)webpage;
- (id)pronounceOnPageContent:(id)content pageURL:(id)l debugPage:(id *)page pageTitle:(id *)title;
- (id)pronounceOnPageContent:(id)content pageURL:(id)l whitelistUserPreferences:(id)preferences debugPage:(id *)page pageTitle:(id *)title;
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

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v11 = 0;
  defaultLSMMapPath = [self defaultLSMMapPath];
  if ([defaultManager fileExistsAtPath:defaultLSMMapPath isDirectory:&v11] && (v11 & 1) == 0)
  {
    gDefaultJudge = [objc_alloc(objc_opt_class()) initWithMap:{+[WFLSMMap mapFromFilePath:](WFLSMScoreNormalizedMap, "mapFromFilePath:", defaultLSMMapPath)}];
    v9 = __WFDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      defaultLSMMapPath2 = [self defaultLSMMapPath];
      *buf = 136446466;
      v13 = "+[WFJudge defaultJudge]";
      v14 = 2112;
      v15 = defaultLSMMapPath2;
      _os_log_impl(&dword_272D73000, v9, OS_LOG_TYPE_INFO, "%{public}s map:%@", buf, 0x16u);
    }

    goto LABEL_3;
  }

  v7 = __WFDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    +[(WFJudge *)self];
  }

  result = 0;
LABEL_9:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (WFJudge)initWithMap:(id)map
{
  v5 = +[WFSystemContentWhitelist defaultSystemWhitelist];

  return [(WFJudge *)self initWithMap:map systemContentWhitelist:v5];
}

- (WFJudge)initWithMap:(id)map systemContentWhitelist:(id)whitelist
{
  v8.receiver = self;
  v8.super_class = WFJudge;
  v6 = [(WFJudge *)&v8 init];
  if (v6)
  {
    v6->map = map;
    v6->whitelist = whitelist;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = WFJudge;
  [(WFJudge *)&v3 dealloc];
}

- (id)_pronounceOnWebpage:(id)webpage
{
  v5 = objc_opt_new();
  if ([webpage selfRestricted])
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
  if (![webpage isWorthAnalyzingWithEvidence:&v17 message:&v16])
  {
LABEL_8:
    [v5 setRestricted:0];
    [v5 setEvidence:v17];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Page not analyzed: %@", v16];
    goto LABEL_9;
  }

  uRLString = [webpage URLString];
  if (uRLString)
  {
    v8 = [MEMORY[0x277CBEBC0] URLWithString:uRLString];
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

  v10 = -[WFLSMMap evaluate:](self->map, "evaluate:", [webpage plainText]);
  isRestricted = [v10 isRestricted];
  if (isRestricted)
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
  [v5 setRestricted:isRestricted];
  [v5 setLSMEvaluationResult:v10];
  [v5 setEvidence:0];
  return v5;
}

- (id)pronounceOnPageContent:(id)content pageURL:(id)l debugPage:(id *)page pageTitle:(id *)title
{
  if (content)
  {
    page = [(WFWebPageDecorator *)WFWebPageToFilterText webPageWithString:content URLString:l, page];
    v10 = page;
    if (title)
    {
      *title = [page pageTitle];
    }

    if (v10)
    {
      v11 = [(WFJudge *)self _pronounceOnWebpage:v10];
      [v11 setURL:l];
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

  title = [v13 stringWithFormat:v14, l, page, title];

  return [WFVerdict verdictWithRestriction:0 URL:l evidence:2 LSMEvaluationResult:0 message:title];
}

- (id)pronounceOnPageContent:(id)content pageURL:(id)l whitelistUserPreferences:(id)preferences debugPage:(id *)page pageTitle:(id *)title
{
  contentCopy = content;
  v25 = *MEMORY[0x277D85DE8];
  v22 = 1;
  if (preferences)
  {
    filterEnabled = [preferences filterEnabled];
    if (filterEnabled)
    {
      LOBYTE(filterEnabled) = [preferences whitelistEnabled];
    }

    v22 = filterEnabled;
    v13 = [preferences pronounceOnPageURLString:l shouldFilter:&v22];
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

  if (contentCopy)
  {
    contentCopy = [(WFWebPageDecorator *)WFWebPageToFilterText webPageWithString:contentCopy URLString:l];
  }

  if (title)
  {
    *title = [contentCopy pageTitle];
  }

  if ([l hasPrefix:@"https://"])
  {
    if ([preferences alwaysAllowHTTPS])
    {
      v15 = @"Always allow HTTPS";
LABEL_15:
      lCopy2 = l;
      v17 = 10;
LABEL_30:
      v13 = [WFVerdict verdictWithRestriction:0 URL:lCopy2 evidence:v17 LSMEvaluationResult:0 message:v15];
      goto LABEL_31;
    }

    if (v13 && ([preferences whitelistEnabled] & 1) == 0 && (!objc_msgSend(preferences, "filterEnabled") || -[WFVerdict evidence](v13, "evidence") != 8))
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

    if (!contentCopy)
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Allowed, NULL pageContentString"];
      lCopy2 = l;
      v17 = 2;
      goto LABEL_30;
    }

    v13 = [(WFJudge *)self _pronounceOnWebpage:contentCopy];
    [(WFVerdict *)v13 setURL:l];
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