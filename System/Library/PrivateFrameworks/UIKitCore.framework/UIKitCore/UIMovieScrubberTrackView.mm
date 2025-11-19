@interface UIMovieScrubberTrackView
- (BOOL)zoomAtPoint:(CGPoint)a3;
- (UIMovieScrubberTrackView)initWithFrame:(CGRect)a3;
- (UIMovieScrubberTrackViewDataSource)dataSource;
- (UIMovieScrubberTrackViewDelegate)delegate;
- (id)_createImageViewForTimestamp:(id)a3 isSummaryThumbnail:(BOOL)a4;
- (void)_reallyReloadData;
- (void)_setOverlayViewIsZoomed:(BOOL)a3 minValue:(float)a4 maxValue:(float)a5;
- (void)_unzoomAnimationDidFinish;
- (void)_zoomAnimationDidFinish;
- (void)clear;
- (void)layoutSubviews;
- (void)setDataSource:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setEditing:(BOOL)a3;
- (void)setEndValue:(double)a3;
- (void)setStartValue:(double)a3;
- (void)setThumbnailImage:(CGImage *)a3 forTimestamp:(id)a4;
- (void)setValue:(double)a3;
- (void)unzoom;
@end

@implementation UIMovieScrubberTrackView

- (UIMovieScrubberTrackView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v15.receiver = self;
  v15.super_class = UIMovieScrubberTrackView;
  v5 = [(UIView *)&v15 initWithFrame:a3.origin.x, a3.origin.y];
  if (v5)
  {
    v6 = [UIColor colorWithWhite:0.0 alpha:1.0];
    [(UIView *)v5 setBackgroundColor:v6];

    [(UIView *)v5 setClipsToBounds:1];
    [(UIView *)v5 setUserInteractionEnabled:0];
    [(UIView *)v5 setOpaque:0];
    [(UIView *)v5 setContentMode:3];
    v5->_zoomAnimationDuration = 0.5;
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    thumbnailViews = v5->_thumbnailViews;
    v5->_thumbnailViews = v7;

    v9 = [UIView alloc];
    [(UIView *)v5 bounds];
    v10 = [(UIView *)v9 initWithFrame:?];
    maskContainerView = v5->_maskContainerView;
    v5->_maskContainerView = v10;

    [(UIView *)v5->_maskContainerView setAutoresizingMask:2];
    [(UIView *)v5->_maskContainerView setUserInteractionEnabled:0];
    [(UIView *)v5->_maskContainerView setOpaque:0];
    v12 = [[UIMovieScrubberTrackOverlayView alloc] initWithFrame:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), width, height];
    overlayView = v5->_overlayView;
    v5->_overlayView = v12;

    [(UIView *)v5->_overlayView setAutoresizingMask:2];
    [(UIView *)v5->_maskContainerView addSubview:v5->_overlayView];
    [(UIView *)v5 addSubview:v5->_maskContainerView];
  }

  return v5;
}

- (void)setDataSource:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_dataSource, obj);
    [(UIView *)self setNeedsLayout];
    v5 = obj;
  }
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (!obj || WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    *&self->_trackFlags = *&self->_trackFlags & 0xFFFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    *&self->_trackFlags = *&self->_trackFlags & 0xFFFD | v6;
    if (objc_opt_respondsToSelector())
    {
      v7 = 4;
    }

    else
    {
      v7 = 0;
    }

    *&self->_trackFlags = *&self->_trackFlags & 0xFFFB | v7;
    if (objc_opt_respondsToSelector())
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    *&self->_trackFlags = *&self->_trackFlags & 0xFFF7 | v8;
    if (objc_opt_respondsToSelector())
    {
      v9 = 16;
    }

    else
    {
      v9 = 0;
    }

    *&self->_trackFlags = *&self->_trackFlags & 0xFFEF | v9;
    if (objc_opt_respondsToSelector())
    {
      v10 = 32;
    }

    else
    {
      v10 = 0;
    }

    *&self->_trackFlags = *&self->_trackFlags & 0xFFDF | v10;
    v11 = objc_opt_respondsToSelector();
    v5 = obj;
    if (v11)
    {
      v12 = 64;
    }

    else
    {
      v12 = 0;
    }

    *&self->_trackFlags = *&self->_trackFlags & 0xFFBF | v12;
  }
}

