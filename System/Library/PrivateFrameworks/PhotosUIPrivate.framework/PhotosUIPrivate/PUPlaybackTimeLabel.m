@interface PUPlaybackTimeLabel
- (BOOL)_needsUpdate;
- (CGSize)_maximumLabelSizeWithDuration:(double)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PUPlaybackTimeLabel)initWithFrame:(CGRect)a3;
- (id)_labelTextWithFormat:(int64_t)a3 elapsedInterval:(double)a4 remainingInterval:(double)a5;
- (id)_stringFromTimeInterval:(double)a3;
- (void)_invalidateBackground;
- (void)_invalidateLabel;
- (void)_updateBackgroundIfNeeded;
- (void)_updateIfNeeded;
- (void)_updateLabelIfNeeded;
- (void)layoutSubviews;
- (void)setCurrentPlaybackTime:(id *)a3;
- (void)setFormat:(int64_t)a3;
- (void)setPlaybackDuration:(id *)a3;
@end

@implementation PUPlaybackTimeLabel

- (id)_stringFromTimeInterval:(double)a3
{
  if (_stringFromTimeInterval__onceToken_70262 != -1)
  {
    dispatch_once(&_stringFromTimeInterval__onceToken_70262, &__block_literal_global_70263);
  }

  v4 = &_stringFromTimeInterval__hourMinuteSecondFormatter_70264;
  if (a3 < 3600.0)
  {
    v4 = &_stringFromTimeInterval__minuteSecondFormatter_70265;
  }

  v5 = *v4;

  return [v5 stringFromTimeInterval:a3];
}

uint64_t __47__PUPlaybackTimeLabel__stringFromTimeInterval___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB70]);
  v1 = _stringFromTimeInterval__minuteSecondFormatter_70265;
  _stringFromTimeInterval__minuteSecondFormatter_70265 = v0;

  [_stringFromTimeInterval__minuteSecondFormatter_70265 setAllowedUnits:192];
  [_stringFromTimeInterval__minuteSecondFormatter_70265 setUnitsStyle:0];
  [_stringFromTimeInterval__minuteSecondFormatter_70265 setZeroFormattingBehavior:0x10000];
  v2 = objc_alloc_init(MEMORY[0x1E696AB70]);
  v3 = _stringFromTimeInterval__hourMinuteSecondFormatter_70264;
  _stringFromTimeInterval__hourMinuteSecondFormatter_70264 = v2;

  [_stringFromTimeInterval__hourMinuteSecondFormatter_70264 setAllowedUnits:224];
  [_stringFromTimeInterval__hourMinuteSecondFormatter_70264 setUnitsStyle:0];
  v4 = _stringFromTimeInterval__hourMinuteSecondFormatter_70264;

  return [v4 setZeroFormattingBehavior:0x10000];
}

- (id)_labelTextWithFormat:(int64_t)a3 elapsedInterval:(double)a4 remainingInterval:(double)a5
{
  switch(a3)
  {
    case 3:
      v11 = MEMORY[0x1E696AEC0];
      v8 = [(PUPlaybackTimeLabel *)self _stringFromTimeInterval:a4];
      v12 = [(PUPlaybackTimeLabel *)self _stringFromTimeInterval:a5];
      v10 = [v11 stringWithFormat:@"%@ / -%@", v8, v12];

      goto LABEL_8;
    case 2:
      v9 = MEMORY[0x1E696AEC0];
      v8 = [(PUPlaybackTimeLabel *)self _stringFromTimeInterval:a5];
      [v9 stringWithFormat:@"-%@", v8];
      goto LABEL_6;
    case 1:
      v7 = MEMORY[0x1E696AEC0];
      v8 = [(PUPlaybackTimeLabel *)self _stringFromTimeInterval:a4];
      [v7 stringWithFormat:@"%@", v8];
      v10 = LABEL_6:;
LABEL_8:

      goto LABEL_10;
  }

  v10 = 0;
LABEL_10:

  return v10;
}

