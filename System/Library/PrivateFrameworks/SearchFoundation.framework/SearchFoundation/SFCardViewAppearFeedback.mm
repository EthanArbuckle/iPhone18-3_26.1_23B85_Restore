@interface SFCardViewAppearFeedback
- (SFCardViewAppearFeedback)initWithCard:(id)card;
- (SFCardViewAppearFeedback)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFCardViewAppearFeedback

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SFCardViewAppearFeedback;
  coderCopy = coder;
  [(SFFeedback *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_card forKey:{@"_card", v5.receiver, v5.super_class}];
  [coderCopy encodeInt32:self->_level forKey:@"_level"];
  [coderCopy encodeObject:self->_fbr forKey:@"_fbr"];
}

- (SFCardViewAppearFeedback)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = SFCardViewAppearFeedback;
  v5 = [(SFFeedback *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_card"];
    card = v5->_card;
    v5->_card = v6;

    v5->_level = [coderCopy decodeInt32ForKey:@"_level"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_fbr"];
    fbr = v5->_fbr;
    v5->_fbr = v8;
  }

  return v5;
}

- (SFCardViewAppearFeedback)initWithCard:(id)card
{
  cardCopy = card;
  v9.receiver = self;
  v9.super_class = SFCardViewAppearFeedback;
  v6 = [(SFFeedback *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_card, card);
    v7->super._queryId = [cardCopy queryId];
  }

  return v7;
}

@end