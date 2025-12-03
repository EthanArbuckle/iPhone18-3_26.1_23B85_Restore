@interface WFBlockPage
- (WFBlockPage)initWithUsername:(id)username overridesAllowded:(BOOL)allowded;
- (id)_fileContentWithName:(id)name extension:(id)extension;
- (id)_initWithUsername:(id)username fileName:(id)name;
- (id)page;
- (void)_blockpage;
- (void)dealloc;
@end

@implementation WFBlockPage

- (WFBlockPage)initWithUsername:(id)username overridesAllowded:(BOOL)allowded
{
  v22.receiver = self;
  v22.super_class = WFBlockPage;
  v6 = [(WFBlockPage *)&v22 init];
  if (v6)
  {
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = PreferredLanguageForUserName(username);
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = @"English";
    }

    v6->preferredLanguage = v9;
    v10 = @"blockpage";
    if (!allowded)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-nooverride", @"blockpage"];
    }

    v11 = [v7 URLForResource:v10 withExtension:@"html" subdirectory:0 localization:v9];
    v6->pageTemplateURL = v11;
    if (!v11)
    {
      v12 = __WFDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(WFBlockPage *)v12 initWithUsername:v13 overridesAllowded:v14, v15, v16, v17, v18, v19];
      }
    }

    v20 = v6->pageTemplateURL;
  }

  return v6;
}

- (id)_initWithUsername:(id)username fileName:(id)name
{
  v21.receiver = self;
  v21.super_class = WFBlockPage;
  v6 = [(WFBlockPage *)&v21 init];
  if (v6)
  {
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = PreferredLanguageForUserName(username);
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = @"English";
    }

    v6->preferredLanguage = v9;
    v10 = [v7 URLForResource:name withExtension:@"html" subdirectory:0 localization:v9];
    v6->pageTemplateURL = v10;
    if (!v10)
    {
      v11 = __WFDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(WFBlockPage *)v11 _initWithUsername:v12 fileName:v13, v14, v15, v16, v17, v18];
      }
    }

    v19 = v6->pageTemplateURL;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = WFBlockPage;
  [(WFBlockPage *)&v3 dealloc];
}

- (id)_fileContentWithName:(id)name extension:(id)extension
{
  v5 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "URLForResource:withExtension:subdirectory:localization:", name, extension, 0, self->preferredLanguage}];
  if (v5)
  {
    v16 = 0;
    v6 = [MEMORY[0x277CCACA8] stringWithContentsOfURL:v5 encoding:4 error:&v16];
    if (!v6)
    {
      v7 = __WFDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(WFBlockPage *)name _fileContentWithName:v7 extension:?];
      }
    }
  }

  else
  {
    v8 = __WFDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(WFBlockPage *)name _fileContentWithName:v8 extension:v9, v10, v11, v12, v13, v14];
    }

    return 0;
  }

  return v6;
}

- (id)page
{
  _blockpage = [(WFBlockPage *)self _blockpage];
  if (!_blockpage)
  {
    v7 = __WFDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(WFBlockPage *)v7 page];
    }

    return 0;
  }

  v4 = _blockpage;
  if (self->userVisibleURLString)
  {
    v5 = [MEMORY[0x277CBEBC0] URLWithString:?];
    if (objc_opt_respondsToSelector())
    {
      _lp_simplifiedDisplayString = [v5 _lp_simplifiedDisplayString];
    }

    else
    {
      _lp_simplifiedDisplayString = [v5 absoluteString];
    }

    v4 = [v4 stringByReplacingOccurrencesOfString:@"USER_VISIBLE_RESTRICTED_URL_NO_LOC" withString:_lp_simplifiedDisplayString];
  }

  if (self->formActionURLString)
  {
    v4 = [v4 stringByReplacingOccurrencesOfString:@"UNBLOCK_URL_NO_LOC" withString:?];
  }

  _css = [(WFBlockPage *)self _css];
  if (!_css)
  {
    return v4;
  }

  return [v4 stringByReplacingOccurrencesOfString:@"INCLUDE_CSS_FILE_NO_LOC" withString:_css];
}

- (void)initWithUsername:(uint64_t)a3 overridesAllowded:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2(&dword_272D73000, a1, a3, "**** Error %{public}s: pageTemplateURL is nil", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_initWithUsername:(uint64_t)a3 fileName:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2(&dword_272D73000, a1, a3, "**** Error %{public}s: pageTemplateURL is nil", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_blockpage
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*self);
  OUTLINED_FUNCTION_0_2(&dword_272D73000, a2, a3, "**** error loading block page: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_fileContentWithName:(os_log_t)log extension:.cold.1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&dword_272D73000, log, OS_LOG_TYPE_ERROR, "**** error loading:%@ error:%@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_fileContentWithName:(uint64_t)a3 extension:(uint64_t)a4 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2(&dword_272D73000, a2, a3, "**** error loading %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end