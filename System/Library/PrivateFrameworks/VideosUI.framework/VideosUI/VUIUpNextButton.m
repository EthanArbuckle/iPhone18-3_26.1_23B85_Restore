@interface VUIUpNextButton
- (BOOL)hasLabel;
- (CGSize)intrinsicContentSize;
- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4;
- (VUIUpNextButton)initWithType:(unint64_t)a3 interfaceStyle:(unint64_t)a4;
- (id)largeContentTitle;
- (void)selectButtonAction:(id)a3;
- (void)setTintColor:(id)a3;
- (void)upNextStateChangedToAdded;
- (void)upNextStateChangedToRemoved;
- (void)updateAccessibilityIdentifierAfterStateChanged;
@end

@implementation VUIUpNextButton

- (VUIUpNextButton)initWithType:(unint64_t)a3 interfaceStyle:(unint64_t)a4
{
  v10.receiver = self;
  v10.super_class = VUIUpNextButton;
  v4 = [(VUIButton *)&v10 initWithType:a3 interfaceStyle:a4];
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

- (void)selectButtonAction:(id)a3
{
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"VUIDidSelectUpNextButtonNotification" object:self userInfo:0];

  v5 = [(VUIUpNextButton *)self properties];
  [v5 callAPIAndToggleUpNextState];

  v6 = [(VUIUpNextButton *)self properties];
  LODWORD(v5) = [v6 dismissOnSelect];

  if (v5)
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

- (void)setTintColor:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = VUIUpNextButton;
  [(VUIButton *)&v7 setTintColor:v4];
  if ([(VUIUpNextButton *)self tintAdjustmentMode]!= 2)
  {
    v5 = [(VUIUpNextButton *)self properties];
    v6 = [v5 currentImageView];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 _setTintColor:v4];
    }

    [(VUIButton *)self setImageTintColor:v4];
  }
}

- (void)upNextStateChangedToAdded
{
  v3 = [(VUIUpNextButton *)self properties];
  v4 = [v3 addedStateView];
  v5 = [v4 label];
  [(VUIButton *)self setTextContentView:v5];

  v6 = [(VUIUpNextButton *)self properties];
  v19 = [v6 currentImageView];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(VUIButton *)self imageView];

    if (!v7)
    {
      [(VUIButton *)self setImageView:v19];
    }

    v8 = [(VUIUpNextButton *)self properties];
    v9 = [v8 addedStateView];
    v10 = [v9 image];

    v11 = [v19 image];
    if (v11 && ([MEMORY[0x1E69DF6F0] isMac] & 1) == 0)
    {
      v16 = [MEMORY[0x1E69DF6F0] isTV];

      if ((v16 & 1) == 0)
      {
        v17 = [v19 image];

        if (v17 != v10)
        {
          if ([(VUIUpNextButton *)self hasLabel])
          {
            v18 = 0;
          }

          else
          {
            v18 = [MEMORY[0x1E69DF798] symbolReplaceContentTransition];
          }

          [v19 setSymbolImage:v10 withSymbolTransition:v18];
        }

        goto LABEL_8;
      }
    }

    else
    {
    }

    [v19 setImage:v10];
LABEL_8:
    v12 = +[VUILocalizationManager sharedInstance];
    v13 = [v12 localizedStringForKey:@"TV.Button.Watchlist.Remove"];
    [v19 setAccessibilityLabel:v13];
  }

  [(VUIUpNextButton *)self invalidateIntrinsicContentSize];
  [(VUIUpNextButton *)self updateAccessibilityIdentifierAfterStateChanged];
  v14 = [(VUIUpNextButton *)self stateDidChangeHandler];

  if (v14)
  {
    v15 = [(VUIUpNextButton *)self stateDidChangeHandler];
    (v15)[2](v15, self);
  }
}

- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4
{
  height = a3.height;
  width = a3.width;
  v25.receiver = self;
  v25.super_class = VUIUpNextButton;
  [VUIButton vui_layoutSubviews:sel_vui_layoutSubviews_computationOnly_ computationOnly:?];
  v9 = v8;
  v11 = v10;
  if (!a4)
  {
    v12 = [(VUIUpNextButton *)self properties];
    if ([v12 removeTitleForSquareAspectRatio])
    {
      v13 = [(VUIUpNextButton *)self properties];
      v14 = [v13 addedStateView];
      v15 = [v14 label];
      if (v15)
      {
      }

      else
      {
        v16 = [(VUIUpNextButton *)self properties];
        v17 = [v16 removedStateView];
        v18 = [v17 label];

        if (!v18)
        {
          goto LABEL_14;
        }
      }

      v19 = [(VUIButton *)self textContentView];
      v20 = v19;
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
          v21 = [(VUIUpNextButton *)self properties];
          v22 = [v21 isWatchListed];

          if (v22)
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
  v3 = [(VUIUpNextButton *)self properties];
  v4 = [v3 removedStateView];
  v5 = [v4 label];
  [(VUIButton *)self setTextContentView:v5];

  v6 = [(VUIUpNextButton *)self properties];
  v19 = [v6 currentImageView];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(VUIButton *)self imageView];

    if (!v7)
    {
      [(VUIButton *)self setImageView:v19];
    }

    v8 = [(VUIUpNextButton *)self properties];
    v9 = [v8 removedStateView];
    v10 = [v9 image];

    v11 = [v19 image];
    if (v11 && ([MEMORY[0x1E69DF6F0] isMac] & 1) == 0)
    {
      v16 = [MEMORY[0x1E69DF6F0] isTV];

      if ((v16 & 1) == 0)
      {
        v17 = [v19 image];

        if (v17 != v10)
        {
          if ([(VUIUpNextButton *)self hasLabel])
          {
            v18 = 0;
          }

          else
          {
            v18 = [MEMORY[0x1E69DF798] symbolReplaceContentTransition];
          }

          [v19 setSymbolImage:v10 withSymbolTransition:v18];
        }

        goto LABEL_8;
      }
    }

    else
    {
    }

    [v19 setImage:v10];
LABEL_8:
    v12 = +[VUILocalizationManager sharedInstance];
    v13 = [v12 localizedStringForKey:@"TV.Button.Watchlist.Add"];
    [v19 setAccessibilityLabel:v13];
  }

  [(VUIUpNextButton *)self invalidateIntrinsicContentSize];
  [(VUIUpNextButton *)self updateAccessibilityIdentifierAfterStateChanged];
  v14 = [(VUIUpNextButton *)self stateDidChangeHandler];

  if (v14)
  {
    v15 = [(VUIUpNextButton *)self stateDidChangeHandler];
    (v15)[2](v15, self);
  }
}

- (void)updateAccessibilityIdentifierAfterStateChanged
{
  v3 = [(VUIUpNextButton *)self vuiAccessibilityIdentifier];
  v4 = [(VUIUpNextButton *)self properties];
  v5 = [v4 isWatchListed];

  if (v5)
  {
    v6 = @"removed";
    v7 = @"added";
  }

  else
  {
    v6 = @"added";
    v7 = @"removed";
  }

  v8 = [v3 stringByReplacingOccurrencesOfString:v6 withString:v7];

  [(VUIUpNextButton *)self setVuiAccessibilityIdentifier:v8];
}

- (BOOL)hasLabel
{
  v3 = [(VUIUpNextButton *)self properties];
  v4 = [v3 removedStateView];
  v5 = [v4 label];

  v6 = [(VUIUpNextButton *)self properties];
  v7 = [v6 addedStateView];
  v8 = [v7 label];

  v9 = [v5 vuiText];
  if ([v9 length])
  {
    v10 = [v8 vuiText];
    v11 = [v10 length] != 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)largeContentTitle
{
  v2 = [(VUIUpNextButton *)self properties];
  v3 = [v2 isWatchListed];

  v4 = +[VUILocalizationManager sharedInstance];
  v5 = v4;
  if (v3)
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