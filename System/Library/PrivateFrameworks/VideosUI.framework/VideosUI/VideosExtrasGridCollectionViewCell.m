@interface VideosExtrasGridCollectionViewCell
- (IKLockupElement)lockupElement;
- (VideosExtrasGridCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)configureForLockup:(id)a3 cellStyle:(id)a4 withSizing:(BOOL)a5;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation VideosExtrasGridCollectionViewCell

- (VideosExtrasGridCollectionViewCell)initWithFrame:(CGRect)a3
{
  v51[2] = *MEMORY[0x1E69E9840];
  v50.receiver = self;
  v50.super_class = VideosExtrasGridCollectionViewCell;
  v3 = [(VideosExtrasGridCollectionViewCell *)&v50 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] clearColor];
    [(VideosExtrasGridCollectionViewCell *)v3 setBackgroundColor:v4];

    v5 = [objc_alloc(MEMORY[0x1E69DCC10]) initForAutolayout];
    [v5 MPU_setAutomaticallyUpdatesTextStyleFontsToPreferredTextStyleFonts:1];
    v6 = [MEMORY[0x1E69DC888] clearColor];
    [v5 setBackgroundColor:v6];

    [v5 setTextAlignment:1];
    LODWORD(v7) = 1144750080;
    [v5 setContentHuggingPriority:1 forAxis:v7];
    v8 = [(VideosExtrasGridCollectionViewCell *)v3 contentView];
    [v8 addSubview:v5];

    [(VideosExtrasGridCollectionViewCell *)v3 setTitleLabel:v5];
    v9 = [objc_alloc(MEMORY[0x1E69DCC10]) initForAutolayout];
    [v9 MPU_setAutomaticallyUpdatesTextStyleFontsToPreferredTextStyleFonts:1];
    v10 = [MEMORY[0x1E69DC888] clearColor];
    [v9 setBackgroundColor:v10];

    [v9 setTextAlignment:1];
    LODWORD(v11) = 1144733696;
    [v9 setContentHuggingPriority:1 forAxis:v11];
    v12 = [(VideosExtrasGridCollectionViewCell *)v3 contentView];
    [v12 addSubview:v9];

    [(VideosExtrasGridCollectionViewCell *)v3 setSubtitleLabel:v9];
    v13 = [[VideosExtrasConstrainedArtworkContainerView alloc] initForAutolayout];
    artworkContainer = v3->_artworkContainer;
    v3->_artworkContainer = v13;

    [(VideosExtrasConstrainedArtworkContainerView *)v3->_artworkContainer setClipsToBounds:1];
    [(VideosExtrasConstrainedArtworkContainerView *)v3->_artworkContainer setShouldBottomAlignArtwork:1];
    v15 = [MEMORY[0x1E696ACD8] constraintWithItem:v3->_artworkContainer attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:0.0];
    artworkContainerWidthConstraint = v3->_artworkContainerWidthConstraint;
    v3->_artworkContainerWidthConstraint = v15;

    v17 = [MEMORY[0x1E696ACD8] constraintWithItem:v3->_artworkContainer attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:0.0];
    artworkContainerHeightConstraint = v3->_artworkContainerHeightConstraint;
    v3->_artworkContainerHeightConstraint = v17;

    v19 = [(VideosExtrasGridCollectionViewCell *)v3 contentView];
    [v19 addSubview:v3->_artworkContainer];

    v20 = [(VideosExtrasGridCollectionViewCell *)v3 contentView];
    v51[0] = v3->_artworkContainerWidthConstraint;
    v51[1] = v3->_artworkContainerHeightConstraint;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:2];
    [v20 addConstraints:v21];

    v22 = [(VideosExtrasConstrainedArtworkContainerView *)v3->_artworkContainer artworkView];
    [v22 setDimsWhenHighlighted:1];
    v23 = [MEMORY[0x1E69DC888] clearColor];
    [v22 setBackgroundColor:v23];

    v24 = MEMORY[0x1E696ACD8];
    v25 = [(VideosExtrasGridCollectionViewCell *)v3 contentView];
    v26 = *MEMORY[0x1E69DDCE0];
    v27 = *(MEMORY[0x1E69DDCE0] + 8);
    v28 = *(MEMORY[0x1E69DDCE0] + 16);
    v29 = *(MEMORY[0x1E69DDCE0] + 24);
    v30 = [v24 constraintsByAttachingView:v5 toView:v25 alongEdges:10 insets:{*MEMORY[0x1E69DDCE0], v27, v28, v29}];

    v31 = MEMORY[0x1E696ACD8];
    v32 = [(VideosExtrasGridCollectionViewCell *)v3 contentView];
    v33 = [v31 constraintsByAttachingView:v9 toView:v32 alongEdges:10 insets:{v26, v27, v28, v29}];

    v34 = [(VideosExtrasGridCollectionViewCell *)v3 contentView];
    [v34 addConstraints:v30];

    v35 = [(VideosExtrasGridCollectionViewCell *)v3 contentView];
    [v35 addConstraints:v33];

    v36 = MEMORY[0x1E696ACD8];
    v37 = v3->_artworkContainer;
    v38 = [(VideosExtrasGridCollectionViewCell *)v3 contentView];
    v39 = [v36 constraintsByAttachingView:v37 toView:v38 alongEdges:11 insets:{v26, v27, v28, v29}];

    v40 = [(VideosExtrasGridCollectionViewCell *)v3 contentView];
    [v40 addConstraints:v39];

    v41 = [objc_alloc(MEMORY[0x1E69DD250]) initForAutolayout];
    spacerView = v3->_spacerView;
    v3->_spacerView = v41;

    v43 = [(VideosExtrasGridCollectionViewCell *)v3 contentView];
    [v43 addSubview:v3->_spacerView];

    v44 = MEMORY[0x1E696ACD8];
    v45 = v3->_spacerView;
    v46 = [(VideosExtrasGridCollectionViewCell *)v3 contentView];
    v47 = [v44 constraintWithItem:v45 attribute:4 relatedBy:0 toItem:v46 attribute:4 multiplier:1.0 constant:0.0];

    v48 = [(VideosExtrasGridCollectionViewCell *)v3 contentView];
    [v48 addConstraint:v47];
  }

  return v3;
}

