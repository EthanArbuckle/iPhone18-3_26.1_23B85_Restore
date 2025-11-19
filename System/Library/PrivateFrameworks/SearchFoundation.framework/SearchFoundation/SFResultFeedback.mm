@interface SFResultFeedback
- (SFResultFeedback)initWithCoder:(id)a3;
- (SFResultFeedback)initWithResult:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFResultFeedback

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = SFResultFeedback;
  v4 = [(SFFeedback *)&v9 description];
  v5 = [(SFResultFeedback *)self result];
  v6 = [v5 title];
  v7 = [v3 stringWithFormat:@"%@ - %@", v4, v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SFResultFeedback;
  v4 = a3;
  [(SFFeedback *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_result forKey:{@"result", v5.receiver, v5.super_class}];
}

- (SFResultFeedback)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SFResultFeedback;
  v5 = [(SFFeedback *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"result"];
    v7 = v5->_result;
    v5->_result = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = SFResultFeedback;
  v4 = [(SFFeedback *)&v9 copyWithZone:a3];
  v5 = [(SFResultFeedback *)self result];
  v6 = [v5 copy];
  v7 = v4[3];
  v4[3] = v6;

  return v4;
}

- (SFResultFeedback)initWithResult:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SFResultFeedback;
  v6 = [(SFFeedback *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_result, a3);
    v7->super._queryId = [v5 queryId];
  }

  return v7;
}

@end