- (CGSize)_maximumLabelSizeWithDuration:(double)a3
{
  v5 = [(PUPlaybackTimeLabel *)self _label];
  v6 = [v5 text];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0x4008000000000000;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__PUPlaybackTimeLabel__maximumLabelSizeWithDuration___block_invoke;
  aBlock[3] = &unk_1E7B7D3E8;
  *&aBlock[5] = a3;
  aBlock[4] = &v23;
  aBlock[6] = 3;
  v7 = _Block_copy(aBlock);
  v7[2](10.0);
  (v7[2])(v7, 60.0);
  (v7[2])(v7, 600.0);
  (v7[2])(v7, 3600.0);
  (v7[2])(v7, 36000.0);
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 2;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __53__PUPlaybackTimeLabel__maximumLabelSizeWithDuration___block_invoke_2;
  v17[3] = &unk_1E7B7D410;
  v17[4] = &v18;
  v8 = _Block_copy(v17);
  v9 = +[PUScrubberSettings sharedInstance];
  v8[2](v8, [v9 defaultPlaybackIndicator]);
  v8[2](v8, [v9 initialPlaybackIndicator]);
  v8[2](v8, [v9 scrubbingPlaybackIndicator]);
  v8[2](v8, [v9 chromeShownPlaybackIndicator]);
  v8[2](v8, [v9 playingPlaybackIndicator]);
  v10 = [(PUPlaybackTimeLabel *)self _labelTextWithFormat:v19[3] elapsedInterval:v24[3] remainingInterval:v24[3]];
  [v5 setText:v10];
  [v5 sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  v12 = v11;
  v14 = v13;
  [v5 setText:v6];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v23, 8);

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

double __53__PUPlaybackTimeLabel__maximumLabelSizeWithDuration___block_invoke(uint64_t a1, double result)
{
  if (*(a1 + 40) >= result)
  {
    v2 = *(*(a1 + 32) + 8);
    result = *(v2 + 24) + *(a1 + 48) * result;
    *(v2 + 24) = result;
  }

  return result;
}

uint64_t __53__PUPlaybackTimeLabel__maximumLabelSizeWithDuration___block_invoke_2(uint64_t result, uint64_t a2)
{
  if (a2 == 3)
  {
    *(*(*(result + 32) + 8) + 24) = 3;
  }

  return result;
}

- (void)_updateLabelIfNeeded
{
  if ([(PUPlaybackTimeLabel *)self _needsUpdateLabel])
  {
    [(PUPlaybackTimeLabel *)self _setNeedsUpdateLabel:0];
    [(PUPlaybackTimeLabel *)self currentPlaybackTime];
    memset(&v6[32], 0, 48);
    [(PUPlaybackTimeLabel *)self playbackDuration];
    if (0 >> 96 == 1 && (v6[44] & 0x1D) == 1)
    {
      *v6 = *&v6[56];
      v3 = round(CMTimeGetSeconds(v6));
      *v6 = *&v6[32];
      v4 = [(PUPlaybackTimeLabel *)self _labelTextWithFormat:[(PUPlaybackTimeLabel *)self format] elapsedInterval:v3 remainingInterval:round(CMTimeGetSeconds(v6)) - v3];
    }

    else
    {
      v4 = 0;
    }

    v5 = [(PUPlaybackTimeLabel *)self _label];
    [v5 setText:v4];
  }
}

- (void)_invalidateLabel
{
  [(PUPlaybackTimeLabel *)self _setNeedsUpdateLabel:1];

  [(PUPlaybackTimeLabel *)self _setNeedsUpdate];
}

- (void)_updateBackgroundIfNeeded
{
  if ([(PUPlaybackTimeLabel *)self _needsUpdateBackground])
  {
    [(PUPlaybackTimeLabel *)self _setNeedsUpdateBackground:0];
    memset(&v14[1], 0, sizeof(CMTime));
    [(PUPlaybackTimeLabel *)self playbackDuration];
    if (0 >> 96 == 1)
    {
      v14[0] = v14[1];
      v3 = round(CMTimeGetSeconds(v14));
    }

    else
    {
      v3 = 120.0;
    }

    [(PUPlaybackTimeLabel *)self _maximumLabelSizeWithDuration:v3];
    v5 = v4 + 16.0;
    v7 = v6 + 4.0;
    v8 = [(PUPlaybackTimeLabel *)self _backgroundView];
    [(PUPlaybackTimeLabel *)self bounds];
    x = v15.origin.x;
    y = v15.origin.y;
    width = v15.size.width;
    height = v15.size.height;
    MidX = CGRectGetMidX(v15);
    v16.origin.x = x;
    v16.origin.y = y;
    v16.size.width = width;
    v16.size.height = height;
    [v8 setCenter:{MidX + 0.0, CGRectGetMidY(v16) + 0.0}];
    [v8 setBounds:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v5, v7}];
  }
}

