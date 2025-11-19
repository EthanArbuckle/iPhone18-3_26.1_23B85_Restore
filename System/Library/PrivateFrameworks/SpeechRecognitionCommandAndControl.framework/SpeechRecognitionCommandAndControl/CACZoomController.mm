@interface CACZoomController
+ (id)sharedController;
- (CACZoomController)initWithContainingView:(id)a3;
- (CACZoomController)initWithZoomFactor:(double)a3;
- (CGRect)_effectiveRectForBounds:(CGRect)a3 position:(CGPoint)a4 scaleFactor:(double)a5;
- (CGRect)bestDockFromZoomRegion:(CGRect)a3;
- (CGRect)dockedLensFrame;
- (CGRect)zoomedRegionFrame;
- (CGSize)_prescaledSizeForFinalSize:(CGSize)a3 withScaleFactor:(double)a4;
- (UIView)containingView;
- (void)hide;
- (void)layerize:(id)a3 color:(id)a4;
- (void)loadView;
- (void)moveZoomRegion:(CGRect)a3;
- (void)printLayers;
- (void)setZoomFactor:(double)a3;
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

- (CACZoomController)initWithContainingView:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CACZoomController;
  v5 = [(CACZoomController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CACZoomController *)v5 setZoomFactor:1.0];
    [(CACZoomController *)v6 setContainingView:v4];
  }

  return v6;
}

- (CACZoomController)initWithZoomFactor:(double)a3
{
  v7.receiver = self;
  v7.super_class = CACZoomController;
  v4 = [(CACZoomController *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(CACZoomController *)v4 setZoomFactor:a3];
  }

  return v5;
}

- (void)loadView
{
  v3 = [CACZoomMainView alloc];
  v4 = [(CACZoomController *)self containingView];
  [v4 frame];
  v5 = [(CACZoomMainView *)v3 initWithFrame:?];
  [(CACZoomController *)self setView:v5];

  v6 = [(CACZoomController *)self containingView];
  [v6 size];
  v8 = v7 * 0.5;
  v9 = [(CACZoomController *)self containingView];
  [v9 size];
  v11 = v10 * 0.5;
  v12 = [(CACZoomController *)self view];
  [v12 setPosition:{v8, v11}];

  v13 = [(CACZoomController *)self view];
  v14 = [v13 layer];
  [v14 setNeedsDisplayOnBoundsChange:1];

  v15 = objc_alloc(MEMORY[0x277D75D18]);
  v16 = [(CACZoomController *)self view];
  [v16 bounds];
  v17 = [v15 initWithFrame:?];

  v18 = objc_alloc_init(MEMORY[0x277CD9F48]);
  [v18 setAllowsHitTesting:0];
  v19 = [(CACZoomController *)self view];
  [v19 frame];
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
  v23 = [(CACZoomController *)self dockedReplicatorLayer];
  [v23 addSublayer:v20];

  v24 = [v17 layer];
  [v24 addSublayer:v18];

  v25 = [(CACZoomController *)self view];
  [v25 addSubview:v17];

  v26 = [(CACZoomController *)self dockedReplicatorLayer];
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
  [v26 setTransform:v34];

  v31 = [CACZWLensChromeView alloc];
  v32 = [(CACZWLensChromeView *)v31 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(CACZoomController *)self setLensChromeView:v32];
  [(CACZWLensChromeView *)v32 setTranslatesAutoresizingMaskIntoConstraints:0];
  v33 = [(CACZoomController *)self view];
  [v33 addSubview:v32];
}

- (void)show
{
  v2 = [(CACZoomController *)self view];
  [v2 setAlpha:1.0];
}

- (void)hide
{
  v2 = [(CACZoomController *)self view];
  [v2 setAlpha:0.0];
}

- (void)moveZoomRegion:(CGRect)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __36__CACZoomController_moveZoomRegion___block_invoke;
  v3[3] = &unk_279CEB398;
  v3[4] = self;
  v4 = a3;
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

- (CGRect)bestDockFromZoomRegion:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  [(CACZoomController *)self zoomFactor:a3.origin.x];
  v7 = width * v6;
  v8 = height * v6;
  v9 = [(CACZoomController *)self view];
  [v9 center];
  v11 = v10 - v7 * 0.5;
  v12 = [(CACZoomController *)self view];
  [v12 center];
  v14 = v13 - v8 * 0.5;

  v15 = [(CACZoomController *)self view];
  [v15 frame];
  v17 = v16 * 0.9;
  v18 = [(CACZoomController *)self view];
  [v18 frame];
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

