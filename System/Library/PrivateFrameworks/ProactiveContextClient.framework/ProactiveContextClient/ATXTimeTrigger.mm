@interface ATXTimeTrigger
- (ATXTimeTrigger)initWithCoder:(id)coder;
@end

@implementation ATXTimeTrigger

- (ATXTimeTrigger)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = ATXTimeTrigger;
  v5 = [(ATXTimeTrigger *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeComponents"];
    timeComponents = v5->_timeComponents;
    v5->_timeComponents = v6;

    v8 = v5;
  }

  return v5;
}

@end