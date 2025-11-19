@interface PXTrimScrubberLayoutHelper
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timeForOffsetInScrubberSpace:(SEL)a3;
- (CGRect)durationInsetFilmstripFrame;
- (CGRect)filmstripFrame;
- (CGRect)filmstripFrameInScrubberSpace;
- (CGRect)viewportFrame;
- (CGRect)visibleFrameInFilmstripSpace;
- (PXTrimScrubberLayoutHelper)init;
- (UIEdgeInsets)horizontalTimelineInset;
- (double)offsetInScrubberSpaceForTime:(id *)a3;
- (double)offsetInScrubberSpaceForTime:(id *)a3 fallbackAnchor:(double)a4;
- (double)offsetInViewportSpaceForTime:(id *)a3;
- (double)offsetInViewportSpaceForTime:(id *)a3 fallbackAnchor:(double)a4;
- (void)_updateIfNeeded;
- (void)setDuration:(id *)a3;
- (void)setFilmstripScale:(double)a3;
- (void)setPivotAnchor:(double)a3;
- (void)setViewportFrame:(CGRect)a3;
@end

@implementation PXTrimScrubberLayoutHelper

- (UIEdgeInsets)horizontalTimelineInset
{
  top = self->_horizontalTimelineInset.top;
  left = self->_horizontalTimelineInset.left;
  bottom = self->_horizontalTimelineInset.bottom;
  right = self->_horizontalTimelineInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGRect)viewportFrame
{
  x = self->_viewportFrame.origin.x;
  y = self->_viewportFrame.origin.y;
  width = self->_viewportFrame.size.width;
  height = self->_viewportFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)durationInsetFilmstripFrame
{
  [(PXTrimScrubberLayoutHelper *)self horizontalTimelineInset];
  v4 = v3;
  v6 = v5;
  [(PXTrimScrubberLayoutHelper *)self filmstripFrame];
  v9 = v4 + v8;
  v11 = v10 + 0.0;
  v13 = v12 - (v4 + v6);
  result.size.height = v7;
  result.size.width = v13;
  result.origin.y = v11;
  result.origin.x = v9;
  return result;
}

