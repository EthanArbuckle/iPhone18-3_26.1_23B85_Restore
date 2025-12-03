@interface STSVideoCell
- (STSVideoCell)initWithFrame:(CGRect)frame;
- (void)_didPressPlay;
- (void)_updateHiddenViewsAnimated:(BOOL)animated;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setFrame:(CGRect)frame;
- (void)setImage:(id)image animated:(BOOL)animated;
- (void)updateConstraints;
@end

@implementation STSVideoCell

- (STSVideoCell)initWithFrame:(CGRect)frame
{
  v51.receiver = self;
  v51.super_class = STSVideoCell;
  v3 = [(STSImageCell *)&v51 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    contentView = [(STSVideoCell *)v3 contentView];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [contentView setBackgroundColor:whiteColor];

    array = [MEMORY[0x277CBEB18] array];
    constraints = v4->_constraints;
    v4->_constraints = array;

    v9 = objc_alloc(MEMORY[0x277D75D18]);
    v10 = *MEMORY[0x277CBF3A0];
    v11 = *(MEMORY[0x277CBF3A0] + 8);
    v12 = *(MEMORY[0x277CBF3A0] + 16);
    v13 = *(MEMORY[0x277CBF3A0] + 24);
    v14 = [v9 initWithFrame:{*MEMORY[0x277CBF3A0], v11, v12, v13}];
    footerContainer = v4->_footerContainer;
    v4->_footerContainer = v14;

    v16 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v10, v11, v12, v13}];
    providerIconView = v4->_providerIconView;
    v4->_providerIconView = v16;

    [(UIImageView *)v4->_providerIconView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v4->_providerIconView setContentMode:4];
    v18 = MEMORY[0x277D755B8];
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v50 = [v18 imageNamed:@"play-icon" inBundle:v19];

    v20 = [MEMORY[0x277D75220] buttonWithType:0];
    playButton = v4->_playButton;
    v4->_playButton = v20;

    [(UIButton *)v4->_playButton setImage:v50 forState:0];
    [(UIButton *)v4->_playButton setImageEdgeInsets:10.0, 10.0, 10.0, 10.0];
    [(UIButton *)v4->_playButton addTarget:v4 action:sel__didPressPlay forControlEvents:64];
    v22 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v10, v11, v12, v13}];
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v22;

    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v24 = v4->_titleLabel;
    v25 = [MEMORY[0x277D74300] boldSystemFontOfSize:14.5];
    [(UILabel *)v24 setFont:v25];

    v26 = v4->_titleLabel;
    sts_primaryResultTextColor = [MEMORY[0x277D75348] sts_primaryResultTextColor];
    [(UILabel *)v26 setTextColor:sts_primaryResultTextColor];

    [(UILabel *)v4->_titleLabel setNumberOfLines:2];
    v28 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v10, v11, v12, v13}];
    subtitleLabel = v4->_subtitleLabel;
    v4->_subtitleLabel = v28;

    [(UILabel *)v4->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v30 = v4->_subtitleLabel;
    v31 = [MEMORY[0x277D74300] systemFontOfSize:13.0];
    [(UILabel *)v30 setFont:v31];

    v32 = v4->_subtitleLabel;
    sts_secondaryResultTextColor = [MEMORY[0x277D75348] sts_secondaryResultTextColor];
    [(UILabel *)v32 setTextColor:sts_secondaryResultTextColor];

    [(UILabel *)v4->_subtitleLabel setNumberOfLines:2];
    v34 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v10, v11, v12, v13}];
    providerLabel = v4->_providerLabel;
    v4->_providerLabel = v34;

    [(UILabel *)v4->_providerLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v36 = v4->_providerLabel;
    v37 = [MEMORY[0x277D74300] boldSystemFontOfSize:11.0];
    [(UILabel *)v36 setFont:v37];

    v38 = v4->_providerLabel;
    sts_primaryResultTextColor2 = [MEMORY[0x277D75348] sts_primaryResultTextColor];
    [(UILabel *)v38 setTextColor:sts_primaryResultTextColor2];

    v40 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v10, v11, v12, v13}];
    durationLabel = v4->_durationLabel;
    v4->_durationLabel = v40;

    [(UILabel *)v4->_durationLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v42 = v4->_durationLabel;
    v43 = [MEMORY[0x277D74300] systemFontOfSize:11.0];
    [(UILabel *)v42 setFont:v43];

    v44 = v4->_durationLabel;
    sts_secondaryResultTextColor2 = [MEMORY[0x277D75348] sts_secondaryResultTextColor];
    [(UILabel *)v44 setTextColor:sts_secondaryResultTextColor2];

    LODWORD(v46) = 1148846080;
    [(UILabel *)v4->_durationLabel setContentCompressionResistancePriority:0 forAxis:v46];
    [(UIView *)v4->_footerContainer addSubview:v4->_providerIconView];
    [(UIView *)v4->_footerContainer addSubview:v4->_providerLabel];
    [(UIView *)v4->_footerContainer addSubview:v4->_durationLabel];
    [(UIView *)v4->_footerContainer addSubview:v4->_subtitleLabel];
    [(UIView *)v4->_footerContainer addSubview:v4->_titleLabel];
    contentView2 = [(STSVideoCell *)v4 contentView];
    [contentView2 addSubview:v4->_footerContainer];

    contentView3 = [(STSVideoCell *)v4 contentView];
    [contentView3 addSubview:v4->_playButton];

    [(STSVideoCell *)v4 _updateHiddenViewsAnimated:0];
    [(STSVideoCell *)v4 updateConstraints];
  }

  return v4;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = STSVideoCell;
  [(STSImageCell *)&v3 prepareForReuse];
  [(STSVideoCell *)self setPlayButtonAction:0];
}

