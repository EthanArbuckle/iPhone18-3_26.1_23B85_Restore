@interface PPScoredContact
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToScoredContact:(id)contact;
- (PPScoredContact)initWithCoder:(id)coder;
- (PPScoredContact)initWithContact:(id)contact scoredPhoneNumbers:(id)numbers scoredEmailAddresses:(id)addresses scoredSocialProfiles:(id)profiles scoredPostalAddresses:(id)postalAddresses score:(double)score flags:(unsigned __int8)flags;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPScoredContact

- (BOOL)isEqualToScoredContact:(id)contact
{
  contactCopy = contact;
  if (!contactCopy)
  {
    goto LABEL_24;
  }

  v5 = self->_contact;
  v6 = v5;
  if (v5 == contactCopy[2])
  {
  }

  else
  {
    v7 = [(PPContact *)v5 isEqual:?];

    if (!v7)
    {
      goto LABEL_24;
    }
  }

  v8 = self->_scoredPhoneNumbers;
  v9 = v8;
  if (v8 == contactCopy[4])
  {
  }

  else
  {
    v10 = [(NSArray *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  v11 = self->_scoredEmailAddresses;
  v12 = v11;
  if (v11 == contactCopy[5])
  {
  }

  else
  {
    v13 = [(NSArray *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  v14 = self->_scoredSocialProfiles;
  v15 = v14;
  if (v14 == contactCopy[6])
  {
  }

  else
  {
    v16 = [(NSArray *)v14 isEqual:?];

    if ((v16 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  v17 = self->_scoredPostalAddresses;
  v18 = v17;
  if (v17 == contactCopy[7])
  {
  }

  else
  {
    v19 = [(NSArray *)v17 isEqual:?];

    if ((v19 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  if (self->_score != *(contactCopy + 3))
  {
LABEL_24:
    v20 = 0;
    goto LABEL_25;
  }

  v20 = self->_flags == *(contactCopy + 8);
LABEL_25:

  return v20;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PPScoredContact *)self isEqualToScoredContact:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v6 = [(PPContact *)self->_contact copyWithZone:zone];
  v7 = [(NSArray *)self->_scoredPhoneNumbers copyWithZone:zone];
  v8 = [(NSArray *)self->_scoredEmailAddresses copyWithZone:zone];
  v9 = [(NSArray *)self->_scoredSocialProfiles copyWithZone:zone];
  v10 = [(NSArray *)self->_scoredPostalAddresses copyWithZone:zone];
  v11 = [v5 scoredContactWithContact:v6 scoredPhoneNumbers:v7 scoredEmailAddresses:v8 scoredSocialProfiles:v9 scoredPostalAddresses:v10 score:self->_flags flags:self->_score];

  return v11;
}

- (unint64_t)hash
{
  v3 = [(PPContact *)self->_contact hash];
  v4 = [(NSArray *)self->_scoredPhoneNumbers hash]- v3 + 32 * v3;
  v5 = [(NSArray *)self->_scoredEmailAddresses hash]- v4 + 32 * v4;
  v6 = [(NSArray *)self->_scoredSocialProfiles hash]- v5 + 32 * v5;
  v7 = [(NSArray *)self->_scoredPostalAddresses hash]- v6 + 32 * v6;
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_score];
  v9 = [v8 hash] - v7 + 32 * v7;

  return self->_flags - v9 + 32 * v9;
}

- (void)encodeWithCoder:(id)coder
{
  contact = self->_contact;
  coderCopy = coder;
  [coderCopy encodeObject:contact forKey:@"con"];
  [coderCopy encodeObject:self->_scoredPhoneNumbers forKey:@"sph"];
  [coderCopy encodeObject:self->_scoredEmailAddresses forKey:@"sem"];
  [coderCopy encodeObject:self->_scoredSocialProfiles forKey:@"ssp"];
  [coderCopy encodeObject:self->_scoredPostalAddresses forKey:@"spo"];
  [coderCopy encodeDouble:@"sco" forKey:self->_score];
  [coderCopy encodeInt32:self->_flags forKey:@"fla"];
}

- (PPScoredContact)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc(MEMORY[0x1E695DFD8]);
  v7 = objc_opt_class();
  v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v5);
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"con"];
  v10 = [coderCopy decodeObjectOfClasses:v8 forKey:@"sph"];
  v11 = [coderCopy decodeObjectOfClasses:v8 forKey:@"sem"];
  v12 = [coderCopy decodeObjectOfClasses:v8 forKey:@"ssp"];
  v13 = [coderCopy decodeObjectOfClasses:v8 forKey:@"spo"];
  v14 = v13;
  selfCopy = 0;
  if (v9 && v10 && v11 && v12 && v13)
  {
    [coderCopy decodeDoubleForKey:@"sco"];
    self = -[PPScoredContact initWithContact:scoredPhoneNumbers:scoredEmailAddresses:scoredSocialProfiles:scoredPostalAddresses:score:flags:](self, "initWithContact:scoredPhoneNumbers:scoredEmailAddresses:scoredSocialProfiles:scoredPostalAddresses:score:flags:", v9, v10, v11, v12, v14, [coderCopy decodeInt32ForKey:@"fla"], v16);
    selfCopy = self;
  }

  return selfCopy;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  score = self->_score;
  [compareCopy score];
  v7 = [PPUtils compareDouble:score withDouble:v6];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    familyName = [(PPContact *)self->_contact familyName];
    contact = [compareCopy contact];
    familyName2 = [contact familyName];
    v8 = [familyName compare:familyName2];

    if (!v8)
    {
      givenName = [(PPContact *)self->_contact givenName];
      contact2 = [compareCopy contact];
      givenName2 = [contact2 givenName];
      v8 = [givenName compare:givenName2];

      if (!v8)
      {
        middleName = [(PPContact *)self->_contact middleName];
        contact3 = [compareCopy contact];
        middleName2 = [contact3 middleName];
        v8 = [middleName compare:middleName2];

        if (!v8)
        {
          identifier = [(PPContact *)self->_contact identifier];
          contact4 = [compareCopy contact];
          identifier2 = [contact4 identifier];
          v8 = [identifier compare:identifier2];
        }
      }
    }
  }

  return v8;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<PPScoredContact c:%@ p:%@ e:%@ so:%@ ps:%@ s:%f f:%u>", self->_contact, self->_scoredPhoneNumbers, self->_scoredEmailAddresses, self->_scoredSocialProfiles, self->_scoredPostalAddresses, *&self->_score, self->_flags];

  return v2;
}

- (PPScoredContact)initWithContact:(id)contact scoredPhoneNumbers:(id)numbers scoredEmailAddresses:(id)addresses scoredSocialProfiles:(id)profiles scoredPostalAddresses:(id)postalAddresses score:(double)score flags:(unsigned __int8)flags
{
  contactCopy = contact;
  numbersCopy = numbers;
  addressesCopy = addresses;
  profilesCopy = profiles;
  postalAddressesCopy = postalAddresses;
  v25.receiver = self;
  v25.super_class = PPScoredContact;
  v20 = [(PPScoredContact *)&v25 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_contact, contact);
    objc_storeStrong(&v21->_scoredPhoneNumbers, numbers);
    objc_storeStrong(&v21->_scoredEmailAddresses, addresses);
    objc_storeStrong(&v21->_scoredSocialProfiles, profiles);
    objc_storeStrong(&v21->_scoredPostalAddresses, postalAddresses);
    v21->_score = score;
    v21->_flags = flags;
  }

  return v21;
}

@end