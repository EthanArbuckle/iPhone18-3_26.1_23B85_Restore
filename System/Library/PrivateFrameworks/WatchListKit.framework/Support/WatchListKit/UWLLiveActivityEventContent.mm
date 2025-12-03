@interface UWLLiveActivityEventContent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasContentIsDone:(BOOL)done;
- (void)writeTo:(id)to;
@end

@implementation UWLLiveActivityEventContent

- (void)setHasContentIsDone:(BOOL)done
{
  if (done)
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
  dictionaryRepresentation = [(UWLLiveActivityEventContent *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_contentCanonicalId)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_contentBrandId)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_contentExternalPlayableId)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  has = self->_has;
  if (has)
  {
    contentMediaLengthInMilliseconds = self->_contentMediaLengthInMilliseconds;
    PBDataWriterWriteInt64Field();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    contentIsDone = self->_contentIsDone;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
  }

  if (self->_contentInternalLegId)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_contentCanonicalId)
  {
    [toCopy setContentCanonicalId:?];
    toCopy = v6;
  }

  if (self->_contentBrandId)
  {
    [v6 setContentBrandId:?];
    toCopy = v6;
  }

  if (self->_contentExternalPlayableId)
  {
    [v6 setContentExternalPlayableId:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 1) = self->_contentMediaLengthInMilliseconds;
    *(toCopy + 52) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 48) = self->_contentIsDone;
    *(toCopy + 52) |= 2u;
  }

  if (self->_contentInternalLegId)
  {
    [v6 setContentInternalLegId:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_contentCanonicalId copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_contentBrandId copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_contentExternalPlayableId copyWithZone:zone];
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

  v13 = [(NSString *)self->_contentInternalLegId copyWithZone:zone];
  v14 = v5[5];
  v5[5] = v13;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  contentCanonicalId = self->_contentCanonicalId;
  if (contentCanonicalId | *(equalCopy + 3))
  {
    if (![(NSString *)contentCanonicalId isEqual:?])
    {
      goto LABEL_18;
    }
  }

  contentBrandId = self->_contentBrandId;
  if (contentBrandId | *(equalCopy + 2))
  {
    if (![(NSString *)contentBrandId isEqual:?])
    {
      goto LABEL_18;
    }
  }

  contentExternalPlayableId = self->_contentExternalPlayableId;
  if (contentExternalPlayableId | *(equalCopy + 4))
  {
    if (![(NSString *)contentExternalPlayableId isEqual:?])
    {
      goto LABEL_18;
    }
  }

  v8 = *(equalCopy + 52);
  if (*&self->_has)
  {
    if ((*(equalCopy + 52) & 1) == 0 || self->_contentMediaLengthInMilliseconds != *(equalCopy + 1))
    {
      goto LABEL_18;
    }
  }

  else if (*(equalCopy + 52))
  {
    goto LABEL_18;
  }

  if ((*&self->_has & 2) == 0)
  {
    if ((*(equalCopy + 52) & 2) == 0)
    {
      goto LABEL_15;
    }

LABEL_18:
    v10 = 0;
    goto LABEL_19;
  }

  if ((*(equalCopy + 52) & 2) == 0)
  {
    goto LABEL_18;
  }

  v12 = *(equalCopy + 48);
  if (self->_contentIsDone)
  {
    if ((*(equalCopy + 48) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (*(equalCopy + 48))
  {
    goto LABEL_18;
  }

LABEL_15:
  contentInternalLegId = self->_contentInternalLegId;
  if (contentInternalLegId | *(equalCopy + 5))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(UWLLiveActivityEventContent *)self setContentCanonicalId:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 2))
  {
    [(UWLLiveActivityEventContent *)self setContentBrandId:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 4))
  {
    [(UWLLiveActivityEventContent *)self setContentExternalPlayableId:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 52);
  if (v5)
  {
    self->_contentMediaLengthInMilliseconds = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 52);
  }

  if ((v5 & 2) != 0)
  {
    self->_contentIsDone = *(fromCopy + 48);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 5))
  {
    [(UWLLiveActivityEventContent *)self setContentInternalLegId:?];
    fromCopy = v6;
  }
}

@end