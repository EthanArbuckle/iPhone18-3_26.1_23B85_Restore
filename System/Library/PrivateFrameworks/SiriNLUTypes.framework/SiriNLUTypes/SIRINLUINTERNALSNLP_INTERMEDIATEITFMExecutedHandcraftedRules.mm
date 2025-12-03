@interface SIRINLUINTERNALSNLP_INTERMEDIATEITFMExecutedHandcraftedRules
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUINTERNALSNLP_INTERMEDIATEITFMExecutedHandcraftedRules

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  rules = self->_rules;
  v6 = fromCopy[2];
  v7 = fromCopy;
  if (rules)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SIRINLUINTERNALSNLP_INTERMEDIATESNLPHandcraftedRules *)rules mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SIRINLUINTERNALSNLP_INTERMEDIATEITFMExecutedHandcraftedRules *)self setRules:?];
  }

  fromCopy = v7;
LABEL_7:
  if (fromCopy[1])
  {
    [(SIRINLUINTERNALSNLP_INTERMEDIATEITFMExecutedHandcraftedRules *)self setModelType:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((rules = self->_rules, !(rules | equalCopy[2])) || -[SIRINLUINTERNALSNLP_INTERMEDIATESNLPHandcraftedRules isEqual:](rules, "isEqual:")))
  {
    modelType = self->_modelType;
    if (modelType | equalCopy[1])
    {
      v7 = [(NSString *)modelType isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SIRINLUINTERNALSNLP_INTERMEDIATESNLPHandcraftedRules *)self->_rules copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_modelType copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_rules)
  {
    [toCopy setRules:?];
    toCopy = v5;
  }

  if (self->_modelType)
  {
    [v5 setModelType:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_rules)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_modelType)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
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

  modelType = self->_modelType;
  if (modelType)
  {
    [dictionary setObject:modelType forKey:@"model_type"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALSNLP_INTERMEDIATEITFMExecutedHandcraftedRules;
  v4 = [(SIRINLUINTERNALSNLP_INTERMEDIATEITFMExecutedHandcraftedRules *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALSNLP_INTERMEDIATEITFMExecutedHandcraftedRules *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end