@interface SKUIStackView
- (CGPoint)_centerInPerspectiveTargetViewCoordinates;
- (CGSize)_levelInsetSize;
- (CGSize)_normalizedDistanceFromVanishingPointForCenter:(CGPoint)a3 perspectiveTargetView:(id)a4;
- (CGSize)_sizeOfItemAtIndex:(double)a3;
- (SKUIStackView)initWithStackViewStyle:(int64_t)a3;
- (UIOffset)_relativeOffsetForMinimumRelativeOffset:(UIOffset)a3 maximumRelativeOffset:(UIOffset)a4 normalizedDistanceFromVanishingPoint:(CGSize)a5;
- (UIOffset)_relativeOffsetOfItemAtIndex:(int64_t)a3 withCenter:(CGPoint)a4;
- (id)_initSKUIStackView;
- (int64_t)_stackDepth;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)performCompressionAnimationWithCompletionHandler:(id)a3;
- (void)setImage:(id)a3;
@end

@implementation SKUIStackView

- (id)_initSKUIStackView
{
  v5.receiver = self;
  v5.super_class = SKUIStackView;
  v2 = [(SKUIStackView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SKUIStackView *)v2 setClipsToBounds:0];
  }

  return v3;
}

- (SKUIStackView)initWithStackViewStyle:(int64_t)a3
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIStackView initWithStackViewStyle:];
  }

  v5 = [(SKUIStackView *)self _initSKUIStackView];
  v6 = v5;
  if (v5)
  {
    v5->_stackViewStyle = a3;
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    stackViews = v6->_stackViews;
    v6->_stackViews = v7;

    if ([(SKUIStackView *)v6 _stackDepth]>= 1)
    {
      v9 = 0;
      do
      {
        v10 = objc_alloc_init(SKUIStackViewItemView);
        v11 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.8];
        [(SKUIStackViewItemView *)v10 setBorderColor:v11];

        stackViewStyle = v6->_stackViewStyle;
        if (stackViewStyle == 1)
        {
          [(SKUIStackViewItemView *)v10 setAlpha:initWithStackViewStyle__sShallowAlphas[v9]];
        }

        else if (!stackViewStyle)
        {
          [(SKUIStackViewItemView *)v10 setAlpha:initWithStackViewStyle__sDefaultAlphas[v9]];
          [(SKUIStackViewItemView *)v10 setShouldFlipImageHorizontal:initWithStackViewStyle__sDefaultFlipHorizontal[v9]];
          [(SKUIStackViewItemView *)v10 setShouldFlipImageVertical:initWithStackViewStyle__sDefaultFlipVertical[v9]];
        }

        [(SKUIStackView *)v6 insertSubview:v10 atIndex:0];
        [(NSMutableArray *)v6->_stackViews addObject:v10];

        ++v9;
      }

      while (v9 < [(SKUIStackView *)v6 _stackDepth]);
    }
  }

  return v6;
}

- (void)performCompressionAnimationWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(SKUIStackView *)self superview];
  [(SKUIStackView *)self center];
  [v5 convertPoint:0 toView:?];
  v7 = v6;
  v9 = v8;

  stackViews = self->_stackViews;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__SKUIStackView_performCompressionAnimationWithCompletionHandler___block_invoke;
  v12[3] = &unk_2781FF648;
  v14 = v7;
  v15 = v9;
  v12[4] = self;
  v13 = v4;
  v11 = v4;
  [(NSMutableArray *)stackViews enumerateObjectsUsingBlock:v12];
}

