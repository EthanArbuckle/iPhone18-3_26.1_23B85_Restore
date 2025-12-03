@interface VideosExtrasTableViewCell
- (VideosExtrasTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)configureForListItemLockupElement:(id)element wide:(BOOL)wide;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
@end

@implementation VideosExtrasTableViewCell

- (VideosExtrasTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v79[5] = *MEMORY[0x1E69E9840];
  v75.receiver = self;
  v75.super_class = VideosExtrasTableViewCell;
  v4 = [(VideosExtrasTableViewCell *)&v75 initWithStyle:3 reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(VideosExtrasTableViewCell *)v4 setSelectionStyle:0];
    initForAutolayout = [[VideosExtrasConstrainedArtworkContainerView alloc] initForAutolayout];
    artworkContainer = v5->_artworkContainer;
    v5->_artworkContainer = initForAutolayout;

    contentView = [(VideosExtrasTableViewCell *)v5 contentView];
    [contentView addSubview:v5->_artworkContainer];

    initForAutolayout2 = [objc_alloc(MEMORY[0x1E69DD250]) initForAutolayout];
    textContainerView = v5->_textContainerView;
    v5->_textContainerView = initForAutolayout2;

    LODWORD(v11) = 1144750080;
    [(UIView *)v5->_textContainerView setContentHuggingPriority:1 forAxis:v11];
    contentView2 = [(VideosExtrasTableViewCell *)v5 contentView];
    [contentView2 addSubview:v5->_textContainerView];

    initForAutolayout3 = [objc_alloc(MEMORY[0x1E69DCC10]) initForAutolayout];
    titleLabel = v5->_titleLabel;
    v5->_titleLabel = initForAutolayout3;

    LODWORD(v15) = 1144750080;
    [(UILabel *)v5->_titleLabel setContentCompressionResistancePriority:1 forAxis:v15];
    [(UILabel *)v5->_titleLabel MPU_setAutomaticallyUpdatesTextStyleFontsToPreferredTextStyleFonts:1];
    [(UIView *)v5->_textContainerView addSubview:v5->_titleLabel];
    initForAutolayout4 = [objc_alloc(MEMORY[0x1E69DCC10]) initForAutolayout];
    subtitleLabel = v5->_subtitleLabel;
    v5->_subtitleLabel = initForAutolayout4;

    LODWORD(v18) = 1144750080;
    [(UILabel *)v5->_subtitleLabel setContentCompressionResistancePriority:1 forAxis:v18];
    [(UILabel *)v5->_subtitleLabel MPU_setAutomaticallyUpdatesTextStyleFontsToPreferredTextStyleFonts:1];
    [(UIView *)v5->_textContainerView addSubview:v5->_subtitleLabel];
    v19 = MEMORY[0x1E696ACD8];
    v20 = v5->_artworkContainer;
    contentView3 = [(VideosExtrasTableViewCell *)v5 contentView];
    v74 = [v19 constraintWithItem:v20 attribute:10 relatedBy:0 toItem:contentView3 attribute:10 multiplier:1.0 constant:0.0];

    v22 = [MEMORY[0x1E696ACD8] constraintWithItem:v5->_artworkContainer attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:0.0];
    artworkWidthConstraint = v5->_artworkWidthConstraint;
    v5->_artworkWidthConstraint = v22;

    LODWORD(v24) = 1148829696;
    [(NSLayoutConstraint *)v5->_artworkWidthConstraint setPriority:v24];
    v25 = [MEMORY[0x1E696ACD8] constraintWithItem:v5->_artworkContainer attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:0.0];
    artworkHeightConstraint = v5->_artworkHeightConstraint;
    v5->_artworkHeightConstraint = v25;

    LODWORD(v27) = 1148829696;
    [(NSLayoutConstraint *)v5->_artworkHeightConstraint setPriority:v27];
    v28 = MEMORY[0x1E696ACD8];
    v29 = v5->_textContainerView;
    contentView4 = [(VideosExtrasTableViewCell *)v5 contentView];
    v73 = [v28 constraintWithItem:v29 attribute:10 relatedBy:0 toItem:contentView4 attribute:10 multiplier:1.0 constant:0.0];

    v31 = MEMORY[0x1E696ACD8];
    v32 = v5->_textContainerView;
    contentView5 = [(VideosExtrasTableViewCell *)v5 contentView];
    v34 = [v31 constraintWithItem:v32 attribute:6 relatedBy:0 toItem:contentView5 attribute:6 multiplier:1.0 constant:-15.0];
    textTrailingConstraint = v5->_textTrailingConstraint;
    v5->_textTrailingConstraint = v34;

    contentView6 = [(VideosExtrasTableViewCell *)v5 contentView];
    v79[0] = v74;
    v79[1] = v5->_artworkWidthConstraint;
    v79[2] = v5->_artworkHeightConstraint;
    v79[3] = v73;
    v79[4] = v5->_textTrailingConstraint;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v79 count:5];
    [contentView6 addConstraints:v37];

    v38 = MEMORY[0x1E696ACD8];
    v39 = v5->_artworkContainer;
    contentView7 = [(VideosExtrasTableViewCell *)v5 contentView];
    v41 = [v38 constraintWithItem:v39 attribute:3 relatedBy:1 toItem:contentView7 attribute:3 multiplier:1.0 constant:15.0];

    v42 = MEMORY[0x1E696ACD8];
    v43 = v5->_artworkContainer;
    contentView8 = [(VideosExtrasTableViewCell *)v5 contentView];
    v45 = [v42 constraintWithItem:v43 attribute:4 relatedBy:-1 toItem:contentView8 attribute:4 multiplier:1.0 constant:-15.0];

    v46 = MEMORY[0x1E696ACD8];
    v47 = v5->_textContainerView;
    contentView9 = [(VideosExtrasTableViewCell *)v5 contentView];
    v49 = [v46 constraintWithItem:v47 attribute:3 relatedBy:1 toItem:contentView9 attribute:3 multiplier:1.0 constant:0.0];

    v50 = MEMORY[0x1E696ACD8];
    v51 = v5->_textContainerView;
    contentView10 = [(VideosExtrasTableViewCell *)v5 contentView];
    v53 = [v50 constraintWithItem:v51 attribute:4 relatedBy:-1 toItem:contentView10 attribute:4 multiplier:1.0 constant:0.0];

    v78 = v41;
    v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v78 count:1];
    topConstraints = v5->_topConstraints;
    v5->_topConstraints = v54;

    v77 = v45;
    v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v77 count:1];
    bottomConstraints = v5->_bottomConstraints;
    v5->_bottomConstraints = v56;

    v58 = MEMORY[0x1E696ACD8];
    v76[0] = v41;
    v76[1] = v45;
    v76[2] = v49;
    v76[3] = v53;
    v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:4];
    [v58 activateConstraints:v59];

    v60 = *MEMORY[0x1E69DDCE0];
    v61 = *(MEMORY[0x1E69DDCE0] + 8);
    v62 = *(MEMORY[0x1E69DDCE0] + 16);
    v63 = *(MEMORY[0x1E69DDCE0] + 24);
    v64 = [MEMORY[0x1E696ACD8] constraintsByAttachingView:v5->_titleLabel toView:v5->_textContainerView alongEdges:10 insets:{*MEMORY[0x1E69DDCE0], v61, v62, v63}];
    v65 = [MEMORY[0x1E696ACD8] constraintsByAttachingView:v5->_subtitleLabel toView:v5->_textContainerView alongEdges:10 insets:{v60, v61, v62, v63}];
    [(UIView *)v5->_textContainerView addConstraints:v64];
    [(UIView *)v5->_textContainerView addConstraints:v65];
    v66 = MEMORY[0x1E696ACD8];
    contentView11 = [(VideosExtrasTableViewCell *)v5 contentView];
    v68 = [v66 constraintWithItem:contentView11 attribute:8 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:60.0];
    minimumHeightConstraint = v5->_minimumHeightConstraint;
    v5->_minimumHeightConstraint = v68;

    LODWORD(v70) = 1148829696;
    [(NSLayoutConstraint *)v5->_minimumHeightConstraint setPriority:v70];
    contentView12 = [(VideosExtrasTableViewCell *)v5 contentView];
    [contentView12 addConstraint:v5->_minimumHeightConstraint];
  }

  return v5;
}

