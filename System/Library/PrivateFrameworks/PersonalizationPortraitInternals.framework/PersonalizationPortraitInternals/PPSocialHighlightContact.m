@interface PPSocialHighlightContact
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIsSignificant:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PPSocialHighlightContact

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if ((v4[20] & 2) != 0)
  {
    self->_isSignificant = v4[17];
    *&self->_has |= 2u;
  }

  if (*(v4 + 1))
  {
    v5 = v4;
    [(PPSocialHighlightContact *)self setHandle:?];
    v4 = v5;
  }

  if (v4[20])
  {
    self->_isMe = v4[16];
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_isSignificant;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_handle hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_isMe;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  has = self->_has;
  v6 = *(v4 + 20);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 20) & 2) == 0)
    {
      goto LABEL_13;
    }

    v10 = *(v4 + 17);
    if (self->_isSignificant)
    {
      if ((*(v4 + 17) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else if (*(v4 + 17))
    {
      goto LABEL_13;
    }
  }

  else if ((*(v4 + 20) & 2) != 0)
  {
    goto LABEL_13;
  }

  handle = self->_handle;
  if (!(handle | *(v4 + 1)))
  {
    goto LABEL_7;
  }

  if (![(NSString *)handle isEqual:?])
  {
LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  has = self->_has;
  v6 = *(v4 + 20);
LABEL_7:
  v8 = (v6 & 1) == 0;
  if (has)
  {
    if (v6)
    {
      if (self->_isMe)
      {
        if (*(v4 + 16))
        {
          goto LABEL_21;
        }
      }

      else if (!*(v4 + 16))
      {
LABEL_21:
        v8 = 1;
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

LABEL_14:

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 17) = self->_isSignificant;
    *(v5 + 20) |= 2u;
  }

  v7 = [(NSString *)self->_handle copyWithZone:a3];
  v8 = *(v6 + 8);
  *(v6 + 8) = v7;

  if (*&self->_has)
  {
    *(v6 + 16) = self->_isMe;
    *(v6 + 20) |= 1u;
  }

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 2) != 0)
  {
    v4[17] = self->_isSignificant;
    v4[20] |= 2u;
  }

  if (self->_handle)
  {
    v5 = v4;
    [v4 setHandle:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[16] = self->_isMe;
    v4[20] |= 1u;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if ((*&self->_has & 2) != 0)
  {
    isSignificant = self->_isSignificant;
    PBDataWriterWriteBOOLField();
    v4 = v7;
  }

  if (self->_handle)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (*&self->_has)
  {
    isMe = self->_isMe;
    PBDataWriterWriteBOOLField();
    v4 = v7;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_isSignificant];
    [v3 setObject:v4 forKey:@"isSignificant"];
  }

  handle = self->_handle;
  if (handle)
  {
    [v3 setObject:handle forKey:@"handle"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_isMe];
    [v3 setObject:v6 forKey:@"isMe"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PPSocialHighlightContact;
  v4 = [(PPSocialHighlightContact *)&v8 description];
  v5 = [(PPSocialHighlightContact *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasIsSignificant:(BOOL)a3
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

@end