@interface PPPBContactNameRecord
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCityNames:(id)names;
- (void)addRelatedNames:(id)names;
- (void)addStreetNames:(id)names;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasChangeType:(BOOL)type;
- (void)setHasSource:(BOOL)source;
- (void)writeTo:(id)to;
@end

@implementation PPPBContactNameRecord

- (void)mergeFrom:(id)from
{
  v37 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 5))
  {
    [(PPPBContactNameRecord *)self setIdentifier:?];
  }

  v5 = *(fromCopy + 144);
  if (v5)
  {
    self->_score = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 144);
    if ((v5 & 4) == 0)
    {
LABEL_5:
      if ((v5 & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*(fromCopy + 144) & 4) == 0)
  {
    goto LABEL_5;
  }

  self->_source = *(fromCopy + 120);
  *&self->_has |= 4u;
  if ((*(fromCopy + 144) & 2) != 0)
  {
LABEL_6:
    self->_changeType = *(fromCopy + 16);
    *&self->_has |= 2u;
  }

LABEL_7:
  if (*(fromCopy + 16))
  {
    [(PPPBContactNameRecord *)self setSourceIdentifier:?];
  }

  if (*(fromCopy + 4))
  {
    [(PPPBContactNameRecord *)self setFirstName:?];
  }

  if (*(fromCopy + 11))
  {
    [(PPPBContactNameRecord *)self setPhoneticFirstName:?];
  }

  if (*(fromCopy + 8))
  {
    [(PPPBContactNameRecord *)self setMiddleName:?];
  }

  if (*(fromCopy + 13))
  {
    [(PPPBContactNameRecord *)self setPhoneticMiddleName:?];
  }

  if (*(fromCopy + 7))
  {
    [(PPPBContactNameRecord *)self setLastName:?];
  }

  if (*(fromCopy + 12))
  {
    [(PPPBContactNameRecord *)self setPhoneticLastName:?];
  }

  if (*(fromCopy + 10))
  {
    [(PPPBContactNameRecord *)self setOrganizationName:?];
  }

  if (*(fromCopy + 6))
  {
    [(PPPBContactNameRecord *)self setJobTitle:?];
  }

  if (*(fromCopy + 9))
  {
    [(PPPBContactNameRecord *)self setNickname:?];
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = *(fromCopy + 14);
  v7 = [v6 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(PPPBContactNameRecord *)self addRelatedNames:*(*(&v30 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v8);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = *(fromCopy + 17);
  v12 = [v11 countByEnumeratingWithState:&v26 objects:v35 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v27;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(PPPBContactNameRecord *)self addStreetNames:*(*(&v26 + 1) + 8 * j)];
      }

      v13 = [v11 countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v13);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v16 = *(fromCopy + 3);
  v17 = [v16 countByEnumeratingWithState:&v22 objects:v34 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v23;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(PPPBContactNameRecord *)self addCityNames:*(*(&v22 + 1) + 8 * k), v22];
      }

      v18 = [v16 countByEnumeratingWithState:&v22 objects:v34 count:16];
    }

    while (v18);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  if (*&self->_has)
  {
    score = self->_score;
    if (score < 0.0)
    {
      score = -score;
    }

    *v4.i64 = floor(score + 0.5);
    v8 = (score - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v6 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v5, v4).i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v6 += v8;
      }
    }

    else
    {
      v6 -= fabs(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    v10 = 2654435761 * self->_source;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_11;
    }

LABEL_13:
    v11 = 0;
    goto LABEL_14;
  }

  v10 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  v11 = 2654435761 * self->_changeType;