- (void)configureForListItemLockupElement:(id)element wide:(BOOL)wide
{
  wideCopy = wide;
  v138 = *MEMORY[0x1E69E9840];
  elementCopy = element;
  self->_element = elementCopy;
  v7 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.0];
  [(VideosExtrasTableViewCell *)self setBackgroundColor:v7];

  v8 = 60.0;
  if (wideCopy)
  {
    v8 = 78.0;
    v9 = 15.0;
  }

  else
  {
    v9 = 10.0;
  }

  [(NSLayoutConstraint *)self->_minimumHeightConstraint setConstant:v8];
  [(NSLayoutConstraint *)self->_textTrailingConstraint setConstant:-v9];
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v10 = self->_topConstraints;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v132 objects:v137 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v133;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v133 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v132 + 1) + 8 * i) setConstant:v9];
      }

      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v132 objects:v137 count:16];
    }

    while (v12);
  }

  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v15 = self->_bottomConstraints;
  v16 = [(NSArray *)v15 countByEnumeratingWithState:&v128 objects:v136 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v129;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v129 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v128 + 1) + 8 * j) setConstant:-v9];
      }

      v17 = [(NSArray *)v15 countByEnumeratingWithState:&v128 objects:v136 count:16];
    }

    while (v17);
  }

  images = [(IKListItemLockupElement *)elementCopy images];
  firstObject = [images firstObject];

  v22 = &OBJC_IVAR___VUINowPlayingObserver__delegate;
  v123 = firstObject;
  if (firstObject)
  {
    v23 = self->_artworkContainer;
    decorationLabel = [(IKListItemLockupElement *)elementCopy decorationLabel];

    if (wideCopy)
    {
      v25 = 48.0;
    }

    else
    {
      v25 = 40.0;
    }

    v26 = 71.0;
    if (wideCopy)
    {
      v26 = 86.0;
    }

    if (decorationLabel)
    {
      v27 = v26;
    }

    else
    {
      v27 = v25;
    }

    [(NSLayoutConstraint *)self->_artworkWidthConstraint setConstant:v27];
    [(NSLayoutConstraint *)self->_artworkHeightConstraint setConstant:v25];
    placeholderURL = [firstObject placeholderURL];
    v29 = [MEMORY[0x1E69DCAB8] imageForPlaceholderURL:placeholderURL];
    artworkView = [(VideosExtrasConstrainedArtworkContainerView *)self->_artworkContainer artworkView];
    [artworkView setPlaceholderImage:v29];
    artworkCatalog = [firstObject artworkCatalog];
    [artworkCatalog setFittingSize:{v27, v25}];
    v126[0] = MEMORY[0x1E69E9820];
    v126[1] = 3221225472;
    v126[2] = __68__VideosExtrasTableViewCell_configureForListItemLockupElement_wide___block_invoke;
    v126[3] = &unk_1E8736B58;
    v127 = elementCopy;
    [artworkCatalog setDestination:self configurationBlock:v126];
    layer = [artworkView layer];
    v33 = [MEMORY[0x1E69DC888] colorWithWhite:0.2 alpha:1.0];
    [layer setBorderColor:{objc_msgSend(v33, "CGColor")}];

    layer2 = [artworkView layer];
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    [layer2 setBorderWidth:1.0 / v36];

    layer3 = [artworkView layer];
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [layer3 setShadowColor:{objc_msgSend(blackColor, "CGColor")}];

    layer4 = [artworkView layer];
    [layer4 setShadowRadius:2.0];

    layer5 = [artworkView layer];
    LODWORD(v41) = 0.5;
    [layer5 setShadowOpacity:v41];

    v42 = v23;
    v22 = &OBJC_IVAR___VUINowPlayingObserver__delegate;
  }

  else
  {
    v42 = self->_textContainerView;
    [(NSLayoutConstraint *)self->_artworkWidthConstraint setConstant:0.0];
    [(NSLayoutConstraint *)self->_artworkHeightConstraint setConstant:0.0];
  }

  leadingViewConstraint = self->_leadingViewConstraint;
  if (!leadingViewConstraint)
  {
    goto LABEL_33;
  }

  firstItem = [(NSLayoutConstraint *)leadingViewConstraint firstItem];

  if (firstItem != v42)
  {
    contentView = [(VideosExtrasTableViewCell *)self contentView];
    [contentView removeConstraint:self->_leadingViewConstraint];

    v46 = self->_leadingViewConstraint;
    self->_leadingViewConstraint = 0;
  }

  if (!self->_leadingViewConstraint)
  {
LABEL_33:
    v47 = MEMORY[0x1E696ACD8];
    contentView2 = [(VideosExtrasTableViewCell *)self contentView];
    v49 = [v47 constraintWithItem:v42 attribute:5 relatedBy:0 toItem:contentView2 attribute:5 multiplier:1.0 constant:15.0];
    v50 = self->_leadingViewConstraint;
    self->_leadingViewConstraint = v49;

    contentView3 = [(VideosExtrasTableViewCell *)self contentView];
    [contentView3 addConstraint:self->_leadingViewConstraint];
  }

  v52 = v22[445];
  v53 = *(&self->super.super.super.super.isa + v52);
  if (v42 == v53 && v53)
  {
    contentView4 = [(VideosExtrasTableViewCell *)self contentView];
    [contentView4 removeConstraint:self->_textLeadingConstraint];

    textLeadingConstraint = self->_textLeadingConstraint;
    self->_textLeadingConstraint = 0;
  }

  p_titleLabel = &self->_titleLabel;
  if (v42 != self->_titleLabel && !self->_textLeadingConstraint)
  {
    v57 = [MEMORY[0x1E696ACD8] constraintWithItem:*(&self->super.super.super.super.isa + v52) attribute:5 relatedBy:0 toItem:self->_artworkContainer attribute:6 multiplier:1.0 constant:0.0];
    v58 = self->_textLeadingConstraint;
    self->_textLeadingConstraint = v57;

    contentView5 = [(VideosExtrasTableViewCell *)self contentView];
    [contentView5 addConstraint:self->_textLeadingConstraint];
  }

  [(NSLayoutConstraint *)self->_textLeadingConstraint setConstant:v9, v52];
  v60 = *p_titleLabel;
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(UILabel *)v60 setBackgroundColor:clearColor];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [(UILabel *)v60 setTextColor:whiteColor];

  title = [(IKListItemLockupElement *)elementCopy title];
  v64 = *MEMORY[0x1E69DDCF8];
  v65 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8]];
  if (title)
  {
    [(UILabel *)v60 configureForIKTextElement:title fontDescriptor:v65 textStyle:v64];
  }

  v124 = title;
  v121 = v60;
  v122 = v42;
  p_subtitleLabel = &self->_subtitleLabel;
  v67 = self->_subtitleLabel;
  clearColor2 = [MEMORY[0x1E69DC888] clearColor];
  [(UILabel *)v67 setBackgroundColor:clearColor2];

  v69 = [MEMORY[0x1E69DC888] colorWithWhite:0.4 alpha:1.0];
  [(UILabel *)v67 setTextColor:v69];

  v125 = elementCopy;
  subtitle = [(IKListItemLockupElement *)elementCopy subtitle];
  v71 = *MEMORY[0x1E69DDD10];
  v72 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD10]];

  if (subtitle)
  {
    [(UILabel *)v67 configureForIKTextElement:subtitle fontDescriptor:v72 textStyle:v71];
  }

  v119 = v72;
  v120 = v67;
  text = [v124 text];
  v74 = [text length];

  text2 = [subtitle text];
  v76 = [text2 length];

  if (v74 && (v77 = &self->_titleLabel, v78 = &self->_subtitleLabel, v76) || v74 && (v77 = &self->_titleLabel, v78 = &self->_titleLabel, !v76) || (v77 = &self->_titleLabel, v78 = &self->_titleLabel, v74 == 0 && v76 == 0) || (!v76 ? (v79 = 1) : (v79 = v74 != 0), v77 = &self->_subtitleLabel, v78 = &self->_subtitleLabel, !v79))
  {
    v81 = *v77;
    v118 = *v78;
    if (v81 != v118)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ([(NSLayoutConstraint *)self->_topLabelConstraint firstItem], v82 = objc_claimAutoreleasedReturnValue(), v82, v82 != v81))
      {
        contentView6 = [(VideosExtrasTableViewCell *)self contentView];
        [contentView6 removeConstraint:self->_topLabelConstraint];

        topLabelConstraint = self->_topLabelConstraint;
        self->_topLabelConstraint = 0;
      }

      contentView15 = self->_topLabelConstraint;
      if (!contentView15)
      {
        contentView15 = [MEMORY[0x1E69AD980] constraintWithAutoupdatingBaselineOfView:*p_titleLabel relation:0 toView:*(&self->super.super.super.super.isa + v117) attribute:3 withTextStyle:v64 multiplier:1.0 nonStandardLeading:28.0];
        objc_storeStrong(&self->_topLabelConstraint, contentView15);
        contentView7 = [(VideosExtrasTableViewCell *)self contentView];
        [contentView7 addConstraint:contentView15];
      }

      if (!self->_subtitleBaselineConstraint)
      {
        v87 = [MEMORY[0x1E69AD980] constraintWithAutoupdatingBaselineOfView:*p_subtitleLabel relation:0 toView:*p_titleLabel attribute:11 withTextStyle:v71 multiplier:1.0 nonStandardLeading:19.0];
        subtitleBaselineConstraint = self->_subtitleBaselineConstraint;
        self->_subtitleBaselineConstraint = v87;

        contentView8 = [(VideosExtrasTableViewCell *)self contentView];
        [contentView8 addConstraint:self->_subtitleBaselineConstraint];
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        contentView9 = [(VideosExtrasTableViewCell *)self contentView];
        [contentView9 removeConstraint:self->_bottomLabelConstraint];

        bottomLabelConstraint = self->_bottomLabelConstraint;
        self->_bottomLabelConstraint = 0;
      }

      v92 = self->_bottomLabelConstraint;
      v93 = v118;
      if (!v92)
      {
        v92 = [MEMORY[0x1E69AD980] contentSizeAutoupdatingConstraintWithItem:*(&self->super.super.super.super.isa + v117) attribute:4 relatedBy:0 toItem:*p_subtitleLabel attribute:11 multiplier:v71 textStyle:1.0 defaultSizeConstant:14.0];
        objc_storeStrong(&self->_bottomLabelConstraint, v92);
        contentView10 = [(VideosExtrasTableViewCell *)self contentView];
        [contentView10 addConstraint:v92];
      }

      v95 = v123;
      v96 = v124;
      goto LABEL_83;
    }

    v80 = subtitle;
  }

  else
  {
    v80 = subtitle;
    v118 = 0;
    v81 = 0;
  }

  v95 = v123;
  v96 = v124;
  if (self->_subtitleBaselineConstraint)
  {
    contentView11 = [(VideosExtrasTableViewCell *)self contentView];
    [contentView11 removeConstraint:self->_subtitleBaselineConstraint];

    v98 = self->_subtitleBaselineConstraint;
    self->_subtitleBaselineConstraint = 0;
  }

  v99 = self->_topLabelConstraint;
  if (v99)
  {
    firstItem2 = [(NSLayoutConstraint *)v99 firstItem];
    v101 = firstItem2;
    if (firstItem2 == v81)
    {
      v102 = [(NSLayoutConstraint *)self->_topLabelConstraint isMemberOfClass:objc_opt_class()];

      if (!v102)
      {
        goto LABEL_75;
      }
    }

    else
    {
    }

    contentView12 = [(VideosExtrasTableViewCell *)self contentView];
    [contentView12 removeConstraint:self->_topLabelConstraint];

    v104 = self->_topLabelConstraint;
    self->_topLabelConstraint = 0;

LABEL_75:
    if (self->_topLabelConstraint)
    {
      goto LABEL_77;
    }
  }

  v105 = [MEMORY[0x1E696ACD8] constraintWithItem:v81 attribute:10 relatedBy:0 toItem:*(&self->super.super.super.super.isa + v117) attribute:10 multiplier:1.0 constant:0.0];
  v106 = self->_topLabelConstraint;
  self->_topLabelConstraint = v105;

  contentView13 = [(VideosExtrasTableViewCell *)self contentView];
  [contentView13 addConstraint:self->_topLabelConstraint];

