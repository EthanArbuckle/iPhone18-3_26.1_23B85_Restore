@interface SFDidGoToSearchFeedback
- (SFDidGoToSearchFeedback)initWithCoder:(id)a3;
- (SFDidGoToSearchFeedback)initWithInput:(id)a3 endpoint:(unint64_t)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFDidGoToSearchFeedback

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SFDidGoToSearchFeedback;
  v4 = a3;
  [(SFFeedback *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_input forKey:{@"_input", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_endpoint forKey:@"endpoint"];
  [v4 encodeInteger:self->_triggerEvent forKey:@"_triggerEvent"];
}

- (SFDidGoToSearchFeedback)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SFDidGoToSearchFeedback;
  v5 = [(SFFeedback *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_input"];
    input = v5->_input;
    v5->_input = v6;

    v5->_endpoint = [v4 decodeIntegerForKey:@"endpoint"];
    v5->_triggerEvent = [v4 decodeIntegerForKey:@"_triggerEvent"];
  }

  return v5;
}

- (SFDidGoToSearchFeedback)initWithInput:(id)a3 endpoint:(unint64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = SFDidGoToSearchFeedback;
  v7 = [(SFFeedback *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    input = v7->_input;
    v7->_input = v8;

    v7->_endpoint = a4;
  }

  return v7;
}

@end