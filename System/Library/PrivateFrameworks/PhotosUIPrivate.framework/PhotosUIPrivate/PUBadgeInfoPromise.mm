@interface PUBadgeInfoPromise
- (BOOL)isEqual:(id)equal;
- (PUBadgeInfoPromise)badgeInfoPromiseWithAdjustments:(id)adjustments;
- (PUBadgeInfoPromise)init;
- (PUBadgeInfoPromise)initWithBadgeInfo:(PXAssetBadgeInfo *)info;
- (PUBadgeInfoPromise)initWithBadgeInfoProvider:(id)provider countProvider:(id)countProvider;
- (PXAssetBadgeInfo)badgeInfo;
@end

@implementation PUBadgeInfoPromise

- (PUBadgeInfoPromise)badgeInfoPromiseWithAdjustments:(id)adjustments
{
  adjustmentsCopy = adjustments;
  if (!adjustmentsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUBadgeInfoPromise.m" lineNumber:86 description:{@"Invalid parameter not satisfying: %@", @"adjuster != nil"}];
  }

  v6 = [PUBadgeInfoPromise alloc];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__PUBadgeInfoPromise_badgeInfoPromiseWithAdjustments___block_invoke;
  v12[3] = &unk_1E7B75A08;
  v12[4] = self;
  v13 = adjustmentsCopy;
  countProvider = self->_countProvider;
  v8 = adjustmentsCopy;
  v9 = [(PUBadgeInfoPromise *)v6 initWithBadgeInfoProvider:v12 countProvider:countProvider];

  return v9;
}

uint64_t __54__PUBadgeInfoPromise_badgeInfoPromiseWithAdjustments___block_invoke@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  v6 = 0uLL;
  v12 = 0u;
  v13 = 0u;
  v7 = *(a1 + 32);
  if (v7)
  {
    [v7 badgeInfo];
    v6 = 0uLL;
  }

  *a4 = v6;
  a4[1] = v6;
  v8 = *(a1 + 40);
  v9 = *(v8 + 16);
  v11[0] = v12;
  v11[1] = v13;
  return v9(v8, v11, a2, a3);
}

- (PXAssetBadgeInfo)badgeInfo
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  badgeProvider = selfCopy->_badgeProvider;
  if (badgeProvider)
  {
    badgeProvider[2](v13);
    v6 = v13[1];
    *&selfCopy->_badgeInfo.badges = v13[0];
    *&selfCopy->_badgeInfo.count = v6;
    v7 = selfCopy->_badgeProvider;
    selfCopy->_badgeProvider = 0;
  }

  countProvider = selfCopy->_countProvider;
  if (countProvider)
  {
    v9 = _Block_copy(countProvider);
    v10 = selfCopy->_countProvider;
    selfCopy->_countProvider = 0;

    selfCopy->_badgeInfo.count = v9[2](v9);
  }

  objc_sync_exit(selfCopy);

  v12 = *&selfCopy->_badgeInfo.count;
  *&retstr->badges = *&selfCopy->_badgeInfo.badges;
  *&retstr->count = v12;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if (self->_badgeInfo.badges == v5->_badgeInfo.badges)
      {
        if (PXAssetBadgeInfoRequiresCountForBadges())
        {
          [(PUBadgeInfoPromise *)self badgeInfo];
          [(PUBadgeInfoPromise *)v5 badgeInfo];
        }

        v6 = PXAssetBadgeInfoEqualToBadgeInfo();
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (PUBadgeInfoPromise)initWithBadgeInfoProvider:(id)provider countProvider:(id)countProvider
{
  providerCopy = provider;
  countProviderCopy = countProvider;
  v16.receiver = self;
  v16.super_class = PUBadgeInfoPromise;
  v9 = [(PUBadgeInfoPromise *)&v16 init];
  if (v9)
  {
    if (!providerCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v9 file:@"PUBadgeInfoPromise.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"badgeProvider != nil"}];
    }

    v10 = _Block_copy(providerCopy);
    badgeProvider = v9->_badgeProvider;
    v9->_badgeProvider = v10;

    v12 = _Block_copy(countProviderCopy);
    countProvider = v9->_countProvider;
    v9->_countProvider = v12;
  }

  return v9;
}

- (PUBadgeInfoPromise)initWithBadgeInfo:(PXAssetBadgeInfo *)info
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__PUBadgeInfoPromise_initWithBadgeInfo___block_invoke;
  v5[3] = &__block_descriptor_64_e27__PXAssetBadgeInfo_Qdqq_8__0l;
  v3 = *&info->count;
  v6 = *&info->badges;
  v7 = v3;
  return [(PUBadgeInfoPromise *)self initWithBadgeInfoProvider:v5 countProvider:0];
}

__n128 __40__PUBadgeInfoPromise_initWithBadgeInfo___block_invoke@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 32);
  v3 = *(a1 + 48);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

- (PUBadgeInfoPromise)init
{
  v2 = *(MEMORY[0x1E69C4840] + 16);
  v4[0] = *MEMORY[0x1E69C4840];
  v4[1] = v2;
  return [(PUBadgeInfoPromise *)self initWithBadgeInfo:v4];
}

@end