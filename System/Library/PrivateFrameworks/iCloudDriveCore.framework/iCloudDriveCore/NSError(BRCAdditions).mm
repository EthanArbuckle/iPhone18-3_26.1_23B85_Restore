@interface NSError(BRCAdditions)
+ (id)brc_errorWithDomain:()BRCAdditions code:underlyingError:;
+ (void)initialize;
- (BOOL)_brc_isCloudKitErrorCode:()BRCAdditions;
- (BOOL)_brc_isCloudKitPluginErrorCode:()BRCAdditions;
- (BOOL)_brc_isCloudKitUnderlyingErrorCode:()BRCAdditions;
- (BOOL)brc_isCloudKitMMCSErrorChunksCouldNotBeRegisteredError;
- (BOOL)brc_isCloudKitRequestRejectedError;
- (BOOL)brc_isFrontBoardOpenApplicationRequestDenied;
- (BOOL)brc_isIndividualItemBlacklistError;
- (BOOL)brc_isNetworkUnreachableDueToCellularError;
- (BOOL)brc_isNetworkUnreachableError;
- (BOOL)brc_isPostponeUploadError;
- (BOOL)brc_isXPCConnectionError;
- (double)br_suggestedRetryTimeInterval;
- (id)_brc_cloudKitPluginErrorPayload;
- (id)_brc_cloudKitUnderlyingErrorWithCode:()BRCAdditions;
- (id)_getErrorsChainWithErrorsCount:()BRCAdditions;
- (id)br_cloudKitErrorForIdentifier:()BRCAdditions;
- (id)br_suggestedRetryDate;
- (id)brc_ckPartialErrorsByItemID;
- (id)brc_cloudKitErrorMessage;
- (id)brc_description;
- (id)brc_getErrorsChainJSONStringWithErrorsCount:()BRCAdditions error:;
- (id)brc_obfuscate;
- (id)brc_strippedError;
- (id)brc_telemetryReportableErrorWithRecordName:()BRCAdditions;
- (id)brc_wrappedError;
- (uint64_t)_brc_isCloudKitInternalErrorSafeToSyncUpWithoutSyncDown;
- (uint64_t)brc_checkErrorsFromCloudKit:()BRCAdditions;
- (uint64_t)brc_containerResetErrorForSharedZone:()BRCAdditions resetReason:;
- (uint64_t)brc_containsCloudKitErrorCode:()BRCAdditions;
- (uint64_t)brc_containsCloudKitErrorCode:()BRCAdditions underlyingErrorCode:;
- (uint64_t)brc_containsCloudKitUnderlyingErrorCode:()BRCAdditions;
- (uint64_t)brc_isCloudKitErrorConsideredAsSuccessForZoneThrottle;
- (uint64_t)brc_isCloudKitErrorImplyingZoneNeedsCreation;
- (uint64_t)brc_isCloudKitErrorNoNetwork;
- (uint64_t)brc_isCloudKitErrorRemappedToNewRecordName:()BRCAdditions;
- (uint64_t)brc_isCloudKitErrorReparentedToNewParent:()BRCAdditions;
- (uint64_t)brc_isCloudKitErrorRequiresVerifyTerms;
- (uint64_t)brc_isCloudKitErrorRequiringAssetRecheck;
- (uint64_t)brc_isCloudKitErrorRequiringAssetRescan;
- (uint64_t)brc_isCloudKitErrorRequiringAssetReupload;
- (uint64_t)brc_isCloudKitErrorSafeToSyncUpWithoutSyncDown;
- (uint64_t)brc_isCloudKitErrorUnsupportedOSForItemAndGetMinimumSupported:()BRCAdditions;
- (uint64_t)brc_isCloudKitErrorUnsupportedOSForZoneAndGetMinimumSupported:()BRCAdditions;
- (uint64_t)brc_isCloudKitHasUnsaltedChildrenWithUnsaltedRecord:()BRCAdditions zoneID:;
- (uint64_t)brc_isCloudKitOutOfQuota;
- (uint64_t)brc_isCloudKitPCSChainingError;
- (uint64_t)brc_isCloudKitParentValidationKeyMismatchErrorWithFieldName:()BRCAdditions;
- (uint64_t)brc_isCloudKitShouldBeUsingEnhancedDrivePrivacyWithFieldName:()BRCAdditions;
- (uint64_t)brc_isCloudKitUnknownItemError;
- (uint64_t)brc_isEverRetriable;
- (uint64_t)brc_isRetriable;
- (uint64_t)brc_isSaltingError;
- (uint64_t)brc_isUserInitiatedRetriable;
- (uint64_t)brc_shouldRetryBubbleLater;
- (uint64_t)brc_shouldRetryLater;
- (void)brc_logUnderlineErrorsChain;
@end

@implementation NSError(BRCAdditions)

- (id)brc_description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  domain = [self domain];
  code = [self code];
  userInfo = [self userInfo];
  v7 = [v2 stringWithFormat:@"<%@:%p(%@:%ld) - %@>", v3, self, domain, code, userInfo];

  return v7;
}

- (uint64_t)brc_containerResetErrorForSharedZone:()BRCAdditions resetReason:
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__NSError_BRCAdditions__brc_containerResetErrorForSharedZone_resetReason___block_invoke;
  v6[3] = &unk_278506CC8;
  v6[4] = &v8;
  v6[5] = a4;
  v7 = a3;
  [self brc_checkErrorsFromCloudKit:v6];
  v4 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v4;
}

- (double)br_suggestedRetryTimeInterval
{
  v21 = *MEMORY[0x277D85DE8];
  userInfo = [self userInfo];
  v3 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBBF68]];
  [v3 doubleValue];
  v5 = v4;

  if ([self _brc_isCloudKitErrorCode:2])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    userInfo2 = [self userInfo];
    v7 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];
    objectEnumerator = [v7 objectEnumerator];

    v9 = [objectEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        v12 = 0;
        do
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(objectEnumerator);
          }

          [*(*(&v16 + 1) + 8 * v12) br_suggestedRetryTimeInterval];
          if (v13 > v5)
          {
            v5 = v13;
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [objectEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)br_suggestedRetryDate
{
  [self br_suggestedRetryTimeInterval];
  if (v1 <= 0.0)
  {
    v2 = 0;
  }

  else
  {
    v2 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:?];
  }

  return v2;
}

- (uint64_t)brc_isRetriable
{
  if ([self brc_isResetError])
  {
    return 0;
  }

  if ([self brc_isCloudKitErrorNeedsPCSPrep])
  {
    return 1;
  }

  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __40__NSError_BRCAdditions__brc_isRetriable__block_invoke;
  v3[3] = &unk_278503098;
  v3[4] = self;
  return [self brc_checkErrorsFromCloudKit:v3];
}

- (uint64_t)brc_isUserInitiatedRetriable
{
  if ([self brc_containsCloudKitErrorCode:23])
  {
    return 1;
  }

  return [self brc_containsCloudKitErrorCode:7];
}

