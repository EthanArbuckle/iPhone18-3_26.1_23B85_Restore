@interface WBSSavedAccountSharedSidecar
- (BOOL)isEqual:(id)a3;
- (NSDictionary)dictionaryRepresentation;
- (WBSSavedAccountSharedSidecar)initWithPersonalSidecar:(id)a3;
- (WBSSavedAccountSharedSidecar)initWithUser:(id)a3 protectionSpace:(id)a4 dictionaryRepresentation:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation WBSSavedAccountSharedSidecar

- (WBSSavedAccountSharedSidecar)initWithUser:(id)a3 protectionSpace:(id)a4 dictionaryRepresentation:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v42.receiver = self;
  v42.super_class = WBSSavedAccountSharedSidecar;
  v11 = [(WBSSavedAccountSharedSidecar *)&v42 init];
  if (v11)
  {
    v41 = v8;
    v12 = [v8 copy];
    user = v11->_user;
    v11->_user = v12;

    v40 = v9;
    v14 = [v9 copy];
    protectionSpace = v11->_protectionSpace;
    v11->_protectionSpace = v14;

    v16 = [v10 copy];
    originalKeychainDictionary = v11->_originalKeychainDictionary;
    v11->_originalKeychainDictionary = v16;

    v18 = [v10 objectForKeyedSubscript:@"totp"];
    if (v18)
    {
      v19 = [[WBSTOTPGenerator alloc] initWithDictionaryRepresentation:v18];
      totpGenerator = v11->_totpGenerator;
      v11->_totpGenerator = v19;
    }

    v21 = [v10 objectForKeyedSubscript:@"notes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v21 encoding:4];
      if ([v22 length])
      {
        objc_storeStrong(&v11->_notesEntry, v22);
      }
    }

    v23 = [v10 objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v23 encoding:4];
      if ([v24 length])
      {
        objc_storeStrong(&v11->_customTitle, v24);
      }
    }

    v25 = [v10 objectForKeyedSubscript:@"ocpid"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v25 encoding:4];
      if ([v26 length])
      {
        objc_storeStrong(&v11->_originalContributorParticipantID, v26);
      }
    }

    v27 = [v10 objectForKeyedSubscript:@"pidrd"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v27 encoding:4];
      if ([v28 length])
      {
        objc_storeStrong(&v11->_participantIDForUserThatMovedSavedAccountToRecentlyDeleted, v28);
      }
    }

    v29 = [v10 objectForKeyedSubscript:@"s_as"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = [v29 safari_mapObjectsUsingBlock:&__block_literal_global_63];
    }

    else
    {
      v30 = MEMORY[0x1E695E0F0];
    }

    additionalSites = v11->_additionalSites;
    v11->_additionalSites = v30;

    v32 = [v10 objectForKeyedSubscript:@"s_hi"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && +[WBSFeatureAvailability isSavedAccountHistoryEnabled])
    {
      v33 = [v32 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_12_0];
    }

    else
    {
      v33 = MEMORY[0x1E695E0F0];
    }

    historyItems = v11->_historyItems;
    v11->_historyItems = v33;

    v35 = [v10 objectForKeyedSubscript:@"s_fvrk"];
    if (v35)
    {
      v36 = [[WBSFileVaultRecoveryKeyDeviceInfo alloc] initWithDictionaryRepresentation:v35];
      fileVaultRecoveryKeyDeviceInfo = v11->_fileVaultRecoveryKeyDeviceInfo;
      v11->_fileVaultRecoveryKeyDeviceInfo = v36;
    }

    v38 = v11;

    v9 = v40;
    v8 = v41;
  }

  return v11;
}

WBSSavedAccountAdditionalSite *__86__WBSSavedAccountSharedSidecar_initWithUser_protectionSpace_dictionaryRepresentation___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[WBSSavedAccountAdditionalSite alloc] initWithDictionaryRepresentation:v2];

  return v3;
}

- (WBSSavedAccountSharedSidecar)initWithPersonalSidecar:(id)a3
{
  v4 = a3;
  v5 = [v4 prefixedSharableData];
  v6 = [v4 user];
  v7 = [v4 protectionSpace];
  v8 = [(WBSSavedAccountSharedSidecar *)self initWithUser:v6 protectionSpace:v7 dictionaryRepresentation:v5];

  if (v8)
  {
    v9 = [v4 totpGenerator];
    totpGenerator = v8->_totpGenerator;
    v8->_totpGenerator = v9;

    v11 = [v4 notesEntry];
    v12 = [v11 copy];
    notesEntry = v8->_notesEntry;
    v8->_notesEntry = v12;

    v14 = [v4 customTitle];
    v15 = [v14 copy];
    customTitle = v8->_customTitle;
    v8->_customTitle = v15;

    historyItems = v8->_historyItems;
    v8->_historyItems = MEMORY[0x1E695E0F0];

    v18 = v8;
  }

  return v8;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = [(NSDictionary *)self->_originalKeychainDictionary mutableCopy];
  v4 = [(WBSTOTPGenerator *)self->_totpGenerator dictionaryRepresentation];
  [v3 setObject:v4 forKeyedSubscript:@"totp"];

  v5 = [(NSString *)self->_notesEntry dataUsingEncoding:4];
  [v3 setObject:v5 forKeyedSubscript:@"notes"];

  v6 = [(NSString *)self->_customTitle dataUsingEncoding:4];
  [v3 setObject:v6 forKeyedSubscript:@"title"];

  v7 = [(NSString *)self->_originalContributorParticipantID dataUsingEncoding:4];
  [v3 setObject:v7 forKeyedSubscript:@"ocpid"];

  v8 = [(NSString *)self->_participantIDForUserThatMovedSavedAccountToRecentlyDeleted dataUsingEncoding:4];
  [v3 setObject:v8 forKeyedSubscript:@"pidrd"];

  v9 = [(NSArray *)self->_additionalSites safari_mapObjectsUsingBlock:&__block_literal_global_16_4];
  [v3 setObject:v9 forKeyedSubscript:@"s_as"];

  v10 = [(NSArray *)self->_historyItems safari_mapObjectsUsingBlock:&__block_literal_global_19_2];
  [v3 setObject:v10 forKeyedSubscript:@"s_hi"];

  v11 = [(WBSFileVaultRecoveryKeyDeviceInfo *)self->_fileVaultRecoveryKeyDeviceInfo dictionaryRepresentation];
  [v3 setObject:v11 forKeyedSubscript:@"s_fvrk"];

  return v3;
}

