@interface TIFieldDescriptor
+ (id)fieldDescriptorWithFieldName:(id)a3 fieldDescription:(id)a4 metricName:(id)a5 metricType:(id)a6 inactiveValue:(id)a7;
- (TIFieldDescriptor)initWithFieldName:(id)a3 fieldDescription:(id)a4 metricName:(id)a5 metricType:(id)a6 inactiveValue:(id)a7;
@end

@implementation TIFieldDescriptor

- (TIFieldDescriptor)initWithFieldName:(id)a3 fieldDescription:(id)a4 metricName:(id)a5 metricType:(id)a6 inactiveValue:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = TIFieldDescriptor;
  v17 = [(TIFieldDescriptor *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_fieldName, a3);
    objc_storeStrong(&v18->_fieldDescription, a4);
    objc_storeStrong(&v18->_metricName, a5);
    objc_storeStrong(&v18->_metricType, a6);
    objc_storeStrong(&v18->_inactiveValue, a7);
  }

  return v18;
}

+ (id)fieldDescriptorWithFieldName:(id)a3 fieldDescription:(id)a4 metricName:(id)a5 metricType:(id)a6 inactiveValue:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [[TIFieldDescriptor alloc] initWithFieldName:v15 fieldDescription:v14 metricName:v13 metricType:v12 inactiveValue:v11];

  return v16;
}

@end