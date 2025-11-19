@interface UWLLiveActivityEventContent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasContentIsDone:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation UWLLiveActivityEventContent

- (void)setHasContentIsDone:(BOOL)a3
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

- (id)description
{
  v7.receiver = self;
  v7.super_class = UWLLiveActivityEventContent;
  v3 = [(UWLLiveActivityEventContent *)&v7 description];
  v4 = [(UWLLiveActivityEventContent *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  contentCanonicalId = self->_contentCanonicalId;
  if (contentCanonicalId)
  {
    [v3 setObject:contentCanonicalId forKey:@"content_canonical_id"];
  }

  contentBrandId = self->_contentBrandId;
  if (contentBrandId)
  {
    [v4 setObject:contentBrandId forKey:@"content_brand_id"];
  }

  contentExternalPlayableId = self->_contentExternalPlayableId;
  if (contentExternalPlayableId)
  {
    [v4 setObject:contentExternalPlayableId forKey:@"content_external_playable_id"];
  }

  has = self->_has;
  if (has)
  {
    v9 = [NSNumber numberWithLongLong:self->_contentMediaLengthInMilliseconds];
    [v4 setObject:v9 forKey:@"content_media_length_in_milliseconds"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v10 = [NSNumber numberWithBool:self->_contentIsDone];
    [v4 setObject:v10 forKey:@"content_is_done"];
  }

  contentInternalLegId = self->_contentInternalLegId;
  if (contentInternalLegId)
  {
    [v4 setObject:contentInternalLegId forKey:@"content_internal_leg_id"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_contentCanonicalId)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_contentBrandId)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_contentExternalPlayableId)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  has = self->_has;
  if (has)
  {
    contentMediaLengthInMilliseconds = self->_contentMediaLengthInMilliseconds;
    PBDataWriterWriteInt64Field();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    contentIsDone = self->_contentIsDone;
    PBDataWriterWriteBOOLField();
    v4 = v8;
  }

  if (self->_contentInternalLegId)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_contentCanonicalId)
  {
    [v4 setContentCanonicalId:?];
    v4 = v6;
  }

  if (self->_contentBrandId)
  {
    [v6 setContentBrandId:?];
    v4 = v6;
  }

  if (self->_contentExternalPlayableId)
  {
    [v6 setContentExternalPlayableId:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 1) = self->_contentMediaLengthInMilliseconds;
    *(v4 + 52) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 48) = self->_contentIsDone;
    *(v4 + 52) |= 2u;
  }

  if (self->_contentInternalLegId)
  {
    [v6 setContentInternalLegId:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_contentCanonicalId copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_contentBrandId copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_contentExternalPlayableId copyWithZone:a3];
  v11 = v5[4];
  v5[4] = v10;

  has = self->_has;
  if (has)
  {
    v5[1] = self->_contentMediaLengthInMilliseconds;
    *(v5 + 52) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 48) = self->_contentIsDone;
    *(v5 + 52) |= 2u;
  }

  v13 = [(NSString *)self->_contentInternalLegId copyWithZone:a3];
  v14 = v5[5];
  v5[5] = v13;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  contentCanonicalId = self->_contentCanonicalId;
  if (contentCanonicalId | *(v4 + 3))
  {
    if (![(NSString *)contentCanonicalId isEqual:?])
    {
      goto LABEL_18;
    }
  }

  contentBrandId = self->_contentBrandId;
  if (contentBrandId | *(v4 + 2))
  {
    if (![(NSString *)contentBrandId isEqual:?])
    {
      goto LABEL_18;
    }
  }

  contentExternalPlayableId = self->_contentExternalPlayableId;
  if (contentExternalPlayableId | *(v4 + 4))
  {
    if (![(NSString *)contentExternalPlayableId isEqual:?])
    {
      goto LABEL_18;
    }
  }

  v8 = *(v4 + 52);
  if (*&self->_has)
  {
    if ((*(v4 + 52) & 1) == 0 || self->_contentMediaLengthInMilliseconds != *(v4 + 1))
    {
      goto LABEL_18;
    }
  }

  else if (*(v4 + 52))
  {
    goto LABEL_18;
  }

  if ((*&self->_has & 2) == 0)
  {
    if ((*(v4 + 52) & 2) == 0)
    {
      goto LABEL_15;
    }

LABEL_18:
    v10 = 0;
    goto LABEL_19;
  }

  if ((*(v4 + 52) & 2) == 0)
  {
    goto LABEL_18;
  }

  v12 = *(v4 + 48);
  if (self->_contentIsDone)
  {
    if ((*(v4 + 48) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (*(v4 + 48))
  {
    goto LABEL_18;
  }

LABEL_15:
  contentInternalLegId = self->_contentInternalLegId;
  if (contentInternalLegId | *(v4 + 5))
  {
    v10 = [(NSString *)contentInternalLegId isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_19:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_contentCanonicalId hash];
  v4 = [(NSString *)self->_contentBrandId hash];
  v5 = [(NSString *)self->_contentExternalPlayableId hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_contentMediaLengthInMilliseconds;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ [(NSString *)self->_contentInternalLegId hash];
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_contentIsDone;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ [(NSString *)self->_contentInternalLegId hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 3))
  {
    [(UWLLiveActivityEventContent *)self setContentCanonicalId:?];
    v4 = v6;
  }

  if (*(v4 + 2))
  {
    [(UWLLiveActivityEventContent *)self setContentBrandId:?];
    v4 = v6;
  }

  if (*(v4 + 4))
  {
    [(UWLLiveActivityEventContent *)self setContentExternalPlayableId:?];
    v4 = v6;
  }

  v5 = *(v4 + 52);
  if (v5)
  {
    self->_contentMediaLengthInMilliseconds = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 52);
  }

  if ((v5 & 2) != 0)
  {
    self->_contentIsDone = *(v4 + 48);
    *&self->_has |= 2u;
  }

  if (*(v4 + 5))
  {
    [(UWLLiveActivityEventContent *)self setContentInternalLegId:?];
    v4 = v6;
  }
}

@end