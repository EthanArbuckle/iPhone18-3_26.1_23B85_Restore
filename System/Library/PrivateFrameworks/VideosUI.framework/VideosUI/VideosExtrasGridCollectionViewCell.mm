@interface VideosExtrasGridCollectionViewCell
- (IKLockupElement)lockupElement;
- (VideosExtrasGridCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)configureForLockup:(id)lockup cellStyle:(id)style withSizing:(BOOL)sizing;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation VideosExtrasGridCollectionViewCell

- (VideosExtrasGridCollectionViewCell)initWithFrame:(CGRect)frame
{
  v51[2] = *MEMORY[0x1E69E9840];
  v50.receiver = self;
  v50.super_class = VideosExtrasGridCollectionViewCell;
  v3 = [(VideosExtrasGridCollectionViewCell *)&v50 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(VideosExtrasGridCollectionViewCell *)v3 setBackgroundColor:clearColor];

    initForAutolayout = [objc_alloc(MEMORY[0x1E69DCC10]) initForAutolayout];
    [initForAutolayout MPU_setAutomaticallyUpdatesTextStyleFontsToPreferredTextStyleFonts:1];
    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    [initForAutolayout setBackgroundColor:clearColor2];

    [initForAutolayout setTextAlignment:1];
    LODWORD(v7) = 1144750080;
    [initForAutolayout setContentHuggingPriority:1 forAxis:v7];
    contentView = [(VideosExtrasGridCollectionViewCell *)v3 contentView];
    [contentView addSubview:initForAutolayout];

    [(VideosExtrasGridCollectionViewCell *)v3 setTitleLabel:initForAutolayout];
    initForAutolayout2 = [objc_alloc(MEMORY[0x1E69DCC10]) initForAutolayout];
    [initForAutolayout2 MPU_setAutomaticallyUpdatesTextStyleFontsToPreferredTextStyleFonts:1];
    clearColor3 = [MEMORY[0x1E69DC888] clearColor];
    [initForAutolayout2 setBackgroundColor:clearColor3];

    [initForAutolayout2 setTextAlignment:1];
    LODWORD(v11) = 1144733696;
    [initForAutolayout2 setContentHuggingPriority:1 forAxis:v11];
    contentView2 = [(VideosExtrasGridCollectionViewCell *)v3 contentView];
    [contentView2 addSubview:initForAutolayout2];

    [(VideosExtrasGridCollectionViewCell *)v3 setSubtitleLabel:initForAutolayout2];
    initForAutolayout3 = [[VideosExtrasConstrainedArtworkContainerView alloc] initForAutolayout];
    artworkContainer = v3->_artworkContainer;
    v3->_artworkContainer = initForAutolayout3;

    [(VideosExtrasConstrainedArtworkContainerView *)v3->_artworkContainer setClipsToBounds:1];
    [(VideosExtrasConstrainedArtworkContainerView *)v3->_artworkContainer setShouldBottomAlignArtwork:1];
    v15 = [MEMORY[0x1E696ACD8] constraintWithItem:v3->_artworkContainer attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:0.0];
    artworkContainerWidthConstraint = v3->_artworkContainerWidthConstraint;
    v3->_artworkContainerWidthConstraint = v15;

    v17 = [MEMORY[0x1E696ACD8] constraintWithItem:v3->_artworkContainer attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:0.0];
    artworkContainerHeightConstraint = v3->_artworkContainerHeightConstraint;
    v3->_artworkContainerHeightConstraint = v17;

    contentView3 = [(VideosExtrasGridCollectionViewCell *)v3 contentView];
    [contentView3 addSubview:v3->_artworkContainer];

    contentView4 = [(VideosExtrasGridCollectionViewCell *)v3 contentView];
    v51[0] = v3->_artworkContainerWidthConstraint;
    v51[1] = v3->_artworkContainerHeightConstraint;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:2];
    [contentView4 addConstraints:v21];

    artworkView = [(VideosExtrasConstrainedArtworkContainerView *)v3->_artworkContainer artworkView];
    [artworkView setDimsWhenHighlighted:1];
    clearColor4 = [MEMORY[0x1E69DC888] clearColor];
    [artworkView setBackgroundColor:clearColor4];

    v24 = MEMORY[0x1E696ACD8];
    contentView5 = [(VideosExtrasGridCollectionViewCell *)v3 contentView];
    v26 = *MEMORY[0x1E69DDCE0];
    v27 = *(MEMORY[0x1E69DDCE0] + 8);
    v28 = *(MEMORY[0x1E69DDCE0] + 16);
    v29 = *(MEMORY[0x1E69DDCE0] + 24);
    v30 = [v24 constraintsByAttachingView:initForAutolayout toView:contentView5 alongEdges:10 insets:{*MEMORY[0x1E69DDCE0], v27, v28, v29}];

    v31 = MEMORY[0x1E696ACD8];
    contentView6 = [(VideosExtrasGridCollectionViewCell *)v3 contentView];
    v33 = [v31 constraintsByAttachingView:initForAutolayout2 toView:contentView6 alongEdges:10 insets:{v26, v27, v28, v29}];

    contentView7 = [(VideosExtrasGridCollectionViewCell *)v3 contentView];
    [contentView7 addConstraints:v30];

    contentView8 = [(VideosExtrasGridCollectionViewCell *)v3 contentView];
    [contentView8 addConstraints:v33];

    v36 = MEMORY[0x1E696ACD8];
    v37 = v3->_artworkContainer;
    contentView9 = [(VideosExtrasGridCollectionViewCell *)v3 contentView];
    v39 = [v36 constraintsByAttachingView:v37 toView:contentView9 alongEdges:11 insets:{v26, v27, v28, v29}];

    contentView10 = [(VideosExtrasGridCollectionViewCell *)v3 contentView];
    [contentView10 addConstraints:v39];

    initForAutolayout4 = [objc_alloc(MEMORY[0x1E69DD250]) initForAutolayout];
    spacerView = v3->_spacerView;
    v3->_spacerView = initForAutolayout4;

    contentView11 = [(VideosExtrasGridCollectionViewCell *)v3 contentView];
    [contentView11 addSubview:v3->_spacerView];

    v44 = MEMORY[0x1E696ACD8];
    v45 = v3->_spacerView;
    contentView12 = [(VideosExtrasGridCollectionViewCell *)v3 contentView];
    v47 = [v44 constraintWithItem:v45 attribute:4 relatedBy:0 toItem:contentView12 attribute:4 multiplier:1.0 constant:0.0];

    contentView13 = [(VideosExtrasGridCollectionViewCell *)v3 contentView];
    [contentView13 addConstraint:v47];
  }

  return v3;
}

