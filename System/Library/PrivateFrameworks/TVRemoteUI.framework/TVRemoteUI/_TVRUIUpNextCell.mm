@interface _TVRUIUpNextCell
- (BOOL)hasURLForProductPageKind:(int64_t)kind;
- (_TVRUIUpNextCell)initWithFrame:(CGRect)frame;
- (_TVRUIUpNextViewControllerActionDelegate)delegate;
- (id)_actionButton;
- (id)_actionMenu;
- (id)_seasonEpisodeFormatString;
- (id)_secondaryTextForUpNextInfo:(id)info;
- (id)urlForProductPageKind:(int64_t)kind;
- (void)_configureHierarchy;
- (void)_updateForUpNextInfo:(id)info;
- (void)_updateLayoutConstraintsForCurrentSizeCategory;
- (void)_updateLayoutConstraintsForStackedLayout:(BOOL)layout;
- (void)_updateSeparatorVisibility;
- (void)actionButtonTapped:(id)tapped;
- (void)layoutSubviews;
- (void)openProductPageForKind:(int64_t)kind;
- (void)openURL:(id)l;
- (void)prepareForReuse;
- (void)setUpNextInfo:(id)info;
@end

@implementation _TVRUIUpNextCell

- (_TVRUIUpNextCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _TVRUIUpNextCell;
  v3 = [(_TVRUIUpNextCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(_TVRUIUpNextCell *)v3 _configureHierarchy];
    [(_TVRUIUpNextCell *)v4 setShowsSeparator:1];
  }

  return v4;
}

- (void)prepareForReuse
{
  v9.receiver = self;
  v9.super_class = _TVRUIUpNextCell;
  [(_TVRUIUpNextCell *)&v9 prepareForReuse];
  imageView = [(_TVRUIUpNextCell *)self imageView];
  [imageView setImage:0];

  channelImageView = [(_TVRUIUpNextCell *)self channelImageView];
  [channelImageView setImage:0];

  titleLabel = [(_TVRUIUpNextCell *)self titleLabel];
  [titleLabel setText:0];

  secondaryLabel = [(_TVRUIUpNextCell *)self secondaryLabel];
  [secondaryLabel setText:0];

  [(_TVRUIUpNextCell *)self setShowsSeparator:1];
  [(_TVRUIUpNextCell *)self _updateLayoutConstraintsForCurrentSizeCategory];
  contentView = [(_TVRUIUpNextCell *)self contentView];
  [contentView setNeedsLayout];

  contentView2 = [(_TVRUIUpNextCell *)self contentView];
  [contentView2 layoutIfNeeded];
}

- (void)setUpNextInfo:(id)info
{
  objc_storeStrong(&self->_upNextInfo, info);
  infoCopy = info;
  [(_TVRUIUpNextCell *)self _updateForUpNextInfo:infoCopy];
}

