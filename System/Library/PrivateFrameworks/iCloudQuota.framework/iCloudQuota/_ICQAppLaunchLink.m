@interface _ICQAppLaunchLink
- (BOOL)isEligible;
- (_ICQAppLaunchLink)initWithCoder:(id)a3;
- (_ICQAppLaunchLink)initWithServerDictionary:(id)a3;
- (void)cacheLiftUIContentIfNeeded;
- (void)encodeWithCoder:(id)a3;
- (void)isEligible;
@end

@implementation _ICQAppLaunchLink

- (_ICQAppLaunchLink)initWithServerDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = _ICQAppLaunchLink;
  v5 = [(_ICQAppLaunchLink *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"appId"];
    appId = v5->_appId;
    v5->_appId = v6;

    v8 = [v4 objectForKeyedSubscript:@"action"];
    v9 = _ICQActionForServerActionString(v8);

    v10 = [v4 objectForKeyedSubscript:@"actParams"];
    v11 = _ICQActionParametersForServerActionParameters(v9, v10, 0);

    v12 = [[ICQLink alloc] initWithText:0 action:v9 parameters:v11];
    link = v5->_link;
    v5->_link = v12;

    v5->_minDisplayIntervalDays = [v4 objectForKeyedSubscript:@"minDisplayIntervalDays"];
  }

  return v5;
}

- (BOOL)isEligible
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [_ICQAppLaunchLink isEligible];
  }

  v4 = +[ICQAppLaunchLinkTracker shared];
  v5 = [v4 daysSinceLastShownForBundleID:self->_appId];

  if (v5 == +[ICQAppLaunchLinkTracker neverShown])
  {
    v6 = _ICQGetLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [_ICQAppLaunchLink isEligible];
    }

    v7 = 1;
  }

  else
  {
    v8 = [(NSNumber *)self->_minDisplayIntervalDays integerValue];
    v7 = v5 >= v8;
    v6 = _ICQGetLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(_ICQAppLaunchLink *)v5 >= v8 isEligible];
    }
  }

  v9 = _ICQGetLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v15[0] = 67109120;
    v15[1] = v7;
    _os_log_impl(&dword_275572000, v9, OS_LOG_TYPE_DEFAULT, "App launch time eligible: %d", v15, 8u);
  }

  if (!v7 || !+[_ICQPhotosInfo isPhotosSyncOverQuota])
  {
    goto LABEL_20;
  }

  v10 = _ICQGetLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [_ICQAppLaunchLink isEligible];
  }

  if (v5 == +[ICQAppLaunchLinkTracker neverShown](ICQAppLaunchLinkTracker, "neverShown") || +[_ICQPhotosInfo hasPhotoBulkCreation])
  {
    v11 = _ICQGetLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15[0]) = 0;
      _os_log_impl(&dword_275572000, v11, OS_LOG_TYPE_DEFAULT, "App launch link is valid", v15, 2u);
    }

    v12 = 1;
  }

  else
  {
LABEL_20:
    v11 = _ICQGetLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [_ICQAppLaunchLink isEligible];
    }

    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)cacheLiftUIContentIfNeeded
{
  v3 = [(_ICQAppLaunchLink *)self link];
  if ([v3 action] == 121)
  {
  }

  else
  {
    v4 = [(_ICQAppLaunchLink *)self link];
    v5 = [v4 action];

    if (v5 != 115)
    {
      return;
    }
  }

  v8 = +[ICQLiftUICache sharedCache];
  v6 = [(_ICQAppLaunchLink *)self link];
  v7 = [v6 serverUIURL];
  [v8 cacheResponseFromURL:v7];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_ICQAppLaunchLink *)self appId];
  [v4 encodeObject:v5 forKey:@"appId"];

  v6 = [(_ICQAppLaunchLink *)self link];
  [v4 encodeObject:v6 forKey:@"link"];

  v7 = [(_ICQAppLaunchLink *)self minDisplayIntervalDays];
  [v4 encodeObject:v7 forKey:@"minDisplayIntervalDays"];
}

- (_ICQAppLaunchLink)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_ICQAppLaunchLink *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appId"];
    appId = v5->_appId;
    v5->_appId = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"link"];
    link = v5->_link;
    v5->_link = v8;

    v5->_minDisplayIntervalDays = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"minDisplayIntervalDays"];
  }

  return v5;
}

- (void)isEligible
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 67109376;
  v4[1] = a1 & 1;
  v5 = 2048;
  v6 = a2;
  _os_log_debug_impl(&dword_275572000, log, OS_LOG_TYPE_DEBUG, "AppLaunchLink eligible %d because it has been shown %ld days ago", v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

@end