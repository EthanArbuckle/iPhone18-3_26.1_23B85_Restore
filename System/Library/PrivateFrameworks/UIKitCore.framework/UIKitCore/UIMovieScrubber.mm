@interface UIMovieScrubber
- (BOOL)cancelTouchTracking;
- (BOOL)pointInsideThumb:(CGPoint)thumb withEvent:(id)event;
- (CGRect)_editingRect;
- (CGRect)_editingRectForStartTime:(double)time endTime:(double)endTime;
- (CGRect)thumbRectForValue:(double)value;
- (CGRect)trackRect;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)result;
- (UIEdgeInsets)alignmentMargins;
- (UIMovieScrubber)initWithFrame:(CGRect)frame;
- (UIMovieScrubberDataSource)dataSource;
- (UIMovieScrubberDelegate)delegate;
- (double)_valueForLocatable:(id)locatable;
- (double)movieScrubberTrackViewDuration:(id)duration;
- (double)movieScrubberTrackViewThumbnailAspectRatio:(id)ratio;
- (double)trimEndValue;
- (double)trimStartValue;
- (id)movieScrubberTrackView:(id)view evenlySpacedTimestamps:(int)timestamps startingAt:(id)at endingAt:(id)endingAt;
- (int)_editingHandleWithLocatable:(id)locatable;
- (void)_animateAfterEdit:(BOOL)edit;
- (void)_beginTrackPressWithLocatable:(id)locatable touchesBegan:(BOOL)began;
- (void)_cancelTrackPress:(BOOL)press;
- (void)_cancelTrackPressIfNeccessaryWithLocatable:(id)locatable;
- (void)_computeTrackRectForBounds:(CGRect)bounds;
- (void)_handlePanGesture:(id)gesture;
- (void)_initSubviews;
- (void)_setValue:(double)value andSendAction:(BOOL)action;
- (void)_setZoomAnimating:(BOOL)animating;
- (void)_sliderAnimationDidStop:(BOOL)stop;
- (void)_sliderValueDidChange:(id)change;
- (void)_trackPressWasHeld;
- (void)_trimAnimationDidStop:(BOOL)stop glassView:(id)view;
- (void)_updateThumbLocation;
- (void)_updateTimes;
- (void)beginTrackingWithLocatable:(id)locatable;
- (void)continueTrackingWithLocatable:(id)locatable;
- (void)dealloc;
- (void)endTrackingWithLocatable:(id)locatable;
- (void)forceUnzoom;
- (void)layoutSubviews;
- (void)movieScrubberTrackView:(id)view clampedSizeWidthDelta:(double)delta actualSizeWidthDelta:(double)widthDelta originXDelta:(double)xDelta minimumVisibleValue:(double)value maximumVisibleValue:(double)visibleValue;
- (void)movieScrubberTrackView:(id)view requestThumbnailImageForTimestamp:(id)timestamp isSummaryThumbnail:(BOOL)thumbnail;
- (void)movieScrubberTrackViewDidCollapse:(id)collapse;
- (void)movieScrubberTrackViewDidExpand:(id)expand;
- (void)movieScrubberTrackViewDidFinishRequestingThumbnails:(id)thumbnails;
- (void)movieScrubberTrackViewWillBeginRequestingThumbnails:(id)thumbnails;
- (void)reloadData;
- (void)setDataSource:(id)source;
- (void)setDelegate:(id)delegate;
- (void)setDuration:(double)duration;
- (void)setEdgeInset:(double)inset;
- (void)setEditable:(BOOL)editable;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setFrame:(CGRect)frame;
- (void)setRotationDisabled:(BOOL)disabled;
- (void)setThumbIsVisible:(BOOL)visible;
- (void)setTrimEndValue:(double)value;
- (void)setTrimStartValue:(double)value;
- (void)setValue:(double)value animated:(BOOL)animated;
@end

@implementation UIMovieScrubber

- (UIMovieScrubber)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = UIMovieScrubber;
  v3 = [(UIControl *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, 39.0];
  v4 = v3;
  if (v3)
  {
    *(&v3->_sliderFlags + 8) |= 0x10u;
    *&v3->_sliderFlags |= 1u;
    v3->_maximumValue = 0.0;
    v3->_value = 0.0;
    v3->_zoomDelay = 1.0;
    v3->_showTimeViews = 0;
    layer = [(UIView *)v3 layer];
    [layer setAllowsGroupOpacity:1];

    v6 = [[UIPanGestureRecognizer alloc] initWithTarget:v4 action:sel__handlePanGesture_];
    panGestureRecognizer = v4->_panGestureRecognizer;
    v4->_panGestureRecognizer = v6;

    [(UIView *)v4 addGestureRecognizer:v4->_panGestureRecognizer];
    [(UIView *)v4 setOpaque:0];
    [(UIView *)v4 setAutoresizesSubviews:1];
    [(UIControl *)v4 addTarget:v4 action:sel__sliderValueDidChange_ forControlEvents:4096];
  }

  return v4;
}

- (void)dealloc
{
  [(UIMovieScrubberTrackView *)self->_trackView setDataSource:0];
  [(UIMovieScrubberTrackView *)self->_trackView setDelegate:0];
  v3.receiver = self;
  v3.super_class = UIMovieScrubber;
  [(UIView *)&v3 dealloc];
}

- (void)setDataSource:(id)source
{
  obj = source;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  v5 = obj;
  if (!obj || WeakRetained != obj)
  {
    objc_storeWeak(&self->_dataSource, obj);
    if (objc_opt_respondsToSelector())
    {
      v6 = 0x4000;
    }

    else
    {
      v6 = 0;
    }

    *(&self->_sliderFlags + 10) = *(&self->_sliderFlags + 10) & 0xBFFF | v6;
    [(UIMovieScrubber *)self reloadData];
    v5 = obj;
  }
}

