@interface PUCleanupUserPromptView
- (BOOL)isIpadLayout;
- (BOOL)isPortrait;
- (CGPoint)animationCenter;
- (PUCleanupUserPromptView)initWithType:(unint64_t)a3 showPlatter:(BOOL)a4;
- (PUCleanupUserPromptViewLayoutDelegate)layoutDelegate;
- (void)enableAnimation:(BOOL)a3;
- (void)layoutSubviews;
- (void)setShowPlatter:(BOOL)a3;
- (void)willMoveToSuperview:(id)a3;
@end

@implementation PUCleanupUserPromptView

- (CGPoint)animationCenter
{
  x = self->_animationCenter.x;
  y = self->_animationCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (PUCleanupUserPromptViewLayoutDelegate)layoutDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutDelegate);

  return WeakRetained;
}

- (void)setShowPlatter:(BOOL)a3
{
  v3 = a3;
  if (MEMORY[0x1B8C6D660](self, a2) && self->_showPlatter != v3)
  {
    self->_showPlatter = v3;
    container = self->_container;
    if (v3)
    {

      [(UIView *)container _reviewScreen_applyGlassBackground];
    }

    else
    {

      [(UIView *)container _setBackground:0];
    }
  }
}

- (void)enableAnimation:(BOOL)a3
{
  if (self->_type == 1)
  {
    v17 = v3;
    v18 = v4;
    v5 = a3;
    if (self->_animation)
    {
      v7 = [(UIImageView *)self->_handView layer];
      [v7 removeAllAnimations];

      v8 = [(UIImageView *)self->_handView layer];
      v9 = *(MEMORY[0x1E695EFD0] + 16);
      v16[0] = *MEMORY[0x1E695EFD0];
      v16[1] = v9;
      v16[2] = *(MEMORY[0x1E695EFD0] + 32);
      [v8 setAffineTransform:v16];
    }

    if (v5)
    {
      v10 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.rotation.z"];
      animation = self->_animation;
      self->_animation = v10;

      [(CABasicAnimation *)self->_animation setFromValue:&unk_1F2B7F3D8];
      [(CABasicAnimation *)self->_animation setToValue:&unk_1F2B7F3E8];
      v12 = self->_animation;
      v13 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
      [(CABasicAnimation *)v12 setTimingFunction:v13];

      [(CABasicAnimation *)self->_animation setDuration:0.75];
      [(CABasicAnimation *)self->_animation setAutoreverses:1];
      LODWORD(v14) = 8.0;
      [(CABasicAnimation *)self->_animation setRepeatCount:v14];
      v15 = [(UIImageView *)self->_handView layer];
      [v15 addAnimation:self->_animation forKey:@"rotation"];
    }
  }
}

- (BOOL)isIpadLayout
{
  v2 = [(PUCleanupUserPromptView *)self layoutDelegate];
  v3 = [v2 currentLayoutStyle] == 4;

  return v3;
}

- (BOOL)isPortrait
{
  v2 = [(PUCleanupUserPromptView *)self layoutDelegate];
  v3 = [v2 layoutOrientation] == 1;

  return v3;
}

