@interface PUBadgeInfoPromise
- (BOOL)isEqual:(id)a3;
- (PUBadgeInfoPromise)badgeInfoPromiseWithAdjustments:(id)a3;
- (PUBadgeInfoPromise)init;
- (PUBadgeInfoPromise)initWithBadgeInfo:(PXAssetBadgeInfo *)a3;
- (PUBadgeInfoPromise)initWithBadgeInfoProvider:(id)a3 countProvider:(id)a4;
- (PXAssetBadgeInfo)badgeInfo;
@end

@implementation PUBadgeInfoPromise

- (PUBadgeInfoPromise)badgeInfoPromiseWithAdjustments:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PUBadgeInfoPromise.m" lineNumber:86 description:{@"Invalid parameter not satisfying: %@", @"adjuster != nil"}];
  }

  v6 = [PUBadgeInfoPromise alloc];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__PUBadgeInfoPromise_badgeInfoPromiseWithAdjustments___block_invoke;
  v12[3] = &unk_1E7B75A08;
  v12[4] = self;
  v13 = v5;
  countProvider = self->_countProvider;
  v8 = v5;
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
  v4 = self;
  objc_sync_enter(v4);
  badgeProvider = v4->_badgeProvider;
  if (badgeProvider)
  {
    badgeProvider[2](v13);
    v6 = v13[1];
    *&v4->_badgeInfo.badges = v13[0];
    *&v4->_badgeInfo.count = v6;
    v7 = v4->_badgeProvider;
    v4->_badgeProvider = 0;
  }

  countProvider = v4->_countProvider;
  if (countProvider)
  {
    v9 = _Block_copy(countProvider);
    v10 = v4->_countProvider;
    v4->_countProvider = 0;

    v4->_badgeInfo.count = v9[2](v9);
  }

  objc_sync_exit(v4);

  v12 = *&v4->_badgeInfo.count;
  *&retstr->badges = *&v4->_badgeInfo.badges;
  *&retstr->count = v12;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

- (PUBadgeInfoPromise)initWithBadgeInfoProvider:(id)a3 countProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = PUBadgeInfoPromise;
  v9 = [(PUBadgeInfoPromise *)&v16 init];
  if (v9)
  {
    if (!v7)
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      [v15 handleFailureInMethod:a2 object:v9 file:@"PUBadgeInfoPromise.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"badgeProvider != nil"}];
    }

    v10 = _Block_copy(v7);
    badgeProvider = v9->_badgeProvider;
    v9->_badgeProvider = v10;

    v12 = _Block_copy(v8);
    countProvider = v9->_countProvider;
    v9->_countProvider = v12;
  }

  return v9;
}

- (PUBadgeInfoPromise)initWithBadgeInfo:(PXAssetBadgeInfo *)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__PUBadgeInfoPromise_initWithBadgeInfo___block_invoke;
  v5[3] = &__block_descriptor_64_e27__PXAssetBadgeInfo_Qdqq_8__0l;
  v3 = *&a3->count;
  v6 = *&a3->badges;
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