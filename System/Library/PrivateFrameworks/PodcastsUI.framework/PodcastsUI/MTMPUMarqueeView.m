@interface MTMPUMarqueeView
- (CGSize)contentSize;
- (CGSize)intrinsicContentSize;
- (MTMPUMarqueeView)initWithFrame:(CGRect)a3;
- (MTMPUMarqueeViewDelegate)delegate;
- (NSArray)coordinatedMarqueeViews;
- (UIEdgeInsets)fadeEdgeInsets;
- (UIView)animationReferenceView;
- (id)viewForFirstBaselineLayout;
- (id)viewForLastBaselineLayout;
- (void)_applyMarqueeFade;
- (void)_applyMarqueeFadeIfNeeded;
- (void)_createMarqueeAnimationIfNeeded;
- (void)_createMarqueeAnimationIfNeededWithMaximumDuration:(double)a3 beginTime:(double)a4;
- (void)_removeMarqueeFade;
- (void)_tearDownMarqueeAnimation;
- (void)addCoordinatedMarqueeView:(id)a3;
- (void)animationDidStart:(id)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)didMoveToWindow;
- (void)invalidateIntrinsicContentSize;
- (void)layoutSubviews;
- (void)resetMarqueePosition;
- (void)setAnimationDirection:(int64_t)a3;
- (void)setAnimationReferenceView:(id)a3;
- (void)setBounds:(CGRect)a3;
- (void)setContentGap:(double)a3;
- (void)setContentSize:(CGSize)a3;
- (void)setFrame:(CGRect)a3;
- (void)setMarqueeDelay:(double)a3;
- (void)setMarqueeEnabled:(BOOL)a3 withOptions:(int64_t)a4;
- (void)setMarqueeScrollRate:(double)a3;
- (void)setViewForContentSize:(id)a3;
@end

@implementation MTMPUMarqueeView

