@interface SIRINLUINTERNALSNLP_INTERMEDIATENLv4ExecutedHandcraftedRules
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUINTERNALSNLP_INTERMEDIATENLv4ExecutedHandcraftedRules

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  rules = self->_rules;
  v6 = v4[1];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    rules = self->_rules;
    if (rules | v4[1])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SIRINLUINTERNALSNLP_INTERMEDIATESNLPHandcraftedRules *)self->_rules copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)copyTo:(id)a3
{
  rules = self->_rules;
  if (rules)
  {
    [a3 setRules:rules];
  }
}

- (void)writeTo:(id)a3
{
  if (self->_rules)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  rules = self->_rules;
  if (rules)
  {
    v5 = [(SIRINLUINTERNALSNLP_INTERMEDIATESNLPHandcraftedRules *)rules dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"rules"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALSNLP_INTERMEDIATENLv4ExecutedHandcraftedRules;
  v4 = [(SIRINLUINTERNALSNLP_INTERMEDIATENLv4ExecutedHandcraftedRules *)&v8 description];
  v5 = [(SIRINLUINTERNALSNLP_INTERMEDIATENLv4ExecutedHandcraftedRules *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end