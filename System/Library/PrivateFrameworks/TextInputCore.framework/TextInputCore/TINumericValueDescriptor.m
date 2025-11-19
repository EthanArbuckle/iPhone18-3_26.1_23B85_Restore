@interface TINumericValueDescriptor
+ (id)numericValueDescriptorWithMetricName:(id)a3 calculationExpression:(id)a4 calculationPrecondition:(id)a5 calculationDefaultValue:(id)a6 calculationDependencies:(id)a7 bucketThresholds:(id)a8 bucketValues:(id)a9;
- (TINumericValueDescriptor)initWithMetricName:(id)a3 calculationExpression:(id)a4 calculationPrecondition:(id)a5 calculationDefaultValue:(id)a6 calculationDependencies:(id)a7 bucketThresholds:(id)a8 bucketValues:(id)a9;
@end

@implementation TINumericValueDescriptor

- (TINumericValueDescriptor)initWithMetricName:(id)a3 calculationExpression:(id)a4 calculationPrecondition:(id)a5 calculationDefaultValue:(id)a6 calculationDependencies:(id)a7 bucketThresholds:(id)a8 bucketValues:(id)a9
{
  v24 = a4;
  v23 = a5;
  v22 = a6;
  v21 = a7;
  v16 = a8;
  v17 = a9;
  v25.receiver = self;
  v25.super_class = TINumericValueDescriptor;
  v18 = [(TIMetricDescriptor *)&v25 initWithMetricName:a3];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_calculationExpression, a4);
    objc_storeStrong(&v19->_calculationPrecondition, a5);
    objc_storeStrong(&v19->_calculationDefaultValue, a6);
    objc_storeStrong(&v19->_calculationDependencies, a7);
    objc_storeStrong(&v19->_bucketThresholds, a8);
    objc_storeStrong(&v19->_bucketValues, a9);
  }

  return v19;
}

+ (id)numericValueDescriptorWithMetricName:(id)a3 calculationExpression:(id)a4 calculationPrecondition:(id)a5 calculationDefaultValue:(id)a6 calculationDependencies:(id)a7 bucketThresholds:(id)a8 bucketValues:(id)a9
{
  v15 = a9;
  v16 = a8;
  v17 = a7;
  v18 = a6;
  v19 = a5;
  v20 = a4;
  v21 = a3;
  v22 = [[TINumericValueDescriptor alloc] initWithMetricName:v21 calculationExpression:v20 calculationPrecondition:v19 calculationDefaultValue:v18 calculationDependencies:v17 bucketThresholds:v16 bucketValues:v15];

  return v22;
}

@end