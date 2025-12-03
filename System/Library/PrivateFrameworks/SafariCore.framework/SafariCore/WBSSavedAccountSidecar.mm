@interface WBSSavedAccountSidecar
- (BOOL)_siteIsAdditionalSite:(id)site;
- (BOOL)isEqual:(id)equal;
- (NSDate)lastUsedDateAcrossAllContextsAndSites;
- (NSDictionary)contextSpecificData;
- (NSDictionary)dictionaryRepresentation;
- (NSString)description;
- (WBSSavedAccountSidecar)initWithSharedSidecar:(id)sidecar;
- (WBSSavedAccountSidecar)initWithUser:(id)user protectionSpace:(id)space dictionaryRepresentation:(id)representation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)lastUsedDateAcrossAllContextsForSite:(id)site;
- (id)lastUsedDateForSite:(id)site inContext:(id)context;
- (unint64_t)hash;
- (void)adoptSharableDataFromSharedSidecar:(id)sidecar;
- (void)removeSharableData;
- (void)setLastUsedDate:(id)date forSite:(id)site inContext:(id)context;
@end

@implementation WBSSavedAccountSidecar

- (WBSSavedAccountSidecar)initWithUser:(id)user protectionSpace:(id)space dictionaryRepresentation:(id)representation
{
  userCopy = user;
  spaceCopy = space;
  representationCopy = representation;
  v58.receiver = self;
  v58.super_class = WBSSavedAccountSidecar;
  v11 = [(WBSSavedAccountSidecar *)&v58 init];
  if (v11)
  {
    v12 = [representationCopy copy];
    originalKeychainDictionary = v11->_originalKeychainDictionary;
    v11->_originalKeychainDictionary = v12;

    v55 = userCopy;
    v14 = [userCopy copy];
    user = v11->_user;
    v11->_user = v14;

    v54 = spaceCopy;
    v16 = [spaceCopy copy];
    protectionSpace = v11->_protectionSpace;
    v11->_protectionSpace = v16;

    v18 = [representationCopy objectForKeyedSubscript:@"totp"];
    if (v18)
    {
      v19 = [[WBSTOTPGenerator alloc] initWithDictionaryRepresentation:v18];
      totpGenerator = v11->_totpGenerator;
      v11->_totpGenerator = v19;
    }

    v53 = v18;
    v21 = [representationCopy objectForKeyedSubscript:@"notes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v21 encoding:4];
      if ([v22 length])
      {
        objc_storeStrong(&v11->_notesEntry, v22);
      }
    }

    v23 = [representationCopy objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v23 encoding:4];
      if ([v24 length])
      {
        objc_storeStrong(&v11->_customTitle, v24);
      }
    }

    v25 = [representationCopy objectForKeyedSubscript:@"hwm"];
    if (v25)
    {
      v26 = [[WBSPasswordWarningHideMarker alloc] initWithDictionaryRepresentation:v25];
      hideWarningMarker = v11->_hideWarningMarker;
      v11->_hideWarningMarker = v26;
    }

    v28 = [representationCopy safari_numberForKey:{@"otsd", v25}];
    v29 = v28;
    if (v28)
    {
      v30 = MEMORY[0x1E695DF00];
      [v28 doubleValue];
      v31 = [v30 dateWithTimeIntervalSinceReferenceDate:?];
      lastOneTimeShareDateForPasskey = v11->_lastOneTimeShareDateForPasskey;
      v11->_lastOneTimeShareDateForPasskey = v31;
    }

    v52 = v23;
    v33 = [representationCopy objectForKeyedSubscript:@"ctxt"];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    contextSpecificData = v11->_contextSpecificData;
    v11->_contextSpecificData = dictionary;

    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __80__WBSSavedAccountSidecar_initWithUser_protectionSpace_dictionaryRepresentation___block_invoke;
    v56[3] = &unk_1E7CF45A0;
    v36 = v11;
    v57 = v36;
    [v33 enumerateKeysAndObjectsUsingBlock:v56];
    v37 = [representationCopy objectForKeyedSubscript:@"fsm"];
    if (v37)
    {
      v38 = [[WBSFormerlySharedSavedAccountMarker alloc] initWithDictionaryRepresentation:v37];
      formerlySharedSavedAccountMarker = v36->_formerlySharedSavedAccountMarker;
      v36->_formerlySharedSavedAccountMarker = v38;
    }

    v40 = [representationCopy objectForKeyedSubscript:@"s_as"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = [v40 safari_mapObjectsUsingBlock:&__block_literal_global_64];
    }

    else
    {
      v41 = MEMORY[0x1E695E0F0];
    }

    additionalSites = v36->_additionalSites;
    v36->_additionalSites = v41;

    v43 = [representationCopy objectForKeyedSubscript:@"s_hi"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && +[WBSFeatureAvailability isSavedAccountHistoryEnabled])
    {
      v44 = [v43 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_67_0];
      historyItems = v36->_historyItems;
      v36->_historyItems = v44;
    }

    v46 = [representationCopy objectForKeyedSubscript:@"s_fvrk"];
    if (v46)
    {
      v47 = [[WBSFileVaultRecoveryKeyDeviceInfo alloc] initWithDictionaryRepresentation:v46];
      fileVaultRecoveryKeyDeviceInfo = v36->_fileVaultRecoveryKeyDeviceInfo;
      v36->_fileVaultRecoveryKeyDeviceInfo = v47;
    }

    v49 = v36;

    spaceCopy = v54;
    userCopy = v55;
  }

  return v11;
}

