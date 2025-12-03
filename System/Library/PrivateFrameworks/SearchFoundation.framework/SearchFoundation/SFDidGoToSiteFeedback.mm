@interface SFDidGoToSiteFeedback
- (SFDidGoToSiteFeedback)initWithCoder:(id)coder;
- (SFDidGoToSiteFeedback)initWithInput:(id)input;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFDidGoToSiteFeedback

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SFDidGoToSiteFeedback;
  coderCopy = coder;
  [(SFFeedback *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_input forKey:{@"_input", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_triggerEvent forKey:@"_triggerEvent"];
}

- (SFDidGoToSiteFeedback)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SFDidGoToSiteFeedback;
  v5 = [(SFFeedback *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_input"];
    input = v5->_input;
    v5->_input = v6;

    v5->_triggerEvent = [coderCopy decodeIntegerForKey:@"_triggerEvent"];
  }

  return v5;
}

- (SFDidGoToSiteFeedback)initWithInput:(id)input
{
  inputCopy = input;
  v9.receiver = self;
  v9.super_class = SFDidGoToSiteFeedback;
  v5 = [(SFFeedback *)&v9 init];
  if (v5)
  {
    v6 = [inputCopy copy];
    input = v5->_input;
    v5->_input = v6;
  }

  return v5;
}

@end