LABEL_77:
  v108 = self->_bottomLabelConstraint;
  v93 = v118;
  if (v108)
  {
    secondItem = [(NSLayoutConstraint *)v108 secondItem];

    if (secondItem != v118)
    {
      contentView14 = [(VideosExtrasTableViewCell *)self contentView];
      [contentView14 removeConstraint:self->_bottomLabelConstraint];

      v111 = self->_bottomLabelConstraint;
      self->_bottomLabelConstraint = 0;
    }

    if (self->_bottomLabelConstraint)
    {
      subtitle = v80;
      goto LABEL_84;
    }
  }

  v112 = [MEMORY[0x1E696ACD8] constraintWithItem:*(&self->super.super.super.super.isa + v117) attribute:4 relatedBy:0 toItem:v118 attribute:4 multiplier:1.0 constant:0.0];
  v113 = self->_bottomLabelConstraint;
  self->_bottomLabelConstraint = v112;

  contentView15 = [(VideosExtrasTableViewCell *)self contentView];
  [(NSLayoutConstraint *)contentView15 addConstraint:self->_bottomLabelConstraint];
  subtitle = v80;
LABEL_83:

LABEL_84:
  [(VideosExtrasTableViewCell *)self setNeedsUpdateConstraints];
  decorationImages = [(IKListItemLockupElement *)v125 decorationImages];
  firstObject2 = [decorationImages firstObject];

  if (firstObject2)
  {
    -[VideosExtrasTableViewCell setAccessoryType:](self, "setAccessoryType:", [firstObject2 accessoryType]);
  }

  else
  {
    checkMark = [(IKListItemLockupElement *)v125 checkMark];
    if (checkMark)
    {
      [(VideosExtrasTableViewCell *)self setAccessoryType:3];
    }
  }
}

