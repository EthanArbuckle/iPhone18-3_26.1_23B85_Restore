@interface WBSOfflineSearchRemoteDisablementSnapshot
- (BOOL)_isCurrentSafariVersionDisabled:(id)a3;
- (BOOL)areOfflineSearchSuggestionsDisabledRemotelyForSearchProvider:(id)a3;
- (WBSOfflineSearchRemoteDisablementSnapshot)initWithSnapshotData:(id)a3 error:(id *)a4;
@end

@implementation WBSOfflineSearchRemoteDisablementSnapshot

- (WBSOfflineSearchRemoteDisablementSnapshot)initWithSnapshotData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = WBSOfflineSearchRemoteDisablementSnapshot;
  v7 = [(WBSOfflineSearchRemoteDisablementSnapshot *)&v13 init];
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = [MEMORY[0x1E695DF20] safari_dictionaryWithPropertyListData:v6];
  disablementDictionary = v7->_disablementDictionary;
  v7->_disablementDictionary = v8;

  if (!v7->_disablementDictionary)
  {
    v11 = WBS_LOG_CHANNEL_PREFIXOfflineSearchSuggestions();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [WBSOfflineSearchRemoteDisablementSnapshot initWithSnapshotData:v11 error:?];
      if (a4)
      {
        goto LABEL_6;
      }
    }

    else if (a4)
    {
LABEL_6:
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:259 userInfo:0];
      *a4 = v10 = 0;
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

- (BOOL)areOfflineSearchSuggestionsDisabledRemotelyForSearchProvider:(id)a3
{
  v4 = [(NSDictionary *)self->_disablementDictionary safari_dictionaryForKey:a3];
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
        v9 = [MEMORY[0x1E695DF58] currentLocale];
        v10 = [v9 safari_localeStringInOfflineSearchModelFormat];
        v6 = [v8 containsObject:v10];
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_isCurrentSafariVersionDisabled:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x1E696AAE8] mainBundle];
    v5 = [v4 safari_normalizedVersion];

    v6 = [v3 safari_arrayForKey:@"DisallowedSafariVersionsList"];
    if ([v6 containsObject:v5])
    {
      LOBYTE(v7) = 1;
    }

    else
    {
      v8 = [v3 safari_stringForKey:@"DisabledBeforeVersionNumber"];
      v9 = v8;
      v10 = @"0";
      if (v8)
      {
        v10 = v8;
      }

      v11 = v10;

      v12 = [v3 safari_stringForKey:@"DisabledAfterVersionNumber"];
      v13 = v12;
      v14 = @"9999999999";
      if (v12)
      {
        v14 = v12;
      }

      v15 = v14;

      v16 = [(__CFString *)v11 safari_isVersionStringGreaterThanVersionString:v5];
      if (v16)
      {
        LOBYTE(v7) = 1;
      }

      else
      {
        v7 = [(__CFString *)v15 safari_isVersionStringGreaterThanOrEqualToVersionString:v5]^ 1;
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