- (UIMovieScrubberDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)reloadData
{
  *&self->_sliderFlags |= 8u;
  [(UIMovieScrubberTrackView *)self->_trackView clear];

  [(UIView *)self setNeedsLayout];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (!obj || WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    p_sliderFlags = &self->_sliderFlags;
    if (objc_opt_respondsToSelector())
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    *(p_sliderFlags + 10) = *(p_sliderFlags + 10) & 0xFFFD | v7;
    if (objc_opt_respondsToSelector())
    {
      v8 = 4;
    }

    else
    {
      v8 = 0;
    }

    *(p_sliderFlags + 10) = *(p_sliderFlags + 10) & 0xFFFB | v8;
    if (objc_opt_respondsToSelector())
    {
      v9 = 8;
    }

    else
    {
      v9 = 0;
    }

    *(p_sliderFlags + 10) = *(p_sliderFlags + 10) & 0xFFF7 | v9;
    if (objc_opt_respondsToSelector())
    {
      v10 = 16;
    }

    else
    {
      v10 = 0;
    }

    *(p_sliderFlags + 10) = *(p_sliderFlags + 10) & 0xFFEF | v10;
    if (objc_opt_respondsToSelector())
    {
      v11 = 32;
    }

    else
    {
      v11 = 0;
    }

    *(p_sliderFlags + 10) = *(p_sliderFlags + 10) & 0xFFDF | v11;
    if (objc_opt_respondsToSelector())
    {
      v12 = 64;
    }

    else
    {
      v12 = 0;
    }

    *(p_sliderFlags + 10) = *(p_sliderFlags + 10) & 0xFFBF | v12;
    if (objc_opt_respondsToSelector())
    {
      v13 = 256;
    }

    else
    {
      v13 = 0;
    }

    *(p_sliderFlags + 10) = *(p_sliderFlags + 10) & 0xFEFF | v13;
    if (objc_opt_respondsToSelector())
    {
      v14 = 128;
    }

    else
    {
      v14 = 0;
    }

    *(p_sliderFlags + 10) = *(p_sliderFlags + 10) & 0xFF7F | v14;
    if (objc_opt_respondsToSelector())
    {
      v15 = 512;
    }

    else
    {
      v15 = 0;
    }

    *(p_sliderFlags + 10) = *(p_sliderFlags + 10) & 0xFDFF | v15;
    if (objc_opt_respondsToSelector())
    {
      v16 = 1024;
    }

    else
    {
      v16 = 0;
    }

    *(p_sliderFlags + 10) = *(p_sliderFlags + 10) & 0xFBFF | v16;
    if (objc_opt_respondsToSelector())
    {
      v17 = 2048;
    }

    else
    {
      v17 = 0;
    }

    *(p_sliderFlags + 10) = *(p_sliderFlags + 10) & 0xF7FF | v17;
    if (objc_opt_respondsToSelector())
    {
      v18 = 4096;
    }

    else
    {
      v18 = 0;
    }

    *(p_sliderFlags + 10) = *(p_sliderFlags + 10) & 0xEFFF | v18;
    v19 = objc_opt_respondsToSelector();
    v5 = obj;
    if (v19)
    {
      v20 = 0x2000;
    }

    else
    {
      v20 = 0;
    }

    *(p_sliderFlags + 10) = *(p_sliderFlags + 10) & 0xDFFF | v20;
  }
}

