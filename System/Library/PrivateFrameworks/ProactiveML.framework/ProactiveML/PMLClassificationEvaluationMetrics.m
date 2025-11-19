@interface PMLClassificationEvaluationMetrics
+ (float)f1Score:(id)a3 predictions:(id)a4 predicate:(id)a5;
+ (float)precision:(id)a3 predictions:(id)a4 predicate:(id)a5;
+ (float)recall:(id)a3 predictions:(id)a4 predicate:(id)a5;
+ (float)roundFloatToSigFigs:(float)a3 sigFigs:(int)a4;
+ (unint64_t)falseNegatives:(id)a3 predictions:(id)a4 predicate:(id)a5;
+ (unint64_t)falsePositives:(id)a3 predictions:(id)a4 predicate:(id)a5;
+ (unint64_t)trueNegatives:(id)a3 predictions:(id)a4 predicate:(id)a5;
+ (unint64_t)truePositives:(id)a3 predictions:(id)a4 predicate:(id)a5;
+ (void)addScoresForOutcomes:(id)a3 predictions:(id)a4 predicate:(id)a5 metrics:(id)a6;
+ (void)setReportSamplingRate:(unsigned int)a3;
@end

@implementation PMLClassificationEvaluationMetrics

+ (void)setReportSamplingRate:(unsigned int)a3
{
  v6 = [MEMORY[0x277CCAC38] processInfo];
  v8 = [v6 processName];

  if (([v8 isEqualToString:@"python"] & 1) == 0)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:a1 file:@"PMLClassificationEvaluationMetrics.m" lineNumber:184 description:{@"Process name %@ is not python", v8}];
  }

  kReportSamplingRate = a3;
}

+ (float)roundFloatToSigFigs:(float)a3 sigFigs:(int)a4
{
  v5 = a3;
  v6 = a3 < 0.0;
  if (a3 == 0.0)
  {
    v7 = 1;
  }

  else
  {
    v8 = -a3;
    if (!v6)
    {
      v8 = v5;
    }

    v7 = vcvtpd_s64_f64(log10(v8));
  }

  v9 = __exp10((a4 - v7));
  if (v9 != 0.0)
  {
    return roundf(v9 * v5) / v9;
  }

  return v5;
}

+ (void)addScoresForOutcomes:(id)a3 predictions:(id)a4 predicate:(id)a5 metrics:(id)a6
{
  v20 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = v20;
  v13 = [v20 ptr];
  v14 = [v9 ptr];
  if ([v20 count])
  {
    v15 = 0;
    do
    {
      if (arc4random_uniform(0x64u) < kReportSamplingRate || [MEMORY[0x277D42590] isInternalBuild])
      {
        LODWORD(v16) = *(v14 + 4 * v15);
        [PMLClassificationEvaluationMetrics roundFloatToSigFigs:3 sigFigs:v16];
        v18 = v17;
        if (v10[2](v10, *(v13 + 4 * v15)))
        {
          LODWORD(v19) = v18;
          [v11 addPositiveScores:v19];
        }

        else
        {
          LODWORD(v19) = v18;
          [v11 addNegativeScores:v19];
        }
      }

      ++v15;
    }

    while (v15 < [v20 count]);
  }
}

+ (unint64_t)falseNegatives:(id)a3 predictions:(id)a4 predicate:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 ptr];
  v11 = [v8 ptr];
  if ([v7 count])
  {
    v12 = 0;
    v13 = 0;
    do
    {
      if (v9[2](v9, *(v10 + 4 * v12)))
      {
        v13 += v9[2](v9, *(v11 + 4 * v12)) ^ 1;
      }

      ++v12;
    }

    while (v12 < [v7 count]);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (unint64_t)trueNegatives:(id)a3 predictions:(id)a4 predicate:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 ptr];
  v11 = [v8 ptr];
  if ([v7 count])
  {
    v12 = 0;
    v13 = 0;
    do
    {
      if (((v9[2])(v9, *(v10 + 4 * v12)) & 1) == 0)
      {
        v13 += v9[2](v9, *(v11 + 4 * v12)) ^ 1;
      }

      ++v12;
    }

    while (v12 < [v7 count]);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (unint64_t)falsePositives:(id)a3 predictions:(id)a4 predicate:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 ptr];
  v11 = [v8 ptr];
  if ([v7 count])
  {
    v12 = 0;
    v13 = 0;
    do
    {
      if (((v9[2])(v9, *(v10 + 4 * v12)) & 1) == 0)
      {
        v13 += v9[2](v9, *(v11 + 4 * v12));
      }

      ++v12;
    }

    while (v12 < [v7 count]);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (unint64_t)truePositives:(id)a3 predictions:(id)a4 predicate:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 ptr];
  v11 = [v8 ptr];
  if ([v7 count])
  {
    v12 = 0;
    v13 = 0;
    do
    {
      if (v9[2](v9, *(v10 + 4 * v12)))
      {
        v13 += v9[2](v9, *(v11 + 4 * v12));
      }

      ++v12;
    }

    while (v12 < [v7 count]);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (float)f1Score:(id)a3 predictions:(id)a4 predicate:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  [PMLClassificationEvaluationMetrics precision:v9 predictions:v8 predicate:v7];
  v11 = v10;
  [PMLClassificationEvaluationMetrics recall:v9 predictions:v8 predicate:v7];
  v13 = v12;

  result = 0.0;
  if ((v11 + v13) != 0.0)
  {
    return ((v11 + v11) * v13) / (v11 + v13);
  }

  return result;
}

+ (float)recall:(id)a3 predictions:(id)a4 predicate:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 ptr];
  v11 = [v8 ptr];
  v12 = 0.0;
  if ([v7 count])
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    do
    {
      if (v9[2](v9, *(v10 + 4 * v13)))
      {
        ++v14;
        v15 += v9[2](v9, *(v11 + 4 * v13));
      }

      ++v13;
    }

    while (v13 < [v7 count]);
    if (v14)
    {
      v12 = v15 / v14;
    }
  }

  return v12;
}

+ (float)precision:(id)a3 predictions:(id)a4 predicate:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 ptr];
  v11 = [v8 ptr];
  v12 = 0.0;
  if ([v7 count])
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    do
    {
      if (v9[2](v9, *(v11 + 4 * v13)))
      {
        ++v15;
        v14 += v9[2](v9, *(v10 + 4 * v13));
      }

      ++v13;
    }

    while (v13 < [v7 count]);
    if (v15)
    {
      v12 = v14 / v15;
    }
  }

  return v12;
}

@end