void __80__WBSSavedAccountSidecar_initWithUser_protectionSpace_dictionaryRepresentation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v8 = [[WBSSavedAccountContext alloc] initWithName:v6];

  v7 = [[WBSSavedAccountSidecarContextSpecificData alloc] initWithDictionaryRepresentation:v5];
  [*(*(a1 + 32) + 16) setObject:v7 forKeyedSubscript:v8];
}

WBSSavedAccountAdditionalSite *__80__WBSSavedAccountSidecar_initWithUser_protectionSpace_dictionaryRepresentation___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[WBSSavedAccountAdditionalSite alloc] initWithDictionaryRepresentation:v2];

  return v3;
}

- (WBSSavedAccountSidecar)initWithSharedSidecar:(id)sidecar
{
  sidecarCopy = sidecar;
  user = [sidecarCopy user];
  protectionSpace = [sidecarCopy protectionSpace];
  v7 = [(WBSSavedAccountSidecar *)self initWithUser:user protectionSpace:protectionSpace dictionaryRepresentation:MEMORY[0x1E695E0F8]];

  if (v7)
  {
    [(WBSSavedAccountSidecar *)v7 adoptSharableDataFromSharedSidecar:sidecarCopy];
    v8 = v7;
  }

  return v7;
}

- (void)adoptSharableDataFromSharedSidecar:(id)sidecar
{
  v37 = *MEMORY[0x1E69E9840];
  sidecarCopy = sidecar;
  totpGenerator = [sidecarCopy totpGenerator];
  totpGenerator = self->_totpGenerator;
  self->_totpGenerator = totpGenerator;

  notesEntry = [sidecarCopy notesEntry];
  v8 = [notesEntry copy];
  notesEntry = self->_notesEntry;
  self->_notesEntry = v8;

  customTitle = [sidecarCopy customTitle];
  v11 = [customTitle copy];
  customTitle = self->_customTitle;
  self->_customTitle = v11;

  if (+[WBSFeatureAvailability isSavedAccountHistoryEnabled])
  {
    historyItems = self->_historyItems;
    historyItems = [sidecarCopy historyItems];
    v15 = historyItems;
    if (historyItems)
    {
      v16 = [(NSArray *)historyItems arrayByAddingObjectsFromArray:historyItems];
      v17 = self->_historyItems;
      self->_historyItems = v16;
    }

    else
    {
      v18 = self->_historyItems;
      self->_historyItems = historyItems;
      v15 = v18;
    }

    [sidecarCopy setHistoryItems:MEMORY[0x1E695E0F0]];
  }

  if (!self->_originalKeychainDictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    originalKeychainDictionary = self->_originalKeychainDictionary;
    self->_originalKeychainDictionary = dictionary;
  }

  prefixedSharableData = [sidecarCopy prefixedSharableData];
  v22 = [prefixedSharableData count];
  v23 = WBS_LOG_CHANNEL_PREFIXPasswords();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    if (v22 == 1)
    {
      v24 = "";
    }

    else
    {
      v24 = "s";
    }

    v25 = v23;
    allKeys = [prefixedSharableData allKeys];
    v27 = [allKeys componentsJoinedByString:{@", "}];
    v31 = 134218498;
    v32 = v22;
    v33 = 2080;
    v34 = v24;
    v35 = 2112;
    v36 = v27;
    _os_log_impl(&dword_1B8447000, v25, OS_LOG_TYPE_DEFAULT, "Migrating %ld unknown key%s from shared sidecar to personal sidecar: %@", &v31, 0x20u);
  }

  v28 = [(NSDictionary *)self->_originalKeychainDictionary safari_setValuesFromDictionary:prefixedSharableData];
  v29 = self->_originalKeychainDictionary;
  self->_originalKeychainDictionary = v28;

  v30 = *MEMORY[0x1E69E9840];
}

