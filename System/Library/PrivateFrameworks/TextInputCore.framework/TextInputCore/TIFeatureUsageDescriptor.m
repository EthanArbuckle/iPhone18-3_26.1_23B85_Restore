@interface TIFeatureUsageDescriptor
+ (id)featureUsageDescriptorWithMetricName:(id)a3 discoveryCounter:(id)a4 discoveryThreshold:(int64_t)a5 configString:(id)a6 calculationExpression:(id)a7 calculationPrecondition:(id)a8 calculationDefaultValue:(id)a9 calculationDependencies:(id)a10 bucketThresholds:(id)a11;
- (TIFeatureUsageDescriptor)initWithMetricName:(id)a3 discoveryCounter:(id)a4 discoveryThreshold:(int64_t)a5 configString:(id)a6 calculationExpression:(id)a7 calculationPrecondition:(id)a8 calculationDefaultValue:(id)a9 calculationDependencies:(id)a10 bucketThresholds:(id)a11;
@end

@implementation TIFeatureUsageDescriptor

- (TIFeatureUsageDescriptor)initWithMetricName:(id)a3 discoveryCounter:(id)a4 discoveryThreshold:(int64_t)a5 configString:(id)a6 calculationExpression:(id)a7 calculationPrecondition:(id)a8 calculationDefaultValue:(id)a9 calculationDependencies:(id)a10 bucketThresholds:(id)a11
{
  v15 = a3;
  obj = a4;
  v49 = a4;
  v46 = a6;
  v48 = a6;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v19 = a10;
  v20 = a11;
  if (!v20)
  {
    v22 = MEMORY[0x277CBEA60];
    v43 = v15;
    LODWORD(v21) = 1008981770;
    v23 = [MEMORY[0x277CCABB0] numberWithFloat:v21];
    LODWORD(v24) = 1045220557;
    [MEMORY[0x277CCABB0] numberWithFloat:v24];
    v25 = v42 = v18;
    LODWORD(v26) = 1053609165;
    v27 = [MEMORY[0x277CCABB0] numberWithFloat:v26];
    LODWORD(v28) = 1058642330;
    v29 = [MEMORY[0x277CCABB0] numberWithFloat:v28];
    LODWORD(v30) = 1061997773;
    v31 = [MEMORY[0x277CCABB0] numberWithFloat:v30];
    LODWORD(v32) = 1065185444;
    v33 = [MEMORY[0x277CCABB0] numberWithFloat:v32];
    v34 = v22;
    v35 = v17;
    v36 = v16;
    v37 = v23;
    v20 = [v34 arrayWithObjects:{v23, v25, v27, v29, v31, v33, 0}];

    v15 = v43;
    v18 = v42;

    v16 = v36;
    v17 = v35;
  }

  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:{*MEMORY[0x277D6FD60], *MEMORY[0x277D6FD58], *MEMORY[0x277D6FD38], *MEMORY[0x277D6FD40], *MEMORY[0x277D6FD30], *MEMORY[0x277D6FD50], *MEMORY[0x277D6FD48], 0}];
  v50.receiver = self;
  v50.super_class = TIFeatureUsageDescriptor;
  v39 = [(TINumericValueDescriptor *)&v50 initWithMetricName:v15 calculationExpression:v16 calculationPrecondition:v17 calculationDefaultValue:v18 calculationDependencies:v19 bucketThresholds:v20 bucketValues:v38];
  v40 = v39;
  if (v39)
  {
    objc_storeStrong(&v39->_discoveryCounter, obj);
    v40->_discoveryThreshold = a5;
    objc_storeStrong(&v40->_configString, v46);
  }

  return v40;
}

+ (id)featureUsageDescriptorWithMetricName:(id)a3 discoveryCounter:(id)a4 discoveryThreshold:(int64_t)a5 configString:(id)a6 calculationExpression:(id)a7 calculationPrecondition:(id)a8 calculationDefaultValue:(id)a9 calculationDependencies:(id)a10 bucketThresholds:(id)a11
{
  v17 = a11;
  v18 = a10;
  v19 = a9;
  v20 = a8;
  v21 = a7;
  v22 = a6;
  v23 = a4;
  v24 = a3;
  v25 = [[TIFeatureUsageDescriptor alloc] initWithMetricName:v24 discoveryCounter:v23 discoveryThreshold:a5 configString:v22 calculationExpression:v21 calculationPrecondition:v20 calculationDefaultValue:v19 calculationDependencies:v18 bucketThresholds:v17];

  return v25;
}

@end