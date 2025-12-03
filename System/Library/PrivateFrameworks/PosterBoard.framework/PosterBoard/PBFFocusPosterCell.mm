@interface PBFFocusPosterCell
+ (CGSize)estimatedCellSizeForItemWidth:(double)width screen:(id)screen hasAccessory:(BOOL)accessory;
- (CGRect)posterPreviewFrame;
- (PBFFocusPosterCell)initWithCoder:(id)coder;
- (PBFFocusPosterCell)initWithFrame:(CGRect)frame;
- (PBFPosterPreviewGenerator)posterPreviewGenerator;
- (id)makeComplicationsPortalView;
- (void)createCheckboxViewIfNecessary;
- (void)createConstraints;
- (void)createFocusSymbolViewIfNecessary;
- (void)createPosterView;
- (void)createPreviewComplicationContentView;
- (void)createShadowView;
- (void)setActionType:(int64_t)type;
- (void)setCheckboxOn:(BOOL)on;
- (void)setEnabled:(BOOL)enabled;
- (void)setFocusSymbolImageName:(id)name;
- (void)setLayoutOrientation:(int64_t)orientation;
- (void)setPosterImage:(id)image;
- (void)setPosterPreview:(id)preview;
@end

@implementation PBFFocusPosterCell

+ (CGSize)estimatedCellSizeForItemWidth:(double)width screen:(id)screen hasAccessory:(BOOL)accessory
{
  accessoryCopy = accessory;
  screenCopy = screen;
  if (!screenCopy)
  {
    [PBFFocusPosterCell estimatedCellSizeForItemWidth:a2 screen:self hasAccessory:?];
  }

  v10 = screenCopy;
  [screenCopy bounds];
  if (accessoryCopy)
  {
    v13 = v12 / v11 * width + 54.0;
  }

  else
  {
    v13 = v12 / v11 * width;
  }

  widthCopy = width;
  v15 = v13;
  result.height = v15;
  result.width = widthCopy;
  return result;
}

- (PBFFocusPosterCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PBFFocusPosterCell;
  v3 = [(PBFFocusPosterCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PBFFocusPosterCell *)v3 createShadowView];
    [(PBFFocusPosterCell *)v4 createPosterView];
    [(PBFFocusPosterCell *)v4 createPreviewComplicationContentView];
    [(PBFFocusPosterCell *)v4 createConstraints];
  }

  return v4;
}

- (PBFFocusPosterCell)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCA890];
  coderCopy = coder;
  currentHandler = [v4 currentHandler];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PBFFocusPosterCell initWithCoder:]"];
  [currentHandler handleFailureInFunction:v7 file:@"PBFFocusPosterCell.m" lineNumber:72 description:{@"%s: not supported", "-[PBFFocusPosterCell initWithCoder:]"}];

  v10.receiver = self;
  v10.super_class = PBFFocusPosterCell;
  v8 = [(PBFFocusPosterCell *)&v10 initWithCoder:coderCopy];

  return v8;
}

- (void)createShadowView
{
  v3 = objc_opt_new();
  shadowView = self->_shadowView;
  self->_shadowView = v3;

  [(UIView *)self->_shadowView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_shadowView _setContinuousCornerRadius:16.0];
  layer = [(UIView *)self->_shadowView layer];
  [layer setShadowPathIsBounds:1];

  layer2 = [(UIView *)self->_shadowView layer];
  blackColor = [MEMORY[0x277D75348] blackColor];
  [layer2 setShadowColor:{objc_msgSend(blackColor, "CGColor")}];

  layer3 = [(UIView *)self->_shadowView layer];
  [layer3 setShadowOffset:{0.0, 4.0}];

  layer4 = [(UIView *)self->_shadowView layer];
  [layer4 setShadowRadius:10.0];

  layer5 = [(UIView *)self->_shadowView layer];
  LODWORD(v11) = 1036831949;
  [layer5 setShadowOpacity:v11];

  contentView = [(PBFFocusPosterCell *)self contentView];
  [contentView addSubview:self->_shadowView];

  contentView2 = [(PBFFocusPosterCell *)self contentView];
  [contentView2 sendSubviewToBack:self->_shadowView];
}

