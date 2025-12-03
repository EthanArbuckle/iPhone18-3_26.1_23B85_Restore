@interface SearchUIImageAccessoryViewController
+ (BOOL)resultIsLegacySiriAction:(id)action;
+ (BOOL)supportsRowModel:(id)model;
- (BOOL)containsSymbolImage;
- (id)setupView;
- (void)updateWithRowModel:(id)model;
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
  view = [(SearchUIAccessoryViewController *)self view];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x1E69D9168];
    view2 = [(SearchUIAccessoryViewController *)self view];
    imageView = [view2 imageView];
    image = [imageView image];
    v8 = [v4 imageIsSymbol:image];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)supportsRowModel:(id)model
{
  modelCopy = model;
  trailingThumbnail = [modelCopy trailingThumbnail];
  if (trailingThumbnail)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v6 = objc_opt_class();
    identifyingResult = [modelCopy identifyingResult];
    if ([v6 resultIsLegacySiriAction:identifyingResult])
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

+ (BOOL)resultIsLegacySiriAction:(id)action
{
  actionCopy = action;
  if ([SearchUIUtilities resultIsSiriAction:actionCopy])
  {
    v4 = 1;
  }

  else
  {
    action = [actionCopy action];
    interactionContentType = [action interactionContentType];
    if ([interactionContentType hasPrefix:*MEMORY[0x1E696E598]])
    {
      v4 = 1;
    }

    else
    {
      userActivityRequiredString = [actionCopy userActivityRequiredString];
      v4 = userActivityRequiredString != 0;
    }
  }

  return v4;
}

- (void)updateWithRowModel:(id)model
{
  modelCopy = model;
  v23.receiver = self;
  v23.super_class = SearchUIImageAccessoryViewController;
  [(SearchUIAccessoryViewController *)&v23 updateWithRowModel:modelCopy];
  if ([modelCopy useCompactVersionOfUI])
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

  view = [(SearchUIAccessoryViewController *)self view];
  [view setSymbolScale:v6];

  view2 = [(SearchUIAccessoryViewController *)self view];
  [view2 setAlignment:v5];

  trailingThumbnail = [modelCopy trailingThumbnail];
  if (!trailingThumbnail)
  {
    v10 = objc_opt_class();
    identifyingResult = [modelCopy identifyingResult];
    LODWORD(v10) = [v10 resultIsLegacySiriAction:identifyingResult];

    if (v10)
    {
      identifyingResult2 = [modelCopy identifyingResult];
      contentType = [identifyingResult2 contentType];
      v14 = contentType;
      if (contentType)
      {
        interactionContentType = contentType;
      }

      else
      {
        action = [modelCopy action];
        interactionContentType = [action interactionContentType];
      }

      if ([interactionContentType isEqualToString:*MEMORY[0x1E696E5A8]])
      {
        v17 = @"play";
      }

      else if ([interactionContentType isEqualToString:*MEMORY[0x1E696E5B0]])
      {
        v17 = @"message";
      }

      else if ([interactionContentType isEqualToString:*MEMORY[0x1E696E590]])
      {
        v17 = @"phone";
      }

      else if ([interactionContentType isEqualToString:*MEMORY[0x1E696E5B8]])
      {
        v17 = @"video";
      }

      else if ([interactionContentType isEqualToString:*MEMORY[0x1E696E5A0]])
      {
        v17 = @"airplayvideo";
      }

      else
      {
        v17 = @"arrow.up.forward.app";
      }

      trailingThumbnail = [[SearchUISymbolImage alloc] initWithSymbolName:v17];
      [(SearchUISymbolImage *)trailingThumbnail setPreferredFill:1];
    }

    else
    {
      trailingThumbnail = 0;
    }
  }

  view3 = [(SearchUIAccessoryViewController *)self view];
  [view3 updateWithImage:trailingThumbnail];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || ![modelCopy useCompactVersionOfUI])
  {
    view4 = [(SearchUIAccessoryViewController *)self view];
    [view4 setMaximumLayoutSize:{1.79769313e308, 1.79769313e308}];

    v21 = *MEMORY[0x1E695F060];
    v22 = *(MEMORY[0x1E695F060] + 8);
    view5 = [(SearchUIAccessoryViewController *)self view];
    [view5 setMinimumLayoutSize:{v21, v22}];
  }

  else
  {
    view5 = [(SearchUIAccessoryViewController *)self view];
    +[SearchUIThumbnailViewController applyImageConstraintsToImageView:isCompact:preventThumbnailScaling:usesCompactWidth:](SearchUIThumbnailViewController, "applyImageConstraintsToImageView:isCompact:preventThumbnailScaling:usesCompactWidth:", view5, [modelCopy useCompactVersionOfUI], objc_msgSend(modelCopy, "preventThumbnailImageScaling"), 0);
  }
}

@end