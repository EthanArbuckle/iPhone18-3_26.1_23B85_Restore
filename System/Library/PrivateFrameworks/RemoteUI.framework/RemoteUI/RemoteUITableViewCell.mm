@interface RemoteUITableViewCell
- (BOOL)_tableIsGrouped;
- (CGRect)expand:(CGRect)expand by:(CGSize)by anchor:(CGPoint)anchor;
- (CGSize)imageSize;
- (RemoteUITableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (double)webViewWidth;
- (id)_checkmarkImage:(BOOL)image;
- (id)_disclosureChevronImage:(BOOL)image;
- (id)_paddedImageWithImage:(id)image size:(CGSize)size insets:(UIEdgeInsets)insets;
- (id)editableTextField;
- (void)_accessoriesChanged;
- (void)_detailLinkPressed;
- (void)_setRemoteUIAccessoryType:(int64_t)type withColor:(id)color;
- (void)_showActivityIndicatorAccessory;
- (void)addDetailLinkButton:(id)button;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setActivityIndicatorVisible:(BOOL)visible;
- (void)setBadgeImage:(id)image tintColor:(id)color isCircular:(BOOL)circular;
- (void)setDetailLinkText:(id)text handler:(id)handler;
- (void)setHTMLData:(id)data sourceURL:(id)l delegate:(id)delegate;
- (void)setImage:(id)image padding:(UIEdgeInsets)padding tintColor:(id)color;
- (void)setRemoteUIAccessoryView:(id)view;
- (void)setRowInvalid:(BOOL)invalid;
- (void)setupDatePickerCellWithElement:(id)element renderPlaceHolder:(BOOL)holder date:(id)date dateFormatter:(id)formatter;
- (void)traitCollectionDidChange:(id)change;
- (void)updateConstraints;
@end

@implementation RemoteUITableViewCell

- (void)prepareForReuse
{
  [(RemoteUITableViewCell *)self setDetailLinkText:0 handler:0];
  [(RemoteUITableViewCell *)self setActivityIndicatorVisible:0];
  v3.receiver = self;
  v3.super_class = RemoteUITableViewCell;
  [(RemoteUITableViewCell *)&v3 prepareForReuse];
}

- (RemoteUITableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = RemoteUITableViewCell;
  v4 = [(RemoteUITableViewCell *)&v15 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D755E8]);
    badgeImageView = v4->_badgeImageView;
    v4->_badgeImageView = v5;

    [(UIImageView *)v4->_badgeImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(RemoteUITableViewCell *)v4 contentView];
    [contentView addSubview:v4->_badgeImageView];

    [(UIImageView *)v4->_badgeImageView setHidden:1];
    [(UIImageView *)v4->_badgeImageView setContentMode:1];
    v8 = MEMORY[0x277CCAAD0];
    widthAnchor = [(UIImageView *)v4->_badgeImageView widthAnchor];
    v10 = [widthAnchor constraintEqualToConstant:20.0];
    v16[0] = v10;
    heightAnchor = [(UIImageView *)v4->_badgeImageView heightAnchor];
    v12 = [heightAnchor constraintEqualToConstant:20.0];
    v16[1] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    [v8 activateConstraints:v13];

    [(RemoteUITableViewCell *)v4 updateConstraints];
  }

  return v4;
}

- (void)updateConstraints
{
  v18[2] = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = RemoteUITableViewCell;
  [(RemoteUITableViewCell *)&v17 updateConstraints];
  superview = [(UIImageView *)self->_badgeImageView superview];
  if (superview)
  {
    v4 = superview;
    imageView = [(RemoteUITableViewCell *)self imageView];
    superview2 = [imageView superview];

    if (superview2)
    {
      v7 = MEMORY[0x277CCAAD0];
      trailingAnchor = [(UIImageView *)self->_badgeImageView trailingAnchor];
      imageView2 = [(RemoteUITableViewCell *)self imageView];
      trailingAnchor2 = [imageView2 trailingAnchor];
      v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:8.0];
      v18[0] = v11;
      bottomAnchor = [(UIImageView *)self->_badgeImageView bottomAnchor];
      imageView3 = [(RemoteUITableViewCell *)self imageView];
      bottomAnchor2 = [imageView3 bottomAnchor];
      v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:6.0];
      v18[1] = v15;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
      [v7 activateConstraints:v16];
    }
  }
}

