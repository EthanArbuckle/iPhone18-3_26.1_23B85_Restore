@interface VideosExtrasTableViewCell
- (VideosExtrasTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)configureForListItemLockupElement:(id)a3 wide:(BOOL)a4;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation VideosExtrasTableViewCell

- (VideosExtrasTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v79[5] = *MEMORY[0x1E69E9840];
  v75.receiver = self;
  v75.super_class = VideosExtrasTableViewCell;
  v4 = [(VideosExtrasTableViewCell *)&v75 initWithStyle:3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(VideosExtrasTableViewCell *)v4 setSelectionStyle:0];
    v6 = [[VideosExtrasConstrainedArtworkContainerView alloc] initForAutolayout];
    artworkContainer = v5->_artworkContainer;
    v5->_artworkContainer = v6;

    v8 = [(VideosExtrasTableViewCell *)v5 contentView];
    [v8 addSubview:v5->_artworkContainer];

    v9 = [objc_alloc(MEMORY[0x1E69DD250]) initForAutolayout];
    textContainerView = v5->_textContainerView;
    v5->_textContainerView = v9;

    LODWORD(v11) = 1144750080;
    [(UIView *)v5->_textContainerView setContentHuggingPriority:1 forAxis:v11];
    v12 = [(VideosExtrasTableViewCell *)v5 contentView];
    [v12 addSubview:v5->_textContainerView];

    v13 = [objc_alloc(MEMORY[0x1E69DCC10]) initForAutolayout];
    titleLabel = v5->_titleLabel;
    v5->_titleLabel = v13;

    LODWORD(v15) = 1144750080;
    [(UILabel *)v5->_titleLabel setContentCompressionResistancePriority:1 forAxis:v15];
    [(UILabel *)v5->_titleLabel MPU_setAutomaticallyUpdatesTextStyleFontsToPreferredTextStyleFonts:1];
    [(UIView *)v5->_textContainerView addSubview:v5->_titleLabel];
    v16 = [objc_alloc(MEMORY[0x1E69DCC10]) initForAutolayout];
    subtitleLabel = v5->_subtitleLabel;
    v5->_subtitleLabel = v16;

    LODWORD(v18) = 1144750080;
    [(UILabel *)v5->_subtitleLabel setContentCompressionResistancePriority:1 forAxis:v18];
    [(UILabel *)v5->_subtitleLabel MPU_setAutomaticallyUpdatesTextStyleFontsToPreferredTextStyleFonts:1];
    [(UIView *)v5->_textContainerView addSubview:v5->_subtitleLabel];
    v19 = MEMORY[0x1E696ACD8];
    v20 = v5->_artworkContainer;
    v21 = [(VideosExtrasTableViewCell *)v5 contentView];
    v74 = [v19 constraintWithItem:v20 attribute:10 relatedBy:0 toItem:v21 attribute:10 multiplier:1.0 constant:0.0];

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
    v30 = [(VideosExtrasTableViewCell *)v5 contentView];
    v73 = [v28 constraintWithItem:v29 attribute:10 relatedBy:0 toItem:v30 attribute:10 multiplier:1.0 constant:0.0];

    v31 = MEMORY[0x1E696ACD8];
    v32 = v5->_textContainerView;
    v33 = [(VideosExtrasTableViewCell *)v5 contentView];
    v34 = [v31 constraintWithItem:v32 attribute:6 relatedBy:0 toItem:v33 attribute:6 multiplier:1.0 constant:-15.0];
    textTrailingConstraint = v5->_textTrailingConstraint;
    v5->_textTrailingConstraint = v34;

    v36 = [(VideosExtrasTableViewCell *)v5 contentView];
    v79[0] = v74;
    v79[1] = v5->_artworkWidthConstraint;
    v79[2] = v5->_artworkHeightConstraint;
    v79[3] = v73;
    v79[4] = v5->_textTrailingConstraint;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v79 count:5];
    [v36 addConstraints:v37];

    v38 = MEMORY[0x1E696ACD8];
    v39 = v5->_artworkContainer;
    v40 = [(VideosExtrasTableViewCell *)v5 contentView];
    v41 = [v38 constraintWithItem:v39 attribute:3 relatedBy:1 toItem:v40 attribute:3 multiplier:1.0 constant:15.0];

    v42 = MEMORY[0x1E696ACD8];
    v43 = v5->_artworkContainer;
    v44 = [(VideosExtrasTableViewCell *)v5 contentView];
    v45 = [v42 constraintWithItem:v43 attribute:4 relatedBy:-1 toItem:v44 attribute:4 multiplier:1.0 constant:-15.0];

    v46 = MEMORY[0x1E696ACD8];
    v47 = v5->_textContainerView;
    v48 = [(VideosExtrasTableViewCell *)v5 contentView];
    v49 = [v46 constraintWithItem:v47 attribute:3 relatedBy:1 toItem:v48 attribute:3 multiplier:1.0 constant:0.0];

    v50 = MEMORY[0x1E696ACD8];
    v51 = v5->_textContainerView;
    v52 = [(VideosExtrasTableViewCell *)v5 contentView];
    v53 = [v50 constraintWithItem:v51 attribute:4 relatedBy:-1 toItem:v52 attribute:4 multiplier:1.0 constant:0.0];

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
    v67 = [(VideosExtrasTableViewCell *)v5 contentView];
    v68 = [v66 constraintWithItem:v67 attribute:8 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:60.0];
    minimumHeightConstraint = v5->_minimumHeightConstraint;
    v5->_minimumHeightConstraint = v68;

    LODWORD(v70) = 1148829696;
    [(NSLayoutConstraint *)v5->_minimumHeightConstraint setPriority:v70];
    v71 = [(VideosExtrasTableViewCell *)v5 contentView];
    [v71 addConstraint:v5->_minimumHeightConstraint];
  }

  return v5;
}

