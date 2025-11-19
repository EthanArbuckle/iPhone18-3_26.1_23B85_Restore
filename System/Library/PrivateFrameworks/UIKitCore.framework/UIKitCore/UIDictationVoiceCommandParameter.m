@interface UIDictationVoiceCommandParameter
- (UIDictationVoiceCommandParameter)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation UIDictationVoiceCommandParameter

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(UIDictationVoiceCommandParameter *)self text];
  v6 = [v5 copy];
  [v4 setText:v6];

  return v4;
}

- (UIDictationVoiceCommandParameter)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UIDictationVoiceCommandParameter;
  v5 = [(UIDictationVoiceCommandParameter *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_text"];
    text = v5->_text;
    v5->_text = v6;
  }

  return v5;
}

@end