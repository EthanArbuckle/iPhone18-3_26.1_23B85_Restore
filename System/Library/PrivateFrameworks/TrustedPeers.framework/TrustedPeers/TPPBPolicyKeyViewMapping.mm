@interface TPPBPolicyKeyViewMapping
+ (id)TPPBPolicyKeyViewMappingWithView:(id)view matchingRule:(id)rule;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation TPPBPolicyKeyViewMapping

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  matchingRule = self->_matchingRule;
  v6 = fromCopy[1];
  v7 = fromCopy;
  if (matchingRule)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(TPPBDictionaryMatchingRule *)matchingRule mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(TPPBPolicyKeyViewMapping *)self setMatchingRule:?];
  }

  fromCopy = v7;
LABEL_7:
  if (fromCopy[2])
  {
    [(TPPBPolicyKeyViewMapping *)self setView:?];
  }

  MEMORY[0x2821F96F8]();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((matchingRule = self->_matchingRule, !(matchingRule | equalCopy[1])) || -[TPPBDictionaryMatchingRule isEqual:](matchingRule, "isEqual:")))
  {
    view = self->_view;
    if (view | equalCopy[2])
    {
      v7 = [(NSString *)view isEqual:?];
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
  v6 = [(TPPBDictionaryMatchingRule *)self->_matchingRule copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_view copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_matchingRule)
  {
    [toCopy setMatchingRule:?];
    toCopy = v5;
  }

  if (self->_view)
  {
    [v5 setView:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_matchingRule)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_view)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  matchingRule = self->_matchingRule;
  if (matchingRule)
  {
    dictionaryRepresentation = [(TPPBDictionaryMatchingRule *)matchingRule dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"matching_rule"];
  }

  view = self->_view;
  if (view)
  {
    [dictionary setObject:view forKey:@"view"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TPPBPolicyKeyViewMapping;
  v4 = [(TPPBPolicyKeyViewMapping *)&v8 description];
  dictionaryRepresentation = [(TPPBPolicyKeyViewMapping *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

+ (id)TPPBPolicyKeyViewMappingWithView:(id)view matchingRule:(id)rule
{
  ruleCopy = rule;
  viewCopy = view;
  v7 = objc_alloc_init(TPPBPolicyKeyViewMapping);
  [(TPPBPolicyKeyViewMapping *)v7 setView:viewCopy];

  [(TPPBPolicyKeyViewMapping *)v7 setMatchingRule:ruleCopy];

  return v7;
}

@end