- (UIMovieScrubberDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setThumbIsVisible:(BOOL)visible
{
  v3 = *(&self->_sliderFlags + 8);
  if (((((v3 & 0x10) == 0) ^ visible) & 1) == 0)
  {
    if (visible)
    {
      v4 = 16;
    }

    else
    {
      v4 = 0;
    }

    *(&self->_sliderFlags + 8) = v3 & 0xEF | v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __37__UIMovieScrubber_setThumbIsVisible___block_invoke;
    v5[3] = &unk_1E70F3590;
    v5[4] = self;
    [UIView animateWithDuration:v5 animations:0.25];
  }
}

- (void)setEditable:(BOOL)editable
{
  editableCopy = editable;
  if ((*(&self->_sliderFlags + 8) & 8) != 0)
  {
    self->_editable = editable;
  }

  else
  {
    if (!editable)
    {
      [(UIMovieScrubber *)self setEditing:0];
    }

    self->_editable = editableCopy;
    editingView = self->_editingView;
    if (editingView)
    {

      [(UIMovieScrubberEditingView *)editingView setEnabled:editableCopy];
    }

    else
    {
      [(UIMovieScrubber *)self _initSubviews];

      [(UIMovieScrubber *)self layoutSubviews];
    }
  }
}

- (void)_animateAfterEdit:(BOOL)edit
{
  editCopy = edit;
  [(UIView *)self->_editingView frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(UIMovieScrubber *)self _editingRect];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  if (self->_editable)
  {
    v21 = [[UIMovieScrubberEditingView alloc] initWithFrame:v6, v8, v10, v12];
    [(UIMovieScrubberEditingView *)v21 layoutSubviews];
    [(UIView *)v21 setUserInteractionEnabled:0];
    [(UIView *)v21 setAlpha:0.0];
    [(UIMovieScrubberEditingView *)v21 setEnabled:self->_editable];
    [(UIMovieScrubberEditingView *)v21 setEdgeInset:self->_edgeInset];
    [(UIView *)self insertSubview:v21 belowSubview:self->_thumbView];
  }

  else
  {
    v21 = 0;
  }

  *(&self->_sliderFlags + 8) |= 8u;
  if (editCopy)
  {
    v22 = 0.5;
  }

  else
  {
    v22 = 0.25;
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __37__UIMovieScrubber__animateAfterEdit___block_invoke;
  v27[3] = &unk_1E70F89D0;
  v30 = v14;
  v31 = v16;
  v32 = v18;
  v33 = v20;
  v28 = v21;
  selfCopy = self;
  v34 = editCopy;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __37__UIMovieScrubber__animateAfterEdit___block_invoke_2;
  v24[3] = &unk_1E70F8A60;
  v26 = editCopy;
  v24[4] = self;
  v25 = v28;
  v23 = v28;
  [UIView animateWithDuration:0 delay:v27 options:v24 animations:v22 completion:0.0];
}

uint64_t __37__UIMovieScrubber__animateAfterEdit___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  [*(a1 + 32) setFrame:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  [*(a1 + 32) layoutSubviews];
  [*(*(a1 + 40) + 472) setAlpha:0.0];
  [*(*(a1 + 40) + 472) setFrame:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  [*(*(a1 + 40) + 472) layoutSubviews];
  v2 = *(*(a1 + 40) + 464);
  if (*(a1 + 80) == 1)
  {

    return [v2 setEditing:0];
  }

  else
  {

    return [v2 animateFillFramesAway];
  }
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  if (self->_editable)
  {
    editingCopy = editing;
    p_sliderFlags = &self->_sliderFlags;
    v7 = *(&self->_sliderFlags + 8);
    if ((((v7 >= 0) ^ editing) & 1) == 0)
    {
      animatedCopy = animated;
      if (editing)
      {
        v9 = 0x80;
      }

      else
      {
        v9 = 0;
      }

      *(&self->_sliderFlags + 8) = v9 & 0x80 | v7 & 0x7F;
      if ((*p_sliderFlags & 8) != 0)
      {
        [(UIMovieScrubber *)self layoutSubviews];
      }

      if (!animatedCopy || editingCopy)
      {
        [(UIMovieScrubber *)self setThumbIsVisible:!editingCopy];
      }

      if (*(p_sliderFlags + 8) < 0)
      {
        v10 = 0.0;
      }

      else
      {
        v10 = 1.0;
      }

      [(UIView *)self->_elapsedLabel setAlpha:v10];
      [(UIView *)self->_remainingLabel setAlpha:v10];
      if (*(p_sliderFlags + 8) < 0)
      {
        if (self->_maxTrimmedLength == 0.0)
        {
          [(UIMovieScrubber *)self duration];
          self->_maxTrimmedLength = v11;
        }

        self->_trimStartValue = 0.0;
        minTrimmedLength = self->_minTrimmedLength;
        [(UIMovieScrubber *)self duration];
        v14 = v13;
        [(UIView *)self->_trackView frame];
        maxTrimmedLength = v14 / v15 * 13.0;
        if (minTrimmedLength > maxTrimmedLength)
        {
          maxTrimmedLength = minTrimmedLength;
        }

        self->_minTrimmedLength = maxTrimmedLength;
        if (maxTrimmedLength < self->_maxTrimmedLength)
        {
          maxTrimmedLength = self->_maxTrimmedLength;
        }

        self->_trimEndValue = maxTrimmedLength;
        [(UIMovieScrubberTrackView *)self->_trackView setEditing:1];
        [(UIMovieScrubber *)self _editingRectForStartTime:self->_trimStartValue endTime:self->_trimEndValue];
        [(UIView *)self->_editingView setFrame:?];
        [(UIMovieScrubberEditingView *)self->_editingView setEditing:1];
        [(UIMovieScrubberTrackView *)self->_trackView setStartValue:self->_trimStartValue];
        [(UIMovieScrubberTrackView *)self->_trackView setEndValue:self->_trimEndValue];
        if (animatedCopy)
        {
          [(UIMovieScrubberEditingView *)self->_editingView bounce];
        }

        if ((*(p_sliderFlags + 10) & 0x80) != 0)
        {
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          [WeakRetained movieScrubberDidBeginEditing:self];
        }
      }

      else
      {
        [(UIMovieScrubber *)self _cancelTrackPress:0];
        if (animatedCopy)
        {

          [(UIMovieScrubber *)self animateCancelEdit];
        }

        else
        {
          [(UIMovieScrubberTrackView *)self->_trackView setEditing:0];
          editingView = self->_editingView;
          [(UIMovieScrubber *)self _editingRect];
          [(UIView *)editingView setFrame:?];
          v18 = self->_editingView;

          [(UIMovieScrubberEditingView *)v18 setEditing:0];
        }
      }
    }
  }
}

- (void)_trimAnimationDidStop:(BOOL)stop glassView:(id)view
{
  stopCopy = stop;
  viewCopy = view;
  *(&self->_sliderFlags + 8) &= 0x77u;
  [(UIView *)self->_editingView removeFromSuperview];
  editingView = self->_editingView;
  self->_editingView = viewCopy;
  v8 = viewCopy;

  [(UIMovieScrubberEditingView *)self->_editingView setEnabled:self->_editable];
  if (stopCopy)
  {
    [(UIMovieScrubber *)self setValue:0 animated:0.0];
    [(UIMovieScrubber *)self setThumbIsVisible:1];
    if ((*(&self->_sliderFlags + 10) & 0x200) != 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained movieScrubberEditingAnimationFinished:self];
    }
  }

  else
  {

    [(UIMovieScrubber *)self setThumbIsVisible:1];
  }
}

- (void)_computeTrackRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  y = bounds.origin.y;
  edgeInset = self->_edgeInset;
  v7 = bounds.origin.x + edgeInset;
  v8 = bounds.size.width - (edgeInset + edgeInset);
  if ((*&self->_sliderFlags & 0x10) != 0 || !self->_showTimeViews)
  {
    v7 = v7 + 12.0;
    v8 = v8 + -24.0;
  }

  else
  {
    elapsedLabel = self->_elapsedLabel;
    if (elapsedLabel)
    {
      [(UIView *)elapsedLabel frame];
      v12 = v10 + v11 + 5.0;
      v7 = v7 + v12;
      v8 = v8 - v12;
    }

    remainingLabel = self->_remainingLabel;
    if (remainingLabel)
    {
      [(UIView *)remainingLabel frame];
      v8 = v8 - (v14 + 4.0);
    }
  }

  self->_trackRect.origin.x = v7;
  self->_trackRect.origin.y = y + 3.0;
  self->_trackRect.size.width = v8;
  self->_trackRect.size.height = height + -7.0;
}

- (CGRect)trackRect
{
  if ((*&self->_sliderFlags & 0x20) != 0)
  {
    [(UIView *)self bounds];
    [(UIMovieScrubber *)self _computeTrackRectForBounds:?];
    *&self->_sliderFlags &= ~0x20u;
  }

  x = self->_trackRect.origin.x;
  y = self->_trackRect.origin.y;
  width = self->_trackRect.size.width;
  height = self->_trackRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)_editingRect
{
  [(UIMovieScrubber *)self _editingRectForStartTime:self->_minimumValue endTime:self->_maximumValue];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)_editingRectForStartTime:(double)time endTime:(double)endTime
{
  [(UIMovieScrubber *)self trackRect];
  minimumValue = self->_minimumValue;
  maximumValue = self->_maximumValue;
  v11 = maximumValue - minimumValue;
  if (maximumValue - minimumValue <= 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    if (endTime >= time)
    {
      endTimeCopy = time;
    }

    else
    {
      endTimeCopy = endTime;
    }

    if (endTime >= time)
    {
      timeCopy2 = endTime;
    }

    else
    {
      timeCopy2 = time;
    }

    if (timeCopy2 >= maximumValue)
    {
      timeCopy2 = self->_maximumValue;
    }

    if (endTimeCopy < minimumValue)
    {
      endTimeCopy = self->_minimumValue;
    }

    v14 = rint(v8 * ((endTimeCopy - minimumValue) / v11));
    v7 = v7 + v14;
    v15 = v8 - (v14 + rint(v8 * ((maximumValue - timeCopy2) / v11)));
  }

  v16 = self->_edgeInset + 12.0;
  v17 = v7 - v16;
  v18 = v15 + v16 + v16;
  v19 = 36.0;
  v20 = 1.0;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v20;
  result.origin.x = v17;
  return result;
}

- (CGRect)thumbRectForValue:(double)value
{
  minimumValue = self->_minimumValue;
  maximumValue = self->_maximumValue;
  [(UIView *)self->_trackView frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = self->_maximumValue;
  v14 = self->_minimumValue;
  v15 = 0.0;
  if (v13 != v14)
  {
    if (minimumValue <= value)
    {
      valueCopy = value;
    }

    else
    {
      valueCopy = minimumValue;
    }

    if (valueCopy > maximumValue)
    {
      valueCopy = maximumValue;
    }

    v15 = (valueCopy - v14) / (v13 - v14);
  }

  v17 = _GetScrubberThumbImage();
  [v17 size];
  v19 = v18;
  v21 = v20;

  v22 = v8 + round(v15 * (v12 - v19));
  v23 = v10 + -3.0;
  v24 = v19;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(UIView *)self frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16.receiver = self;
  v16.super_class = UIMovieScrubber;
  [(UIView *)&v16 setFrame:x, y, width, height];
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v18.origin.x = v9;
  v18.origin.y = v11;
  v18.size.width = v13;
  v18.size.height = v15;
  if (!CGRectEqualToRect(v17, v18))
  {
    *&self->_sliderFlags |= 0x20u;
    if (*(&self->_sliderFlags + 8) < 0)
    {
      [(UIMovieScrubber *)self _editingRectForStartTime:self->_trimStartValue endTime:self->_trimEndValue];
    }

    else
    {
      [(UIMovieScrubber *)self _editingRect];
    }

    [(UIView *)self->_editingView setFrame:?];
  }
}

- (CGSize)sizeThatFits:(CGSize)result
{
  if (result.width < 35.0)
  {
    result.width = 35.0;
  }

  v3 = 39.0;
  result.height = v3;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(UIView *)self bounds];

  [(UIMovieScrubber *)self sizeThatFits:v3, v4];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)layoutSubviews
{
  p_sliderFlags = &self->_sliderFlags;
  if ((*&self->_sliderFlags & 4) == 0 && (*(&self->_sliderFlags + 8) & 3) == 0)
  {
    [(UIView *)self bounds];
    v5 = v4;
    v6 = *p_sliderFlags;
    v7 = *p_sliderFlags | 0x20;
    *p_sliderFlags = v7;
    if ((v6 & 8) != 0)
    {
      *p_sliderFlags = v7 & 0xF7;
      WeakRetained = objc_loadWeakRetained(&self->_dataSource);
      [WeakRetained movieScrubberDuration:self];
      [(UIMovieScrubber *)self setDuration:?];

      [(UIMovieScrubberTrackView *)self->_trackView reloadData];
    }

    [(UIMovieScrubber *)self duration];
    if (v9 != 0.0)
    {
      if (!self->_thumbView)
      {
        [(UIMovieScrubber *)self _initSubviews];
        [(UIMovieScrubberTrackView *)self->_trackView reloadData];
      }

      [(UIMovieScrubber *)self _updateTimes];
      [(UIView *)self->_elapsedLabel sizeToFit];
      [(UIView *)self->_remainingLabel sizeToFit];
      v10 = *&layoutSubviews___timeLabelFontAscent;
      if (*&layoutSubviews___timeLabelFontAscent == 0.0)
      {
        v11 = [off_1E70ECC18 boldSystemFontOfSize:14.0];
        [v11 ascender];
        layoutSubviews___timeLabelFontAscent = v12;
      }

      [(UIMovieScrubber *)self trackRect];
      v14 = v13;
      v15 = self->_timeComponents * 19.0;
      [(UIView *)self->_elapsedLabel frame];
      v17 = floor((v14 - v16) * 0.5);
      [(UILabel *)self->_elapsedLabel setFrame:0.0, v17, v15];
      [(UIView *)self->_remainingLabel frame];
      [(UILabel *)self->_remainingLabel setFrame:v5 - v15, v17, v15];
      *p_sliderFlags = *p_sliderFlags & 0xCF | 0x20;
      trackView = self->_trackView;
      [(UIMovieScrubber *)self trackRect];
      [(UIView *)trackView setFrame:?];
      v19 = *(p_sliderFlags + 8);
      if ((v19 & 0x80000000) == 0)
      {
        if ((v19 & 8) == 0)
        {
          [(UIView *)self->_editingView setAlpha:1.0];
        }

        editingView = self->_editingView;
        [(UIMovieScrubber *)self _editingRect];
        [(UIView *)editingView setFrame:?];
      }

      [(UIMovieScrubber *)self _updateThumbLocation];
      v21.receiver = self;
      v21.super_class = UIMovieScrubber;
      [(UIView *)&v21 layoutSubviews];
    }
  }
}

- (void)_initSubviews
{
  *&self->_sliderFlags |= 0x20u;
  [(UIMovieScrubber *)self trackRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (!self->_elapsedLabel && self->_showTimeViews)
  {
    v11 = objc_alloc_init(UILabel);
    elapsedLabel = self->_elapsedLabel;
    self->_elapsedLabel = v11;

    [(UIView *)self->_elapsedLabel setOpaque:0];
    v13 = self->_elapsedLabel;
    v14 = [off_1E70ECC18 boldSystemFontOfSize:14.0];
    [(UILabel *)v13 setFont:v14];

    v15 = self->_elapsedLabel;
    v16 = +[UIColor whiteColor];
    [(UILabel *)v15 setTextColor:v16];

    v17 = self->_elapsedLabel;
    v18 = +[UIColor clearColor];
    [(UIView *)v17 setBackgroundColor:v18];

    [(UILabel *)self->_elapsedLabel setTextAlignment:1];
    [(UIView *)self->_elapsedLabel setAutoresizingMask:4];
    [(UIView *)self addSubview:self->_elapsedLabel];
    *&self->_sliderFlags |= 0x10u;
  }

  if (!self->_remainingLabel && self->_showTimeViews)
  {
    v19 = objc_alloc_init(UILabel);
    remainingLabel = self->_remainingLabel;
    self->_remainingLabel = v19;

    [(UIView *)self->_remainingLabel setOpaque:0];
    v21 = self->_remainingLabel;
    v22 = [off_1E70ECC18 boldSystemFontOfSize:14.0];
    [(UILabel *)v21 setFont:v22];

    v23 = self->_remainingLabel;
    v24 = +[UIColor whiteColor];
    [(UILabel *)v23 setTextColor:v24];

    v25 = self->_remainingLabel;
    v26 = +[UIColor clearColor];
    [(UIView *)v25 setBackgroundColor:v26];

    [(UILabel *)self->_remainingLabel setTextAlignment:1];
    [(UIView *)self->_remainingLabel setAutoresizingMask:1];
    [(UIView *)self addSubview:self->_remainingLabel];
    *&self->_sliderFlags |= 0x10u;
  }

  if (!self->_trackView)
  {
    v27 = [[UIMovieScrubberTrackView alloc] initWithFrame:v4, v6, v8, v10];
    trackView = self->_trackView;
    self->_trackView = v27;

    [(UIView *)self->_trackView setAutoresizingMask:2];
    [(UIMovieScrubberTrackView *)self->_trackView setDataSource:self];
    [(UIMovieScrubberTrackView *)self->_trackView setDelegate:self];
    [(UIView *)self addSubview:self->_trackView];
  }

  if (!self->_thumbView)
  {
    [(UIMovieScrubber *)self thumbRectForValue:0.0];
    v33 = [[UIImageView alloc] initWithFrame:v29, v30, v31, v32];
    thumbView = self->_thumbView;
    self->_thumbView = v33;

    [(UIImageView *)self->_thumbView setContentMode:4];
    [(UIView *)self->_thumbView setUserInteractionEnabled:0];
    v35 = self->_thumbView;
    v36 = _GetScrubberThumbImage();
    [(UIImageView *)v35 setImage:v36];

    [(UIView *)self->_thumbView setOpaque:0];
    [(UIView *)self->_thumbView setAutoresizingMask:0];
    [(UIView *)self addSubview:self->_thumbView];
  }

  if (!self->_editingView)
  {
    v37 = [[UIMovieScrubberEditingView alloc] initWithFrame:v4, v6, v8, v10];
    editingView = self->_editingView;
    self->_editingView = v37;

    [(UIView *)self->_editingView setUserInteractionEnabled:0];
    [(UIMovieScrubberEditingView *)self->_editingView setEnabled:self->_editable];
    [(UIMovieScrubberEditingView *)self->_editingView setEdgeInset:self->_edgeInset];
    v39 = self->_editingView;
    v40 = self->_thumbView;

    [(UIView *)self insertSubview:v39 belowSubview:v40];
  }
}

- (void)_updateTimes
{
  if ((*(&self->_sliderFlags + 8) & 1) == 0 && self->_showTimeViews)
  {
    [(UIMovieScrubber *)self value];
    v4 = floor(v3);
    v5 = vcvtmd_s64_f64(v3);
    [(UIMovieScrubber *)self duration];
    v9 = __CopyProgressStringForSeconds(v5, 0, 1);
    [(UIMovieScrubber *)self duration];
    v7 = -floor(v6 - v4);
    [(UIMovieScrubber *)self duration];
    v8 = __CopyProgressStringForSeconds(v7, 0, 0);
    [(UILabel *)self->_elapsedLabel setText:v9];
    [(UILabel *)self->_remainingLabel setText:v8];
  }
}

- (void)setEdgeInset:(double)inset
{
  if (inset < 0.0)
  {
    inset = 0.0;
  }

  if (self->_edgeInset != inset)
  {
    self->_edgeInset = inset;
    *&self->_sliderFlags |= 0x20u;
    [(UIMovieScrubberEditingView *)self->_editingView setEdgeInset:self->_edgeInset];

    [(UIMovieScrubber *)self layoutSubviews];
  }
}

- (UIEdgeInsets)alignmentMargins
{
  v2 = 0.0;
  if (!self->_editable)
  {
    v2 = 10.0;
  }

  v3 = 1.0;
  v4 = 2.0;
  v5 = v2;
  result.right = v5;
  result.bottom = v4;
  result.left = v2;
  result.top = v3;
  return result;
}

- (void)setValue:(double)value animated:(BOOL)animated
{
  if (animated)
  {
    v5 = *(&self->_sliderFlags + 8);
    v6 = v5 < 0;
    if (v5 < 0)
    {
      v7 = &OBJC_IVAR___UIMovieScrubber__trimStartValue;
    }

    else
    {
      v7 = &OBJC_IVAR___UIMovieScrubber__minimumValue;
    }

    v8 = *(&self->super.super.super.super.isa + *v7);
    v9 = &OBJC_IVAR___UIMovieScrubber__trimEndValue;
    if (!v6)
    {
      v9 = &OBJC_IVAR___UIMovieScrubber__maximumValue;
    }

    v10 = *v9;
    if (v8 > value)
    {
      value = v8;
    }

    if (value <= *(&self->super.super.super.super.isa + v10))
    {
      valueCopy = value;
    }

    else
    {
      valueCopy = *(&self->super.super.super.super.isa + v10);
    }

    [(UIMovieScrubber *)self trackRect];
    v13 = v12;
    layer = [(UIView *)self->_thumbView layer];
    presentationLayer = [layer presentationLayer];
    [presentationLayer frame];
    v17 = v16;

    [(UIMovieScrubber *)self thumbRectForValue:valueCopy];
    v20[4] = self;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __37__UIMovieScrubber_setValue_animated___block_invoke;
    v21[3] = &unk_1E70F32F0;
    v21[4] = self;
    *&v21[5] = valueCopy;
    v19[4] = self;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __37__UIMovieScrubber_setValue_animated___block_invoke_2;
    v20[3] = &unk_1E70F3590;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __37__UIMovieScrubber_setValue_animated___block_invoke_3;
    v19[3] = &unk_1E70F5AC0;
    [UIView _animateWithDuration:4 delay:v21 options:v20 animations:v19 start:vabdd_f64(v17 completion:v18) / v13 * 0.25, 0.0];
  }

  else
  {

    [(UIMovieScrubber *)self _setValue:value andSendAction:?];
  }
}

- (void)_updateThumbLocation
{
  thumbView = self->_thumbView;
  [(UIMovieScrubber *)self value];
  [(UIMovieScrubber *)self thumbRectForValue:?];

  [(UIImageView *)thumbView setFrame:?];
}

- (void)_setValue:(double)value andSendAction:(BOOL)action
{
  actionCopy = action;
  v6 = *(&self->_sliderFlags + 8);
  v7 = v6 < 0;
  if (v6 < 0)
  {
    v8 = &OBJC_IVAR___UIMovieScrubber__trimStartValue;
  }

  else
  {
    v8 = &OBJC_IVAR___UIMovieScrubber__minimumValue;
  }

  v9 = *(&self->super.super.super.super.isa + *v8);
  v10 = &OBJC_IVAR___UIMovieScrubber__trimEndValue;
  if (!v7)
  {
    v10 = &OBJC_IVAR___UIMovieScrubber__maximumValue;
  }

  v11 = *v10;
  if (v9 > value)
  {
    value = v9;
  }

  if (value > *(&self->super.super.super.super.isa + v11))
  {
    value = *(&self->super.super.super.super.isa + v11);
  }

  if (value != self->_value)
  {
    self->_value = value;
    [(UIMovieScrubberTrackView *)self->_trackView setValue:?];
    [(UIMovieScrubber *)self _updateThumbLocation];
    [(UIMovieScrubber *)self _updateTimes];
  }

  if (actionCopy)
  {

    [(UIControl *)self _sendActionsForEvents:4096 withEvent:0];
  }
}

- (void)setDuration:(double)duration
{
  if (self->_maximumValue != duration)
  {
    self->_maximumValue = duration;
    if ((60 * (duration / 60) - 60 * (duration / 60 % 60) + 3599) < 0x1C1F)
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }

    self->_timeComponents = v3;
    *&self->_sliderFlags |= 0x10u;
    [(UIMovieScrubber *)self _setValue:0 andSendAction:self->_value];
  }
}

- (double)trimStartValue
{
  result = self->_trimStartValue;
  trimEndValue = self->_trimEndValue;
  maxTrimmedLength = self->_maxTrimmedLength;
  if (trimEndValue - result > maxTrimmedLength)
  {
    v5 = trimEndValue - maxTrimmedLength;
    if (self->_sliderFlags.editingHandle == 2)
    {
      return v5;
    }
  }

  return result;
}

- (void)setTrimStartValue:(double)value
{
  minimumValue = value;
  p_sliderFlags = &self->_sliderFlags;
  if (!self->_sliderFlags.clampingTrimRange)
  {
    if (self->_minimumValue > value)
    {
      minimumValue = self->_minimumValue;
    }

    if (minimumValue > self->_maximumValue)
    {
      minimumValue = self->_maximumValue;
    }
  }

  if (minimumValue + self->_minTrimmedLength <= self->_trimEndValue)
  {
    trimStartValue = self->_trimStartValue;
    self->_trimStartValue = minimumValue;
    if (minimumValue == trimStartValue)
    {
      [(UIMovieScrubberTrackView *)self->_trackView setStartValue:minimumValue];
    }

    else
    {
      v7 = *(&self->_sliderFlags + 8);
      if ((v7 & 0x40) != 0)
      {
        *(&self->_sliderFlags + 8) = v7 & 0xBF;
        if ((v7 & 0x80) == 0)
        {
          [(UIMovieScrubber *)self setEditing:1 animated:0];
        }
      }

      editingView = self->_editingView;
      [(UIMovieScrubber *)self _editingRectForStartTime:self->_trimStartValue endTime:self->_trimEndValue];
      [(UIView *)editingView setFrame:?];
      [(UIMovieScrubberTrackView *)self->_trackView setStartValue:self->_trimStartValue];
      if ((*(p_sliderFlags + 10) & 4) != 0 && p_sliderFlags->editingHandle == 1)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained movieScrubber:self editingStartValueDidChange:self->_trimStartValue];
      }
    }

    maxTrimmedLength = self->_maxTrimmedLength;
    if (self->_minTrimmedLength >= maxTrimmedLength)
    {
      maxTrimmedLength = self->_minTrimmedLength;
    }

    if (minimumValue != trimStartValue)
    {
      trimEndValue = self->_trimEndValue;
      v12 = trimEndValue - self->_trimStartValue - maxTrimmedLength;
      if (v12 > 0.01)
      {
        ++p_sliderFlags->clampingTrimRange;
        [(UIMovieScrubber *)self setTrimEndValue:trimEndValue - v12];
        --p_sliderFlags->clampingTrimRange;
      }
    }
  }
}