- (void)configureForLockup:(id)lockup cellStyle:(id)style withSizing:(BOOL)sizing
{
  v150 = *MEMORY[0x1E69E9840];
  lockupCopy = lockup;
  styleCopy = style;
  [(VideosExtrasGridCollectionViewCell *)self setLockupElement:lockupCopy];
  title = [lockupCopy title];
  v140 = lockupCopy;
  subtitle = [lockupCopy subtitle];
  v139 = title;
  text = [title text];
  v12 = [text length];

  v138 = subtitle;
  text2 = [subtitle text];
  titleTextStyle2 = [text2 length];

  if (v12)
  {
    titleTextColor = [styleCopy titleTextColor];
    titleLabel = [(VideosExtrasGridCollectionViewCell *)self titleLabel];
    [titleLabel setTextColor:titleTextColor];

    v17 = MEMORY[0x1E69DB880];
    titleDefaultFontAttributes = [styleCopy titleDefaultFontAttributes];
    v19 = [v17 fontDescriptorWithFontAttributes:titleDefaultFontAttributes];

    alignment = [v139 alignment];
    titleLabel2 = [(VideosExtrasGridCollectionViewCell *)self titleLabel];
    titleTextStyle = [styleCopy titleTextStyle];
    [titleLabel2 configureForIKTextElement:v139 fontDescriptor:v19 textStyle:titleTextStyle];

    titleLabel3 = [(VideosExtrasGridCollectionViewCell *)self titleLabel];
    numberOfLines = [titleLabel3 numberOfLines];

    if (numberOfLines >= 3)
    {
      titleLabel4 = [(VideosExtrasGridCollectionViewCell *)self titleLabel];
      [titleLabel4 setNumberOfLines:2];
    }

    if (!alignment)
    {
      defaultTextAlignment = [styleCopy defaultTextAlignment];
      titleLabel5 = [(VideosExtrasGridCollectionViewCell *)self titleLabel];
      [titleLabel5 setTextAlignment:defaultTextAlignment];
    }
  }

  if (titleTextStyle2)
  {
    subtitleTextColor = [styleCopy subtitleTextColor];
    subtitleLabel = [(VideosExtrasGridCollectionViewCell *)self subtitleLabel];
    [subtitleLabel setTextColor:subtitleTextColor];

    v30 = MEMORY[0x1E69DB880];
    subtitleDefaultFontAttributes = [styleCopy subtitleDefaultFontAttributes];
    v32 = [v30 fontDescriptorWithFontAttributes:subtitleDefaultFontAttributes];

    alignment2 = [subtitle alignment];
    subtitleLabel2 = [(VideosExtrasGridCollectionViewCell *)self subtitleLabel];
    subtitleTextStyle = [styleCopy subtitleTextStyle];
    [subtitleLabel2 configureForIKTextElement:subtitle fontDescriptor:v32 textStyle:subtitleTextStyle];

    subtitleLabel3 = [(VideosExtrasGridCollectionViewCell *)self subtitleLabel];
    numberOfLines2 = [subtitleLabel3 numberOfLines];

    if (numberOfLines2 >= 3)
    {
      subtitleLabel4 = [(VideosExtrasGridCollectionViewCell *)self subtitleLabel];
      [subtitleLabel4 setNumberOfLines:2];
    }

    if (!alignment2)
    {
      defaultTextAlignment2 = [styleCopy defaultTextAlignment];
      subtitleLabel5 = [(VideosExtrasGridCollectionViewCell *)self subtitleLabel];
      [subtitleLabel5 setTextAlignment:defaultTextAlignment2];
    }
  }

  [styleCopy imageSize];
  v42 = v41;
  v44 = v43;
  [(NSLayoutConstraint *)self->_artworkContainerWidthConstraint setConstant:?];
  [(NSLayoutConstraint *)self->_artworkContainerHeightConstraint setConstant:v44];
  image = [v140 image];
  if (image && !sizing)
  {
    [v140 overlays];
    v145 = 0u;
    v146 = 0u;
    v147 = 0u;
    v134 = v148 = 0u;
    children = [v134 children];
    v47 = [children countByEnumeratingWithState:&v145 objects:v149 count:16];
    v137 = v12;
    if (v47)
    {
      v48 = v47;
      v49 = *v146;
LABEL_17:
      v50 = 0;
      while (1)
      {
        if (*v146 != v49)
        {
          objc_enumerationMutation(children);
        }

        v51 = *(*(&v145 + 1) + 8 * v50);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        if (v48 == ++v50)
        {
          v48 = [children countByEnumeratingWithState:&v145 objects:v149 count:16];
          if (v48)
          {
            goto LABEL_17;
          }

          goto LABEL_26;
        }
      }

      resourceImage = [v51 resourceImage];

      if (!resourceImage)
      {
        goto LABEL_27;
      }

      artworkContainer = [(VideosExtrasGridCollectionViewCell *)self artworkContainer];
      [artworkContainer setOverlayImage:resourceImage];

      artworkContainer2 = [(VideosExtrasGridCollectionViewCell *)self artworkContainer];
      [artworkContainer2 setOverlayScale:0.3];

      children = resourceImage;
    }

LABEL_26:

LABEL_27:
    placeholderURL = [image placeholderURL];
    v56 = [MEMORY[0x1E69DCAB8] imageForPlaceholderURL:placeholderURL];
    artworkContainer3 = [(VideosExtrasGridCollectionViewCell *)self artworkContainer];
    artworkView = [artworkContainer3 artworkView];
    [artworkView setPlaceholderImage:v56];

    borderColor = [image borderColor];
    v60 = borderColor;
    v61 = image;
    if (borderColor)
    {
      v62 = borderColor;
    }

    else
    {
      v62 = [MEMORY[0x1E69DC888] colorWithWhite:0.2 alpha:1.0];
    }

    v63 = v62;

    artworkContainer4 = [(VideosExtrasGridCollectionViewCell *)self artworkContainer];
    layer = [artworkContainer4 layer];
    [layer setBorderColor:{objc_msgSend(v63, "CGColor")}];

    artworkContainer5 = [(VideosExtrasGridCollectionViewCell *)self artworkContainer];
    layer2 = [artworkContainer5 layer];
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    [layer2 setBorderWidth:1.0 / v69];

    image = v61;
    artworkCatalog = [v61 artworkCatalog];
    [artworkCatalog setFittingSize:{v42, v44}];
    v141[0] = MEMORY[0x1E69E9820];
    v141[1] = 3221225472;
    v141[2] = __78__VideosExtrasGridCollectionViewCell_configureForLockup_cellStyle_withSizing___block_invoke;
    v141[3] = &unk_1E8734650;
    v142 = v140;
    selfCopy = self;
    v144 = v63;
    v71 = v63;
    [artworkCatalog setDestination:self configurationBlock:v141];

    v12 = v137;
  }

  if (!(v12 | titleTextStyle2))
  {
    if (self->_topLineHeight)
    {
      contentView = [(VideosExtrasGridCollectionViewCell *)self contentView];
      [contentView removeConstraint:self->_topLineHeight];

      topLineHeight = self->_topLineHeight;
      self->_topLineHeight = 0;
    }

    if (self->_subtitleLineHeight)
    {
      contentView2 = [(VideosExtrasGridCollectionViewCell *)self contentView];
      [contentView2 removeConstraint:self->_subtitleLineHeight];

      subtitleLineHeight = self->_subtitleLineHeight;
      self->_subtitleLineHeight = 0;
    }

    spacerTop = self->_spacerTop;
    if (!spacerTop)
    {
      goto LABEL_49;
    }

    secondItem = [(NSLayoutConstraint *)spacerTop secondItem];
    artworkContainer = self->_artworkContainer;

    if (secondItem != artworkContainer)
    {
      contentView3 = [(VideosExtrasGridCollectionViewCell *)self contentView];
      [contentView3 removeConstraint:self->_spacerTop];

      v80 = self->_spacerTop;
      self->_spacerTop = 0;
    }

    if (!self->_spacerTop)
    {
LABEL_49:
      v88 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_spacerView attribute:3 relatedBy:0 toItem:self->_artworkContainer attribute:4 multiplier:1.0 constant:0.0];
      v89 = self->_spacerTop;
      self->_spacerTop = v88;

      contentView4 = [(VideosExtrasGridCollectionViewCell *)self contentView];
      [contentView4 addConstraint:self->_spacerTop];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      contentView5 = [(VideosExtrasGridCollectionViewCell *)self contentView];
      [contentView5 removeConstraint:self->_spacerHeight];

      spacerHeight = self->_spacerHeight;
      self->_spacerHeight = 0;
    }

    v93 = self->_spacerHeight;
    if (!v93)
    {
      v94 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_spacerView attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:0.0];
      v95 = self->_spacerHeight;
      self->_spacerHeight = v94;

      contentView6 = [(VideosExtrasGridCollectionViewCell *)self contentView];
      [contentView6 addConstraint:self->_spacerHeight];

      v93 = self->_spacerHeight;
    }

    [(NSLayoutConstraint *)v93 setConstant:10.0];
    goto LABEL_81;
  }

  v135 = image;
  if (!v12 || !titleTextStyle2)
  {
    if (v12 != 0 && titleTextStyle2 == 0)
    {
      titleLabel6 = [(VideosExtrasGridCollectionViewCell *)self titleLabel];
      titleTextStyle2 = [styleCopy titleTextStyle];
      titleLabel7 = [(VideosExtrasGridCollectionViewCell *)self titleLabel];
      titleTextStyle3 = [styleCopy titleTextStyle];
      goto LABEL_56;
    }

    if (v12)
    {
      titleLabel6 = 0;
      titleTextStyle2 = 0;
    }

    else
    {
      if (titleTextStyle2)
      {
        titleLabel6 = [(VideosExtrasGridCollectionViewCell *)self subtitleLabel];
        subtitleTextStyle2 = [styleCopy subtitleTextStyle];
        goto LABEL_44;
      }

      titleLabel6 = 0;
    }

    titleLabel7 = 0;
    v87 = 0;
    goto LABEL_57;
  }

  titleLabel8 = [(VideosExtrasGridCollectionViewCell *)self titleLabel];
  [titleLabel8 setNumberOfLines:1];

  subtitleLabel6 = [(VideosExtrasGridCollectionViewCell *)self subtitleLabel];
  [subtitleLabel6 setNumberOfLines:1];

  titleLabel6 = [(VideosExtrasGridCollectionViewCell *)self titleLabel];
  subtitleTextStyle2 = [styleCopy titleTextStyle];