- (void)setValue:(double)a3
{
  if (self->_value != a3)
  {
    self->_value = a3;
    if ((*&self->_trackFlags & 0x100) != 0)
    {
      self->_trackFlags.editingHandle = 0;
    }

    else
    {
      [(UIMovieScrubberTrackOverlayView *)self->_overlayView setValue:?];
    }
  }
}

- (void)setEditing:(BOOL)a3
{
  trackFlags = self->_trackFlags;
  if (((((trackFlags & 0x100) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v5 = 256;
    }

    else
    {
      v5 = 0;
    }

    *&self->_trackFlags = trackFlags & 0xFEFF | v5;
    [(UIMovieScrubberTrackOverlayView *)self->_overlayView setEditing:?];
    overlayView = self->_overlayView;
    if ((*&self->_trackFlags & 0x100) != 0)
    {
      v7 = &OBJC_IVAR___UIMovieScrubberTrackView__startValue;
    }

    else
    {
      v7 = &OBJC_IVAR___UIMovieScrubberTrackView__value;
    }

    v8 = *(&self->super.super.super.isa + *v7);

    [(UIMovieScrubberTrackOverlayView *)overlayView setValue:v8];
  }
}

- (void)setStartValue:(double)a3
{
  if (self->_startValue != a3)
  {
    self->_startValue = a3;
    [(UIMovieScrubberTrackOverlayView *)self->_overlayView setStartValue:?];
  }

  if ((*&self->_trackFlags & 0x100) != 0)
  {
    self->_trackFlags.editingHandle = 1;
    overlayView = self->_overlayView;

    [(UIMovieScrubberTrackOverlayView *)overlayView setEditingHandle:1];
  }
}

- (void)setEndValue:(double)a3
{
  if (self->_endValue != a3)
  {
    self->_endValue = a3;
    [(UIMovieScrubberTrackOverlayView *)self->_overlayView setEndValue:?];
  }

  if ((*&self->_trackFlags & 0x100) != 0)
  {
    self->_trackFlags.editingHandle = 2;
    overlayView = self->_overlayView;

    [(UIMovieScrubberTrackOverlayView *)overlayView setEditingHandle:2];
  }
}

- (void)setThumbnailImage:(CGImage *)a3 forTimestamp:(id)a4
{
  v63 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v45 = self;
  v7 = [(NSMutableDictionary *)self->_thumbnailViews objectForKey:v6];
  v8 = [v7 count];
  if (a3 && v8)
  {
    v9 = [[UIImage alloc] initWithCGImage:a3];
    v10 = *MEMORY[0x1E695EFF8];
    v11 = *(MEMORY[0x1E695EFF8] + 8);
    [(UIImage *)v9 size];
    v13 = v12;
    v15 = v14;
    _UIGraphicsBeginImageContextWithOptions(0, 0, v12, v14, 1.0);
    v42 = v9;
    [(UIImage *)v9 drawInRect:v10, v11, v13, v15];
    v16 = [UIColor colorWithWhite:0.0 alpha:0.2];
    [v16 set];

    v64.origin.x = v13 + -1.0;
    v64.origin.y = 0.0;
    v64.size.width = 1.0;
    v64.size.height = v15;
    UIRectFillUsingBlendMode(v64, kCGBlendModeNormal);
    v17 = _UIGraphicsGetImageFromCurrentImageContext(0);
    UIGraphicsEndImageContext();
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v43 = v7;
    v18 = v7;
    v19 = [v18 countByEnumeratingWithState:&v56 objects:v62 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v57;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v57 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v56 + 1) + 8 * i);
          [v23 setImage:v17];
          [v23 setHasPlaceholderImage:0];
        }

        v20 = [v18 countByEnumeratingWithState:&v56 objects:v62 count:16];
      }

      while (v20);
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    obj = [(NSMutableDictionary *)v45->_thumbnailViews allKeys];
    v24 = [obj countByEnumeratingWithState:&v52 objects:v61 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v53;
      v44 = *v53;
      do
      {
        v27 = 0;
        v46 = v25;
        do
        {
          if (*v53 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v52 + 1) + 8 * v27);
          [v28 doubleValue];
          v30 = v29;
          [v6 doubleValue];
          if (v30 >= v31)
          {
            v32 = v6;
            v33 = [(NSMutableDictionary *)v45->_thumbnailViews objectForKey:v28];
            v34 = v33;
            v35 = v18;
            if (v33 != v18)
            {
              v50 = 0u;
              v51 = 0u;
              v48 = 0u;
              v49 = 0u;
              v36 = [v33 countByEnumeratingWithState:&v48 objects:v60 count:16];
              if (v36)
              {
                v37 = v36;
                v38 = *v49;
                do
                {
                  for (j = 0; j != v37; ++j)
                  {
                    if (*v49 != v38)
                    {
                      objc_enumerationMutation(v34);
                    }

                    v40 = *(*(&v48 + 1) + 8 * j);
                    v41 = [v40 image];

                    if (!v41)
                    {
                      [v40 setImage:v17];
                      [v40 setHasPlaceholderImage:1];
                    }
                  }

                  v37 = [v34 countByEnumeratingWithState:&v48 objects:v60 count:16];
                }

                while (v37);
              }
            }

            v6 = v32;
            v18 = v35;
            v26 = v44;
            v25 = v46;
          }

          ++v27;
        }

        while (v27 != v25);
        v25 = [obj countByEnumeratingWithState:&v52 objects:v61 count:16];
      }

      while (v25);
    }

    v7 = v43;
  }
}

