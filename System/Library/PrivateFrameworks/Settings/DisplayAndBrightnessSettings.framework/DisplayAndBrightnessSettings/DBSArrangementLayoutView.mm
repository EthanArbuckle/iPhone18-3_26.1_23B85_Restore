@interface DBSArrangementLayoutView
- (CGSize)externalDisplaySize;
- (CGSize)nativeDisplaySize;
- (DBSArrangementLayoutView)initWithDataSource:(id)source;
- (DBSArrangementLayoutViewController)dataSource;
- (id)_placeHolderMainDisplayImageWithWidth:(double)width orientation:(int64_t)orientation;
- (unint64_t)displayLocationForPointInView:(CGPoint)view;
- (void)arrangeDisplayIcons;
- (void)placeCurrentDisplayAtLocation:(unint64_t)location;
- (void)updateForOrientation:(int64_t)orientation;
- (void)updateNativeDisplayImagesWithOrientation:(int64_t)orientation;
@end

@implementation DBSArrangementLayoutView

- (DBSArrangementLayoutView)initWithDataSource:(id)source
{
  sourceCopy = source;
  v9.receiver = self;
  v9.super_class = DBSArrangementLayoutView;
  v5 = [(DBSArrangementLayoutView *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dataSource, sourceCopy);
    v6->_margin = 20.0;
    tableCellGroupedBackgroundColor = [MEMORY[0x277D75348] tableCellGroupedBackgroundColor];
    [(DBSArrangementLayoutView *)v6 setBackgroundColor:tableCellGroupedBackgroundColor];

    [(DBSArrangementLayoutView *)v6 arrangeDisplayIcons];
  }

  return v6;
}

- (void)placeCurrentDisplayAtLocation:(unint64_t)location
{
  v22[4] = *MEMORY[0x277D85DE8];
  northDisplay = [(DBSArrangementLayoutView *)self northDisplay];
  v22[0] = northDisplay;
  eastDisplay = [(DBSArrangementLayoutView *)self eastDisplay];
  v22[1] = eastDisplay;
  southDisplay = [(DBSArrangementLayoutView *)self southDisplay];
  v22[2] = southDisplay;
  westDisplay = [(DBSArrangementLayoutView *)self westDisplay];
  v22[3] = westDisplay;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];

  v10 = 0;
  if (location > 1)
  {
    if (location == 2)
    {
      southDisplay2 = [(DBSArrangementLayoutView *)self southDisplay];
    }

    else
    {
      if (location != 3)
      {
        goto LABEL_11;
      }

      southDisplay2 = [(DBSArrangementLayoutView *)self westDisplay];
    }
  }

  else if (location)
  {
    if (location != 1)
    {
      goto LABEL_11;
    }

    southDisplay2 = [(DBSArrangementLayoutView *)self eastDisplay];
  }

  else
  {
    southDisplay2 = [(DBSArrangementLayoutView *)self northDisplay];
  }

  v10 = southDisplay2;
LABEL_11:
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v17 + 1) + 8 * v16) setIsCurrentDisplayLocation:{*(*(&v17 + 1) + 8 * v16) == v10, v17}];
        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v14);
  }
}

