@interface PKCameraCaptureInstructionView
- (BOOL)isBuddyiPad;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKCameraCaptureInstructionView)initWithFrame:(CGRect)frame context:(int64_t)context primaryAction:(id)action primaryActionTitle:(id)title secondaryAction:(id)secondaryAction secondaryActionTitle:(id)actionTitle;
- (void)layoutSubviews;
- (void)removeSecondaryButton;
- (void)setupHeaderView;
- (void)setupPrimaryButtonWithTitle:(id)title action:(id)action;
- (void)setupScrollView;
- (void)setupSecondaryButtonWithTitle:(id)title action:(id)action;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PKCameraCaptureInstructionView

- (PKCameraCaptureInstructionView)initWithFrame:(CGRect)frame context:(int64_t)context primaryAction:(id)action primaryActionTitle:(id)title secondaryAction:(id)secondaryAction secondaryActionTitle:(id)actionTitle
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  actionCopy = action;
  titleCopy = title;
  secondaryActionCopy = secondaryAction;
  actionTitleCopy = actionTitle;
  v24.receiver = self;
  v24.super_class = PKCameraCaptureInstructionView;
  height = [(PKCameraCaptureInstructionView *)&v24 initWithFrame:x, y, width, height];
  v22 = height;
  if (height)
  {
    height->_context = context;
    [(PKCameraCaptureInstructionView *)height setupScrollView];
    [(PKCameraCaptureInstructionView *)v22 setupPrimaryButtonWithTitle:titleCopy action:actionCopy];
    [(PKCameraCaptureInstructionView *)v22 setupSecondaryButtonWithTitle:actionTitleCopy action:secondaryActionCopy];
    [(PKCameraCaptureInstructionView *)v22 setupHeaderView];
  }

  return v22;
}

- (void)setupScrollView
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
  scrollView = self->_scrollView;
  self->_scrollView = v3;

  v5 = self->_scrollView;

  [(PKCameraCaptureInstructionView *)self addSubview:v5];
}

- (void)setupPrimaryButtonWithTitle:(id)title action:(id)action
{
  if (action)
  {
    v6 = MEMORY[0x1E69DC740];
    v7 = *MEMORY[0x1E69DDCF8];
    v8 = *MEMORY[0x1E69DDC30];
    actionCopy = action;
    titleCopy = title;
    v11 = PKFontForDefaultDesign(v7, v8);
    v14 = [v6 pkui_plainConfigurationWithTitle:titleCopy font:v11];

    v12 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v14 primaryAction:actionCopy];

    primaryButton = self->_primaryButton;
    self->_primaryButton = v12;

    [(UIButton *)self->_primaryButton setConfigurationUpdateHandler:&__block_literal_global_266];
    [(UIScrollView *)self->_scrollView addSubview:self->_primaryButton];
  }
}

void __69__PKCameraCaptureInstructionView_setupPrimaryButtonWithTitle_action___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 titleLabel];
  [v3 setTextAlignment:1];

  v4 = [v2 titleLabel];

  [v4 setNumberOfLines:3];
}

- (void)setupSecondaryButtonWithTitle:(id)title action:(id)action
{
  titleCopy = title;
  actionCopy = action;
  IsSetupAssistant = PKPaymentSetupContextIsSetupAssistant();
  if (actionCopy && IsSetupAssistant)
  {
    v8 = MEMORY[0x1E69DC740];
    v9 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC30]);
    v10 = [v8 pkui_plainConfigurationWithTitle:titleCopy font:v9];

    v11 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v10 primaryAction:actionCopy];
    secondaryButton = self->_secondaryButton;
    self->_secondaryButton = v11;

    [(UIButton *)self->_secondaryButton setConfigurationUpdateHandler:&__block_literal_global_17_0];
    [(UIScrollView *)self->_scrollView addSubview:self->_secondaryButton];
  }
}

void __71__PKCameraCaptureInstructionView_setupSecondaryButtonWithTitle_action___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 titleLabel];
  [v3 setTextAlignment:1];

  v4 = [v2 titleLabel];

  [v4 setNumberOfLines:2];
}

