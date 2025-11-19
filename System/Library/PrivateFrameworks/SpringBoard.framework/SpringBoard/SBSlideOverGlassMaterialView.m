@interface SBSlideOverGlassMaterialView
- (SBSlideOverGlassMaterialView)initWithFrame:(CGRect)a3;
- (id)_darkGlassBackgroundFilterParameters;
- (id)_lightGlassBackgroundFilterParameters;
- (void)_increaseContrastDidChange:(id)a3;
- (void)_reduceTransparencyDidChange:(id)a3;
- (void)_updateWithInterfaceStyle:(int64_t)a3;
- (void)addSDFElementView:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation SBSlideOverGlassMaterialView

- (SBSlideOverGlassMaterialView)initWithFrame:(CGRect)a3
{
  v21.receiver = self;
  v21.super_class = SBSlideOverGlassMaterialView;
  v3 = [(SBSlideOverGlassMaterialView *)&v21 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [_SBSlideOverGlassMaterialBackgroundView alloc];
    v5 = *MEMORY[0x277CBF3A0];
    v6 = *(MEMORY[0x277CBF3A0] + 8);
    v7 = *(MEMORY[0x277CBF3A0] + 16);
    v8 = *(MEMORY[0x277CBF3A0] + 24);
    v9 = [(_SBSlideOverGlassMaterialBackgroundView *)v4 initWithFrame:*MEMORY[0x277CBF3A0], v6, v7, v8];
    backgroundView = v3->_backgroundView;
    v3->_backgroundView = v9;

    v11 = [(_SBSlideOverGlassMaterialBackgroundView *)v3->_backgroundView layer];
    [v11 setScale:0.2];
    [(SBSlideOverGlassMaterialView *)v3 addSubview:v3->_backgroundView];
    v12 = [[SBSDFView alloc] initWithFrame:v5, v6, v7, v8];
    backgroundSDFView = v3->_backgroundSDFView;
    v3->_backgroundSDFView = v12;

    v14 = [(SBSDFView *)v3->_backgroundSDFView layer];
    [v14 setSmoothness:28.0];

    v15 = [(SBSDFView *)v3->_backgroundSDFView layer];
    [v15 setName:@"SDF Output"];
    [(_SBSlideOverGlassMaterialBackgroundView *)v3->_backgroundView addSubview:v3->_backgroundSDFView];
    v16 = [[SBSDFView alloc] initWithFrame:v5, v6, v7, v8];
    specularSDFView = v3->_specularSDFView;
    v3->_specularSDFView = v16;

    v18 = [(SBSDFView *)v3->_specularSDFView layer];
    [v18 setSmoothness:28.0];

    [(SBSlideOverGlassMaterialView *)v3 addSubview:v3->_specularSDFView];
    v19 = [MEMORY[0x277CCAB98] defaultCenter];
    [v19 addObserver:v3 selector:sel__reduceTransparencyDidChange_ name:*MEMORY[0x277D764C8] object:0];
    [v19 addObserver:v3 selector:sel__increaseContrastDidChange_ name:*MEMORY[0x277D76460] object:0];
  }

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SBSlideOverGlassMaterialView;
  [(SBSlideOverGlassMaterialView *)&v4 dealloc];
}

- (void)addSDFElementView:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  backgroundSDFView = self->_backgroundSDFView;
  specularSDFView = self->_specularSDFView;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20[0] = backgroundSDFView;
  v20[1] = specularSDFView;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:{2, 0}];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        v13 = objc_alloc_init(MEMORY[0x277D76180]);
        v14 = [v13 layer];
        v15 = [v4 layer];
        [v14 setSourceLayer:v15];

        [v13 setHidesSourceView:1];
        [v13 setMatchesPosition:1];
        [v13 setMatchesTransform:1];
        [v12 addSubview:v13];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v9);
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = SBSlideOverGlassMaterialView;
  [(SBSlideOverGlassMaterialView *)&v4 layoutSubviews];
  [(SBSlideOverGlassMaterialView *)self bounds];
  [(_SBSlideOverGlassMaterialBackgroundView *)self->_backgroundView setBounds:?];
  backgroundView = self->_backgroundView;
  UIRectGetCenter();
  [(_SBSlideOverGlassMaterialBackgroundView *)backgroundView setCenter:?];
}

