@interface WFPortalContext
- (WFPortalContext)initWithCaptiveProfile:(id)a3 anqpVenueURLs:(id)a4;
- (id)fullPortalURLString;
- (id)portalHostnameForDisplay;
@end

@implementation WFPortalContext

- (id)fullPortalURLString
{
  v3 = [(WFPortalContext *)self venueInfoURL];

  if (v3)
  {
    [(WFPortalContext *)self venueInfoURL];
  }

  else
  {
    [(WFPortalContext *)self userPortalURL];
  }
  v4 = ;

  return v4;
}

- (WFPortalContext)initWithCaptiveProfile:(id)a3 anqpVenueURLs:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v38.receiver = self;
  v38.super_class = WFPortalContext;
  v8 = [(WFPortalContext *)&v38 init];
  if (v8)
  {
    if (v7 && [(NSString *)v7 count])
    {
      v9 = WFLogForCategory(0);
      v10 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v9 && os_log_type_enabled(v9, v10))
      {
        v39 = 136315394;
        v40 = "[WFPortalContext initWithCaptiveProfile:anqpVenueURLs:]";
        v41 = 2112;
        v42 = v7;
        OUTLINED_FUNCTION_0();
        _os_log_impl(v11, v12, v13, v14, v15, 0x16u);
      }

      p_super = [(NSString *)v7 firstObject];
      [(WFPortalContext *)v8 setVenueInfoURL:p_super];
    }

    else if (v6)
    {
      v17 = [v6 objectForKey:*MEMORY[0x277CF7F98]];
      venueInfoURL = v8->_venueInfoURL;
      v8->_venueInfoURL = v17;

      v19 = [v6 objectForKey:*MEMORY[0x277CF7F88]];
      userPortalURL = v8->_userPortalURL;
      v8->_userPortalURL = v19;

      p_super = WFLogForCategory(0);
      v21 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && p_super && os_log_type_enabled(p_super, v21))
      {
        v22 = v8->_venueInfoURL;
        v23 = v8->_userPortalURL;
        v39 = 136315650;
        v40 = "[WFPortalContext initWithCaptiveProfile:anqpVenueURLs:]";
        v41 = 2112;
        v42 = v22;
        v43 = 2112;
        v44 = v23;
        OUTLINED_FUNCTION_0();
        _os_log_impl(v24, v25, v26, v27, v28, 0x20u);
      }
    }

    else
    {
      v31 = WFLogForCategory(0);
      v32 = OSLogForWFLogLevel(4uLL);
      if (WFCurrentLogLevel() >= 4 && v31 && os_log_type_enabled(v31, v32))
      {
        v39 = 136315138;
        v40 = "[WFPortalContext initWithCaptiveProfile:anqpVenueURLs:]";
        OUTLINED_FUNCTION_0();
        _os_log_impl(v33, v34, v35, v36, v37, 0xCu);
      }

      p_super = &v8->super;
      v8 = 0;
    }
  }

  else
  {
    p_super = 0;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)portalHostnameForDisplay
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [(WFPortalContext *)self fullPortalURLString];
  if (!v2)
  {
LABEL_10:
    v4 = 0;
    v5 = 0;
    goto LABEL_4;
  }

  v3 = [objc_alloc(MEMORY[0x277CCACE0]) initWithString:v2];
  if (!v3)
  {
    v9 = WFLogForCategory(0);
    v10 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v9 && os_log_type_enabled(v9, v10))
    {
      v11 = 136315394;
      v12 = "[WFPortalContext portalHostnameForDisplay]";
      v13 = 2112;
      v14 = v2;
      _os_log_impl(&dword_273ECD000, v9, v10, "%s: urlComponents nil for URL %@", &v11, 0x16u);
    }

    goto LABEL_10;
  }

  v4 = v3;
  v5 = [v3 host];
LABEL_4:
  v6 = v5;

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

@end