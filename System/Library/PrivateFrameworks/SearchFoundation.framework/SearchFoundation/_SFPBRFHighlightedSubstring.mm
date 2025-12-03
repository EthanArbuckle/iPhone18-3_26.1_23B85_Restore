@interface _SFPBRFHighlightedSubstring
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFHighlightedSubstring)initWithDictionary:(id)dictionary;
- (_SFPBRFHighlightedSubstring)initWithFacade:(id)facade;
- (_SFPBRFHighlightedSubstring)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)setSubstring:(id)substring;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFHighlightedSubstring

- (_SFPBRFHighlightedSubstring)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBRFHighlightedSubstring *)self init];
  if (v5)
  {
    substring = [facadeCopy substring];

    if (substring)
    {
      substring2 = [facadeCopy substring];
      [(_SFPBRFHighlightedSubstring *)v5 setSubstring:substring2];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBRFHighlightedSubstring)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = _SFPBRFHighlightedSubstring;
  v5 = [(_SFPBRFHighlightedSubstring *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"substring"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBRFHighlightedSubstring *)v5 setSubstring:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBRFHighlightedSubstring)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFHighlightedSubstring *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFHighlightedSubstring *)self dictionaryRepresentation];
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
  if (self->_substring)
  {
    substring = [(_SFPBRFHighlightedSubstring *)self substring];
    v5 = [substring copy];
    [dictionary setObject:v5 forKeyedSubscript:@"substring"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    substring = [(_SFPBRFHighlightedSubstring *)self substring];
    substring2 = [equalCopy substring];
    v7 = substring2;
    if ((substring != 0) != (substring2 == 0))
    {
      substring3 = [(_SFPBRFHighlightedSubstring *)self substring];
      if (!substring3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = substring3;
      substring4 = [(_SFPBRFHighlightedSubstring *)self substring];
      substring5 = [equalCopy substring];
      v12 = [substring4 isEqual:substring5];

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
  substring = [(_SFPBRFHighlightedSubstring *)self substring];
  if (substring)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setSubstring:(id)substring
{
  v4 = [substring copy];
  substring = self->_substring;
  self->_substring = v4;

  MEMORY[0x1EEE66BB8]();
}

@end