- (MTMPUMarqueeView)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = MTMPUMarqueeView;
  v3 = [(MTMPUMarqueeView *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_marqueeDelay = 3.0;
    v3->_marqueeScrollRate = 30.0;
    v5 = *(MEMORY[0x277D768C8] + 16);
    *&v3->_fadeEdgeInsets.top = *MEMORY[0x277D768C8];
    *&v3->_fadeEdgeInsets.bottom = v5;
    v6 = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
    coordinatedMarqueeViews = v4->_coordinatedMarqueeViews;
    v4->_coordinatedMarqueeViews = v6;

    [(MTMPUMarqueeView *)v4 setClipsToBounds:1];
    v8 = [_MPUMarqueeContentView alloc];
    [(MTMPUMarqueeView *)v4 bounds];
    v9 = [(_MPUMarqueeContentView *)v8 initWithFrame:?];
    contentView = v4->_contentView;
    v4->_contentView = v9;

    [(MTMPUMarqueeView *)v4 addSubview:v4->_contentView];
  }

  return v4;
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = MTMPUMarqueeView;
  [(MTMPUMarqueeView *)&v4 didMoveToWindow];
  v3 = [(MTMPUMarqueeView *)self window];

  if (v3)
  {
    [(MTMPUMarqueeView *)self _createMarqueeAnimationIfNeeded];
  }

  else
  {
    [(MTMPUMarqueeView *)self _tearDownMarqueeAnimation];
  }
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = MTMPUMarqueeView;
  [(MTMPUMarqueeView *)&v19 layoutSubviews];
  if ([(MTMPUMarqueeView *)self animationDirection])
  {
    v3 = 4;
  }

  else
  {
    v3 = 3;
  }

  [(UIView *)self->_contentView setSemanticContentAttribute:v3];
  [(MTMPUMarqueeView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(UIView *)self->_contentView layer];
  animationDirection = self->_animationDirection;
  v14 = self->_contentSize.width + self->_contentGap;
  v20.origin.x = v5;
  v20.origin.y = v7;
  v20.size.width = v9;
  v20.size.height = v11;
  v15 = CGRectGetWidth(v20) - self->_fadeEdgeInsets.right;
  if (v14 >= v15)
  {
    v15 = v14;
  }

  if (animationDirection == 1)
  {
    v15 = -v15;
  }

  CATransform3DMakeTranslation(&v18, v15, 0.0, 0.0);
  [v12 setInstanceTransform:&v18];
  [v12 setInstanceCount:2];
  v16 = [(MTMPUMarqueeView *)self fadeOnlyWhenAnimating];
  contentView = self->_contentView;
  if (v16)
  {
    UIRectCenteredYInRectScale();
    [(UIView *)contentView setFrame:0];
  }

  else
  {
    UIRectCenteredYInRectScale();
    [(UIView *)contentView setFrame:0];
    [(MTMPUMarqueeView *)self _applyMarqueeFadeIfNeeded];
  }
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(MTMPUMarqueeView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = MTMPUMarqueeView;
  [(MTMPUMarqueeView *)&v13 setBounds:x, y, width, height];
  if (width != v9 || height != v11)
  {
    [(MTMPUMarqueeView *)self _tearDownMarqueeAnimation];
    [(MTMPUMarqueeView *)self _createMarqueeAnimationIfNeeded];
  }
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(MTMPUMarqueeView *)self frame];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = MTMPUMarqueeView;
  [(MTMPUMarqueeView *)&v13 setFrame:x, y, width, height];
  if (width != v9 || height != v11)
  {
    [(MTMPUMarqueeView *)self _tearDownMarqueeAnimation];
    [(MTMPUMarqueeView *)self _createMarqueeAnimationIfNeeded];
  }
}

- (void)invalidateIntrinsicContentSize
{
  v4.receiver = self;
  v4.super_class = MTMPUMarqueeView;
  [(MTMPUMarqueeView *)&v4 invalidateIntrinsicContentSize];
  viewForContentSize = self->_viewForContentSize;
  if (viewForContentSize)
  {
    [(UIView *)viewForContentSize intrinsicContentSize];
    [(MTMPUMarqueeView *)self setContentSize:?];
  }
}

- (CGSize)intrinsicContentSize
{
  viewForContentSize = self->_viewForContentSize;
  if (viewForContentSize)
  {
    [(UIView *)viewForContentSize intrinsicContentSize];
  }

  else
  {
    width = self->_contentSize.width;
    height = self->_contentSize.height;
  }

  v6 = width + self->_fadeEdgeInsets.left + self->_fadeEdgeInsets.right;
  result.height = height;
  result.width = v6;
  return result;
}

- (id)viewForFirstBaselineLayout
{
  v2 = [(UIView *)self->_contentView subviews];
  v3 = [v2 firstObject];
  v4 = [v3 viewForFirstBaselineLayout];

  return v4;
}

- (id)viewForLastBaselineLayout
{
  v2 = [(UIView *)self->_contentView subviews];
  v3 = [v2 lastObject];
  v4 = [v3 viewForLastBaselineLayout];

  return v4;
}

- (void)animationDidStart:(id)a3
{
  v5 = [a3 valueForKey:@"_MPUMarqueeViewAnimationIdentifierKey"];
  if ([v5 isEqual:self->_currentAnimationID])
  {
    v4 = [(MTMPUMarqueeView *)self fadeOnlyWhenAnimating];

    if (v4)
    {

      [(MTMPUMarqueeView *)self _applyMarqueeFadeIfNeeded];
    }
  }

  else
  {
  }
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v4 = a4;
  v11 = a3;
  if ([(MTMPUMarqueeView *)self fadeOnlyWhenAnimating])
  {
    [(MTMPUMarqueeView *)self _removeMarqueeFade];
  }

  v6 = [v11 valueForKey:@"_MPUMarqueeViewAnimationIdentifierKey"];
  v7 = [v6 isEqual:self->_currentAnimationID];

  if (v7)
  {
    [(MTMPUMarqueeView *)self _tearDownMarqueeAnimation];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = objc_loadWeakRetained(&self->_delegate);
      [v10 marqueeViewDidEndMarqueeIteration:self finished:v4];
    }

    if (v4)
    {
      [(MTMPUMarqueeView *)self _createMarqueeAnimationIfNeeded];
    }
  }
}

