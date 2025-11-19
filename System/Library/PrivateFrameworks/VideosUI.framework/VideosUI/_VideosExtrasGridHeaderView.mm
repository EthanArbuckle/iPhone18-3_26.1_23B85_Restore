@interface _VideosExtrasGridHeaderView
- (_VideosExtrasGridHeaderView)initWithFrame:(CGRect)a3;
- (void)configureForImage:(id)a3 title:(id)a4 subtitle:(id)a5 style:(id)a6;
@end

@implementation _VideosExtrasGridHeaderView

- (_VideosExtrasGridHeaderView)initWithFrame:(CGRect)a3
{
  v27[2] = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = _VideosExtrasGridHeaderView;
  v3 = [(_VideosExtrasGridHeaderView *)&v26 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(_VideosExtrasGridHeaderView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [objc_alloc(MEMORY[0x1E69B0870]) initForAutolayout];
    artworkView = v4->_artworkView;
    v4->_artworkView = v5;

    [(_VideosExtrasGridHeaderView *)v4 addSubview:v4->_artworkView];
    v7 = [objc_alloc(MEMORY[0x1E69DCC10]) initForAutolayout];
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v7;

    [(UILabel *)v4->_titleLabel MPU_setAutomaticallyUpdatesTextStyleFontsToPreferredTextStyleFonts:1];
    [(_VideosExtrasGridHeaderView *)v4 addSubview:v4->_titleLabel];
    v9 = [objc_alloc(MEMORY[0x1E69DCC10]) initForAutolayout];
    subtitleLabel = v4->_subtitleLabel;
    v4->_subtitleLabel = v9;

    [(UILabel *)v4->_subtitleLabel MPU_setAutomaticallyUpdatesTextStyleFontsToPreferredTextStyleFonts:1];
    [(_VideosExtrasGridHeaderView *)v4 addSubview:v4->_subtitleLabel];
    v11 = [objc_alloc(MEMORY[0x1E69DD250]) initForAutolayout];
    bottomLabelSpacer = v4->_bottomLabelSpacer;
    v4->_bottomLabelSpacer = v11;

    [(_VideosExtrasGridHeaderView *)v4 addSubview:v4->_bottomLabelSpacer];
    v13 = [MEMORY[0x1E696ACD8] constraintsBySizingView:v4->_artworkView toSize:{50.0, 50.0}];
    artworkSizeConstraints = v4->_artworkSizeConstraints;
    v4->_artworkSizeConstraints = v13;

    v15 = [MEMORY[0x1E696ACD8] constraintWithItem:v4->_artworkView attribute:5 relatedBy:0 toItem:v4 attribute:5 multiplier:1.0 constant:0.0];
    v16 = [MEMORY[0x1E696ACD8] constraintWithItem:v4->_artworkView attribute:10 relatedBy:0 toItem:v4 attribute:10 multiplier:1.0 constant:0.0];
    v17 = [MEMORY[0x1E696ACD8] constraintWithItem:v4->_titleLabel attribute:5 relatedBy:0 toItem:v4->_artworkView attribute:6 multiplier:1.0 constant:15.0];
    v18 = [MEMORY[0x1E696ACD8] constraintWithItem:v4->_titleLabel attribute:6 relatedBy:-1 toItem:v4 attribute:6 multiplier:1.0 constant:0.0];
    v19 = [MEMORY[0x1E696ACD8] constraintWithItem:v4->_subtitleLabel attribute:5 relatedBy:0 toItem:v4->_artworkView attribute:6 multiplier:1.0 constant:15.0];
    v20 = [MEMORY[0x1E696ACD8] constraintWithItem:v4->_subtitleLabel attribute:6 relatedBy:-1 toItem:v4 attribute:6 multiplier:1.0 constant:0.0];
    v21 = [MEMORY[0x1E696ACD8] constraintWithItem:v4->_bottomLabelSpacer attribute:4 relatedBy:0 toItem:v4 attribute:4 multiplier:1.0 constant:0.0];
    v27[0] = v17;
    v27[1] = v19;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
    textLeadingConstraints = v4->_textLeadingConstraints;
    v4->_textLeadingConstraints = v22;

    v24 = [MEMORY[0x1E695DF70] array];
    [v24 addObjectsFromArray:v4->_artworkSizeConstraints];
    [v24 addObject:v15];
    [v24 addObject:v16];
    [v24 addObject:v21];
    [v24 addObject:v17];
    [v24 addObject:v18];
    [v24 addObject:v19];
    [v24 addObject:v20];
    [(_VideosExtrasGridHeaderView *)v4 addConstraints:v24];
  }

  return v4;
}

- (void)configureForImage:(id)a3 title:(id)a4 subtitle:(id)a5 style:(id)a6
{
  v121 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  v104 = v12;
  if (v11)
  {
    v15 = [v13 titleColor];
    [(UILabel *)self->_titleLabel setTextColor:v15];

    v16 = MEMORY[0x1E69DB880];
    v17 = [v14 titleDefaultFontAttributes];
    v18 = [v16 fontDescriptorWithFontAttributes:v17];

    titleLabel = self->_titleLabel;
    v20 = [v14 titleTextStyle];
    [(UILabel *)titleLabel configureForIKTextElement:v11 fontDescriptor:v18 textStyle:v20];
  }

  v102 = v11;
  if (v12)
  {
    v21 = [v14 subtitleColor];
    [(UILabel *)self->_subtitleLabel setTextColor:v21];

    v22 = MEMORY[0x1E69DB880];
    v23 = [v14 subtitleDefaultFontAttributes];
    v24 = [v22 fontDescriptorWithFontAttributes:v23];

    subtitleLabel = self->_subtitleLabel;
    v26 = [v14 subtitleTextStyle];
    [(UILabel *)subtitleLabel configureForIKTextElement:v12 fontDescriptor:v24 textStyle:v26];
  }

  v27 = 0.0;
  v28 = 10.0;
  if (v10 && [v14 showsImage])
  {
    v29 = [v10 placeholderURL];
    v30 = [MEMORY[0x1E69DCAB8] imageForPlaceholderURL:v29];
    [(MPUArtworkView *)self->_artworkView setPlaceholderImage:v30];
    v31 = [v10 artworkCatalog];
    v27 = 50.0;
    [v31 setFittingSize:{50.0, 50.0}];
    artworkView = self->_artworkView;
    v113[0] = MEMORY[0x1E69E9820];
    v113[1] = 3221225472;
    v113[2] = __70___VideosExtrasGridHeaderView_configureForImage_title_subtitle_style___block_invoke;
    v113[3] = &unk_1E8730490;
    v113[4] = self;
    [v31 setDestination:artworkView configurationBlock:v113];

    v28 = 15.0;
  }

  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v33 = self->_artworkSizeConstraints;
  v34 = [(NSArray *)v33 countByEnumeratingWithState:&v109 objects:v120 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v110;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v110 != v36)
        {
          objc_enumerationMutation(v33);
        }

        [*(*(&v109 + 1) + 8 * i) setConstant:v27];
      }

      v35 = [(NSArray *)v33 countByEnumeratingWithState:&v109 objects:v120 count:16];
    }

    while (v35);
  }

  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v38 = self->_textLeadingConstraints;
  v39 = [(NSArray *)v38 countByEnumeratingWithState:&v105 objects:v119 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v106;
    do
    {
      for (j = 0; j != v40; ++j)
      {
        if (*v106 != v41)
        {
          objc_enumerationMutation(v38);
        }

        [*(*(&v105 + 1) + 8 * j) setConstant:v28];
      }

      v40 = [(NSArray *)v38 countByEnumeratingWithState:&v105 objects:v119 count:16];
    }

    while (v40);
  }

  v43 = [(UILabel *)self->_titleLabel attributedText];
  v103 = v10;
  if ([v43 length])
  {
  }

  else
  {
    v44 = [(UILabel *)self->_titleLabel text];
    v45 = [v44 length];

    if (!v45)
    {
      v46 = self->_subtitleLabel;
      v47 = self;
      [v14 subtitleLineHeight];
      v49 = v97;
      v50 = [v14 subtitleTextStyle];
      v51 = 3;
      goto LABEL_26;
    }
  }

  v46 = self->_titleLabel;
  v47 = self->_titleLabel;
  [v14 titleLineHeight];
  v49 = v48;
  v50 = [v14 titleTextStyle];
  v51 = 11;
