@interface SBInteractiveScreenshotGestureCropsView
- (SBInteractiveScreenshotGestureCropsView)initWithFrame:(CGRect)frame;
- (void)_setPresentationValue:(id)value forKey:(id)key;
- (void)_setupUI;
- (void)_updateGeometryForBounds:(CGRect)bounds shouldUsePresentationValues:(BOOL)values;
- (void)_updateGeometryOrDeferLayoutUsingModelBounds;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)bounds;
- (void)setCornerAlpha:(double)alpha;
- (void)setCornerColor:(id)color;
- (void)setCornerEdgeLength:(double)length;
- (void)setCropsCompositingFilter:(id)filter;
- (void)setFrame:(CGRect)frame;
- (void)setGrabberLineWidth:(double)width;
- (void)setLineAlpha:(double)alpha;
- (void)setLineColor:(id)color;
- (void)setLineGrabberAlpha:(double)alpha;
- (void)setLineGrabberColor:(id)color;
- (void)setLineGrabberEdgeLength:(double)length;
- (void)setLineWidth:(double)width;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation SBInteractiveScreenshotGestureCropsView

- (SBInteractiveScreenshotGestureCropsView)initWithFrame:(CGRect)frame
{
  v15.receiver = self;
  v15.super_class = SBInteractiveScreenshotGestureCropsView;
  v3 = [(SBInteractiveScreenshotGestureCropsView *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = dispatch_queue_create("com.apple.SpringBoard.SBInteractiveScreenshotGestureCropsView.accessQueue", 0);
    accessQueue = v3->_accessQueue;
    v3->_accessQueue = v4;

    v6 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.82];
    cornerColor = v3->_cornerColor;
    v3->_cornerColor = v6;

    v8 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5E8]];
    cropsCompositingFilter = v3->_cropsCompositingFilter;
    v3->_cropsCompositingFilter = v8;

    v3->_cornerEdgeLength = 20.0;
    v3->_cornerAlpha = 1.0;
    v3->_grabberLineWidth = 4.0;
    v3->_lineGrabberEdgeLength = v3->_cornerEdgeLength;
    v3->_lineGrabberAlpha = 1.0;
    v3->_lineWidth = 1.0;
    v10 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.82];
    lineGrabberColor = v3->_lineGrabberColor;
    v3->_lineGrabberColor = v10;

    v12 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.82];
    lineColor = v3->_lineColor;
    v3->_lineColor = v12;

    v3->_lineAlpha = 1.0;
    [(SBInteractiveScreenshotGestureCropsView *)v3 _setupUI];
  }

  return v3;
}