- (void)setupHeaderView
{
  v3 = [PKTableHeaderView alloc];
  v4 = [(PKTableHeaderView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  headerView = self->_headerView;
  self->_headerView = v4;

  isBuddyiPad = [(PKCameraCaptureInstructionView *)self isBuddyiPad];
  if (isBuddyiPad)
  {
    v7 = 1;
  }

  else
  {
    v7 = 3;
  }

  if (isBuddyiPad)
  {
    v8 = 20.0;
  }

  else
  {
    v8 = 10.0;
  }

  if (isBuddyiPad)
  {
    v9 = 19.0;
  }

  else
  {
    v9 = 9.0;
  }

  [(PKTableHeaderView *)self->_headerView setStyle:v7];
  [(PKTableHeaderView *)self->_headerView setTopPadding:v8];
  [(PKTableHeaderView *)self->_headerView setBottomPadding:v9];
  scrollView = self->_scrollView;
  v11 = self->_headerView;

  [(UIScrollView *)scrollView addSubview:v11];
}

- (void)removeSecondaryButton
{
  [(UIButton *)self->_secondaryButton removeFromSuperview];
  secondaryButton = self->_secondaryButton;
  self->_secondaryButton = 0;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = PKCameraCaptureInstructionView;
  [(PKCameraCaptureInstructionView *)&v9 traitCollectionDidChange:changeCopy];
  if (changeCopy)
  {
    traitCollection = [(PKCameraCaptureInstructionView *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
    v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

    if ((v8 & 1) == 0)
    {
      [(PKCameraCaptureInstructionView *)self setNeedsLayout];
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v5 = PKUIGetMinScreenWidthType() - 5;
  if (v5 > 9)
  {
    v6 = 216.0;
  }

  else
  {
    v6 = dbl_1BE117148[v5];
  }

  if ([(PKCameraCaptureInstructionView *)self isBuddyiPad])
  {
    v7 = 313.0;
  }

  else
  {
    v7 = v6;
  }

  v8 = width;
  result.height = v7;
  result.width = v8;
  return result;
}

- (void)layoutSubviews
{
  v68.receiver = self;
  v68.super_class = PKCameraCaptureInstructionView;
  [(PKCameraCaptureInstructionView *)&v68 layoutSubviews];
  [(PKCameraCaptureInstructionView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v7 + -16.0;
  [(UIScrollView *)self->_scrollView setFrame:v3];
  [(UIScrollView *)self->_scrollView setContentSize:v8, v10];
  v12 = MEMORY[0x1E695F058];
  v14 = *MEMORY[0x1E695F058];
  v13 = *(MEMORY[0x1E695F058] + 8);
  [(PKTableHeaderView *)self->_headerView sizeThatFits:v8, v10];
  UIRectCenteredXInRect();
  v58.origin.x = v15;
  v58.origin.y = v16;
  v58.size.width = v17;
  v58.size.height = v18;
  [(PKTableHeaderView *)self->_headerView setFrame:?];
  titleLabel = [(UIButton *)self->_primaryButton titleLabel];
  [titleLabel sizeThatFits:{v11, v10}];

  [(UIButton *)self->_primaryButton sizeThatFits:v11, v10];
  v63 = v14;
  v65 = v13;
  UIRectCenteredXInRect();
  v21 = v20;
  v23 = v22;
  rect = v24;
  v67 = v25;
  v62 = *(v12 + 16);
  v61 = *(v12 + 24);
  if ([(PKCameraCaptureInstructionView *)self isBuddyiPad])
  {
    v26 = 38.0;
  }

  else
  {
    v26 = 14.0;
  }

  v56 = v6;
  v57 = v4;
  v55 = v26;
  if (self->_secondaryButton)
  {
    MaxY = CGRectGetMaxY(v58);
    titleLabel2 = [(UIButton *)self->_secondaryButton titleLabel];
    [titleLabel2 sizeThatFits:{v11, v10}];
    v60 = v21;

    [(UIButton *)self->_secondaryButton sizeThatFits:v11, v10];
    UIRectCenteredXInRect();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v69.size.width = v8;
    v35 = v34;
    v69.origin.x = v4;
    v69.origin.y = v6;
    width = v69.size.width;
    v69.size.height = v10;
    v36 = CGRectGetMaxY(v69);
    v70.origin.x = v29;
    v70.origin.y = v31;
    v70.size.width = v33;
    v70.size.height = v35;
    v37 = v36 - CGRectGetHeight(v70) - v26;
    v71.origin.x = v60;
    v71.origin.y = MaxY;
    v71.size.width = rect;
    v71.size.height = v67;
    v38 = CGRectGetMaxY(v71);
    v39 = v63;
    v40 = v67;
    if (v37 < v38)
    {
      v41 = v60;
      v42 = MaxY;
      v43 = rect;
      v44 = CGRectGetMaxY(*(&v40 - 3));
      isBuddyiPad = [(PKCameraCaptureInstructionView *)self isBuddyiPad];
      v46 = 9.0;
      if (isBuddyiPad)
      {
        v46 = 19.0;
      }

      v37 = v44 + v46;
      v39 = v29;
      v61 = v35;
      v62 = v33;
      v65 = v37;
    }

    [(UIButton *)self->_secondaryButton setFrame:v29, v37, v33, v35, *&v26];
    v48 = rect;
    v47 = v65;
    v50 = v60;
    v49 = v61;
    v8 = width;
  }

  else
  {
    v72.origin.x = v4;
    v72.origin.y = v6;
    v72.size.width = v8;
    v72.size.height = v10;
    v51 = CGRectGetMaxY(v72);
    v73.origin.x = v21;
    v73.origin.y = v23;
    v48 = rect;
    v73.size.width = rect;
    v73.size.height = v67;
    MaxY = v51 - CGRectGetHeight(v73) - v26;
    v39 = v63;
    v47 = v65;
    v50 = v21;
    v49 = v61;
    if (MaxY < CGRectGetMaxY(v58))
    {
      v39 = v21;
      MaxY = CGRectGetMaxY(v58);
      v47 = MaxY;
      v62 = rect;
      v49 = v67;
    }
  }

  v74.origin.x = v39;
  v74.origin.y = v47;
  v74.size.width = v62;
  v74.size.height = v49;
  if (!CGRectIsEmpty(v74))
  {
    scrollView = self->_scrollView;
    v75.origin.y = v56;
    v75.origin.x = v57;
    v75.size.width = v8;
    v75.size.height = v10;
    v53 = CGRectGetWidth(v75);
    v76.size.width = v62;
    v54 = v53;
    v76.origin.x = v39;
    v76.origin.y = v47;
    v76.size.height = v49;
    [(UIScrollView *)scrollView setContentSize:v54, v55 + CGRectGetMaxY(v76)];
  }

  [(UIButton *)self->_primaryButton setFrame:v50, MaxY, v48, v67, *&v55];
}

- (BOOL)isBuddyiPad
{
  traitCollection = [(PKCameraCaptureInstructionView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    return 0;
  }

  return PKPaymentSetupContextIsSetupAssistant();
}

@end