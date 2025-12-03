@interface SIRINLUEXTERNALResponseStatus
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCode:(id)code;
- (int)code;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALResponseStatus

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[6])
  {
    self->_code = fromCopy[2];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 2))
  {
    v5 = fromCopy;
    [(SIRINLUEXTERNALResponseStatus *)self setDescriptionA:?];
    fromCopy = v5;
  }
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_code;
  }

  else
  {
    v2 = 0;
  }

  return [(NSString *)self->_descriptionA hash]^ v2;
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
    if ((*(equalCopy + 24) & 1) == 0 || self->_code != *(equalCopy + 2))
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

  descriptionA = self->_descriptionA;
  if (descriptionA | *(equalCopy + 2))
  {
    v7 = [(NSString *)descriptionA isEqual:?];
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
    *(v5 + 8) = self->_code;
    *(v5 + 24) |= 1u;
  }

  v7 = [(NSString *)self->_descriptionA copyWithZone:zone];
  v8 = v6[2];
  v6[2] = v7;

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[2] = self->_code;
    *(toCopy + 24) |= 1u;
  }

  if (self->_descriptionA)
  {
    v5 = toCopy;
    [toCopy setDescriptionA:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    code = self->_code;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

  if (self->_descriptionA)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    code = self->_code;
    if (code > 300)
    {
      if (code <= 302)
      {
        if (code == 301)
        {
          v5 = @"INTERNAL_ERROR";
        }

        else
        {
          v5 = @"INITIALISATION_ERROR";
        }

        goto LABEL_21;
      }

      if (code == 303)
      {
        v5 = @"FEATURE_EXTRACTION_ERROR";
        goto LABEL_21;
      }

      if (code == 500)
      {
        v5 = @"COMMUNICATION";
        goto LABEL_21;
      }
    }

    else if (code > 100)
    {
      if (code == 101)
      {
        v5 = @"EMPTY_NLU_REQUEST";
        goto LABEL_21;
      }

      if (code == 300)
      {
        v5 = @"PROCESSING";
        goto LABEL_21;
      }
    }

    else
    {
      if (!code)
      {
        v5 = @"SUCCESS";
        goto LABEL_21;
      }

      if (code == 100)
      {
        v5 = @"INPUT";
LABEL_21:
        [dictionary setObject:v5 forKey:@"code"];

        goto LABEL_22;
      }
    }

    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_code];
    goto LABEL_21;
  }

LABEL_22:
  descriptionA = self->_descriptionA;
  if (descriptionA)
  {
    [dictionary setObject:descriptionA forKey:@"description_a"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALResponseStatus;
  v4 = [(SIRINLUEXTERNALResponseStatus *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALResponseStatus *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (int)StringAsCode:(id)code
{
  codeCopy = code;
  if ([codeCopy isEqualToString:@"SUCCESS"])
  {
    v4 = 0;
  }

  else if ([codeCopy isEqualToString:@"INPUT"])
  {
    v4 = 100;
  }

  else if ([codeCopy isEqualToString:@"EMPTY_NLU_REQUEST"])
  {
    v4 = 101;
  }

  else if ([codeCopy isEqualToString:@"PROCESSING"])
  {
    v4 = 300;
  }

  else if ([codeCopy isEqualToString:@"INTERNAL_ERROR"])
  {
    v4 = 301;
  }

  else if ([codeCopy isEqualToString:@"INITIALISATION_ERROR"])
  {
    v4 = 302;
  }

  else if ([codeCopy isEqualToString:@"FEATURE_EXTRACTION_ERROR"])
  {
    v4 = 303;
  }

  else if ([codeCopy isEqualToString:@"COMMUNICATION"])
  {
    v4 = 500;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)code
{
  if (*&self->_has)
  {
    return self->_code;
  }

  else
  {
    return 0;
  }
}

@end