void __68__VideosExtrasTableViewCell_configureForListItemLockupElement_wide___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [v10 element];
  v7 = v6;
  if (v5 && *(a1 + 32) == v6)
  {
    v8 = [v10 artworkContainerView];
    v9 = [v8 artworkView];
    [v9 setImage:v5];
  }
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  v9.receiver = self;
  v9.super_class = VideosExtrasTableViewCell;
  [(VideosExtrasTableViewCell *)&v9 setHighlighted:highlighted animated:animated];
  if (([(VideosExtrasTableViewCell *)self isSelected]& 1) == 0)
  {
    if (highlighted)
    {
      v6 = 0.15;
      v7 = 1.0;
    }

    else
    {
      v7 = 0.0;
      v6 = 0.0;
    }

    v8 = [MEMORY[0x1E69DC888] colorWithWhite:v7 alpha:v6];
    [(VideosExtrasTableViewCell *)self setBackgroundColor:v8];
  }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  v9.receiver = self;
  v9.super_class = VideosExtrasTableViewCell;
  [(VideosExtrasTableViewCell *)&v9 setSelected:selected animated:animated];
  if (selected)
  {
    v6 = 0.15;
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
    v6 = 0.0;
  }

  v8 = [MEMORY[0x1E69DC888] colorWithWhite:v7 alpha:v6];
  [(VideosExtrasTableViewCell *)self setBackgroundColor:v8];
}

- (void)prepareForReuse
{
  [(UILabel *)self->_titleLabel setText:0];
  [(UILabel *)self->_subtitleLabel setText:0];
  v7.receiver = self;
  v7.super_class = VideosExtrasTableViewCell;
  [(VideosExtrasTableViewCell *)&v7 prepareForReuse];
  [(VideosExtrasTableViewCell *)self setElement:0];
  artworkView = [(VideosExtrasConstrainedArtworkContainerView *)self->_artworkContainer artworkView];
  [artworkView setPlaceholderImage:0];
  [artworkView setImage:0];
  layer = [artworkView layer];
  [layer setBorderWidth:0.0];

  layer2 = [artworkView layer];
  [layer2 setShadowRadius:0.0];

  layer3 = [artworkView layer];
  [layer3 setShadowOpacity:0.0];

  [(VideosExtrasTableViewCell *)self setAccessoryType:0];
}

@end