- (id)_createImageViewForTimestamp:(id)a3 isSummaryThumbnail:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(UIImageView *)[UIMovieScrubberThumbnailView alloc] initWithFrame:0.0, 0.0, self->_thumbnailSize.width, self->_thumbnailSize.height];
  [(UIView *)v7 setUserInteractionEnabled:1];
  v8 = [(NSMutableDictionary *)self->_thumbnailViews objectForKey:v6];
  if (v8)
  {
    v9 = v8;
    if ([v8 count])
    {
      v10 = [v9 objectAtIndex:0];
      v11 = [v10 image];

      if (v11)
      {
        [(UIImageView *)v7 setImage:v11];
      }
    }

    [v9 addObject:v7];
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v7, 0}];
    [(NSMutableDictionary *)self->_thumbnailViews setObject:v9 forKey:v6];
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    [WeakRetained movieScrubberTrackView:self requestThumbnailImageForTimestamp:v6 isSummaryThumbnail:v4];
  }

  return v7;
}

- (void)clear
{
  v3 = [(NSMutableDictionary *)self->_thumbnailViews allValues];
  [v3 makeObjectsPerformSelector:sel_removeViewsFromSuperview];

  [(NSMutableDictionary *)self->_thumbnailViews removeAllObjects];
  thumbnailStartXValues = self->_thumbnailStartXValues;
  self->_thumbnailStartXValues = 0;

  childThumbnailViews = self->_childThumbnailViews;
  self->_childThumbnailViews = 0;

  summaryThumbnailViews = self->_summaryThumbnailViews;
  self->_summaryThumbnailViews = 0;

  summaryThumbnailTimestamps = self->_summaryThumbnailTimestamps;
  self->_summaryThumbnailTimestamps = 0;

  summaryThumbnailChildTimestamps = self->_summaryThumbnailChildTimestamps;
  self->_summaryThumbnailChildTimestamps = 0;

  timestamps = self->_timestamps;
  self->_timestamps = 0;
}

