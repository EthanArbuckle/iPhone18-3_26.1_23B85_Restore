@interface _ICLLPlaybackItemContainer
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _ICLLPlaybackItemContainer

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_type;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_mediaId hash]^ v3;
  v5 = [(NSString *)self->_containerId hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_featureName hash];
  return v6 ^ [(NSString *)self->_stationHash hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 44) & 1) == 0 || self->_type != *(equalCopy + 10))
    {
      goto LABEL_15;
    }
  }

  else if (*(equalCopy + 44))
  {
LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  mediaId = self->_mediaId;
  if (mediaId | *(equalCopy + 3) && ![(NSString *)mediaId isEqual:?])
  {
    goto LABEL_15;
  }

  containerId = self->_containerId;
  if (containerId | *(equalCopy + 1))
  {
    if (![(NSString *)containerId isEqual:?])
    {
      goto LABEL_15;
    }
  }

  featureName = self->_featureName;
  if (featureName | *(equalCopy + 2))
  {
    if (![(NSString *)featureName isEqual:?])
    {
      goto LABEL_15;
    }
  }

  stationHash = self->_stationHash;
  if (stationHash | *(equalCopy + 4))
  {
    v9 = [(NSString *)stationHash isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_16:

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 40) = self->_type;
    *(v5 + 44) |= 1u;
  }

  v7 = [(NSString *)self->_mediaId copyWithZone:zone];
  v8 = v6[3];
  v6[3] = v7;

  v9 = [(NSString *)self->_containerId copyWithZone:zone];
  v10 = v6[1];
  v6[1] = v9;

  v11 = [(NSString *)self->_featureName copyWithZone:zone];
  v12 = v6[2];
  v6[2] = v11;

  v13 = [(NSString *)self->_stationHash copyWithZone:zone];
  v14 = v6[4];
  v6[4] = v13;

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v5;
  }

  if (self->_mediaId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_containerId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_featureName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_stationHash)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:self->_type];
    [dictionary setObject:v4 forKey:@"type"];
  }

  mediaId = self->_mediaId;
  if (mediaId)
  {
    [dictionary setObject:mediaId forKey:@"mediaId"];
  }

  containerId = self->_containerId;
  if (containerId)
  {
    [dictionary setObject:containerId forKey:@"containerId"];
  }

  featureName = self->_featureName;
  if (featureName)
  {
    [dictionary setObject:featureName forKey:@"featureName"];
  }

  stationHash = self->_stationHash;
  if (stationHash)
  {
    [dictionary setObject:stationHash forKey:@"stationHash"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _ICLLPlaybackItemContainer;
  v4 = [(_ICLLPlaybackItemContainer *)&v8 description];
  dictionaryRepresentation = [(_ICLLPlaybackItemContainer *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end