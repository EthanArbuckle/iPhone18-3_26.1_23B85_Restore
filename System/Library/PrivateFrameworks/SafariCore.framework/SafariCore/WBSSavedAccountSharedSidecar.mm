@interface WBSSavedAccountSharedSidecar
- (BOOL)isEqual:(id)equal;
- (NSDictionary)dictionaryRepresentation;
- (WBSSavedAccountSharedSidecar)initWithPersonalSidecar:(id)sidecar;
- (WBSSavedAccountSharedSidecar)initWithUser:(id)user protectionSpace:(id)space dictionaryRepresentation:(id)representation;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation WBSSavedAccountSharedSidecar

- (WBSSavedAccountSharedSidecar)initWithUser:(id)user protectionSpace:(id)space dictionaryRepresentation:(id)representation
{
  userCopy = user;
  spaceCopy = space;
  representationCopy = representation;
  v42.receiver = self;
  v42.super_class = WBSSavedAccountSharedSidecar;
  v11 = [(WBSSavedAccountSharedSidecar *)&v42 init];
  if (v11)
  {
    v41 = userCopy;
    v12 = [userCopy copy];
    user = v11->_user;
    v11->_user = v12;

    v40 = spaceCopy;
    v14 = [spaceCopy copy];
    protectionSpace = v11->_protectionSpace;
    v11->_protectionSpace = v14;

    v16 = [representationCopy copy];
    originalKeychainDictionary = v11->_originalKeychainDictionary;
    v11->_originalKeychainDictionary = v16;

    v18 = [representationCopy objectForKeyedSubscript:@"totp"];
    if (v18)
    {
      v19 = [[WBSTOTPGenerator alloc] initWithDictionaryRepresentation:v18];
      totpGenerator = v11->_totpGenerator;
      v11->_totpGenerator = v19;
    }

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

    v25 = [representationCopy objectForKeyedSubscript:@"ocpid"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v25 encoding:4];
      if ([v26 length])
      {
        objc_storeStrong(&v11->_originalContributorParticipantID, v26);
      }
    }

    v27 = [representationCopy objectForKeyedSubscript:@"pidrd"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v27 encoding:4];
      if ([v28 length])
      {
        objc_storeStrong(&v11->_participantIDForUserThatMovedSavedAccountToRecentlyDeleted, v28);
      }
    }

    v29 = [representationCopy objectForKeyedSubscript:@"s_as"];
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

    v32 = [representationCopy objectForKeyedSubscript:@"s_hi"];
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

    v35 = [representationCopy objectForKeyedSubscript:@"s_fvrk"];
    if (v35)
    {
      v36 = [[WBSFileVaultRecoveryKeyDeviceInfo alloc] initWithDictionaryRepresentation:v35];
      fileVaultRecoveryKeyDeviceInfo = v11->_fileVaultRecoveryKeyDeviceInfo;
      v11->_fileVaultRecoveryKeyDeviceInfo = v36;
    }

    v38 = v11;

    spaceCopy = v40;
    userCopy = v41;
  }

  return v11;
}

WBSSavedAccountAdditionalSite *__86__WBSSavedAccountSharedSidecar_initWithUser_protectionSpace_dictionaryRepresentation___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[WBSSavedAccountAdditionalSite alloc] initWithDictionaryRepresentation:v2];

  return v3;
}