- (double)trimEndValue
{
  result = self->_trimEndValue;
  trimStartValue = self->_trimStartValue;
  maxTrimmedLength = self->_maxTrimmedLength;
  if (result - trimStartValue > maxTrimmedLength)
  {
    v5 = trimStartValue + maxTrimmedLength;
    if (self->_sliderFlags.editingHandle == 1)
    {
      return v5;
    }
  }

  return result;
}

- (void)setTrimEndValue:(double)value
{
  minimumValue = value;
  p_sliderFlags = &self->_sliderFlags;
  if (!self->_sliderFlags.clampingTrimRange)
  {
    if (self->_minimumValue > value)
    {
      minimumValue = self->_minimumValue;
    }

    if (minimumValue > self->_maximumValue)
    {
      minimumValue = self->_maximumValue;
    }
  }

  if (minimumValue >= self->_trimStartValue + self->_minTrimmedLength)
  {
    trimEndValue = self->_trimEndValue;
    self->_trimEndValue = minimumValue;
    if (trimEndValue == minimumValue)
    {
      [(UIMovieScrubberTrackView *)self->_trackView setEndValue:minimumValue];
    }

    else
    {
      v7 = *(&self->_sliderFlags + 8);
      if ((v7 & 0x40) != 0)
      {
        *(&self->_sliderFlags + 8) = v7 & 0xBF;
        if ((v7 & 0x80) == 0)
        {
          [(UIMovieScrubber *)self setEditing:1 animated:0];
        }
      }

      editingView = self->_editingView;
      [(UIMovieScrubber *)self _editingRectForStartTime:self->_trimStartValue endTime:self->_trimEndValue];
      [(UIView *)editingView setFrame:?];
      [(UIMovieScrubberTrackView *)self->_trackView setEndValue:self->_trimEndValue];
      if (p_sliderFlags->editingHandle == 2 && (*(p_sliderFlags + 10) & 8) != 0)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained movieScrubber:self editingEndValueDidChange:self->_trimEndValue];
      }
    }

    maxTrimmedLength = self->_maxTrimmedLength;
    if (self->_minTrimmedLength >= maxTrimmedLength)
    {
      maxTrimmedLength = self->_minTrimmedLength;
    }

    if (trimEndValue != minimumValue)
    {
      trimStartValue = self->_trimStartValue;
      v12 = self->_trimEndValue - trimStartValue - maxTrimmedLength;
      if (v12 > 0.01)
      {
        ++p_sliderFlags->clampingTrimRange;
        [(UIMovieScrubber *)self setTrimStartValue:trimStartValue + v12];
        --p_sliderFlags->clampingTrimRange;
      }
    }
  }
}

