@interface _SFPBToggleButtonConfiguration
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBToggleButtonConfiguration)initWithDictionary:(id)dictionary;
- (_SFPBToggleButtonConfiguration)initWithFacade:(id)facade;
- (_SFPBToggleButtonConfiguration)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setToggledTitle:(id)title;
- (void)setUntoggledTitle:(id)title;
- (void)writeTo:(id)to;
@end

@implementation _SFPBToggleButtonConfiguration

- (_SFPBToggleButtonConfiguration)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBToggleButtonConfiguration *)self init];
  if (v5)
  {
    untoggledTitle = [facadeCopy untoggledTitle];

    if (untoggledTitle)
    {
      untoggledTitle2 = [facadeCopy untoggledTitle];
      [(_SFPBToggleButtonConfiguration *)v5 setUntoggledTitle:untoggledTitle2];
    }

    toggledTitle = [facadeCopy toggledTitle];

    if (toggledTitle)
    {
      toggledTitle2 = [facadeCopy toggledTitle];
      [(_SFPBToggleButtonConfiguration *)v5 setToggledTitle:toggledTitle2];
    }

    untoggledImage = [facadeCopy untoggledImage];

    if (untoggledImage)
    {
      v11 = [_SFPBImage alloc];
      untoggledImage2 = [facadeCopy untoggledImage];
      v13 = [(_SFPBImage *)v11 initWithFacade:untoggledImage2];
      [(_SFPBToggleButtonConfiguration *)v5 setUntoggledImage:v13];
    }

    toggledImage = [facadeCopy toggledImage];

    if (toggledImage)
    {
      v15 = [_SFPBImage alloc];
      toggledImage2 = [facadeCopy toggledImage];
      v17 = [(_SFPBImage *)v15 initWithFacade:toggledImage2];
      [(_SFPBToggleButtonConfiguration *)v5 setToggledImage:v17];
    }

    v18 = v5;
  }

  return v5;
}

- (_SFPBToggleButtonConfiguration)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = _SFPBToggleButtonConfiguration;
  v5 = [(_SFPBToggleButtonConfiguration *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"untoggledTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBToggleButtonConfiguration *)v5 setUntoggledTitle:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"toggledTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBToggleButtonConfiguration *)v5 setToggledTitle:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"untoggledImage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBImage alloc] initWithDictionary:v10];
      [(_SFPBToggleButtonConfiguration *)v5 setUntoggledImage:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"toggledImage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[_SFPBImage alloc] initWithDictionary:v12];
      [(_SFPBToggleButtonConfiguration *)v5 setToggledImage:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (_SFPBToggleButtonConfiguration)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBToggleButtonConfiguration *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBToggleButtonConfiguration *)self dictionaryRepresentation];
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
  if (self->_toggledImage)
  {
    toggledImage = [(_SFPBToggleButtonConfiguration *)self toggledImage];
    dictionaryRepresentation = [toggledImage dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"toggledImage"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"toggledImage"];
    }
  }

  if (self->_toggledTitle)
  {
    toggledTitle = [(_SFPBToggleButtonConfiguration *)self toggledTitle];
    v8 = [toggledTitle copy];
    [dictionary setObject:v8 forKeyedSubscript:@"toggledTitle"];
  }

  if (self->_untoggledImage)
  {
    untoggledImage = [(_SFPBToggleButtonConfiguration *)self untoggledImage];
    dictionaryRepresentation2 = [untoggledImage dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"untoggledImage"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"untoggledImage"];
    }
  }

  if (self->_untoggledTitle)
  {
    untoggledTitle = [(_SFPBToggleButtonConfiguration *)self untoggledTitle];
    v13 = [untoggledTitle copy];
    [dictionary setObject:v13 forKeyedSubscript:@"untoggledTitle"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_untoggledTitle hash];
  v4 = [(NSString *)self->_toggledTitle hash]^ v3;
  v5 = [(_SFPBImage *)self->_untoggledImage hash];
  return v4 ^ v5 ^ [(_SFPBImage *)self->_toggledImage hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  untoggledTitle = [(_SFPBToggleButtonConfiguration *)self untoggledTitle];
  untoggledTitle2 = [equalCopy untoggledTitle];
  if ((untoggledTitle != 0) == (untoggledTitle2 == 0))
  {
    goto LABEL_21;
  }

  untoggledTitle3 = [(_SFPBToggleButtonConfiguration *)self untoggledTitle];
  if (untoggledTitle3)
  {
    v8 = untoggledTitle3;
    untoggledTitle4 = [(_SFPBToggleButtonConfiguration *)self untoggledTitle];
    untoggledTitle5 = [equalCopy untoggledTitle];
    v11 = [untoggledTitle4 isEqual:untoggledTitle5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  untoggledTitle = [(_SFPBToggleButtonConfiguration *)self toggledTitle];
  untoggledTitle2 = [equalCopy toggledTitle];
  if ((untoggledTitle != 0) == (untoggledTitle2 == 0))
  {
    goto LABEL_21;
  }

  toggledTitle = [(_SFPBToggleButtonConfiguration *)self toggledTitle];
  if (toggledTitle)
  {
    v13 = toggledTitle;
    toggledTitle2 = [(_SFPBToggleButtonConfiguration *)self toggledTitle];
    toggledTitle3 = [equalCopy toggledTitle];
    v16 = [toggledTitle2 isEqual:toggledTitle3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  untoggledTitle = [(_SFPBToggleButtonConfiguration *)self untoggledImage];
  untoggledTitle2 = [equalCopy untoggledImage];
  if ((untoggledTitle != 0) == (untoggledTitle2 == 0))
  {
    goto LABEL_21;
  }

  untoggledImage = [(_SFPBToggleButtonConfiguration *)self untoggledImage];
  if (untoggledImage)
  {
    v18 = untoggledImage;
    untoggledImage2 = [(_SFPBToggleButtonConfiguration *)self untoggledImage];
    untoggledImage3 = [equalCopy untoggledImage];
    v21 = [untoggledImage2 isEqual:untoggledImage3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  untoggledTitle = [(_SFPBToggleButtonConfiguration *)self toggledImage];
  untoggledTitle2 = [equalCopy toggledImage];
  if ((untoggledTitle != 0) != (untoggledTitle2 == 0))
  {
    toggledImage = [(_SFPBToggleButtonConfiguration *)self toggledImage];
    if (!toggledImage)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = toggledImage;
    toggledImage2 = [(_SFPBToggleButtonConfiguration *)self toggledImage];
    toggledImage3 = [equalCopy toggledImage];
    v26 = [toggledImage2 isEqual:toggledImage3];

    if (v26)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_21:
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  untoggledTitle = [(_SFPBToggleButtonConfiguration *)self untoggledTitle];
  if (untoggledTitle)
  {
    PBDataWriterWriteStringField();
  }

  toggledTitle = [(_SFPBToggleButtonConfiguration *)self toggledTitle];
  if (toggledTitle)
  {
    PBDataWriterWriteStringField();
  }

  untoggledImage = [(_SFPBToggleButtonConfiguration *)self untoggledImage];
  if (untoggledImage)
  {
    PBDataWriterWriteSubmessage();
  }

  toggledImage = [(_SFPBToggleButtonConfiguration *)self toggledImage];
  if (toggledImage)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)setToggledTitle:(id)title
{
  v4 = [title copy];
  toggledTitle = self->_toggledTitle;
  self->_toggledTitle = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setUntoggledTitle:(id)title
{
  v4 = [title copy];
  untoggledTitle = self->_untoggledTitle;
  self->_untoggledTitle = v4;

  MEMORY[0x1EEE66BB8]();
}

@end