- (void)layoutSubviews
{
  v102[18] = *MEMORY[0x1E69E9840];
  v99.receiver = self;
  v99.super_class = PUCleanupUserPromptView;
  [(PUCleanupUserPromptView *)&v99 layoutSubviews];
  v3 = [(PUCleanupUserPromptView *)self layoutDelegate];
  [v3 currentRenderViewWidth];
  v5 = v4;

  v6 = &OBJC_IVAR___PUCleanupUserPromptView__showPlatter;
  if (!self->_constraints)
  {
    v7 = [(UILabel *)self->_promptLabel bottomAnchor];
    v8 = [(UIView *)self->_container bottomAnchor];
    v9 = [v7 constraintEqualToAnchor:v8 constant:-14.0];
    promptLabelBottomPaddingConstraint = self->_promptLabelBottomPaddingConstraint;
    self->_promptLabelBottomPaddingConstraint = v9;

    v11 = [(UIView *)self->_handGuideView bottomAnchor];
    v12 = [(UILabel *)self->_promptLabel topAnchor];
    v13 = [v11 constraintEqualToAnchor:v12 constant:-8.0];
    handBottomPaddingConstraint = self->_handBottomPaddingConstraint;
    self->_handBottomPaddingConstraint = v13;

    v15 = [(UIView *)self->_container bottomAnchor];
    v16 = [(PUCleanupUserPromptView *)self bottomAnchor];
    v17 = [v15 constraintEqualToAnchor:v16 constant:-13.0];
    containerBottomPaddingConstraint = self->_containerBottomPaddingConstraint;
    self->_containerBottomPaddingConstraint = v17;

    v19 = [(UIView *)self->_container widthAnchor];
    v20 = [v19 constraintLessThanOrEqualToConstant:{fmax(v5 + -48.0, 400.0)}];
    containerWidthConstraint = self->_containerWidthConstraint;
    self->_containerWidthConstraint = v20;

    v22 = (self->_animationCenter.x + -0.5) * 35.0;
    v23 = (self->_animationCenter.y + -0.5) * 35.0;
    v24 = [MEMORY[0x1E695DF70] array];
    constraints = self->_constraints;
    self->_constraints = v24;

    v79 = self->_constraints;
    v97 = [(UIView *)self->_container centerXAnchor];
    v95 = [(PUCleanupUserPromptView *)self centerXAnchor];
    v93 = [v97 constraintEqualToAnchor:v95];
    v102[0] = v93;
    v91 = [(UIView *)self->_container leadingAnchor];
    v89 = [(PUCleanupUserPromptView *)self leadingAnchor];
    v88 = [v91 constraintGreaterThanOrEqualToAnchor:v89 constant:4.0];
    v102[1] = v88;
    v87 = [(UIView *)self->_container trailingAnchor];
    v86 = [(PUCleanupUserPromptView *)self trailingAnchor];
    v85 = [v87 constraintLessThanOrEqualToAnchor:v86 constant:-4.0];
    v26 = self->_containerBottomPaddingConstraint;
    v102[2] = v85;
    v102[3] = v26;
    v102[4] = self->_containerWidthConstraint;
    v84 = [(UILabel *)self->_promptLabel centerXAnchor];
    v83 = [(UIView *)self->_container centerXAnchor];
    v82 = [v84 constraintEqualToAnchor:v83];
    v102[5] = v82;
    v81 = [(UILabel *)self->_promptLabel leadingAnchor];
    v80 = [(UIView *)self->_container leadingAnchor];
    v78 = [v81 constraintEqualToAnchor:v80 constant:28.0];
    v102[6] = v78;
    v77 = [(UILabel *)self->_promptLabel trailingAnchor];
    v76 = [(UIView *)self->_container trailingAnchor];
    v75 = [v77 constraintEqualToAnchor:v76 constant:-28.0];
    v27 = self->_promptLabelBottomPaddingConstraint;
    v102[7] = v75;
    v102[8] = v27;
    v74 = [(UIView *)self->_handGuideView widthAnchor];
    v73 = [v74 constraintEqualToConstant:35.0];
    v102[9] = v73;
    v72 = [(UIView *)self->_handGuideView heightAnchor];
    v71 = [v72 constraintEqualToConstant:35.0];
    v102[10] = v71;
    v70 = [(UIView *)self->_handGuideView centerXAnchor];
    v69 = [(UIView *)self->_container centerXAnchor];
    v68 = [v70 constraintEqualToAnchor:v69 constant:0.0];
    v28 = self->_handBottomPaddingConstraint;
    v102[11] = v68;
    v102[12] = v28;
    v67 = [(UIView *)self->_handGuideView topAnchor];
    v66 = [(UIView *)self->_container topAnchor];
    v65 = [v67 constraintEqualToAnchor:v66 constant:8.0];
    v102[13] = v65;
    v64 = [(UIImageView *)self->_handView widthAnchor];
    v63 = [v64 constraintEqualToConstant:35.0];
    v102[14] = v63;
    v29 = [(UIImageView *)self->_handView heightAnchor];
    v30 = [v29 constraintEqualToConstant:35.0];
    v102[15] = v30;
    v31 = [(UIImageView *)self->_handView centerXAnchor];
    v32 = [(UIView *)self->_handGuideView centerXAnchor];
    v33 = [v31 constraintEqualToAnchor:v32 constant:v22];
    v102[16] = v33;
    v34 = [(UIImageView *)self->_handView centerYAnchor];
    v35 = [(UIView *)self->_handGuideView centerYAnchor];
    v36 = [v34 constraintEqualToAnchor:v35 constant:v23];
    v102[17] = v36;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v102 count:18];
    [(NSMutableArray *)v79 addObjectsFromArray:v37];

    v6 = &OBJC_IVAR___PUCleanupUserPromptView__showPlatter;
    visualEffectView = self->_visualEffectView;
    if (visualEffectView)
    {
      v90 = self->_constraints;
      v98 = [(UIVisualEffectView *)visualEffectView leadingAnchor];
      v96 = [(UIView *)self->_container leadingAnchor];
      v94 = [v98 constraintEqualToAnchor:v96];
      v101[0] = v94;
      v92 = [(UIVisualEffectView *)self->_visualEffectView trailingAnchor];
      v39 = [(UIView *)self->_container trailingAnchor];
      v40 = [v92 constraintEqualToAnchor:v39];
      v101[1] = v40;
      v41 = [(UIVisualEffectView *)self->_visualEffectView topAnchor];
      v42 = [(UIView *)self->_container topAnchor];
      v43 = [v41 constraintEqualToAnchor:v42];
      v101[2] = v43;
      v44 = [(UIVisualEffectView *)self->_visualEffectView bottomAnchor];
      v45 = [(UIView *)self->_container bottomAnchor];
      v46 = [v44 constraintEqualToAnchor:v45];
      v101[3] = v46;
      v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v101 count:4];
      [(NSMutableArray *)v90 addObjectsFromArray:v47];

      v6 = &OBJC_IVAR___PUCleanupUserPromptView__showPlatter;
    }

    v48 = self->_constraints;
    v49 = [(UIView *)self->_container topAnchor];
    v50 = [(PUCleanupUserPromptView *)self topAnchor];
    v51 = [v49 constraintEqualToAnchor:v50];
    v100 = v51;
    v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v100 count:1];
    [(NSMutableArray *)v48 addObjectsFromArray:v52];

    [MEMORY[0x1E696ACD8] activateConstraints:self->_constraints];
  }

  [(UIView *)self->_handGuideView frame];
  [(UIImageView *)self->_handView setFrame:?];
  v53 = [(PUCleanupUserPromptView *)self isPortrait];
  v54 = !v53 | [(PUCleanupUserPromptView *)self isIpadLayout];
  v55 = [(PUCleanupUserPromptView *)self isIpadLayout];
  v56 = v6[3];
  [*(&self->super.super.super.isa + v56) setHidden:((v55 | v54) & 1) == 0];
  if (self->_type - 3 <= 3)
  {
    [*(&self->super.super.super.isa + v56) setHidden:0];
  }

  if ([(PUCleanupUserPromptView *)self isIpadLayout])
  {
    [(NSLayoutConstraint *)self->_promptLabelBottomPaddingConstraint setConstant:-14.0];
    [(NSLayoutConstraint *)self->_handBottomPaddingConstraint setConstant:-8.0];
    [(NSLayoutConstraint *)self->_containerBottomPaddingConstraint setConstant:-13.0];
    v57 = fmax(v5 + -48.0, 400.0);
    v58 = self->_containerWidthConstraint;
  }

  else
  {
    [(NSLayoutConstraint *)self->_containerWidthConstraint setConstant:3.40282347e38];
    v59 = self->_promptLabelBottomPaddingConstraint;
    if (v54)
    {
      [(NSLayoutConstraint *)v59 setConstant:-14.0];
      [(NSLayoutConstraint *)self->_handBottomPaddingConstraint setConstant:-8.0];
      [(NSLayoutConstraint *)self->_containerBottomPaddingConstraint setConstant:-13.0];
      if (self->_type - 3 >= 4)
      {
        return;
      }

      v60 = self->_promptLabelBottomPaddingConstraint;
      [(NSLayoutConstraint *)v60 constant];
      v62 = 8.0;
    }

    else
    {
      [(NSLayoutConstraint *)v59 setConstant:-25.0];
      [(NSLayoutConstraint *)self->_handBottomPaddingConstraint setConstant:-8.0];
      [(NSLayoutConstraint *)self->_containerBottomPaddingConstraint setConstant:-13.0];
      if (self->_type - 3 >= 4)
      {
        return;
      }

      v60 = self->_promptLabelBottomPaddingConstraint;
      [(NSLayoutConstraint *)v60 constant];
      v62 = 12.0;
    }

    v57 = v61 + v62;
    v58 = v60;
  }

  [(NSLayoutConstraint *)v58 setConstant:v57];
}