- (void)_setupUI
{
  v88 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:8];
  v4 = objc_alloc(MEMORY[0x277D75D18]);
  v5 = *MEMORY[0x277CBF3A0];
  v6 = *(MEMORY[0x277CBF3A0] + 8);
  v7 = *(MEMORY[0x277CBF3A0] + 16);
  v8 = *(MEMORY[0x277CBF3A0] + 24);
  v9 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], v6, v7, v8}];
  bottomLeftCornerHorizontalView = self->_bottomLeftCornerHorizontalView;
  self->_bottomLeftCornerHorizontalView = v9;

  redColor = [MEMORY[0x277D75348] redColor];
  cGColor = [redColor CGColor];
  layer = [(UIView *)self->_bottomLeftCornerHorizontalView layer];
  [layer setBorderColor:cGColor];

  layer2 = [(UIView *)self->_bottomLeftCornerHorizontalView layer];
  [layer2 setBorderWidth:1.0];

  [v3 addObject:self->_bottomLeftCornerHorizontalView];
  [(SBInteractiveScreenshotGestureCropsView *)self addSubview:self->_bottomLeftCornerHorizontalView];
  v15 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v5, v6, v7, v8}];
  bottomLeftCornerVerticalView = self->_bottomLeftCornerVerticalView;
  self->_bottomLeftCornerVerticalView = v15;

  [v3 addObject:self->_bottomLeftCornerVerticalView];
  [(SBInteractiveScreenshotGestureCropsView *)self addSubview:self->_bottomLeftCornerVerticalView];
  v17 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v5, v6, v7, v8}];
  bottomRightCornerHorizontalView = self->_bottomRightCornerHorizontalView;
  self->_bottomRightCornerHorizontalView = v17;

  [v3 addObject:self->_bottomRightCornerHorizontalView];
  [(SBInteractiveScreenshotGestureCropsView *)self addSubview:self->_bottomRightCornerHorizontalView];
  v19 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v5, v6, v7, v8}];
  bottomRightCornerVerticalView = self->_bottomRightCornerVerticalView;
  self->_bottomRightCornerVerticalView = v19;

  [v3 addObject:self->_bottomRightCornerVerticalView];
  [(SBInteractiveScreenshotGestureCropsView *)self addSubview:self->_bottomRightCornerVerticalView];
  v21 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v5, v6, v7, v8}];
  topLeftCornerHorizontalView = self->_topLeftCornerHorizontalView;
  self->_topLeftCornerHorizontalView = v21;

  [v3 addObject:self->_topLeftCornerHorizontalView];
  [(SBInteractiveScreenshotGestureCropsView *)self addSubview:self->_topLeftCornerHorizontalView];
  v23 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v5, v6, v7, v8}];
  topLeftCornerVerticalView = self->_topLeftCornerVerticalView;
  self->_topLeftCornerVerticalView = v23;

  [v3 addObject:self->_topLeftCornerVerticalView];
  [(SBInteractiveScreenshotGestureCropsView *)self addSubview:self->_topLeftCornerVerticalView];
  v25 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v5, v6, v7, v8}];
  topRightCornerHorizontalView = self->_topRightCornerHorizontalView;
  self->_topRightCornerHorizontalView = v25;

  [v3 addObject:self->_topRightCornerHorizontalView];
  [(SBInteractiveScreenshotGestureCropsView *)self addSubview:self->_topRightCornerHorizontalView];
  v27 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v5, v6, v7, v8}];
  topRightCornerVerticalView = self->_topRightCornerVerticalView;
  self->_topRightCornerVerticalView = v27;

  [v3 addObject:self->_topRightCornerVerticalView];
  [(SBInteractiveScreenshotGestureCropsView *)self addSubview:self->_topRightCornerVerticalView];
  v72 = v3;
  v29 = [v3 copy];
  cornerViews = self->_cornerViews;
  self->_cornerViews = v29;

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v31 = self->_cornerViews;
  v32 = [(NSArray *)v31 countByEnumeratingWithState:&v81 objects:v87 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v82;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v82 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v81 + 1) + 8 * i);
        [v36 setBackgroundColor:self->_cornerColor];
        layer3 = [v36 layer];
        [layer3 setCompositingFilter:self->_cropsCompositingFilter];
      }

      v33 = [(NSArray *)v31 countByEnumeratingWithState:&v81 objects:v87 count:16];
    }

    while (v33);
  }

  v38 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];
  v39 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v5, v6, v7, v8}];
  bottomLineView = self->_bottomLineView;
  self->_bottomLineView = v39;

  [v38 addObject:self->_bottomLineView];
  [(SBInteractiveScreenshotGestureCropsView *)self addSubview:self->_bottomLineView];
  v41 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v5, v6, v7, v8}];
  leftLineView = self->_leftLineView;
  self->_leftLineView = v41;

  [v38 addObject:self->_leftLineView];
  [(SBInteractiveScreenshotGestureCropsView *)self addSubview:self->_leftLineView];
  v43 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v5, v6, v7, v8}];
  rightLineView = self->_rightLineView;
  self->_rightLineView = v43;

  [v38 addObject:self->_rightLineView];
  [(SBInteractiveScreenshotGestureCropsView *)self addSubview:self->_rightLineView];
  v45 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v5, v6, v7, v8}];
  topLineView = self->_topLineView;
  self->_topLineView = v45;

  [v38 addObject:self->_topLineView];
  [(SBInteractiveScreenshotGestureCropsView *)self addSubview:self->_topLineView];
  v47 = [v38 copy];
  lineViews = self->_lineViews;
  self->_lineViews = v47;

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v49 = self->_lineViews;
  v50 = [(NSArray *)v49 countByEnumeratingWithState:&v77 objects:v86 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v78;
    do
    {
      for (j = 0; j != v51; ++j)
      {
        if (*v78 != v52)
        {
          objc_enumerationMutation(v49);
        }

        v54 = *(*(&v77 + 1) + 8 * j);
        [v54 setBackgroundColor:self->_lineColor];
        layer4 = [v54 layer];
        [layer4 setCompositingFilter:self->_cropsCompositingFilter];
      }

      v51 = [(NSArray *)v49 countByEnumeratingWithState:&v77 objects:v86 count:16];
    }

    while (v51);
  }

  v56 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];
  v57 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v5, v6, v7, v8}];
  bottomLineGrabberView = self->_bottomLineGrabberView;
  self->_bottomLineGrabberView = v57;

  [v56 addObject:self->_bottomLineGrabberView];
  [(SBInteractiveScreenshotGestureCropsView *)self addSubview:self->_bottomLineGrabberView];
  v59 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v5, v6, v7, v8}];
  leftLineGrabberView = self->_leftLineGrabberView;
  self->_leftLineGrabberView = v59;

  [v56 addObject:self->_leftLineGrabberView];
  [(SBInteractiveScreenshotGestureCropsView *)self addSubview:self->_leftLineGrabberView];
  v61 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v5, v6, v7, v8}];
  rightLineGrabberView = self->_rightLineGrabberView;
  self->_rightLineGrabberView = v61;

  [v56 addObject:self->_rightLineGrabberView];
  [(SBInteractiveScreenshotGestureCropsView *)self addSubview:self->_rightLineGrabberView];
  v63 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v5, v6, v7, v8}];
  topLineGrabberView = self->_topLineGrabberView;
  self->_topLineGrabberView = v63;

  [v56 addObject:self->_topLineGrabberView];
  [(SBInteractiveScreenshotGestureCropsView *)self addSubview:self->_topLineGrabberView];
  objc_storeStrong(&self->_lineGrabberViews, v56);
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v65 = self->_lineGrabberViews;
  v66 = [(NSArray *)v65 countByEnumeratingWithState:&v73 objects:v85 count:16];
  if (v66)
  {
    v67 = v66;
    v68 = *v74;
    do
    {
      for (k = 0; k != v67; ++k)
      {
        if (*v74 != v68)
        {
          objc_enumerationMutation(v65);
        }

        v70 = *(*(&v73 + 1) + 8 * k);
        [v70 setBackgroundColor:self->_lineGrabberColor];
        layer5 = [v70 layer];
        [layer5 setCompositingFilter:self->_cropsCompositingFilter];
      }

      v67 = [(NSArray *)v65 countByEnumeratingWithState:&v73 objects:v85 count:16];
    }

    while (v67);
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SBInteractiveScreenshotGestureCropsView;
  [(SBInteractiveScreenshotGestureCropsView *)&v3 layoutSubviews];
  [(SBInteractiveScreenshotGestureCropsView *)self bounds];
  [(SBInteractiveScreenshotGestureCropsView *)self _updateGeometryForBounds:0 shouldUsePresentationValues:?];
}

