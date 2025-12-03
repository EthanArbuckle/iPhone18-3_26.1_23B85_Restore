@interface SFAppEntityAnnotation
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFAppEntityAnnotation)initWithCoder:(id)coder;
- (SFAppEntityAnnotation)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFAppEntityAnnotation

- (SFAppEntityAnnotation)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v12.receiver = self;
  v12.super_class = SFAppEntityAnnotation;
  v5 = [(SFAppEntityAnnotation *)&v12 init];
  if (v5)
  {
    typeIdentifer = [protobufCopy typeIdentifer];

    if (typeIdentifer)
    {
      typeIdentifer2 = [protobufCopy typeIdentifer];
      [(SFAppEntityAnnotation *)v5 setTypeIdentifer:typeIdentifer2];
    }

    entityIdentifer = [protobufCopy entityIdentifer];

    if (entityIdentifer)
    {
      entityIdentifer2 = [protobufCopy entityIdentifer];
      [(SFAppEntityAnnotation *)v5 setEntityIdentifer:entityIdentifer2];
    }

    v10 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  typeIdentifer = [(SFAppEntityAnnotation *)self typeIdentifer];
  v4 = [typeIdentifer hash];
  entityIdentifer = [(SFAppEntityAnnotation *)self entityIdentifer];
  v6 = [entityIdentifer hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFAppEntityAnnotation *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      typeIdentifer = [(SFAppEntityAnnotation *)self typeIdentifer];
      typeIdentifer2 = [(SFAppEntityAnnotation *)v6 typeIdentifer];
      if ((typeIdentifer != 0) == (typeIdentifer2 == 0))
      {
        v11 = 0;
LABEL_19:

        goto LABEL_20;
      }

      typeIdentifer3 = [(SFAppEntityAnnotation *)self typeIdentifer];
      if (typeIdentifer3)
      {
        typeIdentifer4 = [(SFAppEntityAnnotation *)self typeIdentifer];
        typeIdentifer5 = [(SFAppEntityAnnotation *)v6 typeIdentifer];
        if (![typeIdentifer4 isEqual:typeIdentifer5])
        {
          v11 = 0;
LABEL_17:

LABEL_18:
          goto LABEL_19;
        }

        v21 = typeIdentifer5;
      }

      entityIdentifer = [(SFAppEntityAnnotation *)self entityIdentifer];
      entityIdentifer2 = [(SFAppEntityAnnotation *)v6 entityIdentifer];
      v14 = entityIdentifer2;
      if ((entityIdentifer != 0) == (entityIdentifer2 == 0))
      {

        v11 = 0;
      }

      else
      {
        entityIdentifer3 = [(SFAppEntityAnnotation *)self entityIdentifer];
        if (entityIdentifer3)
        {
          v16 = entityIdentifer3;
          entityIdentifer4 = [(SFAppEntityAnnotation *)self entityIdentifer];
          [(SFAppEntityAnnotation *)v6 entityIdentifer];
          v17 = v20 = typeIdentifer4;
          v11 = [entityIdentifer4 isEqual:v17];

          typeIdentifer4 = v20;
        }

        else
        {

          v11 = 1;
        }
      }

      typeIdentifer5 = v21;
      if (!typeIdentifer3)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v11 = 0;
  }

LABEL_20:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  typeIdentifer = [(SFAppEntityAnnotation *)self typeIdentifer];
  v6 = [typeIdentifer copy];
  [v4 setTypeIdentifer:v6];

  entityIdentifer = [(SFAppEntityAnnotation *)self entityIdentifer];
  v8 = [entityIdentifer copy];
  [v4 setEntityIdentifer:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBAppEntityAnnotation alloc] initWithFacade:self];
  jsonData = [(_SFPBAppEntityAnnotation *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBAppEntityAnnotation alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBAppEntityAnnotation *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBAppEntityAnnotation alloc] initWithFacade:self];
  data = [(_SFPBAppEntityAnnotation *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFAppEntityAnnotation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBAppEntityAnnotation alloc] initWithData:v5];
  v7 = [(SFAppEntityAnnotation *)self initWithProtobuf:v6];

  return v7;
}

@end