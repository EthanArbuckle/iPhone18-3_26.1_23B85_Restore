@interface PXEDRGainView
- (PXEDRGainView)initWithFrame:(CGRect)frame;
- (void)_updateFilter;
- (void)setEdrGain:(double)gain;
@end

@implementation PXEDRGainView

- (void)_updateFilter
{
  [(PXEDRGainView *)self edrGain];
  v5 = v4;
  layer = [(PXEDRGainView *)self layer];
  _EDRFilterName = [objc_opt_class() _EDRFilterName];
  filters = [layer filters];

  if (filters)
  {
    filters2 = [layer filters];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __30__PXEDRGainView__updateFilter__block_invoke;
    v26[3] = &unk_1E7BB7F70;
    v28 = a2;
    v26[4] = self;
    v27 = _EDRFilterName;
    v10 = [filters2 indexOfObjectPassingTest:v26];

    if (v5 > 0.0)
    {
      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_16:
        filters3 = [layer filters];
        v23 = [filters3 objectAtIndexedSubscript:v10];

        v24 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
        [v23 setValue:v24 forKey:*MEMORY[0x1E6979990]];

        whiteColor = [MEMORY[0x1E69DC888] whiteColor];
        [layer setBackgroundColor:{objc_msgSend(whiteColor, "CGColor")}];

        goto LABEL_17;
      }

LABEL_6:
      v11 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979918]];
      [v11 setValue:&unk_1F2BAC8E0 forKey:*MEMORY[0x1E6979BF0]];
      [v11 setValue:MEMORY[0x1E695E110] forKey:*MEMORY[0x1E6979980]];
      _EDRFilterName2 = [objc_opt_class() _EDRFilterName];
      [v11 setName:_EDRFilterName2];

      filters4 = [layer filters];
      v14 = [filters4 mutableCopy];
      v15 = v14;
      if (v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
      }

      v20 = v16;

      [v20 addObject:v11];
      v10 = [v20 count] - 1;
      [layer setFilters:v20];
      v21 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CA0]];
      [layer setCompositingFilter:v21];

      goto LABEL_16;
    }

    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      filters5 = [layer filters];
      v18 = [filters5 mutableCopy];

      [v18 removeObjectAtIndex:v10];
      if ([v18 count])
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      [layer setFilters:v19];
    }
  }

  else if (v5 > 0.0)
  {
    goto LABEL_6;
  }

  [layer setCompositingFilter:0];
  [layer setBackgroundColor:0];
LABEL_17:
}

uint64_t __30__PXEDRGainView__updateFilter__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 isEqualToString:*(a1 + 40)];

  return v4;
}

- (void)setEdrGain:(double)gain
{
  if (self->_edrGain != gain)
  {
    self->_edrGain = gain;
    [(PXEDRGainView *)self _updateFilter];
  }
}

- (PXEDRGainView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PXEDRGainView;
  v3 = [(PXEDRGainView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PXEDRGainView *)v3 setUserInteractionEnabled:0];
  }

  return v4;
}

@end