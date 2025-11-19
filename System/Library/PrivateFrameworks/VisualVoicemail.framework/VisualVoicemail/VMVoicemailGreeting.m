@interface VMVoicemailGreeting
- (VMVoicemailGreeting)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VMVoicemailGreeting

- (VMVoicemailGreeting)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = VMVoicemailGreeting;
  v5 = [(VMVoicemailGreeting *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"duration"];
    v5->_duration = [v6 unsignedIntegerValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    url = v5->_url;
    v5->_url = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = [v9 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  duration = self->_duration;
  v6 = a3;
  v7 = [v4 numberWithDouble:duration];
  [v6 encodeObject:v7 forKey:@"duration"];

  [v6 encodeObject:self->_url forKey:@"url"];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_type];
  [v6 encodeObject:v8 forKey:@"type"];
}

@end