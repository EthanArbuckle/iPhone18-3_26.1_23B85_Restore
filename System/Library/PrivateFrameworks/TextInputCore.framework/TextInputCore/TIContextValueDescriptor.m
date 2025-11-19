@interface TIContextValueDescriptor
+ (id)contextValueDescriptorWithMetricName:(id)a3 contextFieldName:(id)a4;
- (TIContextValueDescriptor)initWithMetricName:(id)a3 contextFieldName:(id)a4;
@end

@implementation TIContextValueDescriptor

- (TIContextValueDescriptor)initWithMetricName:(id)a3 contextFieldName:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = TIContextValueDescriptor;
  v8 = [(TIMetricDescriptor *)&v11 initWithMetricName:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_contextFieldName, a4);
  }

  return v9;
}

+ (id)contextValueDescriptorWithMetricName:(id)a3 contextFieldName:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[TIContextValueDescriptor alloc] initWithMetricName:v6 contextFieldName:v5];

  return v7;
}

@end