- (void)setImage:(id)image padding:(UIEdgeInsets)padding tintColor:(id)color
{
  right = padding.right;
  bottom = padding.bottom;
  left = padding.left;
  top = padding.top;
  imageCopy = image;
  colorCopy = color;
  image = self->_image;
  self->_image = imageCopy;
  v14 = imageCopy;

  self->_imagePadding.top = top;
  self->_imagePadding.left = left;
  self->_imagePadding.bottom = bottom;
  self->_imagePadding.right = right;
  imageTintColor = self->_imageTintColor;
  self->_imageTintColor = colorCopy;

  [(RemoteUITableViewCell *)self imageSize];
  v17 = [RemoteUITableViewCell _paddedImageWithImage:"_paddedImageWithImage:size:insets:" size:v14 insets:?];

  ruiImageView = [(UITableViewCell *)self ruiImageView];
  [ruiImageView setImage:v17];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  if (self->_image)
  {
    v11 = changeCopy;
    traitCollection = [(RemoteUITableViewCell *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];
    userInterfaceStyle2 = [v11 userInterfaceStyle];

    changeCopy = v11;
    if (userInterfaceStyle != userInterfaceStyle2)
    {
      image = self->_image;
      [(RemoteUITableViewCell *)self imageSize];
      v9 = [RemoteUITableViewCell _paddedImageWithImage:"_paddedImageWithImage:size:insets:" size:image insets:?];
      ruiImageView = [(UITableViewCell *)self ruiImageView];
      [ruiImageView setImage:v9];

      changeCopy = v11;
    }
  }
}

- (id)_paddedImageWithImage:(id)image size:(CGSize)size insets:(UIEdgeInsets)insets
{
  bottom = insets.bottom;
  right = insets.right;
  top = insets.top;
  left = insets.left;
  height = size.height;
  width = size.width;
  imageCopy = image;
  v9 = imageCopy;
  v10.f64[0] = top;
  v10.f64[1] = left;
  v11.f64[0] = bottom;
  v11.f64[1] = right;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v10, *MEMORY[0x277D768C8]), vceqq_f64(v11, *(MEMORY[0x277D768C8] + 16))))))
  {
    v18 = imageCopy;
  }

  else
  {
    v12 = objc_alloc(MEMORY[0x277D75560]);
    v13 = MEMORY[0x277D75568];
    traitCollection = [(RemoteUITableViewCell *)self traitCollection];
    v15 = [v13 formatForTraitCollection:traitCollection];
    v16 = [v12 initWithSize:v15 format:{width, height}];

    if (self->_imageTintColor)
    {
      v17 = [v9 imageWithTintColor:?];
    }

    else
    {
      v17 = v9;
    }

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __59__RemoteUITableViewCell__paddedImageWithImage_size_insets___block_invoke;
    v25[3] = &unk_2782E7EE0;
    v27 = width;
    v28 = height;
    v29 = top;
    v30 = left;
    v31 = bottom;
    v32 = right;
    v26 = v17;
    v19 = v17;
    v18 = [v16 imageWithActions:v25];
  }

  return v18;
}

void __59__RemoteUITableViewCell__paddedImageWithImage_size_insets___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v1 = *(a1 + 64);
  v3 = [*(a1 + 32) imageByPreparingThumbnailOfSize:{*(a1 + 40) - v1 - *(a1 + 80), *(a1 + 48) - v2 - *(a1 + 72)}];
  [v3 drawAtPoint:{v1, v2}];
}

- (void)_accessoriesChanged
{
  invalidRowView = self->_invalidRowView;
  remoteUIAccessoryView = self->_remoteUIAccessoryView;
  if (invalidRowView)
  {
    if (remoteUIAccessoryView)
    {
      v5 = *MEMORY[0x277CBF3A0];
      v6 = *(MEMORY[0x277CBF3A0] + 8);
      [(UIImageView *)invalidRowView frame];
      v8 = v7;
      v10 = v9;
      [(UIView *)self->_remoteUIAccessoryView frame];
      v13 = v11;
      v14 = v12;
      if (v10 >= v12)
      {
        v15 = v10;
      }

      else
      {
        v15 = v12;
      }

      v16 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v5, v6, v8 + v11 + 6.0, v15}];
      v17 = self->_invalidRowView;
      v23 = v16;
      [(UIImageView *)v23 addSubview:v17];
      [(UIImageView *)v23 addSubview:self->_remoteUIAccessoryView];

      v18 = v15 * 0.5 - v10 * 0.5;
      v19 = v15 * 0.5 - v14 * 0.5;
      v20 = roundf(v19);
      [(UIImageView *)self->_invalidRowView setFrame:v13 + 6.0, roundf(v18), v8, v10];
      [(UIView *)self->_remoteUIAccessoryView setFrame:0.0, v20, v13, v14];
      v21 = v23;
      goto LABEL_10;
    }

    v22 = invalidRowView;
  }

  else
  {
    v22 = remoteUIAccessoryView;
  }

  v21 = v22;
LABEL_10:
  v24 = v21;
  [(RemoteUITableViewCell *)self setAccessoryView:v21];
  [(RemoteUITableViewCell *)self setEditingAccessoryView:v24];
}

- (id)_checkmarkImage:(BOOL)image
{
  if (self->_accessoryColor)
  {
    v8.receiver = self;
    v8.super_class = RemoteUITableViewCell;
    v4 = [(RemoteUITableViewCell *)&v8 _checkmarkImage:image];
    v5 = [v4 _flatImageWithColor:self->_accessoryColor];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = RemoteUITableViewCell;
    v5 = [(RemoteUITableViewCell *)&v7 _checkmarkImage:image];
  }

  return v5;
}

- (id)_disclosureChevronImage:(BOOL)image
{
  if (self->_accessoryColor)
  {
    v8.receiver = self;
    v8.super_class = RemoteUITableViewCell;
    v4 = [(RemoteUITableViewCell *)&v8 _disclosureChevronImage:image];
    v5 = [v4 _flatImageWithColor:self->_accessoryColor];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = RemoteUITableViewCell;
    v5 = [(RemoteUITableViewCell *)&v7 _disclosureChevronImage:image];
  }

  return v5;
}

