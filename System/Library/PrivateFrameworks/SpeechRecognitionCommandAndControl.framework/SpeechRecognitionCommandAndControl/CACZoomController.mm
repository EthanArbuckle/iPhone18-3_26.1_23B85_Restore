@interface CACZoomController
+ (id)sharedController;
- (CACZoomController)initWithContainingView:(id)view;
- (CACZoomController)initWithZoomFactor:(double)factor;
- (CGRect)_effectiveRectForBounds:(CGRect)bounds position:(CGPoint)position scaleFactor:(double)factor;
- (CGRect)bestDockFromZoomRegion:(CGRect)region;
- (CGRect)dockedLensFrame;
- (CGRect)zoomedRegionFrame;
- (CGSize)_prescaledSizeForFinalSize:(CGSize)size withScaleFactor:(double)factor;
- (UIView)containingView;
- (void)hide;
- (void)layerize:(id)layerize color:(id)color;
- (void)loadView;
- (void)moveZoomRegion:(CGRect)region;
- (void)printLayers;
- (void)setZoomFactor:(double)factor;
- (void)show;
@end

@implementation CACZoomController

+ (id)sharedController
{
  if (sharedController_onceToken != -1)
  {
    +[CACZoomController sharedController];
  }

  v3 = sharedController_sZoomController;

  return v3;
}

uint64_t __37__CACZoomController_sharedController__block_invoke()
{
  sharedController_sZoomController = [[CACZoomController alloc] initWithZoomFactor:1.0];

  return MEMORY[0x2821F96F8]();
}

- (CACZoomController)initWithContainingView:(id)view
{
  viewCopy = view;
  v8.receiver = self;
  v8.super_class = CACZoomController;
  v5 = [(CACZoomController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CACZoomController *)v5 setZoomFactor:1.0];
    [(CACZoomController *)v6 setContainingView:viewCopy];
  }

  return v6;
}

- (CACZoomController)initWithZoomFactor:(double)factor
{
  v7.receiver = self;
  v7.super_class = CACZoomController;
  v4 = [(CACZoomController *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(CACZoomController *)v4 setZoomFactor:factor];
  }

  return v5;
}

- (void)loadView
{
  v3 = [CACZoomMainView alloc];
  containingView = [(CACZoomController *)self containingView];
  [containingView frame];
  v5 = [(CACZoomMainView *)v3 initWithFrame:?];
  [(CACZoomController *)self setView:v5];

  containingView2 = [(CACZoomController *)self containingView];
  [containingView2 size];
  v8 = v7 * 0.5;
  containingView3 = [(CACZoomController *)self containingView];
  [containingView3 size];
  v11 = v10 * 0.5;
  view = [(CACZoomController *)self view];
  [view setPosition:{v8, v11}];

  view2 = [(CACZoomController *)self view];
  layer = [view2 layer];
  [layer setNeedsDisplayOnBoundsChange:1];

  v15 = objc_alloc(MEMORY[0x277D75D18]);
  view3 = [(CACZoomController *)self view];
  [view3 bounds];
  v17 = [v15 initWithFrame:?];

  v18 = objc_alloc_init(MEMORY[0x277CD9F48]);
  [v18 setAllowsHitTesting:0];
  view4 = [(CACZoomController *)self view];
  [view4 frame];
  [v18 setFrame:?];

  [v17 bounds];
  [v18 setBounds:?];
  [v18 setInstanceCount:2];
  [(CACZoomController *)self setDockedReplicatorLayer:v18];
  v20 = objc_alloc_init(MEMORY[0x277CD9E08]);
  [v20 setAllowsHitTesting:0];
  [v20 setEnabled:1];
  [v20 bounds];
  [v20 setBackdropRect:?];
  [v20 setGroupName:@"Zoomed"];
  [v20 setMasksToBounds:1];
  v21 = CACZWLensCornerRadius();
  [(CACZoomController *)self zoomFactor];
  [v20 setCornerRadius:v21 / v22];
  [(CACZoomController *)self setZoomedRegionBackdropLayer:v20];
  dockedReplicatorLayer = [(CACZoomController *)self dockedReplicatorLayer];
  [dockedReplicatorLayer addSublayer:v20];

  layer2 = [v17 layer];
  [layer2 addSublayer:v18];

  view5 = [(CACZoomController *)self view];
  [view5 addSubview:v17];

  dockedReplicatorLayer2 = [(CACZoomController *)self dockedReplicatorLayer];
  v27 = *(MEMORY[0x277CD9DE8] + 80);
  v34[4] = *(MEMORY[0x277CD9DE8] + 64);
  v34[5] = v27;
  v28 = *(MEMORY[0x277CD9DE8] + 112);
  v34[6] = *(MEMORY[0x277CD9DE8] + 96);
  v34[7] = v28;
  v29 = *(MEMORY[0x277CD9DE8] + 16);
  v34[0] = *MEMORY[0x277CD9DE8];
  v34[1] = v29;
  v30 = *(MEMORY[0x277CD9DE8] + 48);
  v34[2] = *(MEMORY[0x277CD9DE8] + 32);
  v34[3] = v30;
  [dockedReplicatorLayer2 setTransform:v34];

  v31 = [CACZWLensChromeView alloc];
  v32 = [(CACZWLensChromeView *)v31 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(CACZoomController *)self setLensChromeView:v32];
  [(CACZWLensChromeView *)v32 setTranslatesAutoresizingMaskIntoConstraints:0];
  view6 = [(CACZoomController *)self view];
  [view6 addSubview:v32];
}