- (void)arrangeDisplayIcons
{
  dataSource = [(DBSArrangementLayoutView *)self dataSource];
  [dataSource externalDisplaySize];
  v5 = v4;
  v7 = v6;

  v83 = 0;
  v84 = &v83;
  v85 = 0x3032000000;
  v86 = __Block_byref_object_copy__0;
  v87 = __Block_byref_object_dispose__0;
  v88 = 0;
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  connectedScenes = [mEMORY[0x277D75128] connectedScenes];
  v82[0] = MEMORY[0x277D85DD0];
  v82[1] = 3221225472;
  v82[2] = __47__DBSArrangementLayoutView_arrangeDisplayIcons__block_invoke;
  v82[3] = &unk_278459708;
  v82[4] = &v83;
  [connectedScenes enumerateObjectsUsingBlock:v82];

  dataSource2 = [(DBSArrangementLayoutView *)self dataSource];
  [dataSource2 nativeDisplaySize];
  v12 = v11;
  v14 = v13;

  v15 = [DBSExternalDisplayIconView alloc];
  dataSource3 = [(DBSArrangementLayoutView *)self dataSource];
  externalDisplayName = [dataSource3 externalDisplayName];
  v18 = [(DBSExternalDisplayIconView *)v15 initWithFrame:externalDisplayName displayName:0.0, 0.0, v5, v7];

  dataSource4 = [(DBSArrangementLayoutView *)self dataSource];
  nativeDisplayName = [dataSource4 nativeDisplayName];

  v21 = [[DBSNativeDisplayIconView alloc] initWithFrame:nativeDisplayName displayName:0.0, 0.0, v12, v14];
  v22 = [[DBSNativeDisplayIconView alloc] initWithFrame:nativeDisplayName displayName:0.0, 0.0, v12, v14];
  v81 = nativeDisplayName;
  v23 = [[DBSNativeDisplayIconView alloc] initWithFrame:nativeDisplayName displayName:0.0, 0.0, v12, v14];
  v24 = [[DBSNativeDisplayIconView alloc] initWithFrame:nativeDisplayName displayName:0.0, 0.0, v12, v14];
  [(DBSExternalDisplayIconView *)v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(DBSArrangementLayoutView *)self addSubview:v18];
  [(DBSArrangementLayoutView *)self addSubview:v21];
  [(DBSArrangementLayoutView *)self addSubview:v22];
  [(DBSArrangementLayoutView *)self addSubview:v23];
  [(DBSArrangementLayoutView *)self addSubview:v24];
  v25 = MEMORY[0x277CCABB0];
  [(DBSArrangementLayoutView *)self margin];
  v26 = [v25 numberWithDouble:?];
  heightAnchor = [(DBSExternalDisplayIconView *)v18 heightAnchor];
  widthAnchor = [(DBSExternalDisplayIconView *)v18 widthAnchor];
  v29 = [heightAnchor constraintEqualToAnchor:widthAnchor multiplier:v7 / v5];
  [v29 setActive:1];

  heightAnchor2 = [(DBSNativeDisplayIconView *)v22 heightAnchor];
  heightAnchor3 = [(DBSNativeDisplayIconView *)v21 heightAnchor];
  v32 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3];
  [v32 setActive:1];

  heightAnchor4 = [(DBSNativeDisplayIconView *)v23 heightAnchor];
  heightAnchor5 = [(DBSNativeDisplayIconView *)v21 heightAnchor];
  v35 = [heightAnchor4 constraintEqualToAnchor:heightAnchor5];
  [v35 setActive:1];

  heightAnchor6 = [(DBSNativeDisplayIconView *)v24 heightAnchor];
  heightAnchor7 = [(DBSNativeDisplayIconView *)v21 heightAnchor];
  v38 = [heightAnchor6 constraintEqualToAnchor:heightAnchor7];
  [v38 setActive:1];

  widthAnchor2 = [(DBSNativeDisplayIconView *)v22 widthAnchor];
  widthAnchor3 = [(DBSNativeDisplayIconView *)v21 widthAnchor];
  v41 = [widthAnchor2 constraintEqualToAnchor:widthAnchor3];
  [v41 setActive:1];

  widthAnchor4 = [(DBSNativeDisplayIconView *)v23 widthAnchor];
  widthAnchor5 = [(DBSNativeDisplayIconView *)v21 widthAnchor];
  v44 = [widthAnchor4 constraintEqualToAnchor:widthAnchor5];
  [v44 setActive:1];

  widthAnchor6 = [(DBSNativeDisplayIconView *)v24 widthAnchor];
  widthAnchor7 = [(DBSNativeDisplayIconView *)v21 widthAnchor];
  v47 = [widthAnchor6 constraintEqualToAnchor:widthAnchor7];
  [v47 setActive:1];

  centerYAnchor = [(DBSExternalDisplayIconView *)v18 centerYAnchor];
  centerYAnchor2 = [(DBSArrangementLayoutView *)self centerYAnchor];
  v50 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v50 setActive:1];

  centerYAnchor3 = [(DBSExternalDisplayIconView *)v18 centerYAnchor];
  centerYAnchor4 = [(DBSNativeDisplayIconView *)v21 centerYAnchor];
  v53 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  [v53 setActive:1];

  centerYAnchor5 = [(DBSExternalDisplayIconView *)v18 centerYAnchor];
  centerYAnchor6 = [(DBSNativeDisplayIconView *)v22 centerYAnchor];
  v56 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
  [v56 setActive:1];

  centerXAnchor = [(DBSExternalDisplayIconView *)v18 centerXAnchor];
  centerXAnchor2 = [(DBSArrangementLayoutView *)self centerXAnchor];
  v59 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v59 setActive:1];

  centerXAnchor3 = [(DBSExternalDisplayIconView *)v18 centerXAnchor];
  centerXAnchor4 = [(DBSNativeDisplayIconView *)v23 centerXAnchor];
  v62 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  [v62 setActive:1];

  centerXAnchor5 = [(DBSExternalDisplayIconView *)v18 centerXAnchor];
  centerXAnchor6 = [(DBSNativeDisplayIconView *)v24 centerXAnchor];
  v65 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
  [v65 setActive:1];

  v66 = MEMORY[0x277CCAAD0];
  firstValue = v26;
  v67 = _NSDictionaryOfVariableBindings(&cfstr_Margin.isa, v26, 0);
  v68 = _NSDictionaryOfVariableBindings(&cfstr_Nativeiconwest.isa, v21, v18, v22, 0);
  v80 = [v66 constraintsWithVisualFormat:@"H:|-margin@900-[nativeIconWest][externalIcon][nativeIconEast]-margin@900-|" options:0 metrics:v67 views:v68];

  [MEMORY[0x277CCAAD0] activateConstraints:v80];
  leadingAnchor = [(DBSNativeDisplayIconView *)v21 leadingAnchor];
  leadingAnchor2 = [(DBSArrangementLayoutView *)self leadingAnchor];
  [(DBSArrangementLayoutView *)self margin];
  v71 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2 constant:?];
  [v71 setActive:1];

  v72 = MEMORY[0x277CCAAD0];
  v73 = _NSDictionaryOfVariableBindings(&cfstr_Margin.isa, firstValue, 0);
  v74 = _NSDictionaryOfVariableBindings(&cfstr_Nativeiconnort.isa, v23, v18, v24, 0);
  v75 = [v72 constraintsWithVisualFormat:@"V:|-margin@900-[nativeIconNorth][externalIcon][nativeIconSouth]-margin@900-|" options:0 metrics:v73 views:v74];

  [MEMORY[0x277CCAAD0] activateConstraints:v75];
  topAnchor = [(DBSNativeDisplayIconView *)v23 topAnchor];
  topAnchor2 = [(DBSArrangementLayoutView *)self topAnchor];
  [(DBSArrangementLayoutView *)self margin];
  v78 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:?];
  [v78 setActive:1];

  [(DBSArrangementLayoutView *)self setExternalDisplay:v18];
  [(DBSArrangementLayoutView *)self setNorthDisplay:v23];
  [(DBSArrangementLayoutView *)self setEastDisplay:v22];
  [(DBSArrangementLayoutView *)self setWestDisplay:v21];
  [(DBSArrangementLayoutView *)self setSouthDisplay:v24];
  -[DBSArrangementLayoutView updateForOrientation:](self, "updateForOrientation:", [v84[5] interfaceOrientation]);

  _Block_object_dispose(&v83, 8);
}

