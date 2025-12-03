@interface VUIUpNextButton
- (BOOL)hasLabel;
- (CGSize)intrinsicContentSize;
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
- (VUIUpNextButton)initWithType:(unint64_t)type interfaceStyle:(unint64_t)style;
- (id)largeContentTitle;
- (void)selectButtonAction:(id)action;
- (void)setTintColor:(id)color;
- (void)upNextStateChangedToAdded;
- (void)upNextStateChangedToRemoved;
- (void)updateAccessibilityIdentifierAfterStateChanged;
@end

@implementation VUIUpNextButton

- (VUIUpNextButton)initWithType:(unint64_t)type interfaceStyle:(unint64_t)style
{
  v10.receiver = self;
  v10.super_class = VUIUpNextButton;
  v4 = [(VUIButton *)&v10 initWithType:type interfaceStyle:style];
  if (v4)
  {
    v5 = objc_alloc_init(VUIUpNextButtonProperties);
    [(VUIUpNextButton *)v4 setProperties:v5];

    objc_initWeak(&location, v4);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __47__VUIUpNextButton_initWithType_interfaceStyle___block_invoke;
    v7[3] = &unk_1E872DE30;
    objc_copyWeak(&v8, &location);
    [(VUIButton *)v4 setSelectActionHandler:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  return v4;
}

void __47__VUIUpNextButton_initWithType_interfaceStyle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained selectButtonAction:@"select"];
}

- (void)selectButtonAction:(id)action
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"VUIDidSelectUpNextButtonNotification" object:self userInfo:0];

  properties = [(VUIUpNextButton *)self properties];
  [properties callAPIAndToggleUpNextState];

  properties2 = [(VUIUpNextButton *)self properties];
  LODWORD(properties) = [properties2 dismissOnSelect];

  if (properties)
  {

    +[VUIApplicationRouter dismissPresentedViewController];
  }
}

- (CGSize)intrinsicContentSize
{
  [(UIView *)self vui_sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setTintColor:(id)color
{
  colorCopy = color;
  v7.receiver = self;
  v7.super_class = VUIUpNextButton;
  [(VUIButton *)&v7 setTintColor:colorCopy];
  if ([(VUIUpNextButton *)self tintAdjustmentMode]!= 2)
  {
    properties = [(VUIUpNextButton *)self properties];
    currentImageView = [properties currentImageView];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [currentImageView _setTintColor:colorCopy];
    }

    [(VUIButton *)self setImageTintColor:colorCopy];
  }
}

- (void)upNextStateChangedToAdded
{
  properties = [(VUIUpNextButton *)self properties];
  addedStateView = [properties addedStateView];
  label = [addedStateView label];
  [(VUIButton *)self setTextContentView:label];

  properties2 = [(VUIUpNextButton *)self properties];
  currentImageView = [properties2 currentImageView];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    imageView = [(VUIButton *)self imageView];

    if (!imageView)
    {
      [(VUIButton *)self setImageView:currentImageView];
    }

    properties3 = [(VUIUpNextButton *)self properties];
    addedStateView2 = [properties3 addedStateView];
    image = [addedStateView2 image];

    image2 = [currentImageView image];
    if (image2 && ([MEMORY[0x1E69DF6F0] isMac] & 1) == 0)
    {
      isTV = [MEMORY[0x1E69DF6F0] isTV];

      if ((isTV & 1) == 0)
      {
        image3 = [currentImageView image];

        if (image3 != image)
        {
          if ([(VUIUpNextButton *)self hasLabel])
          {
            symbolReplaceContentTransition = 0;
          }

          else
          {
            symbolReplaceContentTransition = [MEMORY[0x1E69DF798] symbolReplaceContentTransition];
          }

          [currentImageView setSymbolImage:image withSymbolTransition:symbolReplaceContentTransition];
        }

        goto LABEL_8;
      }
    }

    else
    {
    }

    [currentImageView setImage:image];
LABEL_8:
    v12 = +[VUILocalizationManager sharedInstance];
    v13 = [v12 localizedStringForKey:@"TV.Button.Watchlist.Remove"];
    [currentImageView setAccessibilityLabel:v13];
  }

  [(VUIUpNextButton *)self invalidateIntrinsicContentSize];
  [(VUIUpNextButton *)self updateAccessibilityIdentifierAfterStateChanged];
  stateDidChangeHandler = [(VUIUpNextButton *)self stateDidChangeHandler];

  if (stateDidChangeHandler)
  {
    stateDidChangeHandler2 = [(VUIUpNextButton *)self stateDidChangeHandler];
    (stateDidChangeHandler2)[2](stateDidChangeHandler2, self);
  }
}

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  height = subviews.height;
  width = subviews.width;
  v25.receiver = self;
  v25.super_class = VUIUpNextButton;
  [VUIButton vui_layoutSubviews:sel_vui_layoutSubviews_computationOnly_ computationOnly:?];
  v9 = v8;
  v11 = v10;
  if (!only)
  {
    properties = [(VUIUpNextButton *)self properties];
    if ([properties removeTitleForSquareAspectRatio])
    {
      properties2 = [(VUIUpNextButton *)self properties];
      addedStateView = [properties2 addedStateView];
      label = [addedStateView label];
      if (label)
      {
      }

      else
      {
        properties3 = [(VUIUpNextButton *)self properties];
        removedStateView = [properties3 removedStateView];
        label2 = [removedStateView label];

        if (!label2)
        {
          goto LABEL_14;
        }
      }

      textContentView = [(VUIButton *)self textContentView];
      v20 = textContentView;
      if (round(width) == round(height))
      {

        if (v20)
        {
          [(VUIButton *)self setTextContentView:0];
        }
      }

      else
      {

        if (!v20)
        {
          properties4 = [(VUIUpNextButton *)self properties];
          isWatchListed = [properties4 isWatchListed];

          if (isWatchListed)
          {
            [(VUIUpNextButton *)self upNextStateChangedToAdded];
          }

          else
          {
            [(VUIUpNextButton *)self upNextStateChangedToRemoved];
          }
        }
      }
    }

    else
    {
    }
  }