- (void)layoutSubviews
{
  v23.receiver = self;
  v23.super_class = _TVRUIUpNextCell;
  [(_TVRUIUpNextCell *)&v23 layoutSubviews];
  gradientView = [(_TVRUIUpNextCell *)self gradientView];
  [gradientView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  gradientLayer = [(_TVRUIUpNextCell *)self gradientLayer];
  [gradientLayer setFrame:{v5, v7, v9, v11}];

  imageView = [(_TVRUIUpNextCell *)self imageView];
  [imageView bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  attributionMaskImageView = [(_TVRUIUpNextCell *)self attributionMaskImageView];
  [attributionMaskImageView setFrame:{v15, v17, v19, v21}];
}

- (void)_configureHierarchy
{
  v279[2] = *MEMORY[0x277D85DE8];
  v251 = +[_TVRUIUpNextCell isSolariumLayout];
  v3 = objc_alloc(MEMORY[0x277D755E8]);
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v8 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], v5, v6, v7}];
  v255 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v4, v5, v6, v7}];
  v9 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v4, v5, v6, v7}];
  v267 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v4, v5, v6, v7}];
  v10 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v4, v5, v6, v7}];
  v260 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v4, v5, v6, v7}];
  _actionButton = [(_TVRUIUpNextCell *)self _actionButton];
  v263 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v4, v5, v6, v7}];
  LODWORD(v11) = 1148846080;
  [(UIButton *)_actionButton setContentHuggingPriority:0 forAxis:v11];
  v12 = objc_alloc_init(MEMORY[0x277D75D18]);
  [(UIView *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  layer = [MEMORY[0x277CD9EB0] layer];
  blackColor = [MEMORY[0x277D75348] blackColor];
  v15 = [blackColor colorWithAlphaComponent:0.0];
  v279[0] = [v15 CGColor];
  blackColor2 = [MEMORY[0x277D75348] blackColor];
  v17 = [blackColor2 colorWithAlphaComponent:0.8];
  v279[1] = [v17 CGColor];
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v279 count:2];
  [(CAGradientLayer *)layer setColors:v18];

  [(CAGradientLayer *)layer setStartPoint:0.5, 0.0];
  [(CAGradientLayer *)layer setEndPoint:0.5, 1.0];
  layer2 = [(UIView *)v12 layer];
  v254 = layer;
  [layer2 insertSublayer:layer atIndex:0];

  v262 = v12;
  [(UIImageView *)v8 addSubview:v12];
  v20 = [objc_alloc(MEMORY[0x277D758F0]) initWithProgressViewStyle:0];
  [(UIProgressView *)v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  v21 = [MEMORY[0x277D75348] colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  [(UIProgressView *)v20 setProgressTintColor:v21];

  v22 = [MEMORY[0x277D75348] colorWithRed:0.847058824 green:0.847058824 blue:0.847058824 alpha:0.4];
  [(UIProgressView *)v20 setTrackTintColor:v22];

  LODWORD(v23) = 0.5;
  [(UIProgressView *)v20 setProgress:v23];
  v261 = v20;
  [(UIImageView *)v8 addSubview:v20];
  contentView = [(_TVRUIUpNextCell *)self contentView];
  v25 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
  [contentView addSubview:v25];
  v26 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  [(UILabel *)v9 setFont:v26];

  [(UILabel *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  labelColor = [MEMORY[0x277D75348] labelColor];
  [(UILabel *)v9 setTextColor:labelColor];

  [(UILabel *)v9 setNumberOfLines:2];
  [(UILabel *)v9 setAdjustsFontForContentSizeCategory:1];
  [(UILabel *)v9 setAdjustsFontSizeToFitWidth:1];
  LODWORD(v28) = 1148846080;
  [(UILabel *)v9 setContentHuggingPriority:1 forAxis:v28];
  v258 = v9;
  [v25 addSubview:v9];
  v29 = *MEMORY[0x277D76938];
  v30 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
  [(UILabel *)v267 setFont:v30];

  [(UILabel *)v267 setTranslatesAutoresizingMaskIntoConstraints:0];
  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [(UILabel *)v267 setTextColor:secondaryLabelColor];

  [(UILabel *)v267 setNumberOfLines:2];
  [(UILabel *)v267 setAdjustsFontForContentSizeCategory:1];
  LODWORD(v32) = 1148846080;
  [(UILabel *)v267 setContentHuggingPriority:1 forAxis:v32];
  [v25 addSubview:v267];
  v33 = [MEMORY[0x277D74300] preferredFontForTextStyle:v29];
  [(UILabel *)v10 setFont:v33];

  [(UILabel *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  secondaryLabelColor2 = [MEMORY[0x277D75348] secondaryLabelColor];
  [(UILabel *)v10 setTextColor:secondaryLabelColor2];

  [(UILabel *)v10 setNumberOfLines:1];
  [(UILabel *)v10 setAdjustsFontForContentSizeCategory:1];
  LODWORD(v35) = 1148846080;
  [(UILabel *)v10 setContentHuggingPriority:1 forAxis:v35];
  [v25 addSubview:v10];
  v257 = v10;
  [(UILabel *)v10 setHidden:!v251];
  if (v251)
  {
    v36 = 12.0;
  }

  else
  {
    v36 = 8.0;
  }

  v37 = [MEMORY[0x277D75348] colorWithWhite:0.25 alpha:1.0];
  [(UIView *)v260 setBackgroundColor:v37];

  [(UIImageView *)v8 _setContinuousCornerRadius:v36];
  [(UIImageView *)v8 setClipsToBounds:1];
  [(UIImageView *)v8 setContentMode:2];
  [(UIImageView *)v263 setHidden:1];
  v272 = 0u;
  v273 = 0u;
  v270 = 0u;
  v271 = 0u;
  v265 = v8;
  v277[0] = v8;
  v38 = v25;
  v277[1] = v25;
  v277[2] = _actionButton;
  v277[3] = v260;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v277 count:4];
  v40 = [v39 countByEnumeratingWithState:&v270 objects:v278 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v271;
    do
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v271 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = *(*(&v270 + 1) + 8 * i);
        [v44 setTranslatesAutoresizingMaskIntoConstraints:0];
        [contentView addSubview:v44];
      }

      v41 = [v39 countByEnumeratingWithState:&v270 objects:v278 count:16];
    }

    while (v41);
  }

  heightAnchor = [contentView heightAnchor];
  v46 = [heightAnchor constraintEqualToConstant:0.0];

  LODWORD(v47) = 1132068864;
  [v46 setPriority:v47];
  v229 = v46;
  v211 = v38;
  if ([objc_opt_class() isStackedLayout])
  {
    topAnchor = [(UIImageView *)v8 topAnchor];
    topAnchor2 = [contentView topAnchor];
    v199 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:8.0];
    v276[0] = v199;
    leadingAnchor = [(UIImageView *)v8 leadingAnchor];
    [contentView leadingAnchor];
    v250 = v252 = leadingAnchor;
    v249 = [leadingAnchor constraintEqualToAnchor:20.0 constant:?];
    v276[1] = v249;
    widthAnchor = [(UIImageView *)v8 widthAnchor];
    v247 = [widthAnchor constraintEqualToConstant:117.0];
    v276[2] = v247;
    heightAnchor2 = [(UIImageView *)v8 heightAnchor];
    v245 = [heightAnchor2 constraintEqualToConstant:66.0];
    v276[3] = v245;
    v50 = v38;
    topAnchor3 = [v38 topAnchor];
    [(UIImageView *)v265 bottomAnchor];
    trailingAnchor10 = leadingAnchor10 = topAnchor3;
    v243 = [topAnchor3 constraintEqualToAnchor:2.0 constant:?];
    v276[4] = v243;
    leadingAnchor2 = [v38 leadingAnchor];
    [contentView leadingAnchor];
    v241 = v242 = leadingAnchor2;
    v240 = [leadingAnchor2 constraintEqualToAnchor:20.0 constant:?];
    v276[5] = v240;
    trailingAnchor = [v38 trailingAnchor];
    [contentView trailingAnchor];
    v238 = v239 = trailingAnchor;
    v237 = [trailingAnchor constraintEqualToAnchor:-20.0 constant:?];
    v276[6] = v237;
    bottomAnchor = [v38 bottomAnchor];
    [contentView bottomAnchor];
    v235 = heightAnchor8 = bottomAnchor;
    heightAnchor9 = [bottomAnchor constraintEqualToAnchor:?];
    v276[7] = heightAnchor9;
    v55 = v258;
    topAnchor4 = [(UILabel *)v258 topAnchor];
    [v38 topAnchor];
    heightAnchor10 = v233 = topAnchor4;
    heightAnchor11 = [topAnchor4 constraintEqualToAnchor:heightAnchor10];
    v276[8] = heightAnchor11;
    leadingAnchor3 = [(UILabel *)v258 leadingAnchor];
    [v50 leadingAnchor];
    heightAnchor12 = v231 = leadingAnchor3;
    heightAnchor13 = [leadingAnchor3 constraintEqualToAnchor:heightAnchor12];
    v276[9] = heightAnchor13;
    trailingAnchor2 = [(UILabel *)v258 trailingAnchor];
    [v50 trailingAnchor];
    topAnchor6 = v227 = trailingAnchor2;
    topAnchor7 = [trailingAnchor2 constraintEqualToAnchor:topAnchor6];
    v276[10] = topAnchor7;
    topAnchor5 = [(UILabel *)v267 topAnchor];
    [(UILabel *)v258 bottomAnchor];
    leadingAnchor11 = v225 = topAnchor5;
    leadingAnchor12 = [topAnchor5 constraintEqualToAnchor:leadingAnchor11 constant:2.0];
    v276[11] = leadingAnchor12;
    leadingAnchor4 = [(UILabel *)v267 leadingAnchor];
    [v50 leadingAnchor];
    trailingAnchor12 = v223 = leadingAnchor4;
    trailingAnchor13 = [leadingAnchor4 constraintEqualToAnchor:trailingAnchor12];
    v276[12] = trailingAnchor13;
    trailingAnchor3 = [(UILabel *)v267 trailingAnchor];
    [v50 trailingAnchor];
    topAnchor8 = v220 = trailingAnchor3;
    bottomAnchor7 = [trailingAnchor3 constraintEqualToAnchor:topAnchor8];
    v276[13] = bottomAnchor7;
    bottomAnchor2 = [(UILabel *)v267 bottomAnchor];
    [v50 bottomAnchor];
    leadingAnchor13 = v217 = bottomAnchor2;
    leadingAnchor14 = [bottomAnchor2 constraintEqualToAnchor:leadingAnchor13];
    v276[14] = leadingAnchor14;
    v63 = _actionButton;
    centerYAnchor = [(UIButton *)_actionButton centerYAnchor];
    [(UIImageView *)v265 centerYAnchor];
    trailingAnchor14 = v214 = centerYAnchor;
    trailingAnchor15 = [centerYAnchor constraintEqualToAnchor:trailingAnchor14];
    v276[15] = trailingAnchor15;
    trailingAnchor4 = [(UIButton *)_actionButton trailingAnchor];
    [contentView trailingAnchor];
    v210 = v195 = trailingAnchor4;
    bottomAnchor8 = [trailingAnchor4 constraintEqualToAnchor:-20.0 constant:?];
    v276[16] = bottomAnchor8;
    widthAnchor2 = [(UIButton *)_actionButton widthAnchor];
    v207 = [widthAnchor2 constraintEqualToConstant:44.0];
    v276[17] = v207;
    heightAnchor3 = [(UIButton *)_actionButton heightAnchor];
    v205 = [heightAnchor3 constraintEqualToConstant:44.0];
    v276[18] = v205;
    leadingAnchor5 = [(UIView *)v260 leadingAnchor];
    [(UILabel *)v258 leadingAnchor];
    trailingAnchor17 = v204 = leadingAnchor5;
    v202 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor17];
    v276[19] = v202;
    heightAnchor4 = [(UIView *)v260 heightAnchor];
    bottomAnchor10 = [heightAnchor4 constraintEqualToConstant:0.5];
    v276[20] = bottomAnchor10;
    trailingAnchor5 = [(UIView *)v260 trailingAnchor];
    [(UIButton *)_actionButton trailingAnchor];
    centerYAnchor4 = heightAnchor19 = trailingAnchor5;
    centerYAnchor5 = [trailingAnchor5 constraintEqualToAnchor:centerYAnchor4];
    v276[21] = centerYAnchor5;
    bottomAnchor3 = [(UIView *)v260 bottomAnchor];
    [contentView bottomAnchor];
    v194 = leadingAnchor23 = bottomAnchor3;
    trailingAnchor19 = [bottomAnchor3 constraintEqualToAnchor:-0.5 constant:?];
    v276[22] = trailingAnchor19;
    leadingAnchor6 = [(UIView *)v262 leadingAnchor];
    [(UIImageView *)v265 leadingAnchor];
    widthAnchor3 = v192 = leadingAnchor6;
    trailingAnchor28 = [leadingAnchor6 constraintEqualToAnchor:widthAnchor3];
    v276[23] = trailingAnchor28;
    trailingAnchor6 = [(UIView *)v262 trailingAnchor];
    trailingAnchor7 = [(UIImageView *)v265 trailingAnchor];
    heightAnchor14 = trailingAnchor6;
    v72 = trailingAnchor6;
    v73 = trailingAnchor7;
    bottomAnchor19 = [v72 constraintEqualToAnchor:trailingAnchor7];
    v276[24] = bottomAnchor19;
    bottomAnchor4 = [(UIView *)v262 bottomAnchor];
    [(UIImageView *)v265 bottomAnchor];
    v183 = leadingAnchor17 = bottomAnchor4;
    heightAnchor15 = [bottomAnchor4 constraintEqualToAnchor:?];
    v276[25] = heightAnchor15;
    heightAnchor5 = [(UIView *)v262 heightAnchor];
    heightAnchor6 = [(UIImageView *)v265 heightAnchor];
    v181 = heightAnchor5;
    trailingAnchor21 = [heightAnchor5 constraintEqualToAnchor:0.3 multiplier:?];
    v276[26] = trailingAnchor21;
    leadingAnchor7 = [(UIProgressView *)v20 leadingAnchor];
    leadingAnchor8 = [(UIImageView *)v265 leadingAnchor];
    v178 = leadingAnchor7;
    v78 = leadingAnchor7;
    v79 = leadingAnchor8;
    bottomAnchor12 = [v78 constraintEqualToAnchor:leadingAnchor8 constant:8.0];
    v276[27] = bottomAnchor12;
    trailingAnchor8 = [(UIProgressView *)v20 trailingAnchor];
    trailingAnchor9 = [(UIImageView *)v265 trailingAnchor];
    v176 = trailingAnchor8;
    v82 = trailingAnchor8;
    v83 = trailingAnchor9;
    leadingAnchor19 = [v82 constraintEqualToAnchor:trailingAnchor9 constant:-8.0];
    v276[28] = leadingAnchor19;
    bottomAnchor5 = [(UIProgressView *)v20 bottomAnchor];
    bottomAnchor6 = [(UIImageView *)v265 bottomAnchor];
    v173 = bottomAnchor5;
    v86 = bottomAnchor5;
    v87 = bottomAnchor6;
    trailingAnchor23 = [v86 constraintEqualToAnchor:bottomAnchor6 constant:-8.0];
    v276[29] = trailingAnchor23;
    heightAnchor7 = [(UIProgressView *)v20 heightAnchor];
    v170 = [heightAnchor7 constraintEqualToConstant:2.0];
    v276[30] = v170;
    bottomAnchor14 = [MEMORY[0x277CBEA60] arrayWithObjects:v276 count:31];
    [(_TVRUIUpNextCell *)self setStackedLayoutConstraints:?];
    v89 = 0x277D75000;
  }

  else
  {
    leadingAnchor9 = [(UIImageView *)v8 leadingAnchor];
    [contentView leadingAnchor];
    v168 = topAnchor = leadingAnchor9;
    v91 = [leadingAnchor9 constraintEqualToAnchor:20.0 constant:?];
    v92 = v38;
    v199 = v91;
    if (v251)
    {
      v275[0] = v91;
      centerYAnchor2 = [(UIImageView *)v8 centerYAnchor];
      [contentView centerYAnchor];
      v250 = v252 = centerYAnchor2;
      v249 = [centerYAnchor2 constraintEqualToAnchor:?];
      v275[1] = v249;
      widthAnchor = [(UIImageView *)v8 widthAnchor];
      v247 = [widthAnchor constraintEqualToConstant:117.0];
      v275[2] = v247;
      heightAnchor2 = [(UIImageView *)v8 heightAnchor];
      v245 = [heightAnchor2 constraintEqualToConstant:66.0];
      v275[3] = v245;
      leadingAnchor10 = [v92 leadingAnchor];
      trailingAnchor10 = [(UIImageView *)v8 trailingAnchor];
      v243 = [leadingAnchor10 constraintEqualToAnchor:12.0 constant:?];
      v275[4] = v243;
      centerYAnchor3 = [v92 centerYAnchor];
      [contentView centerYAnchor];
      v241 = v242 = centerYAnchor3;
      v240 = [centerYAnchor3 constraintEqualToAnchor:?];
      v275[5] = v240;
      trailingAnchor11 = [v92 trailingAnchor];
      [(UIButton *)_actionButton leadingAnchor];
      v238 = v239 = trailingAnchor11;
      v237 = [trailingAnchor11 constraintEqualToAnchor:-5.0 constant:?];
      v275[6] = v237;
      v275[7] = v46;
      heightAnchor8 = [contentView heightAnchor];
      v235 = [heightAnchor8 constraintGreaterThanOrEqualToConstant:88.0];
      v275[8] = v235;
      heightAnchor9 = [contentView heightAnchor];
      v233 = [heightAnchor9 constraintLessThanOrEqualToConstant:350.0];
      v275[9] = v233;
      heightAnchor10 = [contentView heightAnchor];
      heightAnchor11 = [(UIImageView *)v8 heightAnchor];
      v231 = [heightAnchor10 constraintGreaterThanOrEqualToAnchor:16.0 constant:?];
      v275[10] = v231;
      heightAnchor12 = [contentView heightAnchor];
      heightAnchor13 = [v92 heightAnchor];
      v227 = [heightAnchor12 constraintGreaterThanOrEqualToAnchor:?];
      v275[11] = v227;
      topAnchor6 = [(UILabel *)v257 topAnchor];
      topAnchor7 = [v92 topAnchor];
      v225 = [topAnchor6 constraintEqualToAnchor:?];
      v275[12] = v225;
      leadingAnchor11 = [(UILabel *)v257 leadingAnchor];
      leadingAnchor12 = [v92 leadingAnchor];
      v223 = [leadingAnchor11 constraintEqualToAnchor:?];
      v275[13] = v223;
      trailingAnchor12 = [(UILabel *)v257 trailingAnchor];
      trailingAnchor13 = [v92 trailingAnchor];
      v220 = [trailingAnchor12 constraintEqualToAnchor:?];
      v275[14] = v220;
      topAnchor8 = [(UILabel *)v9 topAnchor];
      bottomAnchor7 = [(UILabel *)v257 bottomAnchor];
      v217 = [topAnchor8 constraintEqualToAnchor:2.0 constant:?];
      v275[15] = v217;
      leadingAnchor13 = [(UILabel *)v9 leadingAnchor];
      leadingAnchor14 = [v92 leadingAnchor];
      v214 = [leadingAnchor13 constraintEqualToAnchor:?];
      v275[16] = v214;
      trailingAnchor14 = [(UILabel *)v9 trailingAnchor];
      trailingAnchor15 = [v92 trailingAnchor];
      v195 = [trailingAnchor14 constraintEqualToAnchor:?];
      v275[17] = v195;
      topAnchor9 = [(UILabel *)v267 topAnchor];
      bottomAnchor8 = [(UILabel *)v9 bottomAnchor];
      v210 = topAnchor9;
      widthAnchor2 = [topAnchor9 constraintEqualToAnchor:2.0 constant:?];
      v275[18] = widthAnchor2;
      leadingAnchor15 = [(UILabel *)v267 leadingAnchor];
      heightAnchor3 = [v92 leadingAnchor];
      v207 = leadingAnchor15;
      v205 = [leadingAnchor15 constraintEqualToAnchor:?];
      v275[19] = v205;
      trailingAnchor16 = [(UILabel *)v267 trailingAnchor];
      trailingAnchor17 = [v92 trailingAnchor];
      v204 = trailingAnchor16;
      v202 = [trailingAnchor16 constraintEqualToAnchor:trailingAnchor17];
      v275[20] = v202;
      bottomAnchor9 = [(UILabel *)v267 bottomAnchor];
      bottomAnchor10 = [v92 bottomAnchor];
      heightAnchor4 = bottomAnchor9;
      heightAnchor19 = [bottomAnchor9 constraintEqualToAnchor:?];
      v275[21] = heightAnchor19;
      centerYAnchor4 = [(UIButton *)_actionButton centerYAnchor];
      centerYAnchor5 = [contentView centerYAnchor];
      leadingAnchor23 = [centerYAnchor4 constraintEqualToAnchor:0.0 constant:?];
      v275[22] = leadingAnchor23;
      trailingAnchor18 = [(UIButton *)_actionButton trailingAnchor];
      trailingAnchor19 = [contentView trailingAnchor];
      v194 = trailingAnchor18;
      v192 = [trailingAnchor18 constraintEqualToAnchor:-20.0 constant:?];
      v275[23] = v192;
      widthAnchor3 = [(UIButton *)_actionButton widthAnchor];
      trailingAnchor28 = [widthAnchor3 constraintEqualToConstant:32.0];
      v275[24] = trailingAnchor28;
      heightAnchor14 = [(UIButton *)_actionButton heightAnchor];
      v166 = [heightAnchor14 constraintEqualToConstant:32.0];
      v275[25] = v166;
      leadingAnchor16 = [(UIView *)v260 leadingAnchor];
      leadingAnchor17 = [(UILabel *)v9 leadingAnchor];
      bottomAnchor19 = leadingAnchor16;
      v183 = [leadingAnchor16 constraintEqualToAnchor:?];
      v275[26] = v183;
      heightAnchor15 = [(UIView *)v260 heightAnchor];
      v181 = [heightAnchor15 constraintEqualToConstant:0.5];
      v275[27] = v181;
      trailingAnchor20 = [(UIView *)v260 trailingAnchor];
      trailingAnchor21 = [(UIButton *)_actionButton trailingAnchor];
      heightAnchor6 = trailingAnchor20;
      v178 = [trailingAnchor20 constraintEqualToAnchor:?];
      v275[28] = v178;
      bottomAnchor11 = [(UIView *)v260 bottomAnchor];
      bottomAnchor12 = [contentView bottomAnchor];
      v176 = [bottomAnchor11 constraintEqualToAnchor:-0.5 constant:?];
      v275[29] = v176;
      leadingAnchor18 = [(UIView *)v262 leadingAnchor];
      leadingAnchor19 = [(UIImageView *)v8 leadingAnchor];
      v173 = [leadingAnchor18 constraintEqualToAnchor:?];
      v275[30] = v173;
      trailingAnchor22 = [(UIView *)v262 trailingAnchor];
      trailingAnchor23 = [(UIImageView *)v8 trailingAnchor];
      v153 = [trailingAnchor22 constraintEqualToAnchor:?];
      v275[31] = v153;
      bottomAnchor13 = [(UIView *)v262 bottomAnchor];
      bottomAnchor14 = [(UIImageView *)v8 bottomAnchor];
      v170 = bottomAnchor13;
      v161 = [bottomAnchor13 constraintEqualToAnchor:?];
      v275[32] = v161;
      heightAnchor16 = [(UIView *)v262 heightAnchor];
      heightAnchor17 = [(UIImageView *)v8 heightAnchor];
      v157 = [heightAnchor16 constraintEqualToAnchor:heightAnchor17 multiplier:0.3];
      v275[33] = v157;
      leadingAnchor20 = [(UIProgressView *)v261 leadingAnchor];
      leadingAnchor21 = [(UIImageView *)v8 leadingAnchor];
      v154 = [leadingAnchor20 constraintEqualToAnchor:leadingAnchor21 constant:8.0];
      v275[34] = v154;
      trailingAnchor24 = [(UIProgressView *)v261 trailingAnchor];
      trailingAnchor25 = [(UIImageView *)v8 trailingAnchor];
      v106 = [trailingAnchor24 constraintEqualToAnchor:trailingAnchor25 constant:-8.0];
      v275[35] = v106;
      bottomAnchor15 = [(UIProgressView *)v261 bottomAnchor];
      bottomAnchor16 = [(UIImageView *)v8 bottomAnchor];
      v109 = [bottomAnchor15 constraintEqualToAnchor:bottomAnchor16 constant:-8.0];
      v275[36] = v109;
      heightAnchor18 = [(UIProgressView *)v261 heightAnchor];
      v111 = [heightAnchor18 constraintEqualToConstant:2.0];
      v275[37] = v111;
      v112 = [MEMORY[0x277CBEA60] arrayWithObjects:v275 count:38];
      [(_TVRUIUpNextCell *)self setSolariumLayoutConstraints:v112];

      v83 = leadingAnchor18;
      v55 = v258;

      v73 = v166;
      v63 = _actionButton;

      heightAnchor7 = v153;
      v87 = trailingAnchor22;

      v79 = bottomAnchor11;
    }

    else
    {
      v274[0] = v91;
      centerYAnchor6 = [(UIImageView *)v8 centerYAnchor];
      [contentView centerYAnchor];
      v250 = v252 = centerYAnchor6;
      v249 = [centerYAnchor6 constraintEqualToAnchor:?];
      v274[1] = v249;
      widthAnchor = [(UIImageView *)v8 widthAnchor];
      v247 = [widthAnchor constraintEqualToConstant:117.0];
      v274[2] = v247;
      heightAnchor2 = [(UIImageView *)v8 heightAnchor];
      v245 = [heightAnchor2 constraintEqualToConstant:66.0];
      v274[3] = v245;
      leadingAnchor10 = [v38 leadingAnchor];
      trailingAnchor10 = [(UIImageView *)v8 trailingAnchor];
      v243 = [leadingAnchor10 constraintEqualToAnchor:12.0 constant:?];
      v274[4] = v243;
      centerYAnchor7 = [v38 centerYAnchor];
      [contentView centerYAnchor];
      v241 = v242 = centerYAnchor7;
      v240 = [centerYAnchor7 constraintEqualToAnchor:?];
      v274[5] = v240;
      trailingAnchor26 = [v38 trailingAnchor];
      [(UIButton *)_actionButton leadingAnchor];
      v238 = v239 = trailingAnchor26;
      v237 = [trailingAnchor26 constraintEqualToAnchor:-5.0 constant:?];
      v274[6] = v237;
      v274[7] = v46;
      heightAnchor8 = [contentView heightAnchor];
      v235 = [heightAnchor8 constraintGreaterThanOrEqualToConstant:88.0];
      v274[8] = v235;
      heightAnchor9 = [contentView heightAnchor];
      v233 = [heightAnchor9 constraintLessThanOrEqualToConstant:350.0];
      v274[9] = v233;
      heightAnchor10 = [contentView heightAnchor];
      heightAnchor11 = [(UIImageView *)v8 heightAnchor];
      v231 = [heightAnchor10 constraintGreaterThanOrEqualToAnchor:16.0 constant:?];
      v274[10] = v231;
      heightAnchor12 = [contentView heightAnchor];
      heightAnchor13 = [v38 heightAnchor];
      v227 = [heightAnchor12 constraintGreaterThanOrEqualToAnchor:?];
      v274[11] = v227;
      topAnchor6 = [(UILabel *)v9 topAnchor];
      topAnchor7 = [v38 topAnchor];
      v225 = [topAnchor6 constraintEqualToAnchor:?];
      v274[12] = v225;
      leadingAnchor11 = [(UILabel *)v9 leadingAnchor];
      leadingAnchor12 = [v38 leadingAnchor];
      v223 = [leadingAnchor11 constraintEqualToAnchor:?];
      v274[13] = v223;
      trailingAnchor12 = [(UILabel *)v9 trailingAnchor];
      trailingAnchor13 = [v38 trailingAnchor];
      v220 = [trailingAnchor12 constraintEqualToAnchor:?];
      v274[14] = v220;
      topAnchor8 = [(UILabel *)v267 topAnchor];
      bottomAnchor7 = [(UILabel *)v9 bottomAnchor];
      v217 = [topAnchor8 constraintEqualToAnchor:2.0 constant:?];
      v274[15] = v217;
      leadingAnchor13 = [(UILabel *)v267 leadingAnchor];
      leadingAnchor14 = [v38 leadingAnchor];
      v214 = [leadingAnchor13 constraintEqualToAnchor:?];
      v274[16] = v214;
      trailingAnchor14 = [(UILabel *)v267 trailingAnchor];
      trailingAnchor15 = [v38 trailingAnchor];
      v195 = [trailingAnchor14 constraintEqualToAnchor:?];
      v274[17] = v195;
      bottomAnchor17 = [(UILabel *)v267 bottomAnchor];
      bottomAnchor8 = [v38 bottomAnchor];
      v210 = bottomAnchor17;
      widthAnchor2 = [bottomAnchor17 constraintEqualToAnchor:?];
      v274[18] = widthAnchor2;
      centerYAnchor8 = [(UIButton *)_actionButton centerYAnchor];
      heightAnchor3 = [contentView centerYAnchor];
      v207 = centerYAnchor8;
      v205 = [centerYAnchor8 constraintEqualToAnchor:0.0 constant:?];
      v274[19] = v205;
      trailingAnchor27 = [(UIButton *)_actionButton trailingAnchor];
      trailingAnchor17 = [contentView trailingAnchor];
      v204 = trailingAnchor27;
      v202 = [trailingAnchor27 constraintEqualToAnchor:trailingAnchor17 constant:-20.0];
      v274[20] = v202;
      heightAnchor4 = [(UIButton *)_actionButton widthAnchor];
      bottomAnchor10 = [heightAnchor4 constraintEqualToConstant:44.0];
      v274[21] = bottomAnchor10;
      heightAnchor19 = [(UIButton *)_actionButton heightAnchor];
      centerYAnchor4 = [heightAnchor19 constraintEqualToConstant:44.0];
      v274[22] = centerYAnchor4;
      leadingAnchor22 = [(UIView *)v260 leadingAnchor];
      leadingAnchor23 = [(UILabel *)v9 leadingAnchor];
      centerYAnchor5 = leadingAnchor22;
      v194 = [leadingAnchor22 constraintEqualToAnchor:leadingAnchor23];
      v274[23] = v194;
      trailingAnchor19 = [(UIView *)v260 heightAnchor];
      v192 = [trailingAnchor19 constraintEqualToConstant:0.5];
      v274[24] = v192;
      widthAnchor3 = [(UIView *)v260 trailingAnchor];
      trailingAnchor28 = [(UIButton *)_actionButton trailingAnchor];
      heightAnchor14 = [widthAnchor3 constraintEqualToAnchor:?];
      v274[25] = heightAnchor14;
      bottomAnchor18 = [(UIView *)v260 bottomAnchor];
      bottomAnchor19 = [contentView bottomAnchor];
      leadingAnchor17 = [bottomAnchor18 constraintEqualToAnchor:-0.5 constant:?];
      v274[26] = leadingAnchor17;
      leadingAnchor24 = [(UIView *)v262 leadingAnchor];
      heightAnchor15 = [(UIImageView *)v8 leadingAnchor];
      v183 = leadingAnchor24;
      v181 = [leadingAnchor24 constraintEqualToAnchor:?];
      v274[27] = v181;
      trailingAnchor29 = [(UIView *)v262 trailingAnchor];
      trailingAnchor21 = [(UIImageView *)v8 trailingAnchor];
      heightAnchor6 = trailingAnchor29;
      v178 = [trailingAnchor29 constraintEqualToAnchor:?];
      v274[28] = v178;
      bottomAnchor20 = [(UIView *)v262 bottomAnchor];
      bottomAnchor12 = [(UIImageView *)v8 bottomAnchor];
      v176 = [bottomAnchor20 constraintEqualToAnchor:?];
      v274[29] = v176;
      heightAnchor20 = [(UIView *)v262 heightAnchor];
      leadingAnchor19 = [(UIImageView *)v8 heightAnchor];
      v173 = [heightAnchor20 constraintEqualToAnchor:0.3 multiplier:?];
      v274[30] = v173;
      leadingAnchor25 = [(UIProgressView *)v261 leadingAnchor];
      trailingAnchor23 = [(UIImageView *)v8 leadingAnchor];
      v123 = [leadingAnchor25 constraintEqualToAnchor:8.0 constant:?];
      v274[31] = v123;
      trailingAnchor30 = [(UIProgressView *)v261 trailingAnchor];
      bottomAnchor14 = [(UIImageView *)v8 trailingAnchor];
      v170 = trailingAnchor30;
      v125 = [trailingAnchor30 constraintEqualToAnchor:-8.0 constant:?];
      v274[32] = v125;
      bottomAnchor21 = [(UIProgressView *)v261 bottomAnchor];
      bottomAnchor22 = [(UIImageView *)v265 bottomAnchor];
      v128 = [bottomAnchor21 constraintEqualToAnchor:bottomAnchor22 constant:-8.0];
      v274[33] = v128;
      heightAnchor21 = [(UIProgressView *)v261 heightAnchor];
      v130 = [heightAnchor21 constraintEqualToConstant:2.0];
      v274[34] = v130;
      v131 = [MEMORY[0x277CBEA60] arrayWithObjects:v274 count:35];
      [(_TVRUIUpNextCell *)self setStandardLayoutConstraints:v131];

      heightAnchor7 = v123;
      v73 = bottomAnchor18;

      v79 = bottomAnchor20;
      v83 = heightAnchor20;

      v55 = v258;
      v63 = _actionButton;

      v87 = leadingAnchor25;
    }

    v89 = 0x277D75000uLL;
    topAnchor2 = v168;
  }

  v132 = objc_alloc_init(MEMORY[0x277D75D18]);
  v133 = [*(v89 + 840) colorWithWhite:0.25 alpha:1.0];
  [v132 setBackgroundColor:v133];

  [(_TVRUIUpNextCell *)self setSelectedBackgroundView:v132];
  imageView = self->_imageView;
  self->_imageView = v265;
  v266 = v265;

  attributionMaskImageView = self->_attributionMaskImageView;
  self->_attributionMaskImageView = v255;
  v259 = v255;

  titleLabel = self->_titleLabel;
  self->_titleLabel = v55;
  v256 = v55;

  secondaryLabel = self->_secondaryLabel;
  self->_secondaryLabel = v267;
  v268 = v267;

  tertiaryLabel = self->_tertiaryLabel;
  self->_tertiaryLabel = v257;
  v139 = v257;

  separatorView = self->_separatorView;
  self->_separatorView = v260;
  v141 = v260;

  actionButton = self->_actionButton;
  self->_actionButton = v63;
  v143 = v63;

  playbackProgressView = self->_playbackProgressView;
  self->_playbackProgressView = v261;
  v145 = v261;

  gradientView = self->_gradientView;
  self->_gradientView = v262;
  v147 = v262;

  gradientLayer = self->_gradientLayer;
  self->_gradientLayer = v254;
  v149 = v254;

  channelImageView = self->_channelImageView;
  self->_channelImageView = v263;

  [(_TVRUIUpNextCell *)self setOverrideUserInterfaceStyle:2];
  [(_TVRUIUpNextCell *)self _updateLayoutConstraintsForCurrentSizeCategory];
  contentView2 = [(_TVRUIUpNextCell *)self contentView];
  [contentView2 setNeedsLayout];

  contentView3 = [(_TVRUIUpNextCell *)self contentView];
  [contentView3 layoutIfNeeded];
}

- (void)_updateLayoutConstraintsForCurrentSizeCategory
{
  if (+[_TVRUIUpNextCell isSolariumLayout])
  {
    v3 = MEMORY[0x277CCAAD0];
    solariumLayoutConstraints = [(_TVRUIUpNextCell *)self solariumLayoutConstraints];
    [v3 activateConstraints:solariumLayoutConstraints];
  }

  else
  {
    isStackedLayout = [objc_opt_class() isStackedLayout];

    [(_TVRUIUpNextCell *)self _updateLayoutConstraintsForStackedLayout:isStackedLayout];
  }
}

- (void)_updateLayoutConstraintsForStackedLayout:(BOOL)layout
{
  v4 = MEMORY[0x277CCAAD0];
  if (layout)
  {
    stackedLayoutConstraints = [(_TVRUIUpNextCell *)self stackedLayoutConstraints];
    [v4 activateConstraints:stackedLayoutConstraints];

    v6 = MEMORY[0x277CCAAD0];
    [(_TVRUIUpNextCell *)self standardLayoutConstraints];
  }

  else
  {
    standardLayoutConstraints = [(_TVRUIUpNextCell *)self standardLayoutConstraints];
    [v4 activateConstraints:standardLayoutConstraints];

    v6 = MEMORY[0x277CCAAD0];
    [(_TVRUIUpNextCell *)self stackedLayoutConstraints];
  }
  v8 = ;
  [v6 deactivateConstraints:?];
}

- (void)_updateSeparatorVisibility
{
  showsSeparator = [(_TVRUIUpNextCell *)self showsSeparator];
  separatorView = [(_TVRUIUpNextCell *)self separatorView];
  [separatorView setHidden:!showsSeparator];
}

- (id)_actionButton
{
  v3 = +[_TVRUIUpNextCell isSolariumLayout];
  v4 = MEMORY[0x277D755D0];
  v5 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76920] variant:1024];
  v6 = [v4 configurationWithFont:v5];

  v7 = MEMORY[0x277D750C8];
  v8 = [MEMORY[0x277D755B8] systemImageNamed:@"ellipsis" withConfiguration:v6];
  v9 = [v7 actionWithTitle:&stru_287E6AEF8 image:v8 identifier:0 handler:&__block_literal_global_394];

  if (v3)
  {
    [MEMORY[0x277D75230] borderedButtonConfiguration];
  }

  else
  {
    [MEMORY[0x277D75230] plainButtonConfiguration];
  }
  v10 = ;
  [v10 setCornerStyle:4];
  v11 = [MEMORY[0x277D75220] buttonWithConfiguration:v10 primaryAction:v9];
  lightGrayColor = [MEMORY[0x277D75348] lightGrayColor];
  [v11 setTintColor:lightGrayColor];

  if (v3)
  {
    v13 = [MEMORY[0x277D75348] colorWithWhite:0.1 alpha:1.0];
    [v11 setBackgroundColor:v13];
  }

  [v11 setOverrideUserInterfaceStyle:2];
  v14 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_actionButtonTapped_];
  [v11 addGestureRecognizer:v14];
  _actionMenu = [(_TVRUIUpNextCell *)self _actionMenu];
  [v11 setMenu:_actionMenu];
  [v11 setShowsMenuAsPrimaryAction:1];

  return v11;
}

