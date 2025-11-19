@interface PPM2FeedbackPortraitRegistered
+ (id)options;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDomain:(id)a3;
- (int)StringAsFeedbackDomainStatus:(id)a3;
- (int)StringAsType:(id)a3;
- (int)domain;
- (int)feedbackDomainStatus;
- (int)type;
- (unint64_t)hash;
- (void)addRecords:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasFeedbackDomainStatus:(BOOL)a3;
- (void)setHasType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PPM2FeedbackPortraitRegistered

- (void)mergeFrom:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*(v4 + 2))
  {
    [(PPM2FeedbackPortraitRegistered *)self setClientId:?];
  }

  v5 = *(v4 + 52);
  if (v5)
  {
    self->_domain = *(v4 + 6);
    *&self->_has |= 1u;
    v5 = *(v4 + 52);
  }

  if ((v5 & 4) != 0)
  {
    self->_type = *(v4 + 12);
    *&self->_has |= 4u;
  }

  if (*(v4 + 4))
  {
    [(PPM2FeedbackPortraitRegistered *)self setMappingId:?];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = *(v4 + 5);
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(PPM2FeedbackPortraitRegistered *)self addRecords:*(*(&v12 + 1) + 8 * i), v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  if (*(v4 + 1))
  {
    [(PPM2FeedbackPortraitRegistered *)self setActiveTreatments:?];
  }

  if ((*(v4 + 52) & 2) != 0)
  {
    self->_feedbackDomainStatus = *(v4 + 7);
    *&self->_has |= 2u;
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_clientId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_domain;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_type;
      goto LABEL_6;
    }
  }

  v5 = 0;
LABEL_6:
  v6 = [(NSString *)self->_mappingId hash];
  v7 = [(NSMutableArray *)self->_records hash];
  v8 = [(NSString *)self->_activeTreatments hash];
  if ((*&self->_has & 2) != 0)
  {
    v9 = 2654435761 * self->_feedbackDomainStatus;
  }

  else
  {
    v9 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  clientId = self->_clientId;
  if (clientId | *(v4 + 2))
  {
    if (![(NSString *)clientId isEqual:?])
    {
      goto LABEL_24;
    }
  }

  v6 = *(v4 + 52);
  if (*&self->_has)
  {
    if ((*(v4 + 52) & 1) == 0 || self->_domain != *(v4 + 6))
    {
      goto LABEL_24;
    }
  }

  else if (*(v4 + 52))
  {
LABEL_24:
    v10 = 0;
    goto LABEL_25;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 52) & 4) == 0 || self->_type != *(v4 + 12))
    {
      goto LABEL_24;
    }
  }

  else if ((*(v4 + 52) & 4) != 0)
  {
    goto LABEL_24;
  }

  mappingId = self->_mappingId;
  if (mappingId | *(v4 + 4) && ![(NSString *)mappingId isEqual:?])
  {
    goto LABEL_24;
  }

  records = self->_records;
  if (records | *(v4 + 5))
  {
    if (![(NSMutableArray *)records isEqual:?])
    {
      goto LABEL_24;
    }
  }

  activeTreatments = self->_activeTreatments;
  if (activeTreatments | *(v4 + 1))
  {
    if (![(NSString *)activeTreatments isEqual:?])
    {
      goto LABEL_24;
    }
  }

  v10 = (*(v4 + 52) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 52) & 2) == 0 || self->_feedbackDomainStatus != *(v4 + 7))
    {
      goto LABEL_24;
    }

    v10 = 1;
  }

LABEL_25:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_clientId copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  has = self->_has;
  if (has)
  {
    *(v5 + 24) = self->_domain;
    *(v5 + 52) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v5 + 48) = self->_type;
    *(v5 + 52) |= 4u;
  }

  v9 = [(NSString *)self->_mappingId copyWithZone:a3];
  v10 = *(v5 + 32);
  *(v5 + 32) = v9;

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = self->_records;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v21 + 1) + 8 * i) copyWithZone:{a3, v21}];
        [v5 addRecords:v16];
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  v17 = [(NSString *)self->_activeTreatments copyWithZone:a3];
  v18 = *(v5 + 8);
  *(v5 + 8) = v17;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 28) = self->_feedbackDomainStatus;
    *(v5 + 52) |= 2u;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (self->_clientId)
  {
    [v4 setClientId:?];
    v4 = v10;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 6) = self->_domain;
    *(v4 + 52) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v4 + 12) = self->_type;
    *(v4 + 52) |= 4u;
  }

  if (self->_mappingId)
  {
    [v10 setMappingId:?];
  }

  if ([(PPM2FeedbackPortraitRegistered *)self recordsCount])
  {
    [v10 clearRecords];
    v6 = [(PPM2FeedbackPortraitRegistered *)self recordsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(PPM2FeedbackPortraitRegistered *)self recordsAtIndex:i];
        [v10 addRecords:v9];
      }
    }
  }

  if (self->_activeTreatments)
  {
    [v10 setActiveTreatments:?];
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v10 + 7) = self->_feedbackDomainStatus;
    *(v10 + 52) |= 2u;
  }
}

