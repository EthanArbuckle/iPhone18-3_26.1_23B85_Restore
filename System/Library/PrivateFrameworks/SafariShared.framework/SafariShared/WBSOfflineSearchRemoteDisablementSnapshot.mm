@interface WBSOfflineSearchRemoteDisablementSnapshot
- (BOOL)_isCurrentSafariVersionDisabled:(id)disabled;
- (BOOL)areOfflineSearchSuggestionsDisabledRemotelyForSearchProvider:(id)provider;
- (WBSOfflineSearchRemoteDisablementSnapshot)initWithSnapshotData:(id)data error:(id *)error;
@end

@implementation WBSOfflineSearchRemoteDisablementSnapshot

- (WBSOfflineSearchRemoteDisablementSnapshot)initWithSnapshotData:(id)data error:(id *)error
{
  dataCopy = data;
  v13.receiver = self;
  v13.super_class = WBSOfflineSearchRemoteDisablementSnapshot;
  v7 = [(WBSOfflineSearchRemoteDisablementSnapshot *)&v13 init];
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = [MEMORY[0x1E695DF20] safari_dictionaryWithPropertyListData:dataCopy];
  disablementDictionary = v7->_disablementDictionary;
  v7->_disablementDictionary = v8;

  if (!v7->_disablementDictionary)
  {
    v11 = WBS_LOG_CHANNEL_PREFIXOfflineSearchSuggestions();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [WBSOfflineSearchRemoteDisablementSnapshot initWithSnapshotData:v11 error:?];
      if (error)
      {
        goto LABEL_6;
      }
    }

    else if (error)
    {
LABEL_6:
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:259 userInfo:0];
      *error = v10 = 0;
      goto LABEL_9;
    }

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v10 = v7;
LABEL_9:

  return v10;
}

- (BOOL)areOfflineSearchSuggestionsDisabledRemotelyForSearchProvider:(id)provider
{
  v4 = [(NSDictionary *)self->_disablementDictionary safari_dictionaryForKey:provider];
  v5 = v4;
  if (v4)
  {
    if ([v4 safari_BOOLForKey:@"OfflineSearchDisabled"])
    {
      v6 = 1;
    }

    else
    {
      v7 = [v5 safari_dictionaryForKey:@"DisabledSafariVersions"];
      if ([(WBSOfflineSearchRemoteDisablementSnapshot *)self _isCurrentSafariVersionDisabled:v7])
      {
        v6 = 1;
      }

      else
      {
        v8 = [v5 safari_arrayForKey:@"DisabledLocales"];
        currentLocale = [MEMORY[0x1E695DF58] currentLocale];
        safari_localeStringInOfflineSearchModelFormat = [currentLocale safari_localeStringInOfflineSearchModelFormat];
        v6 = [v8 containsObject:safari_localeStringInOfflineSearchModelFormat];
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_isCurrentSafariVersionDisabled:(id)disabled
{
  disabledCopy = disabled;
  if (disabledCopy)
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    safari_normalizedVersion = [mainBundle safari_normalizedVersion];

    v6 = [disabledCopy safari_arrayForKey:@"DisallowedSafariVersionsList"];
    if ([v6 containsObject:safari_normalizedVersion])
    {
      LOBYTE(v7) = 1;
    }

    else
    {
      v8 = [disabledCopy safari_stringForKey:@"DisabledBeforeVersionNumber"];
      v9 = v8;
      v10 = @"0";
      if (v8)
      {
        v10 = v8;
      }

      v11 = v10;

      v12 = [disabledCopy safari_stringForKey:@"DisabledAfterVersionNumber"];
      v13 = v12;
      v14 = @"9999999999";
      if (v12)
      {
        v14 = v12;
      }

      v15 = v14;

      v16 = [(__CFString *)v11 safari_isVersionStringGreaterThanVersionString:safari_normalizedVersion];
      if (v16)
      {
        LOBYTE(v7) = 1;
      }

      else
      {
        v7 = [(__CFString *)v15 safari_isVersionStringGreaterThanOrEqualToVersionString:safari_normalizedVersion]^ 1;
      }
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

@end