@interface SFSearchViewDisappearFeedback
- (SFSearchViewDisappearFeedback)initWithCoder:(id)a3;
- (SFSearchViewDisappearFeedback)initWithEvent:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFSearchViewDisappearFeedback

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SFSearchViewDisappearFeedback;
  v4 = a3;
  [(SFFeedback *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_viewDisappearEvent forKey:{@"viewDisappearEvent", v5.receiver, v5.super_class}];
}

- (SFSearchViewDisappearFeedback)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SFSearchViewDisappearFeedback;
  v5 = [(SFFeedback *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_viewDisappearEvent = [v4 decodeIntegerForKey:@"viewDisappearEvent"];
  }

  return v5;
}

- (SFSearchViewDisappearFeedback)initWithEvent:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = SFSearchViewDisappearFeedback;
  result = [(SFFeedback *)&v5 init];
  if (result)
  {
    result->_viewDisappearEvent = a3;
  }

  return result;
}

@end