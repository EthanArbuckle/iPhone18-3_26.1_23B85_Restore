@interface SFErrorFeedback
- (SFErrorFeedback)initWithCoder:(id)a3;
- (SFErrorFeedback)initWithError:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFErrorFeedback

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SFErrorFeedback;
  v4 = a3;
  [(SFFeedback *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_error forKey:{@"error", v5.receiver, v5.super_class}];
}

- (SFErrorFeedback)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SFErrorFeedback;
  v5 = [(SFFeedback *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v6;
  }

  return v5;
}

- (SFErrorFeedback)initWithError:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SFErrorFeedback;
  v6 = [(SFFeedback *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_error, a3);
  }

  return v7;
}

@end