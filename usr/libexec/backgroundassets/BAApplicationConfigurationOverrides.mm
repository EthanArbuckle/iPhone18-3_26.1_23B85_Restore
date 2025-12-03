@interface BAApplicationConfigurationOverrides
+ (BOOL)clearAllOverrides;
- (void)setDomainAllowlist:(id)allowlist;
- (void)setDownloadAllowance:(id)allowance;
- (void)setEssentialDownloadAllowance:(id)allowance;
- (void)setEssentialMaxInstallSize:(id)size;
- (void)setManifestURL:(id)l;
- (void)setMaxInstallSize:(id)size;
@end

@implementation BAApplicationConfigurationOverrides

- (void)setEssentialMaxInstallSize:(id)size
{
  sizeCopy = size;
  v5 = sizeCopy;
  if (sizeCopy && [(NSNumber *)sizeCopy integerValue]< 0)
  {
    v7 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT);
    if (v7)
    {
      sub_100047504(v7, v8, v9, v10, v11, v12, v13, v14);
    }

    qword_100089A98 = "BUG IN CLIENT OF BackgroundAssets: Assertion failed: ([essentialMaxInstallSize integerValue] >= 0), essentialMaxInstallSize must be >= 0.";
    __break(0xB001u);
  }

  else
  {
    essentialMaxInstallSize = self->_essentialMaxInstallSize;
    self->_essentialMaxInstallSize = v5;
  }
}

- (void)setMaxInstallSize:(id)size
{
  sizeCopy = size;
  v5 = sizeCopy;
  if (sizeCopy && [(NSNumber *)sizeCopy integerValue]< 0)
  {
    v7 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT);
    if (v7)
    {
      sub_100047580(v7, v8, v9, v10, v11, v12, v13, v14);
    }

    qword_100089A98 = "BUG IN CLIENT OF BackgroundAssets: Assertion failed: ([maxInstallSize integerValue] >= 0), maxInstallSize must be >= 0.";
    __break(0xB001u);
  }

  else
  {
    maxInstallSize = self->_maxInstallSize;
    self->_maxInstallSize = v5;
  }
}

- (void)setEssentialDownloadAllowance:(id)allowance
{
  allowanceCopy = allowance;
  v5 = allowanceCopy;
  if (allowanceCopy && [(NSNumber *)allowanceCopy integerValue]< 0)
  {
    v7 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT);
    if (v7)
    {
      sub_1000475FC(v7, v8, v9, v10, v11, v12, v13, v14);
    }

    qword_100089A98 = "BUG IN CLIENT OF BackgroundAssets: Assertion failed: ([essentialDownloadAllowance integerValue] >= 0), essentialDownloadAllowance must be >= 0.";
    __break(0xB001u);
  }

  else
  {
    essentialDownloadAllowance = self->_essentialDownloadAllowance;
    self->_essentialDownloadAllowance = v5;
  }
}

- (void)setDownloadAllowance:(id)allowance
{
  allowanceCopy = allowance;
  v5 = allowanceCopy;
  if (allowanceCopy && [(NSNumber *)allowanceCopy integerValue]< 0)
  {
    v7 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT);
    if (v7)
    {
      sub_100047678(v7, v8, v9, v10, v11, v12, v13, v14);
    }

    qword_100089A98 = "BUG IN CLIENT OF BackgroundAssets: Assertion failed: ([downloadAllowance integerValue] >= 0), downloadAllowance must be >= 0.";
    __break(0xB001u);
  }

  else
  {
    downloadAllowance = self->_downloadAllowance;
    self->_downloadAllowance = v5;
  }
}

- (void)setManifestURL:(id)l
{
  lCopy = l;
  v5 = lCopy;
  if (lCopy && ![(NSString *)lCopy length])
  {
    v7 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT);
    if (v7)
    {
      sub_1000476F4(v7, v8, v9, v10, v11, v12, v13, v14);
    }

    qword_100089A98 = "BUG IN CLIENT OF BackgroundAssets: Assertion failed: ([manifestURL length] > 0), manifestURL cannot be empty.";
    __break(0xB001u);
  }

  else
  {
    manifestURL = self->_manifestURL;
    self->_manifestURL = v5;
  }
}

- (void)setDomainAllowlist:(id)allowlist
{
  allowlistCopy = allowlist;
  v5 = allowlistCopy;
  if (!allowlistCopy)
  {
LABEL_12:
    domainAllowlist = self->_domainAllowlist;
    self->_domainAllowlist = v5;

    return;
  }

  if ([(NSArray *)allowlistCopy count])
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v6 = v5;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v29;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v29 != v9)
          {
            objc_enumerationMutation(v6);
          }

          if (![*(*(&v28 + 1) + 8 * i) length])
          {
            v12 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT);
            if (v12)
            {
              sub_100047770(v12, v13, v14, v15, v16, v17, v18, v19);
            }

            qword_100089A98 = "BUG IN CLIENT OF BackgroundAssets: Assertion failed: ([item length] > 0), domainAllowlist items cannot be empty.";
            __break(0xB001u);
          }
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v8);
    }

    goto LABEL_12;
  }

  v20 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT);
  if (v20)
  {
    sub_1000477EC(v20, v21, v22, v23, v24, v25, v26, v27);
  }

  qword_100089A98 = "BUG IN CLIENT OF BackgroundAssets: Assertion failed: ([domainAllowlist count] > 0), domainAllowlist cannot be empty.";
  __break(0xB001u);
}

+ (BOOL)clearAllOverrides
{
  v2 = +[NSDictionary dictionary];
  CFPreferencesSetAppValue(@"InternalAppOverrides", v2, @"com.apple.backgroundassets");
  v3 = CFPreferencesAppSynchronize(@"com.apple.backgroundassets") != 0;

  return v3;
}

@end