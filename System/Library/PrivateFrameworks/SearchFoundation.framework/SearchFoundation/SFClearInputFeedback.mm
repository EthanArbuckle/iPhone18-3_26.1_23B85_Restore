@interface SFClearInputFeedback
- (SFClearInputFeedback)initWithCoder:(id)coder;
- (SFClearInputFeedback)initWithEvent:(unint64_t)event;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFClearInputFeedback

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SFClearInputFeedback;
  coderCopy = coder;
  [(SFFeedback *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_triggerEvent forKey:{@"_triggerEvent", v5.receiver, v5.super_class}];
}

- (SFClearInputFeedback)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = SFClearInputFeedback;
  v5 = [(SFFeedback *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_triggerEvent = [coderCopy decodeIntegerForKey:@"_triggerEvent"];
  }

  return v5;
}

- (SFClearInputFeedback)initWithEvent:(unint64_t)event
{
  v5.receiver = self;
  v5.super_class = SFClearInputFeedback;
  result = [(SFFeedback *)&v5 init];
  if (result)
  {
    result->_triggerEvent = event;
  }

  return result;
}

@end