- (uint64_t)brc_shouldRetryLater
{
  if ([self brc_containsCloudKitErrorCode:9] & 1) != 0 || (objc_msgSend(self, "brc_containsCloudKitErrorCode:", 6) & 1) != 0 || (objc_msgSend(self, "brc_containsCloudKitErrorCode:", 3))
  {
    return 1;
  }

  return [self br_isCloudDocsErrorCode:56];
}

- (uint64_t)brc_shouldRetryBubbleLater
{
  if ([self brc_containsCloudKitErrorCode:9] & 1) != 0 || (objc_msgSend(self, "brc_containsCloudKitErrorCode:", 6))
  {
    return 1;
  }

  return [self brc_containsCloudKitErrorCode:3];
}

- (uint64_t)brc_isEverRetriable
{
  if ([self brc_isRetriable] & 1) != 0 || (objc_msgSend(self, "brc_isCloudKitErrorRequiringAssetRecheck") & 1) != 0 || (objc_msgSend(self, "brc_isCloudKitErrorRequiringAssetRescan") & 1) != 0 || (objc_msgSend(self, "brc_isCloudKitCancellationError") & 1) != 0 || (objc_msgSend(self, "brc_isCloudKitErrorRequiringAssetReupload"))
  {
    return 1;
  }

  else
  {
    return [self brc_isCloudKitErrorSafeToSyncUpWithoutSyncDown] ^ 1;
  }
}

- (uint64_t)brc_checkErrorsFromCloudKit:()BRCAdditions
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((v4)[2](v4, self))
  {
LABEL_2:
    v5 = 1;
  }

  else
  {
    domain = [self domain];
    if ([domain isEqualToString:*MEMORY[0x277CBBF50]])
    {
      code = [self code];

      if (code == 2)
      {
        userInfo = [self userInfo];
        v9 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        objectEnumerator = [v9 objectEnumerator];
        v11 = [objectEnumerator countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v18;
          while (2)
          {
            v14 = 0;
            do
            {
              if (*v18 != v13)
              {
                objc_enumerationMutation(objectEnumerator);
              }

              if (v4[2](v4, *(*(&v17 + 1) + 8 * v14)))
              {

                goto LABEL_2;
              }

              ++v14;
            }

            while (v12 != v14);
            v12 = [objectEnumerator countByEnumeratingWithState:&v17 objects:v21 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }
      }
    }

    else
    {
    }

    v5 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)_brc_isCloudKitErrorCode:()BRCAdditions
{
  if (a3 >= 1000)
  {
    [NSError(BRCAdditions) _brc_isCloudKitErrorCode:];
  }

  domain = [self domain];
  if ([domain isEqualToString:*MEMORY[0x277CBBF50]])
  {
    v6 = [self code] == a3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)brc_containsCloudKitErrorCode:()BRCAdditions
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__NSError_BRCAdditions__brc_containsCloudKitErrorCode___block_invoke;
  v4[3] = &__block_descriptor_40_e17_B16__0__NSError_8l;
  v4[4] = a3;
  return [self brc_checkErrorsFromCloudKit:v4];
}

- (uint64_t)brc_containsCloudKitErrorCode:()BRCAdditions underlyingErrorCode:
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __75__NSError_BRCAdditions__brc_containsCloudKitErrorCode_underlyingErrorCode___block_invoke;
  v5[3] = &__block_descriptor_48_e17_B16__0__NSError_8l;
  v5[4] = a3;
  v5[5] = a4;
  return [self brc_checkErrorsFromCloudKit:v5];
}

- (id)_brc_cloudKitUnderlyingErrorWithCode:()BRCAdditions
{
  selfCopy = self;
  domain = [selfCopy domain];
  v6 = [domain isEqualToString:*MEMORY[0x277CBBF50]];

  if (v6)
  {
    userInfo = [selfCopy userInfo];
    v8 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

    selfCopy = v8;
  }

  domain2 = [selfCopy domain];
  v10 = *MEMORY[0x277CBC120];
  v11 = [domain2 isEqualToString:*MEMORY[0x277CBC120]];

  if (!v11)
  {
    goto LABEL_10;
  }

  if ([selfCopy code] == a3)
  {
LABEL_5:
    v12 = selfCopy;
    selfCopy = v12;
    goto LABEL_11;
  }

  if ([selfCopy code] == 2055)
  {
    userInfo2 = [selfCopy userInfo];
    v14 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

    domain3 = [v14 domain];
    v16 = [domain3 isEqualToString:v10];

    if (v16 && [v14 code] == a3)
    {
      selfCopy = v14;
      goto LABEL_5;
    }

    v12 = 0;
    selfCopy = v14;
  }

  else
  {
LABEL_10:
    v12 = 0;
  }

LABEL_11:

  return v12;
}

- (BOOL)_brc_isCloudKitUnderlyingErrorCode:()BRCAdditions
{
  if (a3 >= 2 && a3 <= 999)
  {
    [NSError(BRCAdditions) _brc_isCloudKitUnderlyingErrorCode:];
  }

  v5 = [self _brc_cloudKitUnderlyingErrorWithCode:a3];
  v6 = v5 != 0;

  return v6;
}

- (uint64_t)brc_containsCloudKitUnderlyingErrorCode:()BRCAdditions
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__NSError_BRCAdditions__brc_containsCloudKitUnderlyingErrorCode___block_invoke;
  v4[3] = &__block_descriptor_40_e17_B16__0__NSError_8l;
  v4[4] = a3;
  return [self brc_checkErrorsFromCloudKit:v4];
}

- (id)br_cloudKitErrorForIdentifier:()BRCAdditions
{
  v4 = a3;
  if (!v4)
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [NSError(BRCAdditions) br_cloudKitErrorForIdentifier:];
    }

    goto LABEL_8;
  }

  domain = [self domain];
  v6 = [domain isEqualToString:*MEMORY[0x277CBBF50]];

  if (!v6)
  {
    goto LABEL_8;
  }

  userInfo = [self userInfo];
  v8 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

  selfCopy = [v8 objectForKeyedSubscript:v4];

  if (!selfCopy)
  {
LABEL_8:
    selfCopy = self;
  }

  return selfCopy;
}

- (uint64_t)brc_isCloudKitOutOfQuota
{
  if ([self _brc_isCloudKitUnderlyingErrorCode:2035])
  {
    return 1;
  }

  return [self brc_containsCloudKitErrorCode:25];
}

- (uint64_t)brc_isCloudKitErrorNoNetwork
{
  v16 = *MEMORY[0x277D85DE8];
  if ([self br_isCKErrorCode:3])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    underlyingErrors = [self underlyingErrors];
    v3 = [underlyingErrors countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v3)
    {
      v4 = *v12;
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v12 != v4)
          {
            objc_enumerationMutation(underlyingErrors);
          }

          v6 = *(*(&v11 + 1) + 8 * i);
          if ([v6 br_isNSURLErrorCode:-1009])
          {
            userInfo = [v6 userInfo];
            v8 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA770]];
            v3 = v8 == 0;

            goto LABEL_13;
          }
        }

        v3 = [underlyingErrors countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    v3 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v3;
}

