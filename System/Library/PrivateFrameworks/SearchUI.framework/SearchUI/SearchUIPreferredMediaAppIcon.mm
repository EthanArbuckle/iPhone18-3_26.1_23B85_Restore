@interface SearchUIPreferredMediaAppIcon
- (BOOL)isEqual:(id)a3;
- (SearchUIPreferredMediaAppIcon)initWithMediaMetadata:(id)a3 variant:(unint64_t)a4;
- (unint64_t)hash;
- (void)loadImageWithScale:(double)a3 isDarkStyle:(BOOL)a4 completionHandler:(id)a5;
@end

@implementation SearchUIPreferredMediaAppIcon

- (SearchUIPreferredMediaAppIcon)initWithMediaMetadata:(id)a3 variant:(unint64_t)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = SearchUIPreferredMediaAppIcon;
  v7 = [(SearchUIAppIconImage *)&v10 initWithBundleIdentifier:0 isOnenessApp:0 variant:a4 contentType:0];
  v8 = v7;
  if (v7)
  {
    [(SearchUIPreferredMediaAppIcon *)v7 setMediaMetadata:v6];
  }

  return v8;
}

- (void)loadImageWithScale:(double)a3 isDarkStyle:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = [(SearchUIPreferredMediaAppIcon *)self mediaMetadata];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __82__SearchUIPreferredMediaAppIcon_loadImageWithScale_isDarkStyle_completionHandler___block_invoke;
  v12[3] = &unk_1E85B3EB8;
  v13 = v9;
  v14 = self;
  v16 = a3;
  v17 = a4;
  v15 = v8;
  v10 = v8;
  v11 = v9;
  [SearchUIMediaUtilities predictionForMediaMetadata:v11 completion:v12];
}

void __82__SearchUIPreferredMediaAppIcon_loadImageWithScale_isDarkStyle_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 selectedBundleIdentifier];
  if (v4 && (v5 = v4, [*(a1 + 32) bundleIdentifiersToExclude], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "selectedBundleIdentifier"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "containsObject:", v7), v7, v6, v5, (v8 & 1) == 0))
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __82__SearchUIPreferredMediaAppIcon_loadImageWithScale_isDarkStyle_completionHandler___block_invoke_2;
    v9[3] = &unk_1E85B2E00;
    v9[4] = *(a1 + 40);
    v10 = v3;
    v12 = *(a1 + 56);
    v13 = *(a1 + 64);
    v11 = *(a1 + 48);
    [SearchUIUtilities dispatchMainIfNecessary:v9];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

id __82__SearchUIPreferredMediaAppIcon_loadImageWithScale_isDarkStyle_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 40) selectedBundleIdentifier];
  [*(a1 + 32) setBundleIdentifier:v2];

  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = *(a1 + 48);
  v7.receiver = *(a1 + 32);
  v7.super_class = SearchUIPreferredMediaAppIcon;
  return objc_msgSendSuper2(&v7, sel_loadImageWithScale_isDarkStyle_completionHandler_, v4, v5, v3);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(SearchUIPreferredMediaAppIcon *)self mediaMetadata];
    v6 = [v4 mediaMetadata];
    if ([v5 isEqual:v6])
    {
      v7 = [v4 variant];
      v8 = v7 == [(SearchUIAppIconImage *)self variant];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(SearchUIPreferredMediaAppIcon *)self mediaMetadata];
  v4 = [v3 hash];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[SearchUIAppIconImage variant](self, "variant")}];
  v6 = [v5 hash];

  return v6 ^ v4;
}

@end