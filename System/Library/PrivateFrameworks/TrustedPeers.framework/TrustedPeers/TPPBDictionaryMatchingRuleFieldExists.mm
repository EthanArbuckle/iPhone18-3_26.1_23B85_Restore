@interface TPPBDictionaryMatchingRuleFieldExists
- (BOOL)isEqual:(id)equal;
- (BOOL)matches:(id)matches error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation TPPBDictionaryMatchingRuleFieldExists

- (void)mergeFrom:(id)from
{
  if (*(from + 1))
  {
    [(TPPBDictionaryMatchingRuleFieldExists *)self setFieldName:?];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    fieldName = self->_fieldName;
    if (fieldName | equalCopy[1])
    {
      v6 = [(NSString *)fieldName isEqual:?];
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
  v6 = [(NSString *)self->_fieldName copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)copyTo:(id)to
{
  fieldName = self->_fieldName;
  if (fieldName)
  {
    [to setFieldName:fieldName];
  }
}

- (void)writeTo:(id)to
{
  if (self->_fieldName)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  fieldName = self->_fieldName;
  if (fieldName)
  {
    [dictionary setObject:fieldName forKey:@"fieldName"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TPPBDictionaryMatchingRuleFieldExists;
  v4 = [(TPPBDictionaryMatchingRuleFieldExists *)&v8 description];
  dictionaryRepresentation = [(TPPBDictionaryMatchingRuleFieldExists *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (BOOL)matches:(id)matches error:(id *)error
{
  matchesCopy = matches;
  if (-[TPPBDictionaryMatchingRuleFieldExists hasFieldName](self, "hasFieldName") && (-[TPPBDictionaryMatchingRuleFieldExists fieldName](self, "fieldName"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 length], v7, v8))
  {
    fieldName = [(TPPBDictionaryMatchingRuleFieldExists *)self fieldName];
    v10 = [matchesCopy objectForKeyedSubscript:fieldName];

    v11 = v10 != 0;
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"CKKSMatcherError" code:1 description:@"Rule missing field name"];
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end