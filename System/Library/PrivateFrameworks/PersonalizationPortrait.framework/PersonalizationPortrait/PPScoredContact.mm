@interface PPScoredContact
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToScoredContact:(id)a3;
- (PPScoredContact)initWithCoder:(id)a3;
- (PPScoredContact)initWithContact:(id)a3 scoredPhoneNumbers:(id)a4 scoredEmailAddresses:(id)a5 scoredSocialProfiles:(id)a6 scoredPostalAddresses:(id)a7 score:(double)a8 flags:(unsigned __int8)a9;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PPScoredContact

- (BOOL)isEqualToScoredContact:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_24;
  }

  v5 = self->_contact;
  v6 = v5;
  if (v5 == v4[2])
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
  if (v8 == v4[4])
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
  if (v11 == v4[5])
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
  if (v14 == v4[6])
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
  if (v17 == v4[7])
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

  if (self->_score != *(v4 + 3))
  {
LABEL_24:
    v20 = 0;
    goto LABEL_25;
  }

  v20 = self->_flags == *(v4 + 8);
LABEL_25:

  return v20;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PPScoredContact *)self isEqualToScoredContact:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v6 = [(PPContact *)self->_contact copyWithZone:a3];
  v7 = [(NSArray *)self->_scoredPhoneNumbers copyWithZone:a3];
  v8 = [(NSArray *)self->_scoredEmailAddresses copyWithZone:a3];
  v9 = [(NSArray *)self->_scoredSocialProfiles copyWithZone:a3];
  v10 = [(NSArray *)self->_scoredPostalAddresses copyWithZone:a3];
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

- (void)encodeWithCoder:(id)a3
{
  contact = self->_contact;
  v5 = a3;
  [v5 encodeObject:contact forKey:@"con"];
  [v5 encodeObject:self->_scoredPhoneNumbers forKey:@"sph"];
  [v5 encodeObject:self->_scoredEmailAddresses forKey:@"sem"];
  [v5 encodeObject:self->_scoredSocialProfiles forKey:@"ssp"];
  [v5 encodeObject:self->_scoredPostalAddresses forKey:@"spo"];
  [v5 encodeDouble:@"sco" forKey:self->_score];
  [v5 encodeInt32:self->_flags forKey:@"fla"];
}

- (PPScoredContact)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc(MEMORY[0x1E695DFD8]);
  v7 = objc_opt_class();
  v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v5);
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"con"];
  v10 = [v4 decodeObjectOfClasses:v8 forKey:@"sph"];
  v11 = [v4 decodeObjectOfClasses:v8 forKey:@"sem"];
  v12 = [v4 decodeObjectOfClasses:v8 forKey:@"ssp"];
  v13 = [v4 decodeObjectOfClasses:v8 forKey:@"spo"];
  v14 = v13;
  v15 = 0;
  if (v9 && v10 && v11 && v12 && v13)
  {
    [v4 decodeDoubleForKey:@"sco"];
    self = -[PPScoredContact initWithContact:scoredPhoneNumbers:scoredEmailAddresses:scoredSocialProfiles:scoredPostalAddresses:score:flags:](self, "initWithContact:scoredPhoneNumbers:scoredEmailAddresses:scoredSocialProfiles:scoredPostalAddresses:score:flags:", v9, v10, v11, v12, v14, [v4 decodeInt32ForKey:@"fla"], v16);
    v15 = self;
  }

  return v15;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  score = self->_score;
  [v4 score];
  v7 = [PPUtils compareDouble:score withDouble:v6];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v9 = [(PPContact *)self->_contact familyName];
    v10 = [v4 contact];
    v11 = [v10 familyName];
    v8 = [v9 compare:v11];

    if (!v8)
    {
      v12 = [(PPContact *)self->_contact givenName];
      v13 = [v4 contact];
      v14 = [v13 givenName];
      v8 = [v12 compare:v14];

      if (!v8)
      {
        v15 = [(PPContact *)self->_contact middleName];
        v16 = [v4 contact];
        v17 = [v16 middleName];
        v8 = [v15 compare:v17];

        if (!v8)
        {
          v18 = [(PPContact *)self->_contact identifier];
          v19 = [v4 contact];
          v20 = [v19 identifier];
          v8 = [v18 compare:v20];
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

- (PPScoredContact)initWithContact:(id)a3 scoredPhoneNumbers:(id)a4 scoredEmailAddresses:(id)a5 scoredSocialProfiles:(id)a6 scoredPostalAddresses:(id)a7 score:(double)a8 flags:(unsigned __int8)a9
{
  v24 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v25.receiver = self;
  v25.super_class = PPScoredContact;
  v20 = [(PPScoredContact *)&v25 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_contact, a3);
    objc_storeStrong(&v21->_scoredPhoneNumbers, a4);
    objc_storeStrong(&v21->_scoredEmailAddresses, a5);
    objc_storeStrong(&v21->_scoredSocialProfiles, a6);
    objc_storeStrong(&v21->_scoredPostalAddresses, a7);
    v21->_score = a8;
    v21->_flags = a9;
  }

  return v21;
}

@end