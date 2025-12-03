@interface TIFieldDescriptor
+ (id)fieldDescriptorWithFieldName:(id)name fieldDescription:(id)description metricName:(id)metricName metricType:(id)type inactiveValue:(id)value;
- (TIFieldDescriptor)initWithFieldName:(id)name fieldDescription:(id)description metricName:(id)metricName metricType:(id)type inactiveValue:(id)value;
@end

@implementation TIFieldDescriptor

- (TIFieldDescriptor)initWithFieldName:(id)name fieldDescription:(id)description metricName:(id)metricName metricType:(id)type inactiveValue:(id)value
{
  nameCopy = name;
  descriptionCopy = description;
  metricNameCopy = metricName;
  typeCopy = type;
  valueCopy = value;
  v21.receiver = self;
  v21.super_class = TIFieldDescriptor;
  v17 = [(TIFieldDescriptor *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_fieldName, name);
    objc_storeStrong(&v18->_fieldDescription, description);
    objc_storeStrong(&v18->_metricName, metricName);
    objc_storeStrong(&v18->_metricType, type);
    objc_storeStrong(&v18->_inactiveValue, value);
  }

  return v18;
}

+ (id)fieldDescriptorWithFieldName:(id)name fieldDescription:(id)description metricName:(id)metricName metricType:(id)type inactiveValue:(id)value
{
  valueCopy = value;
  typeCopy = type;
  metricNameCopy = metricName;
  descriptionCopy = description;
  nameCopy = name;
  v16 = [[TIFieldDescriptor alloc] initWithFieldName:nameCopy fieldDescription:descriptionCopy metricName:metricNameCopy metricType:typeCopy inactiveValue:valueCopy];

  return v16;
}

@end