@interface SIRINLUEXTERNALNLU_ROUTERRetrievedContext
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)type;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALNLU_ROUTERRetrievedContext

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[6])
  {
    self->_type = fromCopy[2];
    *&self->_has |= 1u;
  }

  typedValue = self->_typedValue;
  v7 = *(v5 + 2);
  if (typedValue)
  {
    if (v7)
    {
      [(SIRINLUEXTERNALNLU_ROUTERTypedValue *)typedValue mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(SIRINLUEXTERNALNLU_ROUTERRetrievedContext *)self setTypedValue:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_type;
  }

  else
  {
    v2 = 0;
  }

  return [(SIRINLUEXTERNALNLU_ROUTERTypedValue *)self->_typedValue hash]^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(equalCopy + 24);
  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) == 0 || self->_type != *(equalCopy + 2))
    {
      goto LABEL_9;
    }
  }

  else if (*(equalCopy + 24))
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  typedValue = self->_typedValue;
  if (typedValue | *(equalCopy + 2))
  {
    v7 = [(SIRINLUEXTERNALNLU_ROUTERTypedValue *)typedValue isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_10:

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_type;
    *(v5 + 24) |= 1u;
  }

  v7 = [(SIRINLUEXTERNALNLU_ROUTERTypedValue *)self->_typedValue copyWithZone:zone];
  v8 = v6[2];
  v6[2] = v7;

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[2] = self->_type;
    *(toCopy + 24) |= 1u;
  }

  if (self->_typedValue)
  {
    v5 = toCopy;
    [toCopy setTypedValue:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

  if (self->_typedValue)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    type = self->_type;
    if (type <= 27)
    {
      if (!type)
      {
        v5 = @"CONTEXT_TYPE_UNKNOWN";
        goto LABEL_14;
      }

      if (type == 1)
      {
        v5 = @"CONTEXT_TYPE_APP_IN_FOCUS_BUNDLE_ID";
        goto LABEL_14;
      }
    }

    else
    {
      switch(type)
      {
        case 28:
          v5 = @"CONTEXT_TYPE_HAS_FOCUSED_ON_SCREEN_IMAGE";
          goto LABEL_14;
        case 29:
          v5 = @"CONTEXT_TYPE_HAS_FOCUSED_ON_SCREEN_DOCUMENT";
          goto LABEL_14;
        case 50:
          v5 = @"CONTEXT_TYPE_OTHER";
LABEL_14:
          [dictionary setObject:v5 forKey:@"type"];

          goto LABEL_15;
      }
    }

    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_type];
    goto LABEL_14;
  }

LABEL_15:
  typedValue = self->_typedValue;
  if (typedValue)
  {
    dictionaryRepresentation = [(SIRINLUEXTERNALNLU_ROUTERTypedValue *)typedValue dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"typed_value"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALNLU_ROUTERRetrievedContext;
  v4 = [(SIRINLUEXTERNALNLU_ROUTERRetrievedContext *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALNLU_ROUTERRetrievedContext *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"CONTEXT_TYPE_UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"CONTEXT_TYPE_APP_IN_FOCUS_BUNDLE_ID"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"CONTEXT_TYPE_HAS_FOCUSED_ON_SCREEN_IMAGE"])
  {
    v4 = 28;
  }

  else if ([typeCopy isEqualToString:@"CONTEXT_TYPE_HAS_FOCUSED_ON_SCREEN_DOCUMENT"])
  {
    v4 = 29;
  }

  else if ([typeCopy isEqualToString:@"CONTEXT_TYPE_OTHER"])
  {
    v4 = 50;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)type
{
  if (*&self->_has)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

@end