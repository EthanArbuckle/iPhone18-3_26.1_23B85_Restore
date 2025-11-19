@interface _TVRUIUpNextCell
- (BOOL)hasURLForProductPageKind:(int64_t)a3;
- (_TVRUIUpNextCell)initWithFrame:(CGRect)a3;
- (_TVRUIUpNextViewControllerActionDelegate)delegate;
- (id)_actionButton;
- (id)_actionMenu;
- (id)_seasonEpisodeFormatString;
- (id)_secondaryTextForUpNextInfo:(id)a3;
- (id)urlForProductPageKind:(int64_t)a3;
- (void)_configureHierarchy;
- (void)_updateForUpNextInfo:(id)a3;
- (void)_updateLayoutConstraintsForCurrentSizeCategory;
- (void)_updateLayoutConstraintsForStackedLayout:(BOOL)a3;
- (void)_updateSeparatorVisibility;
- (void)actionButtonTapped:(id)a3;
- (void)layoutSubviews;
- (void)openProductPageForKind:(int64_t)a3;
- (void)openURL:(id)a3;
- (void)prepareForReuse;
- (void)setUpNextInfo:(id)a3;
@end

@implementation _TVRUIUpNextCell

- (_TVRUIUpNextCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _TVRUIUpNextCell;
  v3 = [(_TVRUIUpNextCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v3 = [(_TVRUIUpNextCell *)self imageView];
  [v3 setImage:0];

  v4 = [(_TVRUIUpNextCell *)self channelImageView];
  [v4 setImage:0];

  v5 = [(_TVRUIUpNextCell *)self titleLabel];
  [v5 setText:0];

  v6 = [(_TVRUIUpNextCell *)self secondaryLabel];
  [v6 setText:0];

  [(_TVRUIUpNextCell *)self setShowsSeparator:1];
  [(_TVRUIUpNextCell *)self _updateLayoutConstraintsForCurrentSizeCategory];
  v7 = [(_TVRUIUpNextCell *)self contentView];
  [v7 setNeedsLayout];

  v8 = [(_TVRUIUpNextCell *)self contentView];
  [v8 layoutIfNeeded];
}

- (void)setUpNextInfo:(id)a3
{
  objc_storeStrong(&self->_upNextInfo, a3);
  v5 = a3;
  [(_TVRUIUpNextCell *)self _updateForUpNextInfo:v5];
}

- (void)layoutSubviews
{
  v23.receiver = self;
  v23.super_class = _TVRUIUpNextCell;
  [(_TVRUIUpNextCell *)&v23 layoutSubviews];
  v3 = [(_TVRUIUpNextCell *)self gradientView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(_TVRUIUpNextCell *)self gradientLayer];
  [v12 setFrame:{v5, v7, v9, v11}];

  v13 = [(_TVRUIUpNextCell *)self imageView];
  [v13 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = [(_TVRUIUpNextCell *)self attributionMaskImageView];
  [v22 setFrame:{v15, v17, v19, v21}];
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
  v264 = [(_TVRUIUpNextCell *)self _actionButton];
  v263 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v4, v5, v6, v7}];
  LODWORD(v11) = 1148846080;
  [(UIButton *)v264 setContentHuggingPriority:0 forAxis:v11];
  v12 = objc_alloc_init(MEMORY[0x277D75D18]);
  [(UIView *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = [MEMORY[0x277CD9EB0] layer];
  v14 = [MEMORY[0x277D75348] blackColor];
  v15 = [v14 colorWithAlphaComponent:0.0];
  v279[0] = [v15 CGColor];
  v16 = [MEMORY[0x277D75348] blackColor];
  v17 = [v16 colorWithAlphaComponent:0.8];
  v279[1] = [v17 CGColor];
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v279 count:2];
  [(CAGradientLayer *)v13 setColors:v18];

  [(CAGradientLayer *)v13 setStartPoint:0.5, 0.0];
  [(CAGradientLayer *)v13 setEndPoint:0.5, 1.0];
  v19 = [(UIView *)v12 layer];
  v254 = v13;
  [v19 insertSublayer:v13 atIndex:0];

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
  v24 = [(_TVRUIUpNextCell *)self contentView];
  v25 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v24 addSubview:v25];
  v26 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  [(UILabel *)v9 setFont:v26];

  [(UILabel *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v27 = [MEMORY[0x277D75348] labelColor];
  [(UILabel *)v9 setTextColor:v27];

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
  v31 = [MEMORY[0x277D75348] secondaryLabelColor];
  [(UILabel *)v267 setTextColor:v31];

  [(UILabel *)v267 setNumberOfLines:2];
  [(UILabel *)v267 setAdjustsFontForContentSizeCategory:1];
  LODWORD(v32) = 1148846080;
  [(UILabel *)v267 setContentHuggingPriority:1 forAxis:v32];
  [v25 addSubview:v267];
  v33 = [MEMORY[0x277D74300] preferredFontForTextStyle:v29];
  [(UILabel *)v10 setFont:v33];

  [(UILabel *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v34 = [MEMORY[0x277D75348] secondaryLabelColor];
  [(UILabel *)v10 setTextColor:v34];

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
  v277[2] = v264;
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
        [v24 addSubview:v44];
      }

      v41 = [v39 countByEnumeratingWithState:&v270 objects:v278 count:16];
    }

    while (v41);
  }

  v45 = [v24 heightAnchor];
  v46 = [v45 constraintEqualToConstant:0.0];

  LODWORD(v47) = 1132068864;
  [v46 setPriority:v47];
  v229 = v46;
  v211 = v38;
  if ([objc_opt_class() isStackedLayout])
  {
    v253 = [(UIImageView *)v8 topAnchor];
    v48 = [v24 topAnchor];
    v199 = [v253 constraintEqualToAnchor:v48 constant:8.0];
    v276[0] = v199;
    v49 = [(UIImageView *)v8 leadingAnchor];
    [v24 leadingAnchor];
    v250 = v252 = v49;
    v249 = [v49 constraintEqualToAnchor:20.0 constant:?];
    v276[1] = v249;
    v248 = [(UIImageView *)v8 widthAnchor];
    v247 = [v248 constraintEqualToConstant:117.0];
    v276[2] = v247;
    v246 = [(UIImageView *)v8 heightAnchor];
    v245 = [v246 constraintEqualToConstant:66.0];
    v276[3] = v245;
    v50 = v38;
    v51 = [v38 topAnchor];
    [(UIImageView *)v265 bottomAnchor];
    v244 = v230 = v51;
    v243 = [v51 constraintEqualToAnchor:2.0 constant:?];
    v276[4] = v243;
    v52 = [v38 leadingAnchor];
    [v24 leadingAnchor];
    v241 = v242 = v52;
    v240 = [v52 constraintEqualToAnchor:20.0 constant:?];
    v276[5] = v240;
    v53 = [v38 trailingAnchor];
    [v24 trailingAnchor];
    v238 = v239 = v53;
    v237 = [v53 constraintEqualToAnchor:-20.0 constant:?];
    v276[6] = v237;
    v54 = [v38 bottomAnchor];
    [v24 bottomAnchor];
    v235 = v236 = v54;
    v234 = [v54 constraintEqualToAnchor:?];
    v276[7] = v234;
    v55 = v258;
    v56 = [(UILabel *)v258 topAnchor];
    [v38 topAnchor];
    v222 = v233 = v56;
    v232 = [v56 constraintEqualToAnchor:v222];
    v276[8] = v232;
    v57 = [(UILabel *)v258 leadingAnchor];
    [v50 leadingAnchor];
    v219 = v231 = v57;
    v228 = [v57 constraintEqualToAnchor:v219];
    v276[9] = v228;
    v58 = [(UILabel *)v258 trailingAnchor];
    [v50 trailingAnchor];
    v216 = v227 = v58;
    v226 = [v58 constraintEqualToAnchor:v216];
    v276[10] = v226;
    v59 = [(UILabel *)v267 topAnchor];
    [(UILabel *)v258 bottomAnchor];
    v213 = v225 = v59;
    v224 = [v59 constraintEqualToAnchor:v213 constant:2.0];
    v276[11] = v224;
    v60 = [(UILabel *)v267 leadingAnchor];
    [v50 leadingAnchor];
    v203 = v223 = v60;
    v221 = [v60 constraintEqualToAnchor:v203];
    v276[12] = v221;
    v61 = [(UILabel *)v267 trailingAnchor];
    [v50 trailingAnchor];
    v197 = v220 = v61;
    v218 = [v61 constraintEqualToAnchor:v197];
    v276[13] = v218;
    v62 = [(UILabel *)v267 bottomAnchor];
    [v50 bottomAnchor];
    v191 = v217 = v62;
    v215 = [v62 constraintEqualToAnchor:v191];
    v276[14] = v215;
    v63 = v264;
    v64 = [(UIButton *)v264 centerYAnchor];
    [(UIImageView *)v265 centerYAnchor];
    v190 = v214 = v64;
    v212 = [v64 constraintEqualToAnchor:v190];
    v276[15] = v212;
    v65 = [(UIButton *)v264 trailingAnchor];
    [v24 trailingAnchor];
    v210 = v195 = v65;
    v209 = [v65 constraintEqualToAnchor:-20.0 constant:?];
    v276[16] = v209;
    v208 = [(UIButton *)v264 widthAnchor];
    v207 = [v208 constraintEqualToConstant:44.0];
    v276[17] = v207;
    v206 = [(UIButton *)v264 heightAnchor];
    v205 = [v206 constraintEqualToConstant:44.0];
    v276[18] = v205;
    v66 = [(UIView *)v260 leadingAnchor];
    [(UILabel *)v258 leadingAnchor];
    v187 = v204 = v66;
    v202 = [v66 constraintEqualToAnchor:v187];
    v276[19] = v202;
    v201 = [(UIView *)v260 heightAnchor];
    v200 = [v201 constraintEqualToConstant:0.5];
    v276[20] = v200;
    v67 = [(UIView *)v260 trailingAnchor];
    [(UIButton *)v264 trailingAnchor];
    v184 = v198 = v67;
    v196 = [v67 constraintEqualToAnchor:v184];
    v276[21] = v196;
    v68 = [(UIView *)v260 bottomAnchor];
    [v24 bottomAnchor];
    v194 = v175 = v68;
    v193 = [v68 constraintEqualToAnchor:-0.5 constant:?];
    v276[22] = v193;
    v69 = [(UIView *)v262 leadingAnchor];
    [(UIImageView *)v265 leadingAnchor];
    v172 = v192 = v69;
    v189 = [v69 constraintEqualToAnchor:v172];
    v276[23] = v189;
    v70 = [(UIView *)v262 trailingAnchor];
    v71 = [(UIImageView *)v265 trailingAnchor];
    v188 = v70;
    v72 = v70;
    v73 = v71;
    v186 = [v72 constraintEqualToAnchor:v71];
    v276[24] = v186;
    v74 = [(UIView *)v262 bottomAnchor];
    [(UIImageView *)v265 bottomAnchor];
    v183 = v185 = v74;
    v182 = [v74 constraintEqualToAnchor:?];
    v276[25] = v182;
    v75 = [(UIView *)v262 heightAnchor];
    v180 = [(UIImageView *)v265 heightAnchor];
    v181 = v75;
    v179 = [v75 constraintEqualToAnchor:0.3 multiplier:?];
    v276[26] = v179;
    v76 = [(UIProgressView *)v20 leadingAnchor];
    v77 = [(UIImageView *)v265 leadingAnchor];
    v178 = v76;
    v78 = v76;
    v79 = v77;
    v177 = [v78 constraintEqualToAnchor:v77 constant:8.0];
    v276[27] = v177;
    v80 = [(UIProgressView *)v20 trailingAnchor];
    v81 = [(UIImageView *)v265 trailingAnchor];
    v176 = v80;
    v82 = v80;
    v83 = v81;
    v174 = [v82 constraintEqualToAnchor:v81 constant:-8.0];
    v276[28] = v174;
    v84 = [(UIProgressView *)v20 bottomAnchor];
    v85 = [(UIImageView *)v265 bottomAnchor];
    v173 = v84;
    v86 = v84;
    v87 = v85;
    v171 = [v86 constraintEqualToAnchor:v85 constant:-8.0];
    v276[29] = v171;
    v88 = [(UIProgressView *)v20 heightAnchor];
    v170 = [v88 constraintEqualToConstant:2.0];
    v276[30] = v170;
    v169 = [MEMORY[0x277CBEA60] arrayWithObjects:v276 count:31];
    [(_TVRUIUpNextCell *)self setStackedLayoutConstraints:?];
    v89 = 0x277D75000;
  }

  else
  {
    v90 = [(UIImageView *)v8 leadingAnchor];
    [v24 leadingAnchor];
    v168 = v253 = v90;
    v91 = [v90 constraintEqualToAnchor:20.0 constant:?];
    v92 = v38;
    v199 = v91;
    if (v251)
    {
      v275[0] = v91;
      v93 = [(UIImageView *)v8 centerYAnchor];
      [v24 centerYAnchor];
      v250 = v252 = v93;
      v249 = [v93 constraintEqualToAnchor:?];
      v275[1] = v249;
      v248 = [(UIImageView *)v8 widthAnchor];
      v247 = [v248 constraintEqualToConstant:117.0];
      v275[2] = v247;
      v246 = [(UIImageView *)v8 heightAnchor];
      v245 = [v246 constraintEqualToConstant:66.0];
      v275[3] = v245;
      v230 = [v92 leadingAnchor];
      v244 = [(UIImageView *)v8 trailingAnchor];
      v243 = [v230 constraintEqualToAnchor:12.0 constant:?];
      v275[4] = v243;
      v94 = [v92 centerYAnchor];
      [v24 centerYAnchor];
      v241 = v242 = v94;
      v240 = [v94 constraintEqualToAnchor:?];
      v275[5] = v240;
      v95 = [v92 trailingAnchor];
      [(UIButton *)v264 leadingAnchor];
      v238 = v239 = v95;
      v237 = [v95 constraintEqualToAnchor:-5.0 constant:?];
      v275[6] = v237;
      v275[7] = v46;
      v236 = [v24 heightAnchor];
      v235 = [v236 constraintGreaterThanOrEqualToConstant:88.0];
      v275[8] = v235;
      v234 = [v24 heightAnchor];
      v233 = [v234 constraintLessThanOrEqualToConstant:350.0];
      v275[9] = v233;
      v222 = [v24 heightAnchor];
      v232 = [(UIImageView *)v8 heightAnchor];
      v231 = [v222 constraintGreaterThanOrEqualToAnchor:16.0 constant:?];
      v275[10] = v231;
      v219 = [v24 heightAnchor];
      v228 = [v92 heightAnchor];
      v227 = [v219 constraintGreaterThanOrEqualToAnchor:?];
      v275[11] = v227;
      v216 = [(UILabel *)v257 topAnchor];
      v226 = [v92 topAnchor];
      v225 = [v216 constraintEqualToAnchor:?];
      v275[12] = v225;
      v213 = [(UILabel *)v257 leadingAnchor];
      v224 = [v92 leadingAnchor];
      v223 = [v213 constraintEqualToAnchor:?];
      v275[13] = v223;
      v203 = [(UILabel *)v257 trailingAnchor];
      v221 = [v92 trailingAnchor];
      v220 = [v203 constraintEqualToAnchor:?];
      v275[14] = v220;
      v197 = [(UILabel *)v9 topAnchor];
      v218 = [(UILabel *)v257 bottomAnchor];
      v217 = [v197 constraintEqualToAnchor:2.0 constant:?];
      v275[15] = v217;
      v191 = [(UILabel *)v9 leadingAnchor];
      v215 = [v92 leadingAnchor];
      v214 = [v191 constraintEqualToAnchor:?];
      v275[16] = v214;
      v190 = [(UILabel *)v9 trailingAnchor];
      v212 = [v92 trailingAnchor];
      v195 = [v190 constraintEqualToAnchor:?];
      v275[17] = v195;
      v96 = [(UILabel *)v267 topAnchor];
      v209 = [(UILabel *)v9 bottomAnchor];
      v210 = v96;
      v208 = [v96 constraintEqualToAnchor:2.0 constant:?];
      v275[18] = v208;
      v97 = [(UILabel *)v267 leadingAnchor];
      v206 = [v92 leadingAnchor];
      v207 = v97;
      v205 = [v97 constraintEqualToAnchor:?];
      v275[19] = v205;
      v98 = [(UILabel *)v267 trailingAnchor];
      v187 = [v92 trailingAnchor];
      v204 = v98;
      v202 = [v98 constraintEqualToAnchor:v187];
      v275[20] = v202;
      v99 = [(UILabel *)v267 bottomAnchor];
      v200 = [v92 bottomAnchor];
      v201 = v99;
      v198 = [v99 constraintEqualToAnchor:?];
      v275[21] = v198;
      v184 = [(UIButton *)v264 centerYAnchor];
      v196 = [v24 centerYAnchor];
      v175 = [v184 constraintEqualToAnchor:0.0 constant:?];
      v275[22] = v175;
      v100 = [(UIButton *)v264 trailingAnchor];
      v193 = [v24 trailingAnchor];
      v194 = v100;
      v192 = [v100 constraintEqualToAnchor:-20.0 constant:?];
      v275[23] = v192;
      v172 = [(UIButton *)v264 widthAnchor];
      v189 = [v172 constraintEqualToConstant:32.0];
      v275[24] = v189;
      v188 = [(UIButton *)v264 heightAnchor];
      v166 = [v188 constraintEqualToConstant:32.0];
      v275[25] = v166;
      v101 = [(UIView *)v260 leadingAnchor];
      v185 = [(UILabel *)v9 leadingAnchor];
      v186 = v101;
      v183 = [v101 constraintEqualToAnchor:?];
      v275[26] = v183;
      v182 = [(UIView *)v260 heightAnchor];
      v181 = [v182 constraintEqualToConstant:0.5];
      v275[27] = v181;
      v102 = [(UIView *)v260 trailingAnchor];
      v179 = [(UIButton *)v264 trailingAnchor];
      v180 = v102;
      v178 = [v102 constraintEqualToAnchor:?];
      v275[28] = v178;
      v164 = [(UIView *)v260 bottomAnchor];
      v177 = [v24 bottomAnchor];
      v176 = [v164 constraintEqualToAnchor:-0.5 constant:?];
      v275[29] = v176;
      v162 = [(UIView *)v262 leadingAnchor];
      v174 = [(UIImageView *)v8 leadingAnchor];
      v173 = [v162 constraintEqualToAnchor:?];
      v275[30] = v173;
      v160 = [(UIView *)v262 trailingAnchor];
      v171 = [(UIImageView *)v8 trailingAnchor];
      v153 = [v160 constraintEqualToAnchor:?];
      v275[31] = v153;
      v103 = [(UIView *)v262 bottomAnchor];
      v169 = [(UIImageView *)v8 bottomAnchor];
      v170 = v103;
      v161 = [v103 constraintEqualToAnchor:?];
      v275[32] = v161;
      v159 = [(UIView *)v262 heightAnchor];
      v158 = [(UIImageView *)v8 heightAnchor];
      v157 = [v159 constraintEqualToAnchor:v158 multiplier:0.3];
      v275[33] = v157;
      v156 = [(UIProgressView *)v261 leadingAnchor];
      v155 = [(UIImageView *)v8 leadingAnchor];
      v154 = [v156 constraintEqualToAnchor:v155 constant:8.0];
      v275[34] = v154;
      v104 = [(UIProgressView *)v261 trailingAnchor];
      v105 = [(UIImageView *)v8 trailingAnchor];
      v106 = [v104 constraintEqualToAnchor:v105 constant:-8.0];
      v275[35] = v106;
      v107 = [(UIProgressView *)v261 bottomAnchor];
      v108 = [(UIImageView *)v8 bottomAnchor];
      v109 = [v107 constraintEqualToAnchor:v108 constant:-8.0];
      v275[36] = v109;
      v110 = [(UIProgressView *)v261 heightAnchor];
      v111 = [v110 constraintEqualToConstant:2.0];
      v275[37] = v111;
      v112 = [MEMORY[0x277CBEA60] arrayWithObjects:v275 count:38];
      [(_TVRUIUpNextCell *)self setSolariumLayoutConstraints:v112];

      v83 = v162;
      v55 = v258;

      v73 = v166;
      v63 = v264;

      v88 = v153;
      v87 = v160;

      v79 = v164;
    }

    else
    {
      v274[0] = v91;
      v113 = [(UIImageView *)v8 centerYAnchor];
      [v24 centerYAnchor];
      v250 = v252 = v113;
      v249 = [v113 constraintEqualToAnchor:?];
      v274[1] = v249;
      v248 = [(UIImageView *)v8 widthAnchor];
      v247 = [v248 constraintEqualToConstant:117.0];
      v274[2] = v247;
      v246 = [(UIImageView *)v8 heightAnchor];
      v245 = [v246 constraintEqualToConstant:66.0];
      v274[3] = v245;
      v230 = [v38 leadingAnchor];
      v244 = [(UIImageView *)v8 trailingAnchor];
      v243 = [v230 constraintEqualToAnchor:12.0 constant:?];
      v274[4] = v243;
      v114 = [v38 centerYAnchor];
      [v24 centerYAnchor];
      v241 = v242 = v114;
      v240 = [v114 constraintEqualToAnchor:?];
      v274[5] = v240;
      v115 = [v38 trailingAnchor];
      [(UIButton *)v264 leadingAnchor];
      v238 = v239 = v115;
      v237 = [v115 constraintEqualToAnchor:-5.0 constant:?];
      v274[6] = v237;
      v274[7] = v46;
      v236 = [v24 heightAnchor];
      v235 = [v236 constraintGreaterThanOrEqualToConstant:88.0];
      v274[8] = v235;
      v234 = [v24 heightAnchor];
      v233 = [v234 constraintLessThanOrEqualToConstant:350.0];
      v274[9] = v233;
      v222 = [v24 heightAnchor];
      v232 = [(UIImageView *)v8 heightAnchor];
      v231 = [v222 constraintGreaterThanOrEqualToAnchor:16.0 constant:?];
      v274[10] = v231;
      v219 = [v24 heightAnchor];
      v228 = [v38 heightAnchor];
      v227 = [v219 constraintGreaterThanOrEqualToAnchor:?];
      v274[11] = v227;
      v216 = [(UILabel *)v9 topAnchor];
      v226 = [v38 topAnchor];
      v225 = [v216 constraintEqualToAnchor:?];
      v274[12] = v225;
      v213 = [(UILabel *)v9 leadingAnchor];
      v224 = [v38 leadingAnchor];
      v223 = [v213 constraintEqualToAnchor:?];
      v274[13] = v223;
      v203 = [(UILabel *)v9 trailingAnchor];
      v221 = [v38 trailingAnchor];
      v220 = [v203 constraintEqualToAnchor:?];
      v274[14] = v220;
      v197 = [(UILabel *)v267 topAnchor];
      v218 = [(UILabel *)v9 bottomAnchor];
      v217 = [v197 constraintEqualToAnchor:2.0 constant:?];
      v274[15] = v217;
      v191 = [(UILabel *)v267 leadingAnchor];
      v215 = [v38 leadingAnchor];
      v214 = [v191 constraintEqualToAnchor:?];
      v274[16] = v214;
      v190 = [(UILabel *)v267 trailingAnchor];
      v212 = [v38 trailingAnchor];
      v195 = [v190 constraintEqualToAnchor:?];
      v274[17] = v195;
      v116 = [(UILabel *)v267 bottomAnchor];
      v209 = [v38 bottomAnchor];
      v210 = v116;
      v208 = [v116 constraintEqualToAnchor:?];
      v274[18] = v208;
      v117 = [(UIButton *)v264 centerYAnchor];
      v206 = [v24 centerYAnchor];
      v207 = v117;
      v205 = [v117 constraintEqualToAnchor:0.0 constant:?];
      v274[19] = v205;
      v118 = [(UIButton *)v264 trailingAnchor];
      v187 = [v24 trailingAnchor];
      v204 = v118;
      v202 = [v118 constraintEqualToAnchor:v187 constant:-20.0];
      v274[20] = v202;
      v201 = [(UIButton *)v264 widthAnchor];
      v200 = [v201 constraintEqualToConstant:44.0];
      v274[21] = v200;
      v198 = [(UIButton *)v264 heightAnchor];
      v184 = [v198 constraintEqualToConstant:44.0];
      v274[22] = v184;
      v119 = [(UIView *)v260 leadingAnchor];
      v175 = [(UILabel *)v9 leadingAnchor];
      v196 = v119;
      v194 = [v119 constraintEqualToAnchor:v175];
      v274[23] = v194;
      v193 = [(UIView *)v260 heightAnchor];
      v192 = [v193 constraintEqualToConstant:0.5];
      v274[24] = v192;
      v172 = [(UIView *)v260 trailingAnchor];
      v189 = [(UIButton *)v264 trailingAnchor];
      v188 = [v172 constraintEqualToAnchor:?];
      v274[25] = v188;
      v167 = [(UIView *)v260 bottomAnchor];
      v186 = [v24 bottomAnchor];
      v185 = [v167 constraintEqualToAnchor:-0.5 constant:?];
      v274[26] = v185;
      v120 = [(UIView *)v262 leadingAnchor];
      v182 = [(UIImageView *)v8 leadingAnchor];
      v183 = v120;
      v181 = [v120 constraintEqualToAnchor:?];
      v274[27] = v181;
      v121 = [(UIView *)v262 trailingAnchor];
      v179 = [(UIImageView *)v8 trailingAnchor];
      v180 = v121;
      v178 = [v121 constraintEqualToAnchor:?];
      v274[28] = v178;
      v165 = [(UIView *)v262 bottomAnchor];
      v177 = [(UIImageView *)v8 bottomAnchor];
      v176 = [v165 constraintEqualToAnchor:?];
      v274[29] = v176;
      v163 = [(UIView *)v262 heightAnchor];
      v174 = [(UIImageView *)v8 heightAnchor];
      v173 = [v163 constraintEqualToAnchor:0.3 multiplier:?];
      v274[30] = v173;
      v122 = [(UIProgressView *)v261 leadingAnchor];
      v171 = [(UIImageView *)v8 leadingAnchor];
      v123 = [v122 constraintEqualToAnchor:8.0 constant:?];
      v274[31] = v123;
      v124 = [(UIProgressView *)v261 trailingAnchor];
      v169 = [(UIImageView *)v8 trailingAnchor];
      v170 = v124;
      v125 = [v124 constraintEqualToAnchor:-8.0 constant:?];
      v274[32] = v125;
      v126 = [(UIProgressView *)v261 bottomAnchor];
      v127 = [(UIImageView *)v265 bottomAnchor];
      v128 = [v126 constraintEqualToAnchor:v127 constant:-8.0];
      v274[33] = v128;
      v129 = [(UIProgressView *)v261 heightAnchor];
      v130 = [v129 constraintEqualToConstant:2.0];
      v274[34] = v130;
      v131 = [MEMORY[0x277CBEA60] arrayWithObjects:v274 count:35];
      [(_TVRUIUpNextCell *)self setStandardLayoutConstraints:v131];

      v88 = v123;
      v73 = v167;

      v79 = v165;
      v83 = v163;

      v55 = v258;
      v63 = v264;

      v87 = v122;
    }

    v89 = 0x277D75000uLL;
    v48 = v168;
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
  v151 = [(_TVRUIUpNextCell *)self contentView];
  [v151 setNeedsLayout];

  v152 = [(_TVRUIUpNextCell *)self contentView];
  [v152 layoutIfNeeded];
}

- (void)_updateLayoutConstraintsForCurrentSizeCategory
{
  if (+[_TVRUIUpNextCell isSolariumLayout])
  {
    v3 = MEMORY[0x277CCAAD0];
    v5 = [(_TVRUIUpNextCell *)self solariumLayoutConstraints];
    [v3 activateConstraints:v5];
  }

  else
  {
    v4 = [objc_opt_class() isStackedLayout];

    [(_TVRUIUpNextCell *)self _updateLayoutConstraintsForStackedLayout:v4];
  }
}

- (void)_updateLayoutConstraintsForStackedLayout:(BOOL)a3
{
  v4 = MEMORY[0x277CCAAD0];
  if (a3)
  {
    v5 = [(_TVRUIUpNextCell *)self stackedLayoutConstraints];
    [v4 activateConstraints:v5];

    v6 = MEMORY[0x277CCAAD0];
    [(_TVRUIUpNextCell *)self standardLayoutConstraints];
  }

  else
  {
    v7 = [(_TVRUIUpNextCell *)self standardLayoutConstraints];
    [v4 activateConstraints:v7];

    v6 = MEMORY[0x277CCAAD0];
    [(_TVRUIUpNextCell *)self stackedLayoutConstraints];
  }
  v8 = ;
  [v6 deactivateConstraints:?];
}

- (void)_updateSeparatorVisibility
{
  v3 = [(_TVRUIUpNextCell *)self showsSeparator];
  v4 = [(_TVRUIUpNextCell *)self separatorView];
  [v4 setHidden:!v3];
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
  v12 = [MEMORY[0x277D75348] lightGrayColor];
  [v11 setTintColor:v12];

  if (v3)
  {
    v13 = [MEMORY[0x277D75348] colorWithWhite:0.1 alpha:1.0];
    [v11 setBackgroundColor:v13];
  }

  [v11 setOverrideUserInterfaceStyle:2];
  v14 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_actionButtonTapped_];
  [v11 addGestureRecognizer:v14];
  v15 = [(_TVRUIUpNextCell *)self _actionMenu];
  [v11 setMenu:v15];
  [v11 setShowsMenuAsPrimaryAction:1];

  return v11;
}

- (void)actionButtonTapped:(id)a3
{
  v3 = [(_TVRUIUpNextCell *)self actionButton];
  [v3 sendActionsForControlEvents:0x2000];
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

- (void)_updateForUpNextInfo:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 mediaInfo];
  v6 = [v5 title];
  v7 = [(_TVRUIUpNextCell *)self titleLabel];
  [v7 setText:v6];

  v8 = [(_TVRUIUpNextCell *)self _secondaryTextForUpNextInfo:v4];
  v9 = [(_TVRUIUpNextCell *)self secondaryLabel];
  [v9 setText:v8];

  if (+[_TVRUIUpNextCell isSolariumLayout])
  {
    v10 = [v4 reason];
    v11 = [(_TVRUIUpNextCell *)self tertiaryLabel];
    [v11 setText:v10];
  }

  v12 = [v4 tvruiupnextvc_hasPercentComplete];
  v13 = [(_TVRUIUpNextCell *)self playbackProgressView];
  [v13 setHidden:v12 ^ 1u];

  v14 = [(_TVRUIUpNextCell *)self gradientView];
  [v14 setHidden:v12 ^ 1u];

  if (v12)
  {
    [v4 tvruiupnextvc_percentComplete];
    v16 = v15;
    v17 = [(_TVRUIUpNextCell *)self playbackProgressView];
    *&v18 = v16;
    [v17 setProgress:v18];
  }

  v19 = [v4 artworkNeedsCornerBlur];
  v20 = [(_TVRUIUpNextCell *)self attributionMaskImageView];
  [v20 setHidden:v19 ^ 1u];

  v21 = [v5 imageURLTemplate];
  if ([v21 length])
  {
    objc_initWeak(location, self);
    v22 = [(_TVRUIUpNextCell *)self delegate];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __41___TVRUIUpNextCell__updateForUpNextInfo___block_invoke;
    v31[3] = &unk_279D87EC8;
    objc_copyWeak(&v32, location);
    [v22 requestImageForInfo:v4 completion:v31];

    objc_destroyWeak(&v32);
    objc_destroyWeak(location);
  }

  else
  {
    v23 = _TVRUINowPlayingLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = [v5 identifier];
      *location = 134218242;
      *&location[4] = self;
      v34 = 2112;
      v35 = v24;
      _os_log_impl(&dword_26CFEB000, v23, OS_LOG_TYPE_INFO, "UpNext cell %p for %@ has no imageURLTemplare, blanking image...", location, 0x16u);
    }

    v25 = [(_TVRUIUpNextCell *)self imageView];
    [v25 setImage:0];
  }

  v26 = [v5 channelImageURLTemplate];
  if ([v26 length])
  {
    objc_initWeak(location, self);
    v27 = [(_TVRUIUpNextCell *)self delegate];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __41___TVRUIUpNextCell__updateForUpNextInfo___block_invoke_450;
    v28[3] = &unk_279D88568;
    v29 = v26;
    objc_copyWeak(&v30, location);
    [v27 requestImageForURLTemplate:v29 size:v29 identifier:v28 completion:{22.0, 22.0}];

    objc_destroyWeak(&v30);
    objc_destroyWeak(location);
  }
}

