@interface SFErrorFeedback
- (SFErrorFeedback)initWithCoder:(id)coder;
- (SFErrorFeedback)initWithError:(id)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFErrorFeedback

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SFErrorFeedback;
  coderCopy = coder;
  [(SFFeedback *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_error forKey:{@"error", v5.receiver, v5.super_class}];
}

- (SFErrorFeedback)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SFErrorFeedback;
  v5 = [(SFFeedback *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v6;
  }

  return v5;
}

- (SFErrorFeedback)initWithError:(id)error
{
  errorCopy = error;
  v9.receiver = self;
  v9.super_class = SFErrorFeedback;
  v6 = [(SFFeedback *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_error, error);
  }

  return v7;
}

@end