- (void)_reallyReloadData
{
  [(UIMovieScrubberTrackView *)self clear];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v62 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v63 = objc_alloc_init(MEMORY[0x1E695DF70]);
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  [WeakRetained movieScrubberTrackViewThumbnailAspectRatio:self];
  v7 = v6;

  self->_thumbnailSize.height = 32.0;
  v8 = v7 * 32.0;
  self->_thumbnailSize.width = rintf(v8);
  v9 = objc_loadWeakRetained(&self->_dataSource);
  [v9 movieScrubberTrackViewDuration:self];
  v11 = v10;

  [(UIView *)self bounds];
  LODWORD(v2) = vcvtpd_s64_f64(v12 / self->_thumbnailSize.width);
  v13 = objc_loadWeakRetained(&self->_dataSource);
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
  v16 = [v13 movieScrubberTrackView:self evenlySpacedTimestamps:v2 startingAt:v14 endingAt:v15];

  v17 = [(NSArray *)v16 count];
  v18 = v17;
  v19 = *(&self->_trackFlags + 8) & 0xFE;
  if (v17 < v2)
  {
    ++v19;
  }

  p_trackFlags = &self->_trackFlags;
  *(&self->_trackFlags + 8) = v19;
  v20 = v17 >= v2 || v17 < 1;
  v58 = v4;
  if (!v20)
  {
    v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([v21 count] < v2)
    {
      v22 = v2;
      v23 = v18 - 1;
      do
      {
        if (v23 >= v18)
        {
          v24 = 0;
        }

        else
        {
          v24 = v23;
        }

        v25 = [(NSArray *)v16 objectAtIndex:v24, v58];
        [v21 addObject:v25];

        v23 = v24 + 1;
      }

      while ([v21 count] < v22);
    }

    [v21 sortUsingSelector:{sel_compare_, v58}];
    v26 = v21;

    v18 = [(NSArray *)v26 count];
    v16 = v26;
    v4 = v58;
  }

  width = self->_thumbnailSize.width;
  height = self->_thumbnailSize.height;
  v60 = objc_loadWeakRetained(&self->_delegate);
  if ((*p_trackFlags & 8) != 0)
  {
    [v60 movieScrubberTrackViewWillBeginRequestingThumbnails:self];
  }

  if (v18 >= 1)
  {
    v29 = 0;
    v30 = *(MEMORY[0x1E695F058] + 8);
    v31 = v18;
    do
    {
      v32 = [(NSArray *)v16 objectAtIndex:v29, v58];
      v33 = [(UIMovieScrubberTrackView *)self _createImageViewForTimestamp:v32 isSummaryThumbnail:1];
      [(UIView *)self->_maskContainerView addSubview:v33];
      v34 = width * v29;
      [v33 setFrame:{rintf(v34) + 0.0, v30, width, height}];
      [v4 addObject:v33];

      ++v29;
    }

    while (v31 != v29);
  }

  if ((*p_trackFlags & 0x10) != 0)
  {
    [v60 movieScrubberTrackViewDidFinishRequestingThumbnails:self];
  }

  v35 = [(NSArray *)v16 count];
  if ((*(&self->_trackFlags + 8) & 1) == 0 && v35 >= 1)
  {
    v36 = 0;
    v37 = (v35 - 1);
    v38 = v35 & 0x7FFFFFFF;
    do
    {
      v39 = [(NSArray *)v16 objectAtIndex:v36];
      if (v37 == v36)
      {
        [MEMORY[0x1E696AD98] numberWithDouble:v11];
      }

      else
      {
        [(NSArray *)v16 objectAtIndex:v36 + 1];
      }
      v40 = ;
      v41 = objc_loadWeakRetained(&self->_dataSource);
      v42 = [v41 movieScrubberTrackView:self evenlySpacedTimestamps:5 startingAt:v39 endingAt:v40];

      v43 = [v42 count];
      if (v43)
      {
        v44 = [v42 objectAtIndex:0];
        [v44 doubleValue];
        v46 = v45;
        [v39 doubleValue];
        v48 = v47;

        if (v46 == v48)
        {
          v49 = [v42 subarrayWithRange:{1, v43 - 1}];

          v42 = v49;
        }
      }

      [(NSArray *)v62 addObject:v42];
      [(NSArray *)v63 addObject:v39];
      [(NSArray *)v63 addObjectsFromArray:v42];

      ++v36;
    }

    while (v38 != v36);
  }

  summaryThumbnailViews = self->_summaryThumbnailViews;
  self->_summaryThumbnailViews = v59;
  v51 = v59;

  summaryThumbnailTimestamps = self->_summaryThumbnailTimestamps;
  self->_summaryThumbnailTimestamps = v16;
  v53 = v16;

  summaryThumbnailChildTimestamps = self->_summaryThumbnailChildTimestamps;
  self->_summaryThumbnailChildTimestamps = v62;
  v55 = v62;

  timestamps = self->_timestamps;
  self->_timestamps = v63;
  v57 = v63;

  [(UIMovieScrubberTrackOverlayView *)self->_overlayView setMinimumValue:0.0];
  [(UIMovieScrubberTrackOverlayView *)self->_overlayView setMaximumValue:v11];
  [(UIView *)self->_overlayView layoutIfNeeded];
  self->_duration = v11;
  [(UIView *)self->_maskContainerView bringSubviewToFront:self->_overlayView];

  *p_trackFlags &= ~0x80u;
}

