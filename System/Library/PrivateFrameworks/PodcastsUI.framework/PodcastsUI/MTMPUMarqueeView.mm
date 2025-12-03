@interface MTMPUMarqueeView
- (CGSize)contentSize;
- (CGSize)intrinsicContentSize;
- (MTMPUMarqueeView)initWithFrame:(CGRect)frame;
- (MTMPUMarqueeViewDelegate)delegate;
- (NSArray)coordinatedMarqueeViews;
- (UIEdgeInsets)fadeEdgeInsets;
- (UIView)animationReferenceView;
- (id)viewForFirstBaselineLayout;
- (id)viewForLastBaselineLayout;
- (void)_applyMarqueeFade;
- (void)_applyMarqueeFadeIfNeeded;
- (void)_createMarqueeAnimationIfNeeded;
- (void)_createMarqueeAnimationIfNeededWithMaximumDuration:(double)duration beginTime:(double)time;
- (void)_removeMarqueeFade;
- (void)_tearDownMarqueeAnimation;
- (void)addCoordinatedMarqueeView:(id)view;
- (void)animationDidStart:(id)start;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)didMoveToWindow;
- (void)invalidateIntrinsicContentSize;
- (void)layoutSubviews;
- (void)resetMarqueePosition;
- (void)setAnimationDirection:(int64_t)direction;
- (void)setAnimationReferenceView:(id)view;
- (void)setBounds:(CGRect)bounds;
- (void)setContentGap:(double)gap;
- (void)setContentSize:(CGSize)size;
- (void)setFrame:(CGRect)frame;
- (void)setMarqueeDelay:(double)delay;
- (void)setMarqueeEnabled:(BOOL)enabled withOptions:(int64_t)options;
- (void)setMarqueeScrollRate:(double)rate;
- (void)setViewForContentSize:(id)size;
@end

@implementation MTMPUMarqueeView

- (MTMPUMarqueeView)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = MTMPUMarqueeView;
  v3 = [(MTMPUMarqueeView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_marqueeDelay = 3.0;
    v3->_marqueeScrollRate = 30.0;
    v5 = *(MEMORY[0x277D768C8] + 16);
    *&v3->_fadeEdgeInsets.top = *MEMORY[0x277D768C8];
    *&v3->_fadeEdgeInsets.bottom = v5;
    weakObjectsPointerArray = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
    coordinatedMarqueeViews = v4->_coordinatedMarqueeViews;
    v4->_coordinatedMarqueeViews = weakObjectsPointerArray;

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
  window = [(MTMPUMarqueeView *)self window];

  if (window)
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
  layer = [(UIView *)self->_contentView layer];
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
  [layer setInstanceTransform:&v18];
  [layer setInstanceCount:2];
  fadeOnlyWhenAnimating = [(MTMPUMarqueeView *)self fadeOnlyWhenAnimating];
  contentView = self->_contentView;
  if (fadeOnlyWhenAnimating)
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

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
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

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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
  subviews = [(UIView *)self->_contentView subviews];
  firstObject = [subviews firstObject];
  viewForFirstBaselineLayout = [firstObject viewForFirstBaselineLayout];

  return viewForFirstBaselineLayout;
}

- (id)viewForLastBaselineLayout
{
  subviews = [(UIView *)self->_contentView subviews];
  lastObject = [subviews lastObject];
  viewForLastBaselineLayout = [lastObject viewForLastBaselineLayout];

  return viewForLastBaselineLayout;
}

- (void)animationDidStart:(id)start
{
  v5 = [start valueForKey:@"_MPUMarqueeViewAnimationIdentifierKey"];
  if ([v5 isEqual:self->_currentAnimationID])
  {
    fadeOnlyWhenAnimating = [(MTMPUMarqueeView *)self fadeOnlyWhenAnimating];

    if (fadeOnlyWhenAnimating)
    {

      [(MTMPUMarqueeView *)self _applyMarqueeFadeIfNeeded];
    }
  }

  else
  {
  }
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  finishedCopy = finished;
  stopCopy = stop;
  if ([(MTMPUMarqueeView *)self fadeOnlyWhenAnimating])
  {
    [(MTMPUMarqueeView *)self _removeMarqueeFade];
  }

  v6 = [stopCopy valueForKey:@"_MPUMarqueeViewAnimationIdentifierKey"];
  v7 = [v6 isEqual:self->_currentAnimationID];

  if (v7)
  {
    [(MTMPUMarqueeView *)self _tearDownMarqueeAnimation];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = objc_loadWeakRetained(&self->_delegate);
      [v10 marqueeViewDidEndMarqueeIteration:self finished:finishedCopy];
    }

    if (finishedCopy)
    {
      [(MTMPUMarqueeView *)self _createMarqueeAnimationIfNeeded];
    }
  }
}

