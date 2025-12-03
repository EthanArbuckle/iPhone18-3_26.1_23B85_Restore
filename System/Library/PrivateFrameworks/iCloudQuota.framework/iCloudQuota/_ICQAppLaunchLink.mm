@interface _ICQAppLaunchLink
- (BOOL)isEligible;
- (_ICQAppLaunchLink)initWithCoder:(id)coder;
- (_ICQAppLaunchLink)initWithServerDictionary:(id)dictionary;
- (void)cacheLiftUIContentIfNeeded;
- (void)encodeWithCoder:(id)coder;
- (void)isEligible;
@end

@implementation _ICQAppLaunchLink

- (_ICQAppLaunchLink)initWithServerDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = _ICQAppLaunchLink;
  v5 = [(_ICQAppLaunchLink *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"appId"];
    appId = v5->_appId;
    v5->_appId = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"action"];
    v9 = _ICQActionForServerActionString(v8);

    v10 = [dictionaryCopy objectForKeyedSubscript:@"actParams"];
    v11 = _ICQActionParametersForServerActionParameters(v9, v10, 0);

    v12 = [[ICQLink alloc] initWithText:0 action:v9 parameters:v11];
    link = v5->_link;
    v5->_link = v12;

    v5->_minDisplayIntervalDays = [dictionaryCopy objectForKeyedSubscript:@"minDisplayIntervalDays"];
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
    integerValue = [(NSNumber *)self->_minDisplayIntervalDays integerValue];
    v7 = v5 >= integerValue;
    v6 = _ICQGetLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(_ICQAppLaunchLink *)v5 >= integerValue isEligible];
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
  link = [(_ICQAppLaunchLink *)self link];
  if ([link action] == 121)
  {
  }

  else
  {
    link2 = [(_ICQAppLaunchLink *)self link];
    action = [link2 action];

    if (action != 115)
    {
      return;
    }
  }

  v8 = +[ICQLiftUICache sharedCache];
  link3 = [(_ICQAppLaunchLink *)self link];
  serverUIURL = [link3 serverUIURL];
  [v8 cacheResponseFromURL:serverUIURL];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  appId = [(_ICQAppLaunchLink *)self appId];
  [coderCopy encodeObject:appId forKey:@"appId"];

  link = [(_ICQAppLaunchLink *)self link];
  [coderCopy encodeObject:link forKey:@"link"];

  minDisplayIntervalDays = [(_ICQAppLaunchLink *)self minDisplayIntervalDays];
  [coderCopy encodeObject:minDisplayIntervalDays forKey:@"minDisplayIntervalDays"];
}

- (_ICQAppLaunchLink)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(_ICQAppLaunchLink *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appId"];
    appId = v5->_appId;
    v5->_appId = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"link"];
    link = v5->_link;
    v5->_link = v8;

    v5->_minDisplayIntervalDays = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"minDisplayIntervalDays"];
  }

  return v5;
}

- (void)isEligible
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 67109376;
  v4[1] = self & 1;
  v5 = 2048;
  v6 = a2;
  _os_log_debug_impl(&dword_275572000, log, OS_LOG_TYPE_DEBUG, "AppLaunchLink eligible %d because it has been shown %ld days ago", v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

@end