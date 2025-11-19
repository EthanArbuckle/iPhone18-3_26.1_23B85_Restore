@interface PBFFocusPosterCell
+ (CGSize)estimatedCellSizeForItemWidth:(double)a3 screen:(id)a4 hasAccessory:(BOOL)a5;
- (CGRect)posterPreviewFrame;
- (PBFFocusPosterCell)initWithCoder:(id)a3;
- (PBFFocusPosterCell)initWithFrame:(CGRect)a3;
- (PBFPosterPreviewGenerator)posterPreviewGenerator;
- (id)makeComplicationsPortalView;
- (void)createCheckboxViewIfNecessary;
- (void)createConstraints;
- (void)createFocusSymbolViewIfNecessary;
- (void)createPosterView;
- (void)createPreviewComplicationContentView;
- (void)createShadowView;
- (void)setActionType:(int64_t)a3;
- (void)setCheckboxOn:(BOOL)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setFocusSymbolImageName:(id)a3;
- (void)setLayoutOrientation:(int64_t)a3;
- (void)setPosterImage:(id)a3;
- (void)setPosterPreview:(id)a3;
@end

@implementation PBFFocusPosterCell

+ (CGSize)estimatedCellSizeForItemWidth:(double)a3 screen:(id)a4 hasAccessory:(BOOL)a5
{
  v5 = a5;
  v9 = a4;
  if (!v9)
  {
    [PBFFocusPosterCell estimatedCellSizeForItemWidth:a2 screen:a1 hasAccessory:?];
  }

  v10 = v9;
  [v9 bounds];
  if (v5)
  {
    v13 = v12 / v11 * a3 + 54.0;
  }

  else
  {
    v13 = v12 / v11 * a3;
  }

  v14 = a3;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (PBFFocusPosterCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PBFFocusPosterCell;
  v3 = [(PBFFocusPosterCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (PBFFocusPosterCell)initWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCA890];
  v5 = a3;
  v6 = [v4 currentHandler];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PBFFocusPosterCell initWithCoder:]"];
  [v6 handleFailureInFunction:v7 file:@"PBFFocusPosterCell.m" lineNumber:72 description:{@"%s: not supported", "-[PBFFocusPosterCell initWithCoder:]"}];

  v10.receiver = self;
  v10.super_class = PBFFocusPosterCell;
  v8 = [(PBFFocusPosterCell *)&v10 initWithCoder:v5];

  return v8;
}

- (void)createShadowView
{
  v3 = objc_opt_new();
  shadowView = self->_shadowView;
  self->_shadowView = v3;

  [(UIView *)self->_shadowView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_shadowView _setContinuousCornerRadius:16.0];
  v5 = [(UIView *)self->_shadowView layer];
  [v5 setShadowPathIsBounds:1];

  v6 = [(UIView *)self->_shadowView layer];
  v7 = [MEMORY[0x277D75348] blackColor];
  [v6 setShadowColor:{objc_msgSend(v7, "CGColor")}];

  v8 = [(UIView *)self->_shadowView layer];
  [v8 setShadowOffset:{0.0, 4.0}];

  v9 = [(UIView *)self->_shadowView layer];
  [v9 setShadowRadius:10.0];

  v10 = [(UIView *)self->_shadowView layer];
  LODWORD(v11) = 1036831949;
  [v10 setShadowOpacity:v11];

  v12 = [(PBFFocusPosterCell *)self contentView];
  [v12 addSubview:self->_shadowView];

  v13 = [(PBFFocusPosterCell *)self contentView];
  [v13 sendSubviewToBack:self->_shadowView];
}

- (void)createPosterView
{
  v3 = objc_opt_new();
  posterView = self->_posterView;
  self->_posterView = v3;

  [(UIImageView *)self->_posterView setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = self->_posterView;
  v6 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  [(UIImageView *)v5 setBackgroundColor:v6];

  [(UIImageView *)self->_posterView setClipsToBounds:1];
  [(UIImageView *)self->_posterView _setContinuousCornerRadius:16.0];
  v7 = [(PBFFocusPosterCell *)self contentView];
  [v7 addSubview:self->_posterView];
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
  v6 = [(PBFFocusPosterCell *)self contentView];
  [v6 addSubview:self->_posterPreviewComplicationContentView];
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
    v5 = [(PBFFocusPosterCell *)self contentView];
    [v5 addSubview:self->_checkboxView];

    v16 = MEMORY[0x277CCAAD0];
    v17 = [(PBFFocusCheckboxView *)self->_checkboxView centerXAnchor];
    v6 = [(UIImageView *)self->_posterView centerXAnchor];
    v7 = [v17 constraintEqualToAnchor:v6];
    v18[0] = v7;
    v8 = [(PBFFocusCheckboxView *)self->_checkboxView topAnchor];
    v9 = [(UIImageView *)self->_posterView bottomAnchor];
    v10 = [v8 constraintEqualToAnchor:v9 constant:10.0];
    v18[1] = v10;
    v11 = [(PBFFocusCheckboxView *)self->_checkboxView bottomAnchor];
    v12 = [(PBFFocusPosterCell *)self contentView];
    v13 = [v12 bottomAnchor];
    v14 = [v11 constraintEqualToAnchor:v13];
    v18[2] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
    [v16 activateConstraints:v15];
  }
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = PBFFocusPosterCell;
  [(PBFFocusPosterCell *)&v8 setUserInteractionEnabled:?];
  v5 = [(PBFFocusPosterCell *)self contentView];
  v6 = v5;
  v7 = 0.5;
  if (v3)
  {
    v7 = 1.0;
  }

  [v5 setAlpha:v7];
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
    v6 = [MEMORY[0x277D75348] whiteColor];
    [(UIImageView *)v5 setTintColor:v6];

    [(UIImageView *)self->_focusSymbolView setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [(UIImageView *)self->_focusSymbolView layer];
    v8 = [MEMORY[0x277D75348] blackColor];
    [v7 setShadowColor:{objc_msgSend(v8, "CGColor")}];

    v9 = [(UIImageView *)self->_focusSymbolView layer];
    [v9 setShadowOffset:{0.0, 1.0}];

    v10 = [(UIImageView *)self->_focusSymbolView layer];
    [v10 setShadowRadius:4.0];

    v11 = [(UIImageView *)self->_focusSymbolView layer];
    LODWORD(v12) = 1045220557;
    [v11 setShadowOpacity:v12];

    v13 = [(PBFFocusPosterCell *)self contentView];
    [v13 addSubview:self->_focusSymbolView];

    v14 = MEMORY[0x277CCAAD0];
    v15 = [(UIImageView *)self->_focusSymbolView centerXAnchor];
    v16 = [(UIImageView *)self->_posterView centerXAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];
    v22[0] = v17;
    v18 = [(UIImageView *)self->_focusSymbolView bottomAnchor];
    v19 = [(UIImageView *)self->_posterView bottomAnchor];
    v20 = [v18 constraintEqualToAnchor:v19 constant:-12.0];
    v22[1] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
    [v14 activateConstraints:v21];
  }
}

- (void)createConstraints
{
  v47[12] = *MEMORY[0x277D85DE8];
  v3 = [(UIImageView *)self->_posterView bottomAnchor];
  v4 = [(PBFFocusPosterCell *)self contentView];
  v5 = [v4 bottomAnchor];
  v6 = [v3 constraintEqualToAnchor:v5];

  LODWORD(v7) = 1144733696;
  v40 = v6;
  [v6 setPriority:v7];
  v30 = MEMORY[0x277CCAAD0];
  v45 = [(UIImageView *)self->_posterView leadingAnchor];
  v46 = [(PBFFocusPosterCell *)self contentView];
  v44 = [v46 leadingAnchor];
  v43 = [v45 constraintEqualToAnchor:v44];
  v47[0] = v43;
  v41 = [(UIImageView *)self->_posterView topAnchor];
  v42 = [(PBFFocusPosterCell *)self contentView];
  v39 = [v42 topAnchor];
  v38 = [v41 constraintEqualToAnchor:v39];
  v47[1] = v38;
  v36 = [(UIImageView *)self->_posterView trailingAnchor];
  v37 = [(PBFFocusPosterCell *)self contentView];
  v35 = [v37 trailingAnchor];
  v34 = [v36 constraintEqualToAnchor:v35];
  v47[2] = v34;
  v47[3] = v6;
  v33 = [(UIView *)self->_shadowView leadingAnchor];
  v32 = [(UIImageView *)self->_posterView leadingAnchor];
  v31 = [v33 constraintEqualToAnchor:v32];
  v47[4] = v31;
  v29 = [(UIView *)self->_shadowView topAnchor];
  v28 = [(UIImageView *)self->_posterView topAnchor];
  v27 = [v29 constraintEqualToAnchor:v28];
  v47[5] = v27;
  v26 = [(UIView *)self->_shadowView trailingAnchor];
  v25 = [(UIImageView *)self->_posterView trailingAnchor];
  v24 = [v26 constraintEqualToAnchor:v25];
  v47[6] = v24;
  v23 = [(UIView *)self->_shadowView bottomAnchor];
  v22 = [(UIImageView *)self->_posterView bottomAnchor];
  v21 = [v23 constraintEqualToAnchor:v22];
  v47[7] = v21;
  v20 = [(PBFPosterGalleryPreviewComplicationContentView *)self->_posterPreviewComplicationContentView leadingAnchor];
  v19 = [(UIImageView *)self->_posterView leadingAnchor];
  v18 = [v20 constraintEqualToAnchor:v19];
  v47[8] = v18;
  v8 = [(PBFPosterGalleryPreviewComplicationContentView *)self->_posterPreviewComplicationContentView topAnchor];
  v9 = [(UIImageView *)self->_posterView topAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v47[9] = v10;
  v11 = [(PBFPosterGalleryPreviewComplicationContentView *)self->_posterPreviewComplicationContentView trailingAnchor];
  v12 = [(UIImageView *)self->_posterView trailingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  v47[10] = v13;
  v14 = [(PBFPosterGalleryPreviewComplicationContentView *)self->_posterPreviewComplicationContentView bottomAnchor];
  v15 = [(UIImageView *)self->_posterView bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];
  v47[11] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:12];
  [v30 activateConstraints:v17];
}

- (void)setActionType:(int64_t)a3
{
  if (self->_actionType != a3)
  {
    self->_actionType = a3;
    if (a3 == 1)
    {

      [(PBFFocusPosterCell *)self createCheckboxViewIfNecessary];
    }

    else if (!a3)
    {
      [(PBFFocusCheckboxView *)self->_checkboxView removeFromSuperview];
      checkboxView = self->_checkboxView;
      self->_checkboxView = 0;
    }
  }
}

- (void)setPosterPreview:(id)a3
{
  v5 = a3;
  if (self->_posterPreview != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_posterPreview, a3);
    [(PBFPosterGalleryPreviewComplicationContentView *)self->_posterPreviewComplicationContentView setLayoutOrientation:[(PBFFocusPosterCell *)self layoutOrientation]];
    [(PBFPosterGalleryPreviewComplicationContentView *)self->_posterPreviewComplicationContentView setPosterPreview:v8];
    posterPreviewComplicationContentView = self->_posterPreviewComplicationContentView;
    v7 = [(PBFFocusPosterCell *)self posterPreviewGenerator];
    [(PBFPosterGalleryPreviewComplicationContentView *)posterPreviewComplicationContentView prepareComplicationPreviewWithGenerator:v7];

    v5 = v8;
  }
}

- (void)setPosterImage:(id)a3
{
  v5 = a3;
  if (self->_posterImage != v5)
  {
    v14 = v5;
    objc_storeStrong(&self->_posterImage, a3);
    [(UIImageView *)self->_posterView setImage:v14];
    [(NSLayoutConstraint *)self->_posterViewHeightConstraint setActive:0];
    posterViewHeightConstraint = self->_posterViewHeightConstraint;
    self->_posterViewHeightConstraint = 0;

    if (v14)
    {
      [(UIImage *)v14 size];
      v9 = v8 / v7;
      v10 = [(UIImageView *)self->_posterView heightAnchor];
      v11 = [(UIImageView *)self->_posterView widthAnchor];
      v12 = [v10 constraintEqualToAnchor:v11 multiplier:v9 constant:0.0];
      v13 = self->_posterViewHeightConstraint;
      self->_posterViewHeightConstraint = v12;

      [(NSLayoutConstraint *)self->_posterViewHeightConstraint setActive:1];
    }

    [(PBFFocusPosterCell *)self setNeedsLayout];
    v5 = v14;
  }
}

- (void)setFocusSymbolImageName:(id)a3
{
  v9 = a3;
  if ((BSEqualStrings() & 1) == 0)
  {
    v4 = [v9 copy];
    focusSymbolImageName = self->_focusSymbolImageName;
    self->_focusSymbolImageName = v4;

    if (v9)
    {
      [(PBFFocusPosterCell *)self createFocusSymbolViewIfNecessary];
      v6 = [MEMORY[0x277D755D0] configurationWithScale:2];
      focusSymbolView = self->_focusSymbolView;
      v8 = [MEMORY[0x277D755B8] _systemImageNamed:v9 withConfiguration:v6];
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

- (void)setCheckboxOn:(BOOL)a3
{
  if (self->_checkboxOn != a3)
  {
    self->_checkboxOn = a3;
    [(PBFFocusCheckboxView *)self->_checkboxView setOn:?];
  }
}

- (void)setLayoutOrientation:(int64_t)a3
{
  if (self->_layoutOrientation != a3)
  {
    self->_layoutOrientation = a3;
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