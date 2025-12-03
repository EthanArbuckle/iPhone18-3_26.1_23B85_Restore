@interface TPPBPolicyModelToCategory
+ (id)TPPBPolicyModelToCategoryWithPrefix:(id)prefix category:(id)category;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation TPPBPolicyModelToCategory

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[2])
  {
    [(TPPBPolicyModelToCategory *)self setPrefix:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(TPPBPolicyModelToCategory *)self setCategory:?];
    fromCopy = v5;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((prefix = self->_prefix, !(prefix | equalCopy[2])) || -[NSString isEqual:](prefix, "isEqual:")))
  {
    category = self->_category;
    if (category | equalCopy[1])
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_prefix copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_category copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_prefix)
  {
    [toCopy setPrefix:?];
    toCopy = v5;
  }

  if (self->_category)
  {
    [v5 setCategory:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_prefix)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_category)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  prefix = self->_prefix;
  if (prefix)
  {
    [dictionary setObject:prefix forKey:@"prefix"];
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
  dictionaryRepresentation = [(TPPBPolicyModelToCategory *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

+ (id)TPPBPolicyModelToCategoryWithPrefix:(id)prefix category:(id)category
{
  categoryCopy = category;
  prefixCopy = prefix;
  v7 = objc_alloc_init(TPPBPolicyModelToCategory);
  [(TPPBPolicyModelToCategory *)v7 setPrefix:prefixCopy];

  [(TPPBPolicyModelToCategory *)v7 setCategory:categoryCopy];

  return v7;
}

@end