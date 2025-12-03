@interface AWDSpringBoardBreadcrumb
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasWasTapped:(BOOL)tapped;
- (void)writeTo:(id)to;
@end

@implementation AWDSpringBoardBreadcrumb

- (void)dealloc
{
  [(AWDSpringBoardBreadcrumb *)self setType:0];
  [(AWDSpringBoardBreadcrumb *)self setEntityID:0];
  v3.receiver = self;
  v3.super_class = AWDSpringBoardBreadcrumb;
  [(AWDSpringBoardBreadcrumb *)&v3 dealloc];
}

- (void)setHasWasTapped:(BOOL)tapped
{
  if (tapped)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDSpringBoardBreadcrumb;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDSpringBoardBreadcrumb description](&v3, sel_description), -[AWDSpringBoardBreadcrumb dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_wasTapped), @"wasTapped"}];
  }

  type = self->_type;
  if (type)
  {
    [dictionary setObject:type forKey:@"type"];
  }

  entityID = self->_entityID;
  if (entityID)
  {
    [dictionary setObject:entityID forKey:@"entityID"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    wasTapped = self->_wasTapped;
    PBDataWriterWriteBOOLField();
  }

  if (self->_type)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_entityID)
  {

    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if (has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 36) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(to + 32) = self->_wasTapped;
    *(to + 36) |= 2u;
  }

  if (self->_type)
  {
    [to setType:?];
  }

  if (self->_entityID)
  {

    [to setEntityID:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 36) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 32) = self->_wasTapped;
    *(v5 + 36) |= 2u;
  }

  *(v6 + 24) = [(NSString *)self->_type copyWithZone:zone];
  *(v6 + 16) = [(NSString *)self->_entityID copyWithZone:zone];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (!v5)
  {
    return v5;
  }

  v6 = *(equal + 36);
  if (*&self->_has)
  {
    if ((*(equal + 36) & 1) == 0 || self->_timestamp != *(equal + 1))
    {
      goto LABEL_14;
    }
  }

  else if (*(equal + 36))
  {
    goto LABEL_14;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equal + 36) & 2) != 0)
    {
      v9 = *(equal + 32);
      if (self->_wasTapped)
      {
        if ((*(equal + 32) & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else if (*(equal + 32))
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }

LABEL_14:
    LOBYTE(v5) = 0;
    return v5;
  }

  if ((*(equal + 36) & 2) != 0)
  {
    goto LABEL_14;
  }

LABEL_9:
  type = self->_type;
  if (!(type | *(equal + 3)) || (v5 = [(NSString *)type isEqual:?]) != 0)
  {
    entityID = self->_entityID;
    if (entityID | *(equal + 2))
    {

      LOBYTE(v5) = [(NSString *)entityID isEqual:?];
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v3 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = 2654435761 * self->_wasTapped;
LABEL_6:
  v5 = v4 ^ v3 ^ [(NSString *)self->_type hash];
  return v5 ^ [(NSString *)self->_entityID hash];
}

- (void)mergeFrom:(id)from
{
  v5 = *(from + 36);
  if (v5)
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
    v5 = *(from + 36);
  }

  if ((v5 & 2) != 0)
  {
    self->_wasTapped = *(from + 32);
    *&self->_has |= 2u;
  }

  if (*(from + 3))
  {
    [(AWDSpringBoardBreadcrumb *)self setType:?];
  }

  if (*(from + 2))
  {

    [(AWDSpringBoardBreadcrumb *)self setEntityID:?];
  }
}

@end