- (id)editableTextField
{
  v6.receiver = self;
  v6.super_class = RemoteUITableViewCell;
  editableTextField = [(RemoteUITableViewCell *)&v6 editableTextField];
  if (!self->_didSetupEditableTextFieldLargeText)
  {
    v4 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [editableTextField setFont:v4];

    [editableTextField setAdjustsFontSizeToFitWidth:1];
    self->_didSetupEditableTextFieldLargeText = 1;
  }

  return editableTextField;
}

- (void)_setRemoteUIAccessoryType:(int64_t)type withColor:(id)color
{
  self->_remoteUIAccessoryType = type;
  objc_storeStrong(&self->_accessoryColor, color);
  colorCopy = color;
  [(RemoteUITableViewCell *)self setAccessoryType:type];
  accessoryColor = self->_accessoryColor;
  self->_accessoryColor = 0;
}

- (void)setRemoteUIAccessoryView:(id)view
{
  viewCopy = view;
  if (self->_remoteUIAccessoryView != viewCopy)
  {
    v6 = viewCopy;
    objc_storeStrong(&self->_remoteUIAccessoryView, view);
    [(RemoteUITableViewCell *)self _accessoriesChanged];
    viewCopy = v6;
  }
}

- (void)setActivityIndicatorVisible:(BOOL)visible
{
  if (self->_activityIndicatorVisible != visible)
  {
    self->_activityIndicatorVisible = visible;
    if (visible)
    {

      [(RemoteUITableViewCell *)self _showActivityIndicatorAccessory];
    }

    else
    {
      [(RemoteUITableViewCell *)self setAccessoryView:0];
      [(RemoteUITableViewCell *)self setEditingAccessoryView:0];

      [(RemoteUITableViewCell *)self _accessoriesChanged];
    }
  }
}

- (void)_showActivityIndicatorAccessory
{
  v8 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  [v8 startAnimating];
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  [v8 bounds];
  v5 = v4 + 16.0;
  [v8 bounds];
  v6 = [v3 initWithFrame:{0.0, 0.0, v5}];
  [v6 addSubview:v8];
  [v6 bounds];
  MidX = CGRectGetMidX(v10);
  [v6 bounds];
  [v8 setCenter:{MidX, CGRectGetMidY(v11)}];
  [(RemoteUITableViewCell *)self setAccessoryView:v6];
  [(RemoteUITableViewCell *)self setEditingAccessoryView:v6];
}

- (void)setHTMLData:(id)data sourceURL:(id)l delegate:(id)delegate
{
  dataCopy = data;
  lCopy = l;
  delegateCopy = delegate;
  [(RUIWebContainerView *)self->_webContainerView removeFromSuperview];
  webContainerView = self->_webContainerView;
  self->_webContainerView = 0;

  if (dataCopy)
  {
    v11 = [[RUIWebContainerView alloc] initWithContent:dataCopy baseURL:lCopy];
    v12 = self->_webContainerView;
    self->_webContainerView = v11;

    [(RUIWebContainerView *)self->_webContainerView setDelegate:delegateCopy];
    contentView = [(RemoteUITableViewCell *)self contentView];
    [contentView addSubview:self->_webContainerView];
  }
}

- (void)_detailLinkPressed
{
  if (self->_detailLinkHandler)
  {
    [(RemoteUITableViewCell *)self _showActivityIndicatorAccessory];
    [(UIButton *)self->_detailLinkButton removeFromSuperview];
    [(RemoteUITableViewCell *)self setNeedsLayout];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__RemoteUITableViewCell__detailLinkPressed__block_invoke;
    block[3] = &unk_2782E7F30;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __43__RemoteUITableViewCell__detailLinkPressed__block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 1064));
  v3 = *(a1 + 32);
  v4 = *(v3 + 1064);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__RemoteUITableViewCell__detailLinkPressed__block_invoke_2;
  v7[3] = &unk_2782E7F08;
  v7[4] = v3;
  v8 = v2;
  v5 = *(v4 + 16);
  v6 = v2;
  v5(v4, v3, v7);
}

void __43__RemoteUITableViewCell__detailLinkPressed__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[133] == *(a1 + 40))
  {
    [v2 setAccessoryView:0];
    [*(a1 + 32) setEditingAccessoryView:0];
    v3 = *(a1 + 32);
    v4 = *(v3 + 1064);
    *(v3 + 1064) = 0;

    v5 = *(a1 + 32);
    v6 = [v5[132] titleForState:0];
    [v5 setDetailLinkText:v6 handler:*(a1 + 40)];
  }
}

- (void)addDetailLinkButton:(id)button
{
  contentView = [(RemoteUITableViewCell *)self contentView];
  [contentView addSubview:self->_detailLinkButton];
}