- (void)_sliderAnimationDidStop:(BOOL)stop
{
  if (stop)
  {
    *&self->_sliderFlags &= ~2u;
  }
}

- (double)_valueForLocatable:(id)locatable
{
  minimumValue = self->_minimumValue;
  maximumValue = self->_maximumValue;
  [locatable locationInView:self->_trackView];
  v7 = v6;
  [(UIView *)self->_trackView frame];
  v9 = v8;
  [(UIView *)self bounds];
  v10 = minimumValue + (maximumValue - minimumValue) * (v7 + self->_hitOffset) / v9;
  if (v10 >= minimumValue)
  {
    minimumValue = minimumValue + (maximumValue - minimumValue) * (v7 + self->_hitOffset) / v9;
    if (v10 > maximumValue)
    {
      return maximumValue;
    }
  }

  return minimumValue;
}

- (void)setRotationDisabled:(BOOL)disabled
{
  p_sliderFlags = &self->_sliderFlags;
  rotationDisabled = self->_sliderFlags.rotationDisabled;
  if (disabled)
  {
    if (!rotationDisabled)
    {
      window = [(UIView *)self window];
      [window beginDisablingInterfaceAutorotation];

      rotationDisabled = p_sliderFlags->rotationDisabled;
    }

    p_sliderFlags->rotationDisabled = rotationDisabled + 1;
  }

  else if (rotationDisabled)
  {
    v6 = rotationDisabled - 1;
    self->_sliderFlags.rotationDisabled = v6;
    if (!v6)
    {
      window2 = [(UIView *)self window];
      [window2 endDisablingInterfaceAutorotation];
    }
  }
}

