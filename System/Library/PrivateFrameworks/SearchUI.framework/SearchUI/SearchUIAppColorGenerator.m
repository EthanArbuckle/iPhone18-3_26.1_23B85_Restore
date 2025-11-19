@interface SearchUIAppColorGenerator
- (void)generateUIColorsIsDark:(BOOL)a3 completionHandler:(id)a4;
@end

@implementation SearchUIAppColorGenerator

- (void)generateUIColorsIsDark:(BOOL)a3 completionHandler:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__SearchUIAppColorGenerator_generateUIColorsIsDark_completionHandler___block_invoke;
  v7[3] = &unk_1E85B2720;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [SearchUIUtilities dispatchAsyncIfNecessary:v7];
}

void __70__SearchUIAppColorGenerator_generateUIColorsIsDark_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sfColor];
  v3 = [v2 applicationBundleIdentifier];

  v4 = objc_opt_new();
  v20 = 0;
  v5 = [v4 colorsForBundleIdentifier:v3 error:&v20];
  v18 = v20;

  v6 = [v5 backgroundGradient];
  v7 = objc_opt_new();
  v8 = [v6 startColor];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 platformColor];
    [v7 addObject:v10];
  }

  v11 = [v6 endColor];
  v12 = v11;
  if (v11)
  {
    v13 = v11 == v9;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    v14 = [v11 platformColor];
    [v7 addObject:v14];
  }

  v15 = [v7 firstObject];
  v16 = [MEMORY[0x1E69DC888] labelColor];
  v17 = [v15 isEqual:v16];

  if (v17)
  {

    v7 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

@end