- (void)removeSharableData
{
  totpGenerator = self->_totpGenerator;
  self->_totpGenerator = 0;

  notesEntry = self->_notesEntry;
  self->_notesEntry = 0;

  customTitle = self->_customTitle;
  self->_customTitle = 0;

  v6 = [(NSDictionary *)self->_originalKeychainDictionary safari_mapAndFilterKeysUsingBlock:&__block_literal_global_76];
  originalKeychainDictionary = self->_originalKeychainDictionary;
  self->_originalKeychainDictionary = v6;
}

void *__44__WBSSavedAccountSidecar_removeSharableData__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hasPrefix:@"s_"])
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  v4 = v3;

  return v3;
}

- (NSDictionary)contextSpecificData
{
  v2 = [(NSMutableDictionary *)self->_contextSpecificData copy];

  return v2;
}

- (void)setLastUsedDate:(id)date forSite:(id)site inContext:(id)context
{
  dateCopy = date;
  siteCopy = site;
  contextCopy = context;
  if (!contextCopy)
  {
    contextCopy = +[WBSSavedAccountContext defaultContext];
  }

  v10 = [(NSMutableDictionary *)self->_contextSpecificData objectForKeyedSubscript:contextCopy];
  if (!v10)
  {
    v11 = [WBSSavedAccountSidecarContextSpecificData alloc];
    v10 = [(WBSSavedAccountSidecarContextSpecificData *)v11 initWithDictionaryRepresentation:MEMORY[0x1E695E0F8]];
    [(NSMutableDictionary *)self->_contextSpecificData setObject:v10 forKeyedSubscript:contextCopy];
  }

  host = [(NSURLProtectionSpace *)self->_protectionSpace host];
  v13 = [siteCopy isEqualToString:host];

  if (![(WBSSavedAccountSidecar *)self _siteIsAdditionalSite:siteCopy]|| (v13 & 1) != 0)
  {
    [(WBSSavedAccountSidecarContextSpecificData *)v10 setLastUsedDate:dateCopy];
  }

  else
  {
    [(WBSSavedAccountSidecarContextSpecificData *)v10 setLastUsedDate:dateCopy forSite:siteCopy];
  }
}

- (id)lastUsedDateForSite:(id)site inContext:(id)context
{
  siteCopy = site;
  contextCopy = context;
  if (!contextCopy)
  {
    contextCopy = +[WBSSavedAccountContext defaultContext];
  }

  v8 = [(NSMutableDictionary *)self->_contextSpecificData objectForKeyedSubscript:contextCopy];
  host = [(NSURLProtectionSpace *)self->_protectionSpace host];
  v10 = [siteCopy isEqualToString:host];

  v11 = [(WBSSavedAccountSidecar *)self _siteIsAdditionalSite:siteCopy];
  if (v10 && v11)
  {
    lastUsedDate = [v8 lastUsedDate];
    v13 = [v8 lastUsedDateForSite:siteCopy];
    v14 = v13;
    if (lastUsedDate && v13)
    {
      v15 = [lastUsedDate laterDate:v13];
    }

    else if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = lastUsedDate;
    }

    lastUsedDate2 = v15;
  }

  else
  {
    if (!v11)
    {
      lastUsedDate2 = [v8 lastUsedDate];
      goto LABEL_19;
    }

    v16 = [v8 lastUsedDateForSite:siteCopy];
    lastUsedDate = v16;
    if (v16)
    {
      lastUsedDate3 = v16;
    }

    else
    {
      lastUsedDate3 = [v8 lastUsedDate];
    }

    lastUsedDate2 = lastUsedDate3;
  }

