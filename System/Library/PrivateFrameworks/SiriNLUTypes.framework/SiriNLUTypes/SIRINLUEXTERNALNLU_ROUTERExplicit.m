@interface SIRINLUEXTERNALNLU_ROUTERExplicit
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsPartner:(id)a3;
- (int)partner;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUEXTERNALNLU_ROUTERExplicit

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 12))
  {
    self->_partner = *(a3 + 2);
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    return 2654435761 * self->_partner;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_6;
  }

  v5 = (*(v4 + 12) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 12) & 1) != 0 && self->_partner == *(v4 + 2))
    {
      v5 = 1;
      goto LABEL_7;
    }

LABEL_6:
    v5 = 0;
  }

LABEL_7:

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (*&self->_has)
  {
    *(result + 2) = self->_partner;
    *(result + 12) |= 1u;
  }

  return result;
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 2) = self->_partner;
    *(a3 + 12) |= 1u;
  }
}

- (void)writeTo:(id)a3
{
  if (*&self->_has)
  {
    partner = self->_partner;
    PBDataWriterWriteInt32Field();
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    partner = self->_partner;
    if (partner)
    {
      if (partner == 1)
      {
        v5 = @"GEN_AI_PARTNER_CHATGPT";
      }

      else
      {
        v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_partner];
      }
    }

    else
    {
      v5 = @"GEN_AI_PARTNER_UNSET";
    }

    [v3 setObject:v5 forKey:@"partner"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALNLU_ROUTERExplicit;
  v4 = [(SIRINLUEXTERNALNLU_ROUTERExplicit *)&v8 description];
  v5 = [(SIRINLUEXTERNALNLU_ROUTERExplicit *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (int)StringAsPartner:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"GEN_AI_PARTNER_UNSET"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"GEN_AI_PARTNER_CHATGPT"];
  }

  return v4;
}

- (int)partner
{
  if (*&self->_has)
  {
    return self->_partner;
  }

  else
  {
    return 0;
  }
}

@end