- (void)_setZoomAnimating:(BOOL)animating
{
  p_sliderFlags = &self->_sliderFlags;
  v4 = *(&self->_sliderFlags + 8);
  if ((((v4 & 2) == 0) ^ animating))
  {
    return;
  }

  animatingCopy = animating;
  if (animating)
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  *(&self->_sliderFlags + 8) = v4 & 0xFD | v7;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (animatingCopy)
  {
    if ((*(p_sliderFlags + 10) & 0x800) != 0)
    {
      v9 = WeakRetained;
      [WeakRetained movieScrubberDidBeginAnimatingZoom:self];
LABEL_10:
      WeakRetained = v9;
    }
  }

  else if ((*(p_sliderFlags + 10) & 0x1000) != 0)
  {
    v9 = WeakRetained;
    [WeakRetained movieScrubberDidEndAnimatingZoom:self];
    goto LABEL_10;
  }
}

- (void)forceUnzoom
{
  p_sliderFlags = &self->_sliderFlags;
  if (*(&self->_sliderFlags + 8))
  {
    _RemoveAllAnimationsForView(self);
    [(UIMovieScrubber *)self _setZoomAnimating:1];
    *(p_sliderFlags + 8) &= ~1u;
    trackView = self->_trackView;

    [(UIMovieScrubberTrackView *)trackView unzoom];
  }
}

- (void)_trackPressWasHeld
{
  [(UIView *)self->_thumbView frame];
  *&v4 = v4 + v3 * 0.5;
  *&v6 = v6 + v5 * 0.5;
  [(UIView *)self->_trackView convertPoint:self fromView:rintf(*&v4), rintf(*&v6)];
  v8 = v7;
  v10 = v9;
  v11 = *(&self->_sliderFlags + 8);
  if ((v11 & 0x40) != 0)
  {
    *(&self->_sliderFlags + 8) = v11 & 0xBF;
    if ((v11 & 0x80) == 0)
    {
      [(UIMovieScrubber *)self setEditing:1 animated:0];
    }
  }

  [(UIMovieScrubber *)self _setZoomAnimating:1];
  v12 = [(UIMovieScrubberTrackView *)self->_trackView zoomAtPoint:v8, v10];
  *(&self->_sliderFlags + 8) = *(&self->_sliderFlags + 8) & 0xFE | v12;
  if (!v12)
  {

    [(UIMovieScrubber *)self _setZoomAnimating:0];
  }
}

- (void)_beginTrackPressWithLocatable:(id)locatable touchesBegan:(BOOL)began
{
  p_sliderFlags = &self->_sliderFlags;
  if ((*(&self->_sliderFlags + 8) & 5) == 0)
  {
    beganCopy = began;
    p_touchLocationWhenTrackPressBegan = &self->_touchLocationWhenTrackPressBegan;
    [locatable locationInView:self->_trackView];
    p_touchLocationWhenTrackPressBegan->x = v8;
    p_touchLocationWhenTrackPressBegan->y = v9;
    *(p_sliderFlags + 8) |= 4u;
    [(UIMovieScrubber *)self performSelector:sel__trackPressWasHeld withObject:0 afterDelay:self->_zoomDelay];
    if (beganCopy)
    {
      [(UIMovieScrubber *)self setRotationDisabled:1];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [WeakRetained movieScrubberDidBeginScrubbing:self withHandle:p_sliderFlags->editingHandle];
      }
    }
  }
}

- (void)_cancelTrackPress:(BOOL)press
{
  p_sliderFlags = &self->_sliderFlags;
  if ((*(&self->_sliderFlags + 8) & 5) == 4)
  {
    pressCopy = press;
    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__trackPressWasHeld object:0];
    v6 = *(p_sliderFlags + 8);
    *(p_sliderFlags + 8) = v6 & 0xFB;
    if (pressCopy)
    {
      if ((v6 & 3) == 0)
      {
        [(UIMovieScrubber *)self setRotationDisabled:0];
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [WeakRetained movieScrubberDidEndScrubbing:self withHandle:p_sliderFlags->editingHandle];
      }
    }
  }
}