- (uint64_t)brc_isCloudKitErrorRequiresVerifyTerms
{
  if ([self brc_containsCloudKitErrorCode:9 underlyingErrorCode:2011])
  {
    return 1;
  }

  return [self brc_containsCloudKitErrorCode:115];
}

- (uint64_t)brc_isCloudKitPCSChainingError
{
  if ([self _brc_isCloudKitUnderlyingErrorCode:2044])
  {
    return 1;
  }

  return [self _brc_isCloudKitPluginErrorCode:6];
}

- (uint64_t)brc_isCloudKitParentValidationKeyMismatchErrorWithFieldName:()BRCAdditions
{
  v5 = [self _brc_isCloudKitPluginErrorCode:12];
  if (v5)
  {
    _brc_cloudKitPluginErrorPayload = [self _brc_cloudKitPluginErrorPayload];
    v7 = [[BRCExtensionErrorPayload alloc] initWithData:_brc_cloudKitPluginErrorPayload];
    v8 = v7;
    if (a3)
    {
      *a3 = [(BRCExtensionErrorPayload *)v7 fieldName];
    }
  }

  return v5;
}

- (uint64_t)brc_isCloudKitHasUnsaltedChildrenWithUnsaltedRecord:()BRCAdditions zoneID:
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [self _brc_isCloudKitPluginErrorCode:10];
  if (v7)
  {
    _brc_cloudKitPluginErrorPayload = [self _brc_cloudKitPluginErrorPayload];
    if (a3)
    {
      v21 = _brc_cloudKitPluginErrorPayload;
      v9 = [[BRCExtensionErrorPayload alloc] initWithData:_brc_cloudKitPluginErrorPayload];
      v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v20 = v9;
      recordIds = [(BRCExtensionErrorPayload *)v9 recordIds];
      v12 = [recordIds countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v23;
        do
        {
          v15 = 0;
          do
          {
            if (*v23 != v14)
            {
              objc_enumerationMutation(recordIds);
            }

            v16 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:*(*(&v22 + 1) + 8 * v15) zoneID:v6];
            [v10 addObject:v16];

            ++v15;
          }

          while (v13 != v15);
          v13 = [recordIds countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v13);
      }

      v17 = v10;
      *a3 = v10;

      _brc_cloudKitPluginErrorPayload = v21;
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v7;
}

- (uint64_t)brc_isCloudKitShouldBeUsingEnhancedDrivePrivacyWithFieldName:()BRCAdditions
{
  v5 = [self _brc_isCloudKitPluginErrorCode:13];
  if (v5)
  {
    _brc_cloudKitPluginErrorPayload = [self _brc_cloudKitPluginErrorPayload];
    v7 = [[BRCExtensionErrorPayload alloc] initWithData:_brc_cloudKitPluginErrorPayload];
    v8 = v7;
    if (a3)
    {
      *a3 = [(BRCExtensionErrorPayload *)v7 fieldName];
    }
  }

  return v5;
}

- (uint64_t)brc_isSaltingError
{
  if ([self _brc_isCloudKitPluginErrorCode:10] & 1) != 0 || (objc_msgSend(self, "_brc_isCloudKitPluginErrorCode:", 9) & 1) != 0 || (objc_msgSend(self, "_brc_isCloudKitPluginErrorCode:", 10) & 1) != 0 || (objc_msgSend(self, "_brc_isCloudKitPluginErrorCode:", 11) & 1) != 0 || (objc_msgSend(self, "_brc_isCloudKitPluginErrorCode:", 12))
  {
    return 1;
  }

  return [self _brc_isCloudKitPluginErrorCode:13];
}

- (uint64_t)brc_isCloudKitUnknownItemError
{
  result = [self _brc_isCloudKitErrorCode:11];
  if (result)
  {

    return [self _brc_isCloudKitUnderlyingErrorCode:2003];
  }

  return result;
}

- (BOOL)brc_isCloudKitRequestRejectedError
{
  domain = [self domain];
  if ([domain isEqualToString:*MEMORY[0x277CBBF50]])
  {
    v3 = [self code] == 15;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)brc_isCloudKitMMCSErrorChunksCouldNotBeRegisteredError
{
  if ([self _brc_isCloudKitErrorCode:4])
  {
    userInfo = [self userInfo];
    v3 = *MEMORY[0x277CCA7E8];
    v4 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

    domain = [v4 domain];
    if ([domain isEqualToString:*MEMORY[0x277CBC120]])
    {
      code = [v4 code];

      if (code != 3006)
      {
        v9 = 0;
LABEL_12:

        return v9;
      }

      userInfo2 = [v4 userInfo];
      domain = [userInfo2 objectForKeyedSubscript:v3];

      v5Domain = [domain domain];
      if ([v5Domain isEqualToString:*MEMORY[0x277D25460]])
      {
        v9 = [domain code] == 29;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_12;
  }

  return 0;
}

- (id)brc_ckPartialErrorsByItemID
{
  domain = [self domain];
  if (![domain isEqualToString:*MEMORY[0x277CBBF50]])
  {
    v4 = 0;
    goto LABEL_5;
  }

  code = [self code];

  if (code == 2)
  {
    domain = [self userInfo];
    v4 = [domain objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];
LABEL_5:

    goto LABEL_7;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

- (uint64_t)brc_isCloudKitErrorRequiringAssetRecheck
{
  domain = [self domain];
  if ([domain isEqualToString:*MEMORY[0x277CBBF50]])
  {
    code = [self code];

    if (code == 35)
    {
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

- (uint64_t)brc_isCloudKitErrorRequiringAssetRescan
{
  domain = [self domain];
  v3 = [domain isEqualToString:*MEMORY[0x277CBBF50]];

  if (v3)
  {
    if (([self code] & 0xFFFFFFFFFFFFFFFELL) == 0x10)
    {
      selfCopy = 0;
      v5 = 1;
      goto LABEL_11;
    }

    userInfo = [self userInfo];
    selfCopy = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  else
  {
    selfCopy = self;
  }

  domain2 = [selfCopy domain];
  v8 = [domain2 isEqualToString:*MEMORY[0x277CBC120]];

  if (!v8 || ((v9 = [selfCopy code], v5 = 1, (v9 - 3002) > 7) || ((1 << (v9 + 70)) & 0x9F) == 0) && (v9 - 7000) >= 5)
  {
    v5 = 0;
  }

LABEL_11:

  return v5;
}

- (uint64_t)brc_isCloudKitErrorRequiringAssetReupload
{
  if ([self brc_isCloudKitErrorRequiringAssetRescan])
  {
    selfCopy = 0;
    v3 = 1;
    goto LABEL_14;
  }

  domain = [self domain];
  v5 = [domain isEqualToString:*MEMORY[0x277CBBF50]];

  if (v5)
  {
    userInfo = [self userInfo];
    selfCopy = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  else
  {
    selfCopy = self;
  }

  domain2 = [selfCopy domain];
  v8 = [domain2 isEqualToString:*MEMORY[0x277CBC120]];

  if (!v8)
  {
LABEL_13:
    v3 = 0;
    goto LABEL_14;
  }

  code = [selfCopy code];
  v3 = 1;
  if (code > 5002)
  {
    if ((code - 5003) < 2)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (code != 1021 && code != 3005 && code != 3011)
  {
    goto LABEL_13;
  }

LABEL_14:

  return v3;
}

- (BOOL)_brc_isCloudKitPluginErrorCode:()BRCAdditions
{
  v4 = [self _brc_cloudKitUnderlyingErrorWithCode:6000];
  userInfo = [v4 userInfo];
  v6 = [userInfo objectForKey:*MEMORY[0x277CCA7E8]];

  domain = [v6 domain];
  v8 = [domain isEqualToString:@"CloudDocsServerExtension"];

  if (v8)
  {
    v9 = [v6 code] == a3;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_brc_cloudKitPluginErrorPayload
{
  v1 = [self _brc_cloudKitUnderlyingErrorWithCode:6000];
  userInfo = [v1 userInfo];
  v3 = [userInfo objectForKey:*MEMORY[0x277CCA7E8]];

  userInfo2 = [v3 userInfo];
  v5 = [userInfo2 objectForKey:*MEMORY[0x277CBBF80]];

  return v5;
}

- (uint64_t)brc_isCloudKitErrorUnsupportedOSForItemAndGetMinimumSupported:()BRCAdditions
{
  v5 = [self _brc_isCloudKitPluginErrorCode:1];
  if (v5)
  {
    _brc_cloudKitPluginErrorPayload = [self _brc_cloudKitPluginErrorPayload];
    v7 = [[BRCExtensionErrorPayload alloc] initWithData:_brc_cloudKitPluginErrorPayload];
    v8 = v7;
    if (a3)
    {
      *a3 = [(BRCExtensionErrorPayload *)v7 minimumOSName];
    }
  }

  return v5;
}

- (uint64_t)brc_isCloudKitErrorUnsupportedOSForZoneAndGetMinimumSupported:()BRCAdditions
{
  v5 = [self _brc_isCloudKitPluginErrorCode:2];
  if (v5)
  {
    _brc_cloudKitPluginErrorPayload = [self _brc_cloudKitPluginErrorPayload];
    v7 = [[BRCExtensionErrorPayload alloc] initWithData:_brc_cloudKitPluginErrorPayload];
    v8 = v7;
    if (a3)
    {
      *a3 = [(BRCExtensionErrorPayload *)v7 minimumOSName];
    }
  }

  return v5;
}

- (uint64_t)brc_isCloudKitErrorReparentedToNewParent:()BRCAdditions
{
  v5 = [self _brc_isCloudKitPluginErrorCode:7];
  if (v5)
  {
    _brc_cloudKitPluginErrorPayload = [self _brc_cloudKitPluginErrorPayload];
    v7 = [[BRCExtensionErrorPayload alloc] initWithData:_brc_cloudKitPluginErrorPayload];
    if ([(BRCExtensionErrorPayload *)v7 hasRecordId])
    {
      if (!a3)
      {
LABEL_5:

        return v5;
      }
    }

    else
    {
      [NSError(BRCAdditions) brc_isCloudKitErrorReparentedToNewParent:];
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    *a3 = [(BRCExtensionErrorPayload *)v7 recordId];
    goto LABEL_5;
  }

  return v5;
}

- (uint64_t)brc_isCloudKitErrorRemappedToNewRecordName:()BRCAdditions
{
  v5 = [self _brc_isCloudKitPluginErrorCode:8];
  if (v5)
  {
    _brc_cloudKitPluginErrorPayload = [self _brc_cloudKitPluginErrorPayload];
    v7 = [[BRCExtensionErrorPayload alloc] initWithData:_brc_cloudKitPluginErrorPayload];
    if ([(BRCExtensionErrorPayload *)v7 hasRecordId])
    {
      if (!a3)
      {
LABEL_5:

        return v5;
      }
    }

    else
    {
      [NSError(BRCAdditions) brc_isCloudKitErrorRemappedToNewRecordName:];
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    *a3 = [(BRCExtensionErrorPayload *)v7 recordId];
    goto LABEL_5;
  }

  return v5;
}

- (BOOL)brc_isIndividualItemBlacklistError
{
  domain = [self domain];
  v3 = [domain isEqualToString:*MEMORY[0x277CBBF50]];

  if (v3)
  {
    userInfo = [self userInfo];
    selfCopy = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  else
  {
    selfCopy = self;
  }

  domain2 = [selfCopy domain];
  v7 = [domain2 isEqualToString:*MEMORY[0x277CBC120]];

  if (v7)
  {
    code = [selfCopy code];
    v10 = code == 2052 || code == 2027;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (uint64_t)brc_isCloudKitErrorConsideredAsSuccessForZoneThrottle
{
  if ([self _brc_isCloudKitUnderlyingErrorCode:3005] & 1) != 0 || (objc_msgSend(self, "brc_isCloudKitErrorUnsupportedOSForItemAndGetMinimumSupported:", 0))
  {
    return 1;
  }

  return [self brc_isCloudKitOutOfQuota];
}

- (uint64_t)_brc_isCloudKitInternalErrorSafeToSyncUpWithoutSyncDown
{
  domain = [self domain];
  v3 = *MEMORY[0x277CBC120];
  v4 = [domain isEqualToString:*MEMORY[0x277CBC120]];

  if ((v4 & 1) == 0)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_14;
    }

LABEL_13:
    [NSError(BRCAdditions) _brc_isCloudKitInternalErrorSafeToSyncUpWithoutSyncDown];
    goto LABEL_14;
  }

  code = [self code];
  if (code > 2999)
  {
    _brc_isCloudKitInternalErrorSafeToSyncUpWithoutSyncDown = 1;
    if (code <= 5999)
    {
      if ((code - 3000) < 0xC)
      {
        return _brc_isCloudKitInternalErrorSafeToSyncUpWithoutSyncDown;
      }

      if ((code - 5000) < 0xC)
      {
        if (code != 5004)
        {
          return _brc_isCloudKitInternalErrorSafeToSyncUpWithoutSyncDown;
        }

        v7 = brc_bread_crumbs();
        v8 = brc_default_log();
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_14;
        }

        goto LABEL_73;
      }

      if ((code - 4000) < 3)
      {
        return _brc_isCloudKitInternalErrorSafeToSyncUpWithoutSyncDown;
      }

LABEL_81:
      v7 = brc_bread_crumbs();
      v8 = brc_default_log();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    if ((code - 8000) < 0xE || (code - 7000) < 5)
    {
      return _brc_isCloudKitInternalErrorSafeToSyncUpWithoutSyncDown;
    }

    if (code != 6000)
    {
      goto LABEL_81;
    }

    userInfo = [self userInfo];
    v11 = [userInfo objectForKey:*MEMORY[0x277CCA7E8]];

    domain2 = [v11 domain];
    v13 = [domain2 isEqualToString:@"CloudDocsServerExtension"];

    if (v13)
    {
      code2 = [v11 code];
      _brc_isCloudKitInternalErrorSafeToSyncUpWithoutSyncDown = 1;
      if (code2 > 7)
      {
        if (code2 <= 10)
        {
          if (code2 == 8)
          {
            v15 = brc_bread_crumbs();
            v16 = brc_default_log();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_114;
            }
          }

          else if (code2 == 9)
          {
            v15 = brc_bread_crumbs();
            v16 = brc_default_log();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_114;
            }
          }

          else
          {
            v15 = brc_bread_crumbs();
            v16 = brc_default_log();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_114;
            }
          }

          goto LABEL_85;
        }

        if ((code2 - 13) < 2)
        {
          goto LABEL_86;
        }

        if (code2 == 11)
        {
          v15 = brc_bread_crumbs();
          v16 = brc_default_log();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
LABEL_114:
            [NSError(BRCAdditions) _brc_isCloudKitInternalErrorSafeToSyncUpWithoutSyncDown];
          }

LABEL_85:

          _brc_isCloudKitInternalErrorSafeToSyncUpWithoutSyncDown = 0;
          goto LABEL_86;
        }

        if (code2 == 12)
        {
          v15 = brc_bread_crumbs();
          v16 = brc_default_log();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_114;
          }

          goto LABEL_85;
        }
      }

      else
      {
        if (code2 > 4)
        {
          if (code2 == 5)
          {
            v15 = brc_bread_crumbs();
            v16 = brc_default_log();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_114;
            }
          }

          else if (code2 == 6)
          {
            v15 = brc_bread_crumbs();
            v16 = brc_default_log();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_114;
            }
          }

          else
          {
            v15 = brc_bread_crumbs();
            v16 = brc_default_log();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_114;
            }
          }

          goto LABEL_85;
        }

        if ((code2 - 1) < 2)
        {
LABEL_86:

          return _brc_isCloudKitInternalErrorSafeToSyncUpWithoutSyncDown;
        }

        if (code2 == 3)
        {
          v15 = brc_bread_crumbs();
          v16 = brc_default_log();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_114;
          }

          goto LABEL_85;
        }

        if (code2 == 4)
        {
          v15 = brc_bread_crumbs();
          v16 = brc_default_log();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_114;
          }

          goto LABEL_85;
        }
      }

      v15 = brc_bread_crumbs();
      v16 = brc_default_log();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_85;
      }
    }

    else
    {
      v15 = brc_bread_crumbs();
      v16 = brc_default_log();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_85;
      }
    }

    [NSError(BRCAdditions) _brc_isCloudKitInternalErrorSafeToSyncUpWithoutSyncDown];
    goto LABEL_85;
  }

  if (code <= 1023)
  {
    if ((code - 1000) < 0x18)
    {
      if (code == 1020)
      {
        return 1;
      }

      v7 = brc_bread_crumbs();
      v8 = brc_default_log();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_14;
      }

      goto LABEL_73;
    }

    if (!code)
    {
      v7 = brc_bread_crumbs();
      v8 = brc_default_log();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    if (code == 1)
    {
      v7 = brc_bread_crumbs();
      v8 = brc_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
LABEL_73:
        [NSError(BRCAdditions) _brc_isCloudKitInternalErrorSafeToSyncUpWithoutSyncDown];
      }

LABEL_14:

      return 0;
    }

    goto LABEL_81;
  }

  if ((code - 2000) >= 0x38)
  {
    if (code == 1024)
    {
      v7 = brc_bread_crumbs();
      v8 = brc_default_log();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_81;
  }

  _brc_isCloudKitInternalErrorSafeToSyncUpWithoutSyncDown = 1;
  if (code <= 2033)
  {
    if (code > 2021)
    {
      if ((code - 2029) >= 3 && code != 2022 && code != 2024)
      {
        goto LABEL_64;
      }
    }

    else
    {
      if (code == 2000)
      {
        v7 = brc_bread_crumbs();
        v8 = brc_default_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_73;
        }

        goto LABEL_14;
      }

      if (code != 2002 && code != 2008)
      {
        goto LABEL_64;
      }
    }
  }

  else if (code > 2040)
  {
    if (code <= 2048)
    {
      if (code == 2041)
      {
        v7 = brc_bread_crumbs();
        v8 = brc_default_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_73;
        }

        goto LABEL_14;
      }

      if (code == 2044)
      {
        v7 = brc_bread_crumbs();
        v8 = brc_default_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_73;
        }

        goto LABEL_14;
      }

      goto LABEL_64;
    }

    if (code == 2049)
    {
      return _brc_isCloudKitInternalErrorSafeToSyncUpWithoutSyncDown;
    }

    if (code != 2055)
    {
      goto LABEL_64;
    }

    userInfo2 = [self userInfo];
    v18 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

    domain3 = [v18 domain];
    v20 = [domain3 isEqualToString:v3];

    if (v20)
    {
      _brc_isCloudKitInternalErrorSafeToSyncUpWithoutSyncDown = [v18 _brc_isCloudKitInternalErrorSafeToSyncUpWithoutSyncDown];
    }

    else
    {
      _brc_isCloudKitInternalErrorSafeToSyncUpWithoutSyncDown = 1;
    }
  }

  else
  {
    if (code > 2036)
    {
      if (code == 2037)
      {
        v7 = brc_bread_crumbs();
        v8 = brc_default_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_73;
        }

        goto LABEL_14;
      }

      if (code == 2040)
      {
        v7 = brc_bread_crumbs();
        v8 = brc_default_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_73;
        }

        goto LABEL_14;
      }

      goto LABEL_64;
    }

    if ((code - 2034) >= 2)
    {
      if (code == 2036)
      {
        v7 = brc_bread_crumbs();
        v8 = brc_default_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_73;
        }

        goto LABEL_14;
      }

LABEL_64:
      v7 = brc_bread_crumbs();
      v8 = brc_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_73;
      }

      goto LABEL_14;
    }
  }

  return _brc_isCloudKitInternalErrorSafeToSyncUpWithoutSyncDown;
}

