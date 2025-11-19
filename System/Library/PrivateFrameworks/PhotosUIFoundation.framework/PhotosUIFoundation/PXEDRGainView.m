@interface PXEDRGainView
- (PXEDRGainView)initWithFrame:(CGRect)a3;
- (void)_updateFilter;
- (void)setEdrGain:(double)a3;
@end

@implementation PXEDRGainView

- (void)_updateFilter
{
  [(PXEDRGainView *)self edrGain];
  v5 = v4;
  v6 = [(PXEDRGainView *)self layer];
  v7 = [objc_opt_class() _EDRFilterName];
  v8 = [v6 filters];

  if (v8)
  {
    v9 = [v6 filters];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __30__PXEDRGainView__updateFilter__block_invoke;
    v26[3] = &unk_1E7BB7F70;
    v28 = a2;
    v26[4] = self;
    v27 = v7;
    v10 = [v9 indexOfObjectPassingTest:v26];

    if (v5 > 0.0)
    {
      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_16:
        v22 = [v6 filters];
        v23 = [v22 objectAtIndexedSubscript:v10];

        v24 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
        [v23 setValue:v24 forKey:*MEMORY[0x1E6979990]];

        v25 = [MEMORY[0x1E69DC888] whiteColor];
        [v6 setBackgroundColor:{objc_msgSend(v25, "CGColor")}];

        goto LABEL_17;
      }

LABEL_6:
      v11 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979918]];
      [v11 setValue:&unk_1F2BAC8E0 forKey:*MEMORY[0x1E6979BF0]];
      [v11 setValue:MEMORY[0x1E695E110] forKey:*MEMORY[0x1E6979980]];
      v12 = [objc_opt_class() _EDRFilterName];
      [v11 setName:v12];

      v13 = [v6 filters];
      v14 = [v13 mutableCopy];
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
      [v6 setFilters:v20];
      v21 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CA0]];
      [v6 setCompositingFilter:v21];

      goto LABEL_16;
    }

    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = [v6 filters];
      v18 = [v17 mutableCopy];

      [v18 removeObjectAtIndex:v10];
      if ([v18 count])
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      [v6 setFilters:v19];
    }
  }

  else if (v5 > 0.0)
  {
    goto LABEL_6;
  }

  [v6 setCompositingFilter:0];
  [v6 setBackgroundColor:0];
LABEL_17:
}

uint64_t __30__PXEDRGainView__updateFilter__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 isEqualToString:*(a1 + 40)];

  return v4;
}

- (void)setEdrGain:(double)a3
{
  if (self->_edrGain != a3)
  {
    self->_edrGain = a3;
    [(PXEDRGainView *)self _updateFilter];
  }
}

- (PXEDRGainView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PXEDRGainView;
  v3 = [(PXEDRGainView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PXEDRGainView *)v3 setUserInteractionEnabled:0];
  }

  return v4;
}

@end