- (void)layoutSubviews
{
  if ((*&self->_trackFlags & 0x80) != 0)
  {
    [(UIMovieScrubberTrackView *)self _reallyReloadData];
  }

  v3.receiver = self;
  v3.super_class = UIMovieScrubberTrackView;
  [(UIView *)&v3 layoutSubviews];
}

- (BOOL)zoomAtPoint:(CGPoint)a3
{
  p_trackFlags = &self->_trackFlags;
  if (*(&self->_trackFlags + 8))
  {
    LOBYTE(v15) = 0;
  }

  else
  {
    y = a3.y;
    x = a3.x;
    v6 = self;
    v7 = [(NSArray *)self->_summaryThumbnailViews count];
    v8 = v7;
    v9 = 480;
    v10 = 0.0;
    if (x >= v6->_thumbnailSize.width * v7 + 0.0 + -1.0)
    {
      x = v6->_thumbnailSize.width * v7 + 0.0 + -1.0;
    }

    [(UIView *)v6->_maskContainerView setUserInteractionEnabled:1];
    v11 = [(UIView *)v6->_maskContainerView hitTest:0 withEvent:x, y];
    [(UIView *)v6->_maskContainerView setUserInteractionEnabled:0];
    v12 = [(NSArray *)v6->_summaryThumbnailViews indexOfObject:v11];
    v13 = v12;
    LODWORD(v15) = v12 >= 0 && v12 < v8;
    if (v15 == 1)
    {
      v116 = v11;
      childThumbnailViews = v6->_childThumbnailViews;
      v6->_childThumbnailViews = 0;

      thumbnailStartXValues = v6->_thumbnailStartXValues;
      v6->_thumbnailStartXValues = 0;

      v126 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v127 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v124 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v118 = v13;
      if (v13)
      {
        v18 = p_trackFlags;
        v19 = 0;
        v20 = 0;
        v21 = v13 & 0x7FFFFFFF;
        do
        {
          v22 = [(NSArray *)v6->_summaryThumbnailChildTimestamps objectAtIndex:v19];
          v20 += [v22 count];

          ++v19;
        }

        while (v21 != v19);
        v10 = v20;
        p_trackFlags = v18;
      }

      v23 = [(UIView *)v6 superview];
      if ([v23 isInsideNavigationBar])
      {
        EnclosingNavigationBar(v23);
      }

      else
      {
        [v23 superview];
      }
      v24 = ;
      [v24 bounds];
      v132 = v26;
      v133 = v25;
      v130 = v28;
      v131 = v27;
      [(UIView *)v6 bounds];
      [v24 convertRect:v6 fromView:?];
      v140 = v29;
      v142 = v30;
      v31 = [(NSArray *)v6->_timestamps count];
      width = v6->_thumbnailSize.width;
      v33 = width * (v31 - v8);
      v138 = rintf(v33);
      v34 = v138;
      v35 = -(width * v10);
      v36 = v35 + v138;
      v6->_unclampedZoomWidthDelta = v36;
      [(UIView *)v6 bounds];
      v39 = &OBJC_IVAR___UIMovieScrubberTrackView__value;
      if ((*p_trackFlags & 0x100) != 0)
      {
        editingHandle = p_trackFlags->editingHandle;
        if (editingHandle == 2)
        {
          v39 = &OBJC_IVAR___UIMovieScrubberTrackView__endValue;
        }

        if (editingHandle == 1)
        {
          v39 = &OBJC_IVAR___UIMovieScrubberTrackView__startValue;
        }
      }

      v41 = *(&v6->super.super.super.isa + *v39);
      v42 = v38 + v34;
      v43 = v35 - (v35 + v37 + (v38 + v34) * (v41 / v6->_duration) - (v37 + v38 * (v41 / v6->_duration)));
      v44 = rintf(v43);
      v45 = v44;
      [(UIView *)v6 bounds];
      [v24 convertRect:v6 fromView:?];
      v47 = v46;
      v49 = v48;
      v144 = v50 + v44;
      v146 = v51 + v34;
      v157.origin.y = v132;
      v157.origin.x = v133;
      v157.size.height = v130;
      v157.size.width = v131;
      v158 = CGRectInset(v157, -0.0, 0.0);
      v164.origin.x = v144;
      v164.size.width = v146;
      v164.origin.y = v47;
      v164.size.height = v49;
      v159 = CGRectIntersection(v158, v164);
      v136 = v159.origin.x;
      MaxX = CGRectGetMaxX(v159);
      v53.f64[0] = v136;
      v53.f64[1] = MaxX;
      v147 = vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_f64(vdivq_f64(vsubq_f64(v53, vdupq_lane_s64(*&v144, 0)), vdupq_lane_s64(*&v146, 0)))), v6->_duration);
      [v23 frame];
      v112 = v55;
      v113 = v54;
      v110 = v57;
      v111 = v56;
      v115 = v23;
      [v23 setFrame:v54 + v44];
      duration = v6->_duration;
      v59 = duration / v42;
      *&duration = duration;
      if (vabds_f32(v41, *&duration) >= v59)
      {
        v60 = -v140;
      }

      else
      {
        v60 = v140 * -2.0;
      }

      if (v60 >= v45)
      {
        v61 = v60;
        v62 = v61;
      }

      else
      {
        v62 = v44;
      }

      v6->_zoomOriginXDelta = v62;
      v64 = v138;
      if (v131 - v142 < v34)
      {
        v63 = v131 - v142 + 0.0;
        v64 = v63;
      }

      v6->_zoomWidthDelta = v64;
      zoomOriginXDelta = v6->_zoomOriginXDelta;
      WeakRetained = objc_loadWeakRetained(&v6->_delegate);
      v114 = p_trackFlags;
      if ((*p_trackFlags & 8) != 0)
      {
        [WeakRetained movieScrubberTrackViewWillBeginRequestingThumbnails:v6];
      }

      v66 = 0;
      v67 = 0;
      v108 = zoomOriginXDelta - v45;
      v109 = vcvt_f32_f64(v147);
      v119 = v8;
      do
      {
        v68 = [(NSArray *)v6->_summaryThumbnailViews objectAtIndex:v66];
        v69 = [v68 superview];
        [v68 frame];
        v71 = v70;
        v141 = v72;
        v143 = v73;
        v139 = v74;
        v123 = v66;
        v128 = [(NSArray *)v6->_summaryThumbnailChildTimestamps objectAtIndex:v66];
        v75 = [v128 count];
        v121 = v67;
        v76 = v71 + *(&v6->super.super.super.isa + v9) * v67;
        v129 = v68;
        v77 = [MEMORY[0x1E696B098] valueWithPointer:v68];
        v125 = v71;
        *&v78 = v71;
        v79 = [MEMORY[0x1E696AD98] numberWithFloat:v78];
        [(NSDictionary *)v127 setObject:v79 forKey:v77];
        v135 = v76;
        *&v80 = v76;
        v81 = [MEMORY[0x1E696AD98] numberWithFloat:v80];
        v120 = v77;
        [v126 setObject:v81 forKey:v77];

        v122 = v75;
        if (v75 >= 1)
        {
          v82 = v123 - v118;
          if (v123 - v118 < 0)
          {
            v82 = v118 - v123;
          }

          v134 = v143 / v82;
          v83 = v75 & 0x7FFFFFFF;
          do
          {
            v84 = v83 - 1;
            v137 = v135 + *(&v6->super.super.super.isa + v9) * v83;
            [v24 convertRect:v69 fromView:?];
            v85 = v160.origin.x;
            v86 = v160.origin.y;
            v87 = v160.size.width;
            height = v160.size.height;
            MinX = CGRectGetMinX(v160);
            v161.origin.x = v133;
            v161.origin.y = v132;
            v161.size.width = v131;
            v161.size.height = v130;
            v145 = CGRectGetMaxX(v161);
            v162.origin.x = v133;
            v162.origin.y = v132;
            v162.size.width = v131;
            v162.size.height = v130;
            v89 = CGRectGetMinX(v162);
            v163.origin.x = v85;
            v163.origin.y = v86;
            v163.size.width = v87;
            v163.size.height = height;
            if (v89 - CGRectGetMaxX(v163) <= v134 && MinX - v145 <= v134)
            {
              [v128 objectAtIndex:v84];
              v92 = v91 = v24;
              v93 = [(UIMovieScrubberTrackView *)v6 _createImageViewForTimestamp:v92 isSummaryThumbnail:0];
              [(NSDictionary *)v124 setObject:v93 forKey:v92];
              [(UIView *)v6->_maskContainerView insertSubview:v93 belowSubview:v129];
              [v93 setFrame:{v125, v141, v143, v139}];
              v94 = [MEMORY[0x1E696B098] valueWithPointer:v93];
              [(NSDictionary *)v127 setObject:v79 forKey:v94];
              HIDWORD(v95) = HIDWORD(v137);
              *&v95 = v137;
              [MEMORY[0x1E696AD98] numberWithFloat:v95];
              v96 = v6;
              v98 = v97 = v9;
              [v126 setObject:v98 forKey:v94];

              v9 = v97;
              v6 = v96;

              v24 = v91;
            }

            v83 = v84;
          }

          while ((v84 + 1) > 1);
        }

        v67 = v121 + v122;

        v66 = v123 + 1;
      }

      while (v123 + 1 != v119);
      if ((*v114 & 0x10) != 0)
      {
        [WeakRetained movieScrubberTrackViewDidFinishRequestingThumbnails:v6];
      }

      v99 = [(UIView *)v6 window];
      [v99 beginDisablingInterfaceAutorotation];

      zoomAnimationDuration = v6->_zoomAnimationDuration;
      v153[0] = MEMORY[0x1E69E9820];
      v153[1] = 3221225472;
      v153[2] = __40__UIMovieScrubberTrackView_zoomAtPoint___block_invoke;
      v153[3] = &unk_1E70F36D0;
      v154 = v126;
      v155 = v6;
      v156 = v108;
      v152[0] = MEMORY[0x1E69E9820];
      v152[1] = 3221225472;
      v152[2] = __40__UIMovieScrubberTrackView_zoomAtPoint___block_invoke_2;
      v152[3] = &unk_1E70F5AC0;
      v152[4] = v6;
      v101 = v126;
      [UIView animateWithDuration:4 delay:v153 options:v152 animations:zoomAnimationDuration completion:0.0];
      v102 = v6->_childThumbnailViews;
      v6->_childThumbnailViews = v124;
      v103 = v124;

      v15 = v6->_thumbnailStartXValues;
      v6->_thumbnailStartXValues = v127;
      v104 = v127;

      [v115 setFrame:{v113, v112, v111, v110}];
      v105 = v6->_zoomAnimationDuration;
      v149[0] = MEMORY[0x1E69E9820];
      v149[1] = 3221225472;
      v149[2] = __40__UIMovieScrubberTrackView_zoomAtPoint___block_invoke_3;
      v149[3] = &unk_1E70F36D0;
      v149[4] = v6;
      v150 = WeakRetained;
      v151 = v109;
      v106 = WeakRetained;
      [UIView animateWithDuration:4 delay:v149 options:0 animations:v105 completion:0.0];

      v11 = v116;
      LOBYTE(v15) = 1;
    }
  }

  return v15;
}

