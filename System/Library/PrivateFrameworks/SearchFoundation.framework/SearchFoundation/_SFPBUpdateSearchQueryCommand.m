@interface _SFPBUpdateSearchQueryCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBUpdateSearchQueryCommand)initWithDictionary:(id)a3;
- (_SFPBUpdateSearchQueryCommand)initWithFacade:(id)a3;
- (_SFPBUpdateSearchQueryCommand)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (void)setSearchString:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBUpdateSearchQueryCommand

- (_SFPBUpdateSearchQueryCommand)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBUpdateSearchQueryCommand *)self init];
  if (v5)
  {
    v6 = [v4 searchString];

    if (v6)
    {
      v7 = [v4 searchString];
      [(_SFPBUpdateSearchQueryCommand *)v5 setSearchString:v7];
    }

    if ([v4 hasQuerySource])
    {
      -[_SFPBUpdateSearchQueryCommand setQuerySource:](v5, "setQuerySource:", [v4 querySource]);
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBUpdateSearchQueryCommand)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _SFPBUpdateSearchQueryCommand;
  v5 = [(_SFPBUpdateSearchQueryCommand *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"searchString"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBUpdateSearchQueryCommand *)v5 setSearchString:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"querySource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBUpdateSearchQueryCommand setQuerySource:](v5, "setQuerySource:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (_SFPBUpdateSearchQueryCommand)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBUpdateSearchQueryCommand *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBUpdateSearchQueryCommand *)self dictionaryRepresentation];
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
  if (self->_querySource)
  {
    v4 = [(_SFPBUpdateSearchQueryCommand *)self querySource];
    if (v4 >= 3)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    else
    {
      v5 = off_1E7ACE548[v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"querySource"];
  }

  if (self->_searchString)
  {
    v6 = [(_SFPBUpdateSearchQueryCommand *)self searchString];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"searchString"];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_SFPBUpdateSearchQueryCommand *)self searchString];
    v6 = [v4 searchString];
    v7 = v6;
    if ((v5 != 0) != (v6 == 0))
    {
      v8 = [(_SFPBUpdateSearchQueryCommand *)self searchString];
      if (!v8)
      {

LABEL_10:
        querySource = self->_querySource;
        v13 = querySource == [v4 querySource];
        goto LABEL_8;
      }

      v9 = v8;
      v10 = [(_SFPBUpdateSearchQueryCommand *)self searchString];
      v11 = [v4 searchString];
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
  v4 = [(_SFPBUpdateSearchQueryCommand *)self searchString];
  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBUpdateSearchQueryCommand *)self querySource])
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)setSearchString:(id)a3
{
  v4 = [a3 copy];
  searchString = self->_searchString;
  self->_searchString = v4;

  MEMORY[0x1EEE66BB8]();
}

@end