- (void)configureForListItemLockupElement:(id)a3 wide:(BOOL)a4
{
  v4 = a4;
  v138 = *MEMORY[0x1E69E9840];
  v6 = a3;
  self->_element = v6;
  v7 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.0];
  [(VideosExtrasTableViewCell *)self setBackgroundColor:v7];

  v8 = 60.0;
  if (v4)
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

  v20 = [(IKListItemLockupElement *)v6 images];
  v21 = [v20 firstObject];

  v22 = &OBJC_IVAR___VUINowPlayingObserver__delegate;
  v123 = v21;
  if (v21)
  {
    v23 = self->_artworkContainer;
    v24 = [(IKListItemLockupElement *)v6 decorationLabel];

    if (v4)
    {
      v25 = 48.0;
    }

    else
    {
      v25 = 40.0;
    }

    v26 = 71.0;
    if (v4)
    {
      v26 = 86.0;
    }

    if (v24)
    {
      v27 = v26;
    }

    else
    {
      v27 = v25;
    }

    [(NSLayoutConstraint *)self->_artworkWidthConstraint setConstant:v27];
    [(NSLayoutConstraint *)self->_artworkHeightConstraint setConstant:v25];
    v28 = [v21 placeholderURL];
    v29 = [MEMORY[0x1E69DCAB8] imageForPlaceholderURL:v28];
    v30 = [(VideosExtrasConstrainedArtworkContainerView *)self->_artworkContainer artworkView];
    [v30 setPlaceholderImage:v29];
    v31 = [v21 artworkCatalog];
    [v31 setFittingSize:{v27, v25}];
    v126[0] = MEMORY[0x1E69E9820];
    v126[1] = 3221225472;
    v126[2] = __68__VideosExtrasTableViewCell_configureForListItemLockupElement_wide___block_invoke;
    v126[3] = &unk_1E8736B58;
    v127 = v6;
    [v31 setDestination:self configurationBlock:v126];
    v32 = [v30 layer];
    v33 = [MEMORY[0x1E69DC888] colorWithWhite:0.2 alpha:1.0];
    [v32 setBorderColor:{objc_msgSend(v33, "CGColor")}];

    v34 = [v30 layer];
    v35 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v35 scale];
    [v34 setBorderWidth:1.0 / v36];

    v37 = [v30 layer];
    v38 = [MEMORY[0x1E69DC888] blackColor];
    [v37 setShadowColor:{objc_msgSend(v38, "CGColor")}];

    v39 = [v30 layer];
    [v39 setShadowRadius:2.0];

    v40 = [v30 layer];
    LODWORD(v41) = 0.5;
    [v40 setShadowOpacity:v41];

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

  v44 = [(NSLayoutConstraint *)leadingViewConstraint firstItem];

  if (v44 != v42)
  {
    v45 = [(VideosExtrasTableViewCell *)self contentView];
    [v45 removeConstraint:self->_leadingViewConstraint];

    v46 = self->_leadingViewConstraint;
    self->_leadingViewConstraint = 0;
  }

  if (!self->_leadingViewConstraint)
  {
LABEL_33:
    v47 = MEMORY[0x1E696ACD8];
    v48 = [(VideosExtrasTableViewCell *)self contentView];
    v49 = [v47 constraintWithItem:v42 attribute:5 relatedBy:0 toItem:v48 attribute:5 multiplier:1.0 constant:15.0];
    v50 = self->_leadingViewConstraint;
    self->_leadingViewConstraint = v49;

    v51 = [(VideosExtrasTableViewCell *)self contentView];
    [v51 addConstraint:self->_leadingViewConstraint];
  }

  v52 = v22[445];
  v53 = *(&self->super.super.super.super.isa + v52);
  if (v42 == v53 && v53)
  {
    v54 = [(VideosExtrasTableViewCell *)self contentView];
    [v54 removeConstraint:self->_textLeadingConstraint];

    textLeadingConstraint = self->_textLeadingConstraint;
    self->_textLeadingConstraint = 0;
  }

  p_titleLabel = &self->_titleLabel;
  if (v42 != self->_titleLabel && !self->_textLeadingConstraint)
  {
    v57 = [MEMORY[0x1E696ACD8] constraintWithItem:*(&self->super.super.super.super.isa + v52) attribute:5 relatedBy:0 toItem:self->_artworkContainer attribute:6 multiplier:1.0 constant:0.0];
    v58 = self->_textLeadingConstraint;
    self->_textLeadingConstraint = v57;

    v59 = [(VideosExtrasTableViewCell *)self contentView];
    [v59 addConstraint:self->_textLeadingConstraint];
  }

  [(NSLayoutConstraint *)self->_textLeadingConstraint setConstant:v9, v52];
  v60 = *p_titleLabel;
  v61 = [MEMORY[0x1E69DC888] clearColor];
  [(UILabel *)v60 setBackgroundColor:v61];

  v62 = [MEMORY[0x1E69DC888] whiteColor];
  [(UILabel *)v60 setTextColor:v62];

  v63 = [(IKListItemLockupElement *)v6 title];
  v64 = *MEMORY[0x1E69DDCF8];
  v65 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8]];
  if (v63)
  {
    [(UILabel *)v60 configureForIKTextElement:v63 fontDescriptor:v65 textStyle:v64];
  }

  v124 = v63;
  v121 = v60;
  v122 = v42;
  p_subtitleLabel = &self->_subtitleLabel;
  v67 = self->_subtitleLabel;
  v68 = [MEMORY[0x1E69DC888] clearColor];
  [(UILabel *)v67 setBackgroundColor:v68];

  v69 = [MEMORY[0x1E69DC888] colorWithWhite:0.4 alpha:1.0];
  [(UILabel *)v67 setTextColor:v69];

  v125 = v6;
  v70 = [(IKListItemLockupElement *)v6 subtitle];
  v71 = *MEMORY[0x1E69DDD10];
  v72 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD10]];

  if (v70)
  {
    [(UILabel *)v67 configureForIKTextElement:v70 fontDescriptor:v72 textStyle:v71];
  }

  v119 = v72;
  v120 = v67;
  v73 = [v124 text];
  v74 = [v73 length];

  v75 = [v70 text];
  v76 = [v75 length];

  if (v74 && (v77 = &self->_titleLabel, v78 = &self->_subtitleLabel, v76) || v74 && (v77 = &self->_titleLabel, v78 = &self->_titleLabel, !v76) || (v77 = &self->_titleLabel, v78 = &self->_titleLabel, v74 == 0 && v76 == 0) || (!v76 ? (v79 = 1) : (v79 = v74 != 0), v77 = &self->_subtitleLabel, v78 = &self->_subtitleLabel, !v79))
  {
    v81 = *v77;
    v118 = *v78;
    if (v81 != v118)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ([(NSLayoutConstraint *)self->_topLabelConstraint firstItem], v82 = objc_claimAutoreleasedReturnValue(), v82, v82 != v81))
      {
        v83 = [(VideosExtrasTableViewCell *)self contentView];
        [v83 removeConstraint:self->_topLabelConstraint];

        topLabelConstraint = self->_topLabelConstraint;
        self->_topLabelConstraint = 0;
      }

      v85 = self->_topLabelConstraint;
      if (!v85)
      {
        v85 = [MEMORY[0x1E69AD980] constraintWithAutoupdatingBaselineOfView:*p_titleLabel relation:0 toView:*(&self->super.super.super.super.isa + v117) attribute:3 withTextStyle:v64 multiplier:1.0 nonStandardLeading:28.0];
        objc_storeStrong(&self->_topLabelConstraint, v85);
        v86 = [(VideosExtrasTableViewCell *)self contentView];
        [v86 addConstraint:v85];
      }

      if (!self->_subtitleBaselineConstraint)
      {
        v87 = [MEMORY[0x1E69AD980] constraintWithAutoupdatingBaselineOfView:*p_subtitleLabel relation:0 toView:*p_titleLabel attribute:11 withTextStyle:v71 multiplier:1.0 nonStandardLeading:19.0];
        subtitleBaselineConstraint = self->_subtitleBaselineConstraint;
        self->_subtitleBaselineConstraint = v87;

        v89 = [(VideosExtrasTableViewCell *)self contentView];
        [v89 addConstraint:self->_subtitleBaselineConstraint];
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v90 = [(VideosExtrasTableViewCell *)self contentView];
        [v90 removeConstraint:self->_bottomLabelConstraint];

        bottomLabelConstraint = self->_bottomLabelConstraint;
        self->_bottomLabelConstraint = 0;
      }

      v92 = self->_bottomLabelConstraint;
      v93 = v118;
      if (!v92)
      {
        v92 = [MEMORY[0x1E69AD980] contentSizeAutoupdatingConstraintWithItem:*(&self->super.super.super.super.isa + v117) attribute:4 relatedBy:0 toItem:*p_subtitleLabel attribute:11 multiplier:v71 textStyle:1.0 defaultSizeConstant:14.0];
        objc_storeStrong(&self->_bottomLabelConstraint, v92);
        v94 = [(VideosExtrasTableViewCell *)self contentView];
        [v94 addConstraint:v92];
      }

      v95 = v123;
      v96 = v124;
      goto LABEL_83;
    }

    v80 = v70;
  }

  else
  {
    v80 = v70;
    v118 = 0;
    v81 = 0;
  }

  v95 = v123;
  v96 = v124;
  if (self->_subtitleBaselineConstraint)
  {
    v97 = [(VideosExtrasTableViewCell *)self contentView];
    [v97 removeConstraint:self->_subtitleBaselineConstraint];

    v98 = self->_subtitleBaselineConstraint;
    self->_subtitleBaselineConstraint = 0;
  }

  v99 = self->_topLabelConstraint;
  if (v99)
  {
    v100 = [(NSLayoutConstraint *)v99 firstItem];
    v101 = v100;
    if (v100 == v81)
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

    v103 = [(VideosExtrasTableViewCell *)self contentView];
    [v103 removeConstraint:self->_topLabelConstraint];

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

  v107 = [(VideosExtrasTableViewCell *)self contentView];
  [v107 addConstraint:self->_topLabelConstraint];

LABEL_77:
  v108 = self->_bottomLabelConstraint;
  v93 = v118;
  if (v108)
  {
    v109 = [(NSLayoutConstraint *)v108 secondItem];

    if (v109 != v118)
    {
      v110 = [(VideosExtrasTableViewCell *)self contentView];
      [v110 removeConstraint:self->_bottomLabelConstraint];

      v111 = self->_bottomLabelConstraint;
      self->_bottomLabelConstraint = 0;
    }

    if (self->_bottomLabelConstraint)
    {
      v70 = v80;
      goto LABEL_84;
    }
  }

  v112 = [MEMORY[0x1E696ACD8] constraintWithItem:*(&self->super.super.super.super.isa + v117) attribute:4 relatedBy:0 toItem:v118 attribute:4 multiplier:1.0 constant:0.0];
  v113 = self->_bottomLabelConstraint;
  self->_bottomLabelConstraint = v112;

  v85 = [(VideosExtrasTableViewCell *)self contentView];
  [(NSLayoutConstraint *)v85 addConstraint:self->_bottomLabelConstraint];
  v70 = v80;
LABEL_83:

LABEL_84:
  [(VideosExtrasTableViewCell *)self setNeedsUpdateConstraints];
  v114 = [(IKListItemLockupElement *)v125 decorationImages];
  v115 = [v114 firstObject];

  if (v115)
  {
    -[VideosExtrasTableViewCell setAccessoryType:](self, "setAccessoryType:", [v115 accessoryType]);
  }

  else
  {
    v116 = [(IKListItemLockupElement *)v125 checkMark];
    if (v116)
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

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  v9.receiver = self;
  v9.super_class = VideosExtrasTableViewCell;
  [(VideosExtrasTableViewCell *)&v9 setHighlighted:a3 animated:a4];
  if (([(VideosExtrasTableViewCell *)self isSelected]& 1) == 0)
  {
    if (a3)
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

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v9.receiver = self;
  v9.super_class = VideosExtrasTableViewCell;
  [(VideosExtrasTableViewCell *)&v9 setSelected:a3 animated:a4];
  if (a3)
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
  v3 = [(VideosExtrasConstrainedArtworkContainerView *)self->_artworkContainer artworkView];
  [v3 setPlaceholderImage:0];
  [v3 setImage:0];
  v4 = [v3 layer];
  [v4 setBorderWidth:0.0];

  v5 = [v3 layer];
  [v5 setShadowRadius:0.0];

  v6 = [v3 layer];
  [v6 setShadowOpacity:0.0];

  [(VideosExtrasTableViewCell *)self setAccessoryType:0];
}

@end