- (void)writeTo:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_clientId)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    domain = self->_domain;
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
  }

  if (self->_mappingId)
  {
    PBDataWriterWriteStringField();
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_records;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  if (self->_activeTreatments)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    feedbackDomainStatus = self->_feedbackDomainStatus;
    PBDataWriterWriteInt32Field();
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)dictionaryRepresentation
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  clientId = self->_clientId;
  if (clientId)
  {
    [v3 setObject:clientId forKey:@"clientId"];
  }

  has = self->_has;
  if (has)
  {
    domain = self->_domain;
    if (domain >= 8)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_domain];
    }

    else
    {
      v8 = off_278971818[domain];
    }

    [v4 setObject:v8 forKey:@"domain"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    type = self->_type;
    if (type >= 6)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_type];
    }

    else
    {
      v10 = off_278971858[type];
    }

    [v4 setObject:v10 forKey:@"type"];
  }

  mappingId = self->_mappingId;
  if (mappingId)
  {
    [v4 setObject:mappingId forKey:@"mappingId"];
  }

  if ([(NSMutableArray *)self->_records count])
  {
    v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_records, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v13 = self->_records;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v25;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v24 + 1) + 8 * i) dictionaryRepresentation];
          [v12 addObject:v18];
        }

        v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v15);
    }

    [v4 setObject:v12 forKey:@"records"];
  }

  activeTreatments = self->_activeTreatments;
  if (activeTreatments)
  {
    [v4 setObject:activeTreatments forKey:@"activeTreatments"];
  }

  if ((*&self->_has & 2) != 0)
  {
    feedbackDomainStatus = self->_feedbackDomainStatus;
    if (feedbackDomainStatus >= 6)
    {
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_feedbackDomainStatus];
    }

    else
    {
      v21 = off_278971888[feedbackDomainStatus];
    }

    [v4 setObject:v21 forKey:@"feedbackDomainStatus"];
  }

  v22 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PPM2FeedbackPortraitRegistered;
  v4 = [(PPM2FeedbackPortraitRegistered *)&v8 description];
  v5 = [(PPM2FeedbackPortraitRegistered *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (int)StringAsFeedbackDomainStatus:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NotInDomain"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"InDomainOnly"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"InUserPortrait"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"MappedIdentifierNotInDomain"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"MappedIdentifierInDomainOnly"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"MappedIdentifierInUserPortrait"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasFeedbackDomainStatus:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)feedbackDomainStatus
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_feedbackDomainStatus;
  }

  else
  {
    return 0;
  }
}

- (void)addRecords:(id)a3
{
  v4 = a3;
  records = self->_records;
  v8 = v4;
  if (!records)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_records;
    self->_records = v6;

    v4 = v8;
    records = self->_records;
  }

  [(NSMutableArray *)records addObject:v4];
}

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Invalid"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"EngagedExplicit"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"EngagedImplicit"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"RejectedExplicit"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"RejectedImplicit"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"Offered"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasType:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)type
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsDomain:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Topics"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"NamedEntities"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Locations"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Events"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"ContactsDomain"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"Connections"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"QuickTypeBroker"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"UniversalSearchSpotlightTopics"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)domain
{
  if (*&self->_has)
  {
    return self->_domain;
  }

  else
  {
    return 0;
  }
}

+ (id)options
{
  if (options_once != -1)
  {
    dispatch_once(&options_once, &__block_literal_global_621);
  }

  v3 = options_sOptions;

  return v3;
}

void __41__PPM2FeedbackPortraitRegistered_options__block_invoke()
{
  v0 = options_sOptions;
  options_sOptions = &unk_284785E38;
}

@end