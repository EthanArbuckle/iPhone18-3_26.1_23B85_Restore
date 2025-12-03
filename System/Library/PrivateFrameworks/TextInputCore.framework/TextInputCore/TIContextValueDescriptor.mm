@interface TIContextValueDescriptor
+ (id)contextValueDescriptorWithMetricName:(id)name contextFieldName:(id)fieldName;
- (TIContextValueDescriptor)initWithMetricName:(id)name contextFieldName:(id)fieldName;
@end

@implementation TIContextValueDescriptor

- (TIContextValueDescriptor)initWithMetricName:(id)name contextFieldName:(id)fieldName
{
  fieldNameCopy = fieldName;
  v11.receiver = self;
  v11.super_class = TIContextValueDescriptor;
  v8 = [(TIMetricDescriptor *)&v11 initWithMetricName:name];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_contextFieldName, fieldName);
  }

  return v9;
}

+ (id)contextValueDescriptorWithMetricName:(id)name contextFieldName:(id)fieldName
{
  fieldNameCopy = fieldName;
  nameCopy = name;
  v7 = [[TIContextValueDescriptor alloc] initWithMetricName:nameCopy contextFieldName:fieldNameCopy];

  return v7;
}

@end