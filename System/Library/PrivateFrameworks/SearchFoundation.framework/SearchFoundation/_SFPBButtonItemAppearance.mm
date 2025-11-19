@interface _SFPBButtonItemAppearance
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBButtonItemAppearance)initWithDictionary:(id)a3;
- (_SFPBButtonItemAppearance)initWithFacade:(id)a3;
- (_SFPBButtonItemAppearance)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBButtonItemAppearance

- (_SFPBButtonItemAppearance)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBButtonItemAppearance *)self init];
  if (v5)
  {
    if ([v4 hasStyle])
    {
      -[_SFPBButtonItemAppearance setStyle:](v5, "setStyle:", [v4 style]);
    }

    if ([v4 hasRole])
    {
      -[_SFPBButtonItemAppearance setRole:](v5, "setRole:", [v4 role]);
    }

    v6 = [v4 tintColor];

    if (v6)
    {
      v7 = [_SFPBColor alloc];
      v8 = [v4 tintColor];
      v9 = [(_SFPBColor *)v7 initWithFacade:v8];
      [(_SFPBButtonItemAppearance *)v5 setTintColor:v9];
    }

    if ([v4 hasRenderingMode])
    {
      -[_SFPBButtonItemAppearance setRenderingMode:](v5, "setRenderingMode:", [v4 renderingMode]);
    }

    if ([v4 hasPreferNoFallbackImage])
    {
      -[_SFPBButtonItemAppearance setPreferNoFallbackImage:](v5, "setPreferNoFallbackImage:", [v4 preferNoFallbackImage]);
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBButtonItemAppearance)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = _SFPBButtonItemAppearance;
  v5 = [(_SFPBButtonItemAppearance *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"style"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBButtonItemAppearance setStyle:](v5, "setStyle:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"role"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBButtonItemAppearance setRole:](v5, "setRole:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"tintColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBColor alloc] initWithDictionary:v8];
      [(_SFPBButtonItemAppearance *)v5 setTintColor:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"renderingMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBButtonItemAppearance setRenderingMode:](v5, "setRenderingMode:", [v10 intValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"preferNoFallbackImage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBButtonItemAppearance setPreferNoFallbackImage:](v5, "setPreferNoFallbackImage:", [v11 BOOLValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBButtonItemAppearance)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBButtonItemAppearance *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBButtonItemAppearance *)self dictionaryRepresentation];
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
  if (self->_preferNoFallbackImage)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBButtonItemAppearance preferNoFallbackImage](self, "preferNoFallbackImage")}];
    [v3 setObject:v4 forKeyedSubscript:@"preferNoFallbackImage"];
  }

  if (self->_renderingMode)
  {
    v5 = [(_SFPBButtonItemAppearance *)self renderingMode];
    if (v5 >= 3)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v5];
    }

    else
    {
      v6 = off_1E7ACE548[v5];
    }

    [v3 setObject:v6 forKeyedSubscript:@"renderingMode"];
  }

  if (self->_role)
  {
    v7 = [(_SFPBButtonItemAppearance *)self role];
    if (v7 >= 5)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v7];
    }

    else
    {
      v8 = off_1E7ACE448[v7];
    }

    [v3 setObject:v8 forKeyedSubscript:@"role"];
  }

  if (self->_style)
  {
    v9 = [(_SFPBButtonItemAppearance *)self style];
    if (v9 >= 6)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v9];
    }

    else
    {
      v10 = off_1E7ACE580[v9];
    }

    [v3 setObject:v10 forKeyedSubscript:@"style"];
  }

  if (self->_tintColor)
  {
    v11 = [(_SFPBButtonItemAppearance *)self tintColor];
    v12 = [v11 dictionaryRepresentation];
    if (v12)
    {
      [v3 setObject:v12 forKeyedSubscript:@"tintColor"];
    }

    else
    {
      v13 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v13 forKeyedSubscript:@"tintColor"];
    }
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  style = self->_style;
  if (style != [v4 style])
  {
    goto LABEL_12;
  }

  role = self->_role;
  if (role != [v4 role])
  {
    goto LABEL_12;
  }

  v7 = [(_SFPBButtonItemAppearance *)self tintColor];
  v8 = [v4 tintColor];
  v9 = v8;
  if ((v7 != 0) == (v8 == 0))
  {

    goto LABEL_12;
  }

  v10 = [(_SFPBButtonItemAppearance *)self tintColor];
  if (v10)
  {
    v11 = v10;
    v12 = [(_SFPBButtonItemAppearance *)self tintColor];
    v13 = [v4 tintColor];
    v14 = [v12 isEqual:v13];

    if (!v14)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  renderingMode = self->_renderingMode;
  if (renderingMode != [v4 renderingMode])
  {
LABEL_12:
    v17 = 0;
    goto LABEL_13;
  }

  preferNoFallbackImage = self->_preferNoFallbackImage;
  v17 = preferNoFallbackImage == [v4 preferNoFallbackImage];
LABEL_13:

  return v17;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  if ([(_SFPBButtonItemAppearance *)self style])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBButtonItemAppearance *)self role])
  {
    PBDataWriterWriteInt32Field();
  }

  v4 = [(_SFPBButtonItemAppearance *)self tintColor];
  if (v4)
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