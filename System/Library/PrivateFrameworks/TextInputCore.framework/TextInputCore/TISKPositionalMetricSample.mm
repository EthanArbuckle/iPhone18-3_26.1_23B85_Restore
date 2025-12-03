@interface TISKPositionalMetricSample
+ (id)makeMetric:(unint64_t)metric;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (TISKPositionalMetricSample)initWithCapacity:(unint64_t)capacity;
- (TISKPositionalMetricSample)initWithCoder:(id)coder;
- (id)description:(BOOL)description;
- (id)generateDataForSR:(id)r;
- (void)addSample:(id)sample withPosition:(unint64_t)position;
- (void)merge:(id)merge;
@end

@implementation TISKPositionalMetricSample

- (TISKPositionalMetricSample)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = TISKPositionalMetricSample;
  v5 = [(TISKPositionalMetricSample *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"PositionalMetricSample"];
    positionalMetricSample = v5->_positionalMetricSample;
    v5->_positionalMetricSample = v9;
  }

  return v5;
}

- (id)generateDataForSR:(id)r
{
  rCopy = r;
  array = [MEMORY[0x277CBEB18] array];
  if (![(NSMutableArray *)self->_positionalMetricSample count])
  {
    goto LABEL_8;
  }

  v6 = 0;
  v7 = 0;
  do
  {
    v8 = [(NSMutableArray *)self->_positionalMetricSample objectAtIndexedSubscript:v6];
    v9 = [v8 generateDataForSR:rCopy];

    if (!v9)
    {
      v9 = objc_alloc_init(getSRKeyboardProbabilityMetricClass());
    }

    [array addObject:v9];
    v7 += [v9 totalDataSamples];

    ++v6;
  }

  while (v6 < [(NSMutableArray *)self->_positionalMetricSample count]);
  if (v7)
  {
    v10 = array;
  }

  else
  {
LABEL_8:
    v10 = 0;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  positionalMetricSample = self->_positionalMetricSample;
  positionalMetricSample = [equal positionalMetricSample];
  LOBYTE(positionalMetricSample) = [(NSMutableArray *)positionalMetricSample isEqual:positionalMetricSample];

  return positionalMetricSample;
}

- (id)description:(BOOL)description
{
  descriptionCopy = description;
  string = [MEMORY[0x277CCAB68] string];
  if ([(TISKPositionalMetricSample *)self size])
  {
    v6 = 0;
    do
    {
      v7 = [(NSMutableArray *)self->_positionalMetricSample objectAtIndexedSubscript:v6];
      [string appendFormat:@"%lu:%lu ", v6, objc_msgSend(v7, "size")];
      if (descriptionCopy)
      {
        [string appendString:@"<"];
        v8 = [v7 description];
        [string appendString:v8];

        [string appendString:@">"];
      }

      [string appendString:{@", "}];

      ++v6;
    }

    while (v6 < [(TISKPositionalMetricSample *)self size]);
  }

  return string;
}

- (void)merge:(id)merge
{
  v17 = *MEMORY[0x277D85DE8];
  mergeCopy = merge;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v5 = IXADefaultLogFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v11 = MEMORY[0x277CCACA8];
      positionalMetricSample = self->_positionalMetricSample;
      positionalMetricSample = [mergeCopy positionalMetricSample];
      v14 = [v11 stringWithFormat:@"%s [SensorKit] positional metric merge: other doesn't respond to positionalMetricSample selector %@ : %@", "-[TISKPositionalMetricSample merge:]", positionalMetricSample, positionalMetricSample];
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
      positionalMetricSample2 = [mergeCopy positionalMetricSample];
      v9 = [positionalMetricSample2 objectAtIndexedSubscript:v6];
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
    isEmpty = [v4 isEmpty];

    if ((isEmpty & 1) == 0)
    {
      break;
    }

    ++v3;
  }

  while ([(TISKPositionalMetricSample *)self size]> v3);
  return isEmpty;
}

- (void)addSample:(id)sample withPosition:(unint64_t)position
{
  positionalMetricSample = self->_positionalMetricSample;
  sampleCopy = sample;
  v7 = [(NSMutableArray *)positionalMetricSample objectAtIndexedSubscript:position];
  [v7 addSample:sampleCopy];
}

- (TISKPositionalMetricSample)initWithCapacity:(unint64_t)capacity
{
  v10.receiver = self;
  v10.super_class = TISKPositionalMetricSample;
  v4 = [(TISKPositionalMetricSample *)&v10 init];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:capacity];
    positionalMetricSample = v4->_positionalMetricSample;
    v4->_positionalMetricSample = v5;

    if (capacity)
    {
      v7 = 0;
      do
      {
        v8 = objc_alloc_init(TISKSingleMetricSample);
        [(NSMutableArray *)v4->_positionalMetricSample setObject:v8 atIndexedSubscript:v7];

        ++v7;
      }

      while (capacity != v7);
    }
  }

  return v4;
}

+ (id)makeMetric:(unint64_t)metric
{
  v3 = [[TISKPositionalMetricSample alloc] initWithCapacity:metric];

  return v3;
}

@end