void __47__DBSArrangementLayoutView_arrangeDisplayIcons__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![v8 activationState])
  {
    v6 = [v8 _sceneIdentifier];
    v7 = [v6 isEqualToString:@"sceneID:com.apple.Preferences-default"];

    if (v7)
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
      *a3 = 1;
    }
  }
}

- (void)updateForOrientation:(int64_t)orientation
{
  dataSource = [(DBSArrangementLayoutView *)self dataSource];
  [dataSource externalDisplaySize];
  v7 = v6;
  v9 = v8;

  dataSource2 = [(DBSArrangementLayoutView *)self dataSource];
  [dataSource2 nativeDisplaySize];
  v12 = v11;
  v14 = v13;

  [(DBSArrangementLayoutView *)self setExternalDisplaySize:v7, v9];
  [(DBSArrangementLayoutView *)self setNativeDisplaySize:v12, v14];
  widthRatioConstraint = [(DBSArrangementLayoutView *)self widthRatioConstraint];
  [widthRatioConstraint setActive:0];

  v16 = MEMORY[0x277CCAAD0];
  externalDisplay = [(DBSArrangementLayoutView *)self externalDisplay];
  westDisplay = [(DBSArrangementLayoutView *)self westDisplay];
  v19 = [v16 constraintWithItem:externalDisplay attribute:7 relatedBy:0 toItem:westDisplay attribute:7 multiplier:v7 / v12 constant:0.0];
  [(DBSArrangementLayoutView *)self setWidthRatioConstraint:v19];

  widthRatioConstraint2 = [(DBSArrangementLayoutView *)self widthRatioConstraint];
  [widthRatioConstraint2 setActive:1];

  nativeIconAspectRatioConstraint = [(DBSArrangementLayoutView *)self nativeIconAspectRatioConstraint];
  [nativeIconAspectRatioConstraint setActive:0];

  westDisplay2 = [(DBSArrangementLayoutView *)self westDisplay];
  heightAnchor = [westDisplay2 heightAnchor];
  westDisplay3 = [(DBSArrangementLayoutView *)self westDisplay];
  widthAnchor = [westDisplay3 widthAnchor];
  v26 = [heightAnchor constraintEqualToAnchor:widthAnchor multiplier:v14 / v12];
  [(DBSArrangementLayoutView *)self setNativeIconAspectRatioConstraint:v26];

  nativeIconAspectRatioConstraint2 = [(DBSArrangementLayoutView *)self nativeIconAspectRatioConstraint];
  [nativeIconAspectRatioConstraint2 setActive:1];

  [(DBSArrangementLayoutView *)self updateNativeDisplayImagesWithOrientation:orientation];
}

