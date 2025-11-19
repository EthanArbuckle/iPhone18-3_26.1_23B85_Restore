@interface TPPBDictionaryMatchingRuleFieldRegexMatch
- (BOOL)isEqual:(id)a3;
- (BOOL)matches:(id)a3 error:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation TPPBDictionaryMatchingRuleFieldRegexMatch

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[1])
  {
    [(TPPBDictionaryMatchingRuleFieldRegexMatch *)self setFieldName:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(TPPBDictionaryMatchingRuleFieldRegexMatch *)self setRegex:?];
    v4 = v5;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((fieldName = self->_fieldName, !(fieldName | v4[1])) || -[NSString isEqual:](fieldName, "isEqual:")))
  {
    regex = self->_regex;
    if (regex | v4[2])
    {
      v7 = [(NSString *)regex isEqual:?];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_fieldName copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_regex copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_fieldName)
  {
    [v4 setFieldName:?];
    v4 = v5;
  }

  if (self->_regex)
  {
    [v5 setRegex:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_fieldName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_regex)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
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

  regex = self->_regex;
  if (regex)
  {
    [v4 setObject:regex forKey:@"regex"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TPPBDictionaryMatchingRuleFieldRegexMatch;
  v4 = [(TPPBDictionaryMatchingRuleFieldRegexMatch *)&v8 description];
  v5 = [(TPPBDictionaryMatchingRuleFieldRegexMatch *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (BOOL)matches:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(TPPBDictionaryMatchingRuleFieldRegexMatch *)self hasFieldName])
  {
    v7 = [(TPPBDictionaryMatchingRuleFieldRegexMatch *)self fieldName];
    [v7 length];
  }

  v8 = objc_alloc(MEMORY[0x277CCAC68]);
  v9 = [(TPPBDictionaryMatchingRuleFieldRegexMatch *)self regex];
  v18 = 0;
  v10 = [v8 initWithPattern:v9 options:0 error:&v18];
  v11 = v18;

  if (v10)
  {
    v12 = [(TPPBDictionaryMatchingRuleFieldRegexMatch *)self fieldName];
    v13 = [v6 objectForKeyedSubscript:v12];

    if (v13)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v13];
      v15 = [v10 numberOfMatchesInString:v14 options:0 range:{0, objc_msgSend(v14, "length")}] != 0;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
    if (a4 && v11)
    {
      v16 = v11;
      v15 = 0;
      *a4 = v11;
    }
  }

  return v15;
}

@end