- (uint64_t)brc_isCloudKitErrorSafeToSyncUpWithoutSyncDown
{
  v36 = *MEMORY[0x277D85DE8];
  if ([self brc_isXPCConnectionError])
  {
    v2 = brc_bread_crumbs();
    v3 = brc_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [NSError(BRCAdditions) brc_isCloudKitErrorSafeToSyncUpWithoutSyncDown];
    }

    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_6;
    }

LABEL_5:
    [NSError(BRCAdditions) _brc_isCloudKitInternalErrorSafeToSyncUpWithoutSyncDown];
LABEL_6:

    _brc_isCloudKitInternalErrorSafeToSyncUpWithoutSyncDown2 = 0;
LABEL_7:
    v7 = *MEMORY[0x277D85DE8];
    return _brc_isCloudKitInternalErrorSafeToSyncUpWithoutSyncDown2;
  }

  domain = [self domain];
  v10 = [domain isEqualToString:*MEMORY[0x277CBBF50]];

  if (v10)
  {
    _brc_isCloudKitInternalErrorSafeToSyncUpWithoutSyncDown2 = 1;
    switch([self code])
    {
      case 1:
        userInfo = [self userInfo];
        v12 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];
        _brc_isCloudKitInternalErrorSafeToSyncUpWithoutSyncDown = [v12 _brc_isCloudKitInternalErrorSafeToSyncUpWithoutSyncDown];

        v14 = *MEMORY[0x277D85DE8];
        return _brc_isCloudKitInternalErrorSafeToSyncUpWithoutSyncDown;
      case 2:
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        userInfo2 = [self userInfo];
        v19 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];
        objectEnumerator = [v19 objectEnumerator];

        v21 = [objectEnumerator countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (!v21)
        {
          goto LABEL_50;
        }

        v22 = v21;
        v23 = *v32;
        break;
      case 3:
        v4 = brc_bread_crumbs();
        v5 = brc_default_log();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_5;
        }

        goto LABEL_6;
      case 4:
        v4 = brc_bread_crumbs();
        v5 = brc_default_log();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_5;
        }

        goto LABEL_6;
      case 5:
        v4 = brc_bread_crumbs();
        v5 = brc_default_log();
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_6;
        }

        goto LABEL_63;
      case 6:
        v4 = brc_bread_crumbs();
        v5 = brc_default_log();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_5;
        }

        goto LABEL_6;
      case 7:
      case 16:
      case 17:
      case 25:
      case 27:
      case 28:
      case 29:
      case 32:
      case 33:
      case 34:
      case 35:
        goto LABEL_7;
      case 8:
        v4 = brc_bread_crumbs();
        v5 = brc_default_log();
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_6;
        }

        goto LABEL_63;
      case 9:
        v4 = brc_bread_crumbs();
        v5 = brc_default_log();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_5;
        }

        goto LABEL_6;
      case 10:
        v4 = brc_bread_crumbs();
        v5 = brc_default_log();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_5;
        }

        goto LABEL_6;
      case 11:
        v4 = brc_bread_crumbs();
        v5 = brc_default_log();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_5;
        }

        goto LABEL_6;
      case 12:
        userInfo3 = [self userInfo];
        objectEnumerator = [userInfo3 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

        if (objectEnumerator)
        {
          goto LABEL_69;
        }

        v26 = brc_bread_crumbs();
        v27 = brc_default_log();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          [NSError(BRCAdditions) _brc_isCloudKitInternalErrorSafeToSyncUpWithoutSyncDown];
        }

        goto LABEL_81;
      case 13:
        v4 = brc_bread_crumbs();
        v5 = brc_default_log();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_5;
        }

        goto LABEL_6;
      case 14:
        v4 = brc_bread_crumbs();
        v5 = brc_default_log();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_5;
        }

        goto LABEL_6;
      case 15:
        userInfo4 = [self userInfo];
        objectEnumerator = [userInfo4 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

        if (objectEnumerator)
        {
LABEL_69:
          _brc_isCloudKitInternalErrorSafeToSyncUpWithoutSyncDown2 = [objectEnumerator _brc_isCloudKitInternalErrorSafeToSyncUpWithoutSyncDown];
          goto LABEL_82;
        }

        v26 = brc_bread_crumbs();
        v27 = brc_default_log();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
        {
          [NSError(BRCAdditions) _brc_isCloudKitInternalErrorSafeToSyncUpWithoutSyncDown];
        }

        goto LABEL_81;
      case 18:
        v4 = brc_bread_crumbs();
        v5 = brc_default_log();
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_6;
        }

        goto LABEL_63;
      case 19:
        v4 = brc_bread_crumbs();
        v5 = brc_default_log();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_5;
        }

        goto LABEL_6;
      case 20:
        v4 = brc_bread_crumbs();
        v5 = brc_default_log();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_5;
        }

        goto LABEL_6;
      case 21:
        v4 = brc_bread_crumbs();
        v5 = brc_default_log();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_5;
        }

        goto LABEL_6;
      case 22:
        userInfo5 = [self userInfo];
        v30 = [userInfo5 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

        if (v30)
        {
          _brc_isCloudKitInternalErrorSafeToSyncUpWithoutSyncDown2 = [v30 _brc_isCloudKitInternalErrorSafeToSyncUpWithoutSyncDown];
        }

        goto LABEL_7;
      case 23:
        v4 = brc_bread_crumbs();
        v5 = brc_default_log();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_5;
        }

        goto LABEL_6;
      case 24:
        v4 = brc_bread_crumbs();
        v5 = brc_default_log();
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_6;
        }

