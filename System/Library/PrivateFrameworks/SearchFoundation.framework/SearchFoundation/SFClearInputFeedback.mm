@interface SFClearInputFeedback
- (SFClearInputFeedback)initWithCoder:(id)a3;
- (SFClearInputFeedback)initWithEvent:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFClearInputFeedback

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SFClearInputFeedback;
  v4 = a3;
  [(SFFeedback *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_triggerEvent forKey:{@"_triggerEvent", v5.receiver, v5.super_class}];
}

- (SFClearInputFeedback)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SFClearInputFeedback;
  v5 = [(SFFeedback *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_triggerEvent = [v4 decodeIntegerForKey:@"_triggerEvent"];
  }

  return v5;
}

- (SFClearInputFeedback)initWithEvent:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = SFClearInputFeedback;
  result = [(SFFeedback *)&v5 init];
  if (result)
  {
    result->_triggerEvent = a3;
  }

  return result;
}

@end