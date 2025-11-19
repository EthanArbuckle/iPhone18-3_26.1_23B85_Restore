@interface RTMotionActivityHistogram
- (RTMotionActivityHistogram)init;
- (RTMotionActivityHistogram)initWithActivites:(id)a3 betweenDate:(id)a4 andDate:(id)a5;
- (id)binForType:(unint64_t)a3;
- (id)binsSortedByInterval;
- (void)addInterval:(double)a3 ofType:(unint64_t)a4 withConfidence:(unint64_t)a5;
@end

@implementation RTMotionActivityHistogram

- (RTMotionActivityHistogram)init
{
  v6.receiver = self;
  v6.super_class = RTMotionActivityHistogram;
  v2 = [(RTMotionActivityHistogram *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    bins = v2->_bins;
    v2->_bins = v3;

    v2->_totalInterval = 0.0;
  }

  return v2;
}

- (RTMotionActivityHistogram)initWithActivites:(id)a3 betweenDate:(id)a4 andDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21.receiver = self;
  v21.super_class = RTMotionActivityHistogram;
  v11 = [(RTMotionActivityHistogram *)&v21 init];
  if (v11)
  {
    v12 = objc_opt_new();
    bins = v11->_bins;
    v11->_bins = v12;

    v11->_totalInterval = 0.0;
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x3032000000;
    v19[3] = __Block_byref_object_copy__91;
    v19[4] = __Block_byref_object_dispose__91;
    v20 = v10;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __67__RTMotionActivityHistogram_initWithActivites_betweenDate_andDate___block_invoke;
    v15[3] = &unk_2788CC690;
    v18 = v19;
    v16 = v9;
    v17 = v11;
    [v8 enumerateObjectsWithOptions:2 usingBlock:v15];

    _Block_object_dispose(v19, 8);
  }

  return v11;
}

void __67__RTMotionActivityHistogram_initWithActivites_betweenDate_andDate___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v18 = a2;
  v6 = [v18 startDate];
  v7 = [v6 laterDate:*(*(*(a1 + 48) + 8) + 40)];
  v8 = [v18 startDate];

  if (v7 != v8)
  {
    v9 = [v18 startDate];
    v10 = [v9 earlierDate:*(a1 + 32)];
    v11 = [v18 startDate];

    if (v10 == v11)
    {
      v12 = *(a1 + 32);
      *a4 = 1;
    }

    else
    {
      v12 = [v18 startDate];
    }

    v13 = *(a1 + 40);
    [*(*(*(a1 + 48) + 8) + 40) timeIntervalSinceDate:v12];
    [v13 addInterval:objc_msgSend(v18 ofType:"type") withConfidence:{objc_msgSend(v18, "confidence"), v14}];
    v15 = [v18 startDate];
    v16 = *(*(a1 + 48) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;
  }
}

- (id)binForType:(unint64_t)a3
{
  v4 = [(RTMotionActivityHistogram *)self bins];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v6 = [v4 objectForKey:v5];
  v7 = [v6 copy];

  return v7;
}

- (void)addInterval:(double)a3 ofType:(unint64_t)a4 withConfidence:(unint64_t)a5
{
  v9 = [(RTMotionActivityHistogram *)self bins];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v14 = [v9 objectForKey:v10];

  if (v14)
  {
    [(RTMotionActivityHistogramBin *)v14 addInterval:a3];
    [(RTMotionActivityHistogramBin *)v14 updateConfidence:a5];
  }

  else
  {
    v14 = [[RTMotionActivityHistogramBin alloc] initWithType:a4 confidence:a5 interval:a3];
    v11 = [(RTMotionActivityHistogram *)self bins];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
    [v11 setObject:v14 forKey:v12];
  }

  [(RTMotionActivityHistogram *)self totalInterval];
  [(RTMotionActivityHistogram *)self setTotalInterval:v13 + a3];
}

- (id)binsSortedByInterval
{
  v2 = [(RTMotionActivityHistogram *)self bins];
  v3 = [v2 allValues];
  v4 = [v3 sortedArrayUsingComparator:&__block_literal_global_76];

  return v4;
}

uint64_t __49__RTMotionActivityHistogram_binsSortedByInterval__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 interval];
  v6 = v5;
  [v4 interval];
  v8 = v7;

  if (v6 <= v8)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

@end