LABEL_63:
        [NSError(BRCAdditions) _brc_isCloudKitInternalErrorSafeToSyncUpWithoutSyncDown];
        goto LABEL_6;
      case 26:
        v4 = brc_bread_crumbs();
        v5 = brc_default_log();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_5;
        }

        goto LABEL_6;
      case 30:
        v4 = brc_bread_crumbs();
        v5 = brc_default_log();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_5;
        }

        goto LABEL_6;
      case 31:
        v4 = brc_bread_crumbs();
        v5 = brc_default_log();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_5;
        }

        goto LABEL_6;
      case 36:
        v4 = brc_bread_crumbs();
        v5 = brc_default_log();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_5;
        }

        goto LABEL_6;
      default:
        v4 = brc_bread_crumbs();
        v5 = brc_default_log();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_5;
        }

        goto LABEL_6;
    }

    while (2)
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v32 != v23)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        if (([*(*(&v31 + 1) + 8 * i) brc_isCloudKitErrorSafeToSyncUpWithoutSyncDown] & 1) == 0)
        {
          v26 = brc_bread_crumbs();
          v27 = brc_default_log();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            [NSError(BRCAdditions) _brc_isCloudKitInternalErrorSafeToSyncUpWithoutSyncDown];
          }

LABEL_81:

          _brc_isCloudKitInternalErrorSafeToSyncUpWithoutSyncDown2 = 0;
          goto LABEL_82;
        }
      }

      v22 = [objectEnumerator countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v22)
      {
        continue;
      }

      break;
    }