LABEL_14:
  v12 = v6 ^ v3 ^ v10 ^ v11 ^ [(NSString *)self->_sourceIdentifier hash];
  v13 = [(NSString *)self->_firstName hash];
  v14 = v13 ^ [(NSString *)self->_phoneticFirstName hash];
  v15 = v12 ^ v14 ^ [(NSString *)self->_middleName hash];
  v16 = [(NSString *)self->_phoneticMiddleName hash];
  v17 = v16 ^ [(NSString *)self->_lastName hash];
  v18 = v17 ^ [(NSString *)self->_phoneticLastName hash];
  v19 = v15 ^ v18 ^ [(NSString *)self->_organizationName hash];
  v20 = [(NSString *)self->_jobTitle hash];
  v21 = v20 ^ [(NSString *)self->_nickname hash];
  v22 = v21 ^ [(NSMutableArray *)self->_relatedNames hash];
  v23 = v22 ^ [(NSMutableArray *)self->_streetNames hash];
  return v19 ^ v23 ^ [(NSMutableArray *)self->_cityNames hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_45;
  }

  identifier = self->_identifier;
  if (identifier | *(equalCopy + 5))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_45;
    }
  }

  v6 = equalCopy[144];
  if (*&self->_has)
  {
    if ((equalCopy[144] & 1) == 0 || self->_score != *(equalCopy + 1))
    {
      goto LABEL_45;
    }
  }

  else if (equalCopy[144])
  {
LABEL_45:
    v20 = 0;
    goto LABEL_46;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((equalCopy[144] & 4) == 0 || self->_source != equalCopy[120])
    {
      goto LABEL_45;
    }
  }

  else if ((equalCopy[144] & 4) != 0)
  {
    goto LABEL_45;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((equalCopy[144] & 2) == 0 || self->_changeType != equalCopy[16])
    {
      goto LABEL_45;
    }
  }

  else if ((equalCopy[144] & 2) != 0)
  {
    goto LABEL_45;
  }

  sourceIdentifier = self->_sourceIdentifier;
  if (sourceIdentifier | *(equalCopy + 16) && ![(NSString *)sourceIdentifier isEqual:?])
  {
    goto LABEL_45;
  }

  firstName = self->_firstName;
  if (firstName | *(equalCopy + 4))
  {
    if (![(NSString *)firstName isEqual:?])
    {
      goto LABEL_45;
    }
  }

  phoneticFirstName = self->_phoneticFirstName;
  if (phoneticFirstName | *(equalCopy + 11))
  {
    if (![(NSString *)phoneticFirstName isEqual:?])
    {
      goto LABEL_45;
    }
  }

  middleName = self->_middleName;
  if (middleName | *(equalCopy + 8))
  {
    if (![(NSString *)middleName isEqual:?])
    {
      goto LABEL_45;
    }
  }

  phoneticMiddleName = self->_phoneticMiddleName;
  if (phoneticMiddleName | *(equalCopy + 13))
  {
    if (![(NSString *)phoneticMiddleName isEqual:?])
    {
      goto LABEL_45;
    }
  }

  lastName = self->_lastName;
  if (lastName | *(equalCopy + 7))
  {
    if (![(NSString *)lastName isEqual:?])
    {
      goto LABEL_45;
    }
  }

  phoneticLastName = self->_phoneticLastName;
  if (phoneticLastName | *(equalCopy + 12))
  {
    if (![(NSString *)phoneticLastName isEqual:?])
    {
      goto LABEL_45;
    }
  }

  organizationName = self->_organizationName;
  if (organizationName | *(equalCopy + 10))
  {
    if (![(NSString *)organizationName isEqual:?])
    {
      goto LABEL_45;
    }
  }

  jobTitle = self->_jobTitle;
  if (jobTitle | *(equalCopy + 6))
  {
    if (![(NSString *)jobTitle isEqual:?])
    {
      goto LABEL_45;
    }
  }

  nickname = self->_nickname;
  if (nickname | *(equalCopy + 9))
  {
    if (![(NSString *)nickname isEqual:?])
    {
      goto LABEL_45;
    }
  }

  relatedNames = self->_relatedNames;
  if (relatedNames | *(equalCopy + 14))
  {
    if (![(NSMutableArray *)relatedNames isEqual:?])
    {
      goto LABEL_45;
    }
  }

  streetNames = self->_streetNames;
  if (streetNames | *(equalCopy + 17))
  {
    if (![(NSMutableArray *)streetNames isEqual:?])
    {
      goto LABEL_45;
    }
  }

  cityNames = self->_cityNames;
  if (cityNames | *(equalCopy + 3))
  {
    v20 = [(NSMutableArray *)cityNames isEqual:?];
  }

  else
  {
    v20 = 1;
  }

LABEL_46:

  return v20;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v64 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_score;
    *(v5 + 144) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 120) = self->_source;
  *(v5 + 144) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    *(v5 + 16) = self->_changeType;
    *(v5 + 144) |= 2u;
  }