- (void)configureForLockup:(id)a3 cellStyle:(id)a4 withSizing:(BOOL)a5
{
  v150 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  [(VideosExtrasGridCollectionViewCell *)self setLockupElement:v7];
  v9 = [v7 title];
  v140 = v7;
  v10 = [v7 subtitle];
  v139 = v9;
  v11 = [v9 text];
  v12 = [v11 length];

  v138 = v10;
  v13 = [v10 text];
  v14 = [v13 length];

  if (v12)
  {
    v15 = [v8 titleTextColor];
    v16 = [(VideosExtrasGridCollectionViewCell *)self titleLabel];
    [v16 setTextColor:v15];

    v17 = MEMORY[0x1E69DB880];
    v18 = [v8 titleDefaultFontAttributes];
    v19 = [v17 fontDescriptorWithFontAttributes:v18];

    v20 = [v139 alignment];
    v21 = [(VideosExtrasGridCollectionViewCell *)self titleLabel];
    v22 = [v8 titleTextStyle];
    [v21 configureForIKTextElement:v139 fontDescriptor:v19 textStyle:v22];

    v23 = [(VideosExtrasGridCollectionViewCell *)self titleLabel];
    v24 = [v23 numberOfLines];

    if (v24 >= 3)
    {
      v25 = [(VideosExtrasGridCollectionViewCell *)self titleLabel];
      [v25 setNumberOfLines:2];
    }

    if (!v20)
    {
      v26 = [v8 defaultTextAlignment];
      v27 = [(VideosExtrasGridCollectionViewCell *)self titleLabel];
      [v27 setTextAlignment:v26];
    }
  }

  if (v14)
  {
    v28 = [v8 subtitleTextColor];
    v29 = [(VideosExtrasGridCollectionViewCell *)self subtitleLabel];
    [v29 setTextColor:v28];

    v30 = MEMORY[0x1E69DB880];
    v31 = [v8 subtitleDefaultFontAttributes];
    v32 = [v30 fontDescriptorWithFontAttributes:v31];

    v33 = [v10 alignment];
    v34 = [(VideosExtrasGridCollectionViewCell *)self subtitleLabel];
    v35 = [v8 subtitleTextStyle];
    [v34 configureForIKTextElement:v10 fontDescriptor:v32 textStyle:v35];

    v36 = [(VideosExtrasGridCollectionViewCell *)self subtitleLabel];
    v37 = [v36 numberOfLines];

    if (v37 >= 3)
    {
      v38 = [(VideosExtrasGridCollectionViewCell *)self subtitleLabel];
      [v38 setNumberOfLines:2];
    }

    if (!v33)
    {
      v39 = [v8 defaultTextAlignment];
      v40 = [(VideosExtrasGridCollectionViewCell *)self subtitleLabel];
      [v40 setTextAlignment:v39];
    }
  }

  [v8 imageSize];
  v42 = v41;
  v44 = v43;
  [(NSLayoutConstraint *)self->_artworkContainerWidthConstraint setConstant:?];
  [(NSLayoutConstraint *)self->_artworkContainerHeightConstraint setConstant:v44];
  v45 = [v140 image];
  if (v45 && !a5)
  {
    [v140 overlays];
    v145 = 0u;
    v146 = 0u;
    v147 = 0u;
    v134 = v148 = 0u;
    v46 = [v134 children];
    v47 = [v46 countByEnumeratingWithState:&v145 objects:v149 count:16];
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
          objc_enumerationMutation(v46);
        }

        v51 = *(*(&v145 + 1) + 8 * v50);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        if (v48 == ++v50)
        {
          v48 = [v46 countByEnumeratingWithState:&v145 objects:v149 count:16];
          if (v48)
          {
            goto LABEL_17;
          }

          goto LABEL_26;
        }
      }

      v52 = [v51 resourceImage];

      if (!v52)
      {
        goto LABEL_27;
      }

      v53 = [(VideosExtrasGridCollectionViewCell *)self artworkContainer];
      [v53 setOverlayImage:v52];

      v54 = [(VideosExtrasGridCollectionViewCell *)self artworkContainer];
      [v54 setOverlayScale:0.3];

      v46 = v52;
    }

