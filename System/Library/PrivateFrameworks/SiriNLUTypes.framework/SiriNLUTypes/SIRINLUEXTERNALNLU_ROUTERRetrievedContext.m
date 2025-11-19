@interface SIRINLUEXTERNALNLU_ROUTERRetrievedContext
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)a3;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUEXTERNALNLU_ROUTERRetrievedContext

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[6])
  {
    self->_type = v4[2];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(v4 + 24);
  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_type != *(v4 + 2))
    {
      goto LABEL_9;
    }
  }

  else if (*(v4 + 24))
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  typedValue = self->_typedValue;
  if (typedValue | *(v4 + 2))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_type;
    *(v5 + 24) |= 1u;
  }

  v7 = [(SIRINLUEXTERNALNLU_ROUTERTypedValue *)self->_typedValue copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[2] = self->_type;
    *(v4 + 24) |= 1u;
  }

  if (self->_typedValue)
  {
    v5 = v4;
    [v4 setTypedValue:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_typedValue)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
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
          [v3 setObject:v5 forKey:@"type"];

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
    v7 = [(SIRINLUEXTERNALNLU_ROUTERTypedValue *)typedValue dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"typed_value"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALNLU_ROUTERRetrievedContext;
  v4 = [(SIRINLUEXTERNALNLU_ROUTERRetrievedContext *)&v8 description];
  v5 = [(SIRINLUEXTERNALNLU_ROUTERRetrievedContext *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"CONTEXT_TYPE_UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"CONTEXT_TYPE_APP_IN_FOCUS_BUNDLE_ID"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"CONTEXT_TYPE_HAS_FOCUSED_ON_SCREEN_IMAGE"])
  {
    v4 = 28;
  }

  else if ([v3 isEqualToString:@"CONTEXT_TYPE_HAS_FOCUSED_ON_SCREEN_DOCUMENT"])
  {
    v4 = 29;
  }

  else if ([v3 isEqualToString:@"CONTEXT_TYPE_OTHER"])
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