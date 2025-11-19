@interface ATXTimeTrigger
- (ATXTimeTrigger)initWithCoder:(id)a3;
@end

@implementation ATXTimeTrigger

- (ATXTimeTrigger)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ATXTimeTrigger;
  v5 = [(ATXTimeTrigger *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timeComponents"];
    timeComponents = v5->_timeComponents;
    v5->_timeComponents = v6;

    v8 = v5;
  }

  return v5;
}

@end