- (void)_cancelTrackPressIfNeccessaryWithLocatable:(id)locatable
{
  x = self->_touchLocationWhenTrackPressBegan.x;
  [locatable locationInView:self->_trackView];
  if (vabdd_f64(x, v5) > 2.0)
  {

    [(UIMovieScrubber *)self _cancelTrackPress:0];
  }
}

- (BOOL)pointInsideThumb:(CGPoint)thumb withEvent:(id)event
{
  thumbView = self->_thumbView;
  if (thumbView)
  {
    y = thumb.y;
    x = thumb.x;
    trackView = self->_trackView;
    [(UIView *)thumbView hitRect];
    [(UIView *)trackView convertRect:self->_thumbView fromView:?];
    v14 = CGRectInset(v13, -20.0, -20.0);
    v9 = x;
    v10 = y;

    LOBYTE(thumbView) = CGRectContainsPoint(v14, *&v9);
  }

  return thumbView;
}

- (int)_editingHandleWithLocatable:(id)locatable
{
  [locatable locationInView:self->_editingView];
  result = [(UIMovieScrubberEditingView *)self->_editingView handleForPoint:&self->_hitOffset hitOffset:?];
  self->_sliderFlags.editingHandle = result;
  return result;
}

- (void)_handlePanGesture:(id)gesture
{
  gestureCopy = gesture;
  state = [gestureCopy state];
  if (state <= 2)
  {
    if (state == 1)
    {
      [(UIMovieScrubber *)self beginTrackingWithLocatable:gestureCopy];
    }

    else
    {
      v5 = state == 2;
      v6 = gestureCopy;
      if (!v5)
      {
        goto LABEL_12;
      }

      [(UIMovieScrubber *)self continueTrackingWithLocatable:gestureCopy];
    }

LABEL_11:
    v6 = gestureCopy;
    goto LABEL_12;
  }

  if (state == 3 || (v5 = state == 4, v6 = gestureCopy, v5))
  {
    [(UIMovieScrubber *)self endTrackingWithLocatable:gestureCopy];
    goto LABEL_11;
  }

LABEL_12:
}

- (void)beginTrackingWithLocatable:(id)locatable
{
  locatableCopy = locatable;
  v5 = locatableCopy;
  if ((*(&self->_sliderFlags + 8) & 0x10) != 0)
  {
    v20 = locatableCopy;
    [locatableCopy locationInView:self->_trackView];
    v7 = v6;
    v9 = v8;
    [(UIView *)self->_thumbView convertPoint:self->_trackView fromView:?];
    v11 = v10;
    if ([(UIMovieScrubber *)self pointInsideThumb:0 withEvent:v7, v9])
    {
      [(UIView *)self->_thumbView frame];
      self->_hitOffset = round(v12 * 0.5 - v11);
      goto LABEL_20;
    }

    v13 = [(UIMovieScrubber *)self _editingHandleWithLocatable:v20];
    v5 = v20;
    if (!v13)
    {
      [(UIMovieScrubber *)self _valueForLocatable:v20];
      [(UIMovieScrubber *)self setValue:0 animated:?];
LABEL_20:
      self->_sliderFlags.editingHandle = 0;
      [(UIMovieScrubber *)self _beginTrackPressWithLocatable:v20 touchesBegan:1];
      if ([(UIMovieScrubber *)self isContinuous])
      {
        [(UIControl *)self _sendActionsForEvents:4096 withEvent:0];
      }

      goto LABEL_28;
    }
  }

  if (!self->_editable)
  {
    v17 = 0;
    goto LABEL_30;
  }

  v20 = v5;
  if ([(UIMovieScrubber *)self _editingHandleWithLocatable:v5])
  {
    if (*(&self->_sliderFlags + 8) < 0)
    {
      editingHandle = self->_sliderFlags.editingHandle;
      if (editingHandle == 2)
      {
        [(UIMovieScrubber *)self setTrimEndValue:self->_trimEndValue];
      }

      else
      {
        if (editingHandle != 1)
        {
LABEL_27:
          [(UIMovieScrubber *)self _beginTrackPressWithLocatable:v20 touchesBegan:1];
          goto LABEL_28;
        }

        [(UIMovieScrubber *)self setTrimStartValue:self->_trimStartValue];
      }
    }

    else
    {
      v14 = *(&self->_sliderFlags + 8);
      if (v14 > 0x3F)
      {
        goto LABEL_28;
      }

      if (self->_sliderFlags.editingHandle - 1 <= 1)
      {
        *(&self->_sliderFlags + 8) = v14 | 0x40;
        maxTrimmedLength = self->_maxTrimmedLength;
        if (maxTrimmedLength == 0.0)
        {
          maxTrimmedLength = self->_maximumValue;
          self->_maxTrimmedLength = maxTrimmedLength;
        }

        if (self->_trimEndValue == 0.0)
        {
          self->_trimEndValue = maxTrimmedLength;
        }

        [(UIMovieScrubberEditingView *)self->_editingView setEditing:1];
        if ((*(&self->_sliderFlags + 10) & 0x40) != 0)
        {
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          [WeakRetained movieScrubberWillBeginEditing:self];
        }

        [(UIMovieScrubber *)self setThumbIsVisible:0];
      }
    }

    if (*(&self->_sliderFlags + 8) < 0)
    {
      goto LABEL_27;
    }

LABEL_28:
    v19 = +[_UIStatistics scrubberUsageTime];
    [v19 startTimingForObject:self];

    v17 = 32;
    goto LABEL_29;
  }

  v17 = 0;
LABEL_29:
  v5 = v20;
LABEL_30:
  *(&self->_sliderFlags + 8) = *(&self->_sliderFlags + 8) & 0xDF | v17;
}

- (void)continueTrackingWithLocatable:(id)locatable
{
  locatableCopy = locatable;
  if ((*(&self->_sliderFlags + 8) & 0x20) != 0)
  {
    v6 = locatableCopy;
    [(UIMovieScrubber *)self _cancelTrackPressIfNeccessaryWithLocatable:locatableCopy];
    [(UIMovieScrubber *)self _beginTrackPressWithLocatable:v6 touchesBegan:0];
    locatableCopy = v6;
    if ((*(&self->_sliderFlags + 8) & 2) == 0)
    {
      [(UIMovieScrubber *)self _valueForLocatable:v6];
      editingHandle = self->_sliderFlags.editingHandle;
      if (editingHandle == 2)
      {
        [(UIMovieScrubber *)self setTrimEndValue:?];
      }

      else if (editingHandle == 1)
      {
        [(UIMovieScrubber *)self setTrimStartValue:?];
      }

      else
      {
        locatableCopy = v6;
        if (editingHandle)
        {
          goto LABEL_12;
        }

        [(UIMovieScrubber *)self setValue:0 animated:?];
        if ([(UIMovieScrubber *)self isContinuous])
        {
          [(UIControl *)self _sendActionsForEvents:4096 withEvent:0];
        }

        [(UIControl *)self setHighlighted:1];
      }

      locatableCopy = v6;
    }
  }

LABEL_12:
}