- (void)_updateIfNeeded
{
  if ([(PXTrimScrubberLayoutHelper *)self needsUpdate])
  {
    [(PXTrimScrubberLayoutHelper *)self setNeedsUpdate:0];
    [(PXTrimScrubberLayoutHelper *)self viewportFrame];
    CGRectGetWidth(v3);
    [(PXTrimScrubberLayoutHelper *)self filmstripScale];
    [(PXTrimScrubberLayoutHelper *)self pivotAnchor];
    PXMapValueFromRangeToNewRange();
  }
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timeForOffsetInScrubberSpace:(SEL)a3
{
  v7 = MEMORY[0x1E6960CC0];
  *retstr = **&MEMORY[0x1E6960CC0];
  result = [(PXTrimScrubberLayoutHelper *)self duration];
  if ((v23 & 0x1D) == 1)
  {
    [(PXTrimScrubberLayoutHelper *)self duration];
    time2 = *v7;
    result = CMTimeCompare(&time1, &time2);
    if (result >= 1)
    {
      [(PXTrimScrubberLayoutHelper *)self viewportFrame];
      v9 = a4 - CGRectGetMinX(v24);
      [(PXTrimScrubberLayoutHelper *)self durationInsetFilmstripFrame];
      x = v25.origin.x;
      y = v25.origin.y;
      width = v25.size.width;
      height = v25.size.height;
      if (v9 <= CGRectGetMinX(v25))
      {
        *&retstr->var0 = *&v7->value;
        epoch = v7->epoch;
        goto LABEL_7;
      }

      v26.origin.x = x;
      v26.origin.y = y;
      v26.size.width = width;
      v26.size.height = height;
      if (v9 < CGRectGetMaxX(v26))
      {
        v27.origin.x = x;
        v27.origin.y = y;
        v27.size.width = width;
        v27.size.height = height;
        v14 = v9 - CGRectGetMinX(v27);
        v28.origin.x = x;
        v28.origin.y = y;
        v28.size.width = width;
        v28.size.height = height;
        v15 = v14 / CGRectGetWidth(v28);
        [(PXTrimScrubberLayoutHelper *)self duration];
        v16 = v15 * CMTimeGetSeconds(&time1);
        [(PXTrimScrubberLayoutHelper *)self duration];
        CMTimeMakeWithSeconds(retstr, v16, preferredTimescale);
        memset(&time1, 0, sizeof(time1));
        [(PXTrimScrubberLayoutHelper *)self duration];
        CMTimeMake(&v18, 1, 60);
        CMTimeSubtract(&time2, &lhs, &v18);
        lhs = *v7;
        CMTimeMaximum(&time1, &lhs, &time2);
        lhs = *v7;
        v18 = *retstr;
        CMTimeMaximum(&time2, &lhs, &v18);
        *retstr = time2;
        lhs = time1;
        v18 = *retstr;
        result = CMTimeMinimum(&time2, &lhs, &v18);
        *&retstr->var0 = *&time2.value;
        epoch = time2.epoch;
LABEL_7:
        retstr->var3 = epoch;
        return result;
      }

      return [(PXTrimScrubberLayoutHelper *)self duration];
    }
  }

  return result;
}

- (double)offsetInViewportSpaceForTime:(id *)a3 fallbackAnchor:(double)a4
{
  if ((a3->var2 & 0x1D) == 1)
  {
    [(PXTrimScrubberLayoutHelper *)self duration];
    if ((v11 & 0x1D) == 1)
    {
      [(PXTrimScrubberLayoutHelper *)self duration];
      v9 = **&MEMORY[0x1E6960CC0];
      if (CMTimeCompare(&time1, &v9) >= 1)
      {
        time1 = *a3;
        CMTimeGetSeconds(&time1);
        [(PXTrimScrubberLayoutHelper *)self duration];
        CMTimeGetSeconds(&time1);
        PXClamp();
      }
    }
  }

  [(PXTrimScrubberLayoutHelper *)self durationInsetFilmstripFrame];
  v7 = a4 * CGRectGetWidth(v12);
  [(PXTrimScrubberLayoutHelper *)self durationInsetFilmstripFrame];
  return v7 + CGRectGetMinX(v13);
}

- (double)offsetInViewportSpaceForTime:(id *)a3
{
  v4 = *a3;
  [(PXTrimScrubberLayoutHelper *)self offsetInViewportSpaceForTime:&v4 fallbackAnchor:0.0];
  return result;
}

- (double)offsetInScrubberSpaceForTime:(id *)a3 fallbackAnchor:(double)a4
{
  v8 = *a3;
  [(PXTrimScrubberLayoutHelper *)self offsetInViewportSpaceForTime:&v8 fallbackAnchor:a4];
  v6 = v5;
  [(PXTrimScrubberLayoutHelper *)self viewportFrame];
  return v6 + CGRectGetMinX(v9);
}

- (double)offsetInScrubberSpaceForTime:(id *)a3
{
  v4 = *a3;
  [(PXTrimScrubberLayoutHelper *)self offsetInScrubberSpaceForTime:&v4 fallbackAnchor:0.0];
  return result;
}

- (CGRect)visibleFrameInFilmstripSpace
{
  [(PXTrimScrubberLayoutHelper *)self _updateIfNeeded];
  x = self->_visibleFrameInFilmstripSpace.origin.x;
  y = self->_visibleFrameInFilmstripSpace.origin.y;
  width = self->_visibleFrameInFilmstripSpace.size.width;
  height = self->_visibleFrameInFilmstripSpace.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)filmstripFrameInScrubberSpace
{
  [(PXTrimScrubberLayoutHelper *)self _updateIfNeeded];
  x = self->_filmstripFrameInScrubberSpace.origin.x;
  y = self->_filmstripFrameInScrubberSpace.origin.y;
  width = self->_filmstripFrameInScrubberSpace.size.width;
  height = self->_filmstripFrameInScrubberSpace.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)filmstripFrame
{
  [(PXTrimScrubberLayoutHelper *)self _updateIfNeeded];
  x = self->_filmstripFrame.origin.x;
  y = self->_filmstripFrame.origin.y;
  width = self->_filmstripFrame.size.width;
  height = self->_filmstripFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setPivotAnchor:(double)a3
{
  if (self->_pivotAnchor != a3)
  {
    self->_pivotAnchor = a3;
    [(PXTrimScrubberLayoutHelper *)self setNeedsUpdate:1];
  }
}

- (void)setFilmstripScale:(double)a3
{
  if (self->_filmstripScale != a3)
  {
    self->_filmstripScale = a3;
    [(PXTrimScrubberLayoutHelper *)self setNeedsUpdate:1];
  }
}

- (void)setViewportFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!CGRectEqualToRect(self->_viewportFrame, a3))
  {
    self->_viewportFrame.origin.x = x;
    self->_viewportFrame.origin.y = y;
    self->_viewportFrame.size.width = width;
    self->_viewportFrame.size.height = height;

    [(PXTrimScrubberLayoutHelper *)self setNeedsUpdate:1];
  }
}

- (void)setDuration:(id *)a3
{
  if ((a3->var2 & 0x1D) == 1)
  {
    v10 = v3;
    v11 = v4;
    time1 = self->_duration;
    v8 = *a3;
    if (CMTimeCompare(&time1, &v8))
    {
      time1 = *a3;
      v8 = **&MEMORY[0x1E6960CC0];
      if ((CMTimeCompare(&time1, &v8) & 0x80000000) == 0)
      {
        v7 = *&a3->var0;
        self->_duration.epoch = a3->var3;
        *&self->_duration.value = v7;
        [(PXTrimScrubberLayoutHelper *)self setNeedsUpdate:1];
      }
    }
  }
}

- (PXTrimScrubberLayoutHelper)init
{
  v6.receiver = self;
  v6.super_class = PXTrimScrubberLayoutHelper;
  result = [(PXTrimScrubberLayoutHelper *)&v6 init];
  if (result)
  {
    v3 = *MEMORY[0x1E6960CC0];
    result->_duration.epoch = *(MEMORY[0x1E6960CC0] + 16);
    v4 = *MEMORY[0x1E695F058];
    v5 = *(MEMORY[0x1E695F058] + 16);
    result->_viewportFrame.origin = *MEMORY[0x1E695F058];
    result->_viewportFrame.size = v5;
    *&result->_filmstripScale = xmmword_1A5301AB0;
    *&result->_duration.value = v3;
    result->_filmstripFrame.origin = v4;
    result->_filmstripFrame.size = v5;
  }

  return result;
}

@end