- (void)willMoveToWindow:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(SBSlideOverGlassMaterialView *)self window];

    v7.receiver = self;
    v7.super_class = SBSlideOverGlassMaterialView;
    [(SBSlideOverGlassMaterialView *)&v7 willMoveToWindow:v4];
    if (!v5)
    {
      v6 = [(SBSlideOverGlassMaterialView *)self traitCollection];
      -[SBSlideOverGlassMaterialView _updateWithInterfaceStyle:](self, "_updateWithInterfaceStyle:", [v6 userInterfaceStyle]);
    }
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBSlideOverGlassMaterialView;
    [(SBSlideOverGlassMaterialView *)&v7 willMoveToWindow:0];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v5 = [(SBSlideOverGlassMaterialView *)self traitCollection];
  v6 = [v5 userInterfaceStyle];

  v7 = [v4 userInterfaceStyle];
  if (v6 && v6 != v7)
  {

    [(SBSlideOverGlassMaterialView *)self _updateWithInterfaceStyle:v6];
  }
}

- (void)_reduceTransparencyDidChange:(id)a3
{
  v4 = [(SBSlideOverGlassMaterialView *)self traitCollection];
  -[SBSlideOverGlassMaterialView _updateWithInterfaceStyle:](self, "_updateWithInterfaceStyle:", [v4 userInterfaceStyle]);
}

- (void)_increaseContrastDidChange:(id)a3
{
  v4 = [(SBSlideOverGlassMaterialView *)self traitCollection];
  -[SBSlideOverGlassMaterialView _updateWithInterfaceStyle:](self, "_updateWithInterfaceStyle:", [v4 userInterfaceStyle]);
}

- (void)_updateWithInterfaceStyle:(int64_t)a3
{
  v29[1] = *MEMORY[0x277D85DE8];
  v19 = [(_SBSlideOverGlassMaterialBackgroundView *)self->_backgroundView layer];
  v4 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA330]];
  v5 = [(SBSlideOverGlassMaterialView *)self _lightGlassBackgroundFilterParameters];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __58__SBSlideOverGlassMaterialView__updateWithInterfaceStyle___block_invoke;
  v26[3] = &unk_2783AD138;
  v27 = v4;
  v6 = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:v26];
  v29[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
  [v19 setFilters:v7];

  v8 = [(SBSDFView *)self->_backgroundSDFView layer];
  v9 = objc_alloc_init(MEMORY[0x277CD9F70]);
  [v8 setEffect:v9];
  v10 = [(SBSDFView *)self->_specularSDFView layer];
  v11 = objc_alloc_init(MEMORY[0x277CD9F60]);
  [v11 setKeyHeight:1.0];
  [v11 setCurvature:0.7];
  [v11 setKeyAngle:0.0];
  [v11 setKeySpread:2.7925268];
  [v11 setKeyAmount:0.5];
  v12 = [MEMORY[0x277D75348] whiteColor];
  v13 = [v12 colorWithAlphaComponent:1.0];
  [v11 setKeyColor:{objc_msgSend(v13, "CGColor")}];

  [v11 setFillHeight:1.0];
  [v11 setFillAngle:3.14159265];
  [v11 setFillSpread:2.7925268];
  [v11 setFillAmount:0.5];
  v14 = [MEMORY[0x277D75348] whiteColor];
  v15 = [v14 colorWithAlphaComponent:1.0];
  [v11 setKeyColor:{objc_msgSend(v15, "CGColor")}];

  [v11 setGlobal:0];
  [v10 setEffect:v11];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  [(SBSlideOverGlassMaterialView *)self _lightKeyFillVibrantColorMatrix];
  v16 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA640]];
  v20[2] = v23;
  v20[3] = v24;
  v20[4] = v25;
  v20[0] = v21;
  v20[1] = v22;
  v17 = [MEMORY[0x277CCAE60] valueWithCAColorMatrix:v20];
  [v16 setValue:v17 forKey:@"inputColorMatrix"];

  [v16 setValue:&unk_28336F380 forKey:@"inputClamp"];
  v28 = v16;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  [v10 setFilters:v18];
}

