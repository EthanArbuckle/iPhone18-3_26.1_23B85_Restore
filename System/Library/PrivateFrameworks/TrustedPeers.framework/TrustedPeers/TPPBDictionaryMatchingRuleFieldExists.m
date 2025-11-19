@interface TPPBDictionaryMatchingRuleFieldExists
- (BOOL)isEqual:(id)a3;
- (BOOL)matches:(id)a3 error:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation TPPBDictionaryMatchingRuleFieldExists

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 1))
  {
    [(TPPBDictionaryMatchingRuleFieldExists *)self setFieldName:?];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    fieldName = self->_fieldName;
    if (fieldName | v4[1])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_fieldName copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)copyTo:(id)a3
{
  fieldName = self->_fieldName;
  if (fieldName)
  {
    [a3 setFieldName:fieldName];
  }
}

- (void)writeTo:(id)a3
{
  if (self->_fieldName)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  fieldName = self->_fieldName;
  if (fieldName)
  {
    [v3 setObject:fieldName forKey:@"fieldName"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TPPBDictionaryMatchingRuleFieldExists;
  v4 = [(TPPBDictionaryMatchingRuleFieldExists *)&v8 description];
  v5 = [(TPPBDictionaryMatchingRuleFieldExists *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (BOOL)matches:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (-[TPPBDictionaryMatchingRuleFieldExists hasFieldName](self, "hasFieldName") && (-[TPPBDictionaryMatchingRuleFieldExists fieldName](self, "fieldName"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 length], v7, v8))
  {
    v9 = [(TPPBDictionaryMatchingRuleFieldExists *)self fieldName];
    v10 = [v6 objectForKeyedSubscript:v9];

    v11 = v10 != 0;
  }

  else if (a4)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"CKKSMatcherError" code:1 description:@"Rule missing field name"];
    *a4 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end