- (void)setContentGap:(double)a3
{
  if (self->_contentGap != a3)
  {
    self->_contentGap = a3;
    [(MTMPUMarqueeView *)self _tearDownMarqueeAnimation];
    [(MTMPUMarqueeView *)self _createMarqueeAnimationIfNeeded];

    [(MTMPUMarqueeView *)self setNeedsLayout];
  }
}

- (void)setContentSize:(CGSize)a3
{
  if (self->_contentSize.width != a3.width || self->_contentSize.height != a3.height)
  {
    self->_contentSize = a3;
    [(MTMPUMarqueeView *)self _tearDownMarqueeAnimation];
    [(MTMPUMarqueeView *)self _createMarqueeAnimationIfNeeded];

    [(MTMPUMarqueeView *)self setNeedsLayout];
  }
}

- (void)setMarqueeDelay:(double)a3
{
  if (self->_marqueeDelay != a3)
  {
    self->_marqueeDelay = a3;
    [(MTMPUMarqueeView *)self _createMarqueeAnimationIfNeeded];
  }
}

- (void)setAnimationReferenceView:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_animationReferenceView);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_animationReferenceView, obj);
    [(MTMPUMarqueeView *)self _createMarqueeAnimationIfNeeded];
    v5 = obj;
  }
}

- (void)setMarqueeEnabled:(BOOL)a3 withOptions:(int64_t)a4
{
  v4 = a4;
  if (self->_options != a4)
  {
    self->_options = a4;
    p_marqueeEnabled = &self->_marqueeEnabled;
    if (self->_marqueeEnabled == a3)
    {
LABEL_13:
      [(MTMPUMarqueeView *)self _createMarqueeAnimationIfNeeded:v15];
      return;
    }

LABEL_5:
    *p_marqueeEnabled = a3;
    v7 = [(UIView *)self->_contentView layer];
    v8 = v7;
    if ((v4 & 1) == 0 || ([v7 animationForKey:@"_MPUMarqueeViewLayerAnimationKey"], (v9 = objc_claimAutoreleasedReturnValue()) != 0) && ((v10 = v9, objc_msgSend(v8, "presentationLayer"), v11 = objc_claimAutoreleasedReturnValue(), (v12 = v11) == 0) ? (v16 = 0u, v17 = 0u, v15 = 0u, v13 = 0.0) : (objc_msgSend(v11, "affineTransform"), v13 = *&v17), v14 = fabs(v13), v12, v10, v14 < 2.22044605e-16))
    {
      [(MTMPUMarqueeView *)self _tearDownMarqueeAnimation:v15];
    }

    goto LABEL_13;
  }

  p_marqueeEnabled = &self->_marqueeEnabled;
  if (self->_marqueeEnabled != a3)
  {
    goto LABEL_5;
  }
}

- (void)setMarqueeScrollRate:(double)a3
{
  if (self->_marqueeScrollRate != a3)
  {
    self->_marqueeScrollRate = a3;
    [(MTMPUMarqueeView *)self _tearDownMarqueeAnimation];

    [(MTMPUMarqueeView *)self _createMarqueeAnimationIfNeeded];
  }
}

- (void)setViewForContentSize:(id)a3
{
  v5 = a3;
  if (self->_viewForContentSize != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_viewForContentSize, a3);
    [(MTMPUMarqueeView *)self invalidateIntrinsicContentSize];
    v5 = v6;
  }
}

- (void)setAnimationDirection:(int64_t)a3
{
  if (self->_animationDirection != a3)
  {
    self->_animationDirection = a3;
    [(MTMPUMarqueeView *)self setNeedsLayout];
  }
}

- (void)addCoordinatedMarqueeView:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_primaryMarqueeView);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_primaryMarqueeView);
    [v5 addCoordinatedMarqueeView:v7];

    v6 = v5;
  }

  else
  {
    objc_storeWeak(v7 + 54, self);
    [(NSPointerArray *)self->_coordinatedMarqueeViews addPointer:v7];
    v6 = v7;
  }
}

