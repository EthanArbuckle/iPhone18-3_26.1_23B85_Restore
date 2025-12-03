@interface UIDictationVoiceCommandParameter
- (UIDictationVoiceCommandParameter)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation UIDictationVoiceCommandParameter

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  text = [(UIDictationVoiceCommandParameter *)self text];
  v6 = [text copy];
  [v4 setText:v6];

  return v4;
}

- (UIDictationVoiceCommandParameter)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = UIDictationVoiceCommandParameter;
  v5 = [(UIDictationVoiceCommandParameter *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_text"];
    text = v5->_text;
    v5->_text = v6;
  }

  return v5;
}

@end