LABEL_50:
    _brc_isCloudKitInternalErrorSafeToSyncUpWithoutSyncDown2 = 1;
LABEL_82:

    goto LABEL_7;
  }

  domain2 = [self domain];
  v16 = [domain2 isEqualToString:*MEMORY[0x277CBC120]];

  if (!v16)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v17 = *MEMORY[0x277D85DE8];

  return [self _brc_isCloudKitInternalErrorSafeToSyncUpWithoutSyncDown];
}

- (uint64_t)brc_isCloudKitErrorImplyingZoneNeedsCreation
{
  if ([self _brc_isCloudKitZoneNotFoundError])
  {
    return 1;
  }

  return [self _brc_isCloudKitZoneUserDeletedError];
}

- (BOOL)brc_isFrontBoardOpenApplicationRequestDenied
{
  domain = [self domain];
  if ([domain isEqualToString:*MEMORY[0x277D0AC78]])
  {
    v3 = [self code] == 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)brc_strippedError
{
  domain = [self domain];
  v3 = *MEMORY[0x277CBBF50];
  if ([domain isEqualToString:*MEMORY[0x277CBBF50]])
  {

    goto LABEL_4;
  }

  domain2 = [self domain];
  v5 = [domain2 isEqualToString:*MEMORY[0x277CBC120]];

  if (v5)
  {
LABEL_4:
    v6 = objc_opt_new();
    domain3 = [self domain];
    if ([domain3 isEqualToString:v3])
    {
      code = [self code];

      if (code == 2)
      {
        userInfo = [self userInfo];
        selfCopy = *MEMORY[0x277CBBFB0];
        v11 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

        v12 = objc_opt_new();
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __42__NSError_BRCAdditions__brc_strippedError__block_invoke;
        v27[3] = &unk_278501918;
        v13 = v12;
        v28 = v13;
        [v11 enumerateKeysAndObjectsUsingBlock:v27];
        v14 = [v13 count];
        if (v14 == 1)
        {
          allValues = [v13 allValues];
          firstObject = [allValues firstObject];
          selfCopy = [firstObject brc_strippedError];
        }

        else
        {
          [v6 setObject:v13 forKeyedSubscript:selfCopy];
        }

        if (v14 == 1)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
    }

    userInfo2 = [self userInfo];
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __42__NSError_BRCAdditions__brc_strippedError__block_invoke_2;
    v25 = &unk_278501918;
    v18 = v6;
    v26 = v18;
    [userInfo2 enumerateKeysAndObjectsUsingBlock:&v22];

    v19 = MEMORY[0x277CCA9B8];
    domain4 = [self domain];
    selfCopy = [v19 errorWithDomain:domain4 code:objc_msgSend(self userInfo:{"code"), v18}];

LABEL_10:
    goto LABEL_12;
  }

  selfCopy = self;
LABEL_12:

  return selfCopy;
}

+ (id)brc_errorWithDomain:()BRCAdditions code:underlyingError:
{
  v25[1] = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = a3;
  userInfo = [v7 userInfo];
  v10 = *MEMORY[0x277CCA450];
  v11 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA450]];

  v12 = MEMORY[0x277CCA9B8];
  v13 = *MEMORY[0x277CCA7E8];
  if (v11)
  {
    v22[0] = *MEMORY[0x277CCA7E8];
    v22[1] = v10;
    v23[0] = v7;
    v23[1] = v11;
    v14 = MEMORY[0x277CBEAC0];
    v15 = v23;
    v16 = v22;
    v17 = 2;
  }

  else
  {
    v24 = *MEMORY[0x277CCA7E8];
    v25[0] = v7;
    v14 = MEMORY[0x277CBEAC0];
    v15 = v25;
    v16 = &v24;
    v17 = 1;
  }

  v18 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:v17];
  v19 = [v12 errorWithDomain:v8 code:a4 userInfo:v18];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)brc_wrappedError
{
  domain = [self domain];
  v3 = *MEMORY[0x277CFABD0];
  if ([domain isEqualToString:*MEMORY[0x277CFABD0]])
  {

    goto LABEL_4;
  }

  domain2 = [self domain];
  v5 = *MEMORY[0x277CCA050];
  v6 = [domain2 isEqualToString:*MEMORY[0x277CCA050]];

  if (v6)
  {
    goto LABEL_4;
  }

  domain3 = [self domain];
  if ([domain3 isEqualToString:*MEMORY[0x277CBBF50]])
  {

LABEL_12:
    brc_strippedError = [self brc_strippedError];
    if ([self brc_isCloudKitOutOfQuota])
    {
      v14 = v5;
      v15 = 4354;
    }

    else
    {
      v14 = v3;
      v15 = 17;
    }

    v8 = [MEMORY[0x277CCA9B8] brc_errorWithDomain:v14 code:v15 underlyingError:brc_strippedError];

    goto LABEL_6;
  }

  domain4 = [self domain];
  v12 = [domain4 isEqualToString:*MEMORY[0x277CBC120]];

  if (v12)
  {
    goto LABEL_12;
  }

  domain5 = [self domain];
  v17 = [domain5 isEqualToString:*MEMORY[0x277CCA5B8]];

  if (v17)
  {
    selfCopy = [MEMORY[0x277CCA9B8] brc_errorWithDomain:v5 code:512 underlyingError:self];
    goto LABEL_5;
  }

  domain6 = [self domain];
  v19 = [domain6 isEqualToString:*MEMORY[0x277D0D608]];

  if (v19)
  {
    v20 = v3;
    code = [self code];
    if (code == 6)
    {
      v23 = 8;
    }

    else if (code == 1)
    {
      v22 = v5;

      v23 = 512;
      v20 = v22;
    }

    else
    {
      v23 = 15;
    }

    v8 = [MEMORY[0x277CCA9B8] brc_errorWithDomain:v20 code:v23 underlyingError:self];

    goto LABEL_6;
  }

LABEL_4:
  selfCopy = self;
LABEL_5:
  v8 = selfCopy;
LABEL_6:

  return v8;
}

