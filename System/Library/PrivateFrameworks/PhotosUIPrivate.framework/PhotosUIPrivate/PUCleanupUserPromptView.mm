@interface PUCleanupUserPromptView
- (BOOL)isIpadLayout;
- (BOOL)isPortrait;
- (CGPoint)animationCenter;
- (PUCleanupUserPromptView)initWithType:(unint64_t)type showPlatter:(BOOL)platter;
- (PUCleanupUserPromptViewLayoutDelegate)layoutDelegate;
- (void)enableAnimation:(BOOL)animation;
- (void)layoutSubviews;
- (void)setShowPlatter:(BOOL)platter;
- (void)willMoveToSuperview:(id)superview;
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

- (void)setShowPlatter:(BOOL)platter
{
  platterCopy = platter;
  if (MEMORY[0x1B8C6D660](self, a2) && self->_showPlatter != platterCopy)
  {
    self->_showPlatter = platterCopy;
    container = self->_container;
    if (platterCopy)
    {

      [(UIView *)container _reviewScreen_applyGlassBackground];
    }

    else
    {

      [(UIView *)container _setBackground:0];
    }
  }
}

- (void)enableAnimation:(BOOL)animation
{
  if (self->_type == 1)
  {
    v17 = v3;
    v18 = v4;
    animationCopy = animation;
    if (self->_animation)
    {
      layer = [(UIImageView *)self->_handView layer];
      [layer removeAllAnimations];

      layer2 = [(UIImageView *)self->_handView layer];
      v9 = *(MEMORY[0x1E695EFD0] + 16);
      v16[0] = *MEMORY[0x1E695EFD0];
      v16[1] = v9;
      v16[2] = *(MEMORY[0x1E695EFD0] + 32);
      [layer2 setAffineTransform:v16];
    }

    if (animationCopy)
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
      layer3 = [(UIImageView *)self->_handView layer];
      [layer3 addAnimation:self->_animation forKey:@"rotation"];
    }
  }
}

- (BOOL)isIpadLayout
{
  layoutDelegate = [(PUCleanupUserPromptView *)self layoutDelegate];
  v3 = [layoutDelegate currentLayoutStyle] == 4;

  return v3;
}

- (BOOL)isPortrait
{
  layoutDelegate = [(PUCleanupUserPromptView *)self layoutDelegate];
  v3 = [layoutDelegate layoutOrientation] == 1;

  return v3;
}

