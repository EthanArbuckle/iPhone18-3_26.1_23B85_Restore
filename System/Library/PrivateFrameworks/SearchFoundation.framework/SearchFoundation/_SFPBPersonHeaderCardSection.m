@interface _SFPBPersonHeaderCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBPersonHeaderCardSection)initWithDictionary:(id)a3;
- (_SFPBPersonHeaderCardSection)initWithFacade:(id)a3;
- (_SFPBPersonHeaderCardSection)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBPersonHeaderCardSection

- (_SFPBPersonHeaderCardSection)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBPersonHeaderCardSection *)self init];
  if (v5)
  {
    v6 = [v4 person];

    if (v6)
    {
      v7 = [_SFPBPerson alloc];
      v8 = [v4 person];
      v9 = [(_SFPBPerson *)v7 initWithFacade:v8];
      [(_SFPBPersonHeaderCardSection *)v5 setPerson:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBPersonHeaderCardSection)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _SFPBPersonHeaderCardSection;
  v5 = [(_SFPBPersonHeaderCardSection *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"person"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBPerson alloc] initWithDictionary:v6];
      [(_SFPBPersonHeaderCardSection *)v5 setPerson:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBPersonHeaderCardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBPersonHeaderCardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBPersonHeaderCardSection *)self dictionaryRepresentation];
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
  if (self->_person)
  {
    v4 = [(_SFPBPersonHeaderCardSection *)self person];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"person"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"person"];
    }
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_SFPBPersonHeaderCardSection *)self person];
    v6 = [v4 person];
    v7 = v6;
    if ((v5 != 0) != (v6 == 0))
    {
      v8 = [(_SFPBPersonHeaderCardSection *)self person];
      if (!v8)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = v8;
      v10 = [(_SFPBPersonHeaderCardSection *)self person];
      v11 = [v4 person];
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
  v4 = [(_SFPBPersonHeaderCardSection *)self person];
  if (v4)
  {
    PBDataWriterWriteSubmessage();
  }
}

@end