- (NSArray)coordinatedMarqueeViews
{
  [(NSPointerArray *)self->_coordinatedMarqueeViews compact];
  coordinatedMarqueeViews = self->_coordinatedMarqueeViews;

  return [(NSPointerArray *)coordinatedMarqueeViews allObjects];
}

- (void)resetMarqueePosition
{
  [(MTMPUMarqueeView *)self _tearDownMarqueeAnimation];

  [(MTMPUMarqueeView *)self _createMarqueeAnimationIfNeeded];
}

- (void)_applyMarqueeFadeIfNeeded
{
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_fadeEdgeInsets.top, *MEMORY[0x277D768C8]), vceqq_f64(*&self->_fadeEdgeInsets.bottom, *(MEMORY[0x277D768C8] + 16))))))
  {
    [(MTMPUMarqueeView *)self _removeMarqueeFade];
  }

  else
  {
    [(MTMPUMarqueeView *)self _applyMarqueeFade];
  }
}

- (void)_removeMarqueeFade
{
  v2 = [(MTMPUMarqueeView *)self layer];
  [v2 setMask:0];
}

- (void)_applyMarqueeFade
{
  v22[4] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CD9FF0] disableActions];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v4 = [(MTMPUMarqueeView *)self layer];
  v5 = [v4 mask];
  if (!v5)
  {
    v5 = [MEMORY[0x277CD9EB0] layer];
    v6 = [MEMORY[0x277D75348] whiteColor];
    v7 = [v6 CGColor];

    v8 = [MEMORY[0x277D75348] clearColor];
    v9 = [v8 CGColor];

    v22[0] = v9;
    v22[1] = v7;
    v22[2] = v7;
    v22[3] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];
    [v5 setColors:v10];

    [v4 setMask:v5];
  }

  [(MTMPUMarqueeView *)self bounds];
  x = v23.origin.x;
  y = v23.origin.y;
  width = v23.size.width;
  height = v23.size.height;
  v15 = CGRectGetWidth(v23);
  v21[0] = &unk_282CCBBD8;
  p_fadeEdgeInsets = &self->_fadeEdgeInsets;
  v17 = [MEMORY[0x277CCABB0] numberWithDouble:self->_fadeEdgeInsets.left / v15];
  v21[1] = v17;
  v18 = [MEMORY[0x277CCABB0] numberWithDouble:(v15 - p_fadeEdgeInsets->right) / v15];
  v21[2] = v18;
  v21[3] = &unk_282CCBBE8;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];
  [v5 setLocations:v19];

  [v5 setBounds:{x, y, width, height}];
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  MidX = CGRectGetMidX(v24);
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  [v5 setPosition:{MidX, CGRectGetMidY(v25)}];
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  [v5 setStartPoint:{0.0, CGRectGetMidY(v26)}];
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  [v5 setEndPoint:{1.0, CGRectGetMidY(v27)}];
  [MEMORY[0x277CD9FF0] setDisableActions:v3];
}

- (void)_createMarqueeAnimationIfNeeded
{
  v34 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_primaryMarqueeView);

  if (WeakRetained)
  {
    v23 = objc_loadWeakRetained(&self->_primaryMarqueeView);
    [v23 _createMarqueeAnimationIfNeeded];
  }

  else
  {
    v4 = [(MTMPUMarqueeView *)self superview];

    if (v4 && self->_marqueeEnabled)
    {
      [(MTMPUMarqueeView *)self _duration];
      v6 = v5;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v7 = self->_coordinatedMarqueeViews;
      v8 = [(NSPointerArray *)v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v29;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v29 != v10)
            {
              objc_enumerationMutation(v7);
            }

            [*(*(&v28 + 1) + 8 * i) _duration];
            if (v6 < v12)
            {
              v6 = v12;
            }
          }

          v9 = [(NSPointerArray *)v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v9);
      }

      v13 = [(UIView *)self->_contentView layer];
      v14 = [v13 animationForKey:@"_MPUMarqueeViewLayerAnimationKey"];
      v15 = v14;
      if (v14)
      {
        [v14 beginTime];
        v17 = v16;
      }

      else
      {
        v17 = CACurrentMediaTime() + self->_marqueeDelay;
      }

      [(MTMPUMarqueeView *)self _createMarqueeAnimationIfNeededWithMaximumDuration:v6 beginTime:v17];
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v18 = self->_coordinatedMarqueeViews;
      v19 = [(NSPointerArray *)v18 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v25;
        do
        {
          for (j = 0; j != v20; ++j)
          {
            if (*v25 != v21)
            {
              objc_enumerationMutation(v18);
            }

            [*(*(&v24 + 1) + 8 * j) _createMarqueeAnimationIfNeededWithMaximumDuration:v6 beginTime:v17];
          }

          v20 = [(NSPointerArray *)v18 countByEnumeratingWithState:&v24 objects:v32 count:16];
        }

        while (v20);
      }
    }
  }
}

