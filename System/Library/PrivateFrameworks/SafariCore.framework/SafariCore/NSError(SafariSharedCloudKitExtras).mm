@interface NSError(SafariSharedCloudKitExtras)
- (id)safari_errorByAddingCloudKitPrivacyPreservingUserInfoForItemID:()SafariSharedCloudKitExtras;
- (id)safari_errorByAddingRequestUUIDInPrivacyPreservingUserInfo;
- (uint64_t)_safari_isOrContainsCloudKitErrorOfCodes:()SafariSharedCloudKitExtras checkInternalErrorCode:;
- (uint64_t)safari_containsCloudKitMissingZoneErrorForRecordZoneID:()SafariSharedCloudKitExtras;
- (uint64_t)safari_errorOrAnyPartialErrorHasCloudKitInternalErrorCode:()SafariSharedCloudKitExtras;
- (uint64_t)safari_hasOrContainsErrorWithCloudKitErrorCode:()SafariSharedCloudKitExtras;
- (uint64_t)safari_isCloudKitBatchTooLargeError;
- (uint64_t)safari_isCloudKitMissingZoneError;
- (uint64_t)safari_isCloudKitNonExistentRecordError;
- (uint64_t)safari_isInCloudKitErrorDomain;
- (uint64_t)safari_isUnrecoverableCloudKitError;
- (void)_safari_enumerateCloudKitErrorsWithBlock:()SafariSharedCloudKitExtras;
@end

@implementation NSError(SafariSharedCloudKitExtras)

- (void)_safari_enumerateCloudKitErrorsWithBlock:()SafariSharedCloudKitExtras
{
  v4 = a3;
  domain = [self domain];
  v6 = [domain isEqualToString:*MEMORY[0x1E695B740]];

  if (v6)
  {
    v13 = 0;
    v4[2](v4, self, &v13);
    if ((v13 & 1) == 0 && [self code] == 2)
    {
      userInfo = [self userInfo];
      v8 = [userInfo safari_dictionaryForKey:*MEMORY[0x1E695B798]];

      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __80__NSError_SafariSharedCloudKitExtras___safari_enumerateCloudKitErrorsWithBlock___block_invoke;
      v10[3] = &unk_1E7CF27A0;
      v11 = v8;
      v12 = v4;
      v9 = v8;
      [v9 enumerateKeysAndObjectsUsingBlock:v10];
    }
  }
}

- (uint64_t)safari_hasOrContainsErrorWithCloudKitErrorCode:()SafariSharedCloudKitExtras
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __86__NSError_SafariSharedCloudKitExtras__safari_hasOrContainsErrorWithCloudKitErrorCode___block_invoke;
  v5[3] = &unk_1E7CF27C8;
  v5[4] = &v6;
  v5[5] = a3;
  [self _safari_enumerateCloudKitErrorsWithBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (uint64_t)safari_errorOrAnyPartialErrorHasCloudKitInternalErrorCode:()SafariSharedCloudKitExtras
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __97__NSError_SafariSharedCloudKitExtras__safari_errorOrAnyPartialErrorHasCloudKitInternalErrorCode___block_invoke;
  v5[3] = &unk_1E7CF27C8;
  v5[4] = &v6;
  v5[5] = a3;
  [self _safari_enumerateCloudKitErrorsWithBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (uint64_t)safari_isInCloudKitErrorDomain
{
  domain = [self domain];
  v2 = [domain isEqualToString:*MEMORY[0x1E695B740]];

  return v2;
}

- (uint64_t)safari_isCloudKitBatchTooLargeError
{
  result = [self safari_isInCloudKitErrorDomain];
  if (result)
  {
    return [self code] == 27;
  }

  return result;
}

- (uint64_t)safari_isCloudKitNonExistentRecordError
{
  result = [self safari_isInCloudKitErrorDomain];
  if (result)
  {
    return [self code] == 11;
  }

  return result;
}

- (uint64_t)safari_isCloudKitMissingZoneError
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = *MEMORY[0x1E695B740];
  v7[0] = &unk_1F308E718;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v3 = [self safari_matchesErrorDomainsAndCodes:v2];

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

- (uint64_t)safari_containsCloudKitMissingZoneErrorForRecordZoneID:()SafariSharedCloudKitExtras
{
  v4 = a3;
  userInfo = [self userInfo];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E695B798]];

  v7 = [v6 objectForKeyedSubscript:v4];
  safari_isCloudKitMissingZoneError = [v7 safari_isCloudKitMissingZoneError];

  if (safari_isCloudKitMissingZoneError)
  {
    v9 = 1;
  }

  else
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __94__NSError_SafariSharedCloudKitExtras__safari_containsCloudKitMissingZoneErrorForRecordZoneID___block_invoke;
    v11[3] = &unk_1E7CF27F0;
    v12 = v4;
    v13 = &v14;
    [v6 enumerateKeysAndObjectsUsingBlock:v11];
    v9 = *(v15 + 24);

    _Block_object_dispose(&v14, 8);
  }

  return v9 & 1;
}

