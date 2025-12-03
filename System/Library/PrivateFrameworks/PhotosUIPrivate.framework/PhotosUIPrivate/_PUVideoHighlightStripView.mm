@interface _PUVideoHighlightStripView
- (_PUVideoHighlightStripView)initWithFrame:(CGRect)frame;
- (void)_updateBarsExpanded;
- (void)_updateCurrentTimeRangeIndex;
- (void)_updateHighlightViews;
- (void)layoutSubviews;
- (void)setCurrentTime:(id *)time;
- (void)setCurrentTimeRangeIndex:(int64_t)index;
- (void)setHighlightColor:(id)color;
- (void)setHighlightTimeRanges:(id)ranges;
- (void)setIsPlaying:(BOOL)playing;
- (void)setVideoDuration:(id *)duration;
@end

@implementation _PUVideoHighlightStripView

- (void)_updateBarsExpanded
{
  currentTimeRangeIndex = [(_PUVideoHighlightStripView *)self currentTimeRangeIndex];
  isPlaying = [(_PUVideoHighlightStripView *)self isPlaying];
  highlightViews = self->_highlightViews;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49___PUVideoHighlightStripView__updateBarsExpanded__block_invoke;
  v6[3] = &__block_descriptor_41_e41_v32__0___PUVideoHighlightBarView_8Q16_B24l;
  v7 = isPlaying;
  v6[4] = currentTimeRangeIndex;
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
  highlightTimeRanges = [(_PUVideoHighlightStripView *)self highlightTimeRanges];
  highlightColor = [(_PUVideoHighlightStripView *)self highlightColor];
  highlightViews = self->_highlightViews;
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __44___PUVideoHighlightStripView_layoutSubviews__block_invoke;
  v20 = &unk_1E7B7E598;
  v21 = highlightColor;
  v22 = highlightTimeRanges;
  v23 = Seconds;
  v24 = v4;
  v25 = v6;
  v26 = v8;
  v27 = v10;
  v28 = v8;
  v15 = highlightTimeRanges;
  v16 = highlightColor;
  [(NSArray *)highlightViews enumerateObjectsUsingBlock:&v17];
  [(_PUVideoHighlightStripView *)self _updateBarsExpanded:v17];
}

- (void)_updateHighlightViews
{
  highlightTimeRanges = [(_PUVideoHighlightStripView *)self highlightTimeRanges];
  v4 = [highlightTimeRanges count];

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

- (void)setCurrentTimeRangeIndex:(int64_t)index
{
  if (self->_currentTimeRangeIndex != index)
  {
    self->_currentTimeRangeIndex = index;
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
  highlightTimeRanges = [(_PUVideoHighlightStripView *)self highlightTimeRanges];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58___PUVideoHighlightStripView__updateCurrentTimeRangeIndex__block_invoke;
  v4[3] = &unk_1E7B7E570;
  v5 = v11;
  v6 = v12;
  v4[4] = &v7;
  [highlightTimeRanges enumerateObjectsUsingBlock:v4];

  [(_PUVideoHighlightStripView *)self setCurrentTimeRangeIndex:v8[3]];
  _Block_object_dispose(&v7, 8);
}

- (void)setHighlightTimeRanges:(id)ranges
{
  rangesCopy = ranges;
  v5 = rangesCopy;
  if (self->_highlightTimeRanges != rangesCopy)
  {
    v8 = rangesCopy;
    rangesCopy = [rangesCopy isEqual:?];
    v5 = v8;
    if ((rangesCopy & 1) == 0)
    {
      v6 = [v8 copy];
      highlightTimeRanges = self->_highlightTimeRanges;
      self->_highlightTimeRanges = v6;

      [(_PUVideoHighlightStripView *)self _updateHighlightViews];
      [(_PUVideoHighlightStripView *)self _updateCurrentTimeRangeIndex];
      rangesCopy = [(_PUVideoHighlightStripView *)self setNeedsLayout];
      v5 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](rangesCopy, v5);
}

- (void)setIsPlaying:(BOOL)playing
{
  if (self->_isPlaying != playing)
  {
    self->_isPlaying = playing;
    [(_PUVideoHighlightStripView *)self _updateBarsExpanded];
  }
}

- (void)setCurrentTime:(id *)time
{
  p_currentTime = &self->_currentTime;
  time1 = *time;
  currentTime = self->_currentTime;
  if (CMTimeCompare(&time1, &currentTime))
  {
    v6 = *&time->var0;
    p_currentTime->epoch = time->var3;
    *&p_currentTime->value = v6;
    [(_PUVideoHighlightStripView *)self _updateCurrentTimeRangeIndex];
  }
}

- (void)setVideoDuration:(id *)duration
{
  p_videoDuration = &self->_videoDuration;
  time1 = *duration;
  videoDuration = self->_videoDuration;
  if (CMTimeCompare(&time1, &videoDuration))
  {
    v6 = *&duration->var0;
    p_videoDuration->epoch = duration->var3;
    *&p_videoDuration->value = v6;
    [(_PUVideoHighlightStripView *)self setNeedsLayout];
  }
}

- (void)setHighlightColor:(id)color
{
  colorCopy = color;
  v6 = colorCopy;
  if (self->_highlightColor != colorCopy)
  {
    v7 = colorCopy;
    colorCopy = [colorCopy isEqual:?];
    v6 = v7;
    if ((colorCopy & 1) == 0)
    {
      objc_storeStrong(&self->_highlightColor, color);
      colorCopy = [(_PUVideoHighlightStripView *)self setNeedsLayout];
      v6 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](colorCopy, v6);
}

- (_PUVideoHighlightStripView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = _PUVideoHighlightStripView;
  v3 = [(_PUVideoHighlightStripView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    highlightViews = v3->_highlightViews;
    v3->_highlightViews = MEMORY[0x1E695E0F0];
  }

  return v4;
}

@end