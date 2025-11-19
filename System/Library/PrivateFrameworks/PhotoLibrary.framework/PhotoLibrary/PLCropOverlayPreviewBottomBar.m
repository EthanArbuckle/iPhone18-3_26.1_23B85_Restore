@interface PLCropOverlayPreviewBottomBar
- (PLCropOverlayPreviewBottomBar)initWithCoder:(id)a3;
- (PLCropOverlayPreviewBottomBar)initWithFrame:(CGRect)a3;
- (void)_commonPLCropOverlayEditPhotoBottomBarInitialization;
- (void)_updateBackgroundStyle;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setBackgroundStyle:(int64_t)a3 animated:(BOOL)a4;
@end

@implementation PLCropOverlayPreviewBottomBar

- (void)_updateBackgroundStyle
{
  if (self->_backgroundStyle == 1)
  {
    v3 = [MEMORY[0x277D75348] clearColor];
  }

  else
  {
    v3 = [MEMORY[0x277D75348] colorWithWhite:0.101960786 alpha:0.75];
  }

  [(PLCropOverlayPreviewBottomBar *)self setBackgroundColor:v3];
}

- (void)setBackgroundStyle:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_backgroundStyle != a3)
  {
    v6[5] = v4;
    v6[6] = v5;
    self->_backgroundStyle = a3;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __61__PLCropOverlayPreviewBottomBar_setBackgroundStyle_animated___block_invoke;
    v6[3] = &unk_2782A2020;
    v6[4] = self;
    if (a4)
    {
      [MEMORY[0x277D75D18] animateWithDuration:v6 animations:0.3];
    }

    else
    {
      [(PLCropOverlayPreviewBottomBar *)self _updateBackgroundStyle];
    }
  }
}