- (void)createPosterView
{
  v3 = objc_opt_new();
  posterView = self->_posterView;
  self->_posterView = v3;

  [(UIImageView *)self->_posterView setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = self->_posterView;
  secondarySystemBackgroundColor = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  [(UIImageView *)v5 setBackgroundColor:secondarySystemBackgroundColor];

  [(UIImageView *)self->_posterView setClipsToBounds:1];
  [(UIImageView *)self->_posterView _setContinuousCornerRadius:16.0];
  contentView = [(PBFFocusPosterCell *)self contentView];
  [contentView addSubview:self->_posterView];
}

- (void)createPreviewComplicationContentView
{
  v3 = [PBFPosterGalleryPreviewComplicationContentView alloc];
  v4 = [(PBFPosterGalleryPreviewComplicationContentView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  posterPreviewComplicationContentView = self->_posterPreviewComplicationContentView;
  self->_posterPreviewComplicationContentView = v4;

  [(PBFPosterGalleryPreviewComplicationContentView *)self->_posterPreviewComplicationContentView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PBFPosterGalleryPreviewComplicationContentView *)self->_posterPreviewComplicationContentView setPreferredCornerRadius:1];
  [(PBFPosterGalleryPreviewComplicationContentView *)self->_posterPreviewComplicationContentView setLayoutOrientation:[(PBFFocusPosterCell *)self layoutOrientation]];
  contentView = [(PBFFocusPosterCell *)self contentView];
  [contentView addSubview:self->_posterPreviewComplicationContentView];
}

- (void)createCheckboxViewIfNecessary
{
  v18[3] = *MEMORY[0x277D85DE8];
  if (!self->_checkboxView)
  {
    v3 = objc_opt_new();
    checkboxView = self->_checkboxView;
    self->_checkboxView = v3;

    [(PBFFocusCheckboxView *)self->_checkboxView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PBFFocusCheckboxView *)self->_checkboxView setOn:self->_checkboxOn];
    contentView = [(PBFFocusPosterCell *)self contentView];
    [contentView addSubview:self->_checkboxView];

    v16 = MEMORY[0x277CCAAD0];
    centerXAnchor = [(PBFFocusCheckboxView *)self->_checkboxView centerXAnchor];
    centerXAnchor2 = [(UIImageView *)self->_posterView centerXAnchor];
    v7 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v18[0] = v7;
    topAnchor = [(PBFFocusCheckboxView *)self->_checkboxView topAnchor];
    bottomAnchor = [(UIImageView *)self->_posterView bottomAnchor];
    v10 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:10.0];
    v18[1] = v10;
    bottomAnchor2 = [(PBFFocusCheckboxView *)self->_checkboxView bottomAnchor];
    contentView2 = [(PBFFocusPosterCell *)self contentView];
    bottomAnchor3 = [contentView2 bottomAnchor];
    v14 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v18[2] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
    [v16 activateConstraints:v15];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v8.receiver = self;
  v8.super_class = PBFFocusPosterCell;
  [(PBFFocusPosterCell *)&v8 setUserInteractionEnabled:?];
  contentView = [(PBFFocusPosterCell *)self contentView];
  v6 = contentView;
  v7 = 0.5;
  if (enabledCopy)
  {
    v7 = 1.0;
  }

  [contentView setAlpha:v7];
}

- (void)createFocusSymbolViewIfNecessary
{
  v22[2] = *MEMORY[0x277D85DE8];
  if (!self->_focusSymbolView)
  {
    v3 = objc_alloc_init(MEMORY[0x277D755E8]);
    focusSymbolView = self->_focusSymbolView;
    self->_focusSymbolView = v3;

    v5 = self->_focusSymbolView;
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(UIImageView *)v5 setTintColor:whiteColor];

    [(UIImageView *)self->_focusSymbolView setTranslatesAutoresizingMaskIntoConstraints:0];
    layer = [(UIImageView *)self->_focusSymbolView layer];
    blackColor = [MEMORY[0x277D75348] blackColor];
    [layer setShadowColor:{objc_msgSend(blackColor, "CGColor")}];

    layer2 = [(UIImageView *)self->_focusSymbolView layer];
    [layer2 setShadowOffset:{0.0, 1.0}];

    layer3 = [(UIImageView *)self->_focusSymbolView layer];
    [layer3 setShadowRadius:4.0];

    layer4 = [(UIImageView *)self->_focusSymbolView layer];
    LODWORD(v12) = 1045220557;
    [layer4 setShadowOpacity:v12];

    contentView = [(PBFFocusPosterCell *)self contentView];
    [contentView addSubview:self->_focusSymbolView];

    v14 = MEMORY[0x277CCAAD0];
    centerXAnchor = [(UIImageView *)self->_focusSymbolView centerXAnchor];
    centerXAnchor2 = [(UIImageView *)self->_posterView centerXAnchor];
    v17 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v22[0] = v17;
    bottomAnchor = [(UIImageView *)self->_focusSymbolView bottomAnchor];
    bottomAnchor2 = [(UIImageView *)self->_posterView bottomAnchor];
    v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-12.0];
    v22[1] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
    [v14 activateConstraints:v21];
  }
}