- (void)_invalidateBackground
{
  [(PUPlaybackTimeLabel *)self _setNeedsUpdateBackground:1];

  [(PUPlaybackTimeLabel *)self _setNeedsUpdate];
}

- (void)_updateIfNeeded
{
  if ([(PUPlaybackTimeLabel *)self _needsUpdate])
  {
    [(PUPlaybackTimeLabel *)self _updateBackgroundIfNeeded];

    [(PUPlaybackTimeLabel *)self _updateLabelIfNeeded];
  }
}

- (BOOL)_needsUpdate
{
  if ([(PUPlaybackTimeLabel *)self _needsUpdateBackground])
  {
    return 1;
  }

  return [(PUPlaybackTimeLabel *)self _needsUpdateLabel];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PUPlaybackTimeLabel *)self _updateIfNeeded:a3.width];
  v4 = [(PUPlaybackTimeLabel *)self _backgroundView];
  [v4 bounds];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PUPlaybackTimeLabel;
  [(PUPlaybackTimeLabel *)&v3 layoutSubviews];
  [(PUPlaybackTimeLabel *)self _updateIfNeeded];
}

- (void)setPlaybackDuration:(id *)a3
{
  p_playbackDuration = &self->_playbackDuration;
  time1 = *a3;
  playbackDuration = self->_playbackDuration;
  if (CMTimeCompare(&time1, &playbackDuration))
  {
    v6 = *&a3->var0;
    p_playbackDuration->epoch = a3->var3;
    *&p_playbackDuration->value = v6;
    if ([(PUPlaybackTimeLabel *)self format])
    {
      [(PUPlaybackTimeLabel *)self _invalidateBackground];
      [(PUPlaybackTimeLabel *)self _invalidateLabel];
    }
  }
}

- (void)setCurrentPlaybackTime:(id *)a3
{
  p_currentPlaybackTime = &self->_currentPlaybackTime;
  time1 = *a3;
  currentPlaybackTime = self->_currentPlaybackTime;
  if (CMTimeCompare(&time1, &currentPlaybackTime))
  {
    v6 = *&a3->var0;
    p_currentPlaybackTime->epoch = a3->var3;
    *&p_currentPlaybackTime->value = v6;
    if ([(PUPlaybackTimeLabel *)self format])
    {
      [(PUPlaybackTimeLabel *)self _invalidateLabel];
    }
  }
}

- (void)setFormat:(int64_t)a3
{
  if (self->_format != a3)
  {
    self->_format = a3;
    [(PUPlaybackTimeLabel *)self _invalidateBackground];

    [(PUPlaybackTimeLabel *)self _invalidateLabel];
  }
}

- (PUPlaybackTimeLabel)initWithFrame:(CGRect)a3
{
  v20.receiver = self;
  v20.super_class = PUPlaybackTimeLabel;
  v3 = [(PUPlaybackTimeLabel *)&v20 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    [(PUPlaybackTimeLabel *)v3 bounds];
    v5 = [v4 initWithFrame:?];
    backgroundView = v3->__backgroundView;
    v3->__backgroundView = v5;

    v7 = [(UIView *)v3->__backgroundView layer];
    [v7 setCornerRadius:2.0];

    v8 = v3->__backgroundView;
    v9 = +[PUInterfaceManager currentTheme];
    v10 = [v9 playbackTimeLabelBackgroundColor];
    [(UIView *)v8 setBackgroundColor:v10];

    [(UIView *)v3->__backgroundView setAutoresizingMask:45];
    [(PUPlaybackTimeLabel *)v3 addSubview:v3->__backgroundView];
    v11 = objc_alloc(MEMORY[0x1E69DCC10]);
    [(PUPlaybackTimeLabel *)v3 bounds];
    v12 = [v11 initWithFrame:?];
    label = v3->__label;
    v3->__label = v12;

    v14 = v3->__label;
    v15 = +[PUInterfaceManager currentTheme];
    v16 = [v15 playbackTimeLabelFont];
    [(UILabel *)v14 setFont:v16];

    [(UILabel *)v3->__label setTextAlignment:1];
    [(UILabel *)v3->__label setNumberOfLines:1];
    v17 = v3->__label;
    v18 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v17 setBackgroundColor:v18];

    [(UILabel *)v3->__label setAutoresizingMask:18];
    [(PUPlaybackTimeLabel *)v3 addSubview:v3->__label];
  }

  return v3;
}

@end