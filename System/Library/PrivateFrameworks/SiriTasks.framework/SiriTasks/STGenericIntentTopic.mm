@interface STGenericIntentTopic
- (STGenericIntentTopic)initWithCoder:(id)a3;
@end

@implementation STGenericIntentTopic

- (STGenericIntentTopic)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = STGenericIntentTopic;
  v5 = [(STGenericIntentTopic *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = v5;
  }

  return v5;
}

@end