@interface SearchUIAvatarImage
+ (id)avatarImageRenderer;
- (SearchUIAvatarImage)initWithContactImage:(id)a3;
- (SearchUIAvatarImage)initWithMonogramImage:(id)a3;
- (int)defaultCornerRoundingStyle;
- (void)loadImageWithScale:(double)a3 isDarkStyle:(BOOL)a4 completionHandler:(id)a5;
- (void)setDefaultSizeIfNecessary;
@end

@implementation SearchUIAvatarImage

- (SearchUIAvatarImage)initWithMonogramImage:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SearchUIAvatarImage;
  v5 = [(SearchUIImage *)&v8 initWithSFImage:v4];
  if (v5)
  {
    v6 = [v4 monogramLetters];
    [(SearchUIAvatarImage *)v5 setLetters:v6];

    [(SearchUIImage *)v5 setSupportsFastPathShadow:1];
    [(SearchUIAvatarImage *)v5 setDefaultSizeIfNecessary];
  }

  return v5;
}

- (SearchUIAvatarImage)initWithContactImage:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SearchUIAvatarImage;
  v5 = [(SearchUIImage *)&v14 initWithSFImage:v4];
  if (v5)
  {
    v6 = [v4 contactIdentifiers];
    [(SearchUIAvatarImage *)v5 setContactIdentifiers:v6];

    v7 = [v4 contactIdentifiers];
    -[SearchUIImage setSupportsFastPathShadow:](v5, "setSupportsFastPathShadow:", [v7 count] == 1);

    [(SearchUIAvatarImage *)v5 setDefaultSizeIfNecessary];
    v8 = [v4 appIconBadgeBundleIdentifier];
    if (v8)
    {
      v9 = v8;
      v10 = [v4 badgingImage];

      if (!v10)
      {
        v11 = objc_opt_new();
        v12 = [v4 appIconBadgeBundleIdentifier];
        [v11 setBundleIdentifier:v12];

        [(SearchUIAvatarImage *)v5 setBadgingImage:v11];
      }
    }
  }

  return v5;
}

- (int)defaultCornerRoundingStyle
{
  v2 = [(SearchUIAvatarImage *)self contactIdentifiers];
  if ([v2 count] > 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 4;
  }

  return v3;
}

+ (id)avatarImageRenderer
{
  if (avatarImageRenderer_onceToken != -1)
  {
    +[SearchUIAvatarImage avatarImageRenderer];
  }

  v3 = avatarImageRenderer_avatarImageRenderer;

  return v3;
}

void __42__SearchUIAvatarImage_avatarImageRenderer__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695D098]);
  v1 = MEMORY[0x1E695D0A8];
  v6 = +[SearchUIContactCache sharedCache];
  v2 = [v6 contactStore];
  v3 = [v1 settingsWithContactStore:v2];
  v4 = [v0 initWithSettings:v3];
  v5 = avatarImageRenderer_avatarImageRenderer;
  avatarImageRenderer_avatarImageRenderer = v4;
}

- (void)setDefaultSizeIfNecessary
{
  [(SearchUIImage *)self size];
  if (v4 == *MEMORY[0x1E695F060] && v3 == *(MEMORY[0x1E695F060] + 8))
  {
    [MEMORY[0x1E69D91A8] maxThumbnailSize];

    [(SearchUIAvatarImage *)self setSize:v6, v6];
  }
}

- (void)loadImageWithScale:(double)a3 isDarkStyle:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = [MEMORY[0x1E69D91A8] isLTR] ^ 1;
  [(SearchUIImage *)self size];
  v11 = v10;
  v13 = v12;
  v14 = [(SearchUIAvatarImage *)self letters];
  v15 = [(SearchUIAvatarImage *)self contactIdentifiers];
  v16 = [(SearchUIAvatarImage *)self requiresImageDataToLoad];
  objc_initWeak(&location, self);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __72__SearchUIAvatarImage_loadImageWithScale_isDarkStyle_completionHandler___block_invoke;
  v20[3] = &unk_1E85B3D40;
  v24[1] = v11;
  v24[2] = v13;
  v24[3] = *&a3;
  v25 = v9;
  v26 = a4;
  v17 = v14;
  v21 = v17;
  objc_copyWeak(v24, &location);
  v18 = v8;
  v23 = v18;
  v19 = v15;
  v22 = v19;
  v27 = v16;
  [SearchUIUtilities dispatchAsyncIfNecessary:v20];

  objc_destroyWeak(v24);
  objc_destroyWeak(&location);
}

void __72__SearchUIAvatarImage_loadImageWithScale_isDarkStyle_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695D0B0] scopeWithPointSize:*(a1 + 88) scale:0 rightToLeft:*(a1 + 89) style:*(a1 + 64) backgroundStyle:{*(a1 + 72), *(a1 + 80)}];
  if ([*(a1 + 32) length])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v4 = [objc_opt_class() avatarImageRenderer];
    v5 = *(a1 + 32);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __72__SearchUIAvatarImage_loadImageWithScale_isDarkStyle_completionHandler___block_invoke_2;
    v13[3] = &unk_1E85B3CC8;
    v14 = *(a1 + 48);
    v6 = [v4 renderMonogramForString:v5 scope:v2 imageHandler:v13];
    [WeakRetained setRenderingToken:v6];
  }

  else
  {
    v7 = +[SearchUIContactCache sharedCache];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __72__SearchUIAvatarImage_loadImageWithScale_isDarkStyle_completionHandler___block_invoke_3;
    v9[3] = &unk_1E85B3D18;
    v12 = *(a1 + 90);
    v8 = *(a1 + 40);
    v11 = *(a1 + 48);
    v10 = v2;
    [v7 fetchContactsForIdentifiers:v8 completionHandler:v9];

    WeakRetained = v11;
  }
}

void __72__SearchUIAvatarImage_loadImageWithScale_isDarkStyle_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 48) == 1 && [v3 count] <= 1 && (objc_msgSend(v4, "firstObject"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "imageDataAvailable"), v5, !v6))
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __72__SearchUIAvatarImage_loadImageWithScale_isDarkStyle_completionHandler___block_invoke_4;
    v7[3] = &unk_1E85B3CF0;
    v10 = *(a1 + 40);
    v8 = v4;
    v9 = *(a1 + 32);
    [SearchUIUtilities dispatchAsyncIfNecessary:v7];
  }
}

void __72__SearchUIAvatarImage_loadImageWithScale_isDarkStyle_completionHandler___block_invoke_4(void *a1)
{
  v2 = a1[6];
  v4 = +[SearchUIAvatarImage avatarImageRenderer];
  v3 = [v4 avatarImageForContacts:a1[4] scope:a1[5]];
  (*(v2 + 16))(v2, v3, 1);
}

@end