- (WBSSavedAccountSharedSidecar)initWithPersonalSidecar:(id)sidecar
{
  sidecarCopy = sidecar;
  prefixedSharableData = [sidecarCopy prefixedSharableData];
  user = [sidecarCopy user];
  protectionSpace = [sidecarCopy protectionSpace];
  v8 = [(WBSSavedAccountSharedSidecar *)self initWithUser:user protectionSpace:protectionSpace dictionaryRepresentation:prefixedSharableData];

  if (v8)
  {
    totpGenerator = [sidecarCopy totpGenerator];
    totpGenerator = v8->_totpGenerator;
    v8->_totpGenerator = totpGenerator;

    notesEntry = [sidecarCopy notesEntry];
    v12 = [notesEntry copy];
    notesEntry = v8->_notesEntry;
    v8->_notesEntry = v12;

    customTitle = [sidecarCopy customTitle];
    v15 = [customTitle copy];
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
  dictionaryRepresentation = [(WBSTOTPGenerator *)self->_totpGenerator dictionaryRepresentation];
  [v3 setObject:dictionaryRepresentation forKeyedSubscript:@"totp"];

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

  dictionaryRepresentation2 = [(WBSFileVaultRecoveryKeyDeviceInfo *)self->_fileVaultRecoveryKeyDeviceInfo dictionaryRepresentation];
  [v3 setObject:dictionaryRepresentation2 forKeyedSubscript:@"s_fvrk"];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v23 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      user = self->_user;
      user = [(WBSSavedAccountSharedSidecar *)v5 user];
      if (WBSIsEqual(user, user))
      {
        protectionSpace = self->_protectionSpace;
        protectionSpace = [(WBSSavedAccountSharedSidecar *)v5 protectionSpace];
        if (WBSIsEqual(protectionSpace, protectionSpace))
        {
          totpGenerator = self->_totpGenerator;
          totpGenerator = [(WBSSavedAccountSharedSidecar *)v5 totpGenerator];
          if (WBSIsEqual(totpGenerator, totpGenerator))
          {
            notesEntry = self->_notesEntry;
            notesEntry = [(WBSSavedAccountSharedSidecar *)v5 notesEntry];
            if (WBSIsEqual(notesEntry, notesEntry))
            {
              customTitle = self->_customTitle;
              customTitle = [(WBSSavedAccountSharedSidecar *)v5 customTitle];
              if (WBSIsEqual(customTitle, customTitle))
              {
                originalContributorParticipantID = self->_originalContributorParticipantID;
                originalContributorParticipantID = [(WBSSavedAccountSharedSidecar *)v5 originalContributorParticipantID];
                if (WBSIsEqual(originalContributorParticipantID, originalContributorParticipantID))
                {
                  additionalSites = self->_additionalSites;
                  additionalSites = [(WBSSavedAccountSharedSidecar *)v5 additionalSites];
                  if (WBSIsEqual(additionalSites, additionalSites))
                  {
                    historyItems = self->_historyItems;
                    historyItems = [(WBSSavedAccountSharedSidecar *)v5 historyItems];
                    if (WBSIsEqual(historyItems, historyItems))
                    {
                      fileVaultRecoveryKeyDeviceInfo = self->_fileVaultRecoveryKeyDeviceInfo;
                      fileVaultRecoveryKeyDeviceInfo = [(WBSSavedAccountSharedSidecar *)v5 fileVaultRecoveryKeyDeviceInfo];
                      if (WBSIsEqual(fileVaultRecoveryKeyDeviceInfo, fileVaultRecoveryKeyDeviceInfo))
                      {
                        participantIDForUserThatMovedSavedAccountToRecentlyDeleted = self->_participantIDForUserThatMovedSavedAccountToRecentlyDeleted;
                        participantIDForUserThatMovedSavedAccountToRecentlyDeleted = [(WBSSavedAccountSharedSidecar *)v5 participantIDForUserThatMovedSavedAccountToRecentlyDeleted];
                        v23 = WBSIsEqual(participantIDForUserThatMovedSavedAccountToRecentlyDeleted, participantIDForUserThatMovedSavedAccountToRecentlyDeleted);
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [WBSSavedAccountSharedSidecar alloc];
  user = self->_user;
  protectionSpace = self->_protectionSpace;
  originalKeychainDictionary = self->_originalKeychainDictionary;

  return [(WBSSavedAccountSharedSidecar *)v4 initWithUser:user protectionSpace:protectionSpace dictionaryRepresentation:originalKeychainDictionary];
}

@end