- (void)createConstraints
{
  v47[12] = *MEMORY[0x277D85DE8];
  bottomAnchor = [(UIImageView *)self->_posterView bottomAnchor];
  contentView = [(PBFFocusPosterCell *)self contentView];
  bottomAnchor2 = [contentView bottomAnchor];
  v6 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];

  LODWORD(v7) = 1144733696;
  v40 = v6;
  [v6 setPriority:v7];
  v30 = MEMORY[0x277CCAAD0];
  leadingAnchor = [(UIImageView *)self->_posterView leadingAnchor];
  contentView2 = [(PBFFocusPosterCell *)self contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  v43 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v47[0] = v43;
  topAnchor = [(UIImageView *)self->_posterView topAnchor];
  contentView3 = [(PBFFocusPosterCell *)self contentView];
  topAnchor2 = [contentView3 topAnchor];
  v38 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v47[1] = v38;
  trailingAnchor = [(UIImageView *)self->_posterView trailingAnchor];
  contentView4 = [(PBFFocusPosterCell *)self contentView];
  trailingAnchor2 = [contentView4 trailingAnchor];
  v34 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v47[2] = v34;
  v47[3] = v6;
  leadingAnchor3 = [(UIView *)self->_shadowView leadingAnchor];
  leadingAnchor4 = [(UIImageView *)self->_posterView leadingAnchor];
  v31 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v47[4] = v31;
  topAnchor3 = [(UIView *)self->_shadowView topAnchor];
  topAnchor4 = [(UIImageView *)self->_posterView topAnchor];
  v27 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v47[5] = v27;
  trailingAnchor3 = [(UIView *)self->_shadowView trailingAnchor];
  trailingAnchor4 = [(UIImageView *)self->_posterView trailingAnchor];
  v24 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v47[6] = v24;
  bottomAnchor3 = [(UIView *)self->_shadowView bottomAnchor];
  bottomAnchor4 = [(UIImageView *)self->_posterView bottomAnchor];
  v21 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v47[7] = v21;
  leadingAnchor5 = [(PBFPosterGalleryPreviewComplicationContentView *)self->_posterPreviewComplicationContentView leadingAnchor];
  leadingAnchor6 = [(UIImageView *)self->_posterView leadingAnchor];
  v18 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v47[8] = v18;
  topAnchor5 = [(PBFPosterGalleryPreviewComplicationContentView *)self->_posterPreviewComplicationContentView topAnchor];
  topAnchor6 = [(UIImageView *)self->_posterView topAnchor];
  v10 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v47[9] = v10;
  trailingAnchor5 = [(PBFPosterGalleryPreviewComplicationContentView *)self->_posterPreviewComplicationContentView trailingAnchor];
  trailingAnchor6 = [(UIImageView *)self->_posterView trailingAnchor];
  v13 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v47[10] = v13;
  bottomAnchor5 = [(PBFPosterGalleryPreviewComplicationContentView *)self->_posterPreviewComplicationContentView bottomAnchor];
  bottomAnchor6 = [(UIImageView *)self->_posterView bottomAnchor];
  v16 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  v47[11] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:12];
  [v30 activateConstraints:v17];
}

- (void)setActionType:(int64_t)type
{
  if (self->_actionType != type)
  {
    self->_actionType = type;
    if (type == 1)
    {

      [(PBFFocusPosterCell *)self createCheckboxViewIfNecessary];
    }

    else if (!type)
    {
      [(PBFFocusCheckboxView *)self->_checkboxView removeFromSuperview];
      checkboxView = self->_checkboxView;
      self->_checkboxView = 0;
    }
  }
}