- (void)setBounds:(CGRect)bounds
{
  v4.receiver = self;
  v4.super_class = SBInteractiveScreenshotGestureCropsView;
  [(SBInteractiveScreenshotGestureCropsView *)&v4 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  [(SBInteractiveScreenshotGestureCropsView *)self _updateGeometryOrDeferLayoutUsingModelBounds];
}

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = SBInteractiveScreenshotGestureCropsView;
  [(SBInteractiveScreenshotGestureCropsView *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(SBInteractiveScreenshotGestureCropsView *)self _updateGeometryOrDeferLayoutUsingModelBounds];
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = SBInteractiveScreenshotGestureCropsView;
  [(SBInteractiveScreenshotGestureCropsView *)&v9 traitCollectionDidChange:change];
  traitCollection = [(SBInteractiveScreenshotGestureCropsView *)self traitCollection];
  [traitCollection displayScale];
  v6 = v5;

  accessQueue = self->_accessQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__SBInteractiveScreenshotGestureCropsView_traitCollectionDidChange___block_invoke;
  v8[3] = &unk_2783A8BC8;
  v8[4] = self;
  v8[5] = v6;
  dispatch_sync(accessQueue, v8);
}

double __68__SBInteractiveScreenshotGestureCropsView_traitCollectionDidChange___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 568) = result;
  return result;
}