- (void)endTrackingWithLocatable:(id)locatable
{
  locatableCopy = locatable;
  if ((*(&self->_sliderFlags + 8) & 0x20) != 0)
  {
    v4 = +[_UIStatistics scrubberUsageCount];
    [v4 incrementValueBy:1];

    v5 = +[_UIStatistics scrubberUsageTime];
    [v5 recordTimingForObject:self];
  }

  [(UIControl *)self setTracking:0];
  v6 = *(&self->_sliderFlags + 8);
  *(&self->_sliderFlags + 8) = v6 & 0xDF;
  if (v6)
  {
    _RemoveAllAnimationsForView(self);
    [(UIMovieScrubber *)self _setZoomAnimating:1];
    *(&self->_sliderFlags + 8) &= ~1u;
    [(UIMovieScrubberTrackView *)self->_trackView unzoom];
  }

  else
  {
    if ((v6 & 0x40) != 0)
    {
      *(&self->_sliderFlags + 8) = v6 & 0x9E;
      [(UIMovieScrubberEditingView *)self->_editingView setEditing:0];
      [(UIMovieScrubber *)self setThumbIsVisible:1];
      if ((*(&self->_sliderFlags + 10) & 0x100) != 0)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained movieScrubberDidCancelEditing:self];
      }
    }

    if ((*(&self->_sliderFlags + 8) & 0x83) == 0x80)
    {
      [(UIMovieScrubber *)self setRotationDisabled:0];
    }

    [(UIControl *)self setHighlighted:0];
  }

  [(UIMovieScrubber *)self _cancelTrackPress:1];
}

- (BOOL)cancelTouchTracking
{
  if ([(UIControl *)self isTracking])
  {
    [(UIMovieScrubber *)self endTrackingWithLocatable:0];
  }

  if ([(UIControl *)self isHighlighted])
  {
    [(UIControl *)self setHighlighted:0];
  }

  [(UIControl *)self _sendActionsForEvents:256 withEvent:0];
  return 1;
}

- (void)_sliderValueDidChange:(id)change
{
  if ((*(&self->_sliderFlags + 10) & 2) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained movieScrubber:self valueDidChange:self->_value];
  }
}

- (double)movieScrubberTrackViewDuration:(id)duration
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  [WeakRetained movieScrubberDuration:self];
  v6 = v5;

  [(UIMovieScrubber *)self setDuration:v6];
  return v6;
}

- (id)movieScrubberTrackView:(id)view evenlySpacedTimestamps:(int)timestamps startingAt:(id)at endingAt:(id)endingAt
{
  v7 = *&timestamps;
  endingAtCopy = endingAt;
  atCopy = at;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v12 = [WeakRetained movieScrubber:self evenlySpacedTimestamps:v7 startingAt:atCopy endingAt:endingAtCopy];

  return v12;
}

- (void)movieScrubberTrackView:(id)view requestThumbnailImageForTimestamp:(id)timestamp isSummaryThumbnail:(BOOL)thumbnail
{
  thumbnailCopy = thumbnail;
  timestampCopy = timestamp;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v9 = WeakRetained;
  if ((*(&self->_sliderFlags + 10) & 0x4000) != 0)
  {
    [WeakRetained movieScrubber:self requestThumbnailImageForTimestamp:timestampCopy isSummaryThumbnail:thumbnailCopy];
  }

  else
  {
    [WeakRetained movieScrubber:self requestThumbnailImageForTimestamp:timestampCopy];
  }
}

- (double)movieScrubberTrackViewThumbnailAspectRatio:(id)ratio
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  [WeakRetained movieScrubberThumbnailAspectRatio:self];
  v6 = v5;

  return v6;
}

- (void)movieScrubberTrackView:(id)view clampedSizeWidthDelta:(double)delta actualSizeWidthDelta:(double)widthDelta originXDelta:(double)xDelta minimumVisibleValue:(double)value maximumVisibleValue:(double)visibleValue
{
  self->_minimumValue = value;
  self->_maximumValue = visibleValue;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v13 = WeakRetained;
  if ((*(&self->_sliderFlags + 10) & 0x2000) != 0)
  {
    [WeakRetained movieScrubber:self willZoomToMinimumValue:self->_minimumValue maximumValue:self->_maximumValue];
  }

  [(UIMovieScrubberTrackView *)self->_trackView zoomAnimationDuration];
  v15 = fmax(delta / widthDelta, 0.2) * v14;
  self->_zoomAnimationDuration = v15;
  v16 = v14 - v15;
  if (delta >= 0.0)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = v16;
  }

  self->_zoomAnimationDelay = v17;
  zoomAnimationDuration = self->_zoomAnimationDuration;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __138__UIMovieScrubber_movieScrubberTrackView_clampedSizeWidthDelta_actualSizeWidthDelta_originXDelta_minimumVisibleValue_maximumVisibleValue___block_invoke;
  v20[3] = &unk_1E70F9780;
  v20[4] = self;
  v21 = v13;
  deltaCopy = delta;
  xDeltaCopy = xDelta;
  v19 = v13;
  [UIView animateWithDuration:4 delay:v20 options:0 animations:zoomAnimationDuration completion:v17];
}

uint64_t __138__UIMovieScrubber_movieScrubberTrackView_clampedSizeWidthDelta_actualSizeWidthDelta_originXDelta_minimumVisibleValue_maximumVisibleValue___block_invoke(uint64_t a1)
{
  if ((*(*(a1 + 32) + 716) & 0x400) != 0)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    *&v3 = v3;
    *&v4 = v4;
    [*(a1 + 40) movieScrubber:v3 widthDelta:v4 originXDelta:?];
  }

  else
  {
    [*(a1 + 32) frame];
    [*(a1 + 32) setFrame:v2 + *(a1 + 56)];
  }

  v5 = *(a1 + 32);
  if (*(v5 + 704) < 0 && *(v5 + 708) || (v6 = *(v5 + 456), [*(a1 + 32) value], objc_msgSend(v5, "thumbRectForValue:"), result = objc_msgSend(v6, "setFrame:"), v5 = *(a1 + 32), *(v5 + 704) < 0))
  {
    [v5 _editingRectForStartTime:*(v5 + 648) endTime:*(v5 + 656)];
    [*(*(a1 + 32) + 472) setFrame:?];
    v8 = *(*(a1 + 32) + 472);

    return [v8 layoutSubviews];
  }

  return result;
}

- (void)movieScrubberTrackViewDidExpand:(id)expand
{
  if (*(&self->_sliderFlags + 8))
  {
    *&self->_sliderFlags |= 0x20u;
    [(UIMovieScrubber *)self _setZoomAnimating:0];
  }
}

- (void)movieScrubberTrackViewDidCollapse:(id)collapse
{
  *&self->_sliderFlags |= 0x20u;
  [(UIMovieScrubber *)self _setZoomAnimating:0];

  [(UIMovieScrubber *)self setRotationDisabled:0];
}

- (void)movieScrubberTrackViewWillBeginRequestingThumbnails:(id)thumbnails
{
  if ((*(&self->_sliderFlags + 10) & 0x10) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained movieScrubberWillBeginRequestingThumbnails:self];
  }
}

- (void)movieScrubberTrackViewDidFinishRequestingThumbnails:(id)thumbnails
{
  if ((*(&self->_sliderFlags + 10) & 0x20) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained movieScrubberDidFinishRequestingThumbnails:self];
  }
}

@end