- (id)_lightGlassBackgroundFilterParameters
{
  v55[36] = *MEMORY[0x277D85DE8];
  IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
  v3 = UIAccessibilityDarkerSystemColorsEnabled();
  v4 = 0.8;
  if (IsReduceTransparencyEnabled && v3)
  {
    v5 = 0.25;
    v6 = 0.4;
  }

  else
  {
    v7 = 0.9;
    if (IsReduceTransparencyEnabled)
    {
      v5 = 0.75;
    }

    else
    {
      v5 = 0.9;
    }

    if (!IsReduceTransparencyEnabled)
    {
      v7 = 1.05;
    }

    if (IsReduceTransparencyEnabled || !v3)
    {
      v6 = 0.15;
      v4 = v7;
    }

    else
    {
      v5 = 0.4;
      v6 = 0.4;
    }
  }

  v8 = *MEMORY[0x277CDA530];
  v55[0] = @"SDF Output";
  v9 = *MEMORY[0x277CDA4A8];
  v54[0] = v8;
  v54[1] = v9;
  v10 = -60.0;
  if (IsReduceTransparencyEnabled)
  {
    v10 = 0.0;
    v11 = 0.0;
  }

  else
  {
    v11 = 20.0;
  }

  if (IsReduceTransparencyEnabled)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = 0.2;
  }

  if (IsReduceTransparencyEnabled)
  {
    v13 = 200.0;
  }

  else
  {
    v13 = 3.0;
  }

  if (IsReduceTransparencyEnabled)
  {
    v14 = 1.0;
  }

  else
  {
    v14 = 0.5;
  }

  if (IsReduceTransparencyEnabled)
  {
    v15 = 0.3;
  }

  else
  {
    v15 = 0.1;
  }

  v53 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
  v55[1] = v53;
  v54[2] = *MEMORY[0x277CDA4B0];
  v52 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
  v16 = *MEMORY[0x277CDA4D0];
  v55[2] = v52;
  v55[3] = &unk_283371198;
  v17 = *MEMORY[0x277CDA4D8];
  v54[3] = v16;
  v54[4] = v17;
  v18 = *MEMORY[0x277CDA508];
  v55[4] = &unk_283371198;
  v55[5] = &unk_28336F390;
  v19 = *MEMORY[0x277CDA510];
  v54[5] = v18;
  v54[6] = v19;
  v55[6] = &unk_28336F3A0;
  v54[7] = *MEMORY[0x277CDA518];
  v51 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
  v55[7] = v51;
  v54[8] = *MEMORY[0x277CDA428];
  v50 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
  v20 = *MEMORY[0x277CDA400];
  v55[8] = v50;
  v55[9] = &unk_28336F3B0;
  v21 = *MEMORY[0x277CDA408];
  v54[9] = v20;
  v54[10] = v21;
  v22 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
  v55[10] = v22;
  v54[11] = *MEMORY[0x277CDA410];
  v23 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
  v24 = *MEMORY[0x277CDA418];
  v55[11] = v23;
  v55[12] = &unk_28336F3B0;
  v25 = *MEMORY[0x277CDA420];
  v54[12] = v24;
  v54[13] = v25;
  v26 = *MEMORY[0x277CDA3D8];
  v55[13] = &unk_28336F3B0;
  v55[14] = &unk_28336F3C0;
  v27 = *MEMORY[0x277CDA3E0];
  v54[14] = v26;
  v54[15] = v27;
  v28 = *MEMORY[0x277CDA3E8];
  v55[15] = &unk_28336F390;
  v55[16] = &unk_28336F3D0;
  v29 = *MEMORY[0x277CDA3F0];
  v54[16] = v28;
  v54[17] = v29;
  v30 = *MEMORY[0x277CDA3F8];
  v55[17] = &unk_28336F3D0;
  v55[18] = &unk_28336F3D0;
  v31 = *MEMORY[0x277CDA490];
  v54[18] = v30;
  v54[19] = v31;
  v55[19] = &unk_28336F3B0;
  v54[20] = *MEMORY[0x277CDA488];
  v32 = [MEMORY[0x277CCABB0] numberWithDouble:v5];
  v55[20] = v32;
  v54[21] = *MEMORY[0x277CDA470];
  v33 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
  v55[21] = v33;
  v54[22] = *MEMORY[0x277CDA480];
  v34 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
  v55[22] = v34;
  v54[23] = *MEMORY[0x277CDA478];
  v35 = [MEMORY[0x277D75348] whiteColor];
  v36 = [v35 colorWithAlphaComponent:v15];
  v37 = [v36 CGColor];
  v38 = *MEMORY[0x277CDA370];
  v55[23] = v37;
  v55[24] = &unk_28336F3D0;
  v39 = *MEMORY[0x277CDA3B8];
  v54[24] = v38;
  v54[25] = v39;
  v40 = *MEMORY[0x277CDA378];
  v55[25] = &unk_28336F3D0;
  v55[26] = &unk_28336F3D0;
  v41 = *MEMORY[0x277CDA3A8];
  v54[26] = v40;
  v54[27] = v41;
  v42 = *MEMORY[0x277CDA3B0];
  v55[27] = &unk_28336F3B0;
  v55[28] = &unk_28336F3D0;
  v43 = *MEMORY[0x277CDA3C0];
  v54[28] = v42;
  v54[29] = v43;
  v55[29] = &unk_28336F3D0;
  v55[30] = MEMORY[0x277CBEC38];
  v44 = *MEMORY[0x277CDA398];
  v54[30] = *MEMORY[0x277CDA3A0];
  v54[31] = v44;
  v55[31] = &unk_28336F3B0;
  v55[32] = &unk_28336F3E0;
  v45 = *MEMORY[0x277CDA390];
  v54[32] = *MEMORY[0x277CDA380];
  v54[33] = v45;
  v55[33] = &unk_28336F380;
  v54[34] = *MEMORY[0x277CDA388];
  v46 = [MEMORY[0x277D75348] clearColor];
  v47 = [v46 CGColor];
  v54[35] = *MEMORY[0x277CDA528];
  v55[34] = v47;
  v55[35] = &unk_28336F3D0;
  v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:36];

  return v48;
}

