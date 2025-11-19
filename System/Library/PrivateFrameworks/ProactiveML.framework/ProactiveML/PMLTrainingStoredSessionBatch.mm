@interface PMLTrainingStoredSessionBatch
- (PMLTrainingStoredSessionBatch)initWithCovariates:(id)a3 outcomes:(id)a4;
- (id)minibatchStatsForPositiveLabel:(unint64_t)a3;
- (id)minibatchStatsForPositiveLabels:(id)a3;
@end

@implementation PMLTrainingStoredSessionBatch

- (id)minibatchStatsForPositiveLabels:(id)a3
{
  v23 = a3;
  v4 = objc_opt_new();
  v5 = [(PMLTrainingStoredSessionBatch *)self count];
  v6 = objc_opt_new();
  if ([(PMLModelRegressor *)self->_outcomes count])
  {
    v7 = 0;
    do
    {
      v8 = MEMORY[0x277CCABB0];
      LODWORD(v9) = [(PMLModelRegressor *)self->_outcomes values][4 * v7];
      v10 = [v8 numberWithFloat:v9];
      v11 = MEMORY[0x277CCABB0];
      v12 = [v6 objectForKeyedSubscript:v10];
      v13 = v12;
      if (!v12)
      {
        v12 = &unk_287358238;
      }

      v14 = [v11 numberWithUnsignedInteger:{objc_msgSend(v12, "unsignedIntegerValue") + 1}];
      [v6 setObject:v14 forKeyedSubscript:v10];

      ++v7;
    }

    while (v7 < [(PMLModelRegressor *)self->_outcomes count]);
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __65__PMLTrainingStoredSessionBatch_minibatchStatsForPositiveLabels___block_invoke;
  v24[3] = &unk_279AC0730;
  v28 = v5;
  v15 = v4;
  v25 = v15;
  v16 = v23;
  v26 = v16;
  v27 = &v29;
  [v6 enumerateKeysAndObjectsUsingBlock:v24];
  *&v17 = v30[3] / v5;
  [PMLClassificationEvaluationMetrics roundFloatToSigFigs:3 sigFigs:v17];
  [v15 setSupport:?];
  *&v18 = v5;
  [PMLClassificationEvaluationMetrics roundFloatToSigFigs:3 sigFigs:v18];
  [v15 setBatchSize:vcvtas_u32_f32(v19)];
  v20 = v26;
  v21 = v15;

  _Block_object_dispose(&v29, 8);

  return v21;
}

void __65__PMLTrainingStoredSessionBatch_minibatchStatsForPositiveLabels___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = a2;
  v6 = objc_opt_new();
  [v6 setLabel:{objc_msgSend(v5, "unsignedIntegerValue")}];
  [v10 floatValue];
  *&v8 = v7 / *(a1 + 56);
  [PMLClassificationEvaluationMetrics roundFloatToSigFigs:3 sigFigs:v8];
  [v6 setSupport:?];
  [*(a1 + 32) addPerLabelSupport:v6];
  v9 = [*(a1 + 40) containsObject:v5];

  if (v9)
  {
    *(*(*(a1 + 48) + 8) + 24) += [v10 unsignedIntegerValue];
  }
}

- (id)minibatchStatsForPositiveLabel:(unint64_t)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v6 = [(PMLTrainingStoredSessionBatch *)self minibatchStatsForPositiveLabels:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (PMLTrainingStoredSessionBatch)initWithCovariates:(id)a3 outcomes:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 numberOfRows];
  if (v10 != [v9 count])
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PMLTrainingStoredSessionBatch.m" lineNumber:19 description:{@"Covariates and outcomes need to have the same length, but got %lu and %d.", objc_msgSend(v8, "numberOfRows"), objc_msgSend(v9, "count")}];
  }

  v15.receiver = self;
  v15.super_class = PMLTrainingStoredSessionBatch;
  v11 = [(PMLTrainingStoredSessionBatch *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_covariates, a3);
    objc_storeStrong(&v12->_outcomes, a4);
    v12->_count = [v8 numberOfRows];
  }

  return v12;
}

@end