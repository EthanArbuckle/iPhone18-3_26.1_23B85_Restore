@interface SUSSoftwareUpdateAnimatedIcon
- (SUSSoftwareUpdateAnimatedIcon)initWithFrame:(CGRect)frame;
- (UIImageView)innerGearView;
- (UIImageView)outerGearShadowView;
- (UIImageView)outerGearView;
- (void)createConstraints;
- (void)setAnimating:(BOOL)animating;
@end

@implementation SUSSoftwareUpdateAnimatedIcon

- (SUSSoftwareUpdateAnimatedIcon)initWithFrame:(CGRect)frame
{
  frameCopy = frame;
  v15 = a2;
  v16 = 0;
  v14.receiver = self;
  v14.super_class = SUSSoftwareUpdateAnimatedIcon;
  v16 = [(SUSSoftwareUpdateAnimatedIcon *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  objc_storeStrong(&v16, v16);
  if (v16)
  {
    innerGearView = [(SUSSoftwareUpdateAnimatedIcon *)v16 innerGearView];
    innerGearView = v16->_innerGearView;
    v16->_innerGearView = innerGearView;
    *&v5 = MEMORY[0x277D82BD8](innerGearView).n128_u64[0];
    [(UIImageView *)v16->_innerGearView setTranslatesAutoresizingMaskIntoConstraints:0, v5];
    [(SUSSoftwareUpdateAnimatedIcon *)v16 addSubview:v16->_innerGearView];
    outerGearShadowView = [(SUSSoftwareUpdateAnimatedIcon *)v16 outerGearShadowView];
    outerGearShadowView = v16->_outerGearShadowView;
    v16->_outerGearShadowView = outerGearShadowView;
    *&v8 = MEMORY[0x277D82BD8](outerGearShadowView).n128_u64[0];
    [(UIImageView *)v16->_outerGearShadowView setTranslatesAutoresizingMaskIntoConstraints:0, v8];
    [(SUSSoftwareUpdateAnimatedIcon *)v16 addSubview:v16->_outerGearShadowView];
    outerGearView = [(SUSSoftwareUpdateAnimatedIcon *)v16 outerGearView];
    outerGearView = v16->_outerGearView;
    v16->_outerGearView = outerGearView;
    *&v11 = MEMORY[0x277D82BD8](outerGearView).n128_u64[0];
    [(UIImageView *)v16->_outerGearView setTranslatesAutoresizingMaskIntoConstraints:0, v11];
    [(SUSSoftwareUpdateAnimatedIcon *)v16 addSubview:v16->_outerGearView];
    [(SUSSoftwareUpdateAnimatedIcon *)v16 createConstraints];
  }

  v13 = MEMORY[0x277D82BE0](v16);
  objc_storeStrong(&v16, 0);
  return v13;
}

- (void)createConstraints
{
  centerXAnchor = [(UIImageView *)self->_innerGearView centerXAnchor];
  centerXAnchor2 = [(SUSSoftwareUpdateAnimatedIcon *)self centerXAnchor];
  v3 = [centerXAnchor constraintEqualToAnchor:?];
  [v3 setActive:1];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](centerXAnchor2);
  centerYAnchor = [(UIImageView *)self->_innerGearView centerYAnchor];
  centerYAnchor2 = [(SUSSoftwareUpdateAnimatedIcon *)self centerYAnchor];
  v6 = [centerYAnchor constraintEqualToAnchor:?];
  [v6 setActive:1];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](centerYAnchor2);
  centerXAnchor3 = [(UIImageView *)self->_outerGearView centerXAnchor];
  centerXAnchor4 = [(SUSSoftwareUpdateAnimatedIcon *)self centerXAnchor];
  v9 = [centerXAnchor3 constraintEqualToAnchor:?];
  [v9 setActive:1];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](centerXAnchor4);
  centerYAnchor3 = [(UIImageView *)self->_outerGearView centerYAnchor];
  centerYAnchor4 = [(SUSSoftwareUpdateAnimatedIcon *)self centerYAnchor];
  v12 = [centerYAnchor3 constraintEqualToAnchor:?];
  [v12 setActive:1];
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](centerYAnchor4);
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v16 = 1.0 / v2;
  MEMORY[0x277D82BD8](mainScreen);
  centerXAnchor5 = [(UIImageView *)self->_outerGearShadowView centerXAnchor];
  centerXAnchor6 = [(SUSSoftwareUpdateAnimatedIcon *)self centerXAnchor];
  v17 = [centerXAnchor5 constraintEqualToAnchor:?];
  [v17 setActive:1];
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](centerXAnchor6);
  centerYAnchor5 = [(UIImageView *)self->_outerGearShadowView centerYAnchor];
  centerYAnchor6 = [(SUSSoftwareUpdateAnimatedIcon *)self centerYAnchor];
  v20 = [centerYAnchor5 constraintEqualToAnchor:v16 constant:?];
  [v20 setActive:1];
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](centerYAnchor6);
  MEMORY[0x277D82BD8](centerYAnchor5);
}

