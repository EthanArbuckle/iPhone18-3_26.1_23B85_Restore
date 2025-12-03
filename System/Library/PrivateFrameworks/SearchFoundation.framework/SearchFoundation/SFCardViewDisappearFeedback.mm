@interface SFCardViewDisappearFeedback
- (SFCardViewDisappearFeedback)initWithCard:(id)card event:(unint64_t)event;
- (SFCardViewDisappearFeedback)initWithCoder:(id)coder;
- (SFCardViewDisappearFeedback)initWithEvent:(unint64_t)event;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFCardViewDisappearFeedback

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SFCardViewDisappearFeedback;
  coderCopy = coder;
  [(SFFeedback *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_card forKey:{@"_card", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_cardDisappearEvent forKey:@"_cardDisappearEvent"];
}

- (SFCardViewDisappearFeedback)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SFCardViewDisappearFeedback;
  v5 = [(SFFeedback *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_card"];
    card = v5->_card;
    v5->_card = v6;

    v5->_cardDisappearEvent = [coderCopy decodeIntegerForKey:@"_cardDisappearEvent"];
  }

  return v5;
}

- (SFCardViewDisappearFeedback)initWithEvent:(unint64_t)event
{
  v5.receiver = self;
  v5.super_class = SFCardViewDisappearFeedback;
  result = [(SFFeedback *)&v5 init];
  if (result)
  {
    result->_cardDisappearEvent = event;
  }

  return result;
}

- (SFCardViewDisappearFeedback)initWithCard:(id)card event:(unint64_t)event
{
  cardCopy = card;
  v8 = [(SFCardViewDisappearFeedback *)self initWithEvent:event];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_card, card);
  }

  return v9;
}

@end