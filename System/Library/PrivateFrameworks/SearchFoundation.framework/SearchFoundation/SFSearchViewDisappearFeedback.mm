@interface SFSearchViewDisappearFeedback
- (SFSearchViewDisappearFeedback)initWithCoder:(id)coder;
- (SFSearchViewDisappearFeedback)initWithEvent:(int64_t)event;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFSearchViewDisappearFeedback

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SFSearchViewDisappearFeedback;
  coderCopy = coder;
  [(SFFeedback *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_viewDisappearEvent forKey:{@"viewDisappearEvent", v5.receiver, v5.super_class}];
}

- (SFSearchViewDisappearFeedback)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = SFSearchViewDisappearFeedback;
  v5 = [(SFFeedback *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_viewDisappearEvent = [coderCopy decodeIntegerForKey:@"viewDisappearEvent"];
  }

  return v5;
}

- (SFSearchViewDisappearFeedback)initWithEvent:(int64_t)event
{
  v5.receiver = self;
  v5.super_class = SFSearchViewDisappearFeedback;
  result = [(SFFeedback *)&v5 init];
  if (result)
  {
    result->_viewDisappearEvent = event;
  }

  return result;
}

@end