LABEL_19:

  return lastUsedDate2;
}

- (id)lastUsedDateAcrossAllContextsForSite:(id)site
{
  siteCopy = site;
  v5 = [(WBSSavedAccountSidecar *)self _siteIsAdditionalSite:siteCopy];
  allValues = [(NSMutableDictionary *)self->_contextSpecificData allValues];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__WBSSavedAccountSidecar_lastUsedDateAcrossAllContextsForSite___block_invoke;
  v10[3] = &unk_1E7CF45C8;
  v12 = v5;
  v11 = siteCopy;
  v7 = siteCopy;
  v8 = [allValues safari_reduceObjectsUsingBlock:v10];

  return v8;
}

id __63__WBSSavedAccountSidecar_lastUsedDateAcrossAllContextsForSite___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 40) == 1)
  {
    v7 = [v5 lastUsedDateForSite:*(a1 + 32)];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [v5 lastUsedDate];
    }

    v10 = v9;
  }

  else
  {
    v10 = [v5 lastUsedDate];
  }

  v11 = v10;
  if (v6)
  {
    if ([v10 safari_isLaterThanDate:v6])
    {
      v11 = v10;
    }

    else
    {
      v11 = v6;
    }
  }

  v12 = v11;

  return v12;
}

- (NSDate)lastUsedDateAcrossAllContextsAndSites
{
  allValues = [(NSMutableDictionary *)self->_contextSpecificData allValues];
  v3 = [allValues safari_reduceObjectsUsingBlock:&__block_literal_global_79];

  return v3;
}

