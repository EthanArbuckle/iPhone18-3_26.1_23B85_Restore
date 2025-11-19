@interface _SFPBTimeZone
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBTimeZone)initWithDictionary:(id)a3;
- (_SFPBTimeZone)initWithJSON:(id)a3;
- (_SFPBTimeZone)initWithNSTimeZone:(id)a3;
- (id)dictionaryRepresentation;
- (void)setIdentifier:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBTimeZone

- (_SFPBTimeZone)initWithNSTimeZone:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _SFPBTimeZone;
  v5 = [(_SFPBTimeZone *)&v9 init];
  if (v5)
  {
    v6 = [v4 name];
    [(_SFPBTimeZone *)v5 setIdentifier:v6];

    v7 = v5;
  }

  return v5;
}

- (_SFPBTimeZone)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _SFPBTimeZone;
  v5 = [(_SFPBTimeZone *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"identifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBTimeZone *)v5 setIdentifier:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBTimeZone)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBTimeZone *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBTimeZone *)self dictionaryRepresentation];
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
  if (self->_identifier)
  {
    v4 = [(_SFPBTimeZone *)self identifier];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"identifier"];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_SFPBTimeZone *)self identifier];
    v6 = [v4 identifier];
    v7 = v6;
    if ((v5 != 0) != (v6 == 0))
    {
      v8 = [(_SFPBTimeZone *)self identifier];
      if (!v8)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = v8;
      v10 = [(_SFPBTimeZone *)self identifier];
      v11 = [v4 identifier];
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
  v4 = [(_SFPBTimeZone *)self identifier];
  if (v4)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setIdentifier:(id)a3
{
  v4 = [a3 copy];
  identifier = self->_identifier;
  self->_identifier = v4;

  MEMORY[0x1EEE66BB8]();
}

@end