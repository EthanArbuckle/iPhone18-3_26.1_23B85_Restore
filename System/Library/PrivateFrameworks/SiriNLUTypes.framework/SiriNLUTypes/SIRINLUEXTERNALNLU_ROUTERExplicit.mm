@interface SIRINLUEXTERNALNLU_ROUTERExplicit
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsPartner:(id)partner;
- (int)partner;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALNLU_ROUTERExplicit

- (void)mergeFrom:(id)from
{
  if (*(from + 12))
  {
    self->_partner = *(from + 2);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_6;
  }

  v5 = (*(equalCopy + 12) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 12) & 1) != 0 && self->_partner == *(equalCopy + 2))
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

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (*&self->_has)
  {
    *(result + 2) = self->_partner;
    *(result + 12) |= 1u;
  }

  return result;
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 2) = self->_partner;
    *(to + 12) |= 1u;
  }
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    partner = self->_partner;
    PBDataWriterWriteInt32Field();
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
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

    [dictionary setObject:v5 forKey:@"partner"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALNLU_ROUTERExplicit;
  v4 = [(SIRINLUEXTERNALNLU_ROUTERExplicit *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALNLU_ROUTERExplicit *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (int)StringAsPartner:(id)partner
{
  partnerCopy = partner;
  if ([partnerCopy isEqualToString:@"GEN_AI_PARTNER_UNSET"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [partnerCopy isEqualToString:@"GEN_AI_PARTNER_CHATGPT"];
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