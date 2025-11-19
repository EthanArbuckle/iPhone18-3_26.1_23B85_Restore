@interface _SFPBCallCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBCallCommand)initWithDictionary:(id)a3;
- (_SFPBCallCommand)initWithFacade:(id)a3;
- (_SFPBCallCommand)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (void)setPhoneNumber:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBCallCommand

- (_SFPBCallCommand)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBCallCommand *)self init];
  if (v5)
  {
    v6 = [v4 phoneNumber];

    if (v6)
    {
      v7 = [v4 phoneNumber];
      [(_SFPBCallCommand *)v5 setPhoneNumber:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBCallCommand)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _SFPBCallCommand;
  v5 = [(_SFPBCallCommand *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"phoneNumber"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBCallCommand *)v5 setPhoneNumber:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBCallCommand)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBCallCommand *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBCallCommand *)self dictionaryRepresentation];
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
  if (self->_phoneNumber)
  {
    v4 = [(_SFPBCallCommand *)self phoneNumber];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"phoneNumber"];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_SFPBCallCommand *)self phoneNumber];
    v6 = [v4 phoneNumber];
    v7 = v6;
    if ((v5 != 0) != (v6 == 0))
    {
      v8 = [(_SFPBCallCommand *)self phoneNumber];
      if (!v8)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = v8;
      v10 = [(_SFPBCallCommand *)self phoneNumber];
      v11 = [v4 phoneNumber];
      v12 = [v10 isEqual:v11];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  v4 = [(_SFPBCallCommand *)self phoneNumber];
  if (v4)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setPhoneNumber:(id)a3
{
  v4 = [a3 copy];
  phoneNumber = self->_phoneNumber;
  self->_phoneNumber = v4;

  MEMORY[0x1EEE66BB8]();
}

@end