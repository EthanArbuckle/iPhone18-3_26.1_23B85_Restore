@interface BRFieldUserIdentity
+ (id)unknownPersonNameComponents;
- (BOOL)isEqual:(id)a3;
- (BRFieldUserIdentity)initWithCKUserIdentity:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)nameComponentsAcceptUnknownUser:(BOOL)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setNameComponents:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation BRFieldUserIdentity

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BRFieldUserIdentity;
  v4 = [(BRFieldUserIdentity *)&v8 description];
  v5 = [(BRFieldUserIdentity *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  serializedNameComponents = self->_serializedNameComponents;
  if (serializedNameComponents)
  {
    [v3 setObject:serializedNameComponents forKey:@"serializedNameComponents"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  if (self->_serializedNameComponents)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)a3
{
  serializedNameComponents = self->_serializedNameComponents;
  if (serializedNameComponents)
  {
    [a3 setSerializedNameComponents:serializedNameComponents];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_serializedNameComponents copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    serializedNameComponents = self->_serializedNameComponents;
    if (serializedNameComponents | v4[1])
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

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 1))
  {
    [(BRFieldUserIdentity *)self setSerializedNameComponents:?];
  }
}

- (BRFieldUserIdentity)initWithCKUserIdentity:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = BRFieldUserIdentity;
  v5 = [(BRFieldUserIdentity *)&v8 init];
  if (v5)
  {
    v6 = [v4 nameComponents];
    [(BRFieldUserIdentity *)v5 setNameComponents:v6];
  }

  return v5;
}

- (void)setNameComponents:(id)a3
{
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:0];
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

- (id)nameComponentsAcceptUnknownUser:(BOOL)a3
{
  v3 = a3;
  if ([(BRFieldUserIdentity *)self hasSerializedNameComponents])
  {
    v5 = [(BRFieldUserIdentity *)self serializedNameComponents];
    v6 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:0];
  }

  else if (v3)
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