@interface SearchUIImageAccessoryViewController
+ (BOOL)resultIsLegacySiriAction:(id)a3;
+ (BOOL)supportsRowModel:(id)a3;
- (BOOL)containsSymbolImage;
- (id)setupView;
- (void)updateWithRowModel:(id)a3;
@end

@implementation SearchUIImageAccessoryViewController

- (id)setupView
{
  v2 = objc_opt_new();
  v3 = [MEMORY[0x1E69D9138] cachedFontForTextStyle:*MEMORY[0x1E69DDCF8] isBold:0 isMacStyle:{objc_msgSend(MEMORY[0x1E69D9240], "isMacOS")}];
  [v2 setSymbolFont:v3];

  [v2 setProminence:1];

  return v2;
}

- (BOOL)containsSymbolImage
{
  v3 = [(SearchUIAccessoryViewController *)self view];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x1E69D9168];
    v5 = [(SearchUIAccessoryViewController *)self view];
    v6 = [v5 imageView];
    v7 = [v6 image];
    v8 = [v4 imageIsSymbol:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)supportsRowModel:(id)a3
{
  v3 = a3;
  v4 = [v3 trailingThumbnail];
  if (v4)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v6 = objc_opt_class();
    v7 = [v3 identifyingResult];
    if ([v6 resultIsLegacySiriAction:v7])
    {
      v5 = !+[SearchUIUtilities isSpotlightPlusEnabled];
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

+ (BOOL)resultIsLegacySiriAction:(id)a3
{
  v3 = a3;
  if ([SearchUIUtilities resultIsSiriAction:v3])
  {
    v4 = 1;
  }

  else
  {
    v5 = [v3 action];
    v6 = [v5 interactionContentType];
    if ([v6 hasPrefix:*MEMORY[0x1E696E598]])
    {
      v4 = 1;
    }

    else
    {
      v7 = [v3 userActivityRequiredString];
      v4 = v7 != 0;
    }
  }

  return v4;
}

- (void)updateWithRowModel:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = SearchUIImageAccessoryViewController;
  [(SearchUIAccessoryViewController *)&v23 updateWithRowModel:v4];
  if ([v4 useCompactVersionOfUI])
  {
    v5 = 0;
    if ([MEMORY[0x1E69D9240] isMacOS])
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  else
  {
    v6 = 3;
    v5 = 2;
  }

  v7 = [(SearchUIAccessoryViewController *)self view];
  [v7 setSymbolScale:v6];

  v8 = [(SearchUIAccessoryViewController *)self view];
  [v8 setAlignment:v5];

  v9 = [v4 trailingThumbnail];
  if (!v9)
  {
    v10 = objc_opt_class();
    v11 = [v4 identifyingResult];
    LODWORD(v10) = [v10 resultIsLegacySiriAction:v11];

    if (v10)
    {
      v12 = [v4 identifyingResult];
      v13 = [v12 contentType];
      v14 = v13;
      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v16 = [v4 action];
        v15 = [v16 interactionContentType];
      }

      if ([v15 isEqualToString:*MEMORY[0x1E696E5A8]])
      {
        v17 = @"play";
      }

      else if ([v15 isEqualToString:*MEMORY[0x1E696E5B0]])
      {
        v17 = @"message";
      }

      else if ([v15 isEqualToString:*MEMORY[0x1E696E590]])
      {
        v17 = @"phone";
      }

      else if ([v15 isEqualToString:*MEMORY[0x1E696E5B8]])
      {
        v17 = @"video";
      }

      else if ([v15 isEqualToString:*MEMORY[0x1E696E5A0]])
      {
        v17 = @"airplayvideo";
      }

      else
      {
        v17 = @"arrow.up.forward.app";
      }

      v9 = [[SearchUISymbolImage alloc] initWithSymbolName:v17];
      [(SearchUISymbolImage *)v9 setPreferredFill:1];
    }

    else
    {
      v9 = 0;
    }
  }

  v18 = [(SearchUIAccessoryViewController *)self view];
  [v18 updateWithImage:v9];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || ![v4 useCompactVersionOfUI])
  {
    v20 = [(SearchUIAccessoryViewController *)self view];
    [v20 setMaximumLayoutSize:{1.79769313e308, 1.79769313e308}];

    v21 = *MEMORY[0x1E695F060];
    v22 = *(MEMORY[0x1E695F060] + 8);
    v19 = [(SearchUIAccessoryViewController *)self view];
    [v19 setMinimumLayoutSize:{v21, v22}];
  }

  else
  {
    v19 = [(SearchUIAccessoryViewController *)self view];
    +[SearchUIThumbnailViewController applyImageConstraintsToImageView:isCompact:preventThumbnailScaling:usesCompactWidth:](SearchUIThumbnailViewController, "applyImageConstraintsToImageView:isCompact:preventThumbnailScaling:usesCompactWidth:", v19, [v4 useCompactVersionOfUI], objc_msgSend(v4, "preventThumbnailImageScaling"), 0);
  }
}

@end