@interface SFCardViewDisappearFeedback
- (SFCardViewDisappearFeedback)initWithCard:(id)a3 event:(unint64_t)a4;
- (SFCardViewDisappearFeedback)initWithCoder:(id)a3;
- (SFCardViewDisappearFeedback)initWithEvent:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFCardViewDisappearFeedback

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SFCardViewDisappearFeedback;
  v4 = a3;
  [(SFFeedback *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_card forKey:{@"_card", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_cardDisappearEvent forKey:@"_cardDisappearEvent"];
}

- (SFCardViewDisappearFeedback)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SFCardViewDisappearFeedback;
  v5 = [(SFFeedback *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_card"];
    card = v5->_card;
    v5->_card = v6;

    v5->_cardDisappearEvent = [v4 decodeIntegerForKey:@"_cardDisappearEvent"];
  }

  return v5;
}

- (SFCardViewDisappearFeedback)initWithEvent:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = SFCardViewDisappearFeedback;
  result = [(SFFeedback *)&v5 init];
  if (result)
  {
    result->_cardDisappearEvent = a3;
  }

  return result;
}

- (SFCardViewDisappearFeedback)initWithCard:(id)a3 event:(unint64_t)a4
{
  v7 = a3;
  v8 = [(SFCardViewDisappearFeedback *)self initWithEvent:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_card, a3);
  }

  return v9;
}

@end