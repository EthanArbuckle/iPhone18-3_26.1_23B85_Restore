@interface _SFPBRFShowMoreOnTap
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBRFShowMoreOnTap)initWithDictionary:(id)a3;
- (_SFPBRFShowMoreOnTap)initWithFacade:(id)a3;
- (_SFPBRFShowMoreOnTap)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (void)setAffordanceLabel:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBRFShowMoreOnTap

- (_SFPBRFShowMoreOnTap)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBRFShowMoreOnTap *)self init];
  if (v5)
  {
    v6 = [v4 affordanceLabel];

    if (v6)
    {
      v7 = [v4 affordanceLabel];
      [(_SFPBRFShowMoreOnTap *)v5 setAffordanceLabel:v7];
    }

    v8 = [v4 shows_without_truncation];

    if (v8)
    {
      v9 = [_SFPBRFOptionalBool alloc];
      v10 = [v4 shows_without_truncation];
      v11 = [(_SFPBRFOptionalBool *)v9 initWithFacade:v10];
      [(_SFPBRFShowMoreOnTap *)v5 setShows_without_truncation:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBRFShowMoreOnTap)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _SFPBRFShowMoreOnTap;
  v5 = [(_SFPBRFShowMoreOnTap *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"affordanceLabel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBRFShowMoreOnTap *)v5 setAffordanceLabel:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"showsWithoutTruncation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBRFOptionalBool alloc] initWithDictionary:v8];
      [(_SFPBRFShowMoreOnTap *)v5 setShows_without_truncation:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBRFShowMoreOnTap)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBRFShowMoreOnTap *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBRFShowMoreOnTap *)self dictionaryRepresentation];
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
  if (self->_affordanceLabel)
  {
    v4 = [(_SFPBRFShowMoreOnTap *)self affordanceLabel];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"affordanceLabel"];
  }

  if (self->_shows_without_truncation)
  {
    v6 = [(_SFPBRFShowMoreOnTap *)self shows_without_truncation];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"showsWithoutTruncation"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"showsWithoutTruncation"];
    }
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

  v5 = [(_SFPBRFShowMoreOnTap *)self affordanceLabel];
  v6 = [v4 affordanceLabel];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_SFPBRFShowMoreOnTap *)self affordanceLabel];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBRFShowMoreOnTap *)self affordanceLabel];
    v10 = [v4 affordanceLabel];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFShowMoreOnTap *)self shows_without_truncation];
  v6 = [v4 shows_without_truncation];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(_SFPBRFShowMoreOnTap *)self shows_without_truncation];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(_SFPBRFShowMoreOnTap *)self shows_without_truncation];
    v15 = [v4 shows_without_truncation];
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
  v4 = [(_SFPBRFShowMoreOnTap *)self affordanceLabel];
  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(_SFPBRFShowMoreOnTap *)self shows_without_truncation];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)setAffordanceLabel:(id)a3
{
  v4 = [a3 copy];
  affordanceLabel = self->_affordanceLabel;
  self->_affordanceLabel = v4;

  MEMORY[0x1EEE66BB8]();
}

@end