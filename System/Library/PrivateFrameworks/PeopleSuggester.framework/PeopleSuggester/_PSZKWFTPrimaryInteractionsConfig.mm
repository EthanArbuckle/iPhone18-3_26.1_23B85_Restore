@interface _PSZKWFTPrimaryInteractionsConfig
- (_PSZKWFTPrimaryInteractionsConfig)initWithIsEnabled:(BOOL)a3 defaultConfidenceCategory:(int64_t)a4 mechanisms:(id)a5 interactionCountMaxDepths:(id)a6 interactionHistoryRelativeStartDates:(id)a7 bundleIds:(id)a8 modelType:(int64_t)a9 clusterPruneThreshold:(unint64_t)a10 maxSuggestions:(unint64_t)a11;
- (_PSZKWFTPrimaryInteractionsConfig)initWithIsEnabled:(BOOL)a3 defaultConfidenceCategory:(int64_t)a4 modelType:(int64_t)a5;
@end

@implementation _PSZKWFTPrimaryInteractionsConfig

- (_PSZKWFTPrimaryInteractionsConfig)initWithIsEnabled:(BOOL)a3 defaultConfidenceCategory:(int64_t)a4 mechanisms:(id)a5 interactionCountMaxDepths:(id)a6 interactionHistoryRelativeStartDates:(id)a7 bundleIds:(id)a8 modelType:(int64_t)a9 clusterPruneThreshold:(unint64_t)a10 maxSuggestions:(unint64_t)a11
{
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v25.receiver = self;
  v25.super_class = _PSZKWFTPrimaryInteractionsConfig;
  v21 = [(_PSZKWFTPrimaryInteractionsConfig *)&v25 init];
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

- (_PSZKWFTPrimaryInteractionsConfig)initWithIsEnabled:(BOOL)a3 defaultConfidenceCategory:(int64_t)a4 modelType:(int64_t)a5
{
  v31 = a3;
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
  v24 = [(_PSZKWFTPrimaryInteractionsConfig *)self initWithIsEnabled:v31 defaultConfidenceCategory:a4 mechanisms:v27 interactionCountMaxDepths:v6 interactionHistoryRelativeStartDates:v7 bundleIds:v8 modelType:a5 clusterPruneThreshold:5 maxSuggestions:12];

  v25 = *MEMORY[0x1E69E9840];
  return v24;
}

@end