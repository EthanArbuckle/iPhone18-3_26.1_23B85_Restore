@interface SFCardSectionFeedback
- (SFCardSectionFeedback)initWithCardSection:(id)section;
- (SFCardSectionFeedback)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFCardSectionFeedback

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SFCardSectionFeedback;
  coderCopy = coder;
  [(SFFeedback *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_cardSection forKey:{@"card_section", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_cardSectionId forKey:@"card_section_id"];
  [coderCopy encodeObject:self->_resultId forKey:@"result_id"];
}

- (SFCardSectionFeedback)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = SFCardSectionFeedback;
  v5 = [(SFFeedback *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"card_section"];
    cardSection = v5->_cardSection;
    v5->_cardSection = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"card_section_id"];
    cardSectionId = v5->_cardSectionId;
    v5->_cardSectionId = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"result_id"];
    resultId = v5->_resultId;
    v5->_resultId = v10;
  }

  return v5;
}

- (SFCardSectionFeedback)initWithCardSection:(id)section
{
  sectionCopy = section;
  v13.receiver = self;
  v13.super_class = SFCardSectionFeedback;
  v6 = [(SFFeedback *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cardSection, section);
    cardSectionId = [sectionCopy cardSectionId];
    cardSectionId = v7->_cardSectionId;
    v7->_cardSectionId = cardSectionId;

    resultIdentifier = [sectionCopy resultIdentifier];
    resultId = v7->_resultId;
    v7->_resultId = resultIdentifier;
  }

  return v7;
}

@end