void __66__SKUIStackView_performCompressionAnimationWithCompletionHandler___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v45[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v39 = a3;
  [*(a1 + 32) _sizeOfItemAtIndex:a3 + 0.75];
  v11 = v10;
  v13 = v12;
  [*(a1 + 32) _relativeOffsetOfItemAtIndex:a3 withCenter:{*(a1 + 48), *(a1 + 56)}];
  v15 = v14;
  v17 = v16;
  [*(a1 + 32) _relativeOffsetOfItemAtIndex:(a3 + 0.75) withCenter:{*(a1 + 48), *(a1 + 56)}];
  v19 = v18;
  v21 = v20;
  v22 = [v5 layer];

  memset(&v44, 0, sizeof(v44));
  CATransform3DMakeScale(&v44, v11 / v7, v13 / v9, 1.0);
  v42 = v44;
  CATransform3DTranslate(&v43, &v42, v19 - v15, v21 - v17, 0.0);
  v44 = v43;
  v23 = [MEMORY[0x277CD9FA0] animationWithKeyPath:@"transform"];
  v24 = MEMORY[0x277CCAE60];
  v25 = [v22 presentationLayer];
  v26 = v25;
  if (!v25)
  {
    v25 = v22;
  }

  if (v25)
  {
    [v25 transform];
  }

  else
  {
    memset(&v43, 0, sizeof(v43));
  }

  v27 = [v24 valueWithCATransform3D:&v43];
  [v23 setFromValue:v27];

  v43 = v44;
  v28 = [MEMORY[0x277CCAE60] valueWithCATransform3D:&v43];
  [v23 setToValue:v28];

  [v23 setDamping:30.0];
  [v23 setStiffness:300.0];
  [v23 setDuration:1.0];
  [v23 setBeginTime:v39 * 0.075];
  v29 = [MEMORY[0x277CD9FA0] animationWithKeyPath:@"transform"];
  v30 = MEMORY[0x277CCAE60];
  if (v22)
  {
    [v22 transform];
  }

  else
  {
    memset(&v43, 0, sizeof(v43));
  }

  v31 = [v30 valueWithCATransform3D:&v43];
  [v29 setToValue:v31];

  [v29 setDamping:30.0];
  [v29 setStiffness:300.0];
  [v29 setDuration:1.5];
  [v29 setBeginTime:v39 * 0.075 + 0.25];
  v32 = [MEMORY[0x277CD9E00] animation];
  v45[0] = v23;
  v45[1] = v29;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
  [v32 setAnimations:v33];

  [v23 duration];
  v35 = v34;
  [v29 duration];
  [v32 setDuration:v35 + v36];
  if (*(a1 + 40) && [*(*(a1 + 32) + 416) count] - 1 == a3)
  {
    v37 = [SKUIBlockAnimationDelegate alloc];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __66__SKUIStackView_performCompressionAnimationWithCompletionHandler___block_invoke_2;
    v40[3] = &unk_2781FF620;
    v41 = *(a1 + 40);
    v38 = [(SKUIBlockAnimationDelegate *)v37 initWithCompletionHandler:v40];
    [v32 setDelegate:v38];
  }

  [v22 addAnimation:v32 forKey:@"SKUIStackViewAnimationKey"];
}

- (void)setImage:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_stackViews;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

        [*(*(&v10 + 1) + 8 * v9++) setImage:{v4, v10}];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = SKUIStackView;
  [(SKUIStackView *)&v5 didMoveToWindow];
  v3 = [(SKUIStackView *)self window];
  window = self->_window;
  self->_window = v3;
}

- (void)layoutSubviews
{
  [(SKUIStackView *)self _centerInPerspectiveTargetViewCoordinates];
  stackViews = self->_stackViews;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__SKUIStackView_layoutSubviews__block_invoke;
  v6[3] = &unk_2781FF670;
  v6[4] = self;
  v6[5] = v4;
  v6[6] = v5;
  [(NSMutableArray *)stackViews enumerateObjectsUsingBlock:v6];
}

void __31__SKUIStackView_layoutSubviews__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v26 = a2;
  [*(a1 + 32) bounds];
  x = v28.origin.x;
  y = v28.origin.y;
  width = v28.size.width;
  height = v28.size.height;
  CGRectGetMidX(v28);
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  CGRectGetMidY(v29);
  [*(a1 + 32) _sizeOfItemAtIndex:a3];
  v10 = v9;
  v12 = v11;
  [*(a1 + 32) _relativeOffsetOfItemAtIndex:a3 withCenter:{*(a1 + 40), *(a1 + 48)}];
  UIRectCenteredAboutPointScale();
  v13 = v30.origin.x;
  v14 = v30.origin.y;
  v15 = v30.size.width;
  v16 = v30.size.height;
  MidX = CGRectGetMidX(v30);
  v31.origin.x = v13;
  v31.origin.y = v14;
  v31.size.width = v15;
  v31.size.height = v16;
  MidY = CGRectGetMidY(v31);
  [v26 center];
  if (MidX != v20 || MidY != v19)
  {
    [v26 setCenter:{MidX, MidY}];
  }

  [v26 bounds];
  v33.origin.x = v22;
  v33.origin.y = v23;
  v33.size.width = v24;
  v33.size.height = v25;
  v32.origin.x = 0.0;
  v32.origin.y = 0.0;
  v32.size.width = v10;
  v32.size.height = v12;
  if (!CGRectEqualToRect(v32, v33))
  {
    [v26 setBounds:{0.0, 0.0, v10, v12}];
  }
}