LABEL_26:

LABEL_27:
    v55 = [v45 placeholderURL];
    v56 = [MEMORY[0x1E69DCAB8] imageForPlaceholderURL:v55];
    v57 = [(VideosExtrasGridCollectionViewCell *)self artworkContainer];
    v58 = [v57 artworkView];
    [v58 setPlaceholderImage:v56];

    v59 = [v45 borderColor];
    v60 = v59;
    v61 = v45;
    if (v59)
    {
      v62 = v59;
    }

    else
    {
      v62 = [MEMORY[0x1E69DC888] colorWithWhite:0.2 alpha:1.0];
    }

    v63 = v62;

    v64 = [(VideosExtrasGridCollectionViewCell *)self artworkContainer];
    v65 = [v64 layer];
    [v65 setBorderColor:{objc_msgSend(v63, "CGColor")}];

    v66 = [(VideosExtrasGridCollectionViewCell *)self artworkContainer];
    v67 = [v66 layer];
    v68 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v68 scale];
    [v67 setBorderWidth:1.0 / v69];

    v45 = v61;
    v70 = [v61 artworkCatalog];
    [v70 setFittingSize:{v42, v44}];
    v141[0] = MEMORY[0x1E69E9820];
    v141[1] = 3221225472;
    v141[2] = __78__VideosExtrasGridCollectionViewCell_configureForLockup_cellStyle_withSizing___block_invoke;
    v141[3] = &unk_1E8734650;
    v142 = v140;
    v143 = self;
    v144 = v63;
    v71 = v63;
    [v70 setDestination:self configurationBlock:v141];

    v12 = v137;
  }

  if (!(v12 | v14))
  {
    if (self->_topLineHeight)
    {
      v72 = [(VideosExtrasGridCollectionViewCell *)self contentView];
      [v72 removeConstraint:self->_topLineHeight];

      topLineHeight = self->_topLineHeight;
      self->_topLineHeight = 0;
    }

    if (self->_subtitleLineHeight)
    {
      v74 = [(VideosExtrasGridCollectionViewCell *)self contentView];
      [v74 removeConstraint:self->_subtitleLineHeight];

      subtitleLineHeight = self->_subtitleLineHeight;
      self->_subtitleLineHeight = 0;
    }

    spacerTop = self->_spacerTop;
    if (!spacerTop)
    {
      goto LABEL_49;
    }

    v77 = [(NSLayoutConstraint *)spacerTop secondItem];
    artworkContainer = self->_artworkContainer;

    if (v77 != artworkContainer)
    {
      v79 = [(VideosExtrasGridCollectionViewCell *)self contentView];
      [v79 removeConstraint:self->_spacerTop];

      v80 = self->_spacerTop;
      self->_spacerTop = 0;
    }

    if (!self->_spacerTop)
    {
LABEL_49:
      v88 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_spacerView attribute:3 relatedBy:0 toItem:self->_artworkContainer attribute:4 multiplier:1.0 constant:0.0];
      v89 = self->_spacerTop;
      self->_spacerTop = v88;

      v90 = [(VideosExtrasGridCollectionViewCell *)self contentView];
      [v90 addConstraint:self->_spacerTop];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v91 = [(VideosExtrasGridCollectionViewCell *)self contentView];
      [v91 removeConstraint:self->_spacerHeight];

      spacerHeight = self->_spacerHeight;
      self->_spacerHeight = 0;
    }

    v93 = self->_spacerHeight;
    if (!v93)
    {
      v94 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_spacerView attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:0.0];
      v95 = self->_spacerHeight;
      self->_spacerHeight = v94;

      v96 = [(VideosExtrasGridCollectionViewCell *)self contentView];
      [v96 addConstraint:self->_spacerHeight];

      v93 = self->_spacerHeight;
    }

    [(NSLayoutConstraint *)v93 setConstant:10.0];
    goto LABEL_81;
  }

  v135 = v45;
  if (!v12 || !v14)
  {
    if (v12 != 0 && v14 == 0)
    {
      v83 = [(VideosExtrasGridCollectionViewCell *)self titleLabel];
      v14 = [v8 titleTextStyle];
      v85 = [(VideosExtrasGridCollectionViewCell *)self titleLabel];
      v86 = [v8 titleTextStyle];
      goto LABEL_56;
    }

    if (v12)
    {
      v83 = 0;
      v14 = 0;
    }

    else
    {
      if (v14)
      {
        v83 = [(VideosExtrasGridCollectionViewCell *)self subtitleLabel];
        v84 = [v8 subtitleTextStyle];
        goto LABEL_44;
      }

      v83 = 0;
    }

    v85 = 0;
    v87 = 0;
    goto LABEL_57;
  }

  v81 = [(VideosExtrasGridCollectionViewCell *)self titleLabel];
  [v81 setNumberOfLines:1];

  v82 = [(VideosExtrasGridCollectionViewCell *)self subtitleLabel];
  [v82 setNumberOfLines:1];

  v83 = [(VideosExtrasGridCollectionViewCell *)self titleLabel];
  v84 = [v8 titleTextStyle];
