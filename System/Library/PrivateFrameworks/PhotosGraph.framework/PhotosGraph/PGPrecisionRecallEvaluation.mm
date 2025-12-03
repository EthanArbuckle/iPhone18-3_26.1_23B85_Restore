@interface PGPrecisionRecallEvaluation
- (PGPrecisionRecallEvaluation)initWithIdentifier:(id)identifier category:(id)category;
- (PGPrecisionRecallEvaluation)initWithIdentifier:(id)identifier category:(id)category truePositives:(unint64_t)positives falsePositives:(unint64_t)falsePositives falseNegatives:(unint64_t)negatives trueNegatives:(unint64_t)trueNegatives;
- (double)fMeasure:(double)measure;
- (double)precision;
- (double)recall;
- (id)description;
- (void)evaluateWithGroundTruthResult:(BOOL)result andInferenceResult:(BOOL)inferenceResult;
- (void)evaluateWithGroundTruthResults:(id)results andInferenceResults:(id)inferenceResults;
@end

@implementation PGPrecisionRecallEvaluation

- (double)fMeasure:(double)measure
{
  [(PGPrecisionRecallEvaluation *)self precision];
  v6 = v5;
  [(PGPrecisionRecallEvaluation *)self recall];
  v8 = 0.0;
  if (v6 != 0.0 && v7 != 0.0)
  {
    return (measure * measure + 1.0) * v6 * v7 / (v7 + measure * measure * v6);
  }

  return v8;
}

- (double)recall
{
  truePositives = self->_truePositives;
  if (truePositives)
  {
    return truePositives / (self->_falseNegatives + truePositives);
  }

  else
  {
    return 0.0;
  }
}

- (double)precision
{
  truePositives = self->_truePositives;
  if (truePositives)
  {
    return truePositives / (self->_falsePositives + truePositives);
  }

  else
  {
    return 0.0;
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  identifier = self->_identifier;
  category = self->_category;
  truePositives = self->_truePositives;
  falsePositives = self->_falsePositives;
  falseNegatives = self->_falseNegatives;
  trueNegatives = self->_trueNegatives;
  [(PGPrecisionRecallEvaluation *)self precision];
  v11 = v10;
  [(PGPrecisionRecallEvaluation *)self recall];
  v13 = v12;
  [(PGPrecisionRecallEvaluation *)self fMeasure];
  return [v3 stringWithFormat:@"%@, %@, %ld, %ld, %ld, %ld, %.2f, %.2f, %.2f", category, identifier, truePositives, falsePositives, falseNegatives, trueNegatives, v11, v13, v14];
}

- (void)evaluateWithGroundTruthResult:(BOOL)result andInferenceResult:(BOOL)inferenceResult
{
  v4 = !inferenceResult;
  if (!result || v4)
  {
    v6 = !v4 && !result;
    v5 = 16;
    if (!v6)
    {
      v5 = 32;
    }

    if (result && !inferenceResult)
    {
      v5 = 24;
    }
  }

  else
  {
    v5 = 8;
  }

  ++*(&self->super.isa + v5);
}

- (void)evaluateWithGroundTruthResults:(id)results andInferenceResults:(id)inferenceResults
{
  v23 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  inferenceResultsCopy = inferenceResults;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  allKeys = [resultsCopy allKeys];
  v9 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(allKeys);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [inferenceResultsCopy objectForKeyedSubscript:v13];
        if (v14)
        {
          v15 = [resultsCopy objectForKeyedSubscript:v13];
          bOOLValue = [v15 BOOLValue];

          -[PGPrecisionRecallEvaluation evaluateWithGroundTruthResult:andInferenceResult:](self, "evaluateWithGroundTruthResult:andInferenceResult:", bOOLValue, [v14 BOOLValue]);
        }
      }

      v10 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (PGPrecisionRecallEvaluation)initWithIdentifier:(id)identifier category:(id)category truePositives:(unint64_t)positives falsePositives:(unint64_t)falsePositives falseNegatives:(unint64_t)negatives trueNegatives:(unint64_t)trueNegatives
{
  identifierCopy = identifier;
  categoryCopy = category;
  v20.receiver = self;
  v20.super_class = PGPrecisionRecallEvaluation;
  v17 = [(PGPrecisionRecallEvaluation *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_truePositives = positives;
    v17->_falsePositives = falsePositives;
    v17->_falseNegatives = negatives;
    v17->_trueNegatives = trueNegatives;
    objc_storeStrong(&v17->_identifier, identifier);
    objc_storeStrong(&v18->_category, category);
  }

  return v18;
}

- (PGPrecisionRecallEvaluation)initWithIdentifier:(id)identifier category:(id)category
{
  identifierCopy = identifier;
  categoryCopy = category;
  v12.receiver = self;
  v12.super_class = PGPrecisionRecallEvaluation;
  v9 = [(PGPrecisionRecallEvaluation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    *(v9 + 24) = 0u;
    *(v9 + 8) = 0u;
    objc_storeStrong(v9 + 5, identifier);
    objc_storeStrong(&v10->_category, category);
  }

  return v10;
}

@end