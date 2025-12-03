@interface PMLClassificationEvaluationMetrics
+ (float)f1Score:(id)score predictions:(id)predictions predicate:(id)predicate;
+ (float)precision:(id)precision predictions:(id)predictions predicate:(id)predicate;
+ (float)recall:(id)recall predictions:(id)predictions predicate:(id)predicate;
+ (float)roundFloatToSigFigs:(float)figs sigFigs:(int)sigFigs;
+ (unint64_t)falseNegatives:(id)negatives predictions:(id)predictions predicate:(id)predicate;
+ (unint64_t)falsePositives:(id)positives predictions:(id)predictions predicate:(id)predicate;
+ (unint64_t)trueNegatives:(id)negatives predictions:(id)predictions predicate:(id)predicate;
+ (unint64_t)truePositives:(id)positives predictions:(id)predictions predicate:(id)predicate;
+ (void)addScoresForOutcomes:(id)outcomes predictions:(id)predictions predicate:(id)predicate metrics:(id)metrics;
+ (void)setReportSamplingRate:(unsigned int)rate;
@end

@implementation PMLClassificationEvaluationMetrics

+ (void)setReportSamplingRate:(unsigned int)rate
{
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  processName = [processInfo processName];

  if (([processName isEqualToString:@"python"] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PMLClassificationEvaluationMetrics.m" lineNumber:184 description:{@"Process name %@ is not python", processName}];
  }

  kReportSamplingRate = rate;
}

+ (float)roundFloatToSigFigs:(float)figs sigFigs:(int)sigFigs
{
  figsCopy = figs;
  v6 = figs < 0.0;
  if (figs == 0.0)
  {
    v7 = 1;
  }

  else
  {
    v8 = -figs;
    if (!v6)
    {
      v8 = figsCopy;
    }

    v7 = vcvtpd_s64_f64(log10(v8));
  }

  v9 = __exp10((sigFigs - v7));
  if (v9 != 0.0)
  {
    return roundf(v9 * figsCopy) / v9;
  }

  return figsCopy;
}

+ (void)addScoresForOutcomes:(id)outcomes predictions:(id)predictions predicate:(id)predicate metrics:(id)metrics
{
  outcomesCopy = outcomes;
  predictionsCopy = predictions;
  predicateCopy = predicate;
  metricsCopy = metrics;
  v12 = outcomesCopy;
  v13 = [outcomesCopy ptr];
  v14 = [predictionsCopy ptr];
  if ([outcomesCopy count])
  {
    v15 = 0;
    do
    {
      if (arc4random_uniform(0x64u) < kReportSamplingRate || [MEMORY[0x277D42590] isInternalBuild])
      {
        LODWORD(v16) = *(v14 + 4 * v15);
        [PMLClassificationEvaluationMetrics roundFloatToSigFigs:3 sigFigs:v16];
        v18 = v17;
        if (predicateCopy[2](predicateCopy, *(v13 + 4 * v15)))
        {
          LODWORD(v19) = v18;
          [metricsCopy addPositiveScores:v19];
        }

        else
        {
          LODWORD(v19) = v18;
          [metricsCopy addNegativeScores:v19];
        }
      }

      ++v15;
    }

    while (v15 < [outcomesCopy count]);
  }
}

+ (unint64_t)falseNegatives:(id)negatives predictions:(id)predictions predicate:(id)predicate
{
  negativesCopy = negatives;
  predictionsCopy = predictions;
  predicateCopy = predicate;
  v10 = [negativesCopy ptr];
  v11 = [predictionsCopy ptr];
  if ([negativesCopy count])
  {
    v12 = 0;
    v13 = 0;
    do
    {
      if (predicateCopy[2](predicateCopy, *(v10 + 4 * v12)))
      {
        v13 += predicateCopy[2](predicateCopy, *(v11 + 4 * v12)) ^ 1;
      }

      ++v12;
    }

    while (v12 < [negativesCopy count]);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (unint64_t)trueNegatives:(id)negatives predictions:(id)predictions predicate:(id)predicate
{
  negativesCopy = negatives;
  predictionsCopy = predictions;
  predicateCopy = predicate;
  v10 = [negativesCopy ptr];
  v11 = [predictionsCopy ptr];
  if ([negativesCopy count])
  {
    v12 = 0;
    v13 = 0;
    do
    {
      if (((predicateCopy[2])(predicateCopy, *(v10 + 4 * v12)) & 1) == 0)
      {
        v13 += predicateCopy[2](predicateCopy, *(v11 + 4 * v12)) ^ 1;
      }

      ++v12;
    }

    while (v12 < [negativesCopy count]);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (unint64_t)falsePositives:(id)positives predictions:(id)predictions predicate:(id)predicate
{
  positivesCopy = positives;
  predictionsCopy = predictions;
  predicateCopy = predicate;
  v10 = [positivesCopy ptr];
  v11 = [predictionsCopy ptr];
  if ([positivesCopy count])
  {
    v12 = 0;
    v13 = 0;
    do
    {
      if (((predicateCopy[2])(predicateCopy, *(v10 + 4 * v12)) & 1) == 0)
      {
        v13 += predicateCopy[2](predicateCopy, *(v11 + 4 * v12));
      }

      ++v12;
    }

    while (v12 < [positivesCopy count]);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (unint64_t)truePositives:(id)positives predictions:(id)predictions predicate:(id)predicate
{
  positivesCopy = positives;
  predictionsCopy = predictions;
  predicateCopy = predicate;
  v10 = [positivesCopy ptr];
  v11 = [predictionsCopy ptr];
  if ([positivesCopy count])
  {
    v12 = 0;
    v13 = 0;
    do
    {
      if (predicateCopy[2](predicateCopy, *(v10 + 4 * v12)))
      {
        v13 += predicateCopy[2](predicateCopy, *(v11 + 4 * v12));
      }

      ++v12;
    }

    while (v12 < [positivesCopy count]);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (float)f1Score:(id)score predictions:(id)predictions predicate:(id)predicate
{
  predicateCopy = predicate;
  predictionsCopy = predictions;
  scoreCopy = score;
  [PMLClassificationEvaluationMetrics precision:scoreCopy predictions:predictionsCopy predicate:predicateCopy];
  v11 = v10;
  [PMLClassificationEvaluationMetrics recall:scoreCopy predictions:predictionsCopy predicate:predicateCopy];
  v13 = v12;

  result = 0.0;
  if ((v11 + v13) != 0.0)
  {
    return ((v11 + v11) * v13) / (v11 + v13);
  }

  return result;
}

+ (float)recall:(id)recall predictions:(id)predictions predicate:(id)predicate
{
  recallCopy = recall;
  predictionsCopy = predictions;
  predicateCopy = predicate;
  v10 = [recallCopy ptr];
  v11 = [predictionsCopy ptr];
  v12 = 0.0;
  if ([recallCopy count])
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    do
    {
      if (predicateCopy[2](predicateCopy, *(v10 + 4 * v13)))
      {
        ++v14;
        v15 += predicateCopy[2](predicateCopy, *(v11 + 4 * v13));
      }

      ++v13;
    }

    while (v13 < [recallCopy count]);
    if (v14)
    {
      v12 = v15 / v14;
    }
  }

  return v12;
}

+ (float)precision:(id)precision predictions:(id)predictions predicate:(id)predicate
{
  precisionCopy = precision;
  predictionsCopy = predictions;
  predicateCopy = predicate;
  v10 = [precisionCopy ptr];
  v11 = [predictionsCopy ptr];
  v12 = 0.0;
  if ([precisionCopy count])
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    do
    {
      if (predicateCopy[2](predicateCopy, *(v11 + 4 * v13)))
      {
        ++v15;
        v14 += predicateCopy[2](predicateCopy, *(v10 + 4 * v13));
      }

      ++v13;
    }

    while (v13 < [precisionCopy count]);
    if (v15)
    {
      v12 = v14 / v15;
    }
  }

  return v12;
}

@end