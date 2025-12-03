@interface PXStoryPPTResultsAggregate
- (NSDictionary)extraResultsDictionaryRepresentation;
- (PXStoryPPTResultsAggregate)init;
- (id)_keyForMeasure:(id)measure configuration:(id)configuration;
- (void)_addExtraResultsValue:(double)value metric:(int64_t)metric forMeasure:(id)measure configuration:(id)configuration;
- (void)addValue:(double)value metric:(int64_t)metric forMeasure:(id)measure configuration:(id)configuration;
@end

@implementation PXStoryPPTResultsAggregate

- (NSDictionary)extraResultsDictionaryRepresentation
{
  measureInfos = self->_measureInfos;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__PXStoryPPTResultsAggregate_extraResultsDictionaryRepresentation__block_invoke;
  v6[3] = &unk_1E7738A10;
  v6[4] = self;
  [(NSMutableDictionary *)measureInfos enumerateKeysAndObjectsUsingBlock:v6];
  v4 = [(NSMutableDictionary *)self->_extraResultsDictionaryRepresentation copy];

  return v4;
}

void __66__PXStoryPPTResultsAggregate_extraResultsDictionaryRepresentation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v19 = [v5 statistics];
  v7 = *(a1 + 32);
  [v19 mean];
  [v7 _addExtraResultsValue:objc_msgSend(v5 metric:"metric") forMeasure:v6 configuration:{@"mean", v8}];
  v9 = *(a1 + 32);
  [v19 standardDeviation];
  [v9 _addExtraResultsValue:objc_msgSend(v5 metric:"metric") forMeasure:v6 configuration:{@"stdDev", v10}];
  v11 = *(a1 + 32);
  [v19 min];
  [v11 _addExtraResultsValue:objc_msgSend(v5 metric:"metric") forMeasure:v6 configuration:{@"min", v12}];
  v13 = *(a1 + 32);
  [v19 max];
  [v13 _addExtraResultsValue:objc_msgSend(v5 metric:"metric") forMeasure:v6 configuration:{@"max", v14}];
  v15 = *(a1 + 32);
  [v19 first];
  v17 = v16;
  v18 = [v5 metric];

  [v15 _addExtraResultsValue:v18 metric:v6 forMeasure:@"first" configuration:v17];
}

- (id)_keyForMeasure:(id)measure configuration:(id)configuration
{
  v5 = MEMORY[0x1E696AEC0];
  measureCopy = measure;
  configurationCopy = configuration;
  v8 = [v5 alloc];
  v9 = [measureCopy stringByReplacingOccurrencesOfString:@" " withString:&stru_1F1741150];

  v10 = [configurationCopy stringByReplacingOccurrencesOfString:@" " withString:&stru_1F1741150];

  v11 = [v8 initWithFormat:@"sub:%@:%@", v9, v10];

  return v11;
}

- (void)_addExtraResultsValue:(double)value metric:(int64_t)metric forMeasure:(id)measure configuration:(id)configuration
{
  measureCopy = measure;
  configurationCopy = configuration;
  switch(metric)
  {
    case 1:
      if (value >= 0.1)
      {
        v12 = @"s";
      }

      else
      {
        value = value * 1000.0;
        v12 = @"ms";
      }

      break;
    case 2:
      v12 = @"fps";
      break;
    case 0:
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryPPTResultsAggregate.m" lineNumber:53 description:@"Code which should be unreachable has been reached"];

      abort();
    default:
      v12 = 0;
      value = 0.0;
      break;
  }

  v13 = [(PXStoryPPTResultsAggregate *)self _keyForMeasure:measureCopy configuration:configurationCopy];
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:value];
  [(NSMutableDictionary *)self->_extraResultsDictionaryRepresentation setObject:v14 forKeyedSubscript:v13];

  extraResultsDictionaryRepresentation = self->_extraResultsDictionaryRepresentation;
  v16 = [v13 stringByAppendingString:@"Units"];
  [(NSMutableDictionary *)extraResultsDictionaryRepresentation setObject:v12 forKeyedSubscript:v16];
}

- (void)addValue:(double)value metric:(int64_t)metric forMeasure:(id)measure configuration:(id)configuration
{
  measureCopy = measure;
  configurationCopy = configuration;
  v12 = [(NSMutableDictionary *)self->_measureInfos objectForKeyedSubscript:measureCopy];
  if (v12)
  {
    v13 = v12;
    if ([(_PXStoryPPTMeasureInfo *)v12 metric]!= metric)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryPPTResultsAggregate.m" lineNumber:41 description:{@"metric mismatch for %@:%@", measureCopy, configurationCopy}];
    }
  }

  else
  {
    v13 = [[_PXStoryPPTMeasureInfo alloc] initWithMetric:metric];
    [(NSMutableDictionary *)self->_measureInfos setObject:v13 forKeyedSubscript:measureCopy];
  }

  [(PXStoryPPTResultsAggregate *)self _addExtraResultsValue:metric metric:measureCopy forMeasure:configurationCopy configuration:value];
  statistics = [(_PXStoryPPTMeasureInfo *)v13 statistics];
  [statistics addValue:value];
}

- (PXStoryPPTResultsAggregate)init
{
  v8.receiver = self;
  v8.super_class = PXStoryPPTResultsAggregate;
  v2 = [(PXStoryPPTResultsAggregate *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    measureInfos = v2->_measureInfos;
    v2->_measureInfos = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    extraResultsDictionaryRepresentation = v2->_extraResultsDictionaryRepresentation;
    v2->_extraResultsDictionaryRepresentation = v5;
  }

  return v2;
}

@end