- (void)_setPresentationValue:(id)value forKey:(id)key
{
  v38 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  keyCopy = key;
  if ([keyCopy isEqualToString:@"bounds"])
  {
    v34.receiver = self;
    v34.super_class = SBInteractiveScreenshotGestureCropsView;
    [(SBInteractiveScreenshotGestureCropsView *)&v34 _setPresentationValue:valueCopy forKey:keyCopy];
    [valueCopy CGRectValue];
    [(SBInteractiveScreenshotGestureCropsView *)self _updateGeometryForBounds:1 shouldUsePresentationValues:?];
  }

  else
  {
    if ([keyCopy isEqualToString:@"lineGrabberAlpha"])
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v8 = self->_lineGrabberViews;
      v9 = [(NSArray *)v8 countByEnumeratingWithState:&v30 objects:v37 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v31;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v31 != v11)
            {
              objc_enumerationMutation(v8);
            }

            [*(*(&v30 + 1) + 8 * i) _setPresentationValue:valueCopy forKey:@"opacity"];
          }

          v10 = [(NSArray *)v8 countByEnumeratingWithState:&v30 objects:v37 count:16];
        }

        while (v10);
      }
    }

    else if ([keyCopy isEqualToString:@"lineAlpha"])
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v8 = self->_lineViews;
      v13 = [(NSArray *)v8 countByEnumeratingWithState:&v26 objects:v36 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v27;
        do
        {
          for (j = 0; j != v14; ++j)
          {
            if (*v27 != v15)
            {
              objc_enumerationMutation(v8);
            }

            [*(*(&v26 + 1) + 8 * j) _setPresentationValue:valueCopy forKey:@"opacity"];
          }

          v14 = [(NSArray *)v8 countByEnumeratingWithState:&v26 objects:v36 count:16];
        }

        while (v14);
      }
    }

    else
    {
      if (![keyCopy isEqualToString:@"cornerAlpha"])
      {
        v21.receiver = self;
        v21.super_class = SBInteractiveScreenshotGestureCropsView;
        [(SBInteractiveScreenshotGestureCropsView *)&v21 _setPresentationValue:valueCopy forKey:keyCopy];
        goto LABEL_30;
      }

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v8 = self->_cornerViews;
      v17 = [(NSArray *)v8 countByEnumeratingWithState:&v22 objects:v35 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v23;
        do
        {
          for (k = 0; k != v18; ++k)
          {
            if (*v23 != v19)
            {
              objc_enumerationMutation(v8);
            }

            [*(*(&v22 + 1) + 8 * k) _setPresentationValue:valueCopy forKey:@"opacity"];
          }

          v18 = [(NSArray *)v8 countByEnumeratingWithState:&v22 objects:v35 count:16];
        }

        while (v18);
      }
    }
  }

LABEL_30:
}

- (void)setCornerAlpha:(double)alpha
{
  v15 = *MEMORY[0x277D85DE8];
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_cornerAlpha = alpha;
    [(SBInteractiveScreenshotGestureCropsView *)self _didSetCornerAlpha];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = self->_cornerViews;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v10 + 1) + 8 * v9++) setAlpha:{self->_cornerAlpha, v10}];
        }

        while (v7 != v9);
        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)setCornerColor:(id)color
{
  v17 = *MEMORY[0x277D85DE8];
  colorCopy = color;
  cornerColor = self->_cornerColor;
  if (cornerColor != colorCopy && ([(UIColor *)cornerColor isEqual:colorCopy]& 1) == 0)
  {
    objc_storeStrong(&self->_cornerColor, color);
    [(SBInteractiveScreenshotGestureCropsView *)self _didSetCornerColor];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = self->_cornerViews;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v12 + 1) + 8 * v11++) setBackgroundColor:{self->_cornerColor, v12}];
        }

        while (v9 != v11);
        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (void)setCropsCompositingFilter:(id)filter
{
  v18 = *MEMORY[0x277D85DE8];
  filterCopy = filter;
  cropsCompositingFilter = self->_cropsCompositingFilter;
  if (cropsCompositingFilter != filterCopy && ([cropsCompositingFilter isEqual:filterCopy] & 1) == 0)
  {
    objc_storeStrong(&self->_cropsCompositingFilter, filter);
    [(SBInteractiveScreenshotGestureCropsView *)self _didSetCompositingFilter];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = self->_cornerViews;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          layer = [*(*(&v13 + 1) + 8 * v11) layer];
          [layer setCompositingFilter:self->_cropsCompositingFilter];

          ++v11;
        }

        while (v9 != v11);
        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }
}

- (void)setCornerEdgeLength:(double)length
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_cornerEdgeLength = length;

    [(SBInteractiveScreenshotGestureCropsView *)self _updateGeometryOrDeferLayoutUsingModelBounds];
  }
}