- (id)_placeHolderMainDisplayImageWithWidth:(double)width orientation:(int64_t)orientation
{
  if ((orientation - 3) >= 2)
  {
    v5 = @"ipad";
  }

  else
  {
    v5 = @"ipad.landscape";
  }

  v6 = [MEMORY[0x277D755B8] systemImageNamed:v5 compatibleWithTraitCollection:0];
  v7 = [MEMORY[0x277D755D0] configurationWithPointSize:2 weight:width];
  v8 = [v6 imageWithSymbolConfiguration:v7];

  return v8;
}

- (void)updateNativeDisplayImagesWithOrientation:(int64_t)orientation
{
  [(DBSArrangementLayoutView *)self nativeDisplaySize];
  v6 = v5;
  v8 = v7;
  [(DBSArrangementLayoutView *)self externalDisplaySize];
  v10 = v9;
  v12 = v11;
  [(DBSArrangementLayoutView *)self frame];
  if (v13 == 0.0)
  {
    v15 = 364.0;
  }

  else
  {
    v15 = v14;
  }

  if (v13 == 0.0)
  {
    v16 = 560.0;
  }

  else
  {
    v16 = v13;
  }

  [(DBSArrangementLayoutView *)self margin];
  v18 = fmax(v16 + v17 * -2.0, 0.0) / (v10 + v6 * 2.0);
  [(DBSArrangementLayoutView *)self margin];
  v20 = fmax(v15 + v19 * -2.0, 0.0) / (v12 + v8 * 2.0);
  if (v18 >= v20)
  {
    v18 = v20;
  }

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __69__DBSArrangementLayoutView_updateNativeDisplayImagesWithOrientation___block_invoke;
  v32[3] = &unk_278459850;
  v32[4] = self;
  v21 = MEMORY[0x223D9E740](v32);
  if (v18 > 0.0)
  {
    northDisplay = [(DBSArrangementLayoutView *)self northDisplay];
    imageView = [northDisplay imageView];
    image = [imageView image];

    if (!image)
    {
      v25 = [(DBSArrangementLayoutView *)self _placeHolderMainDisplayImageWithWidth:orientation orientation:v6 * v18];
      (v21)[2](v21, v25);
    }

    v26 = dispatch_get_global_queue(0, 0);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __69__DBSArrangementLayoutView_updateNativeDisplayImagesWithOrientation___block_invoke_2;
    v27[3] = &unk_2784598A0;
    v27[4] = self;
    v29 = v18;
    v30 = v6;
    v31 = v8;
    v28 = v21;
    dispatch_async(v26, v27);
  }
}

void __69__DBSArrangementLayoutView_updateNativeDisplayImagesWithOrientation___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 northDisplay];
  v6 = [v5 imageView];
  [v6 setImage:v4];

  v7 = [*(a1 + 32) eastDisplay];
  v8 = [v7 imageView];
  [v8 setImage:v4];

  v9 = [*(a1 + 32) southDisplay];
  v10 = [v9 imageView];
  [v10 setImage:v4];

  v12 = [*(a1 + 32) westDisplay];
  v11 = [v12 imageView];
  [v11 setImage:v4];
}