- (void)actionButtonTapped:(id)tapped
{
  actionButton = [(_TVRUIUpNextCell *)self actionButton];
  [actionButton sendActionsForControlEvents:0x2000];
}

- (id)_actionMenu
{
  v12[1] = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v3 = MEMORY[0x277D753F0];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __31___TVRUIUpNextCell__actionMenu__block_invoke;
  v9[3] = &unk_279D88540;
  v9[4] = self;
  objc_copyWeak(&v10, &location);
  v4 = [v3 elementWithUncachedProvider:v9];
  v5 = MEMORY[0x277D75710];
  v12[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v7 = [v5 menuWithChildren:v6];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v7;
}

- (void)_updateForUpNextInfo:(id)info
{
  v36 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  mediaInfo = [infoCopy mediaInfo];
  title = [mediaInfo title];
  titleLabel = [(_TVRUIUpNextCell *)self titleLabel];
  [titleLabel setText:title];

  v8 = [(_TVRUIUpNextCell *)self _secondaryTextForUpNextInfo:infoCopy];
  secondaryLabel = [(_TVRUIUpNextCell *)self secondaryLabel];
  [secondaryLabel setText:v8];

  if (+[_TVRUIUpNextCell isSolariumLayout])
  {
    reason = [infoCopy reason];
    tertiaryLabel = [(_TVRUIUpNextCell *)self tertiaryLabel];
    [tertiaryLabel setText:reason];
  }

  tvruiupnextvc_hasPercentComplete = [infoCopy tvruiupnextvc_hasPercentComplete];
  playbackProgressView = [(_TVRUIUpNextCell *)self playbackProgressView];
  [playbackProgressView setHidden:tvruiupnextvc_hasPercentComplete ^ 1u];

  gradientView = [(_TVRUIUpNextCell *)self gradientView];
  [gradientView setHidden:tvruiupnextvc_hasPercentComplete ^ 1u];

  if (tvruiupnextvc_hasPercentComplete)
  {
    [infoCopy tvruiupnextvc_percentComplete];
    v16 = v15;
    playbackProgressView2 = [(_TVRUIUpNextCell *)self playbackProgressView];
    *&v18 = v16;
    [playbackProgressView2 setProgress:v18];
  }

  artworkNeedsCornerBlur = [infoCopy artworkNeedsCornerBlur];
  attributionMaskImageView = [(_TVRUIUpNextCell *)self attributionMaskImageView];
  [attributionMaskImageView setHidden:artworkNeedsCornerBlur ^ 1u];

  imageURLTemplate = [mediaInfo imageURLTemplate];
  if ([imageURLTemplate length])
  {
    objc_initWeak(location, self);
    delegate = [(_TVRUIUpNextCell *)self delegate];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __41___TVRUIUpNextCell__updateForUpNextInfo___block_invoke;
    v31[3] = &unk_279D87EC8;
    objc_copyWeak(&v32, location);
    [delegate requestImageForInfo:infoCopy completion:v31];

    objc_destroyWeak(&v32);
    objc_destroyWeak(location);
  }

  else
  {
    v23 = _TVRUINowPlayingLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      identifier = [mediaInfo identifier];
      *location = 134218242;
      *&location[4] = self;
      v34 = 2112;
      v35 = identifier;
      _os_log_impl(&dword_26CFEB000, v23, OS_LOG_TYPE_INFO, "UpNext cell %p for %@ has no imageURLTemplare, blanking image...", location, 0x16u);
    }

    imageView = [(_TVRUIUpNextCell *)self imageView];
    [imageView setImage:0];
  }

  channelImageURLTemplate = [mediaInfo channelImageURLTemplate];
  if ([channelImageURLTemplate length])
  {
    objc_initWeak(location, self);
    delegate2 = [(_TVRUIUpNextCell *)self delegate];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __41___TVRUIUpNextCell__updateForUpNextInfo___block_invoke_450;
    v28[3] = &unk_279D88568;
    v29 = channelImageURLTemplate;
    objc_copyWeak(&v30, location);
    [delegate2 requestImageForURLTemplate:v29 size:v29 identifier:v28 completion:{22.0, 22.0}];

    objc_destroyWeak(&v30);
    objc_destroyWeak(location);
  }
}