void __40__UIMovieScrubberTrackView_zoomAtPoint___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [*(a1 + 32) allKeys];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    v6 = *(MEMORY[0x1E695F058] + 8);
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = *(*(a1 + 40) + 480);
        v10 = *(*(a1 + 40) + 488);
        v11 = [*(a1 + 32) objectForKey:v8];
        [v11 floatValue];
        v13 = v12 - *(a1 + 48);

        v14 = [v8 pointerValue];
        [v14 setFrame:{v13, v6, v9, v10}];
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }
}

uint64_t __40__UIMovieScrubberTrackView_zoomAtPoint___block_invoke_3(uint64_t a1, double a2, double a3)
{
  v4 = *(a1 + 32);
  if (*(v4 + 544))
  {
    [*(a1 + 40) movieScrubberTrackView:*(v4 + 500) clampedSizeWidthDelta:*(v4 + 504) actualSizeWidthDelta:*(v4 + 496) originXDelta:*(a1 + 48) minimumVisibleValue:*(a1 + 52) maximumVisibleValue:?];
    v4 = *(a1 + 32);
  }

  LODWORD(a2) = *(a1 + 48);
  LODWORD(a3) = *(a1 + 52);

  return [v4 _setOverlayViewIsZoomed:1 minValue:a2 maxValue:a3];
}

