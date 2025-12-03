@interface SIRINLUINTERNALSNLP_INTERMEDIATENLv4ExecutedHandcraftedRules
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUINTERNALSNLP_INTERMEDIATENLv4ExecutedHandcraftedRules

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  rules = self->_rules;
  v6 = fromCopy[1];
  if (rules)
  {
    if (v6)
    {
      [(SIRINLUINTERNALSNLP_INTERMEDIATESNLPHandcraftedRules *)rules mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUINTERNALSNLP_INTERMEDIATENLv4ExecutedHandcraftedRules *)self setRules:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    rules = self->_rules;
    if (rules | equalCopy[1])
    {
      v6 = [(SIRINLUINTERNALSNLP_INTERMEDIATESNLPHandcraftedRules *)rules isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SIRINLUINTERNALSNLP_INTERMEDIATESNLPHandcraftedRules *)self->_rules copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)copyTo:(id)to
{
  rules = self->_rules;
  if (rules)
  {
    [to setRules:rules];
  }
}

- (void)writeTo:(id)to
{
  if (self->_rules)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  rules = self->_rules;
  if (rules)
  {
    dictionaryRepresentation = [(SIRINLUINTERNALSNLP_INTERMEDIATESNLPHandcraftedRules *)rules dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"rules"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALSNLP_INTERMEDIATENLv4ExecutedHandcraftedRules;
  v4 = [(SIRINLUINTERNALSNLP_INTERMEDIATENLv4ExecutedHandcraftedRules *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALSNLP_INTERMEDIATENLv4ExecutedHandcraftedRules *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end