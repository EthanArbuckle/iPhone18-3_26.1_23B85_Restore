@interface SearchUIKeyValueDataCardSectionView
- (id)convertSFKeyValueData:(id)data;
- (id)setupContentView;
- (void)updateWithRowModel:(id)model;
@end

@implementation SearchUIKeyValueDataCardSectionView

- (id)setupContentView
{
  v2 = objc_opt_new();

  return v2;
}

- (id)convertSFKeyValueData:(id)data
{
  v21 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v4 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = dataCopy;
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
        value = [v10 value];
        v14 = [v11 tupleWithKey:v12 value:value];

        [v4 addObject:v14];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)updateWithRowModel:(id)model
{
  modelCopy = model;
  cardSection = [modelCopy cardSection];
  v16.receiver = self;
  v16.super_class = SearchUIKeyValueDataCardSectionView;
  [(SearchUICardSectionView *)&v16 updateWithRowModel:modelCopy];

  data = [cardSection data];
  v7 = [(SearchUIKeyValueDataCardSectionView *)self convertSFKeyValueData:data];

  contentView = [(SearchUICardSectionView *)self contentView];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__SearchUIKeyValueDataCardSectionView_updateWithRowModel___block_invoke;
  v12[3] = &unk_1E85B26A8;
  v13 = cardSection;
  v14 = v7;
  v15 = contentView;
  v9 = contentView;
  v10 = v7;
  v11 = cardSection;
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