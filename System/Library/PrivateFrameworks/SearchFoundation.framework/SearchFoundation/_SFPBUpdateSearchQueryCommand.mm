@interface _SFPBUpdateSearchQueryCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBUpdateSearchQueryCommand)initWithDictionary:(id)dictionary;
- (_SFPBUpdateSearchQueryCommand)initWithFacade:(id)facade;
- (_SFPBUpdateSearchQueryCommand)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)setSearchString:(id)string;
- (void)writeTo:(id)to;
@end

@implementation _SFPBUpdateSearchQueryCommand

- (_SFPBUpdateSearchQueryCommand)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBUpdateSearchQueryCommand *)self init];
  if (v5)
  {
    searchString = [facadeCopy searchString];

    if (searchString)
    {
      searchString2 = [facadeCopy searchString];
      [(_SFPBUpdateSearchQueryCommand *)v5 setSearchString:searchString2];
    }

    if ([facadeCopy hasQuerySource])
    {
      -[_SFPBUpdateSearchQueryCommand setQuerySource:](v5, "setQuerySource:", [facadeCopy querySource]);
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBUpdateSearchQueryCommand)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = _SFPBUpdateSearchQueryCommand;
  v5 = [(_SFPBUpdateSearchQueryCommand *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"searchString"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBUpdateSearchQueryCommand *)v5 setSearchString:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"querySource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBUpdateSearchQueryCommand setQuerySource:](v5, "setQuerySource:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (_SFPBUpdateSearchQueryCommand)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBUpdateSearchQueryCommand *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBUpdateSearchQueryCommand *)self dictionaryRepresentation];
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
  if (self->_querySource)
  {
    querySource = [(_SFPBUpdateSearchQueryCommand *)self querySource];
    if (querySource >= 3)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", querySource];
    }

    else
    {
      v5 = off_1E7ACE548[querySource];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"querySource"];
  }

  if (self->_searchString)
  {
    searchString = [(_SFPBUpdateSearchQueryCommand *)self searchString];
    v7 = [searchString copy];
    [dictionary setObject:v7 forKeyedSubscript:@"searchString"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    searchString = [(_SFPBUpdateSearchQueryCommand *)self searchString];
    searchString2 = [equalCopy searchString];
    v7 = searchString2;
    if ((searchString != 0) != (searchString2 == 0))
    {
      searchString3 = [(_SFPBUpdateSearchQueryCommand *)self searchString];
      if (!searchString3)
      {

LABEL_10:
        querySource = self->_querySource;
        v13 = querySource == [equalCopy querySource];
        goto LABEL_8;
      }

      v9 = searchString3;
      searchString4 = [(_SFPBUpdateSearchQueryCommand *)self searchString];
      searchString5 = [equalCopy searchString];
      v12 = [searchString4 isEqual:searchString5];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  searchString = [(_SFPBUpdateSearchQueryCommand *)self searchString];
  if (searchString)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBUpdateSearchQueryCommand *)self querySource])
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)setSearchString:(id)string
{
  v4 = [string copy];
  searchString = self->_searchString;
  self->_searchString = v4;

  MEMORY[0x1EEE66BB8]();
}

@end