- (void)_setOverlayViewIsZoomed:(BOOL)a3 minValue:(float)a4 maxValue:(float)a5
{
  zoomAnimationDuration = self->_zoomAnimationDuration;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = WeakRetained;
  trackFlags = self->_trackFlags;
  if ((trackFlags & 0x20) != 0)
  {
    [WeakRetained movieScrubberTrackViewZoomAnimationDuration:self];
    v13 = v14;
    trackFlags = self->_trackFlags;
  }

  else
  {
    v13 = zoomAnimationDuration;
  }

  v15 = 0.0;
  if ((trackFlags & 0x40) != 0)
  {
    [v11 movieScrubberTrackViewZoomAnimationDelay:self];
    v15 = v16;
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __70__UIMovieScrubberTrackView__setOverlayViewIsZoomed_minValue_maxValue___block_invoke;
  v17[3] = &unk_1E7101F90;
  v17[4] = self;
  v20 = a3;
  v18 = a4;
  v19 = a5;
  [UIView animateWithDuration:4 delay:v17 options:0 animations:v13 completion:v15];
}

uint64_t __70__UIMovieScrubberTrackView__setOverlayViewIsZoomed_minValue_maxValue___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 464) setIsZoomed:*(a1 + 48)];
  [*(*(a1 + 32) + 464) setMinimumValue:*(a1 + 40)];
  [*(*(a1 + 32) + 464) setMaximumValue:*(a1 + 44)];
  v2 = *(*(a1 + 32) + 464);

  return [v2 layoutSubviews];
}

