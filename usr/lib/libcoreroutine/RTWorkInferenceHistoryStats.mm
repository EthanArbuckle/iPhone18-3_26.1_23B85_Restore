@interface RTWorkInferenceHistoryStats
- (RTWorkInferenceHistoryStats)initWithLearnedPlaceIdentifier:(id)identifier totalInferences:(unint64_t)inferences workInferences:(unint64_t)workInferences lastDateInferred:(id)inferred;
- (id)description;
@end

@implementation RTWorkInferenceHistoryStats

- (RTWorkInferenceHistoryStats)initWithLearnedPlaceIdentifier:(id)identifier totalInferences:(unint64_t)inferences workInferences:(unint64_t)workInferences lastDateInferred:(id)inferred
{
  identifierCopy = identifier;
  inferredCopy = inferred;
  v16.receiver = self;
  v16.super_class = RTWorkInferenceHistoryStats;
  v13 = [(RTWorkInferenceHistoryStats *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_learnedPlaceIdentifier, identifier);
    v14->_totalInferences = inferences;
    v14->_workInferences = workInferences;
    objc_storeStrong(&v14->_lastDateInferred, inferred);
  }

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  learnedPlaceIdentifier = [(RTWorkInferenceHistoryStats *)self learnedPlaceIdentifier];
  workInferences = [(RTWorkInferenceHistoryStats *)self workInferences];
  totalInferences = [(RTWorkInferenceHistoryStats *)self totalInferences];
  lastDateInferred = [(RTWorkInferenceHistoryStats *)self lastDateInferred];
  v8 = [v3 stringWithFormat:@"WorkStats[%@: %lu/%lu], date:%@", learnedPlaceIdentifier, workInferences, totalInferences, lastDateInferred];

  return v8;
}

@end