@interface SiriUILegacyCardSection
- (SiriUILegacyCardSection)init;
- (SiriUILegacyCardSection)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SiriUILegacyCardSection

- (SiriUILegacyCardSection)init
{
  v7.receiver = self;
  v7.super_class = SiriUILegacyCardSection;
  v2 = [(SiriUILegacyCardSection *)&v7 init];
  if (v2)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    cardSectionIdentifier = v2->_cardSectionIdentifier;
    v2->_cardSectionIdentifier = uUIDString;
  }

  return v2;
}

- (SiriUILegacyCardSection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = SiriUILegacyCardSection;
  v5 = [(SiriUILegacyCardSection *)&v11 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_cardSectionIdentifier);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    cardSectionIdentifier = v5->_cardSectionIdentifier;
    v5->_cardSectionIdentifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  cardSectionIdentifier = self->_cardSectionIdentifier;
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_cardSectionIdentifier);
  [coderCopy encodeObject:cardSectionIdentifier forKey:v5];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setCardSectionIdentifier:self->_cardSectionIdentifier];
  return v4;
}

@end