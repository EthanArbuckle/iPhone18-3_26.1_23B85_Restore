@interface SearchUIKeyValueDataCardSectionView
- (id)convertSFKeyValueData:(id)a3;
- (id)setupContentView;
- (void)updateWithRowModel:(id)a3;
@end

@implementation SearchUIKeyValueDataCardSectionView

- (id)setupContentView
{
  v2 = objc_opt_new();

  return v2;
}

- (id)convertSFKeyValueData:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = MEMORY[0x1E69D9190];
        v12 = [v10 key];
        v13 = [v10 value];
        v14 = [v11 tupleWithKey:v12 value:v13];

        [v4 addObject:v14];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)updateWithRowModel:(id)a3
{
  v4 = a3;
  v5 = [v4 cardSection];
  v16.receiver = self;
  v16.super_class = SearchUIKeyValueDataCardSectionView;
  [(SearchUICardSectionView *)&v16 updateWithRowModel:v4];

  v6 = [v5 data];
  v7 = [(SearchUIKeyValueDataCardSectionView *)self convertSFKeyValueData:v6];

  v8 = [(SearchUICardSectionView *)self contentView];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__SearchUIKeyValueDataCardSectionView_updateWithRowModel___block_invoke;
  v12[3] = &unk_1E85B26A8;
  v13 = v5;
  v14 = v7;
  v15 = v8;
  v9 = v8;
  v10 = v7;
  v11 = v5;
  [v9 performBatchUpdates:v12];
}

void __58__SearchUIKeyValueDataCardSectionView_updateWithRowModel___block_invoke(id *a1)
{
  v2 = [a1[4] accessoryImage];
  if (v2)
  {
  }

  else if ([a1[5] count] >= 5)
  {
    v3 = vcvtad_u64_f64(vcvtd_n_f64_u64([a1[5] count], 1uLL));
    v4 = [a1[5] subarrayWithRange:{0, v3}];
    [a1[6] setLeadingTuples:v4];

    v5 = [a1[5] subarrayWithRange:{v3, objc_msgSend(a1[5], "count") - v3}];
    [a1[6] setTrailingTuples:v5];

    goto LABEL_6;
  }

  [a1[6] setLeadingTuples:a1[5]];
LABEL_6:
  v7 = [a1[4] accessoryImage];
  v6 = [SearchUITLKImageConverter imageForSFImage:v7];
  [a1[6] setImage:v6];
}

@end