- (void)setPosterPreview:(id)preview
{
  previewCopy = preview;
  if (self->_posterPreview != previewCopy)
  {
    v8 = previewCopy;
    objc_storeStrong(&self->_posterPreview, preview);
    [(PBFPosterGalleryPreviewComplicationContentView *)self->_posterPreviewComplicationContentView setLayoutOrientation:[(PBFFocusPosterCell *)self layoutOrientation]];
    [(PBFPosterGalleryPreviewComplicationContentView *)self->_posterPreviewComplicationContentView setPosterPreview:v8];
    posterPreviewComplicationContentView = self->_posterPreviewComplicationContentView;
    posterPreviewGenerator = [(PBFFocusPosterCell *)self posterPreviewGenerator];
    [(PBFPosterGalleryPreviewComplicationContentView *)posterPreviewComplicationContentView prepareComplicationPreviewWithGenerator:posterPreviewGenerator];

    previewCopy = v8;
  }
}

- (void)setPosterImage:(id)image
{
  imageCopy = image;
  if (self->_posterImage != imageCopy)
  {
    v14 = imageCopy;
    objc_storeStrong(&self->_posterImage, image);
    [(UIImageView *)self->_posterView setImage:v14];
    [(NSLayoutConstraint *)self->_posterViewHeightConstraint setActive:0];
    posterViewHeightConstraint = self->_posterViewHeightConstraint;
    self->_posterViewHeightConstraint = 0;

    if (v14)
    {
      [(UIImage *)v14 size];
      v9 = v8 / v7;
      heightAnchor = [(UIImageView *)self->_posterView heightAnchor];
      widthAnchor = [(UIImageView *)self->_posterView widthAnchor];
      v12 = [heightAnchor constraintEqualToAnchor:widthAnchor multiplier:v9 constant:0.0];
      v13 = self->_posterViewHeightConstraint;
      self->_posterViewHeightConstraint = v12;

      [(NSLayoutConstraint *)self->_posterViewHeightConstraint setActive:1];
    }

    [(PBFFocusPosterCell *)self setNeedsLayout];
    imageCopy = v14;
  }
}

- (void)setFocusSymbolImageName:(id)name
{
  nameCopy = name;
  if ((BSEqualStrings() & 1) == 0)
  {
    v4 = [nameCopy copy];
    focusSymbolImageName = self->_focusSymbolImageName;
    self->_focusSymbolImageName = v4;

    if (nameCopy)
    {
      [(PBFFocusPosterCell *)self createFocusSymbolViewIfNecessary];
      v6 = [MEMORY[0x277D755D0] configurationWithScale:2];
      focusSymbolView = self->_focusSymbolView;
      v8 = [MEMORY[0x277D755B8] _systemImageNamed:nameCopy withConfiguration:v6];
      [(UIImageView *)focusSymbolView setImage:v8];
    }

    else
    {
      [(UIImageView *)self->_focusSymbolView removeFromSuperview];
      v6 = self->_focusSymbolView;
      self->_focusSymbolView = 0;
    }
  }
}

- (void)setCheckboxOn:(BOOL)on
{
  if (self->_checkboxOn != on)
  {
    self->_checkboxOn = on;
    [(PBFFocusCheckboxView *)self->_checkboxView setOn:?];
  }
}

- (void)setLayoutOrientation:(int64_t)orientation
{
  if (self->_layoutOrientation != orientation)
  {
    self->_layoutOrientation = orientation;
    [(PBFPosterGalleryPreviewComplicationContentView *)self->_posterPreviewComplicationContentView setLayoutOrientation:?];
  }
}

- (CGRect)posterPreviewFrame
{
  [(UIImageView *)self->_posterView frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (id)makeComplicationsPortalView
{
  v2 = [objc_alloc(MEMORY[0x277D76180]) initWithSourceView:self->_posterPreviewComplicationContentView];
  [v2 setHidesSourceView:0];
  [v2 setMatchesPosition:0];
  [v2 setMatchesTransform:0];
  [v2 setAllowsBackdropGroups:1];

  return v2;
}

- (PBFPosterPreviewGenerator)posterPreviewGenerator
{
  WeakRetained = objc_loadWeakRetained(&self->_posterPreviewGenerator);

  return WeakRetained;
}

+ (void)estimatedCellSizeForItemWidth:(const char *)a1 screen:(uint64_t)a2 hasAccessory:.cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"screen != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"PBFFocusPosterCell.m";
    v16 = 1024;
    v17 = 46;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21B526000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end