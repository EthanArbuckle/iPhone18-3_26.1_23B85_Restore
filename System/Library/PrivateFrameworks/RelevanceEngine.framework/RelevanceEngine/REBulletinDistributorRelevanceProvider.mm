@interface REBulletinDistributorRelevanceProvider
- (BOOL)isEqual:(id)equal;
- (REBulletinDistributorRelevanceProvider)initWithBulletinSectionIdentifier:(id)identifier;
- (REBulletinDistributorRelevanceProvider)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryEncoding;
- (unint64_t)_hash;
@end

@implementation REBulletinDistributorRelevanceProvider

- (REBulletinDistributorRelevanceProvider)initWithBulletinSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = REBulletinDistributorRelevanceProvider;
  v5 = [(RERelevanceProvider *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    bulletinSectionIdentifier = v5->_bulletinSectionIdentifier;
    v5->_bulletinSectionIdentifier = v6;
  }

  return v5;
}

- (REBulletinDistributorRelevanceProvider)initWithDictionary:(id)dictionary
{
  v4 = [dictionary objectForKeyedSubscript:@"bulletin_section"];
  v5 = v4;
  v6 = &stru_283B97458;
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v8 = [(REBulletinDistributorRelevanceProvider *)self initWithBulletinSectionIdentifier:v7];
  return v8;
}

- (id)dictionaryEncoding
{
  v7[1] = *MEMORY[0x277D85DE8];
  bulletinSectionIdentifier = self->_bulletinSectionIdentifier;
  v6 = @"bulletin_section";
  v7[0] = bulletinSectionIdentifier;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = REBulletinDistributorRelevanceProvider;
  v4 = [(RERelevanceProvider *)&v8 copyWithZone:zone];
  v5 = [(NSString *)self->_bulletinSectionIdentifier copy];
  v6 = v4[4];
  v4[4] = v5;

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = REBulletinDistributorRelevanceProvider;
    if ([(RERelevanceProvider *)&v7 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = [(NSString *)equalCopy->_bulletinSectionIdentifier isEqual:self->_bulletinSectionIdentifier];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (unint64_t)_hash
{
  v5.receiver = self;
  v5.super_class = REBulletinDistributorRelevanceProvider;
  _hash = [(RERelevanceProvider *)&v5 _hash];
  return [(NSString *)self->_bulletinSectionIdentifier hash]^ _hash;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = REBulletinDistributorRelevanceProvider;
  v4 = [(REBulletinDistributorRelevanceProvider *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ <identifier=%ld>", v4, self->_bulletinSectionIdentifier];

  return v5;
}

@end