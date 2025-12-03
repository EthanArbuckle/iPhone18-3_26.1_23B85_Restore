@interface _VideosExtrasGridHeaderView
- (_VideosExtrasGridHeaderView)initWithFrame:(CGRect)frame;
- (void)configureForImage:(id)image title:(id)title subtitle:(id)subtitle style:(id)style;
@end

@implementation _VideosExtrasGridHeaderView

- (_VideosExtrasGridHeaderView)initWithFrame:(CGRect)frame
{
  v27[2] = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = _VideosExtrasGridHeaderView;
  v3 = [(_VideosExtrasGridHeaderView *)&v26 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(_VideosExtrasGridHeaderView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    initForAutolayout = [objc_alloc(MEMORY[0x1E69B0870]) initForAutolayout];
    artworkView = v4->_artworkView;
    v4->_artworkView = initForAutolayout;

    [(_VideosExtrasGridHeaderView *)v4 addSubview:v4->_artworkView];
    initForAutolayout2 = [objc_alloc(MEMORY[0x1E69DCC10]) initForAutolayout];
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = initForAutolayout2;

    [(UILabel *)v4->_titleLabel MPU_setAutomaticallyUpdatesTextStyleFontsToPreferredTextStyleFonts:1];
    [(_VideosExtrasGridHeaderView *)v4 addSubview:v4->_titleLabel];
    initForAutolayout3 = [objc_alloc(MEMORY[0x1E69DCC10]) initForAutolayout];
    subtitleLabel = v4->_subtitleLabel;
    v4->_subtitleLabel = initForAutolayout3;

    [(UILabel *)v4->_subtitleLabel MPU_setAutomaticallyUpdatesTextStyleFontsToPreferredTextStyleFonts:1];
    [(_VideosExtrasGridHeaderView *)v4 addSubview:v4->_subtitleLabel];
    initForAutolayout4 = [objc_alloc(MEMORY[0x1E69DD250]) initForAutolayout];
    bottomLabelSpacer = v4->_bottomLabelSpacer;
    v4->_bottomLabelSpacer = initForAutolayout4;

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

    array = [MEMORY[0x1E695DF70] array];
    [array addObjectsFromArray:v4->_artworkSizeConstraints];
    [array addObject:v15];
    [array addObject:v16];
    [array addObject:v21];
    [array addObject:v17];
    [array addObject:v18];
    [array addObject:v19];
    [array addObject:v20];
    [(_VideosExtrasGridHeaderView *)v4 addConstraints:array];
  }

  return v4;
}

- (void)configureForImage:(id)image title:(id)title subtitle:(id)subtitle style:(id)style
{
  v121 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  titleCopy = title;
  subtitleCopy = subtitle;
  styleCopy = style;
  v14 = styleCopy;
  v104 = subtitleCopy;
  if (titleCopy)
  {
    titleColor = [styleCopy titleColor];
    [(UILabel *)self->_titleLabel setTextColor:titleColor];

    v16 = MEMORY[0x1E69DB880];
    titleDefaultFontAttributes = [v14 titleDefaultFontAttributes];
    v18 = [v16 fontDescriptorWithFontAttributes:titleDefaultFontAttributes];

    titleLabel = self->_titleLabel;
    titleTextStyle = [v14 titleTextStyle];
    [(UILabel *)titleLabel configureForIKTextElement:titleCopy fontDescriptor:v18 textStyle:titleTextStyle];
  }

  v102 = titleCopy;
  if (subtitleCopy)
  {
    subtitleColor = [v14 subtitleColor];
    [(UILabel *)self->_subtitleLabel setTextColor:subtitleColor];

    v22 = MEMORY[0x1E69DB880];
    subtitleDefaultFontAttributes = [v14 subtitleDefaultFontAttributes];
    v24 = [v22 fontDescriptorWithFontAttributes:subtitleDefaultFontAttributes];

    subtitleLabel = self->_subtitleLabel;
    subtitleTextStyle = [v14 subtitleTextStyle];
    [(UILabel *)subtitleLabel configureForIKTextElement:subtitleCopy fontDescriptor:v24 textStyle:subtitleTextStyle];
  }

  v27 = 0.0;
  v28 = 10.0;
  if (imageCopy && [v14 showsImage])
  {
    placeholderURL = [imageCopy placeholderURL];
    v30 = [MEMORY[0x1E69DCAB8] imageForPlaceholderURL:placeholderURL];
    [(MPUArtworkView *)self->_artworkView setPlaceholderImage:v30];
    artworkCatalog = [imageCopy artworkCatalog];
    v27 = 50.0;
    [artworkCatalog setFittingSize:{50.0, 50.0}];
    artworkView = self->_artworkView;
    v113[0] = MEMORY[0x1E69E9820];
    v113[1] = 3221225472;
    v113[2] = __70___VideosExtrasGridHeaderView_configureForImage_title_subtitle_style___block_invoke;
    v113[3] = &unk_1E8730490;
    v113[4] = self;
    [artworkCatalog setDestination:artworkView configurationBlock:v113];

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

  attributedText = [(UILabel *)self->_titleLabel attributedText];
  v103 = imageCopy;
  if ([attributedText length])
  {
  }

  else
  {
    text = [(UILabel *)self->_titleLabel text];
    v45 = [text length];

    if (!v45)
    {
      v46 = self->_subtitleLabel;
      selfCopy = self;
      [v14 subtitleLineHeight];
      v49 = v97;
      subtitleTextStyle2 = [v14 subtitleTextStyle];
      v51 = 3;
      goto LABEL_26;
    }
  }

  v46 = self->_titleLabel;
  selfCopy = self->_titleLabel;
  [v14 titleLineHeight];
  v49 = v48;
  subtitleTextStyle2 = [v14 titleTextStyle];
  v51 = 11;
LABEL_26:
  topLabelConstraint = self->_topLabelConstraint;
  if (!topLabelConstraint)
  {
    goto LABEL_30;
  }

  firstItem = [(MPUContentSizeLayoutConstraint *)topLabelConstraint firstItem];

  if (firstItem != v46)
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
    v58 = [MEMORY[0x1E69AD980] constraintWithAutoupdatingBaselineOfView:v46 relation:0 toView:self attribute:3 withTextStyle:subtitleTextStyle2 multiplier:1.0 nonStandardLeading:v49];
    v59 = self->_topLabelConstraint;
    self->_topLabelConstraint = v58;

    v60 = MEMORY[0x1E696ACD8];
    v117 = self->_topLabelConstraint;
    v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v117 count:1];
    [v60 activateConstraints:v61];

    v57 = self->_topLabelConstraint;
  }

  [(MPUContentSizeLayoutConstraint *)v57 setTextStyle:subtitleTextStyle2, v46];
  [(MPUContentSizeLayoutConstraint *)self->_topLabelConstraint setDefaultSizeConstant:v49];
  subtitleBaselineConstraint = self->_subtitleBaselineConstraint;
  if (subtitleBaselineConstraint)
  {
    secondItem = [(MPUContentSizeLayoutConstraint *)subtitleBaselineConstraint secondItem];
    v64 = secondItem;
    if (secondItem == selfCopy)
    {
      secondAttribute = [(MPUContentSizeLayoutConstraint *)self->_subtitleBaselineConstraint secondAttribute];

      if (secondAttribute == v51)
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
  subtitleTextStyle3 = [v14 subtitleTextStyle];
  [v14 subtitleLineHeight];
  v71 = [v67 constraintWithAutoupdatingBaselineOfView:v68 relation:0 toView:selfCopy attribute:v51 withTextStyle:subtitleTextStyle3 multiplier:1.0 nonStandardLeading:v70];
  v72 = self->_subtitleBaselineConstraint;
  self->_subtitleBaselineConstraint = v71;

  [(_VideosExtrasGridHeaderView *)self addConstraint:self->_subtitleBaselineConstraint];
LABEL_38:
  subtitleTextStyle4 = [v14 subtitleTextStyle];
  [(MPUContentSizeLayoutConstraint *)self->_subtitleBaselineConstraint setTextStyle:subtitleTextStyle4];

  [v14 subtitleLineHeight];
  [(MPUContentSizeLayoutConstraint *)self->_subtitleBaselineConstraint setDefaultSizeConstant:?];
  attributedText2 = [(UILabel *)self->_subtitleLabel attributedText];
  if ([attributedText2 length])
  {

LABEL_41:
    v77 = self->_subtitleLabel;
    subtitleTextStyle5 = [v14 subtitleTextStyle];
    v79 = v102;
    goto LABEL_42;
  }

  text2 = [(UILabel *)self->_subtitleLabel text];
  v76 = [text2 length];

  if (v76)
  {
    goto LABEL_41;
  }

  attributedText3 = [(UILabel *)self->_titleLabel attributedText];
  if ([attributedText3 length])
  {

    v79 = v102;
LABEL_54:
    v77 = self->_titleLabel;
    subtitleTextStyle5 = [v14 titleTextStyle];
    goto LABEL_42;
  }

  text3 = [(UILabel *)self->_titleLabel text];
  v100 = [text3 length];

  v79 = v102;
  if (v100)
  {
    goto LABEL_54;
  }

  v77 = 0;
  subtitleTextStyle5 = 0;
LABEL_42:
  bottomLabelSpacerHeight = self->_bottomLabelSpacerHeight;
  if (!bottomLabelSpacerHeight)
  {
    v81 = MEMORY[0x1E69AD980];
    bottomLabelSpacer = self->_bottomLabelSpacer;
    [v14 bottomLabelDescender];
    v84 = [v81 contentSizeAutoupdatingConstraintWithItem:bottomLabelSpacer attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:subtitleTextStyle5 textStyle:1.0 defaultSizeConstant:v83];
    v85 = self->_bottomLabelSpacerHeight;
    self->_bottomLabelSpacerHeight = v84;

    v86 = MEMORY[0x1E696ACD8];
    v116 = self->_bottomLabelSpacerHeight;
    v87 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v116 count:1];
    [v86 activateConstraints:v87];

    bottomLabelSpacerHeight = self->_bottomLabelSpacerHeight;
  }

  [(MPUContentSizeLayoutConstraint *)bottomLabelSpacerHeight setTextStyle:subtitleTextStyle5];
  [v14 bottomLabelDescender];
  [(MPUContentSizeLayoutConstraint *)self->_bottomLabelSpacerHeight setDefaultSizeConstant:?];
  bottomLabelConstraint = self->_bottomLabelConstraint;
  if (!bottomLabelConstraint)
  {
    goto LABEL_48;
  }

  secondItem2 = [(NSLayoutConstraint *)bottomLabelConstraint secondItem];

  if (secondItem2 != v77)
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