- (void)setContentGap:(double)gap
{
  if (self->_contentGap != gap)
  {
    self->_contentGap = gap;
    [(MTMPUMarqueeView *)self _tearDownMarqueeAnimation];
    [(MTMPUMarqueeView *)self _createMarqueeAnimationIfNeeded];

    [(MTMPUMarqueeView *)self setNeedsLayout];
  }
}

- (void)setContentSize:(CGSize)size
{
  if (self->_contentSize.width != size.width || self->_contentSize.height != size.height)
  {
    self->_contentSize = size;
    [(MTMPUMarqueeView *)self _tearDownMarqueeAnimation];
    [(MTMPUMarqueeView *)self _createMarqueeAnimationIfNeeded];

    [(MTMPUMarqueeView *)self setNeedsLayout];
  }
}

- (void)setMarqueeDelay:(double)delay
{
  if (self->_marqueeDelay != delay)
  {
    self->_marqueeDelay = delay;
    [(MTMPUMarqueeView *)self _createMarqueeAnimationIfNeeded];
  }
}

- (void)setAnimationReferenceView:(id)view
{
  obj = view;
  WeakRetained = objc_loadWeakRetained(&self->_animationReferenceView);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_animationReferenceView, obj);
    [(MTMPUMarqueeView *)self _createMarqueeAnimationIfNeeded];
    v5 = obj;
  }
}

- (void)setMarqueeEnabled:(BOOL)enabled withOptions:(int64_t)options
{
  optionsCopy = options;
  if (self->_options != options)
  {
    self->_options = options;
    p_marqueeEnabled = &self->_marqueeEnabled;
    if (self->_marqueeEnabled == enabled)
    {
LABEL_13:
      [(MTMPUMarqueeView *)self _createMarqueeAnimationIfNeeded:v15];
      return;
    }

LABEL_5:
    *p_marqueeEnabled = enabled;
    layer = [(UIView *)self->_contentView layer];
    v8 = layer;
    if ((optionsCopy & 1) == 0 || ([layer animationForKey:@"_MPUMarqueeViewLayerAnimationKey"], (v9 = objc_claimAutoreleasedReturnValue()) != 0) && ((v10 = v9, objc_msgSend(v8, "presentationLayer"), v11 = objc_claimAutoreleasedReturnValue(), (v12 = v11) == 0) ? (v16 = 0u, v17 = 0u, v15 = 0u, v13 = 0.0) : (objc_msgSend(v11, "affineTransform"), v13 = *&v17), v14 = fabs(v13), v12, v10, v14 < 2.22044605e-16))
    {
      [(MTMPUMarqueeView *)self _tearDownMarqueeAnimation:v15];
    }

    goto LABEL_13;
  }

  p_marqueeEnabled = &self->_marqueeEnabled;
  if (self->_marqueeEnabled != enabled)
  {
    goto LABEL_5;
  }
}

- (void)setMarqueeScrollRate:(double)rate
{
  if (self->_marqueeScrollRate != rate)
  {
    self->_marqueeScrollRate = rate;
    [(MTMPUMarqueeView *)self _tearDownMarqueeAnimation];

    [(MTMPUMarqueeView *)self _createMarqueeAnimationIfNeeded];
  }
}

