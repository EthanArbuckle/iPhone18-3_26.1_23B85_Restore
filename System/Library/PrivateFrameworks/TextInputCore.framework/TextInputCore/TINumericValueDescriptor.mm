@interface TINumericValueDescriptor
+ (id)numericValueDescriptorWithMetricName:(id)name calculationExpression:(id)expression calculationPrecondition:(id)precondition calculationDefaultValue:(id)value calculationDependencies:(id)dependencies bucketThresholds:(id)thresholds bucketValues:(id)values;
- (TINumericValueDescriptor)initWithMetricName:(id)name calculationExpression:(id)expression calculationPrecondition:(id)precondition calculationDefaultValue:(id)value calculationDependencies:(id)dependencies bucketThresholds:(id)thresholds bucketValues:(id)values;
@end

@implementation TINumericValueDescriptor

- (TINumericValueDescriptor)initWithMetricName:(id)name calculationExpression:(id)expression calculationPrecondition:(id)precondition calculationDefaultValue:(id)value calculationDependencies:(id)dependencies bucketThresholds:(id)thresholds bucketValues:(id)values
{
  expressionCopy = expression;
  preconditionCopy = precondition;
  valueCopy = value;
  dependenciesCopy = dependencies;
  thresholdsCopy = thresholds;
  valuesCopy = values;
  v25.receiver = self;
  v25.super_class = TINumericValueDescriptor;
  v18 = [(TIMetricDescriptor *)&v25 initWithMetricName:name];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_calculationExpression, expression);
    objc_storeStrong(&v19->_calculationPrecondition, precondition);
    objc_storeStrong(&v19->_calculationDefaultValue, value);
    objc_storeStrong(&v19->_calculationDependencies, dependencies);
    objc_storeStrong(&v19->_bucketThresholds, thresholds);
    objc_storeStrong(&v19->_bucketValues, values);
  }

  return v19;
}

+ (id)numericValueDescriptorWithMetricName:(id)name calculationExpression:(id)expression calculationPrecondition:(id)precondition calculationDefaultValue:(id)value calculationDependencies:(id)dependencies bucketThresholds:(id)thresholds bucketValues:(id)values
{
  valuesCopy = values;
  thresholdsCopy = thresholds;
  dependenciesCopy = dependencies;
  valueCopy = value;
  preconditionCopy = precondition;
  expressionCopy = expression;
  nameCopy = name;
  v22 = [[TINumericValueDescriptor alloc] initWithMetricName:nameCopy calculationExpression:expressionCopy calculationPrecondition:preconditionCopy calculationDefaultValue:valueCopy calculationDependencies:dependenciesCopy bucketThresholds:thresholdsCopy bucketValues:valuesCopy];

  return v22;
}

@end