- (void)layoutSubviews
{
  v125.receiver = self;
  v125.super_class = PLCropOverlayPreviewBottomBar;
  [(PLCropOverlayPreviewBottomBar *)&v125 layoutSubviews];
  v3 = [MEMORY[0x277D75D18] userInterfaceLayoutDirectionForSemanticContentAttribute:{-[PLCropOverlayPreviewBottomBar semanticContentAttribute](self, "semanticContentAttribute")}];
  [(PLCropOverlayPreviewBottomBar *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(PLCropOverlayPreviewBottomBar *)self safeAreaInsets];
  v121 = v9 - (v12 + v13);
  v122 = v5 + v12;
  v123 = v11 - (v14 + v15);
  v124 = v7 + v14;
  [(UIButton *)self->_cancelButton sizeToFit];
  [(UIButton *)self->_cancelButton bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = [-[PLCropOverlayPreviewBottomBar traitCollection](self "traitCollection")];
  v119 = v21;
  rect = v23;
  if (v24 == 6)
  {
    v26 = v121;
    v25 = v122;
    v28 = v123;
    v27 = v124;
    if (v3)
    {
      MaxX = CGRectGetMaxX(*&v25);
      v126.origin.x = v17;
      v126.origin.y = v19;
      v126.size.width = v21;
      v126.size.height = rect;
      MinX = MaxX - CGRectGetWidth(v126);
      v23 = rect;
      v31 = -13.0;
    }

    else
    {
      MinX = CGRectGetMinX(*&v25);
      v31 = 13.0;
    }

    v52 = MinX + v31;
    v128.size.width = v121;
    v128.origin.x = v122;
    v128.size.height = v123;
    v128.origin.y = v124;
    v53 = CGRectGetMaxY(v128) + -32.0;
    v129.origin.x = v52;
    v129.origin.y = v19;
    v129.size.width = v21;
    v129.size.height = v23;
    v54 = v53 - CGRectGetHeight(v129);
  }

  else
  {
    [(UILabel *)[(UIButton *)self->_cancelButton titleLabel] frame];
    v32 = v19;
    v33 = v23;
    v35 = v34;
    v108 = v37;
    v109 = v36;
    v107 = v38;
    [(UILabel *)[(UIButton *)self->_cancelButton titleLabel] textRectForBounds:1 limitedToNumberOfLines:v17, v32, v21, v33];
    v113 = v40;
    v115 = v39;
    v111 = v41;
    v117 = v42;
    v43 = v122;
    v44 = v124;
    v45 = v121;
    v46 = v123;
    if (v3)
    {
      v47 = CGRectGetMaxX(*&v43);
      v127.origin.x = v17;
      v127.origin.y = v32;
      v127.size.width = v21;
      v127.size.height = v33;
      v48 = v47 - CGRectGetWidth(v127) + -13.0;
      v50 = v113;
      v49 = v115;
      v51 = v111;
    }

    else
    {
      v55 = CGRectGetMinX(*&v43) + 13.0;
      v130.origin.x = v35;
      v130.size.width = v108;
      v130.origin.y = v109;
      v130.size.height = v107;
      v56 = v55 - CGRectGetMinX(v130);
      v50 = v113;
      v49 = v115;
      v131.origin.x = v115;
      v131.origin.y = v113;
      v51 = v111;
      v131.size.width = v111;
      v131.size.height = v117;
      v48 = v56 - CGRectGetMinX(v131);
    }

    v132.size.width = v121;
    v132.origin.x = v122;
    v132.size.height = v123;
    v132.origin.y = v124;
    v57 = CGRectGetMaxY(v132) + -32.0;
    v133.origin.x = v49;
    v133.origin.y = v50;
    v133.size.width = v51;
    v133.size.height = v117;
    v54 = v57 - CGRectGetHeight(v133);
    v52 = v48;
  }

  v116 = v54;
  v118 = v52;
  [(UIButton *)self->_cancelButton setFrame:v52];
  [(UIButton *)self->_playbackButton sizeToFit];
  [(UIButton *)self->_playbackButton bounds];
  UIRectCenteredIntegralRectScale();
  [(UIButton *)self->_playbackButton setFrame:0];
  [(UIButton *)self->_doneButton sizeToFit];
  [(UIButton *)self->_doneButton bounds];
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;
  if (v24 == 6)
  {
    v67 = v121;
    v66 = v122;
    v69 = v123;
    v68 = v124;
    if (v3)
    {
      v70 = CGRectGetMinX(*&v66);
      v71 = 13.0;
    }

    else
    {
      v90 = CGRectGetMaxX(*&v66);
      v134.origin.x = v59;
      v134.origin.y = v61;
      v134.size.width = v63;
      v134.size.height = v65;
      v70 = v90 - CGRectGetWidth(v134);
      v71 = -13.0;
    }

    v89 = v70 + v71;
    v135.size.width = v121;
    v135.origin.x = v122;
    v135.size.height = v123;
    v135.origin.y = v124;
    v91 = CGRectGetMaxY(v135) + -32.0;
    v92 = v89;
    v93 = v61;
    v94 = v63;
    v95 = v65;
  }

  else
  {
    [(UILabel *)[(UIButton *)self->_doneButton titleLabel] frame];
    v73 = v72;
    v112 = v75;
    v114 = v74;
    v110 = v76;
    [(UILabel *)[(UIButton *)self->_doneButton titleLabel] textRectForBounds:1 limitedToNumberOfLines:v59, v61, v63, v65];
    v78 = v77;
    v80 = v79;
    v82 = v81;
    v84 = v83;
    v86 = v121;
    v85 = v122;
    v88 = v123;
    v87 = v124;
    if (v3)
    {
      v89 = CGRectGetMinX(*&v85) + 13.0;
    }

    else
    {
      v96 = CGRectGetMaxX(*&v85) + -13.0;
      v136.origin.x = v73;
      v136.size.width = v112;
      v136.origin.y = v114;
      v136.size.height = v110;
      v97 = v96 - CGRectGetMinX(v136);
      v137.origin.x = v78;
      v137.origin.y = v80;
      v137.size.width = v82;
      v137.size.height = v84;
      v89 = v97 - CGRectGetMaxX(v137);
    }

    v98 = v84;
    v99 = v82;
    v100 = v80;
    v138.size.width = v121;
    v138.origin.x = v122;
    v138.size.height = v123;
    v138.origin.y = v124;
    v91 = CGRectGetMaxY(v138) + -32.0;
    v92 = v78;
    v93 = v100;
    v94 = v99;
    v95 = v98;
  }

  v101 = v91 - CGRectGetHeight(*&v92);
  [(UIButton *)self->_doneButton setFrame:v89, v101, v63, v65];
  v102 = v116;
  v103 = v118;
  if (v3)
  {
    v104 = v89;
  }

  else
  {
    v104 = v118;
  }

  if (v3)
  {
    v102 = v101;
  }

  v105 = v119;
  v106 = rect;
  if (v3)
  {
    v105 = v63;
    v106 = v65;
  }

  else
  {
    v103 = v89;
  }

  [(UIButton *)self->_fileResizingButton setFrame:v105 + v104 + 13.0, v102, v103 + -13.0 - (v105 + v104 + 13.0), v106];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PLCropOverlayPreviewBottomBar;
  [(PLCropOverlayPreviewBottomBar *)&v3 dealloc];
}

- (PLCropOverlayPreviewBottomBar)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = PLCropOverlayPreviewBottomBar;
  v3 = [(PLCropOverlayPreviewBottomBar *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(PLCropOverlayPreviewBottomBar *)v3 _commonPLCropOverlayEditPhotoBottomBarInitialization];
  }

  return v4;
}

- (PLCropOverlayPreviewBottomBar)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PLCropOverlayPreviewBottomBar;
  v3 = [(PLCropOverlayPreviewBottomBar *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PLCropOverlayPreviewBottomBar *)v3 _commonPLCropOverlayEditPhotoBottomBarInitialization];
  }

  return v4;
}

