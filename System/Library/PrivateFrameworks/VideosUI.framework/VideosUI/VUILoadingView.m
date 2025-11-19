@interface VUILoadingView
- (VUILoadingView)initWithFrame:(CGRect)a3 loadingTitle:(id)a4 loadingMessage:(id)a5;
- (void)_setupLabels:(id)a3 message:(id)a4;
- (void)configureMessageTextLayout:(id)a3;
- (void)configureTitleTextLayout:(id)a3;
- (void)layoutSubviews;
- (void)setMessageTextLayout:(id)a3;
- (void)setTitleTextLayout:(id)a3;
- (void)startTimer;
@end

@implementation VUILoadingView

- (VUILoadingView)initWithFrame:(CGRect)a3 loadingTitle:(id)a4 loadingMessage:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a4;
  v12 = a5;
  v19.receiver = self;
  v19.super_class = VUILoadingView;
  v13 = [(VUILoadingView *)&v19 initWithFrame:x, y, width, height];
  v14 = v13;
  if (v13)
  {
    v13->_delay = 1.5;
    v15 = [MEMORY[0x1E69DC888] vui_primaryDynamicBackgroundColor];
    [(VUILoadingView *)v14 setBackgroundColor:v15];

    v16 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    indicatorView = v14->_indicatorView;
    v14->_indicatorView = v16;

    [(VUILoadingView *)v14 _setupLabels:v11 message:v12];
    [(VUILoadingView *)v14 addSubview:v14->_indicatorView];
  }

  return v14;
}

- (void)_setupLabels:(id)a3 message:(id)a4
{
  v17 = a3;
  v6 = a4;
  if (v17)
  {
    v7 = v17;
    v8 = v6;
  }

  else
  {
    v9 = +[VUILocalizationManager sharedInstance];
    v7 = [v9 localizedStringForKey:@"LOADING"];

    v10 = v6;
    if (!v7)
    {
      goto LABEL_5;
    }
  }

  v11 = objc_alloc_init(VUITextLayout);
  [(VUILoadingView *)self configureTitleTextLayout:v11];
  objc_storeStrong(&self->_loadingTitle, v7);
  v12 = [VUILabel labelWithString:self->_loadingTitle textLayout:v11 existingLabel:0];
  loadingLabel = self->_loadingLabel;
  self->_loadingLabel = v12;

  [(VUILabel *)self->_loadingLabel setHidden:1];
  [(VUILoadingView *)self addSubview:self->_loadingLabel];

LABEL_5:
  if (v6)
  {
    v14 = objc_alloc_init(VUITextLayout);
    [(VUILoadingView *)self configureMessageTextLayout:v14];
    objc_storeStrong(&self->_loadingMessage, a4);
    v15 = [VUILabel labelWithString:self->_loadingMessage textLayout:v14 existingLabel:0];
    loadingMessageLabel = self->_loadingMessageLabel;
    self->_loadingMessageLabel = v15;

    [(VUILabel *)self->_loadingMessageLabel setHidden:1];
    [(VUILoadingView *)self addSubview:self->_loadingMessageLabel];
  }
}

- (void)setTitleTextLayout:(id)a3
{
  v5 = a3;
  if (self->_titleTextLayout != v5)
  {
    v10 = v5;
    objc_storeStrong(&self->_titleTextLayout, a3);
    v6 = [(VUILoadingView *)self loadingTitle];
    v7 = [VUILabel labelWithString:v6 textLayout:v10 existingLabel:self->_loadingLabel];
    loadingLabel = self->_loadingLabel;
    self->_loadingLabel = v7;

    v9 = [MEMORY[0x1E69DF678] makeAccessibilityIdentifierString:*MEMORY[0x1E69DF7C8] additionalString:@"Library.id=Loading"];
    [(VUILabel *)self->_loadingLabel setVuiAccessibilityIdentifier:v9];
    [(VUILabel *)self->_loadingLabel setNeedsDisplay];

    v5 = v10;
  }
}

- (void)setMessageTextLayout:(id)a3
{
  v5 = a3;
  if (self->_messageTextLayout != v5)
  {
    v10 = v5;
    objc_storeStrong(&self->_messageTextLayout, a3);
    v6 = [(VUILoadingView *)self loadingMessage];
    v7 = [VUILabel labelWithString:v6 textLayout:v10 existingLabel:self->_loadingMessageLabel];
    loadingMessageLabel = self->_loadingMessageLabel;
    self->_loadingMessageLabel = v7;

    v9 = [MEMORY[0x1E69DF678] makeAccessibilityIdentifierString:*MEMORY[0x1E69DF7C8] additionalString:@"Library.id=LoadingDescription"];
    [(VUILabel *)self->_loadingMessageLabel setVuiAccessibilityIdentifier:v9];
    [(VUILabel *)self->_loadingMessageLabel setNeedsDisplay];

    v5 = v10;
  }
}

