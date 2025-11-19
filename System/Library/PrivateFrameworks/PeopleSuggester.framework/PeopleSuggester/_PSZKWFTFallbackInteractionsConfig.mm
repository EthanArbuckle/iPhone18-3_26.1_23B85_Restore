@interface _PSZKWFTFallbackInteractionsConfig
- (_PSZKWFTFallbackInteractionsConfig)initWithIsEnabled:(BOOL)a3 defaultConfidenceCategory:(int64_t)a4 mechanisms:(id)a5 interactionCountMaxDepths:(id)a6 interactionHistoryRelativeStartDates:(id)a7 bundleIds:(id)a8 modelType:(int64_t)a9 clusterPruneThreshold:(unint64_t)a10 maxSuggestions:(unint64_t)a11;
- (_PSZKWFTFallbackInteractionsConfig)initWithIsEnabled:(BOOL)a3 defaultConfidenceCategory:(int64_t)a4 modelType:(int64_t)a5;
@end

@implementation _PSZKWFTFallbackInteractionsConfig

- (_PSZKWFTFallbackInteractionsConfig)initWithIsEnabled:(BOOL)a3 defaultConfidenceCategory:(int64_t)a4 mechanisms:(id)a5 interactionCountMaxDepths:(id)a6 interactionHistoryRelativeStartDates:(id)a7 bundleIds:(id)a8 modelType:(int64_t)a9 clusterPruneThreshold:(unint64_t)a10 maxSuggestions:(unint64_t)a11
{
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v25.receiver = self;
  v25.super_class = _PSZKWFTFallbackInteractionsConfig;
  v21 = [(_PSZKWFTFallbackInteractionsConfig *)&v25 init];
  v22 = v21;
  if (v21)
  {
    v21->_isEnabled = a3;
    v21->_defaultConfidenceCategory = a4;
    objc_storeStrong(&v21->_mechanisms, a5);
    objc_storeStrong(&v22->_interactionCountMaxDepths, a6);
    objc_storeStrong(&v22->_interactionHistoryRelativeStartDates, a7);
    objc_storeStrong(&v22->_bundleIds, a8);
    v22->_modelType = a9;
    v22->_maxSuggestions = a11;
    v22->_clusterPruneThreshold = a10;
  }

  return v22;
}

- (_PSZKWFTFallbackInteractionsConfig)initWithIsEnabled:(BOOL)a3 defaultConfidenceCategory:(int64_t)a4 modelType:(int64_t)a5
{
  v19 = a3;
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
  v17 = [(_PSZKWFTFallbackInteractionsConfig *)self initWithIsEnabled:v19 defaultConfidenceCategory:a4 mechanisms:v7 interactionCountMaxDepths:v8 interactionHistoryRelativeStartDates:v9 bundleIds:v10 modelType:a5 clusterPruneThreshold:5 maxSuggestions:12];

  return v17;
}

@end