- (void)setDetailLinkText:(id)text handler:(id)handler
{
  textCopy = text;
  if (self->_detailLinkHandler != handler)
  {
    v18 = textCopy;
    v7 = [handler copy];
    detailLinkHandler = self->_detailLinkHandler;
    self->_detailLinkHandler = v7;

    if (self->_detailLinkHandler)
    {
      v9 = [MEMORY[0x277D75220] buttonWithType:1];
      detailLinkButton = self->_detailLinkButton;
      self->_detailLinkButton = v9;

      ruiDetailTextLabel = [(UITableViewCell *)self ruiDetailTextLabel];
      [ruiDetailTextLabel setText:v18];

      ruiDetailTextLabel2 = [(UITableViewCell *)self ruiDetailTextLabel];
      [ruiDetailTextLabel2 setHidden:1];

      [(UIButton *)self->_detailLinkButton setExclusiveTouch:1];
      [(UIButton *)self->_detailLinkButton addTarget:self action:sel__detailLinkPressed forControlEvents:64];
      [(UIButton *)self->_detailLinkButton setTitle:v18 forState:0];
      titleLabel = [(UIButton *)self->_detailLinkButton titleLabel];
      v14 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
      [titleLabel setFont:v14];

      [(RemoteUITableViewCell *)self addDetailLinkButton:self->_detailLinkButton];
    }

    else
    {
      ruiDetailTextLabel3 = [(UITableViewCell *)self ruiDetailTextLabel];
      [ruiDetailTextLabel3 setHidden:0];

      ruiDetailTextLabel4 = [(UITableViewCell *)self ruiDetailTextLabel];
      [ruiDetailTextLabel4 setText:0];

      [(UIButton *)self->_detailLinkButton removeFromSuperview];
      v17 = self->_detailLinkButton;
      self->_detailLinkButton = 0;
    }

    [(RemoteUITableViewCell *)self setNeedsLayout];
    textCopy = v18;
  }
}