void *__52__WBSSavedAccountSharedSidecar_prefixedSharableData__block_invoke(uint64_t a1, void *a2)
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v23 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      user = self->_user;
      v7 = [(WBSSavedAccountSharedSidecar *)v5 user];
      if (WBSIsEqual(user, v7))
      {
        protectionSpace = self->_protectionSpace;
        v9 = [(WBSSavedAccountSharedSidecar *)v5 protectionSpace];
        if (WBSIsEqual(protectionSpace, v9))
        {
          totpGenerator = self->_totpGenerator;
          v11 = [(WBSSavedAccountSharedSidecar *)v5 totpGenerator];
          if (WBSIsEqual(totpGenerator, v11))
          {
            notesEntry = self->_notesEntry;
            v13 = [(WBSSavedAccountSharedSidecar *)v5 notesEntry];
            if (WBSIsEqual(notesEntry, v13))
            {
              customTitle = self->_customTitle;
              v15 = [(WBSSavedAccountSharedSidecar *)v5 customTitle];
              if (WBSIsEqual(customTitle, v15))
              {
                originalContributorParticipantID = self->_originalContributorParticipantID;
                v17 = [(WBSSavedAccountSharedSidecar *)v5 originalContributorParticipantID];
                if (WBSIsEqual(originalContributorParticipantID, v17))
                {
                  additionalSites = self->_additionalSites;
                  v27 = [(WBSSavedAccountSharedSidecar *)v5 additionalSites];
                  if (WBSIsEqual(additionalSites, v27))
                  {
                    historyItems = self->_historyItems;
                    v26 = [(WBSSavedAccountSharedSidecar *)v5 historyItems];
                    if (WBSIsEqual(historyItems, v26))
                    {
                      fileVaultRecoveryKeyDeviceInfo = self->_fileVaultRecoveryKeyDeviceInfo;
                      v25 = [(WBSSavedAccountSharedSidecar *)v5 fileVaultRecoveryKeyDeviceInfo];
                      if (WBSIsEqual(fileVaultRecoveryKeyDeviceInfo, v25))
                      {
                        participantIDForUserThatMovedSavedAccountToRecentlyDeleted = self->_participantIDForUserThatMovedSavedAccountToRecentlyDeleted;
                        v22 = [(WBSSavedAccountSharedSidecar *)v5 participantIDForUserThatMovedSavedAccountToRecentlyDeleted];
                        v23 = WBSIsEqual(participantIDForUserThatMovedSavedAccountToRecentlyDeleted, v22);
                      }

                      else
                      {
                        v23 = 0;
                      }
                    }

                    else
                    {
                      v23 = 0;
                    }
                  }

                  else
                  {
                    v23 = 0;
                  }
                }

                else
                {
                  v23 = 0;
                }
              }

              else
              {
                v23 = 0;
              }
            }

            else
            {
              v23 = 0;
            }
          }

          else
          {
            v23 = 0;
          }
        }

        else
        {
          v23 = 0;
        }
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }
  }

  return v23;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_user hash];
  v4 = [(NSURLProtectionSpace *)self->_protectionSpace hash]^ v3;
  v5 = [(WBSTOTPGenerator *)self->_totpGenerator hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_notesEntry hash];
  v7 = [(NSString *)self->_customTitle hash];
  v8 = v7 ^ [(NSString *)self->_originalContributorParticipantID hash];
  v9 = v6 ^ v8 ^ [(NSString *)self->_participantIDForUserThatMovedSavedAccountToRecentlyDeleted hash];
  v10 = [(NSArray *)self->_additionalSites hash];
  v11 = v10 ^ [(NSArray *)self->_historyItems hash];
  return v9 ^ v11 ^ [(WBSFileVaultRecoveryKeyDeviceInfo *)self->_fileVaultRecoveryKeyDeviceInfo hash];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [WBSSavedAccountSharedSidecar alloc];
  user = self->_user;
  protectionSpace = self->_protectionSpace;
  originalKeychainDictionary = self->_originalKeychainDictionary;

  return [(WBSSavedAccountSharedSidecar *)v4 initWithUser:user protectionSpace:protectionSpace dictionaryRepresentation:originalKeychainDictionary];
}

@end