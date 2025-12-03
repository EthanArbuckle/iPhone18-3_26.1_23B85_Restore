@interface SFResultFeedback
- (SFResultFeedback)initWithCoder:(id)coder;
- (SFResultFeedback)initWithResult:(id)result;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFResultFeedback

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = SFResultFeedback;
  v4 = [(SFFeedback *)&v9 description];
  result = [(SFResultFeedback *)self result];
  title = [result title];
  v7 = [v3 stringWithFormat:@"%@ - %@", v4, title];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SFResultFeedback;
  coderCopy = coder;
  [(SFFeedback *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_result forKey:{@"result", v5.receiver, v5.super_class}];
}

- (SFResultFeedback)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SFResultFeedback;
  v5 = [(SFFeedback *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"result"];
    v7 = v5->_result;
    v5->_result = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = SFResultFeedback;
  v4 = [(SFFeedback *)&v9 copyWithZone:zone];
  result = [(SFResultFeedback *)self result];
  v6 = [result copy];
  v7 = v4[3];
  v4[3] = v6;

  return v4;
}

- (SFResultFeedback)initWithResult:(id)result
{
  resultCopy = result;
  v9.receiver = self;
  v9.super_class = SFResultFeedback;
  v6 = [(SFFeedback *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_result, result);
    v7->super._queryId = [resultCopy queryId];
  }

  return v7;
}

@end