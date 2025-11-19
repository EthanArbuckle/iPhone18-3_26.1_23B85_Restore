@interface TPPBPolicyKeyViewMapping
+ (id)TPPBPolicyKeyViewMappingWithView:(id)a3 matchingRule:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation TPPBPolicyKeyViewMapping

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  matchingRule = self->_matchingRule;
  v6 = v4[1];
  v7 = v4;
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

  v4 = v7;
LABEL_7:
  if (v4[2])
  {
    [(TPPBPolicyKeyViewMapping *)self setView:?];
  }

  MEMORY[0x2821F96F8]();
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((matchingRule = self->_matchingRule, !(matchingRule | v4[1])) || -[TPPBDictionaryMatchingRule isEqual:](matchingRule, "isEqual:")))
  {
    view = self->_view;
    if (view | v4[2])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(TPPBDictionaryMatchingRule *)self->_matchingRule copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_view copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_matchingRule)
  {
    [v4 setMatchingRule:?];
    v4 = v5;
  }

  if (self->_view)
  {
    [v5 setView:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_matchingRule)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_view)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  matchingRule = self->_matchingRule;
  if (matchingRule)
  {
    v5 = [(TPPBDictionaryMatchingRule *)matchingRule dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"matching_rule"];
  }

  view = self->_view;
  if (view)
  {
    [v3 setObject:view forKey:@"view"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TPPBPolicyKeyViewMapping;
  v4 = [(TPPBPolicyKeyViewMapping *)&v8 description];
  v5 = [(TPPBPolicyKeyViewMapping *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

+ (id)TPPBPolicyKeyViewMappingWithView:(id)a3 matchingRule:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(TPPBPolicyKeyViewMapping);
  [(TPPBPolicyKeyViewMapping *)v7 setView:v6];

  [(TPPBPolicyKeyViewMapping *)v7 setMatchingRule:v5];

  return v7;
}

@end