- (void)setZoomFactor:(double)a3
{
  if (self->_zoomFactor != a3)
  {
    self->_zoomFactor = a3;
  }
}

- (CGSize)_prescaledSizeForFinalSize:(CGSize)a3 withScaleFactor:(double)a4
{
  v4 = a3.width / a4;
  v5 = a3.height / a4;
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGRect)_effectiveRectForBounds:(CGRect)a3 position:(CGPoint)a4 scaleFactor:(double)a5
{
  v5 = a3.size.width * a5;
  v6 = a3.size.height * a5;
  v7 = a4.x - v5 * 0.5;
  v8 = a4.y - v6 * 0.5;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (void)layerize:(id)a3 color:(id)a4
{
  v5 = a4;
  v7 = a3;
  [v7 setBorderWidth:3.0];
  v6 = [v5 CGColor];

  [v7 setBorderColor:{CGColorCreateCopyWithAlpha(v6, 0.3)}];
}

- (void)printLayers
{
  v76 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] string];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v38 = self;
  v4 = [(CACZoomController *)self view];
  v5 = [v4 subviews];

  obj = v5;
  v41 = [v5 countByEnumeratingWithState:&v67 objects:v75 count:16];
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
        [v3 appendFormat:@"\n %@", v7];
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v8 = [v7 layer];
        v9 = [v8 sublayers];

        v43 = v9;
        v47 = [v9 countByEnumeratingWithState:&v63 objects:v74 count:16];
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
                v13 = [v11 groupName];
                [v3 appendFormat:@"\n\t %@, frame: %@, name: %@", v11, v12, v13];
              }

              else
              {
                [v3 appendFormat:@"\n\t %@, frame: %@, name: %@", v11, v12, @"N/A"];
              }

              v61 = 0u;
              v62 = 0u;
              v59 = 0u;
              v60 = 0u;
              v14 = [v11 sublayers];
              v15 = [v14 countByEnumeratingWithState:&v59 objects:v73 count:16];
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
                      objc_enumerationMutation(v14);
                    }

                    v19 = *(*(&v59 + 1) + 8 * i);
                    [v19 frame];
                    v20 = NSStringFromCGRect(v78);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v21 = [v19 groupName];
                      [v3 appendFormat:@"\n\t\t %@, frame: %@ name: %@", v19, v20, v21];
                    }

                    else
                    {
                      [v3 appendFormat:@"\n\t\t %@, frame: %@ name: %@", v19, v20, @"N/A"];
                    }
                  }

                  v16 = [v14 countByEnumeratingWithState:&v59 objects:v73 count:16];
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

  v22 = [(CACZoomController *)v38 view];
  [v3 appendFormat:@"\n %@", v22];

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v23 = [(CACZoomController *)v38 view];
  v24 = [v23 layer];
  v25 = [v24 sublayers];

  v44 = v25;
  v48 = [v25 countByEnumeratingWithState:&v55 objects:v72 count:16];
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
          v29 = [v27 groupName];
          [v3 appendFormat:@"\n\t %@, frame: %@, name: %@", v27, v28, v29];
        }

        else
        {
          [v3 appendFormat:@"\n\t %@, frame: %@, name: %@", v27, v28, @"N/A"];
        }

        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v30 = [v27 sublayers];
        v31 = [v30 countByEnumeratingWithState:&v51 objects:v71 count:16];
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
                objc_enumerationMutation(v30);
              }

              v35 = *(*(&v51 + 1) + 8 * j);
              [v35 frame];
              v36 = NSStringFromCGRect(v80);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v37 = [v35 groupName];
                [v3 appendFormat:@"\n\t\t %@, frame: %@ name: %@", v35, v36, v37];
              }

              else
              {
                [v3 appendFormat:@"\n\t\t %@, frame: %@ name: %@", v35, v36, @"N/A"];
              }
            }

            v32 = [v30 countByEnumeratingWithState:&v51 objects:v71 count:16];
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

  NSLog(&stru_287BDCAB0.isa, v3);
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