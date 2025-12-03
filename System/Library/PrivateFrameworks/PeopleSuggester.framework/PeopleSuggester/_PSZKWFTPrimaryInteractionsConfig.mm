@interface _PSZKWFTPrimaryInteractionsConfig
- (_PSZKWFTPrimaryInteractionsConfig)initWithIsEnabled:(BOOL)enabled defaultConfidenceCategory:(int64_t)category mechanisms:(id)mechanisms interactionCountMaxDepths:(id)depths interactionHistoryRelativeStartDates:(id)dates bundleIds:(id)ids modelType:(int64_t)type clusterPruneThreshold:(unint64_t)self0 maxSuggestions:(unint64_t)self1;
- (_PSZKWFTPrimaryInteractionsConfig)initWithIsEnabled:(BOOL)enabled defaultConfidenceCategory:(int64_t)category modelType:(int64_t)type;
@end

@implementation _PSZKWFTPrimaryInteractionsConfig

- (_PSZKWFTPrimaryInteractionsConfig)initWithIsEnabled:(BOOL)enabled defaultConfidenceCategory:(int64_t)category mechanisms:(id)mechanisms interactionCountMaxDepths:(id)depths interactionHistoryRelativeStartDates:(id)dates bundleIds:(id)ids modelType:(int64_t)type clusterPruneThreshold:(unint64_t)self0 maxSuggestions:(unint64_t)self1
{
  mechanismsCopy = mechanisms;
  depthsCopy = depths;
  datesCopy = dates;
  idsCopy = ids;
  v25.receiver = self;
  v25.super_class = _PSZKWFTPrimaryInteractionsConfig;
  v21 = [(_PSZKWFTPrimaryInteractionsConfig *)&v25 init];
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

- (_PSZKWFTPrimaryInteractionsConfig)initWithIsEnabled:(BOOL)enabled defaultConfidenceCategory:(int64_t)category modelType:(int64_t)type
{
  enabledCopy = enabled;
  v34[2] = *MEMORY[0x1E69E9840];
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  [MEMORY[0x1E695DFD8] setWithArray:&unk_1F2D8C558];
  v28 = v27 = v5;
  [v5 addObject:v28];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:1000];
  [v6 addObject:v9];

  v10 = [MEMORY[0x1E696AD98] numberWithInt:0];
  [v7 addObject:v10];

  v11 = MEMORY[0x1E695DFD8];
  v12 = +[_PSConstants mobileFacetimeBundleId];
  v34[0] = v12;
  v13 = +[_PSConstants macFacetimeBundleId];
  v34[1] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
  v15 = [v11 setWithArray:v14];

  [v8 addObject:v15];
  v16 = [MEMORY[0x1E695DFD8] setWithObject:&unk_1F2D8BBB0];
  [v5 addObject:v16];
  v17 = [MEMORY[0x1E696AD98] numberWithInt:1500];
  [v6 addObject:v17];

  v18 = [MEMORY[0x1E696AD98] numberWithInt:4294967293];
  [v7 addObject:v18];

  v19 = MEMORY[0x1E695DFD8];
  v20 = +[_PSConstants mobileMessagesBundleId];
  v33[0] = v20;
  v21 = +[_PSConstants macMessagesBundleId];
  v33[1] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  v23 = [v19 setWithArray:v22];

  [v8 addObject:v23];
  v24 = [(_PSZKWFTPrimaryInteractionsConfig *)self initWithIsEnabled:enabledCopy defaultConfidenceCategory:category mechanisms:v27 interactionCountMaxDepths:v6 interactionHistoryRelativeStartDates:v7 bundleIds:v8 modelType:type clusterPruneThreshold:5 maxSuggestions:12];

  v25 = *MEMORY[0x1E69E9840];
  return v24;
}

@end