- (CGPoint)_centerInPerspectiveTargetViewCoordinates
{
  if (self->_window)
  {
    [(SKUIStackView *)self bounds];
    x = v11.origin.x;
    y = v11.origin.y;
    width = v11.size.width;
    height = v11.size.height;
    MidX = CGRectGetMidX(v11);
    v12.origin.x = x;
    v12.origin.y = y;
    v12.size.width = width;
    v12.size.height = height;
    [(SKUIStackView *)self convertPoint:self->_window toView:MidX, CGRectGetMidY(v12)];
  }

  else
  {
    v8 = *MEMORY[0x277CBF348];
    v9 = *(MEMORY[0x277CBF348] + 8);
  }

  result.y = v9;
  result.x = v8;
  return result;
}

- (CGSize)_levelInsetSize
{
  v2 = 3.0;
  v3 = 3.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)_normalizedDistanceFromVanishingPointForCenter:(CGPoint)a3 perspectiveTargetView:(id)a4
{
  if (a4)
  {
    y = a3.y;
    x = a3.x;
    [a4 bounds];
    v6 = v15.origin.x;
    v7 = v15.origin.y;
    width = v15.size.width;
    height = v15.size.height;
    v10 = fmax(CGRectGetWidth(v15) - x, x);
    v16.origin.x = v6;
    v16.origin.y = v7;
    v16.size.width = width;
    v16.size.height = height;
    v11 = fmax(CGRectGetHeight(v16) + 1000.0, -1000.0);
    v12 = (x - x) / v10;
    v13 = (-1000.0 - y) / v11;
  }

  else
  {
    v12 = *MEMORY[0x277CBF3A8];
    v13 = *(MEMORY[0x277CBF3A8] + 8);
  }

  result.height = v13;
  result.width = v12;
  return result;
}

- (UIOffset)_relativeOffsetForMinimumRelativeOffset:(UIOffset)a3 maximumRelativeOffset:(UIOffset)a4 normalizedDistanceFromVanishingPoint:(CGSize)a5
{
  v5 = a3.horizontal + (fabs(a3.horizontal) + fabs(a4.horizontal)) * (a5.width * 0.5 + 0.5);
  v6 = a3.vertical + (fabs(a3.vertical) + fabs(a4.vertical)) * (a5.height * 0.5 + 0.5);
  result.vertical = v6;
  result.horizontal = v5;
  return result;
}

- (UIOffset)_relativeOffsetOfItemAtIndex:(int64_t)a3 withCenter:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  [(SKUIStackView *)self _levelInsetSize];
  v9 = (v8 + v8) * a3;
  v11 = (v10 + v10) * a3;
  [(SKUIStackView *)self _normalizedDistanceFromVanishingPointForCenter:self->_window perspectiveTargetView:x, y];

  [(SKUIStackView *)self _relativeOffsetForMinimumRelativeOffset:-(3 * a3) - v9 * 0.5 maximumRelativeOffset:-(3 * a3) - v11 * 0.5 normalizedDistanceFromVanishingPoint:v9 * 0.5 + (3 * a3), v11 * 0.5 + (3 * a3), v12, v13];
  result.vertical = v15;
  result.horizontal = v14;
  return result;
}

- (CGSize)_sizeOfItemAtIndex:(double)a3
{
  [(SKUIStackView *)self bounds];
  v6 = v5;
  v8 = v7;
  [(SKUIStackView *)self _levelInsetSize];
  v11 = v6 - (v9 + v9) * a3;
  v12 = v8 - (v10 + v10) * a3;
  result.height = v12;
  result.width = v11;
  return result;
}

- (int64_t)_stackDepth
{
  if (self->_stackViewStyle)
  {
    return 3;
  }

  else
  {
    return 6;
  }
}

- (void)initWithStackViewStyle:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIStackView initWithStackViewStyle:]";
}

@end