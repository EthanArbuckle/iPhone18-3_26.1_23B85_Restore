@interface SXComponentLayoutParentWidthModifier
- (void)modifyDOM:(id)a3 context:(id)a4;
@end

@implementation SXComponentLayoutParentWidthModifier

- (void)modifyDOM:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = [a4 specVersion];
  v7 = [@"1.6" componentsSeparatedByString:@"."];
  v8 = [v6 componentsSeparatedByString:@"."];
  v9 = [v7 count];
  if (!([v8 count] | v9))
  {

LABEL_15:
    v17 = [v5 componentLayouts];
    v18 = [v17 copy];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __58__SXComponentLayoutParentWidthModifier_modifyDOM_context___block_invoke;
    v19[3] = &unk_1E84FFA60;
    v20 = v5;
    [v18 enumerateKeysAndObjectsUsingBlock:v19];

    goto LABEL_16;
  }

  v10 = 0;
  do
  {
    v11 = @"0";
    if (v10 < [v7 count])
    {
      v11 = [v7 objectAtIndex:v10];
    }

    v12 = @"0";
    if (v10 < [v8 count])
    {
      v12 = [v8 objectAtIndex:v10];
    }

    v13 = [(__CFString *)v11 compare:v12 options:64];

    if (v13)
    {
      break;
    }

    ++v10;
    v14 = [v7 count];
    v15 = [v8 count];
    v16 = v14 <= v15 ? v15 : v14;
  }

  while (v10 < v16);

  if (v13 != 1)
  {
    goto LABEL_15;
  }

LABEL_16:
}

void __58__SXComponentLayoutParentWidthModifier_modifyDOM_context___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = a2;
  v5 = a3;
  [v5 minimumWidth];
  v7 = v6;
  [v5 maximumWidth];
  v9 = v8;
  if (v7 == 7 || v8 == 7)
  {
    v10 = [v5 JSONRepresentation];
    v11 = [v10 mutableCopy];

    if (v7 == 7)
    {
      v12 = [v5 minimumWidth];
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%f%@", v12, @"pw"];
      [v11 setObject:v13 forKey:@"minimumWidth"];
    }

    if (v9 == 7)
    {
      v14 = [v5 maximumWidth];
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%f%@", v14, @"pw"];
      [v11 setObject:v15 forKey:@"maximumWidth"];
    }

    v16 = [SXComponentLayout alloc];
    v17 = [v5 specificationVersion];
    v18 = [(SXJSONObject *)v16 initWithJSONObject:v11 andVersion:v17];

    v19 = [*(a1 + 32) componentLayouts];
    [v19 setObject:v18 forKey:v20];
  }
}

@end