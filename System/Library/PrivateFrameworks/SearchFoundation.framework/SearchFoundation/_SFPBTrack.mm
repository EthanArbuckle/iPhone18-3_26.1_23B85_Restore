@interface _SFPBTrack
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBTrack)initWithDictionary:(id)dictionary;
- (_SFPBTrack)initWithFacade:(id)facade;
- (_SFPBTrack)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setDuration:(id)duration;
- (void)setNumber:(id)number;
- (void)setTitle:(id)title;
- (void)writeTo:(id)to;
@end

@implementation _SFPBTrack

- (_SFPBTrack)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBTrack *)self init];
  if (v5)
  {
    title = [facadeCopy title];

    if (title)
    {
      title2 = [facadeCopy title];
      [(_SFPBTrack *)v5 setTitle:title2];
    }

    number = [facadeCopy number];

    if (number)
    {
      number2 = [facadeCopy number];
      [(_SFPBTrack *)v5 setNumber:number2];
    }

    duration = [facadeCopy duration];

    if (duration)
    {
      duration2 = [facadeCopy duration];
      [(_SFPBTrack *)v5 setDuration:duration2];
    }

    if ([facadeCopy hasHighlighted])
    {
      -[_SFPBTrack setHighlighted:](v5, "setHighlighted:", [facadeCopy highlighted]);
    }

    preview = [facadeCopy preview];

    if (preview)
    {
      v13 = [_SFPBURL alloc];
      preview2 = [facadeCopy preview];
      v15 = [(_SFPBURL *)v13 initWithNSURL:preview2];
      [(_SFPBTrack *)v5 setPreview:v15];
    }

    playAction = [facadeCopy playAction];

    if (playAction)
    {
      v17 = [_SFPBActionItem alloc];
      playAction2 = [facadeCopy playAction];
      v19 = [(_SFPBActionItem *)v17 initWithFacade:playAction2];
      [(_SFPBTrack *)v5 setPlayAction:v19];
    }

    v20 = v5;
  }

  return v5;
}

- (_SFPBTrack)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v19.receiver = self;
  v19.super_class = _SFPBTrack;
  v5 = [(_SFPBTrack *)&v19 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBTrack *)v5 setTitle:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"number"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBTrack *)v5 setNumber:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"duration"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(_SFPBTrack *)v5 setDuration:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"highlighted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBTrack setHighlighted:](v5, "setHighlighted:", [v12 BOOLValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"preview"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [[_SFPBURL alloc] initWithDictionary:v13];
      [(_SFPBTrack *)v5 setPreview:v14];
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"playAction"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[_SFPBActionItem alloc] initWithDictionary:v15];
      [(_SFPBTrack *)v5 setPlayAction:v16];
    }

    v17 = v5;
  }

  return v5;
}

