@interface VMVoicemailGreeting
- (VMVoicemailGreeting)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VMVoicemailGreeting

- (VMVoicemailGreeting)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = VMVoicemailGreeting;
  v5 = [(VMVoicemailGreeting *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"duration"];
    v5->_duration = [v6 unsignedIntegerValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    url = v5->_url;
    v5->_url = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = [v9 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  duration = self->_duration;
  coderCopy = coder;
  v7 = [v4 numberWithDouble:duration];
  [coderCopy encodeObject:v7 forKey:@"duration"];

  [coderCopy encodeObject:self->_url forKey:@"url"];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_type];
  [coderCopy encodeObject:v8 forKey:@"type"];
}

@end