id __63__WBSSavedAccountSidecar_lastUsedDateAcrossAllContextsAndSites__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 lastUsedDateAcrossAllSites];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [v4 laterDate:v5];
  }

  else if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v24 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      user = self->_user;
      user = [(WBSSavedAccountSidecar *)v5 user];
      if ([(NSString *)user isEqual:user])
      {
        totpGenerator = self->_totpGenerator;
        totpGenerator = [(WBSSavedAccountSidecar *)v5 totpGenerator];
        if (WBSIsEqual(totpGenerator, totpGenerator))
        {
          notesEntry = self->_notesEntry;
          notesEntry = [(WBSSavedAccountSidecar *)v5 notesEntry];
          if (WBSIsEqual(notesEntry, notesEntry))
          {
            customTitle = self->_customTitle;
            customTitle = [(WBSSavedAccountSidecar *)v5 customTitle];
            if (WBSIsEqual(customTitle, customTitle) && WBSIsEqual(self->_contextSpecificData, v5->_contextSpecificData))
            {
              hideWarningMarker = self->_hideWarningMarker;
              hideWarningMarker = [(WBSSavedAccountSidecar *)v5 hideWarningMarker];
              if (WBSIsEqual(hideWarningMarker, hideWarningMarker))
              {
                lastOneTimeShareDateForPasskey = self->_lastOneTimeShareDateForPasskey;
                lastOneTimeShareDateForPasskey = [(WBSSavedAccountSidecar *)v5 lastOneTimeShareDateForPasskey];
                if (WBSIsEqual(lastOneTimeShareDateForPasskey, lastOneTimeShareDateForPasskey))
                {
                  additionalSites = self->_additionalSites;
                  additionalSites = [(WBSSavedAccountSidecar *)v5 additionalSites];
                  if (WBSIsEqual(additionalSites, additionalSites))
                  {
                    historyItems = self->_historyItems;
                    historyItems = [(WBSSavedAccountSidecar *)v5 historyItems];
                    if (WBSIsEqual(historyItems, historyItems))
                    {
                      fileVaultRecoveryKeyDeviceInfo = self->_fileVaultRecoveryKeyDeviceInfo;
                      v21 = [(WBSSavedAccountSidecar *)v5 fileVaultRecoveryKeyDeviceInfo:historyItems];
                      v22 = fileVaultRecoveryKeyDeviceInfo;
                      v23 = v21;
                      if (WBSIsEqual(v22, v21))
                      {
                        v24 = [(NSURLProtectionSpace *)self->_protectionSpace isEqual:v5->_protectionSpace];
                      }

                      else
                      {
                        v24 = 0;
                      }
                    }

                    else
                    {
                      v24 = 0;
                    }
                  }

                  else
                  {
                    v24 = 0;
                  }
                }

                else
                {
                  v24 = 0;
                }
              }

              else
              {
                v24 = 0;
              }
            }

            else
            {
              v24 = 0;
            }
          }

          else
          {
            v24 = 0;
          }
        }

        else
        {
          v24 = 0;
        }
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
    }
  }

  return v24;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_user hash];
  v4 = [(NSURLProtectionSpace *)self->_protectionSpace hash]^ v3;
  v5 = [(WBSTOTPGenerator *)self->_totpGenerator hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_notesEntry hash];
  v7 = [(NSString *)self->_customTitle hash];
  v8 = v7 ^ [(WBSPasswordWarningHideMarker *)self->_hideWarningMarker hash];
  v9 = v6 ^ v8 ^ [(NSMutableDictionary *)self->_contextSpecificData hash];
  v10 = [(NSDate *)self->_lastOneTimeShareDateForPasskey hash];
  v11 = v10 ^ [(NSArray *)self->_additionalSites hash];
  v12 = v11 ^ [(NSArray *)self->_historyItems hash];
  return v9 ^ v12 ^ [(WBSFileVaultRecoveryKeyDeviceInfo *)self->_fileVaultRecoveryKeyDeviceInfo hash];
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = [(NSDictionary *)self->_originalKeychainDictionary mutableCopy];
  v4 = v3;
  if (v3)
  {
    dictionary = v3;
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  v6 = dictionary;

  dictionaryRepresentation = [(WBSTOTPGenerator *)self->_totpGenerator dictionaryRepresentation];
  [v6 setObject:dictionaryRepresentation forKeyedSubscript:@"totp"];

  v8 = [(NSString *)self->_notesEntry dataUsingEncoding:4];
  [v6 setObject:v8 forKeyedSubscript:@"notes"];

  v9 = [(NSString *)self->_customTitle dataUsingEncoding:4];
  [v6 setObject:v9 forKeyedSubscript:@"title"];

  dictionaryRepresentation2 = [(WBSPasswordWarningHideMarker *)self->_hideWarningMarker dictionaryRepresentation];
  [v6 setObject:dictionaryRepresentation2 forKeyedSubscript:@"hwm"];

  lastOneTimeShareDateForPasskey = self->_lastOneTimeShareDateForPasskey;
  if (lastOneTimeShareDateForPasskey)
  {
    v12 = MEMORY[0x1E696AD98];
    [(NSDate *)lastOneTimeShareDateForPasskey timeIntervalSinceReferenceDate];
    v13 = [v12 numberWithDouble:?];
    [v6 setObject:v13 forKeyedSubscript:@"otsd"];
  }

  else
  {
    [v6 setObject:0 forKeyedSubscript:@"otsd"];
  }

  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  contextSpecificData = self->_contextSpecificData;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __50__WBSSavedAccountSidecar_dictionaryRepresentation__block_invoke;
  v23[3] = &unk_1E7CF4610;
  v24 = dictionary2;
  v16 = dictionary2;
  [(NSMutableDictionary *)contextSpecificData enumerateKeysAndObjectsUsingBlock:v23];
  if ([v16 count])
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  [v6 setObject:v17 forKeyedSubscript:@"ctxt"];
  dictionaryRepresentation3 = [(WBSFormerlySharedSavedAccountMarker *)self->_formerlySharedSavedAccountMarker dictionaryRepresentation];
  [v6 setObject:dictionaryRepresentation3 forKeyedSubscript:@"fsm"];

  v19 = [(NSArray *)self->_additionalSites safari_mapObjectsUsingBlock:&__block_literal_global_85_1];
  [v6 setObject:v19 forKeyedSubscript:@"s_as"];

  v20 = [(NSArray *)self->_historyItems safari_mapObjectsUsingBlock:&__block_literal_global_88_1];
  [v6 setObject:v20 forKeyedSubscript:@"s_hi"];

  dictionaryRepresentation4 = [(WBSFileVaultRecoveryKeyDeviceInfo *)self->_fileVaultRecoveryKeyDeviceInfo dictionaryRepresentation];
  [v6 setObject:dictionaryRepresentation4 forKeyedSubscript:@"s_fvrk"];

  return v6;
}