- (void)willMoveToSuperview:(id)a3
{
  v3.receiver = self;
  v3.super_class = PUCleanupUserPromptView;
  [(PUCleanupUserPromptView *)&v3 willMoveToSuperview:a3];
}

- (PUCleanupUserPromptView)initWithType:(unint64_t)a3 showPlatter:(BOOL)a4
{
  v44[1] = *MEMORY[0x1E69E9840];
  v43.receiver = self;
  v43.super_class = PUCleanupUserPromptView;
  v6 = [(PUCleanupUserPromptView *)&v43 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (!v6)
  {
    return v7;
  }

  v6->_type = a3;
  v6->_showPlatter = a4;
  if (a3 <= 6)
  {
    v8 = dbl_1B3D0D190[a3];
    *&v6->_animationCenter.x = qword_1B3D0D158[a3];
    v6->_animationCenter.y = v8;
  }

  v9 = objc_alloc_init(MEMORY[0x1E69DD250]);
  container = v7->_container;
  v7->_container = v9;

  [(UIView *)v7->_container setBackgroundColor:0];
  [(UIView *)v7->_container setTranslatesAutoresizingMaskIntoConstraints:0];
  if (MEMORY[0x1B8C6D660]([(PUCleanupUserPromptView *)v7 addSubview:v7->_container]))
  {
    v11 = v7->_container;
    if (v7->_showPlatter)
    {
      [(UIView *)v11 _reviewScreen_applyGlassBackground];
    }

    else
    {
      [(UIView *)v11 _setBackground:0];
    }

    v12 = [(UIView *)v7->_container layer];
    [v12 setCornerRadius:20.0];
  }

  else
  {
    v12 = [MEMORY[0x1E69DC730] effectWithStyle:7];
    v13 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v12];
    visualEffectView = v7->_visualEffectView;
    v7->_visualEffectView = v13;

    v15 = [(UIVisualEffectView *)v7->_visualEffectView layer];
    [v15 setCornerRadius:20.0];

    v16 = [(UIVisualEffectView *)v7->_visualEffectView layer];
    [v16 setMasksToBounds:1];

    [(UIVisualEffectView *)v7->_visualEffectView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v7->_container addSubview:v7->_visualEffectView];
  }

  v17 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  promptLabel = v7->_promptLabel;
  v7->_promptLabel = v17;

  v19 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)v7->_promptLabel setTextColor:v19];

  [(UILabel *)v7->_promptLabel setNumberOfLines:0];
  type = v7->_type;
  if (type <= 2)
  {
    switch(type)
    {
      case 0:
        v21 = @"PHOTOEDIT_CLEANUP_IOS_SCANNING";
        goto LABEL_24;
      case 1:
        v22 = @"PHOTOEDIT_CLEANUP_IOS_PROMPT";
        break;
      case 2:
        v22 = @"PHOTOEDIT_CLEANUP_IOS_PROMPT_REDACTION";
        break;
      default:
        goto LABEL_28;
    }

    v24 = PULocalizedString(v22);
    [(UILabel *)v7->_promptLabel setText:v24];

    v25 = [(UILabel *)v7->_promptLabel text];
    v26 = [v25 stringByAppendingString:@"\n"];
    [(UILabel *)v7->_promptLabel setText:v26];

    v23 = [(UILabel *)v7->_promptLabel text];
    v27 = PULocalizedString(@"PHOTOEDIT_CLEANUP_IOS_PAN_INSTRUCTION");
    v28 = [v23 stringByAppendingString:v27];
    [(UILabel *)v7->_promptLabel setText:v28];

    goto LABEL_27;
  }

  if (type <= 4)
  {
    if (type == 3)
    {
      v21 = @"PHOTOEDIT_CLEANUP_IOS_PROMPT_IDENTITY_PROTECTION_APPLIED";
    }

    else
    {
      v21 = @"PHOTOEDIT_CLEANUP_IOS_PROMPT_SAFETY_FILTER_APPLIED";
    }

    goto LABEL_24;
  }

  if (type == 5)
  {
    v21 = @"PHOTOEDIT_CLEANUP_IOS_PROMPT_INPAINT_SIZE_EXCEEDED";
    goto LABEL_24;
  }

  if (type == 6)
  {
    v21 = @"PHOTOEDIT_CLEANUP_IOS_PROMPT_UNKNOWN_ERROR";
LABEL_24:
    v23 = PULocalizedString(v21);
    [(UILabel *)v7->_promptLabel setText:v23];
LABEL_27:
  }

