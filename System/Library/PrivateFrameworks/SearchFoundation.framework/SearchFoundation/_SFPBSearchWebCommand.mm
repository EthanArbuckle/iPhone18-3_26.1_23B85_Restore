@interface _SFPBSearchWebCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBSearchWebCommand)initWithDictionary:(id)dictionary;
- (_SFPBSearchWebCommand)initWithFacade:(id)facade;
- (_SFPBSearchWebCommand)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)setSearchString:(id)string;
- (void)writeTo:(id)to;
@end

@implementation _SFPBSearchWebCommand

- (_SFPBSearchWebCommand)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBSearchWebCommand *)self init];
  if (v5)
  {
    searchString = [facadeCopy searchString];

    if (searchString)
    {
      searchString2 = [facadeCopy searchString];
      [(_SFPBSearchWebCommand *)v5 setSearchString:searchString2];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBSearchWebCommand)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = _SFPBSearchWebCommand;
  v5 = [(_SFPBSearchWebCommand *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"searchString"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBSearchWebCommand *)v5 setSearchString:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBSearchWebCommand)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBSearchWebCommand *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBSearchWebCommand *)self dictionaryRepresentation];
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
  if (self->_searchString)
  {
    searchString = [(_SFPBSearchWebCommand *)self searchString];
    v5 = [searchString copy];
    [dictionary setObject:v5 forKeyedSubscript:@"searchString"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    searchString = [(_SFPBSearchWebCommand *)self searchString];
    searchString2 = [equalCopy searchString];
    v7 = searchString2;
    if ((searchString != 0) != (searchString2 == 0))
    {
      searchString3 = [(_SFPBSearchWebCommand *)self searchString];
      if (!searchString3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = searchString3;
      searchString4 = [(_SFPBSearchWebCommand *)self searchString];
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
  searchString = [(_SFPBSearchWebCommand *)self searchString];
  if (searchString)
  {
    PBDataWriterWriteStringField();
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