- (void)_commonPLCropOverlayEditPhotoBottomBarInitialization
{
  self->_backgroundStyle = 0;
  v3 = [-[PLCropOverlayPreviewBottomBar traitCollection](self "traitCollection")];
  v4 = [MEMORY[0x277D74300] fontWithDescriptor:objc_msgSend(MEMORY[0x277D74310] size:{"preferredFontDescriptorWithTextStyle:", *MEMORY[0x277D76918]), 18.0}];
  if (v3 == 6)
  {
    v5 = [MEMORY[0x277D75220] buttonWithConfiguration:objc_msgSend(MEMORY[0x277D75230] primaryAction:{"borderlessButtonConfiguration"), 0}];
  }

  else
  {
    v5 = [MEMORY[0x277D75220] buttonWithType:0];
  }

  v6 = v5;
  self->_cancelButton = v6;
  -[UIButton setTitleColor:forState:](v6, "setTitleColor:forState:", [MEMORY[0x277D75348] whiteColor], 0);
  [(UIButton *)self->_cancelButton setExclusiveTouch:1];
  [(UILabel *)[(UIButton *)self->_cancelButton titleLabel] setFont:v4];
  [(UIButton *)self->_cancelButton setAccessibilityIdentifier:@"Cancel"];
  [(PLCropOverlayPreviewBottomBar *)self addSubview:self->_cancelButton];
  v7 = [MEMORY[0x277D75220] buttonWithType:0];
  self->_playbackButton = v7;
  [(UIButton *)v7 setExclusiveTouch:1];
  [(UIButton *)self->_playbackButton setAccessibilityIdentifier:@"Playback"];
  [(PLCropOverlayPreviewBottomBar *)self addSubview:self->_playbackButton];
  if (v3 == 6)
  {
    v8 = [MEMORY[0x277D75220] buttonWithConfiguration:objc_msgSend(MEMORY[0x277D75230] primaryAction:{"borderlessButtonConfiguration"), 0}];
  }

  else
  {
    v8 = [MEMORY[0x277D75220] buttonWithType:0];
  }

  v9 = v8;
  self->_doneButton = v9;
  [(UIButton *)v9 setExclusiveTouch:1];
  -[UIButton setTitleColor:forState:](self->_doneButton, "setTitleColor:forState:", [MEMORY[0x277D75348] whiteColor], 0);
  [(UILabel *)[(UIButton *)self->_doneButton titleLabel] setFont:v4];
  [(UIButton *)self->_doneButton setAccessibilityIdentifier:@"Done"];
  [(PLCropOverlayPreviewBottomBar *)self addSubview:self->_doneButton];
  v10 = [MEMORY[0x277D75220] buttonWithType:1];
  self->_fileResizingButton = v10;
  [(UIButton *)v10 setExclusiveTouch:1];
  -[UIButton setTitleColor:forState:](self->_fileResizingButton, "setTitleColor:forState:", [MEMORY[0x277D75348] whiteColor], 0);
  [(UILabel *)[(UIButton *)self->_fileResizingButton titleLabel] setFont:v4];
  [(UILabel *)[(UIButton *)self->_fileResizingButton titleLabel] setAdjustsFontSizeToFitWidth:1];
  [(UIButton *)self->_fileResizingButton setHidden:1];
  [(UIButton *)self->_fileResizingButton setAccessibilityIdentifier:@"FileSize"];
  [(PLCropOverlayPreviewBottomBar *)self addSubview:self->_fileResizingButton];

  [(PLCropOverlayPreviewBottomBar *)self _updateBackgroundStyle];
}

@end