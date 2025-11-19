@interface _SFPBAppEntityAnnotation
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBAppEntityAnnotation)initWithDictionary:(id)a3;
- (_SFPBAppEntityAnnotation)initWithFacade:(id)a3;
- (_SFPBAppEntityAnnotation)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (void)setEntityIdentifer:(id)a3;
- (void)setTypeIdentifer:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBAppEntityAnnotation

- (_SFPBAppEntityAnnotation)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBAppEntityAnnotation *)self init];
  if (v5)
  {
    v6 = [v4 typeIdentifer];

    if (v6)
    {
      v7 = [v4 typeIdentifer];
      [(_SFPBAppEntityAnnotation *)v5 setTypeIdentifer:v7];
    }

    v8 = [v4 entityIdentifer];

    if (v8)
    {
      v9 = [v4 entityIdentifer];
      [(_SFPBAppEntityAnnotation *)v5 setEntityIdentifer:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBAppEntityAnnotation)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _SFPBAppEntityAnnotation;
  v5 = [(_SFPBAppEntityAnnotation *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"typeIdentifer"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBAppEntityAnnotation *)v5 setTypeIdentifer:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"entityIdentifer"];
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

- (_SFPBAppEntityAnnotation)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBAppEntityAnnotation *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBAppEntityAnnotation *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_entityIdentifer)
  {
    v4 = [(_SFPBAppEntityAnnotation *)self entityIdentifer];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"entityIdentifer"];
  }

  if (self->_typeIdentifer)
  {
    v6 = [(_SFPBAppEntityAnnotation *)self typeIdentifer];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"typeIdentifer"];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(_SFPBAppEntityAnnotation *)self typeIdentifer];
  v6 = [v4 typeIdentifer];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_SFPBAppEntityAnnotation *)self typeIdentifer];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBAppEntityAnnotation *)self typeIdentifer];
    v10 = [v4 typeIdentifer];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_SFPBAppEntityAnnotation *)self entityIdentifer];
  v6 = [v4 entityIdentifer];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(_SFPBAppEntityAnnotation *)self entityIdentifer];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(_SFPBAppEntityAnnotation *)self entityIdentifer];
    v15 = [v4 entityIdentifer];
    v16 = [v14 isEqual:v15];

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

- (void)writeTo:(id)a3
{
  v6 = a3;
  v4 = [(_SFPBAppEntityAnnotation *)self typeIdentifer];
  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(_SFPBAppEntityAnnotation *)self entityIdentifer];
  if (v5)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setEntityIdentifer:(id)a3
{
  v4 = [a3 copy];
  entityIdentifer = self->_entityIdentifer;
  self->_entityIdentifer = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setTypeIdentifer:(id)a3
{
  v4 = [a3 copy];
  typeIdentifer = self->_typeIdentifer;
  self->_typeIdentifer = v4;

  MEMORY[0x1EEE66BB8]();
}

@end