- (void)startTimer
{
  indicatorView = self->_indicatorView;
  [(VUILoadingView *)self delay];
  [(UIActivityIndicatorView *)indicatorView performSelector:sel_startAnimating withObject:0 afterDelay:?];
  objc_initWeak(&location, self);
  [(VUILoadingView *)self delay];
  v5 = dispatch_time(0, (v4 * 1000000000.0));
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __28__VUILoadingView_startTimer__block_invoke;
  v6[3] = &unk_1E872E4B8;
  objc_copyWeak(&v7, &location);
  dispatch_after(v5, MEMORY[0x1E69E96A0], v6);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __28__VUILoadingView_startTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained loadingLabel];

  if (v1)
  {
    v2 = [WeakRetained loadingLabel];
    [v2 setHidden:0];
  }

  v3 = [WeakRetained loadingMessageLabel];

  if (v3)
  {
    v4 = [WeakRetained loadingMessageLabel];
    [v4 setHidden:0];
  }
}

- (void)layoutSubviews
{
  [(VUILoadingView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIActivityIndicatorView *)self->_indicatorView sizeToFit];
  v11 = 0.0;
  if ([MEMORY[0x1E69DF6F0] isPad])
  {
    [(VUILoadingView *)self safeAreaInsets];
    v13 = v12;
    v15 = v14;
    if ([(VUILoadingView *)self vuiIsRTL])
    {
      v16 = v15;
    }

    else
    {
      v16 = v13;
    }

    v11 = v16 * 0.5;
  }

  v45.origin.x = v4;
  v45.origin.y = v6;
  v45.size.width = v8;
  v45.size.height = v10;
  MidX = CGRectGetMidX(v45);
  [(UIActivityIndicatorView *)self->_indicatorView bounds];
  v19 = v11 + MidX + v18 * -0.5;
  v46.origin.x = v4;
  v46.origin.y = v6;
  v46.size.width = v8;
  v46.size.height = v10;
  MidY = CGRectGetMidY(v46);
  [(UIActivityIndicatorView *)self->_indicatorView bounds];
  v22 = MidY - (v21 + 4.5);
  [(UIActivityIndicatorView *)self->_indicatorView bounds];
  v24 = v23;
  [(UIActivityIndicatorView *)self->_indicatorView bounds];
  [(UIActivityIndicatorView *)self->_indicatorView setFrame:v19, v22, v24];
  loadingLabel = self->_loadingLabel;
  v43 = v11;
  if (loadingLabel)
  {
    [(VUILabel *)loadingLabel sizeToFit];
    v47.origin.x = v4;
    v47.origin.y = v6;
    v47.size.width = v8;
    v47.size.height = v10;
    v26 = CGRectGetMidX(v47);
    [(VUILabel *)self->_loadingLabel bounds];
    v28 = v11 + v26 + v27 * -0.5;
    v48.origin.x = v4;
    v48.origin.y = v6;
    v48.size.width = v8;
    v48.size.height = v10;
    v29 = CGRectGetMidY(v48) + 4.5;
    [(VUILabel *)self->_loadingLabel bounds];
    v31 = v30;
    [(VUILabel *)self->_loadingLabel bounds];
    v33 = v32;
    [(VUILabel *)self->_loadingLabel setFrame:v28, v29, v31];
  }

  else
  {
    v28 = *MEMORY[0x1E695F058];
    v29 = *(MEMORY[0x1E695F058] + 8);
    v31 = *(MEMORY[0x1E695F058] + 16);
    v33 = *(MEMORY[0x1E695F058] + 24);
  }

  loadingMessageLabel = self->_loadingMessageLabel;
  if (loadingMessageLabel)
  {
    [(VUILabel *)loadingMessageLabel sizeToFit];
    v49.origin.x = v28;
    v49.origin.y = v29;
    v49.size.width = v31;
    v49.size.height = v33;
    MaxY = CGRectGetMaxY(v49);
    v50.origin.x = v4;
    v50.origin.y = v6;
    v50.size.width = v8;
    v50.size.height = v10;
    v36 = CGRectGetMidY(v50);
    if (MaxY < v36)
    {
      MaxY = v36;
    }

    v37 = self->_loadingMessageLabel;
    v51.origin.x = v4;
    v51.origin.y = v6;
    v51.size.width = v8;
    v51.size.height = v10;
    v38 = CGRectGetMidX(v51);
    [(VUILabel *)self->_loadingMessageLabel bounds];
    v40 = v43 + v38 + v39 * -0.5;
    [(VUILabel *)self->_loadingMessageLabel bounds];
    v42 = v41;
    [(VUILabel *)self->_loadingMessageLabel bounds];

    [(VUILabel *)v37 setFrame:v40, MaxY + 4.5, v42];
  }
}

- (void)configureTitleTextLayout:(id)a3
{
  v3 = a3;
  [v3 setTextStyle:2];
  [v3 setFontWeight:10];
  v4 = [MEMORY[0x1E69DC888] vui_primaryTextColor];
  [v3 setColor:v4];
}

- (void)configureMessageTextLayout:(id)a3
{
  v3 = a3;
  [v3 setTextStyle:14];
  v4 = [MEMORY[0x1E69DC888] vui_secondaryTextColor];
  [v3 setColor:v4];
}

@end