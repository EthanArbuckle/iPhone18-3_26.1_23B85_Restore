@interface TVRUIChannelButton
- (CATransform3D)_transformForLeftWingExpanded:(SEL)expanded;
- (CATransform3D)_transformForRightWingExpanded:(SEL)expanded;
- (TVRUIChannelButton)initWithTitle:(id)title styleProvider:(id)provider;
- (_TVRUIEventDelegate)buttonEventDelegate;
- (id)_newSpringAnimation;
- (id)chevronLeftWingAnimationExpand:(BOOL)expand;
- (id)chevronRightWingAnimationExpand:(BOOL)expand;
- (void)_buttonPressed:(id)pressed;
- (void)_buttonReleased:(id)released;
- (void)_darkenSystemColorsChanged:(id)changed;
- (void)collapse;
- (void)expand;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation TVRUIChannelButton

- (TVRUIChannelButton)initWithTitle:(id)title styleProvider:(id)provider
{
  titleCopy = title;
  providerCopy = provider;
  v35.receiver = self;
  v35.super_class = TVRUIChannelButton;
  v8 = [(TVRUIChannelButton *)&v35 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v9 = v8;
  if (v8)
  {
    [(TVRUIChannelButton *)v8 setStyleProvider:providerCopy];
    v10 = objc_alloc_init(MEMORY[0x277D75D18]);
    contentView = v9->_contentView;
    v9->_contentView = v10;

    [(UIView *)v9->_contentView setClipsToBounds:1];
    [providerCopy mediaControlsButtonSize];
    v13 = v12 * 0.5;
    layer = [(UIView *)v9->_contentView layer];
    [layer setCornerRadius:v13];

    v15 = *MEMORY[0x277CDA138];
    layer2 = [(UIView *)v9->_contentView layer];
    [layer2 setCornerCurve:v15];

    layer3 = [(UIView *)v9->_contentView layer];
    [layer3 setAnchorPoint:{0.5, 1.0}];

    [(TVRUIChannelButton *)v9 addSubview:v9->_contentView];
    v18 = [[TVRUIPageButton alloc] initWithType:26 hasTapAction:0];
    topButton = v9->_topButton;
    v9->_topButton = v18;

    clearColor = [MEMORY[0x277D75348] clearColor];
    [(TVRUIPageButton *)v9->_topButton setBackgroundColor:clearColor];

    [(TVRUIButton *)v9->_topButton setDisableHighlightEffect:1];
    [(UIView *)v9->_contentView addSubview:v9->_topButton];
    v21 = [[TVRUIPageButton alloc] initWithType:27 hasTapAction:0];
    bottomButton = v9->_bottomButton;
    v9->_bottomButton = v21;

    CATransform3DMakeRotation(&v34, 3.14159265, 0.0, 0.0, 1.0);
    contentLayer = [(TVRUIPageButton *)v9->_bottomButton contentLayer];
    v33 = v34;
    [contentLayer setTransform:&v33];

    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [(TVRUIPageButton *)v9->_bottomButton setBackgroundColor:clearColor2];

    [(TVRUIButton *)v9->_bottomButton setDisableHighlightEffect:1];
    [(UIView *)v9->_contentView addSubview:v9->_bottomButton];
    v25 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = v9->_titleLabel;
    v9->_titleLabel = v25;

    [(UILabel *)v9->_titleLabel setText:titleCopy];
    buttonTextColor = [providerCopy buttonTextColor];
    [(UILabel *)v9->_titleLabel setTextColor:buttonTextColor];

    pagingButtonFont = [providerCopy pagingButtonFont];
    [(UILabel *)v9->_titleLabel setFont:pagingButtonFont];

    [(UILabel *)v9->_titleLabel setTextAlignment:1];
    [(UILabel *)v9->_titleLabel setAdjustsFontForContentSizeCategory:1];
    [(UIView *)v9->_contentView addSubview:v9->_titleLabel];
    [(UILabel *)v9->_titleLabel sizeToFit];
    [(TVRUIPageButton *)v9->_topButton addTarget:v9 action:sel__buttonPressed_ forControlEvents:1];
    [(TVRUIPageButton *)v9->_topButton addTarget:v9 action:sel__buttonReleased_ forControlEvents:448];
    [(TVRUIPageButton *)v9->_bottomButton addTarget:v9 action:sel__buttonPressed_ forControlEvents:1];
    [(TVRUIPageButton *)v9->_bottomButton addTarget:v9 action:sel__buttonReleased_ forControlEvents:448];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel__darkenSystemColorsChanged_ name:*MEMORY[0x277D76460] object:0];

    [(TVRUIChannelButton *)v9 setUserInteractionEnabled:1];
    v30 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v9 action:sel_expand];
    [(TVRUIChannelButton *)v9 addGestureRecognizer:v30];
    clearColor3 = [MEMORY[0x277D75348] clearColor];
    [(TVRUIChannelButton *)v9 setBackgroundColor:clearColor3];

    [(TVRUIButton *)v9->_topButton setEnabled:0];
    [(TVRUIButton *)v9->_bottomButton setEnabled:0];
  }

  return v9;
}

