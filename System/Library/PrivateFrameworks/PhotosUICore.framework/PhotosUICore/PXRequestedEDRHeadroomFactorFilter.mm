@interface PXRequestedEDRHeadroomFactorFilter
- (BOOL)isPaused;
- (PXRequestedEDRHeadroomFactorFilter)initWithInput:(double)input;
- (double)updatedOutput;
- (void)setInput:(double)input;
@end

@implementation PXRequestedEDRHeadroomFactorFilter

- (BOOL)isPaused
{
  [(PXRequestedEDRHeadroomFactorFilter *)self lastDecreaseTime];
  v4 = v3;
  if (v3 == -1.79769313e308)
  {
    return 0;
  }

  [(PXNumberFilter *)self currentTime];
  if (v5 < v4)
  {
    return 0;
  }

  v7 = v5;
  [(PXRequestedEDRHeadroomFactorFilter *)self sustainDuration];
  return v7 < v4 + v8;
}

- (double)updatedOutput
{
  [(PXNumberFilter *)self output];
  v4 = v3;
  if ([(PXRequestedEDRHeadroomFactorFilter *)self isPaused])
  {
    return v4;
  }

  [(PXNumberFilter *)self input];
  return result;
}

- (void)setInput:(double)input
{
  v11.receiver = self;
  v11.super_class = PXRequestedEDRHeadroomFactorFilter;
  [(PXNumberFilter *)&v11 setInput:?];
  [(PXRequestedEDRHeadroomFactorFilter *)self highValue];
  if (v5 <= input)
  {
    [(PXRequestedEDRHeadroomFactorFilter *)self setHighValue:input];
    [(PXRequestedEDRHeadroomFactorFilter *)self setLastDecreaseTime:-1.79769313e308];
  }

  else if (![(PXRequestedEDRHeadroomFactorFilter *)self isPaused])
  {
    [(PXNumberFilter *)self currentTime];
    [(PXRequestedEDRHeadroomFactorFilter *)self setLastDecreaseTime:?];
    objc_initWeak(&location, self);
    [(PXRequestedEDRHeadroomFactorFilter *)self sustainDuration];
    v7 = dispatch_time(0, (v6 * 1000000000.0));
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __47__PXRequestedEDRHeadroomFactorFilter_setInput___block_invoke;
    v8[3] = &unk_1E774C318;
    objc_copyWeak(&v9, &location);
    dispatch_after(v7, MEMORY[0x1E69E96A0], v8);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __47__PXRequestedEDRHeadroomFactorFilter_setInput___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidateOutput];
}

- (PXRequestedEDRHeadroomFactorFilter)initWithInput:(double)input
{
  v9.receiver = self;
  v9.super_class = PXRequestedEDRHeadroomFactorFilter;
  v4 = [(PXNumberFilter *)&v9 initWithInput:?];
  v5 = v4;
  if (v4)
  {
    v4->_highValue = input;
    v4->_lastDecreaseTime = -1.79769313e308;
    v6 = +[PXImageModulationSettings sharedInstance];
    [v6 EDRHeadroomRequestSustainDuration];
    v5->_sustainDuration = v7;
  }

  return v5;
}

@end