LABEL_44:
  v14 = v84;
  v85 = [(VideosExtrasGridCollectionViewCell *)self subtitleLabel];
  v86 = [v8 subtitleTextStyle];
LABEL_56:
  v87 = v86;
LABEL_57:
  v97 = self->_topLineHeight;
  if (!v97)
  {
    goto LABEL_61;
  }

  v98 = [(MPUContentSizeLayoutConstraint *)v97 firstItem];

  if (v98 != v83)
  {
    v99 = [(VideosExtrasGridCollectionViewCell *)self contentView];
    [v99 removeConstraint:self->_topLineHeight];

    v100 = self->_topLineHeight;
    self->_topLineHeight = 0;
  }

  v101 = self->_topLineHeight;
  if (!v101)
  {
LABEL_61:
    v102 = MEMORY[0x1E69AD980];
    v103 = self->_artworkContainer;
    [v8 titleFirstBaselineHeight];
    v105 = [v102 constraintWithAutoupdatingBaselineOfView:v83 relation:0 toView:v103 attribute:4 withTextStyle:v14 multiplier:1.0 nonStandardLeading:v104];
    v106 = self->_topLineHeight;
    self->_topLineHeight = v105;

    v107 = [(VideosExtrasGridCollectionViewCell *)self contentView];
    [v107 addConstraint:self->_topLineHeight];

    v101 = self->_topLineHeight;
  }

  [(MPUContentSizeLayoutConstraint *)v101 setTextStyle:v14];
  [v8 titleFirstBaselineHeight];
  [(MPUContentSizeLayoutConstraint *)self->_topLineHeight setDefaultSizeConstant:?];
  v108 = self->_subtitleLineHeight;
  if (v83 == v85)
  {
    if (v108)
    {
      v118 = [(VideosExtrasGridCollectionViewCell *)self contentView];
      [v118 removeConstraint:self->_subtitleLineHeight];

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

    v109 = [(MPUContentSizeLayoutConstraint *)v108 firstItem];

    if (v109 != v85)
    {
      v110 = [(VideosExtrasGridCollectionViewCell *)self contentView];
      [v110 removeConstraint:self->_subtitleLineHeight];

      v111 = self->_subtitleLineHeight;
      self->_subtitleLineHeight = 0;
    }

    v112 = self->_subtitleLineHeight;
    if (!v112)
    {
LABEL_67:
      v113 = MEMORY[0x1E69AD980];
      [v8 subtitleFirstBaselineHeight];
      v115 = [v113 constraintWithAutoupdatingBaselineOfView:v85 relation:0 toView:v83 attribute:11 withTextStyle:v87 multiplier:1.0 nonStandardLeading:v114];
      v116 = self->_subtitleLineHeight;
      self->_subtitleLineHeight = v115;

      v117 = [(VideosExtrasGridCollectionViewCell *)self contentView];
      [v117 addConstraint:self->_subtitleLineHeight];

      v112 = self->_subtitleLineHeight;
    }

    [(MPUContentSizeLayoutConstraint *)v112 setTextStyle:v87];
    [v8 subtitleFirstBaselineHeight];
    [(MPUContentSizeLayoutConstraint *)self->_subtitleLineHeight setDefaultSizeConstant:?];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v120 = [(VideosExtrasGridCollectionViewCell *)self contentView];
    [v120 removeConstraint:self->_spacerHeight];

    v121 = self->_spacerHeight;
    self->_spacerHeight = 0;
  }

  v122 = self->_spacerHeight;
  if (!v122)
  {
    v123 = MEMORY[0x1E69AD980];
    spacerView = self->_spacerView;
    [v8 textFirstBaselineToBottom];
    v122 = [v123 contentSizeAutoupdatingConstraintWithItem:spacerView attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:v14 textStyle:1.0 defaultSizeConstant:v125];
    objc_storeStrong(&self->_spacerHeight, v122);
    v126 = [(VideosExtrasGridCollectionViewCell *)self contentView];
    [v126 addConstraint:self->_spacerHeight];
  }

  [(NSLayoutConstraint *)v122 setTextStyle:v14];
  [v8 textFirstBaselineToBottom];
  [(NSLayoutConstraint *)v122 setDefaultSizeConstant:?];
  v127 = self->_spacerTop;
  if (!v127)
  {
    goto LABEL_79;
  }

  v128 = [(NSLayoutConstraint *)v127 secondItem];

  if (v128 != v83)
  {
    v129 = [(VideosExtrasGridCollectionViewCell *)self contentView];
    [v129 removeConstraint:self->_spacerTop];

    v130 = self->_spacerTop;
    self->_spacerTop = 0;
  }

  if (!self->_spacerTop)
  {
LABEL_79:
    v131 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_spacerView attribute:3 relatedBy:0 toItem:v83 attribute:12 multiplier:1.0 constant:0.0];
    v132 = self->_spacerTop;
    self->_spacerTop = v131;

    v133 = [(VideosExtrasGridCollectionViewCell *)self contentView];
    [v133 addConstraint:self->_spacerTop];
  }

  v45 = v135;
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

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = VideosExtrasGridCollectionViewCell;
  [(VideosExtrasGridCollectionViewCell *)&v6 setHighlighted:?];
  v5 = [(VideosExtrasConstrainedArtworkContainerView *)self->_artworkContainer artworkView];
  [v5 setHighlighted:v3];
}