- (void)unzoom
{
  zoomAnimationDuration = self->_zoomAnimationDuration;
  v3[4] = self;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__UIMovieScrubberTrackView_unzoom__block_invoke;
  v4[3] = &unk_1E70F3590;
  v4[4] = self;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __34__UIMovieScrubberTrackView_unzoom__block_invoke_2;
  v3[3] = &unk_1E70F5AC0;
  [UIView animateWithDuration:4 delay:v4 options:v3 animations:zoomAnimationDuration completion:0.0];
}

uint64_t __34__UIMovieScrubberTrackView_unzoom__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = [*(*(a1 + 32) + 432) allKeys];
  v3 = [v2 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
    v6 = *(MEMORY[0x1E695F058] + 8);
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v9 = [v8 pointerValue];
        v10 = *(a1 + 32);
        v11 = *(v10 + 480);
        v12 = *(v10 + 488);
        v13 = [*(v10 + 432) objectForKey:v8];
        [v13 floatValue];
        v15 = v14;

        [v9 setFrame:{v15, v6, v11, v12}];
      }

      v4 = [v2 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v4);
  }

  v17 = *(a1 + 32);
  if (*(v17 + 544))
  {
    WeakRetained = objc_loadWeakRetained((v17 + 568));
    [WeakRetained movieScrubberTrackView:-*(*(a1 + 32) + 500) clampedSizeWidthDelta:-*(*(a1 + 32) + 504) actualSizeWidthDelta:-*(*(a1 + 32) + 496) originXDelta:0.0 minimumVisibleValue:*(*(a1 + 32) + 512) maximumVisibleValue:?];

    v17 = *(a1 + 32);
  }

  *&v16 = *(v17 + 512);
  return [v17 _setOverlayViewIsZoomed:0 minValue:0.0 maxValue:v16];
}

- (void)_zoomAnimationDidFinish
{
  if ((*&self->_trackFlags & 2) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained movieScrubberTrackViewDidExpand:self];
  }
}

- (void)_unzoomAnimationDidFinish
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(NSDictionary *)self->_childThumbnailViews allKeys];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(NSMutableDictionary *)self->_thumbnailViews removeObjectForKey:*(*(&v13 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v8 = [(NSDictionary *)self->_childThumbnailViews allValues];
  [v8 makeObjectsPerformSelector:sel_removeFromSuperview];

  childThumbnailViews = self->_childThumbnailViews;
  self->_childThumbnailViews = 0;

  thumbnailStartXValues = self->_thumbnailStartXValues;
  self->_thumbnailStartXValues = 0;

  v11 = [(UIView *)self window];
  [v11 endDisablingInterfaceAutorotation];

  if ((*&self->_trackFlags & 4) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained movieScrubberTrackViewDidCollapse:self];
  }
}

- (UIMovieScrubberTrackViewDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (UIMovieScrubberTrackViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end