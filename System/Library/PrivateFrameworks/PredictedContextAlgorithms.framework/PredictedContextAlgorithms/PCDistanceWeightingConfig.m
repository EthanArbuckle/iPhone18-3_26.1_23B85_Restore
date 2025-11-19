@interface PCDistanceWeightingConfig
+ (id)clusteringConfiguration;
+ (id)predictionConfiguration;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PCDistanceWeightingConfig

+ (id)clusteringConfiguration
{
  v2 = objc_alloc_init(PCDistanceWeightingConfig);
  [(PCDistanceWeightingConfig *)v2 setConfigType:0];
  [(PCDistanceWeightingConfig *)v2 setConfigName:@"Clustering"];
  [(PCDistanceWeightingConfig *)v2 setMinPoints:3];
  [(PCDistanceWeightingConfig *)v2 setMinClusterSize:3];
  [(PCDistanceWeightingConfig *)v2 setMinimumCountThreshold:3];
  [(PCDistanceWeightingConfig *)v2 setClusterPhenotypeMinimumCountThreshold:3];
  v3 = objc_opt_new();
  [v3 setObject:&unk_1F4BDDE28 forKeyedSubscript:@"embeddingDistWeight_activityContext"];
  [v3 setObject:&unk_1F4BDDE38 forKeyedSubscript:@"embeddingDistWeight_timeContext"];
  [v3 setObject:&unk_1F4BDDE48 forKeyedSubscript:@"embeddingDistWeight_locationContext"];
  [v3 setObject:&unk_1F4BDDE58 forKeyedSubscript:@"embeddingDistWeight_activityType"];
  [v3 setObject:&unk_1F4BDDE38 forKeyedSubscript:@"embeddingDistWeight_normalizedDuration"];
  [v3 setObject:&unk_1F4BDDE48 forKeyedSubscript:@"embeddingDistWeight_timeOfDay"];
  [v3 setObject:&unk_1F4BDDE68 forKeyedSubscript:@"embeddingDistWeight_dayOfWeek"];
  [v3 setObject:&unk_1F4BDDE78 forKeyedSubscript:@"embeddingDistWeight_isWeekend"];
  [v3 setObject:&unk_1F4BDDE48 forKeyedSubscript:@"embeddingDistWeight_placeName"];
  [v3 setObject:&unk_1F4BDDE48 forKeyedSubscript:@"embeddingDistWeight_placeType"];
  [v3 setObject:&unk_1F4BDDE78 forKeyedSubscript:@"embeddingDistWeight_geoProximity"];
  v4 = [v3 copy];
  [(PCDistanceWeightingConfig *)v2 setWeights:v4];

  return v2;
}

+ (id)predictionConfiguration
{
  v2 = objc_alloc_init(PCDistanceWeightingConfig);
  [(PCDistanceWeightingConfig *)v2 setConfigType:1];
  [(PCDistanceWeightingConfig *)v2 setConfigName:@"Prediction"];
  v3 = objc_opt_new();
  [v3 setObject:&unk_1F4BDDE88 forKeyedSubscript:@"intercept"];
  [v3 setObject:&unk_1F4BDDE98 forKeyedSubscript:@"embeddingDistWeight_placeType"];
  [v3 setObject:&unk_1F4BDDEA8 forKeyedSubscript:@"embeddingDistWeight_placeName"];
  [v3 setObject:&unk_1F4BDDEB8 forKeyedSubscript:@"embeddingDistWeight_geoProximity"];
  [v3 setObject:&unk_1F4BDDEC8 forKeyedSubscript:@"embeddingDistWeight_timeOfDay"];
  [v3 setObject:&unk_1F4BDDED8 forKeyedSubscript:@"embeddingDistWeight_dayOfWeek"];
  [v3 setObject:&unk_1F4BDDEE8 forKeyedSubscript:@"embeddingDistWeight_isWeekend"];
  [v3 setObject:&unk_1F4BDDEF8 forKeyedSubscript:@"embeddingDistWeight_timeOfDayCircularStd"];
  [v3 setObject:&unk_1F4BDDF08 forKeyedSubscript:@"embeddingDistWeight_latLongCircularStd"];
  v4 = [v3 copy];
  [(PCDistanceWeightingConfig *)v2 setWeights:v4];

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v5 setConfigType:{-[PCDistanceWeightingConfig configType](self, "configType")}];
  v6 = [(PCDistanceWeightingConfig *)self configName];
  v7 = [v6 copyWithZone:a3];
  [v5 setConfigName:v7];

  v8 = [(PCDistanceWeightingConfig *)self weights];
  v9 = [v8 copyWithZone:a3];
  [v5 setWeights:v9];

  [v5 setMinPoints:{-[PCDistanceWeightingConfig minPoints](self, "minPoints")}];
  [v5 setMinClusterSize:{-[PCDistanceWeightingConfig minClusterSize](self, "minClusterSize")}];
  [(PCDistanceWeightingConfig *)self minimumRatioThreshold];
  [v5 setMinimumRatioThreshold:?];
  [v5 setMinimumCountThreshold:{-[PCDistanceWeightingConfig minimumCountThreshold](self, "minimumCountThreshold")}];
  return v5;
}

@end