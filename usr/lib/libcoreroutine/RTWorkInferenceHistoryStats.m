@interface RTWorkInferenceHistoryStats
- (RTWorkInferenceHistoryStats)initWithLearnedPlaceIdentifier:(id)a3 totalInferences:(unint64_t)a4 workInferences:(unint64_t)a5 lastDateInferred:(id)a6;
- (id)description;
@end

@implementation RTWorkInferenceHistoryStats

- (RTWorkInferenceHistoryStats)initWithLearnedPlaceIdentifier:(id)a3 totalInferences:(unint64_t)a4 workInferences:(unint64_t)a5 lastDateInferred:(id)a6
{
  v11 = a3;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = RTWorkInferenceHistoryStats;
  v13 = [(RTWorkInferenceHistoryStats *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_learnedPlaceIdentifier, a3);
    v14->_totalInferences = a4;
    v14->_workInferences = a5;
    objc_storeStrong(&v14->_lastDateInferred, a6);
  }

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(RTWorkInferenceHistoryStats *)self learnedPlaceIdentifier];
  v5 = [(RTWorkInferenceHistoryStats *)self workInferences];
  v6 = [(RTWorkInferenceHistoryStats *)self totalInferences];
  v7 = [(RTWorkInferenceHistoryStats *)self lastDateInferred];
  v8 = [v3 stringWithFormat:@"WorkStats[%@: %lu/%lu], date:%@", v4, v5, v6, v7];

  return v8;
}

@end