@interface WFPBGallerySessionEndEvent
- (BOOL)isEqual:(id)equal;
- (NSString)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation WFPBGallerySessionEndEvent

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(WFPBGallerySessionEndEvent *)self setKey:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(WFPBGallerySessionEndEvent *)self setSessionIdentifier:?];
    fromCopy = v5;
  }

  if (fromCopy[8])
  {
    self->_duration = fromCopy[2];
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  v4 = [(NSString *)self->_sessionIdentifier hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_duration;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  key = self->_key;
  if (key | *(equalCopy + 2))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_10;
    }
  }

  sessionIdentifier = self->_sessionIdentifier;
  if (sessionIdentifier | *(equalCopy + 3))
  {
    if (![(NSString *)sessionIdentifier isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v7 = (*(equalCopy + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) != 0 && self->_duration == *(equalCopy + 2))
    {
      v7 = 1;
      goto LABEL_11;
    }

LABEL_10:
    v7 = 0;
  }

LABEL_11:

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_sessionIdentifier copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_duration;
    *(v5 + 32) |= 1u;
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_key)
  {
    [toCopy setKey:?];
    toCopy = v5;
  }

  if (self->_sessionIdentifier)
  {
    [v5 setSessionIdentifier:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 2) = self->_duration;
    *(toCopy + 32) |= 1u;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_sessionIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    duration = self->_duration;
    PBDataWriterWriteUint32Field();
    toCopy = v6;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  key = self->_key;
  if (key)
  {
    [dictionary setObject:key forKey:@"key"];
  }

  sessionIdentifier = self->_sessionIdentifier;
  if (sessionIdentifier)
  {
    [v4 setObject:sessionIdentifier forKey:@"sessionIdentifier"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_duration];
    [v4 setObject:v7 forKey:@"duration"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFPBGallerySessionEndEvent;
  v4 = [(WFPBGallerySessionEndEvent *)&v8 description];
  dictionaryRepresentation = [(WFPBGallerySessionEndEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (NSString)key
{
  if (self->_key)
  {
    return self->_key;
  }

  else
  {
    return @"GallerySessionEnd";
  }
}

@end