@interface UISmartActionPollOption
- (UISmartActionPollOption)initWithOption:(id)a3;
@end

@implementation UISmartActionPollOption

- (UISmartActionPollOption)initWithOption:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UISmartActionPollOption;
  v5 = [(UISmartActionPollOption *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    option = v5->_option;
    v5->_option = v6;
  }

  return v5;
}

@end