void __50__WBSSavedAccountSidecar_dictionaryRepresentation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = [a3 dictionaryRepresentation];
  v6 = *(a1 + 32);
  v7 = [v5 nameForPersistence];

  [v6 setObject:v8 forKeyedSubscript:v7];
}

void *__46__WBSSavedAccountSidecar_prefixedSharableData__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hasPrefix:@"s_"])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = WBSSavedAccountSidecar;
  v4 = [(WBSSavedAccountSidecar *)&v9 description];
  user = self->_user;
  host = [(NSURLProtectionSpace *)self->_protectionSpace host];
  v7 = [v3 stringWithFormat:@"<%@ user:%@ host:%@>", v4, user, host];

  return v7;
}

- (BOOL)_siteIsAdditionalSite:(id)site
{
  siteCopy = site;
  additionalSites = self->_additionalSites;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__WBSSavedAccountSidecar__siteIsAdditionalSite___block_invoke;
  v8[3] = &unk_1E7CF4220;
  v9 = siteCopy;
  v6 = siteCopy;
  LOBYTE(additionalSites) = [(NSArray *)additionalSites safari_containsObjectPassingTest:v8];

  return additionalSites;
}

uint64_t __48__WBSSavedAccountSidecar__siteIsAdditionalSite___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 site];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[WBSSavedAccountSidecar alloc] initWithUser:self->_user protectionSpace:self->_protectionSpace];
  v5 = [(NSDictionary *)self->_originalKeychainDictionary copy];
  originalKeychainDictionary = v4->_originalKeychainDictionary;
  v4->_originalKeychainDictionary = v5;

  objc_storeStrong(&v4->_totpGenerator, self->_totpGenerator);
  v7 = [(NSString *)self->_notesEntry copy];
  notesEntry = v4->_notesEntry;
  v4->_notesEntry = v7;

  v9 = [(NSString *)self->_customTitle copy];
  customTitle = v4->_customTitle;
  v4->_customTitle = v9;

  v11 = [(NSMutableDictionary *)self->_contextSpecificData copy];
  contextSpecificData = v4->_contextSpecificData;
  v4->_contextSpecificData = v11;

  objc_storeStrong(&v4->_hideWarningMarker, self->_hideWarningMarker);
  v13 = [(NSDate *)self->_lastOneTimeShareDateForPasskey copy];
  lastOneTimeShareDateForPasskey = v4->_lastOneTimeShareDateForPasskey;
  v4->_lastOneTimeShareDateForPasskey = v13;

  v15 = [(NSArray *)self->_additionalSites copy];
  additionalSites = v4->_additionalSites;
  v4->_additionalSites = v15;

  v17 = [(NSArray *)self->_historyItems copy];
  historyItems = v4->_historyItems;
  v4->_historyItems = v17;

  v19 = [(WBSFileVaultRecoveryKeyDeviceInfo *)self->_fileVaultRecoveryKeyDeviceInfo copy];
  fileVaultRecoveryKeyDeviceInfo = v4->_fileVaultRecoveryKeyDeviceInfo;
  v4->_fileVaultRecoveryKeyDeviceInfo = v19;

  return v4;
}

@end