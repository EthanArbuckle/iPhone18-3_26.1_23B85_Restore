@interface UIButtonUpdateStringAttributes
@end

@implementation UIButtonUpdateStringAttributes

void ___UIButtonUpdateStringAttributes_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = *off_1E70EC918;
  v19 = v7;
  v9 = [v7 objectForKeyedSubscript:*off_1E70EC918];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:*(a1 + 32)];
  }

  else
  {
    v11 = 0;
  }

  v12 = _UIButtonCombineDictionaries(*(a1 + 40), v19);
  v13 = v12;
  if (v10 != v11)
  {
    v14 = [v12 mutableCopy];
    [v14 setObject:v11 forKeyedSubscript:v8];

    v13 = v14;
  }

  v15 = *(a1 + 56);
  if (v15)
  {
    v16 = *(a1 + 40);
    v17 = (*(v15 + 16))(v15, v13);
    v18 = _UIButtonCombineDictionaries(v16, v17);

    v13 = v18;
  }

  [*(a1 + 48) setAttributes:v13 range:{a3, a4}];
}

void ___UIButtonUpdateStringAttributes_block_invoke_0(uint64_t a1, void *a2)
{
  v3 = _UIButtonCombineDictionaries(*(a1 + 32), a2);
  v4 = *(a1 + 48);
  if (v4)
  {
    v10 = v3;
    v5 = (*(v4 + 16))(v4, v3);

    v3 = v5;
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    v7 = *(a1 + 32);
    v11 = v3;
    v8 = (*(v6 + 16))(v6, v3);
    v9 = _UIButtonCombineDictionaries(v7, v8);

    v3 = v9;
  }

  v12 = v3;
  [*(a1 + 40) setAttributes:? range:?];
}

@end