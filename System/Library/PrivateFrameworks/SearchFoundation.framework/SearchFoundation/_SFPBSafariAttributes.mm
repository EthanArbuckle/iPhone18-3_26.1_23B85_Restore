@interface _SFPBSafariAttributes
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBSafariAttributes)initWithDictionary:(id)dictionary;
- (_SFPBSafariAttributes)initWithFacade:(id)facade;
- (_SFPBSafariAttributes)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation _SFPBSafariAttributes

- (_SFPBSafariAttributes)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBSafariAttributes *)self init];
  if (v5)
  {
    if ([facadeCopy hasHideReason])
    {
      -[_SFPBSafariAttributes setHideReason:](v5, "setHideReason:", [facadeCopy hideReason]);
    }

    v6 = v5;
  }

  return v5;
}

- (_SFPBSafariAttributes)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = _SFPBSafariAttributes;
  v5 = [(_SFPBSafariAttributes *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"hideReason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSafariAttributes setHideReason:](v5, "setHideReason:", [v6 intValue]);
    }

    v7 = v5;
  }

  return v5;
}

- (_SFPBSafariAttributes)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBSafariAttributes *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBSafariAttributes *)self dictionaryRepresentation];
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
  if (self->_hideReason)
  {
    hideReason = [(_SFPBSafariAttributes *)self hideReason];
    if (hideReason >= 3)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", hideReason];
    }

    else
    {
      v5 = off_1E7ACE548[hideReason];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"hideReason"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    hideReason = self->_hideReason;
    v6 = hideReason == [equalCopy hideReason];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_SFPBSafariAttributes *)self hideReason])
  {
    PBDataWriterWriteInt32Field();
  }
}

@end