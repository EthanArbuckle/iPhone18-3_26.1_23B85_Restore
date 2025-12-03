@interface TISettingValueDescriptor
+ (id)settingValueDescriptorWithMetricName:(id)name settingName:(id)settingName;
- (TISettingValueDescriptor)initWithMetricName:(id)name settingName:(id)settingName;
@end

@implementation TISettingValueDescriptor

- (TISettingValueDescriptor)initWithMetricName:(id)name settingName:(id)settingName
{
  settingNameCopy = settingName;
  v11.receiver = self;
  v11.super_class = TISettingValueDescriptor;
  v8 = [(TIMetricDescriptor *)&v11 initWithMetricName:name];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_settingName, settingName);
  }

  return v9;
}

+ (id)settingValueDescriptorWithMetricName:(id)name settingName:(id)settingName
{
  settingNameCopy = settingName;
  nameCopy = name;
  v7 = [[TISettingValueDescriptor alloc] initWithMetricName:nameCopy settingName:settingNameCopy];

  return v7;
}

@end