- (UIImageView)innerGearView
{
  v9[2] = self;
  v9[1] = a2;
  v5 = objc_alloc(MEMORY[0x277D755E8]);
  v4 = MEMORY[0x277D755B8];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v4 imageNamed:@"PreferencesIconInnerGear" inBundle:?];
  v9[0] = [v5 initWithImage:?];
  MEMORY[0x277D82BD8](v6);
  *&v2 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  [v9[0] setOpaque:{1, v2}];
  v8 = MEMORY[0x277D82BE0](v9[0]);
  objc_storeStrong(v9, 0);

  return v8;
}

- (UIImageView)outerGearShadowView
{
  v4 = objc_alloc(MEMORY[0x277D755E8]);
  v3 = MEMORY[0x277D755B8];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v3 imageNamed:@"PreferencesIconOuterGearShadow" inBundle:?];
  v7 = [v4 initWithImage:?];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);

  return v7;
}

- (UIImageView)outerGearView
{
  v4 = objc_alloc(MEMORY[0x277D755E8]);
  v3 = MEMORY[0x277D755B8];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v3 imageNamed:@"PreferencesIconOuterGear" inBundle:?];
  v7 = [v4 initWithImage:?];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);

  return v7;
}

- (void)setAnimating:(BOOL)animating
{
  selfCopy = self;
  v23 = a2;
  animatingCopy = animating;
  if (animating != self->_animating)
  {
    selfCopy->_animating = animatingCopy;
    if (animatingCopy)
    {
      v21 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.rotation"];
      v12 = v21;
      LODWORD(v3) = 1086918619;
      v13 = [MEMORY[0x277CCABB0] numberWithFloat:v3];
      [v12 setByValue:?];
      *&v4 = MEMORY[0x277D82BD8](v13).n128_u64[0];
      [v21 setFillMode:{*MEMORY[0x277CDA238], v4}];
      [v21 setRemovedOnCompletion:0];
      [v21 setDuration:10.0];
      [v21 setRepeatDuration:INFINITY];
      v14 = v21;
      v15 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C8]];
      [v14 setTimingFunction:?];
      *&v5 = MEMORY[0x277D82BD8](v15).n128_u64[0];
      layer = [(UIImageView *)selfCopy->_outerGearView layer];
      [layer addAnimation:v21 forKey:@"outerRotation"];
      *&v6 = MEMORY[0x277D82BD8](layer).n128_u64[0];
      layer2 = [(UIImageView *)selfCopy->_outerGearShadowView layer];
      [layer2 addAnimation:v21 forKey:@"shadowRotation"];
      v7 = MEMORY[0x277D82BD8](layer2);
      v18 = v21;
      v7.n128_u32[0] = -1060565029;
      v19 = [MEMORY[0x277CCABB0] numberWithFloat:v7.n128_f64[0]];
      [v18 setByValue:?];
      *&v8 = MEMORY[0x277D82BD8](v19).n128_u64[0];
      layer3 = [(UIImageView *)selfCopy->_innerGearView layer];
      [layer3 addAnimation:v21 forKey:@"innerRotation"];
      MEMORY[0x277D82BD8](layer3);
      objc_storeStrong(&v21, 0);
    }

    else
    {
      layer4 = [(UIImageView *)selfCopy->_innerGearView layer];
      [layer4 removeAllAnimations];
      layer5 = [(UIImageView *)selfCopy->_outerGearShadowView layer];
      [layer5 removeAllAnimations];
      layer6 = [(UIImageView *)selfCopy->_outerGearView layer];
      [layer6 removeAllAnimations];
      MEMORY[0x277D82BD8](layer6);
    }
  }
}

@end