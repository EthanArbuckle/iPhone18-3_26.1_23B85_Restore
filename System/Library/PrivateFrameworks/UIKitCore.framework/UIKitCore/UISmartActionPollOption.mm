@interface UISmartActionPollOption
- (UISmartActionPollOption)initWithOption:(id)option;
@end

@implementation UISmartActionPollOption

- (UISmartActionPollOption)initWithOption:(id)option
{
  optionCopy = option;
  v9.receiver = self;
  v9.super_class = UISmartActionPollOption;
  v5 = [(UISmartActionPollOption *)&v9 init];
  if (v5)
  {
    v6 = [optionCopy copy];
    option = v5->_option;
    v5->_option = v6;
  }

  return v5;
}

@end