@interface _SFPBTrack
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBTrack)initWithDictionary:(id)a3;
- (_SFPBTrack)initWithFacade:(id)a3;
- (_SFPBTrack)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setDuration:(id)a3;
- (void)setNumber:(id)a3;
- (void)setTitle:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBTrack

- (_SFPBTrack)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBTrack *)self init];
  if (v5)
  {
    v6 = [v4 title];

    if (v6)
    {
      v7 = [v4 title];
      [(_SFPBTrack *)v5 setTitle:v7];
    }

    v8 = [v4 number];

    if (v8)
    {
      v9 = [v4 number];
      [(_SFPBTrack *)v5 setNumber:v9];
    }

    v10 = [v4 duration];

    if (v10)
    {
      v11 = [v4 duration];
      [(_SFPBTrack *)v5 setDuration:v11];
    }

    if ([v4 hasHighlighted])
    {
      -[_SFPBTrack setHighlighted:](v5, "setHighlighted:", [v4 highlighted]);
    }

    v12 = [v4 preview];

    if (v12)
    {
      v13 = [_SFPBURL alloc];
      v14 = [v4 preview];
      v15 = [(_SFPBURL *)v13 initWithNSURL:v14];
      [(_SFPBTrack *)v5 setPreview:v15];
    }

    v16 = [v4 playAction];

    if (v16)
    {
      v17 = [_SFPBActionItem alloc];
      v18 = [v4 playAction];
      v19 = [(_SFPBActionItem *)v17 initWithFacade:v18];
      [(_SFPBTrack *)v5 setPlayAction:v19];
    }

    v20 = v5;
  }

  return v5;
}

- (_SFPBTrack)initWithDictionary:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = _SFPBTrack;
  v5 = [(_SFPBTrack *)&v19 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBTrack *)v5 setTitle:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"number"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBTrack *)v5 setNumber:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"duration"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(_SFPBTrack *)v5 setDuration:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"highlighted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBTrack setHighlighted:](v5, "setHighlighted:", [v12 BOOLValue]);
    }

    v13 = [v4 objectForKeyedSubscript:@"preview"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [[_SFPBURL alloc] initWithDictionary:v13];
      [(_SFPBTrack *)v5 setPreview:v14];
    }

    v15 = [v4 objectForKeyedSubscript:@"playAction"];
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

- (_SFPBTrack)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBTrack *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBTrack *)self dictionaryRepresentation];
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
  if (self->_duration)
  {
    v4 = [(_SFPBTrack *)self duration];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"duration"];
  }

  if (self->_highlighted)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBTrack highlighted](self, "highlighted")}];
    [v3 setObject:v6 forKeyedSubscript:@"highlighted"];
  }

  if (self->_number)
  {
    v7 = [(_SFPBTrack *)self number];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"number"];
  }

  if (self->_playAction)
  {
    v9 = [(_SFPBTrack *)self playAction];
    v10 = [v9 dictionaryRepresentation];
    if (v10)
    {
      [v3 setObject:v10 forKeyedSubscript:@"playAction"];
    }

    else
    {
      v11 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v11 forKeyedSubscript:@"playAction"];
    }
  }

  if (self->_preview)
  {
    v12 = [(_SFPBTrack *)self preview];
    v13 = [v12 dictionaryRepresentation];
    if (v13)
    {
      [v3 setObject:v13 forKeyedSubscript:@"preview"];
    }

    else
    {
      v14 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v14 forKeyedSubscript:@"preview"];
    }
  }

  if (self->_title)
  {
    v15 = [(_SFPBTrack *)self title];
    v16 = [v15 copy];
    [v3 setObject:v16 forKeyedSubscript:@"title"];
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  v5 = [(_SFPBTrack *)self title];
  v6 = [v4 title];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_27;
  }

  v7 = [(_SFPBTrack *)self title];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBTrack *)self title];
    v10 = [v4 title];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  v5 = [(_SFPBTrack *)self number];
  v6 = [v4 number];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_27;
  }

  v12 = [(_SFPBTrack *)self number];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBTrack *)self number];
    v15 = [v4 number];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  v5 = [(_SFPBTrack *)self duration];
  v6 = [v4 duration];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_27;
  }

  v17 = [(_SFPBTrack *)self duration];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBTrack *)self duration];
    v20 = [v4 duration];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  highlighted = self->_highlighted;
  if (highlighted != [v4 highlighted])
  {
    goto LABEL_28;
  }

  v5 = [(_SFPBTrack *)self preview];
  v6 = [v4 preview];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_27;
  }

  v23 = [(_SFPBTrack *)self preview];
  if (v23)
  {
    v24 = v23;
    v25 = [(_SFPBTrack *)self preview];
    v26 = [v4 preview];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  v5 = [(_SFPBTrack *)self playAction];
  v6 = [v4 playAction];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_27:

    goto LABEL_28;
  }

  v28 = [(_SFPBTrack *)self playAction];
  if (!v28)
  {

LABEL_31:
    v33 = 1;
    goto LABEL_29;
  }

  v29 = v28;
  v30 = [(_SFPBTrack *)self playAction];
  v31 = [v4 playAction];
  v32 = [v30 isEqual:v31];

  if (v32)
  {
    goto LABEL_31;
  }

LABEL_28:
  v33 = 0;
LABEL_29:

  return v33;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  v4 = [(_SFPBTrack *)self title];
  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(_SFPBTrack *)self number];
  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(_SFPBTrack *)self duration];
  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBTrack *)self highlighted])
  {
    PBDataWriterWriteBOOLField();
  }

  v7 = [(_SFPBTrack *)self preview];
  if (v7)
  {
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_SFPBTrack *)self playAction];
  if (v8)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)setDuration:(id)a3
{
  v4 = [a3 copy];
  duration = self->_duration;
  self->_duration = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setNumber:(id)a3
{
  v4 = [a3 copy];
  number = self->_number;
  self->_number = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setTitle:(id)a3
{
  v4 = [a3 copy];
  title = self->_title;
  self->_title = v4;

  MEMORY[0x1EEE66BB8]();
}

@end