LABEL_5:
  v9 = [(NSString *)self->_sourceIdentifier copyWithZone:zone];
  v10 = *(v5 + 128);
  *(v5 + 128) = v9;

  v11 = [(NSString *)self->_firstName copyWithZone:zone];
  v12 = *(v5 + 32);
  *(v5 + 32) = v11;

  v13 = [(NSString *)self->_phoneticFirstName copyWithZone:zone];
  v14 = *(v5 + 88);
  *(v5 + 88) = v13;

  v15 = [(NSString *)self->_middleName copyWithZone:zone];
  v16 = *(v5 + 64);
  *(v5 + 64) = v15;

  v17 = [(NSString *)self->_phoneticMiddleName copyWithZone:zone];
  v18 = *(v5 + 104);
  *(v5 + 104) = v17;

  v19 = [(NSString *)self->_lastName copyWithZone:zone];
  v20 = *(v5 + 56);
  *(v5 + 56) = v19;

  v21 = [(NSString *)self->_phoneticLastName copyWithZone:zone];
  v22 = *(v5 + 96);
  *(v5 + 96) = v21;

  v23 = [(NSString *)self->_organizationName copyWithZone:zone];
  v24 = *(v5 + 80);
  *(v5 + 80) = v23;

  v25 = [(NSString *)self->_jobTitle copyWithZone:zone];
  v26 = *(v5 + 48);
  *(v5 + 48) = v25;

  v27 = [(NSString *)self->_nickname copyWithZone:zone];
  v28 = *(v5 + 72);
  *(v5 + 72) = v27;

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v29 = self->_relatedNames;
  v30 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v57 objects:v63 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v58;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v58 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = [*(*(&v57 + 1) + 8 * i) copyWithZone:zone];
        [v5 addRelatedNames:v34];
      }

      v31 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v57 objects:v63 count:16];
    }

    while (v31);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v35 = self->_streetNames;
  v36 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v53 objects:v62 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v54;
    do
    {
      for (j = 0; j != v37; ++j)
      {
        if (*v54 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = [*(*(&v53 + 1) + 8 * j) copyWithZone:zone];
        [v5 addStreetNames:v40];
      }

      v37 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v53 objects:v62 count:16];
    }

    while (v37);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v41 = self->_cityNames;
  v42 = [(NSMutableArray *)v41 countByEnumeratingWithState:&v49 objects:v61 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v50;
    do
    {
      for (k = 0; k != v43; ++k)
      {
        if (*v50 != v44)
        {
          objc_enumerationMutation(v41);
        }

        v46 = [*(*(&v49 + 1) + 8 * k) copyWithZone:{zone, v49}];
        [v5 addCityNames:v46];
      }

      v43 = [(NSMutableArray *)v41 countByEnumeratingWithState:&v49 objects:v61 count:16];
    }

    while (v43);
  }

  v47 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v18 = toCopy;
  if (self->_identifier)
  {
    [toCopy setIdentifier:?];
    toCopy = v18;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 1) = *&self->_score;
    *(toCopy + 144) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  *(toCopy + 120) = self->_source;
  *(toCopy + 144) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    *(toCopy + 16) = self->_changeType;
    *(toCopy + 144) |= 2u;
  }

