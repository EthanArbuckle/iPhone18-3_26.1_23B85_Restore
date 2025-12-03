@interface SFDidGoToSearchFeedback
- (SFDidGoToSearchFeedback)initWithCoder:(id)coder;
- (SFDidGoToSearchFeedback)initWithInput:(id)input endpoint:(unint64_t)endpoint;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFDidGoToSearchFeedback

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SFDidGoToSearchFeedback;
  coderCopy = coder;
  [(SFFeedback *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_input forKey:{@"_input", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_endpoint forKey:@"endpoint"];
  [coderCopy encodeInteger:self->_triggerEvent forKey:@"_triggerEvent"];
}

- (SFDidGoToSearchFeedback)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SFDidGoToSearchFeedback;
  v5 = [(SFFeedback *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_input"];
    input = v5->_input;
    v5->_input = v6;

    v5->_endpoint = [coderCopy decodeIntegerForKey:@"endpoint"];
    v5->_triggerEvent = [coderCopy decodeIntegerForKey:@"_triggerEvent"];
  }

  return v5;
}

- (SFDidGoToSearchFeedback)initWithInput:(id)input endpoint:(unint64_t)endpoint
{
  inputCopy = input;
  v11.receiver = self;
  v11.super_class = SFDidGoToSearchFeedback;
  v7 = [(SFFeedback *)&v11 init];
  if (v7)
  {
    v8 = [inputCopy copy];
    input = v7->_input;
    v7->_input = v8;

    v7->_endpoint = endpoint;
  }

  return v7;
}

@end