@interface SUSSoftwareUpdateAnimatedIcon
- (SUSSoftwareUpdateAnimatedIcon)initWithFrame:(CGRect)a3;
- (UIImageView)innerGearView;
- (UIImageView)outerGearShadowView;
- (UIImageView)outerGearView;
- (void)createConstraints;
- (void)setAnimating:(BOOL)a3;
@end

@implementation SUSSoftwareUpdateAnimatedIcon

- (SUSSoftwareUpdateAnimatedIcon)initWithFrame:(CGRect)a3
{
  v17 = a3;
  v15 = a2;
  v16 = 0;
  v14.receiver = self;
  v14.super_class = SUSSoftwareUpdateAnimatedIcon;
  v16 = [(SUSSoftwareUpdateAnimatedIcon *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  objc_storeStrong(&v16, v16);
  if (v16)
  {
    v3 = [(SUSSoftwareUpdateAnimatedIcon *)v16 innerGearView];
    innerGearView = v16->_innerGearView;
    v16->_innerGearView = v3;
    *&v5 = MEMORY[0x277D82BD8](innerGearView).n128_u64[0];
    [(UIImageView *)v16->_innerGearView setTranslatesAutoresizingMaskIntoConstraints:0, v5];
    [(SUSSoftwareUpdateAnimatedIcon *)v16 addSubview:v16->_innerGearView];
    v6 = [(SUSSoftwareUpdateAnimatedIcon *)v16 outerGearShadowView];
    outerGearShadowView = v16->_outerGearShadowView;
    v16->_outerGearShadowView = v6;
    *&v8 = MEMORY[0x277D82BD8](outerGearShadowView).n128_u64[0];
    [(UIImageView *)v16->_outerGearShadowView setTranslatesAutoresizingMaskIntoConstraints:0, v8];
    [(SUSSoftwareUpdateAnimatedIcon *)v16 addSubview:v16->_outerGearShadowView];
    v9 = [(SUSSoftwareUpdateAnimatedIcon *)v16 outerGearView];
    outerGearView = v16->_outerGearView;
    v16->_outerGearView = v9;
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
  v5 = [(UIImageView *)self->_innerGearView centerXAnchor];
  v4 = [(SUSSoftwareUpdateAnimatedIcon *)self centerXAnchor];
  v3 = [v5 constraintEqualToAnchor:?];
  [v3 setActive:1];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  v8 = [(UIImageView *)self->_innerGearView centerYAnchor];
  v7 = [(SUSSoftwareUpdateAnimatedIcon *)self centerYAnchor];
  v6 = [v8 constraintEqualToAnchor:?];
  [v6 setActive:1];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  v11 = [(UIImageView *)self->_outerGearView centerXAnchor];
  v10 = [(SUSSoftwareUpdateAnimatedIcon *)self centerXAnchor];
  v9 = [v11 constraintEqualToAnchor:?];
  [v9 setActive:1];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  v14 = [(UIImageView *)self->_outerGearView centerYAnchor];
  v13 = [(SUSSoftwareUpdateAnimatedIcon *)self centerYAnchor];
  v12 = [v14 constraintEqualToAnchor:?];
  [v12 setActive:1];
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  v15 = [MEMORY[0x277D759A0] mainScreen];
  [v15 scale];
  v16 = 1.0 / v2;
  MEMORY[0x277D82BD8](v15);
  v19 = [(UIImageView *)self->_outerGearShadowView centerXAnchor];
  v18 = [(SUSSoftwareUpdateAnimatedIcon *)self centerXAnchor];
  v17 = [v19 constraintEqualToAnchor:?];
  [v17 setActive:1];
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  v22 = [(UIImageView *)self->_outerGearShadowView centerYAnchor];
  v21 = [(SUSSoftwareUpdateAnimatedIcon *)self centerYAnchor];
  v20 = [v22 constraintEqualToAnchor:v16 constant:?];
  [v20 setActive:1];
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
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

- (void)setAnimating:(BOOL)a3
{
  v24 = self;
  v23 = a2;
  v22 = a3;
  if (a3 != self->_animating)
  {
    v24->_animating = v22;
    if (v22)
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
      v16 = [(UIImageView *)v24->_outerGearView layer];
      [v16 addAnimation:v21 forKey:@"outerRotation"];
      *&v6 = MEMORY[0x277D82BD8](v16).n128_u64[0];
      v17 = [(UIImageView *)v24->_outerGearShadowView layer];
      [v17 addAnimation:v21 forKey:@"shadowRotation"];
      v7 = MEMORY[0x277D82BD8](v17);
      v18 = v21;
      v7.n128_u32[0] = -1060565029;
      v19 = [MEMORY[0x277CCABB0] numberWithFloat:v7.n128_f64[0]];
      [v18 setByValue:?];
      *&v8 = MEMORY[0x277D82BD8](v19).n128_u64[0];
      v20 = [(UIImageView *)v24->_innerGearView layer];
      [v20 addAnimation:v21 forKey:@"innerRotation"];
      MEMORY[0x277D82BD8](v20);
      objc_storeStrong(&v21, 0);
    }

    else
    {
      v9 = [(UIImageView *)v24->_innerGearView layer];
      [v9 removeAllAnimations];
      v10 = [(UIImageView *)v24->_outerGearShadowView layer];
      [v10 removeAllAnimations];
      v11 = [(UIImageView *)v24->_outerGearView layer];
      [v11 removeAllAnimations];
      MEMORY[0x277D82BD8](v11);
    }
  }
}

@end