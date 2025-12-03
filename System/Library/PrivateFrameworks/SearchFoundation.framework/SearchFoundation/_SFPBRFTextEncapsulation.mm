@interface _SFPBRFTextEncapsulation
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFTextEncapsulation)initWithDictionary:(id)dictionary;
- (_SFPBRFTextEncapsulation)initWithFacade:(id)facade;
- (_SFPBRFTextEncapsulation)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFTextEncapsulation

- (_SFPBRFTextEncapsulation)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBRFTextEncapsulation *)self init];
  if (v5)
  {
    if ([facadeCopy hasStyle])
    {
      -[_SFPBRFTextEncapsulation setStyle:](v5, "setStyle:", [facadeCopy style]);
    }

    v6 = v5;
  }

  return v5;
}

- (_SFPBRFTextEncapsulation)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = _SFPBRFTextEncapsulation;
  v5 = [(_SFPBRFTextEncapsulation *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"style"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFTextEncapsulation setStyle:](v5, "setStyle:", [v6 intValue]);
    }

    v7 = v5;
  }

  return v5;
}

- (_SFPBRFTextEncapsulation)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFTextEncapsulation *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFTextEncapsulation *)self dictionaryRepresentation];
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
  if (self->_style)
  {
    style = [(_SFPBRFTextEncapsulation *)self style];
    if (style >= 3)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", style];
    }

    else
    {
      v5 = off_1E7ACE548[style];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"style"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    style = self->_style;
    v6 = style == [equalCopy style];
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
  if ([(_SFPBRFTextEncapsulation *)self style])
  {
    PBDataWriterWriteInt32Field();
  }
}

@end