- (void)_createMarqueeAnimationIfNeededWithMaximumDuration:(double)a3 beginTime:(double)a4
{
  v26[3] = *MEMORY[0x277D85DE8];
  v7 = [(UIView *)self->_contentView layer];
  v8 = [v7 animationForKey:@"_MPUMarqueeViewLayerAnimationKey"];
  [(MTMPUMarqueeView *)self bounds];
  Width = CGRectGetWidth(v27);
  if (!v8 && self->_contentSize.width - (Width - self->_fadeEdgeInsets.left - self->_fadeEdgeInsets.right) > 0.00000011920929)
  {
    v10 = objc_alloc_init(MEMORY[0x277CCAD78]);
    currentAnimationID = self->_currentAnimationID;
    self->_currentAnimationID = v10;

    WeakRetained = objc_loadWeakRetained(&self->_animationReferenceView);
    [WeakRetained bounds];
    v13 = CGRectGetWidth(v28) - self->_fadeEdgeInsets.left - self->_fadeEdgeInsets.right - self->_contentSize.width;

    if (v13 < 0.0)
    {
      v13 = 0.0;
    }

    v14 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"transform.translation.x"];
    v15 = -self->_contentSize.width - self->_contentGap - v13;
    v16 = [(MTMPUMarqueeView *)self animationDirection];
    v17 = -v15;
    if (v16 != 1)
    {
      v17 = v15;
    }

    v18 = [MEMORY[0x277CCABB0] numberWithDouble:v17];
    [(MTMPUMarqueeView *)self _duration];
    v20 = v19;
    v26[0] = &unk_282CCBBD8;
    v26[1] = v18;
    v26[2] = v18;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:3];
    [v14 setValues:v21];

    v25[0] = &unk_282CCBBD8;
    v22 = [MEMORY[0x277CCABB0] numberWithDouble:v20 / a3];
    v25[1] = v22;
    v25[2] = &unk_282CCBBE8;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:3];
    [v14 setKeyTimes:v23];

    [v14 setDuration:a3];
    [v14 setBeginTime:a4];
    v24 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C8]];
    [v14 setTimingFunction:v24];

    [v14 setDelegate:self];
    [v14 setValue:self->_currentAnimationID forKey:@"_MPUMarqueeViewAnimationIdentifierKey"];
    [v14 setFrameInterval:0.016];
    [v7 addAnimation:v14 forKey:@"_MPUMarqueeViewLayerAnimationKey"];
  }
}

- (void)_tearDownMarqueeAnimation
{
  v2 = [(UIView *)self->_contentView layer];
  [v2 removeAnimationForKey:@"_MPUMarqueeViewLayerAnimationKey"];
}

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIView)animationReferenceView
{
  WeakRetained = objc_loadWeakRetained(&self->_animationReferenceView);

  return WeakRetained;
}

- (UIEdgeInsets)fadeEdgeInsets
{
  top = self->_fadeEdgeInsets.top;
  left = self->_fadeEdgeInsets.left;
  bottom = self->_fadeEdgeInsets.bottom;
  right = self->_fadeEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (MTMPUMarqueeViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end