void __69__DBSArrangementLayoutView_updateNativeDisplayImagesWithOrientation___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) dataSource];
  v3 = [v2 nativeDisplayImageWithWidth:*(a1 + 48) * *(a1 + 56)];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__DBSArrangementLayoutView_updateNativeDisplayImagesWithOrientation___block_invoke_3;
  block[3] = &unk_278459878;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v10 = v4;
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __69__DBSArrangementLayoutView_updateNativeDisplayImagesWithOrientation___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = [*(a1 + 40) northDisplay];
  [v2 setNeedsLayout];

  v3 = [*(a1 + 40) eastDisplay];
  [v3 setNeedsLayout];

  v4 = [*(a1 + 40) southDisplay];
  [v4 setNeedsLayout];

  v5 = [*(a1 + 40) westDisplay];
  [v5 setNeedsLayout];
}

- (unint64_t)displayLocationForPointInView:(CGPoint)view
{
  y = view.y;
  x = view.x;
  v52[4] = *MEMORY[0x277D85DE8];
  northDisplay = [(DBSArrangementLayoutView *)self northDisplay];
  [northDisplay frame];
  MidX = CGRectGetMidX(v53);
  northDisplay2 = [(DBSArrangementLayoutView *)self northDisplay];
  [northDisplay2 frame];
  MidY = CGRectGetMidY(v54);

  eastDisplay = [(DBSArrangementLayoutView *)self eastDisplay];
  [eastDisplay frame];
  v45 = CGRectGetMidX(v55);
  eastDisplay2 = [(DBSArrangementLayoutView *)self eastDisplay];
  [eastDisplay2 frame];
  v11 = CGRectGetMidY(v56);

  southDisplay = [(DBSArrangementLayoutView *)self southDisplay];
  [southDisplay frame];
  v13 = CGRectGetMidX(v57);
  southDisplay2 = [(DBSArrangementLayoutView *)self southDisplay];
  [southDisplay2 frame];
  v15 = CGRectGetMidY(v58);

  westDisplay = [(DBSArrangementLayoutView *)self westDisplay];
  [westDisplay frame];
  v17 = CGRectGetMidX(v59);
  westDisplay2 = [(DBSArrangementLayoutView *)self westDisplay];
  [westDisplay2 frame];
  v19 = CGRectGetMidY(v60);

  [(DBSArrangementLayoutView *)self _pointDistanceFirst:x second:y, MidX, MidY];
  v21 = v20;
  [(DBSArrangementLayoutView *)self _pointDistanceFirst:x second:y, v45, v11];
  v23 = v22;
  [(DBSArrangementLayoutView *)self _pointDistanceFirst:x second:y, v13, v15];
  v25 = v24;
  [(DBSArrangementLayoutView *)self _pointDistanceFirst:x second:y, v17, v19];
  v27 = v26;
  v28 = [MEMORY[0x277CCABB0] numberWithDouble:v21];
  v52[0] = v28;
  v29 = [MEMORY[0x277CCABB0] numberWithDouble:v23];
  v52[1] = v29;
  v30 = [MEMORY[0x277CCABB0] numberWithDouble:v25];
  v52[2] = v30;
  v31 = [MEMORY[0x277CCABB0] numberWithDouble:v27];
  v52[3] = v31;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:4];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v33 = v32;
  v34 = [v33 countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = 0;
    v37 = 0;
    v38 = *v48;
    v39 = 1.79769313e308;
    do
    {
      v40 = 0;
      v41 = v37;
      do
      {
        if (*v48 != v38)
        {
          objc_enumerationMutation(v33);
        }

        [*(*(&v47 + 1) + 8 * v40) floatValue];
        v43 = v42;
        if (v39 > v43)
        {
          v36 = v41;
          v39 = v43;
        }

        ++v41;
        ++v40;
      }

      while (v35 != v40);
      v37 += v35;
      v35 = [v33 countByEnumeratingWithState:&v47 objects:v51 count:16];
    }

    while (v35);
  }

  else
  {
    v36 = 0;
  }

  return v36;
}

- (DBSArrangementLayoutViewController)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (CGSize)externalDisplaySize
{
  width = self->_externalDisplaySize.width;
  height = self->_externalDisplaySize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)nativeDisplaySize
{
  width = self->_nativeDisplaySize.width;
  height = self->_nativeDisplaySize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end