- (void)setEnabled:(BOOL)enabled
{
  self->_enabled = enabled;
  if (enabled)
  {
    topButton = [(TVRUIChannelButton *)self topButton];
    [topButton setEnabled:1];

    bottomButton = [(TVRUIChannelButton *)self bottomButton];
    [bottomButton setEnabled:1];

    styleProvider = [(TVRUIChannelButton *)self styleProvider];
    buttonTextColor = [styleProvider buttonTextColor];
    v8 = 1.0;
  }

  else
  {
    styleProvider2 = [(TVRUIChannelButton *)self styleProvider];
    [styleProvider2 disabledButtonAlpha];
    v8 = v10;

    topButton2 = [(TVRUIChannelButton *)self topButton];
    [topButton2 setEnabled:0];

    bottomButton2 = [(TVRUIChannelButton *)self bottomButton];
    [bottomButton2 setEnabled:0];

    styleProvider = [(TVRUIChannelButton *)self styleProvider];
    buttonTextColor = [styleProvider tintColorForButtonDisabled];
  }

  titleLabel = [(TVRUIChannelButton *)self titleLabel];
  [titleLabel setTextColor:buttonTextColor];

  [(TVRUIChannelButton *)self setAlpha:v8];
}

- (void)layoutSubviews
{
  v30.receiver = self;
  v30.super_class = TVRUIChannelButton;
  [(TVRUIChannelButton *)&v30 layoutSubviews];
  [(TVRUIChannelButton *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  isExpanded = [(TVRUIChannelButton *)self isExpanded];
  contentView = [(TVRUIChannelButton *)self contentView];
  v13 = contentView;
  if (isExpanded)
  {
    [contentView setBounds:{0.0, 0.0, v8, 144.0}];

    v31.origin.x = v4;
    v31.origin.y = v6;
    v31.size.width = v8;
    v31.size.height = v10;
    MidX = CGRectGetMidX(v31);
    contentView2 = [(TVRUIChannelButton *)self contentView];
    [contentView2 bounds];
    MidY = CGRectGetMidY(v32);
    titleLabel = [(TVRUIChannelButton *)self titleLabel];
    [titleLabel setCenter:{MidX, MidY}];

    topButton = [(TVRUIChannelButton *)self topButton];
    v19 = 72.0;
    [topButton setFrame:{0.0, 0.0, v8, 72.0}];

    contentView3 = [(TVRUIChannelButton *)self contentView];
    [contentView3 bounds];
    MaxY = CGRectGetMidY(v33);
  }

  else
  {
    [contentView setFrame:{v4, v6, v8, v10}];

    v34.origin.x = v4;
    v34.origin.y = v6;
    v34.size.width = v8;
    v34.size.height = v10;
    v22 = CGRectGetMidX(v34);
    v35.origin.x = v4;
    v35.origin.y = v6;
    v35.size.width = v8;
    v35.size.height = v10;
    v23 = CGRectGetMidY(v35);
    titleLabel2 = [(TVRUIChannelButton *)self titleLabel];
    [titleLabel2 setCenter:{v22, v23}];

    titleLabel3 = [(TVRUIChannelButton *)self titleLabel];
    [titleLabel3 frame];
    v26 = CGRectGetMinY(v36) + -10.0;
    topButton2 = [(TVRUIChannelButton *)self topButton];
    v19 = 10.0;
    [topButton2 setFrame:{0.0, v26, v8, 10.0}];

    contentView3 = [(TVRUIChannelButton *)self titleLabel];
    [contentView3 frame];
    MaxY = CGRectGetMaxY(v37);
  }

  v28 = MaxY;
  bottomButton = [(TVRUIChannelButton *)self bottomButton];
  [bottomButton setFrame:{0.0, v28, v8, v19}];
}

- (void)expand
{
  if (![(TVRUIChannelButton *)self isExpanded]&& ![(TVRUIChannelButton *)self isAnimating])
  {
    contentView = [(TVRUIChannelButton *)self contentView];
    [contentView bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v63 = v8;

    v67.origin.x = v5;
    v67.origin.y = v7;
    v67.size.width = v9;
    v67.size.height = 144.0;
    Width = CGRectGetWidth(v67);
    v68.origin.x = v5;
    v68.origin.y = v7;
    v68.size.width = v9;
    v68.size.height = 144.0;
    MidY = CGRectGetMidY(v68);
    v11 = MidY + -36.0;
    titleLabel = [(TVRUIChannelButton *)self titleLabel];
    [titleLabel frame];
    v14 = 36.0 - v13 * 0.5;

    v15 = MidY + 36.0;
    titleLabel2 = [(TVRUIChannelButton *)self titleLabel];
    [titleLabel2 frame];
    v18 = v17 * 0.5 + 36.0;

    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    [MEMORY[0x277CD9FF0] setAnimationDuration:1.0];
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __28__TVRUIChannelButton_expand__block_invoke;
    v66[3] = &unk_279D885E0;
    v66[4] = self;
    *&v66[5] = v5;
    *&v66[6] = v7;
    *&v66[7] = v63;
    v66[8] = 0x4062000000000000;
    *&v66[9] = Width;
    v66[10] = 0x4052000000000000;
    *&v66[11] = v11;
    *&v66[12] = v14;
    *&v66[13] = v15;
    *&v66[14] = v18;
    [MEMORY[0x277CD9FF0] setCompletionBlock:v66];
    _newSpringAnimation = [(TVRUIChannelButton *)self _newSpringAnimation];
    [_newSpringAnimation setKeyPath:?];
    v20 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
    v65 = _newSpringAnimation;
    [_newSpringAnimation setToValue:v20];

    topButton = [(TVRUIChannelButton *)self topButton];
    contentLayer = [topButton contentLayer];
    [contentLayer addAnimation:_newSpringAnimation forKey:@"topChevronContentLayerPositionAnim"];

    topButton2 = [(TVRUIChannelButton *)self topButton];
    leftWing = [topButton2 leftWing];
    v25 = [(TVRUIChannelButton *)self chevronLeftWingAnimationExpand:1];
    [leftWing addAnimation:v25 forKey:@"transform.rotate"];

    topButton3 = [(TVRUIChannelButton *)self topButton];
    rightWing = [topButton3 rightWing];
    v28 = [(TVRUIChannelButton *)self chevronRightWingAnimationExpand:1];
    [rightWing addAnimation:v28 forKey:@"transform.rotate"];

    _newSpringAnimation2 = [(TVRUIChannelButton *)self _newSpringAnimation];
    [_newSpringAnimation2 setKeyPath:@"bounds.size.height"];
    v30 = [MEMORY[0x277CCABB0] numberWithDouble:72.0];
    [_newSpringAnimation2 setToValue:v30];

    topButton4 = [(TVRUIChannelButton *)self topButton];
    layer = [topButton4 layer];
    [layer addAnimation:_newSpringAnimation2 forKey:@"topChevronBoundsAnim"];

    _newSpringAnimation3 = [(TVRUIChannelButton *)self _newSpringAnimation];
    [_newSpringAnimation3 setKeyPath:@"position.y"];
    v34 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
    [_newSpringAnimation3 setToValue:v34];

    topButton5 = [(TVRUIChannelButton *)self topButton];
    layer2 = [topButton5 layer];
    [layer2 addAnimation:_newSpringAnimation3 forKey:@"topChevronPositionAnim"];

    _newSpringAnimation4 = [(TVRUIChannelButton *)self _newSpringAnimation];
    [_newSpringAnimation4 setKeyPath:@"position.y"];
    v69.origin.x = v5;
    v69.origin.y = v7;
    v69.size.width = v63;
    v69.size.height = 144.0;
    v38 = [MEMORY[0x277CCABB0] numberWithDouble:CGRectGetMidY(v69)];
    [_newSpringAnimation4 setToValue:v38];

    titleLabel3 = [(TVRUIChannelButton *)self titleLabel];
    layer3 = [titleLabel3 layer];
    [layer3 addAnimation:_newSpringAnimation4 forKey:@"channelPosAnim"];

    _newSpringAnimation5 = [(TVRUIChannelButton *)self _newSpringAnimation];
    [_newSpringAnimation5 setKeyPath:@"position.y"];
    v42 = [MEMORY[0x277CCABB0] numberWithDouble:v18];
    [_newSpringAnimation5 setToValue:v42];

    bottomButton = [(TVRUIChannelButton *)self bottomButton];
    contentLayer2 = [bottomButton contentLayer];
    [contentLayer2 addAnimation:_newSpringAnimation5 forKey:@"bottomChevronContentLayerPositionAnim"];

    bottomButton2 = [(TVRUIChannelButton *)self bottomButton];
    leftWing2 = [bottomButton2 leftWing];
    v47 = [(TVRUIChannelButton *)self chevronLeftWingAnimationExpand:1];
    [leftWing2 addAnimation:v47 forKey:@"transform.rotate"];

    bottomButton3 = [(TVRUIChannelButton *)self bottomButton];
    rightWing2 = [bottomButton3 rightWing];
    v50 = [(TVRUIChannelButton *)self chevronRightWingAnimationExpand:1];
    [rightWing2 addAnimation:v50 forKey:@"transform.rotate"];

    _newSpringAnimation6 = [(TVRUIChannelButton *)self _newSpringAnimation];
    [_newSpringAnimation6 setKeyPath:@"bounds.size.height"];
    v52 = [MEMORY[0x277CCABB0] numberWithDouble:72.0];
    [_newSpringAnimation6 setToValue:v52];

    bottomButton4 = [(TVRUIChannelButton *)self bottomButton];
    layer4 = [bottomButton4 layer];
    [layer4 addAnimation:_newSpringAnimation6 forKey:@"bottomChevronBoundsAnim"];

    _newSpringAnimation7 = [(TVRUIChannelButton *)self _newSpringAnimation];
    [_newSpringAnimation7 setKeyPath:@"position.y"];
    v56 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
    [_newSpringAnimation7 setToValue:v56];

    bottomButton5 = [(TVRUIChannelButton *)self bottomButton];
    layer5 = [bottomButton5 layer];
    [layer5 addAnimation:_newSpringAnimation7 forKey:@"bottomChevronPositionAnim"];

    _newSpringAnimation8 = [(TVRUIChannelButton *)self _newSpringAnimation];
    [_newSpringAnimation8 setKeyPath:@"bounds.size.height"];
    v60 = [MEMORY[0x277CCABB0] numberWithDouble:144.0];
    [_newSpringAnimation8 setToValue:v60];

    contentView2 = [(TVRUIChannelButton *)self contentView];
    layer6 = [contentView2 layer];
    [layer6 addAnimation:_newSpringAnimation8 forKey:@"contentLayerBoundsAnim"];

    [MEMORY[0x277CD9FF0] commit];
    [(TVRUIChannelButton *)self setIsAnimating:1];
  }
}

uint64_t __28__TVRUIChannelButton_expand__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setIsExpanded:1];
  MidX = CGRectGetMidX(*(a1 + 40));
  MidY = CGRectGetMidY(*(a1 + 40));
  v4 = [*(a1 + 32) titleLabel];
  v5 = [v4 layer];
  [v5 setPosition:{MidX, MidY}];

  v6 = [*(a1 + 32) titleLabel];
  v7 = [v6 layer];
  [v7 removeAllAnimations];

  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  v10 = [*(a1 + 32) topButton];
  v11 = [v10 layer];
  [v11 setBounds:{0.0, 0.0, v8, v9}];

  v12 = CGRectGetMidX(*(a1 + 40));
  v13 = *(a1 + 88);
  v14 = [*(a1 + 32) topButton];
  v15 = [v14 layer];
  [v15 setPosition:{v12, v13}];

  v16 = [*(a1 + 32) topButton];
  v17 = [v16 layer];
  [v17 removeAllAnimations];

  v18 = [*(a1 + 32) topButton];
  v19 = [v18 contentLayer];
  [v19 position];
  v21 = v20;
  v22 = *(a1 + 96);
  v23 = [*(a1 + 32) topButton];
  v24 = [v23 contentLayer];
  [v24 setPosition:{v21, v22}];

  v25 = [*(a1 + 32) topButton];
  v26 = [v25 contentLayer];
  [v26 removeAllAnimations];

  v27 = *(a1 + 32);
  v28 = [v27 isExpanded];
  if (v27)
  {
    [v27 _transformForLeftWingExpanded:v28];
  }

  else
  {
    v135 = 0u;
    v136 = 0u;
    v133 = 0u;
    v134 = 0u;
    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
  }

  v29 = [*(a1 + 32) topButton];
  v30 = [v29 leftWing];
  v125 = v133;
  v126 = v134;
  v127 = v135;
  v128 = v136;
  v121 = v129;
  v122 = v130;
  v123 = v131;
  v124 = v132;
  [v30 setTransform:&v121];

  v31 = *(a1 + 32);
  v32 = [v31 isExpanded];
  if (v31)
  {
    [v31 _transformForRightWingExpanded:v32];
  }

  else
  {
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
  }

  v33 = [*(a1 + 32) topButton];
  v34 = [v33 rightWing];
  v125 = v117;
  v126 = v118;
  v127 = v119;
  v128 = v120;
  v121 = v113;
  v122 = v114;
  v123 = v115;
  v124 = v116;
  [v34 setTransform:&v121];

  v35 = [*(a1 + 32) topButton];
  v36 = [v35 leftWing];
  [v36 removeAllAnimations];

  v37 = [*(a1 + 32) topButton];
  v38 = [v37 rightWing];
  [v38 removeAllAnimations];

  v39 = *(a1 + 72);
  v40 = *(a1 + 80);
  v41 = [*(a1 + 32) bottomButton];
  v42 = [v41 layer];
  [v42 setBounds:{0.0, 0.0, v39, v40}];

  v43 = CGRectGetMidX(*(a1 + 40));
  v44 = *(a1 + 104);
  v45 = [*(a1 + 32) bottomButton];
  v46 = [v45 layer];
  [v46 setPosition:{v43, v44}];

  v47 = [*(a1 + 32) bottomButton];
  v48 = [v47 layer];
  [v48 removeAllAnimations];

  v49 = *(a1 + 32);
  v50 = [v49 isExpanded];
  if (v49)
  {
    [v49 _transformForLeftWingExpanded:v50];
  }

  else
  {
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
  }

  v51 = [*(a1 + 32) bottomButton];
  v52 = [v51 leftWing];
  v125 = v109;
  v126 = v110;
  v127 = v111;
  v128 = v112;
  v121 = v105;
  v122 = v106;
  v123 = v107;
  v124 = v108;
  [v52 setTransform:&v121];

  v53 = *(a1 + 32);
  v54 = [v53 isExpanded];
  if (v53)
  {
    [v53 _transformForRightWingExpanded:v54];
  }

  else
  {
    v101 = 0u;
    v103 = 0u;
    v97 = 0u;
    v99 = 0u;
    v93 = 0u;
    v95 = 0u;
    v89 = 0u;
    v91 = 0u;
  }

  v55 = [*(a1 + 32) bottomButton];
  v56 = [v55 rightWing];
  v125 = v98;
  v126 = v100;
  v127 = v102;
  v128 = v104;
  v121 = v90;
  v122 = v92;
  v123 = v94;
  v124 = v96;
  [v56 setTransform:&v121];

  v57 = [*(a1 + 32) bottomButton];
  v58 = [v57 leftWing];
  [v58 removeAllAnimations];

  v59 = [*(a1 + 32) bottomButton];
  v60 = [v59 rightWing];
  [v60 removeAllAnimations];

  v61 = [*(a1 + 32) topButton];
  v62 = [v61 contentLayer];
  [v62 position];
  v64 = v63;
  v65 = *(a1 + 112);
  v66 = [*(a1 + 32) bottomButton];
  v67 = [v66 contentLayer];
  [v67 setPosition:{v64, v65}];

  v68 = [*(a1 + 32) bottomButton];
  v69 = [v68 contentLayer];
  [v69 removeAllAnimations];

  v70 = [*(a1 + 32) contentView];
  v71 = [v70 layer];
  [v71 position];
  v73 = v72;
  v75 = v74;

  v76 = *(a1 + 40);
  v77 = *(a1 + 48);
  v78 = *(a1 + 56);
  v79 = *(a1 + 64);
  v80 = [*(a1 + 32) contentView];
  v81 = [v80 layer];
  [v81 setFrame:{v76, v77, v78, v79}];

  v82 = [*(a1 + 32) contentView];
  v83 = [v82 layer];
  [v83 setPosition:{v73, v75}];

  v84 = [*(a1 + 32) contentView];
  v85 = [v84 layer];
  [v85 removeAllAnimations];

  v86 = [*(a1 + 32) topButton];
  [v86 setEnabled:1];

  v87 = [*(a1 + 32) bottomButton];
  [v87 setEnabled:1];

  return [*(a1 + 32) setIsAnimating:0];
}

- (id)_newSpringAnimation
{
  v2 = objc_alloc_init(MEMORY[0x277CD9FA0]);
  [v2 setMass:2.0];
  [v2 setStiffness:300.0];
  [v2 setDamping:50.0];
  [v2 settlingDuration];
  [v2 setDuration:?];
  [v2 setFillMode:*MEMORY[0x277CDA238]];
  [v2 setRemovedOnCompletion:0];
  return v2;
}

- (CATransform3D)_transformForLeftWingExpanded:(SEL)expanded
{
  v4 = -0.279253;
  if (a4)
  {
    v4 = -0.785398;
  }

  return CATransform3DMakeRotation(retstr, v4, 0.0, 0.0, 1.0);
}

- (CATransform3D)_transformForRightWingExpanded:(SEL)expanded
{
  v4 = 0.279253;
  if (a4)
  {
    v4 = 0.785398;
  }

  return CATransform3DMakeRotation(retstr, v4, 0.0, 0.0, 1.0);
}

- (id)chevronLeftWingAnimationExpand:(BOOL)expand
{
  expandCopy = expand;
  _newSpringAnimation = [(TVRUIChannelButton *)self _newSpringAnimation];
  [_newSpringAnimation setKeyPath:@"transform.rotation.z"];
  if (expandCopy)
  {
    v5 = &unk_287E84E80;
  }

  else
  {
    v5 = &unk_287E84E90;
  }

  [_newSpringAnimation setToValue:v5];

  return _newSpringAnimation;
}

- (id)chevronRightWingAnimationExpand:(BOOL)expand
{
  expandCopy = expand;
  _newSpringAnimation = [(TVRUIChannelButton *)self _newSpringAnimation];
  [_newSpringAnimation setKeyPath:@"transform.rotation.z"];
  if (expandCopy)
  {
    v5 = &unk_287E84EA0;
  }

  else
  {
    v5 = &unk_287E84EB0;
  }

  [_newSpringAnimation setToValue:v5];

  return _newSpringAnimation;
}

- (void)collapse
{
  if ([(TVRUIChannelButton *)self isExpanded])
  {
    if (![(TVRUIChannelButton *)self isAnimating])
    {
      contentView = [(TVRUIChannelButton *)self contentView];
      [contentView bounds];
      v5 = v4;
      v7 = v6;
      v9 = v8;

      v66.origin.x = v5;
      v66.origin.y = v7;
      v66.size.width = v9;
      v66.size.height = 64.0;
      Width = CGRectGetWidth(v66);
      v67.origin.x = v5;
      v67.origin.y = v7;
      v67.size.width = v9;
      v67.size.height = 64.0;
      MidY = CGRectGetMidY(v67);
      titleLabel = [(TVRUIChannelButton *)self titleLabel];
      layer = [titleLabel layer];
      [layer frame];
      v15 = MidY - v14 * 0.5 + -5.0;

      titleLabel2 = [(TVRUIChannelButton *)self titleLabel];
      layer2 = [titleLabel2 layer];
      [layer2 frame];
      v19 = MidY + v18 * 0.5 + 5.0;

      [MEMORY[0x277CD9FF0] begin];
      [MEMORY[0x277CD9FF0] setDisableActions:1];
      [MEMORY[0x277CD9FF0] setAnimationDuration:1.0];
      v65[0] = MEMORY[0x277D85DD0];
      v65[1] = 3221225472;
      v65[2] = __30__TVRUIChannelButton_collapse__block_invoke;
      v65[3] = &unk_279D88608;
      v65[4] = self;
      *&v65[5] = v5;
      *&v65[6] = v7;
      *&v65[7] = v9;
      v65[8] = 0x4050000000000000;
      *&v65[9] = Width;
      v65[10] = 0x4024000000000000;
      *&v65[11] = v15;
      v65[12] = 0x4014000000000000;
      *&v65[13] = v19;
      [MEMORY[0x277CD9FF0] setCompletionBlock:v65];
      _newSpringAnimation = [(TVRUIChannelButton *)self _newSpringAnimation];
      [_newSpringAnimation setKeyPath:?];
      v21 = [MEMORY[0x277CCABB0] numberWithDouble:5.0];
      v64 = _newSpringAnimation;
      [_newSpringAnimation setToValue:v21];

      topButton = [(TVRUIChannelButton *)self topButton];
      contentLayer = [topButton contentLayer];
      [contentLayer addAnimation:_newSpringAnimation forKey:@"topChevronContentLayerPositionAnim"];

      topButton2 = [(TVRUIChannelButton *)self topButton];
      leftWing = [topButton2 leftWing];
      v26 = [(TVRUIChannelButton *)self chevronLeftWingAnimationExpand:0];
      [leftWing addAnimation:v26 forKey:@"transform.rotate"];

      topButton3 = [(TVRUIChannelButton *)self topButton];
      rightWing = [topButton3 rightWing];
      v29 = [(TVRUIChannelButton *)self chevronRightWingAnimationExpand:0];
      [rightWing addAnimation:v29 forKey:@"transform.rotate"];

      _newSpringAnimation2 = [(TVRUIChannelButton *)self _newSpringAnimation];
      [_newSpringAnimation2 setKeyPath:@"bounds.size.height"];
      v31 = [MEMORY[0x277CCABB0] numberWithDouble:10.0];
      [_newSpringAnimation2 setToValue:v31];

      topButton4 = [(TVRUIChannelButton *)self topButton];
      layer3 = [topButton4 layer];
      [layer3 addAnimation:_newSpringAnimation2 forKey:@"topChevronBoundsAnim"];

      _newSpringAnimation3 = [(TVRUIChannelButton *)self _newSpringAnimation];
      [_newSpringAnimation3 setKeyPath:@"position.y"];
      v35 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
      [_newSpringAnimation3 setToValue:v35];

      topButton5 = [(TVRUIChannelButton *)self topButton];
      layer4 = [topButton5 layer];
      [layer4 addAnimation:_newSpringAnimation3 forKey:@"topChevronPositionAnim"];

      _newSpringAnimation4 = [(TVRUIChannelButton *)self _newSpringAnimation];
      [_newSpringAnimation4 setKeyPath:@"position.y"];
      v39 = [MEMORY[0x277CCABB0] numberWithDouble:MidY];
      [_newSpringAnimation4 setToValue:v39];

      titleLabel3 = [(TVRUIChannelButton *)self titleLabel];
      layer5 = [titleLabel3 layer];
      [layer5 addAnimation:_newSpringAnimation4 forKey:@"channelPosAnim"];

      _newSpringAnimation5 = [(TVRUIChannelButton *)self _newSpringAnimation];
      [_newSpringAnimation5 setKeyPath:@"position.y"];
      v43 = [MEMORY[0x277CCABB0] numberWithDouble:5.0];
      [_newSpringAnimation5 setToValue:v43];

      bottomButton = [(TVRUIChannelButton *)self bottomButton];
      contentLayer2 = [bottomButton contentLayer];
      [contentLayer2 addAnimation:_newSpringAnimation5 forKey:@"bottomChevronContentLayerPositionAnim"];

      bottomButton2 = [(TVRUIChannelButton *)self bottomButton];
      leftWing2 = [bottomButton2 leftWing];
      v48 = [(TVRUIChannelButton *)self chevronLeftWingAnimationExpand:0];
      [leftWing2 addAnimation:v48 forKey:@"transform.rotate"];

      bottomButton3 = [(TVRUIChannelButton *)self bottomButton];
      rightWing2 = [bottomButton3 rightWing];
      v51 = [(TVRUIChannelButton *)self chevronRightWingAnimationExpand:0];
      [rightWing2 addAnimation:v51 forKey:@"transform.rotate"];

      _newSpringAnimation6 = [(TVRUIChannelButton *)self _newSpringAnimation];
      [_newSpringAnimation6 setKeyPath:@"bounds.size.height"];
      v53 = [MEMORY[0x277CCABB0] numberWithDouble:10.0];
      [_newSpringAnimation6 setToValue:v53];

      bottomButton4 = [(TVRUIChannelButton *)self bottomButton];
      layer6 = [bottomButton4 layer];
      [layer6 addAnimation:_newSpringAnimation6 forKey:@"bottomChevronBoundsAnim"];

      _newSpringAnimation7 = [(TVRUIChannelButton *)self _newSpringAnimation];
      [_newSpringAnimation7 setKeyPath:@"position.y"];
      v57 = [MEMORY[0x277CCABB0] numberWithDouble:v19];
      [_newSpringAnimation7 setToValue:v57];

      bottomButton5 = [(TVRUIChannelButton *)self bottomButton];
      layer7 = [bottomButton5 layer];
      [layer7 addAnimation:_newSpringAnimation7 forKey:@"bottomChevronPositionAnim"];

      _newSpringAnimation8 = [(TVRUIChannelButton *)self _newSpringAnimation];
      [_newSpringAnimation8 setKeyPath:@"bounds.size.height"];
      v61 = [MEMORY[0x277CCABB0] numberWithDouble:64.0];
      [_newSpringAnimation8 setToValue:v61];

      contentView2 = [(TVRUIChannelButton *)self contentView];
      layer8 = [contentView2 layer];
      [layer8 addAnimation:_newSpringAnimation8 forKey:@"contentLayerBoundsAnim"];

      [MEMORY[0x277CD9FF0] commit];
      [(TVRUIChannelButton *)self setIsAnimating:1];
    }
  }
}

uint64_t __30__TVRUIChannelButton_collapse__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setIsExpanded:0];
  MidX = CGRectGetMidX(*(a1 + 40));
  MidY = CGRectGetMidY(*(a1 + 40));
  v4 = [*(a1 + 32) titleLabel];
  v5 = [v4 layer];
  [v5 setPosition:{MidX, MidY}];

  v6 = [*(a1 + 32) titleLabel];
  v7 = [v6 layer];
  [v7 removeAllAnimations];

  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  v10 = [*(a1 + 32) topButton];
  v11 = [v10 layer];
  [v11 setBounds:{0.0, 0.0, v8, v9}];

  v12 = CGRectGetMidX(*(a1 + 40));
  v13 = *(a1 + 88);
  v14 = [*(a1 + 32) topButton];
  v15 = [v14 layer];
  [v15 setPosition:{v12, v13}];

  v16 = [*(a1 + 32) topButton];
  v17 = [v16 layer];
  [v17 removeAllAnimations];

  v18 = [*(a1 + 32) topButton];
  v19 = [v18 contentLayer];
  [v19 position];
  v21 = v20;
  v22 = *(a1 + 96);
  v23 = [*(a1 + 32) topButton];
  v24 = [v23 contentLayer];
  [v24 setPosition:{v21, v22}];

  v25 = [*(a1 + 32) topButton];
  v26 = [v25 contentLayer];
  [v26 removeAllAnimations];

  v27 = *(a1 + 32);
  v28 = [v27 isExpanded];
  if (v27)
  {
    [v27 _transformForLeftWingExpanded:v28];
  }

  else
  {
    v135 = 0u;
    v136 = 0u;
    v133 = 0u;
    v134 = 0u;
    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
  }

  v29 = [*(a1 + 32) topButton];
  v30 = [v29 leftWing];
  v125 = v133;
  v126 = v134;
  v127 = v135;
  v128 = v136;
  v121 = v129;
  v122 = v130;
  v123 = v131;
  v124 = v132;
  [v30 setTransform:&v121];

  v31 = *(a1 + 32);
  v32 = [v31 isExpanded];
  if (v31)
  {
    [v31 _transformForRightWingExpanded:v32];
  }

  else
  {
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
  }

  v33 = [*(a1 + 32) topButton];
  v34 = [v33 rightWing];
  v125 = v117;
  v126 = v118;
  v127 = v119;
  v128 = v120;
  v121 = v113;
  v122 = v114;
  v123 = v115;
  v124 = v116;
  [v34 setTransform:&v121];

  v35 = [*(a1 + 32) topButton];
  v36 = [v35 leftWing];
  [v36 removeAllAnimations];

  v37 = [*(a1 + 32) topButton];
  v38 = [v37 rightWing];
  [v38 removeAllAnimations];

  v39 = *(a1 + 72);
  v40 = *(a1 + 80);
  v41 = [*(a1 + 32) bottomButton];
  v42 = [v41 layer];
  [v42 setBounds:{0.0, 0.0, v39, v40}];

  v43 = CGRectGetMidX(*(a1 + 40));
  v44 = *(a1 + 104);
  v45 = [*(a1 + 32) bottomButton];
  v46 = [v45 layer];
  [v46 setPosition:{v43, v44}];

  v47 = [*(a1 + 32) bottomButton];
  v48 = [v47 layer];
  [v48 removeAllAnimations];

  v49 = *(a1 + 32);
  v50 = [v49 isExpanded];
  if (v49)
  {
    [v49 _transformForLeftWingExpanded:v50];
  }

  else
  {
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
  }

  v51 = [*(a1 + 32) bottomButton];
  v52 = [v51 leftWing];
  v125 = v109;
  v126 = v110;
  v127 = v111;
  v128 = v112;
  v121 = v105;
  v122 = v106;
  v123 = v107;
  v124 = v108;
  [v52 setTransform:&v121];

  v53 = *(a1 + 32);
  v54 = [v53 isExpanded];
  if (v53)
  {
    [v53 _transformForRightWingExpanded:v54];
  }

  else
  {
    v101 = 0u;
    v103 = 0u;
    v97 = 0u;
    v99 = 0u;
    v93 = 0u;
    v95 = 0u;
    v89 = 0u;
    v91 = 0u;
  }

  v55 = [*(a1 + 32) bottomButton];
  v56 = [v55 rightWing];
  v125 = v98;
  v126 = v100;
  v127 = v102;
  v128 = v104;
  v121 = v90;
  v122 = v92;
  v123 = v94;
  v124 = v96;
  [v56 setTransform:&v121];

  v57 = [*(a1 + 32) bottomButton];
  v58 = [v57 leftWing];
  [v58 removeAllAnimations];

  v59 = [*(a1 + 32) bottomButton];
  v60 = [v59 rightWing];
  [v60 removeAllAnimations];

  v61 = [*(a1 + 32) topButton];
  v62 = [v61 contentLayer];
  [v62 position];
  v64 = v63;
  v65 = *(a1 + 96);
  v66 = [*(a1 + 32) bottomButton];
  v67 = [v66 contentLayer];
  [v67 setPosition:{v64, v65}];

  v68 = [*(a1 + 32) bottomButton];
  v69 = [v68 contentLayer];
  [v69 removeAllAnimations];

  v70 = [*(a1 + 32) contentView];
  v71 = [v70 layer];
  [v71 position];
  v73 = v72;
  v75 = v74;

  v76 = *(a1 + 40);
  v77 = *(a1 + 48);
  v78 = *(a1 + 56);
  v79 = *(a1 + 64);
  v80 = [*(a1 + 32) contentView];
  v81 = [v80 layer];
  [v81 setFrame:{v76, v77, v78, v79}];

  v82 = [*(a1 + 32) contentView];
  v83 = [v82 layer];
  [v83 setPosition:{v73, v75}];

  v84 = [*(a1 + 32) contentView];
  v85 = [v84 layer];
  [v85 removeAllAnimations];

  v86 = [*(a1 + 32) topButton];
  [v86 setEnabled:0];

  v87 = [*(a1 + 32) bottomButton];
  [v87 setEnabled:0];

  return [*(a1 + 32) setIsAnimating:0];
}

