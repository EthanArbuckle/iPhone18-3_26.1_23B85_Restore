@interface SFEndSearchFeedback
- (SFEndSearchFeedback)initWithCoder:(id)a3;
- (SFEndSearchFeedback)initWithStartSearch:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFEndSearchFeedback

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SFEndSearchFeedback;
  v4 = a3;
  [(SFFeedback *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_uuid forKey:{@"uuid", v5.receiver, v5.super_class}];
  [v4 encodeBool:self->_isCanceled forKey:@"_isCanceled"];
  [v4 encodeInteger:self->_cancelSearchEvent forKey:@"_cancelSearchEvent"];
}

- (SFEndSearchFeedback)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SFEndSearchFeedback;
  v5 = [(SFFeedback *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v5->_isCanceled = [v4 decodeBoolForKey:@"_isCanceled"];
    v5->_cancelSearchEvent = [v4 decodeIntegerForKey:@"_cancelSearchEvent"];
  }

  return v5;
}

- (SFEndSearchFeedback)initWithStartSearch:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SFEndSearchFeedback;
  v5 = [(SFFeedback *)&v10 init];
  if (v5)
  {
    v6 = [v4 uuid];
    v7 = [v6 copy];
    uuid = v5->_uuid;
    v5->_uuid = v7;

    v5->super._queryId = [v4 queryId];
  }

  return v5;
}

@end