- (void)setViewForContentSize:(id)size
{
  sizeCopy = size;
  if (self->_viewForContentSize != sizeCopy)
  {
    v6 = sizeCopy;
    objc_storeStrong(&self->_viewForContentSize, size);
    [(MTMPUMarqueeView *)self invalidateIntrinsicContentSize];
    sizeCopy = v6;
  }
}

- (void)setAnimationDirection:(int64_t)direction
{
  if (self->_animationDirection != direction)
  {
    self->_animationDirection = direction;
    [(MTMPUMarqueeView *)self setNeedsLayout];
  }
}

- (void)addCoordinatedMarqueeView:(id)view
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_primaryMarqueeView);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_primaryMarqueeView);
    [v5 addCoordinatedMarqueeView:viewCopy];

    v6 = v5;
  }

  else
  {
    objc_storeWeak(viewCopy + 54, self);
    [(NSPointerArray *)self->_coordinatedMarqueeViews addPointer:viewCopy];
    v6 = viewCopy;
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
  layer = [(MTMPUMarqueeView *)self layer];
  [layer setMask:0];
}

- (void)_applyMarqueeFade
{
  v22[4] = *MEMORY[0x277D85DE8];
  disableActions = [MEMORY[0x277CD9FF0] disableActions];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  layer = [(MTMPUMarqueeView *)self layer];
  mask = [layer mask];
  if (!mask)
  {
    mask = [MEMORY[0x277CD9EB0] layer];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    cGColor = [whiteColor CGColor];

    clearColor = [MEMORY[0x277D75348] clearColor];
    cGColor2 = [clearColor CGColor];

    v22[0] = cGColor2;
    v22[1] = cGColor;
    v22[2] = cGColor;
    v22[3] = cGColor2;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];
    [mask setColors:v10];

    [layer setMask:mask];
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
  [mask setLocations:v19];

  [mask setBounds:{x, y, width, height}];
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  MidX = CGRectGetMidX(v24);
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  [mask setPosition:{MidX, CGRectGetMidY(v25)}];
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  [mask setStartPoint:{0.0, CGRectGetMidY(v26)}];
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  [mask setEndPoint:{1.0, CGRectGetMidY(v27)}];
  [MEMORY[0x277CD9FF0] setDisableActions:disableActions];
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
    superview = [(MTMPUMarqueeView *)self superview];

    if (superview && self->_marqueeEnabled)
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

      layer = [(UIView *)self->_contentView layer];
      v14 = [layer animationForKey:@"_MPUMarqueeViewLayerAnimationKey"];
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

- (void)_createMarqueeAnimationIfNeededWithMaximumDuration:(double)duration beginTime:(double)time
{
  v26[3] = *MEMORY[0x277D85DE8];
  layer = [(UIView *)self->_contentView layer];
  v8 = [layer animationForKey:@"_MPUMarqueeViewLayerAnimationKey"];
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
    animationDirection = [(MTMPUMarqueeView *)self animationDirection];
    v17 = -v15;
    if (animationDirection != 1)
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
    duration = [MEMORY[0x277CCABB0] numberWithDouble:v20 / duration];
    v25[1] = duration;
    v25[2] = &unk_282CCBBE8;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:3];
    [v14 setKeyTimes:v23];

    [v14 setDuration:duration];
    [v14 setBeginTime:time];
    v24 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C8]];
    [v14 setTimingFunction:v24];

    [v14 setDelegate:self];
    [v14 setValue:self->_currentAnimationID forKey:@"_MPUMarqueeViewAnimationIdentifierKey"];
    [v14 setFrameInterval:0.016];
    [layer addAnimation:v14 forKey:@"_MPUMarqueeViewLayerAnimationKey"];
  }
}

- (void)_tearDownMarqueeAnimation
{
  layer = [(UIView *)self->_contentView layer];
  [layer removeAnimationForKey:@"_MPUMarqueeViewLayerAnimationKey"];
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