- (CGRect)expand:(CGRect)expand by:(CGSize)by anchor:(CGPoint)anchor
{
  v5 = expand.origin.x - by.width * anchor.x;
  v6 = expand.origin.y - by.height * anchor.y;
  v7 = expand.size.width + by.width;
  v8 = expand.size.height + by.height;
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (BOOL)_tableIsGrouped
{
  _tableView = [(RemoteUITableViewCell *)self _tableView];
  if ([_tableView style] == 2)
  {
    v4 = 1;
  }

  else
  {
    _tableView2 = [(RemoteUITableViewCell *)self _tableView];
    v4 = [_tableView2 style] == 1;
  }

  return v4;
}

- (void)setBadgeImage:(id)image tintColor:(id)color isCircular:(BOOL)circular
{
  circularCopy = circular;
  badgeImageView = self->_badgeImageView;
  colorCopy = color;
  [(UIImageView *)badgeImageView setImage:image];
  [(UIImageView *)self->_badgeImageView setHidden:image == 0];
  [(UIImageView *)self->_badgeImageView setTintColor:colorCopy];

  v10 = self->_badgeImageView;
  if (circularCopy)
  {
    [(UIImageView *)v10 _setCornerRadius:10.0];
    [(UIImageView *)self->_badgeImageView setClipsToBounds:1];
    if ([(RemoteUITableViewCell *)self _tableIsGrouped])
    {
      tableCellGroupedBackgroundColor = [MEMORY[0x277D75348] tableCellGroupedBackgroundColor];
      cGColor = [tableCellGroupedBackgroundColor CGColor];
      layer = [(UIImageView *)self->_badgeImageView layer];
      [layer setBorderColor:cGColor];

      [MEMORY[0x277D75348] tableCellGroupedBackgroundColor];
    }

    else
    {
      tableCellPlainBackgroundColor = [MEMORY[0x277D75348] tableCellPlainBackgroundColor];
      cGColor2 = [tableCellPlainBackgroundColor CGColor];
      layer2 = [(UIImageView *)self->_badgeImageView layer];
      [layer2 setBorderColor:cGColor2];

      [MEMORY[0x277D75348] tableCellPlainBackgroundColor];
    }
    v19 = ;
    [(UIImageView *)self->_badgeImageView setBackgroundColor:v19];
  }

  else
  {
    [(UIImageView *)v10 _setCornerRadius:0.0];
    [(UIImageView *)self->_badgeImageView setClipsToBounds:1];
    layer3 = [(UIImageView *)self->_badgeImageView layer];
    [layer3 setBorderColor:0];

    v15 = self->_badgeImageView;

    [(UIImageView *)v15 setBackgroundColor:0];
  }
}

- (void)layoutSubviews
{
  v307[1] = *MEMORY[0x277D85DE8];
  v305.receiver = self;
  v305.super_class = RemoteUITableViewCell;
  [(RemoteUITableViewCell *)&v305 layoutSubviews];
  if ([(RemoteUITableViewCell *)self shouldSkipCustomLayout])
  {
    return;
  }

  contentView = [(RemoteUITableViewCell *)self contentView];
  superview = [contentView superview];
  contentView2 = [(RemoteUITableViewCell *)self contentView];
  [superview bringSubviewToFront:contentView2];

  superview2 = [(UIImageView *)self->_badgeImageView superview];
  [superview2 bringSubviewToFront:self->_badgeImageView];

  layoutManager = [(RemoteUITableViewCell *)self layoutManager];
  [(RemoteUITableViewCell *)self frame];
  [layoutManager textRectForCell:self rowWidth:0 forSizing:CGRectGetWidth(v308)];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  traitCollection = [(RemoteUITableViewCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  contentView3 = [(RemoteUITableViewCell *)self contentView];
  [contentView3 bounds];
  v21 = v20;
  v23 = v22;

  v24 = [MEMORY[0x277D75D18] userInterfaceLayoutDirectionForSemanticContentAttribute:{-[RemoteUITableViewCell semanticContentAttribute](self, "semanticContentAttribute")}];
  [(RemoteUITableViewCell *)self imageSize];
  v26 = v25;
  [(RemoteUITableViewCell *)self imageSize];
  v28 = v26 * v27;
  if (v26 * v27 != 0.0)
  {
    imageView = [(RemoteUITableViewCell *)self imageView];
    image = [imageView image];

    v31 = objc_alloc(MEMORY[0x277D75560]);
    [(RemoteUITableViewCell *)self imageSize];
    v32 = [v31 initWithSize:?];
    v302[0] = MEMORY[0x277D85DD0];
    v302[1] = 3221225472;
    v302[2] = __39__RemoteUITableViewCell_layoutSubviews__block_invoke;
    v302[3] = &unk_2782E7F58;
    v303 = image;
    selfCopy = self;
    v33 = image;
    v34 = [v32 imageWithActions:v302];
    imageView2 = [(RemoteUITableViewCell *)self imageView];
    [imageView2 setImage:v34];

    v301.receiver = self;
    v301.super_class = RemoteUITableViewCell;
    [(RemoteUITableViewCell *)&v301 layoutSubviews];
  }

  detailLinkButton = self->_detailLinkButton;
  if (detailLinkButton)
  {
    detailTextLabel = detailLinkButton;
  }

  else
  {
    detailTextLabel = [(RemoteUITableViewCell *)self detailTextLabel];
  }

  v38 = detailTextLabel;
  titleLabel = [(UIButton *)self->_detailLinkButton titleLabel];
  v40 = titleLabel;
  if (titleLabel)
  {
    detailTextLabel2 = titleLabel;
  }

  else
  {
    detailTextLabel2 = [(RemoteUITableViewCell *)self detailTextLabel];
  }

  v42 = detailTextLabel2;

  detailTextLabel3 = [(RemoteUITableViewCell *)self detailTextLabel];
  [detailTextLabel3 frame];
  [(UIButton *)v38 setFrame:?];

  [v42 setTextAlignment:2 * (v24 == 0)];
  [(UIButton *)v38 sizeThatFits:v21, v23];
  rect = v45;
  v294 = v44;
  v309.origin.x = v9;
  v309.origin.y = v11;
  v309.size.width = v13;
  v309.size.height = v15;
  MinX = CGRectGetMinX(v309);
  v310.origin.x = v9;
  v310.origin.y = v11;
  v310.size.width = v13;
  v310.size.height = v15;
  v299 = v21 - CGRectGetMaxX(v310);
  v300 = v15;
  if (!IsAccessibilityCategory)
  {
    v297 = v9;
    editableTextField = [(RemoteUITableViewCell *)self editableTextField];
    [editableTextField frame];
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;

    textLabel = [(RemoteUITableViewCell *)self textLabel];
    [textLabel frame];
    MidY = CGRectGetMidY(v311);

    v312.origin.x = v49;
    v312.origin.y = v51;
    v312.size.width = v53;
    v312.size.height = v55;
    v58 = v51 + MidY - CGRectGetMidY(v312);
    if (v24)
    {
      v59 = MinX;
      [(RemoteUITableViewCell *)self textFieldOffset];
      v61 = v21 - MinX - MinX - v60;
    }

    else
    {
      [(RemoteUITableViewCell *)self textFieldOffset];
      v59 = MinX + v62;
      v61 = v21 - (MinX + v62) - v299;
    }

    editableTextField2 = [(RemoteUITableViewCell *)self editableTextField];
    [editableTextField2 setFrame:{v59, v58, v61, v55}];

    v9 = v297;
  }

  accessoryView = [(RemoteUITableViewCell *)self accessoryView];
  if (accessoryView)
  {
    v65 = accessoryView;
    remoteUIAccessoryType = [(RemoteUITableViewCell *)self remoteUIAccessoryType];

    if (!remoteUIAccessoryType)
    {
      accessoryView2 = [(RemoteUITableViewCell *)self accessoryView];
      [accessoryView2 frame];
      v68 = v9;
      v70 = v69;
      v72 = v71;
      v74 = v73;
      v76 = v75;

      v77 = -6.0;
      if (!v24)
      {
        v77 = 6.0;
      }

      v78 = v77 + v70;
      accessoryView3 = [(RemoteUITableViewCell *)self accessoryView];
      v80 = v78;
      v9 = v68;
      [accessoryView3 setFrame:{v80, v72, v74, v76}];
    }
  }

  textLabel2 = [(RemoteUITableViewCell *)self textLabel];
  text = [textLabel2 text];
  v83 = [text length];

  editableTextField3 = [(RemoteUITableViewCell *)self editableTextField];
  v85 = editableTextField3;
  if (!v83)
  {
    [editableTextField3 frame];
    v141 = v140;
    v143 = v142;
    v145 = v144;
    v147 = v146;
    imageView3 = [(RemoteUITableViewCell *)self imageView];
    [imageView3 size];
    v150 = v149;

    if (v150 == 0.0)
    {
      contentView4 = [(RemoteUITableViewCell *)self contentView];
      [contentView4 bounds];
      MaxX = CGRectGetMaxX(v324);
    }

    else
    {
      contentView4 = [(RemoteUITableViewCell *)self imageView];
      [contentView4 frame];
      MaxX = CGRectGetMinX(v321);
    }

    v178 = MaxX;

    if (v24)
    {
      v325.origin.x = v141;
      v325.origin.y = v143;
      v325.size.width = v145;
      v325.size.height = v147;
      v179 = v145 + v178 - CGRectGetMaxX(v325) - MinX;
      v326.origin.x = v141;
      v326.origin.y = v143;
      v326.size.width = v179;
      v326.size.height = v147;
      MinX = v178 - CGRectGetWidth(v326) - MinX;
    }

    else
    {
      v179 = v145 + v141 - MinX;
    }

    [v85 setFrame:{MinX, v143, v179, v147}];

    goto LABEL_48;
  }

  v86 = editableTextField3 == 0 || IsAccessibilityCategory;

  if (!v86)
  {
    editableTextField4 = [(RemoteUITableViewCell *)self editableTextField];
    [editableTextField4 frame];
    v155 = v154;
    v157 = v156;
    v159 = v158;
    v161 = v160;

    textLabel3 = [(RemoteUITableViewCell *)self textLabel];
    [textLabel3 frame];
    v164 = v163;
    v166 = v165;
    v168 = v167;
    v170 = v169;

    if (v24)
    {
      v172 = v164 + -10.0;
    }

    else
    {
      v172 = v164;
    }

    v322.origin.x = v155;
    v322.origin.y = v157;
    v322.size.width = v159;
    v322.size.height = v161;
    v173 = v166;
    v174 = v170;
    v171 = v168 + 10.0;
    v323 = CGRectIntersection(v322, *&v172);
    width = v323.size.width;
    if (!CGRectIsNull(v323))
    {
      if (v24)
      {
        v176 = v155;
      }

      else
      {
        v176 = v155 + width;
      }

      editableTextField5 = [(RemoteUITableViewCell *)self editableTextField];
      [editableTextField5 setFrame:{v176, v157, v159 - width, v161}];
    }

    goto LABEL_48;
  }

  v289 = MinX;
  if (v38)
  {
    [v42 setTextAlignment:2 * (v24 != 0)];
    if (!IsAccessibilityCategory)
    {
      v298 = v9;
      [(UIButton *)v38 frame];
      x = v313.origin.x;
      y = v313.origin.y;
      v89 = v313.size.width;
      if (CGRectIsEmpty(v313))
      {
        v90 = x - (v294 - v89);
        if (v24)
        {
          v90 = x;
        }

        [(UIButton *)v38 setFrame:v90, y, v294, rect];
      }

      [(UIButton *)v38 frame];
      v92 = v91;
      v94 = v93;
      v96 = v95;
      textLabel4 = [(RemoteUITableViewCell *)self textLabel];
      [textLabel4 frame];
      v99 = v98;
      v101 = v100;
      v103 = v102;

      v314.origin.x = 0.0;
      v344.origin.x = 0.0;
      v314.origin.y = v92;
      v314.size.width = v94;
      v314.size.height = v96;
      v344.origin.y = v99;
      v344.size.width = v101;
      v344.size.height = v103;
      v315 = CGRectIntersection(v314, v344);
      if (!CGRectIsEmpty(v315))
      {
        if (self->_leftAlignDetailLabel)
        {
          [(UIButton *)v38 frame];
          v105 = v104;
          v107 = v106;
          v109 = v108;
          v111 = v110;
          textLabel5 = [(RemoteUITableViewCell *)self textLabel];
          [textLabel5 frame];
          v114 = v113;
          v116 = v115;
          v118 = v117;
          recta = v119;

          v120 = v114;
          v121 = v116;
          v122 = v118;
          if (v24)
          {
            v123 = recta;
            v124 = CGRectGetMinX(*&v120);
            v125 = v105;
            v126 = v124 + -20.0;
            v316.origin.x = v125;
            v316.origin.y = v107;
            v316.size.width = v109;
            v316.size.height = v111;
            v127 = v126 - CGRectGetWidth(v316);
            v317.origin.x = v127;
            v317.origin.y = v107;
            v317.size.width = v109;
            v317.size.height = v111;
            v128 = CGRectGetMaxX(v317);
            contentView5 = [(RemoteUITableViewCell *)self contentView];
            [contentView5 bounds];
            v130 = v107;
            v131 = CGRectGetMaxX(v318);
            [(RemoteUITableViewCell *)self textFieldOffset];
            v133 = v131 - v132;

            v134 = v109;
            v135 = v130;
            if (v128 > v133)
            {
              contentView6 = [(RemoteUITableViewCell *)self contentView];
              [contentView6 bounds];
              v137 = CGRectGetMaxX(v319);
              v320.origin.x = v127;
              v320.origin.y = v130;
              v320.size.width = v134;
              v320.size.height = v111;
              v138 = v137 - CGRectGetWidth(v320);
              [(RemoteUITableViewCell *)self textFieldOffset];
              v127 = v138 - v139;
            }
          }

          else
          {
            v186 = recta;
            v127 = CGRectGetMaxX(*&v120) + 20.0;
            [(RemoteUITableViewCell *)self textFieldOffset];
            v134 = v109;
            v135 = v107;
            if (v127 < v187)
            {
              [(RemoteUITableViewCell *)self textFieldOffset];
              v127 = v188;
            }
          }

          contentView7 = [(RemoteUITableViewCell *)self contentView];
          [contentView7 bounds];
          v190 = CGRectGetMaxX(v327) - v299;

          v328.origin.x = v127;
          v328.origin.y = v135;
          v328.size.width = v134;
          v328.size.height = v111;
          v191 = CGRectGetWidth(v328);
          if (v24)
          {
            v192 = v191;
            contentView8 = [(RemoteUITableViewCell *)self contentView];
            [contentView8 bounds];
            v194 = CGRectGetMaxX(v329);
            v330.origin.x = v127;
            v330.origin.y = v135;
            v330.size.width = v134;
            v330.size.height = v111;
            v195 = v194 - CGRectGetMaxX(v330);

            v196 = v190 - v195;
            v331.origin.x = v127;
            v331.origin.y = v135;
            v331.size.width = v190 - v195;
            v331.size.height = v111;
            v127 = v127 + v192 - CGRectGetWidth(v331);
          }

          else
          {
            v196 = v190 - v127;
          }

          [(UIButton *)v38 setFrame:v127, v135, v196, v111];
        }

        if (self->_forceFullSizeDetailLabel)
        {
          [(UIButton *)v38 frame];
          v198 = v197;
          v287 = v199;
          v201 = v200;
          rectb = v202;
          textLabel6 = [(RemoteUITableViewCell *)self textLabel];
          [textLabel6 frame];
          v205 = v204;
          v207 = v206;
          v209 = v208;
          v211 = v210;

          v212 = v21 - v289 - v299;
          if (v294 < v212)
          {
            v212 = v294;
          }

          v213 = ceil(v212 - v201);
          v214 = v201 + v213;
          v215 = v198 - v213;
          if (!v24)
          {
            v198 = v215;
          }

          v280 = v205;
          v281 = v209;
          v216 = v205;
          v295 = v207;
          v217 = v211;
          v218 = FARectRoundMetrics(v216);
          v220 = v219;
          v222 = v221;
          v224 = v223;
          v283 = v198;
          v345.origin.x = FARectRoundMetrics(v198);
          v345.origin.y = v225;
          v345.size.width = v226;
          v345.size.height = v227;
          v332.origin.x = v218;
          v332.origin.y = v220;
          v332.size.width = v222;
          v332.size.height = v224;
          v285 = v217;
          if (CGRectIntersectsRect(v332, v345))
          {
            v228 = v280;
            v333.origin.x = v280;
            v333.origin.y = v295;
            v333.size.width = v281;
            v333.size.height = v217;
            v229 = CGRectGetWidth(v333);
            if (v24)
            {
              v230 = v229;
              v334.origin.x = v280;
              v231 = v295;
              v334.origin.y = v295;
              v334.size.width = v281;
              v334.size.height = v285;
              v232 = CGRectGetMaxX(v334);
              v233 = v283;
              v335.origin.x = v283;
              v234 = v287;
              v335.origin.y = v287;
              v335.size.width = v214;
              v335.size.height = rectb;
              v235 = fmax(v232 - CGRectGetMaxX(v335) + -6.0, 0.0);
              v336.origin.x = v280;
              v336.origin.y = v295;
              v336.size.width = v235;
              v336.size.height = v285;
              v228 = v280 + v230 - CGRectGetWidth(v336);
            }

            else
            {
              v233 = v198;
              v337.origin.x = v198;
              v234 = v287;
              v337.origin.y = v287;
              v337.size.width = v214;
              v337.size.height = rectb;
              v236 = CGRectGetMinX(v337);
              v338.size.width = v281;
              v237 = v236 + -6.0;
              v338.origin.x = v280;
              v231 = v295;
              v338.origin.y = v295;
              v338.size.height = v217;
              v235 = fmax(v237 - CGRectGetMinX(v338), 0.0);
            }
          }

          else
          {
            v234 = v287;
            v228 = v280;
            v235 = v281;
            v231 = v295;
            v233 = v283;
          }

          [(UIButton *)v38 setFrame:v233, v234, v214, rectb];
          textLabel7 = [(RemoteUITableViewCell *)self textLabel];
          [textLabel7 setFrame:{v228, v231, v235, v285}];
        }

        if (!self->_leftAlignDetailLabel && !self->_forceFullSizeDetailLabel)
        {
          textLabel8 = [(RemoteUITableViewCell *)self textLabel];
          [textLabel8 frame];
          v241 = v240;
          v243 = v242;
          v245 = v244;
          v247 = v246;

          detailTextLabel4 = [(RemoteUITableViewCell *)self detailTextLabel];
          [detailTextLabel4 frame];
          v250 = v249;
          v252 = v251;
          v296 = v253;
          v255 = v254;

          v282 = v241;
          v339.origin.x = v241;
          v288 = v243;
          v339.origin.y = v243;
          v284 = v245;
          v339.size.width = v245;
          rectc = v247;
          v339.size.height = v247;
          v340 = CGRectInset(v339, -3.0, 0.0);
          v256 = v340.origin.x;
          v257 = v340.origin.y;
          v258 = v340.size.width;
          height = v340.size.height;
          v340.origin.x = v250;
          v286 = v252;
          v340.origin.y = v252;
          v260 = v255;
          v261 = v296;
          v340.size.width = v296;
          v340.size.height = v260;
          v346 = CGRectInset(v340, -3.0, 0.0);
          v341.origin.x = v256;
          v341.origin.y = v257;
          v341.size.width = v258;
          v341.size.height = height;
          v342 = CGRectIntersection(v341, v346);
          if (!CGRectIsEmpty(v342) || v296 < 40.0)
          {
            v262 = v284;
            if (v21 - v289 - v299 - v284 > 40.0)
            {
              v263 = v286;
              v264 = v282;
              v265 = v250;
LABEL_81:
              textLabel9 = [(RemoteUITableViewCell *)self textLabel];
              [textLabel9 setFrame:{v264, v288, v262, rectc}];

              [(UIButton *)v38 setFrame:v265, v263, v261, v260];
              goto LABEL_48;
            }

            detailTextLabel5 = [(RemoteUITableViewCell *)self detailTextLabel];
            text2 = [detailTextLabel5 text];
            v268 = [text2 length];

            v265 = v250;
            if (v268)
            {
              detailTextLabel6 = [(RemoteUITableViewCell *)self detailTextLabel];
              text3 = [detailTextLabel6 text];
              v306 = *MEMORY[0x277D740A8];
              detailTextLabel7 = [(RemoteUITableViewCell *)self detailTextLabel];
              font = [detailTextLabel7 font];
              v307[0] = font;
              v273 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v307 forKeys:&v306 count:1];
              [text3 sizeWithAttributes:v273];
              v275 = v274;

              v261 = fmin(v275, 40.0);
              if (v24)
              {
                v265 = v289;
                v343.origin.x = v289;
                v263 = v286;
                v343.origin.y = v286;
                v343.size.width = v261;
                v343.size.height = v260;
                v276 = CGRectGetMaxX(v343) + 6.0;
                v277 = v21 - v276;
                v264 = v276;
                v262 = v277 - v299;
                goto LABEL_81;
              }

              v278 = v21 - v299 - v261;
              v265 = floorf(v278);
              v262 = v265 + -6.0 - v298;
            }

            v263 = v286;
            v264 = v282;
            goto LABEL_81;
          }
        }
      }
    }
  }

LABEL_48:
  [(RemoteUITableViewCell *)self webViewWidth];
  v181 = v180;
  [(RUIWebContainerView *)self->_webContainerView heightForWidth:?];
  if (v300 >= v182)
  {
    v183 = v182;
  }

  else
  {
    v183 = v300;
  }

  [(RemoteUITableViewCell *)self bounds];
  v185 = (v184 - v183) * 0.5;
  [(RUIWebContainerView *)self->_webContainerView setFrame:20.0, floorf(v185), v181, v183];
}

uint64_t __39__RemoteUITableViewCell_layoutSubviews__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) imageSize];
  v4 = v3;
  [*(a1 + 40) imageSize];

  return [v2 drawInRect:{0.0, 0.0, v4, v5}];
}

