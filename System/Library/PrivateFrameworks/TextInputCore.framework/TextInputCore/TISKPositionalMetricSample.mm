@interface TISKPositionalMetricSample
+ (id)makeMetric:(unint64_t)a3;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (TISKPositionalMetricSample)initWithCapacity:(unint64_t)a3;
- (TISKPositionalMetricSample)initWithCoder:(id)a3;
- (id)description:(BOOL)a3;
- (id)generateDataForSR:(id)a3;
- (void)addSample:(id)a3 withPosition:(unint64_t)a4;
- (void)merge:(id)a3;
@end

@implementation TISKPositionalMetricSample

- (TISKPositionalMetricSample)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = TISKPositionalMetricSample;
  v5 = [(TISKPositionalMetricSample *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"PositionalMetricSample"];
    positionalMetricSample = v5->_positionalMetricSample;
    v5->_positionalMetricSample = v9;
  }

  return v5;
}

- (id)generateDataForSR:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  if (![(NSMutableArray *)self->_positionalMetricSample count])
  {
    goto LABEL_8;
  }

  v6 = 0;
  v7 = 0;
  do
  {
    v8 = [(NSMutableArray *)self->_positionalMetricSample objectAtIndexedSubscript:v6];
    v9 = [v8 generateDataForSR:v4];

    if (!v9)
    {
      v9 = objc_alloc_init(getSRKeyboardProbabilityMetricClass());
    }

    [v5 addObject:v9];
    v7 += [v9 totalDataSamples];

    ++v6;
  }

  while (v6 < [(NSMutableArray *)self->_positionalMetricSample count]);
  if (v7)
  {
    v10 = v5;
  }

  else
  {
LABEL_8:
    v10 = 0;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  positionalMetricSample = self->_positionalMetricSample;
  v4 = [a3 positionalMetricSample];
  LOBYTE(positionalMetricSample) = [(NSMutableArray *)positionalMetricSample isEqual:v4];

  return positionalMetricSample;
}

- (id)description:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x277CCAB68] string];
  if ([(TISKPositionalMetricSample *)self size])
  {
    v6 = 0;
    do
    {
      v7 = [(NSMutableArray *)self->_positionalMetricSample objectAtIndexedSubscript:v6];
      [v5 appendFormat:@"%lu:%lu ", v6, objc_msgSend(v7, "size")];
      if (v3)
      {
        [v5 appendString:@"<"];
        v8 = [v7 description];
        [v5 appendString:v8];

        [v5 appendString:@">"];
      }

      [v5 appendString:{@", "}];

      ++v6;
    }

    while (v6 < [(TISKPositionalMetricSample *)self size]);
  }

  return v5;
}

- (void)merge:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v5 = IXADefaultLogFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v11 = MEMORY[0x277CCACA8];
      positionalMetricSample = self->_positionalMetricSample;
      v13 = [v4 positionalMetricSample];
      v14 = [v11 stringWithFormat:@"%s [SensorKit] positional metric merge: other doesn't respond to positionalMetricSample selector %@ : %@", "-[TISKPositionalMetricSample merge:]", positionalMetricSample, v13];
      *buf = 138412290;
      v16 = v14;
      _os_log_error_impl(&dword_22CA55000, v5, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }

  if ([(TISKPositionalMetricSample *)self size])
  {
    v6 = 0;
    do
    {
      v7 = [(NSMutableArray *)self->_positionalMetricSample objectAtIndexedSubscript:v6];
      v8 = [v4 positionalMetricSample];
      v9 = [v8 objectAtIndexedSubscript:v6];
      [v7 merge:v9];

      ++v6;
    }

    while ([(TISKPositionalMetricSample *)self size]> v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEmpty
{
  if (![(TISKPositionalMetricSample *)self size])
  {
    return 1;
  }

  v3 = 0;
  do
  {
    v4 = [(NSMutableArray *)self->_positionalMetricSample objectAtIndexedSubscript:v3];
    v5 = [v4 isEmpty];

    if ((v5 & 1) == 0)
    {
      break;
    }

    ++v3;
  }

  while ([(TISKPositionalMetricSample *)self size]> v3);
  return v5;
}

- (void)addSample:(id)a3 withPosition:(unint64_t)a4
{
  positionalMetricSample = self->_positionalMetricSample;
  v6 = a3;
  v7 = [(NSMutableArray *)positionalMetricSample objectAtIndexedSubscript:a4];
  [v7 addSample:v6];
}

- (TISKPositionalMetricSample)initWithCapacity:(unint64_t)a3
{
  v10.receiver = self;
  v10.super_class = TISKPositionalMetricSample;
  v4 = [(TISKPositionalMetricSample *)&v10 init];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:a3];
    positionalMetricSample = v4->_positionalMetricSample;
    v4->_positionalMetricSample = v5;

    if (a3)
    {
      v7 = 0;
      do
      {
        v8 = objc_alloc_init(TISKSingleMetricSample);
        [(NSMutableArray *)v4->_positionalMetricSample setObject:v8 atIndexedSubscript:v7];

        ++v7;
      }

      while (a3 != v7);
    }
  }

  return v4;
}

+ (id)makeMetric:(unint64_t)a3
{
  v3 = [[TISKPositionalMetricSample alloc] initWithCapacity:a3];

  return v3;
}

@end