LABEL_7:
  if (self->_sourceIdentifier)
  {
    [v18 setSourceIdentifier:?];
  }

  if (self->_firstName)
  {
    [v18 setFirstName:?];
  }

  if (self->_phoneticFirstName)
  {
    [v18 setPhoneticFirstName:?];
  }

  if (self->_middleName)
  {
    [v18 setMiddleName:?];
  }

  if (self->_phoneticMiddleName)
  {
    [v18 setPhoneticMiddleName:?];
  }

  if (self->_lastName)
  {
    [v18 setLastName:?];
  }

  if (self->_phoneticLastName)
  {
    [v18 setPhoneticLastName:?];
  }

  if (self->_organizationName)
  {
    [v18 setOrganizationName:?];
  }

  if (self->_jobTitle)
  {
    [v18 setJobTitle:?];
  }

  if (self->_nickname)
  {
    [v18 setNickname:?];
  }

  if ([(PPPBContactNameRecord *)self relatedNamesCount])
  {
    [v18 clearRelatedNames];
    relatedNamesCount = [(PPPBContactNameRecord *)self relatedNamesCount];
    if (relatedNamesCount)
    {
      v7 = relatedNamesCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(PPPBContactNameRecord *)self relatedNamesAtIndex:i];
        [v18 addRelatedNames:v9];
      }
    }
  }

  if ([(PPPBContactNameRecord *)self streetNamesCount])
  {
    [v18 clearStreetNames];
    streetNamesCount = [(PPPBContactNameRecord *)self streetNamesCount];
    if (streetNamesCount)
    {
      v11 = streetNamesCount;
      for (j = 0; j != v11; ++j)
      {
        v13 = [(PPPBContactNameRecord *)self streetNamesAtIndex:j];
        [v18 addStreetNames:v13];
      }
    }
  }

  if ([(PPPBContactNameRecord *)self cityNamesCount])
  {
    [v18 clearCityNames];
    cityNamesCount = [(PPPBContactNameRecord *)self cityNamesCount];
    if (cityNamesCount)
    {
      v15 = cityNamesCount;
      for (k = 0; k != v15; ++k)
      {
        v17 = [(PPPBContactNameRecord *)self cityNamesAtIndex:k];
        [v18 addCityNames:v17];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  v43 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    score = self->_score;
    PBDataWriterWriteDoubleField();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  source = self->_source;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    changeType = self->_changeType;
    PBDataWriterWriteInt32Field();
  }

LABEL_7:
  if (self->_sourceIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_firstName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_phoneticFirstName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_middleName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_phoneticMiddleName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_lastName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_phoneticLastName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_organizationName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_jobTitle)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_nickname)
  {
    PBDataWriterWriteStringField();
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v7 = self->_relatedNames;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v37;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v37 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v36 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v9);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v13 = self->_streetNames;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v33;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v32 + 1) + 8 * j);
        PBDataWriterWriteStringField();
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v15);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v19 = self->_cityNames;
  v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v29;
    do
    {
      for (k = 0; k != v21; ++k)
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v28 + 1) + 8 * k);
        PBDataWriterWriteStringField();
      }

      v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v28 objects:v40 count:16];
    }

    while (v21);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (id)dictionaryRepresentation
{
  v38 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  has = self->_has;
  if (has)
  {
    v30 = [MEMORY[0x277CCABB0] numberWithDouble:self->_score];
    [v4 setObject:v30 forKey:@"score"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:self->_source];
  stringValue = [v31 stringValue];
  [v4 setObject:stringValue forKey:@"source"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:self->_changeType];
    stringValue2 = [v7 stringValue];
    [v4 setObject:stringValue2 forKey:@"changeType"];
  }

LABEL_7:
  sourceIdentifier = self->_sourceIdentifier;
  if (sourceIdentifier)
  {
    [v4 setObject:sourceIdentifier forKey:@"sourceIdentifier"];
  }

  firstName = self->_firstName;
  if (firstName)
  {
    [v4 setObject:firstName forKey:@"firstName"];
  }

  phoneticFirstName = self->_phoneticFirstName;
  if (phoneticFirstName)
  {
    [v4 setObject:phoneticFirstName forKey:@"phoneticFirstName"];
  }

  middleName = self->_middleName;
  if (middleName)
  {
    [v4 setObject:middleName forKey:@"middleName"];
  }

  phoneticMiddleName = self->_phoneticMiddleName;
  if (phoneticMiddleName)
  {
    [v4 setObject:phoneticMiddleName forKey:@"phoneticMiddleName"];
  }

  lastName = self->_lastName;
  if (lastName)
  {
    [v4 setObject:lastName forKey:@"lastName"];
  }

  phoneticLastName = self->_phoneticLastName;
  if (phoneticLastName)
  {
    [v4 setObject:phoneticLastName forKey:@"phoneticLastName"];
  }

  organizationName = self->_organizationName;
  if (organizationName)
  {
    [v4 setObject:organizationName forKey:@"organizationName"];
  }

  jobTitle = self->_jobTitle;
  if (jobTitle)
  {
    [v4 setObject:jobTitle forKey:@"jobTitle"];
  }

  nickname = self->_nickname;
  if (nickname)
  {
    [v4 setObject:nickname forKey:@"nickname"];
  }

  if ([(NSMutableArray *)self->_relatedNames count])
  {
    v19 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_relatedNames, "count")}];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v20 = self->_relatedNames;
    v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v34;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v34 != v23)
          {
            objc_enumerationMutation(v20);
          }

          dictionaryRepresentation = [*(*(&v33 + 1) + 8 * i) dictionaryRepresentation];
          [v19 addObject:dictionaryRepresentation];
        }

        v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v22);
    }

    [v4 setObject:v19 forKey:@"relatedNames"];
  }

  streetNames = self->_streetNames;
  if (streetNames)
  {
    [v4 setObject:streetNames forKey:@"streetNames"];
  }

  cityNames = self->_cityNames;
  if (cityNames)
  {
    [v4 setObject:cityNames forKey:@"cityNames"];
  }

  v28 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PPPBContactNameRecord;
  v4 = [(PPPBContactNameRecord *)&v8 description];
  dictionaryRepresentation = [(PPPBContactNameRecord *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addCityNames:(id)names
{
  namesCopy = names;
  cityNames = self->_cityNames;
  v8 = namesCopy;
  if (!cityNames)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cityNames;
    self->_cityNames = v6;

    namesCopy = v8;
    cityNames = self->_cityNames;
  }

  [(NSMutableArray *)cityNames addObject:namesCopy];
}

- (void)addStreetNames:(id)names
{
  namesCopy = names;
  streetNames = self->_streetNames;
  v8 = namesCopy;
  if (!streetNames)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_streetNames;
    self->_streetNames = v6;

    namesCopy = v8;
    streetNames = self->_streetNames;
  }

  [(NSMutableArray *)streetNames addObject:namesCopy];
}

- (void)addRelatedNames:(id)names
{
  namesCopy = names;
  relatedNames = self->_relatedNames;
  v8 = namesCopy;
  if (!relatedNames)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_relatedNames;
    self->_relatedNames = v6;

    namesCopy = v8;
    relatedNames = self->_relatedNames;
  }

  [(NSMutableArray *)relatedNames addObject:namesCopy];
}

- (void)setHasChangeType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasSource:(BOOL)source
{
  if (source)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

@end