- (void)layoutSubviews
{
  v102[18] = *MEMORY[0x1E69E9840];
  v99.receiver = self;
  v99.super_class = PUCleanupUserPromptView;
  [(PUCleanupUserPromptView *)&v99 layoutSubviews];
  layoutDelegate = [(PUCleanupUserPromptView *)self layoutDelegate];
  [layoutDelegate currentRenderViewWidth];
  v5 = v4;

  v6 = &OBJC_IVAR___PUCleanupUserPromptView__showPlatter;
  if (!self->_constraints)
  {
    bottomAnchor = [(UILabel *)self->_promptLabel bottomAnchor];
    bottomAnchor2 = [(UIView *)self->_container bottomAnchor];
    v9 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-14.0];
    promptLabelBottomPaddingConstraint = self->_promptLabelBottomPaddingConstraint;
    self->_promptLabelBottomPaddingConstraint = v9;

    bottomAnchor3 = [(UIView *)self->_handGuideView bottomAnchor];
    topAnchor = [(UILabel *)self->_promptLabel topAnchor];
    v13 = [bottomAnchor3 constraintEqualToAnchor:topAnchor constant:-8.0];
    handBottomPaddingConstraint = self->_handBottomPaddingConstraint;
    self->_handBottomPaddingConstraint = v13;

    bottomAnchor4 = [(UIView *)self->_container bottomAnchor];
    bottomAnchor5 = [(PUCleanupUserPromptView *)self bottomAnchor];
    v17 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5 constant:-13.0];
    containerBottomPaddingConstraint = self->_containerBottomPaddingConstraint;
    self->_containerBottomPaddingConstraint = v17;

    widthAnchor = [(UIView *)self->_container widthAnchor];
    v20 = [widthAnchor constraintLessThanOrEqualToConstant:{fmax(v5 + -48.0, 400.0)}];
    containerWidthConstraint = self->_containerWidthConstraint;
    self->_containerWidthConstraint = v20;

    v22 = (self->_animationCenter.x + -0.5) * 35.0;
    v23 = (self->_animationCenter.y + -0.5) * 35.0;
    array = [MEMORY[0x1E695DF70] array];
    constraints = self->_constraints;
    self->_constraints = array;

    v79 = self->_constraints;
    centerXAnchor = [(UIView *)self->_container centerXAnchor];
    centerXAnchor2 = [(PUCleanupUserPromptView *)self centerXAnchor];
    v93 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v102[0] = v93;
    leadingAnchor = [(UIView *)self->_container leadingAnchor];
    leadingAnchor2 = [(PUCleanupUserPromptView *)self leadingAnchor];
    v88 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2 constant:4.0];
    v102[1] = v88;
    trailingAnchor = [(UIView *)self->_container trailingAnchor];
    trailingAnchor2 = [(PUCleanupUserPromptView *)self trailingAnchor];
    v85 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2 constant:-4.0];
    v26 = self->_containerBottomPaddingConstraint;
    v102[2] = v85;
    v102[3] = v26;
    v102[4] = self->_containerWidthConstraint;
    centerXAnchor3 = [(UILabel *)self->_promptLabel centerXAnchor];
    centerXAnchor4 = [(UIView *)self->_container centerXAnchor];
    v82 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v102[5] = v82;
    leadingAnchor3 = [(UILabel *)self->_promptLabel leadingAnchor];
    leadingAnchor4 = [(UIView *)self->_container leadingAnchor];
    v78 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:28.0];
    v102[6] = v78;
    trailingAnchor3 = [(UILabel *)self->_promptLabel trailingAnchor];
    trailingAnchor4 = [(UIView *)self->_container trailingAnchor];
    v75 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-28.0];
    v27 = self->_promptLabelBottomPaddingConstraint;
    v102[7] = v75;
    v102[8] = v27;
    widthAnchor2 = [(UIView *)self->_handGuideView widthAnchor];
    v73 = [widthAnchor2 constraintEqualToConstant:35.0];
    v102[9] = v73;
    heightAnchor = [(UIView *)self->_handGuideView heightAnchor];
    v71 = [heightAnchor constraintEqualToConstant:35.0];
    v102[10] = v71;
    centerXAnchor5 = [(UIView *)self->_handGuideView centerXAnchor];
    centerXAnchor6 = [(UIView *)self->_container centerXAnchor];
    v68 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6 constant:0.0];
    v28 = self->_handBottomPaddingConstraint;
    v102[11] = v68;
    v102[12] = v28;
    topAnchor2 = [(UIView *)self->_handGuideView topAnchor];
    topAnchor3 = [(UIView *)self->_container topAnchor];
    v65 = [topAnchor2 constraintEqualToAnchor:topAnchor3 constant:8.0];
    v102[13] = v65;
    widthAnchor3 = [(UIImageView *)self->_handView widthAnchor];
    v63 = [widthAnchor3 constraintEqualToConstant:35.0];
    v102[14] = v63;
    heightAnchor2 = [(UIImageView *)self->_handView heightAnchor];
    v30 = [heightAnchor2 constraintEqualToConstant:35.0];
    v102[15] = v30;
    centerXAnchor7 = [(UIImageView *)self->_handView centerXAnchor];
    centerXAnchor8 = [(UIView *)self->_handGuideView centerXAnchor];
    v33 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8 constant:v22];
    v102[16] = v33;
    centerYAnchor = [(UIImageView *)self->_handView centerYAnchor];
    centerYAnchor2 = [(UIView *)self->_handGuideView centerYAnchor];
    v36 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2 constant:v23];
    v102[17] = v36;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v102 count:18];
    [(NSMutableArray *)v79 addObjectsFromArray:v37];

    v6 = &OBJC_IVAR___PUCleanupUserPromptView__showPlatter;
    visualEffectView = self->_visualEffectView;
    if (visualEffectView)
    {
      v90 = self->_constraints;
      leadingAnchor5 = [(UIVisualEffectView *)visualEffectView leadingAnchor];
      leadingAnchor6 = [(UIView *)self->_container leadingAnchor];
      v94 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
      v101[0] = v94;
      trailingAnchor5 = [(UIVisualEffectView *)self->_visualEffectView trailingAnchor];
      trailingAnchor6 = [(UIView *)self->_container trailingAnchor];
      v40 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
      v101[1] = v40;
      topAnchor4 = [(UIVisualEffectView *)self->_visualEffectView topAnchor];
      topAnchor5 = [(UIView *)self->_container topAnchor];
      v43 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
      v101[2] = v43;
      bottomAnchor6 = [(UIVisualEffectView *)self->_visualEffectView bottomAnchor];
      bottomAnchor7 = [(UIView *)self->_container bottomAnchor];
      v46 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
      v101[3] = v46;
      v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v101 count:4];
      [(NSMutableArray *)v90 addObjectsFromArray:v47];

      v6 = &OBJC_IVAR___PUCleanupUserPromptView__showPlatter;
    }

    v48 = self->_constraints;
    topAnchor6 = [(UIView *)self->_container topAnchor];
    topAnchor7 = [(PUCleanupUserPromptView *)self topAnchor];
    v51 = [topAnchor6 constraintEqualToAnchor:topAnchor7];
    v100 = v51;
    v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v100 count:1];
    [(NSMutableArray *)v48 addObjectsFromArray:v52];

    [MEMORY[0x1E696ACD8] activateConstraints:self->_constraints];
  }

  [(UIView *)self->_handGuideView frame];
  [(UIImageView *)self->_handView setFrame:?];
  isPortrait = [(PUCleanupUserPromptView *)self isPortrait];
  v54 = !isPortrait | [(PUCleanupUserPromptView *)self isIpadLayout];
  isIpadLayout = [(PUCleanupUserPromptView *)self isIpadLayout];
  v56 = v6[3];
  [*(&self->super.super.super.isa + v56) setHidden:((isIpadLayout | v54) & 1) == 0];
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