LABEL_14:
  v23 = v9;
  v24 = v11;
  result.height = v24;
  result.width = v23;
  return result;
}

- (void)upNextStateChangedToRemoved
{
  properties = [(VUIUpNextButton *)self properties];
  removedStateView = [properties removedStateView];
  label = [removedStateView label];
  [(VUIButton *)self setTextContentView:label];

  properties2 = [(VUIUpNextButton *)self properties];
  currentImageView = [properties2 currentImageView];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    imageView = [(VUIButton *)self imageView];

    if (!imageView)
    {
      [(VUIButton *)self setImageView:currentImageView];
    }

    properties3 = [(VUIUpNextButton *)self properties];
    removedStateView2 = [properties3 removedStateView];
    image = [removedStateView2 image];

    image2 = [currentImageView image];
    if (image2 && ([MEMORY[0x1E69DF6F0] isMac] & 1) == 0)
    {
      isTV = [MEMORY[0x1E69DF6F0] isTV];

      if ((isTV & 1) == 0)
      {
        image3 = [currentImageView image];

        if (image3 != image)
        {
          if ([(VUIUpNextButton *)self hasLabel])
          {
            symbolReplaceContentTransition = 0;
          }

          else
          {
            symbolReplaceContentTransition = [MEMORY[0x1E69DF798] symbolReplaceContentTransition];
          }

          [currentImageView setSymbolImage:image withSymbolTransition:symbolReplaceContentTransition];
        }

        goto LABEL_8;
      }
    }

    else
    {
    }

    [currentImageView setImage:image];
LABEL_8:
    v12 = +[VUILocalizationManager sharedInstance];
    v13 = [v12 localizedStringForKey:@"TV.Button.Watchlist.Add"];
    [currentImageView setAccessibilityLabel:v13];
  }

  [(VUIUpNextButton *)self invalidateIntrinsicContentSize];
  [(VUIUpNextButton *)self updateAccessibilityIdentifierAfterStateChanged];
  stateDidChangeHandler = [(VUIUpNextButton *)self stateDidChangeHandler];

  if (stateDidChangeHandler)
  {
    stateDidChangeHandler2 = [(VUIUpNextButton *)self stateDidChangeHandler];
    (stateDidChangeHandler2)[2](stateDidChangeHandler2, self);
  }
}

- (void)updateAccessibilityIdentifierAfterStateChanged
{
  vuiAccessibilityIdentifier = [(VUIUpNextButton *)self vuiAccessibilityIdentifier];
  properties = [(VUIUpNextButton *)self properties];
  isWatchListed = [properties isWatchListed];

  if (isWatchListed)
  {
    v6 = @"removed";
    v7 = @"added";
  }

  else
  {
    v6 = @"added";
    v7 = @"removed";
  }

  v8 = [vuiAccessibilityIdentifier stringByReplacingOccurrencesOfString:v6 withString:v7];

  [(VUIUpNextButton *)self setVuiAccessibilityIdentifier:v8];
}

- (BOOL)hasLabel
{
  properties = [(VUIUpNextButton *)self properties];
  removedStateView = [properties removedStateView];
  label = [removedStateView label];

  properties2 = [(VUIUpNextButton *)self properties];
  addedStateView = [properties2 addedStateView];
  label2 = [addedStateView label];

  vuiText = [label vuiText];
  if ([vuiText length])
  {
    vuiText2 = [label2 vuiText];
    v11 = [vuiText2 length] != 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)largeContentTitle
{
  properties = [(VUIUpNextButton *)self properties];
  isWatchListed = [properties isWatchListed];

  v4 = +[VUILocalizationManager sharedInstance];
  v5 = v4;
  if (isWatchListed)
  {
    v6 = @"TV.Button.Watchlist.Remove";
  }

  else
  {
    v6 = @"TV.Button.Watchlist.Add";
  }

  v7 = [v4 localizedStringForKey:v6];

  return v7;
}

@end