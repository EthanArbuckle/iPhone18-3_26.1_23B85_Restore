@interface _SFPBContactCopyItem
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBContactCopyItem)initWithDictionary:(id)a3;
- (_SFPBContactCopyItem)initWithFacade:(id)a3;
- (_SFPBContactCopyItem)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBContactCopyItem

- (_SFPBContactCopyItem)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBContactCopyItem *)self init];
  if (v5)
  {
    v6 = [v4 person];

    if (v6)
    {
      v7 = [_SFPBPerson alloc];
      v8 = [v4 person];
      v9 = [(_SFPBPerson *)v7 initWithFacade:v8];
      [(_SFPBContactCopyItem *)v5 setPerson:v9];
    }

    v10 = [v4 contactFileLocation];

    if (v10)
    {
      v11 = [_SFPBURL alloc];
      v12 = [v4 contactFileLocation];
      v13 = [(_SFPBURL *)v11 initWithNSURL:v12];
      [(_SFPBContactCopyItem *)v5 setContactFileLocation:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (_SFPBContactCopyItem)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _SFPBContactCopyItem;
  v5 = [(_SFPBContactCopyItem *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"person"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBPerson alloc] initWithDictionary:v6];
      [(_SFPBContactCopyItem *)v5 setPerson:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"contactFileLocation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBURL alloc] initWithDictionary:v8];
      [(_SFPBContactCopyItem *)v5 setContactFileLocation:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBContactCopyItem)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBContactCopyItem *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBContactCopyItem *)self dictionaryRepresentation];
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
  if (self->_contactFileLocation)
  {
    v4 = [(_SFPBContactCopyItem *)self contactFileLocation];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"contactFileLocation"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"contactFileLocation"];
    }
  }

  if (self->_person)
  {
    v7 = [(_SFPBContactCopyItem *)self person];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"person"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"person"];
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

  v5 = [(_SFPBContactCopyItem *)self person];
  v6 = [v4 person];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_SFPBContactCopyItem *)self person];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBContactCopyItem *)self person];
    v10 = [v4 person];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_SFPBContactCopyItem *)self contactFileLocation];
  v6 = [v4 contactFileLocation];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(_SFPBContactCopyItem *)self contactFileLocation];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(_SFPBContactCopyItem *)self contactFileLocation];
    v15 = [v4 contactFileLocation];
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
  v4 = [(_SFPBContactCopyItem *)self person];
  if (v4)
  {
    PBDataWriterWriteSubmessage();
  }

  v5 = [(_SFPBContactCopyItem *)self contactFileLocation];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }
}

@end