- (id)_secondaryTextForUpNextInfo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v7 = 0;
    goto LABEL_20;
  }

  v6 = [v4 mediaInfo];
  if (+[_TVRUIUpNextCell isSolariumLayout])
  {
    v7 = &stru_287E6AEF8;
  }

  else
  {
    v8 = [v5 reason];
    v7 = __48___TVRUIUpNextCell__secondaryTextForUpNextInfo___block_invoke(v8, &stru_287E6AEF8, v8);
  }

  if ([v6 kind] == 1)
  {
    v9 = [v6 seasonNumber];
    if (v9)
    {
      v10 = v9;
      v11 = [v6 episodeNumber];

      if (v11)
      {
        v12 = [(_TVRUIUpNextCell *)self _seasonEpisodeFormatString];
        v13 = MEMORY[0x277CCACA8];
        v14 = [v6 seasonNumber];
        v15 = [v6 episodeNumber];
        v16 = [v13 stringWithFormat:v12, v14, v15];
        v17 = __48___TVRUIUpNextCell__secondaryTextForUpNextInfo___block_invoke(v16, v7, v16);

        v7 = v17;
      }
    }
  }

  v18 = [v5 timeRemaining];
  [v18 floatValue];
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

  v24 = [v5 service];
  v25 = [v24 length];
  if (v25)
  {
    v26 = __48___TVRUIUpNextCell__secondaryTextForUpNextInfo___block_invoke(v25, v7, v24);
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

- (BOOL)hasURLForProductPageKind:(int64_t)a3
{
  v3 = [(_TVRUIUpNextCell *)self urlForProductPageKind:a3];
  v4 = v3 != 0;

  return v4;
}

- (void)openProductPageForKind:(int64_t)a3
{
  v4 = [(_TVRUIUpNextCell *)self urlForProductPageKind:a3];
  if (v4)
  {
    [(_TVRUIUpNextCell *)self openURL:v4];
  }

  MEMORY[0x2821F96F8]();
}

- (id)urlForProductPageKind:(int64_t)a3
{
  v5 = [(_TVRUIUpNextCell *)self upNextInfo];
  v6 = [v5 shareURL];

  v7 = [(_TVRUIUpNextCell *)self upNextInfo];
  v8 = v7;
  if (!v6)
  {
    v10 = [v7 mediaInfo];

    if (v10)
    {
      if (a3 == 1 || a3 == 3)
      {
        v11 = [v10 productURL];
        goto LABEL_16;
      }

      if (a3 == 2)
      {
        v11 = [v10 showURL];
LABEL_16:
        v12 = v11;
        goto LABEL_17;
      }
    }

    v12 = 0;
LABEL_17:
    v8 = v10;
    goto LABEL_18;
  }

  if (a3 == 1 || a3 == 3)
  {
    v9 = [v7 shareURL];
    goto LABEL_12;
  }

  if (a3 == 2)
  {
    v9 = [v7 shareShowURL];
LABEL_12:
    v12 = v9;
    goto LABEL_18;
  }

  v12 = 0;
LABEL_18:

  return v12;
}

- (void)openURL:(id)a3
{
  v4 = a3;
  v5 = [(_TVRUIUpNextCell *)self delegate];
  [v5 openURL:v4];
}

- (_TVRUIUpNextViewControllerActionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end