LABEL_26:
  topLabelConstraint = self->_topLabelConstraint;
  if (!topLabelConstraint)
  {
    goto LABEL_30;
  }

  v53 = [(MPUContentSizeLayoutConstraint *)topLabelConstraint firstItem];

  if (v53 != v46)
  {
    v54 = MEMORY[0x1E696ACD8];
    v118 = self->_topLabelConstraint;
    v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v118 count:1];
    [v54 deactivateConstraints:v55];

    v56 = self->_topLabelConstraint;
    self->_topLabelConstraint = 0;
  }

  v57 = self->_topLabelConstraint;
  if (!v57)
  {
LABEL_30:
    v58 = [MEMORY[0x1E69AD980] constraintWithAutoupdatingBaselineOfView:v46 relation:0 toView:self attribute:3 withTextStyle:v50 multiplier:1.0 nonStandardLeading:v49];
    v59 = self->_topLabelConstraint;
    self->_topLabelConstraint = v58;

    v60 = MEMORY[0x1E696ACD8];
    v117 = self->_topLabelConstraint;
    v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v117 count:1];
    [v60 activateConstraints:v61];

    v57 = self->_topLabelConstraint;
  }

  [(MPUContentSizeLayoutConstraint *)v57 setTextStyle:v50, v46];
  [(MPUContentSizeLayoutConstraint *)self->_topLabelConstraint setDefaultSizeConstant:v49];
  subtitleBaselineConstraint = self->_subtitleBaselineConstraint;
  if (subtitleBaselineConstraint)
  {
    v63 = [(MPUContentSizeLayoutConstraint *)subtitleBaselineConstraint secondItem];
    v64 = v63;
    if (v63 == v47)
    {
      v65 = [(MPUContentSizeLayoutConstraint *)self->_subtitleBaselineConstraint secondAttribute];

      if (v65 == v51)
      {
        goto LABEL_36;
      }
    }

    else
    {
    }

    [(_VideosExtrasGridHeaderView *)self removeConstraint:self->_subtitleBaselineConstraint];
    v66 = self->_subtitleBaselineConstraint;
    self->_subtitleBaselineConstraint = 0;

LABEL_36:
    if (self->_subtitleBaselineConstraint)
    {
      goto LABEL_38;
    }
  }

  v67 = MEMORY[0x1E69AD980];
  v68 = self->_subtitleLabel;
  v69 = [v14 subtitleTextStyle];
  [v14 subtitleLineHeight];
  v71 = [v67 constraintWithAutoupdatingBaselineOfView:v68 relation:0 toView:v47 attribute:v51 withTextStyle:v69 multiplier:1.0 nonStandardLeading:v70];
  v72 = self->_subtitleBaselineConstraint;
  self->_subtitleBaselineConstraint = v71;

  [(_VideosExtrasGridHeaderView *)self addConstraint:self->_subtitleBaselineConstraint];