LABEL_44:
  titleTextStyle2 = subtitleTextStyle2;
  titleLabel7 = [(VideosExtrasGridCollectionViewCell *)self subtitleLabel];
  titleTextStyle3 = [styleCopy subtitleTextStyle];
LABEL_56:
  v87 = titleTextStyle3;
LABEL_57:
  v97 = self->_topLineHeight;
  if (!v97)
  {
    goto LABEL_61;
  }

  firstItem = [(MPUContentSizeLayoutConstraint *)v97 firstItem];

  if (firstItem != titleLabel6)
  {
    contentView7 = [(VideosExtrasGridCollectionViewCell *)self contentView];
    [contentView7 removeConstraint:self->_topLineHeight];

    v100 = self->_topLineHeight;
    self->_topLineHeight = 0;
  }

  v101 = self->_topLineHeight;
  if (!v101)
  {
LABEL_61:
    v102 = MEMORY[0x1E69AD980];
    v103 = self->_artworkContainer;
    [styleCopy titleFirstBaselineHeight];
    v105 = [v102 constraintWithAutoupdatingBaselineOfView:titleLabel6 relation:0 toView:v103 attribute:4 withTextStyle:titleTextStyle2 multiplier:1.0 nonStandardLeading:v104];
    v106 = self->_topLineHeight;
    self->_topLineHeight = v105;

    contentView8 = [(VideosExtrasGridCollectionViewCell *)self contentView];
    [contentView8 addConstraint:self->_topLineHeight];

    v101 = self->_topLineHeight;
  }

  [(MPUContentSizeLayoutConstraint *)v101 setTextStyle:titleTextStyle2];
  [styleCopy titleFirstBaselineHeight];
  [(MPUContentSizeLayoutConstraint *)self->_topLineHeight setDefaultSizeConstant:?];
  v108 = self->_subtitleLineHeight;
  if (titleLabel6 == titleLabel7)
  {
    if (v108)
    {
      contentView9 = [(VideosExtrasGridCollectionViewCell *)self contentView];
      [contentView9 removeConstraint:self->_subtitleLineHeight];

      v119 = self->_subtitleLineHeight;
      self->_subtitleLineHeight = 0;
    }
  }

  else
  {
    if (!v108)
    {
      goto LABEL_67;
    }

    firstItem2 = [(MPUContentSizeLayoutConstraint *)v108 firstItem];

    if (firstItem2 != titleLabel7)
    {
      contentView10 = [(VideosExtrasGridCollectionViewCell *)self contentView];
      [contentView10 removeConstraint:self->_subtitleLineHeight];

      v111 = self->_subtitleLineHeight;
      self->_subtitleLineHeight = 0;
    }

    v112 = self->_subtitleLineHeight;
    if (!v112)
    {
LABEL_67:
      v113 = MEMORY[0x1E69AD980];
      [styleCopy subtitleFirstBaselineHeight];
      v115 = [v113 constraintWithAutoupdatingBaselineOfView:titleLabel7 relation:0 toView:titleLabel6 attribute:11 withTextStyle:v87 multiplier:1.0 nonStandardLeading:v114];
      v116 = self->_subtitleLineHeight;
      self->_subtitleLineHeight = v115;

      contentView11 = [(VideosExtrasGridCollectionViewCell *)self contentView];
      [contentView11 addConstraint:self->_subtitleLineHeight];

      v112 = self->_subtitleLineHeight;
    }

    [(MPUContentSizeLayoutConstraint *)v112 setTextStyle:v87];
    [styleCopy subtitleFirstBaselineHeight];
    [(MPUContentSizeLayoutConstraint *)self->_subtitleLineHeight setDefaultSizeConstant:?];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    contentView12 = [(VideosExtrasGridCollectionViewCell *)self contentView];
    [contentView12 removeConstraint:self->_spacerHeight];

    v121 = self->_spacerHeight;
    self->_spacerHeight = 0;
  }

  v122 = self->_spacerHeight;
  if (!v122)
  {
    v123 = MEMORY[0x1E69AD980];
    spacerView = self->_spacerView;
    [styleCopy textFirstBaselineToBottom];
    v122 = [v123 contentSizeAutoupdatingConstraintWithItem:spacerView attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:titleTextStyle2 textStyle:1.0 defaultSizeConstant:v125];
    objc_storeStrong(&self->_spacerHeight, v122);
    contentView13 = [(VideosExtrasGridCollectionViewCell *)self contentView];
    [contentView13 addConstraint:self->_spacerHeight];
  }

  [(NSLayoutConstraint *)v122 setTextStyle:titleTextStyle2];
  [styleCopy textFirstBaselineToBottom];
  [(NSLayoutConstraint *)v122 setDefaultSizeConstant:?];
  v127 = self->_spacerTop;
  if (!v127)
  {
    goto LABEL_79;
  }

  secondItem2 = [(NSLayoutConstraint *)v127 secondItem];

  if (secondItem2 != titleLabel6)
  {
    contentView14 = [(VideosExtrasGridCollectionViewCell *)self contentView];
    [contentView14 removeConstraint:self->_spacerTop];

    v130 = self->_spacerTop;
    self->_spacerTop = 0;
  }

  if (!self->_spacerTop)
  {
LABEL_79:
    v131 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_spacerView attribute:3 relatedBy:0 toItem:titleLabel6 attribute:12 multiplier:1.0 constant:0.0];
    v132 = self->_spacerTop;
    self->_spacerTop = v131;

    contentView15 = [(VideosExtrasGridCollectionViewCell *)self contentView];
    [contentView15 addConstraint:self->_spacerTop];
  }

  image = v135;
