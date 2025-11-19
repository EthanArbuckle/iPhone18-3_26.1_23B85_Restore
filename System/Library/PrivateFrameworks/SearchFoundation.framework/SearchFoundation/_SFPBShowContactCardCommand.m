@interface _SFPBShowContactCardCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBShowContactCardCommand)initWithDictionary:(id)a3;
- (_SFPBShowContactCardCommand)initWithFacade:(id)a3;
- (_SFPBShowContactCardCommand)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setContactIdentifier:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBShowContactCardCommand

- (_SFPBShowContactCardCommand)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBShowContactCardCommand *)self init];
  if (v5)
  {
    v6 = [v4 contactIdentifier];

    if (v6)
    {
      v7 = [v4 contactIdentifier];
      [(_SFPBShowContactCardCommand *)v5 setContactIdentifier:v7];
    }

    if ([v4 hasIsSuggestedContact])
    {
      -[_SFPBShowContactCardCommand setIsSuggestedContact:](v5, "setIsSuggestedContact:", [v4 isSuggestedContact]);
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBShowContactCardCommand)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _SFPBShowContactCardCommand;
  v5 = [(_SFPBShowContactCardCommand *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"contactIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBShowContactCardCommand *)v5 setContactIdentifier:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"isSuggestedContact"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBShowContactCardCommand setIsSuggestedContact:](v5, "setIsSuggestedContact:", [v8 BOOLValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (_SFPBShowContactCardCommand)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBShowContactCardCommand *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBShowContactCardCommand *)self dictionaryRepresentation];
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
  if (self->_contactIdentifier)
  {
    v4 = [(_SFPBShowContactCardCommand *)self contactIdentifier];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"contactIdentifier"];
  }

  if (self->_isSuggestedContact)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBShowContactCardCommand isSuggestedContact](self, "isSuggestedContact")}];
    [v3 setObject:v6 forKeyedSubscript:@"isSuggestedContact"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_contactIdentifier hash];
  v4 = 2654435761;
  if (!self->_isSuggestedContact)
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_SFPBShowContactCardCommand *)self contactIdentifier];
    v6 = [v4 contactIdentifier];
    v7 = v6;
    if ((v5 != 0) != (v6 == 0))
    {
      v8 = [(_SFPBShowContactCardCommand *)self contactIdentifier];
      if (!v8)
      {

LABEL_10:
        isSuggestedContact = self->_isSuggestedContact;
        v13 = isSuggestedContact == [v4 isSuggestedContact];
        goto LABEL_8;
      }

      v9 = v8;
      v10 = [(_SFPBShowContactCardCommand *)self contactIdentifier];
      v11 = [v4 contactIdentifier];
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
  v4 = [(_SFPBShowContactCardCommand *)self contactIdentifier];
  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBShowContactCardCommand *)self isSuggestedContact])
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)setContactIdentifier:(id)a3
{
  v4 = [a3 copy];
  contactIdentifier = self->_contactIdentifier;
  self->_contactIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

@end