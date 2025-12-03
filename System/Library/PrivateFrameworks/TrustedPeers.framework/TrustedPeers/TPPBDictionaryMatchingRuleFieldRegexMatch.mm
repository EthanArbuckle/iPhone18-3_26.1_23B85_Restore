@interface TPPBDictionaryMatchingRuleFieldRegexMatch
- (BOOL)isEqual:(id)equal;
- (BOOL)matches:(id)matches error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation TPPBDictionaryMatchingRuleFieldRegexMatch

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[1])
  {
    [(TPPBDictionaryMatchingRuleFieldRegexMatch *)self setFieldName:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(TPPBDictionaryMatchingRuleFieldRegexMatch *)self setRegex:?];
    fromCopy = v5;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((fieldName = self->_fieldName, !(fieldName | equalCopy[1])) || -[NSString isEqual:](fieldName, "isEqual:")))
  {
    regex = self->_regex;
    if (regex | equalCopy[2])
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_fieldName copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_regex copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_fieldName)
  {
    [toCopy setFieldName:?];
    toCopy = v5;
  }

  if (self->_regex)
  {
    [v5 setRegex:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_fieldName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_regex)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
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
  dictionaryRepresentation = [(TPPBDictionaryMatchingRuleFieldRegexMatch *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (BOOL)matches:(id)matches error:(id *)error
{
  matchesCopy = matches;
  if ([(TPPBDictionaryMatchingRuleFieldRegexMatch *)self hasFieldName])
  {
    fieldName = [(TPPBDictionaryMatchingRuleFieldRegexMatch *)self fieldName];
    [fieldName length];
  }

  v8 = objc_alloc(MEMORY[0x277CCAC68]);
  regex = [(TPPBDictionaryMatchingRuleFieldRegexMatch *)self regex];
  v18 = 0;
  v10 = [v8 initWithPattern:regex options:0 error:&v18];
  v11 = v18;

  if (v10)
  {
    fieldName2 = [(TPPBDictionaryMatchingRuleFieldRegexMatch *)self fieldName];
    v13 = [matchesCopy objectForKeyedSubscript:fieldName2];

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
    if (error && v11)
    {
      v16 = v11;
      v15 = 0;
      *error = v11;
    }
  }

  return v15;
}

@end