LABEL_81:
}

void __78__VideosExtrasGridCollectionViewCell_configureForLockup_cellStyle_withSizing___block_invoke(void **a1, void *a2, void *a3)
{
  v19 = a2;
  v5 = a3;
  v6 = [v19 lockupElement];
  if (a1[4] == v6)
  {
    v7 = [v19 artworkContainer];
    v8 = [v7 artworkView];
    [v8 setImage:v5];

    v9 = [a1[5] artworkContainer];
    v10 = [v9 artworkView];
    v11 = [v10 layer];
    [v11 setBorderColor:{objc_msgSend(a1[6], "CGColor")}];

    v12 = [a1[5] artworkContainer];
    v13 = [v12 artworkView];
    v14 = [v13 layer];
    v15 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v15 scale];
    [v14 setBorderWidth:1.0 / v16];

    v17 = [a1[5] artworkContainer];
    v18 = [v17 layer];
    [v18 setBorderWidth:0.0];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v6.receiver = self;
  v6.super_class = VideosExtrasGridCollectionViewCell;
  [(VideosExtrasGridCollectionViewCell *)&v6 setHighlighted:?];
  artworkView = [(VideosExtrasConstrainedArtworkContainerView *)self->_artworkContainer artworkView];
  [artworkView setHighlighted:highlightedCopy];
}

