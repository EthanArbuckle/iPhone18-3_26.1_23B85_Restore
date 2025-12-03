@interface AWDWiFiUIJoinEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addSectionCounts:(id)counts;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasError:(BOOL)error;
- (void)setHasSecurityType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation AWDWiFiUIJoinEvent

- (void)dealloc
{
  [(AWDWiFiUIJoinEvent *)self setProcess:0];
  [(AWDWiFiUIJoinEvent *)self setSection:0];
  [(AWDWiFiUIJoinEvent *)self setSectionCounts:0];
  v3.receiver = self;
  v3.super_class = AWDWiFiUIJoinEvent;
  [(AWDWiFiUIJoinEvent *)&v3 dealloc];
}

- (void)setHasSecurityType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasError:(BOOL)error
{
  if (error)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addSectionCounts:(id)counts
{
  sectionCounts = self->_sectionCounts;
  if (!sectionCounts)
  {
    sectionCounts = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_sectionCounts = sectionCounts;
  }

  [(NSMutableArray *)sectionCounts addObject:counts];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiUIJoinEvent;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiUIJoinEvent description](&v3, sel_description), -[AWDWiFiUIJoinEvent dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x29EDCA608];
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  process = self->_process;
  if (process)
  {
    [dictionary setObject:process forKey:@"process"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_securityType), @"securityType"}];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_error), @"error"}];
  }

  section = self->_section;
  if (section)
  {
    [dictionary setObject:section forKey:@"section"];
  }

  if ([(NSMutableArray *)self->_sectionCounts count])
  {
    v7 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_sectionCounts, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    sectionCounts = self->_sectionCounts;
    v9 = [(NSMutableArray *)sectionCounts countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(sectionCounts);
          }

          [v7 addObject:{objc_msgSend(*(*(&v15 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v10 = [(NSMutableArray *)sectionCounts countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    [dictionary setObject:v7 forKey:@"sectionCounts"];
  }

  v13 = *MEMORY[0x29EDCA608];
  return dictionary;
}

- (void)writeTo:(id)to
{
  v20 = *MEMORY[0x29EDCA608];
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_process)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    securityType = self->_securityType;
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    error = self->_error;
    PBDataWriterWriteUint32Field();
  }

  if (self->_section)
  {
    PBDataWriterWriteStringField();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  sectionCounts = self->_sectionCounts;
  v9 = [(NSMutableArray *)sectionCounts countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(sectionCounts);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v10 = [(NSMutableArray *)sectionCounts countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 52) |= 1u;
  }

  if (self->_process)
  {
    [to setProcess:?];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(to + 12) = self->_securityType;
    *(to + 52) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(to + 4) = self->_error;
    *(to + 52) |= 2u;
  }

  if (self->_section)
  {
    [to setSection:?];
  }

  if ([(AWDWiFiUIJoinEvent *)self sectionCountsCount])
  {
    [to clearSectionCounts];
    sectionCountsCount = [(AWDWiFiUIJoinEvent *)self sectionCountsCount];
    if (sectionCountsCount)
    {
      v7 = sectionCountsCount;
      for (i = 0; i != v7; ++i)
      {
        [to addSectionCounts:{-[AWDWiFiUIJoinEvent sectionCountsAtIndex:](self, "sectionCountsAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v21 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 52) |= 1u;
  }

  *(v6 + 24) = [(NSString *)self->_process copyWithZone:zone];
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v6 + 48) = self->_securityType;
    *(v6 + 52) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v6 + 16) = self->_error;
    *(v6 + 52) |= 2u;
  }

  *(v6 + 32) = [(NSString *)self->_section copyWithZone:zone];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  sectionCounts = self->_sectionCounts;
  v9 = [(NSMutableArray *)sectionCounts countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(sectionCounts);
        }

        v13 = [*(*(&v16 + 1) + 8 * i) copyWithZone:zone];
        [v6 addSectionCounts:v13];
      }

      v10 = [(NSMutableArray *)sectionCounts countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x29EDCA608];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 52);
    if (has)
    {
      if ((*(equal + 52) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_24;
      }
    }

    else if (*(equal + 52))
    {
LABEL_24:
      LOBYTE(v5) = 0;
      return v5;
    }

    process = self->_process;
    if (process | *(equal + 3))
    {
      v5 = [(NSString *)process isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    v9 = *(equal + 52);
    if ((has & 4) != 0)
    {
      if ((*(equal + 52) & 4) == 0 || self->_securityType != *(equal + 12))
      {
        goto LABEL_24;
      }
    }

    else if ((*(equal + 52) & 4) != 0)
    {
      goto LABEL_24;
    }

    if ((has & 2) != 0)
    {
      if ((*(equal + 52) & 2) == 0 || self->_error != *(equal + 4))
      {
        goto LABEL_24;
      }
    }

    else if ((*(equal + 52) & 2) != 0)
    {
      goto LABEL_24;
    }

    section = self->_section;
    if (!(section | *(equal + 4)) || (v5 = [(NSString *)section isEqual:?]) != 0)
    {
      sectionCounts = self->_sectionCounts;
      if (sectionCounts | *(equal + 5))
      {

        LOBYTE(v5) = [(NSMutableArray *)sectionCounts isEqual:?];
      }

      else
      {
        LOBYTE(v5) = 1;
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_process hash];
  if ((*&self->_has & 4) != 0)
  {
    v5 = 2654435761 * self->_securityType;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  v5 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v6 = 2654435761 * self->_error;
LABEL_9:
  v7 = v4 ^ v3 ^ v5 ^ v6 ^ [(NSString *)self->_section hash];
  return v7 ^ [(NSMutableArray *)self->_sectionCounts hash];
}

- (void)mergeFrom:(id)from
{
  v17 = *MEMORY[0x29EDCA608];
  if (*(from + 52))
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
  }

  if (*(from + 3))
  {
    [(AWDWiFiUIJoinEvent *)self setProcess:?];
  }

  v5 = *(from + 52);
  if ((v5 & 4) != 0)
  {
    self->_securityType = *(from + 12);
    *&self->_has |= 4u;
    v5 = *(from + 52);
  }

  if ((v5 & 2) != 0)
  {
    self->_error = *(from + 4);
    *&self->_has |= 2u;
  }

  if (*(from + 4))
  {
    [(AWDWiFiUIJoinEvent *)self setSection:?];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = *(from + 5);
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

        [(AWDWiFiUIJoinEvent *)self addSectionCounts:*(*(&v12 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x29EDCA608];
}

@end