+ (void)initialize
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__NSError_BRCAdditions__initialize__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (initialize_onceToken != -1)
  {
    dispatch_once(&initialize_onceToken, block);
  }
}

- (id)brc_cloudKitErrorMessage
{
  userInfo = [self userInfo];
  v3 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBBF70]];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    userInfo2 = [self userInfo];
    v5 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x277CBBF48]];
  }

  return v5;
}

- (id)brc_telemetryReportableErrorWithRecordName:()BRCAdditions
{
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__50;
  v41 = __Block_byref_object_dispose__50;
  selfCopy = self;
  v42 = selfCopy;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__50;
  v35 = __Block_byref_object_dispose__50;
  v36 = 0;
  domain = [selfCopy domain];
  if (![domain isEqualToString:*MEMORY[0x277CBBF50]])
  {
LABEL_5:

    goto LABEL_6;
  }

  code = [selfCopy code];

  if (code == 2)
  {
    userInfo = [selfCopy userInfo];
    domain = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __68__NSError_BRCAdditions__brc_telemetryReportableErrorWithRecordName___block_invoke;
    v30[3] = &unk_278506D30;
    v30[4] = &v37;
    v30[5] = &v31;
    [domain enumerateKeysAndObjectsUsingBlock:v30];
    if (a3)
    {
      *a3 = v32[5];
    }

    goto LABEL_5;
  }

LABEL_6:
  userInfo2 = [v38[5] userInfo];
  v9 = *MEMORY[0x277CCA7E8];
  v10 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    userInfo3 = [v38[5] userInfo];
    v13 = [userInfo3 objectForKeyedSubscript:v9];
    v14 = v38[5];
    v38[5] = v13;

    userInfo4 = [v38[5] userInfo];
    v16 = [userInfo4 objectForKeyedSubscript:v9];
    objc_opt_class();
    v17 = objc_opt_isKindOfClass();

    if (v17)
    {
      userInfo5 = [v38[5] userInfo];
      v19 = [userInfo5 objectForKeyedSubscript:v9];
      v20 = v38[5];
      v38[5] = v19;
    }
  }

  v21 = v38[5];
  if (v21 != selfCopy)
  {
    userInfo6 = [v21 userInfo];
    v23 = [userInfo6 mutableCopy];

    if (!v23)
    {
      v23 = objc_opt_new();
    }

    [v23 setObject:selfCopy forKeyedSubscript:@"brc-error-for-errors-chain"];
    v24 = MEMORY[0x277CCA9B8];
    domain2 = [v38[5] domain];
    v26 = [v24 errorWithDomain:domain2 code:objc_msgSend(v38[5] userInfo:{"code"), v23}];
    v27 = v38[5];
    v38[5] = v26;

    v21 = v38[5];
  }

  v28 = v21;
  _Block_object_dispose(&v31, 8);

  _Block_object_dispose(&v37, 8);

  return v28;
}

