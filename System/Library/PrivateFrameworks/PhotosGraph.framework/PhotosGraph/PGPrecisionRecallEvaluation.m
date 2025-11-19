@interface PGPrecisionRecallEvaluation
- (PGPrecisionRecallEvaluation)initWithIdentifier:(id)a3 category:(id)a4;
- (PGPrecisionRecallEvaluation)initWithIdentifier:(id)a3 category:(id)a4 truePositives:(unint64_t)a5 falsePositives:(unint64_t)a6 falseNegatives:(unint64_t)a7 trueNegatives:(unint64_t)a8;
- (double)fMeasure:(double)a3;
- (double)precision;
- (double)recall;
- (id)description;
- (void)evaluateWithGroundTruthResult:(BOOL)a3 andInferenceResult:(BOOL)a4;
- (void)evaluateWithGroundTruthResults:(id)a3 andInferenceResults:(id)a4;
@end

@implementation PGPrecisionRecallEvaluation

- (double)fMeasure:(double)a3
{
  [(PGPrecisionRecallEvaluation *)self precision];
  v6 = v5;
  [(PGPrecisionRecallEvaluation *)self recall];
  v8 = 0.0;
  if (v6 != 0.0 && v7 != 0.0)
  {
    return (a3 * a3 + 1.0) * v6 * v7 / (v7 + a3 * a3 * v6);
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

- (void)evaluateWithGroundTruthResult:(BOOL)a3 andInferenceResult:(BOOL)a4
{
  v4 = !a4;
  if (!a3 || v4)
  {
    v6 = !v4 && !a3;
    v5 = 16;
    if (!v6)
    {
      v5 = 32;
    }

    if (a3 && !a4)
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

- (void)evaluateWithGroundTruthResults:(id)a3 andInferenceResults:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [v6 allKeys];
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [v7 objectForKeyedSubscript:v13];
        if (v14)
        {
          v15 = [v6 objectForKeyedSubscript:v13];
          v16 = [v15 BOOLValue];

          -[PGPrecisionRecallEvaluation evaluateWithGroundTruthResult:andInferenceResult:](self, "evaluateWithGroundTruthResult:andInferenceResult:", v16, [v14 BOOLValue]);
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (PGPrecisionRecallEvaluation)initWithIdentifier:(id)a3 category:(id)a4 truePositives:(unint64_t)a5 falsePositives:(unint64_t)a6 falseNegatives:(unint64_t)a7 trueNegatives:(unint64_t)a8
{
  v15 = a3;
  v16 = a4;
  v20.receiver = self;
  v20.super_class = PGPrecisionRecallEvaluation;
  v17 = [(PGPrecisionRecallEvaluation *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_truePositives = a5;
    v17->_falsePositives = a6;
    v17->_falseNegatives = a7;
    v17->_trueNegatives = a8;
    objc_storeStrong(&v17->_identifier, a3);
    objc_storeStrong(&v18->_category, a4);
  }

  return v18;
}

- (PGPrecisionRecallEvaluation)initWithIdentifier:(id)a3 category:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PGPrecisionRecallEvaluation;
  v9 = [(PGPrecisionRecallEvaluation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    *(v9 + 24) = 0u;
    *(v9 + 8) = 0u;
    objc_storeStrong(v9 + 5, a3);
    objc_storeStrong(&v10->_category, a4);
  }

  return v10;
}

@end