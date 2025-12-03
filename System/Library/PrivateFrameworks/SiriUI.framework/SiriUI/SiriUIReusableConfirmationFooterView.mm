@interface SiriUIReusableConfirmationFooterView
+ (double)defaultHeight;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SiriUIReusableConfirmationFooterView)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)edgeInsets;
- (double)defaultAmbientHeight;
- (id)snippetViewController;
- (void)beginProgressAnimation;
- (void)layoutSubviews;
- (void)setConfirmationOptions:(id)options;
- (void)setSnippetViewController:(id)controller;
@end

@implementation SiriUIReusableConfirmationFooterView

- (SiriUIReusableConfirmationFooterView)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = SiriUIReusableConfirmationFooterView;
  v3 = [(SiriUIReusableConfirmationFooterView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [SiriUIContentButton buttonWithRole:0];
    cancelButton = v3->_cancelButton;
    v3->_cancelButton = v4;

    [(SiriUIContentButton *)v3->_cancelButton _setContinuousCornerRadius:9.0];
    [(SiriUIReusableConfirmationFooterView *)v3 addSubview:v3->_cancelButton];
    v6 = [SiriUIContentButton buttonWithRole:0];
    confirmButton = v3->_confirmButton;
    v3->_confirmButton = v6;

    [(SiriUIContentButton *)v3->_confirmButton _setContinuousCornerRadius:9.0];
    [(SiriUIReusableConfirmationFooterView *)v3 addSubview:v3->_confirmButton];
    v8 = [SiriUIProgressBarView alloc];
    v9 = [(SiriUIProgressBarView *)v8 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    progressBarView = v3->_progressBarView;
    v3->_progressBarView = v9;

    [(SiriUIProgressBarView *)v3->_progressBarView setUserInteractionEnabled:0];
    [(SiriUIReusableConfirmationFooterView *)v3 addSubview:v3->_progressBarView];
    v3->_automaticConfirmationThreshold = 0.0;
    [(SiriUIReusableConfirmationFooterView *)v3 setClipsToBounds:1];
  }

  return v3;
}

+ (double)defaultHeight
{
  [MEMORY[0x277D74300] siriui_preferredDynamicBodySize];
  v3 = v2 + -18.0;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v5 = ceil(v3 + 76.0);
  if (v6 >= 2.0)
  {
    v7 = v3 + 76.0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (double)defaultAmbientHeight
{
  [MEMORY[0x277D74300] siriui_preferredDynamicBodySize];
  v3 = v2 + -18.0;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v5 = ceil(v3 + 66.0);
  if (v6 >= 2.0)
  {
    v7 = v3 + 66.0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (void)setSnippetViewController:(id)controller
{
  obj = controller;
  WeakRetained = objc_loadWeakRetained(&self->_snippetViewController);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_snippetViewController, obj);
    cancelButton = self->_cancelButton;
    snippetViewController = [(SiriUIReusableConfirmationFooterView *)self snippetViewController];
    -[SiriUIContentButton setUsePlatterStyle:](cancelButton, "setUsePlatterStyle:", [snippetViewController usePlatterStyle]);

    confirmButton = self->_confirmButton;
    snippetViewController2 = [(SiriUIReusableConfirmationFooterView *)self snippetViewController];
    -[SiriUIContentButton setUsePlatterStyle:](confirmButton, "setUsePlatterStyle:", [snippetViewController2 usePlatterStyle]);

    verticalKeyline = self->_verticalKeyline;
    siriui_platterKeylineColor = [MEMORY[0x277D75348] siriui_platterKeylineColor];
    [(SiriUIKeyline *)verticalKeyline setCustomBackgroundColor:siriui_platterKeylineColor];

    v5 = obj;
  }
}

- (void)setConfirmationOptions:(id)options
{
  v43 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  objc_storeStrong(&self->_confirmationOptions, options);
  confirmButton = self->_confirmButton;
  confirmText = [optionsCopy confirmText];
  [(SiriUIContentButton *)confirmButton setTitle:confirmText forState:0];

  cancelButton = self->_cancelButton;
  denyText = [optionsCopy denyText];
  [(SiriUIContentButton *)cancelButton setTitle:denyText forState:0];

  selfCopy = self;
  [(SiriUIContentButton *)self->_cancelButton setRole:2];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v31 = optionsCopy;
  allConfirmationOptions = [optionsCopy allConfirmationOptions];
  v11 = [allConfirmationOptions countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (!v11)
  {
    v13 = 0;
    goto LABEL_20;
  }

  v12 = v11;
  v13 = 0;
  v14 = *v35;
  v15 = *MEMORY[0x277D48B88];
  v16 = *MEMORY[0x277D48B80];
  v32 = *MEMORY[0x277D48B78];
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v35 != v14)
      {
        objc_enumerationMutation(allConfirmationOptions);
      }

      v18 = *(*(&v34 + 1) + 8 * i);
      type = [v18 type];
      v20 = [type isEqualToString:v15];

      if (v20)
      {
        if (v13)
        {
          v21 = *MEMORY[0x277CEF098];
          if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v39 = "[SiriUIReusableConfirmationFooterView setConfirmationOptions:]";
            v40 = 2112;
            v41 = v18;
            _os_log_error_impl(&dword_26948D000, v21, OS_LOG_TYPE_ERROR, "%s Warning: Duplicated confirm confirmationOption included in SAUIConfirmationOptions : %@", buf, 0x16u);
          }
        }

        v22 = v18;

        buttonRole = [v22 buttonRole];
        v24 = [buttonRole isEqualToString:v16];

        if (v24)
        {
          v25 = 1;
          goto LABEL_14;
        }

        buttonRole2 = [v22 buttonRole];
        v27 = [buttonRole2 isEqualToString:v32];

        if (v27)
        {
          v25 = 3;
LABEL_14:
          [(SiriUIContentButton *)selfCopy->_confirmButton setRole:v25];
        }

        v13 = v22;
        continue;
      }
    }

    v12 = [allConfirmationOptions countByEnumeratingWithState:&v34 objects:v42 count:16];
  }

  while (v12);
LABEL_20:

  automaticConfirmationThreshold = [v13 automaticConfirmationThreshold];

  if (automaticConfirmationThreshold)
  {
    automaticConfirmationThreshold2 = [v13 automaticConfirmationThreshold];
    [automaticConfirmationThreshold2 doubleValue];
    selfCopy->_automaticConfirmationThreshold = v30;
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v5 = [(SiriUIReusableConfirmationFooterView *)self traitCollection:fits.width];
  if ([v5 isAmbientPresented])
  {
    [(SiriUIReusableConfirmationFooterView *)self defaultAmbientHeight];
  }

  else
  {
    [objc_opt_class() defaultHeight];
  }

  v7 = v6;

  v8 = width;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)layoutSubviews
{
  v28.receiver = self;
  v28.super_class = SiriUIReusableConfirmationFooterView;
  [(SiriUIReusableConfirmationFooterView *)&v28 layoutSubviews];
  semanticContentAttribute = [(SiriUIReusableConfirmationFooterView *)self semanticContentAttribute];
  traitCollection = [(SiriUIReusableConfirmationFooterView *)self traitCollection];
  if ([traitCollection isAmbientPresented])
  {
    [(SiriUIReusableConfirmationFooterView *)self defaultAmbientHeight];
  }

  else
  {
    [objc_opt_class() defaultHeight];
  }

  v6 = v5;

  [(SiriUIReusableConfirmationFooterView *)self bounds];
  v8 = v7;
  [(SiriUIReusableConfirmationFooterView *)self edgeInsets];
  v10 = v6 - v9;
  [(SiriUIReusableConfirmationFooterView *)self edgeInsets];
  v12 = v10 - v11;
  [(SiriUIReusableConfirmationFooterView *)self edgeInsets];
  v14 = v8 - v13;
  [(SiriUIReusableConfirmationFooterView *)self edgeInsets];
  v16 = v14 - v15;
  [(SiriUIReusableConfirmationFooterView *)self edgeInsets];
  v18 = (v16 - v17) * 0.5;
  [(SiriUIReusableConfirmationFooterView *)self edgeInsets];
  v20 = v19;
  [(SiriUIReusableConfirmationFooterView *)self edgeInsets];
  v22 = v21 + v18;
  [(SiriUIReusableConfirmationFooterView *)self edgeInsets];
  v24 = v22 + v23;
  [(SiriUIReusableConfirmationFooterView *)self edgeInsets];
  v26 = v25;
  if (semanticContentAttribute == 4)
  {
    v27 = v24;
  }

  else
  {
    v27 = v20;
  }

  if (semanticContentAttribute != 4)
  {
    v20 = v24;
  }

  [(SiriUIContentButton *)self->_cancelButton setFrame:v27, v26, v18, v12];
  [(SiriUIContentButton *)self->_confirmButton setFrame:v20, v26, v18, v12];
  [(SiriUIProgressBarView *)self->_progressBarView setFrame:v20, v26, v18, v12];
}

- (void)beginProgressAnimation
{
  if (self->_automaticConfirmationThreshold > 0.0)
  {
    [(SiriUIProgressBarView *)self->_progressBarView beginProgressAnimationWithDuration:?];
  }
}

- (UIEdgeInsets)edgeInsets
{
  v2 = 16.0;
  v3 = 16.0;
  v4 = 16.0;
  v5 = 16.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (id)snippetViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_snippetViewController);

  return WeakRetained;
}

@end