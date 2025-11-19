@interface _PUVideoHighlightStripView
- (_PUVideoHighlightStripView)initWithFrame:(CGRect)a3;
- (void)_updateBarsExpanded;
- (void)_updateCurrentTimeRangeIndex;
- (void)_updateHighlightViews;
- (void)layoutSubviews;
- (void)setCurrentTime:(id *)a3;
- (void)setCurrentTimeRangeIndex:(int64_t)a3;
- (void)setHighlightColor:(id)a3;
- (void)setHighlightTimeRanges:(id)a3;
- (void)setIsPlaying:(BOOL)a3;
- (void)setVideoDuration:(id *)a3;
@end

@implementation _PUVideoHighlightStripView

- (void)_updateBarsExpanded
{
  v3 = [(_PUVideoHighlightStripView *)self currentTimeRangeIndex];
  v4 = [(_PUVideoHighlightStripView *)self isPlaying];
  highlightViews = self->_highlightViews;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49___PUVideoHighlightStripView__updateBarsExpanded__block_invoke;
  v6[3] = &__block_descriptor_41_e41_v32__0___PUVideoHighlightBarView_8Q16_B24l;
  v7 = v4;
  v6[4] = v3;
  [(NSArray *)highlightViews enumerateObjectsUsingBlock:v6];
}

- (void)layoutSubviews
{
  v31.receiver = self;
  v31.super_class = _PUVideoHighlightStripView;
  [(_PUVideoHighlightStripView *)&v31 layoutSubviews];
  [(_PUVideoHighlightStripView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  memset(&v30, 0, sizeof(v30));
  [(_PUVideoHighlightStripView *)self videoDuration];
  time = v30;
  Seconds = CMTimeGetSeconds(&time);
  v12 = [(_PUVideoHighlightStripView *)self highlightTimeRanges];
  v13 = [(_PUVideoHighlightStripView *)self highlightColor];
  highlightViews = self->_highlightViews;
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __44___PUVideoHighlightStripView_layoutSubviews__block_invoke;
  v20 = &unk_1E7B7E598;
  v21 = v13;
  v22 = v12;
  v23 = Seconds;
  v24 = v4;
  v25 = v6;
  v26 = v8;
  v27 = v10;
  v28 = v8;
  v15 = v12;
  v16 = v13;
  [(NSArray *)highlightViews enumerateObjectsUsingBlock:&v17];
  [(_PUVideoHighlightStripView *)self _updateBarsExpanded:v17];
}

- (void)_updateHighlightViews
{
  v3 = [(_PUVideoHighlightStripView *)self highlightTimeRanges];
  v4 = [v3 count];

  v9 = self->_highlightViews;
  if ([(NSArray *)v9 count]< v4)
  {
    v5 = [(NSArray *)v9 mutableCopy];
    while ([v5 count] < v4)
    {
      v6 = objc_alloc_init(_PUVideoHighlightBarView);
      [(_PUVideoHighlightBarView *)v6 setUserInteractionEnabled:0];
      [(_PUVideoHighlightStripView *)self addSubview:v6];
      [v5 addObject:v6];
    }

    v7 = [v5 copy];
    highlightViews = self->_highlightViews;
    self->_highlightViews = v7;
  }

  [(_PUVideoHighlightStripView *)self layoutIfNeeded];
}

- (void)setCurrentTimeRangeIndex:(int64_t)a3
{
  if (self->_currentTimeRangeIndex != a3)
  {
    self->_currentTimeRangeIndex = a3;
    [(_PUVideoHighlightStripView *)self _updateBarsExpanded];
  }
}

- (void)_updateCurrentTimeRangeIndex
{
  v11 = 0uLL;
  v12 = 0;
  [(_PUVideoHighlightStripView *)self currentTime];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  v3 = [(_PUVideoHighlightStripView *)self highlightTimeRanges];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58___PUVideoHighlightStripView__updateCurrentTimeRangeIndex__block_invoke;
  v4[3] = &unk_1E7B7E570;
  v5 = v11;
  v6 = v12;
  v4[4] = &v7;
  [v3 enumerateObjectsUsingBlock:v4];

  [(_PUVideoHighlightStripView *)self setCurrentTimeRangeIndex:v8[3]];
  _Block_object_dispose(&v7, 8);
}

- (void)setHighlightTimeRanges:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_highlightTimeRanges != v4)
  {
    v8 = v4;
    v4 = [v4 isEqual:?];
    v5 = v8;
    if ((v4 & 1) == 0)
    {
      v6 = [v8 copy];
      highlightTimeRanges = self->_highlightTimeRanges;
      self->_highlightTimeRanges = v6;

      [(_PUVideoHighlightStripView *)self _updateHighlightViews];
      [(_PUVideoHighlightStripView *)self _updateCurrentTimeRangeIndex];
      v4 = [(_PUVideoHighlightStripView *)self setNeedsLayout];
      v5 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)setIsPlaying:(BOOL)a3
{
  if (self->_isPlaying != a3)
  {
    self->_isPlaying = a3;
    [(_PUVideoHighlightStripView *)self _updateBarsExpanded];
  }
}

- (void)setCurrentTime:(id *)a3
{
  p_currentTime = &self->_currentTime;
  time1 = *a3;
  currentTime = self->_currentTime;
  if (CMTimeCompare(&time1, &currentTime))
  {
    v6 = *&a3->var0;
    p_currentTime->epoch = a3->var3;
    *&p_currentTime->value = v6;
    [(_PUVideoHighlightStripView *)self _updateCurrentTimeRangeIndex];
  }
}

- (void)setVideoDuration:(id *)a3
{
  p_videoDuration = &self->_videoDuration;
  time1 = *a3;
  videoDuration = self->_videoDuration;
  if (CMTimeCompare(&time1, &videoDuration))
  {
    v6 = *&a3->var0;
    p_videoDuration->epoch = a3->var3;
    *&p_videoDuration->value = v6;
    [(_PUVideoHighlightStripView *)self setNeedsLayout];
  }
}

- (void)setHighlightColor:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_highlightColor != v5)
  {
    v7 = v5;
    v5 = [v5 isEqual:?];
    v6 = v7;
    if ((v5 & 1) == 0)
    {
      objc_storeStrong(&self->_highlightColor, a3);
      v5 = [(_PUVideoHighlightStripView *)self setNeedsLayout];
      v6 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (_PUVideoHighlightStripView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = _PUVideoHighlightStripView;
  v3 = [(_PUVideoHighlightStripView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    highlightViews = v3->_highlightViews;
    v3->_highlightViews = MEMORY[0x1E695E0F0];
  }

  return v4;
}

@end