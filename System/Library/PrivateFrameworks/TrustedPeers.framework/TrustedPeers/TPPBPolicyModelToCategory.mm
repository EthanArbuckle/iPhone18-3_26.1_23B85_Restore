@interface TPPBPolicyModelToCategory
+ (id)TPPBPolicyModelToCategoryWithPrefix:(id)a3 category:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation TPPBPolicyModelToCategory

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(TPPBPolicyModelToCategory *)self setPrefix:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(TPPBPolicyModelToCategory *)self setCategory:?];
    v4 = v5;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((prefix = self->_prefix, !(prefix | v4[2])) || -[NSString isEqual:](prefix, "isEqual:")))
  {
    category = self->_category;
    if (category | v4[1])
    {
      v7 = [(NSString *)category isEqual:?];
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
  v6 = [(NSString *)self->_prefix copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_category copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_prefix)
  {
    [v4 setPrefix:?];
    v4 = v5;
  }

  if (self->_category)
  {
    [v5 setCategory:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_prefix)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_category)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  prefix = self->_prefix;
  if (prefix)
  {
    [v3 setObject:prefix forKey:@"prefix"];
  }

  category = self->_category;
  if (category)
  {
    [v4 setObject:category forKey:@"category"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TPPBPolicyModelToCategory;
  v4 = [(TPPBPolicyModelToCategory *)&v8 description];
  v5 = [(TPPBPolicyModelToCategory *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

+ (id)TPPBPolicyModelToCategoryWithPrefix:(id)a3 category:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(TPPBPolicyModelToCategory);
  [(TPPBPolicyModelToCategory *)v7 setPrefix:v6];

  [(TPPBPolicyModelToCategory *)v7 setCategory:v5];

  return v7;
}

@end