- (void)setGrabberLineWidth:(double)width
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_grabberLineWidth = width;
    [(SBInteractiveScreenshotGestureCropsView *)self _didSetGrabberLineWidth];

    [(SBInteractiveScreenshotGestureCropsView *)self _updateGeometryOrDeferLayoutUsingModelBounds];
  }
}

- (void)setLineAlpha:(double)alpha
{
  v15 = *MEMORY[0x277D85DE8];
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_lineAlpha = alpha;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = self->_lineViews;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v10 + 1) + 8 * v9++) setAlpha:{self->_lineAlpha, v10}];
        }

        while (v7 != v9);
        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)setLineColor:(id)color
{
  v17 = *MEMORY[0x277D85DE8];
  colorCopy = color;
  lineColor = self->_lineColor;
  if (lineColor != colorCopy && ([(UIColor *)lineColor isEqual:colorCopy]& 1) == 0)
  {
    objc_storeStrong(&self->_lineColor, color);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = self->_lineViews;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v12 + 1) + 8 * v11++) setBackgroundColor:{self->_lineColor, v12}];
        }

        while (v9 != v11);
        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (void)setLineWidth:(double)width
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_lineWidth = width;

    [(SBInteractiveScreenshotGestureCropsView *)self _updateGeometryOrDeferLayoutUsingModelBounds];
  }
}

- (void)setLineGrabberAlpha:(double)alpha
{
  v15 = *MEMORY[0x277D85DE8];
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_lineGrabberAlpha = alpha;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = self->_lineGrabberViews;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v10 + 1) + 8 * v9++) setAlpha:{self->_lineGrabberAlpha, v10}];
        }

        while (v7 != v9);
        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)setLineGrabberColor:(id)color
{
  v17 = *MEMORY[0x277D85DE8];
  colorCopy = color;
  lineGrabberColor = self->_lineGrabberColor;
  if (lineGrabberColor != colorCopy && ([(UIColor *)lineGrabberColor isEqual:colorCopy]& 1) == 0)
  {
    objc_storeStrong(&self->_lineGrabberColor, color);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = self->_lineGrabberViews;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v12 + 1) + 8 * v11++) setBackgroundColor:{self->_lineGrabberColor, v12}];
        }

        while (v9 != v11);
        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (void)setLineGrabberEdgeLength:(double)length
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_lineGrabberEdgeLength = length;

    [(SBInteractiveScreenshotGestureCropsView *)self _updateGeometryOrDeferLayoutUsingModelBounds];
  }
}

