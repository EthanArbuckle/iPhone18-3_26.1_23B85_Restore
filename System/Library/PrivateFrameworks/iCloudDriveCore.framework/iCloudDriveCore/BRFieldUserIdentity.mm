@interface BRFieldUserIdentity
+ (id)unknownPersonNameComponents;
- (BOOL)isEqual:(id)equal;
- (BRFieldUserIdentity)initWithCKUserIdentity:(id)identity;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)nameComponentsAcceptUnknownUser:(BOOL)user;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setNameComponents:(id)components;
- (void)writeTo:(id)to;
@end

@implementation BRFieldUserIdentity

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BRFieldUserIdentity;
  v4 = [(BRFieldUserIdentity *)&v8 description];
  dictionaryRepresentation = [(BRFieldUserIdentity *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  serializedNameComponents = self->_serializedNameComponents;
  if (serializedNameComponents)
  {
    [dictionary setObject:serializedNameComponents forKey:@"serializedNameComponents"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  if (self->_serializedNameComponents)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)to
{
  serializedNameComponents = self->_serializedNameComponents;
  if (serializedNameComponents)
  {
    [to setSerializedNameComponents:serializedNameComponents];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_serializedNameComponents copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    serializedNameComponents = self->_serializedNameComponents;
    if (serializedNameComponents | equalCopy[1])
    {
      v6 = [(NSData *)serializedNameComponents isEqual:?];
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

- (void)mergeFrom:(id)from
{
  if (*(from + 1))
  {
    [(BRFieldUserIdentity *)self setSerializedNameComponents:?];
  }
}

- (BRFieldUserIdentity)initWithCKUserIdentity:(id)identity
{
  identityCopy = identity;
  v8.receiver = self;
  v8.super_class = BRFieldUserIdentity;
  v5 = [(BRFieldUserIdentity *)&v8 init];
  if (v5)
  {
    nameComponents = [identityCopy nameComponents];
    [(BRFieldUserIdentity *)v5 setNameComponents:nameComponents];
  }

  return v5;
}

- (void)setNameComponents:(id)components
{
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:components requiringSecureCoding:1 error:0];
  [(BRFieldUserIdentity *)self setSerializedNameComponents:v4];
}

+ (id)unknownPersonNameComponents
{
  v2 = objc_alloc_init(MEMORY[0x277CCAC00]);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = _BRLocalizedStringWithFormat();
  [v2 setGivenName:v4];

  return v2;
}

- (id)nameComponentsAcceptUnknownUser:(BOOL)user
{
  userCopy = user;
  if ([(BRFieldUserIdentity *)self hasSerializedNameComponents])
  {
    serializedNameComponents = [(BRFieldUserIdentity *)self serializedNameComponents];
    v6 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:serializedNameComponents error:0];
  }

  else if (userCopy)
  {
    v6 = +[BRFieldUserIdentity unknownPersonNameComponents];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end