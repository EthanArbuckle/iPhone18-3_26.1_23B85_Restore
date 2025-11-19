@interface SFCardSectionFeedback
- (SFCardSectionFeedback)initWithCardSection:(id)a3;
- (SFCardSectionFeedback)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFCardSectionFeedback

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SFCardSectionFeedback;
  v4 = a3;
  [(SFFeedback *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_cardSection forKey:{@"card_section", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_cardSectionId forKey:@"card_section_id"];
  [v4 encodeObject:self->_resultId forKey:@"result_id"];
}

- (SFCardSectionFeedback)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SFCardSectionFeedback;
  v5 = [(SFFeedback *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"card_section"];
    cardSection = v5->_cardSection;
    v5->_cardSection = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"card_section_id"];
    cardSectionId = v5->_cardSectionId;
    v5->_cardSectionId = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"result_id"];
    resultId = v5->_resultId;
    v5->_resultId = v10;
  }

  return v5;
}

- (SFCardSectionFeedback)initWithCardSection:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = SFCardSectionFeedback;
  v6 = [(SFFeedback *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cardSection, a3);
    v8 = [v5 cardSectionId];
    cardSectionId = v7->_cardSectionId;
    v7->_cardSectionId = v8;

    v10 = [v5 resultIdentifier];
    resultId = v7->_resultId;
    v7->_resultId = v10;
  }

  return v7;
}

@end