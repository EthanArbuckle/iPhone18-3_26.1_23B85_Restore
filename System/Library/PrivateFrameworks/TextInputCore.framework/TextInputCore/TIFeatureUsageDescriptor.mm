@interface TIFeatureUsageDescriptor
+ (id)featureUsageDescriptorWithMetricName:(id)name discoveryCounter:(id)counter discoveryThreshold:(int64_t)threshold configString:(id)string calculationExpression:(id)expression calculationPrecondition:(id)precondition calculationDefaultValue:(id)value calculationDependencies:(id)self0 bucketThresholds:(id)self1;
- (TIFeatureUsageDescriptor)initWithMetricName:(id)name discoveryCounter:(id)counter discoveryThreshold:(int64_t)threshold configString:(id)string calculationExpression:(id)expression calculationPrecondition:(id)precondition calculationDefaultValue:(id)value calculationDependencies:(id)self0 bucketThresholds:(id)self1;
@end

@implementation TIFeatureUsageDescriptor

- (TIFeatureUsageDescriptor)initWithMetricName:(id)name discoveryCounter:(id)counter discoveryThreshold:(int64_t)threshold configString:(id)string calculationExpression:(id)expression calculationPrecondition:(id)precondition calculationDefaultValue:(id)value calculationDependencies:(id)self0 bucketThresholds:(id)self1
{
  nameCopy = name;
  obj = counter;
  counterCopy = counter;
  stringCopy = string;
  stringCopy2 = string;
  expressionCopy = expression;
  preconditionCopy = precondition;
  valueCopy = value;
  dependenciesCopy = dependencies;
  thresholdsCopy = thresholds;
  if (!thresholdsCopy)
  {
    v22 = MEMORY[0x277CBEA60];
    v43 = nameCopy;
    LODWORD(v21) = 1008981770;
    v23 = [MEMORY[0x277CCABB0] numberWithFloat:v21];
    LODWORD(v24) = 1045220557;
    [MEMORY[0x277CCABB0] numberWithFloat:v24];
    v25 = v42 = valueCopy;
    LODWORD(v26) = 1053609165;
    v27 = [MEMORY[0x277CCABB0] numberWithFloat:v26];
    LODWORD(v28) = 1058642330;
    v29 = [MEMORY[0x277CCABB0] numberWithFloat:v28];
    LODWORD(v30) = 1061997773;
    v31 = [MEMORY[0x277CCABB0] numberWithFloat:v30];
    LODWORD(v32) = 1065185444;
    v33 = [MEMORY[0x277CCABB0] numberWithFloat:v32];
    v34 = v22;
    v35 = preconditionCopy;
    v36 = expressionCopy;
    v37 = v23;
    thresholdsCopy = [v34 arrayWithObjects:{v23, v25, v27, v29, v31, v33, 0}];

    nameCopy = v43;
    valueCopy = v42;

    expressionCopy = v36;
    preconditionCopy = v35;
  }

  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:{*MEMORY[0x277D6FD60], *MEMORY[0x277D6FD58], *MEMORY[0x277D6FD38], *MEMORY[0x277D6FD40], *MEMORY[0x277D6FD30], *MEMORY[0x277D6FD50], *MEMORY[0x277D6FD48], 0}];
  v50.receiver = self;
  v50.super_class = TIFeatureUsageDescriptor;
  v39 = [(TINumericValueDescriptor *)&v50 initWithMetricName:nameCopy calculationExpression:expressionCopy calculationPrecondition:preconditionCopy calculationDefaultValue:valueCopy calculationDependencies:dependenciesCopy bucketThresholds:thresholdsCopy bucketValues:v38];
  v40 = v39;
  if (v39)
  {
    objc_storeStrong(&v39->_discoveryCounter, obj);
    v40->_discoveryThreshold = threshold;
    objc_storeStrong(&v40->_configString, stringCopy);
  }

  return v40;
}

+ (id)featureUsageDescriptorWithMetricName:(id)name discoveryCounter:(id)counter discoveryThreshold:(int64_t)threshold configString:(id)string calculationExpression:(id)expression calculationPrecondition:(id)precondition calculationDefaultValue:(id)value calculationDependencies:(id)self0 bucketThresholds:(id)self1
{
  thresholdsCopy = thresholds;
  dependenciesCopy = dependencies;
  valueCopy = value;
  preconditionCopy = precondition;
  expressionCopy = expression;
  stringCopy = string;
  counterCopy = counter;
  nameCopy = name;
  v25 = [[TIFeatureUsageDescriptor alloc] initWithMetricName:nameCopy discoveryCounter:counterCopy discoveryThreshold:threshold configString:stringCopy calculationExpression:expressionCopy calculationPrecondition:preconditionCopy calculationDefaultValue:valueCopy calculationDependencies:dependenciesCopy bucketThresholds:thresholdsCopy];

  return v25;
}

@end