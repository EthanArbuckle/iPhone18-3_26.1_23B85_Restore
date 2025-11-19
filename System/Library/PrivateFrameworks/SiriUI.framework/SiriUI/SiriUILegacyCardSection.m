@interface SiriUILegacyCardSection
- (SiriUILegacyCardSection)init;
- (SiriUILegacyCardSection)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SiriUILegacyCardSection

- (SiriUILegacyCardSection)init
{
  v7.receiver = self;
  v7.super_class = SiriUILegacyCardSection;
  v2 = [(SiriUILegacyCardSection *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAD78] UUID];
    v4 = [v3 UUIDString];
    cardSectionIdentifier = v2->_cardSectionIdentifier;
    v2->_cardSectionIdentifier = v4;
  }

  return v2;
}

- (SiriUILegacyCardSection)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SiriUILegacyCardSection;
  v5 = [(SiriUILegacyCardSection *)&v11 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_cardSectionIdentifier);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    cardSectionIdentifier = v5->_cardSectionIdentifier;
    v5->_cardSectionIdentifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  cardSectionIdentifier = self->_cardSectionIdentifier;
  v4 = a3;
  v5 = NSStringFromSelector(sel_cardSectionIdentifier);
  [v4 encodeObject:cardSectionIdentifier forKey:v5];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setCardSectionIdentifier:self->_cardSectionIdentifier];
  return v4;
}

@end