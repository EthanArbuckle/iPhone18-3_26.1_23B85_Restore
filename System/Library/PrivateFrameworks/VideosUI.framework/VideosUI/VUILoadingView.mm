@interface VUILoadingView
- (VUILoadingView)initWithFrame:(CGRect)frame loadingTitle:(id)title loadingMessage:(id)message;
- (void)_setupLabels:(id)labels message:(id)message;
- (void)configureMessageTextLayout:(id)layout;
- (void)configureTitleTextLayout:(id)layout;
- (void)layoutSubviews;
- (void)setMessageTextLayout:(id)layout;
- (void)setTitleTextLayout:(id)layout;
- (void)startTimer;
@end

@implementation VUILoadingView

- (VUILoadingView)initWithFrame:(CGRect)frame loadingTitle:(id)title loadingMessage:(id)message
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  titleCopy = title;
  messageCopy = message;
  v19.receiver = self;
  v19.super_class = VUILoadingView;
  height = [(VUILoadingView *)&v19 initWithFrame:x, y, width, height];
  v14 = height;
  if (height)
  {
    height->_delay = 1.5;
    vui_primaryDynamicBackgroundColor = [MEMORY[0x1E69DC888] vui_primaryDynamicBackgroundColor];
    [(VUILoadingView *)v14 setBackgroundColor:vui_primaryDynamicBackgroundColor];

    v16 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    indicatorView = v14->_indicatorView;
    v14->_indicatorView = v16;

    [(VUILoadingView *)v14 _setupLabels:titleCopy message:messageCopy];
    [(VUILoadingView *)v14 addSubview:v14->_indicatorView];
  }

  return v14;
}

- (void)_setupLabels:(id)labels message:(id)message
{
  labelsCopy = labels;
  messageCopy = message;
  if (labelsCopy)
  {
    v7 = labelsCopy;
    v8 = messageCopy;
  }

  else
  {
    v9 = +[VUILocalizationManager sharedInstance];
    v7 = [v9 localizedStringForKey:@"LOADING"];

    v10 = messageCopy;
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
  if (messageCopy)
  {
    v14 = objc_alloc_init(VUITextLayout);
    [(VUILoadingView *)self configureMessageTextLayout:v14];
    objc_storeStrong(&self->_loadingMessage, message);
    v15 = [VUILabel labelWithString:self->_loadingMessage textLayout:v14 existingLabel:0];
    loadingMessageLabel = self->_loadingMessageLabel;
    self->_loadingMessageLabel = v15;

    [(VUILabel *)self->_loadingMessageLabel setHidden:1];
    [(VUILoadingView *)self addSubview:self->_loadingMessageLabel];
  }
}

- (void)setTitleTextLayout:(id)layout
{
  layoutCopy = layout;
  if (self->_titleTextLayout != layoutCopy)
  {
    v10 = layoutCopy;
    objc_storeStrong(&self->_titleTextLayout, layout);
    loadingTitle = [(VUILoadingView *)self loadingTitle];
    v7 = [VUILabel labelWithString:loadingTitle textLayout:v10 existingLabel:self->_loadingLabel];
    loadingLabel = self->_loadingLabel;
    self->_loadingLabel = v7;

    v9 = [MEMORY[0x1E69DF678] makeAccessibilityIdentifierString:*MEMORY[0x1E69DF7C8] additionalString:@"Library.id=Loading"];
    [(VUILabel *)self->_loadingLabel setVuiAccessibilityIdentifier:v9];
    [(VUILabel *)self->_loadingLabel setNeedsDisplay];

    layoutCopy = v10;
  }
}

- (void)setMessageTextLayout:(id)layout
{
  layoutCopy = layout;
  if (self->_messageTextLayout != layoutCopy)
  {
    v10 = layoutCopy;
    objc_storeStrong(&self->_messageTextLayout, layout);
    loadingMessage = [(VUILoadingView *)self loadingMessage];
    v7 = [VUILabel labelWithString:loadingMessage textLayout:v10 existingLabel:self->_loadingMessageLabel];
    loadingMessageLabel = self->_loadingMessageLabel;
    self->_loadingMessageLabel = v7;

    v9 = [MEMORY[0x1E69DF678] makeAccessibilityIdentifierString:*MEMORY[0x1E69DF7C8] additionalString:@"Library.id=LoadingDescription"];
    [(VUILabel *)self->_loadingMessageLabel setVuiAccessibilityIdentifier:v9];
    [(VUILabel *)self->_loadingMessageLabel setNeedsDisplay];

    layoutCopy = v10;
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

- (void)configureTitleTextLayout:(id)layout
{
  layoutCopy = layout;
  [layoutCopy setTextStyle:2];
  [layoutCopy setFontWeight:10];
  vui_primaryTextColor = [MEMORY[0x1E69DC888] vui_primaryTextColor];
  [layoutCopy setColor:vui_primaryTextColor];
}

- (void)configureMessageTextLayout:(id)layout
{
  layoutCopy = layout;
  [layoutCopy setTextStyle:14];
  vui_secondaryTextColor = [MEMORY[0x1E69DC888] vui_secondaryTextColor];
  [layoutCopy setColor:vui_secondaryTextColor];
}

@end