- (void)willMoveToSuperview:(id)superview
{
  v3.receiver = self;
  v3.super_class = PUCleanupUserPromptView;
  [(PUCleanupUserPromptView *)&v3 willMoveToSuperview:superview];
}

- (PUCleanupUserPromptView)initWithType:(unint64_t)type showPlatter:(BOOL)platter
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

  v6->_type = type;
  v6->_showPlatter = platter;
  if (type <= 6)
  {
    v8 = dbl_1B3D0D190[type];
    *&v6->_animationCenter.x = qword_1B3D0D158[type];
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

    layer = [(UIView *)v7->_container layer];
    [layer setCornerRadius:20.0];
  }

  else
  {
    layer = [MEMORY[0x1E69DC730] effectWithStyle:7];
    v13 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:layer];
    visualEffectView = v7->_visualEffectView;
    v7->_visualEffectView = v13;

    layer2 = [(UIVisualEffectView *)v7->_visualEffectView layer];
    [layer2 setCornerRadius:20.0];

    layer3 = [(UIVisualEffectView *)v7->_visualEffectView layer];
    [layer3 setMasksToBounds:1];

    [(UIVisualEffectView *)v7->_visualEffectView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v7->_container addSubview:v7->_visualEffectView];
  }

  v17 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  promptLabel = v7->_promptLabel;
  v7->_promptLabel = v17;

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)v7->_promptLabel setTextColor:secondaryLabelColor];

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

    text = [(UILabel *)v7->_promptLabel text];
    v26 = [text stringByAppendingString:@"\n"];
    [(UILabel *)v7->_promptLabel setText:v26];

    text2 = [(UILabel *)v7->_promptLabel text];
    v27 = PULocalizedString(@"PHOTOEDIT_CLEANUP_IOS_PAN_INSTRUCTION");
    v28 = [text2 stringByAppendingString:v27];
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
    text2 = PULocalizedString(v21);
    [(UILabel *)v7->_promptLabel setText:text2];
LABEL_27:
  }

LABEL_28:
  font = [(UILabel *)v7->_promptLabel font];
  v30 = [font fontWithSize:14.0];
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
  secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v44[0] = secondaryLabelColor2;
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
  layer4 = [(UIImageView *)v7->_handView layer];
  [layer4 setAnchorPoint:{v7->_animationCenter.x, v7->_animationCenter.y}];

  [(UIImageView *)v7->_handView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)v7->_container addSubview:v7->_handView];

  return v7;
}

@end