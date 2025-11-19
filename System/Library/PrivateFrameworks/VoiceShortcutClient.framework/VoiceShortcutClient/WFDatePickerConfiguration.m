@interface WFDatePickerConfiguration
- (WFDatePickerConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFDatePickerConfiguration

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFDatePickerConfiguration *)self datePickerMode];
  [v4 encodeObject:v5 forKey:@"datePickerMode"];

  v6 = [(WFDatePickerConfiguration *)self defaultDate];
  [v4 encodeObject:v6 forKey:@"defaultDate"];

  v7 = [(WFDatePickerConfiguration *)self maximumDate];
  [v4 encodeObject:v7 forKey:@"maximumDate"];

  v8 = [(WFDatePickerConfiguration *)self minimumDate];
  [v4 encodeObject:v8 forKey:@"minimumDate"];
}

- (WFDatePickerConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = WFDatePickerConfiguration;
  v5 = [(WFDatePickerConfiguration *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"datePickerMode"];
    datePickerMode = v5->_datePickerMode;
    v5->_datePickerMode = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"defaultDate"];
    defaultDate = v5->_defaultDate;
    v5->_defaultDate = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"maximumDate"];
    maximumDate = v5->_maximumDate;
    v5->_maximumDate = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"minimumDate"];
    minimumDate = v5->_minimumDate;
    v5->_minimumDate = v12;

    v14 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(WFDatePickerConfiguration *)self datePickerMode];
  [v4 setDatePickerMode:v5];

  v6 = [(WFDatePickerConfiguration *)self defaultDate];
  [v4 setDefaultDate:v6];

  v7 = [(WFDatePickerConfiguration *)self maximumDate];
  [v4 setMaximumDate:v7];

  v8 = [(WFDatePickerConfiguration *)self minimumDate];
  [v4 setMinimumDate:v8];

  return v4;
}

@end