- (id)_secondaryTextForUpNextInfo:(id)info
{
  infoCopy = info;
  v5 = infoCopy;
  if (!infoCopy)
  {
    v7 = 0;
    goto LABEL_20;
  }

  mediaInfo = [infoCopy mediaInfo];
  if (+[_TVRUIUpNextCell isSolariumLayout])
  {
    v7 = &stru_287E6AEF8;
  }

  else
  {
    reason = [v5 reason];
    v7 = __48___TVRUIUpNextCell__secondaryTextForUpNextInfo___block_invoke(reason, &stru_287E6AEF8, reason);
  }

  if ([mediaInfo kind] == 1)
  {
    seasonNumber = [mediaInfo seasonNumber];
    if (seasonNumber)
    {
      v10 = seasonNumber;
      episodeNumber = [mediaInfo episodeNumber];

      if (episodeNumber)
      {
        _seasonEpisodeFormatString = [(_TVRUIUpNextCell *)self _seasonEpisodeFormatString];
        v13 = MEMORY[0x277CCACA8];
        seasonNumber2 = [mediaInfo seasonNumber];
        episodeNumber2 = [mediaInfo episodeNumber];
        v16 = [v13 stringWithFormat:_seasonEpisodeFormatString, seasonNumber2, episodeNumber2];
        v17 = __48___TVRUIUpNextCell__secondaryTextForUpNextInfo___block_invoke(v16, v7, v16);

        v7 = v17;
      }
    }
  }

  timeRemaining = [v5 timeRemaining];
  [timeRemaining floatValue];
  v20 = v19;

  if (v20 > 0.0)
  {
    v21 = [TVRUIDateUtilities localizedPlaybackTimeForInterval:v20];
    v22 = [v21 length];
    if (v22)
    {
      v23 = __48___TVRUIUpNextCell__secondaryTextForUpNextInfo___block_invoke(v22, v7, v21);

      v7 = v23;
    }
  }

  service = [v5 service];
  v25 = [service length];
  if (v25)
  {
    v26 = __48___TVRUIUpNextCell__secondaryTextForUpNextInfo___block_invoke(v25, v7, service);
LABEL_18:

    v7 = v26;
    goto LABEL_19;
  }

  if ([v5 isAppleOriginal])
  {
    v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v28 = [(__CFString *)v27 localizedStringForKey:@"AppleTVOriginal" value:&stru_287E6AEF8 table:@"Localizable"];
    v26 = __48___TVRUIUpNextCell__secondaryTextForUpNextInfo___block_invoke(v28, v7, v28);

    v7 = v27;
    goto LABEL_18;
  }

LABEL_19:

LABEL_20:

  return v7;
}