- (id)_darkGlassBackgroundFilterParameters
{
  v30[36] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CDA4A8];
  v29[0] = *MEMORY[0x277CDA530];
  v29[1] = v2;
  v30[0] = @"SDF Output";
  v30[1] = &unk_28336F3F0;
  v3 = *MEMORY[0x277CDA4D0];
  v29[2] = *MEMORY[0x277CDA4B0];
  v29[3] = v3;
  v30[2] = &unk_28336F400;
  v30[3] = &unk_283371198;
  v4 = *MEMORY[0x277CDA508];
  v29[4] = *MEMORY[0x277CDA4D8];
  v29[5] = v4;
  v30[4] = &unk_283371198;
  v30[5] = &unk_28336F390;
  v5 = *MEMORY[0x277CDA518];
  v29[6] = *MEMORY[0x277CDA510];
  v29[7] = v5;
  v30[6] = &unk_28336F3A0;
  v30[7] = &unk_28336F410;
  v6 = *MEMORY[0x277CDA400];
  v29[8] = *MEMORY[0x277CDA428];
  v29[9] = v6;
  v30[8] = &unk_28336F420;
  v30[9] = &unk_28336F3B0;
  v7 = *MEMORY[0x277CDA410];
  v29[10] = *MEMORY[0x277CDA408];
  v29[11] = v7;
  v30[10] = &unk_28336F430;
  v30[11] = &unk_28336F430;
  v8 = *MEMORY[0x277CDA420];
  v29[12] = *MEMORY[0x277CDA418];
  v29[13] = v8;
  v30[12] = &unk_28336F3B0;
  v30[13] = &unk_28336F3B0;
  v9 = *MEMORY[0x277CDA3E0];
  v29[14] = *MEMORY[0x277CDA3D8];
  v29[15] = v9;
  v30[14] = &unk_28336F3C0;
  v30[15] = &unk_28336F390;
  v10 = *MEMORY[0x277CDA3F0];
  v29[16] = *MEMORY[0x277CDA3E8];
  v29[17] = v10;
  v30[16] = &unk_28336F3D0;
  v30[17] = &unk_28336F3D0;
  v11 = *MEMORY[0x277CDA490];
  v29[18] = *MEMORY[0x277CDA3F8];
  v29[19] = v11;
  v30[18] = &unk_28336F3D0;
  v30[19] = &unk_28336F3B0;
  v12 = *MEMORY[0x277CDA470];
  v29[20] = *MEMORY[0x277CDA488];
  v29[21] = v12;
  v30[20] = &unk_28336F440;
  v30[21] = &unk_28336F450;
  v30[22] = &unk_28336F460;
  v13 = *MEMORY[0x277CDA478];
  v29[22] = *MEMORY[0x277CDA480];
  v29[23] = v13;
  v14 = [MEMORY[0x277D75348] blackColor];
  v15 = [v14 colorWithAlphaComponent:0.1];
  v16 = [v15 CGColor];
  v17 = *MEMORY[0x277CDA370];
  v30[23] = v16;
  v30[24] = &unk_28336F3D0;
  v18 = *MEMORY[0x277CDA3B8];
  v29[24] = v17;
  v29[25] = v18;
  v19 = *MEMORY[0x277CDA378];
  v30[25] = &unk_28336F3D0;
  v30[26] = &unk_28336F3D0;
  v20 = *MEMORY[0x277CDA3A8];
  v29[26] = v19;
  v29[27] = v20;
  v21 = *MEMORY[0x277CDA3B0];
  v30[27] = &unk_28336F3B0;
  v30[28] = &unk_28336F3D0;
  v22 = *MEMORY[0x277CDA3C0];
  v29[28] = v21;
  v29[29] = v22;
  v30[29] = &unk_28336F3D0;
  v30[30] = MEMORY[0x277CBEC38];
  v23 = *MEMORY[0x277CDA398];
  v29[30] = *MEMORY[0x277CDA3A0];
  v29[31] = v23;
  v30[31] = &unk_28336F3B0;
  v30[32] = &unk_28336F3E0;
  v24 = *MEMORY[0x277CDA390];
  v29[32] = *MEMORY[0x277CDA380];
  v29[33] = v24;
  v30[33] = &unk_28336F380;
  v29[34] = *MEMORY[0x277CDA388];
  v25 = [MEMORY[0x277D75348] clearColor];
  v26 = [v25 CGColor];
  v29[35] = *MEMORY[0x277CDA528];
  v30[34] = v26;
  v30[35] = &unk_28336F3D0;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:36];

  return v27;
}

@end