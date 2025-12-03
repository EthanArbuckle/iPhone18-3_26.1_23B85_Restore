@interface _UIImageContentProvider
+ (void)providerWithDrawingProvider:(void *)provider CGImageProvider:(void *)imageProvider rbSymbolConfigurationProvider:;
- (void)CGImageProvider;
- (void)providerWithCGImageProvider:(uint64_t)provider;
- (void)rbSymbolConfigurationProvider;
@end

@implementation _UIImageContentProvider

- (void)CGImageProvider
{
  if (self)
  {
    if (self[1])
    {
      v2 = self[1];
    }

    else
    {
      v2 = &__block_literal_global_702;
    }

    self = _Block_copy(v2);
    v1 = vars8;
  }

  return self;
}

- (void)rbSymbolConfigurationProvider
{
  if (self)
  {
    if (self[2])
    {
      v2 = self[2];
    }

    else
    {
      v2 = &__block_literal_global_43_2;
    }

    self = _Block_copy(v2);
    v1 = vars8;
  }

  return self;
}

+ (void)providerWithDrawingProvider:(void *)provider CGImageProvider:(void *)imageProvider rbSymbolConfigurationProvider:
{
  imageProviderCopy = imageProvider;
  providerCopy = provider;
  v8 = a2;
  objc_opt_self();
  v9 = objc_opt_new();
  v10 = _Block_copy(v8);

  v11 = v9[3];
  v9[3] = v10;

  v12 = _Block_copy(providerCopy);
  v13 = v9[1];
  v9[1] = v12;

  v14 = _Block_copy(imageProviderCopy);
  v15 = v9[2];
  v9[2] = v14;

  return v9;
}

- (void)providerWithCGImageProvider:(uint64_t)provider
{
  if (provider)
  {
    v3 = a2;
    v4 = objc_opt_new();
    v5 = _Block_copy(*(provider + 24));
    v6 = v4[3];
    v4[3] = v5;

    v7 = _Block_copy(v3);
    v8 = v4[1];
    v4[1] = v7;

    v9 = _Block_copy(*(provider + 16));
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