- (_SFPBTrack)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBTrack *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBTrack *)self dictionaryRepresentation];
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
  if (self->_duration)
  {
    duration = [(_SFPBTrack *)self duration];
    v5 = [duration copy];
    [dictionary setObject:v5 forKeyedSubscript:@"duration"];
  }

  if (self->_highlighted)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBTrack highlighted](self, "highlighted")}];
    [dictionary setObject:v6 forKeyedSubscript:@"highlighted"];
  }

  if (self->_number)
  {
    number = [(_SFPBTrack *)self number];
    v8 = [number copy];
    [dictionary setObject:v8 forKeyedSubscript:@"number"];
  }

  if (self->_playAction)
  {
    playAction = [(_SFPBTrack *)self playAction];
    dictionaryRepresentation = [playAction dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"playAction"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"playAction"];
    }
  }

  if (self->_preview)
  {
    preview = [(_SFPBTrack *)self preview];
    dictionaryRepresentation2 = [preview dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"preview"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"preview"];
    }
  }

  if (self->_title)
  {
    title = [(_SFPBTrack *)self title];
    v16 = [title copy];
    [dictionary setObject:v16 forKeyedSubscript:@"title"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_title hash];
  v4 = [(NSString *)self->_number hash];
  v5 = [(NSString *)self->_duration hash];
  if (self->_highlighted)
  {
    v6 = 2654435761;
  }

  else
  {
    v6 = 0;
  }

  v7 = v4 ^ v3 ^ v5 ^ v6 ^ [(_SFPBURL *)self->_preview hash];
  return v7 ^ [(_SFPBActionItem *)self->_playAction hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  title = [(_SFPBTrack *)self title];
  title2 = [equalCopy title];
  if ((title != 0) == (title2 == 0))
  {
    goto LABEL_27;
  }

  title3 = [(_SFPBTrack *)self title];
  if (title3)
  {
    v8 = title3;
    title4 = [(_SFPBTrack *)self title];
    title5 = [equalCopy title];
    v11 = [title4 isEqual:title5];

    if (!v11)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  title = [(_SFPBTrack *)self number];
  title2 = [equalCopy number];
  if ((title != 0) == (title2 == 0))
  {
    goto LABEL_27;
  }

  number = [(_SFPBTrack *)self number];
  if (number)
  {
    v13 = number;
    number2 = [(_SFPBTrack *)self number];
    number3 = [equalCopy number];
    v16 = [number2 isEqual:number3];

    if (!v16)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  title = [(_SFPBTrack *)self duration];
  title2 = [equalCopy duration];
  if ((title != 0) == (title2 == 0))
  {
    goto LABEL_27;
  }

  duration = [(_SFPBTrack *)self duration];
  if (duration)
  {
    v18 = duration;
    duration2 = [(_SFPBTrack *)self duration];
    duration3 = [equalCopy duration];
    v21 = [duration2 isEqual:duration3];

    if (!v21)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  highlighted = self->_highlighted;
  if (highlighted != [equalCopy highlighted])
  {
    goto LABEL_28;
  }

  title = [(_SFPBTrack *)self preview];
  title2 = [equalCopy preview];
  if ((title != 0) == (title2 == 0))
  {
    goto LABEL_27;
  }

  preview = [(_SFPBTrack *)self preview];
  if (preview)
  {
    v24 = preview;
    preview2 = [(_SFPBTrack *)self preview];
    preview3 = [equalCopy preview];
    v27 = [preview2 isEqual:preview3];

    if (!v27)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  title = [(_SFPBTrack *)self playAction];
  title2 = [equalCopy playAction];
  if ((title != 0) == (title2 == 0))
  {
LABEL_27:

    goto LABEL_28;
  }

  playAction = [(_SFPBTrack *)self playAction];
  if (!playAction)
  {

LABEL_31:
    v33 = 1;
    goto LABEL_29;
  }

  v29 = playAction;
  playAction2 = [(_SFPBTrack *)self playAction];
  playAction3 = [equalCopy playAction];
  v32 = [playAction2 isEqual:playAction3];

  if (v32)
  {
    goto LABEL_31;
  }

LABEL_28:
  v33 = 0;
LABEL_29:

  return v33;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  title = [(_SFPBTrack *)self title];
  if (title)
  {
    PBDataWriterWriteStringField();
  }

  number = [(_SFPBTrack *)self number];
  if (number)
  {
    PBDataWriterWriteStringField();
  }

  duration = [(_SFPBTrack *)self duration];
  if (duration)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBTrack *)self highlighted])
  {
    PBDataWriterWriteBOOLField();
  }

  preview = [(_SFPBTrack *)self preview];
  if (preview)
  {
    PBDataWriterWriteSubmessage();
  }

  playAction = [(_SFPBTrack *)self playAction];
  if (playAction)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)setDuration:(id)duration
{
  v4 = [duration copy];
  duration = self->_duration;
  self->_duration = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setNumber:(id)number
{
  v4 = [number copy];
  number = self->_number;
  self->_number = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setTitle:(id)title
{
  v4 = [title copy];
  title = self->_title;
  self->_title = v4;

  MEMORY[0x1EEE66BB8]();
}

@end