- (void)prepareForReuse
{
  v17.receiver = self;
  v17.super_class = VideosExtrasGridCollectionViewCell;
  [(VideosExtrasGridCollectionViewCell *)&v17 prepareForReuse];
  v3 = [(VideosExtrasGridCollectionViewCell *)self artworkContainer];
  v4 = [v3 layer];
  [v4 setBorderWidth:0.0];

  v5 = [(VideosExtrasGridCollectionViewCell *)self artworkContainer];
  v6 = [v5 artworkView];
  v7 = [v6 layer];
  [v7 setBorderWidth:0.0];

  v8 = [(VideosExtrasGridCollectionViewCell *)self artworkContainer];
  v9 = [v8 artworkView];
  [v9 setPlaceholderImage:0];

  v10 = [(VideosExtrasGridCollectionViewCell *)self artworkContainer];
  v11 = [v10 artworkView];
  [v11 setImage:0];

  v12 = [(VideosExtrasGridCollectionViewCell *)self artworkContainer];
  [v12 setOverlayImage:0];

  v13 = [(VideosExtrasGridCollectionViewCell *)self titleLabel];
  [v13 setText:0];

  v14 = [(VideosExtrasGridCollectionViewCell *)self titleLabel];
  [v14 setAttributedText:0];

  v15 = [(VideosExtrasGridCollectionViewCell *)self subtitleLabel];
  [v15 setText:0];

  v16 = [(VideosExtrasGridCollectionViewCell *)self subtitleLabel];
  [v16 setAttributedText:0];
}

- (IKLockupElement)lockupElement
{
  WeakRetained = objc_loadWeakRetained(&self->_lockupElement);

  return WeakRetained;
}

@end