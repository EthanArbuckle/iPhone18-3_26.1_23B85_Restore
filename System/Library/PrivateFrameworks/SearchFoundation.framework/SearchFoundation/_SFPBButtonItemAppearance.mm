@interface _SFPBButtonItemAppearance
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBButtonItemAppearance)initWithDictionary:(id)dictionary;
- (_SFPBButtonItemAppearance)initWithFacade:(id)facade;
- (_SFPBButtonItemAppearance)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _SFPBButtonItemAppearance

- (_SFPBButtonItemAppearance)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBButtonItemAppearance *)self init];
  if (v5)
  {
    if ([facadeCopy hasStyle])
    {
      -[_SFPBButtonItemAppearance setStyle:](v5, "setStyle:", [facadeCopy style]);
    }

    if ([facadeCopy hasRole])
    {
      -[_SFPBButtonItemAppearance setRole:](v5, "setRole:", [facadeCopy role]);
    }

    tintColor = [facadeCopy tintColor];

    if (tintColor)
    {
      v7 = [_SFPBColor alloc];
      tintColor2 = [facadeCopy tintColor];
      v9 = [(_SFPBColor *)v7 initWithFacade:tintColor2];
      [(_SFPBButtonItemAppearance *)v5 setTintColor:v9];
    }

    if ([facadeCopy hasRenderingMode])
    {
      -[_SFPBButtonItemAppearance setRenderingMode:](v5, "setRenderingMode:", [facadeCopy renderingMode]);
    }

    if ([facadeCopy hasPreferNoFallbackImage])
    {
      -[_SFPBButtonItemAppearance setPreferNoFallbackImage:](v5, "setPreferNoFallbackImage:", [facadeCopy preferNoFallbackImage]);
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBButtonItemAppearance)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = _SFPBButtonItemAppearance;
  v5 = [(_SFPBButtonItemAppearance *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"style"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBButtonItemAppearance setStyle:](v5, "setStyle:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"role"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBButtonItemAppearance setRole:](v5, "setRole:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"tintColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBColor alloc] initWithDictionary:v8];
      [(_SFPBButtonItemAppearance *)v5 setTintColor:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"renderingMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBButtonItemAppearance setRenderingMode:](v5, "setRenderingMode:", [v10 intValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"preferNoFallbackImage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBButtonItemAppearance setPreferNoFallbackImage:](v5, "setPreferNoFallbackImage:", [v11 BOOLValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBButtonItemAppearance)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBButtonItemAppearance *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBButtonItemAppearance *)self dictionaryRepresentation];
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
  if (self->_preferNoFallbackImage)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBButtonItemAppearance preferNoFallbackImage](self, "preferNoFallbackImage")}];
    [dictionary setObject:v4 forKeyedSubscript:@"preferNoFallbackImage"];
  }

  if (self->_renderingMode)
  {
    renderingMode = [(_SFPBButtonItemAppearance *)self renderingMode];
    if (renderingMode >= 3)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", renderingMode];
    }

    else
    {
      v6 = off_1E7ACE548[renderingMode];
    }

    [dictionary setObject:v6 forKeyedSubscript:@"renderingMode"];
  }

  if (self->_role)
  {
    role = [(_SFPBButtonItemAppearance *)self role];
    if (role >= 5)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", role];
    }

    else
    {
      v8 = off_1E7ACE448[role];
    }

    [dictionary setObject:v8 forKeyedSubscript:@"role"];
  }

  if (self->_style)
  {
    style = [(_SFPBButtonItemAppearance *)self style];
    if (style >= 6)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", style];
    }

    else
    {
      v10 = off_1E7ACE580[style];
    }

    [dictionary setObject:v10 forKeyedSubscript:@"style"];
  }

  if (self->_tintColor)
  {
    tintColor = [(_SFPBButtonItemAppearance *)self tintColor];
    dictionaryRepresentation = [tintColor dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"tintColor"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"tintColor"];
    }
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = 2654435761 * self->_style;
  v4 = 2654435761 * self->_role;
  v5 = [(_SFPBColor *)self->_tintColor hash];
  if (self->_preferNoFallbackImage)
  {
    v6 = 2654435761;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ (2654435761 * self->_renderingMode) ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  style = self->_style;
  if (style != [equalCopy style])
  {
    goto LABEL_12;
  }

  role = self->_role;
  if (role != [equalCopy role])
  {
    goto LABEL_12;
  }

  tintColor = [(_SFPBButtonItemAppearance *)self tintColor];
  tintColor2 = [equalCopy tintColor];
  v9 = tintColor2;
  if ((tintColor != 0) == (tintColor2 == 0))
  {

    goto LABEL_12;
  }

  tintColor3 = [(_SFPBButtonItemAppearance *)self tintColor];
  if (tintColor3)
  {
    v11 = tintColor3;
    tintColor4 = [(_SFPBButtonItemAppearance *)self tintColor];
    tintColor5 = [equalCopy tintColor];
    v14 = [tintColor4 isEqual:tintColor5];

    if (!v14)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  renderingMode = self->_renderingMode;
  if (renderingMode != [equalCopy renderingMode])
  {
LABEL_12:
    v17 = 0;
    goto LABEL_13;
  }

  preferNoFallbackImage = self->_preferNoFallbackImage;
  v17 = preferNoFallbackImage == [equalCopy preferNoFallbackImage];
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_SFPBButtonItemAppearance *)self style])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBButtonItemAppearance *)self role])
  {
    PBDataWriterWriteInt32Field();
  }

  tintColor = [(_SFPBButtonItemAppearance *)self tintColor];
  if (tintColor)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBButtonItemAppearance *)self renderingMode])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBButtonItemAppearance *)self preferNoFallbackImage])
  {
    PBDataWriterWriteBOOLField();
  }
}

@end