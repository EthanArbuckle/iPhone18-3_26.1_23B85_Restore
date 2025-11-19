@interface TISettingValueDescriptor
+ (id)settingValueDescriptorWithMetricName:(id)a3 settingName:(id)a4;
- (TISettingValueDescriptor)initWithMetricName:(id)a3 settingName:(id)a4;
@end

@implementation TISettingValueDescriptor

- (TISettingValueDescriptor)initWithMetricName:(id)a3 settingName:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = TISettingValueDescriptor;
  v8 = [(TIMetricDescriptor *)&v11 initWithMetricName:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_settingName, a4);
  }

  return v9;
}

+ (id)settingValueDescriptorWithMetricName:(id)a3 settingName:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[TISettingValueDescriptor alloc] initWithMetricName:v6 settingName:v5];

  return v7;
}

@end