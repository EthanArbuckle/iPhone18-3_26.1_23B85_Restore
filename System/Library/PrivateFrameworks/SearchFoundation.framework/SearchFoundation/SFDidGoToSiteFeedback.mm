@interface SFDidGoToSiteFeedback
- (SFDidGoToSiteFeedback)initWithCoder:(id)a3;
- (SFDidGoToSiteFeedback)initWithInput:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFDidGoToSiteFeedback

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SFDidGoToSiteFeedback;
  v4 = a3;
  [(SFFeedback *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_input forKey:{@"_input", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_triggerEvent forKey:@"_triggerEvent"];
}

- (SFDidGoToSiteFeedback)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SFDidGoToSiteFeedback;
  v5 = [(SFFeedback *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_input"];
    input = v5->_input;
    v5->_input = v6;

    v5->_triggerEvent = [v4 decodeIntegerForKey:@"_triggerEvent"];
  }

  return v5;
}

- (SFDidGoToSiteFeedback)initWithInput:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SFDidGoToSiteFeedback;
  v5 = [(SFFeedback *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    input = v5->_input;
    v5->_input = v6;
  }

  return v5;
}

@end