- (void)_updateGeometryForBounds:(CGRect)bounds shouldUsePresentationValues:(BOOL)values
{
  valuesCopy = values;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v136 = 0;
  v137 = &v136;
  v138 = 0x2020000000;
  v139 = 0x3FF0000000000000;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__SBInteractiveScreenshotGestureCropsView__updateGeometryForBounds_shouldUsePresentationValues___block_invoke;
  block[3] = &unk_2783A8CE0;
  block[4] = self;
  block[5] = &v136;
  dispatch_sync(accessQueue, block);
  v140.origin.x = x;
  v140.origin.y = y;
  v140.size.width = width;
  v140.size.height = height;
  MinX = CGRectGetMinX(v140);
  v141.origin.x = x;
  v141.origin.y = y;
  v141.size.width = width;
  v141.size.height = height;
  MinY = CGRectGetMinY(v141);
  grabberLineWidth = self->_grabberLineWidth;
  cornerEdgeLength = self->_cornerEdgeLength;
  v142.origin.x = x;
  v142.origin.y = y;
  v142.size.width = width;
  v142.size.height = height;
  v134 = CGRectGetMinX(v142);
  v143.origin.x = x;
  v143.origin.y = y;
  v143.size.width = width;
  v143.size.height = height;
  v118 = CGRectGetMinY(v143);
  v133 = self->_grabberLineWidth;
  v116 = self->_cornerEdgeLength;
  v144.origin.x = x;
  v144.origin.y = y;
  v144.size.width = width;
  v144.size.height = height;
  MaxX = CGRectGetMaxX(v144);
  v12 = self->_cornerEdgeLength;
  v145.origin.x = x;
  v145.origin.y = y;
  v145.size.width = width;
  v145.size.height = height;
  v123 = CGRectGetMinY(v145);
  v121 = self->_cornerEdgeLength;
  v122 = self->_grabberLineWidth;
  v146.origin.x = x;
  v146.origin.y = y;
  v146.size.width = width;
  v146.size.height = height;
  v13 = CGRectGetMaxX(v146);
  v113 = self->_grabberLineWidth;
  v147.origin.x = x;
  v147.origin.y = y;
  v147.size.width = width;
  v147.size.height = height;
  v111 = CGRectGetMinY(v147);
  v128 = self->_grabberLineWidth;
  v109 = self->_cornerEdgeLength;
  v148.origin.x = x;
  v148.origin.y = y;
  v148.size.width = width;
  v148.size.height = height;
  rect_24 = CGRectGetMinX(v148);
  v149.origin.x = x;
  v149.origin.y = y;
  v149.size.width = width;
  v149.size.height = height;
  MaxY = CGRectGetMaxY(v149);
  v96 = v12;
  v98 = MaxX;
  rect_8 = self->_cornerEdgeLength;
  rect_16 = self->_grabberLineWidth;
  v150.origin.x = x;
  v150.origin.y = y;
  v150.size.width = width;
  v150.size.height = height;
  rect = CGRectGetMinX(v150);
  v151.origin.x = x;
  v151.origin.y = y;
  v151.size.width = width;
  v151.size.height = height;
  v15 = CGRectGetMaxY(v151);
  v103 = v13;
  v16 = self->_cornerEdgeLength;
  v120 = self->_grabberLineWidth;
  v152.origin.x = x;
  v152.origin.y = y;
  v152.size.width = width;
  v152.size.height = height;
  v89 = CGRectGetMaxX(v152);
  v87 = self->_cornerEdgeLength;
  v153.origin.x = x;
  v153.origin.y = y;
  v153.size.width = width;
  v153.size.height = height;
  v85 = CGRectGetMaxY(v153);
  v91 = MaxY;
  v107 = self->_cornerEdgeLength;
  v108 = self->_grabberLineWidth;
  v154.origin.x = x;
  v154.origin.y = y;
  v154.size.width = width;
  v154.size.height = height;
  v101 = CGRectGetMaxX(v154);
  v93 = self->_grabberLineWidth;
  v155.origin.x = x;
  v155.origin.y = y;
  v155.size.width = width;
  v155.size.height = height;
  v17 = CGRectGetMaxY(v155);
  v18 = self->_cornerEdgeLength;
  v115 = self->_grabberLineWidth;
  v156.origin.x = x;
  v156.origin.y = y;
  v156.size.width = width;
  v156.size.height = height;
  v83 = CGRectGetMinX(v156);
  v157.size.width = v133;
  v157.origin.y = v118 + v133;
  v157.size.height = v116 - v133;
  lineWidth = self->_lineWidth;
  v81 = self->_grabberLineWidth;
  v157.origin.x = v134;
  v117 = v118 + v133;
  v119 = v157.size.height;
  v106 = CGRectGetMaxY(v157);
  v19 = v15 - v16;
  v158.size.width = v120;
  v158.size.height = v16 - v120;
  v105 = self->_lineWidth;
  v158.origin.x = rect;
  v158.origin.y = v19;
  v71 = v16 - v120;
  v77 = CGRectGetMinY(v158);
  v159.size.width = v133;
  v159.origin.x = v134;
  v159.origin.y = v117;
  v159.size.height = v119;
  v75 = CGRectGetMaxY(v159);
  v160.origin.x = x;
  v160.origin.y = y;
  v160.size.width = width;
  v160.size.height = height;
  v74 = CGRectGetMaxX(v160);
  v161.origin.x = v103 - v113;
  v161.size.width = v128;
  v161.size.height = v109 - v128;
  v73 = self->_grabberLineWidth;
  v110 = v103 - v113;
  v112 = v111 + v128;
  v161.origin.y = v112;
  v114 = v161.size.height;
  v65 = CGRectGetMaxY(v161);
  v162.origin.y = v17 - v18;
  v162.size.width = v115;
  v162.size.height = v18 - v115;
  v64 = self->_lineWidth;
  v66 = v101 - v93;
  v67 = v17 - v18;
  v162.origin.x = v101 - v93;
  v69 = v18 - v115;
  v72 = CGRectGetMinY(v162);
  v163.origin.x = v110;
  v163.origin.y = v112;
  v163.size.width = v128;
  v163.size.height = v114;
  v70 = CGRectGetMaxY(v163);
  v68 = v19;
  v164.origin.y = MinY;
  v164.origin.x = MinX;
  v164.size.height = grabberLineWidth;
  v164.size.width = cornerEdgeLength;
  v102 = CGRectGetMaxX(v164);
  v165.origin.x = x;
  v165.origin.y = y;
  v165.size.width = width;
  v165.size.height = height;
  v94 = CGRectGetMinY(v165);
  v20 = self->_grabberLineWidth;
  v97 = v98 - v96;
  v166.origin.x = v97;
  v99 = self->_lineWidth;
  v166.size.height = v122;
  v166.origin.y = v123;
  v166.size.width = v121;
  v21 = CGRectGetMinX(v166);
  v167.origin.y = MinY;
  v167.origin.x = MinX;
  v167.size.height = grabberLineWidth;
  v167.size.width = cornerEdgeLength;
  v22 = CGRectGetMaxX(v167);
  v168.size.width = rect_8;
  v168.size.height = rect_16;
  v168.origin.y = v91 - rect_16;
  v23 = self->_lineWidth;
  v168.origin.x = rect_24;
  v104 = v91 - rect_16;
  v61 = CGRectGetMaxX(v168);
  v169.origin.x = x;
  v169.origin.y = y;
  v169.size.width = width;
  v169.size.height = height;
  v92 = CGRectGetMaxY(v169);
  v170.origin.x = v89 - v87;
  v170.size.height = v108;
  v170.origin.y = v85 - v108;
  v90 = self->_grabberLineWidth;
  v62 = v170.origin.x;
  v63 = v85 - v108;
  v170.size.width = v107;
  v88 = CGRectGetMinX(v170);
  v171.origin.x = rect_24;
  v171.origin.y = v104;
  v171.size.width = rect_8;
  v171.size.height = rect_16;
  v86 = CGRectGetMaxX(v171);
  v24 = v83 + v81 - lineWidth;
  v172.size.height = v77 - v75;
  v80 = self->_lineWidth;
  v82 = v24;
  v172.origin.x = v24;
  v172.size.width = v105;
  v172.origin.y = v106;
  v84 = v77 - v75;
  CGRectGetMinX(v172);
  UIRectCenteredYInRectScale();
  v59 = v25;
  v60 = v26;
  v76 = v27;
  v78 = v28;
  v173.origin.x = x;
  v173.origin.y = y;
  v173.size.width = width;
  v173.size.height = height;
  CGRectGetMaxX(v173);
  UIRectCenteredYInRectScale();
  v55 = v29;
  v56 = v30;
  v57 = v31;
  v58 = v32;
  v174.origin.y = v94 + v20 - v99;
  v174.size.width = v21 - v22;
  v174.origin.x = v102;
  v33 = v174.origin.y;
  v34 = v174.size.width;
  v174.size.height = v23;
  CGRectGetMinY(v174);
  UIRectCenteredXInRectScale();
  v100 = v35;
  v54 = v36;
  v95 = v37;
  v39 = v38;
  v175.origin.x = x;
  v175.origin.y = y;
  v175.size.width = width;
  v175.size.height = height;
  CGRectGetMaxY(v175);
  v49 = v137[3];
  UIRectCenteredXInRectScale();
  v50 = v40;
  v51 = v41;
  v52 = v42;
  v53 = v43;
  v44 = v74 - v73;
  v45 = v72 - v70;
  v46 = v92 - v90;
  v47 = v88 - v86;
  topLeftCornerHorizontalView = self->_topLeftCornerHorizontalView;
  if (valuesCopy)
  {
    [(UIView *)topLeftCornerHorizontalView sb_setPresentationBoundsAndPositionFromFrame:MinX, MinY, cornerEdgeLength, grabberLineWidth, v49];
    [(UIView *)self->_topLeftCornerVerticalView sb_setPresentationBoundsAndPositionFromFrame:v134, v117, v133, v119];
    [(UIView *)self->_topRightCornerHorizontalView sb_setPresentationBoundsAndPositionFromFrame:v97, v123, v121, v122];
    [(UIView *)self->_topRightCornerVerticalView sb_setPresentationBoundsAndPositionFromFrame:v110, v112, v128, v114];
    [(UIView *)self->_bottomLeftCornerHorizontalView sb_setPresentationBoundsAndPositionFromFrame:rect_24, v104, rect_8, rect_16];
    [(UIView *)self->_bottomLeftCornerVerticalView sb_setPresentationBoundsAndPositionFromFrame:rect, v68, v120, v71];
    [(UIView *)self->_bottomRightCornerHorizontalView sb_setPresentationBoundsAndPositionFromFrame:v62, v63, v107, v108];
    [(UIView *)self->_bottomRightCornerVerticalView sb_setPresentationBoundsAndPositionFromFrame:v66, v67, v115, v69];
    [(UIView *)self->_leftLineView sb_setPresentationBoundsAndPositionFromFrame:v82, v106, v105, v84];
    [(UIView *)self->_bottomLineView sb_setPresentationBoundsAndPositionFromFrame:v61, v46, v47, v80];
    [(UIView *)self->_topLineView sb_setPresentationBoundsAndPositionFromFrame:v102, v33, v34, v23];
    [(UIView *)self->_rightLineView sb_setPresentationBoundsAndPositionFromFrame:v44, v65, v64, v45];
    [(UIView *)self->_leftLineGrabberView sb_setPresentationBoundsAndPositionFromFrame:v59, v60, v76, v78];
    [(UIView *)self->_bottomLineGrabberView sb_setPresentationBoundsAndPositionFromFrame:v50, v51, v52, v53];
    [(UIView *)self->_topLineGrabberView sb_setPresentationBoundsAndPositionFromFrame:v100, v39, v54, v95];
    [(UIView *)self->_rightLineGrabberView sb_setPresentationBoundsAndPositionFromFrame:v55, v56, v57, v58];
  }

  else
  {
    [(UIView *)topLeftCornerHorizontalView sb_setBoundsAndPositionFromFrame:MinX, MinY, cornerEdgeLength, grabberLineWidth, v49];
    [(UIView *)self->_topLeftCornerVerticalView sb_setBoundsAndPositionFromFrame:v134, v117, v133, v119];
    [(UIView *)self->_topRightCornerHorizontalView sb_setBoundsAndPositionFromFrame:v97, v123, v121, v122];
    [(UIView *)self->_topRightCornerVerticalView sb_setBoundsAndPositionFromFrame:v110, v112, v128, v114];
    [(UIView *)self->_bottomLeftCornerHorizontalView sb_setBoundsAndPositionFromFrame:rect_24, v104, rect_8, rect_16];
    [(UIView *)self->_bottomLeftCornerVerticalView sb_setBoundsAndPositionFromFrame:rect, v68, v120, v71];
    [(UIView *)self->_bottomRightCornerHorizontalView sb_setBoundsAndPositionFromFrame:v62, v63, v107, v108];
    [(UIView *)self->_bottomRightCornerVerticalView sb_setBoundsAndPositionFromFrame:v66, v67, v115, v69];
    [(UIView *)self->_leftLineView sb_setBoundsAndPositionFromFrame:v82, v106, v105, v84];
    [(UIView *)self->_bottomLineView sb_setBoundsAndPositionFromFrame:v61, v46, v47, v80];
    [(UIView *)self->_topLineView sb_setBoundsAndPositionFromFrame:v102, v33, v34, v23];
    [(UIView *)self->_rightLineView sb_setBoundsAndPositionFromFrame:v44, v65, v64, v45];
    [(UIView *)self->_leftLineGrabberView sb_setBoundsAndPositionFromFrame:v59, v60, v76, v78];
    [(UIView *)self->_bottomLineGrabberView sb_setBoundsAndPositionFromFrame:v50, v51, v52, v53];
    [(UIView *)self->_topLineGrabberView sb_setBoundsAndPositionFromFrame:v100, v39, v54, v95];
    [(UIView *)self->_rightLineGrabberView sb_setBoundsAndPositionFromFrame:v55, v56, v57, v58];
  }

  _Block_object_dispose(&v136, 8);
}

double __96__SBInteractiveScreenshotGestureCropsView__updateGeometryForBounds_shouldUsePresentationValues___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 568);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)_updateGeometryOrDeferLayoutUsingModelBounds
{
  if (([MEMORY[0x277D75D18] _isInAnimationBlockWithAnimationsEnabled] & 1) != 0 || objc_msgSend(MEMORY[0x277D75D18], "_isInRetargetableAnimationBlock"))
  {
    [(SBInteractiveScreenshotGestureCropsView *)self bounds];

    [(SBInteractiveScreenshotGestureCropsView *)self _updateGeometryForBounds:0 shouldUsePresentationValues:?];
  }

  else
  {

    [(SBInteractiveScreenshotGestureCropsView *)self setNeedsLayout];
  }
}

@end