- (id)_seasonEpisodeFormatString
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"TVRUISeasonEpisodeBrief" value:&stru_287E6AEF8 table:@"Localizable"];

  v4 = [v3 componentsSeparatedByString:@"%@"];
  if ([v4 count] < 3)
  {
    v5 = @"S%@, E%@";
  }

  else
  {
    v5 = v3;
  }

  return v5;
}

- (BOOL)hasURLForProductPageKind:(int64_t)kind
{
  v3 = [(_TVRUIUpNextCell *)self urlForProductPageKind:kind];
  v4 = v3 != 0;

  return v4;
}

- (void)openProductPageForKind:(int64_t)kind
{
  v4 = [(_TVRUIUpNextCell *)self urlForProductPageKind:kind];
  if (v4)
  {
    [(_TVRUIUpNextCell *)self openURL:v4];
  }

  MEMORY[0x2821F96F8]();
}

- (id)urlForProductPageKind:(int64_t)kind
{
  upNextInfo = [(_TVRUIUpNextCell *)self upNextInfo];
  shareURL = [upNextInfo shareURL];

  upNextInfo2 = [(_TVRUIUpNextCell *)self upNextInfo];
  v8 = upNextInfo2;
  if (!shareURL)
  {
    mediaInfo = [upNextInfo2 mediaInfo];

    if (mediaInfo)
    {
      if (kind == 1 || kind == 3)
      {
        productURL = [mediaInfo productURL];
        goto LABEL_16;
      }

      if (kind == 2)
      {
        productURL = [mediaInfo showURL];
LABEL_16:
        v12 = productURL;
        goto LABEL_17;
      }
    }

    v12 = 0;
LABEL_17:
    v8 = mediaInfo;
    goto LABEL_18;
  }

  if (kind == 1 || kind == 3)
  {
    shareURL2 = [upNextInfo2 shareURL];
    goto LABEL_12;
  }

  if (kind == 2)
  {
    shareURL2 = [upNextInfo2 shareShowURL];
LABEL_12:
    v12 = shareURL2;
    goto LABEL_18;
  }

  v12 = 0;
LABEL_18:

  return v12;
}

- (void)openURL:(id)l
{
  lCopy = l;
  delegate = [(_TVRUIUpNextCell *)self delegate];
  [delegate openURL:lCopy];
}

- (_TVRUIUpNextViewControllerActionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end