- (BOOL)brc_isXPCConnectionError
{
  domain = [self domain];
  v3 = [domain isEqualToString:*MEMORY[0x277CCA050]];

  return v3 && ([self code] - 4225) > 0xFFFFFFFFFFFFFF7ELL;
}

- (void)brc_logUnderlineErrorsChain
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [NSError(BRCAdditions) brc_logUnderlineErrorsChain];
  }

  selfCopy = self;
  v5 = [MEMORY[0x277CCAB68] stringWithCapacity:4];
  if (selfCopy)
  {
    v7 = *MEMORY[0x277CCA7E8];
    v8 = *MEMORY[0x277CBC130];
    *&v6 = 138413058;
    v18 = v6;
    while (1)
    {
      userInfo = [selfCopy userInfo];
      v10 = [userInfo objectForKeyedSubscript:v7];
      if (v10)
      {
        v11 = v10;

        selfCopy = v11;
      }

      else
      {
        userInfo2 = [selfCopy userInfo];
        v13 = [userInfo2 objectForKeyedSubscript:v8];

        selfCopy = v13;
        if (!v13)
        {
          break;
        }
      }

      [v5 appendString:@"  "];
      v14 = brc_bread_crumbs();
      v15 = brc_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        userInfo3 = [selfCopy userInfo];
        *buf = v18;
        v20 = v5;
        v21 = 2112;
        v22 = selfCopy;
        v23 = 2112;
        v24 = userInfo3;
        v25 = 2112;
        v26 = v14;
        _os_log_debug_impl(&dword_223E7A000, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] %@┗>: %@ userInfo: %@%@", buf, 0x2Au);
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)brc_isPostponeUploadError
{
  domain = [self domain];
  if ([domain isEqualToString:*MEMORY[0x277CFABD0]])
  {
    v3 = [self code] == 140;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)brc_isNetworkUnreachableDueToCellularError
{
  domain = [self domain];
  if ([domain isEqualToString:*MEMORY[0x277CFABD0]])
  {
    v3 = [self code] == 152 || objc_msgSend(self, "code") == 163;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)brc_isNetworkUnreachableError
{
  domain = [self domain];
  if ([domain isEqualToString:*MEMORY[0x277CFABD0]])
  {
    v3 = [self code] == 154;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_getErrorsChainWithErrorsCount:()BRCAdditions
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  ++*a3;
  domain = [self domain];
  [v5 setObject:domain forKeyedSubscript:@"D"];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(self, "code")}];
  [v5 setObject:v7 forKeyedSubscript:@"C"];

  userInfo = [self userInfo];
  v9 = *MEMORY[0x277CCA7E8];
  v10 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    userInfo2 = [self userInfo];
    v13 = [userInfo2 objectForKeyedSubscript:v9];
    v14 = [v13 _getErrorsChainWithErrorsCount:a3];
    [v5 setObject:v14 forKeyedSubscript:@"UE"];
  }

  userInfo3 = [self userInfo];
  v16 = *MEMORY[0x277CCA578];
  v17 = [userInfo3 objectForKeyedSubscript:*MEMORY[0x277CCA578]];
  objc_opt_class();
  v18 = objc_opt_isKindOfClass();

  if (v18)
  {
    v19 = objc_opt_new();
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    userInfo4 = [self userInfo];
    v21 = [userInfo4 objectForKeyedSubscript:v16];

    v22 = [v21 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v30;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v30 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = [*(*(&v29 + 1) + 8 * i) _getErrorsChainWithErrorsCount:a3];
          [v19 addObject:v26];
        }

        v23 = [v21 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v23);
    }

    if ([v19 count])
    {
      [v5 setObject:v19 forKeyedSubscript:@"UES"];
    }
  }

  v27 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)brc_getErrorsChainJSONStringWithErrorsCount:()BRCAdditions error:
{
  v23 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    [NSError(BRCAdditions) brc_getErrorsChainJSONStringWithErrorsCount:error:];
  }

  *a3 = 0;
  v7 = [self _getErrorsChainWithErrorsCount:a3];
  v16 = 0;
  v8 = [MEMORY[0x277CCAAA0] jsonStringFromDictionary:v7 options:0 error:&v16];
  v9 = v16;
  if (v9)
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, 0x90u))
    {
      *buf = 138412802;
      v18 = v7;
      v19 = 2112;
      v20 = v9;
      v21 = 2112;
      v22 = v10;
      _os_log_error_impl(&dword_223E7A000, v11, 0x90u, "[ERROR] failed to convert dictionary to json.\n%@\n%@%@", buf, 0x20u);
    }

    if (a4)
    {
      v12 = v9;
      v13 = 0;
      *a4 = v9;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = v8;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)brc_obfuscate
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  userInfo = [self userInfo];
  v4 = *MEMORY[0x277CCA7E8];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      brc_obfuscate = [v5 brc_obfuscate];
      [v2 setObject:brc_obfuscate forKeyedSubscript:v4];
    }
  }

  v7 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  userInfo2 = [self userInfo];
  v23 = *MEMORY[0x277CCA578];
  v9 = [userInfo2 objectForKeyedSubscript:?];

  v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        v14 = v5;
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v5 = *(*(&v24 + 1) + 8 * i);

        if (v5)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            brc_obfuscate2 = [v5 brc_obfuscate];
            [v7 addObject:brc_obfuscate2];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }

  if ([v7 count])
  {
    [v2 setObject:v7 forKeyedSubscript:v23];
  }

  v16 = MEMORY[0x277CCA9B8];
  domain = [self domain];
  code = [self code];
  if ([v2 count])
  {
    v19 = v2;
  }

  else
  {
    v19 = 0;
  }

  v20 = [v16 errorWithDomain:domain code:code userInfo:v19];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

@end