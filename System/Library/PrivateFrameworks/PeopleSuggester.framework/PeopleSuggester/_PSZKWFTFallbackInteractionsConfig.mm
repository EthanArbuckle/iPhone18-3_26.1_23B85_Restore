@interface _PSZKWFTFallbackInteractionsConfig
- (_PSZKWFTFallbackInteractionsConfig)initWithIsEnabled:(BOOL)enabled defaultConfidenceCategory:(int64_t)category mechanisms:(id)mechanisms interactionCountMaxDepths:(id)depths interactionHistoryRelativeStartDates:(id)dates bundleIds:(id)ids modelType:(int64_t)type clusterPruneThreshold:(unint64_t)self0 maxSuggestions:(unint64_t)self1;
- (_PSZKWFTFallbackInteractionsConfig)initWithIsEnabled:(BOOL)enabled defaultConfidenceCategory:(int64_t)category modelType:(int64_t)type;
@end

@implementation _PSZKWFTFallbackInteractionsConfig

- (_PSZKWFTFallbackInteractionsConfig)initWithIsEnabled:(BOOL)enabled defaultConfidenceCategory:(int64_t)category mechanisms:(id)mechanisms interactionCountMaxDepths:(id)depths interactionHistoryRelativeStartDates:(id)dates bundleIds:(id)ids modelType:(int64_t)type clusterPruneThreshold:(unint64_t)self0 maxSuggestions:(unint64_t)self1
{
  mechanismsCopy = mechanisms;
  depthsCopy = depths;
  datesCopy = dates;
  idsCopy = ids;
  v25.receiver = self;
  v25.super_class = _PSZKWFTFallbackInteractionsConfig;
  v21 = [(_PSZKWFTFallbackInteractionsConfig *)&v25 init];
  v22 = v21;
  if (v21)
  {
    v21->_isEnabled = enabled;
    v21->_defaultConfidenceCategory = category;
    objc_storeStrong(&v21->_mechanisms, mechanisms);
    objc_storeStrong(&v22->_interactionCountMaxDepths, depths);
    objc_storeStrong(&v22->_interactionHistoryRelativeStartDates, dates);
    objc_storeStrong(&v22->_bundleIds, ids);
    v22->_modelType = type;
    v22->_maxSuggestions = suggestions;
    v22->_clusterPruneThreshold = threshold;
  }

  return v22;
}

- (_PSZKWFTFallbackInteractionsConfig)initWithIsEnabled:(BOOL)enabled defaultConfidenceCategory:(int64_t)category modelType:(int64_t)type
{
  enabledCopy = enabled;
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  v10 = objc_opt_new();
  v11 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F2D8C570];
  [v7 addObject:v11];
  v12 = [MEMORY[0x1E696AD98] numberWithInt:1000];
  [v8 addObject:v12];

  v13 = [MEMORY[0x1E696AD98] numberWithInt:0];
  [v9 addObject:v13];

  v14 = MEMORY[0x1E695DFD8];
  v15 = +[_PSConstants mobilePhoneBundleId];
  v16 = [v14 setWithObject:v15];

  [v10 addObject:v16];
  v17 = [(_PSZKWFTFallbackInteractionsConfig *)self initWithIsEnabled:enabledCopy defaultConfidenceCategory:category mechanisms:v7 interactionCountMaxDepths:v8 interactionHistoryRelativeStartDates:v9 bundleIds:v10 modelType:type clusterPruneThreshold:5 maxSuggestions:12];

  return v17;
}

@end