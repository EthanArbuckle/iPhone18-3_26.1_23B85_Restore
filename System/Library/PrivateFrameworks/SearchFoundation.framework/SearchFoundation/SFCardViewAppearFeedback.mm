@interface SFCardViewAppearFeedback
- (SFCardViewAppearFeedback)initWithCard:(id)a3;
- (SFCardViewAppearFeedback)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFCardViewAppearFeedback

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SFCardViewAppearFeedback;
  v4 = a3;
  [(SFFeedback *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_card forKey:{@"_card", v5.receiver, v5.super_class}];
  [v4 encodeInt32:self->_level forKey:@"_level"];
  [v4 encodeObject:self->_fbr forKey:@"_fbr"];
}

- (SFCardViewAppearFeedback)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SFCardViewAppearFeedback;
  v5 = [(SFFeedback *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_card"];
    card = v5->_card;
    v5->_card = v6;

    v5->_level = [v4 decodeInt32ForKey:@"_level"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_fbr"];
    fbr = v5->_fbr;
    v5->_fbr = v8;
  }

  return v5;
}

- (SFCardViewAppearFeedback)initWithCard:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SFCardViewAppearFeedback;
  v6 = [(SFFeedback *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_card, a3);
    v7->super._queryId = [v5 queryId];
  }

  return v7;
}

@end