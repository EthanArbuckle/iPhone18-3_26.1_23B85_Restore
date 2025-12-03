@interface _SFPBAppEntityAnnotation
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBAppEntityAnnotation)initWithDictionary:(id)dictionary;
- (_SFPBAppEntityAnnotation)initWithFacade:(id)facade;
- (_SFPBAppEntityAnnotation)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)setEntityIdentifer:(id)identifer;
- (void)setTypeIdentifer:(id)identifer;
- (void)writeTo:(id)to;
@end

@implementation _SFPBAppEntityAnnotation

- (_SFPBAppEntityAnnotation)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBAppEntityAnnotation *)self init];
  if (v5)
  {
    typeIdentifer = [facadeCopy typeIdentifer];

    if (typeIdentifer)
    {
      typeIdentifer2 = [facadeCopy typeIdentifer];
      [(_SFPBAppEntityAnnotation *)v5 setTypeIdentifer:typeIdentifer2];
    }

    entityIdentifer = [facadeCopy entityIdentifer];

    if (entityIdentifer)
    {
      entityIdentifer2 = [facadeCopy entityIdentifer];
      [(_SFPBAppEntityAnnotation *)v5 setEntityIdentifer:entityIdentifer2];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBAppEntityAnnotation)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = _SFPBAppEntityAnnotation;
  v5 = [(_SFPBAppEntityAnnotation *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"typeIdentifer"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBAppEntityAnnotation *)v5 setTypeIdentifer:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"entityIdentifer"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBAppEntityAnnotation *)v5 setEntityIdentifer:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBAppEntityAnnotation)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBAppEntityAnnotation *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBAppEntityAnnotation *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_entityIdentifer)
  {
    entityIdentifer = [(_SFPBAppEntityAnnotation *)self entityIdentifer];
    v5 = [entityIdentifer copy];
    [dictionary setObject:v5 forKeyedSubscript:@"entityIdentifer"];
  }

  if (self->_typeIdentifer)
  {
    typeIdentifer = [(_SFPBAppEntityAnnotation *)self typeIdentifer];
    v7 = [typeIdentifer copy];
    [dictionary setObject:v7 forKeyedSubscript:@"typeIdentifer"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  typeIdentifer = [(_SFPBAppEntityAnnotation *)self typeIdentifer];
  typeIdentifer2 = [equalCopy typeIdentifer];
  if ((typeIdentifer != 0) == (typeIdentifer2 == 0))
  {
    goto LABEL_11;
  }

  typeIdentifer3 = [(_SFPBAppEntityAnnotation *)self typeIdentifer];
  if (typeIdentifer3)
  {
    v8 = typeIdentifer3;
    typeIdentifer4 = [(_SFPBAppEntityAnnotation *)self typeIdentifer];
    typeIdentifer5 = [equalCopy typeIdentifer];
    v11 = [typeIdentifer4 isEqual:typeIdentifer5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  typeIdentifer = [(_SFPBAppEntityAnnotation *)self entityIdentifer];
  typeIdentifer2 = [equalCopy entityIdentifer];
  if ((typeIdentifer != 0) != (typeIdentifer2 == 0))
  {
    entityIdentifer = [(_SFPBAppEntityAnnotation *)self entityIdentifer];
    if (!entityIdentifer)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = entityIdentifer;
    entityIdentifer2 = [(_SFPBAppEntityAnnotation *)self entityIdentifer];
    entityIdentifer3 = [equalCopy entityIdentifer];
    v16 = [entityIdentifer2 isEqual:entityIdentifer3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  typeIdentifer = [(_SFPBAppEntityAnnotation *)self typeIdentifer];
  if (typeIdentifer)
  {
    PBDataWriterWriteStringField();
  }

  entityIdentifer = [(_SFPBAppEntityAnnotation *)self entityIdentifer];
  if (entityIdentifer)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setEntityIdentifer:(id)identifer
{
  v4 = [identifer copy];
  entityIdentifer = self->_entityIdentifer;
  self->_entityIdentifer = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setTypeIdentifer:(id)identifer
{
  v4 = [identifer copy];
  typeIdentifer = self->_typeIdentifer;
  self->_typeIdentifer = v4;

  MEMORY[0x1EEE66BB8]();
}

@end