LABEL_28:
  v29 = [(UILabel *)v7->_promptLabel font];
  v30 = [v29 fontWithSize:14.0];
  [(UILabel *)v7->_promptLabel setFont:v30];

  [(UILabel *)v7->_promptLabel setTextAlignment:1];
  [(UILabel *)v7->_promptLabel setLineBreakMode:0];
  [(UILabel *)v7->_promptLabel setNumberOfLines:0];
  [(UILabel *)v7->_promptLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)v7->_container addSubview:v7->_promptLabel];
  v31 = objc_alloc_init(MEMORY[0x1E69DD250]);
  handGuideView = v7->_handGuideView;
  v7->_handGuideView = v31;

  [(UIView *)v7->_handGuideView setBackgroundColor:0];
  [(UIView *)v7->_handGuideView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)v7->_container addSubview:v7->_handGuideView];
  v33 = MEMORY[0x1E69DCAD8];
  v34 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v44[0] = v34;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:1];
  v36 = [v33 configurationWithPaletteColors:v35];

  v37 = 0;
  v38 = v7->_type;
  if (v38 <= 6)
  {
    v37 = [MEMORY[0x1E69DCAB8] systemImageNamed:off_1E7B76070[v38] withConfiguration:v36];
  }

  v39 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  handView = v7->_handView;
  v7->_handView = v39;

  [(UIImageView *)v7->_handView setImage:v37];
  [(UIImageView *)v7->_handView setContentMode:1];
  v41 = [(UIImageView *)v7->_handView layer];
  [v41 setAnchorPoint:{v7->_animationCenter.x, v7->_animationCenter.y}];

  [(UIImageView *)v7->_handView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)v7->_container addSubview:v7->_handView];

  return v7;
}

@end