- (double)webViewWidth
{
  layoutManager = [(RemoteUITableViewCell *)self layoutManager];
  [(RemoteUITableViewCell *)self frame];
  [layoutManager textRectForCell:self rowWidth:0 forSizing:CGRectGetWidth(v7)];
  v5 = v4;

  return v5;
}

- (void)setRowInvalid:(BOOL)invalid
{
  invalidRowView = self->_invalidRowView;
  if (invalid)
  {
    if (!invalidRowView)
    {
      v5 = MEMORY[0x277D755B8];
      v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v7 = [v5 imageNamed:@"NotVerified" inBundle:v6];
      imageFlippedForRightToLeftLayoutDirection = [v7 imageFlippedForRightToLeftLayoutDirection];

      v8 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:imageFlippedForRightToLeftLayoutDirection];
      v9 = self->_invalidRowView;
      self->_invalidRowView = v8;

      [(RemoteUITableViewCell *)self _accessoriesChanged];
    }
  }

  else if (invalidRowView)
  {
    self->_invalidRowView = 0;

    [(RemoteUITableViewCell *)self _accessoriesChanged];
  }
}

- (CGSize)imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setupDatePickerCellWithElement:(id)element renderPlaceHolder:(BOOL)holder date:(id)date dateFormatter:(id)formatter
{
  holderCopy = holder;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9E2F0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v19 - v12;
  if (date)
  {
    sub_21BA8650C();
    v14 = sub_21BA8651C();
    (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  }

  else
  {
    v15 = sub_21BA8651C();
    (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  }

  elementCopy = element;
  formatterCopy = formatter;
  selfCopy = self;
  RemoteUITableViewCell.setupDatePickerCell(element:renderPlaceHolder:date:dateFormatter:)(elementCopy, holderCopy, v13, formatterCopy);

  sub_21B9FA910(v13);
}

@end