@interface PAEKeyerHistogram
- (PAEKeyerHistogram)init;
- (PAEKeyerHistogram)initWithCoder:(id)coder;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setHistogram:(void *)histogram;
- (void)setHistogramArray:(id)array;
@end

@implementation PAEKeyerHistogram

- (PAEKeyerHistogram)init
{
  v3.receiver = self;
  v3.super_class = PAEKeyerHistogram;
  if ([(PAEKeyerHistogram *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (void)setHistogram:(void *)histogram
{
  histogram = self->_histogram;
  if (histogram)
  {
    v4 = *histogram;
    if (*histogram)
    {
      histogram[1] = v4;
      operator delete(v4);
    }

    MEMORY[0x2666E9F00](histogram, 0x1010C404946846FLL, histogram);
  }

  operator new();
}

- (void)setHistogramArray:(id)array
{
  histogram = self->_histogram;
  if (histogram)
  {
    v4 = *histogram;
    if (*histogram)
    {
      histogram[1] = v4;
      operator delete(v4);
    }

    MEMORY[0x2666E9F00](histogram, 0x1010C404946846FLL, array);
  }

  operator new();
}

- (PAEKeyerHistogram)initWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = PAEKeyerHistogram;
  v4 = [(PAEKeyerHistogram *)&v10 init];
  if (v4)
  {
    v5 = MEMORY[0x277CBEB98];
    v6 = objc_opt_class();
    -[PAEKeyerHistogram setHistogramArray:](v4, "setHistogramArray:", [coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"Histogram"}]);
    v7 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"HistogramScale"];
    if (v7)
    {
      [v7 floatValue];
    }

    else
    {
      LODWORD(v8) = 1.0;
    }

    [(PAEKeyerHistogram *)v4 setHistogramScale:v8];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5 = *(self->_histogram + 1) - *self->_histogram;
  array = [MEMORY[0x277CBEB18] array];
  if ((v5 >> 2) >= 1)
  {
    v7 = 0;
    histogram = self->_histogram;
    v9 = (v5 >> 2) & 0x7FFFFFFF;
    do
    {
      v10 = *(*histogram + 4 * v7);
      if (v10 >= 1)
      {
        [array addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", v7)}];
        [array addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", v10)}];
      }

      ++v7;
    }

    while (v9 != v7);
  }

  [coder encodeObject:array forKey:@"Histogram"];
  v11 = MEMORY[0x277CCABB0];
  [(PAEKeyerHistogram *)self getHistogramScale];
  v12 = [v11 numberWithFloat:?];

  [coder encodeObject:v12 forKey:@"HistogramScale"];
}

- (void)dealloc
{
  histogram = self->_histogram;
  if (histogram)
  {
    v4 = *histogram;
    if (*histogram)
    {
      histogram[1] = v4;
      operator delete(v4);
    }

    MEMORY[0x2666E9F00](histogram, 0x1010C404946846FLL);
  }

  v5.receiver = self;
  v5.super_class = PAEKeyerHistogram;
  [(PAEKeyerHistogram *)&v5 dealloc];
}

@end