- (void)show
{
  view = [(CACZoomController *)self view];
  [view setAlpha:1.0];
}

- (void)hide
{
  view = [(CACZoomController *)self view];
  [view setAlpha:0.0];
}

- (void)moveZoomRegion:(CGRect)region
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __36__CACZoomController_moveZoomRegion___block_invoke;
  v3[3] = &unk_279CEB398;
  v3[4] = self;
  regionCopy = region;
  [MEMORY[0x277D75D18] animateWithDuration:v3 animations:0.5];
}

uint64_t __36__CACZoomController_moveZoomRegion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setZoomedRegionFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(a1 + 56);
  if (v2 != 0.0)
  {
    [*(a1 + 32) setZoomFactor:280.0 / v2];
  }

  v3 = CACZWLensCornerRadius();
  [*(a1 + 32) zoomFactor];
  v5 = v3 / v4;
  v6 = [*(a1 + 32) zoomedRegionBackdropLayer];
  [v6 setCornerRadius:v5];

  [*(a1 + 32) bestDockFromZoomRegion:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v60 = v8;
  v61 = v7;
  v58 = v10;
  v59 = v9;
  [*(a1 + 32) zoomedRegionFrame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  [MEMORY[0x277CD9FF0] begin];
  [*(a1 + 32) zoomedRegionFrame];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = [*(a1 + 32) zoomedRegionBackdropLayer];
  [v27 setFrame:{v20, v22, v24, v26}];

  v28 = [*(a1 + 32) zoomedRegionBackdropLayer];
  [v28 bounds];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = [*(a1 + 32) zoomedRegionBackdropLayer];
  [v37 setBackdropRect:{v30, v32, v34, v36}];

  v38 = [*(a1 + 32) dockedReplicatorLayer];
  [v38 position];
  v40 = v39 - v12;
  [*(a1 + 32) zoomFactor];
  v57 = v40 * (v41 + -1.0);

  v42 = [*(a1 + 32) dockedReplicatorLayer];
  [v42 position];
  v44 = v43 - v14;
  [*(a1 + 32) zoomFactor];
  v56 = v44 * (v45 + -1.0);

  memset(&v67, 0, sizeof(v67));
  [*(a1 + 32) zoomFactor];
  v47 = v46;
  [*(a1 + 32) zoomFactor];
  CATransform3DMakeScale(&v67, v47, v48, 1.0);
  memset(&v66, 0, sizeof(v66));
  v68.origin.x = v12;
  v68.origin.y = v14;
  v68.size.width = v16;
  v68.size.height = v18;
  MinX = CGRectGetMinX(v68);
  v69.origin.x = v61;
  v69.origin.y = v60;
  v69.size.width = v59;
  v69.size.height = v58;
  v50 = -(MinX - CGRectGetMinX(v69) - v57);
  v70.origin.x = v12;
  v70.origin.y = v14;
  v70.size.width = v16;
  v70.size.height = v18;
  MinY = CGRectGetMinY(v70);
  v71.origin.x = v61;
  v71.origin.y = v60;
  v71.size.width = v59;
  v71.size.height = v58;
  v52 = CGRectGetMinY(v71);
  CATransform3DMakeTranslation(&v66, v50, -(MinY - v52 - v56), 0.0);
  memset(&v65, 0, sizeof(v65));
  a = v67;
  b = v66;
  CATransform3DConcat(&v65, &a, &b);
  v62 = v65;
  v53 = [*(a1 + 32) dockedReplicatorLayer];
  a = v62;
  [v53 setInstanceTransform:&a];

  v54 = [*(a1 + 32) lensChromeView];
  [v54 setFrame:{v61, v60, v59, v58}];

  return [MEMORY[0x277CD9FF0] commit];
}

- (CGRect)bestDockFromZoomRegion:(CGRect)region
{
  height = region.size.height;
  width = region.size.width;
  [(CACZoomController *)self zoomFactor:region.origin.x];
  v7 = width * v6;
  v8 = height * v6;
  view = [(CACZoomController *)self view];
  [view center];
  v11 = v10 - v7 * 0.5;
  view2 = [(CACZoomController *)self view];
  [view2 center];
  v14 = v13 - v8 * 0.5;

  view3 = [(CACZoomController *)self view];
  [view3 frame];
  v17 = v16 * 0.9;
  view4 = [(CACZoomController *)self view];
  [view4 frame];
  v20 = v19 * 0.9;

  if (v7 <= v17)
  {
    v21 = v8;
  }

  else
  {
    v21 = v20;
  }

  if (v7 <= v17)
  {
    v22 = v7;
  }

  else
  {
    v22 = v17;
  }

  v23 = 280.0;
  if (v22 <= 280.0)
  {
    v24 = v21;
  }

  else
  {
    v24 = 280.0;
  }

  if (v22 <= 280.0)
  {
    v23 = v22;
  }

  v25 = v11;
  v26 = v14;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (void)setZoomFactor:(double)factor
{
  if (self->_zoomFactor != factor)
  {
    self->_zoomFactor = factor;
  }
}

- (CGSize)_prescaledSizeForFinalSize:(CGSize)size withScaleFactor:(double)factor
{
  v4 = size.width / factor;
  v5 = size.height / factor;
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGRect)_effectiveRectForBounds:(CGRect)bounds position:(CGPoint)position scaleFactor:(double)factor
{
  v5 = bounds.size.width * factor;
  v6 = bounds.size.height * factor;
  v7 = position.x - v5 * 0.5;
  v8 = position.y - v6 * 0.5;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (void)layerize:(id)layerize color:(id)color
{
  colorCopy = color;
  layerizeCopy = layerize;
  [layerizeCopy setBorderWidth:3.0];
  cGColor = [colorCopy CGColor];

  [layerizeCopy setBorderColor:{CGColorCreateCopyWithAlpha(cGColor, 0.3)}];
}

- (void)printLayers
{
  v76 = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCAB68] string];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  selfCopy = self;
  view = [(CACZoomController *)self view];
  subviews = [view subviews];

  obj = subviews;
  v41 = [subviews countByEnumeratingWithState:&v67 objects:v75 count:16];
  if (v41)
  {
    v40 = *v68;
    do
    {
      v6 = 0;
      do
      {
        if (*v68 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v42 = v6;
        v7 = *(*(&v67 + 1) + 8 * v6);
        [string appendFormat:@"\n %@", v7];
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        layer = [v7 layer];
        sublayers = [layer sublayers];

        v43 = sublayers;
        v47 = [sublayers countByEnumeratingWithState:&v63 objects:v74 count:16];
        if (v47)
        {
          v45 = *v64;
          do
          {
            v10 = 0;
            do
            {
              if (*v64 != v45)
              {
                objc_enumerationMutation(v43);
              }

              v11 = *(*(&v63 + 1) + 8 * v10);
              [v11 frame];
              v12 = NSStringFromCGRect(v77);
              objc_opt_class();
              v49 = v10;
              if (objc_opt_isKindOfClass())
              {
                groupName = [v11 groupName];
                [string appendFormat:@"\n\t %@, frame: %@, name: %@", v11, v12, groupName];
              }

              else
              {
                [string appendFormat:@"\n\t %@, frame: %@, name: %@", v11, v12, @"N/A"];
              }

              v61 = 0u;
              v62 = 0u;
              v59 = 0u;
              v60 = 0u;
              sublayers2 = [v11 sublayers];
              v15 = [sublayers2 countByEnumeratingWithState:&v59 objects:v73 count:16];
              if (v15)
              {
                v16 = v15;
                v17 = *v60;
                do
                {
                  for (i = 0; i != v16; ++i)
                  {
                    if (*v60 != v17)
                    {
                      objc_enumerationMutation(sublayers2);
                    }

                    v19 = *(*(&v59 + 1) + 8 * i);
                    [v19 frame];
                    v20 = NSStringFromCGRect(v78);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      groupName2 = [v19 groupName];
                      [string appendFormat:@"\n\t\t %@, frame: %@ name: %@", v19, v20, groupName2];
                    }

                    else
                    {
                      [string appendFormat:@"\n\t\t %@, frame: %@ name: %@", v19, v20, @"N/A"];
                    }
                  }

                  v16 = [sublayers2 countByEnumeratingWithState:&v59 objects:v73 count:16];
                }

                while (v16);
              }

              v10 = v49 + 1;
            }

            while (v49 + 1 != v47);
            v47 = [v43 countByEnumeratingWithState:&v63 objects:v74 count:16];
          }

          while (v47);
        }

        v6 = v42 + 1;
      }

      while (v42 + 1 != v41);
      v41 = [obj countByEnumeratingWithState:&v67 objects:v75 count:16];
    }

    while (v41);
  }

  view2 = [(CACZoomController *)selfCopy view];
  [string appendFormat:@"\n %@", view2];

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  view3 = [(CACZoomController *)selfCopy view];
  layer2 = [view3 layer];
  sublayers3 = [layer2 sublayers];

  v44 = sublayers3;
  v48 = [sublayers3 countByEnumeratingWithState:&v55 objects:v72 count:16];
  if (v48)
  {
    v46 = *v56;
    do
    {
      v26 = 0;
      do
      {
        if (*v56 != v46)
        {
          objc_enumerationMutation(v44);
        }

        v27 = *(*(&v55 + 1) + 8 * v26);
        [v27 frame];
        v28 = NSStringFromCGRect(v79);
        objc_opt_class();
        v50 = v26;
        if (objc_opt_isKindOfClass())
        {
          groupName3 = [v27 groupName];
          [string appendFormat:@"\n\t %@, frame: %@, name: %@", v27, v28, groupName3];
        }

        else
        {
          [string appendFormat:@"\n\t %@, frame: %@, name: %@", v27, v28, @"N/A"];
        }

        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        sublayers4 = [v27 sublayers];
        v31 = [sublayers4 countByEnumeratingWithState:&v51 objects:v71 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v52;
          do
          {
            for (j = 0; j != v32; ++j)
            {
              if (*v52 != v33)
              {
                objc_enumerationMutation(sublayers4);
              }

              v35 = *(*(&v51 + 1) + 8 * j);
              [v35 frame];
              v36 = NSStringFromCGRect(v80);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                groupName4 = [v35 groupName];
                [string appendFormat:@"\n\t\t %@, frame: %@ name: %@", v35, v36, groupName4];
              }

              else
              {
                [string appendFormat:@"\n\t\t %@, frame: %@ name: %@", v35, v36, @"N/A"];
              }
            }

            v32 = [sublayers4 countByEnumeratingWithState:&v51 objects:v71 count:16];
          }

          while (v32);
        }

        v26 = v50 + 1;
      }

      while (v50 + 1 != v48);
      v48 = [v44 countByEnumeratingWithState:&v55 objects:v72 count:16];
    }

    while (v48);
  }

  NSLog(&stru_287BDCAB0.isa, string);
}

- (CGRect)zoomedRegionFrame
{
  x = self->_zoomedRegionFrame.origin.x;
  y = self->_zoomedRegionFrame.origin.y;
  width = self->_zoomedRegionFrame.size.width;
  height = self->_zoomedRegionFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)dockedLensFrame
{
  x = self->_dockedLensFrame.origin.x;
  y = self->_dockedLensFrame.origin.y;
  width = self->_dockedLensFrame.size.width;
  height = self->_dockedLensFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIView)containingView
{
  WeakRetained = objc_loadWeakRetained(&self->_containingView);

  return WeakRetained;
}

@end