- (uint64_t)_safari_isOrContainsCloudKitErrorOfCodes:()SafariSharedCloudKitExtras checkInternalErrorCode:
{
  v6 = a3;
  if ([self safari_isInCloudKitErrorDomain])
  {
    v7 = [MEMORY[0x1E695DFD8] setWithArray:v6];
    code = [self code];
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:code];
    v10 = [v7 containsObject:v9];

    if (v10)
    {
      v11 = 1;
    }

    else if (code == 2)
    {
      userInfo = [self userInfo];
      v13 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E695B798]];

      if ([v13 count])
      {
        v19 = 0;
        v20 = &v19;
        v21 = 0x2020000000;
        v22 = 0;
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __103__NSError_SafariSharedCloudKitExtras___safari_isOrContainsCloudKitErrorOfCodes_checkInternalErrorCode___block_invoke;
        v15[3] = &unk_1E7CF2818;
        v16 = v7;
        v17 = &v19;
        v18 = a4;
        [v13 enumerateKeysAndObjectsUsingBlock:v15];
        v11 = *(v20 + 24);

        _Block_object_dispose(&v19, 8);
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

- (id)safari_errorByAddingCloudKitPrivacyPreservingUserInfoForItemID:()SafariSharedCloudKitExtras
{
  v4 = a3;
  domain = [self domain];
  v6 = *MEMORY[0x1E695B740];
  v7 = [domain isEqualToString:*MEMORY[0x1E695B740]];

  if ((v7 & 1) == 0)
  {
    selfCopy = self;
    goto LABEL_16;
  }

  if (v4)
  {
    v8 = [MEMORY[0x1E695BA20] itemErrorFromError:self forID:v4];
    v9 = v8;
    if (v8 && [v8 code] != 2)
    {
      selfCopy2 = v9;
      goto LABEL_12;
    }
  }

  userInfo = [self userInfo];
  v9 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E695B798]];

  if ([v9 count])
  {
    userInfo2 = [self userInfo];
    v12 = [userInfo2 mutableCopy];

    array = [MEMORY[0x1E695DF70] array];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __102__NSError_SafariSharedCloudKitExtras__safari_errorByAddingCloudKitPrivacyPreservingUserInfoForItemID___block_invoke;
    v21[3] = &unk_1E7CF2840;
    v14 = array;
    v22 = v14;
    [v9 enumerateKeysAndObjectsUsingBlock:v21];
    if ([v14 count])
    {
      v15 = [v14 componentsJoinedByString:@" "];;
    }

    else
    {
      v15 = @"None";
    }

    v18 = [v12 objectForKeyedSubscript:*MEMORY[0x1E695B810]];
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request UUID: %@ Partial errors: %@", v18, v15];;
    [v12 setObject:v19 forKeyedSubscript:@"WBSPrivacyPreservingDescription"];

    selfCopy = [MEMORY[0x1E696ABC0] errorWithDomain:v6 code:objc_msgSend(self userInfo:{"code"), v12}];

    goto LABEL_15;
  }

  selfCopy2 = self;
LABEL_12:
  selfCopy = [selfCopy2 safari_errorByAddingRequestUUIDInPrivacyPreservingUserInfo];
LABEL_15:

LABEL_16:

  return selfCopy;
}

- (id)safari_errorByAddingRequestUUIDInPrivacyPreservingUserInfo
{
  domain = [self domain];
  v3 = *MEMORY[0x1E695B740];
  v4 = [domain isEqualToString:*MEMORY[0x1E695B740]];

  if (v4)
  {
    userInfo = [self userInfo];
    v6 = [userInfo mutableCopy];

    v7 = MEMORY[0x1E696AEC0];
    v8 = [v6 objectForKeyedSubscript:*MEMORY[0x1E695B810]];
    v9 = [v7 stringWithFormat:@"Request UUID: %@", v8];
    [v6 setObject:v9 forKeyedSubscript:@"WBSPrivacyPreservingDescription"];

    selfCopy = [MEMORY[0x1E696ABC0] errorWithDomain:v3 code:objc_msgSend(self userInfo:{"code"), v6}];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (uint64_t)safari_isUnrecoverableCloudKitError
{
  result = [self safari_isInCloudKitErrorDomain];
  if (result)
  {
    code = [self code];
    result = 1;
    if (code <= 0x23)
    {
      if (((1 << code) & 0xBE31FB722) != 0)
      {
        return result;
      }

      if (((1 << code) & 0x41CE048DCLL) != 0)
      {
        return 0;
      }
    }

    v4 = code - 110;
    if (v4 > 0x1E || ((1 << v4) & 0x40307C07) == 0)
    {
      return 0;
    }
  }

  return result;
}

@end