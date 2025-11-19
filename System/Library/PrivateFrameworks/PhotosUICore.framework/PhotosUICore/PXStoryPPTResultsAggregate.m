@interface PXStoryPPTResultsAggregate
- (NSDictionary)extraResultsDictionaryRepresentation;
- (PXStoryPPTResultsAggregate)init;
- (id)_keyForMeasure:(id)a3 configuration:(id)a4;
- (void)_addExtraResultsValue:(double)a3 metric:(int64_t)a4 forMeasure:(id)a5 configuration:(id)a6;
- (void)addValue:(double)a3 metric:(int64_t)a4 forMeasure:(id)a5 configuration:(id)a6;
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

- (id)_keyForMeasure:(id)a3 configuration:(id)a4
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a3;
  v7 = a4;
  v8 = [v5 alloc];
  v9 = [v6 stringByReplacingOccurrencesOfString:@" " withString:&stru_1F1741150];

  v10 = [v7 stringByReplacingOccurrencesOfString:@" " withString:&stru_1F1741150];

  v11 = [v8 initWithFormat:@"sub:%@:%@", v9, v10];

  return v11;
}

- (void)_addExtraResultsValue:(double)a3 metric:(int64_t)a4 forMeasure:(id)a5 configuration:(id)a6
{
  v18 = a5;
  v11 = a6;
  switch(a4)
  {
    case 1:
      if (a3 >= 0.1)
      {
        v12 = @"s";
      }

      else
      {
        a3 = a3 * 1000.0;
        v12 = @"ms";
      }

      break;
    case 2:
      v12 = @"fps";
      break;
    case 0:
      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      [v17 handleFailureInMethod:a2 object:self file:@"PXStoryPPTResultsAggregate.m" lineNumber:53 description:@"Code which should be unreachable has been reached"];

      abort();
    default:
      v12 = 0;
      a3 = 0.0;
      break;
  }

  v13 = [(PXStoryPPTResultsAggregate *)self _keyForMeasure:v18 configuration:v11];
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(NSMutableDictionary *)self->_extraResultsDictionaryRepresentation setObject:v14 forKeyedSubscript:v13];

  extraResultsDictionaryRepresentation = self->_extraResultsDictionaryRepresentation;
  v16 = [v13 stringByAppendingString:@"Units"];
  [(NSMutableDictionary *)extraResultsDictionaryRepresentation setObject:v12 forKeyedSubscript:v16];
}

- (void)addValue:(double)a3 metric:(int64_t)a4 forMeasure:(id)a5 configuration:(id)a6
{
  v16 = a5;
  v11 = a6;
  v12 = [(NSMutableDictionary *)self->_measureInfos objectForKeyedSubscript:v16];
  if (v12)
  {
    v13 = v12;
    if ([(_PXStoryPPTMeasureInfo *)v12 metric]!= a4)
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      [v14 handleFailureInMethod:a2 object:self file:@"PXStoryPPTResultsAggregate.m" lineNumber:41 description:{@"metric mismatch for %@:%@", v16, v11}];
    }
  }

  else
  {
    v13 = [[_PXStoryPPTMeasureInfo alloc] initWithMetric:a4];
    [(NSMutableDictionary *)self->_measureInfos setObject:v13 forKeyedSubscript:v16];
  }

  [(PXStoryPPTResultsAggregate *)self _addExtraResultsValue:a4 metric:v16 forMeasure:v11 configuration:a3];
  v15 = [(_PXStoryPPTMeasureInfo *)v13 statistics];
  [v15 addValue:a3];
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