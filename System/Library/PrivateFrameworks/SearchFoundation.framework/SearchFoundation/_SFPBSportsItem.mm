@interface _SFPBSportsItem
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBSportsItem)initWithDictionary:(id)a3;
- (_SFPBSportsItem)initWithFacade:(id)a3;
- (_SFPBSportsItem)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (void)setIdentifier:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBSportsItem

- (_SFPBSportsItem)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBSportsItem *)self init];
  if (v5)
  {
    if ([v4 hasType])
    {
      -[_SFPBSportsItem setType:](v5, "setType:", [v4 type]);
    }

    v6 = [v4 identifier];

    if (v6)
    {
      v7 = [v4 identifier];
      [(_SFPBSportsItem *)v5 setIdentifier:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBSportsItem)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _SFPBSportsItem;
  v5 = [(_SFPBSportsItem *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSportsItem setType:](v5, "setType:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"identifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(_SFPBSportsItem *)v5 setIdentifier:v8];
    }

    v9 = v5;
  }

  return v5;
}

- (_SFPBSportsItem)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBSportsItem *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBSportsItem *)self dictionaryRepresentation];
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
    v4 = [(_SFPBSportsItem *)self identifier];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"identifier"];
  }

  if (self->_type)
  {
    v6 = [(_SFPBSportsItem *)self type];
    if (v6 >= 4)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
    }

    else
    {
      v7 = off_1E7ACE560[v6];
    }

    [v3 setObject:v7 forKeyedSubscript:@"type"];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    type = self->_type;
    if (type == [v4 type])
    {
      v6 = [(_SFPBSportsItem *)self identifier];
      v7 = [v4 identifier];
      v8 = v7;
      if ((v6 != 0) != (v7 == 0))
      {
        v9 = [(_SFPBSportsItem *)self identifier];
        if (!v9)
        {

LABEL_11:
          v14 = 1;
          goto LABEL_9;
        }

        v10 = v9;
        v11 = [(_SFPBSportsItem *)self identifier];
        v12 = [v4 identifier];
        v13 = [v11 isEqual:v12];

        if (v13)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }
    }
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  if ([(_SFPBSportsItem *)self type])
  {
    PBDataWriterWriteInt32Field();
  }

  v4 = [(_SFPBSportsItem *)self identifier];
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