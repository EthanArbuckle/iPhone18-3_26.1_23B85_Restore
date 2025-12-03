@interface WFDatePickerConfiguration
- (WFDatePickerConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFDatePickerConfiguration

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  datePickerMode = [(WFDatePickerConfiguration *)self datePickerMode];
  [coderCopy encodeObject:datePickerMode forKey:@"datePickerMode"];

  defaultDate = [(WFDatePickerConfiguration *)self defaultDate];
  [coderCopy encodeObject:defaultDate forKey:@"defaultDate"];

  maximumDate = [(WFDatePickerConfiguration *)self maximumDate];
  [coderCopy encodeObject:maximumDate forKey:@"maximumDate"];

  minimumDate = [(WFDatePickerConfiguration *)self minimumDate];
  [coderCopy encodeObject:minimumDate forKey:@"minimumDate"];
}

- (WFDatePickerConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = WFDatePickerConfiguration;
  v5 = [(WFDatePickerConfiguration *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"datePickerMode"];
    datePickerMode = v5->_datePickerMode;
    v5->_datePickerMode = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"defaultDate"];
    defaultDate = v5->_defaultDate;
    v5->_defaultDate = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maximumDate"];
    maximumDate = v5->_maximumDate;
    v5->_maximumDate = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"minimumDate"];
    minimumDate = v5->_minimumDate;
    v5->_minimumDate = v12;

    v14 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  datePickerMode = [(WFDatePickerConfiguration *)self datePickerMode];
  [v4 setDatePickerMode:datePickerMode];

  defaultDate = [(WFDatePickerConfiguration *)self defaultDate];
  [v4 setDefaultDate:defaultDate];

  maximumDate = [(WFDatePickerConfiguration *)self maximumDate];
  [v4 setMaximumDate:maximumDate];

  minimumDate = [(WFDatePickerConfiguration *)self minimumDate];
  [v4 setMinimumDate:minimumDate];

  return v4;
}

@end