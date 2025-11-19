@interface SIRINLUEXTERNALResponseStatus
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCode:(id)a3;
- (int)code;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUEXTERNALResponseStatus

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[6])
  {
    self->_code = v4[2];
    *&self->_has |= 1u;
  }

  if (*(v4 + 2))
  {
    v5 = v4;
    [(SIRINLUEXTERNALResponseStatus *)self setDescriptionA:?];
    v4 = v5;
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
    if ((*(v4 + 24) & 1) == 0 || self->_code != *(v4 + 2))
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

  descriptionA = self->_descriptionA;
  if (descriptionA | *(v4 + 2))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_code;
    *(v5 + 24) |= 1u;
  }

  v7 = [(NSString *)self->_descriptionA copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[2] = self->_code;
    *(v4 + 24) |= 1u;
  }

  if (self->_descriptionA)
  {
    v5 = v4;
    [v4 setDescriptionA:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    code = self->_code;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_descriptionA)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
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
        [v3 setObject:v5 forKey:@"code"];

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
    [v3 setObject:descriptionA forKey:@"description_a"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALResponseStatus;
  v4 = [(SIRINLUEXTERNALResponseStatus *)&v8 description];
  v5 = [(SIRINLUEXTERNALResponseStatus *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (int)StringAsCode:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SUCCESS"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"INPUT"])
  {
    v4 = 100;
  }

  else if ([v3 isEqualToString:@"EMPTY_NLU_REQUEST"])
  {
    v4 = 101;
  }

  else if ([v3 isEqualToString:@"PROCESSING"])
  {
    v4 = 300;
  }

  else if ([v3 isEqualToString:@"INTERNAL_ERROR"])
  {
    v4 = 301;
  }

  else if ([v3 isEqualToString:@"INITIALISATION_ERROR"])
  {
    v4 = 302;
  }

  else if ([v3 isEqualToString:@"FEATURE_EXTRACTION_ERROR"])
  {
    v4 = 303;
  }

  else if ([v3 isEqualToString:@"COMMUNICATION"])
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