- (void)_darkenSystemColorsChanged:(id)changed
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[TVRUIChannelButton _darkenSystemColorsChanged:]";
    _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
  }

  styleProvider = [(TVRUIChannelButton *)self styleProvider];
  buttonBackgroundColor = [styleProvider buttonBackgroundColor];
  [(TVRUIChannelButton *)self setBackgroundColor:buttonBackgroundColor];
}

- (void)_buttonPressed:(id)pressed
{
  v9 = +[TVRUIButtonEvent createButtonEvent:buttonType:](TVRUIButtonEvent, "createButtonEvent:buttonType:", 1, [pressed buttonType]);
  buttonEventDelegate = [(TVRUIChannelButton *)self buttonEventDelegate];
  if (buttonEventDelegate)
  {
    v5 = buttonEventDelegate;
    buttonEventDelegate2 = [(TVRUIChannelButton *)self buttonEventDelegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      buttonEventDelegate3 = [(TVRUIChannelButton *)self buttonEventDelegate];
      [buttonEventDelegate3 generatedButtonEvent:v9];
    }
  }
}

- (void)_buttonReleased:(id)released
{
  v9 = +[TVRUIButtonEvent createButtonEvent:buttonType:](TVRUIButtonEvent, "createButtonEvent:buttonType:", 2, [released buttonType]);
  buttonEventDelegate = [(TVRUIChannelButton *)self buttonEventDelegate];
  if (buttonEventDelegate)
  {
    v5 = buttonEventDelegate;
    buttonEventDelegate2 = [(TVRUIChannelButton *)self buttonEventDelegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      buttonEventDelegate3 = [(TVRUIChannelButton *)self buttonEventDelegate];
      [buttonEventDelegate3 generatedButtonEvent:v9];
    }
  }
}

- (_TVRUIEventDelegate)buttonEventDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_buttonEventDelegate);

  return WeakRetained;
}

@end