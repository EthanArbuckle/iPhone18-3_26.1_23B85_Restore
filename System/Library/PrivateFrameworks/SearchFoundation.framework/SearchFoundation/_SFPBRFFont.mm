@interface _SFPBRFFont
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBRFFont)initWithDictionary:(id)a3;
- (_SFPBRFFont)initWithFacade:(id)a3;
- (_SFPBRFFont)initWithJSON:(id)a3;
- (_SFPBRFFont_RFSystemFont)system;
- (id)dictionaryRepresentation;
- (int)name;
- (unint64_t)hash;
- (void)setName:(int)a3;
- (void)setSystem:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBRFFont

- (_SFPBRFFont)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBRFFont *)self init];
  if (v5)
  {
    if ([v4 hasName])
    {
      -[_SFPBRFFont setName:](v5, "setName:", [v4 name]);
    }

    if ([v4 hasSystem])
    {
      v6 = [v4 system];

      if (v6)
      {
        v7 = [_SFPBRFFont_RFSystemFont alloc];
        v8 = [v4 system];
        v9 = [(_SFPBRFFont_RFSystemFont *)v7 initWithFacade:v8];
        [(_SFPBRFFont *)v5 setSystem:v9];
      }
    }

    if ([v4 hasApplySmallCaps])
    {
      -[_SFPBRFFont setApplySmallCaps:](v5, "setApplySmallCaps:", [v4 applySmallCaps]);
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBRFFont)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _SFPBRFFont;
  v5 = [(_SFPBRFFont *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"name"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFFont setName:](v5, "setName:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"system"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[_SFPBRFFont_RFSystemFont alloc] initWithDictionary:v7];
      [(_SFPBRFFont *)v5 setSystem:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"applySmallCaps"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFFont setApplySmallCaps:](v5, "setApplySmallCaps:", [v9 BOOLValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBRFFont)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBRFFont *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBRFFont *)self dictionaryRepresentation];
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
  if (self->_applySmallCaps)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRFFont applySmallCaps](self, "applySmallCaps")}];
    [v3 setObject:v4 forKeyedSubscript:@"applySmallCaps"];
  }

  if (self->_name)
  {
    v5 = [(_SFPBRFFont *)self name];
    if (v5 >= 0xC)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v5];
    }

    else
    {
      v6 = off_1E7ACE1C0[v5];
    }

    [v3 setObject:v6 forKeyedSubscript:@"name"];
  }

  if (self->_system)
  {
    v7 = [(_SFPBRFFont *)self system];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"system"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"system"];
    }
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    name = self->_name;
    if (name == [v4 name])
    {
      v6 = [(_SFPBRFFont *)self system];
      v7 = [v4 system];
      v8 = v7;
      if ((v6 != 0) != (v7 == 0))
      {
        v9 = [(_SFPBRFFont *)self system];
        if (!v9)
        {

LABEL_11:
          applySmallCaps = self->_applySmallCaps;
          v14 = applySmallCaps == [v4 applySmallCaps];
          goto LABEL_9;
        }

        v10 = v9;
        v11 = [(_SFPBRFFont *)self system];
        v12 = [v4 system];
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
  if ([(_SFPBRFFont *)self name])
  {
    PBDataWriterWriteInt32Field();
  }

  v4 = [(_SFPBRFFont *)self system];
  if (v4)
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

- (void)setSystem:(id)a3
{
  self->_name = 0;
  self->_whichValue = 2 * (a3 != 0);
  objc_storeStrong(&self->_system, a3);
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

- (void)setName:(int)a3
{
  system = self->_system;
  self->_system = 0;

  self->_whichValue = 1;
  self->_name = a3;
}

@end