@interface _UIImageContentProvider
+ (void)providerWithDrawingProvider:(void *)a3 CGImageProvider:(void *)a4 rbSymbolConfigurationProvider:;
- (void)CGImageProvider;
- (void)providerWithCGImageProvider:(uint64_t)a1;
- (void)rbSymbolConfigurationProvider;
@end

@implementation _UIImageContentProvider

- (void)CGImageProvider
{
  if (a1)
  {
    if (a1[1])
    {
      v2 = a1[1];
    }

    else
    {
      v2 = &__block_literal_global_702;
    }

    a1 = _Block_copy(v2);
    v1 = vars8;
  }

  return a1;
}

- (void)rbSymbolConfigurationProvider
{
  if (a1)
  {
    if (a1[2])
    {
      v2 = a1[2];
    }

    else
    {
      v2 = &__block_literal_global_43_2;
    }

    a1 = _Block_copy(v2);
    v1 = vars8;
  }

  return a1;
}

+ (void)providerWithDrawingProvider:(void *)a3 CGImageProvider:(void *)a4 rbSymbolConfigurationProvider:
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  objc_opt_self();
  v9 = objc_opt_new();
  v10 = _Block_copy(v8);

  v11 = v9[3];
  v9[3] = v10;

  v12 = _Block_copy(v7);
  v13 = v9[1];
  v9[1] = v12;

  v14 = _Block_copy(v6);
  v15 = v9[2];
  v9[2] = v14;

  return v9;
}

- (void)providerWithCGImageProvider:(uint64_t)a1
{
  if (a1)
  {
    v3 = a2;
    v4 = objc_opt_new();
    v5 = _Block_copy(*(a1 + 24));
    v6 = v4[3];
    v4[3] = v5;

    v7 = _Block_copy(v3);
    v8 = v4[1];
    v4[1] = v7;

    v9 = _Block_copy(*(a1 + 16));
    v10 = v4[2];
    v4[2] = v9;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end