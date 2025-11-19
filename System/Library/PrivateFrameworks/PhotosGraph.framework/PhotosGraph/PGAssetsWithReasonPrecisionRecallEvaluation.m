@interface PGAssetsWithReasonPrecisionRecallEvaluation
- (PGAssetsWithReasonPrecisionRecallEvaluation)initWithIdentifier:(id)a3 category:(id)a4;
- (void)evaluateWithGroundTruthResults:(id)a3 inferenceResults:(id)a4 reasonResultByAssetIdentifier:(id)a5;
@end

@implementation PGAssetsWithReasonPrecisionRecallEvaluation

- (void)evaluateWithGroundTruthResults:(id)a3 inferenceResults:(id)a4 reasonResultByAssetIdentifier:(id)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v39.receiver = self;
  v39.super_class = PGAssetsWithReasonPrecisionRecallEvaluation;
  v33 = v9;
  v34 = v8;
  [(PGPrecisionRecallEvaluation *)&v39 evaluateWithGroundTruthResults:v8 andInferenceResults:v9];
  v31 = [(PGPrecisionRecallEvaluation *)self identifier];
  v11 = self;
  v30 = [(PGPrecisionRecallEvaluation *)self category];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v13)
  {
    v14 = v13;
    v32 = *v36;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v36 != v32)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v35 + 1) + 8 * i);
        v17 = [v12 objectForKeyedSubscript:v16];
        v18 = [(NSMutableDictionary *)v11->_evaluationByReason objectForKeyedSubscript:v17];
        if (!v18)
        {
          v18 = [[PGPrecisionRecallEvaluation alloc] initWithIdentifier:v31 category:v30];
          [(NSMutableDictionary *)v11->_evaluationByReason setObject:v18 forKeyedSubscript:v17];
        }

        v19 = [v34 objectForKeyedSubscript:v16];
        v20 = v19;
        if (v19)
        {
          v21 = v19;
        }

        else
        {
          v21 = &unk_284484368;
        }

        v22 = v21;

        v23 = [v33 objectForKeyedSubscript:v16];
        v24 = v23;
        if (v23)
        {
          v25 = v23;
        }

        else
        {
          v25 = &unk_284484368;
        }

        v26 = v25;

        v27 = [v22 BOOLValue];
        v28 = [v26 BOOLValue];

        [(PGPrecisionRecallEvaluation *)v18 evaluateWithGroundTruthResult:v27 andInferenceResult:v28];
      }

      v14 = [v12 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v14);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (PGAssetsWithReasonPrecisionRecallEvaluation)initWithIdentifier:(id)a3 category:(id)a4
{
  v8.receiver = self;
  v8.super_class = PGAssetsWithReasonPrecisionRecallEvaluation;
  v4 = [(PGPrecisionRecallEvaluation *)&v8 initWithIdentifier:a3 category:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    evaluationByReason = v4->_evaluationByReason;
    v4->_evaluationByReason = v5;
  }

  return v4;
}

@end