- (void)prepareForReuse
{
  v17.receiver = self;
  v17.super_class = VideosExtrasGridCollectionViewCell;
  [(VideosExtrasGridCollectionViewCell *)&v17 prepareForReuse];
  artworkContainer = [(VideosExtrasGridCollectionViewCell *)self artworkContainer];
  layer = [artworkContainer layer];
  [layer setBorderWidth:0.0];

  artworkContainer2 = [(VideosExtrasGridCollectionViewCell *)self artworkContainer];
  artworkView = [artworkContainer2 artworkView];
  layer2 = [artworkView layer];
  [layer2 setBorderWidth:0.0];

  artworkContainer3 = [(VideosExtrasGridCollectionViewCell *)self artworkContainer];
  artworkView2 = [artworkContainer3 artworkView];
  [artworkView2 setPlaceholderImage:0];

  artworkContainer4 = [(VideosExtrasGridCollectionViewCell *)self artworkContainer];
  artworkView3 = [artworkContainer4 artworkView];
  [artworkView3 setImage:0];

  artworkContainer5 = [(VideosExtrasGridCollectionViewCell *)self artworkContainer];
  [artworkContainer5 setOverlayImage:0];

  titleLabel = [(VideosExtrasGridCollectionViewCell *)self titleLabel];
  [titleLabel setText:0];

  titleLabel2 = [(VideosExtrasGridCollectionViewCell *)self titleLabel];
  [titleLabel2 setAttributedText:0];

  subtitleLabel = [(VideosExtrasGridCollectionViewCell *)self subtitleLabel];
  [subtitleLabel setText:0];

  subtitleLabel2 = [(VideosExtrasGridCollectionViewCell *)self subtitleLabel];
  [subtitleLabel2 setAttributedText:0];
}

- (IKLockupElement)lockupElement
{
  WeakRetained = objc_loadWeakRetained(&self->_lockupElement);

  return WeakRetained;
}

@end