- (void)layoutSubviews
{
  v31.receiver = self;
  v31.super_class = STSVideoCell;
  [(STSImageCell *)&v31 layoutSubviews];
  [(STSVideoCell *)self bounds];
  v29 = v4;
  v30 = v3;
  v27 = v6;
  v28 = v5;
  [(STSImageCell *)self imageFrame];
  x = v32.origin.x;
  y = v32.origin.y;
  width = v32.size.width;
  height = v32.size.height;
  MaxX = CGRectGetMaxX(v32);
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  MaxY = CGRectGetMaxY(v33);
  v13 = [(UIButton *)self->_playButton imageForState:0];
  [v13 size];
  v15 = v14;
  v17 = v16;

  [(UIButton *)self->_playButton imageEdgeInsets];
  v20 = v15 + v18 + v19;
  v23 = v17 + v21 + v22;
  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  v24 = CGRectGetMaxY(v34);
  v35.origin.x = v30;
  v35.origin.y = v29;
  v35.size.width = v28;
  v35.size.height = v27;
  v25 = CGRectGetHeight(v35) - v24;
  v36.origin.x = v30;
  v36.origin.y = v29;
  v36.size.width = v28;
  v36.size.height = v27;
  v26 = CGRectGetWidth(v36);
  [(UIButton *)self->_playButton setFrame:MaxX - v20 + 5.0, MaxY - v23 + 5.0, v20, v23];
  [(UIView *)self->_footerContainer setFrame:0.0, v24, v26, v25];
}

- (void)updateConstraints
{
  [(STSVideoCell *)self removeConstraints:self->_constraints];
  [(NSMutableArray *)self->_constraints removeAllObjects];
  v11.receiver = self;
  v11.super_class = STSVideoCell;
  [(STSVideoCell *)&v11 updateConstraints];
  v3 = _NSDictionaryOfVariableBindings(&cfstr_TitlelabelSubt.isa, self->_titleLabel, self->_subtitleLabel, self->_providerIconView, self->_providerLabel, self->_durationLabel, 0);
  v4 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-9-[_titleLabel]-(>=5)-|" options:0 metrics:0 views:v3];
  v5 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-9-[_subtitleLabel]-(>=9)-|" options:0 metrics:0 views:v3];
  v6 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-(8.5)-[_titleLabel]-0-[_subtitleLabel]-(>=5)-|" options:0 metrics:0 views:v3];
  v7 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-9-[_providerIconView(20)]-5-[_providerLabel]-(>=10)-[_durationLabel]-9-|" options:0 metrics:0 views:v3];
  v8 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-(>=5)-[_providerIconView(20)]-(4.5)-|" options:0 metrics:0 views:v3];
  v9 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-(>=5)-[_providerLabel]-7-|" options:0 metrics:0 views:v3];
  v10 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-(>=5)-[_durationLabel]-7-|" options:0 metrics:0 views:v3];
  [(NSMutableArray *)self->_constraints addObjectsFromArray:v4];
  [(NSMutableArray *)self->_constraints addObjectsFromArray:v5];
  [(NSMutableArray *)self->_constraints addObjectsFromArray:v6];
  [(NSMutableArray *)self->_constraints addObjectsFromArray:v7];
  [(NSMutableArray *)self->_constraints addObjectsFromArray:v8];
  [(NSMutableArray *)self->_constraints addObjectsFromArray:v9];
  [(NSMutableArray *)self->_constraints addObjectsFromArray:v10];
  [MEMORY[0x277CCAAD0] activateConstraints:self->_constraints];
}

- (void)setFrame:(CGRect)frame
{
  v21.receiver = self;
  v21.super_class = STSVideoCell;
  [(STSVideoCell *)&v21 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  contentView = [(STSVideoCell *)self contentView];
  [contentView bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  contentView2 = [(STSVideoCell *)self contentView];
  [contentView2 layoutMargins];
  v15 = v8 + v14;
  v18 = v10 - (v16 + v17);
  v22.size.height = v12 - (v14 + v19);
  v22.origin.x = v6 + v16;
  v22.origin.y = v15;
  v22.size.width = v18;
  Width = CGRectGetWidth(v22);

  [(UILabel *)self->_titleLabel setPreferredMaxLayoutWidth:Width];
  [(UILabel *)self->_subtitleLabel setPreferredMaxLayoutWidth:Width];
}

- (void)setImage:(id)image animated:(BOOL)animated
{
  animatedCopy = animated;
  v6.receiver = self;
  v6.super_class = STSVideoCell;
  [(STSImageCell *)&v6 setImage:image animated:?];
  [(STSVideoCell *)self _updateHiddenViewsAnimated:animatedCopy];
}

- (void)_didPressPlay
{
  playButtonAction = [(STSVideoCell *)self playButtonAction];

  if (playButtonAction)
  {
    playButtonAction2 = [(STSVideoCell *)self playButtonAction];
    playButtonAction2[2]();
  }
}

- (void)_updateHiddenViewsAnimated:(BOOL)animated
{
  image = [(STSImageCell *)self image];
  if (image)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  playButton = self->_playButton;

  [(UIButton *)playButton setAlpha:v5];
}

@end