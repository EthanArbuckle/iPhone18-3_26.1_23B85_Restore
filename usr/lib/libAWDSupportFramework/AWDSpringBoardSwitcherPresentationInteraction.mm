@interface AWDSpringBoardSwitcherPresentationInteraction
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasDidCommit:(BOOL)commit;
- (void)writeTo:(id)to;
@end

@implementation AWDSpringBoardSwitcherPresentationInteraction

- (void)dealloc
{
  [(AWDSpringBoardSwitcherPresentationInteraction *)self setSource:0];
  v3.receiver = self;
  v3.super_class = AWDSpringBoardSwitcherPresentationInteraction;
  [(AWDSpringBoardSwitcherPresentationInteraction *)&v3 dealloc];
}

- (void)setHasDidCommit:(BOOL)commit
{
  if (commit)
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
  v3.super_class = AWDSpringBoardSwitcherPresentationInteraction;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDSpringBoardSwitcherPresentationInteraction description](&v3, sel_description), -[AWDSpringBoardSwitcherPresentationInteraction dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  source = self->_source;
  if (source)
  {
    [dictionary setObject:source forKey:@"source"];
  }

  if ((*&self->_has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_didCommit), @"didCommit"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_source)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    didCommit = self->_didCommit;

    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 28) |= 1u;
  }

  if (self->_source)
  {
    [to setSource:?];
  }

  if ((*&self->_has & 2) != 0)
  {
    *(to + 24) = self->_didCommit;
    *(to + 28) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 28) |= 1u;
  }

  *(v6 + 16) = [(NSString *)self->_source copyWithZone:zone];
  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 24) = self->_didCommit;
    *(v6 + 28) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 28);
    if (has)
    {
      if ((*(equal + 28) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_12;
      }
    }

    else if (*(equal + 28))
    {
      goto LABEL_12;
    }

    source = self->_source;
    if (source | *(equal + 2))
    {
      v5 = [(NSString *)source isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    LOBYTE(v5) = (*(equal + 28) & 2) == 0;
    if ((has & 2) != 0)
    {
      if ((*(equal + 28) & 2) == 0)
      {
LABEL_12:
        LOBYTE(v5) = 0;
        return v5;
      }

      if (self->_didCommit)
      {
        if ((*(equal + 24) & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else if (*(equal + 24))
      {
        goto LABEL_12;
      }

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
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_source hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_didCommit;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 28))
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
  }

  if (*(from + 2))
  {
    [(AWDSpringBoardSwitcherPresentationInteraction *)self setSource:?];
  }

  if ((*(from + 28) & 2) != 0)
  {
    self->_didCommit = *(from + 24);
    *&self->_has |= 2u;
  }
}

@end