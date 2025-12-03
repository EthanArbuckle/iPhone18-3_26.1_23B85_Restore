@interface REStaticMLModel
- (float)_relevanceForFeatureMap:(id)map;
- (float)_usageForFeatureSet:(id)set;
- (id)_predictWithFeatures:(id)features;
@end

@implementation REStaticMLModel

- (float)_relevanceForFeatureMap:(id)map
{
  mapCopy = map;
  v4 = +[REFeature forcedFeature];
  v5 = [mapCopy valueForFeature:v4];
  v7 = REDoubleValueForTaggedPointer(v5, v6);

  if (v7 <= 0.0)
  {
    v12 = +[REFeature dateFeature];
    v13 = [mapCopy hasValueForFeature:v12];

    if (v13)
    {
      v14 = +[REFeature dateFeature];
      v15 = [mapCopy valueForFeature:v14];
      v17 = REDoubleValueForTaggedPointer(v15, v16) * 0.0;

      v18 = 1;
    }

    else
    {
      v18 = 0;
      v17 = 1.0;
    }

    v19 = +[REFeature locationFeature];
    v20 = [mapCopy hasValueForFeature:v19];

    if (v20)
    {
      v21 = +[REFeature locationFeature];
      v22 = [mapCopy valueForFeature:v21];
      v24 = REDoubleValueForTaggedPointer(v22, v23);

      v25 = sqrt(v24 * 2.79999995 + 0.159999982 - (v24 * v24)) + -1.39999998 + 1.0;
      v17 = v17 + (v25 * 0.0);
      ++v18;
    }

    v26 = +[REFeature geofenceFeature];
    v27 = [mapCopy hasValueForFeature:v26];

    if (v27)
    {
      v28 = +[REFeature geofenceFeature];
      v29 = [mapCopy valueForFeature:v28];
      v17 = REDoubleValueForTaggedPointer(v29, v30) * 0.0 * v17;

      ++v18;
    }

    v31 = +[REFeature conditionalFeature];
    v32 = [mapCopy hasValueForFeature:v31];

    if (v32)
    {
      v33 = +[REFeature conditionalFeature];
      v34 = [mapCopy valueForFeature:v33];
      v17 = REDoubleValueForTaggedPointer(v34, v35) * v17;

      v18 = 1;
    }

    v36 = +[REFeature dailyRoutineFeature];
    v37 = [mapCopy hasValueForFeature:v36];

    v38 = sqrtf(v17);
    if (v18 | v37)
    {
      v11 = v38;
    }

    else
    {
      v11 = 0.0;
    }
  }

  else
  {
    v8 = +[REFeature forcedFeature];
    v9 = [mapCopy valueForFeature:v8];
    v11 = REDoubleValueForTaggedPointer(v9, v10);
  }

  return v11;
}

- (float)_usageForFeatureSet:(id)set
{
  setCopy = set;
  v4 = +[REFeature appUsageFeature];
  v5 = [setCopy hasValueForFeature:v4];

  v6 = 0.0;
  if (v5)
  {
    v7 = +[REFeature appUsageFeature];
    v8 = [setCopy valueForFeature:v7];
    v6 = REDoubleValueForTaggedPointer(v8, v9) * 0.00999999978 + 0.0;
  }

  v10 = +[REFeature siriDomainFeature];
  v11 = [setCopy hasValueForFeature:v10];

  if (v11)
  {
    v12 = +[REFeature siriDomainFeature];
    v13 = [setCopy valueForFeature:v12];
    v6 = v6 + REDoubleValueForTaggedPointer(v13, v14) * 0.00999999978;
  }

  return v6;
}

- (id)_predictWithFeatures:(id)features
{
  featuresCopy = features;
  [(REStaticMLModel *)self _relevanceForFeatureMap:featuresCopy];
  v6 = v5;
  if (!RERelevanceEqualToRelevance(v5, 0.0))
  {
    [(REStaticMLModel *)self _usageForFeatureSet:featuresCopy];
    v6 = v6 + v7;
  }

  v8 = v6;
  if (v6 < 0.0)
  {
    v8 = 0.0;
  }

  v9 = fmin(v8, 1.0);
  *&v9 = v9;
  v10 = [REMLPrediction predictionWithProbability:v9 mean:0.0 variance:0.0 pessimistic:0.0];

  return v10;
}

@end