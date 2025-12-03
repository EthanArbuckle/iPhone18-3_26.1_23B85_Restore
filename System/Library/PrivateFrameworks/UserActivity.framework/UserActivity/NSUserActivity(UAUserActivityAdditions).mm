@interface NSUserActivity(UAUserActivityAdditions)
+ (uint64_t)_registerAsProxyForApplication:()UAUserActivityAdditions options:completionBlock:;
- (double)_madeCurrentInterval;
- (id)_madeCurrentDate;
- (id)_madeCurrentEndDate;
- (id)_madeInitiallyCurrentDate;
- (id)_originalUniqueIdentifier;
- (id)_sentToIndexerDate;
- (uint64_t)_beginUserInfoUpdate:()UAUserActivityAdditions;
- (uint64_t)_copyWithNewUUID;
- (uint64_t)_finishUserInfoUpdate;
- (uint64_t)_isUniversalLink;
- (uint64_t)_userInfoChangeCount;
- (void)_forceSave;
- (void)set_universalLink:()UAUserActivityAdditions;
@end

@implementation NSUserActivity(UAUserActivityAdditions)

- (uint64_t)_finishUserInfoUpdate
{
  _internalUserActivity = [self _internalUserActivity];
  v3 = objc_opt_respondsToSelector();

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  _internalUserActivity2 = [self _internalUserActivity];
  finishUserInfoUpdate = [_internalUserActivity2 finishUserInfoUpdate];

  return finishUserInfoUpdate;
}

- (id)_originalUniqueIdentifier
{
  _internalUserActivity = [self _internalUserActivity];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    _internalUserActivity2 = [self _internalUserActivity];
    originalUniqueIdentifier = [_internalUserActivity2 originalUniqueIdentifier];
  }

  else
  {
    originalUniqueIdentifier = 0;
  }

  return originalUniqueIdentifier;
}

- (id)_madeInitiallyCurrentDate
{
  _internalUserActivity = [self _internalUserActivity];
  madeInitiallyCurrentDate = [_internalUserActivity madeInitiallyCurrentDate];

  return madeInitiallyCurrentDate;
}

- (id)_madeCurrentDate
{
  _internalUserActivity = [self _internalUserActivity];
  madeCurrentDate = [_internalUserActivity madeCurrentDate];

  return madeCurrentDate;
}

- (id)_madeCurrentEndDate
{
  _internalUserActivity = [self _internalUserActivity];
  madeCurrentEndDate = [_internalUserActivity madeCurrentEndDate];

  return madeCurrentEndDate;
}

- (id)_sentToIndexerDate
{
  _internalUserActivity = [self _internalUserActivity];
  sentToIndexerDate = [_internalUserActivity sentToIndexerDate];

  return sentToIndexerDate;
}

- (double)_madeCurrentInterval
{
  _internalUserActivity = [self _internalUserActivity];
  [_internalUserActivity madeCurrentInterval];
  v3 = v2;

  return v3;
}

- (uint64_t)_copyWithNewUUID
{
  _internalUserActivity = [self _internalUserActivity];
  v3 = objc_opt_respondsToSelector();

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  _internalUserActivity2 = [self _internalUserActivity];
  v5 = [_internalUserActivity2 copyWithNewUUID:1];

  v6 = [objc_alloc(MEMORY[0x277CCAE58]) initWithInternalUserActivity:v5];
  return v6;
}

- (uint64_t)_userInfoChangeCount
{
  _internalUserActivity = [self _internalUserActivity];
  v3 = objc_opt_respondsToSelector();

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  _internalUserActivity2 = [self _internalUserActivity];
  userInfoChangeCount = [_internalUserActivity2 userInfoChangeCount];

  return userInfoChangeCount;
}

- (uint64_t)_isUniversalLink
{
  _internalUserActivity = [self _internalUserActivity];
  isUniversalLink = [_internalUserActivity isUniversalLink];

  return isUniversalLink;
}

- (void)set_universalLink:()UAUserActivityAdditions
{
  _internalUserActivity = [self _internalUserActivity];
  [_internalUserActivity setUniversalLink:a3];
}

- (uint64_t)_beginUserInfoUpdate:()UAUserActivityAdditions
{
  v4 = a3;
  _internalUserActivity = [self _internalUserActivity];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    _internalUserActivity2 = [self _internalUserActivity];
    v8 = [_internalUserActivity2 beginUserInfoUpdate:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (uint64_t)_registerAsProxyForApplication:()UAUserActivityAdditions options:completionBlock:
{
  v7 = a5;
  v8 = a4;
  v9 = [objc_opt_class() registerAsProxyForApplication:a3 options:v8 completionBlock:v7];

  return v9;
}

- (void)_forceSave
{
  _internalUserActivity = [self _internalUserActivity];
  isInvalidated = [_internalUserActivity isInvalidated];

  if ((isInvalidated & 1) == 0 && [self needsSave])
  {
    v4 = dispatch_group_create();
    dispatch_group_enter(v4);
    _internalUserActivity2 = [self _internalUserActivity];
    isCurrent = [_internalUserActivity2 isCurrent];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __53__NSUserActivity_UAUserActivityAdditions___forceSave__block_invoke;
    v9[3] = &unk_2785C4628;
    v7 = v4;
    v10 = v7;
    v8 = [self doSaveUserActivityWithTimeout:isCurrent isCurrent:v9 withCompletionHandler:1.0e99];

    if (v8)
    {
      dispatch_group_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
    }
  }
}

@end