LABEL_38:
  v73 = [v14 subtitleTextStyle];
  [(MPUContentSizeLayoutConstraint *)self->_subtitleBaselineConstraint setTextStyle:v73];

  [v14 subtitleLineHeight];
  [(MPUContentSizeLayoutConstraint *)self->_subtitleBaselineConstraint setDefaultSizeConstant:?];
  v74 = [(UILabel *)self->_subtitleLabel attributedText];
  if ([v74 length])
  {

LABEL_41:
    v77 = self->_subtitleLabel;
    v78 = [v14 subtitleTextStyle];
    v79 = v102;
    goto LABEL_42;
  }

  v75 = [(UILabel *)self->_subtitleLabel text];
  v76 = [v75 length];

  if (v76)
  {
    goto LABEL_41;
  }

  v98 = [(UILabel *)self->_titleLabel attributedText];
  if ([v98 length])
  {

    v79 = v102;
LABEL_54:
    v77 = self->_titleLabel;
    v78 = [v14 titleTextStyle];
    goto LABEL_42;
  }

  v99 = [(UILabel *)self->_titleLabel text];
  v100 = [v99 length];

  v79 = v102;
  if (v100)
  {
    goto LABEL_54;
  }

  v77 = 0;
  v78 = 0;
LABEL_42:
  bottomLabelSpacerHeight = self->_bottomLabelSpacerHeight;
  if (!bottomLabelSpacerHeight)
  {
    v81 = MEMORY[0x1E69AD980];
    bottomLabelSpacer = self->_bottomLabelSpacer;
    [v14 bottomLabelDescender];
    v84 = [v81 contentSizeAutoupdatingConstraintWithItem:bottomLabelSpacer attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:v78 textStyle:1.0 defaultSizeConstant:v83];
    v85 = self->_bottomLabelSpacerHeight;
    self->_bottomLabelSpacerHeight = v84;

    v86 = MEMORY[0x1E696ACD8];
    v116 = self->_bottomLabelSpacerHeight;
    v87 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v116 count:1];
    [v86 activateConstraints:v87];

    bottomLabelSpacerHeight = self->_bottomLabelSpacerHeight;
  }

  [(MPUContentSizeLayoutConstraint *)bottomLabelSpacerHeight setTextStyle:v78];
  [v14 bottomLabelDescender];
  [(MPUContentSizeLayoutConstraint *)self->_bottomLabelSpacerHeight setDefaultSizeConstant:?];
  bottomLabelConstraint = self->_bottomLabelConstraint;
  if (!bottomLabelConstraint)
  {
    goto LABEL_48;
  }

  v89 = [(NSLayoutConstraint *)bottomLabelConstraint secondItem];

  if (v89 != v77)
  {
    v90 = MEMORY[0x1E696ACD8];
    v115 = self->_bottomLabelConstraint;
    v91 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v115 count:1];
    [v90 deactivateConstraints:v91];

    v92 = self->_bottomLabelConstraint;
    self->_bottomLabelConstraint = 0;
  }

  if (!self->_bottomLabelConstraint)
  {
LABEL_48:
    v93 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_bottomLabelSpacer attribute:3 relatedBy:0 toItem:v77 attribute:11 multiplier:1.0 constant:0.0];
    v94 = self->_bottomLabelConstraint;
    self->_bottomLabelConstraint = v93;

    v95 = MEMORY[0x1E696ACD8];
    v114 = self->_bottomLabelConstraint;
    v96 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v114 count:1];
    [v95 activateConstraints:v96];
  }
}

@end