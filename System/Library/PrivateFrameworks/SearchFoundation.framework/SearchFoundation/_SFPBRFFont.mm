@interface _SFPBRFFont
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFFont)initWithDictionary:(id)dictionary;
- (_SFPBRFFont)initWithFacade:(id)facade;
- (_SFPBRFFont)initWithJSON:(id)n;
- (_SFPBRFFont_RFSystemFont)system;
- (id)dictionaryRepresentation;
- (int)name;
- (unint64_t)hash;
- (void)setName:(int)name;
- (void)setSystem:(id)system;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFFont

- (_SFPBRFFont)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBRFFont *)self init];
  if (v5)
  {
    if ([facadeCopy hasName])
    {
      -[_SFPBRFFont setName:](v5, "setName:", [facadeCopy name]);
    }

    if ([facadeCopy hasSystem])
    {
      system = [facadeCopy system];

      if (system)
      {
        v7 = [_SFPBRFFont_RFSystemFont alloc];
        system2 = [facadeCopy system];
        v9 = [(_SFPBRFFont_RFSystemFont *)v7 initWithFacade:system2];
        [(_SFPBRFFont *)v5 setSystem:v9];
      }
    }

    if ([facadeCopy hasApplySmallCaps])
    {
      -[_SFPBRFFont setApplySmallCaps:](v5, "setApplySmallCaps:", [facadeCopy applySmallCaps]);
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBRFFont)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = _SFPBRFFont;
  v5 = [(_SFPBRFFont *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"name"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFFont setName:](v5, "setName:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"system"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[_SFPBRFFont_RFSystemFont alloc] initWithDictionary:v7];
      [(_SFPBRFFont *)v5 setSystem:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"applySmallCaps"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFFont setApplySmallCaps:](v5, "setApplySmallCaps:", [v9 BOOLValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBRFFont)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFFont *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFFont *)self dictionaryRepresentation];
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
  if (self->_applySmallCaps)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRFFont applySmallCaps](self, "applySmallCaps")}];
    [dictionary setObject:v4 forKeyedSubscript:@"applySmallCaps"];
  }

  if (self->_name)
  {
    name = [(_SFPBRFFont *)self name];
    if (name >= 0xC)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", name];
    }

    else
    {
      v6 = off_1E7ACE1C0[name];
    }

    [dictionary setObject:v6 forKeyedSubscript:@"name"];
  }

  if (self->_system)
  {
    system = [(_SFPBRFFont *)self system];
    dictionaryRepresentation = [system dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"system"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"system"];
    }
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = 2654435761 * self->_name;
  v4 = [(_SFPBRFFont_RFSystemFont *)self->_system hash];
  if (self->_applySmallCaps)
  {
    v5 = 2654435761;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v5 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    name = self->_name;
    if (name == [equalCopy name])
    {
      system = [(_SFPBRFFont *)self system];
      system2 = [equalCopy system];
      v8 = system2;
      if ((system != 0) != (system2 == 0))
      {
        system3 = [(_SFPBRFFont *)self system];
        if (!system3)
        {

LABEL_11:
          applySmallCaps = self->_applySmallCaps;
          v14 = applySmallCaps == [equalCopy applySmallCaps];
          goto LABEL_9;
        }

        v10 = system3;
        system4 = [(_SFPBRFFont *)self system];
        system5 = [equalCopy system];
        v13 = [system4 isEqual:system5];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_SFPBRFFont *)self name])
  {
    PBDataWriterWriteInt32Field();
  }

  system = [(_SFPBRFFont *)self system];
  if (system)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBRFFont *)self applySmallCaps])
  {
    PBDataWriterWriteBOOLField();
  }
}

- (_SFPBRFFont_RFSystemFont)system
{
  if (self->_whichValue == 2)
  {
    v3 = self->_system;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSystem:(id)system
{
  self->_name = 0;
  self->_whichValue = 2 * (system != 0);
  objc_storeStrong(&self->_system, system);
}

- (int)name
{
  if (self->_whichValue == 1)
  {
    return self->_name;
  }

  else
  {
    return 0;
  }
}

- (void)setName:(int)name
{
  system = self->_system;
  self->_system = 0;

  self->_whichValue = 1;
  self->_name = name;
}

@end